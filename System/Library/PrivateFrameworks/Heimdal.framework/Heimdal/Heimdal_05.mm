uint64_t rtbl_add_column_entry_by_id(uint64_t a1, int a2, char *__s1)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = *(a1 + 16); *(*i + 40) != a2; ++i)
  {
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return sub_2522896F0(*i, __s1);
}

uint64_t sub_2522896F0(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (v3)
  {
    v4 = v3;
    v5 = malloc_type_realloc(*(a1 + 32), 8 * *(a1 + 24) + 8, 0x10040436913F5uLL);
    if (v5)
    {
      v6 = v5;
      result = 0;
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(a1 + 32) = v6;
      v6[v8] = v4;
      return result;
    }

    free(v4);
  }

  return 12;
}

uint64_t rtbl_add_column_entryv_by_id(uint64_t a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  if (vasprintf(__s1, a3, va) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = rtbl_add_column_entry_by_id(a1, a2, __s1[0]);
  free(__s1[0]);
  return v5;
}

uint64_t rtbl_add_column_entry(uint64_t a1, char *a2, char *a3)
{
  v4 = sub_25228959C(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_2522896F0(v4, a3);
}

uint64_t rtbl_add_column_entryv(uint64_t a1, char *a2, char *a3, ...)
{
  va_start(va, a3);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  if (vasprintf(__s1, a3, va) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_25228959C(a1, a2);
  if (v5)
  {
    v6 = sub_2522896F0(v5, __s1[0]);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  free(__s1[0]);
  return v6;
}

uint64_t rtbl_format(uint64_t a1, FILE *a2)
{
  v3 = rtbl_format_str(a1);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  fputs(v3, a2);
  free(v4);
  return 0;
}

char *rtbl_format_str(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 2) != 0)
  {
    v20 = rk_strpoolprintf(0, "[");
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D85DE0];
      do
      {
        v24 = *(a1 + 16);
        while (*(*v24 + 24) <= v22)
        {
          v24 += 8;
          if (!--v21)
          {
            goto LABEL_54;
          }
        }

        if (v22)
        {
          v25 = ",";
        }

        else
        {
          v25 = "";
        }

        v26 = rk_strpoolprintf(v20, "%s{", v25);
        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(*(a1 + 16) + 8 * v28);
            if (v30[3] > v22)
            {
              v31 = *v30 - 1;
              do
              {
                v32 = *(v31 + 1);
                if ((v32 & 0x80000000) != 0)
                {
                  v33 = __maskrune(v32, 0x4000uLL);
                }

                else
                {
                  v33 = *(v23 + 4 * v32 + 60) & 0x4000;
                }

                ++v31;
              }

              while (v33);
              if (v29)
              {
                v34 = ",";
              }

              else
              {
                v34 = "";
              }

              v26 = rk_strpoolprintf(v26, "%s%s : %s", v34, v31, *(v30[4] + 8 * v22));
              v27 = *(a1 + 8);
              v29 = 1;
            }

            ++v28;
          }

          while (v28 < v27);
        }

        v20 = rk_strpoolprintf(v26, "}");
        ++v22;
        v21 = *(a1 + 8);
      }

      while (v21);
    }

LABEL_54:
    v35 = rk_strpoolprintf(v20, "]");
  }

  else
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = *(a1 + 16);
      do
      {
        v6 = *(v5 + 8 * v4);
        if (v2)
        {
          v7 = 0;
        }

        else
        {
          v7 = strlen(*v6);
        }

        *(v6 + 16) = v7;
        v8 = *(v6 + 24);
        if (v8)
        {
          v9 = *(v6 + 32);
          do
          {
            v10 = *v9++;
            v11 = strlen(v10);
            if (v7 <= v11)
            {
              v7 = v11;
            }

            *(v6 + 16) = v7;
            --v8;
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v3);
      if ((v2 & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        while (1)
        {
          v14 = *(*(a1 + 16) + 8 * v13);
          if (v13 && *(a1 + 32))
          {
            v12 = rk_strpoolprintf(v12, "%s", *(a1 + 32));
          }

          if (v14)
          {
            v15 = *(v14 + 8);
            if (!v15)
            {
              v15 = *a1;
              if (!*a1)
              {
                v15 = "";
              }
            }

            v16 = rk_strpoolprintf(v12, "%s", v15);
            if (v13 != *(a1 + 8) - 1 || (v17 = *(v14 + 48)) != 0)
            {
              LODWORD(v17) = *(v14 + 16);
            }

            v18 = rk_strpoolprintf(v16, "%-*s", v17, *v14);
            v19 = *(v14 + 48);
            if (v19)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v18 = rk_strpoolprintf(v12, "%s", "");
          }

          v19 = "";
LABEL_29:
          v12 = rk_strpoolprintf(v18, "%s", v19);
          if (++v13 >= *(a1 + 8))
          {
            goto LABEL_59;
          }
        }
      }

      v35 = 0;
LABEL_62:
      v37 = 0;
      do
      {
        v38 = *(a1 + 16);
        while (*(*v38 + 24) <= v37)
        {
          v38 += 8;
          if (!--v3)
          {
            goto LABEL_55;
          }
        }

        v39 = 0;
        do
        {
          v40 = *(*(a1 + 16) + 8 * v39);
          if (v39 && *(a1 + 32))
          {
            v35 = rk_strpoolprintf(v35, "%s", *(a1 + 32));
          }

          v41 = *(v40 + 16);
          if ((*(v40 + 20) & 1) == 0)
          {
            if (v39 == *(a1 + 8) - 1 && !*(v40 + 48))
            {
              v41 = 0;
            }

            else
            {
              v41 = -v41;
            }
          }

          v42 = *(v40 + 8);
          if (!v42)
          {
            v42 = *a1;
            if (!*a1)
            {
              v42 = "";
            }
          }

          rk_strpoolprintf(v35, "%s", v42);
          if (*(v40 + 24) <= v37)
          {
            v43 = rk_strpoolprintf(v35, "%*s", v41, "");
          }

          else
          {
            v43 = rk_strpoolprintf(v35, "%*s", v41, *(*(v40 + 32) + 8 * v37));
          }

          v44 = *(v40 + 48);
          if (!v44)
          {
            v44 = "";
          }

          v45 = rk_strpoolprintf(v43, "%s", v44);
          v35 = v45;
          ++v39;
        }

        while (v39 < *(a1 + 8));
        v35 = rk_strpoolprintf(v45, "\n");
        ++v37;
        v3 = *(a1 + 8);
      }

      while (v3);
      goto LABEL_55;
    }

    v12 = 0;
    v35 = 0;
    if (v2)
    {
      goto LABEL_55;
    }

LABEL_59:
    v35 = rk_strpoolprintf(v12, "\n");
    v3 = *(a1 + 8);
    if (v3)
    {
      goto LABEL_62;
    }
  }

LABEL_55:

  return rk_strpoolcollect(v35);
}

uint64_t rk_dumpdata(const char *a1, char *a2, size_t a3)
{
  result = open(a1, 1537, 416);
  if ((result & 0x80000000) == 0)
  {
    v6 = result;
    sub_2522874D8(result, a2, a3);

    return close(v6);
  }

  return result;
}

uint64_t rk_undumpdata(const char *a1, void **a2, off_t *a3)
{
  memset(&v12, 0, sizeof(v12));
  *a2 = 0;
  v5 = open(a1, 0, 0);
  if (v5 < 0)
  {
    return *__error();
  }

  v6 = v5;
  if (!fstat(v5, &v12))
  {
    v9 = malloc_type_malloc(v12.st_size, 0xB7008BDAuLL);
    *a2 = v9;
    if (!v9)
    {
      v7 = 12;
      goto LABEL_4;
    }

    st_size = v12.st_size;
    *a3 = v12.st_size;
    v11 = sub_252287454(v6, v9, st_size);
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 == *a3)
      {
        v7 = 0;
      }

      else
      {
        free(*a2);
        *a2 = 0;
        v7 = 22;
      }

      goto LABEL_4;
    }
  }

  v7 = *__error();
LABEL_4:
  close(v6);
  return v7;
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

char *rk_cfstring2cstring(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x7F80866BuLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

uint64_t wind_utf8ucs4(char *a1, uint64_t a2, unint64_t *a3)
{
  v9 = a1;
  if (*a1)
  {
    v5 = 0;
    while (1)
    {
      v8 = 0;
      result = sub_25228A04C(&v9, &v8);
      if (result)
      {
        break;
      }

      if (a2)
      {
        if (v5 >= *a3)
        {
          return 3325697538;
        }

        *(a2 + 4 * v5) = v8;
      }

      ++v5;
      if (!*++v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_10:
    result = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t sub_25228A04C(char **a1, int *a2)
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

uint64_t wind_utf8ucs4_copy(char *a1, void **a2, unint64_t *a3)
{
  v6 = wind_utf8ucs4(a1, 0, a3);
  if (!v6)
  {
    v7 = *a3;
    if (!(*a3 >> 30))
    {
      if (!v7)
      {
        return 0;
      }

      v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
      *a2 = v8;
      if (v8)
      {
        v6 = wind_utf8ucs4(a1, v8, a3);
        if (!v6)
        {
          return v6;
        }

        free(*a2);
        *a2 = 0;
      }

      else
      {
        v6 = 12;
      }

      *a3 = 0;
      return v6;
    }

    return 34;
  }

  return v6;
}

uint64_t wind_ucs4utf8(unsigned int *a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  result = 3325697538;
  v6 = 0;
  if (a2)
  {
    while (1)
    {
      v8 = *a1++;
      v7 = v8;
      if (v8 >= 0x80)
      {
        if (v7 >= 0x800)
        {
          if (v7 >= 0x10000)
          {
            if (HIWORD(v7) > 0x10u)
            {
              return 3325697544;
            }

            v9 = 4u;
          }

          else
          {
            v9 = 3u;
          }
        }

        else
        {
          v9 = 2u;
        }
      }

      else
      {
        v9 = 1u;
      }

      v6 += v9;
      if (a3)
      {
        break;
      }

LABEL_20:
      if (!--a2)
      {
        goto LABEL_21;
      }
    }

    if (v6 >= *a4)
    {
      return result;
    }

    if (v9 > 2)
    {
      if (v9 != 3)
      {
        a3[3] = v7 & 0x3F | 0x80;
        LOBYTE(v7) = v7 << 6;
      }

      v10 = v7 & 0x3F | 0x80;
      LOBYTE(v7) = 0;
      a3[2] = v10;
    }

    else if (v9 == 1)
    {
      goto LABEL_19;
    }

    a3[1] = v7 & 0x3F | 0x80;
    LOBYTE(v7) = v7 << 6;
LABEL_19:
    *a3 = *(&unk_2522AA088 + v9 - 1) | v7;
    a3 += v9;
    goto LABEL_20;
  }

LABEL_21:
  if (a3)
  {
    if (v6 >= *a4)
    {
      return result;
    }

    *a3 = 0;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t wind_ucs4utf8_copy(unsigned int *a1, uint64_t a2, void **a3, void *a4)
{
  v12 = 0;
  v8 = wind_ucs4utf8(a1, a2, 0, &v12);
  if (!v8)
  {
    v10 = malloc_type_malloc(++v12, 0x3C28EB5CuLL);
    *a3 = v10;
    if (v10)
    {
      v11 = wind_ucs4utf8(a1, a2, v10, &v12);
      if (v11)
      {
        v8 = v11;
        free(*a3);
        *a3 = 0;
      }

      else
      {
        v8 = 0;
        if (a4)
        {
          *a4 = v12;
        }
      }
    }

    else
    {
      return 12;
    }
  }

  return v8;
}

uint64_t sub_25228A3C8(unsigned __int16 *a1, uint64_t a2, unsigned int *a3, _WORD *a4, uint64_t *a5)
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
      v7 = sub_25228A04C(&v11, &v10);
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

      *a3 = *(&unk_2522AA088 + v7 - 1) | v5;
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

uint64_t sub_25228A8C0(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x46395AD9uLL);
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

uint64_t sub_25228ADF8(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x75E6E7B7uLL);
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

const char *__cdecl error_message(errcode_t code)
{
  v2 = com_right(qword_27F4D9838, code);
  if (!v2)
  {
    if (code < 0)
    {
      snprintf(byte_27F4D96A0, 0x80uLL, "Unknown error %ld", code);
      goto LABEL_8;
    }

    v2 = strerror(code);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v2)
  {
LABEL_8:
    snprintf(byte_27F4D96A0, 0x80uLL, "Unknown error %ld", code);
    return byte_27F4D96A0;
  }

  __strlcpy_chk();
  return byte_27F4D96A0;
}

com_err_handler_t set_com_err_hook(com_err_handler_t handler)
{
  v1 = off_280C4E908;
  if (handler)
  {
    v2 = handler;
  }

  else
  {
    v2 = sub_25228BEFC;
  }

  off_280C4E908 = v2;
  return v1;
}

size_t sub_25228BEFC(const char *a1, errcode_t code, char *a3, va_list a4)
{
  v7 = MEMORY[0x277D85DF8];
  if (a1)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: ", a1);
  }

  if (code)
  {
    v8 = *v7;
    error_message(code);
    fprintf(v8, "%s ", byte_27F4D96A0);
  }

  if (a3)
  {
    vfprintf(*v7, a3, a4);
  }

  v9 = *v7;

  return fwrite("\r\n", 2uLL, 1uLL, v9);
}

com_err_handler_t reset_com_err_hook(void)
{
  result = off_280C4E908;
  off_280C4E908 = sub_25228BEFC;
  return result;
}

void *com_right(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      v2 = result[1];
      v3 = *(v2 + 8);
      if (a2 >= v3 && v3 + *(v2 + 16) > a2)
      {
        break;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return *(*v2 + 8 * (a2 - v3));
  }

  return result;
}

char *com_right_r(void *a1, uint64_t a2, char *__dst, size_t __size)
{
  if (!a1)
  {
    return 0;
  }

  v4 = __dst;
  while (1)
  {
    v5 = a1[1];
    v6 = *(v5 + 8);
    v7 = a2 - v6;
    if (a2 >= v6 && v6 + *(v5 + 16) > a2)
    {
      break;
    }

    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }

  v9 = *(*v5 + 8 * v7);
  if (v9)
  {
    strlcpy(__dst, v9, __size);
  }

  else
  {
    snprintf(__dst, __size, "Reserved error code %ld in base %ld", v7, v6);
  }

  return v4;
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

void *sub_25228C138(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t hx509_ca_tbs_init(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10B004050FA1AF2uLL);
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

void hx509_ca_tbs_free(uint64_t **a1)
{
  if (a1)
  {
    if (*a1)
    {
      free_SubjectPublicKeyInfo((*a1 + 1));
      sub_2522A1E98((*a1 + 8));
      sub_2522A2148((*a1 + 6));
      v2 = *a1;
      der_free_heim_integer();
      sub_2522A2218((*a1 + 18));
      v3 = *a1;
      der_free_bit_string();
      v4 = *a1;
      der_free_bit_string();
      hx509_name_free(*a1);
      v5 = *a1;
      *(v5 + 10) = 0u;
      *(v5 + 11) = 0u;
      *(v5 + 8) = 0u;
      *(v5 + 9) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 7) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t hx509_ca_tbs_set_template(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (*a2)
    {
      hx509_name_free(a2);
    }

    subject = hx509_cert_get_subject(a4, a2);
    if (subject)
    {
      SPKI = subject;
      v14 = "Failed to get subject from template";
LABEL_9:
      hx509_set_error_string(a1, 0, SPKI, v14, v9, v10, v11, v12, v21[0]);
      return SPKI;
    }
  }

  if ((a3 & 2) != 0)
  {
    der_free_heim_integer();
    serialnumber = hx509_cert_get_serialnumber(a4);
    *(a2 + 112) = *(a2 + 112) & 0xF7 | (8 * (serialnumber == 0));
    if (serialnumber)
    {
      SPKI = serialnumber;
      v14 = "Failed to copy serial number";
      goto LABEL_9;
    }
  }

  if ((a3 & 4) != 0)
  {
    *(a2 + 120) = hx509_cert_get_notBefore(a4);
    if ((a3 & 8) == 0)
    {
LABEL_12:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_12;
  }

  *(a2 + 128) = hx509_cert_get_notAfter(a4);
  if ((a3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  free_SubjectPublicKeyInfo(a2 + 8);
  SPKI = hx509_cert_get_SPKI(a1, a4);
  *(a2 + 112) = *(a2 + 112) & 0xFB | (4 * (SPKI == 0));
  if (SPKI)
  {
    return SPKI;
  }

LABEL_17:
  if ((a3 & 0x20) != 0)
  {
    LODWORD(v21[0]) = 0;
    v16 = sub_2522910D4(a1, a4, v21);
    if (v16)
    {
      return v16;
    }

    *(a2 + 80) = sub_2522A1F78(v21[0]);
  }

  if ((a3 & 0x40) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  v21[1] = 0;
  SPKI = sub_252291160(a1, a4, v21);
  if (SPKI)
  {
    return SPKI;
  }

  if (!LODWORD(v21[0]))
  {
LABEL_27:
    sub_2522A2148(v21);
    return 0;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = hx509_ca_tbs_add_eku(a1, a2);
    if (v19)
    {
      break;
    }

    ++v18;
    v17 += 16;
    if (v18 >= LODWORD(v21[0]))
    {
      goto LABEL_27;
    }
  }

  SPKI = v19;
  sub_2522A2148(v21);
  return SPKI;
}

uint64_t hx509_ca_tbs_add_eku(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 56);
      if (!der_heim_oid_cmp())
      {
        return 0;
      }

      ++v5;
      v7 = *(a2 + 48);
      v4 += 16;
      if (v5 >= v7)
      {
        v8 = 16 * (v7 + 1);
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = 16;
LABEL_7:
    v9 = malloc_type_realloc(*(a2 + 56), v8, 0x1010040466105CCuLL);
    if (v9)
    {
      *(a2 + 56) = v9;
      v14 = *(a2 + 48);
      v15 = der_copy_oid();
      if (!v15)
      {
        ++*(a2 + 48);
        return v15;
      }

      v16 = a1;
      v17 = v15;
    }

    else
    {
      v15 = 12;
      v16 = a1;
      v17 = 12;
    }

    hx509_set_error_string(v16, 0, v17, "out of memory", v10, v11, v12, v13, v19);
  }

  return v15;
}

uint64_t hx509_ca_tbs_set_ca(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 112) |= 2u;
  *(a2 + 136) = a3;
  return 0;
}

uint64_t hx509_ca_tbs_set_proxy(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 112) |= 1u;
  *(a2 + 136) = a3;
  return 0;
}

uint64_t hx509_ca_tbs_set_spki(uint64_t a1, uint64_t a2)
{
  free_SubjectPublicKeyInfo(a2 + 8);
  result = copy_SubjectPublicKeyInfo();
  *(a2 + 112) = *(a2 + 112) & 0xFB | (4 * (result == 0));
  return result;
}

uint64_t hx509_ca_tbs_set_serialnumber(uint64_t a1, uint64_t a2)
{
  der_free_heim_integer();
  result = der_copy_heim_integer();
  *(a2 + 112) = *(a2 + 112) & 0xF7 | (8 * (result == 0));
  return result;
}

uint64_t hx509_ca_tbs_add_crl_dp_uri(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v31[1] = 0;
  v31[2] = 0;
  v8 = sub_25228719C(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  v31[0] = v8;
  v28[0] = 0u;
  v27 = 0;
  v30[0] = 1;
  v30[1] = 1;
  v30[2] = v28;
  LODWORD(v28[0]) = 5;
  v29 = 0;
  v28[1] = a3;
  *(&v28[0] + 1) = strlen(a3);
  v9 = sub_2522A2198(v30);
  *v8 = v9;
  v10 = malloc_type_malloc(v9, 0xE2298F3CuLL);
  v8[1] = v10;
  if (!v10)
  {
    v23 = 12;
    goto LABEL_5;
  }

  v15 = sub_2522A2178(v10 + *v8 - 1, *v8, v30, &v27);
  if (v15)
  {
    v23 = v15;
    free(*(v31[0] + 8));
    *(v31[0] + 8) = 0;
LABEL_5:
    v24 = "Failed to encoded DistributionPointName";
LABEL_6:
    hx509_set_error_string(a1, 0, v23, v24, v11, v12, v13, v14, v26);
    goto LABEL_7;
  }

  if (*v31[0] != v27)
  {
    sub_25229126C("internal ASN.1 encoder error", v16, v17, v18, v19, v20, v21, v22, v26);
  }

  if (a4)
  {
    v23 = 22;
    hx509_set_error_string(a1, 0, 22, "CRLDistributionPoints.name.issuername not yet supported", v19, v20, v21, v22, v26);
    return v23;
  }

  v23 = sub_2522A2228((a2 + 144));
  if (v23)
  {
    v24 = "out of memory";
    goto LABEL_6;
  }

LABEL_7:
  sub_2522A21B8(v31);
  return v23;
}

uint64_t hx509_ca_tbs_add_san_otherName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v5 = *a3;
  v6 = *a4;
  return sub_2522A1EA8((a2 + 64));
}

uint64_t hx509_ca_tbs_add_san_pkinit(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v46 = 0;
  v47 = 0u;
  *v48 = 0u;
  v11 = 1;
  for (i = a3; ; ++i)
  {
    v13 = *i;
    if (v13 > 0x3F)
    {
      break;
    }

    if (v13 == 47)
    {
      ++v11;
    }

    else if (!*i)
    {
      goto LABEL_12;
    }

LABEL_11:
    ;
  }

  if (v13 == 92)
  {
    v14 = *++i;
    if ((v14 | 0x40) != 0x40)
    {
      goto LABEL_11;
    }

    v38 = 569968;
    v39 = "trailing \\ in principal name";
    v40 = 569968;
LABEL_22:
    hx509_set_error_string(a1, 0, v40, v39, a5, a6, a7, a8, v45);
    v22 = 0;
    goto LABEL_28;
  }

  if (v13 != 64)
  {
    goto LABEL_11;
  }

LABEL_12:
  v15 = malloc_type_calloc(v11, 8uLL, 0x10040436913F5uLL);
  v48[1] = v15;
  if (!v15)
  {
    v39 = "malloc: out of memory";
    v38 = 12;
    a1 = v10;
    v40 = 12;
    goto LABEL_22;
  }

  v16 = v15;
  LODWORD(v48[0]) = v11;
  DWORD2(v47) = 1;
  v17 = strdup(a3);
  v22 = v17;
  if (!v17)
  {
    v41 = "malloc: out of memory";
    v38 = 12;
    v42 = v10;
    v43 = 12;
LABEL_27:
    hx509_set_error_string(v42, 0, v43, v41, v18, v19, v20, v21, v45);
    goto LABEL_28;
  }

  v23 = strrchr(v17, 64);
  *&v47 = v23;
  if (!v23)
  {
    v38 = 569968;
    v41 = "Missing @ in principal";
    v42 = v10;
    v43 = 569968;
    goto LABEL_27;
  }

  *&v47 = v23 + 1;
  *v23 = 0;
  *v16 = v22;
  v24 = strchr(v22, 47);
  if (v24)
  {
    v25 = v16 + 1;
    do
    {
      *v24 = 0;
      v26 = v24 + 1;
      *v25++ = v26;
      v24 = strchr(v26, 47);
    }

    while (v24);
  }

  v27 = sub_25228BB94(&v47);
  v28 = malloc_type_malloc(v27, 0xD435376BuLL);
  if (!v28)
  {
    v38 = 12;
LABEL_26:
    v41 = "Out of memory";
    v42 = v10;
    v43 = v38;
    goto LABEL_27;
  }

  v29 = v28;
  v30 = sub_25228BB74(v28 + v27 - 1, v27, &v47, &v46);
  if (v30)
  {
    v38 = v30;
    free(v29);
    goto LABEL_26;
  }

  if (v46 != v27)
  {
    sub_25229126C("internal ASN.1 encoder error", v31, v32, v33, v34, v35, v36, v37, v45);
  }

  v49 = 1;
  v50 = xmmword_2797028E0;
  v51 = v27;
  v52 = v29;
  v38 = sub_2522A1EA8((a2 + 64));
  free(v29);
LABEL_28:
  if (v48[1])
  {
    free(v48[1]);
  }

  if (v22)
  {
    free(v22);
  }

  return v38;
}

uint64_t sub_25228CC98(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v25 = 0;
  v26[0] = a4;
  v7 = sub_2522A2520(v26);
  v8 = malloc_type_malloc(v7, 0xA1E8EADAuLL);
  if (!v8)
  {
    v22 = 12;
    goto LABEL_5;
  }

  v13 = v8;
  v14 = sub_2522A2500(v8 + v7 - 1, v7, v26, &v25);
  if (v14)
  {
    v22 = v14;
    free(v13);
LABEL_5:
    hx509_set_error_string(a1, 0, v22, "Out of memory", v9, v10, v11, v12, v24);
    return v22;
  }

  if (v25 != v7)
  {
    sub_25229126C("internal ASN.1 encoder error", v15, v16, v17, v18, v19, v20, v21, v24);
  }

  v26[1] = 1;
  v27 = *a3;
  v28 = v7;
  v29 = v13;
  v22 = sub_2522A1EA8((a2 + 64));
  free(v13);
  return v22;
}

uint64_t hx509_ca_tbs_set_subject(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    hx509_name_free(a2);
  }

  return hx509_name_copy(a1, a3, a2);
}

uint64_t hx509_ca_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = sub_25228DE4C(a3);
  v34[0] = 0;
  v34[1] = 0;
  if (sub_25228E308(v8, v34))
  {
    v32 = 0;
    v33 = 0;
    v27 = 0u;
    memset(v28, 0, 24);
    v25 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (!v25)
    {
      goto LABEL_14;
    }

    v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800409070E284uLL);
    if (!v26)
    {
      goto LABEL_14;
    }

    v13 = hx509_name_to_Name_0();
    if (v13 || (v29 = 0u, v30 = *(v28 + 8), v31 = 0, LODWORD(v29) = 4, DWORD2(v29) = 1, v13 = sub_2522A1EA8(&v32), v13))
    {
      v14 = v13;
      goto LABEL_15;
    }

    v20 = v25;
    *(v25 + 1) = v33;
    *v20 = v32;
    v21 = der_copy_heim_integer();
    if (!v26)
    {
LABEL_14:
      v14 = 12;
      goto LABEL_15;
    }

    v14 = v21;
    if (v21)
    {
LABEL_17:
      sub_2522A1FD0(&v24);
      goto LABEL_18;
    }
  }

  else
  {
    v24 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    if (!v24)
    {
      sub_2522A2030(v34);
      v14 = 12;
      v18 = a1;
      v19 = 12;
LABEL_16:
      hx509_set_error_string(v18, 0, v19, "Out of memory", v9, v10, v11, v12, v23);
      goto LABEL_17;
    }

    v14 = der_copy_octet_string();
    sub_2522A2030(v34);
    if (v14)
    {
LABEL_15:
      v18 = a1;
      v19 = v14;
      goto LABEL_16;
    }
  }

  v15 = _hx509_cert_private_key(a3);
  v14 = sub_25228D0AC(a1, a2, v15, &v24, v8 + 144, a4, v16, v17);
LABEL_18:
  sub_2522A1FD0(&v24);
  return v14;
}

uint64_t sub_25228D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v13 = off_27F4D8848;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  memset(v84, 0, sizeof(v84));
  v85 = 0u;
  v86 = 0u;
  memset(v87, 0, sizeof(v87));
  v88 = 0u;
  memset(v89, 0, sizeof(v89));
  v90 = 0u;
  v14 = *(a2 + 120);
  if (!v14)
  {
    v14 = time(0) - 86400;
  }

  v15 = *(a2 + 128);
  if (!v15)
  {
    v15 = time(0) + 31536000;
  }

  v16 = *(a2 + 80);
  if (!v16)
  {
    LOWORD(v16) = sub_2522A1F78(5);
  }

  v17 = *(a2 + 112);
  if ((v17 & 2) != 0)
  {
    LOWORD(v16) = sub_2522A1F78(96) | v16;
    v17 = *(a2 + 112);
  }

  if ((v17 & 4) != 0)
  {
    if ((v17 & 1) == 0)
    {
      if (!*a2)
      {
        v18 = "No subject name set";
        goto LABEL_29;
      }

      if (hx509_name_is_null_p(*a2) && !*(a2 + 64))
      {
        v18 = "NULL subject and no SubjectAltNames";
        goto LABEL_29;
      }
    }

    v19 = *(a2 + 112);
    if ((~v19 & 3) == 0)
    {
      v18 = "Can't be proxy and CA at the same time";
      goto LABEL_29;
    }

    if ((v19 & 1) != 0 && *(a2 + 64))
    {
      v18 = "Proxy certificate is not allowed to have SubjectAltNames";
      goto LABEL_29;
    }

    v91 = 0;
    v92 = 0;
    v20 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *&v81 = v20;
    if (!v20)
    {
LABEL_61:
      v29 = "Out of memory";
      v28 = 12;
      v30 = a1;
      v26 = 0;
      goto LABEL_62;
    }

    *v20 = 2;
    if ((*(a2 + 112) & 8) != 0)
    {
      v74 = a6;
      v32 = der_copy_heim_integer();
      if (v32)
      {
        v28 = v32;
        v29 = "Failed to copy integer";
LABEL_38:
        v30 = a1;
        v26 = 0;
        v31 = v28;
        goto LABEL_63;
      }
    }

    else
    {
      *(&v81 + 1) = 20;
      v25 = malloc_type_malloc(0x14uLL, 0xEBE27A72uLL);
      v26 = v25;
      *&v82 = v25;
      if (!v25)
      {
        goto LABEL_54;
      }

      v74 = a6;
      v27 = *MEMORY[0x277D85C28];
      if (CCRandomCopyBytes())
      {
        v28 = 569935;
        v29 = "Out of random";
        v30 = a1;
        v26 = 0;
        v31 = 569935;
LABEL_63:
        hx509_set_error_string(v30, v26, v31, v29, v21, v22, v23, v24, v74);
        goto LABEL_64;
      }
    }

    v35 = copy_AlgorithmIdentifier();
    if (v35)
    {
      v28 = v35;
      v29 = "Failed to copy sigature alg";
      goto LABEL_38;
    }

    if (a5)
    {
      v36 = hx509_name_to_Name_0();
    }

    else
    {
      v37 = *a2;
      v36 = hx509_name_to_Name();
    }

    v28 = v36;
    if (v36)
    {
      v29 = "Failed to copy issuer name";
      goto LABEL_38;
    }

    *(&v85 + 1) = v14;
    LODWORD(v85) = 2;
    LODWORD(v86) = 2;
    *(&v86 + 1) = v15;
    if (*(a2 + 112))
    {
      v40 = sub_25228DB18(a1, v84 + 8, v87);
      if (v40)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v38 = *a2;
      v39 = hx509_name_to_Name();
      if (v39)
      {
        v28 = v39;
        v29 = "Failed to copy subject name";
        goto LABEL_38;
      }
    }

    v41 = copy_SubjectPublicKeyInfo();
    if (v41)
    {
      v28 = v41;
      v29 = "Failed to copy spki";
      goto LABEL_38;
    }

    if (*(a2 + 176))
    {
      v42 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      v26 = v42;
      *&v88 = v42;
      if (!v42)
      {
        goto LABEL_54;
      }

      v43 = der_copy_bit_string();
      if (v43)
      {
LABEL_52:
        v28 = v43;
LABEL_53:
        v29 = "Out of memory";
        goto LABEL_38;
      }
    }

    if (!*(a2 + 160))
    {
      goto LABEL_55;
    }

    v44 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    v26 = v44;
    *(&v88 + 1) = v44;
    if (v44)
    {
      v43 = der_copy_bit_string();
      if (v43)
      {
        goto LABEL_52;
      }

LABEL_55:
      v89[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (v89[0])
      {
        if ((*(a2 + 112) & 0x10) == 0 || (v91 = 34, v92 = &unk_2522AA5C0, v40 = sub_25228DBF4(a1, &v80, 0), !v40))
        {
          LODWORD(v93[0]) = 0;
          LODWORD(v93[0]) = sub_2522A1F78(v16);
          v91 = sub_2522A1F68(v93);
          v45 = malloc_type_malloc(v91, 0xBAB6BD36uLL);
          v92 = v45;
          if (!v45)
          {
            goto LABEL_107;
          }

          v46 = sub_2522A1F48(v45 + v91 - 1, v91, v93, &v79);
          if (v46)
          {
LABEL_60:
            v28 = v46;
            free(v92);
            v92 = 0;
            goto LABEL_53;
          }

          if (v79 != v91)
          {
            goto LABEL_120;
          }

          v28 = sub_25228DBF4(a1, &v80, 1);
          free(v92);
          if (v28)
          {
            goto LABEL_64;
          }

          if (*(a2 + 48))
          {
            v91 = sub_2522A2138(a2 + 48);
            v54 = malloc_type_malloc(v91, 0xB3DEB093uLL);
            v92 = v54;
            if (!v54)
            {
              goto LABEL_107;
            }

            v46 = sub_2522A2118(v54 + v91 - 1, v91, a2 + 48, &v79);
            if (v46)
            {
              goto LABEL_60;
            }

            if (v79 != v91)
            {
              goto LABEL_120;
            }

            v28 = sub_25228DBF4(a1, &v80, 0);
            free(v92);
            if (v28)
            {
              goto LABEL_64;
            }
          }

          if (*(a2 + 64))
          {
            v91 = sub_2522A1E88(a2 + 64);
            v55 = malloc_type_malloc(v91, 0x93F90D21uLL);
            v92 = v55;
            if (!v55)
            {
              goto LABEL_107;
            }

            v46 = sub_2522A1E68(v55 + v91 - 1, v91, a2 + 64, &v79);
            if (v46)
            {
              goto LABEL_60;
            }

            if (v79 != v91)
            {
              goto LABEL_120;
            }

            v28 = sub_25228DBF4(a1, &v80, 0);
            free(v92);
            if (v28)
            {
              goto LABEL_64;
            }
          }

          if (a4)
          {
            v91 = sub_2522A1FC0(a4);
            v56 = malloc_type_malloc(v91, 0xD3A3C08FuLL);
            v92 = v56;
            if (!v56)
            {
              goto LABEL_107;
            }

            v46 = sub_2522A1FA0(v56 + v91 - 1, v91, a4, &v79);
            if (v46)
            {
              goto LABEL_60;
            }

            if (v79 != v91)
            {
              goto LABEL_120;
            }

            v28 = sub_25228DBF4(a1, &v80, 0);
            free(v92);
            if (v28)
            {
              goto LABEL_64;
            }
          }

          v77 = 0;
          v78 = 0;
          CCDigestCreate();
          v58 = *(a2 + 32);
          v57 = *(a2 + 40);
          CCDigestUpdate();
          CCDigestFinal();
          CCDigestDestroy();
          v77 = 20;
          v78 = v93;
          v91 = sub_2522A2020(&v77);
          v59 = malloc_type_malloc(v91, 0x9DF2812FuLL);
          v92 = v59;
          if (!v59)
          {
            goto LABEL_107;
          }

          v46 = sub_2522A2000(v59 + v91 - 1, v91, &v77, &v79);
          if (v46)
          {
            goto LABEL_60;
          }

          if (v79 != v91)
          {
            goto LABEL_120;
          }

          v28 = sub_25228DBF4(a1, &v80, 0);
          free(v92);
          if (v28)
          {
            goto LABEL_64;
          }

          v76 = 0;
          LODWORD(v77) = 1;
          v93[0] = 0uLL;
          if ((*(a2 + 112) & 2) != 0)
          {
            *&v93[0] = &v77;
            if ((*(a2 + 136) & 0x80000000) == 0)
            {
              v76 = *(a2 + 136);
              *(&v93[0] + 1) = &v76;
            }
          }

          v91 = sub_2522A2094(v93);
          v60 = malloc_type_malloc(v91, 0x6335EB8BuLL);
          v92 = v60;
          if (!v60)
          {
LABEL_107:
            v28 = 12;
            goto LABEL_53;
          }

          v46 = sub_2522A2074(v60 + v91 - 1, v91, v93, &v79);
          if (v46)
          {
            goto LABEL_60;
          }

          if (v79 != v91)
          {
            goto LABEL_120;
          }

          v28 = sub_25228DBF4(a1, &v80, (*(a2 + 112) >> 1) & 1);
          free(v92);
          if (v28)
          {
            goto LABEL_64;
          }

          if ((*(a2 + 112) & 1) == 0)
          {
LABEL_94:
            v62 = *(a2 + 144);
            v61 = a2 + 144;
            if (!v62)
            {
LABEL_99:
              v91 = sub_2522A1C50(&v80);
              v64 = malloc_type_malloc(v91, 0xA7FBF6BAuLL);
              v92 = v64;
              if (!v64)
              {
                v28 = 12;
                goto LABEL_112;
              }

              v65 = sub_2522A1C30(v64 + v91 - 1, v91, &v80, &v79);
              if (v65)
              {
                v28 = v65;
                free(v92);
                v92 = 0;
LABEL_112:
                v29 = "malloc out of memory";
                goto LABEL_38;
              }

              if (v91 == v79)
              {
                v28 = sub_252294578(a1, a3, v13, &v91, &v89[1], &v90);
                free(v92);
                if (v28)
                {
                  goto LABEL_64;
                }

                v40 = hx509_cert_init(a1, &v80, v74, v69, v70, v71, v72, v73);
                goto LABEL_43;
              }

LABEL_120:
              sub_25229126C("internal ASN.1 encoder error", v47, v48, v49, v50, v51, v52, v53, v74);
            }

            v91 = sub_2522A2208(v61);
            v63 = malloc_type_malloc(v91, 0x2E8EFC60uLL);
            v92 = v63;
            if (v63)
            {
              v46 = sub_2522A21E8(v63 + v91 - 1, v91, v61, &v79);
              if (v46)
              {
                goto LABEL_60;
              }

              if (v79 != v91)
              {
                goto LABEL_120;
              }

              v28 = sub_25228DBF4(a1, &v80, 0);
              free(v92);
              if (v28)
              {
                goto LABEL_64;
              }

              goto LABEL_99;
            }

            goto LABEL_107;
          }

          memset(v93, 0, sizeof(v93));
          if ((*(a2 + 136) & 0x80000000) == 0)
          {
            v66 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
            *&v93[0] = v66;
            if (!v66)
            {
              goto LABEL_107;
            }

            *v66 = *(a2 + 136);
          }

          v28 = der_copy_oid();
          if (!v28)
          {
            v91 = sub_2522A25B0(v93);
            v67 = malloc_type_malloc(v91, 0xB3ED8A60uLL);
            v92 = v67;
            if (v67)
            {
              v68 = sub_2522A2590(v67 + v91 - 1, v91, v93, &v79);
              if (!v68)
              {
                sub_2522A25C0(v93);
                if (v79 != v91)
                {
                  goto LABEL_120;
                }

                v28 = sub_25228DBF4(a1, &v80, 0);
                free(v92);
                if (v28)
                {
                  goto LABEL_64;
                }

                goto LABEL_94;
              }

              v28 = v68;
              free(v92);
              v92 = 0;
            }

            else
            {
              v28 = 12;
            }
          }

          sub_2522A25C0(v93);
          goto LABEL_53;
        }

LABEL_43:
        v28 = v40;
LABEL_64:
        sub_2522A1CB0(&v80);
        goto LABEL_30;
      }

      goto LABEL_61;
    }

LABEL_54:
    v29 = "Out of memory";
    v28 = 12;
    v30 = a1;
LABEL_62:
    v31 = 12;
    goto LABEL_63;
  }

  v18 = "No public key set";
LABEL_29:
  v28 = 22;
  hx509_set_error_string(a1, 0, 22, v18, a5, a6, a7, a8, v74);
LABEL_30:
  v33 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_25228DB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = hx509_name_to_Name_0();
  if (v5)
  {
    v10 = v5;
    v11 = a1;
    v12 = v10;
LABEL_3:
    hx509_set_error_string(v11, 0, v12, "Failed to copy subject name", v6, v7, v8, v9, v15);
    return v10;
  }

  v16 = 0;
  v14 = time(0);
  asprintf(&v16, "ts-%lu", v14);
  v6 = v16;
  if (!v16)
  {
    v10 = 12;
    v11 = a1;
    v12 = 12;
    goto LABEL_3;
  }

  v10 = sub_25229C9C0(a1, a3, 1, &unk_279704CD8, v16);
  free(v16);
  if (v10)
  {
    sub_2522A1A20(a3);
  }

  return v10;
}

uint64_t sub_25228DBF4(uint64_t a1, uint64_t a2, int a3)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  if (a3)
  {
    v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *&v16 = v5;
    if (!v5)
    {
      v11 = 12;
      v12 = a1;
      v13 = 12;
      goto LABEL_9;
    }

    *v5 = 1;
  }

  v10 = der_copy_oid();
  if (v10 || (v10 = der_copy_octet_string(), v10))
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_2522A1BB0(*(a2 + 240));
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = a1;
  v13 = v11;
LABEL_9:
  hx509_set_error_string(v12, 0, v13, "Out of memory", v6, v7, v8, v9, v15);
LABEL_10:
  sub_2522A1B2C(&v15);
  return v11;
}

uint64_t hx509_context_init(uint64_t *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040F8078E03uLL);
  *a1 = v2;
  if (!v2)
  {
    return 12;
  }

  (nullsub_4)();
  sub_25229A668(*a1);
  sub_252298BE8(*a1);
  sub_25229AF84(*a1);
  nullsub_4(*a1);
  nullsub_4(*a1);
  v3 = sub_252299DC8(*a1);
  v4 = hc_ENGINE_add_conf_module(v3);
  hc_OpenSSL_add_all_algorithms(v4);
  v5 = *a1;
  *(v5 + 16) = 300;
  initialize_hx_error_table_r((v5 + 32));
  initialize_asn1_error_table_r((*a1 + 32));
  hx509_certs_init(*a1, "KEYCHAIN:system-anchors", 0, 0, (*a1 + 48));
  return 0;
}

uint64_t hx509_context_set_missing_revoke(uint64_t result, int a2)
{
  v2 = *(result + 12) & 0xFFFFFFFE;
  if (a2)
  {
    ++v2;
  }

  *(result + 12) = v2;
  return result;
}

void hx509_context_free(uint64_t *a1)
{
  hx509_certs_free((*a1 + 48));
  hx509_clear_error_string(*a1);
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    free(v3);
    **a1 = 0;
    v2 = *a1;
  }

  *(v2 + 8) = 0;
  sub_25228C138(*(v2 + 32));
  v4 = *a1;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  free(*a1);
  *a1 = 0;
}

uint64_t sub_25228DE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*v1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t hx509_cert_init(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = heim_uniq_alloc(0x70uLL, "hx509-cert", sub_25228DF4C, a4, a5, a6, a7, a8);
  *a3 = v9;
  if (!v9)
  {
    return 12;
  }

  *(v9 + 32) = 0;
  v10 = *a3;
  v10[9] = 0;
  v10[10] = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 11) = 0;
  *(*a3 + 12) = 0;
  *(*a3 + 13) = 0;
  *(*a3 + 7) = malloc_type_calloc(1uLL, 0x120uLL, 0x10B004094F02C90uLL);
  if (!*(*a3 + 7))
  {
    heim_release(*a3);
    v11 = 12;
    goto LABEL_7;
  }

  v11 = sub_2522A1CC0();
  if (v11)
  {
    heim_release(*a3);
LABEL_7:
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_25228DF4C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v2(a1, *(a1 + 104));
  }

  if (*(a1 + 64))
  {
    hx509_private_key_free((a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_2522A1CB0(v3);
    free(*(a1 + 56));
  }

  if (*(a1 + 72))
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 80) + 8 * v4);
      der_free_octet_string();
      v6 = *(*(a1 + 80) + 8 * v4);
      der_free_oid();
      free(*(*(a1 + 80) + 8 * v4++));
    }

    while (v4 < *(a1 + 72));
  }

  free(*(a1 + 80));
  free(*(a1 + 32));
  if (*(a1 + 88))
  {
    hx509_name_free((a1 + 88));
  }

  return der_free_octet_string();
}

uint64_t hx509_cert_init_data(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  v7 = sub_2522A1C60(a2, a3, v20, &v19);
  if (v7)
  {
    v13 = v7;
    v14 = "Failed to decode certificate";
    v15 = a1;
    v16 = v13;
LABEL_6:
    hx509_set_error_string(v15, 0, v16, v14, v9, v10, v11, v12, v18);
    return v13;
  }

  if (v19 != a3)
  {
    v13 = 569876;
    sub_2522A1CB0(v20);
    v14 = "Extra data after certificate";
    v15 = a1;
    v16 = 569876;
    goto LABEL_6;
  }

  v13 = hx509_cert_init(v7, v20, a4, v8, v9, v10, v11, v12);
  sub_2522A1CB0(v20);
  return v13;
}

uint64_t sub_25228E118(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t _hx509_cert_set_key(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 64))
  {
    hx509_private_key_free((a1 + 64));
  }

  *v3 = _hx509_private_key_ref(a2);
  return 0;
}

uint64_t hx509_verify_init_ctx(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040C34EC329uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  v4[6] = 30;
  *a2 = v4;
  return result;
}

void hx509_verify_destroy_ctx(const void **a1)
{
  if (a1)
  {
    hx509_certs_free(a1);
    hx509_revoke_free(a1 + 4);
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  free(a1);
}

const void *hx509_verify_attach_anchors(const void **a1, CFTypeRef cf)
{
  if (*a1)
  {
    hx509_certs_free(a1);
  }

  result = j__heim_retain(cf);
  *a1 = result;
  return result;
}

uint64_t hx509_verify_attach_revoke(uint64_t a1, CFTypeRef cf)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    hx509_revoke_free((a1 + 32));
  }

  result = j__heim_retain(cf);
  *v3 = result;
  return result;
}

uint64_t hx509_verify_set_time(uint64_t result, uint64_t a2)
{
  *(result + 8) |= 1u;
  *(result + 16) = a2;
  return result;
}

uint64_t sub_25228E308(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v3 = sub_25228E36C(a1, &unk_279705978, &v5);
  if (v3)
  {
    return sub_2522A1FE0(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_25228E36C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (*v3 < 2u)
  {
    return 0;
  }

  v5 = *(a1 + 240);
  if (!v5 || *a3 >= *v5)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v5 + 1);
    if (!der_heim_oid_cmp())
    {
      break;
    }

    v8 = *a3 + 1;
    *a3 = v8;
    v5 = *(a1 + 240);
    if (v8 >= *v5)
    {
      return 0;
    }
  }

  v10 = *(*(a1 + 240) + 8);
  v11 = (*a3)++;
  return v10 + 40 * v11;
}

void hx509_free_octet_string_list(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 8);
      der_free_octet_string();
      ++v3;
      v2 += 16;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t hx509_cert_find_subjectAltName_otherName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v24 = 0;
  while (1)
  {
    v7 = sub_25228E628(*(a2 + 56), &v24, &v25);
    ++v24;
    if (v7)
    {
      v21 = v7;
      if (v7 == 569857)
      {
        return 0;
      }

      hx509_set_error_string(a1, 0, v7, "Error searching for SAN", v8, v9, v10, v11, v23);
      hx509_free_octet_string_list(a4);
      return v21;
    }

    if (v25)
    {
      break;
    }

LABEL_11:
    sub_2522A1E98(&v25);
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (*(v26 + v12) != 1 || der_heim_oid_cmp())
    {
      goto LABEL_10;
    }

    v14 = malloc_type_realloc(*(a4 + 8), 16 * *a4 + 16, 0x108004057E67DB5uLL);
    if (!v14)
    {
      v21 = 12;
      goto LABEL_14;
    }

    *(a4 + 8) = v14;
    v19 = *a4;
    v20 = der_copy_octet_string();
    if (v20)
    {
      break;
    }

    ++*a4;
LABEL_10:
    ++v13;
    v12 += 40;
    if (v13 >= v25)
    {
      goto LABEL_11;
    }
  }

  v21 = v20;
LABEL_14:
  hx509_set_error_string(a1, 0, v21, "Error adding an exra SAN to return list", v15, v16, v17, v18, v23);
  hx509_free_octet_string_list(a4);
  sub_2522A1E98(&v25);
  return v21;
}

uint64_t sub_25228E628(uint64_t a1, unint64_t *a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = sub_25228E36C(a1, &unk_279705B28, a2);
  if (!v4)
  {
    return 569857;
  }

  v6 = 0;
  return sub_2522A1E48(*(v4 + 32), *(v4 + 24), a3, &v6);
}

uint64_t sub_25228E694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v4 = *(a2 + 16);
  if (!v4 || (v25 = 0, v24 = 0, *v4 + 1 < 3))
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v5 = a4;
  v11 = sub_25228E36C(a2, &unk_279705878, &v23);
  if (v11)
  {
    v5 = sub_2522A1F28(*(v11 + 32), *(v11 + 24), &v25, &v24);
    if (v5)
    {
      goto LABEL_4;
    }

    v16 = sub_2522A1F78(v25);
    if ((a3 & ~v16) != 0)
    {
      v5 = 569872;
      v22 = 0;
      unparse_flags(a3 & ~v16, off_27F4D8E38, v26, 0x100uLL);
      sub_25229D234(a2 + 144, &v22);
      hx509_set_error_string(a1, 0, 569872, "Key usage %s required but missing from certifiate %s", v17, v18, v19, v20, v26);
      free(v22);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
    v5 = 569872;
    hx509_set_error_string(a1, 0, 569872, "Required extension key usage missing from certifiate", v12, v13, v14, v15, v21);
  }

LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_25228E808(uint64_t a1, uint64_t a2, int a3)
{
  v18 = 0;
  result = sub_25229C654(a2 + 144, a1 + 72, &v18);
  if (!result)
  {
    result = v18;
    if (!v18)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v14[0] = 0;
      v14[1] = 0;
      v7 = sub_25228E988(a1, &v15);
      v8 = v7;
      if (v7 != 569857 && v7)
      {
        return 1;
      }

      v9 = sub_25228E308(a2, v14);
      if (v9 == 569857 || !v9)
      {
        if (v8)
        {
          goto LABEL_9;
        }

        if (v9)
        {
          if (a3)
          {
            v18 = 0;
            goto LABEL_9;
          }

          if (v15)
          {
            v18 = -1;
            goto LABEL_9;
          }
        }

        else if (v15)
        {
          v18 = der_heim_octet_string_cmp();
          goto LABEL_9;
        }

        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        if (v16 && v17)
        {
          result = der_heim_integer_cmp();
          v18 = result;
          if (result)
          {
            return result;
          }

          if (*v16 == 1)
          {
            v10 = *(v16 + 8);
            if (*v10 == 4)
            {
              LODWORD(v12) = *(v10 + 8);
              v13 = *(v10 + 16);
              result = sub_25229C654(a2 + 144, v11, &v18);
              if (result)
              {
                return result;
              }

              result = v18;
              if (v18)
              {
                return result;
              }

LABEL_9:
              sub_2522A1FD0(&v15);
              sub_2522A2030(v14);
              return v18;
            }
          }
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_25228E988(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3 = sub_25228E36C(a1, &unk_2797058C8, &v5);
  if (v3)
  {
    return sub_2522A1F80(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_25228E9F0(uint64_t a1, uint64_t *a2, const void *a3)
{
  v6 = malloc_type_realloc(a2[1], 8 * *a2 + 8, 0x2004093837F09uLL);
  if (v6)
  {
    a2[1] = v6;
    v11 = heim_retain(a3);
    v12 = 0;
    v13 = *a2;
    *(a2[1] + 8 * *a2) = v11;
    *a2 = v13 + 1;
  }

  else
  {
    v12 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v7, v8, v9, v10, v15);
  }

  return v12;
}

void sub_25228EA88(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      heim_release(*(*(a1 + 8) + 8 * v2));
      v2 = v3;
    }

    while (*a1 > v3++);
  }

  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_25228EAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, const void *a6, uint64_t a7, uint64_t *a8)
{
  LODWORD(v11) = a5;
  v16 = sub_25228E9F0(a1, a8, a6);
  if (v16)
  {
    return v16;
  }

  v44 = 0;
  if (v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = 30;
  }

  v24 = heim_retain(a6);
  while (!sub_25228EDE8(a1, a4, v24, v19, v20, v21, v22, v23))
  {
    v44 = 0;
    memset(v54, 0, 24);
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    memset(v47, 0, sizeof(v47));
    memset(v48, 0, sizeof(v48));
    v30 = v24[7];
    if (*(v30 + 168))
    {
      v31 = 1;
      v32 = v47 + 1;
    }

    else
    {
      if (sub_25228E988(v30, v54))
      {
        v17 = 569880;
        v42 = "Subjectless certificate missing AuthKeyID";
LABEL_32:
        hx509_set_error_string(a1, 0, 569880, v42, v26, v27, v28, v29, v43);
LABEL_34:
        heim_release(v24);
        return v17;
      }

      v30 = v54[0];
      if (!v54[0])
      {
        v17 = 569880;
        sub_2522A1FD0(v54);
        v42 = "Subjectless certificate missing keyIdentifier inside AuthKeyID";
        goto LABEL_32;
      }

      v31 = 16;
      v32 = v48;
    }

    *v32 = v30;
    *&v49 = a8;
    LODWORD(v47[0]) = v31 | 0x20000;
    if (a7)
    {
      *(&v51 + 1) = a3;
      LODWORD(v47[0]) = v31 | 0x220000;
      if (!hx509_certs_find(a1, a7, v47, &v44, v26, v27, v28, v29))
      {
        goto LABEL_19;
      }

      LODWORD(v47[0]) &= ~0x200000u;
    }

    if (!a4 || hx509_certs_find(a1, a4, v47, &v44, v26, v27, v28, v29))
    {
      sub_2522A1FD0(v54);
      v45 = 0;
      v46 = 0;
      if (hx509_name_from_Name(v24[7] + 144, &v46) || (v37 = hx509_name_to_string(v46, &v45), hx509_name_free(&v46), v37))
      {
        hx509_clear_error_string(a1);
        v17 = 569867;
      }

      else
      {
        v17 = 569867;
        hx509_set_error_string(a1, 0, 569867, "Failed to find issuer for certificate with subject: '%s'", v38, v39, v40, v41, v45);
        free(v45);
      }

      goto LABEL_34;
    }

LABEL_19:
    sub_2522A1FD0(v54);
    heim_release(v24);
    v16 = sub_25228E9F0(a1, a8, v44);
    if (v16)
    {
      return v16;
    }

    v24 = v44;
    if (*a8 > v11)
    {
      heim_release(v44);
      v17 = 569871;
      hx509_set_error_string(a1, 0, 569871, "Path too long while bulding certificate chain", v33, v34, v35, v36, v43);
      return v17;
    }
  }

  if ((a2 & 1) != 0 && *a8 && sub_25228EDE8(a1, a4, *(a8[1] + 8 * *a8 - 8), v25, v26, v27, v28, v29))
  {
    heim_release(*(a8[1] + 8 * *a8 - 8));
    --*a8;
  }

  heim_release(v24);
  return 0;
}

BOOL sub_25228EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  LODWORD(v11) = 0x8000;
  *&v12 = *(a3 + 56);
  v8 = hx509_certs_find(a1, a2, &v11, &v10, a5, a6, a7, a8);
  if (!v8)
  {
    heim_release(v10);
  }

  return v8 == 0;
}

uint64_t sub_25228EE6C(uint64_t a1, uint64_t a2)
{
  result = der_heim_oid_cmp();
  if (!result)
  {
    v5 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (v5)
      {

        return der_heim_octet_string_cmp();
      }

      else
      {
        return 1;
      }
    }

    else if (v5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25228EED8(uint64_t a1, uint64_t a2)
{
  result = der_heim_bit_string_cmp();
  if (!result)
  {
    result = sub_25228EE6C(a1 + 248, a2 + 248);
    if (!result)
    {

      return der_heim_octet_string_cmp();
    }
  }

  return result;
}

uint64_t hx509_cert_get_base_subject(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 88);
  if (v6)
  {

    return hx509_name_copy(a1, v6, a3);
  }

  else if (sub_25228F028(a1, *(a2 + 56), 0))
  {
    v12 = *(a2 + 56) + 144;

    return hx509_name_from_Name(v12, a3);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569882, "Proxy certificate have not been canonicalize yet, no base name", v8, v9, v10, v11, v13);
    return 569882;
  }
}

uint64_t sub_25228F028(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v11 = 0;
  if (a3)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v5 = sub_25228E36C(a2, &unk_2797061D8, &v11);
  if (!v5)
  {
    v8 = 569857;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_2522A2570(*(v5 + 32), *(v5 + 24), &v13, &v12);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    hx509_clear_error_string(a1);
    return v8;
  }

  if (v12 == *(v6 + 24))
  {
    if (a3)
    {
      v8 = 0;
      v10 = v14;
      *a3 = v13;
      a3[1] = v10;
    }

    else
    {
      sub_2522A25C0(&v13);
      return 0;
    }
  }

  else
  {
    sub_2522A25C0(&v13);
    hx509_clear_error_string(a1);
    return 569876;
  }

  return v8;
}

uint64_t hx509_cert_get_notBefore(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 112) - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(v1 + 120);
  }
}

uint64_t sub_25228F150(uint64_t a1)
{
  if ((*a1 - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t hx509_cert_get_notAfter(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 128) - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t hx509_cert_get_SPKI(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v8 = copy_SubjectPublicKeyInfo();
  if (v8)
  {
    hx509_set_error_string(a1, 0, v8, "Failed to copy SPKI", v4, v5, v6, v7, v10);
  }

  return v8;
}

uint64_t sub_25228F1E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v8 = copy_AlgorithmIdentifier();
  if (v8)
  {
    hx509_set_error_string(a1, 0, v8, "Failed to copy SPKI AlgorithmIdentifier", v4, v5, v6, v7, v10);
  }

  return v8;
}

uint64_t sub_25228F244(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_252294E68(result);
  }

  return result;
}

uint64_t sub_25228F254(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  a5[1] = 0;
  v10 = *(a4 + 64);
  if (v10)
  {

    return sub_252294714(a1, a2, a3, v10, a5, a6, a7, a8);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569865, "Private key missing", a5, a6, a7, a8, v8);
    return 569865;
  }
}

void *sub_25228F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = heim_uniq_alloc(0x28uLL, "hx509-evaluate", sub_25228F30C, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = heim_array_create();
    v8[4] = v9;
    if (!v9)
    {
      heim_release(v8);
      return 0;
    }
  }

  return v8;
}

const void *hx509_evaluate_get_ta(uint64_t a1)
{
  result = heim_array_get_length(*(a1 + 32));
  if (result)
  {
    v3 = result - 1;
    v4 = *(a1 + 32);

    return heim_array_copy_value(v4, v3);
  }

  return result;
}

uint64_t sub_25228F384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CFTypeRef *a5)
{
  v156 = 0;
  v157 = &v156;
  v158 = 0x2000000000;
  v152 = 0;
  v153 = &v152;
  v154 = 0x2000000000;
  if (a5)
  {
    *a5 = 0;
  }

  v159 = 0;
  v155 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v157[3] = Mutable;
  if (!Mutable)
  {
    sub_2522A81F4(0, v11, v12, v13, v14, v15, v16, v17);
  }

  v18 = 569878;
  v19 = sub_25229014C(a1, a3);
  v153[3] = v19;
  CFArrayAppendValue(v157[3], v19);
  CFRelease(v153[3]);
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 0x40000000;
  v151[2] = sub_2522901DC;
  v151[3] = &unk_279703588;
  v151[4] = &v152;
  v151[5] = &v156;
  v151[6] = a1;
  hx509_certs_iter(a1, a4, v151, v20, v21, v22, v23, v24);
  BasicX509 = SecPolicyCreateBasicX509();
  trust = 0;
  v26 = SecTrustCreateWithCertificates(v157[3], BasicX509, &trust);
  CFRelease(BasicX509);
  CFRelease(v157[3]);
  if (v26)
  {
    hx509_set_error_string(a1, 0, 569867, "Failed to create trust", v27, v28, v29, v30, v140);
    CFRelease(trust);
  }

  v149 = 0;
  v31 = MEMORY[0x25309D5E0](trust, &v149);
  if (v31)
  {
    inited = 569867;
    hx509_set_error_string(a1, 0, 569867, "Failed to validate trust: %d", v32, v33, v34, v35, v31);
    CFRelease(trust);
    goto LABEL_105;
  }

  if (v149 != 1 && v149 != 4)
  {
    inited = 569867;
    hx509_set_error_string(a1, 0, 569867, "Failed to validate trust", v32, v33, v34, v35, v140);
    CFRelease(trust);
    if (qword_27F4D9720 != -1)
    {
      sub_2522A81A0();
    }

    if (byte_27F4D9728 != 1)
    {
      goto LABEL_105;
    }

    v161 = 0;
    v162 = 0u;
    v163 = 0u;
    v164 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    v166 = 0;
    v167 = 0;
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 16) = time(0);
    }

    v165 = 0;
    v67 = *a2;
    if (*a2 || (v67 = *(a1 + 48)) != 0 && (*(a2 + 8) & 0x10) == 0)
    {
      v68 = j__heim_retain(v67);
      v161 = v68;
    }

    else
    {
      v69 = hx509_certs_init(a1, "MEMORY:no-TA", 0, 0, &v161);
      if (v69)
      {
        goto LABEL_99;
      }

      v68 = v161;
    }

    v69 = sub_25228EAE4(a1, 0, *(a2 + 16), v68, *(a2 + 24), a3, a4, &v166);
    if (v69)
    {
LABEL_99:
      inited = v69;
      goto LABEL_100;
    }

    if (!v166)
    {
      goto LABEL_135;
    }

    v77 = 0;
    v142 = 0;
    v147 = 0;
    v78 = ((*(a2 + 8) >> 1) & 1) == 0;
    while (1)
    {
      v79 = *(*(v167 + 8 * v77) + 56);
      v145 = v77;
      if (v78)
      {
        if (v78 != 1)
        {
          v69 = sub_25228E694(a1, v79, 32, (*(a2 + 8) >> 2) & 1);
          if (v69)
          {
            inited = v69;
            v121 = "Key usage missing from CA certificate";
            v122 = a1;
            v123 = 1;
            goto LABEL_151;
          }

          if (v77 + 1 == v166)
          {
            LOBYTE(inited) = 0;
          }

          else
          {
            LODWORD(v160[0]) = 0;
            v69 = sub_2522915DC(a1, v79, v160);
            inited = v69;
            if (LODWORD(v160[0]))
            {
              v83 = v142 + 1;
            }

            else
            {
              v83 = v142;
            }

            v142 = v83;
            if (v69)
            {
              goto LABEL_100;
            }
          }

          v81 = 0;
          v82 = 2;
          goto LABEL_63;
        }
      }

      else
      {
        memset(v160, 0, sizeof(v160));
        v69 = sub_25228F028(a1, v79, v160);
        if (!v69)
        {
          if (*&v160[0] && v77 > **&v160[0])
          {
            sub_2522A25C0(v160);
            v18 = 569871;
            v124 = "Proxy certificate chain longer then allowed";
            goto LABEL_194;
          }

          sub_2522A25C0(v160);
          v170[0] = 0;
          if (sub_25228E36C(v79, &unk_279705B28, v170))
          {
            v18 = 569877;
            v124 = "Proxy certificate have explicity forbidden subjectAltName";
LABEL_194:
            v138 = a1;
            v139 = v18;
            goto LABEL_197;
          }

          v170[0] = 0;
          if (sub_25228E36C(v79, &unk_279705B38, v170))
          {
            v18 = 569877;
            v124 = "Proxy certificate have explicity forbidden issuerAltName";
            goto LABEL_194;
          }

          if (v147)
          {
            v69 = sub_25229C654(&v162, v79 + 144, &v165);
            if (v69)
            {
              goto LABEL_159;
            }

            if (v165)
            {
              v124 = "Base proxy name not right";
LABEL_196:
              v138 = a1;
              v139 = 569878;
LABEL_197:
              hx509_set_error_string(v138, 0, v139, v124, v73, v74, v75, v76, v141);
LABEL_198:
              v94 = 0;
              v95 = 0;
              inited = v18;
              goto LABEL_101;
            }
          }

          sub_2522A1A20(&v162);
          v84 = hx509_name_to_Name_0();
          if (v84)
          {
            v125 = v84;
            hx509_clear_error_string(a1);
LABEL_164:
            v18 = v125;
            goto LABEL_198;
          }

          v85 = DWORD2(v163);
          if (DWORD2(v163) < 2 || (v86 = v164 + 16 * DWORD2(v163), *(v86 - 16) > 1u) || (v87 = *(v86 - 8), der_heim_oid_cmp()))
          {
            v124 = "Proxy name too short or does not have Common name at the top";
            goto LABEL_196;
          }

          sub_2522A19C0(v164 + 16 * v85 - 16);
          --DWORD2(v163);
          v69 = sub_25229C654(&v162, v79 + 72, &v165);
          if (v69)
          {
LABEL_159:
            v125 = v69;
            hx509_set_error_string(a1, 0, v69, "Out of memory", v73, v74, v75, v76, v141);
            goto LABEL_164;
          }

          if (v165)
          {
            v124 = "Proxy issuer name not as expected";
            goto LABEL_196;
          }

          v82 = 0;
          LOBYTE(inited) = 1;
          v81 = 1;
          goto LABEL_63;
        }
      }

      if (v147)
      {
        v80 = sub_25229C654(&v162, v79 + 144, &v165);
        if (v80)
        {
          inited = v80;
          v121 = "out of memory";
          v122 = a1;
          v123 = 0;
LABEL_151:
          hx509_set_error_string(v122, v123, inited, v121, v73, v74, v75, v76, v141);
          goto LABEL_100;
        }

        if (v165)
        {
          hx509_clear_error_string(a1);
          v94 = 0;
          v95 = 0;
          inited = 569878;
          goto LABEL_101;
        }

        if (a3[11])
        {
          hx509_name_free(a3 + 11);
        }

        v69 = hx509_name_from_Name(&v162, a3 + 11);
        if (v69)
        {
          inited = v69;
          hx509_clear_error_string(a1);
          goto LABEL_100;
        }
      }

      v81 = 0;
      LOBYTE(inited) = 1;
      v82 = 1;
LABEL_63:
      v169 = 0;
      v88 = *(v79 + 16);
      if (v88)
      {
        v160[0] = 0uLL;
        v170[0] = 0;
        if (*v88 + 1 >= 3)
        {
          v143 = v81;
          v69 = sub_25228E36C(v79, &unk_2797059A8, &v169);
          if (v69)
          {
            v69 = sub_2522A2054(*(v69 + 32), *(v69 + 24), v160, v170);
            if (v69)
            {
              goto LABEL_99;
            }

            if (v82 == 2)
            {
              inited = 569859;
              if (!*&v160[0] || !**&v160[0])
              {
                goto LABEL_204;
              }

              v89 = v145;
              if (*(&v160[0] + 1) && ~(v142 + v147) + v145 > **(&v160[0] + 1))
              {
                inited = 569860;
LABEL_204:
                sub_2522A20A4(v160);
LABEL_100:
                v94 = 0;
                v95 = 0;
                goto LABEL_101;
              }
            }

            else
            {
              v89 = v145;
              if (v82 != 1 && *&v160[0] && **&v160[0])
              {
                inited = 569875;
                goto LABEL_204;
              }
            }

            v69 = sub_2522A20A4(v160);
            v81 = v143;
            goto LABEL_74;
          }

          v81 = v143;
          if ((inited & 1) == 0)
          {
            v168 = 0;
            if (sub_25229D234(v79 + 144, &v168))
            {
              sub_2522A81C8();
            }

            inited = 569857;
            hx509_set_error_string(a1, 0, 569857, "basicConstraints missing from CA certifiacte %s", v127, v128, v129, v130, v168);
            free(v168);
            goto LABEL_100;
          }
        }
      }

      v89 = v145;
LABEL_74:
      v77 = v89 + 1;
      v90 = v166;
      if (v77 != v166 || (*(a2 + 8) & 8) != 0)
      {
        if ((*(v79 + 112) - 1) > 1)
        {
          v91 = 0;
        }

        else
        {
          v91 = *(v79 + 120);
        }

        v92 = *(a2 + 16);
        if (v91 > v92)
        {
          hx509_clear_error_string(a1);
          v94 = 0;
          v95 = 0;
          inited = 569863;
          goto LABEL_101;
        }

        v93 = (*(v79 + 128) - 1) > 1 ? 0 : *(v79 + 136);
        if (v93 < v92)
        {
          hx509_clear_error_string(a1);
          v94 = 0;
          v95 = 0;
          inited = 569864;
          goto LABEL_101;
        }
      }

      if (v81)
      {
        v78 = 0;
      }

      else
      {
        v78 = 2;
      }

      v147 += v81;
      if (v77 >= v166)
      {
        if (v166)
        {
          v95 = 0;
          v94 = 0;
          while (1)
          {
            LODWORD(v168) = 0;
            v146 = v90 - 1;
            v148 = *(*(v167 + 8 * (v90 - 1)) + 56);
            v98 = sub_2522915DC(a1, v148, &v168);
            if (v98)
            {
              inited = v98;
              goto LABEL_101;
            }

            if (v168)
            {
              v99 = v90 == v166;
            }

            else
            {
              v99 = 0;
            }

            if (!v99)
            {
              v144 = v94;
              if (v95)
              {
                LODWORD(v170[0]) = 0;
                v100 = v94 + 1;
                v101 = v95;
                while (1)
                {
                  v160[0] = 0uLL;
                  v102 = *(v100 - 1);
                  if (v102)
                  {
                    LODWORD(v160[0]) = *v102;
                    *(&v160[0] + 1) = *(v102 + 8);
                    v103 = sub_252291670(v160, v148, v170);
                    if (v103)
                    {
                      goto LABEL_155;
                    }

                    if (!LODWORD(v170[0]) && *(v148 + 168))
                    {
                      break;
                    }
                  }

                  v108 = *v100;
                  if (*v100)
                  {
                    LODWORD(v160[0]) = *v108;
                    *(&v160[0] + 1) = *(v108 + 8);
                    v103 = sub_252291670(v160, v148, v170);
                    if (v103)
                    {
LABEL_155:
                      inited = v103;
                      hx509_clear_error_string(a1);
                      goto LABEL_202;
                    }

                    if (LODWORD(v170[0]))
                    {
                      inited = 569868;
                      v126 = "Error verify constraints, certificate included in excluded subtree";
                      goto LABEL_201;
                    }
                  }

                  v100 += 2;
                  if (!--v101)
                  {
                    goto LABEL_124;
                  }
                }

                inited = 569868;
                v126 = "Error verify constraints, certificate didn't match any permitted subtree";
LABEL_201:
                hx509_set_error_string(a1, 0, 569868, v126, v104, v105, v106, v107, v141);
LABEL_202:
                v94 = v144;
                goto LABEL_101;
              }

LABEL_124:
              v94 = v144;
            }

            v169 = 0;
            v170[0] = 0;
            v160[0] = 0uLL;
            v69 = sub_25228E36C(v148, &unk_279705A08, &v169);
            if (v69)
            {
              v69 = sub_2522A20B4(*(v69 + 32), *(v69 + 24), v160, v170);
              if (v69)
              {
                inited = v69;
                if (v69 != 569857)
                {
                  hx509_set_error_string(a1, 0, v69, "Failed getting NameConstraints", v73, v74, v75, v76, v141);
                  goto LABEL_101;
                }
              }

              else
              {
                if (!v146)
                {
                  inited = 569868;
                  hx509_set_error_string(a1, 0, 569868, "Not a CA and have NameConstraints", v73, v74, v75, v76, v141);
LABEL_208:
                  sub_2522A20D4(v160);
                  goto LABEL_101;
                }

                v109 = malloc_type_realloc(v94, 16 * v95 + 16, 0x20040A4A59CD2uLL);
                if (!v109)
                {
                  hx509_clear_error_string(a1);
                  inited = 12;
                  goto LABEL_208;
                }

                v110 = v109;
                v111 = sub_2522A20E4();
                if (v111)
                {
                  inited = v111;
                  hx509_clear_error_string(a1);
                  v94 = v110;
                  goto LABEL_208;
                }

                ++v95;
                v69 = sub_2522A20D4(v160);
                v94 = v110;
              }
            }

            v90 = v146;
            if (!v146)
            {
              goto LABEL_136;
            }
          }
        }

LABEL_135:
        v95 = 0;
        v94 = 0;
LABEL_136:
        if (*(a2 + 32))
        {
          *&v160[0] = 0;
          inited = hx509_certs_init(a1, "MEMORY:revoke-certs", 0, 0, v160);
          if (inited)
          {
            goto LABEL_101;
          }

          if (v166)
          {
            v117 = 0;
            while (1)
            {
              v118 = hx509_certs_add(a1, *&v160[0], *(v167 + 8 * v117), v112, v113, v114, v115, v116);
              if (v118)
              {
                break;
              }

              if (++v117 >= v166)
              {
                goto LABEL_142;
              }
            }

LABEL_146:
            inited = v118;
            hx509_certs_free(v160);
            goto LABEL_101;
          }

LABEL_142:
          v118 = hx509_certs_merge(a1, *&v160[0], a4, v112, v113, v114, v115, v116);
          if (v118)
          {
            goto LABEL_146;
          }

          v119 = 0;
          while (v119 < v166 - 1)
          {
            v120 = v119 + 1;
            v118 = hx509_revoke_verify(a1, *(a2 + 32), *&v160[0], *(a2 + 16), *(v167 + 8 * v119), *(v167 + 8 * v119 + 8));
            v119 = v120;
            if (v118)
            {
              goto LABEL_146;
            }
          }

          hx509_certs_free(v160);
        }

        v131 = v94;
        v132 = v166;
        if (!v166)
        {
LABEL_182:
          v94 = v131;
          if (a5)
          {
            v136 = sub_25228F2AC(v69, v70, v71, v72, v73, v74, v75, v76);
            *a5 = v136;
            if (!v136)
            {
              inited = 12;
              goto LABEL_101;
            }

            if (v166)
            {
              for (i = 0; i < v166; ++i)
              {
                heim_array_append_value(*(*a5 + 4), *(v167 + 8 * i));
              }
            }
          }

          inited = 0;
          goto LABEL_101;
        }

        while (2)
        {
          v133 = *(v167 + 8 * v132 - 8);
          v134 = *(v133 + 56);
          if (v132 == v166)
          {
            LODWORD(v160[0]) = 0;
            v69 = sub_2522915DC(a1, v134, v160);
            if (v69)
            {
              goto LABEL_188;
            }

            if (!LODWORD(v160[0]))
            {
LABEL_181:
              if (!--v132)
              {
                goto LABEL_182;
              }

              continue;
            }
          }

          else
          {
            v133 = *(v167 + 8 * v132);
          }

          break;
        }

        v69 = sub_2522902E0(a1, v133, v134 + 248, v134, (v134 + 272), v74, v75, v76);
        if (v69)
        {
          inited = v69;
          hx509_set_error_string(a1, 1, v69, "Failed to verify signature of certificate", v73, v74, v75, v76, v141);
LABEL_191:
          v94 = v131;
LABEL_101:
          hx509_certs_free(&v161);
          sub_2522A1A20(&v162);
          if (v95)
          {
            v96 = v94;
            do
            {
              sub_2522A20D4(v96);
              v96 += 16;
              --v95;
            }

            while (v95);
          }

          free(v94);
          sub_25228EA88(&v166);
          goto LABEL_105;
        }

        if (v132 == 1)
        {
          goto LABEL_182;
        }

        if ((*(a2 + 8) & 0x20) == 0)
        {
          v135 = (*(v134 + 112) - 1) > 1 ? 0 : *(v134 + 120);
          v69 = sub_252294174(a1, v134 + 248, v135);
          if (v69)
          {
LABEL_188:
            inited = v69;
            goto LABEL_191;
          }
        }

        goto LABEL_181;
      }
    }
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  CertificateCount = SecTrustGetCertificateCount(trust);
  v45 = sub_25228F2AC(CertificateCount, v38, v39, v40, v41, v42, v43, v44);
  *a5 = v45;
  if (!v45)
  {
    CFRelease(trust);
    inited = 12;
    goto LABEL_105;
  }

  if (CertificateCount >= 1)
  {
    v46 = 0;
    while (1)
    {
      CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v46);
      if (!CertificateAtIndex)
      {
        sub_2522A8188(0, v48, v49, v50, v51, v52, v53, v54);
      }

      v55 = SecCertificateCopyData(CertificateAtIndex);
      if (!v55)
      {
        sub_2522A8170(0, v56, v57, v58, v59, v60, v61, v62);
      }

      v63 = v55;
      *&v162 = 0;
      BytePtr = CFDataGetBytePtr(v55);
      Length = CFDataGetLength(v63);
      inited = hx509_cert_init_data(a1, BytePtr, Length, &v162);
      CFRelease(v63);
      if (inited)
      {
        break;
      }

      v66 = v162;
      heim_array_append_value(*(*a5 + 4), v162);
      heim_release(v66);
      if (CertificateCount == ++v46)
      {
        goto LABEL_18;
      }
    }

    CFRelease(trust);
    heim_release(*a5);
    *a5 = 0;
  }

  else
  {
LABEL_18:
    CFRelease(trust);
    inited = 0;
  }

LABEL_105:
  _Block_object_dispose(&v152, 8);
  _Block_object_dispose(&v156, 8);
  return inited;
}

SecCertificateRef sub_25229014C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v2 = 0;
  if (!hx509_cert_binary(a1, a2, &v7))
  {
    v3 = v8;
    v4 = CFDataCreateWithBytesNoCopy(0, v8, v7, *MEMORY[0x277CBED00]);
    if (v4)
    {
      v5 = v4;
      v2 = SecCertificateCreateWithData(0, v4);
      CFRelease(v5);
    }

    else
    {
      v2 = 0;
    }

    free(v3);
  }

  return v2;
}

uint64_t sub_2522901DC(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = sub_25229014C(a1[6], a2);
  CFArrayAppendValue(*(*(a1[5] + 8) + 24), *(*(a1[4] + 8) + 24));
  CFRelease(*(*(a1[4] + 8) + 24));
  return 0;
}

void sub_25229023C()
{
  v0 = CFPreferencesCopyValue(@"AllowHX509Validation", @"org.h5l.hx509", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      byte_27F4D9728 = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

uint64_t sub_2522902E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a5 & 7) != 0)
  {
    v8 = 569925;
    hx509_set_error_string(a1, 0, 569925, "signature not multiple of 8 bits", a5, a6, a7, a8, v11[0]);
  }

  else
  {
    v9 = a5[1];
    v11[0] = *a5 >> 3;
    v11[1] = v9;
    return hx509_verify_signature_0(a1, a2, a3, a4, v11);
  }

  return v8;
}

uint64_t hx509_verify_hostname(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const char *a5, uint64_t a6, int a7)
{
  if (a6 && a7 < 1)
  {
    return 22;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  while (1)
  {
    v11 = sub_25228E628(*(a2 + 56), &v23, &v24);
    if (v11)
    {
      break;
    }

    v12 = v24;
    if (v24)
    {
      v13 = 0;
      for (i = 0; i < v12; ++i)
      {
        if (*(v25 + v13) == 3)
        {
          strlen(a5);
          if (!der_printable_string_cmp())
          {
            sub_2522A1E98(&v24);
            return 0;
          }

          v12 = v24;
        }

        v13 += 40;
      }
    }

    sub_2522A1E98(&v24);
  }

  if (v11 != 569857)
  {
    return 569968;
  }

  v15 = *(a2 + 56);
  v16 = *(v15 + 168);
  if (!v16)
  {
    v21 = 0;
    goto LABEL_33;
  }

  while (1)
  {
    --v16;
    v17 = *(v15 + 176);
    if (*(v17 + 16 * v16))
    {
      break;
    }

LABEL_20:
    if (!v16)
    {
      v21 = 0;
      goto LABEL_33;
    }
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 16 * v16 + 8);
    if (!der_heim_oid_cmp())
    {
      break;
    }

    ++v19;
    v17 = *(v15 + 176);
    v18 += 40;
    if (v19 >= *(v17 + 16 * v16))
    {
      goto LABEL_20;
    }
  }

  v22 = *(v20 + v18 + 16);
  switch(v22)
  {
    case 1:
      strlen(a5);
      result = der_ia5_string_cmp();
LABEL_30:
      v21 = 569870;
      if (!result)
      {
        return result;
      }

      goto LABEL_33;
    case 5:
      result = strcasecmp(*(v20 + v18 + 24), a5);
      goto LABEL_30;
    case 3:
      strlen(a5);
      result = der_printable_string_cmp();
      goto LABEL_30;
  }

  v21 = 569870;
LABEL_33:
  if (a3)
  {
    return v21;
  }

  else
  {
    return 569870;
  }
}

uint64_t sub_252290590(uint64_t a1, uint64_t a2)
{
  if (hx509_cert_get_attribute(a2))
  {
    return 0;
  }

  v5 = malloc_type_realloc(*(a2 + 80), 8 * *(a2 + 72) + 8, 0x2004093837F09uLL);
  if (v5)
  {
    *(a2 + 80) = v5;
    v6 = malloc_type_malloc(0x20uLL, 0x10900401C8C3F62uLL);
    if (v6)
    {
      v7 = v6;
      der_copy_octet_string();
      der_copy_oid();
      result = 0;
      v8 = *(a2 + 72);
      *(*(a2 + 80) + 8 * v8) = v7;
      *(a2 + 72) = v8 + 1;
      return result;
    }
  }

  else
  {
    hx509_clear_error_string(a1);
  }

  return 12;
}

uint64_t hx509_cert_get_attribute(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 80) + 8 * v2);
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v2 >= *(a1 + 72))
    {
      return 0;
    }
  }

  return *(*(a1 + 80) + 8 * v2);
}

uint64_t hx509_cert_set_friendly_name(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 32) = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

_BYTE *hx509_cert_get_friendly_name(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (!result)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    attribute = hx509_cert_get_attribute(a1);
    if (attribute)
    {
      if (!sub_25228B8D4(*(attribute + 24), *(attribute + 16), &v12, &v11))
      {
        if (v12 == 1)
        {
          v5 = malloc_type_malloc(*v13 + 1, 0x3EF05833uLL);
          *v3 = v5;
          if (v5)
          {
            v6 = v13;
            v7 = *v13;
            if (*v13)
            {
              v7 = 0;
              do
              {
                v8 = *(v6[1] + 2 * v7);
                if (v8 >= 0x100)
                {
                  LOBYTE(v8) = 88;
                }

                *(*v3 + v7++) = v8;
                v6 = v13;
              }

              while (v7 < *v13);
              v5 = *v3;
            }

            v5[v7] = 0;
            sub_25228B8F4(&v12);
            return *v3;
          }
        }

        sub_25228B8F4(&v12);
      }
    }

    else
    {
      v10 = 0;
      if (!hx509_name_from_Name(*(a1 + 56) + 144, &v10))
      {
        v9 = hx509_name_to_string(v10, v3);
        hx509_name_free(&v10);
        if (!v9)
        {
          return *v3;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t hx509_cert_get_persistent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {

    return der_copy_octet_string();
  }

  else
  {
    v4 = *(*(a1 + 56) + 216);
    v6[0] = *(*(a1 + 56) + 208) >> 3;
    v6[1] = v4;
    v5 = hx509_signature_sha1();
    result = sub_25229444C(0, 0, v5, v6, 0, a2);
    if (!result)
    {
      der_free_octet_string();
      der_copy_octet_string();
      return 0;
    }
  }

  return result;
}

double sub_2522908F8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
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

uint64_t hx509_query_alloc(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x88uLL, 0x10B004077450F5CuLL);
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

_DWORD *hx509_query_match_option(_DWORD *result, int a2)
{
  if ((a2 - 1) <= 3)
  {
    *result |= dword_2522AA610[a2 - 1];
  }

  return result;
}

uint64_t hx509_query_match_issuer_serial(uint64_t a1)
{
  if (*(a1 + 24))
  {
    der_free_heim_integer();
    free(*(a1 + 24));
  }

  v2 = malloc_type_malloc(0x18uLL, 0x10800409070E284uLL);
  *(a1 + 24) = v2;
  if (!v2)
  {
    return 12;
  }

  v3 = der_copy_heim_integer();
  if (v3)
  {
    v4 = v3;
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    return v4;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_2522A1A20(v5);
    free(*(a1 + 48));
  }

  v6 = malloc_type_malloc(0x28uLL, 0x10A0040F20C3E80uLL);
  *(a1 + 48) = v6;
  if (!v6)
  {
    return 12;
  }

  v4 = hx509_name_to_Name_0();
  if (v4)
  {
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  else
  {
    *a1 |= 6u;
  }

  return v4;
}

uint64_t hx509_query_match_friendly_name(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 72) = v5;
  if (!v5)
  {
    return 12;
  }

  result = 0;
  *a1 |= 0x40000u;
  return result;
}

uint64_t hx509_query_match_eku(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  if (!a2)
  {
    if (v3)
    {
      der_free_oid();
      free(*(a1 + 112));
      *(a1 + 112) = 0;
    }

    v5 = *a1 & 0xFFBFFFFF;
    goto LABEL_11;
  }

  if (v3)
  {
    der_free_oid();
    v4 = *(a1 + 112);
  }

  else
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
    *(a1 + 112) = v6;
    if (!v6)
    {
      return 12;
    }
  }

  v7 = der_copy_oid();
  if (!v7)
  {
    v5 = *a1 | 0x400000;
LABEL_11:
    v8 = 0;
    *a1 = v5;
    return v8;
  }

  v8 = v7;
  free(*(a1 + 112));
  *(a1 + 112) = 0;
  return v8;
}

uint64_t hx509_query_match_cmp_func(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a1 & 0xFFF7FFFF | ((a2 != 0) << 19);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  return 0;
}

uint64_t hx509_query_match_persistent(uint64_t a1, uint64_t a2)
{
  *a1 = *a1 & 0xFEFFFFFF | ((a2 != 0) << 24);
  *(a1 + 128) = a2;
  return 0;
}

void hx509_query_free(int a1, void **a2)
{
  if (a2)
  {
    if (a2[3])
    {
      der_free_heim_integer();
      free(a2[3]);
    }

    v3 = a2[6];
    if (v3)
    {
      sub_2522A1A20(v3);
      free(a2[6]);
    }

    if (a2[14])
    {
      der_free_oid();
      free(a2[14]);
    }

    v4 = a2[9];
    if (v4)
    {
      free(v4);
    }

    a2[16] = 0;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;

    free(a2);
  }
}

const char *sub_252290C74(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 56);
  v7 = *a2;
  if (*a2)
  {
    if (sub_25228E808(*(a2 + 1), *(a3 + 56), 0))
    {
      return 0;
    }

    v7 = *a2;
  }

  if ((v7 & 0x8000) != 0)
  {
    if (sub_25228EED8(*(a2 + 2), v6))
    {
      return 0;
    }

    v7 = *a2;
  }

  if ((v7 & 2) != 0)
  {
    v8 = *(a2 + 3);
    if (der_heim_integer_cmp())
    {
      return 0;
    }

    v7 = *a2;
  }

  v28 = 0;
  if ((v7 & 4) != 0)
  {
    v9 = sub_25229C654(v6 + 72, *(a2 + 6), &v28);
    if (v9 | v28)
    {
      return 0;
    }

    v7 = *a2;
  }

  if ((v7 & 8) != 0)
  {
    v10 = sub_25229C654(v6 + 144, *(a2 + 7), &v28);
    if (v10 | v28)
    {
      return 0;
    }

    v7 = *a2;
  }

  if ((v7 & 0x10) != 0)
  {
    v26 = 0;
    v27 = 0;
    if (sub_25228E308(v6, &v26))
    {
      return 0;
    }

    v15 = *(a2 + 4);
    v16 = der_heim_octet_string_cmp();
    sub_2522A2030(&v26);
    if (v16)
    {
      return 0;
    }

    v7 = *a2;
    if ((*a2 & 0x20) != 0)
    {
      return 0;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    return 0;
  }

  if ((v7 & 0x40) != 0 && !*(a3 + 64))
  {
    return 0;
  }

  v11 = (v7 >> 10) & 2 | (v7 >> 8) & 1 | (v7 >> 5) & 4 | (v7 >> 10) & 8 | (v7 >> 8) & 0x10 | (v7 >> 4) & 0x60;
  if (v11)
  {
    if (sub_25228E694(a1, v6, v11, 1))
    {
      return 0;
    }

    v7 = *a2;
  }

  if ((v7 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x10000) != 0)
  {
    result = hx509_cert_get_attribute(a3);
    if (!result)
    {
      return result;
    }

    v17 = *(a2 + 5);
    if (der_heim_octet_string_cmp())
    {
      return 0;
    }

    v7 = *a2;
    if ((*a2 & 0x20000) == 0)
    {
LABEL_38:
      if ((v7 & 0x40000) != 0)
      {
        result = hx509_cert_get_friendly_name(a3);
        if (!result)
        {
          return result;
        }

        if (strcasecmp(*(a2 + 9), result))
        {
          return 0;
        }

        v7 = *a2;
        if ((*a2 & 0x80000) != 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v7 & 0x80000) != 0)
      {
LABEL_40:
        if ((*(a2 + 10))(a1, a3, *(a2 + 11)))
        {
          return 0;
        }

        v7 = *a2;
      }

      if ((v7 & 0x100000) != 0)
      {
        v18 = *(v6 + 216);
        v26 = *(v6 + 208) >> 3;
        v27 = v18;
        v19 = hx509_signature_sha1();
        if (hx509_verify_signature_0(a1, 0, v19, &v26, *(a2 + 12)))
        {
          return 0;
        }

        v7 = *a2;
      }

      if ((v7 & 0x200000) != 0)
      {
        v21 = (*(v6 + 112) - 1) > 1 ? 0 : *(v6 + 120);
        v22 = *(a2 + 13);
        if (v21 > v22)
        {
          return 0;
        }

        v23 = (*(v6 + 128) - 1) > 1 ? 0 : *(v6 + 136);
        if (v23 < v22)
        {
          return 0;
        }
      }

      if ((v7 & 0x400000) != 0)
      {
        v20 = *(a2 + 14);
        if (hx509_cert_check_eku(a1, a3))
        {
          return 0;
        }

        v7 = *a2;
      }

      if ((v7 & 0x800000) == 0)
      {
        if ((v7 & 0x1000000) == 0)
        {
          return (v7 >> 25 == 0);
        }

        v26 = 0;
        v27 = 0;
        if (!hx509_cert_get_persistent(a3, &v26))
        {
          v24 = *(a2 + 16);
          v25 = der_heim_octet_string_cmp();
          der_free_octet_string();
          if (!v25)
          {
            v7 = *a2;
            return (v7 >> 25 == 0);
          }
        }
      }

      return 0;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_38;
  }

  v12 = *(a2 + 8);
  if (!*v12)
  {
    goto LABEL_38;
  }

  v13 = 0;
  while (1)
  {
    result = sub_25228EED8(*(*(v12[1] + 8 * v13) + 56), *(a3 + 56));
    if (!result)
    {
      return result;
    }

    ++v13;
    v12 = *(a2 + 8);
    if (v13 >= *v12)
    {
      v7 = *a2;
      goto LABEL_38;
    }
  }
}

uint64_t hx509_cert_check_eku(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v3 = sub_252291070(*(a2 + 56), v8);
  if (v3)
  {
    v4 = v3;
    hx509_clear_error_string(a1);
  }

  else if (LODWORD(v8[0]))
  {
    v5 = 0;
    v6 = 0;
    while (der_heim_oid_cmp())
    {
      ++v6;
      v5 += 16;
      if (v6 >= LODWORD(v8[0]))
      {
        goto LABEL_7;
      }
    }

    sub_2522A2148(v8);
    return 0;
  }

  else
  {
LABEL_7:
    sub_2522A2148(v8);
    hx509_clear_error_string(a1);
    return 569881;
  }

  return v4;
}

uint64_t sub_252291070(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v3 = sub_25228E36C(a1, &unk_279705B68, &v5);
  if (v3)
  {
    return sub_2522A20F8(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_2522910D4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = 0;
  *a3 = 0;
  v3 = *(a2 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = 0;
  if (*v4 + 1 < 3)
  {
    return 0;
  }

  v7 = sub_25228E36C(v3, &unk_279705878, &v8);
  if (v7)
  {
    return sub_2522A1F28(*(v7 + 32), *(v7 + 24), a3, &v9);
  }

  else
  {
    return 569872;
  }
}

uint64_t sub_252291160(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = sub_252291070(*(a2 + 56), a3);
  if (v4)
  {
    v5 = v4 == 569857;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4;
  hx509_clear_error_string(a1);
  return v6;
}

uint64_t hx509_cert_binary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = sub_2522A1CA0(*(a2 + 56));
  *a3 = v5;
  v6 = malloc_type_malloc(v5, 0xAB35A276uLL);
  *(a3 + 8) = v6;
  if (!v6)
  {
    v15 = 12;
    goto LABEL_5;
  }

  v7 = sub_2522A1C80(v6 + *a3 - 1, *a3, *(a2 + 56), &v18);
  if (v7)
  {
    v15 = v7;
    free(*(a3 + 8));
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    return v15;
  }

  if (*a3 != v18)
  {
    sub_25229126C("internal ASN.1 encoder error", v8, v9, v10, v11, v12, v13, v14, v17);
  }

  return 0;
}

uint64_t hx509_print_cert(uint64_t a1, uint64_t a2, FILE *a3)
{
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *MEMORY[0x277D85DF8];
  }

  result = hx509_name_from_Name(*(a2 + 56) + 72, &v12);
  if (!result)
  {
    hx509_name_to_string(v12, &v11);
    hx509_name_free(&v12);
    fprintf(v5, "    issuer:  %s\n", v11);
    free(v11);
    result = hx509_name_from_Name(*(a2 + 56) + 144, &v12);
    if (!result)
    {
      hx509_name_to_string(v12, &v11);
      hx509_name_free(&v12);
      fprintf(v5, "    subject: %s\n", v11);
      free(v11);
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v7 = *(a2 + 56);
      result = der_copy_heim_integer();
      if (!result)
      {
        result = der_print_hex_heim_integer();
        if (!result)
        {
          der_free_heim_integer();
          fprintf(v5, "    serial: %s\n", v11);
          free(v11);
          fwrite("    keyusage: ", 0xEuLL, 1uLL, v5);
          if (hx509_cert_keyusage_print(a1, a2, &v11))
          {
            fwrite("no\n", 3uLL, 1uLL, v5);
          }

          else
          {
            fprintf(v5, "%s\n", v11);
            free(v11);
          }

          v8 = 0;
          v9 = 0;
          fwrite("    persistent: ", 0x10uLL, 1uLL, v5);
          if (hx509_cert_get_persistent(a2, &v8))
          {
            fwrite("no\n", 3uLL, 1uLL, v5);
          }

          else
          {
            if (rk_hex_encode(v9, v8, &v11) < 1)
            {
              fwrite("out of memory\n", 0xEuLL, 1uLL, v5);
            }

            else
            {
              fprintf(v5, "%s\n", v11);
              free(v11);
            }

            der_free_octet_string();
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t hx509_cert_get_appleid(uint64_t a1, uint64_t a2, char **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = xmmword_2522AA5E4;
  v14[1] = unk_2522AA5F4;
  v12 = 8;
  v13 = v14;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  *a3 = 0;
  v5 = hx509_cert_check_eku(a1, a2);
  if (v5 || (v5 = hx509_name_from_Name(*(a2 + 56) + 144, &v10), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_25229C7B4(v10, 3u, &unk_279704CD8, &v11, &v9);
    hx509_name_free(&v10);
    if (!v6)
    {
      asprintf(a3, "%s@me.com", v9);
      free(v9);
      if (*a3)
      {
        v6 = 0;
      }

      else
      {
        v6 = 12;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2522915DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = 0;
  v5 = sub_25229C654(a2 + 144, a2 + 72, &v13);
  *a3 = v13 == 0;
  if (!v5)
  {
    return sub_252294240(a1);
  }

  v10 = v5;
  hx509_set_error_string(a1, 0, v5, "Failed to check if self signed", v6, v7, v8, v9, v12);
  return v10;
}

uint64_t sub_252291670(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v19 = 0;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(a1 + 1);
    v8 = v7 + 56 * v5;
    if (*(v8 + 40) && *(v8 + 48))
    {
      return 569869;
    }

    if (*v8 == 4 && *(a2 + 168))
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v9 = *(a2 + 160);
      LODWORD(v16) = 4;
      DWORD2(v16) = v9;
      v17 = *(a2 + 168);
      sub_25229180C(v8, &v16, &v19 + 1);
      v7 = *(a1 + 1);
    }

    v10 = (v7 + 56 * v5);
    v16 = 0uLL;
    v20 = 0;
    while (1)
    {
      LODWORD(result) = sub_25228E628(a2, &v20, &v16);
      if (result)
      {
        break;
      }

      v12 = v16;
      if (v16)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          if (*v10 == *(*(&v16 + 1) + v13))
          {
            sub_25229180C(v10, *(&v16 + 1) + v13, &v19);
            v12 = v16;
            v6 = 1;
          }

          ++v14;
          v13 += 40;
        }

        while (v14 < v12);
      }

      sub_2522A1E98(&v16);
    }

    if (result == 569857)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    ++v5;
  }

  while (v5 < *a1);
  if (HIDWORD(v19) && (!v6 || v19))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_25229180C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *result;
  if (*result != *a2)
  {
    sub_2522A820C();
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v23 = *(result + 8);
      v24 = *(a2 + 8);
      if (v24 >= v23)
      {
        v25 = (*(a2 + 16) + v24 - v23);
        result = memcmp(v25, *(result + 16), *(result + 8));
        if (!result)
        {
          if (v24 != v23)
          {
            v26 = *(v25 - 1);
            goto LABEL_31;
          }

LABEL_38:
          *a3 = 1;
        }
      }
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      if (*(result + 8) != 1 || *(a2 + 8) != 1)
      {
        goto LABEL_38;
      }

      v8 = *(result + 16);
      if (v8 > *(a2 + 16))
      {
        return result;
      }

      if (!v8)
      {
        goto LABEL_38;
      }

      v9 = 0;
      v10 = *(result + 24);
      v11 = *(a2 + 24);
      while (1)
      {
        v12 = v10 + 16 * v9;
        v13 = (v11 + 16 * v9);
        if (*v12 != *v13)
        {
          break;
        }

        if (*v12)
        {
          v14 = 0;
          v15 = 16;
          do
          {
            v31 = 0;
            v16 = *(v12 + 8) + v15 - 16;
            v17 = *(v13 + 1) + v15;
            result = der_heim_oid_cmp();
            if (result)
            {
              return result;
            }

            result = sub_25229C2C0(*(v12 + 8) + v15, *(v13 + 1) + v15, &v31, v18, v19, v20, v21, v22);
            if (result || v31)
            {
              return result;
            }

            ++v14;
            v15 += 40;
          }

          while (v14 < *v13);
        }

        if (++v9 == v8)
        {
          goto LABEL_38;
        }
      }
    }
  }

  else if (v3 == 1)
  {
    result = der_heim_oid_cmp();
    if (!result)
    {
      result = der_heim_octet_string_cmp();
      if (!result)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(result + 8);
    v7 = *(result + 16);
    if (memchr(v7, 64, v6))
    {
      result = der_printable_string_cmp();
      if (result)
      {
        return result;
      }

      goto LABEL_38;
    }

    v28 = *(a2 + 8);
    v27 = *(a2 + 16);
    result = memchr(v27, 64, v28);
    if (result)
    {
      v29 = result;
      v30 = &v27[v28 - result];
      if (v30 >= v6)
      {
        result = memcmp(&v30[result - v6 + 1], v7, v6);
        if (!result)
        {
          if (v30 > v6)
          {
            v26 = v30[v29 - v6 + 1];
LABEL_31:
            if (v26 != 46)
            {
              return result;
            }

            goto LABEL_38;
          }

          goto LABEL_38;
        }
      }
    }
  }

  return result;
}

uint64_t hx509_cms_wrap_ContentInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19[0] = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v19[1] = 0;
  v20 = 0;
  v5 = der_copy_oid();
  if (v5)
  {
    return v5;
  }

  if (a2)
  {
    v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    if (!v20)
    {
      goto LABEL_9;
    }

    v6 = malloc_type_malloc(*a2, 0x9E72D83BuLL);
    v20[1] = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    memcpy(v6, *(a2 + 8), *a2);
    *v20 = *a2;
  }

  v7 = length_ContentInfo(v19);
  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0xCB9F9BE8uLL);
  *(a3 + 8) = v8;
  if (!v8)
  {
LABEL_9:
    v5 = 12;
    goto LABEL_10;
  }

  v9 = encode_ContentInfo(v8 + *a3 - 1, *a3, v19, &v18);
  if (v9)
  {
    v5 = v9;
    free(*(a3 + 8));
    *(a3 + 8) = 0;
LABEL_10:
    free_ContentInfo(v19);
    return v5;
  }

  free_ContentInfo(v19);
  if (*a3 != v18)
  {
    sub_25229126C("internal ASN.1 encoder error", v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return 0;
}

uint64_t hx509_cms_unwrap_ContentInfo(uint64_t *a1, void *a2, void *a3, _DWORD *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  *a2 = 0;
  a2[1] = 0;
  *a3 = 0;
  a3[1] = 0;
  v6 = sub_2522A1530(a1[1], *a1, v10, &v9);
  if (!v6)
  {
    v6 = der_copy_oid();
    if (v6)
    {
LABEL_3:
      free_ContentInfo(v10);
      return v6;
    }

    if (v11)
    {
      v8 = der_copy_octet_string();
      if (v8)
      {
        v6 = v8;
        der_free_oid();
        goto LABEL_3;
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v6 = 0;
    if (a4)
    {
      *a4 = v11 != 0;
    }

    goto LABEL_3;
  }

  return v6;
}

uint64_t hx509_cms_unenvelope(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, time_t a7, void *a8, size_t *a9)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42[0] = 0;
  v52 = 0;
  v53 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v42[1] = 0;
  *a9 = 0;
  a9[1] = 0;
  if (a3)
  {
    v14 = 64;
  }

  else
  {
    v14 = 192;
  }

  *a8 = 0;
  a8[1] = 0;
  v15 = sub_2522A16E8(a4, a5, &v46, &v41);
  if (v15)
  {
    v20 = v15;
    hx509_set_error_string(a1, 0, v15, "Failed to decode EnvelopedData", v16, v17, v18, v19, v38);
    return v20;
  }

  if (!v47)
  {
    v20 = 569894;
    v21 = "No recipient info in enveloped data";
    v22 = a1;
    v23 = 0;
LABEL_29:
    v33 = 569894;
    goto LABEL_30;
  }

  if (*(&v50 + 1))
  {
    if (a6)
    {
      v20 = 569891;
      v21 = "Both internal and external encrypted data";
      goto LABEL_24;
    }

    a6 = *(&v50 + 1);
  }

  else if (!a6)
  {
    v20 = 569891;
    v21 = "Content missing from encrypted data";
    goto LABEL_24;
  }

  v39 = a6;
  v24 = 0;
  v25 = 0;
  v45 = 0;
  v26 = 80;
  while (1)
  {
    v40 = 0;
    v27 = *(&v47 + 1) + v26;
    v28 = (*(&v47 + 1) + v26 - 72);
    if (!sub_252292004(a1, v28, a2, a7, &v45, v14))
    {
      break;
    }

LABEL_19:
    ++v24;
    v26 += 120;
    if (v24 >= v47)
    {
      v31 = a9;
      if (v25)
      {
        if (v45)
        {
          goto LABEL_22;
        }

LABEL_26:
        v20 = 569894;
        v21 = "No private key decrypted the transfer key";
      }

      else
      {
        v20 = 569894;
        v21 = "No matching certificate found in the enveloped data";
      }

      v22 = a1;
      v23 = 1;
      goto LABEL_29;
    }
  }

  v29 = v45;
  v30 = sub_25228F254(a1, (v27 + 24), v27, v45, &v52, v17, v18, v19);
  hx509_cert_free(v29);
  if (v30)
  {
    v45 = 0;
    v25 = 1;
    if (!sub_25229218C(v28, &v40))
    {
      hx509_set_error_string(a1, 1, v30, "Failed to decrypt with %s", v16, v17, v18, v19, v40);
      free(v40);
    }

    goto LABEL_19;
  }

  v31 = a9;
  if (!v29)
  {
    goto LABEL_26;
  }

LABEL_22:
  v32 = der_copy_oid();
  if (v32)
  {
    v20 = v32;
    v21 = "Failed to copy EnvelopedData content oid";
    goto LABEL_24;
  }

  if (v50)
  {
    v44 = *(v50 + 8);
    v43 = *v50;
    v35 = &v43;
  }

  else
  {
    v35 = 0;
  }

  v40 = 0;
  v20 = hx509_crypto_init(a1, 0, &v49, &v40);
  if (!v20)
  {
    if ((a3 & 2) != 0)
    {
      sub_25229509C(v40);
    }

    if (v35)
    {
      v36 = hx509_crypto_set_params(a1, v40, v35);
      if (v36)
      {
        v20 = v36;
        hx509_crypto_destroy(v40);
        goto LABEL_31;
      }
    }

    v20 = hx509_crypto_set_key_data(v40, v53, v52);
    if (v20)
    {
      hx509_crypto_destroy(v40);
      v21 = "Failed to set key for decryption of EnvelopedData";
      goto LABEL_24;
    }

    v37 = v42[0] ? v42 : 0;
    v20 = hx509_crypto_decrypt(v40, *(v39 + 8), *v39, v37, v31);
    hx509_crypto_destroy(v40);
    if (v20)
    {
      v21 = "Failed to decrypt EnvelopedData";
LABEL_24:
      v22 = a1;
      v23 = 0;
      v33 = v20;
LABEL_30:
      hx509_set_error_string(v22, v23, v33, v21, v16, v17, v18, v19, v38);
    }
  }

LABEL_31:
  sub_2522A1738(&v46);
  der_free_octet_string();
  if (v42[0])
  {
    der_free_octet_string();
  }

  if (v20)
  {
    der_free_oid();
    der_free_octet_string();
  }

  return v20;
}

uint64_t sub_252292004(uint64_t a1, int *a2, uint64_t a3, time_t a4, void *a5, int a6)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  sub_2522908F8(&v27);
  *a5 = 0;
  v16 = *a2;
  if (!*a2)
  {
    v18 = 569894;
    v19 = "unknown CMS identifier element";
LABEL_17:
    v21 = a1;
    v22 = 0;
    goto LABEL_18;
  }

  if (v16 == 1)
  {
    *(&v28 + 1) = a2 + 12;
    *&v30 = a2 + 2;
    v17 = 6;
  }

  else if (v16 == 2)
  {
    *&v29 = a2 + 2;
    v17 = 16;
  }

  else
  {
    v17 = v27;
  }

  LODWORD(v27) = v17 | a6 | 0x200000;
  if (!a4)
  {
    a4 = time(0);
  }

  *(&v33 + 1) = a4;
  v20 = hx509_certs_find(a1, a3, &v27, &v26, v12, v13, v14, v15);
  if (!v20)
  {
    v18 = 0;
    *a5 = v26;
    return v18;
  }

  v18 = 569894;
  if (v20 != 569873)
  {
    v19 = "Failed to find CMS id in cert store";
    v21 = a1;
    v22 = 1;
LABEL_18:
    hx509_set_error_string(v21, v22, 569894, v19, v12, v13, v14, v15, v24);
    return v18;
  }

  v25 = 0;
  if (!sub_25229218C(a2, &v25))
  {
    v24 = v25;
    v19 = "Failed to find %s";
    goto LABEL_17;
  }

  hx509_clear_error_string(a1);
  return v18;
}

uint64_t sub_25229218C(int *a1, char **a2)
{
  *a2 = 0;
  v3 = *a1;
  if (*a1)
  {
    if (v3 == 2)
    {
      v7 = 0;
      if (rk_hex_encode(*(a1 + 2), *(a1 + 1), &v7) < 0)
      {
        return 12;
      }

      asprintf(a2, "certificate with id %s", v7);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_11;
      }

      v6 = 0;
      v7 = 0;
      v4 = sub_25229BDB0((a1 + 2), &v6);
      if (v4)
      {
        return v4;
      }

      v4 = der_print_hex_heim_integer();
      if (v4)
      {
        free(v6);
        return v4;
      }

      asprintf(a2, "certificate issued by %s with serial number %s", v6, v7);
      free(v6);
    }

    free(v7);
  }

  else
  {
    asprintf(a2, "certificate have unknown CMSidentifier type");
  }

LABEL_11:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t hx509_cms_envelope_1(uint64_t a1, unsigned int a2, uint64_t a3, const void *a4, size_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v54 = 0;
  v55[0] = 0;
  v47 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v55[1] = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = &unk_279704C58;
  }

  *a8 = 0;
  *(a8 + 8) = 0;
  if ((a2 & 1) == 0)
  {
    params = sub_25228E68C(a1, a3, 4, 1);
    if (params)
    {
      goto LABEL_7;
    }
  }

  params = hx509_crypto_init(a1, 0, v14, &v54);
  if (params)
  {
    goto LABEL_7;
  }

  if ((a2 & 2) != 0)
  {
    sub_25229509C(v54);
  }

  v17 = hx509_crypto_set_random_key(v54, v55);
  if (v17)
  {
    v16 = v17;
    v22 = "Create random key for EnvelopedData content";
LABEL_18:
    v26 = a1;
    v27 = 0;
LABEL_19:
    v28 = v16;
LABEL_20:
    hx509_set_error_string(v26, v27, v28, v22, v18, v19, v20, v21, v46);
    goto LABEL_21;
  }

  v23 = sub_252295220(v54, v56);
  if (v23)
  {
    v16 = v23;
    v22 = "Failed to create a random iv";
    goto LABEL_18;
  }

  v24 = hx509_crypto_encrypt(v54, a4, a5, v56, &v52 + 1);
  if (v24)
  {
    v16 = v24;
    v22 = "Failed to encrypt EnvelopedData content";
    goto LABEL_18;
  }

  v25 = der_copy_oid();
  if (v25)
  {
    v16 = v25;
    v22 = "Failed to set crypto oid for EnvelopedData";
    goto LABEL_18;
  }

  *&v52 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  if (!v52)
  {
    v22 = "Failed to allocate crypto paramaters for EnvelopedData";
LABEL_32:
    v16 = 12;
    v26 = a1;
    v27 = 0;
    v28 = 12;
    goto LABEL_20;
  }

  params = hx509_crypto_get_params(a1, v54);
  if (params)
  {
LABEL_7:
    v16 = params;
    goto LABEL_21;
  }

  LODWORD(v49) = 1;
  v30 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00405CFCCFD2uLL);
  *(&v49 + 1) = v30;
  if (!v30)
  {
    v22 = "Failed to allocate recipients info for EnvelopedData";
    goto LABEL_32;
  }

  v32 = v30;
  *v30 = ((a2 & 4) >> 1) ^ 2;
  v33 = sub_2522925F8(a3, (a2 >> 2) & 1, (v30 + 2), v31, v18, v19, v20, v21);
  if (v33)
  {
    v16 = v33;
    v22 = "Failed to set CMS identifier info for EnvelopedData";
    goto LABEL_18;
  }

  v34 = sub_25228F2A4(a1, v55, a3, (v32 + 20), v32 + 13);
  if (v34)
  {
    v16 = v34;
    v22 = "Failed to encrypt transport key for EnvelopedData";
    v26 = a1;
    v27 = 1;
    goto LABEL_19;
  }

  LODWORD(v48) = 0;
  *(&v48 + 1) = 0;
  v35 = der_copy_oid();
  if (v35)
  {
    v16 = v35;
    v22 = "Failed to copy content oid for EnvelopedData";
    goto LABEL_18;
  }

  v53 = 0;
  v36 = sub_2522A1728(&v48);
  *a8 = v36;
  v37 = malloc_type_malloc(v36, 0x5160929BuLL);
  *(a8 + 8) = v37;
  if (!v37)
  {
    v16 = 12;
    goto LABEL_42;
  }

  v38 = sub_2522A1708(v37 + *a8 - 1, *a8, &v48, &v47);
  if (v38)
  {
    v16 = v38;
    free(*(a8 + 8));
    *(a8 + 8) = 0;
LABEL_42:
    v22 = "Failed to encode EnvelopedData";
    goto LABEL_18;
  }

  if (v47 != *a8)
  {
    sub_25229126C("internal ASN.1 encoder error", v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v16 = 0;
LABEL_21:
  if (v54)
  {
    hx509_crypto_destroy(v54);
  }

  if (v16)
  {
    der_free_octet_string();
  }

  der_free_octet_string();
  der_free_octet_string();
  sub_2522A1738(&v48);
  return v16;
}

uint64_t sub_2522925F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    if (a2)
    {
      sub_25229126C("CMS fill identifier with unknown type", a2, a3, a4, a5, a6, a7, a8, v14);
    }

    *a3 = 2;
    v10 = sub_25228DE4C(a1);
    if (!sub_25228E308(v10, (a3 + 8)))
    {
      return 0;
    }
  }

  v15 = 0;
  *a3 = 1;
  issuer = hx509_cert_get_issuer(a1, &v15);
  if (!issuer)
  {
    v12 = hx509_name_to_Name();
    hx509_name_free(&v15);
    if (v12)
    {
      return v12;
    }

    return hx509_cert_get_serialnumber(a1);
  }

  return issuer;
}

uint64_t hx509_cms_verify_signed(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9, __CFArray **a10)
{
  v85 = 0;
  v86[0] = 0;
  v80 = 0;
  *a10 = 0;
  *a9 = 0;
  a9[1] = 0;
  *a8 = 0;
  a8[1] = 0;
  memset(v81, 0, sizeof(v81));
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v15 = sub_2522A1658(a4, a5, v81, &v80);
  if (v15)
  {
    appended = v15;
    v21 = "Failed to decode SignedData";
    goto LABEL_3;
  }

  if (!(a6 | *(&v82 + 1)))
  {
    appended = 569891;
    v21 = "No content data in SignedData";
LABEL_9:
    v22 = a1;
    v23 = 569891;
    goto LABEL_10;
  }

  if (a6 && *(&v82 + 1))
  {
    appended = 569891;
    v21 = "Both external and internal SignedData";
    goto LABEL_9;
  }

  appended = der_copy_octet_string();
  if (appended)
  {
    v21 = "malloc: out of memory";
    goto LABEL_3;
  }

  v25 = hx509_certs_init(a1, "MEMORY:cms-cert-buffer", 0, 0, &v85);
  if (v25)
  {
    goto LABEL_23;
  }

  v26 = heim_array_create();
  *a10 = v26;
  if (!v26)
  {
    appended = 12;
    goto LABEL_11;
  }

  v25 = sub_252292DE0(a1, v81, v85);
  if (v25 || a7 && (v25 = hx509_certs_merge(a1, v85, a7, v27, v16, v17, v18, v19), v25))
  {
LABEL_23:
    appended = v25;
    goto LABEL_11;
  }

  if (!v84)
  {
    if ((a3 & 4) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  v28 = 0;
  v68 = 0;
  do
  {
    v78 = 0;
    v79 = 0;
    v77[0] = 0;
    v77[1] = 0;
    v76 = 0;
    v29 = *(&v84 + 1) + 160 * v28;
    if (!*(v29 + 136))
    {
      appended = 569889;
      hx509_set_error_string(a1, 0, 569889, "SignerInfo %d in SignedData missing sigature", v16, v17, v18, v19, v28);
      goto LABEL_75;
    }

    v72 = v29 + 136;
    v30 = v85;
    v31 = sub_25228E2B0(a2);
    v32 = sub_252292004(a1, (v29 + 8), v30, v31, v86, 256);
    v33 = v29;
    if (v32)
    {
      if ((a3 & 2) == 0 || (v34 = v85, v35 = sub_25228E2B0(a2), v32 = sub_252292004(a1, (v33 + 8), v34, v35, v86, 0), v32))
      {
        appended = v32;
        goto LABEL_75;
      }
    }

    v71 = v33;
    if (*(v33 + 104))
    {
      v74 = 0;
      v75 = 0;
      v73[0] = 0;
      v73[1] = 0;
      v36 = *(v33 + 104);
      v75 = *(v36 + 8);
      LODWORD(v74) = *v36;
      if (!v74)
      {
        goto LABEL_49;
      }

      v37 = 0;
      v38 = 0;
      while (der_heim_oid_cmp())
      {
        ++v38;
        v37 += 32;
        if (v38 >= v74)
        {
          goto LABEL_49;
        }
      }

      if (!v75)
      {
LABEL_49:
        appended = 569922;
        v47 = a1;
        v48 = 0;
        v49 = 569922;
        v50 = "SignerInfo have signed attributes but messageDigest (signature) is missing";
        goto LABEL_50;
      }

      if (*(v75 + v37 + 16) != 1)
      {
        appended = 569922;
        v47 = a1;
        v48 = 0;
        v49 = 569922;
        v50 = "SignerInfo have more then one messageDigest (signature)";
        goto LABEL_50;
      }

      v46 = sub_2522A14E0(*(*(v75 + v37 + 24) + 8), **(v75 + v37 + 24), v73, &v80);
      if (v46)
      {
        appended = v46;
        v47 = a1;
        v48 = 0;
        v49 = appended;
        v50 = "Failed to decode messageDigest (signature)";
LABEL_50:
        hx509_set_error_string(v47, v48, v49, v50, v16, v17, v18, v19, v67);
        goto LABEL_71;
      }

      appended = hx509_verify_signature_0(a1, 0, v71 + 80, a9, v73);
      der_free_octet_string();
      if (appended)
      {
        v47 = a1;
        v48 = 1;
        v49 = appended;
        v50 = "Failed to verify messageDigest";
        goto LABEL_50;
      }

      if (!v74)
      {
        goto LABEL_88;
      }

      v55 = 0;
      v56 = 0;
      while (der_heim_oid_cmp())
      {
        ++v56;
        v55 += 32;
        if (v56 >= v74)
        {
          goto LABEL_88;
        }
      }

      if (v75)
      {
        if (*(v75 + v55 + 16) != 1)
        {
          appended = 569895;
          v47 = a1;
          v48 = 0;
          v49 = 569895;
          v50 = "More then one oid in signedAttrs";
          goto LABEL_50;
        }

        v70 = v77;
        v57 = sub_2522A1490(*(*(v75 + v55 + 24) + 8), **(v75 + v55 + 24), v77, &v80);
        if (v57)
        {
          appended = v57;
          v47 = a1;
          v48 = 0;
          v49 = appended;
          v50 = "Failed to decode oid in signedAttrs";
          goto LABEL_50;
        }
      }

      else
      {
LABEL_88:
        v70 = &asn1_oid_id_pkcs7_data;
      }

      v78 = sub_2522A1638(&v74);
      v58 = malloc_type_malloc(v78, 0x1165E54DuLL);
      v79 = v58;
      if (!v58)
      {
        appended = 12;
        goto LABEL_93;
      }

      v59 = sub_2522A1618(v58 + v78 - 1, v78, &v74, &v80);
      if (v59)
      {
        appended = v59;
        free(v79);
        v79 = 0;
LABEL_93:
        if (v70 == v77)
        {
          der_free_oid();
        }

        hx509_clear_error_string(a1);
        goto LABEL_71;
      }

      if (v80 != v78)
      {
        sub_25229126C("internal ASN.1 encoder error", v60, v61, v62, v63, v64, v65, v66, v67);
      }

      v40 = v70;
    }

    else
    {
      v39 = a9[1];
      v78 = *a9;
      v79 = v39;
      v40 = &asn1_oid_id_pkcs7_data;
    }

    v69 = v40;
    v41 = der_heim_oid_cmp();
    v45 = a3 | (v41 == 0);
    if (a3 & 1 | (v41 == 0))
    {
      appended = 0;
    }

    else
    {
      appended = 569895;
      hx509_set_error_string(a1, 0, 569895, "Oid in message mismatch from the expected", v16, v17, v18, v19, v67);
    }

    if (v69 == v77)
    {
      v41 = der_free_oid();
    }

    if (v45)
    {
      v41 = hx509_verify_signature(a1, v86[0], v71 + 112, &v78, v72);
      appended = v41;
      if (v41)
      {
        hx509_set_error_string(a1, 1, v41, "Failed to verify signature in CMS SignedData", v16, v17, v18, v19, v67);
      }
    }

    if (*(v71 + 104))
    {
      free(v79);
      v79 = 0;
    }

    if (appended)
    {
      goto LABEL_71;
    }

    if ((a3 & 8) != 0)
    {
      v53 = sub_25228F2AC(v41, v42, v43, v44, v16, v17, v18, v19);
      v76 = v53;
      if (v53)
      {
        appended = heim_array_append_value(v53[4], v86[0]);
        if (!appended)
        {
LABEL_65:
          appended = heim_array_append_value(*a10, v76);
        }

        heim_release(v76);
        v54 = v68;
        if (!appended)
        {
          v54 = v68 + 1;
        }

        v68 = v54;
      }

      else
      {
        appended = 0;
      }

LABEL_71:
      v51 = v86[0];
      goto LABEL_72;
    }

    v51 = v86[0];
    v52 = sub_25228F384(a1, a2, v86[0], v85, &v76);
    if (!v52)
    {
      goto LABEL_65;
    }

    appended = v52;
LABEL_72:
    if (v51)
    {
      hx509_cert_free(v51);
    }

    v86[0] = 0;
LABEL_75:
    ++v28;
  }

  while (v28 < v84);
  if ((a3 & 4) != 0 && !v84)
  {
LABEL_107:
    heim_release(*a10);
    *a10 = 0;
LABEL_108:
    appended = der_copy_oid();
    if (appended)
    {
      hx509_clear_error_string(a1);
    }

    goto LABEL_11;
  }

  if (v68)
  {
    goto LABEL_108;
  }

  if (!appended)
  {
LABEL_106:
    appended = 569890;
    v21 = "No signers where found";
LABEL_3:
    v22 = a1;
    v23 = appended;
LABEL_10:
    hx509_set_error_string(v22, 0, v23, v21, v16, v17, v18, v19, v67);
  }

LABEL_11:
  sub_2522A16A8(v81);
  if (v85)
  {
    hx509_certs_free(&v85);
  }

  if (appended)
  {
    if (a9[1])
    {
      der_free_octet_string();
    }

    if (*a10)
    {
      heim_release(*a10);
      *a10 = 0;
    }

    der_free_oid();
    der_free_octet_string();
  }

  return appended;
}

uint64_t sub_252292DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v17 = 0;
    inited = hx509_cert_init_data(a1, *(*(v3 + 1) + v7 + 8), *(*(v3 + 1) + v7), &v17);
    if (inited)
    {
      break;
    }

    v15 = hx509_certs_add(a1, a3, v17, v10, v11, v12, v13, v14);
    hx509_cert_free(v17);
    if (v15)
    {
      return v15;
    }

    ++v8;
    v3 = *(a2 + 48);
    v7 += 16;
    if (v8 >= *v3)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t hx509_cms_create_signed_1(uint64_t a1, char a2, void *a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v26 = 0;
  *a11 = 0;
  a11[1] = 0;
  v24 = hx509_certs_init(a1, "MEMORY:certs", 0, 0, &v26);
  if (!v24)
  {
    v24 = hx509_certs_add(a1, v26, a7, v19, v20, v21, v22, v23);
    if (!v24)
    {
      v24 = hx509_cms_create_signed(a1, a2, a3, a4, a5, a6, v26, a8, a9, a10, a11);
    }

    hx509_certs_free(&v26);
  }

  return v24;
}

uint64_t hx509_cms_create_signed(uint64_t a1, char a2, void *a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = 0;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = &asn1_oid_id_pkcs7_data;
  }

  v54 = 0;
  v53 = 0u;
  v46 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  v49 = a5;
  v50 = a4;
  v47 = a6;
  v48 = v16;
  v51 = a8;
  v52 = vand_s8(vshl_u32(vdup_n_s32(a2), 0xFFFFFFFDFFFFFFFFLL), 0x100000001);
  if ((a2 & 0x10) != 0 || (v17 = hx509_certs_init(a1, "MEMORY:certs", 0, 0, &v53), !v17))
  {
    *(&v53 + 1) = a9;
    v54 = a10;
    LODWORD(v43[0]) = 3;
    der_copy_oid();
    if ((a2 & 1) == 0)
    {
      *(&v44 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      if (!*(&v44 + 1))
      {
        goto LABEL_28;
      }

      v22 = malloc_type_malloc(a5, 0x7724B34uLL);
      *(*(&v44 + 1) + 8) = v22;
      if (!v22)
      {
        goto LABEL_28;
      }

      memcpy(v22, a4, a5);
      **(&v44 + 1) = a5;
    }

    if ((a2 & 4) == 0)
    {
      v23 = hx509_certs_iter_f(a1, a7, sub_252293274, v43, v18, v19, v20, v21);
      if (v23)
      {
        goto LABEL_24;
      }
    }

    if (v46)
    {
      v24 = 0;
      while (1)
      {
        if (!DWORD2(v43[0]))
        {
          goto LABEL_38;
        }

        v25 = 0;
        v26 = 0;
        do
        {
          if (!der_heim_oid_cmp())
          {
            break;
          }

          ++v26;
          v25 += 24;
        }

        while (v26 < DWORD2(v43[0]));
        if (DWORD2(v43[0]) == v26)
        {
LABEL_38:
          v27 = sub_2522A1410(v43 + 2);
          if (v27)
          {
            break;
          }
        }

        if (++v24 >= v46)
        {
          goto LABEL_21;
        }
      }

      v17 = v27;
      goto LABEL_30;
    }

LABEL_21:
    if (!v53)
    {
      goto LABEL_25;
    }

    *&v45 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (v45)
    {
      v23 = hx509_certs_iter_f(a1, v53, sub_252293748, v43, v28, v29, v30, v31);
      if (v23)
      {
LABEL_24:
        v17 = v23;
LABEL_31:
        hx509_certs_free(&v53);
        sub_2522A16A8(v43);
        return v17;
      }

LABEL_25:
      v32 = sub_2522A1698(v43);
      *a11 = v32;
      v33 = malloc_type_malloc(v32, 0x7E86443CuLL);
      *(a11 + 8) = v33;
      if (v33)
      {
        v34 = sub_2522A1678(v33 + *a11 - 1, *a11, v43, &v55);
        if (!v34)
        {
          if (*a11 != v55)
          {
            sub_25229126C("internal ASN.1 encoder error", v35, v36, v37, v38, v39, v40, v41, v43[0]);
          }

          v17 = 0;
          goto LABEL_31;
        }

        v17 = v34;
        free(*(a11 + 8));
        *(a11 + 8) = 0;
        goto LABEL_30;
      }
    }

LABEL_28:
    v17 = 12;
LABEL_30:
    hx509_clear_error_string(a1);
    goto LABEL_31;
  }

  return v17;
}

uint64_t sub_252293274(uint64_t a1, uint64_t a2, const void *a3)
{
  v70 = 0;
  v71 = 0;
  v68 = 0;
  memset(v69, 0, sizeof(v69));
  v66 = 0;
  v67 = 0;
  if (!_hx509_cert_private_key(a3))
  {
    v11 = 569865;
    hx509_set_error_string(a1, 0, 569865, "Private key missing for signing", v6, v7, v8, v9, v61);
    return v11;
  }

  if (!*(a2 + 80))
  {
    v12 = _hx509_cert_private_key(a3);
    v11 = hx509_crypto_select(a1, 1, v12, *(a2 + 112), v69, v13, v14, v15);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_8:
    v16 = malloc_type_realloc(*(a2 + 72), 160 * (*(a2 + 64) + 1), 0x10B0040C24DB5AAuLL);
    if (!v16)
    {
      v11 = 12;
      goto LABEL_15;
    }

    *(a2 + 72) = v16;
    v22 = v16 + 160 * *(a2 + 64);
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *v22 = 1;
    v23 = sub_2522925F8(a3, *(a2 + 120), v22 + 8, v17, v18, v19, v20, v21);
    if (v23 || (*(v22 + 104) = 0, *(v22 + 152) = 0, v23 = copy_AlgorithmIdentifier(), v23))
    {
      v11 = v23;
LABEL_12:
      hx509_clear_error_string(a1);
      goto LABEL_13;
    }

    v25 = *(a2 + 88);
    if (der_heim_oid_cmp())
    {
      v62 = 0;
      v63 = 0;
      v65[0] = 0;
      v65[1] = 0;
      v26 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      *(v22 + 104) = v26;
      if (!v26)
      {
        goto LABEL_40;
      }

      v11 = sub_25229444C(a1, 0, v69, a2 + 96, 0, v65);
      if (v11)
      {
        goto LABEL_13;
      }

      v72 = 0;
      v73 = 0;
      v27 = sub_2522A1520(v65);
      v72 = v27;
      v28 = malloc_type_malloc(v27, 0xF4B30B48uLL);
      v73 = v28;
      if (!v28)
      {
        v11 = 12;
        goto LABEL_33;
      }

      v29 = v28;
      v30 = sub_2522A1500(v28 + v27 - 1, v27, v65, &v68);
      if (v30)
      {
        v11 = v30;
        free(v29);
LABEL_33:
        der_free_octet_string();
        goto LABEL_12;
      }

      der_free_octet_string();
      if (v68 != v27)
      {
        goto LABEL_55;
      }

      v50 = sub_252293928((*(v22 + 104) + 8), *(v22 + 104), &unk_279702470, &v72);
      if (v50)
      {
LABEL_36:
        v11 = v50;
        free(v29);
        goto LABEL_12;
      }

      v51 = sub_2522A14D0(*(a2 + 88));
      v72 = v51;
      v52 = malloc_type_malloc(v51, 0xC65A67BBuLL);
      v73 = v52;
      if (!v52)
      {
LABEL_40:
        v11 = 12;
        goto LABEL_13;
      }

      v29 = v52;
      v53 = sub_2522A14B0(v52 + v51 - 1, v51, *(a2 + 88), &v68);
      if (v53)
      {
        v11 = v53;
        free(v29);
        goto LABEL_13;
      }

      if (v68 != v51)
      {
        goto LABEL_55;
      }

      v50 = sub_252293928((*(v22 + 104) + 8), *(v22 + 104), &unk_279702460, &v72);
      if (v50)
      {
        goto LABEL_36;
      }

      v58 = *(v22 + 104);
      v63 = *(v58 + 8);
      LODWORD(v62) = *v58;
      v70 = sub_2522A1638(&v62);
      v59 = malloc_type_malloc(v70, 0x674F6FE4uLL);
      v71 = v59;
      if (!v59)
      {
        v11 = 12;
        goto LABEL_12;
      }

      v60 = sub_2522A1618(v59 + v70 - 1, v70, &v62, &v68);
      if (v60)
      {
        v11 = v60;
        free(v71);
        v71 = 0;
        goto LABEL_12;
      }

      if (v68 != v70)
      {
LABEL_55:
        sub_25229126C("internal ASN.1 encoder error", v43, v44, v45, v46, v47, v48, v49, v61);
      }
    }

    else
    {
      v31 = *(a2 + 104);
      v70 = *(a2 + 96);
      v71 = v31;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v32 = _hx509_cert_private_key(a3);
    v36 = hx509_crypto_select(a1, 2, v32, *(a2 + 112), &v62, v33, v34, v35);
    if (v36)
    {
      v11 = v36;
    }

    else
    {
      v37 = _hx509_cert_private_key(a3);
      v11 = sub_25229444C(a1, v37, &v62, &v70, v22 + 112, v22 + 136);
      free_AlgorithmIdentifier(&v62);
      if (!v11)
      {
        ++*(a2 + 64);
        if (*(a2 + 144) && !*(a2 + 124))
        {
          v54 = time(0);
          sub_25228EAE4(a1, 1, v54, *(a2 + 136), 0, a3, *(a2 + 144), &v66);
        }

        else
        {
          sub_25228E9F0(a1, &v66, a3);
        }

        if (!v66)
        {
          v11 = 0;
          goto LABEL_15;
        }

        v55 = 0;
        v56 = 1;
        while (1)
        {
          v11 = hx509_certs_add(a1, *(a2 + 128), *(v67 + 8 * v55), v38, v39, v40, v41, v42);
          if (v11)
          {
            goto LABEL_5;
          }

          v55 = v56;
          if (v66 <= v56++)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_13:
    sub_2522A1648(v22);
    goto LABEL_15;
  }

  v10 = copy_AlgorithmIdentifier();
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
LABEL_5:
  hx509_clear_error_string(a1);
LABEL_15:
  if (v71 != *(a2 + 104))
  {
    der_free_octet_string();
  }

  sub_25228EA88(&v66);
  free_AlgorithmIdentifier(v69);
  return v11;
}

uint64_t sub_252293748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  v7 = *v6;
  v8 = malloc_type_realloc(v6[1], 16 * (v7 + 1), 0x108004057E67DB5uLL);
  if (!v8)
  {
    return 12;
  }

  *(*(a2 + 48) + 8) = v8;
  result = hx509_cert_binary(a1, a3, v8 + 16 * v7);
  if (!result)
  {
    ++**(a2 + 48);
  }

  return result;
}

uint64_t hx509_cms_decrypt_encrypted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *a6 = 0;
  a6[1] = 0;
  v24[0] = 0;
  v24[1] = 0;
  v9 = sub_2522A16B8(a3, a4, &v20, 0);
  if (v9)
  {
    v14 = v9;
    hx509_set_error_string(a1, 0, v9, "Failed to decode CMSEncryptedData", v10, v11, v12, v13, v20);
  }

  else
  {
    if (v23)
    {
      v15 = der_copy_oid();
      if (v15)
      {
        v14 = v15;
        hx509_clear_error_string(a1);
      }

      else if (*(&v22 + 1))
      {
        v14 = sub_252295718(a1, a2, &v21 + 8, v23, v24, v16, v17, v18);
        if (v14)
        {
          if (v24[1])
          {
            free(v24[1]);
          }
        }

        else
        {
          *a6 = *v24;
        }
      }

      else
      {
        hx509_clear_error_string(a1);
        v14 = 569866;
      }
    }

    else
    {
      v14 = 569891;
      hx509_set_error_string(a1, 0, 569891, "No content in EncryptedData", v10, v11, v12, v13, v20);
    }

    sub_2522A16D8(&v20);
  }

  return v14;
}

uint64_t sub_252293928(void **a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v7 = malloc_type_realloc(*a1, 32 * (*a2 + 1), 0x10300406495394CuLL);
  if (v7)
  {
    *a1 = v7;
    v8 = *a2;
    result = der_copy_oid();
    if (result)
    {
      return result;
    }

    *(*a1 + 8 * *a2 + 4) = 1;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    v11 = *a2;
    *(*a1 + 4 * v11 + 3) = v10;
    v12 = *(*a1 + 4 * v11 + 3);
    if (v12)
    {
      result = 0;
      v13 = *a4;
      *(v12 + 8) = a4[1];
      **(*a1 + 4 * v11 + 3) = v13;
      *a2 = v11 + 1;
      return result;
    }

    der_free_oid();
  }

  return 12;
}

uint64_t sub_252293A1C(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040688ABBCCuLL);
  if (v6)
  {
    v11 = v6;
    *v6 = a2;
    v12 = (v6 + 1);
    v13 = hx509_certs_init(a1, "MEMORY:collector-unenvelop-cert", 0, 0, v6 + 1);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v11[3] = 0;
      v11[4] = 0;
      v14 = hx509_certs_init(a1, "MEMORY:collector-tmp-store", 0, 0, v11 + 2);
      if (!v14)
      {
        *a3 = v11;
        return v14;
      }

      hx509_certs_free(v12);
    }

    free(v11);
  }

  else
  {
    v14 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v7, v8, v9, v10, v16);
  }

  return v14;
}

uint64_t sub_252293B20(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t *a5, uint64_t a6)
{
  v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040D89DD10BuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v14 = malloc_type_realloc(*(a2 + 24), 8 * *(a2 + 32) + 8, 0x2004093837F09uLL);
  if (!v14)
  {
    free(v13);
    v20 = 12;
    hx509_set_error_string(a1, 0, 12, "Out of memory", v22, v23, v24, v25, v29);
    return v20;
  }

  *(a2 + 24) = v14;
  v15 = copy_AlgorithmIdentifier();
  if (!v15)
  {
    if (a4)
    {
      v13[3] = a4;
    }

    else
    {
      v20 = sub_25229483C(a1, a3, a5[1], *a5, 1, v13 + 3);
      if (v20)
      {
        goto LABEL_6;
      }
    }

    if (a6)
    {
      v26 = der_copy_octet_string();
      if (v26)
      {
        v20 = v26;
        v21 = "Failed to copy localKeyId";
        goto LABEL_5;
      }
    }

    else
    {
      v13[4] = 0;
      v13[5] = 0;
    }

    v20 = 0;
    v27 = *(a2 + 32);
    *(*(a2 + 24) + 8 * v27) = v13;
    *(a2 + 32) = v27 + 1;
    return v20;
  }

  v20 = v15;
  v21 = "Failed to copy AlgorithmIdentifier";
LABEL_5:
  hx509_set_error_string(a1, 0, v20, v21, v16, v17, v18, v19, v29);
LABEL_6:
  sub_252293C8C(v13);
  return v20;
}

void sub_252293C8C(const void **a1)
{
  free_AlgorithmIdentifier(a1);
  if (a1[3])
  {
    hx509_private_key_free(a1 + 3);
  }

  der_free_octet_string();

  free(a1);
}

uint64_t sub_252293CDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v40 = 0;
  *a3 = 0;
  v11 = hx509_certs_init(a1, "MEMORY:collector-store", 0, 0, &v40);
  if (!v11)
  {
    v12 = hx509_certs_merge(a1, v40, a2[2], v6, v7, v8, v9, v10);
    if (v12)
    {
      v11 = v12;
      hx509_certs_free(&v40);
      return v11;
    }

    if (!a2[4])
    {
LABEL_28:
      v11 = 0;
      *a3 = v40;
      return v11;
    }

    v17 = 0;
    while (1)
    {
      v18 = *(a2[3] + 8 * v17);
      if (!*(v18 + 32))
      {
        break;
      }

      v19 = v40;
      v49[0] = 0;
      memset(v41, 0, sizeof(v41));
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
      sub_2522908F8(v41);
      LODWORD(v41[0]) |= 0x10000u;
      *(&v42 + 1) = v18 + 32;
      if (hx509_certs_find(a1, v19, v41, v49, v20, v21, v22, v23))
      {
        goto LABEL_12;
      }

      v29 = *(v18 + 24);
      if (v29)
      {
        _hx509_cert_set_key(v49[0], v29);
      }

      hx509_cert_free(v49[0]);
LABEL_25:
      if (++v17 >= a2[4])
      {
        goto LABEL_28;
      }
    }

    hx509_set_error_string(a1, 0, 569964, "No local key attribute on private key", v13, v14, v15, v16, v39);
LABEL_12:
    v30 = *(a2[3] + 8 * v17);
    if (*(v30 + 24))
    {
      v31 = v40;
      *&v41[0] = 0;
      if (!hx509_certs_start_seq(a1, v40, v41, v24, v25, v26, v27, v28))
      {
        v49[0] = 0;
        if (hx509_certs_next_cert(a1, v31, *&v41[0], v49) || (v32 = v49[0]) == 0)
        {
LABEL_23:
          hx509_certs_end_seq(a1, v31, *&v41[0]);
          hx509_clear_error_string(a1);
        }

        else
        {
          while (1)
          {
            v33 = _hx509_cert_private_key(v32);
            v34 = v49[0];
            if (!v33)
            {
              v35 = sub_252295750(v49[0], *(v30 + 24));
              v34 = v49[0];
              if (v35)
              {
                break;
              }
            }

            hx509_cert_free(v34);
            cert = hx509_certs_next_cert(a1, v31, *&v41[0], v49);
            v32 = v49[0];
            if (cert)
            {
              v37 = 1;
            }

            else
            {
              v37 = v49[0] == 0;
            }

            if (v37)
            {
              goto LABEL_23;
            }
          }

          _hx509_cert_set_key(v49[0], *(v30 + 24));
          hx509_cert_free(v49[0]);
          hx509_certs_end_seq(a1, v31, *&v41[0]);
        }
      }
    }

    else
    {
      hx509_set_error_string(a1, 0, 569865, "No private key to compare with", v25, v26, v27, v28, v39);
    }

    goto LABEL_25;
  }

  return v11;
}

uint64_t sub_252293F4C(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    do
    {
      v9 = *v8++;
      if (*(v9 + 24))
      {
        ++v7;
      }

      --v6;
    }

    while (v6);
    v10 = v7 + 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  *a3 = v11;
  if (v11)
  {
    v16 = *(a2 + 32);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = *(a2 + 24);
      do
      {
        v20 = *(*(v19 + 8 * v18) + 24);
        if (v20)
        {
          *(*a3 + 8 * v17++) = v20;
          v19 = *(a2 + 24);
          *(*(v19 + 8 * v18) + 24) = 0;
        }

        ++v18;
      }

      while (v16 != v18);
      v11 = *a3;
    }

    else
    {
      v17 = 0;
    }

    v21 = 0;
    v11[v17] = 0;
  }

  else
  {
    v21 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc - out of memory", v12, v13, v14, v15, v23);
  }

  return v21;
}

void sub_252294050(char *a1)
{
  v3 = *(a1 + 1);
  v2 = (a1 + 8);
  if (v3)
  {
    hx509_certs_free(v2);
  }

  if (*(a1 + 2))
  {
    hx509_certs_free(a1 + 2);
  }

  if (*(a1 + 4))
  {
    v4 = 0;
    do
    {
      sub_252293C8C(*(*(a1 + 3) + 8 * v4++));
    }

    while (v4 < *(a1 + 4));
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

void *sub_2522940D4(const void **a1)
{
  v2 = sub_2522A3D54(a1[1], *a1, 0);
  sub_2522A3E54(v2, *(a1 + 4));
  return v2;
}

uint64_t sub_252294114()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_279703788 + v0);
    if (*(v1 + 16))
    {
      if (!der_heim_oid_cmp())
      {
        break;
      }
    }

    v0 += 8;
    if (v0 == 16)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_252294174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  while (1)
  {
    v6 = (&off_2797037A0)[v5];
    v7 = v6[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v5 == 15)
    {
      hx509_clear_error_string(a1);
      return 569861;
    }
  }

  v13 = v6[6];
  if (v13)
  {
    v14 = v13 < a3;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return 0;
  }

  v12 = 569933;
  hx509_set_error_string(a1, 0, 569933, "Algorithm %s has passed it best before date", v8, v9, v10, v11, *v6);
  return v12;
}

uint64_t sub_252294240(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v3 = (&off_2797037A0)[v2];
    v4 = v3[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v2 == 15)
    {
      hx509_clear_error_string(a1);
      return 569861;
    }
  }

  if ((v3[5] & 4) != 0)
  {
    return 0;
  }

  v9 = 569933;
  hx509_set_error_string(a1, 0, 569933, "Algorithm %s not trusted for self signatures", v5, v6, v7, v8, *v3);
  return v9;
}

uint64_t hx509_verify_signature_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_25228DE4C(a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = (&off_2797037A0)[v10];
    v12 = v11[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v10 == 15)
    {
      v13 = 569861;
      hx509_clear_error_string(a1);
      return v13;
    }
  }

  v14 = *(v11 + 10);
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      hx509_clear_error_string(a1);
      return 569924;
    }

    if (v11[3] && der_heim_oid_cmp())
    {
      hx509_clear_error_string(a1);
      return 569862;
    }
  }

  else if ((v14 & 2) != 0)
  {
    hx509_clear_error_string(a1);
    return 569928;
  }

  v16 = v11[8];

  return (v16)(a1, v11, v9, a3, a4, a5);
}

uint64_t sub_25229444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  while (1)
  {
    v13 = (&off_2797037A0)[v12];
    v14 = v13[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v12 == 15)
    {
      v19 = 569861;
      hx509_set_error_string(a1, 0, 569861, "algorithm no supported", v15, v16, v17, v18, v22);
      return v19;
    }
  }

  if (a2 && (v13[5] & 1) == 0)
  {
    hx509_set_error_string(a1, 0, 569861, "algorithm provides no conf", v15, v16, v17, v18, v22);
    return 569924;
  }

  v21 = v13[9];

  return (v21)(a1, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_252294578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = 0;
  v10 = 0;
  result = sub_25229444C(a1, a2, a3, a4, a5, &v9);
  if (!result)
  {
    v8 = v10;
    *a6 = 8 * v9;
    a6[1] = v8;
  }

  return result;
}

uint64_t sub_2522945BC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  a5[1] = 0;
  v8 = *(a3 + 208);
  v33 = *(a3 + 216);
  v9 = sub_2522A59B0(0, &v33, v8 >> 3);
  if (v9)
  {
    v14 = v9;
    v15 = sub_2522A5318(v9);
    v16 = malloc_type_malloc(v15, 0xCD4041A3uLL);
    if (v16)
    {
      v17 = v16;
      v18 = sub_2522A5338(*a2, *(a2 + 1), v16, v14);
      sub_2522A50B0(v14);
      if (v18 <= 0)
      {
        v26 = 569929;
        free(v17);
        hx509_set_error_string(a1, 0, 569929, "RSA public encrypt failed with %d", v28, v29, v30, v31, v18);
        return v26;
      }

      if (v18 > v15)
      {
        sub_25229126C("internal rsa decryption failure: ret > tosize", v19, v20, v21, v22, v23, v24, v25, v32);
      }

      *a5 = v18;
      a5[1] = v17;
      if (!der_copy_oid())
      {
        return 0;
      }

      der_free_octet_string();
    }

    else
    {
      sub_2522A50B0(v14);
    }
  }

  v26 = 12;
  hx509_set_error_string(a1, 0, 12, "out of memory", v10, v11, v12, v13, v32);
  return v26;
}

uint64_t sub_252294714(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  a5[1] = 0;
  v9 = *(a4 + 56);
  if (!v9)
  {
    v24 = 569865;
    v25 = "Private RSA key missing";
    v26 = a1;
    v27 = 569865;
LABEL_9:
    hx509_set_error_string(v26, 0, v27, v25, a5, a6, a7, a8, v29);
    return v24;
  }

  v13 = sub_2522A5318(v9);
  *a5 = v13;
  v14 = malloc_type_malloc(v13, 0x5C27D381uLL);
  a5[1] = v14;
  if (!v14)
  {
    v25 = "out of memory";
    v24 = 12;
    v26 = a1;
    v27 = 12;
    goto LABEL_9;
  }

  v15 = sub_2522A5344(*a2, *(a2 + 1), v14, *(a4 + 56));
  v23 = v15;
  if (v15 <= 0)
  {
    der_free_octet_string();
    v24 = 569932;
    v29 = v23;
    v25 = "Failed to decrypt using private key: %d";
    v26 = a1;
    v27 = 569932;
    goto LABEL_9;
  }

  if (*a5 < v15)
  {
    sub_25229126C("internal rsa decryption failure: ret > tosize", v16, v17, v18, v19, v20, v21, v22, v29);
  }

  v24 = 0;
  *a5 = v15;
  return v24;
}

uint64_t sub_25229483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  *a6 = 0;
  v12 = sub_252294114();
  if (v12)
  {
    v18 = v12;
    v19 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4, v13, v14, v15, v16, v17);
    *a6 = v19;
    if (v19)
    {
      *(v19 + 64) = v18;
      *(*a6 + 7) = 0;
      *(*a6 + 12) = *v18;
      v24 = (*(v18 + 48))(a1, a2, a3, a4, a5);
      if (v24 && *a6)
      {
        heim_release(*a6);
        *a6 = 0;
      }
    }

    else
    {
      v24 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory", v20, v21, v22, v23, v26);
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569861;
  }

  return v24;
}

uint64_t sub_252294948(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4, a4, a5, a6, a7, a8);
  *a1 = v11;
  if (!v11)
  {
    return 12;
  }

  *(v11 + 64) = a2;
  *(*a1 + 56) = a3;
  if (a2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = 2;
  }

  result = 0;
  *(*a1 + 48) = v12;
  return result;
}

uint64_t hx509_private_key_free(const void **a1)
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

  return 0;
}

uint64_t hx509_private_key2SPKI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 64);
  if (v10 && (v11 = *(v10 + 32)) != 0)
  {

    return v11();
  }

  else
  {
    hx509_set_error_string(a1, 0, 569967, "Private key have no key2SPKI function", a5, a6, a7, a8, v8);
    return 569967;
  }
}

uint64_t _hx509_generate_private_key_init(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (der_heim_oid_cmp())
  {
    v10 = "private key not an RSA key";
    v11 = 22;
    v12 = a1;
    v13 = 22;
  }

  else
  {
    v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040C052FB36uLL);
    *a3 = v14;
    if (v14)
    {
      v11 = 0;
      *v14 = a2;
      return v11;
    }

    v10 = "out of memory";
    v11 = 12;
    v12 = a1;
    v13 = 12;
  }

  hx509_set_error_string(v12, 0, v13, v10, v6, v7, v8, v9, v16);
  return v11;
}

uint64_t _hx509_generate_private_key(uint64_t a1, uint64_t *a2, CFTypeRef *a3)
{
  *a3 = 0;
  v6 = *a2;
  v7 = sub_252294114();
  if (v7)
  {
    v13 = v7;
    v14 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4, v8, v9, v10, v11, v12);
    *a3 = v14;
    if (v14)
    {
      *(v14 + 64) = v13;
      *(*a3 + 7) = 0;
      *(*a3 + 12) = *v13;
      v19 = (*(v13 + 56))(a1, a2);
      if (v19 && *a3)
      {
        heim_release(*a3);
        *a3 = 0;
      }
    }

    else
    {
      v19 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory", v15, v16, v17, v18, v21);
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569861;
  }

  return v19;
}

void sub_252294CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 48);
  if (v9 == 3)
  {
    v11 = *(a1 + 56);
    if (v11)
    {

      sub_2522A6A2C(v11);
    }
  }

  else if (v9 != 2)
  {
    if (v9 != 1)
    {
      sub_25229126C("unsupported keytype %d", a2, a3, a4, a5, a6, a7, a8, v9);
    }

    v10 = *(a1 + 56);
    if (v10)
    {

      sub_2522A50B0(v10);
    }
  }
}

void sub_252294D74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    sub_2522A50B0(v4);
  }

  *(a1 + 48) = 1;
  *(a1 + 56) = a2;
  *(a1 + 32) = &off_286472AA0;
  *(a1 + 40) = &unk_279704B98;
}

void sub_252294DC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    sub_2522A6A2C(v4);
  }

  *(a1 + 48) = 3;
  *(a1 + 56) = a2;
  *(a1 + 32) = &off_286473690;
  *(a1 + 40) = &unk_279704CA8;
}

uint64_t sub_252294E14(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 64) + 16);
  v8 = der_copy_oid();
  if (v8)
  {
    hx509_set_error_string(a1, 0, v8, "malloc out of memory", v4, v5, v6, v7, v10);
  }

  return v8;
}

uint64_t sub_252294E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 64) + 40);
  if (v3)
  {

    return v3();
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569967;
  }
}

uint64_t hx509_crypto_enctype_by_name(char *a1)
{
  v2 = &off_2864737A0;
  v3 = 5;
  while (strcasecmp(a1, *(v2 - 2)))
  {
    v2 += 7;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t hx509_crypto_init(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  *a4 = 0;
  v6 = &off_286473790;
  v7 = 5;
  while (1)
  {
    v8 = v6[2];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    v6 += 7;
    if (!--v7)
    {
      v13 = 569866;
      hx509_set_error_string(a1, 0, 569866, "Algorithm not supported", v9, v10, v11, v12, v17);
      return v13;
    }
  }

  v14 = malloc_type_calloc(1uLL, 0x48uLL, 0x10F0040F8F4EDAFuLL);
  *a4 = v14;
  if (v14)
  {
    *(v14 + 2) = 4;
    v14[2] = v6;
    (*a4)[3] = (v6[4])();
    v15 = *a4;
    if (!der_copy_oid())
    {
      return 0;
    }

    hx509_crypto_destroy(*a4);
    *a4 = 0;
  }

  hx509_clear_error_string(a1);
  return 12;
}

void hx509_crypto_destroy(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    free(v4);
  }

  der_free_oid();
  a1[8] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;

  free(a1);
}

uint64_t hx509_crypto_set_key_data(uint64_t *a1, const void *a2, size_t a3)
{
  if (hc_EVP_CIPHER_key_length(a1[3]) > a3)
  {
    return 569920;
  }

  v7 = a1[5];
  if (v7)
  {
    free(v7);
    a1[4] = 0;
    a1[5] = 0;
  }

  v8 = malloc_type_malloc(a3, 0xBAA30DF2uLL);
  a1[5] = v8;
  if (!v8)
  {
    return 12;
  }

  memcpy(v8, a2, a3);
  result = 0;
  a1[4] = a3;
  return result;
}

uint64_t hx509_crypto_set_random_key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 32) = 0;
  }

  v5 = hc_EVP_CIPHER_key_length(*(a1 + 24));
  *(a1 + 32) = v5;
  v6 = malloc_type_malloc(v5, 0x38BF0D5BuLL);
  *(a1 + 40) = v6;
  if (v6)
  {
    v7 = *MEMORY[0x277D85C28];
    v8 = *(a1 + 32);
    if (CCRandomCopyBytes())
    {
      free(*(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return 569920;
    }

    else if (a2)
    {

      return der_copy_octet_string();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    return 12;
  }
}

uint64_t sub_252295220(uint64_t a1, size_t *a2)
{
  v3 = hc_EVP_CIPHER_iv_length(*(a1 + 24));
  *a2 = v3;
  v4 = malloc_type_malloc(v3, 0x762D8EEFuLL);
  a2[1] = v4;
  if (v4)
  {
    v5 = *MEMORY[0x277D85C28];
    v6 = *a2;
    result = CCRandomCopyBytes();
    if (result)
    {
      free(a2[1]);
      *a2 = 0;
      a2[1] = 0;
      return 569920;
    }
  }

  else
  {
    *a2 = 0;
    return 12;
  }

  return result;
}

uint64_t hx509_crypto_encrypt(uint64_t a1, const void *a2, size_t a3, uint64_t a4, void ***a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  *a5 = 0;
  if (*(*(a1 + 16) + 8) & 1) == 0 || (*(a1 + 8))
  {
    if (hc_EVP_CIPHER_iv_length(*(a1 + 24)) != *a4)
    {
      sub_2522A8238();
    }

    hc_EVP_CIPHER_CTX_init(v19);
    if (hc_EVP_CipherInit_ex(v19, *(a1 + 24), 0, *(a1 + 40), *(a4 + 8), 1) == 1)
    {
      v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *a5 = v11;
      if (!v11)
      {
        v10 = 12;
LABEL_29:
        hc_EVP_CIPHER_CTX_cleanup(v19);
        goto LABEL_30;
      }

      if ((*(a1 + 8) & 6) == 0)
      {
        sub_2522A8264();
      }

      v12 = hc_EVP_CIPHER_block_size(*(a1 + 24));
      v13 = *(a1 + 8);
      if ((v13 & 2) != 0)
      {
        if (v12 != 1 && a3 % v12)
        {
          v10 = 569893;
          goto LABEL_30;
        }

        v14 = 0;
      }

      else
      {
        v14 = 0;
        if ((v13 & 4) != 0 && v12 != 1)
        {
          v14 = v12 + a3 / v12 * v12 - a3;
        }
      }

      **a5 = (v14 + a3);
      (*a5)[1] = malloc_type_malloc(v14 + a3, 0x28A596DFuLL);
      v15 = *a5;
      if (!(*a5)[1])
      {
        v10 = 12;
        goto LABEL_26;
      }

      memcpy((*a5)[1], a2, a3);
      if (v14)
      {
        memset((*a5)[1] + a3, v14, v14);
      }

      v16 = (*a5)[1];
      if (hc_EVP_Cipher(v19) == 1)
      {
        v10 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      hc_EVP_CIPHER_CTX_cleanup(v19);
    }

    v10 = 569920;
    v15 = *a5;
    if (!*a5)
    {
      goto LABEL_29;
    }

LABEL_26:
    if (v15[1])
    {
      free(v15[1]);
      v15 = *a5;
    }

    free(v15);
    *a5 = 0;
    goto LABEL_29;
  }

  v10 = 569933;
LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t hx509_crypto_decrypt(uint64_t a1, uint64_t a2, size_t a3, void *a4, size_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *a5 = 0;
  a5[1] = 0;
  if ((*(*(a1 + 16) + 8) & 1) != 0 && (*(a1 + 8) & 1) == 0)
  {
    v9 = 569933;
    goto LABEL_20;
  }

  if (a4)
  {
    if (hc_EVP_CIPHER_iv_length(*(a1 + 24)) < *a4 || !*(a1 + 40))
    {
      goto LABEL_19;
    }

    v10 = a4[1];
  }

  else
  {
    if (!*(a1 + 40))
    {
LABEL_19:
      v9 = 569920;
      goto LABEL_20;
    }

    v10 = 0;
  }

  hc_EVP_CIPHER_CTX_init(v21);
  if (hc_EVP_CipherInit_ex(v21, *(a1 + 24), 0, *(a1 + 40), v10, 0) != 1)
  {
    hc_EVP_CIPHER_CTX_cleanup(v21);
    goto LABEL_19;
  }

  *a5 = a3;
  v11 = malloc_type_malloc(a3, 0xEF99AC85uLL);
  a5[1] = v11;
  if (!v11)
  {
    hc_EVP_CIPHER_CTX_cleanup(v21);
    *a5 = 0;
    v9 = 12;
    goto LABEL_20;
  }

  v12 = hc_EVP_Cipher(v21);
  v9 = 569920;
  if (v12 == 1)
  {
    hc_EVP_CIPHER_CTX_cleanup(v21);
    if ((*(a1 + 8) & 4) != 0 && hc_EVP_CIPHER_block_size(*(a1 + 24)) >= 2)
    {
      v13 = hc_EVP_CIPHER_block_size(*(a1 + 24));
      v15 = *a5;
      v14 = a5[1];
      if (*a5 < v13)
      {
        goto LABEL_16;
      }

      v18 = &v14[v15 - 1];
      v19 = *v18;
      if (v19 > v13)
      {
LABEL_23:
        free(v14);
LABEL_24:
        *a5 = 0;
        a5[1] = 0;
        v9 = 569893;
        goto LABEL_20;
      }

      *a5 = v15 - v19;
      if (v19)
      {
        v20 = v19;
        while (*v18 == v19)
        {
          v9 = 0;
          --v18;
          if (!--v20)
          {
            goto LABEL_20;
          }
        }

LABEL_16:
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v9 = 0;
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_252295718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  a5[1] = 0;
  hx509_set_error_string(a1, 0, 569866, "String to key algorithm not supported", a5, a6, a7, a8, vars0);
  return 569866;
}

void *sub_252295750(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 64) + 16);
  if (der_heim_oid_cmp())
  {
    v5 = *(*(a2 + 64) + 16);
    return (der_heim_oid_cmp() == 0);
  }

  if (*(a2 + 48) != 1)
  {
    return 0;
  }

  v8 = *(a2 + 56);
  if (!v8 || !v8[6] || !v8[7] || !v8[8])
  {
    return 0;
  }

  v9 = sub_25228DE4C(a1);
  result = sub_2522A4FE4();
  if (!result)
  {
    return result;
  }

  v10 = result;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  if (sub_2522A22A8(*(v9 + 216), *(v9 + 208) >> 3, v19, &v18))
  {
    goto LABEL_13;
  }

  v10[4] = sub_2522940D4(v19);
  v10[5] = sub_2522940D4(&v19[1] + 1);
  sub_2522A22F8(v19);
  v11 = *(*(a2 + 56) + 48);
  v10[6] = sub_2522A3CB4();
  v12 = *(*(a2 + 56) + 56);
  v10[7] = sub_2522A3CB4();
  v13 = *(*(a2 + 56) + 64);
  v10[8] = sub_2522A3CB4();
  v14 = *(*(a2 + 56) + 72);
  v10[9] = sub_2522A3CB4();
  v15 = *(*(a2 + 56) + 80);
  v10[10] = sub_2522A3CB4();
  v16 = *(*(a2 + 56) + 88);
  v10[11] = sub_2522A3CB4();
  if (!v10[4] || !v10[5] || !v10[6] || !v10[7] || !v10[8] || !v10[9] || !v10[10])
  {
LABEL_13:
    sub_2522A50B0(v10);
    return 0;
  }

  v17 = sub_2522A520C(v10);
  sub_2522A50B0(v10);
  return v17;
}

uint64_t hx509_crypto_select(uint64_t a1, int a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a2 == 4)
  {
    v10 = 0;
    v27 = a1;
    v11 = -1025;
    if (a4)
    {
LABEL_14:
      v13 = sub_252295BF8(a3);
      if (*(a4 + 16))
      {
        v14 = v13;
        v15 = 0;
        while (2)
        {
          v16 = 1u;
          v17 = &off_286473690;
          do
          {
            if ((*(v17 + 10) | v11) == 0xFFFFFFFF)
            {
              v18 = v17[1];
              v19 = *(a4 + 8);
              if (!der_heim_oid_cmp() && (!v14 || !v17[3] || !der_heim_oid_cmp()))
              {
                v25 = *(a4 + 8) + 24 * v15;
                goto LABEL_32;
              }
            }

            v17 = (&off_2797037A0)[v16++];
          }

          while (v16 != 16);
          v20 = v10;
          if (v10)
          {
            goto LABEL_29;
          }

          v21 = *(a4 + 8) + 24 * v15;
          v22 = &qword_2864737A8;
          v23 = 5;
          while (1)
          {
            v24 = *(v22 - 1);
            if (!der_heim_oid_cmp())
            {
              break;
            }

            v22 += 7;
            if (!--v23)
            {
              goto LABEL_29;
            }
          }

          if (*v22)
          {
            (*v22)();
          }

          else
          {
LABEL_29:
            ++v15;
            v10 = v20;
            if (v15 < *(a4 + 16))
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  else
  {
    if (a2 == 2)
    {
      v27 = a1;
      if (a3)
      {
        sub_252295B44(a3, 2);
      }

      v11 = -513;
    }

    else
    {
      if (a2 != 1)
      {
        v12 = 22;
        hx509_set_error_string(a1, 0, 22, "Unknown type %d of selection", a5, a6, a7, a8, a2);
        return v12;
      }

      v27 = a1;
      if (a3)
      {
        sub_252295B44(a3, 1);
      }

      v11 = -257;
    }

    v10 = 1;
    if (a4)
    {
      goto LABEL_14;
    }
  }

LABEL_32:
  v12 = copy_AlgorithmIdentifier();
  if (v12)
  {
    hx509_clear_error_string(v27);
  }

  return v12;
}

char *sub_252295B44(uint64_t a1, int a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(v2 + 16);
  while (1)
  {
    v7 = (&off_2797037A0)[v5];
    if (v7[3])
    {
      if (!der_heim_oid_cmp())
      {
        v8 = *(*(a1 + 64) + 24);
        if (!v8 || v8(a1, v7[2]))
        {
          break;
        }
      }
    }

    if (++v5 == 15)
    {
      return 0;
    }
  }

  v10 = 4;
  if (a2 == 2)
  {
    v10 = 2;
  }

  return v7[v10];
}

char *sub_252295BF8(char *result)
{
  if (result)
  {
    v1 = 0;
    v2 = *(result + 5);
    while (1)
    {
      v3 = (&off_2797037A0)[v1];
      v4 = v3[1];
      if (!der_heim_oid_cmp())
      {
        break;
      }

      if (++v1 == 15)
      {
        return 0;
      }
    }

    return v3[3];
  }

  return result;
}

uint64_t hx509_crypto_available(uint64_t a1, int a2, uint64_t a3, void **a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      v30 = a1;
      v10 = 256;
    }

    else
    {
      if (a2 != 2)
      {
        v25 = "Unknown type %d of available";
        v28 = a2;
        v23 = 22;
        v26 = 22;
LABEL_34:
        hx509_set_error_string(a1, 0, v26, v25, a5, a6, a7, a8, v28);
        return v23;
      }

      v30 = a1;
      v10 = 512;
    }
  }

  else
  {
    v30 = a1;
    v10 = 1792;
  }

  if (a3)
  {
    v11 = _hx509_cert_private_key(a3);
    v12 = sub_252295BF8(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  v14 = &off_286473690;
  v15 = 1u;
  do
  {
    LODWORD(v16) = v13;
    if ((v14[5] & v10) != 0 && v14[2] && (!v12 || !v14[3] || !der_heim_oid_cmp()))
    {
      v13 = (v13 + 1);
      v17 = malloc_type_realloc(*a4, 24 * v13, 0x10300406712BA52uLL);
      if (!v17 || (*a4 = v17, v18 = v14[2], copy_AlgorithmIdentifier()))
      {
LABEL_29:
        if (v16)
        {
          v24 = 0;
          do
          {
            free_AlgorithmIdentifier(*a4 + v24);
            v24 += 24;
          }

          while (24 * v16 != v24);
        }

        free(*a4);
        *a4 = 0;
        v25 = "out of memory";
        v23 = 12;
        a1 = v30;
        v26 = 12;
        goto LABEL_34;
      }
    }

    v14 = (&off_2797037A0)[v15++];
  }

  while (v15 != 16);
  if (!a2)
  {
    v19 = 3u;
    v16 = v13;
    do
    {
      v20 = (&off_286473790)[v19];
      if (v20)
      {
        v13 = (v16 + 1);
        v21 = malloc_type_realloc(*a4, 24 * v13, 0x10300406712BA52uLL);
        if (!v21)
        {
          goto LABEL_29;
        }

        *a4 = v21;
        v20();
        v22 = *a4;
        if (copy_AlgorithmIdentifier())
        {
          goto LABEL_29;
        }
      }

      else
      {
        v13 = v16;
      }

      v19 += 7;
      v16 = v13;
    }

    while (v19 != 38);
  }

  v23 = 0;
  *a5 = v13;
  return v23;
}

void hx509_crypto_free_algs(char *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      free_AlgorithmIdentifier(v4);
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

BOOL sub_252295EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48) != 1)
  {
    sub_2522A8290(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = 0;
  while (1)
  {
    v10 = (&off_2797037A0)[v9];
    v11 = v10[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v9 == 15)
    {
      return 0;
    }
  }

  if (*(v10 + 20))
  {
    return sub_2522A5318(*(a1 + 56)) > *(v10 + 20);
  }

  return 0;
}

uint64_t sub_252295F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = sub_2522A5898(*(a2 + 56), 0);
  v7 = malloc_type_malloc(v6, 0xE3E23845uLL);
  *(a3 + 32) = v7;
  if (v7)
  {
    *(a3 + 24) = 8 * v6;
    v16 = sub_25229632C(a3);
    if (v16)
    {
      hx509_set_error_string(a1, 0, v16, "malloc - out of memory", v12, v13, v14, v15, v18);
      free(*(a3 + 32));
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
    }

    else
    {
      v19 = *(a3 + 32);
      sub_2522A5898(*(a2 + 56), &v19);
    }
  }

  else
  {
    v16 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc - out of memory", v8, v9, v10, v11, v18);
  }

  return v16;
}

uint64_t sub_25229607C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  if (a3 != 1)
  {
    return 569934;
  }

  v7 = sub_2522A56B8(*(a2 + 56), 0);
  if (v7 <= 0)
  {
    v15 = "Private key is not exportable";
    v14 = 22;
    v16 = a1;
    v17 = 22;
LABEL_8:
    hx509_set_error_string(v16, 0, v17, v15, v8, v9, v10, v11, v19);
    return v14;
  }

  v12 = v7;
  v13 = malloc_type_malloc(v7, 0xEDE0C347uLL);
  a4[1] = v13;
  if (!v13)
  {
    v15 = "malloc out of memory";
    v14 = 12;
    v16 = a1;
    v17 = 12;
    goto LABEL_8;
  }

  *a4 = v12;
  v20 = v13;
  sub_2522A56B8(*(a2 + 56), &v20);
  return 0;
}

uint64_t sub_252296154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = 569965;
  if (a5 != 1)
  {
    return 569934;
  }

  v16 = a3;
  v9 = sub_2522A5528(0, &v16, a4);
  *(a6 + 56) = v9;
  if (v9)
  {
    v6 = 0;
    *(a6 + 40) = &unk_279704B98;
  }

  else
  {
    hx509_set_error_string(a1, 0, 569965, "Failed to parse RSA key", v10, v11, v12, v13, v15);
  }

  return v6;
}

uint64_t sub_2522961F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2522A4FE4();
  *(a3 + 56) = v6;
  if (v6 && (v11 = sub_2522A3C20(), sub_2522A3EBC(v11, 0x10001uLL), *(a2 + 16), v12 = sub_2522A5510(*(a3 + 56)), sub_2522A3C3C(v11), v12 == 1))
  {
    v13 = 0;
    *(a3 + 40) = &unk_279704B98;
  }

  else
  {
    v13 = 569965;
    hx509_set_error_string(a1, 0, 569965, "Failed to generate RSA key", v7, v8, v9, v10, v15);
  }

  return v13;
}

void *sub_2522962AC(int a1, uint64_t a2, char *a3)
{
  if (!strcasecmp(a3, "rsa-modulus"))
  {
    v6 = 32;
  }

  else
  {
    if (strcasecmp(a3, "rsa-exponent"))
    {
      return 0;
    }

    v6 = 40;
  }

  v7 = *(*(a2 + 56) + v6);

  return sub_2522A3CB4();
}

uint64_t sub_25229632C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
  *(a1 + 16) = v2;
  if (!v2)
  {
    return 12;
  }

  v3 = malloc_type_malloc(2uLL, 0x9284ED07uLL);
  v4 = *(a1 + 16);
  v4[1] = v3;
  if (!v3)
  {
    free(v4);
    v5 = 12;
    goto LABEL_8;
  }

  *v3 = 5;
  **(a1 + 16) = 2;
  v5 = der_copy_oid();
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      free(*(v6 + 8));
      free(*(a1 + 16));
LABEL_8:
      *(a1 + 16) = 0;
    }
  }

  return v5;
}

BOOL sub_2522963EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48) != 3)
  {
    sub_25229126C("internal error passing private key to wrong ops", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  v8 = 0;
  while (1)
  {
    v9 = (&off_2797037A0)[v8];
    v10 = v9[1];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v8 == 15)
    {
      return 0;
    }
  }

  return *(v9 + 20) != 0;
}

uint64_t sub_25229646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v10 = *(a3 + 216);
  v11 = *(a3 + 208) >> 3;
  v36 = v10;
  v37 = v11;
  v12 = sub_2522A59B0(0, &v36, v11);
  if (v12)
  {
    v17 = v12;
    v18 = sub_2522A5318(v12);
    v19 = malloc_type_malloc(v18, 0x317D67B7uLL);
    if (!v19)
    {
      v31 = "out of memory";
      v30 = 12;
      v32 = a1;
      v33 = 12;
      goto LABEL_16;
    }

    v24 = v19;
    v25 = sub_2522A532C(*a6, *(a6 + 1), v19, v17);
    if (v25 <= 0)
    {
      v30 = 569925;
      hx509_set_error_string(a1, 0, 569925, "RSA public decrypt failed: %d", v20, v21, v22, v23, v25);
      free(v24);
LABEL_17:
      sub_2522A23B8(&v38);
      sub_2522A50B0(v17);
      return v30;
    }

    if (v25 > v18)
    {
      sub_25229126C("internal rsa decryption failure: ret > tosize", v26, v27, v28, v20, v21, v22, v23, v35);
    }

    v29 = v25;
    if ((*(a2 + 43) & 1) == 0)
    {
      if (*a5 == v25 && !ct_memcmp(v24, *(a5 + 8), v25))
      {
        free(v24);
        v30 = 0;
        goto LABEL_17;
      }

      v30 = 569925;
      v31 = "RSA Signature incorrect";
      goto LABEL_9;
    }

    v30 = sub_2522A2368(v24, v25, &v38, &v37);
    free(v24);
    if (v30)
    {
      v31 = "Failed to decode RSA DigestInfo";
LABEL_15:
      v32 = a1;
      v33 = v30;
      goto LABEL_16;
    }

    if (v37 == v29)
    {
      if (*(a2 + 32) && der_heim_oid_cmp())
      {
        v30 = 569926;
        v31 = "object identifier in RSA sig mismatch";
        goto LABEL_15;
      }

      if (!v39 || *v39 == 2 && **(v39 + 8) == 5)
      {
        v30 = hx509_verify_signature_0(a1, 0, &v38, a5, &v39 + 8);
        goto LABEL_17;
      }

      v30 = 569925;
      v31 = "Extra parameters inside RSA signature";
    }

    else
    {
      v30 = 569925;
      v31 = "size from decryption mismatch";
    }

LABEL_9:
    v32 = a1;
    v33 = 569925;
LABEL_16:
    hx509_set_error_string(v32, 0, v33, v31, v20, v21, v22, v23, v35);
    goto LABEL_17;
  }

  v30 = 12;
  hx509_set_error_string(a1, 0, 12, "out of memory", v13, v14, v15, v16, v35);
  sub_2522A23B8(&v38);
  return v30;
}

uint64_t sub_252296708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7)
{
  v13 = a3[8];
  if (v13)
  {
    v14 = *(v13 + 16);
    if (der_heim_oid_cmp())
    {
      return 569866;
    }
  }

  if (!a4)
  {
    v16 = a3[5];
  }

  if (!der_heim_oid_cmp())
  {
    v19 = 0;
    v18 = 7;
    v17 = &unk_2797035D8;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (!der_heim_oid_cmp())
  {
    v19 = 0;
    v18 = 6;
    v17 = &unk_2797035F0;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (!der_heim_oid_cmp())
  {
    v19 = 0;
    v18 = 5;
    v17 = &unk_279703608;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (!der_heim_oid_cmp())
  {
    goto LABEL_20;
  }

  if (!der_heim_oid_cmp())
  {
    v19 = 0;
    v18 = 2;
    v17 = &unk_279703638;
    if (!a6)
    {
      goto LABEL_27;
    }

LABEL_25:
    v20 = sub_25229632C(a6);
    if (v20)
    {
      v15 = v20;
      hx509_clear_error_string(a1);
      return v15;
    }

    goto LABEL_27;
  }

  if (!der_heim_oid_cmp() || !der_heim_oid_cmp())
  {
LABEL_20:
    v19 = 0;
    v18 = 4;
    v17 = &unk_279703620;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (der_heim_oid_cmp())
  {
    return 569866;
  }

  v17 = 0;
  v18 = 0;
  v19 = 1;
  if (a6)
  {
    goto LABEL_25;
  }

LABEL_27:
  v43 = 0uLL;
  if (v19)
  {
    v21 = *a5;
    if (v21 > sub_2522A5318(a3[7]))
    {
      v15 = 569888;
      hx509_set_error_string(a1, 0, 569888, "RSA private decrypt failed: %d", v22, v23, v24, v25, 32);
      return v15;
    }

    v43 = *a5;
  }

  else
  {
    v15 = sub_25229444C(a1, 0, v17, a5, 0, &v43);
    if (v15)
    {
      return v15;
    }
  }

  v26 = sub_2522A5318(a3[7]);
  *a7 = v26;
  v27 = malloc_type_malloc(v26, 0x6CB00EC3uLL);
  a7[1] = v27;
  if (v27)
  {
    if (v19)
    {
      v39 = sub_2522A5320(v43, *(&v43 + 1), v27, a3[7]);
    }

    else
    {
      v42 = 0;
      if (sub_2522A5350(v18, *(&v43 + 1), v43, v27, &v42, a3[7]) == 1)
      {
        v39 = v42;
      }

      else
      {
        v39 = -1;
      }
    }

    if (a5[1] != *(&v43 + 1))
    {
      der_free_octet_string();
    }

    if (v39 <= 0)
    {
      v15 = 569888;
      hx509_set_error_string(a1, 0, 569888, "RSA private encrypt failed: %d", v35, v36, v37, v38, 32);
    }

    else
    {
      if (*a7 < v39)
      {
        sub_25229126C("RSA signature prelen longer the output len", v32, v33, v34, v35, v36, v37, v38, v41);
      }

      v15 = 0;
      *a7 = v39;
    }
  }

  else
  {
    if (a5[1] != *(&v43 + 1))
    {
      der_free_octet_string();
    }

    v15 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v28, v29, v30, v31, v41);
  }

  return v15;
}