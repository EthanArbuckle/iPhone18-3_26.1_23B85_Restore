uint64_t call_zopen64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*a1)
  {
    return (*a1)(*(a1 + 56), a2, a3);
  }

  else
  {
    return (*(a1 + 64))(*(a1 + 56), a2, a3);
  }
}

uint64_t call_zseek64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 32))
  {
    return (*(a1 + 32))(*(a1 + 56), a2, a3, a4);
  }

  else
  {
    return (*(a1 + 80))(*(a1 + 56), a2, a3, a4);
  }
}

uint64_t call_ztell64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return (*(a1 + 24))(*(a1 + 56), a2);
  }

  v3 = (*(a1 + 72))(*(a1 + 56), a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

void *fill_zlib_filefunc64_32_def_from_filefunc32(void *result, void *a2)
{
  *result = 0;
  result[8] = *a2;
  result[6] = a2[6];
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = 0;
  result[4] = 0;
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[10] = a2[4];
  result[9] = a2[3];
  return result;
}

FILE *(**fill_fopen_filefunc(FILE *(**result)(uint64_t a1, const char *a2, char a3)))(uint64_t a1, const char *a2, char a3)
{
  *result = fopen_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell_file_func;
  result[4] = fseek_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

FILE *fopen_file_func(uint64_t a1, const char *a2, char a3)
{
  v5 = 0;
  __mode = 0;
  if ((a3 & 3) == 1)
  {
    __mode = "rb";
  }

  else if ((a3 & 4) != 0)
  {
    __mode = "r+b";
  }

  else if ((a3 & 8) != 0)
  {
    __mode = "wb";
  }

  if (a2 && __mode)
  {
    return fopen(a2, __mode);
  }

  return v5;
}

uint64_t fseek_file_func(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (a4 != 2)
      {
        return -1;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
  if (fseek(a2, a3, v6))
  {
    return -1;
  }

  return v5;
}

FILE *(**fill_fopen64_filefunc(FILE *(**result)(uint64_t a1, const char *a2, char a3)))(uint64_t a1, const char *a2, char a3)
{
  *result = fopen64_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell64_file_func;
  result[4] = fseek64_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

FILE *fopen64_file_func(uint64_t a1, const char *a2, char a3)
{
  v5 = 0;
  __mode = 0;
  if ((a3 & 3) == 1)
  {
    __mode = "rb";
  }

  else if ((a3 & 4) != 0)
  {
    __mode = "r+b";
  }

  else if ((a3 & 8) != 0)
  {
    __mode = "wb";
  }

  if (a2 && __mode)
  {
    return fopen(a2, __mode);
  }

  return v5;
}

uint64_t fseek64_file_func(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (a4 != 2)
      {
        return -1;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
  if (fseek(a2, a3, v6))
  {
    return -1;
  }

  return v5;
}

void sub_2555A8F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location, int a43, int a44, _Unwind_Exception *exc_buf)
{
  exc_buf = a1;
  a44 = a2;
  if (a2 == 1)
  {
    v45 = objc_begin_catch(exc_buf);
    location = MEMORY[0x277D82BE0](v45);
    a12 = [location reason];
    a11 = a12;
    a9 = a11;
    NSLog(&stru_28677AAA8.isa);
    MEMORY[0x277D82BD8](a11);
    objc_storeStrong(&location, 0);
    objc_end_catch();
    JUMPOUT(0x2555A8EF0);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t unzStringFileNameCompare(char *a1, char *a2, int a3)
{
  v4 = a3;
  if (!a3)
  {
    v4 = 2;
  }

  if (v4 == 1)
  {
    return strcmp(a1, a2);
  }

  else
  {
    return strcmpcasenosensitive_internal(a1, a2);
  }
}

uint64_t strcmpcasenosensitive_internal(char *a1, char *a2)
{
  while (1)
  {
    v2 = a1++;
    v7 = *v2;
    v3 = a2++;
    v6 = *v3;
    if (v7 >= 97 && v7 <= 122)
    {
      v7 -= 32;
    }

    if (v6 >= 97 && v6 <= 122)
    {
      v6 -= 32;
    }

    if (!v7)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v7 < v6)
    {
      return -1;
    }

    if (v7 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void *unzOpen2(uint64_t a1, void *a2)
{
  v5 = a1;
  v4 = a2;
  if (!a2)
  {
    return unzOpenInternal(v5, 0, 0);
  }

  memset(__b, 0, sizeof(__b));
  fill_zlib_filefunc64_32_def_from_filefunc32(__b, v4);
  return unzOpenInternal(v5, __b, 0);
}

void *unzOpenInternal(uint64_t a1, const void *a2, int a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  bzero(__dst, 0x170uLL);
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  __dst[10] = 0;
  __dst[9] = 0;
  if (v15)
  {
    memcpy(__dst, v15, 0x58uLL);
  }

  else
  {
    fill_fopen64_filefunc(__dst);
  }

  LODWORD(__dst[11]) = v14;
  __dst[12] = call_zopen64(__dst, v16, 5u);
  if (!__dst[12])
  {
    return 0;
  }

  v11 = unz64local_SearchCentralDir64(__dst, __dst[12]);
  if (v11)
  {
    v5 = 0;
    v4 = 0;
    HIDWORD(__dst[41]) = 1;
    if (call_zseek64(__dst, __dst[12], v11, 0))
    {
      v6 = -1;
    }

    if (unz64local_getLong(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    if (unz64local_getLong64(__dst, __dst[12], &v4))
    {
      v6 = -1;
    }

    if (unz64local_getShort(__dst, __dst[12], &v5))
    {
      v6 = -1;
    }

    if (unz64local_getShort(__dst, __dst[12], &v5))
    {
      v6 = -1;
    }

    if (unz64local_getLong(__dst, __dst[12], &v9))
    {
      v6 = -1;
    }

    if (unz64local_getLong(__dst, __dst[12], &v8))
    {
      v6 = -1;
    }

    if (unz64local_getLong64(__dst, __dst[12], &__dst[13]))
    {
      v6 = -1;
    }

    if (unz64local_getLong64(__dst, __dst[12], &v7))
    {
      v6 = -1;
    }

    if (v7 != __dst[13] || v8 || v9)
    {
      v6 = -103;
    }

    if (unz64local_getLong64(__dst, __dst[12], &__dst[20]))
    {
      v6 = -1;
    }

    if (unz64local_getLong64(__dst, __dst[12], &__dst[21]))
    {
      v6 = -1;
    }

    __dst[14] = 0;
  }

  else
  {
    v11 = unz64local_SearchCentralDir(__dst, __dst[12]);
    if (!v11)
    {
      v6 = -1;
    }

    HIDWORD(__dst[41]) = 0;
    if (call_zseek64(__dst, __dst[12], v11, 0))
    {
      v6 = -1;
    }

    if (unz64local_getLong(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    if (unz64local_getShort(__dst, __dst[12], &v9))
    {
      v6 = -1;
    }

    if (unz64local_getShort(__dst, __dst[12], &v8))
    {
      v6 = -1;
    }

    if (unz64local_getShort(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    __dst[13] = v10;
    if (unz64local_getShort(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    v7 = v10;
    if (v10 != __dst[13] || v8 || v9)
    {
      v6 = -103;
    }

    if (unz64local_getLong(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    __dst[20] = v10;
    if (unz64local_getLong(__dst, __dst[12], &v10))
    {
      v6 = -1;
    }

    __dst[21] = v10;
    if (unz64local_getShort(__dst, __dst[12], &__dst[14]))
    {
      v6 = -1;
    }
  }

  if (v11 < (__dst[21] + __dst[20]) && !v6)
  {
    v6 = -103;
  }

  if (v6)
  {
    (__dst[5])(__dst[7], __dst[12]);
    return 0;
  }

  else
  {
    __dst[15] = (v11 - (__dst[21] + __dst[20]));
    __dst[19] = v11;
    __dst[40] = 0;
    LODWORD(__dst[41]) = 0;
    v12 = malloc_type_malloc(0x170uLL, 0x10F0040BFDC9523uLL);
    if (v12)
    {
      memcpy(v12, __dst, 0x170uLL);
      unzGoToFirstFile(v12);
    }

    return v12;
  }
}

void *unzOpen2_64(uint64_t a1, const void *a2)
{
  v5 = a1;
  v4 = a2;
  if (!a2)
  {
    return unzOpenInternal(v5, 0, 1);
  }

  memset(__b, 0, sizeof(__b));
  memcpy(__b, v4, 0x40uLL);
  __b[9] = 0;
  __b[10] = 0;
  return unzOpenInternal(v5, __b, 1);
}

uint64_t unzClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 320))
    {
      unzCloseCurrentFile(a1);
    }

    (*(a1 + 40))(*(a1 + 56), *(a1 + 96));
    if (a1)
    {
      free(a1);
    }

    return 0;
  }

  else
  {
    return -102;
  }
}

uint64_t unzCloseCurrentFile(uint64_t a1)
{
  v3 = 0;
  if (a1)
  {
    v2 = *(a1 + 320);
    if (v2)
    {
      if (!*(v2 + 24) && !*(v2 + 78) && *(v2 + 21) != *(v2 + 22))
      {
        v3 = -105;
      }

      if (*v2)
      {
        free(*v2);
      }

      *v2 = 0;
      if (*(v2 + 16) == 8)
      {
        inflateEnd((v2 + 8));
      }

      *(v2 + 16) = 0;
      free(v2);
      *(a1 + 320) = 0;
      return v3;
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetGlobalInfo64(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    *a2 = *(a1 + 104);
    return 0;
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetGlobalInfo(uint64_t a1, void *a2)
{
  if (a1)
  {
    *a2 = *(a1 + 104);
    a2[1] = *(a1 + 112);
    return 0;
  }

  else
  {
    return -102;
  }
}

uint64_t unz64local_GetCurrentFileInfoInternal(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (v32)
  {
    v23 = v32;
    if (call_zseek64(v32, v32[12], v32[17] + v32[15], 0))
    {
      v20 = -1;
    }

    if (!v20)
    {
      if (unz64local_getLong(v23, v23[12], &v19))
      {
        v20 = -1;
      }

      else if (v19 != 33639248)
      {
        v20 = -103;
      }
    }

    if (unz64local_getShort(v23, v23[12], __b))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[1]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[2]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[3]))
    {
      v20 = -1;
    }

    if (unz64local_getLong(v23, v23[12], &__b[4]))
    {
      v20 = -1;
    }

    unz64local_DosDateToTmuDate(__b[4], &__b[14]);
    if (unz64local_getLong(v23, v23[12], &__b[5]))
    {
      v20 = -1;
    }

    if (unz64local_getLong(v23, v23[12], &v17))
    {
      v20 = -1;
    }

    __b[6] = v17;
    if (unz64local_getLong(v23, v23[12], &v17))
    {
      v20 = -1;
    }

    __b[7] = v17;
    if (unz64local_getShort(v23, v23[12], &__b[8]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[9]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[10]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[11]))
    {
      v20 = -1;
    }

    if (unz64local_getShort(v23, v23[12], &__b[12]))
    {
      v20 = -1;
    }

    if (unz64local_getLong(v23, v23[12], &__b[13]))
    {
      v20 = -1;
    }

    if (unz64local_getLong(v23, v23[12], &v17))
    {
      v20 = -1;
    }

    v21 = v17;
    v18 += __b[8];
    if (!v20 && v29)
    {
      v16 = 0;
      if (__b[8] >= v28)
      {
        v16 = v28;
      }

      else
      {
        *(v29 + __b[8]) = 0;
        v16 = __b[8];
      }

      if (__b[8] && v28 && (v23[1])(v23[7], v23[12], v29, v16) != v16)
      {
        v20 = -1;
      }

      v18 -= v16;
    }

    if (v20 || !v27)
    {
      v18 += __b[9];
    }

    else
    {
      v15 = 0;
      if (__b[9] >= v26)
      {
        v15 = v26;
      }

      else
      {
        v15 = __b[9];
      }

      if (v18)
      {
        if (call_zseek64(v23, v23[12], v18, 1u))
        {
          v20 = -1;
        }

        else
        {
          v18 = 0;
        }
      }

      if (__b[9] && v26 && (v23[1])(v23[7], v23[12], v27, v15) != v15)
      {
        v20 = -1;
      }

      v18 += __b[9] - v15;
    }

    if (!v20 && __b[9])
    {
      v14 = 0;
      v18 -= __b[9];
      if (v18)
      {
        if (call_zseek64(v23, v23[12], v18, 1u))
        {
          v20 = -1;
        }

        else
        {
          v18 = 0;
        }
      }

      while (v14 < __b[9])
      {
        v13 = 0;
        v12 = 0;
        if (unz64local_getShort(v23, v23[12], &v13))
        {
          v20 = -1;
        }

        if (unz64local_getShort(v23, v23[12], &v12))
        {
          v20 = -1;
        }

        if (v13 == 1)
        {
          v11 = 0;
          if (__b[7] == -1 && unz64local_getLong64(v23, v23[12], &__b[7]))
          {
            v20 = -1;
          }

          if (__b[6] == -1 && unz64local_getLong64(v23, v23[12], &__b[6]))
          {
            v20 = -1;
          }

          if (v21 == -1 && unz64local_getLong64(v23, v23[12], &v21))
          {
            v20 = -1;
          }

          if (__b[11] == -1 && unz64local_getLong(v23, v23[12], &v11))
          {
            v20 = -1;
          }
        }

        else if (call_zseek64(v23, v23[12], v12, 1u))
        {
          v20 = -1;
        }

        v14 += v12 + 4;
      }
    }

    if (v20 || !v25)
    {
      v18 += __b[10];
    }

    else
    {
      if (__b[10] >= v24)
      {
        v10 = v24;
      }

      else
      {
        *(v25 + __b[10]) = 0;
        v10 = __b[10];
      }

      if (v18)
      {
        if (call_zseek64(v23, v23[12], v18, 1u))
        {
          v20 = -1;
        }

        else
        {
          v18 = 0;
        }
      }

      if (__b[10] && v24 && (v23[1])(v23[7], v23[12], v25, v10) != v10)
      {
        v20 = -1;
      }

      v18 += __b[10] - v10;
    }

    if (!v20 && v31)
    {
      memcpy(v31, __b, 0x88uLL);
    }

    if (!v20 && v30)
    {
      *v30 = v21;
    }

    return v20;
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetCurrentFileInfo(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = a7;
  v12 = a8;
  CurrentFileInfoInternal = 0;
  memset(__b, 0, sizeof(__b));
  CurrentFileInfoInternal = unz64local_GetCurrentFileInfoInternal(v19, __b, 0, v17, v16, v15, v14, v13, v12);
  if (!CurrentFileInfoInternal)
  {
    *v18 = *__b;
    *(v18 + 8) = *&__b[8];
    *(v18 + 16) = *&__b[16];
    *(v18 + 24) = *&__b[24];
    *(v18 + 32) = *&__b[32];
    *(v18 + 40) = *&__b[40];
    *(v18 + 64) = *&__b[64];
    *(v18 + 72) = *&__b[72];
    *(v18 + 80) = *&__b[80];
    *(v18 + 88) = *&__b[88];
    *(v18 + 96) = *&__b[96];
    *(v18 + 104) = *&__b[104];
    v8 = v18;
    *(v18 + 112) = *&__b[112];
    *(v8 + 128) = *&__b[128];
    *(v18 + 48) = *&__b[48];
    *(v18 + 56) = *&__b[56];
  }

  return CurrentFileInfoInternal;
}

uint64_t unzGoToFirstFile(uint64_t *a1)
{
  if (a1)
  {
    a1[17] = a1[21];
    a1[16] = 0;
    CurrentFileInfoInternal = unz64local_GetCurrentFileInfoInternal(a1, a1 + 22, a1 + 39, 0, 0, 0, 0, 0, 0);
    a1[18] = CurrentFileInfoInternal == 0;
    return CurrentFileInfoInternal;
  }

  else
  {
    return -102;
  }
}

uint64_t unzGoToNextFile(uint64_t *a1)
{
  if (a1)
  {
    if (a1[18])
    {
      if (a1[13] == 0xFFFF || a1[16] + 1 != a1[13])
      {
        a1[17] += a1[30] + 46 + a1[31] + a1[32];
        ++a1[16];
        CurrentFileInfoInternal = unz64local_GetCurrentFileInfoInternal(a1, a1 + 22, a1 + 39, 0, 0, 0, 0, 0, 0);
        a1[18] = CurrentFileInfoInternal == 0;
        return CurrentFileInfoInternal;
      }

      else
      {
        return -100;
      }
    }

    else
    {
      return -100;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzLocateFile(uint64_t *a1, char *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1;
  __s = a2;
  v10 = a3;
  v9 = 0;
  File = 0;
  memset(__b, 0, sizeof(__b));
  if (v12)
  {
    if (strlen(__s) < 0x100)
    {
      v9 = v12;
      if (v12[18])
      {
        v5 = v9[16];
        v4 = v9[17];
        memcpy(__b, v9 + 22, sizeof(__b));
        v6 = v9[39];
        File = unzGoToFirstFile(v12);
        while (!File)
        {
          File = unzGetCurrentFileInfo64(v12, 0, v14, 0x100uLL, 0, 0, 0, 0);
          if (!File)
          {
            if (!unzStringFileNameCompare(v14, __s, v10))
            {
              v13 = 0;
              goto LABEL_15;
            }

            File = unzGoToNextFile(v12);
          }
        }

        v9[16] = v5;
        v9[17] = v4;
        memcpy(v9 + 22, __b, 0x88uLL);
        v9[39] = v6;
        v13 = File;
      }

      else
      {
        v13 = -100;
      }
    }

    else
    {
      v13 = -102;
    }
  }

  else
  {
    v13 = -102;
  }

LABEL_15:
  *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t unzGetFilePos64(void *a1, void *a2)
{
  if (a1 && a2)
  {
    if (a1[18])
    {
      *a2 = a1[17];
      a2[1] = a1[16];
      return 0;
    }

    else
    {
      return -100;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetFilePos(void *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v4 = 0;
  v5 = 0;
  FilePos64 = unzGetFilePos64(a1, &v4);
  if (!FilePos64)
  {
    *v6 = v4;
    v6[1] = v5;
  }

  return FilePos64;
}

uint64_t unzGoToFilePos64(uint64_t *a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    a1[17] = *a2;
    a1[16] = a2[1];
    CurrentFileInfoInternal = unz64local_GetCurrentFileInfoInternal(a1, a1 + 22, a1 + 39, 0, 0, 0, 0, 0, 0);
    a1[18] = CurrentFileInfoInternal == 0;
    return CurrentFileInfoInternal;
  }

  else
  {
    return -102;
  }
}

uint64_t unzGoToFilePos(uint64_t *a1, uint64_t *a2)
{
  v6 = a1;
  v5 = a2;
  v3 = 0;
  v4 = 0;
  if (a2)
  {
    v3 = *v5;
    v4 = v5[1];
    return unzGoToFilePos64(v6, &v3);
  }

  else
  {
    return -102;
  }
}

uint64_t unzOpenCurrentFile3(void *a1, _DWORD *a2, _DWORD *a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = 0;
  v18 = 0;
  __src = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (!a1)
  {
    v25 = -102;
    goto LABEL_48;
  }

  __src = v24;
  if (!v24[18])
  {
    v25 = -102;
    goto LABEL_48;
  }

  if (*(__src + 40))
  {
    unzCloseCurrentFile(v24);
  }

  if (unz64local_CheckCurrentFileCoherencyHeader(__src, &v18, &v15, &v14))
  {
    v25 = -103;
    goto LABEL_48;
  }

  v16 = malloc_type_malloc(0x140uLL, 0x10B004067B04D0FuLL);
  if (!v16)
  {
    v25 = -104;
    goto LABEL_48;
  }

  v5 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  *v16 = v5;
  *(v16 + 17) = v15;
  *(v16 + 36) = v14;
  *(v16 + 19) = 0;
  *(v16 + 78) = v21;
  *(v16 + 38) = 0;
  if (!*v16)
  {
    if (v16)
    {
      free(v16);
    }

    v25 = -104;
    goto LABEL_48;
  }

  *(v16 + 16) = 0;
  if (v23)
  {
    *v23 = *(__src + 25);
  }

  if (v22)
  {
    *v22 = 6;
    v12 = *(__src + 24) & 6;
    switch(v12)
    {
      case 2:
        *v22 = 9;
        break;
      case 4:
        *v22 = 2;
        break;
      case 6:
        *v22 = 1;
        break;
    }
  }

  if (*(__src + 25) && *(__src + 25) != 12 && *(__src + 25) != 8)
  {
    v19 = -103;
  }

  *(v16 + 22) = *(__src + 27);
  *(v16 + 21) = 0;
  *(v16 + 20) = 0;
  *(v16 + 37) = *(__src + 25);
  *(v16 + 36) = *(__src + 12);
  memcpy(v16 + 200, __src, 0x58uLL);
  *(v16 + 38) = *(__src + 15);
  *(v16 + 6) = 0;
  if (*(__src + 25) == 12 && !v21)
  {
    *(v16 + 78) = 1;
    goto LABEL_38;
  }

  if (*(__src + 25) != 8 || v21)
  {
LABEL_38:
    *(v16 + 23) = *(__src + 28);
    *(v16 + 24) = *(__src + 29);
    *(v16 + 15) = *(__src + 39) + 30 + v18;
    *(v16 + 4) = 0;
    *(__src + 40) = v16;
    *(__src + 82) = 0;
    if (v20)
    {
      *(__src + 45) = get_crc_table();
      init_keys(v20, __src + 42, *(__src + 45));
      if (call_zseek64(__src, *(__src + 12), *(*(__src + 40) + 120) + *(*(__src + 40) + 304), 0))
      {
        v25 = -104;
        goto LABEL_48;
      }

      if ((*(__src + 1))(*(__src + 7), *(__src + 12), v26, 12) < 0xC)
      {
        v25 = -104;
        goto LABEL_48;
      }

      for (i = 0; i < 12; ++i)
      {
        v11 = __src + 336;
        v10 = *(__src + 45);
        v6 = decrypt_byte(__src + 336);
        v7 = &v26[i];
        v8 = *v7 ^ v6;
        *v7 = v8;
        update_keys(v11, v10, v8);
      }

      *(*(__src + 40) + 120) += 12;
      *(__src + 82) = 1;
    }

    v25 = 0;
    goto LABEL_48;
  }

  *(v16 + 9) = 0;
  *(v16 + 10) = 0;
  *(v16 + 11) = 0;
  *(v16 + 1) = 0;
  *(v16 + 4) = 0;
  v19 = inflateInit2_((v16 + 8), -15, "1.2.12", 112);
  if (!v19)
  {
    *(v16 + 16) = 8;
    goto LABEL_38;
  }

  if (v16)
  {
    free(v16);
  }

  v25 = v19;
LABEL_48:
  *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t unz64local_CheckCurrentFileCoherencyHeader(uint64_t *a1, _DWORD *a2, void *a3, _DWORD *a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  *a2 = 0;
  *v12 = 0;
  *v11 = 0;
  if (call_zseek64(v14, v14[12], v14[39] + v14[15], 0))
  {
    return -1;
  }

  else
  {
    if (unz64local_getLong(v14, v14[12], &v10))
    {
      v5 = -1;
    }

    else if (v10 != 67324752)
    {
      v5 = -103;
    }

    if (unz64local_getShort(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    if (unz64local_getShort(v14, v14[12], &v8))
    {
      v5 = -1;
    }

    if (unz64local_getShort(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    else if (!v5 && v9 != v14[25])
    {
      v5 = -103;
    }

    if (!v5 && v14[25] && v14[25] != 12 && v14[25] != 8)
    {
      v5 = -103;
    }

    if (unz64local_getLong(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    if (unz64local_getLong(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    else if (!v5 && v9 != v14[27] && (v8 & 8) == 0)
    {
      v5 = -103;
    }

    if (unz64local_getLong(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    else if (v9 != 0xFFFFFFFFLL && !v5 && v9 != v14[28] && (v8 & 8) == 0)
    {
      v5 = -103;
    }

    if (unz64local_getLong(v14, v14[12], &v9))
    {
      v5 = -1;
    }

    else if (v9 != 0xFFFFFFFFLL && !v5 && v9 != v14[29] && (v8 & 8) == 0)
    {
      v5 = -103;
    }

    if (unz64local_getShort(v14, v14[12], &v7))
    {
      v5 = -1;
    }

    else if (!v5 && v7 != v14[30])
    {
      v5 = -103;
    }

    *v13 += v7;
    if (unz64local_getShort(v14, v14[12], &v6))
    {
      v5 = -1;
    }

    *v12 = v14[39] + 30 + v7;
    *v11 = v6;
    *v13 += v6;
    return v5;
  }
}

uint64_t init_keys(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  *a2 = 305419896;
  a2[1] = 591751049;
  a2[2] = 878082192;
  while (*v5)
  {
    result = update_keys(a2, a3, *v5++);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, unsigned int a3)
{
  *a1 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  a1[1] += *a1;
  a1[1] = 134775813 * a1[1] + 1;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(a1[1]))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t unzGetCurrentFileZStreamPos64(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 320);
  if (v2)
  {
    return *(v2 + 120) + *(v2 + 304);
  }

  else
  {
    return 0;
  }
}

uint64_t unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19 = 0;
  v18 = 0;
  if (a1)
  {
    v17 = *(a1 + 320);
    if (v17)
    {
      if (*v17)
      {
        if (a3)
        {
          *(v17 + 32) = a2;
          *(v17 + 40) = a3;
          if (a3 > *(v17 + 184) + *(v17 + 16) && *(v17 + 312))
          {
            *(v17 + 40) = *(v17 + 184) + *(v17 + 16);
          }

          while (1)
          {
            do
            {
              while (1)
              {
                if (!*(v17 + 40))
                {
LABEL_53:
                  if (v19)
                  {
                    return v19;
                  }

                  else
                  {
                    return v18;
                  }
                }

                if (!*(v17 + 16) && *(v17 + 184))
                {
                  v16 = 0x4000;
                  if (*(v17 + 184) < 0x4000uLL)
                  {
                    v16 = *(v17 + 184);
                  }

                  if (!v16)
                  {
                    return 0;
                  }

                  if (call_zseek64(v17 + 200, *(v17 + 288), *(v17 + 120) + *(v17 + 304), 0))
                  {
                    return -1;
                  }

                  if ((*(v17 + 208))(*(v17 + 256), *(v17 + 288), *v17, v16) != v16)
                  {
                    return -1;
                  }

                  if (*(a1 + 328))
                  {
                    for (i = 0; i < v16; ++i)
                    {
                      v9 = *(a1 + 360);
                      v3 = decrypt_byte(a1 + 336);
                      v4 = (*v17 + i);
                      v5 = *v4 ^ v3;
                      *v4 = v5;
                      *(*v17 + i) = update_keys((a1 + 336), v9, v5);
                    }
                  }

                  *(v17 + 120) += v16;
                  *(v17 + 184) -= v16;
                  *(v17 + 8) = *v17;
                  *(v17 + 16) = v16;
                }

                if (*(v17 + 296) && !*(v17 + 312))
                {
                  break;
                }

                if (!*(v17 + 16) && !*(v17 + 184))
                {
                  if (v18)
                  {
                    return v18;
                  }

                  else
                  {
                    return 0;
                  }
                }

                if (*(v17 + 40) >= *(v17 + 16))
                {
                  v14 = *(v17 + 16);
                }

                else
                {
                  v14 = *(v17 + 40);
                }

                for (j = 0; j < v14; ++j)
                {
                  *(*(v17 + 32) + j) = *(*(v17 + 8) + j);
                }

                *(v17 + 160) += v14;
                *(v17 + 168) = crc32(*(v17 + 168), *(v17 + 32), v14);
                *(v17 + 192) -= v14;
                *(v17 + 16) -= v14;
                *(v17 + 40) -= v14;
                *(v17 + 32) += v14;
                *(v17 + 8) += v14;
                *(v17 + 48) += v14;
                v18 += v14;
              }
            }

            while (*(v17 + 296) == 12);
            v12 = *(v17 + 48);
            buf = *(v17 + 32);
            v19 = inflate((v17 + 8), 2);
            if ((v19 & 0x80000000) == 0 && *(v17 + 56))
            {
              v19 = -3;
            }

            v11 = *(v17 + 48);
            *(v17 + 160) += v11 - v12;
            *(v17 + 168) = crc32(*(v17 + 168), buf, v11 - v12);
            *(v17 + 192) -= v11 - v12;
            v18 += v11 - v12;
            if (v19 == 1)
            {
              break;
            }

            if (v19)
            {
              goto LABEL_53;
            }
          }

          if (v18)
          {
            return v18;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return -100;
      }
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unztell(uint64_t a1)
{
  if (!a1)
  {
    return -102;
  }

  v2 = *(a1 + 320);
  if (v2)
  {
    return *(v2 + 48);
  }

  else
  {
    return -102;
  }
}

uint64_t unztell64(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 320);
  if (v2)
  {
    return *(v2 + 160);
  }

  else
  {
    return -1;
  }
}

uint64_t unzeof(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 320);
    if (v2)
    {
      return *(v2 + 192) == 0;
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetLocalExtrafield(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    v5 = *(a1 + 320);
    if (v5)
    {
      if (a2)
      {
        if (a3 > *(v5 + 144) - *(v5 + 152))
        {
          v4 = *(v5 + 144) - *(v5 + 152);
        }

        else
        {
          v4 = a3;
        }

        if (v4)
        {
          if (call_zseek64(v5 + 200, *(v5 + 288), *(v5 + 136) + *(v5 + 152), 0))
          {
            return -1;
          }

          else if ((*(v5 + 208))(*(v5 + 256), *(v5 + 288), a2, v4) == v4)
          {
            return v4;
          }

          else
          {
            return -1;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return (*(v5 + 144) - *(v5 + 152));
      }
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetGlobalComment(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (a1)
  {
    v4 = a3;
    if (a3 > *(a1 + 112))
    {
      v4 = *(a1 + 112);
    }

    if (call_zseek64(a1, *(a1 + 96), *(a1 + 152) + 22, 0))
    {
      return -1;
    }

    else if (!v4 || (*a2 = 0, (*(a1 + 8))(*(a1 + 56), *(a1 + 96), a2, v4) == v4))
    {
      if (a2 && a3 > *(a1 + 112))
      {
        a2[*(a1 + 112)] = 0;
      }

      return v4;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t unzGetOffset64(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[18])
  {
    return 0;
  }

  if (a1[13] && a1[13] != 0xFFFFLL && a1[16] == a1[13])
  {
    return 0;
  }

  return a1[17];
}

uint64_t unzGetOffset(void *a1)
{
  if (a1)
  {
    return unzGetOffset64(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t unzSetOffset64(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    a1[17] = a2;
    a1[16] = a1[13];
    CurrentFileInfoInternal = unz64local_GetCurrentFileInfoInternal(a1, a1 + 22, a1 + 39, 0, 0, 0, 0, 0, 0);
    a1[18] = CurrentFileInfoInternal == 0;
    return CurrentFileInfoInternal;
  }

  else
  {
    return -102;
  }
}

uint64_t unz64local_SearchCentralDir64(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0xFFFFLL;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (call_zseek64(a1, a2, 0, 2u))
  {
    return 0;
  }

  v12 = call_ztell64(v15, v14);
  if (v10 > v12)
  {
    v10 = v12;
  }

  v13 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL);
  if (!v13)
  {
    return 0;
  }

  v11 = 4;
  do
  {
    if (v11 >= v10)
    {
      break;
    }

    if (v11 + 1024 > v10)
    {
      v11 = v10;
    }

    else
    {
      v11 += 1024;
    }

    v6 = v12 - v11;
    v4 = v11 <= 0x404 ? v11 : 1028;
    if (call_zseek64(v15, v14, v6, 0) || (*(v15 + 8))(*(v15 + 56), v14, v13, v4) != v4)
    {
      break;
    }

    v5 = v4 - 3;
    while (1)
    {
      v2 = v5--;
      if (v2 <= 0)
      {
        break;
      }

      if (v13[v5] == 80 && v13[v5 + 1] == 75 && v13[v5 + 2] == 6 && v13[v5 + 3] == 7)
      {
        v9 = v6 + v5;
        break;
      }
    }
  }

  while (!v9);
  free(v13);
  if (!v9)
  {
    return 0;
  }

  if (call_zseek64(v15, v14, v9, 0))
  {
    return 0;
  }

  if (unz64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (unz64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8)
  {
    return 0;
  }

  if (unz64local_getLong64(v15, v14, &v7))
  {
    return 0;
  }

  if (unz64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8 != 1)
  {
    return 0;
  }

  if (call_zseek64(v15, v14, v7, 0))
  {
    return 0;
  }

  if (unz64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8 == 101075792)
  {
    return v7;
  }

  return 0;
}

uint64_t unz64local_getLong(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = unz64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 8;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 16;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 24;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t unz64local_getLong64(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = unz64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 8;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 16;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 24;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 32;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 40;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 48;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 56;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t unz64local_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = unz64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = unz64local_getByte(v9, v8, &v5);
  }

  v6 |= v5 << 8;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t unz64local_SearchCentralDir(uint64_t a1, uint64_t a2)
{
  v8 = 0xFFFFLL;
  v7 = 0;
  if (call_zseek64(a1, a2, 0, 2u))
  {
    return 0;
  }

  v10 = call_ztell64(a1, a2);
  if (v10 < 0xFFFF)
  {
    v8 = v10;
  }

  v11 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL);
  if (!v11)
  {
    return 0;
  }

  v9 = 4;
  do
  {
    if (v9 >= v8)
    {
      break;
    }

    if (v9 + 1024 <= v8)
    {
      v9 += 1024;
    }

    else
    {
      v9 = v8;
    }

    v6 = v10 - v9;
    v4 = v9 <= 0x404 ? v9 : 1028;
    if (call_zseek64(a1, a2, v6, 0) || (*(a1 + 8))(*(a1 + 56), a2, v11, v4) != v4)
    {
      break;
    }

    v5 = v4 - 3;
    while (1)
    {
      v2 = v5--;
      if (v2 <= 0)
      {
        break;
      }

      if (v11[v5] == 80 && v11[v5 + 1] == 75 && v11[v5 + 2] == 5 && v11[v5 + 3] == 6)
      {
        v7 = v6 + v5;
        break;
      }
    }
  }

  while (!v7);
  free(v11);
  return v7;
}

uint64_t unz64local_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v4, 1) == 1)
  {
    *v5 = v4;
    return 0;
  }

  else if ((*(v7 + 48))(*(v7 + 56), v6))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t unz64local_DosDateToTmuDate(uint64_t result, _DWORD *a2)
{
  a2[3] = BYTE2(result) & 0x1F;
  a2[4] = (WORD1(result) & 0x1E0u) / 0x20 - 1;
  a2[5] = (WORD1(result) & 0xFE00u) / 0x200 + 1980;
  a2[2] = (result & 0xF800u) / 0x800;
  a2[1] = (result & 0x7E0u) / 0x20;
  *a2 = 2 * (result & 0x1F);
  return result;
}

id WithFinalizer(id val)
{
  objc_initWeak(&location, val);
  v11 = [MEMORY[0x277D733F8] currentContext];
  if (v11)
  {
    v3 = MEMORY[0x277D73418];
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __WithFinalizer_block_invoke;
    v8 = &unk_2797EE450;
    objc_copyWeak(&v9, &location);
    [v3 runBlock:&v4 onFinalize:v11];
    v13 = objc_loadWeakRetained(&location);
    v10 = 1;
    objc_destroyWeak(&v9);
  }

  else
  {
    v13 = objc_loadWeakRetained(&location);
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&location);
  v1 = v13;

  return v1;
}

uint64_t __WithFinalizer_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tkPage];
  [v2 dispose];
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](WeakRetained);
}

void sub_2555B1DBC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 40) = a1;
  *(v9 - 44) = a2;
  objc_destroyWeak((v9 - 32));
  _Unwind_Resume(*(v9 - 40));
}

BOOL __CGSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

uint64_t XXH32(unsigned int *a1, unint64_t a2, unsigned int a3)
{
  v9 = a2;
  if ((a1 & 3) != 0)
  {
    if (g_one == 1)
    {
      v29 = a1;
      v28 = a1 + a2;
      if (a2 < 0x10)
      {
        v25 = a3 + 374761393;
      }

      else
      {
        v24 = a3 + 606290984;
        v23 = a3 - 2048144777;
        v22 = a3;
        v21 = a3 + 1640531535;
        do
        {
          v59 = XXH_read32(v29);
          v24 = -1640531535 * (((v24 - 2048144777 * v59) >> 19) | ((v24 - 2048144777 * v59) << 13));
          v30 = v29 + 1;
          v58 = XXH_read32(v30);
          v23 = -1640531535 * (((v23 - 2048144777 * v58) >> 19) | ((v23 - 2048144777 * v58) << 13));
          v57 = XXH_read32(++v30);
          v22 = -1640531535 * (((v22 - 2048144777 * v57) >> 19) | ((v22 - 2048144777 * v57) << 13));
          v56 = XXH_read32(++v30);
          v21 = -1640531535 * (((v21 - 2048144777 * v56) >> 19) | ((v21 - 2048144777 * v56) << 13));
          v29 = v30 + 1;
        }

        while (v29 <= v28 - 16);
        v25 = ((v24 >> 31) | (2 * v24)) + ((v23 >> 25) | (v23 << 7)) + ((v22 >> 20) | (v22 << 12)) + ((v21 >> 14) | (v21 << 18));
      }

      v26 = v25 + v9;
      while ((v29 + 1) <= v28)
      {
        v60 = XXH_read32(v29);
        v26 = 668265263 * (((v26 - 1028477379 * v60) >> 15) | ((v26 - 1028477379 * v60) << 17));
        ++v29;
      }

      while (v29 < v28)
      {
        v26 = -1640531535 * (((v26 + 374761393 * *v29) >> 21) | ((v26 + 374761393 * *v29) << 11));
        v29 = (v29 + 1);
      }

      v27 = -1028477379 * ((-2048144777 * (v26 ^ (v26 >> 15))) ^ ((-2048144777 * (v26 ^ (v26 >> 15))) >> 13));
      return v27 ^ HIWORD(v27);
    }

    else
    {
      v19 = a1;
      v18 = a1 + a2;
      if (a2 < 0x10)
      {
        v15 = a3 + 374761393;
      }

      else
      {
        v14 = a3 + 606290984;
        v13 = a3 - 2048144777;
        v12 = a3;
        v11 = a3 + 1640531535;
        do
        {
          v3 = XXH_read32(v19);
          v64 = XXH_swap32(v3);
          v14 = -1640531535 * (((v14 - 2048144777 * v64) >> 19) | ((v14 - 2048144777 * v64) << 13));
          v20 = v19 + 1;
          v4 = XXH_read32(v20);
          v63 = XXH_swap32(v4);
          v13 = -1640531535 * (((v13 - 2048144777 * v63) >> 19) | ((v13 - 2048144777 * v63) << 13));
          v5 = XXH_read32(++v20);
          v62 = XXH_swap32(v5);
          v12 = -1640531535 * (((v12 - 2048144777 * v62) >> 19) | ((v12 - 2048144777 * v62) << 13));
          v6 = XXH_read32(++v20);
          v61 = XXH_swap32(v6);
          v11 = -1640531535 * (((v11 - 2048144777 * v61) >> 19) | ((v11 - 2048144777 * v61) << 13));
          v19 = v20 + 1;
        }

        while (v19 <= v18 - 16);
        v15 = ((v14 >> 31) | (2 * v14)) + ((v13 >> 25) | (v13 << 7)) + ((v12 >> 20) | (v12 << 12)) + ((v11 >> 14) | (v11 << 18));
      }

      v16 = v15 + v9;
      while ((v19 + 1) <= v18)
      {
        v7 = XXH_read32(v19);
        v65 = XXH_swap32(v7);
        v16 = 668265263 * (((v16 - 1028477379 * v65) >> 15) | ((v16 - 1028477379 * v65) << 17));
        ++v19;
      }

      while (v19 < v18)
      {
        v16 = -1640531535 * (((v16 + 374761393 * *v19) >> 21) | ((v16 + 374761393 * *v19) << 11));
        v19 = (v19 + 1);
      }

      v17 = -1028477379 * ((-2048144777 * (v16 ^ (v16 >> 15))) ^ ((-2048144777 * (v16 ^ (v16 >> 15))) >> 13));
      return v17 ^ HIWORD(v17);
    }
  }

  else if (g_one == 1)
  {
    v49 = a1;
    v48 = a1 + a2;
    if (a2 < 0x10)
    {
      v45 = a3 + 374761393;
    }

    else
    {
      v44 = a3 + 606290984;
      v43 = a3 - 2048144777;
      v42 = a3;
      v41 = a3 + 1640531535;
      do
      {
        v44 = -1640531535 * (((v44 - 2048144777 * *v49) >> 19) | ((v44 - 2048144777 * *v49) << 13));
        v50 = v49 + 1;
        v43 = -1640531535 * (((v43 - 2048144777 * *v50) >> 19) | ((v43 - 2048144777 * *v50) << 13));
        ++v50;
        v42 = -1640531535 * (((v42 - 2048144777 * *v50) >> 19) | ((v42 - 2048144777 * *v50) << 13));
        ++v50;
        v41 = -1640531535 * (((v41 - 2048144777 * *v50) >> 19) | ((v41 - 2048144777 * *v50) << 13));
        v49 = v50 + 1;
      }

      while (v49 <= v48 - 16);
      v45 = ((v44 >> 31) | (2 * v44)) + ((v43 >> 25) | (v43 << 7)) + ((v42 >> 20) | (v42 << 12)) + ((v41 >> 14) | (v41 << 18));
    }

    v46 = v45 + a2;
    while ((v49 + 1) <= v48)
    {
      v46 = 668265263 * (((v46 - 1028477379 * *v49) >> 15) | ((v46 - 1028477379 * *v49) << 17));
      ++v49;
    }

    while (v49 < v48)
    {
      v46 = -1640531535 * (((v46 + 374761393 * *v49) >> 21) | ((v46 + 374761393 * *v49) << 11));
      v49 = (v49 + 1);
    }

    v47 = -1028477379 * ((-2048144777 * (v46 ^ (v46 >> 15))) ^ ((-2048144777 * (v46 ^ (v46 >> 15))) >> 13));
    return v47 ^ HIWORD(v47);
  }

  else
  {
    v39 = a1;
    v38 = a1 + a2;
    if (a2 < 0x10)
    {
      v35 = a3 + 374761393;
    }

    else
    {
      v34 = a3 + 606290984;
      v33 = a3 - 2048144777;
      v32 = a3;
      v31 = a3 + 1640531535;
      do
      {
        v54 = XXH_swap32(*v39);
        v34 = -1640531535 * (((v34 - 2048144777 * v54) >> 19) | ((v34 - 2048144777 * v54) << 13));
        v40 = v39 + 1;
        v53 = XXH_swap32(*v40);
        v33 = -1640531535 * (((v33 - 2048144777 * v53) >> 19) | ((v33 - 2048144777 * v53) << 13));
        v52 = XXH_swap32(*++v40);
        v32 = -1640531535 * (((v32 - 2048144777 * v52) >> 19) | ((v32 - 2048144777 * v52) << 13));
        v51 = XXH_swap32(*++v40);
        v31 = -1640531535 * (((v31 - 2048144777 * v51) >> 19) | ((v31 - 2048144777 * v51) << 13));
        v39 = v40 + 1;
      }

      while (v39 <= v38 - 16);
      v35 = ((v34 >> 31) | (2 * v34)) + ((v33 >> 25) | (v33 << 7)) + ((v32 >> 20) | (v32 << 12)) + ((v31 >> 14) | (v31 << 18));
    }

    v36 = v35 + v9;
    while ((v39 + 1) <= v38)
    {
      v55 = XXH_swap32(*v39);
      v36 = 668265263 * (((v36 - 1028477379 * v55) >> 15) | ((v36 - 1028477379 * v55) << 17));
      ++v39;
    }

    while (v39 < v38)
    {
      v36 = -1640531535 * (((v36 + 374761393 * *v39) >> 21) | ((v36 + 374761393 * *v39) << 11));
      v39 = (v39 + 1);
    }

    v37 = -1028477379 * ((-2048144777 * (v36 ^ (v36 >> 15))) ^ ((-2048144777 * (v36 ^ (v36 >> 15))) >> 13));
    return v37 ^ HIWORD(v37);
  }
}

unint64_t XXH64(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 7) != 0)
  {
    if (g_one == 1)
    {
      v37 = a1;
      v36 = a1 + a2;
      if (a2 >= 0x20)
      {
        v31 = a3 + 0x60EA27EEADC0B5D6;
        v30 = a3 - 0x3D4D51C2D82B14B1;
        v29 = a3;
        v28 = a3 + 0x61C8864E7A143579;
        do
        {
          v78 = XXH_read64(v37);
          v38 = (v37 + 2);
          v31 = 0x9E3779B185EBCA87 * (((v31 - 0x3D4D51C2D82B14B1 * v78) >> 33) | ((v31 - 0x3D4D51C2D82B14B1 * v78) << 31));
          v77 = XXH_read64(v38);
          v38 += 8;
          v30 = 0x9E3779B185EBCA87 * (((v30 - 0x3D4D51C2D82B14B1 * v77) >> 33) | ((v30 - 0x3D4D51C2D82B14B1 * v77) << 31));
          v76 = XXH_read64(v38);
          v38 += 8;
          v29 = 0x9E3779B185EBCA87 * (((v29 - 0x3D4D51C2D82B14B1 * v76) >> 33) | ((v29 - 0x3D4D51C2D82B14B1 * v76) << 31));
          v75 = XXH_read64(v38);
          v37 = (v38 + 8);
          v28 = 0x9E3779B185EBCA87 * (__PAIR128__(v28 - 0x3D4D51C2D82B14B1 * v75, v28 - 0x3D4D51C2D82B14B1 * v75) >> 33);
        }

        while (v37 <= v36 - 32);
        v32 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((v31 >> 63) | (2 * v31)) + ((v30 >> 57) | (v30 << 7)) + ((v29 >> 52) | (v29 << 12)) + ((v28 >> 46) | (v28 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v31) >> 33) | (0x93EA75A780000000 * v31)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v30) >> 33) | (0x93EA75A780000000 * v30)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v29) >> 33) | (0x93EA75A780000000 * v29)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v28) >> 33) | (0x93EA75A780000000 * v28)))) - 0x7A1435883D4D519DLL;
      }

      else
      {
        v32 = a3 + 0x27D4EB2F165667C5;
      }

      v33 = v32 + a2;
      while ((v37 + 2) <= v36)
      {
        v79 = XXH_read64(v37);
        v34 = v33 ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v79) >> 33) | (0x93EA75A780000000 * v79)));
        v33 = 0x9E3779B185EBCA87 * (__PAIR128__(v34, v34) >> 37) - 0x7A1435883D4D519DLL;
        v37 += 2;
      }

      if ((v37 + 1) <= v36)
      {
        v64 = XXH_read32(v37);
        v33 = 0xC2B2AE3D27D4EB4FLL * (__PAIR128__(v33 ^ (0x9E3779B185EBCA87 * v64), v33 ^ (0x9E3779B185EBCA87 * v64)) >> 41) + 0x165667B19E3779F9;
        ++v37;
      }

      while (v37 < v36)
      {
        v33 = 0x9E3779B185EBCA87 * (__PAIR128__(v33 ^ (0x27D4EB2F165667C5 * *v37), v33 ^ (0x27D4EB2F165667C5 * *v37)) >> 53);
        v37 = (v37 + 1);
      }

      v35 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v33 ^ (v33 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v33 ^ (v33 >> 33))) >> 29));
      return v35 ^ HIDWORD(v35);
    }

    else
    {
      v26 = a1;
      v25 = a1 + a2;
      if (a2 < 0x20)
      {
        v23 = a3 + 0x27D4EB2F165667C5;
      }

      else
      {
        v22 = a3 + 0x60EA27EEADC0B5D6;
        v21 = a3 - 0x3D4D51C2D82B14B1;
        v20 = a3;
        v19 = a3 + 0x61C8864E7A143579;
        do
        {
          v3 = XXH_read64(v26);
          v15 = XXH_swap64(v3);
          v27 = (v26 + 2);
          v22 = 0x9E3779B185EBCA87 * (((v22 - 0x3D4D51C2D82B14B1 * v15) >> 33) | ((v22 - 0x3D4D51C2D82B14B1 * v15) << 31));
          v4 = XXH_read64(v27);
          v14 = XXH_swap64(v4);
          v27 += 8;
          v21 = 0x9E3779B185EBCA87 * (((v21 - 0x3D4D51C2D82B14B1 * v14) >> 33) | ((v21 - 0x3D4D51C2D82B14B1 * v14) << 31));
          v5 = XXH_read64(v27);
          v13 = XXH_swap64(v5);
          v27 += 8;
          v20 = 0x9E3779B185EBCA87 * (((v20 - 0x3D4D51C2D82B14B1 * v13) >> 33) | ((v20 - 0x3D4D51C2D82B14B1 * v13) << 31));
          v6 = XXH_read64(v27);
          v12 = XXH_swap64(v6);
          v26 = (v27 + 8);
          v19 = 0x9E3779B185EBCA87 * (((v19 - 0x3D4D51C2D82B14B1 * v12) >> 33) | ((v19 - 0x3D4D51C2D82B14B1 * v12) << 31));
        }

        while (v26 <= v25 - 32);
        v23 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((v22 >> 63) | (2 * v22)) + ((v21 >> 57) | (v21 << 7)) + ((v20 >> 52) | (v20 << 12)) + ((v19 >> 46) | (v19 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v22) >> 33) | (0x93EA75A780000000 * v22)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v21) >> 33) | (0x93EA75A780000000 * v21)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v20) >> 33) | (0x93EA75A780000000 * v20)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v19) >> 33) | (0x93EA75A780000000 * v19)))) - 0x7A1435883D4D519DLL;
      }

      v24 = v23 + a2;
      while ((v26 + 2) <= v25)
      {
        v7 = XXH_read64(v26);
        v11 = XXH_swap64(v7);
        v18 = 0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v11) >> 33) | (0x93EA75A780000000 * v11));
        v24 = 0x9E3779B185EBCA87 * (((v24 ^ v18) >> 37) | ((v24 ^ v18) << 27)) - 0x7A1435883D4D519DLL;
        v26 += 2;
      }

      if ((v26 + 1) <= v25)
      {
        v8 = XXH_read32(v26);
        v65 = XXH_swap32(v8);
        v24 = 0xC2B2AE3D27D4EB4FLL * (((v24 ^ (0x9E3779B185EBCA87 * v65)) >> 41) | ((v24 ^ (0x9E3779B185EBCA87 * v65)) << 23)) + 0x165667B19E3779F9;
        ++v26;
      }

      while (v26 < v25)
      {
        v24 = 0x9E3779B185EBCA87 * (((v24 ^ (0x27D4EB2F165667C5 * *v26)) >> 53) | ((v24 ^ (0x27D4EB2F165667C5 * *v26)) << 11));
        v26 = (v26 + 1);
      }

      v9 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v24 ^ (v24 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v24 ^ (v24 >> 33))) >> 29));
      return v9 ^ HIDWORD(v9);
    }
  }

  else if (g_one == 1)
  {
    v61 = a1;
    v60 = a1 + a2;
    if (a2 >= 0x20)
    {
      v55 = a3 + 0x60EA27EEADC0B5D6;
      v54 = a3 - 0x3D4D51C2D82B14B1;
      v53 = a3;
      v52 = a3 + 0x61C8864E7A143579;
      do
      {
        v69 = *v61;
        v62 = (v61 + 2);
        v55 = 0x9E3779B185EBCA87 * (((v55 - 0x3D4D51C2D82B14B1 * v69) >> 33) | ((v55 - 0x3D4D51C2D82B14B1 * v69) << 31));
        v68 = *v62++;
        v54 = 0x9E3779B185EBCA87 * (((v54 - 0x3D4D51C2D82B14B1 * v68) >> 33) | ((v54 - 0x3D4D51C2D82B14B1 * v68) << 31));
        v67 = *v62++;
        v53 = 0x9E3779B185EBCA87 * (((v53 - 0x3D4D51C2D82B14B1 * v67) >> 33) | ((v53 - 0x3D4D51C2D82B14B1 * v67) << 31));
        v66 = *v62;
        v61 = (v62 + 1);
        v52 = 0x9E3779B185EBCA87 * (__PAIR128__(v52 - 0x3D4D51C2D82B14B1 * v66, v52 - 0x3D4D51C2D82B14B1 * v66) >> 33);
      }

      while (v61 <= v60 - 32);
      v56 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((v55 >> 63) | (2 * v55)) + ((v54 >> 57) | (v54 << 7)) + ((v53 >> 52) | (v53 << 12)) + ((v52 >> 46) | (v52 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v55) >> 33) | (0x93EA75A780000000 * v55)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v54) >> 33) | (0x93EA75A780000000 * v54)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v53) >> 33) | (0x93EA75A780000000 * v53)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v52) >> 33) | (0x93EA75A780000000 * v52)))) - 0x7A1435883D4D519DLL;
    }

    else
    {
      v56 = a3 + 0x27D4EB2F165667C5;
    }

    v57 = v56 + a2;
    while ((v61 + 2) <= v60)
    {
      v58 = v57 ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * *v61) >> 33) | (0x93EA75A780000000 * *v61)));
      v57 = 0x9E3779B185EBCA87 * (__PAIR128__(v58, v58) >> 37) - 0x7A1435883D4D519DLL;
      v61 += 2;
    }

    if ((v61 + 1) <= v60)
    {
      v57 = 0xC2B2AE3D27D4EB4FLL * (__PAIR128__(v57 ^ (0x9E3779B185EBCA87 * *v61), v57 ^ (0x9E3779B185EBCA87 * *v61)) >> 41) + 0x165667B19E3779F9;
      ++v61;
    }

    while (v61 < v60)
    {
      v57 = 0x9E3779B185EBCA87 * (__PAIR128__(v57 ^ (0x27D4EB2F165667C5 * *v61), v57 ^ (0x27D4EB2F165667C5 * *v61)) >> 53);
      v61 = (v61 + 1);
    }

    v59 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v57 ^ (v57 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v57 ^ (v57 >> 33))) >> 29));
    return v59 ^ HIDWORD(v59);
  }

  else
  {
    v49 = a1;
    v48 = a1 + a2;
    if (a2 >= 0x20)
    {
      v43 = a3 + 0x60EA27EEADC0B5D6;
      v42 = a3 - 0x3D4D51C2D82B14B1;
      v41 = a3;
      v40 = a3 + 0x61C8864E7A143579;
      do
      {
        v73 = XXH_swap64(*v49);
        v50 = v49 + 1;
        v43 = 0x9E3779B185EBCA87 * (((v43 - 0x3D4D51C2D82B14B1 * v73) >> 33) | ((v43 - 0x3D4D51C2D82B14B1 * v73) << 31));
        v72 = XXH_swap64(*v50++);
        v42 = 0x9E3779B185EBCA87 * (((v42 - 0x3D4D51C2D82B14B1 * v72) >> 33) | ((v42 - 0x3D4D51C2D82B14B1 * v72) << 31));
        v71 = XXH_swap64(*v50++);
        v41 = 0x9E3779B185EBCA87 * (((v41 - 0x3D4D51C2D82B14B1 * v71) >> 33) | ((v41 - 0x3D4D51C2D82B14B1 * v71) << 31));
        v70 = XXH_swap64(*v50);
        v49 = v50 + 1;
        v40 = 0x9E3779B185EBCA87 * (__PAIR128__(v40 - 0x3D4D51C2D82B14B1 * v70, v40 - 0x3D4D51C2D82B14B1 * v70) >> 33);
      }

      while (v49 <= v48 - 32);
      v44 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((v43 >> 63) | (2 * v43)) + ((v42 >> 57) | (v42 << 7)) + ((v41 >> 52) | (v41 << 12)) + ((v40 >> 46) | (v40 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v43) >> 33) | (0x93EA75A780000000 * v43)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v42) >> 33) | (0x93EA75A780000000 * v42)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v41) >> 33) | (0x93EA75A780000000 * v41)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v40) >> 33) | (0x93EA75A780000000 * v40)))) - 0x7A1435883D4D519DLL;
    }

    else
    {
      v44 = a3 + 0x27D4EB2F165667C5;
    }

    v45 = v44 + a2;
    while ((v49 + 1) <= v48)
    {
      v74 = XXH_swap64(*v49);
      v46 = v45 ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v74) >> 33) | (0x93EA75A780000000 * v74)));
      v45 = 0x9E3779B185EBCA87 * (__PAIR128__(v46, v46) >> 37) - 0x7A1435883D4D519DLL;
      ++v49;
    }

    if (v49 + 4 <= v48)
    {
      v63 = XXH_swap32(*v49);
      v45 = 0xC2B2AE3D27D4EB4FLL * (__PAIR128__(v45 ^ (0x9E3779B185EBCA87 * v63), v45 ^ (0x9E3779B185EBCA87 * v63)) >> 41) + 0x165667B19E3779F9;
      v49 = (v49 + 4);
    }

    while (v49 < v48)
    {
      v45 = 0x9E3779B185EBCA87 * (__PAIR128__(v45 ^ (0x27D4EB2F165667C5 * *v49), v45 ^ (0x27D4EB2F165667C5 * *v49)) >> 53);
      v49 = (v49 + 1);
    }

    v47 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v45 ^ (v45 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v45 ^ (v45 >> 33))) >> 29));
    return v47 ^ HIDWORD(v47);
  }
}

uint64_t XXH32_reset(uint64_t a1, int a2)
{
  v5 = a1;
  v4 = a2;
  memset(__b, 0, sizeof(__b));
  __b[2] = v4;
  __b[3] = v4 + 606290984;
  __b[4] = v4 - 2048144777;
  __b[5] = v4;
  __b[6] = v4 + 1640531535;
  __memcpy_chk();
  return 0;
}

uint64_t XXH64_reset(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  memset(__b, 0, sizeof(__b));
  __b[1] = v4;
  __b[2] = v4 + 0x60EA27EEADC0B5D6;
  __b[3] = v4 - 0x3D4D51C2D82B14B1;
  __b[4] = v4;
  __b[5] = v4 + 0x61C8864E7A143579;
  __memcpy_chk();
  return 0;
}

uint64_t XXH32_update(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v26 = a3;
  if (g_one == 1)
  {
    v43 = a3;
    v41 = a2;
    v40 = a2 + a3;
    *a1 += a3;
    if (*(a1 + 44) + a3 >= 0x10)
    {
      if (*(a1 + 44))
      {
        v4 = a1 + 28 + *(a1 + 44);
        v5 = *(a1 + 44);
        XXH_memcpy();
        *(a1 + 12) -= 2048144777 * XXH_read32((a1 + 28));
        *(a1 + 12) = (*(a1 + 12) >> 19) | (*(a1 + 12) << 13);
        *(a1 + 12) *= -1640531535;
        *(a1 + 16) -= 2048144777 * XXH_read32((a1 + 32));
        *(a1 + 16) = (*(a1 + 16) >> 19) | (*(a1 + 16) << 13);
        *(a1 + 16) *= -1640531535;
        *(a1 + 20) -= 2048144777 * XXH_read32((a1 + 36));
        *(a1 + 20) = (*(a1 + 20) >> 19) | (*(a1 + 20) << 13);
        *(a1 + 20) *= -1640531535;
        *(a1 + 24) -= 2048144777 * XXH_read32((a1 + 40));
        *(a1 + 24) = (*(a1 + 24) >> 19) | (*(a1 + 24) << 13);
        *(a1 + 24) *= -1640531535;
        v41 = (v41 + (16 - *(a1 + 44)));
        *(a1 + 44) = 0;
      }

      if (v41 <= v40 - 16)
      {
        v39 = *(a1 + 12);
        v38 = *(a1 + 16);
        v37 = *(a1 + 20);
        v36 = *(a1 + 24);
        do
        {
          v25 = XXH_read32(v41);
          v39 = -1640531535 * (((v39 - 2048144777 * v25) >> 19) | ((v39 - 2048144777 * v25) << 13));
          v42 = v41 + 1;
          v24 = XXH_read32(v42);
          v38 = -1640531535 * (((v38 - 2048144777 * v24) >> 19) | ((v38 - 2048144777 * v24) << 13));
          v23 = XXH_read32(++v42);
          v37 = -1640531535 * (((v37 - 2048144777 * v23) >> 19) | ((v37 - 2048144777 * v23) << 13));
          v22 = XXH_read32(++v42);
          v36 = -1640531535 * (((v36 - 2048144777 * v22) >> 19) | ((v36 - 2048144777 * v22) << 13));
          v41 = v42 + 1;
        }

        while (v41 <= v40 - 16);
        *(a1 + 12) = v39;
        *(a1 + 16) = v38;
        *(a1 + 20) = v37;
        *(a1 + 24) = v36;
      }

      if (v41 < v40)
      {
        XXH_memcpy();
        *(a1 + 44) = v40 - v41;
      }
    }

    else
    {
      v3 = *(a1 + 44);
      XXH_memcpy();
      *(a1 + 44) += v43;
    }
  }

  else
  {
    v34 = a2;
    v33 = a2 + a3;
    *a1 += a3;
    if (*(a1 + 44) + a3 >= 0x10)
    {
      if (*(a1 + 44))
      {
        v7 = a1 + 28 + *(a1 + 44);
        v8 = *(a1 + 44);
        XXH_memcpy();
        v9 = XXH_read32((a1 + 28));
        *(a1 + 12) -= 2048144777 * XXH_swap32(v9);
        *(a1 + 12) = (*(a1 + 12) >> 19) | (*(a1 + 12) << 13);
        *(a1 + 12) *= -1640531535;
        v10 = XXH_read32((a1 + 32));
        *(a1 + 16) -= 2048144777 * XXH_swap32(v10);
        *(a1 + 16) = (*(a1 + 16) >> 19) | (*(a1 + 16) << 13);
        *(a1 + 16) *= -1640531535;
        v11 = XXH_read32((a1 + 36));
        *(a1 + 20) -= 2048144777 * XXH_swap32(v11);
        *(a1 + 20) = (*(a1 + 20) >> 19) | (*(a1 + 20) << 13);
        *(a1 + 20) *= -1640531535;
        v12 = XXH_read32((a1 + 40));
        *(a1 + 24) -= 2048144777 * XXH_swap32(v12);
        *(a1 + 24) = (*(a1 + 24) >> 19) | (*(a1 + 24) << 13);
        *(a1 + 24) *= -1640531535;
        v34 = (a2 + (16 - *(a1 + 44)));
        *(a1 + 44) = 0;
      }

      if (v34 <= v33 - 16)
      {
        v32 = *(a1 + 12);
        v31 = *(a1 + 16);
        v30 = *(a1 + 20);
        v29 = *(a1 + 24);
        do
        {
          v13 = XXH_read32(v34);
          v21 = XXH_swap32(v13);
          v32 = -1640531535 * (((v32 - 2048144777 * v21) >> 19) | ((v32 - 2048144777 * v21) << 13));
          v35 = v34 + 1;
          v14 = XXH_read32(v35);
          v20 = XXH_swap32(v14);
          v31 = -1640531535 * (((v31 - 2048144777 * v20) >> 19) | ((v31 - 2048144777 * v20) << 13));
          v15 = XXH_read32(++v35);
          v19 = XXH_swap32(v15);
          v30 = -1640531535 * (((v30 - 2048144777 * v19) >> 19) | ((v30 - 2048144777 * v19) << 13));
          v16 = XXH_read32(++v35);
          v18 = XXH_swap32(v16);
          v29 = -1640531535 * (((v29 - 2048144777 * v18) >> 19) | ((v29 - 2048144777 * v18) << 13));
          v34 = v35 + 1;
        }

        while (v34 <= v33 - 16);
        *(a1 + 12) = v32;
        *(a1 + 16) = v31;
        *(a1 + 20) = v30;
        *(a1 + 24) = v29;
      }

      if (v34 < v33)
      {
        XXH_memcpy();
        *(a1 + 44) = v33 - v34;
      }
    }

    else
    {
      v6 = *(a1 + 44);
      XXH_memcpy();
      *(a1 + 44) += v26;
    }
  }

  return 0;
}

uint64_t XXH32_digest(uint64_t a1)
{
  if (g_one == 1)
  {
    v15 = (a1 + 28);
    v14 = a1 + 28 + *(a1 + 44);
    if (*a1 >= 0x10uLL)
    {
      v11 = ((*(a1 + 12) >> 31) | (2 * *(a1 + 12))) + ((*(a1 + 16) >> 25) | (*(a1 + 16) << 7)) + ((*(a1 + 20) >> 20) | (*(a1 + 20) << 12)) + ((*(a1 + 24) >> 14) | (*(a1 + 24) << 18));
    }

    else
    {
      v11 = *(a1 + 8) + 374761393;
    }

    v12 = v11 + *a1;
    while ((v15 + 1) <= v14)
    {
      v4 = XXH_read32(v15);
      v12 = 668265263 * (((v12 - 1028477379 * v4) >> 15) | ((v12 - 1028477379 * v4) << 17));
      ++v15;
    }

    while (v15 < v14)
    {
      v12 = -1640531535 * (((v12 + 374761393 * *v15) >> 21) | ((v12 + 374761393 * *v15) << 11));
      v15 = (v15 + 1);
    }

    v13 = -1028477379 * ((-2048144777 * (v12 ^ (v12 >> 15))) ^ ((-2048144777 * (v12 ^ (v12 >> 15))) >> 13));
    return v13 ^ HIWORD(v13);
  }

  else
  {
    v10 = (a1 + 28);
    v9 = a1 + 28 + *(a1 + 44);
    if (*a1 < 0x10uLL)
    {
      v6 = *(a1 + 8) + 374761393;
    }

    else
    {
      v6 = ((*(a1 + 12) >> 31) | (2 * *(a1 + 12))) + ((*(a1 + 16) >> 25) | (*(a1 + 16) << 7)) + ((*(a1 + 20) >> 20) | (*(a1 + 20) << 12)) + ((*(a1 + 24) >> 14) | (*(a1 + 24) << 18));
    }

    v7 = v6 + *a1;
    while ((v10 + 1) <= v9)
    {
      v1 = XXH_read32(v10);
      v3 = XXH_swap32(v1);
      v7 = 668265263 * (((v7 - 1028477379 * v3) >> 15) | ((v7 - 1028477379 * v3) << 17));
      ++v10;
    }

    while (v10 < v9)
    {
      v7 = -1640531535 * (((v7 + 374761393 * *v10) >> 21) | ((v7 + 374761393 * *v10) << 11));
      v10 = (v10 + 1);
    }

    v8 = -1028477379 * ((-2048144777 * (v7 ^ (v7 >> 15))) ^ ((-2048144777 * (v7 ^ (v7 >> 15))) >> 13));
    return v8 ^ HIWORD(v8);
  }
}

uint64_t XXH64_update(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = a3;
  if (g_one == 1)
  {
    v43 = a3;
    v41 = a2;
    v40 = a2 + a3;
    *a1 += a3;
    if (*(a1 + 80) + a3 >= 0x20)
    {
      if (*(a1 + 80))
      {
        v4 = a1 + 48 + *(a1 + 80);
        v5 = *(a1 + 80);
        XXH_memcpy();
        *(a1 + 16) -= 0x3D4D51C2D82B14B1 * XXH_read64(a1 + 48);
        *(a1 + 16) = (*(a1 + 16) >> 33) | (*(a1 + 16) << 31);
        *(a1 + 16) *= 0x9E3779B185EBCA87;
        *(a1 + 24) -= 0x3D4D51C2D82B14B1 * XXH_read64(a1 + 56);
        *(a1 + 24) = (*(a1 + 24) >> 33) | (*(a1 + 24) << 31);
        *(a1 + 24) *= 0x9E3779B185EBCA87;
        *(a1 + 32) -= 0x3D4D51C2D82B14B1 * XXH_read64(a1 + 64);
        *(a1 + 32) = (*(a1 + 32) >> 33) | (*(a1 + 32) << 31);
        *(a1 + 32) *= 0x9E3779B185EBCA87;
        *(a1 + 40) -= 0x3D4D51C2D82B14B1 * XXH_read64(a1 + 72);
        *(a1 + 40) = (*(a1 + 40) >> 33) | (*(a1 + 40) << 31);
        *(a1 + 40) *= 0x9E3779B185EBCA87;
        v41 += (32 - *(a1 + 80));
        *(a1 + 80) = 0;
      }

      if (v41 + 32 <= v40)
      {
        v39 = *(a1 + 16);
        v38 = *(a1 + 24);
        v37 = *(a1 + 32);
        v36 = *(a1 + 40);
        do
        {
          v25 = XXH_read64(v41);
          v39 = 0x9E3779B185EBCA87 * (((v39 - 0x3D4D51C2D82B14B1 * v25) >> 33) | ((v39 - 0x3D4D51C2D82B14B1 * v25) << 31));
          v42 = v41 + 8;
          v24 = XXH_read64(v42);
          v38 = 0x9E3779B185EBCA87 * (((v38 - 0x3D4D51C2D82B14B1 * v24) >> 33) | ((v38 - 0x3D4D51C2D82B14B1 * v24) << 31));
          v42 += 8;
          v23 = XXH_read64(v42);
          v37 = 0x9E3779B185EBCA87 * (((v37 - 0x3D4D51C2D82B14B1 * v23) >> 33) | ((v37 - 0x3D4D51C2D82B14B1 * v23) << 31));
          v42 += 8;
          v22 = XXH_read64(v42);
          v36 = 0x9E3779B185EBCA87 * (((v36 - 0x3D4D51C2D82B14B1 * v22) >> 33) | ((v36 - 0x3D4D51C2D82B14B1 * v22) << 31));
          v41 = v42 + 8;
        }

        while (v41 <= v40 - 32);
        *(a1 + 16) = v39;
        *(a1 + 24) = v38;
        *(a1 + 32) = v37;
        *(a1 + 40) = v36;
      }

      if (v41 < v40)
      {
        XXH_memcpy();
        *(a1 + 80) = v40 - v41;
      }
    }

    else
    {
      v3 = *(a1 + 80);
      XXH_memcpy();
      *(a1 + 80) += v43;
    }
  }

  else
  {
    v34 = a2;
    v33 = a2 + a3;
    *a1 += a3;
    if (*(a1 + 80) + a3 >= 0x20)
    {
      if (*(a1 + 80))
      {
        v7 = a1 + 48 + *(a1 + 80);
        v8 = *(a1 + 80);
        XXH_memcpy();
        v9 = XXH_read64(a1 + 48);
        *(a1 + 16) -= 0x3D4D51C2D82B14B1 * XXH_swap64(v9);
        *(a1 + 16) = (*(a1 + 16) >> 33) | (*(a1 + 16) << 31);
        *(a1 + 16) *= 0x9E3779B185EBCA87;
        v10 = XXH_read64(a1 + 56);
        *(a1 + 24) -= 0x3D4D51C2D82B14B1 * XXH_swap64(v10);
        *(a1 + 24) = (*(a1 + 24) >> 33) | (*(a1 + 24) << 31);
        *(a1 + 24) *= 0x9E3779B185EBCA87;
        v11 = XXH_read64(a1 + 64);
        *(a1 + 32) -= 0x3D4D51C2D82B14B1 * XXH_swap64(v11);
        *(a1 + 32) = (*(a1 + 32) >> 33) | (*(a1 + 32) << 31);
        *(a1 + 32) *= 0x9E3779B185EBCA87;
        v12 = XXH_read64(a1 + 72);
        *(a1 + 40) -= 0x3D4D51C2D82B14B1 * XXH_swap64(v12);
        *(a1 + 40) = (*(a1 + 40) >> 33) | (*(a1 + 40) << 31);
        *(a1 + 40) *= 0x9E3779B185EBCA87;
        v34 = a2 + (32 - *(a1 + 80));
        *(a1 + 80) = 0;
      }

      if (v34 + 32 <= v33)
      {
        v32 = *(a1 + 16);
        v31 = *(a1 + 24);
        v30 = *(a1 + 32);
        v29 = *(a1 + 40);
        do
        {
          v13 = XXH_read64(v34);
          v21 = XXH_swap64(v13);
          v32 = 0x9E3779B185EBCA87 * (((v32 - 0x3D4D51C2D82B14B1 * v21) >> 33) | ((v32 - 0x3D4D51C2D82B14B1 * v21) << 31));
          v35 = v34 + 8;
          v14 = XXH_read64(v35);
          v20 = XXH_swap64(v14);
          v31 = 0x9E3779B185EBCA87 * (((v31 - 0x3D4D51C2D82B14B1 * v20) >> 33) | ((v31 - 0x3D4D51C2D82B14B1 * v20) << 31));
          v35 += 8;
          v15 = XXH_read64(v35);
          v19 = XXH_swap64(v15);
          v30 = 0x9E3779B185EBCA87 * (((v30 - 0x3D4D51C2D82B14B1 * v19) >> 33) | ((v30 - 0x3D4D51C2D82B14B1 * v19) << 31));
          v35 += 8;
          v16 = XXH_read64(v35);
          v18 = XXH_swap64(v16);
          v29 = 0x9E3779B185EBCA87 * (((v29 - 0x3D4D51C2D82B14B1 * v18) >> 33) | ((v29 - 0x3D4D51C2D82B14B1 * v18) << 31));
          v34 = v35 + 8;
        }

        while (v34 <= v33 - 32);
        *(a1 + 16) = v32;
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        *(a1 + 40) = v29;
      }

      if (v34 < v33)
      {
        XXH_memcpy();
        *(a1 + 80) = v33 - v34;
      }
    }

    else
    {
      v6 = *(a1 + 80);
      XXH_memcpy();
      *(a1 + 80) += v26;
    }
  }

  return 0;
}

unint64_t XXH64_digest(uint64_t a1)
{
  if (g_one == 1)
  {
    v27 = (a1 + 48);
    v26 = a1 + 48 + *(a1 + 80);
    if (*a1 >= 0x20uLL)
    {
      v21 = *(a1 + 24);
      v20 = *(a1 + 32);
      v1 = *(a1 + 40);
      v22 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((*(a1 + 16) >> 63) | (2 * *(a1 + 16))) + ((v21 >> 57) | (v21 << 7)) + ((v20 >> 52) | (v20 << 12)) + ((v1 >> 46) | (v1 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * *(a1 + 16)) >> 33) | (0x93EA75A780000000 * *(a1 + 16))))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v21) >> 33) | (0x93EA75A780000000 * v21)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v20) >> 33) | (0x93EA75A780000000 * v20)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v1) >> 33) | (0x93EA75A780000000 * v1)))) - 0x7A1435883D4D519DLL;
    }

    else
    {
      v22 = *(a1 + 8) + 0x27D4EB2F165667C5;
    }

    v23 = v22 + *a1;
    while ((v27 + 2) <= v26)
    {
      v10 = XXH_read64(v27);
      v24 = v23 ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v10) >> 33) | (0x93EA75A780000000 * v10)));
      v23 = 0x9E3779B185EBCA87 * ((v24 >> 37) | (v24 << 27)) - 0x7A1435883D4D519DLL;
      v27 += 2;
    }

    if ((v27 + 1) <= v26)
    {
      v9 = XXH_read32(v27);
      v23 = 0xC2B2AE3D27D4EB4FLL * (((v23 ^ (0x9E3779B185EBCA87 * v9)) >> 41) | ((v23 ^ (0x9E3779B185EBCA87 * v9)) << 23)) + 0x165667B19E3779F9;
      ++v27;
    }

    while (v27 < v26)
    {
      v23 = 0x9E3779B185EBCA87 * (((v23 ^ (0x27D4EB2F165667C5 * *v27)) >> 53) | ((v23 ^ (0x27D4EB2F165667C5 * *v27)) << 11));
      v27 = (v27 + 1);
    }

    v25 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v23 ^ (v23 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v23 ^ (v23 >> 33))) >> 29));
    return v25 ^ HIDWORD(v25);
  }

  else
  {
    v19 = (a1 + 48);
    v18 = a1 + 48 + *(a1 + 80);
    if (*a1 < 0x20uLL)
    {
      v16 = *(a1 + 8) + 0x27D4EB2F165667C5;
    }

    else
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      v13 = *(a1 + 32);
      v2 = *(a1 + 40);
      v16 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((v15 >> 63) | (2 * v15)) + ((v14 >> 57) | (v14 << 7)) + ((v13 >> 52) | (v13 << 12)) + ((v2 >> 46) | (v2 << 18))) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v15) >> 33) | (0x93EA75A780000000 * v15)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v14) >> 33) | (0x93EA75A780000000 * v14)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v13) >> 33) | (0x93EA75A780000000 * v13)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v2) >> 33) | (0x93EA75A780000000 * v2)))) - 0x7A1435883D4D519DLL;
    }

    v17 = v16 + *a1;
    while ((v19 + 2) <= v18)
    {
      v3 = XXH_read64(v19);
      v8 = XXH_swap64(v3);
      v12 = 0x9E3779B185EBCA87 * (((0xC2B2AE3D27D4EB4FLL * v8) >> 33) | (0x93EA75A780000000 * v8));
      v17 = 0x9E3779B185EBCA87 * (((v17 ^ v12) >> 37) | ((v17 ^ v12) << 27)) - 0x7A1435883D4D519DLL;
      v19 += 2;
    }

    if ((v19 + 1) <= v18)
    {
      v4 = XXH_read32(v19);
      v7 = XXH_swap32(v4);
      v17 = 0xC2B2AE3D27D4EB4FLL * (((v17 ^ (0x9E3779B185EBCA87 * v7)) >> 41) | ((v17 ^ (0x9E3779B185EBCA87 * v7)) << 23)) + 0x165667B19E3779F9;
      ++v19;
    }

    while (v19 < v18)
    {
      v17 = 0x9E3779B185EBCA87 * (((v17 ^ (0x27D4EB2F165667C5 * *v19)) >> 53) | ((v17 ^ (0x27D4EB2F165667C5 * *v19)) << 11));
      v19 = (v19 + 1);
    }

    v5 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v17 ^ (v17 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v17 ^ (v17 >> 33))) >> 29));
    return v5 ^ HIDWORD(v5);
  }
}

uint64_t XXH32_canonicalFromHash(uint64_t a1, unsigned int a2)
{
  if (g_one)
  {
    XXH_swap32(a2);
  }

  return __memcpy_chk();
}

uint64_t XXH64_canonicalFromHash(uint64_t a1, unint64_t a2)
{
  if (g_one)
  {
    XXH_swap64(a2);
  }

  return __memcpy_chk();
}

uint64_t XXH_readBE32(unsigned int *a1)
{
  if (g_one)
  {
    v1 = XXH_read32(a1);
    return XXH_swap32(v1);
  }

  else
  {
    return XXH_read32(a1);
  }
}

uint64_t XXH_readBE64(uint64_t a1)
{
  if (!g_one)
  {
    return XXH_read64(a1);
  }

  v1 = XXH_read64(a1);
  return XXH_swap64(v1);
}

void sub_2555C2D18(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 40) = a1;
  *(v10 - 44) = a2;
  objc_destroyWeak((v10 - 32));
  _Unwind_Resume(*(v10 - 40));
}

void sub_2555C5B78(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 32) = a1;
  *(v10 - 36) = a2;
  objc_destroyWeak((v10 - 24));
  _Unwind_Resume(*(v10 - 32));
}

void sub_2555C61E4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 40) = a1;
  *(v9 - 44) = a2;
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(*(v9 - 40));
}

void sub_2555C89F8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 64) = a1;
  *(v10 - 68) = a2;
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(*(v10 - 64));
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

BOOL __CGSizeEqualToSize_0(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void sub_2555CC39C(uint64_t a1, int a2)
{
  *(v2 - 128) = a1;
  *(v2 - 132) = a2;
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(*(v2 - 128));
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_2555CD0D4(uint64_t a1, int a2)
{
  *(v2 - 104) = a1;
  *(v2 - 108) = a2;
  _Block_object_dispose((v2 - 88), 8);
  _Unwind_Resume(*(v2 - 104));
}

void sub_2555CF274(uint64_t a1, int a2)
{
  *(v2 - 216) = a1;
  *(v2 - 220) = a2;
  _Block_object_dispose((v2 - 136), 8);
  _Block_object_dispose((v2 - 104), 8);
  _Unwind_Resume(*(v2 - 216));
}

id UIImageWithContentsOfFile(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v9 = a2;
  v12 = &UIImageWithContentsOfFile_onceToken;
  v11 = 0;
  objc_storeStrong(&v11, &__block_literal_global_36);
  if (*v12 != -1)
  {
    dispatch_once(v12, v11);
  }

  objc_storeStrong(&v11, 0);
  v8 = 0;
  [UIImageWithContentsOfFile_lock lock];
  if (v9)
  {
    [UIImageWithContentsOfFile_pathToWeakImageMap removeObjectForKey:location];
  }

  else
  {
    v2 = [UIImageWithContentsOfFile_pathToWeakImageMap objectForKey:location];
    v3 = v8;
    v8 = v2;
    MEMORY[0x277D82BD8](v3);
  }

  [UIImageWithContentsOfFile_lock unlock];
  if (!v8)
  {
    v4 = objc_alloc(MEMORY[0x277D755B8]);
    v8 = [v4 initWithContentsOfFile:location];
    MEMORY[0x277D82BD8](0);
    [UIImageWithContentsOfFile_lock lock];
    [UIImageWithContentsOfFile_pathToWeakImageMap setObject:v8 forKey:location];
    [UIImageWithContentsOfFile_lock unlock];
  }

  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __UIImageWithContentsOfFile_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v2 = UIImageWithContentsOfFile_pathToWeakImageMap;
  UIImageWithContentsOfFile_pathToWeakImageMap = v1;
  MEMORY[0x277D82BD8](v2);
  v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v4 = UIImageWithContentsOfFile_lock;
  UIImageWithContentsOfFile_lock = v3;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t LoadCentralDirectoryRecord(uint64_t a1)
{
  v22 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v17 = zip64local_SearchCentralDir64(a1, *(a1 + 88));
  if (v17)
  {
    v8 = 1;
  }

  else
  {
    v17 = zip64local_SearchCentralDir(v22, *(v22 + 88));
  }

  if (v8)
  {
    v7 = 0;
    if (call_zseek64(v22, *(v22 + 88), v17, 0))
    {
      v21 = -1;
    }

    if (zip64local_getLong(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    if (zip64local_getLong64(v22, *(v22 + 88), &v7))
    {
      v21 = -1;
    }

    if (zip64local_getShort(v22, *(v22 + 88), &v11))
    {
      v21 = -1;
    }

    if (zip64local_getShort(v22, *(v22 + 88), &v10))
    {
      v21 = -1;
    }

    if (zip64local_getLong(v22, *(v22 + 88), &v15))
    {
      v21 = -1;
    }

    if (zip64local_getLong(v22, *(v22 + 88), &v14))
    {
      v21 = -1;
    }

    if (zip64local_getLong64(v22, *(v22 + 88), &v13))
    {
      v21 = -1;
    }

    if (zip64local_getLong64(v22, *(v22 + 88), &v12))
    {
      v21 = -1;
    }

    if (v12 != v13 || v14 || v15)
    {
      v21 = -103;
    }

    if (zip64local_getLong64(v22, *(v22 + 88), &v19))
    {
      v21 = -1;
    }

    if (zip64local_getLong64(v22, *(v22 + 88), &v18))
    {
      v21 = -1;
    }

    v9 = 0;
  }

  else
  {
    if (call_zseek64(v22, *(v22 + 88), v17, 0))
    {
      v21 = -1;
    }

    if (zip64local_getLong(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    if (zip64local_getShort(v22, *(v22 + 88), &v15))
    {
      v21 = -1;
    }

    if (zip64local_getShort(v22, *(v22 + 88), &v14))
    {
      v21 = -1;
    }

    v13 = 0;
    if (zip64local_getShort(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    else
    {
      v13 = v16;
    }

    v12 = 0;
    if (zip64local_getShort(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    else
    {
      v12 = v16;
    }

    if (v12 != v13 || v14 || v15)
    {
      v21 = -103;
    }

    v19 = 0;
    if (zip64local_getLong(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    else
    {
      v19 = v16;
    }

    v18 = 0;
    if (zip64local_getLong(v22, *(v22 + 88), &v16))
    {
      v21 = -1;
    }

    else
    {
      v18 = v16;
    }

    if (zip64local_getShort(v22, *(v22 + 88), &v9))
    {
      v21 = -1;
    }
  }

  if (v17 < v18 + v19 && !v21)
  {
    v21 = -103;
  }

  if (v21)
  {
    (*(v22 + 40))(*(v22 + 56), *(v22 + 88));
    return -1;
  }

  else
  {
    if (v9)
    {
      v1 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
      *(v22 + 65944) = v1;
      if (*(v22 + 65944))
      {
        v9 = (*(v22 + 8))(*(v22 + 56), *(v22 + 88), *(v22 + 65944), v9);
        *(*(v22 + 65944) + v9) = 0;
      }
    }

    v20 = v17 - (v18 + v19);
    *(v22 + 65928) = v20;
    v6 = v19;
    v5 = malloc_type_malloc(0xFF0uLL, 0x55A42253uLL);
    if (call_zseek64(v22, *(v22 + 88), v18 + v20, 0))
    {
      v21 = -1;
    }

    while (1)
    {
      v3 = 0;
      if (v6)
      {
        v3 = v21 == 0;
      }

      if (!v3)
      {
        break;
      }

      v4 = 4080;
      if (v6 < 0xFF0)
      {
        v4 = v6;
      }

      if ((*(v22 + 8))(*(v22 + 56), *(v22 + 88), v5, v4) != v4)
      {
        v21 = -1;
      }

      if (!v21)
      {
        v21 = add_data_in_datablock((v22 + 96), v5, v4);
      }

      v6 -= v4;
    }

    if (v5)
    {
      free(v5);
    }

    *(v22 + 65920) = v20;
    *(v22 + 65936) = v12;
    if (call_zseek64(v22, *(v22 + 88), v18 + v20, 0))
    {
      return -1;
    }

    return v21;
  }
}

uint64_t zip64local_SearchCentralDir64(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0xFFFFLL;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (call_zseek64(a1, a2, 0, 2u))
  {
    return 0;
  }

  v12 = call_ztell64(v15, v14);
  if (v10 > v12)
  {
    v10 = v12;
  }

  v13 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL);
  if (!v13)
  {
    return 0;
  }

  v11 = 4;
  do
  {
    if (v11 >= v10)
    {
      break;
    }

    if (v11 + 1024 > v10)
    {
      v11 = v10;
    }

    else
    {
      v11 += 1024;
    }

    v6 = v12 - v11;
    v4 = v11 <= 0x404 ? v11 : 1028;
    if (call_zseek64(v15, v14, v6, 0) || (*(v15 + 8))(*(v15 + 56), v14, v13, v4) != v4)
    {
      break;
    }

    v5 = v4 - 3;
    while (1)
    {
      v2 = v5--;
      if (v2 <= 0)
      {
        break;
      }

      if (v13[v5] == 80 && v13[v5 + 1] == 75 && v13[v5 + 2] == 6 && v13[v5 + 3] == 7)
      {
        v9 = v6 + v5;
        break;
      }
    }
  }

  while (!v9);
  free(v13);
  if (!v9)
  {
    return 0;
  }

  if (call_zseek64(v15, v14, v9, 0))
  {
    return 0;
  }

  if (zip64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (zip64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8)
  {
    return 0;
  }

  if (zip64local_getLong64(v15, v14, &v7))
  {
    return 0;
  }

  if (zip64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8 != 1)
  {
    return 0;
  }

  if (call_zseek64(v15, v14, v7, 0))
  {
    return 0;
  }

  if (zip64local_getLong(v15, v14, &v8))
  {
    return 0;
  }

  if (v8 == 101075792)
  {
    return v7;
  }

  return 0;
}

uint64_t zip64local_SearchCentralDir(uint64_t a1, uint64_t a2)
{
  v8 = 0xFFFFLL;
  v7 = 0;
  if (call_zseek64(a1, a2, 0, 2u))
  {
    return 0;
  }

  v10 = call_ztell64(a1, a2);
  if (v10 < 0xFFFF)
  {
    v8 = v10;
  }

  v11 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL);
  if (!v11)
  {
    return 0;
  }

  v9 = 4;
  do
  {
    if (v9 >= v8)
    {
      break;
    }

    if (v9 + 1024 <= v8)
    {
      v9 += 1024;
    }

    else
    {
      v9 = v8;
    }

    v6 = v10 - v9;
    v4 = v9 <= 0x404 ? v9 : 1028;
    if (call_zseek64(a1, a2, v6, 0) || (*(a1 + 8))(*(a1 + 56), a2, v11, v4) != v4)
    {
      break;
    }

    v5 = v4 - 3;
    while (1)
    {
      v2 = v5--;
      if (v2 <= 0)
      {
        break;
      }

      if (v11[v5] == 80 && v11[v5 + 1] == 75 && v11[v5 + 2] == 5 && v11[v5 + 3] == 6)
      {
        v7 = v6 + v5;
        break;
      }
    }
  }

  while (!v7);
  free(v11);
  return v7;
}

uint64_t zip64local_getLong(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = zip64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 8;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 16;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 24;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t zip64local_getLong64(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = zip64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 8;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 16;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 24;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 32;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 40;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 48;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 56;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t zip64local_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  Byte = zip64local_getByte(a1, a2, &v5);
  v6 = v5;
  if (!Byte)
  {
    Byte = zip64local_getByte(v9, v8, &v5);
  }

  v6 += v5 << 8;
  if (Byte)
  {
    *v7 = 0;
  }

  else
  {
    *v7 = v6;
  }

  return Byte;
}

uint64_t add_data_in_datablock(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (a1[1] || (new_datablock = allocate_new_datablock(), a1[1] = new_datablock, (*a1 = new_datablock) != 0))
    {
      v9 = a1[1];
      v8 = a2;
      while (a3)
      {
        if (!v9[1])
        {
          *v9 = allocate_new_datablock();
          if (!*v9)
          {
            return -104;
          }

          v9 = *v9;
          a1[1] = v9;
        }

        if (v9[1] >= a3)
        {
          v7 = a3;
        }

        else
        {
          v7 = v9[1];
        }

        v5 = v9 + v9[2] + 32;
        for (i = 0; i < v7; ++i)
        {
          *(v5 + i) = *(v8 + i);
        }

        v9[2] += v7;
        v9[1] -= v7;
        v8 += v7;
        a3 -= v7;
      }

      return 0;
    }

    else
    {
      return -104;
    }
  }

  else
  {
    return -104;
  }
}

void *zipOpen3()
{
  v0 = MEMORY[0x28223BE20]();
  __dst[8244] = *MEMORY[0x277D85DE8];
  v11 = v0;
  v10 = v1;
  v9 = v2;
  __src = v3;
  bzero(__dst, 0x200uLL);
  CentralDirectoryRecord = 0;
  __dst[10] = 0;
  __dst[9] = 0;
  if (__src)
  {
    memcpy(__dst, __src, 0x58uLL);
  }

  else
  {
    fill_fopen64_filefunc(__dst);
  }

  if (v10)
  {
    v4 = 7;
  }

  else
  {
    v4 = 11;
  }

  __dst[11] = call_zopen64(__dst, v11, v4);
  if (__dst[11])
  {
    if (v10 == 1)
    {
      call_zseek64(__dst, __dst[11], 0, 2u);
    }

    __dst[8240] = call_ztell64(__dst, __dst[11]);
    LODWORD(__dst[14]) = 0;
    LODWORD(__dst[29]) = 0;
    __dst[8242] = 0;
    __dst[8241] = 0;
    init_linkedlist(&__dst[12]);
    v7 = malloc_type_malloc(0x101A0uLL, 0x10F0040857F4A3AuLL);
    if (v7)
    {
      __dst[8243] = 0;
      if (v10 == 2)
      {
        CentralDirectoryRecord = LoadCentralDirectoryRecord(__dst);
      }

      if (v9)
      {
        *v9 = __dst[8243];
      }

      if (CentralDirectoryRecord)
      {
        if (__dst[8243])
        {
          free(__dst[8243]);
        }

        free(v7);
        v12 = 0;
      }

      else
      {
        memcpy(v7, __dst, 0x101A0uLL);
        v12 = v7;
      }
    }

    else
    {
      (__dst[5])(__dst[7], __dst[11]);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v12;
}

void *init_linkedlist(void *result)
{
  result[1] = 0;
  *result = 0;
  return result;
}

void *zipOpen2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  if (!a4)
  {
    return zipOpen3();
  }

  memset(__b, 0, sizeof(__b));
  fill_zlib_filefunc64_32_def_from_filefunc32(__b, v6);
  return zipOpen3();
}

void *zipOpen2_64(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  if (!a4)
  {
    return zipOpen3();
  }

  memset(__b, 0, sizeof(__b));
  memcpy(__b, v6, 0x40uLL);
  __b[9] = 0;
  __b[10] = 0;
  return zipOpen3();
}

uint64_t Write_LocalFileHeader(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v6 = strlen(a2);
  v5 = a3;
  v7 = zip64local_putValue(a1, *(a1 + 88), 0x4034B50uLL, 4);
  if (!v7)
  {
    if (*(a1 + 65852))
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0x2DuLL, 2);
    }

    else
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0x14uLL, 2);
    }
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), *(a1 + 280), 2);
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), *(a1 + 288), 2);
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), *(a1 + 65832), 4);
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), 0, 4);
  }

  if (!v7)
  {
    if (*(a1 + 65852))
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0xFFFFFFFFuLL, 4);
    }

    else
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0, 4);
    }
  }

  if (!v7)
  {
    if (*(a1 + 65852))
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0xFFFFFFFFuLL, 4);
    }

    else
    {
      v7 = zip64local_putValue(a1, *(a1 + 88), 0, 4);
    }
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), v6, 2);
  }

  if (*(a1 + 65852))
  {
    v5 = a3 + 20;
  }

  if (!v7)
  {
    v7 = zip64local_putValue(a1, *(a1 + 88), v5, 2);
  }

  if (!v7 && v6 && (*(a1 + 16))(*(a1 + 56), *(a1 + 88), a2, v6) != v6)
  {
    v7 = -1;
  }

  if (!v7 && a3 && (*(a1 + 16))(*(a1 + 56), *(a1 + 88), a4, a3) != a3)
  {
    v7 = -1;
  }

  if (!v7 && *(a1 + 65852))
  {
    *(a1 + 65856) = call_ztell64(a1, *(a1 + 88));
    zip64local_putValue(a1, *(a1 + 88), 1uLL, 2);
    zip64local_putValue(a1, *(a1 + 88), 0x10uLL, 2);
    zip64local_putValue(a1, *(a1 + 88), 0, 8);
    return zip64local_putValue(a1, *(a1 + 88), 0, 8);
  }

  return v7;
}

uint64_t zip64local_putValue(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  for (i = 0; i < a4; ++i)
  {
    v9[i] = a3;
    a3 >>= 8;
  }

  if (a3)
  {
    for (j = 0; j < a4; ++j)
    {
      v9[j] = -1;
    }
  }

  if ((*(a1 + 16))(*(a1 + 56), a2, v9, a4) == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t zipOpenNewFileInZip4_64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, const char *a8, int a9, int a10, int a11, int a12, int a13, int a14, uint64_t a15, int a16, unint64_t a17, uint64_t a18, int a19)
{
  v39 = *MEMORY[0x277D85DE8];
  windowBits = a12;
  if (a1)
  {
    if (!a9 || a9 == 8)
    {
      if (*(a1 + 112) == 1 && (v21 = zipCloseFileInZip(a1)) != 0)
      {
        v37 = v21;
      }

      else
      {
        if (!a2)
        {
          a2 = "-";
        }

        if (a8)
        {
          v26 = strlen(a8);
        }

        else
        {
          v26 = 0;
        }

        v27 = strlen(a2);
        if (a3)
        {
          if (*(a3 + 24))
          {
            *(a1 + 65832) = *(a3 + 24);
          }

          else
          {
            *(a1 + 65832) = zip64local_TmzDateToDosDate(a3);
          }
        }

        else
        {
          *(a1 + 65832) = 0;
        }

        *(a1 + 280) = a18;
        if (a10 == 8 || a10 == 9)
        {
          *(a1 + 280) |= 2uLL;
        }

        if (a10 == 2)
        {
          *(a1 + 280) |= 4uLL;
        }

        if (a10 == 1)
        {
          *(a1 + 280) |= 6uLL;
        }

        if (a15)
        {
          *(a1 + 280) |= 1uLL;
        }

        *(a1 + 65840) = 0;
        *(a1 + 288) = a9;
        *(a1 + 65848) = 0;
        *(a1 + 232) = 0;
        *(a1 + 236) = 0;
        *(a1 + 292) = a11;
        *(a1 + 240) = call_ztell64(a1, *(a1 + 88));
        *(a1 + 264) = v27 + 46 + a7 + v26;
        *(a1 + 272) = 32;
        *(a1 + 248) = malloc_type_malloc(*(a1 + 272) + *(a1 + 264), 0x100004077774924uLL);
        *(a1 + 256) = a7;
        zip64local_putValue_inmemory(*(a1 + 248), 0x2014B50uLL, 4);
        zip64local_putValue_inmemory(*(a1 + 248) + 4, a17, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 6, 0x14uLL, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 8, *(a1 + 280), 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 10, *(a1 + 288), 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 12, *(a1 + 65832), 4);
        zip64local_putValue_inmemory(*(a1 + 248) + 16, 0, 4);
        zip64local_putValue_inmemory(*(a1 + 248) + 20, 0, 4);
        zip64local_putValue_inmemory(*(a1 + 248) + 24, 0, 4);
        zip64local_putValue_inmemory(*(a1 + 248) + 28, v27, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 30, a7, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 32, v26, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 34, 0, 2);
        if (a3)
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 36, *(a3 + 32), 2);
        }

        else
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 36, 0, 2);
        }

        if (a3)
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 38, *(a3 + 40), 4);
        }

        else
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 38, 0, 4);
        }

        if (*(a1 + 240) >= 0xFFFFFFFFuLL)
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 42, 0xFFFFFFFFuLL, 4);
        }

        else
        {
          zip64local_putValue_inmemory(*(a1 + 248) + 42, *(a1 + 240) - *(a1 + 65928), 4);
        }

        for (i = 0; i < v27; ++i)
        {
          *(*(a1 + 248) + 46 + i) = a2[i];
        }

        for (j = 0; j < a7; ++j)
        {
          *(*(a1 + 248) + 46 + v27 + j) = *(a6 + j);
        }

        for (k = 0; k < v26; ++k)
        {
          *(*(a1 + 248) + 46 + v27 + a7 + k) = a8[k];
        }

        if (*(a1 + 248))
        {
          *(a1 + 65852) = a19;
          *(a1 + 65864) = 0;
          *(a1 + 65872) = 0;
          *(a1 + 65856) = 0;
          v22 = Write_LocalFileHeader(a1, a2, a5, a4);
          *(a1 + 128) = 0;
          *(a1 + 152) = 0x10000;
          *(a1 + 144) = a1 + 296;
          *(a1 + 136) = 0;
          *(a1 + 160) = 0;
          *(a1 + 208) = 0;
          if (!v22 && *(a1 + 288) == 8 && !*(a1 + 292))
          {
            if (*(a1 + 288) == 8)
            {
              *(a1 + 184) = 0;
              *(a1 + 192) = 0;
              *(a1 + 200) = 0;
              if (a12 > 0)
              {
                windowBits = -a12;
              }

              v22 = deflateInit2_((a1 + 120), a10, 8, windowBits, a13, a14, "1.2.12", 112);
              if (!v22)
              {
                *(a1 + 232) = 8;
              }
            }

            else
            {
              *(a1 + 288);
            }
          }

          *(a1 + 65912) = 0;
          if (!v22)
          {
            if (a15)
            {
              *(a1 + 65848) = 1;
              *(a1 + 65904) = get_crc_table();
              v20 = crypthead(a15, v38, 12, (a1 + 65880), *(a1 + 65904), a16);
              *(a1 + 65912) = v20;
              if ((*(a1 + 16))(*(a1 + 56), *(a1 + 88), v38, v20) != v20)
              {
                v22 = -1;
              }
            }
          }

          if (!v22)
          {
            *(a1 + 112) = 1;
          }

          v37 = v22;
        }

        else
        {
          v37 = -104;
        }
      }
    }

    else
    {
      v37 = -102;
    }
  }

  else
  {
    v37 = -102;
  }

  *MEMORY[0x277D85DE8];
  return v37;
}

unint64_t zip64local_TmzDateToDosDate(_DWORD *a1)
{
  v2 = a1[5];
  if (v2 < 0x7BC)
  {
    if (v2 >= 0x50)
    {
      v2 -= 80;
    }
  }

  else
  {
    v2 -= 1980;
  }

  return (*a1 / 2u + 32 * a1[1] + (a1[2] << 11)) | (((a1[3] + 32 * (a1[4] + 1)) + (v2 << 9)) << 16);
}

uint64_t zip64local_putValue_inmemory(uint64_t result, unint64_t a2, int a3)
{
  for (i = 0; i < a3; ++i)
  {
    *(result + i) = a2;
    a2 >>= 8;
  }

  if (a2)
  {
    for (j = 0; j < a3; ++j)
    {
      *(result + j) = -1;
    }
  }

  return result;
}

uint64_t crypthead(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = HIWORD(a6);
  if (a3 >= 12)
  {
    if (++crypthead_calls == 1)
    {
      v6 = time(0);
      srand(v6 ^ 0xBB40E64E);
    }

    init_keys_0(a1, a4, a5);
    for (i = 0; i < 10; ++i)
    {
      v9 = (rand() >> 7);
      v10 = decrypt_byte_0(a4);
      update_keys_0(a4, a5, v9);
      v23[i] = v10 ^ v9;
    }

    init_keys_0(a1, a4, a5);
    for (j = 0; j < 10; ++j)
    {
      v11 = decrypt_byte_0(a4);
      update_keys_0(a4, a5, v23[j]);
      *(a2 + j) = v11 ^ v23[j];
    }

    v12 = decrypt_byte_0(a4);
    update_keys_0(a4, a5, v17);
    v7 = j;
    v16 = j + 1;
    *(a2 + v7) = v12 ^ v17;
    v13 = decrypt_byte_0(a4);
    update_keys_0(a4, a5, HIBYTE(v17));
    *(a2 + v16) = v13 ^ HIBYTE(v17);
    v22 = v16 + 1;
  }

  else
  {
    v22 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  v8 = 0;
  if (a1)
  {
    if (*(a1 + 112))
    {
      *(a1 + 65840) = crc32(*(a1 + 65840), a2, a3);
      *(a1 + 120) = a2;
      *(a1 + 128) = a3;
      while (1)
      {
        v4 = 0;
        if (!v8)
        {
          v4 = *(a1 + 128) != 0;
        }

        if (!v4)
        {
          break;
        }

        if (!*(a1 + 152))
        {
          if (zip64FlushWriteBuffer(a1) == -1)
          {
            v8 = -1;
          }

          *(a1 + 152) = 0x10000;
          *(a1 + 144) = a1 + 296;
        }

        if (v8)
        {
          break;
        }

        if (*(a1 + 288) != 8 || *(a1 + 292))
        {
          if (*(a1 + 128) >= *(a1 + 152))
          {
            v6 = *(a1 + 152);
          }

          else
          {
            v6 = *(a1 + 128);
          }

          for (i = 0; i < v6; ++i)
          {
            *(*(a1 + 144) + i) = *(*(a1 + 120) + i);
          }

          *(a1 + 128) -= v6;
          *(a1 + 152) -= v6;
          *(a1 + 120) += v6;
          *(a1 + 144) += v6;
          *(a1 + 136) += v6;
          *(a1 + 160) += v6;
          *(a1 + 236) += v6;
        }

        else
        {
          v7 = *(a1 + 160);
          v8 = deflate((a1 + 120), 0);
          *(a1 + 160);
          *(a1 + 236) += *(a1 + 160) - v7;
        }
      }

      return v8;
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t zip64FlushWriteBuffer(uint64_t a1)
{
  v5 = 0;
  if (*(a1 + 65848))
  {
    for (i = 0; i < *(a1 + 236); ++i)
    {
      v1 = *(a1 + 65904);
      v3 = decrypt_byte_0(a1 + 65880);
      update_keys_0((a1 + 65880), *(a1 + 65904), *(a1 + 296 + i));
      *(a1 + 296 + i) ^= v3;
    }
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 88), a1 + 296, *(a1 + 236)) != *(a1 + 236))
  {
    v5 = -1;
  }

  *(a1 + 65864) += *(a1 + 236);
  *(a1 + 65872) += *(a1 + 136);
  *(a1 + 136) = 0;
  *(a1 + 236) = 0;
  return v5;
}

uint64_t zipCloseFileInZipRaw64(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = 0;
  v10 = 0;
  if (a1)
  {
    if (*(a1 + 112))
    {
      *(a1 + 128) = 0;
      if (*(a1 + 288) != 8 || *(a1 + 292))
      {
        if (*(a1 + 288) == 12)
        {
          *(a1 + 292);
        }
      }

      else
      {
        while (!v10)
        {
          if (!*(a1 + 152))
          {
            zip64FlushWriteBuffer(a1);
            *(a1 + 152) = 0x10000;
            *(a1 + 144) = a1 + 296;
          }

          v9 = *(a1 + 160);
          v10 = deflate((a1 + 120), 4);
          *(a1 + 236) += *(a1 + 160) - v9;
        }
      }

      if (v10 == 1)
      {
        v10 = 0;
      }

      if (*(a1 + 236) && !v10 && zip64FlushWriteBuffer(a1) == -1)
      {
        v10 = -1;
      }

      if (*(a1 + 288) == 8 && !*(a1 + 292))
      {
        v8 = deflateEnd((a1 + 120));
        if (!v10)
        {
          v10 = v8;
        }

        *(a1 + 232) = 0;
      }

      if (!*(a1 + 292))
      {
        a3 = *(a1 + 65840);
        a2 = *(a1 + 65872);
      }

      v12 = *(a1 + 65864) + *(a1 + 65912);
      if (v12 >= 0xFFFFFFFF || a2 >= 0xFFFFFFFF || *(a1 + 240) >= 0xFFFFFFFFuLL)
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 4, 0x2DuLL, 2);
        zip64local_putValue_inmemory(*(a1 + 248) + 6, 0x2DuLL, 2);
      }

      zip64local_putValue_inmemory(*(a1 + 248) + 16, a3, 4);
      if (v12 >= 0xFFFFFFFF)
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 20, 0xFFFFFFFFuLL, 4);
      }

      else
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 20, v12, 4);
      }

      if (*(a1 + 208) == 1)
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 36, 1uLL, 2);
      }

      if (a2 >= 0xFFFFFFFF)
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 24, 0xFFFFFFFFuLL, 4);
      }

      else
      {
        zip64local_putValue_inmemory(*(a1 + 248) + 24, a2, 4);
      }

      if (a2 >= 0xFFFFFFFF)
      {
        v11 = 8;
      }

      if (v12 >= 0xFFFFFFFF)
      {
        v11 += 8;
      }

      if (*(a1 + 240) >= 0xFFFFFFFFuLL)
      {
        v11 += 8;
      }

      if (v11 > 0)
      {
        if ((v11 + 4) > *(a1 + 272))
        {
          return -103;
        }

        v5 = *(a1 + 248) + *(a1 + 264);
        zip64local_putValue_inmemory(v5, 1uLL, 2);
        v6 = v5 + 2;
        zip64local_putValue_inmemory(v6, v11, 2);
        v7 = v6 + 2;
        if (a2 >= 0xFFFFFFFF)
        {
          zip64local_putValue_inmemory(v7, a2, 8);
          v7 += 8;
        }

        if (v12 >= 0xFFFFFFFF)
        {
          zip64local_putValue_inmemory(v7, v12, 8);
          v7 += 8;
        }

        if (*(a1 + 240) >= 0xFFFFFFFFuLL)
        {
          zip64local_putValue_inmemory(v7, *(a1 + 240), 8);
        }

        *(a1 + 272) -= v11 + 4;
        *(a1 + 264) += v11 + 4;
        *(a1 + 256) += v11 + 4;
        zip64local_putValue_inmemory(*(a1 + 248) + 30, *(a1 + 256), 2);
      }

      if (!v10)
      {
        v10 = add_data_in_datablock((a1 + 96), *(a1 + 248), *(a1 + 264));
      }

      free(*(a1 + 248));
      if (!v10)
      {
        v4 = call_ztell64(a1, *(a1 + 88));
        if (call_zseek64(a1, *(a1 + 88), *(a1 + 240) + 14, 0))
        {
          v10 = -1;
        }

        if (!v10)
        {
          v10 = zip64local_putValue(a1, *(a1 + 88), a3, 4);
        }

        if (a2 < 0xFFFFFFFF)
        {
          if (!v10)
          {
            v10 = zip64local_putValue(a1, *(a1 + 88), v12, 4);
          }

          if (!v10)
          {
            v10 = zip64local_putValue(a1, *(a1 + 88), a2, 4);
          }
        }

        else if (*(a1 + 65856))
        {
          if (call_zseek64(a1, *(a1 + 88), *(a1 + 65856) + 4, 0))
          {
            v10 = -1;
          }

          if (!v10)
          {
            v10 = zip64local_putValue(a1, *(a1 + 88), a2, 8);
          }

          if (!v10)
          {
            v10 = zip64local_putValue(a1, *(a1 + 88), v12, 8);
          }
        }

        if (call_zseek64(a1, *(a1 + 88), v4, 0))
        {
          v10 = -1;
        }
      }

      ++*(a1 + 65936);
      *(a1 + 112) = 0;
      return v10;
    }

    else
    {
      return -102;
    }
  }

  else
  {
    return -102;
  }
}

uint64_t Write_Zip64EndOfCentralDirectoryLocator(uint64_t a1, uint64_t a2)
{
  v3 = a2 - *(a1 + 65928);
  v4 = zip64local_putValue(a1, *(a1 + 88), 0x7064B50uLL, 4);
  if (!v4)
  {
    v4 = zip64local_putValue(a1, *(a1 + 88), 0, 4);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, *(a1 + 88), v3, 8);
  }

  if (!v4)
  {
    return zip64local_putValue(a1, *(a1 + 88), 1uLL, 4);
  }

  return v4;
}

uint64_t Write_Zip64EndOfCentralDirectoryRecord(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = zip64local_putValue(a1, a1[11], 0x6064B50uLL, 4);
  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0x2CuLL, 8);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0x2DuLL, 2);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0x2DuLL, 2);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0, 4);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0, 4);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], a1[8242], 8);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], a1[8242], 8);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], a2, 8);
  }

  if (!v4)
  {
    return zip64local_putValue(a1, a1[11], a3 - a1[8241], 8);
  }

  return v4;
}

uint64_t Write_EndOfCentralDirectoryRecord(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = zip64local_putValue(a1, a1[11], 0x6054B50uLL, 4);
  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0, 2);
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], 0, 2);
  }

  if (!v4)
  {
    if (a1[8242] >= 0xFFFFuLL)
    {
      v4 = zip64local_putValue(a1, a1[11], 0xFFFFuLL, 2);
    }

    else
    {
      v4 = zip64local_putValue(a1, a1[11], a1[8242], 2);
    }
  }

  if (!v4)
  {
    if (a1[8242] >= 0xFFFFuLL)
    {
      v4 = zip64local_putValue(a1, a1[11], 0xFFFFuLL, 2);
    }

    else
    {
      v4 = zip64local_putValue(a1, a1[11], a1[8242], 2);
    }
  }

  if (!v4)
  {
    v4 = zip64local_putValue(a1, a1[11], a2, 4);
  }

  if (!v4)
  {
    if ((a3 - a1[8241]) < 0xFFFFFFFF)
    {
      return zip64local_putValue(a1, a1[11], a3 - a1[8241], 4);
    }

    else
    {
      return zip64local_putValue(a1, a1[11], 0xFFFFFFFFuLL, 4);
    }
  }

  return v4;
}

uint64_t Write_GlobalComment(uint64_t a1, const char *a2)
{
  v3 = 0;
  if (a2)
  {
    v3 = strlen(a2);
  }

  v4 = zip64local_putValue(a1, *(a1 + 88), v3, 2);
  if (!v4 && v3 && (*(a1 + 16))(*(a1 + 56), *(a1 + 88), a2, v3) != v3)
  {
    return -1;
  }

  return v4;
}

uint64_t zipClose(uint64_t a1, const char *a2)
{
  v7 = 0;
  v6 = 0;
  if (a1)
  {
    if (*(a1 + 112) == 1)
    {
      v7 = zipCloseFileInZip(a1);
    }

    if (!a2)
    {
      a2 = *(a1 + 65944);
    }

    v5 = call_ztell64(a1, *(a1 + 88));
    if (!v7)
    {
      for (i = *(a1 + 96); i; i = *i)
      {
        if (!v7 && i[2] && (*(a1 + 16))(*(a1 + 56), *(a1 + 88), i + 4, i[2]) != i[2])
        {
          v7 = -1;
        }

        v6 += i[2];
      }
    }

    free_linkedlist(a1 + 96);
    if ((v5 - *(a1 + 65928)) >= 0xFFFFFFFF)
    {
      v3 = call_ztell64(a1, *(a1 + 88));
      Write_Zip64EndOfCentralDirectoryRecord(a1, v6, v5);
      Write_Zip64EndOfCentralDirectoryLocator(a1, v3);
    }

    if (!v7)
    {
      v7 = Write_EndOfCentralDirectoryRecord(a1, v6, v5);
    }

    if (!v7)
    {
      v7 = Write_GlobalComment(a1, a2);
    }

    if ((*(a1 + 40))(*(a1 + 56), *(a1 + 88)) && !v7)
    {
      v7 = -1;
    }

    if (*(a1 + 65944))
    {
      free(*(a1 + 65944));
    }

    if (a1)
    {
      free(a1);
    }

    return v7;
  }

  else
  {
    return -102;
  }
}

void free_linkedlist(uint64_t a1)
{
  free_datablock(*a1);
  *(a1 + 8) = 0;
  *a1 = 0;
}

uint64_t zipRemoveExtraInfoBlock(__int16 *a1, int *a2, __int16 a3)
{
  v9 = a1;
  v8 = 0;
  if (a1 && *a2 >= 4)
  {
    v7 = malloc_type_malloc(*a2, 0x100004077774924uLL);
    while (v9 < (a1 + *a2))
    {
      v6 = v9[1];
      if (*v9 == a3)
      {
        v9 = (v9 + v6 + 4);
      }

      else
      {
        __memcpy_chk();
        v9 = (v9 + v6 + 4);
        v8 += v6 + 4;
      }
    }

    if (v8 >= *a2)
    {
      v5 = -1;
    }

    else
    {
      v3 = *a2;
      __memset_chk();
      if (v8 > 0)
      {
        __memcpy_chk();
      }

      *a2 = v8;
      v5 = 0;
    }

    if (v7)
    {
      free(v7);
    }

    return v5;
  }

  else
  {
    return -102;
  }
}

uint64_t zip64local_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v4, 1) == 1)
  {
    *v5 = v4;
    return 0;
  }

  else if ((*(v7 + 48))(*(v7 + 56), v6))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void *allocate_new_datablock()
{
  v1 = malloc_type_malloc(0x1010uLL, 0x1020040BBE2FE16uLL);
  if (v1)
  {
    *v1 = 0;
    v1[2] = 0;
    v1[1] = 4080;
  }

  return v1;
}

uint64_t init_keys_0(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  *a2 = 305419896;
  a2[1] = 591751049;
  a2[2] = 878082192;
  while (*v5)
  {
    result = update_keys_0(a2, a3, *v5++);
  }

  return result;
}

uint64_t update_keys_0(void *a1, uint64_t a2, unsigned int a3)
{
  *a1 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  a1[1] += *a1;
  a1[1] = 134775813 * a1[1] + 1;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(a1[1]))) ^ (a1[2] >> 8);
  return a3;
}

void free_datablock(void *a1)
{
  while (a1)
  {
    v1 = *a1;
    free(a1);
    a1 = v1;
  }
}

void sub_2555D9048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak((v24 - 40));
  _Unwind_Resume(a1);
}

void sub_2555DA150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v17 - 24));
  _Unwind_Resume(a1);
}

void sub_2555DA2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v17 - 24));
  _Unwind_Resume(a1);
}

void sub_2555DA500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak((v24 - 40));
  _Unwind_Resume(a1);
}

void sub_2555DB6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 32));
  _Unwind_Resume(a1);
}

void sub_2555DB8B8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location)
{
  *(v12 - 40) = a1;
  *(v12 - 44) = a2;
  objc_destroyWeak((v12 - 32));
  _Unwind_Resume(*(v12 - 40));
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v16[1] = a1;
  v16[2] = a2;
  v16[0] = sub_255600A1C();
  v11 = sub_255600B0C();
  for (i = 0; ; i = v7)
  {
    MEMORY[0x259C39E30](a1, a2);
    if ((sub_255600B5C() & 1) == 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
      sub_2555E3A54();
      v17 = sub_25560075C();
      v18 = v4;
      sub_2555E3B50(v16);
      v5 = v17;
      sub_2555E3B7C(v17, v18);

      sub_2555E3BF8(&v17);
      return v5;
    }

    MEMORY[0x259C39E30](a1, a2);
    v8 = sub_255600B6C();
    if ((v2 & 1) == 0)
    {
      break;
    }

    if (sub_255600B7C() >> 14 < v11 >> 14)
    {
      goto LABEL_12;
    }

LABEL_13:
    sub_255600BBC();
    sub_255600BAC();

    result = sub_255600B1C();
    if (i)
    {
      goto LABEL_20;
    }

    if (v14 > 0xFF)
    {
      sub_255600DFC();
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
      sub_255600BFC();
      v15 = sub_255600B7C();

      v6 = v15;
      v7 = 0;
    }

LABEL_17:
    v11 = v6;
  }

  if (v8 >> 14 < v11 >> 14)
  {
    sub_255600DFC();
    __break(1u);
  }

  sub_255600BBC();
  sub_255600BAC();

  result = sub_255600B1C();
  if (!i)
  {
    if (v13 <= 0xFF)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
      sub_255600BFC();

      v6 = v8;
      v7 = 0;
      goto LABEL_17;
    }

    sub_255600DFC();
    __break(1u);
LABEL_12:
    sub_255600DFC();
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t sub_2555E3A54()
{
  v2 = qword_27F7BA870;
  if (!qword_27F7BA870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BA868, qword_255605160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA870);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_2555E3B50(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_2555E3B7C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_2555E3C2C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_2555E3CA8@<X0>(const char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = strtoul(a1, 0, 16);
  *a2 = result;
  return result;
}

unint64_t sub_2555E3CEC@<X0>(const char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = strtoul(a1, 0, 16);
  *a2 = result;
  return result;
}

Swift::String_optional __swiftcall Data.toHexString()()
{
  v13 = v0;
  v14 = v1;
  v11 = v0;
  v12 = v1;
  v2 = sub_2555E485C();
  v10 = sub_2555E3F78(sub_2555E3E4C, 0, MEMORY[0x277CC9318], MEMORY[0x277D837D0], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA880, &qword_255603D70);
  sub_2555E497C();
  sub_2555E48D4();
  v8 = sub_255600A7C();
  v7 = v3;

  sub_2555E4A04(&v10);
  v4 = v7;
  v5 = v8;
  result.value._object = v4;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_2555E3E4C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_255600B3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA890, &qword_255603D78);
  sub_255600E8C();
  *(v2 + 24) = MEMORY[0x277D84B78];
  *(v2 + 32) = MEMORY[0x277D84BC0];
  *v2 = v5;
  sub_2555E3F34();
  v6 = sub_255600ACC();
  v7 = v3;

  result = v6;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_2555E3F78(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v44 = a2;
  v68 = a3;
  v58 = a4;
  v45 = a5;
  v67 = a6;
  v47 = a8;
  v48 = "Fatal error";
  v49 = "Range requires lowerBound <= upperBound";
  v50 = "Swift/Range.swift";
  v51 = "Index out of range";
  v52 = "invalid Collection: count differed in successive traversals";
  v53 = "Swift/ArrayShared.swift";
  v78[3] = a3;
  v78[2] = a4;
  v78[1] = a5;
  v54 = *(a5 - 8);
  v55 = a5 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v57 = &v24 - v56;
  v9 = *(v8 + 8);
  v59 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v62 = AssociatedTypeWitness - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v59, v67, v68, v58);
  v64 = &v24 - v63;
  v65 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v12, v13, v11);
  v66 = &v24 - v65;
  v69 = swift_getAssociatedTypeWitness();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v68, v67, v14, v15);
  v73 = &v24 - v72;
  v74 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v18, &v24 - v72, v19);
  v75 = &v24 - v74;
  v76 = sub_255600C4C();
  if (!v76)
  {
    goto LABEL_24;
  }

  v78[0] = sub_255600DDC();
  v42 = sub_255600DEC();
  sub_255600DBC();
  result = sub_255600C3C();
  if (v76 < 0)
  {
    sub_255600DFC();
    __break(1u);
LABEL_24:
    v26 = sub_255600BDC();
    v27 = v46;
    return v26;
  }

  if (!v76)
  {
LABEL_19:
    v32 = v46;
LABEL_20:
    v28 = v32;
    sub_255600C5C();
    v23 = *(swift_getAssociatedConformanceWitness() + 8);
    v31 = sub_255600A8C();
    v29 = *(v70 + 8);
    v30 = v70 + 8;
    v29(v73, v69);
    if ((v31 & 1) == 0)
    {
      sub_255600E0C();
      __break(1u);
    }

    v29(v75, v69);
    v25 = v78[0];

    v26 = v25;
    v27 = v28;
    return v26;
  }

  v40 = 0;
  for (i = v46; ; i = v36)
  {
    v38 = i;
    v39 = v40;
    if (v40 < 0 || v39 >= v76)
    {
      goto LABEL_18;
    }

    if (v76 < 0)
    {
      sub_255600DFC();
      __break(1u);
LABEL_18:
      sub_255600E0C();
      __break(1u);
      goto LABEL_19;
    }

    v37 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v35 = &v77;
    v34 = sub_255600C8C();
    (*(v61 + 16))(v64);
    v34();
    v22 = v38;
    v43(v64, v57);
    v36 = v22;
    if (v22)
    {
      (*(v61 + 8))(v64, AssociatedTypeWitness);
      (*(v70 + 8))(v75, v69);
      sub_2555E4A30(v78);
      (*(v54 + 32))(v47, v57, v45);
      return v33;
    }

    (*(v61 + 8))(v64, AssociatedTypeWitness);
    sub_255600DCC();
    sub_255600C6C();
    if (v37 == v76)
    {
      v32 = v36;
      goto LABEL_20;
    }

    result = v36;
    v40 = v37;
  }

  __break(1u);
  return result;
}

unint64_t sub_2555E485C()
{
  v2 = qword_27F7BA878;
  if (!qword_27F7BA878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555E497C()
{
  v2 = qword_27F7BA888;
  if (!qword_27F7BA888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BA880, &qword_255603D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA888);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_2555E4A04(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_2555E4A30(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

__SecTrust *static MCLECCertValidation.evaluatePublicCertTrust(base64EncodedCert:)()
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  sub_2555E4F74();
  v18 = sub_2556006BC();
  v19 = v0;
  if ((v0 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_2555E4FA4();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v22 = v18;
    v23 = v0;
    sub_2555E3B7C(v18, v0);
    v16 = sub_2556006CC();
    v17 = SecCertificateCreateWithData(0, v16);
    MEMORY[0x277D82BD8](v16);
    sub_2555E3C2C(v18, v19);
    if (v17)
    {
      v21 = 0;
      type metadata accessor for SecCertificate();
      sub_255600E8C();
      v12 = v1;
      MEMORY[0x277D82BE0](v17);
      *v12 = v17;
      sub_2555E3F34();
      certificates = sub_255600BCC();
      BasicX509 = SecPolicyCreateBasicX509();
      v15 = SecTrustCreateWithCertificates(certificates, BasicX509, &v21);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v15)
      {
        sub_2555E4FA4();
        swift_allocError();
        *v5 = v15;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        swift_willThrow();
        sub_2555E50B8(&v21);
        MEMORY[0x277D82BD8](v17);
        sub_2555E3C2C(v18, v19);
      }

      else
      {
        v11 = v21;
        MEMORY[0x277D82BE0](v21);
        if (v11)
        {
          error = 0;
          if (SecTrustEvaluateWithError(v11, &error))
          {
            sub_2555E50EC(&error);
            sub_2555E50B8(&v21);
            MEMORY[0x277D82BD8](v17);
            sub_2555E3C2C(v18, v19);
            *MEMORY[0x277D85DE8];
            return v11;
          }

          v10 = error;
          MEMORY[0x277D82BE0](error);
          sub_2555E4FA4();
          swift_allocError();
          *v3 = v10;
          *(v3 + 8) = 0;
          *(v3 + 16) = 1;
          swift_willThrow();
          sub_2555E50EC(&error);
          MEMORY[0x277D82BD8](v11);
          sub_2555E50B8(&v21);
          MEMORY[0x277D82BD8](v17);
          sub_2555E3C2C(v18, v19);
        }

        else
        {
          sub_2555E4FA4();
          swift_allocError();
          *v4 = 2;
          *(v4 + 8) = 0;
          *(v4 + 16) = 3;
          swift_willThrow();
          sub_2555E50B8(&v21);
          MEMORY[0x277D82BD8](v17);
          sub_2555E3C2C(v18, v19);
        }
      }
    }

    else
    {
      sub_2555E4FA4();
      swift_allocError();
      *v6 = 1;
      *(v6 + 8) = 0;
      *(v6 + 16) = 3;
      swift_willThrow();
      sub_2555E3C2C(v18, v19);
    }
  }

  v8 = __OFSUB__(*MEMORY[0x277D85DE8], v24);
  return v9;
}

uint64_t sub_2555E4F74()
{
  sub_2555E6434(0);

  return 0;
}

unint64_t sub_2555E4FA4()
{
  v2 = qword_27F7BA898;
  if (!qword_27F7BA898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA898);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SecCertificate()
{
  v4 = qword_27F7BA8B8;
  if (!qword_27F7BA8B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BA8B8);
      return v1;
    }
  }

  return v4;
}

uint64_t static MCLECCertValidation.getExternalCertRepresentation(from:)(__SecTrust *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = SecTrustCopyKey(a1);
  if (v11)
  {
    error = 0;
    v10 = SecKeyCopyExternalRepresentation(v11, &error);
    if (v10)
    {
      MEMORY[0x277D82BE0](v10);
      v9 = sub_2556006EC();
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      *MEMORY[0x277D85DE8];
      return v9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA8A0, &qword_255603D90);
    v8 = sub_255600AFC();
    v7 = v2;
    sub_2555E4FA4();
    swift_allocError();
    *v3 = v8;
    *(v3 + 8) = v7;
    *(v3 + 16) = 2;
    swift_willThrow();
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    sub_2555E4FA4();
    swift_allocError();
    *v4 = 3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
  }

  v5 = __OFSUB__(*MEMORY[0x277D85DE8], v13);
  return v6;
}

uint64_t MCLECCertValidation.ECCertValidationError.errorDescription.getter()
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v53 = 0;
  v54 = 0;
  v43 = 0;
  v32 = 0;
  v28 = *v0;
  v29 = v0[1];
  v1 = *(v0 + 16);
  v30 = v1;
  v59 = *v0;
  v60 = v29;
  v61 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x277D82BE0](v28);
      v43 = v28;
      v42[0] = sub_255600E7C();
      v42[1] = v6;
      v7 = sub_255600B3C();
      MEMORY[0x259C3A100](v7);

      v39 = v28;
      v40 = v29;
      v41 = 1;
      sub_255600E3C();
      v8 = sub_255600B3C();
      MEMORY[0x259C3A100](v8);

      MEMORY[0x277D82BE0](v28);
      if (v28)
      {
        v33 = v28;
        type metadata accessor for CFError();
        sub_2555E5C54();
        v23 = sub_255600EBC();
        v24 = v9;
        MEMORY[0x277D82BD8](v28);
        v25 = v23;
        v26 = v24;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v35 = v25;
      v36 = v26;
      if (v26)
      {
        v37 = v35;
        v38 = v36;
      }

      else
      {
        v37 = sub_255600B3C();
        v38 = v10;
      }

      v34[0] = v37;
      v34[1] = v38;
      sub_255600E5C();
      sub_2555E5B90(v34);
      v11 = sub_255600B3C();
      MEMORY[0x259C3A100](v11);

      sub_2555E5B38(v42);
      v22 = sub_255600B2C();
      MEMORY[0x277D82BD8](v28);
      return v22;
    }

    else if (v1 == 2)
    {

      v53 = v28;
      v54 = v29;
      v52[0] = sub_255600E7C();
      v52[1] = v12;
      v13 = sub_255600B3C();
      MEMORY[0x259C3A100](v13);

      v49 = v28;
      v50 = v29;
      v51 = 2;
      sub_255600E3C();
      v14 = sub_255600B3C();
      MEMORY[0x259C3A100](v14);

      v45 = v28;
      v46 = v29;
      if (v29)
      {
        v47 = v45;
        v48 = v46;
      }

      else
      {
        v47 = sub_255600B3C();
        v48 = v15;
      }

      v44[0] = v47;
      v44[1] = v48;
      sub_255600E5C();
      sub_2555E5B90(v44);
      v16 = sub_255600B3C();
      MEMORY[0x259C3A100](v16);

      sub_2555E5B38(v52);
      v21 = sub_255600B2C();

      return v21;
    }

    else
    {
      v58[0] = sub_255600E7C();
      v58[1] = v17;
      v18 = sub_255600B3C();
      MEMORY[0x259C3A100](v18);

      v55 = v28;
      v56 = v29;
      v57 = v30;
      sub_255600E3C();
      v19 = sub_255600B3C();
      MEMORY[0x259C3A100](v19);

      sub_2555E5B38(v58);
      return sub_255600B2C();
    }
  }

  else
  {
    v32 = v28;
    v31[0] = sub_255600E7C();
    v31[1] = v2;
    v3 = sub_255600B3C();
    MEMORY[0x259C3A100](v3);

    sub_255600E3C();
    v4 = sub_255600B3C();
    MEMORY[0x259C3A100](v4);

    sub_255600E4C();
    v5 = sub_255600B3C();
    MEMORY[0x259C3A100](v5);

    sub_2555E5B38(v31);
    return sub_255600B2C();
  }
}

uint64_t sub_2555E5B38(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_2555E5B64(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_2555E5B90(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t type metadata accessor for CFError()
{
  v4 = qword_27F7BA8B0;
  if (!qword_27F7BA8B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BA8B0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_2555E5C54()
{
  v2 = qword_27F7BA8A8;
  if (!qword_27F7BA8A8)
  {
    type metadata accessor for CFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA8A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MCLECCertValidation(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for MCLECCertValidation(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JITAppKit19MCLECCertValidationV06ECCertD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_2555E6118(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFC)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2555E6210(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    *(result + 16) = 0;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2555E63CC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 3;
  }

  return result;
}

uint64_t sub_2555E6434(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for Base64DecodingOptions();
    v1 = sub_255600BEC();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for Base64DecodingOptions()
{
  v4 = qword_27F7BA8C0;
  if (!qword_27F7BA8C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BA8C0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_2555E6578()
{
  v34 = 0;
  v18 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0, v1, v2);
  v33 = &v17 - v18;
  v19 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v3, v4, v5);
  v32 = &v17 - v19;
  v20 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v6, v7, v8);
  v31 = &v17 - v20;
  v24 = sub_2555E67B0();
  v22 = 17;
  v9 = sub_255600E7C();
  v26 = &v35;
  v35 = v9;
  v36 = v10;
  v23 = 1;
  v11 = sub_255600B3C();
  v21 = v12;
  MEMORY[0x259C3A100](v11);

  type metadata accessor for MCLECv2Encryption();
  sub_2555E683C();
  v13 = sub_255600B3C();
  v25 = v14;
  MEMORY[0x259C3A100](v13);

  v28 = v35;
  v27 = v36;

  sub_2555E5B38(v26);
  v29 = sub_255600B2C();
  v30 = v15;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v33);
  return sub_255600CEC();
}

unint64_t sub_2555E67B0()
{
  v2 = qword_27F7BA8C8;
  if (!qword_27F7BA8C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F7BA8C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2555E683C()
{
  v0 = sub_255600FFC();
  MEMORY[0x259C39E20](v0);
}

uint64_t sub_2555E688C()
{
  sub_2555F2F6C(0);
  sub_255600CAC();
  sub_2555F3890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA9D8, qword_255604880);
  sub_2555F3910();
  return sub_255600D9C();
}

uint64_t sub_2555E692C@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85260];
  v1 = sub_255600CBC();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_2555E6998()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2Encryption_queue);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555E6A84()
{
  v2 = (v0 + OBJC_IVAR___MCLECv2Encryption_prependsEphemeralKeyPadding);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_2555E6B4C(char a1)
{
  v3 = (v1 + OBJC_IVAR___MCLECv2Encryption_prependsEphemeralKeyPadding);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_2555E6C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v24[2] = 0;
  v25 = 0;
  v26 = 0;
  v24[9] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v27 = 0;
  v20 = objc_opt_self();

  v22 = sub_255600A2C();

  type metadata accessor for WritingOptions();
  sub_255600E8C();
  sub_2555E7084();
  sub_255600D1C();
  v24[0] = 0;
  v23 = [v20 dataWithJSONObject:v22 options:v24[1] error:v24];
  v21 = v24[0];
  MEMORY[0x277D82BE0](v24[0]);
  v7 = v27;
  v27 = v21;
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  if (v23)
  {
    v14 = sub_2556006EC();
    v15 = v8;
    MEMORY[0x277D82BD8](v23);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v11 = v27;
    v12 = sub_2556006AC();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();
    MEMORY[0x259C3AAA0](v12);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555E7104();
    v13 = swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    a6();
    MEMORY[0x259C3AAA0](v13);
  }

  else
  {
    v25 = v16;
    v26 = v17;
    (*((*v19 & *MEMORY[0x277D85000]) + 0x98))();
    result = sub_2555E3C2C(v16, v17);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for WritingOptions()
{
  v4 = qword_27F7BA980;
  if (!qword_27F7BA980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BA980);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_2555E7084()
{
  v2 = qword_27F7BA8E8;
  if (!qword_27F7BA8E8)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA8E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555E7104()
{
  v2 = qword_27F7BA8F0;
  if (!qword_27F7BA8F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555E73B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x259C3AAB0]();
  if (a1)
  {
    v3 = sub_25560069C();
    MEMORY[0x259C3AAA0](a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  (*(a2 + 16))();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_2555E7498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v24[2] = 0;
  v25 = 0;
  v26 = 0;
  v24[9] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v27 = 0;
  v20 = objc_opt_self();

  v22 = sub_255600A2C();

  type metadata accessor for WritingOptions();
  sub_255600E8C();
  sub_2555E7084();
  sub_255600D1C();
  v24[0] = 0;
  v23 = [v20 dataWithJSONObject:v22 options:v24[1] error:v24];
  v21 = v24[0];
  MEMORY[0x277D82BE0](v24[0]);
  v7 = v27;
  v27 = v21;
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  if (v23)
  {
    v14 = sub_2556006EC();
    v15 = v8;
    MEMORY[0x277D82BD8](v23);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v11 = v27;
    v12 = sub_2556006AC();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();
    MEMORY[0x259C3AAA0](v12);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555E7104();
    v13 = swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    a6();
    MEMORY[0x259C3AAA0](v13);
  }

  else
  {
    v25 = v16;
    v26 = v17;
    (*((*v19 & *MEMORY[0x277D85000]) + 0xA0))();
    result = sub_2555E3C2C(v16, v17);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2555E7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v43 = sub_255600AEC();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v36 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v22 - v36;
  v54 = MEMORY[0x28223BE20](v37, v38, v30, v31);
  v55 = v9;
  v52 = v10;
  v53 = v11;
  v50 = v12;
  v51 = v13;
  v48 = v14;
  v49 = v15;
  v47 = v8;
  sub_255600ADC();
  sub_2555E7D14();
  v42 = sub_255600ABC();
  v44 = v16;
  (*(v39 + 8))(v41, v43);
  if ((v44 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555E7104();
    v23 = 1;
    v18 = swift_allocError();
    v19 = v23;
    v20 = v34;
    v24 = v18;
    *v21 = 2;
    *(v21 + 8) = 0;
    *(v21 + 16) = v19 & 1;
    v20();
    MEMORY[0x259C3AAA0](v24);
  }

  else
  {
    v27 = v42;
    v28 = v44;
    v26 = v44;
    v25 = v42;
    v45 = v42;
    v46 = v44;
    (*((*v29 & *MEMORY[0x277D85000]) + 0xA8))();
    return sub_2555E3C2C(v25, v26);
  }
}

uint64_t sub_2555E7F54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v41 = a2;
  v38 = a3;
  v39 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v42 = sub_2555E8860;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v44 = 0;
  v48 = sub_2556007BC();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v32 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v9, v10, v11);
  v47 = &v32 - v32;
  v52 = sub_2556007DC();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v33 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v43, v41, v38, v39);
  v51 = &v32 - v33;
  v69 = v12;
  v70 = v13;
  v67 = v14;
  v68 = v15;
  v65 = v16;
  v66 = v17;
  v63 = v18;
  v64 = v19;
  v62 = v8;
  v54 = *(v8 + OBJC_IVAR___MCLECv2Encryption_queue);
  MEMORY[0x277D82BE0](v54);

  MEMORY[0x277D82BE0](v40);
  sub_2555E3B7C(v43, v41);
  v20 = swift_allocObject();
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v20;
  v30 = v43;
  v29[2] = v34;
  v29[3] = v21;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = v25;
  v29[8] = v26;
  v29[9] = v30;
  v29[10] = v27;
  v60 = v28;
  v61 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = 0;
  v58 = sub_2555E8FD4;
  v59 = &block_descriptor;
  v53 = _Block_copy(&aBlock);
  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v44, v51, v47, v53);
  (*(v45 + 8))(v47, v48);
  (*(v49 + 8))(v51, v52);
  _Block_release(v53);

  return MEMORY[0x277D82BD8](v54);
}

uint64_t sub_2555E8310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a1;
  v38 = a2;
  v34 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v51 = 0;
  v39 = sub_2556009AC();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v21[-v42];
  v67 = &v21[-v42];
  v65 = v43;
  v66 = MEMORY[0x28223BE20](v38, v9, v34, v45);
  v63 = v10;
  v64 = v11;
  v61 = v12;
  v62 = v13;
  v60 = v14;
  v58 = v15;
  v59 = v16;

  v17 = static MCLECCertValidation.evaluatePublicCertTrust(base64EncodedCert:)();
  v48 = 0;
  v49 = v17;
  v50 = 0;
  v29 = v17;
  v56 = v17;
  v18 = static MCLECCertValidation.getExternalCertRepresentation(from:)(v17);
  v30 = 0;
  v31 = v18;
  v32 = v19;
  v33 = 0;
  v26 = v19;
  v25 = v18;
  v54 = v18;
  v55 = v19;
  sub_2555E3B7C(v18, v19);
  v52 = v25;
  v53 = v26;
  sub_25560099C();
  v27 = 0;
  v28 = 0;
  v23 = sub_2555EB590(v36, v37, v44);
  v24 = 0;
  v22 = v23;
  v51 = v23;
  sub_2555E88AC(v23, v43, v38);
  MEMORY[0x277D82BD8](v22);
  (*(v40 + 8))(v44, v39);
  sub_2555E3C2C(v25, v26);
  MEMORY[0x277D82BD8](v29);
}

uint64_t sub_2555E87F4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  MEMORY[0x277D82BD8](v0[8]);
  sub_2555E3C2C(v0[9], v0[10]);
  return swift_deallocObject();
}

uint64_t sub_2555E88AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F381C;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x277D82BE0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_121;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555E8B50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555E8BC0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_2555E8C28()
{
  sub_2555F305C(0);
  sub_2556007BC();
  sub_2555F3608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA9C0, &unk_255604680);
  sub_2555F3688();
  return sub_255600D9C();
}

uint64_t sub_2555E8CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F3758;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x259C3AAB0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_115;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555E8F64(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555E8FD4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555E92C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v41 = a2;
  v38 = a3;
  v39 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v42 = sub_2555E9AA4;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v44 = 0;
  v48 = sub_2556007BC();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v32 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v9, v10, v11);
  v47 = &v32 - v32;
  v52 = sub_2556007DC();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v33 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v43, v41, v38, v39);
  v51 = &v32 - v33;
  v69 = v12;
  v70 = v13;
  v67 = v14;
  v68 = v15;
  v65 = v16;
  v66 = v17;
  v63 = v18;
  v64 = v19;
  v62 = v8;
  v54 = *(v8 + OBJC_IVAR___MCLECv2Encryption_queue);
  MEMORY[0x277D82BE0](v54);

  MEMORY[0x277D82BE0](v40);
  sub_2555E3B7C(v43, v41);
  v20 = swift_allocObject();
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v20;
  v30 = v43;
  v29[2] = v34;
  v29[3] = v21;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = v25;
  v29[8] = v26;
  v29[9] = v30;
  v29[10] = v27;
  v60 = v28;
  v61 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = 0;
  v58 = sub_2555E8FD4;
  v59 = &block_descriptor_36;
  v53 = _Block_copy(&aBlock);
  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v44, v51, v47, v53);
  (*(v45 + 8))(v47, v48);
  (*(v49 + 8))(v51, v52);
  _Block_release(v53);

  return MEMORY[0x277D82BD8](v54);
}

uint64_t sub_2555E967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a1;
  v27 = a2;
  v23 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v42 = 0;
  v28 = sub_2556009AC();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v19[-v31];
  v56 = &v19[-v31];
  v54 = v32;
  v55 = MEMORY[0x28223BE20](v27, v9, v23, v33);
  v52 = v10;
  v53 = v11;
  v50 = v12;
  v51 = v13;
  v49 = v14;
  v47 = v15;
  v48 = v16;

  v36 = Data.init(hexString:)(v34, v35);
  v37 = v17;
  v45 = v36;
  v46 = v17;
  sub_2555E3B7C(v36, v17);
  v39 = v44;
  v44[0] = v36;
  v44[1] = v37;
  sub_2555F3290();
  sub_25560097C();
  v40 = 0;
  v41 = 0;
  v21 = sub_2555EB590(v25, v26, v38);
  v22 = 0;
  v20 = v21;
  v42 = v21;
  sub_2555E9B54(v21, v32, v27);
  MEMORY[0x277D82BD8](v20);
  (*(v29 + 8))(v38, v28);
  sub_2555E3C2C(v36, v37);
}

uint64_t sub_2555E9A38()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  MEMORY[0x277D82BD8](v0[8]);
  sub_2555E3C2C(v0[9], v0[10]);
  return swift_deallocObject();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555E9B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F3594;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x277D82BE0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_109;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555E9DF8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555E9E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F34D0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x259C3AAB0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_103;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555EA104(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555EA3AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v41 = a2;
  v38 = a3;
  v39 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v42 = sub_2555EAC88;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v44 = 0;
  v48 = sub_2556007BC();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v32 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v9, v10, v11);
  v47 = &v32 - v32;
  v52 = sub_2556007DC();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v33 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v43, v41, v38, v39);
  v51 = &v32 - v33;
  v69 = v12;
  v70 = v13;
  v67 = v14;
  v68 = v15;
  v65 = v16;
  v66 = v17;
  v63 = v18;
  v64 = v19;
  v62 = v8;
  v54 = *(v8 + OBJC_IVAR___MCLECv2Encryption_queue);
  MEMORY[0x277D82BE0](v54);

  MEMORY[0x277D82BE0](v40);
  sub_2555E3B7C(v43, v41);
  v20 = swift_allocObject();
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v20;
  v30 = v43;
  v29[2] = v34;
  v29[3] = v21;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = v25;
  v29[8] = v26;
  v29[9] = v30;
  v29[10] = v27;
  v60 = v28;
  v61 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = 0;
  v58 = sub_2555E8FD4;
  v59 = &block_descriptor_50;
  v53 = _Block_copy(&aBlock);
  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v44, v51, v47, v53);
  (*(v45 + 8))(v47, v48);
  (*(v49 + 8))(v51, v52);
  _Block_release(v53);

  return MEMORY[0x277D82BD8](v54);
}

uint64_t sub_2555EA768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a1;
  v47 = a2;
  v43 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v42 = 0;
  v60 = 0;
  v59 = 0;
  v48 = sub_2556009AC();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = &v26 - v51;
  v73 = &v26 - v51;
  v71 = v52;
  v72 = MEMORY[0x28223BE20](v47, v9, v43, v54);
  v69 = v10;
  v70 = v11;
  v67 = v12;
  v68 = v13;
  v66 = v14;
  v64 = v15;
  v65 = v16;

  v57 = sub_2556006BC();
  v58 = v17;
  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_2555E7104();
    v38 = 1;
    v18 = swift_allocError();
    v19 = v38;
    v20 = v54;
    v39 = v18;
    v22 = v21;
    v23 = v43;
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = v19 & 1;
    sub_2555EB04C(v18, v23, v20);
    MEMORY[0x259C3AAA0](v39);
  }

  else
  {
    v40 = v57;
    v41 = v58;
    v24 = v42;
    v34 = v58;
    v33 = v57;
    v62 = v57;
    v63 = v58;
    sub_2555E3B7C(v57, v58);
    v35 = v61;
    v61[0] = v33;
    v61[1] = v34;
    sub_2555F3290();
    sub_25560097C();
    v36 = v24;
    v37 = v24;
    if (v24)
    {
      v27 = v37;
      sub_2555E3C2C(v33, v34);
      v28 = v27;
      v29 = v27;
      MEMORY[0x259C3AAB0]();
      v60 = v29;
      MEMORY[0x259C3AAB0]();
      sub_2555EB04C(v29, v43, v54);
      MEMORY[0x259C3AAA0](v29);
      MEMORY[0x259C3AAA0](v29);
      MEMORY[0x259C3AAA0](v29);
    }

    else
    {
      v31 = sub_2555EB590(v45, v46, v53);
      v32 = 0;
      v30 = v31;
      v59 = v31;
      sub_2555EAD38(v31, v52, v47);
      MEMORY[0x277D82BD8](v30);
      (*(v49 + 8))(v53, v48);
      sub_2555E3C2C(v33, v34);
    }
  }
}

uint64_t sub_2555EAC1C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  MEMORY[0x277D82BD8](v0[8]);
  sub_2555E3C2C(v0[9], v0[10]);
  return swift_deallocObject();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555EAD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F3414;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x277D82BE0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_97;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555EAFDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555EB04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F3350;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x259C3AAB0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_91;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555EB2E8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

char *sub_2555EB590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a1;
  v131 = a2;
  v142 = a3;
  v94 = sub_2555EC8B8;
  v95 = sub_2555ECAD0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v163 = 0;
  v161 = 0;
  v162 = 0;
  v155 = 0;
  v156 = 0;
  v147 = 0;
  v148 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA8F8, "HH");
  v96 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v97 = &v55 - v96;
  v125 = 0;
  v98 = sub_2556008CC();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v125, v7, v8, v9);
  v102 = &v55 - v101;
  v103 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v55 - v101, v12, v13);
  v104 = &v55 - v103;
  v172 = &v55 - v103;
  v105 = sub_25560089C();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v14, v15, v16);
  v109 = &v55 - v108;
  v171 = &v55 - v108;
  v110 = sub_25560086C();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v17, v18, v19);
  v114 = &v55 - v113;
  v170 = &v55 - v113;
  v115 = sub_25560080C();
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v20, v21, v22);
  v119 = &v55 - v118;
  v169 = &v55 - v118;
  v120 = sub_2556009AC();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v23, v24, v25);
  v124 = &v55 - v123;
  v126 = sub_25560083C();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v26, v27, v28);
  v141 = &v55 - v129;
  v168 = &v55 - v129;
  v133 = sub_2556009FC();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v137 = *(v134 + 64);
  v136 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v132, v131, v142, v29);
  v138 = &v55 - v136;
  v139 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v30, v31, v32, &v55 - v136);
  v140 = &v55 - v139;
  v167 = &v55 - v139;
  v165 = v33;
  v166 = v34;
  v164 = v35;
  v163 = v36;
  sub_2556009EC();
  v37 = v143;
  sub_2556009CC();
  v144 = v37;
  v145 = v37;
  if (v37)
  {
    v58 = v145;
    (*(v134 + 8))(v140, v133);
    v63 = v58;
    return v69;
  }

  sub_25560081C();
  v93 = 0;
  v80 = 4;
  v78 = MEMORY[0x277D84B78];
  v38 = sub_255600E8C();
  *v39 = 0;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = 1;
  sub_2555E3F34();
  v81 = v38;
  v79 = v38 + 32;

  v83 = &v161;
  sub_25560070C();
  swift_unknownObjectRelease();

  v82 = &v160;
  v160 = 4;
  sub_2555EC960();
  v91 = MEMORY[0x277CC9318];
  sub_255600C9C();
  v40 = sub_2556009DC();
  v84 = MEMORY[0x259C39C20](v40);
  v85 = v41;
  (*(v121 + 8))(v124, v120);
  sub_25560071C();
  sub_2555E3C2C(v84, v85);
  sub_255600A0C();
  v86 = v161;
  v87 = v162;
  sub_2555E3B7C(v161, v162);
  v90 = v159;
  v159[0] = v86;
  v159[1] = v87;
  v88 = sub_2555EC9D8();
  v89 = sub_2555ECA58();
  sub_2556007EC();
  sub_2555E3BF8(v90);
  v42 = v93;
  sub_2556007FC();
  v92 = v42;
  if (v42)
  {
    __break(1u);
    goto LABEL_10;
  }

  v76 = v157;
  v77 = v158;
  v155 = v157;
  v156 = v158;
  if (MEMORY[0x259C39990]() != *(v130 + OBJC_IVAR___MCLECv2Encryption_symmetricKeyLength))
  {
    v59 = *(v130 + OBJC_IVAR___MCLECv2Encryption_symmetricKeyLength);
    v61 = MEMORY[0x259C39990](v76, v77);
    sub_2555E7104();
    v60 = 0;
    v50 = swift_allocError();
    v51 = v60;
    v52 = v50;
    v53 = v61;
    v62 = v52;
    *v54 = v59;
    *(v54 + 8) = v53;
    *(v54 + 16) = v51 & 1;
    swift_willThrow();
    sub_2555E3C2C(v76, v77);
    (*(v116 + 8))(v119, v115);
    sub_2555E3BF8(&v161);
    (*(v127 + 8))(v141, v126);
    (*(v134 + 8))(v140, v133);
    v63 = v62;
    return v69;
  }

  sub_2555E3B7C(v76, v77);
  v151 = v76;
  v152 = v77;
  sub_2555E485C();
  v70 = 16;
  v73 = MEMORY[0x277CC9318];
  sub_255600C7C();
  v149 = v153;
  v150 = v154;
  sub_25560085C();
  v71 = sub_25560073C();
  v72 = v43;
  v147 = v71;
  v148 = v43;
  sub_2555E3B7C(v71, v43);
  v44 = v92;
  v146[2] = v71;
  v146[3] = v72;
  sub_25560088C();
  v74 = v44;
  v75 = v44;
  if (v44)
  {
LABEL_10:
    v57 = v75;
    sub_2555E3C2C(v71, v72);
    (*(v111 + 8))(v114, v110);
    sub_2555E3C2C(v76, v77);
    (*(v116 + 8))(v119, v115);
    sub_2555E3BF8(&v161);
    (*(v127 + 8))(v141, v126);
    (*(v134 + 8))(v140, v133);
    v63 = v57;
    return v69;
  }

  v66 = v146;
  v146[0] = v132;
  v146[1] = v131;
  (*(v106 + 16))(v97, v109, v105);
  (*(v106 + 56))(v97, 0, 1, v105);
  v45 = v74;
  sub_25560087C();
  v67 = v45;
  v68 = v45;
  if (!v45)
  {
    v46 = v130;
    sub_2555ECB78(v97);
    v64 = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer();
    (*(v99 + 16))(v102, v104, v98);
    (*(v134 + 16))(v138, v140, v133);
    v47 = (*(v121 + 16))(v124, v142, v120);
    v48 = (*((*v46 & *MEMORY[0x277D85000]) + 0x68))(v47);
    v65 = sub_2555ECC48(v102, v138, v124, v48 & 1);
    (*(v99 + 8))(v104, v98);
    (*(v106 + 8))(v109, v105);
    sub_2555E3C2C(v71, v72);
    (*(v111 + 8))(v114, v110);
    sub_2555E3C2C(v76, v77);
    (*(v116 + 8))(v119, v115);
    sub_2555E3BF8(&v161);
    (*(v127 + 8))(v141, v126);
    (*(v134 + 8))(v140, v133);
    return v65;
  }

  v56 = v68;
  sub_2555ECB78(v97);
  (*(v106 + 8))(v109, v105);
  sub_2555E3C2C(v71, v72);
  (*(v111 + 8))(v114, v110);
  sub_2555E3C2C(v76, v77);
  (*(v116 + 8))(v119, v115);
  sub_2555E3BF8(&v161);
  (*(v127 + 8))(v141, v126);
  (*(v134 + 8))(v140, v133);
  v63 = v56;
  return v69;
}

uint64_t sub_2555EC8B8@<X0>(uint64_t *a1@<X8>)
{
  sub_255600C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
  sub_2555E3A54();
  result = sub_25560075C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_2555EC960()
{
  v2 = qword_27F7BA900;
  if (!qword_27F7BA900)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555EC9D8()
{
  v2 = qword_27F7BA908;
  if (!qword_27F7BA908)
  {
    sub_255600A0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555ECA58()
{
  v2 = qword_27F7BA910;
  if (!qword_27F7BA910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555ECAD0@<X0>(uint64_t *a1@<X8>)
{
  sub_255600C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
  sub_2555E3A54();
  result = sub_25560075C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_2555ECB78(uint64_t a1)
{
  v3 = sub_25560089C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t MCLECv2Encryption.ECv2EncryptionError.errorDescription.getter()
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v16 = 0;
  v15 = 0;
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  v21 = *v0;
  v22 = v12;
  v23 = v13 & 1;
  if (v13)
  {
    v20[0] = sub_255600E7C();
    v20[1] = v6;
    v7 = sub_255600B3C();
    MEMORY[0x259C3A100](v7);

    v17 = v11;
    v18 = v12;
    v19 = v13 & 1;
    sub_255600E3C();
    v8 = sub_255600B3C();
    MEMORY[0x259C3A100](v8);

    sub_2555E5B38(v20);
    return sub_255600B2C();
  }

  else
  {
    v16 = v11;
    v15 = v12;
    v14[0] = sub_255600E7C();
    v14[1] = v1;
    v2 = sub_255600B3C();
    MEMORY[0x259C3A100](v2);

    sub_255600E3C();
    v3 = sub_255600B3C();
    MEMORY[0x259C3A100](v3);

    sub_255600E4C();
    v4 = sub_255600B3C();
    MEMORY[0x259C3A100](v4);

    sub_255600E4C();
    v5 = sub_255600B3C();
    MEMORY[0x259C3A100](v5);

    sub_2555E5B38(v14);
    return sub_255600B2C();
  }
}

uint64_t sub_2555ED148()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptionVersion);
  v3 = *(v0 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptionVersion + 8);

  return v2;
}

uint64_t sub_2555ED200()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptedData);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555ED2D4()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_ephemeralPublicKey);
  v3 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_ephemeralPublicKey + 8);

  return v2;
}

uint64_t sub_2555ED3AC()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_gcmEncryptedData);
  v3 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_gcmEncryptedData + 8);

  return v2;
}

uint64_t sub_2555ED484()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_gcmTag);
  v3 = *(v0 + OBJC_IVAR___MCLECv2EncryptedData_gcmTag + 8);

  return v2;
}

char *sub_2555ED520(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v56 = a1;
  v55 = a2;
  v54 = a3;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v57 = sub_2556009AC();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = &v29 - v60;
  v68 = MEMORY[0x28223BE20](v56, v55, v54, v4);
  v67 = v5;
  v66 = v6 & 1;
  v69 = v3;
  if (v6)
  {
    v7 = sub_25560072C();
    v51 = &v64;
    v64 = v7;
    v65 = v8;
    v50 = &v62;
    v62 = 4;
    sub_2555EC960();
    sub_255600C9C();
    v9 = sub_2556009DC();
    v52 = MEMORY[0x259C39C20](v9);
    v53 = v10;
    (*(v58 + 8))(v61, v57);
    sub_25560071C();
    sub_2555E3C2C(v52, v53);
  }

  else
  {
    v11 = sub_2556009DC();
    v48 = MEMORY[0x259C39C20](v11);
    v49 = v12;
    (*(v58 + 8))(v61, v57);
    v64 = v48;
    v65 = v49;
  }

  v31 = v69;
  v44 = &v64;
  v29 = v64;
  v30 = v65;
  sub_2555E3B7C(v64, v65);
  sub_2555ED9A0();
  v32 = sub_2556006DC();
  v33 = v13;
  sub_2555E3C2C(v29, v30);
  v14 = v33;
  v15 = &v31[OBJC_IVAR___MCLECv2EncryptedData_ephemeralPublicKey];
  *v15 = v32;
  v15[1] = v14;
  v36 = v69;
  v34 = sub_2556008AC();
  v35 = v16;
  sub_2555ED9A0();
  v37 = sub_2556006DC();
  v38 = v17;
  sub_2555E3C2C(v34, v35);
  v18 = v38;
  v19 = &v36[OBJC_IVAR___MCLECv2EncryptedData_gcmEncryptedData];
  *v19 = v37;
  v19[1] = v18;
  v41 = v69;
  v39 = sub_2556008BC();
  v40 = v20;
  sub_2555ED9A0();
  v42 = sub_2556006DC();
  v43 = v21;
  sub_2555E3C2C(v39, v40);
  v22 = v43;
  v23 = v44;
  v24 = &v41[OBJC_IVAR___MCLECv2EncryptedData_gcmTag];
  *v24 = v42;
  v24[1] = v22;
  sub_2555E3BF8(v23);
  v45 = v69;
  v46 = 0;
  v25 = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData();
  v63.receiver = v45;
  v63.super_class = v25;
  v47 = objc_msgSendSuper2(&v63, sel_init);
  MEMORY[0x277D82BE0](v47);
  v69 = v47;
  v26 = sub_2556008CC();
  (*(*(v26 - 8) + 8))(v55);
  v27 = sub_2556009FC();
  (*(*(v27 - 8) + 8))(v56);
  MEMORY[0x277D82BD8](v69);
  return v47;
}

uint64_t sub_2555ED9A0()
{
  sub_2555F314C(0);

  return 0;
}

uint64_t sub_2555EDA84(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;

  v15[0] = sub_255600B3C();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x259C39DE0](v15[0], v2, a1, a2);
  sub_2555E5B90(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  v14[0] = sub_255600B3C();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x259C39DE0](v14[0], v3, a1, a2);
  sub_2555E5B90(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  v13[0] = sub_255600B3C();
  v13[1] = v4;
  v7 = MEMORY[0x259C39DE0](v13[0], v4, a1, a2);
  sub_2555E5B90(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_2555EDCD8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_2555EE038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2555EDA84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2555EE084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2555EDCC0();
  *a1 = result;
  return result;
}

id MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555EE1BC(uint64_t a1)
{
  v20 = a1;
  v38 = 0;
  v37 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA940, "HH");
  v21 = *(v31 - 8);
  v22 = v31 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v9 - v23;
  v38 = MEMORY[0x28223BE20](v20, v2, v3, v4);
  v37 = v1;
  v24 = v38[3];
  v25 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v24);
  sub_2555F12DC();
  sub_255600F1C();
  v5 = v28;
  v29 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_ephemeralPublicKey);
  v30 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_ephemeralPublicKey + 8);

  v36 = 0;
  sub_255600E1C();
  v32 = v5;
  v33 = v5;
  if (v5)
  {
    v10 = v33;

    result = (*(v21 + 8))(v26, v31);
    v11 = v10;
  }

  else
  {

    v6 = v32;
    v16 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_gcmEncryptedData);
    v17 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_gcmEncryptedData + 8);

    v35 = 1;
    sub_255600E1C();
    v18 = v6;
    v19 = v6;
    if (v6)
    {
      v9[2] = v19;

      return (*(v21 + 8))(v26, v31);
    }

    else
    {

      v7 = v18;
      v12 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_gcmTag);
      v13 = *(v27 + OBJC_IVAR___MCLECv2EncryptedData_gcmTag + 8);

      v34 = 2;
      sub_255600E1C();
      v14 = v7;
      v15 = v7;
      if (v7)
      {
        v9[1] = v15;
      }

      return (*(v21 + 8))(v26, v31);
    }
  }

  return result;
}

uint64_t sub_2555EE594()
{
  type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer();
  sub_2555F13C4();
  v1 = sub_2555EE614();
  v2 = sub_2555EE64C(v1);

  return v2;
}

uint64_t sub_2555EE64C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v19 = a1;
  v18 = v1;
  v3 = sub_25560062C();
  v14 = v2;
  v15 = v3;
  if ((v2 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_14;
  }

  v25 = v3;
  v26 = v2;
  v21 = 0;
  v10 = objc_opt_self();
  sub_2555E3B7C(v15, v14);
  v12 = sub_2556006CC();
  sub_2555E3C2C(v15, v14);
  v17 = 0;
  v13 = [v10 JSONObjectWithData:v12 options:4 error:&v17];
  v11 = v17;
  MEMORY[0x277D82BE0](v17);
  v4 = v21;
  v21 = v11;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    sub_255600D0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v21;
    v7 = sub_2556006AC();
    MEMORY[0x277D82BD8](v6);
    swift_willThrow();
    MEMORY[0x259C3AAA0](v7);
    memset(v22, 0, sizeof(v22));
    v23 = 0;
  }

  if (!v23)
  {
    sub_2555F1444(v22);
    sub_2555E3C2C(v15, v14);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA950, &qword_255603FC0);
    sub_255600E8C();
    v8 = sub_255600A4C();
    goto LABEL_15;
  }

  sub_2555F1520(v22, v24);
  sub_2555F153C(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA958, &qword_255603FC8);
  if (swift_dynamicCast())
  {
    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_2555E3C2C(v15, v14);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  sub_2555E3C2C(v15, v14);
  v8 = v9;
LABEL_15:
  *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2555EEB30()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv2EncryptedDataContainer__publicKeyHash);
  v3 = *(v0 + OBJC_IVAR___MCLECv2EncryptedDataContainer__publicKeyHash + 8);

  return v2;
}

char *sub_2555EEB7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v54 = a1;
  v53 = a2;
  v41 = a3;
  v52 = a4;
  v5 = v4;
  v59 = v5;
  v67 = 0;
  v69 = sub_2555EF174;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v62 = 0;
  v42 = sub_2556008CC();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v7, v8, v9);
  v46 = &v33 - v45;
  v47 = sub_2556009FC();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v10, v11, v12);
  v51 = &v33 - v50;
  v55 = sub_25560080C();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v54, v53, v13, v52);
  v65 = &v33 - v58;
  v80 = &v33 - v58;
  v78 = v14;
  v77 = v15;
  v76 = a3;
  v75 = v16 & 1;
  v79 = v59;
  v61 = v59;
  v60 = OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptionVersion;
  v17 = sub_255600B3C();
  v18 = &v61[v60];
  *v18 = v17;
  v18[1] = v19;
  v63 = sub_255600A0C();
  v20 = sub_25560096C();
  v66 = v74;
  v74[0] = v20;
  v74[1] = v21;
  v64 = sub_2555EC9D8();
  sub_2555ECA58();
  v68 = MEMORY[0x277CC9318];
  sub_2556007EC();
  sub_2555E3BF8(v66);
  v70 = v79;
  sub_2556007FC();
  v33 = v72;
  v34 = v73;
  sub_2555ED9A0();
  v35 = sub_2556006DC();
  v36 = v22;
  sub_2555E3C2C(v33, v34);
  v23 = v36;
  v24 = &v70[OBJC_IVAR___MCLECv2EncryptedDataContainer__publicKeyHash];
  *v24 = v35;
  v24[1] = v23;
  v37 = v79;
  v39 = 0;
  type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData();
  (*(v48 + 16))(v51, v53, v47);
  (*(v43 + 16))(v46, v54, v42);
  v25 = sub_2555ED4D0(v51, v46, v52 & 1);
  v26 = v56;
  v27 = v55;
  v28 = v25;
  v29 = v65;
  *&v37[OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptedData] = v28;
  (*(v26 + 8))(v29, v27);
  v38 = v79;
  v30 = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer();
  v71.receiver = v38;
  v71.super_class = v30;
  v40 = objc_msgSendSuper2(&v71, sel_init);
  MEMORY[0x277D82BE0](v40);
  v79 = v40;
  v31 = sub_2556009AC();
  (*(*(v31 - 8) + 8))(v41);
  (*(v48 + 8))(v53, v47);
  (*(v43 + 8))(v54, v42);
  MEMORY[0x277D82BD8](v79);
  return v40;
}

uint64_t sub_2555EF174@<X0>(uint64_t *a1@<X8>)
{
  sub_255600C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
  sub_2555E3A54();
  result = sub_25560075C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_2555EF2D0(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;

  v15[0] = sub_255600B3C();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x259C39DE0](v15[0], v2, a1, a2);
  sub_2555E5B90(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  v14[0] = sub_255600B3C();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x259C39DE0](v14[0], v3, a1, a2);
  sub_2555E5B90(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  v13[0] = sub_255600B3C();
  v13[1] = v4;
  v7 = MEMORY[0x259C39DE0](v13[0], v4, a1, a2);
  sub_2555E5B90(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_2555EF524(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_2555EF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2555EF2D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2555EF8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2555EF50C();
  *a1 = result;
  return result;
}

id MCLECv2Encryption.ECv2EncryptedDataContainer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555EFA14(uint64_t a1)
{
  v22 = a1;
  v41 = 0;
  v40 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA968, &qword_255603FD0);
  v23 = *(v33 - 8);
  v24 = v33 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v9 - v25;
  v41 = MEMORY[0x28223BE20](v22, v2, v3, v4);
  v40 = v1;
  v26 = v41[3];
  v27 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v26);
  sub_2555F161C();
  sub_255600F1C();
  v5 = v30;
  v31 = *(v29 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptionVersion);
  v32 = *(v29 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptionVersion + 8);

  v39 = 0;
  sub_255600E1C();
  v34 = v5;
  v35 = v5;
  if (v5)
  {
    v10 = v35;

    result = (*(v23 + 8))(v28, v33);
    v11 = v10;
  }

  else
  {

    v16 = *(v29 + OBJC_IVAR___MCLECv2EncryptedDataContainer__encryptedData);
    MEMORY[0x277D82BE0](v16);
    v19 = &v38;
    v38 = v16;
    v17 = &v37;
    v37 = 1;
    v18 = type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData();
    sub_2555F1698();
    v6 = v34;
    sub_255600E2C();
    v20 = v6;
    v21 = v6;
    if (v6)
    {
      v9[2] = v21;
      MEMORY[0x277D82BD8](v38);
      return (*(v23 + 8))(v28, v33);
    }

    else
    {
      MEMORY[0x277D82BD8](v38);
      v7 = v20;
      v12 = *(v29 + OBJC_IVAR___MCLECv2EncryptedDataContainer__publicKeyHash);
      v13 = *(v29 + OBJC_IVAR___MCLECv2EncryptedDataContainer__publicKeyHash + 8);

      v36 = 2;
      sub_255600E1C();
      v14 = v7;
      v15 = v7;
      if (v7)
      {
        v9[1] = v15;
      }

      return (*(v23 + 8))(v28, v33);
    }
  }

  return result;
}

_BYTE *MCLECv2Encryption.init()()
{
  v44 = 0;
  v36 = 0;
  v20 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v35 = &v20 - v20;
  v21 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v4, v5, v6);
  v34 = &v20 - v21;
  v22 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v7, v8, v9);
  v33 = &v20 - v22;
  v44 = v0;
  v38 = v0;
  v37 = OBJC_IVAR___MCLECv2Encryption_queue;
  v26 = sub_2555E67B0();
  v24 = 17;
  v10 = sub_255600E7C();
  v28 = &v42;
  v42 = v10;
  v43 = v11;
  v25 = 1;
  v12 = sub_255600B3C();
  v23 = v13;
  MEMORY[0x259C3A100](v12);

  v39 = type metadata accessor for MCLECv2Encryption();
  sub_2555E683C();
  v14 = sub_255600B3C();
  v27 = v15;
  MEMORY[0x259C3A100](v14);

  v30 = v42;
  v29 = v43;

  sub_2555E5B38(v28);
  v31 = sub_255600B2C();
  v32 = v16;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v35);
  v17 = sub_255600CEC();
  v18 = v39;
  *&v38[v37] = v17;
  *&v44[OBJC_IVAR___MCLECv2Encryption_symmetricKeyLength] = 32;
  v44[OBJC_IVAR___MCLECv2Encryption_prependsEphemeralKeyPadding] = 0;
  v41.receiver = v44;
  v41.super_class = v18;
  v40 = objc_msgSendSuper2(&v41, sel_init);
  MEMORY[0x277D82BE0](v40);
  v44 = v40;
  MEMORY[0x277D82BD8](v40);
  return v40;
}

id MCLECv2Encryption.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv2Encryption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555F01EC()
{
  sub_2555F2918();
  sub_2555F2998();
  return sub_255600FEC();
}

uint64_t sub_2555F03F0()
{
  sub_2555F2918();
  sub_2555F2998();
  return sub_255600FDC();
}

uint64_t sub_2555F0434()
{
  sub_2555F2918();
  sub_2555F2998();
  return sub_255600FBC();
}

uint64_t sub_2555F0478()
{
  sub_2555F2918();
  sub_2555F2998();
  return sub_255600FCC();
}

uint64_t sub_2555F0624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_3(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2555F0658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_3(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2555F0698@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2555F0704(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_255600C2C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_255600E0C();
  __break(1u);
LABEL_12:
  result = sub_255600DFC();
  __break(1u);
  return result;
}

uint64_t sub_2555F0A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17, a2, v26, a4);
        v15 = sub_2555F2F24;
        v16 = &v37;
        sub_2555F0704(sub_2555F2F40, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_255600DFC();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_255600DFC();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_255600DFC();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_255600DFC();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_255600DFC();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_255600DFC();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_255600DFC();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_255600DFC();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_255600DFC();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_255600DFC();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_255600DFC();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_255600DFC();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_255600E0C();
    __break(1u);
  }

  result = sub_255600DFC();
  __break(1u);
  return result;
}

unint64_t sub_2555F1260()
{
  v2 = qword_27F7BAD30;
  if (!qword_27F7BAD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAD30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F12DC()
{
  v2 = qword_27F7BAD38;
  if (!qword_27F7BAD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAD38);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_2555F13C4()
{
  v2 = qword_27F7BA948;
  if (!qword_27F7BA948)
  {
    type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA948);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_2555F1444(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

__n128 sub_2555F1520(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_2555F153C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_2555F15A0()
{
  v2 = qword_27F7BAD40;
  if (!qword_27F7BAD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAD40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F161C()
{
  v2 = qword_27F7BAD48[0];
  if (!qword_27F7BAD48[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BAD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F1698()
{
  v2 = qword_27F7BA970;
  if (!qword_27F7BA970)
  {
    type metadata accessor for MCLECv2Encryption.ECv2EncryptedDataContainer.EncryptedData();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA970);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MCLECv2Encryption.ECv2EncryptionError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MCLECv2Encryption.ECv2EncryptionError(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_2555F1CA8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555F1E10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2555F2034(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555F219C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2555F23D8()
{
  v2 = qword_27F7BA988;
  if (!qword_27F7BA988)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2488()
{
  v2 = qword_27F7BB450;
  if (!qword_27F7BB450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BB450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F251C()
{
  v2 = qword_27F7BB458[0];
  if (!qword_27F7BB458[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BB458);
    return WitnessTable;
  }

  return v2;
}