id sub_2559A6CD4(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAA68]);
    v8 = objc_msgSend_formatOptions(v2, v3, v4, v5, v6, v7);
    objc_msgSend_setFormatOptions_(v2, v9, v8 | 0x800, v10, v11, v12);
    v17 = objc_msgSend_dateFromString_(v2, v13, v1, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_2559A7178(unsigned int *a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v2, v3, (a1 + 1), *a1, 4, 0);

  return v4;
}

uint64_t sub_2559A7618(uint64_t a1, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*a1 + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL sub_2559A7668(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[5])
  {
    return 0;
  }

  v4 = a1[1];
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(a1 + 5);
  v8 = *(a1 + 4) + 1;
  *(a1 + 4) = v8;
  v9 = *(a1 + 6) + 1;
  *(a1 + 6) = v9;
  if (v8 > v7 || v9 > *(a1 + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((a1[5] & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (a1[5])
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL sub_2559A777C(void *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = sub_2559A77F8(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = a1[1];
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL sub_2559A77F8(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v4 = a2 - *a1;
  if (v4 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(a1 + 8);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

void sub_2559A7AB4(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va, a3);

  sub_2559A811C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2559A7B04(uint64_t a1, const void *a2, unint64_t a3)
{
  sub_2559A7BAC(a1);
  sub_2559A83E0(a1, a3 + 1, 4uLL);
  sub_2559A8418(a1, 1uLL);
  v6 = (*(a1 + 48) - 1);
  *(a1 + 48) = v6;
  *v6 = 0;
  if (a3)
  {
    sub_2559A8418(a1, a3);
    v7 = (*(a1 + 48) - a3);
    *(a1 + 48) = v7;
    memcpy(v7, a2, a3);
  }

  sub_2559A8660(a1, a3);
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t sub_2559A7BAC(uint64_t result)
{
  if (*(result + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(result + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return result;
}

_DWORD *sub_2559A7C14(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = sub_2559A85F0(result, a3);

    return sub_2559A8738(v4, a2, v5);
  }

  return result;
}

unint64_t sub_2559A7C64(unint64_t result, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = result;
  if (a3 || *(result + 80) == 1)
  {
    sub_2559A86B4(result, 2uLL);
    sub_2559A8418(v5, 2uLL);
    v6 = *(v5 + 48);
    *(v6 - 2) = v3;
    v6 -= 2;
    *(v5 + 48) = v6;
    v7 = (*(v5 + 32) - v6 + *(v5 + 40));
    result = sub_2559A8418(v5, 8uLL);
    **(v5 + 56) = v7 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v8 = *(v5 + 68);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 68) = v8;
  }

  return result;
}

uint64_t sub_2559A7D18(uint64_t a1, int a2)
{
  if ((*(a1 + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  sub_2559A86B4(a1, 4uLL);
  sub_2559A8418(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = 0;
  v4 -= 4;
  *(a1 + 48) = v4;
  v5 = *(a1 + 32) - v4 + *(a1 + 40);
  if ((*(a1 + 68) + 2) <= 4u)
  {
    v6 = 4;
  }

  else
  {
    v6 = (*(a1 + 68) + 2);
  }

  *(a1 + 68) = v6;
  sub_2559A8418(a1, v6);
  v7 = (*(a1 + 48) - v6);
  *(a1 + 48) = v7;
  bzero(v7, v6);
  v8 = v5 - a2;
  if ((v5 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v9[1] = v8;
  *v9 = *(a1 + 68);
  v10 = *(a1 + 56);
  if (!v10)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v11 = *(a1 + 64);
  v12 = v10 - 8 * v11;
  if (v11)
  {
    v13 = (v10 - 8 * v11);
    do
    {
      v14 = *(v13 + 2);
      if (*(v9 + v14))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v15 = *v13;
      v13 += 2;
      *(v9 + v14) = v5 - v15;
    }

    while (v13 < v10);
  }

  *(a1 + 56) = v12;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  LODWORD(v18) = v17 - v9 + v16;
  if (*(a1 + 81))
  {
    if (!v16)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v16 < v12)
    {
      v19 = *v9;
      v20 = v16 + v17;
      v21 = *(a1 + 40);
      while (1)
      {
        v18 = *v21;
        if (v19 == *(v20 - v18) && !memcmp((v20 - v18), v9, v19))
        {
          break;
        }

        if (++v21 >= v12)
        {
          LODWORD(v18) = v17 - v9 + v16;
          goto LABEL_21;
        }
      }

      v9 = (v9 + (v17 - v9 + v16 - v5));
      *(a1 + 48) = v9;
    }
  }

LABEL_21:
  if (v18 == v17 + v16 - v9)
  {
    sub_2559A8418(a1, 4uLL);
    v22 = *(a1 + 56);
    *v22 = v18;
    *(a1 + 56) = v22 + 1;
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
  }

  *(v16 + v17 - v5) = v18 - v5;
  *(a1 + 70) = 0;
  return v5;
}

uint64_t sub_2559A7FB4(uint64_t a1, unsigned int a2, const char *a3, int a4)
{
  v8 = a3 != 0;
  sub_2559A7BAC(a1);
  *(a1 + 56) = *(a1 + 40);
  v9 = 4;
  if (a4)
  {
    v9 = 8;
  }

  sub_2559A83E0(a1, v9 + 4 * v8, *(a1 + 72));
  if (a3)
  {
    if (strlen(a3) != 4)
    {
      __assert_rtn("Finish", "flatbuffers.h", 2154, "strlen(file_identifier) == kFileIdentifierLength");
    }

    sub_2559A8418(a1, 4uLL);
    v10 = *(a1 + 48);
    *(a1 + 48) = v10 - 4;
    *(v10 - 4) = *a3;
  }

  v11 = sub_2559A85F0(a1, a2);
  result = sub_2559A8660(a1, v11);
  if (a4)
  {
    result = sub_2559A8660(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40));
  }

  *(a1 + 71) = 1;
  return result;
}

uint64_t sub_2559A80B8(uint64_t a1)
{
  if ((*(a1 + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1319, "finished");
  }

  result = *(a1 + 48);
  if (!result)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  return result;
}

void *sub_2559A811C(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_2559A8230(*(v2 + 8));
    MEMORY[0x259C451C0](v2, 0x1060C40C2B13FB5);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*a1)
    {
      v4 = a1[4];
      (*(**a1 + 24))(*a1);
    }

    else
    {
      MEMORY[0x259C451A0](v3, 0x1000C8077774924);
    }
  }

  a1[5] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_2559A8230(void *a1)
{
  if (a1)
  {
    sub_2559A8230(*a1);
    sub_2559A8230(a1[1]);

    operator delete(a1);
  }
}

char *sub_2559A8290(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

void sub_2559A838C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C451A0);
  }
}

unint64_t sub_2559A83E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 72) < a3)
  {
    *(a1 + 72) = a3;
  }

  return sub_2559A86E8(a1, (a3 - 1) & (-a2 - (*(a1 + 32) - *(a1 + 48) + *(a1 + 40))));
}

unint64_t sub_2559A8418(uint64_t *a1, unint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 < v3 || (v6 = a1[5], v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = a1[4];
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = a1[2];
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (a1[3] + v8 + v10 - 1) & -a1[3];
    a1[4] = v11;
    v12 = *a1;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_2867B5668;
        v13 = sub_2559A8290(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_2867B5668;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = a1[4];
    v2 = &v13[v8 - v9];
    a1[5] = v13;
    a1[6] = v2;
    a1[7] = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

uint64_t sub_2559A85F0(_DWORD *a1, unsigned int a2)
{
  sub_2559A86B4(a1, 4uLL);
  if (!a2 || (v4 = a1[8] - a1[12] + a1[10], v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return v6 + 4;
}

uint64_t sub_2559A8660(uint64_t a1, int a2)
{
  sub_2559A86B4(a1, 4uLL);
  sub_2559A8418(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t sub_2559A86B4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    *(a1 + 72) = a2;
  }

  return sub_2559A86E8(a1, (a2 - 1) & -(*(a1 + 32) - *(a1 + 48) + *(a1 + 40)));
}

unint64_t sub_2559A86E8(uint64_t *a1, unint64_t a2)
{
  result = sub_2559A8418(a1, a2);
  a1[6] -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(a1[6] + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

unint64_t sub_2559A8738(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = sub_2559A8660(result, a3);
    result = sub_2559A8418(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

void sub_2559A9CE0(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, ...)
{
  va_start(va, a7);

  sub_2559A811C(va);
  _Unwind_Resume(a1);
}

void sub_2559AA3D4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_2798032E8;
LABEL_5:
    v7 = objc_alloc(*v6);
    v12 = objc_msgSend_initWithDonation_(v7, v8, v15, v9, v10, v11);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_2798032F0;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = *(a1 + 32);
  v14 = sub_2559CA340(v5);
  (*(v13 + 16))(v13, v12, v14);
}

id sub_2559AAA44(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_copy(a1, a2, a3, a4, a5, a6);
  if (objc_msgSend_length(v7, v8, v9, v10, v11, v12))
  {
    v17 = v7;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Invalid userId: %@", v14, v15, v16, v7, *MEMORY[0x277CCA450]);
    v29[0] = v19;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v29, &v28, 1, v21);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v23, @"com.apple.koa.donate", 5, v22, v24);
    if (a2 && v25)
    {
      v25 = v25;
      *a2 = v25;
    }

    v17 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t sub_2559AAB70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v30[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_cascadeItemTypeFromItemType_(KVItemConverter, a2, a1, a4, a5, a6);
  if (v11 == *MEMORY[0x277CF94A8])
  {
    v12 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    if (v7 - 1 >= 0x1A)
    {
      v14 = 0;
    }

    else
    {
      v14 = v7;
    }

    v15 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v8, off_279803A58[v14], 4, v9, v10);
    v20 = objc_msgSend_stringWithFormat_(v13, v16, @"KVItemType: %@ not supported by Cascade", v17, v18, v19, v15, v29);
    v30[0] = v20;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v30, &v29, 1, v22);
    v26 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v24, @"com.apple.koa.donate", 2, v23, v25);
    if (a2 && v26)
    {
      v26 = v26;
      *a2 = v26;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

id sub_2559AACD8(void *a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_copy(v3, v4, v5, v6, v7, v8);
    if (objc_msgSend_length(v3, v10, v11, v12, v13, v14))
    {
      v9 = v9;
      v19 = v9;
      goto LABEL_10;
    }

    v20 = MEMORY[0x277CCA9B8];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"Invalid originAppId: %@", v16, v17, v18, v9, *MEMORY[0x277CCA450]);
    v39 = v27;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v39, &v38, 1, v31);
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v9 = NSStringFromClass(v22);
    v27 = objc_msgSend_stringWithFormat_(v21, v23, @"OriginAppId must be a nonempty NSString. Received: %@", v24, v25, v26, v9);
    v41[0] = v27;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v41, &v40, 1, v29);
  }
  v32 = ;
  v35 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v33, @"com.apple.koa.donate", 3, v32, v34);
  if (a2 && v35)
  {
    v35 = v35;
    *a2 = v35;
  }

  v19 = 0;
LABEL_10:

  v36 = *MEMORY[0x277D85DE8];

  return v19;
}

void sub_2559AB208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2559AB22C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2559AB244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_datasetInfo(v3, v5, v6, v7, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_msgSend_originAppId(v10, v12, v13, v14, v15, v16);

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CF9500]);
    v19 = *MEMORY[0x277CF9498];
    v25 = objc_msgSend_originAppId(v10, v20, v21, v22, v23, v24);
    v26 = *(*(a1 + 40) + 8);
    obj = *(v26 + 40);
    v29 = objc_msgSend_initWithKey_value_error_(v18, v27, v19, v25, &obj, v28);
    objc_storeStrong((v26 + 40), obj);

    if (!v29)
    {
      v39 = 0;
      goto LABEL_6;
    }

    objc_msgSend_addObject_(v11, v30, v29, v31, v32, v33);
  }

  v34 = *(*(a1 + 48) + 8);
  v45 = *(v34 + 40);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2559AB410;
  v42[3] = &unk_279803938;
  v43 = v11;
  v41 = *(a1 + 32);
  v35 = v41;
  v44 = v41;
  v39 = objc_msgSend_enumerateCascadeItemsWithError_usingBlock_(v3, v36, &v45, v42, v37, v38);
  objc_storeStrong((v34 + 40), v45);

LABEL_6:
  objc_autoreleasePoolPop(v4);

  return v39;
}

uint64_t sub_2559AB410(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CF94D8];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = a1[4];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v11 = objc_msgSend_initWithItemType_descriptors_localInstances_error_(v7, v10, a2, v8, v6, &obj);

  objc_storeStrong((v9 + 40), obj);
  if (v11)
  {
    v12 = (*(a1[5] + 16))();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_2559AB694(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_data(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v8, v7, v9, v10, v11);

  return 1;
}

BOOL sub_2559AB9A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = objc_msgSend_toCascadeItem_(a2, a2, &obj, a4, a5, a6);
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v14 = objc_msgSend_content(v8, v9, v10, v11, v12, v13);
    v15 = objc_opt_class();
    v21 = objc_msgSend_itemType(v15, v16, v17, v18, v19, v20);

    v22 = *(a1 + 32);
    v27 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v23, v21, v24, v25, v26);
    v32 = objc_msgSend_objectForKey_(v22, v28, v27, v29, v30, v31);

    if (!v32)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v37 = *(a1 + 32);
      v42 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v38, v21, v39, v40, v41);
      objc_msgSend_setObject_forKey_(v37, v43, v32, v42, v44, v45);
    }

    objc_msgSend_addObject_(v32, v33, v8, v34, v35, v36);
  }

  return v8 != 0;
}

id KVUserIdHash(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v6 = objc_msgSend_stringByAppendingString_(@"UserEx", a2, a1, a4, a5, a6);
    v12 = KVHash64String(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id KVUserIdHashToString(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_unsignedLongLongValue(a1, a2, a3, a4, a5, a6);
    a1 = objc_msgSend_stringWithFormat_(v7, v9, @"%llx", v10, v11, v12, v8);
    v6 = vars8;
  }

  return a1;
}

id KVUserIdHashFromString(void *a1)
{
  v1 = a1;
  v11 = KVScanHexString(v1, v2, v3, v4, v5, v6);
  if (v11 || objc_msgSend_isEqual_(v1, v7, @"0", v8, v9, v10))
  {
    v12 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v7, v11, v8, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

__CFString *KVUserDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = v4;
  if (!(v3 | v4))
  {
    v19 = @"Default";
    goto LABEL_9;
  }

  if (!v3)
  {
    v11 = &stru_2867B5AF8;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = &stru_2867B5AF8;
    goto LABEL_8;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@", v7, v8, v9, v3);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = MEMORY[0x277CCACA8];
  v13 = KVUserIdHashToString(v10, v5, v6, v7, v8, v9);
  v18 = objc_msgSend_stringWithFormat_(v12, v14, @"<%@>", v15, v16, v17, v13);

LABEL_8:
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@:%@%@", v7, v8, v9, @"UserEx", v11, v18);

LABEL_9:

  return v19;
}

id KVUserIdHashFromDataSiteURL(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v7 = objc_msgSend_lastPathComponent(v1, v2, v3, v4, v5, v6);
  if ((objc_msgSend_isEqual_(v7, v8, @"Default", v9, v10, v11) & 1) == 0)
  {
    v12 = KVUserIdHashFromString(v7);
    if (v12)
    {
      goto LABEL_6;
    }

    v13 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "KVUserIdHashFromDataSiteURL";
      v18 = 2112;
      v19 = v1;
      _os_log_error_impl(&dword_2559A5000, v13, OS_LOG_TYPE_ERROR, "%s Unrecognized dataSiteURL: %@", &v16, 0x16u);
    }
  }

  v12 = 0;
LABEL_6:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t KVProtectionClassForDataSiteURL(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_lastPathComponent(a1, a2, a3, a4, a5, a6);
  if (objc_msgSend_isEqual_(v6, v7, @"Default", v8, v9, v10))
  {
    v11 = 3;
  }

  else
  {
    v11 = 6;
  }

  return v11;
}

id KVDataSiteURL(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v3, @"UserEx", 1, a1, v4);
    v12 = KVUserIdHashToString(v5, v7, v8, v9, v10, v11);
    v15 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v13, v12, 1, v6, v14);
  }

  else
  {
    v15 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v3, @"Default", 1, a1, v4);
  }

  return v15;
}

id KVAllDataSites(void *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v2, v3, v4, v5, v6);
  v87 = 0;
  v10 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v8, @"Default", 1, v1, v9);
  v16 = objc_msgSend_path(v10, v11, v12, v13, v14, v15);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v7, v17, v16, &v87, v18, v19);
  v21 = v87;

  if (isDirectory && (v21 & 1) != 0)
  {
    objc_msgSend_addObject_(v81, v22, v10, v23, v24, v25);
  }

  v26 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v22, @"UserEx", 1, v1, v25);
  v32 = objc_msgSend_path(v26, v27, v28, v29, v30, v31);
  v36 = objc_msgSend_fileExistsAtPath_isDirectory_(v7, v33, v32, &v87, v34, v35);
  v37 = v87;

  if (!v36 || (v37 & 1) == 0)
  {
    goto LABEL_18;
  }

  v43 = objc_msgSend_path(v26, v38, v39, v40, v41, v42);
  v86 = 0;
  v47 = objc_msgSend_contentsOfDirectoryAtPath_error_(v7, v44, v43, &v86, v45, v46);
  v48 = v86;

  if (v47)
  {
    v78 = v48;
    v79 = v10;
    v80 = v1;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v49 = v47;
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v82, v92, 16, v51);
    if (v52)
    {
      v55 = v52;
      v56 = *v83;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v83 != v56)
          {
            objc_enumerationMutation(v49);
          }

          v58 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v53, *(*(&v82 + 1) + 8 * i), 1, v26, v54, v78);
          v64 = objc_msgSend_path(v58, v59, v60, v61, v62, v63);
          v68 = objc_msgSend_fileExistsAtPath_isDirectory_(v7, v65, v64, &v87, v66, v67);
          v69 = v87;

          if (v68 && (v69 & 1) != 0)
          {
            objc_msgSend_addObject_(v81, v70, v58, v71, v72, v73);
          }
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v53, &v82, v92, 16, v54);
      }

      while (v55);
    }

    v10 = v79;
    v1 = v80;
LABEL_18:
    v74 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v89 = "_detectDataSites";
      v90 = 2112;
      v91 = v81;
      _os_log_debug_impl(&dword_2559A5000, v74, OS_LOG_TYPE_DEBUG, "%s Managed data sites: %@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v77 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *v92 = 136315394;
    v93 = "_detectDataSites";
    v94 = 2112;
    v95 = v48;
    _os_log_error_impl(&dword_2559A5000, v77, OS_LOG_TYPE_ERROR, "%s Failed to resolve UserEx data site directories: %@", v92, 0x16u);
  }

LABEL_20:
  v75 = *MEMORY[0x277D85DE8];

  return v81;
}

id KVGetOrCreateDirectoryPath(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], a2, a1, 1, a5, a6);
    v8 = KVGetOrCreateDirectoryURL(v7, a2);
  }

  else
  {
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA050], -1000, 0, a6);
    v7 = v9;
    v8 = 0;
    if (a2 && v9)
    {
      v10 = v9;
      v8 = 0;
      *a2 = v7;
    }
  }

  return v8;
}

id KVGetOrCreateDirectoryURL(void *a1, void *a2)
{
  v8 = a1;
  if (v8)
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4, v5, v6, v7);
    DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v9, v10, v8, 1, 0, a2);

    v12 = 0;
    if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
    {
      v12 = v8;
    }
  }

  else
  {
    v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v3, *MEMORY[0x277CCA050], -1000, 0, v7);
    if (a2 && v13)
    {
      v13 = v13;
      *a2 = v13;
    }

    v12 = 0;
  }

  return v12;
}

uint64_t KVRemoveItemIfExistsAtPath(void *a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (objc_msgSend_length(v3, v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v9, v3, v10, v11, v12);

    v14 = KVRemoveItemIfExistsAtURL(v13, a2);
    v15 = *MEMORY[0x277D85DE8];
    return v14;
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"Invalid path: %@", v10, v11, v12, v3, *MEMORY[0x277CCA450]);

    v28[0] = v19;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v28, &v27, 1, v21);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v23, v18, -1000, v22, v24);
    if (a2)
    {
      if (v25)
      {
        v25 = v25;
        *a2 = v25;
      }
    }

    v26 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

uint64_t KVRemoveItemIfExistsAtURL(void *a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (v8)
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4, v5, v6, v7);
    v34 = 0;
    v13 = objc_msgSend_removeItemAtURL_error_(v9, v10, v8, &v34, v11, v12);
    v14 = v34;
    v20 = v14;
    if (v13)
    {

LABEL_9:
      v29 = 1;
      goto LABEL_10;
    }

    v30 = objc_msgSend_code(v14, v15, v16, v17, v18, v19);

    if (v30 == 4)
    {
      goto LABEL_9;
    }

    v29 = 0;
    if (a2 && v20)
    {
      v33 = v20;
      v29 = 0;
      *a2 = v20;
    }
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA050];
    v35 = *MEMORY[0x277CCA450];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"Invalid item URL: %@", v5, v6, v7, 0);
    v36[0] = v20;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v36, &v35, 1, v24);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v26, v22, -1000, v25, v27);
    if (a2 && v28)
    {
      v28 = v28;
      *a2 = v28;
    }

    v29 = 0;
  }

LABEL_10:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t KVWritePropertyList(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v9 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v8, a1, 200, 0, a4);
  if (objc_msgSend_length(v9, v10, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_path(v7, v15, v16, v17, v18, v19);
    v21 = v20;
    v27 = objc_msgSend_UTF8String(v21, v22, v23, v24, v25, v26);
    v28 = open_dprotected_np(v27, 1538, a3, 0, 384);

    v29 = objc_alloc(MEMORY[0x277CCA9F8]);
    v33 = objc_msgSend_initWithFileDescriptor_closeOnDealloc_(v29, v30, v28, 1, v31, v32);
    v42 = objc_msgSend_writeData_error_(v33, v34, v9, a4, v35, v36);
    if ((v42 & 1) == 0)
    {
      v43 = objc_msgSend_URLByDeletingLastPathComponent(v7, v37, v38, v39, v40, v41);
      v49 = objc_msgSend_path(v43, v44, v45, v46, v47, v48);

      v63 = 0;
      v55 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v50, v51, v52, v53, v54);
      isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v55, v56, v49, &v63, v57, v58);

      if ((isDirectory & 1) == 0)
      {
        v60 = qword_28106B3C0;
        if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v65 = "KVWritePropertyList";
          v66 = 2112;
          v67 = v49;
          v68 = 1024;
          v69 = v63;
          _os_log_error_impl(&dword_2559A5000, v60, OS_LOG_TYPE_ERROR, "%s Parent directory: %@ does not exist (isDirectory: %i)", buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v42 = 0;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v42;
}

id KVReadPropertyList(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], a2, a1, 0, a3, a6);
  if (v9)
  {
    v10 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v8, v9, a2, 0, a3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL KVInitializeModularFilesystemLayout()
{
  v62 = *MEMORY[0x277D85DE8];
  v0 = sub_2559ACD48();
  v54 = 0;
  v1 = KVGetOrCreateDirectoryURL(v0, &v54);
  v2 = v54;

  if (v1)
  {
    v3 = sub_2559ACDB0();
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7, v8);
    v15 = objc_msgSend_path(v3, v10, v11, v12, v13, v14);
    v53 = v2;
    v19 = objc_msgSend_contentsOfDirectoryAtPath_error_(v9, v16, v15, &v53, v17, v18);
    v20 = v53;

    if (v19)
    {
      if (objc_msgSend_count(v19, v21, v22, v23, v24, v25) >= 2)
      {
        v46 = v19;
        v47 = v1;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v26 = v19;
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v49, v61, 16, v28);
        if (v29)
        {
          v34 = v29;
          v35 = *v50;
          do
          {
            v36 = 0;
            v37 = v20;
            do
            {
              if (*v50 != v35)
              {
                objc_enumerationMutation(v26);
              }

              v38 = *(*(&v49 + 1) + 8 * v36);
              if (objc_msgSend_isEqual_(v38, v30, @"Modules", v31, v32, v33, v46, v47))
              {
                v20 = v37;
              }

              else
              {
                v39 = objc_msgSend_fileURLWithPath_relativeToURL_(MEMORY[0x277CBEBC0], v30, v38, v3, v32, v33);
                v48 = v37;
                v40 = KVRemoveItemIfExistsAtURL(v39, &v48);
                v20 = v48;

                if ((v40 & 1) == 0)
                {
                  v41 = qword_28106B3C0;
                  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v56 = "KVInitializeModularFilesystemLayout";
                    v57 = 2112;
                    v58 = v39;
                    v59 = 2112;
                    v60 = v20;
                    _os_log_error_impl(&dword_2559A5000, v41, OS_LOG_TYPE_ERROR, "%s Failed to remove file: %@ error: %@", buf, 0x20u);
                  }
                }

                v37 = v20;
              }

              ++v36;
            }

            while (v34 != v36);
            v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v30, &v49, v61, 16, v33);
          }

          while (v34);
        }

        v19 = v46;
        v1 = v47;
      }
    }

    else
    {
      v43 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "KVInitializeModularFilesystemLayout";
        v57 = 2112;
        v58 = v20;
        _os_log_error_impl(&dword_2559A5000, v43, OS_LOG_TYPE_ERROR, "%s Failed to read root directory contents: %@", buf, 0x16u);
      }
    }

    v2 = v20;
  }

  else
  {
    v42 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "KVInitializeModularFilesystemLayout";
      v57 = 2112;
      v58 = v2;
      _os_log_error_impl(&dword_2559A5000, v42, OS_LOG_TYPE_ERROR, "%s Modular Filesystem initialization failed: %@", buf, 0x16u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  return v1 != 0;
}

id sub_2559ACD48()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = sub_2559ACDB0();
  v4 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v0, v2, @"Modules", 1, v1, v3);

  return v4;
}

id sub_2559ACDB0()
{
  v0 = CPSharedResourcesDirectory();
  v5 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"Library/Assistant/SiriVocabulary", v2, v3, v4);
  v9 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v6, v5, 1, v7, v8);

  return v9;
}

id KVSetsRootDirectoryURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = sub_2559ACD48();
  v4 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v0, v2, @"Sets", 1, v1, v3);

  return v4;
}

id KVSnapshotRootDirectoryURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = sub_2559ACD48();
  v4 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v0, v2, @"Snapshot", 1, v1, v3);

  return v4;
}

id KVTaskManagerRootDirectoryURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = sub_2559ACD48();
  v4 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v0, v2, @"Task", 1, v1, v3);

  return v4;
}

void sub_2559AD3B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17)
{
  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = MEMORY[0x277CCA9B8];
    a16 = *MEMORY[0x277CCA068];
    v27 = MEMORY[0x277CCACA8];
    v33 = KVItemTypeDescription(v17[16], v28, v29, v30, v31, v32);
    v34 = v17[17];
    v35 = MEMORY[0x277CCACA8];
    v36 = (*(*v25 + 16))(v25);
    v40 = objc_msgSend_stringWithCString_encoding_(v35, v37, v36, 4, v38, v39);
    v45 = objc_msgSend_stringWithFormat_(v27, v41, @"Caught exception while encoding item with itemType: %@ itemId: %@ \nCaught %@", v42, v43, v44);
    a17 = v45;
    v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &a17, &a16, 1, v47);
    v51 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v49, @"com.apple.koa.item.builder", 5, v48, v50);
    if (v18)
    {
      if (v51)
      {
        v51 = v51;
        *v18 = v51;
      }
    }

    objc_msgSend__reset(v17, v52, v53, v54, v55, v56);
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v57 = objc_begin_catch(a1);
    v58 = MEMORY[0x277CCA9B8];
    a14 = *MEMORY[0x277CCA068];
    v59 = MEMORY[0x277CCACA8];
    v65 = KVItemTypeDescription(v17[16], v60, v61, v62, v63, v64);
    v82 = v17[17];
    v70 = objc_msgSend_stringWithFormat_(v59, v66, @"Caught Objc exception while encoding item with itemType: %@ itemId: %@ \nCaught %@", v67, v68, v69);
    a15 = v70;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &a15, &a14, 1, v72);
    v76 = objc_msgSend_errorWithDomain_code_userInfo_(v58, v74, @"com.apple.koa.item.builder", 5, v73, v75);
    if (v18 && v76)
    {
      v76 = v76;
      *v18 = v76;
    }

    objc_msgSend__reset(v17, v77, v78, v79, v80, v81);
    objc_end_catch();
  }

  JUMPOUT(0x2559AD1A0);
}

unint64_t sub_2559AD6E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2559A7BAC(a1);
  *(a1 + 70) = 1;
  v6 = a3 * a2;
  sub_2559A83E0(a1, v6, 4uLL);

  return sub_2559A83E0(a1, v6, a3);
}

uint64_t sub_2559AD750(uint64_t a1, int a2)
{
  if ((*(a1 + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(a1 + 70) = 0;

  return sub_2559A8660(a1, a2);
}

void sub_2559ADF78(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_2559ADFC0();
}

void sub_2559ADFC0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2559ADFF4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2559AE050(exception, a1);
  __cxa_throw(exception, off_2798038D8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2559AE050(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2559AEF48(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_2559AF048(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_2559AF144(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_2559AF2D4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      v22 = v5;
      v28 = objc_msgSend_clientId(WeakRetained, v23, v24, v25, v26, v27);
      v29 = 136315650;
      v30 = "[KVXPCClient _errorHandlerWithCompletion:]_block_invoke";
      v31 = 2112;
      v32 = v3;
      v33 = 2112;
      v34 = v28;
      _os_log_error_impl(&dword_2559A5000, v22, OS_LOG_TYPE_ERROR, "%s XPC request hit error (%@) for client %@", &v29, 0x20u);
    }

    v11 = objc_msgSend_interruptionCode(WeakRetained, v6, v7, v8, v9, v10);
    objc_msgSend_setFailureCode_(WeakRetained, v12, v11, v13, v14, v15);
    objc_msgSend_setConnection_(WeakRetained, v16, 0, v17, v18, v19);
  }

  else
  {
    v11 = 0;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))(v20, v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2559AF4E0(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = v3;
      v15 = objc_msgSend_clientId(WeakRetained, v10, v11, v12, v13, v14);
      v21 = 136315650;
      v22 = "[KVXPCClient _failureHandlerWithResponse:]_block_invoke";
      v23 = 1024;
      v24 = v8;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_2559A5000, v9, OS_LOG_TYPE_INFO, "%s XPC connection terminated (%u) for client %@", &v21, 0x1Cu);
    }

    objc_msgSend_setFailureCode_(WeakRetained, v4, *(a1 + 40), v5, v6, v7);
    objc_msgSend_setConnection_(WeakRetained, v16, 0, v17, v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2559B0BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2559A811C(&a9);

  _Unwind_Resume(a1);
}

void sub_2559B11B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2559B19E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >= 4)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%u", a4, a5, a6, a1);
  }

  else
  {
    v7 = *(&off_279803A20 + a1);
  }

  return v7;
}

id sub_2559B1A54(void *a1)
{
  v1 = a1;
  v17 = objc_msgSend_length(v1, v2, v3, v4, v5, v6);
  v7 = objc_alloc(MEMORY[0x277CBEB28]);
  v11 = objc_msgSend_initWithBytes_length_(v7, v8, &v17, 4, v9, v10);
  objc_msgSend_appendData_(v11, v12, v1, v13, v14, v15);

  return v11;
}

id KVItemTypeToNumber(unsigned __int16 a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 - 1) >= 0x1Au)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], a2, v6, a4, a5, a6);

  return v7;
}

uint64_t KVItemTypeFromNumber(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(result) = objc_msgSend_unsignedShortValue(a1, a2, a3, a4, a5, a6);
  if ((result - 1) >= 0x1A)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t KVItemTypeName(unsigned __int16 a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  if (a1 - 1 >= 0x1A)
  {
    v6 = 0;
  }

  return objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, off_279803A58[v6], 4, a5, a6);
}

uint64_t KVItemTypeFromName(void *a1)
{
  v5 = a1;
  if (qword_27F7DA398 != -1)
  {
    dispatch_once(&qword_27F7DA398, &unk_2867B5638);
  }

  v6 = objc_msgSend_objectForKey_(qword_27F7DA390, v1, v5, v2, v3, v4);
  v12 = objc_msgSend_unsignedShortValue(v6, v7, v8, v9, v10, v11);
  if (v12 - 1 >= 0x1A)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

void sub_2559B1C1C()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = qword_27F7DA390;
  qword_27F7DA390 = v0;

  for (i = 0; i != 27; ++i)
  {
    if (i - 1 <= 0x19)
    {
      v11 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v2, off_279803A58[i], 4, v3, v4);
      if (v11)
      {
        v12 = qword_27F7DA390;
        v13 = KVItemTypeToNumber(i, v6, v7, v8, v9, v10);
        objc_msgSend_setObject_forKey_(v12, v14, v13, v11, v15, v16);
      }
    }
  }
}

id KVItemTypeDescription(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x277CCACA8];
  if (a1 - 1 >= 0x1A)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, off_279803A58[v8], 4, a5, a6);
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, a1, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v7, v15, @"%@ (%@)", v16, v17, v18, v9, v14);

  return v19;
}

uint64_t KVItemTypeFromFieldType(unsigned __int16 a1)
{
  if (a1 <= 0xF9u)
  {
    v1 = 26;
    if (a1 - 170 >= 6)
    {
      v1 = 0;
    }

    if (a1 - 150 >= 9)
    {
      v2 = v1;
    }

    else
    {
      v2 = 4;
    }

    if (a1 - 201 >= 0x20)
    {
      v3 = v2;
    }

    else
    {
      v3 = 5;
    }

    v4 = 3;
    if (a1 - 100 >= 5)
    {
      v4 = 0;
    }

    if (a1 - 1 >= 0x14)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (a1 - 50 >= 0x16)
    {
      v6 = v5;
    }

    else
    {
      v6 = 2;
    }

    v7 = a1 <= 0x95u;
LABEL_71:
    if (v7)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  if (a1 > 0x31Fu)
  {
    v10 = 24;
    if (a1 - 1100 >= 6)
    {
      v10 = 0;
    }

    if (a1 - 1050 >= 6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 23;
    }

    if (a1 - 1150 >= 7)
    {
      v3 = v11;
    }

    else
    {
      v3 = 25;
    }

    v12 = 22;
    if (a1 - 1000 >= 2)
    {
      v12 = 0;
    }

    if (a1 - 900 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 20;
    }

    if (a1 - 950 >= 3)
    {
      v6 = v13;
    }

    else
    {
      v6 = 21;
    }

    v14 = 19;
    if (a1 - 850 >= 2)
    {
      v14 = 0;
    }

    if (a1 - 800 >= 5)
    {
      v15 = v14;
    }

    else
    {
      v15 = 18;
    }

    if (a1 <= 0x383u)
    {
      v6 = v15;
    }

    v7 = a1 <= 0x419u;
    goto LABEL_71;
  }

  if (a1 > 0x1F3u)
  {
    v16 = 17;
    if (a1 != 750)
    {
      v16 = 0;
    }

    if (a1 - 650 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 15;
    }

    if (a1 - 700 >= 3)
    {
      v3 = v17;
    }

    else
    {
      v3 = 16;
    }

    v6 = 14;
    if (a1 - 600 >= 5)
    {
      v6 = 0;
    }

    v18 = 13;
    if (a1 != 553)
    {
      v18 = 0;
    }

    if (a1 - 551 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 12;
    }

    if (a1 - 500 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    if (a1 <= 0x257u)
    {
      v6 = v20;
    }

    v7 = a1 <= 0x289u;
    goto LABEL_71;
  }

  v8 = a1 + 6;
  if (a1 - 250 <= 0x34)
  {
    if (((1 << v8) & 0x3F) != 0)
    {
      return 6;
    }

    if (((1 << v8) & 0xE000000) != 0)
    {
      return 7;
    }

    if (((1 << v8) & 0x1C000000000000) != 0)
    {
      return 8;
    }
  }

  v21 = 10;
  if (a1 != 400)
  {
    v21 = 0;
  }

  if (a1 - 351 >= 5)
  {
    return v21;
  }

  else
  {
    return 9;
  }
}

id KVFieldTypeToNumber(unsigned __int16 a1)
{
  if (KVItemTypeFromFieldType(a1))
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v2, v6, v3, v4, v5);

  return v7;
}

uint64_t KVFieldTypeFromNumber(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_unsignedShortValue(a1, a2, a3, a4, a5, a6);
  v7 = v6;
  if (KVItemTypeFromFieldType(v6))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t KVFieldTypeName(unsigned __int16 a1)
{
  if (KVItemTypeFromFieldType(a1))
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277CCACA8];
  if (v5 > 0x12Bu)
  {
    if (v5 > 0x323u)
    {
      if (v5 <= 0x41Du)
      {
        if (v5 > 0x3B7u)
        {
          if (v5 > 0x419u)
          {
            if (v5 > 0x41Bu)
            {
              if (v5 == 1052)
              {
                v7 = "LearnedMediaEntity_userPhrasedAlbumName";
              }

              else
              {
                v7 = "LearnedMediaEntity_userPhrasedVersion";
              }
            }

            else if (v5 == 1050)
            {
              v7 = "LearnedMediaEntity_userPhrasedSongName";
            }

            else
            {
              v7 = "LearnedMediaEntity_userPhrasedArtistName";
            }

            goto LABEL_239;
          }

          switch(v5)
          {
            case 0x3B8u:
              v7 = "FindMy_OwnerLastName";
              goto LABEL_239;
            case 0x3E8u:
              v7 = "LearnedContact_suggestedContactId";
              goto LABEL_239;
            case 0x3E9u:
              v7 = "LearnedContact_userPhrasedName";
              goto LABEL_239;
          }
        }

        else if (v5 <= 0x383u)
        {
          switch(v5)
          {
            case 0x324u:
              v7 = "AppShortcut_EntitySynonym";
              goto LABEL_239;
            case 0x352u:
              v7 = "Health_MedicationName";
              goto LABEL_239;
            case 0x353u:
              v7 = "Health_MedicationNickname";
              goto LABEL_239;
          }
        }

        else
        {
          if (v5 > 0x3B5u)
          {
            if (v5 == 950)
            {
              v7 = "FindMy_DeviceName";
            }

            else
            {
              v7 = "FindMy_OwnerFirstName";
            }

            goto LABEL_239;
          }

          if (v5 == 900)
          {
            v7 = "UserAccount_Username";
            goto LABEL_239;
          }

          if (v5 == 901)
          {
            v7 = "UserAccount_GivenName";
            goto LABEL_239;
          }
        }
      }

      else if (v5 <= 0x450u)
      {
        if (v5 > 0x44Cu)
        {
          if (v5 > 0x44Eu)
          {
            if (v5 == 1103)
            {
              v7 = "AppIntentsEntity_Title";
            }

            else
            {
              v7 = "AppIntentsEntity_Subtitle";
            }
          }

          else if (v5 == 1101)
          {
            v7 = "AppIntentsEntity_TypeName";
          }

          else
          {
            v7 = "AppIntentsEntity_TypeSynonym";
          }

          goto LABEL_239;
        }

        switch(v5)
        {
          case 0x41Eu:
            v7 = "LearnedMediaEntity_userPhrasedEntityName";
            goto LABEL_239;
          case 0x41Fu:
            v7 = "LearnedMediaEntity_suggestedAdamId";
            goto LABEL_239;
          case 0x44Cu:
            v7 = "AppIntentsEntity_TypeIdentifier";
            goto LABEL_239;
        }
      }

      else if (v5 > 0x480u)
      {
        if (v5 <= 0x482u)
        {
          if (v5 == 1153)
          {
            v7 = "AppIntentsEnum_CaseIdentifier";
          }

          else
          {
            v7 = "AppIntentsEnum_CaseTitle";
          }

          goto LABEL_239;
        }

        if (v5 == 1155)
        {
          v7 = "AppIntentsEnum_CaseSubtitle";
          goto LABEL_239;
        }

        if (v5 == 1156)
        {
          v7 = "AppIntentsEnum_CaseSynonym";
          goto LABEL_239;
        }
      }

      else
      {
        if (v5 > 0x47Eu)
        {
          if (v5 == 1151)
          {
            v7 = "AppIntentsEnum_TypeName";
          }

          else
          {
            v7 = "AppIntentsEnum_TypeSynonym";
          }

          goto LABEL_239;
        }

        if (v5 == 1105)
        {
          v7 = "AppIntentsEntity_Synonym";
          goto LABEL_239;
        }

        if (v5 == 1150)
        {
          v7 = "AppIntentsEnum_TypeIdentifier";
          goto LABEL_239;
        }
      }
    }

    else if (v5 <= 0x257u)
    {
      if (v5 > 0x162u)
      {
        if (v5 <= 0x1F4u)
        {
          switch(v5)
          {
            case 0x163u:
              v7 = "RadioEntity_SignalType";
              goto LABEL_239;
            case 0x190u:
              v7 = "KeyboardWord_DynamicToken";
              goto LABEL_239;
            case 0x1F4u:
              v7 = "LinkOOVTerm_Phrase";
              goto LABEL_239;
          }
        }

        else if (v5 > 0x227u)
        {
          if (v5 == 552)
          {
            v7 = "LocationOfInterest_SpatialLocationName";
            goto LABEL_239;
          }

          if (v5 == 553)
          {
            v7 = "PortraitEntity_NamedEntityName";
            goto LABEL_239;
          }
        }

        else
        {
          if (v5 == 501)
          {
            v7 = "LinkOOVTerm_CustomPronunciation";
            goto LABEL_239;
          }

          if (v5 == 551)
          {
            v7 = "LocationOfInterest_LocationName";
            goto LABEL_239;
          }
        }
      }

      else
      {
        if (v5 > 0x15Eu)
        {
          if (v5 > 0x160u)
          {
            if (v5 == 353)
            {
              v7 = "RadioEntity_Frequency";
            }

            else
            {
              v7 = "RadioEntity_Channel";
            }
          }

          else if (v5 == 351)
          {
            v7 = "RadioEntity_Name";
          }

          else
          {
            v7 = "RadioEntity_CallSign";
          }

          goto LABEL_239;
        }

        switch(v5)
        {
          case 0x12Cu:
            v7 = "AutoShortcut_Phrase";
            goto LABEL_239;
          case 0x12Du:
            v7 = "AutoShortcut_BaseTemplate";
            goto LABEL_239;
          case 0x12Eu:
            v7 = "AutoShortcut_TemplateParameterValue";
            goto LABEL_239;
        }
      }
    }

    else if (v5 <= 0x2BBu)
    {
      if (v5 <= 0x25Au)
      {
        if (v5 == 600)
        {
          v7 = "GlobalTerm_MediaPlaylistTitle";
        }

        else if (v5 == 601)
        {
          v7 = "GlobalTerm_MediaMusicArtistName";
        }

        else
        {
          v7 = "GlobalTerm_MediaAudiobookTitle";
        }

        goto LABEL_239;
      }

      if (v5 > 0x289u)
      {
        if (v5 == 650)
        {
          v7 = "CalendarEvent_Title";
          goto LABEL_239;
        }

        if (v5 == 651)
        {
          v7 = "CalendarEvent_LocationName";
          goto LABEL_239;
        }
      }

      else
      {
        if (v5 == 603)
        {
          v7 = "GlobalTerm_MediaAudiobookAuthor";
          goto LABEL_239;
        }

        if (v5 == 604)
        {
          v7 = "GlobalTerm_MediaShowTitle";
          goto LABEL_239;
        }
      }
    }

    else
    {
      if (v5 > 0x31Fu)
      {
        if (v5 > 0x321u)
        {
          if (v5 == 802)
          {
            v7 = "AppShortcut_EntityTypeIdentifier";
          }

          else
          {
            v7 = "AppShortcut_ProviderClass";
          }
        }

        else if (v5 == 800)
        {
          v7 = "AppShortcut_EntityInstanceIdentifier";
        }

        else
        {
          v7 = "AppShortcut_EntityTitle";
        }

        goto LABEL_239;
      }

      if (v5 <= 0x2BDu)
      {
        if (v5 == 700)
        {
          v7 = "Podcast_Title";
        }

        else
        {
          v7 = "Podcast_ArtistName";
        }

        goto LABEL_239;
      }

      if (v5 == 702)
      {
        v7 = "Podcast_PlaylistName";
        goto LABEL_239;
      }

      if (v5 == 750)
      {
        v7 = "Fitness_GuestName";
        goto LABEL_239;
      }
    }

LABEL_238:
    v7 = "";
    goto LABEL_239;
  }

  switch(v5)
  {
    case 0x96u:
      v7 = "HomeEntity_HomeName";
      break;
    case 0x97u:
      v7 = "HomeEntity_ZoneName";
      break;
    case 0x98u:
      v7 = "HomeEntity_RoomName";
      break;
    case 0x99u:
      v7 = "HomeEntity_ServiceName";
      break;
    case 0x9Au:
      v7 = "HomeEntity_ServiceGroupName";
      break;
    case 0x9Bu:
      v7 = "HomeEntity_SceneName";
      break;
    case 0x9Cu:
      v7 = "HomeEntity_TriggerName";
      break;
    case 0x9Du:
      v7 = "HomeEntity_AccessoryName";
      break;
    case 0x9Eu:
      v7 = "HomeEntity_AssistantHomeKitId";
      break;
    case 0x9Fu:
    case 0xA0u:
    case 0xA1u:
    case 0xA2u:
    case 0xA3u:
    case 0xA4u:
    case 0xA5u:
    case 0xA6u:
    case 0xA7u:
    case 0xA8u:
    case 0xA9u:
    case 0xB0u:
    case 0xB1u:
    case 0xB2u:
    case 0xB3u:
    case 0xB4u:
    case 0xB5u:
    case 0xB6u:
    case 0xB7u:
    case 0xB8u:
    case 0xB9u:
    case 0xBAu:
    case 0xBBu:
    case 0xBCu:
    case 0xBDu:
    case 0xBEu:
    case 0xBFu:
    case 0xC0u:
    case 0xC1u:
    case 0xC2u:
    case 0xC3u:
    case 0xC4u:
    case 0xC5u:
    case 0xC6u:
    case 0xC7u:
    case 0xC8u:
    case 0xE9u:
    case 0xEAu:
    case 0xEBu:
    case 0xECu:
    case 0xEDu:
    case 0xEEu:
    case 0xEFu:
    case 0xF0u:
    case 0xF1u:
    case 0xF2u:
    case 0xF3u:
    case 0xF4u:
    case 0xF5u:
    case 0xF6u:
    case 0xF7u:
    case 0xF8u:
    case 0xF9u:
    case 0x100u:
    case 0x101u:
    case 0x102u:
    case 0x103u:
    case 0x104u:
    case 0x105u:
    case 0x106u:
    case 0x107u:
    case 0x108u:
    case 0x109u:
    case 0x10Au:
    case 0x10Bu:
    case 0x10Cu:
    case 0x10Du:
    case 0x10Eu:
    case 0x10Fu:
    case 0x110u:
    case 0x111u:
    case 0x112u:
      goto LABEL_238;
    case 0xAAu:
      v7 = "HomeServiceArea_AreaName";
      break;
    case 0xABu:
      v7 = "HomeServiceArea_AreaId";
      break;
    case 0xACu:
      v7 = "HomeServiceArea_AssociatedMapId";
      break;
    case 0xADu:
      v7 = "HomeServiceArea_MapName";
      break;
    case 0xAEu:
      v7 = "HomeServiceArea_MapId";
      break;
    case 0xAFu:
      v7 = "HomeServiceArea_DeviceIdentifier";
      break;
    case 0xC9u:
      v7 = "MediaEntity_AlbumArtistId";
      break;
    case 0xCAu:
      v7 = "MediaEntity_AlbumArtistName";
      break;
    case 0xCBu:
      v7 = "MediaEntity_AlbumId";
      break;
    case 0xCCu:
      v7 = "MediaEntity_AlbumName";
      break;
    case 0xCDu:
      v7 = "MediaEntity_AudioBookArtistId";
      break;
    case 0xCEu:
      v7 = "MediaEntity_AudioBookArtistName";
      break;
    case 0xCFu:
      v7 = "MediaEntity_AudioBookId";
      break;
    case 0xD0u:
      v7 = "MediaEntity_AudioBookName";
      break;
    case 0xD1u:
      v7 = "MediaEntity_GenreId";
      break;
    case 0xD2u:
      v7 = "MediaEntity_GenreName";
      break;
    case 0xD3u:
      v7 = "MediaEntity_MovieId";
      break;
    case 0xD4u:
      v7 = "MediaEntity_MovieName";
      break;
    case 0xD5u:
      v7 = "MediaEntity_MusicVideoId";
      break;
    case 0xD6u:
      v7 = "MediaEntity_MusicVideoName";
      break;
    case 0xD7u:
      v7 = "MediaEntity_PlaylistId";
      break;
    case 0xD8u:
      v7 = "MediaEntity_PlaylistName";
      break;
    case 0xD9u:
      v7 = "MediaEntity_PodcastArtistId";
      break;
    case 0xDAu:
      v7 = "MediaEntity_PodcastArtistName";
      break;
    case 0xDBu:
      v7 = "MediaEntity_PodcastEpisodeId";
      break;
    case 0xDCu:
      v7 = "MediaEntity_PodcastEpisodeName";
      break;
    case 0xDDu:
      v7 = "MediaEntity_PodcastId";
      break;
    case 0xDEu:
      v7 = "MediaEntity_PodcastName";
      break;
    case 0xDFu:
      v7 = "MediaEntity_PodcastStationId";
      break;
    case 0xE0u:
      v7 = "MediaEntity_PodcastStationName";
      break;
    case 0xE1u:
      v7 = "MediaEntity_SongArtistId";
      break;
    case 0xE2u:
      v7 = "MediaEntity_SongArtistName";
      break;
    case 0xE3u:
      v7 = "MediaEntity_SongId";
      break;
    case 0xE4u:
      v7 = "MediaEntity_SongName";
      break;
    case 0xE5u:
      v7 = "MediaEntity_TVEpisodeId";
      break;
    case 0xE6u:
      v7 = "MediaEntity_TVEpisodeName";
      break;
    case 0xE7u:
      v7 = "MediaEntity_TVShowId";
      break;
    case 0xE8u:
      v7 = "MediaEntity_TVShowName";
      break;
    case 0xFAu:
      v7 = "LinkStaticTerm_AppEntityTypeName";
      break;
    case 0xFBu:
      v7 = "LinkStaticTerm_AppEntityTypeClassName";
      break;
    case 0xFCu:
      v7 = "LinkStaticTerm_AppEntityName";
      break;
    case 0xFDu:
      v7 = "LinkStaticTerm_AppEntityId";
      break;
    case 0xFEu:
      v7 = "LinkStaticTerm_AppSettingName";
      break;
    case 0xFFu:
      v7 = "LinkStaticTerm_AppSettingCanonicalName";
      break;
    case 0x113u:
      v7 = "LinkDynamicTerm_AppEntityName";
      break;
    case 0x114u:
      v7 = "LinkDynamicTerm_AppEntityTypeClassName";
      break;
    case 0x115u:
      v7 = "LinkDynamicTerm_AppEntityId";
      break;
    default:
      v7 = "Undefined";
      switch(v5)
      {
        case 0x96u:
          goto LABEL_239;
        case 0x97u:
          v7 = "CustomTerm_ContactName";
          break;
        case 0x98u:
          v7 = "CustomTerm_ContactGroupName";
          break;
        case 0x99u:
          v7 = "CustomTerm_PhotoTag";
          break;
        case 0x9Au:
          v7 = "CustomTerm_PhotoAlbumName";
          break;
        case 0x9Bu:
          v7 = "CustomTerm_WorkoutActivityName";
          break;
        case 0x9Cu:
          v7 = "CustomTerm_CarProfileName";
          break;
        case 0x9Du:
          v7 = "CustomTerm_CarName";
          break;
        case 0x9Eu:
          v7 = "CustomTerm_PaymentsOrganizationName";
          break;
        case 0x9Fu:
          v7 = "CustomTerm_PaymentsAccountNickname";
          break;
        case 0xA0u:
          v7 = "CustomTerm_NotebookItemTitle";
          break;
        case 0xA1u:
          v7 = "CustomTerm_NotebookItemGroupName";
          break;
        case 0xA2u:
          v7 = "CustomTerm_MediaPlaylistTitle";
          break;
        case 0xA3u:
          v7 = "CustomTerm_MediaMusicArtistName";
          break;
        case 0xA4u:
          v7 = "CustomTerm_MediaAudiobookTitle";
          break;
        case 0xA5u:
          v7 = "CustomTerm_MediaAudiobookAuthorName";
          break;
        case 0xA6u:
          v7 = "CustomTerm_MediaShowTitle";
          break;
        case 0xA7u:
          v7 = "CustomTerm_VoiceCommandName";
          break;
        case 0xA8u:
          v7 = "CustomTerm_PhotoMemoryName";
          break;
        case 0xA9u:
          v7 = "CustomTerm_MediaUserContext";
          break;
        case 0xAAu:
          v7 = "CustomTerm_VocabularyId";
          break;
        case 0xC8u:
          v7 = "Contact_GivenName";
          break;
        case 0xC9u:
          v7 = "Contact_MiddleName";
          break;
        case 0xCAu:
          v7 = "Contact_FamilyName";
          break;
        case 0xCBu:
          v7 = "Contact_PreviousFamilyName";
          break;
        case 0xCCu:
          v7 = "Contact_Nickname";
          break;
        case 0xCDu:
          v7 = "Contact_NamePrefix";
          break;
        case 0xCEu:
          v7 = "Contact_NameSuffix";
          break;
        case 0xCFu:
          v7 = "Contact_PhoneNumber";
          break;
        case 0xD0u:
          v7 = "Contact_EmailAddress";
          break;
        case 0xD1u:
          v7 = "Contact_PostalAddress";
          break;
        case 0xD2u:
          v7 = "Contact_UrlAddress";
          break;
        case 0xD3u:
          v7 = "Contact_SocialProfile";
          break;
        case 0xD4u:
          v7 = "Contact_InstantMessageAddress";
          break;
        case 0xD5u:
          v7 = "Contact_Relation";
          break;
        case 0xD6u:
          v7 = "Contact_OrganizationName";
          break;
        case 0xD7u:
          v7 = "Contact_DepartmentName";
          break;
        case 0xD8u:
          v7 = "Contact_JobTitle";
          break;
        case 0xD9u:
          v7 = "Contact_PhoneticGivenName";
          break;
        case 0xDAu:
          v7 = "Contact_PhoneticMiddleName";
          break;
        case 0xDBu:
          v7 = "Contact_PhoneticFamilyName";
          break;
        case 0xDCu:
          v7 = "Contact_PhoneticOrganizationName";
          break;
        case 0xDDu:
          v7 = "Contact_SharedUserId";
          break;
        case 0xFAu:
          v7 = "AppInfo_BundleId";
          break;
        case 0xFBu:
          v7 = "AppInfo_AppName";
          break;
        case 0xFCu:
          v7 = "AppInfo_DisplayAppName";
          break;
        case 0xFDu:
          v7 = "AppInfo_BundleVersion";
          break;
        case 0xFEu:
          v7 = "AppInfo_AlternativeAppName";
          break;
        default:
          goto LABEL_238;
      }

      break;
  }

LABEL_239:

  return objc_msgSend_stringWithCString_encoding_(v6, v2, v7, 4, v3, v4);
}

uint64_t KVFieldTypeFromName(void *a1)
{
  v5 = a1;
  if (qword_27F7DA3A8 != -1)
  {
    dispatch_once(&qword_27F7DA3A8, &unk_2867B56B8);
  }

  v6 = objc_msgSend_objectForKey_(qword_27F7DA3A0, v1, v5, v2, v3, v4);
  v12 = objc_msgSend_unsignedShortValue(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  if (!KVItemTypeFromFieldType(v12))
  {
    v13 = 0;
  }

  return v13;
}

void sub_2559B2C58()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = qword_27F7DA3A0;
  qword_27F7DA3A0 = v0;

  for (i = 0; i != 1157; ++i)
  {
    if (KVItemTypeFromFieldType(i))
    {
      v3 = KVFieldTypeName(i);
      if (v3)
      {
        v4 = qword_27F7DA3A0;
        v5 = KVFieldTypeToNumber(i);
        objc_msgSend_setObject_forKey_(v4, v6, v5, v3, v7, v8);
      }
    }
  }
}

id KVFieldTypeDescription(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = KVFieldTypeName(a1);
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v4, a1, v5, v6, v7);
  v13 = objc_msgSend_stringWithFormat_(v2, v9, @"%@ (%@)", v10, v11, v12, v3, v8);

  return v13;
}

id KVLocaleTypeToNumber(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 - 1) >= 0x2C)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], a2, v6, a4, a5, a6);

  return v7;
}

uint64_t KVLocaleTypeFromNumber(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(result) = objc_msgSend_unsignedShortValue(a1, a2, a3, a4, a5, a6);
  if (result - 1 >= 0x2C)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t KVLocaleTypeName(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 - 1) >= 0x2C)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (v6 <= 0x2Cu)
  {
    return objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, off_279803B38[v6], 4, a5, a6);
  }

  else
  {
    return objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "", 4, a5, a6);
  }
}

uint64_t KVLocaleTypeFromName(void *a1)
{
  v5 = a1;
  if (qword_28106B398 != -1)
  {
    dispatch_once(&qword_28106B398, &unk_2867B56D8);
  }

  v6 = objc_msgSend_objectForKey_(qword_28106B3A0, v1, v5, v2, v3, v4);
  v12 = objc_msgSend_unsignedShortValue(v6, v7, v8, v9, v10, v11);
  if (v12 - 1 >= 0x2C)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

void sub_2559B2F34()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = qword_28106B3A0;
  qword_28106B3A0 = v0;

  for (i = 0; i != 45; ++i)
  {
    if ((i - 1) <= 0x2B)
    {
      v11 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v2, off_279803B38[i], 4, v3, v4);
      if (v11)
      {
        v12 = qword_28106B3A0;
        v13 = KVLocaleTypeToNumber(i, v6, v7, v8, v9, v10);
        objc_msgSend_setObject_forKey_(v12, v14, v13, v11, v15, v16);
      }
    }
  }
}

id KVLocaleTypeDescription(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x277CCACA8];
  if ((a1 - 1) >= 0x2C)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v8 <= 0x2Cu)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, off_279803B38[v8], 4, a5, a6);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "", 4, a5, a6);
  }
  v9 = ;
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, a1, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v7, v15, @"%@ (%@)", v16, v17, v18, v9, v14);

  return v19;
}

uint64_t KVLocaleTypeFromNSLocale(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a1, a2, a3, a4, a5, a6);
  v7 = KVLocaleTypeFromName(v6);

  return v7;
}

id KVLocaleTypeToNSLocale(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 - 1) > 0x2B)
  {
    v12 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEAF8];
    v7 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, off_279803B38[a1], 4, a5, a6);
    v12 = objc_msgSend_localeWithLocaleIdentifier_(v6, v8, v7, v9, v10, v11);
  }

  return v12;
}

id sub_2559B35BC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27F7DA380;
  v7 = qword_27F7DA380;
  if (!qword_27F7DA380)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_2559B369C;
    v3[3] = &unk_279804178;
    v3[4] = &v4;
    sub_2559B369C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2559B3684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2559B369C(uint64_t a1)
{
  sub_2559B370C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SEMSpanMatcher");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27F7DA380 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_2559B370C();
  }
}

void sub_2559B370C()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!qword_27F7DA388)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = sub_2559B3818;
    v2[4] = &unk_2798041B0;
    v2[5] = v2;
    v3 = xmmword_279803CA8;
    v4 = 0;
    qword_27F7DA388 = _sl_dlopen();
    v0 = v2[0];
    if (qword_27F7DA388)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2559B3818(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27F7DA388 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2559B3A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2559B3AA4(uint64_t a1)
{
  sub_2559B370C();
  result = objc_getClass("SEMTokenizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27F7DA3B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(KVSpanMatcher *)v3];
  }

  return result;
}

void sub_2559B3D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class sub_2559B3D70(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27F7DA3C0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_2559B3EC4;
    v5[4] = &unk_2798041B0;
    v5[5] = v5;
    v6 = xmmword_279803CC0;
    v7 = 0;
    qword_27F7DA3C0 = _sl_dlopen();
    v2 = v5[0];
    if (qword_27F7DA3C0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SEMTokenizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_27F7DA3B8 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2559B3EC4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27F7DA3C0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2559B4280(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [KVDataset alloc];
  v9 = objc_msgSend_initWithReader_(v4, v5, v3, v6, v7, v8);

  v10 = (*(v2 + 16))(v2, v9);
  return v10;
}

void sub_2559B4888(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2559B4A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v12)
  {
  }

  if (!v11)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2559B4D74(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_2559B531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (v14)
  {
  }

  if (!a14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2559B569C(uint64_t a1, void *a2)
{
  v9 = a2;
  v8 = objc_msgSend_localeType(v9, v3, v4, v5, v6, v7);
  if (!v8 || v8 == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_2559B6130(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  if (a3)
  {
    objc_msgSend_appendString_(*(a1 + 32), v5, @",\n", v6, v7, v8);
  }

  v9 = *(a1 + 32);
  v10 = objc_msgSend_JSONWithIndent_(v15, v5, (*(a1 + 40) + 2), v6, v7, v8);
  objc_msgSend_appendString_(v9, v11, v10, v12, v13, v14);
}

void sub_2559B7254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 192), 8);
  _Block_object_dispose((v17 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2559B7298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2559B72B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_metaContent(v4, v6, v7, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0x277CCA000;
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_content(v4, v6, v7, v8, v9, v10);
  v25 = objc_msgSend_jsonDict(v14, v15, v16, v17, v18, v19);
  if (v11)
  {
    v26 = MEMORY[0x277CCACA8];
    v12 = objc_msgSend_jsonDict(v11, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_stringWithFormat_(v26, v27, @", MetaContent: %@", v28, v29, v30, v12);
    objc_msgSend_stringWithFormat_(v13, v32, @"Encountered KVItemBuilder error: %@ while converting cascade item (Content: %@%@)", v33, v34, v35, v3, v25, v31);
  }

  else
  {
    v31 = &stru_2867B5AF8;
    objc_msgSend_stringWithFormat_(v13, v20, @"Encountered KVItemBuilder error: %@ while converting cascade item (Content: %@%@)", v22, v23, v24, v3, v25, &stru_2867B5AF8);
  }
  v36 = ;
  objc_msgSend_setObject_forKey_(v5, v37, v36, *MEMORY[0x277CCA068], v38, v39);

  if (v11)
  {
  }

  if (v3)
  {
    objc_msgSend_setObject_forKey_(v5, v40, v3, *MEMORY[0x277CCA7E8], v41, v42);
  }

  v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v40, @"com.apple.koa.item.converter", 3, v5, v42);

  return v43;
}

void sub_2559B7464(void *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v10 = objc_msgSend_fieldType(v3, v4, v5, v6, v7, v8);
    switch(v10)
    {
      case 36446:
        v18 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
        v19 = 103;
        break;
      case 18568:
        v25 = objc_msgSend_rawEnumValue(v9, v11, v12, v13, v14, v15) - 1;
        if (v25 > 0xB)
        {
          v19 = 0;
        }

        else
        {
          v19 = qword_2559D03A8[v25];
        }

        v26 = objc_msgSend_repeatedSubMessageIndex(v9, v20, v21, v22, v23, v24);
        v32 = objc_msgSend_parentMessageField(v9, v27, v28, v29, v30, v31);
        v38 = objc_msgSend_repeatedSubMessageValue(v32, v33, v34, v35, v36, v37);
        v43 = objc_msgSend_objectAtIndex_(v38, v39, v26, v40, v41, v42);
        v18 = objc_msgSend_sourceItemIdentifier(v43, v44, v45, v46, v47, v48);

        break;
      case 7700:
        v18 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
        v19 = 158;
        break;
      default:
        v18 = 0;
LABEL_14:

        goto LABEL_15;
    }

    v49 = a1[4];
    v50 = *(a1[6] + 8);
    obj = *(v50 + 40);
    v51 = objc_msgSend_addFieldWithType_value_error_(v49, v16, v19, v18, &obj, v17);
    objc_storeStrong((v50 + 40), obj);

    if (!v51)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }

    goto LABEL_14;
  }

LABEL_15:
}

id sub_2559B75F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = objc_alloc_init(v4);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Encountered error: %@ enumerating Cascade item: %@", v8, v9, v10, v3, v5);

  objc_msgSend_setObject_forKey_(v6, v12, v11, *MEMORY[0x277CCA068], v13, v14);
  if (v3)
  {
    objc_msgSend_setObject_forKey_(v6, v15, v3, *MEMORY[0x277CCA7E8], v16, v17);
  }

  v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"com.apple.koa.item.converter", 6, v6, v17);

  return v18;
}

void sub_2559B76E0(void *a1, void *a2)
{
  v112[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v10 = objc_msgSend_fieldType(v3, v4, v5, v6, v7, v8);
    switch(a1[9])
    {
      case 1:
        v16 = 0;
        if (v10 <= 25886)
        {
          if (v10 > 14708)
          {
            if (v10 <= 15574)
            {
              if (v10 > 14818)
              {
                if (v10 != 14819)
                {
                  v39 = 14820;
                  goto LABEL_279;
                }

                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 6;
              }

              else
              {
                if (v10 != 14709)
                {
                  v39 = 14710;
                  goto LABEL_279;
                }

                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 14;
              }
            }

            else
            {
              if (v10 > 16253)
              {
                if (v10 != 16254)
                {
                  if (v10 != 16255)
                  {
                    v17 = 0;
                    if (v10 == 25886)
                    {
                      v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                      v16 = 0;
                      v19 = 9;
                      goto LABEL_281;
                    }

                    goto LABEL_283;
                  }

LABEL_280:
                  v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                  v16 = 0;
                  v19 = 20;
                  goto LABEL_281;
                }

                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 8;
                goto LABEL_281;
              }

              if (v10 != 15575)
              {
                v39 = 15576;
                goto LABEL_279;
              }

              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 16;
            }

LABEL_281:
            v72 = a1[5];
            v73 = *(a1[8] + 8);
            v104 = *(v73 + 40);
            v74 = objc_msgSend_addFieldWithType_label_value_error_(v72, v18, v19, v16, v17, &v104);
            objc_storeStrong((v73 + 40), v104);

            if (!v74)
            {
              *(*(a1[6] + 8) + 24) = 1;
            }

            goto LABEL_283;
          }

          if (v10 > 7721)
          {
            if (v10 <= 13886)
            {
              if (v10 != 7722)
              {
                v39 = 7723;
                goto LABEL_279;
              }

              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 13;
              goto LABEL_281;
            }

            if (v10 == 13887)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 3;
              goto LABEL_281;
            }

            v39 = 13888;
          }

          else
          {
            if (v10 <= 5597)
            {
              if (v10 == 803)
              {
                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 7;
                goto LABEL_281;
              }

              v17 = 0;
              if (v10 == 804)
              {
                goto LABEL_280;
              }

              goto LABEL_283;
            }

            if (v10 == 5598)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 11;
              goto LABEL_281;
            }

            v39 = 5599;
          }

LABEL_279:
          v17 = 0;
          if (v10 == v39)
          {
            goto LABEL_280;
          }

          goto LABEL_283;
        }

        if (v10 > 38254)
        {
          if (v10 <= 53485)
          {
            if (v10 > 44938)
            {
              if (v10 != 44939)
              {
                v17 = 0;
                if (v10 == 53485)
                {
                  v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                  v16 = 0;
                  v19 = 4;
                  goto LABEL_281;
                }

                goto LABEL_283;
              }
            }

            else if (v10 != 38255)
            {
              v17 = 0;
              if (v10 == 44938)
              {
                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 5;
                goto LABEL_281;
              }

              goto LABEL_283;
            }

            goto LABEL_280;
          }

          if (v10 <= 61355)
          {
            if (v10 != 53486)
            {
              v17 = 0;
              if (v10 == 61355)
              {
                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 1;
                goto LABEL_281;
              }

              goto LABEL_283;
            }

            goto LABEL_280;
          }

          if (v10 == 61356)
          {
            goto LABEL_280;
          }

          if (v10 != 63372)
          {
            v39 = 63373;
            goto LABEL_279;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 2;
          goto LABEL_281;
        }

        if (v10 <= 30601)
        {
          if (v10 > 26515)
          {
            if (v10 != 26516)
            {
              v17 = 0;
              if (v10 == 30601)
              {
                v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v16 = 0;
                v19 = 17;
                goto LABEL_281;
              }

              goto LABEL_283;
            }
          }

          else if (v10 != 25887)
          {
            v17 = 0;
            if (v10 == 26515)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 10;
              goto LABEL_281;
            }

            goto LABEL_283;
          }

          goto LABEL_280;
        }

        if (v10 <= 32968)
        {
          if (v10 != 30602)
          {
            v17 = 0;
            if (v10 == 32968)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 12;
              goto LABEL_281;
            }

            goto LABEL_283;
          }

          goto LABEL_280;
        }

        if (v10 == 32969)
        {
          goto LABEL_280;
        }

        v17 = 0;
        if (v10 == 38254)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 15;
          goto LABEL_281;
        }

LABEL_283:

        break;
      case 2:
        v16 = 0;
        if (v10 <= 19743)
        {
          v17 = 0;
          switch(v10)
          {
            case 19679:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 50;
              goto LABEL_281;
            case 19680:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 51;
              goto LABEL_281;
            case 19681:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 52;
              goto LABEL_281;
            case 19682:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 53;
              goto LABEL_281;
            case 19683:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 54;
              goto LABEL_281;
            case 19684:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 55;
              goto LABEL_281;
            case 19685:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 56;
              goto LABEL_281;
            case 19693:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 64;
              goto LABEL_281;
            case 19694:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 65;
              goto LABEL_281;
            case 19695:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 66;
              goto LABEL_281;
            case 19696:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 67;
              goto LABEL_281;
            case 19697:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 68;
              goto LABEL_281;
            case 19698:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 69;
              goto LABEL_281;
            case 19699:
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 70;
              goto LABEL_281;
            default:
              goto LABEL_283;
          }

          goto LABEL_283;
        }

        if (v10 <= 19757)
        {
          if (v10 == 19744)
          {
            v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v17 = 0;
            if (sub_2559B8FE4(v16))
            {
              goto LABEL_283;
            }

            v19 = 62;
          }

          else
          {
            if (v10 != 19747)
            {
              v17 = 0;
              if (v10 == 19749)
              {
                v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
                v17 = 0;
                if ((sub_2559B8FE4(v16) & 1) == 0)
                {
                  v19 = 59;
                  goto LABEL_281;
                }
              }

              goto LABEL_283;
            }

            v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v17 = 0;
            if (sub_2559B8FE4(v16))
            {
              goto LABEL_283;
            }

            v19 = 57;
          }
        }

        else
        {
          if (v10 <= 19764)
          {
            if (v10 == 19758)
            {
              v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              if (sub_2559B8FE4(v16))
              {

                v16 = 0;
              }

              v81 = objc_msgSend_repeatedSubMessageIndex(v9, v76, v77, v78, v79, v80);
              v87 = objc_msgSend_parentMessageField(v9, v82, v83, v84, v85, v86);
              v93 = objc_msgSend_repeatedSubMessageValue(v87, v88, v89, v90, v91, v92);
              v98 = objc_msgSend_objectAtIndex_(v93, v94, v81, v95, v96, v97);
              v17 = objc_msgSend_name(v98, v99, v100, v101, v102, v103);

              v19 = 63;
              goto LABEL_281;
            }

            v17 = 0;
            if (v10 == 19760)
            {
              v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v17 = 0;
              if ((sub_2559B8FE4(v16) & 1) == 0)
              {
                v19 = 61;
                goto LABEL_281;
              }
            }

            goto LABEL_283;
          }

          if (v10 != 19765)
          {
            v17 = 0;
            if (v10 == 19767)
            {
              v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v17 = 0;
              if ((sub_2559B8FE4(v16) & 1) == 0)
              {
                v19 = 60;
                goto LABEL_281;
              }
            }

            goto LABEL_283;
          }

          v16 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v17 = 0;
          if (sub_2559B8FE4(v16))
          {
            goto LABEL_283;
          }

          v19 = 58;
        }

        goto LABEL_281;
      case 3:
        v16 = 0;
        if (v10 <= 36438)
        {
          if (v10 == 36437)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 100;
          }

          else
          {
            v17 = 0;
            if (v10 != 36438)
            {
              goto LABEL_283;
            }

            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 101;
          }

          goto LABEL_281;
        }

        if (v10 == 36439)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 102;
          goto LABEL_281;
        }

        v17 = 0;
        if (v10 != 36441)
        {
          goto LABEL_283;
        }

        v19 = 104;
        goto LABEL_204;
      case 4:
        v16 = 0;
        if (v10 > 7705)
        {
          if (v10 > 7708)
          {
            if (v10 == 7709)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 156;
            }

            else
            {
              v17 = 0;
              if (v10 != 7710)
              {
                goto LABEL_283;
              }

              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 151;
            }
          }

          else if (v10 == 7706)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 153;
          }

          else
          {
            v17 = 0;
            if (v10 != 7708)
            {
              goto LABEL_283;
            }

            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 154;
          }
        }

        else if (v10 > 7703)
        {
          if (v10 == 7704)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 152;
          }

          else
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 155;
          }
        }

        else if (v10 == 7701)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 150;
        }

        else
        {
          v17 = 0;
          if (v10 != 7702)
          {
            goto LABEL_283;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 157;
        }

        goto LABEL_281;
      case 5:
        v16 = 0;
        if (v10 > 18560)
        {
          if (v10 > 18563)
          {
            if (v10 == 18564)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 226;
            }

            else if (v10 == 18565)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 230;
            }

            else
            {
              v17 = 0;
              if (v10 != 18566)
              {
                goto LABEL_283;
              }

              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 232;
            }
          }

          else if (v10 == 18561)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 214;
          }

          else if (v10 == 18562)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 216;
          }

          else
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 228;
          }
        }

        else if (v10 > 18557)
        {
          if (v10 == 18558)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 206;
          }

          else if (v10 == 18559)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 210;
          }

          else
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 212;
          }
        }

        else if (v10 == 18555)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 204;
        }

        else if (v10 == 18556)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 202;
        }

        else
        {
          v17 = 0;
          if (v10 != 18557)
          {
            goto LABEL_283;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 208;
        }

        goto LABEL_281;
      case 8:
        switch(v10)
        {
          case 12015:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 302;
            break;
          case 12014:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 301;
            break;
          case 12013:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 300;
            break;
          default:
            goto LABEL_216;
        }

        goto LABEL_281;
      case 9:
        v16 = 0;
        if (v10 <= 49070)
        {
          if (v10 == 49069)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 351;
          }

          else
          {
            v17 = 0;
            if (v10 != 49070)
            {
              goto LABEL_283;
            }

            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 352;
          }
        }

        else if (v10 == 49071)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 353;
        }

        else if (v10 == 49072)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 354;
        }

        else
        {
          v17 = 0;
          if (v10 != 49073)
          {
            goto LABEL_283;
          }

          v30 = objc_msgSend_rawEnumValue(v9, v11, v12, v13, v14, v15);
          if (v30 > 5)
          {
            v31 = 0;
          }

          else
          {
            v31 = off_279803FD0[v30];
          }

          v17 = v31;
          v16 = 0;
          v19 = 355;
        }

        goto LABEL_281;
      case 0xCLL:
        v16 = 0;
        if (v10 > 15770)
        {
          if (v10 == 15771 || v10 == 15772)
          {
LABEL_112:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 552;
            goto LABEL_281;
          }

          v32 = 15773;
        }

        else
        {
          if (v10 == 15768 || v10 == 15769)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 551;
            goto LABEL_281;
          }

          v32 = 15770;
        }

        v17 = 0;
        if (v10 != v32)
        {
          goto LABEL_283;
        }

        goto LABEL_112;
      case 0xELL:
        v16 = 0;
        if (v10 <= 14029)
        {
          if (v10 == 3620)
          {
            v19 = 601;
          }

          else
          {
            v17 = 0;
            if (v10 != 8199)
            {
              goto LABEL_283;
            }

            v19 = 602;
          }
        }

        else if (v10 == 14030)
        {
          v19 = 603;
        }

        else if (v10 == 34312)
        {
          v19 = 600;
        }

        else
        {
          v17 = 0;
          if (v10 != 36064)
          {
            goto LABEL_283;
          }

          v19 = 604;
        }

        goto LABEL_204;
      case 0xFLL:
        if (v10 == 54389)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 651;
        }

        else
        {
          if (v10 != 54388)
          {
            goto LABEL_216;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 650;
        }

        goto LABEL_281;
      case 0x10:
        switch(v10)
        {
          case 42188:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 702;
            break;
          case 42190:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 701;
            break;
          case 42189:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 700;
            break;
          default:
            goto LABEL_216;
        }

        goto LABEL_281;
      case 0x11:
        if (v10 != 53617)
        {
          goto LABEL_216;
        }

        v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
        v16 = 0;
        v19 = 750;
        goto LABEL_281;
      case 0x12:
        v16 = 0;
        if (v10 <= 7826)
        {
          if (v10 == 7825)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 801;
          }

          else
          {
            v17 = 0;
            if (v10 != 7826)
            {
              goto LABEL_283;
            }

            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 800;
          }

          goto LABEL_281;
        }

        if (v10 == 7827)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 802;
          goto LABEL_281;
        }

        if (v10 == 7828)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 803;
          goto LABEL_281;
        }

        v17 = 0;
        if (v10 != 7830)
        {
          goto LABEL_283;
        }

        v19 = 804;
        goto LABEL_204;
      case 0x13:
        if (v10 == 13000)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 851;
        }

        else
        {
          if (v10 != 12999)
          {
            goto LABEL_216;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 850;
        }

        goto LABEL_281;
      case 0x14:
        if (v10 == 61513)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 901;
        }

        else
        {
          if (v10 != 61512)
          {
            goto LABEL_216;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 900;
        }

        goto LABEL_281;
      case 0x15:
        switch(v10)
        {
          case 27132:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 952;
            break;
          case 27131:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 951;
            break;
          case 27126:
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 950;
            break;
          default:
            goto LABEL_216;
        }

        goto LABEL_281;
      case 0x16:
        if (v10 == 53605)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1000;
        }

        else
        {
          if (v10 != 53604)
          {
            goto LABEL_216;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1001;
        }

        goto LABEL_281;
      case 0x17:
        v16 = 0;
        if (v10 > 62161)
        {
          if (v10 == 62162)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 1054;
          }

          else if (v10 == 62163)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 1053;
          }

          else
          {
            v17 = 0;
            if (v10 != 62164)
            {
              goto LABEL_283;
            }

            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 1055;
          }
        }

        else if (v10 == 62159)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1050;
        }

        else if (v10 == 62160)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1051;
        }

        else
        {
          v17 = 0;
          if (v10 != 62161)
          {
            goto LABEL_283;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1052;
        }

        goto LABEL_281;
      case 0x18:
        v16 = 0;
        if (v10 <= 47351)
        {
          if (v10 == 47347)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 1103;
            goto LABEL_281;
          }

          if (v10 == 47348)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 1104;
            goto LABEL_281;
          }

          v17 = 0;
          if (v10 != 47349)
          {
            goto LABEL_283;
          }

          v19 = 1105;
          goto LABEL_204;
        }

        if (v10 == 47352)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1101;
          goto LABEL_281;
        }

        if (v10 == 47353)
        {
          v19 = 1102;
          goto LABEL_204;
        }

        v17 = 0;
        if (v10 != 47354)
        {
          goto LABEL_283;
        }

        v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
        v16 = 0;
        v19 = 1100;
        goto LABEL_281;
      case 0x19:
        v16 = 0;
        if (v10 > 42618)
        {
          if (v10 > 42620)
          {
            if (v10 == 42621)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 1151;
              goto LABEL_281;
            }

            v17 = 0;
            if (v10 != 42622)
            {
              goto LABEL_283;
            }

            v19 = 1152;
          }

          else
          {
            if (v10 == 42619)
            {
              v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
              v16 = 0;
              v19 = 1155;
              goto LABEL_281;
            }

            v19 = 1156;
          }

LABEL_204:
          v46 = objc_msgSend_repeatedStringValueNoCopy(v9, v11, v12, v13, v14, v15);
          if (!v46)
          {
            v17 = 0;
            v16 = 0;
            goto LABEL_281;
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v47 = v46;
          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v106, v110, 16, v49);
          if (!v50)
          {
            goto LABEL_215;
          }

          v53 = v50;
          v54 = *v107;
          while (1)
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v107 != v54)
              {
                objc_enumerationMutation(v47);
              }

              v56 = *(*(&v106 + 1) + 8 * i);
              v57 = a1[5];
              v58 = *(a1[8] + 8);
              obj = *(v58 + 40);
              v59 = objc_msgSend_addFieldWithType_value_error_(v57, v51, v19, v56, &obj, v52);
              objc_storeStrong((v58 + 40), obj);

              if (!v59)
              {
                *(*(a1[6] + 8) + 24) = 1;
                goto LABEL_215;
              }
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v51, &v106, v110, 16, v52);
            if (!v53)
            {
LABEL_215:

LABEL_216:
              v16 = 0;
              v17 = 0;
              goto LABEL_283;
            }
          }
        }

        if (v10 == 42612)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1150;
        }

        else if (v10 == 42617)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1153;
        }

        else
        {
          v17 = 0;
          if (v10 != 42618)
          {
            goto LABEL_283;
          }

          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 1154;
        }

        goto LABEL_281;
      case 0x1ALL:
        v16 = 0;
        if (v10 > 17038)
        {
          if (v10 == 17039)
          {
            v66 = MEMORY[0x277CCACA8];
            v67 = objc_msgSend_uint32Value(v9, v11, v12, v13, v14, v15);
            v17 = objc_msgSend_stringWithFormat_(v66, v68, @"%u", v69, v70, v71, v67);
            v16 = 0;
            v19 = 172;
          }

          else if (v10 == 17041)
          {
            v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
            v16 = 0;
            v19 = 173;
          }

          else
          {
            v17 = 0;
            if (v10 != 17042)
            {
              goto LABEL_283;
            }

            v40 = MEMORY[0x277CCACA8];
            v41 = objc_msgSend_uint32Value(v9, v11, v12, v13, v14, v15);
            v17 = objc_msgSend_stringWithFormat_(v40, v42, @"%u", v43, v44, v45, v41);
            v16 = 0;
            v19 = 174;
          }
        }

        else if (v10 == 17035)
        {
          v60 = MEMORY[0x277CCACA8];
          v61 = objc_msgSend_uint64Value(v9, v11, v12, v13, v14, v15);
          v17 = objc_msgSend_stringWithFormat_(v60, v62, @"%llu", v63, v64, v65, v61);
          v16 = 0;
          v19 = 175;
        }

        else if (v10 == 17037)
        {
          v17 = objc_msgSend_stringValueNoCopy(v9, v11, v12, v13, v14, v15);
          v16 = 0;
          v19 = 170;
        }

        else
        {
          v17 = 0;
          if (v10 != 17038)
          {
            goto LABEL_283;
          }

          v33 = MEMORY[0x277CCACA8];
          v34 = objc_msgSend_uint32Value(v9, v11, v12, v13, v14, v15);
          v17 = objc_msgSend_stringWithFormat_(v33, v35, @"%u", v36, v37, v38, v34);
          v16 = 0;
          v19 = 171;
        }

        goto LABEL_281;
      default:
        v20 = MEMORY[0x277CCA9B8];
        v111 = *MEMORY[0x277CCA068];
        v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"No supported conversion for Cascade item: %@", v13, v14, v15, a1[4]);
        v112[0] = v21;
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v112, &v111, 1, v23);
        v27 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v25, @"com.apple.koa.item.converter", 4, v24, v26);
        v28 = *(a1[7] + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;

        v16 = 0;
        v17 = 0;
        *(*(a1[6] + 8) + 24) = 1;
        goto LABEL_283;
    }
  }

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2559B8FE4(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_length(v1, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_length(@"_$!<", v8, v9, v10, v11, v12);
  if (v7 >= objc_msgSend_length(@">!$_", v14, v15, v16, v17, v18) + v13 && objc_msgSend_hasPrefix_(v1, v19, @"_$!<", v20, v21, v22))
  {
    hasSuffix = objc_msgSend_hasSuffix_(v1, v23, @">!$_", v24, v25, v26);
  }

  else
  {
    hasSuffix = 0;
  }

  return hasSuffix;
}

void sub_2559B94EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2559B9550(uint64_t a1, void *a2)
{
  v18 = a2;
  v13 = objc_msgSend_fieldType(v18, v3, v4, v5, v6, v7) - 170;
  if (v13 <= 5)
  {
    v14 = qword_2559D0378[v13];
    v15 = objc_msgSend_value(v18, v8, v9, v10, v11, v12);
    v16 = *(*(a1 + v14) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

id sub_2559B95D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = objc_alloc_init(v4);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Encountered Cascade error: %@ while converting KVItem: %@", v8, v9, v10, v3, v5);

  objc_msgSend_setObject_forKey_(v6, v12, v11, *MEMORY[0x277CCA068], v13, v14);
  if (v3)
  {
    objc_msgSend_setObject_forKey_(v6, v15, v3, *MEMORY[0x277CCA7E8], v16, v17);
  }

  v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"com.apple.koa.item.converter", 5, v6, v17);

  return v18;
}

id sub_2559B96C0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = MEMORY[0x277CF94C8];
  v9 = a2;
  v10 = a1;
  v11 = [v8 alloc];
  v20 = 0;
  v14 = objc_msgSend_initWithContent_metaContent_error_(v11, v12, v10, v9, &v20, v13);

  v15 = v20;
  v16 = v15;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v18 = sub_2559B95D0(v15, v7);
    if (a4 && v18)
    {
      v18 = v18;
      *a4 = v18;
    }
  }

  return v14;
}

void sub_2559B9DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 248), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2559B9E44(void *a1)
{
  if (!*(*(a1[4] + 8) + 40) && !*(*(a1[5] + 8) + 40) && !*(*(a1[6] + 8) + 40) && !*(*(a1[7] + 8) + 40))
  {
    return 1;
  }

  v2 = objc_alloc(MEMORY[0x277D20E50]);
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(*(a1[6] + 8) + 40);
  v5 = *(*(a1[7] + 8) + 40);
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v8 = objc_msgSend_initWithTitle_subtitle_synonyms_error_(v2, v7, v3, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D20E48]);
    v10 = *(*(a1[4] + 8) + 40);
    v11 = *(a1[8] + 8);
    v33 = *(v11 + 40);
    v14 = objc_msgSend_initWithCaseIdentifier_displayRepresentation_error_(v9, v12, v10, v8, &v33, v13);
    objc_storeStrong((v11 + 40), v33);
    v19 = v14 != 0;
    if (v14)
    {
      v20 = *(*(a1[9] + 8) + 40);
      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v22 = *(a1[9] + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v20 = *(*(a1[9] + 8) + 40);
      }

      objc_msgSend_addObject_(v20, v15, v14, v16, v17, v18);
      v24 = *(a1[4] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      v26 = *(a1[5] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;

      v28 = *(a1[6] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = 0;

      v30 = *(a1[7] + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_2559BA008(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = a2;
  v11 = objc_msgSend_fieldType(v33, v6, v7, v8, v9, v10);
  if (v11 <= 1152)
  {
    switch(v11)
    {
      case 1150:
        v17 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
        v18 = a1[5];
        break;
      case 1151:
        v17 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
        v18 = a1[6];
        break;
      case 1152:
        v19 = *(*(a1[7] + 8) + 40);
        if (v19)
        {
          goto LABEL_18;
        }

        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = *(a1[7] + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v23 = a1[7];
        goto LABEL_17;
      default:
        goto LABEL_31;
    }

LABEL_29:
    v32 = *(v18 + 8);
    v27 = *(v32 + 40);
    *(v32 + 40) = v17;
    goto LABEL_30;
  }

  if (v11 <= 1154)
  {
    if (v11 == 1153)
    {
      if (*(*(a1[8] + 8) + 40) && ((*(a1[4] + 16))() & 1) == 0)
      {
        *(*(a1[9] + 8) + 24) = 1;
        *a4 = 1;
      }

      v17 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
      v18 = a1[8];
    }

    else
    {
      if (*(*(a1[10] + 8) + 40) && ((*(a1[4] + 16))() & 1) == 0)
      {
        *(*(a1[9] + 8) + 24) = 1;
        *a4 = 1;
      }

      v17 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
      v18 = a1[10];
    }

    goto LABEL_29;
  }

  if (v11 == 1155)
  {
    if (*(*(a1[11] + 8) + 40) && ((*(a1[4] + 16))() & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 1;
      *a4 = 1;
    }

    v17 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
    v18 = a1[11];
    goto LABEL_29;
  }

  if (v11 != 1156)
  {
    goto LABEL_31;
  }

  v19 = *(*(a1[12] + 8) + 40);
  if (!v19)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = *(a1[12] + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v23 = a1[12];
LABEL_17:
    v19 = *(*(v23 + 8) + 40);
  }

LABEL_18:
  v27 = objc_msgSend_value(v33, v12, v13, v14, v15, v16);
  objc_msgSend_addObject_(v19, v28, v27, v29, v30, v31);
LABEL_30:

LABEL_31:
}

void sub_2559BA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2559BA740(void *a1, void *a2)
{
  v30 = a2;
  v8 = objc_msgSend_fieldType(v30, v3, v4, v5, v6, v7);
  if (v8 > 1102)
  {
    switch(v8)
    {
      case 1103:
        v27 = objc_msgSend_value(v30, v9, v10, v11, v12, v13);
        v28 = a1[7];
        break;
      case 1104:
        v27 = objc_msgSend_value(v30, v9, v10, v11, v12, v13);
        v28 = a1[8];
        break;
      case 1105:
        v14 = *(*(a1[9] + 8) + 40);
        if (v14)
        {
          goto LABEL_13;
        }

        v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v20 = *(a1[9] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v18 = a1[9];
        goto LABEL_12;
      default:
        goto LABEL_20;
    }

LABEL_18:
    v29 = *(v28 + 8);
    v22 = *(v29 + 40);
    *(v29 + 40) = v27;
    goto LABEL_19;
  }

  if (v8 == 1100)
  {
    v27 = objc_msgSend_value(v30, v9, v10, v11, v12, v13);
    v28 = a1[4];
    goto LABEL_18;
  }

  if (v8 == 1101)
  {
    v27 = objc_msgSend_value(v30, v9, v10, v11, v12, v13);
    v28 = a1[5];
    goto LABEL_18;
  }

  if (v8 != 1102)
  {
    goto LABEL_20;
  }

  v14 = *(*(a1[6] + 8) + 40);
  if (v14)
  {
    goto LABEL_13;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = a1[6];
LABEL_12:
  v14 = *(*(v18 + 8) + 40);
LABEL_13:
  v22 = objc_msgSend_value(v30, v9, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v23, v22, v24, v25, v26);
LABEL_19:

LABEL_20:
}

void sub_2559BAC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BACBC(uint64_t a1, void *a2)
{
  v17 = a2;
  v13 = objc_msgSend_fieldType(v17, v3, v4, v5, v6, v7) - 1050;
  if (v13 <= 5)
  {
    v14 = objc_msgSend_value(v17, v8, v9, v10, v11, v12);
    v15 = *(*(a1 + 8 * v13 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_2559BAF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2559BAFC4(uint64_t a1, void *a2)
{
  v18 = a2;
  v8 = objc_msgSend_fieldType(v18, v3, v4, v5, v6, v7);
  if (v8 == 1000)
  {
    v14 = 32;
  }

  else
  {
    if (v8 != 1001)
    {
      goto LABEL_6;
    }

    v14 = 40;
  }

  v15 = objc_msgSend_value(v18, v9, v10, v11, v12, v13);
  v16 = *(*(a1 + v14) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

LABEL_6:
}

void sub_2559BB33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2559BB378(uint64_t a1, void *a2)
{
  v17 = a2;
  v13 = objc_msgSend_fieldType(v17, v3, v4, v5, v6, v7) - 950;
  if (v13 <= 2)
  {
    v14 = objc_msgSend_value(v17, v8, v9, v10, v11, v12);
    v15 = *(*(a1 + 8 * v13 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_2559BB654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2559BB680(uint64_t a1, void *a2)
{
  v18 = a2;
  v8 = objc_msgSend_fieldType(v18, v3, v4, v5, v6, v7);
  if (v8 == 900)
  {
    v14 = 32;
  }

  else
  {
    if (v8 != 901)
    {
      goto LABEL_6;
    }

    v14 = 40;
  }

  v15 = objc_msgSend_value(v18, v9, v10, v11, v12, v13);
  v16 = *(*(a1 + v14) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

LABEL_6:
}

void sub_2559BB968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2559BB994(uint64_t a1, void *a2)
{
  v18 = a2;
  v8 = objc_msgSend_fieldType(v18, v3, v4, v5, v6, v7);
  if (v8 == 850)
  {
    v14 = 32;
  }

  else
  {
    if (v8 != 851)
    {
      goto LABEL_6;
    }

    v14 = 40;
  }

  v15 = objc_msgSend_value(v18, v9, v10, v11, v12, v13);
  v16 = *(*(a1 + v14) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

LABEL_6:
}

void sub_2559BBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2559BBC4C(uint64_t a1, void *a2)
{
  v16 = a2;
  if (objc_msgSend_fieldType(v16, v3, v4, v5, v6, v7) == 750)
  {
    v13 = objc_msgSend_value(v16, v8, v9, v10, v11, v12);
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_2559BBFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BC018(uint64_t a1, void *a2)
{
  v21 = a2;
  v8 = objc_msgSend_fieldType(v21, v3, v4, v5, v6, v7);
  if (v8 == 700)
  {
    v16 = 1;
    v15 = v21;
    goto LABEL_8;
  }

  if (v8 == 701)
  {
    v17 = 48;
    objc_msgSend_value(v21, v9, v10, v11, v12, v13);
    v18 = LABEL_9:;
    v19 = *(*(a1 + v17) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v15 = v21;
    goto LABEL_10;
  }

  v14 = v8 == 702;
  v15 = v21;
  if (v14)
  {
    v16 = 2;
LABEL_8:
    *(*(*(a1 + 32) + 8) + 24) = v16;
    v17 = 40;
    objc_msgSend_value(v15, v9, v10, v11, v12, v13);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_2559BC328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2559BC354(uint64_t a1, void *a2)
{
  v18 = a2;
  v8 = objc_msgSend_fieldType(v18, v3, v4, v5, v6, v7);
  if (v8 == 650)
  {
    v14 = 32;
  }

  else
  {
    if (v8 != 651)
    {
      goto LABEL_6;
    }

    v14 = 40;
  }

  v15 = objc_msgSend_value(v18, v9, v10, v11, v12, v13);
  v16 = *(*(a1 + v14) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

LABEL_6:
}

void sub_2559BC854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose((v45 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2559BC8CC(uint64_t a1, void *a2)
{
  v22 = a2;
  v8 = objc_msgSend_fieldType(v22, v3, v4, v5, v6, v7);
  if (v8 == 552)
  {
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 24);
    *(v20 + 24) = v21 + 1;
    v16 = objc_msgSend_value(v22, v9, v10, v11, v12, v13);
    if (v21)
    {
      if (v21 == 2)
      {
        v17 = 80;
      }

      else if (v21 == 1)
      {
        v17 = 72;
      }

      else
      {
        v17 = 88;
      }
    }

    else
    {
      v17 = 64;
    }
  }

  else
  {
    if (v8 != 551)
    {
      goto LABEL_6;
    }

    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 24);
    *(v14 + 24) = v15 + 1;
    v16 = objc_msgSend_value(v22, v9, v10, v11, v12, v13);
    v17 = 48;
    if (!v15)
    {
      v17 = 40;
    }
  }

  v18 = *(*(a1 + v17) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v16;

LABEL_6:
}

void sub_2559BCCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BCD44(void *a1, void *a2)
{
  v35 = a2;
  v8 = objc_msgSend_fieldType(v35, v3, v4, v5, v6, v7);
  if (v8 <= 352)
  {
    if (v8 == 351)
    {
      v24 = objc_msgSend_value(v35, v9, v10, v11, v12, v13);
      v25 = a1[4];
    }

    else
    {
      if (v8 != 352)
      {
        goto LABEL_15;
      }

      v24 = objc_msgSend_value(v35, v9, v10, v11, v12, v13);
      v25 = a1[5];
    }
  }

  else
  {
    switch(v8)
    {
      case 353:
        v24 = objc_msgSend_value(v35, v9, v10, v11, v12, v13);
        v25 = a1[6];
        break;
      case 354:
        v24 = objc_msgSend_value(v35, v9, v10, v11, v12, v13);
        v25 = a1[7];
        break;
      case 355:
        v14 = objc_msgSend_value(v35, v9, v10, v11, v12, v13);
        if (objc_msgSend_isEqualToString_(v14, v15, @"common_RadioBand_AM", v16, v17, v18))
        {
          v23 = 1;
        }

        else if (objc_msgSend_isEqualToString_(v14, v19, @"common_RadioBand_FM", v20, v21, v22))
        {
          v23 = 2;
        }

        else if (objc_msgSend_isEqualToString_(v14, v27, @"common_RadioBand_XM", v28, v29, v30))
        {
          v23 = 3;
        }

        else if (objc_msgSend_isEqualToString_(v14, v31, @"common_RadioBand_DAB", v32, v33, v34))
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        *(*(a1[8] + 8) + 24) = v23;
        goto LABEL_14;
      default:
        goto LABEL_15;
    }
  }

  v26 = *(v25 + 8);
  v14 = *(v26 + 40);
  *(v26 + 40) = v24;
LABEL_14:

LABEL_15:
}

void sub_2559BD210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BD260(void *a1, void *a2)
{
  v26 = a2;
  v8 = objc_msgSend_fieldType(v26, v3, v4, v5, v6, v7);
  if (v8 <= 801)
  {
    if (v8 == 800)
    {
      v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
      v24 = a1[5];
    }

    else
    {
      if (v8 != 801)
      {
        goto LABEL_16;
      }

      v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
      v24 = a1[4];
    }
  }

  else
  {
    switch(v8)
    {
      case 802:
        v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        v24 = a1[6];
        break;
      case 803:
        v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        v24 = a1[7];
        break;
      case 804:
        v14 = *(*(a1[8] + 8) + 40);
        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v16 = *(a1[8] + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v14 = *(*(a1[8] + 8) + 40);
        }

        v18 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        objc_msgSend_addObject_(v14, v19, v18, v20, v21, v22);
        goto LABEL_15;
      default:
        goto LABEL_16;
    }
  }

  v25 = *(v24 + 8);
  v18 = *(v25 + 40);
  *(v25 + 40) = v23;
LABEL_15:

LABEL_16:
}

void sub_2559BD648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BD680(uint64_t a1, void *a2)
{
  v17 = a2;
  v13 = objc_msgSend_fieldType(v17, v3, v4, v5, v6, v7) - 300;
  if (v13 <= 2)
  {
    v14 = objc_msgSend_value(v17, v8, v9, v10, v11, v12);
    v15 = *(*(a1 + 8 * v13 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_2559BDAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL sub_2559BDB00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D21080];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  v11 = objc_msgSend_initWithSourceItemIdentifier_type_error_(v7, v9, v6, a2, &obj, v10);

  objc_storeStrong((v8 + 40), obj);
  if (v11)
  {
    v16 = *(*(*(a1 + 40) + 8) + 40);
    if (!v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_addObject_(v16, v12, v11, v13, v14, v15);
  }

  return v11 != 0;
}

void sub_2559BDBD8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  switch(objc_msgSend_fieldType(v6, v7, v8, v9, v10, v11))
  {
    case 201:
      v17 = a1[4];
      v18 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      LOBYTE(v17) = (*(v17 + 16))(v17, 1, v18);

      if ((v17 & 1) == 0)
      {
        *(*(a1[5] + 8) + 24) = 1;
        *a4 = 1;
      }

      break;
    case 202:
      *(*(a1[6] + 8) + 24) = 1;
      v96 = objc_alloc(MEMORY[0x277D21058]);
      v28 = objc_msgSend_value(v6, v97, v98, v99, v100, v101);
      v102 = *(a1[8] + 8);
      v103 = *(v102 + 40);
      v30 = (v102 + 40);
      v182 = v103;
      v35 = objc_msgSend_initWithName_error_(v96, v104, v28, &v182, v105, v106);
      v36 = v182;
      goto LABEL_25;
    case 203:
      v73 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v73 + 16))(v73, 3, v20);
      goto LABEL_28;
    case 204:
      *(*(a1[6] + 8) + 24) = 3;
      v131 = objc_alloc(MEMORY[0x277D21050]);
      v28 = objc_msgSend_value(v6, v132, v133, v134, v135, v136);
      v137 = *(a1[8] + 8);
      v138 = *(v137 + 40);
      v30 = (v137 + 40);
      v181 = v138;
      v35 = objc_msgSend_initWithName_error_(v131, v139, v28, &v181, v140, v141);
      v36 = v181;
      goto LABEL_25;
    case 205:
      v142 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v142 + 16))(v142, 11, v20);
      goto LABEL_28;
    case 206:
      *(*(a1[6] + 8) + 24) = 11;
      v74 = objc_alloc(MEMORY[0x277D21068]);
      v28 = objc_msgSend_value(v6, v75, v76, v77, v78, v79);
      v80 = *(a1[8] + 8);
      v81 = *(v80 + 40);
      v30 = (v80 + 40);
      v180 = v81;
      v35 = objc_msgSend_initWithName_error_(v74, v82, v28, &v180, v83, v84);
      v36 = v180;
      goto LABEL_25;
    case 207:
      v107 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v107 + 16))(v107, 12, v20);
      goto LABEL_28;
    case 208:
      *(*(a1[6] + 8) + 24) = 12;
      v108 = objc_alloc(MEMORY[0x277D21060]);
      v28 = objc_msgSend_value(v6, v109, v110, v111, v112, v113);
      v114 = *(a1[8] + 8);
      v115 = *(v114 + 40);
      v30 = (v114 + 40);
      v179 = v115;
      v35 = objc_msgSend_initWithName_error_(v108, v116, v28, &v179, v117, v118);
      v36 = v179;
      goto LABEL_25;
    case 209:
      v154 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v154 + 16))(v154, 4, v20);
      goto LABEL_28;
    case 210:
      *(*(a1[6] + 8) + 24) = 4;
      v143 = objc_alloc(MEMORY[0x277D21078]);
      v28 = objc_msgSend_value(v6, v144, v145, v146, v147, v148);
      v149 = *(a1[8] + 8);
      v150 = *(v149 + 40);
      v30 = (v149 + 40);
      v178 = v150;
      v35 = objc_msgSend_initWithName_error_(v143, v151, v28, &v178, v152, v153);
      v36 = v178;
      goto LABEL_25;
    case 211:
      v59 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v59 + 16))(v59, 10, v20);
      goto LABEL_28;
    case 212:
      *(*(a1[6] + 8) + 24) = 10;
      v85 = objc_alloc(MEMORY[0x277D21090]);
      v28 = objc_msgSend_value(v6, v86, v87, v88, v89, v90);
      v91 = *(a1[8] + 8);
      v92 = *(v91 + 40);
      v30 = (v91 + 40);
      v177 = v92;
      v35 = objc_msgSend_initWithName_error_(v85, v93, v28, &v177, v94, v95);
      v36 = v177;
      goto LABEL_25;
    case 213:
      v61 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v61 + 16))(v61, 7, v20);
      goto LABEL_28;
    case 214:
      *(*(a1[6] + 8) + 24) = 7;
      v37 = objc_alloc(MEMORY[0x277D21098]);
      v28 = objc_msgSend_value(v6, v38, v39, v40, v41, v42);
      v43 = *(a1[8] + 8);
      v44 = *(v43 + 40);
      v30 = (v43 + 40);
      v176 = v44;
      v35 = objc_msgSend_initWithName_error_(v37, v45, v28, &v176, v46, v47);
      v36 = v176;
      goto LABEL_25;
    case 215:
      v119 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v119 + 16))(v119, 6, v20);
      goto LABEL_28;
    case 216:
      *(*(a1[6] + 8) + 24) = 6;
      v120 = objc_alloc(MEMORY[0x277D210A0]);
      v28 = objc_msgSend_value(v6, v121, v122, v123, v124, v125);
      v126 = *(a1[8] + 8);
      v127 = *(v126 + 40);
      v30 = (v126 + 40);
      v175 = v127;
      v35 = objc_msgSend_initWithName_error_(v120, v128, v28, &v175, v129, v130);
      v36 = v175;
      goto LABEL_25;
    case 225:
      v168 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v168 + 16))(v168, 2, v20);
      goto LABEL_28;
    case 226:
      *(*(a1[6] + 8) + 24) = 2;
      v155 = objc_alloc(MEMORY[0x277D210B0]);
      v28 = objc_msgSend_value(v6, v156, v157, v158, v159, v160);
      v161 = *(a1[8] + 8);
      v162 = *(v161 + 40);
      v30 = (v161 + 40);
      obj = v162;
      v35 = objc_msgSend_initWithName_error_(v155, v163, v28, &obj, v164, v165);
      v36 = obj;
      goto LABEL_25;
    case 227:
      v19 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v19 + 16))(v19, 5, v20);
      goto LABEL_28;
    case 228:
      *(*(a1[6] + 8) + 24) = 5;
      v62 = objc_alloc(MEMORY[0x277D210A8]);
      v28 = objc_msgSend_value(v6, v63, v64, v65, v66, v67);
      v68 = *(a1[8] + 8);
      v69 = *(v68 + 40);
      v30 = (v68 + 40);
      v173 = v69;
      v35 = objc_msgSend_initWithName_error_(v62, v70, v28, &v173, v71, v72);
      v36 = v173;
      goto LABEL_25;
    case 229:
      v169 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v169 + 16))(v169, 9, v20);
      goto LABEL_28;
    case 230:
      *(*(a1[6] + 8) + 24) = 9;
      v22 = objc_alloc(MEMORY[0x277D210B8]);
      v28 = objc_msgSend_value(v6, v23, v24, v25, v26, v27);
      v29 = *(a1[8] + 8);
      v31 = *(v29 + 40);
      v30 = (v29 + 40);
      v172 = v31;
      v35 = objc_msgSend_initWithName_error_(v22, v32, v28, &v172, v33, v34);
      v36 = v172;
      goto LABEL_25;
    case 231:
      v60 = a1[4];
      v20 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v21 = (*(v60 + 16))(v60, 8, v20);
LABEL_28:
      v170 = v21;

      if ((v170 & 1) == 0)
      {
        *(*(a1[5] + 8) + 24) = 1;
        *a4 = 1;
      }

      break;
    case 232:
      *(*(a1[6] + 8) + 24) = 8;
      v48 = objc_alloc(MEMORY[0x277D210C0]);
      v28 = objc_msgSend_value(v6, v49, v50, v51, v52, v53);
      v54 = *(a1[8] + 8);
      v55 = *(v54 + 40);
      v30 = (v54 + 40);
      v171 = v55;
      v35 = objc_msgSend_initWithName_error_(v48, v56, v28, &v171, v57, v58);
      v36 = v171;
LABEL_25:
      objc_storeStrong(v30, v36);
      v166 = *(a1[7] + 8);
      v167 = *(v166 + 40);
      *(v166 + 40) = v35;

      break;
    default:
      break;
  }
}

void sub_2559BE5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2559BE618(void *a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_fieldType(v3, v4, v5, v6, v7, v8);
  if (v9 <= 153)
  {
    if (v9 > 151)
    {
      if (v9 == 152)
      {
        *(*(a1[4] + 8) + 24) = 3;
        v65 = objc_alloc(MEMORY[0x277D20FF0]);
        v24 = objc_msgSend_value(v3, v66, v67, v68, v69, v70);
        v71 = *(a1[6] + 8);
        v72 = *(v71 + 40);
        v26 = (v71 + 40);
        v115 = v72;
        v31 = objc_msgSend_initWithName_error_(v65, v73, v24, &v115, v74, v75);
        v32 = v115;
      }

      else
      {
        *(*(a1[4] + 8) + 24) = 4;
        v33 = objc_alloc(MEMORY[0x277D21000]);
        v24 = objc_msgSend_value(v3, v34, v35, v36, v37, v38);
        v39 = *(a1[6] + 8);
        v40 = *(v39 + 40);
        v26 = (v39 + 40);
        v114 = v40;
        v31 = objc_msgSend_initWithName_deviceType_error_(v33, v41, v24, 0, &v114, v42);
        v32 = v114;
      }
    }

    else if (v9 == 150)
    {
      *(*(a1[4] + 8) + 24) = 1;
      v54 = objc_alloc(MEMORY[0x277D20FD0]);
      v24 = objc_msgSend_value(v3, v55, v56, v57, v58, v59);
      v60 = *(a1[6] + 8);
      v61 = *(v60 + 40);
      v26 = (v60 + 40);
      v117 = v61;
      v31 = objc_msgSend_initWithName_error_(v54, v62, v24, &v117, v63, v64);
      v32 = v117;
    }

    else
    {
      if (v9 != 151)
      {
        goto LABEL_21;
      }

      *(*(a1[4] + 8) + 24) = 2;
      v18 = objc_alloc(MEMORY[0x277D21038]);
      v24 = objc_msgSend_value(v3, v19, v20, v21, v22, v23);
      v25 = *(a1[6] + 8);
      v27 = *(v25 + 40);
      v26 = (v25 + 40);
      v116 = v27;
      v31 = objc_msgSend_initWithName_error_(v18, v28, v24, &v116, v29, v30);
      v32 = v116;
    }

LABEL_20:
    objc_storeStrong(v26, v32);
    v108 = *(a1[5] + 8);
    v109 = *(v108 + 40);
    *(v108 + 40) = v31;

    goto LABEL_21;
  }

  if (v9 <= 155)
  {
    if (v9 == 154)
    {
      *(*(a1[4] + 8) + 24) = 5;
      v87 = objc_alloc(MEMORY[0x277D21028]);
      v24 = objc_msgSend_value(v3, v88, v89, v90, v91, v92);
      v93 = *(a1[6] + 8);
      v94 = *(v93 + 40);
      v26 = (v93 + 40);
      v113 = v94;
      v31 = objc_msgSend_initWithName_error_(v87, v95, v24, &v113, v96, v97);
      v32 = v113;
    }

    else
    {
      *(*(a1[4] + 8) + 24) = 6;
      v43 = objc_alloc(MEMORY[0x277D20FF8]);
      v24 = objc_msgSend_value(v3, v44, v45, v46, v47, v48);
      v49 = *(a1[6] + 8);
      v50 = *(v49 + 40);
      v26 = (v49 + 40);
      v112 = v50;
      v31 = objc_msgSend_initWithName_error_(v43, v51, v24, &v112, v52, v53);
      v32 = v112;
    }

    goto LABEL_20;
  }

  switch(v9)
  {
    case 156:
      *(*(a1[4] + 8) + 24) = 7;
      v76 = objc_alloc(MEMORY[0x277D21030]);
      v24 = objc_msgSend_value(v3, v77, v78, v79, v80, v81);
      v82 = *(a1[6] + 8);
      v83 = *(v82 + 40);
      v26 = (v82 + 40);
      v111 = v83;
      v31 = objc_msgSend_initWithName_error_(v76, v84, v24, &v111, v85, v86);
      v32 = v111;
      goto LABEL_20;
    case 157:
      *(*(a1[4] + 8) + 24) = 8;
      v98 = objc_alloc(MEMORY[0x277D20FD8]);
      v24 = objc_msgSend_value(v3, v99, v100, v101, v102, v103);
      v104 = *(a1[6] + 8);
      v105 = *(v104 + 40);
      v26 = (v104 + 40);
      obj = v105;
      v31 = objc_msgSend_initWithName_deviceType_error_(v98, v106, v24, 0, &obj, v107);
      v32 = obj;
      goto LABEL_20;
    case 158:
      v15 = objc_msgSend_value(v3, v10, v11, v12, v13, v14);
      v16 = *(a1[7] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      break;
  }

LABEL_21:
}

void sub_2559BED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2559BEDA4(void *a1, void *a2)
{
  v26 = a2;
  v8 = objc_msgSend_fieldType(v26, v3, v4, v5, v6, v7);
  if (v8 <= 101)
  {
    if (v8 == 100)
    {
      v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
      v24 = a1[4];
    }

    else
    {
      if (v8 != 101)
      {
        goto LABEL_16;
      }

      v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
      v24 = a1[5];
    }
  }

  else
  {
    switch(v8)
    {
      case 'f':
        v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        v24 = a1[6];
        break;
      case 'g':
        v23 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        v24 = a1[7];
        break;
      case 'h':
        v14 = *(*(a1[8] + 8) + 40);
        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v16 = *(a1[8] + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v14 = *(*(a1[8] + 8) + 40);
        }

        v18 = objc_msgSend_value(v26, v9, v10, v11, v12, v13);
        objc_msgSend_addObject_(v14, v19, v18, v20, v21, v22);
        goto LABEL_15;
      default:
        goto LABEL_16;
    }
  }

  v25 = *(v24 + 8);
  v18 = *(v25 + 40);
  *(v25 + 40) = v23;
LABEL_15:

LABEL_16:
}

void sub_2559BF8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);
  _Block_object_dispose(&STACK[0x418], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x478], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4D8], 8);
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose((v68 - 232), 8);
  _Block_object_dispose((v68 - 184), 8);
  _Block_object_dispose((v68 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2559BFA00(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  switch(objc_msgSend_fieldType(v6, v7, v8, v9, v10, v11))
  {
    case '2':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[4];
      goto LABEL_41;
    case '3':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[5];
      goto LABEL_41;
    case '4':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[6];
      goto LABEL_41;
    case '5':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[7];
      goto LABEL_41;
    case '6':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[8];
      goto LABEL_41;
    case '7':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[9];
      goto LABEL_41;
    case '8':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[10];
      goto LABEL_41;
    case '9':
      v62 = objc_alloc(MEMORY[0x277D20F70]);
      v68 = objc_msgSend_label(v6, v63, v64, v65, v66, v67);
      v69 = *(a1[11] + 8);
      v128 = *(v69 + 40);
      v28 = objc_msgSend_initWithLabel_stringValue_error_(v62, v70, v68, 0, &v128, v71);
      objc_storeStrong((v69 + 40), v128);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[13] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v73 = *(a1[13] + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v37 = a1[13];
      goto LABEL_36;
    case ':':
      v107 = objc_alloc(MEMORY[0x277D20F58]);
      v113 = objc_msgSend_label(v6, v108, v109, v110, v111, v112);
      v114 = *(a1[11] + 8);
      v127 = *(v114 + 40);
      v28 = objc_msgSend_initWithLabel_email_error_(v107, v115, v113, 0, &v127, v116);
      objc_storeStrong((v114 + 40), v127);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[14] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v118 = *(a1[14] + 8);
      v119 = *(v118 + 40);
      *(v118 + 40) = v117;

      v37 = a1[14];
      goto LABEL_36;
    case ';':
      v50 = objc_alloc(MEMORY[0x277D20F78]);
      v56 = objc_msgSend_label(v6, v51, v52, v53, v54, v55);
      v57 = *(a1[11] + 8);
      v126 = *(v57 + 40);
      v28 = objc_msgSend_initWithLabel_street_subLocality_city_subAdministrativeArea_state_postalCode_country_ISOCountryCode_error_(v50, v58, v56, 0, 0, 0, 0, 0, 0, 0, 0, &v126);
      objc_storeStrong((v57 + 40), v126);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[15] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60 = *(a1[15] + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      v37 = a1[15];
      goto LABEL_36;
    case '<':
      v94 = objc_alloc(MEMORY[0x277D20F90]);
      v100 = objc_msgSend_label(v6, v95, v96, v97, v98, v99);
      v101 = *(a1[11] + 8);
      v125 = *(v101 + 40);
      v28 = objc_msgSend_initWithLabel_url_error_(v94, v102, v100, 0, &v125, v103);
      objc_storeStrong((v101 + 40), v125);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[16] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v105 = *(a1[16] + 8);
      v106 = *(v105 + 40);
      *(v105 + 40) = v104;

      v37 = a1[16];
      goto LABEL_36;
    case '=':
      v19 = objc_alloc(MEMORY[0x277D20F88]);
      v25 = objc_msgSend_label(v6, v20, v21, v22, v23, v24);
      v26 = *(a1[11] + 8);
      obj = *(v26 + 40);
      v28 = objc_msgSend_initWithLabel_urlString_username_userIdentifier_serviceName_error_(v19, v27, v25, 0, 0, 0, 0, &obj);
      objc_storeStrong((v26 + 40), obj);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[17] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v35 = *(a1[17] + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      v37 = a1[17];
      goto LABEL_36;
    case '>':
      v38 = objc_alloc(MEMORY[0x277D20F60]);
      v44 = objc_msgSend_label(v6, v39, v40, v41, v42, v43);
      v45 = *(a1[11] + 8);
      v123 = *(v45 + 40);
      v28 = objc_msgSend_initWithLabel_username_serviceName_error_(v38, v46, v44, 0, 0, &v123);
      objc_storeStrong((v45 + 40), v123);

      if (!v28)
      {
        goto LABEL_38;
      }

      v33 = *(*(a1[18] + 8) + 40);
      if (v33)
      {
        goto LABEL_37;
      }

      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v48 = *(a1[18] + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;

      v37 = a1[18];
      goto LABEL_36;
    case '?':
      v75 = objc_alloc(MEMORY[0x277D20F80]);
      v81 = objc_msgSend_label(v6, v76, v77, v78, v79, v80);
      v87 = objc_msgSend_value(v6, v82, v83, v84, v85, v86);
      v88 = *(a1[11] + 8);
      v122 = *(v88 + 40);
      v28 = objc_msgSend_initWithLabel_name_error_(v75, v89, v81, v87, &v122, v90);
      objc_storeStrong((v88 + 40), v122);

      if (v28)
      {
        v33 = *(*(a1[19] + 8) + 40);
        if (!v33)
        {
          v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v92 = *(a1[19] + 8);
          v93 = *(v92 + 40);
          *(v92 + 40) = v91;

          v37 = a1[19];
LABEL_36:
          v33 = *(*(v37 + 8) + 40);
        }

LABEL_37:
        objc_msgSend_addObject_(v33, v29, v28, v30, v31, v32);
      }

      else
      {
LABEL_38:
        *(*(a1[12] + 8) + 24) = 1;
        *a4 = 1;
      }

LABEL_42:
      return;
    case '@':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[20];
      goto LABEL_41;
    case 'A':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[21];
      goto LABEL_41;
    case 'B':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[22];
      goto LABEL_41;
    case 'C':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[23];
      goto LABEL_41;
    case 'D':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[24];
      goto LABEL_41;
    case 'E':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[25];
      goto LABEL_41;
    case 'F':
      v17 = objc_msgSend_value(v6, v12, v13, v14, v15, v16);
      v18 = a1[26];
LABEL_41:
      v120 = *(v18 + 8);
      v121 = *(v120 + 40);
      *(v120 + 40) = v17;

      goto LABEL_42;
    default:
      goto LABEL_42;
  }
}

void sub_2559C0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_2559C03AC(void *a1, void *a2)
{
  v23 = a2;
  v8 = objc_msgSend_fieldType(v23, v3, v4, v5, v6, v7) - 600;
  if (v8 <= 4)
  {
    v9 = qword_279803FA8[v8];
    v10 = **(&unk_279803F80 + v8);
    *(*(a1[4] + 8) + 24) = objc_opt_class();
    v11 = *v9;
    *(*(a1[5] + 8) + 24) = objc_opt_class();
    v12 = *(*(a1[6] + 8) + 40);
    v18 = objc_msgSend_value(v23, v13, v14, v15, v16, v17);
    objc_msgSend_addObject_(v12, v19, v18, v20, v21, v22);
  }
}

void sub_2559C07F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_2559C0840(uint64_t a1, void *a2)
{
  v22 = a2;
  v8 = objc_msgSend_fieldType(v22, v3, v4, v5, v6, v7);
  v14 = 0x277D20D60;
  v15 = 56;
  v16 = 0x277D20D58;
  switch(v8)
  {
    case 1:
      goto LABEL_18;
    case 2:
      v14 = 0x277D20D50;
      v16 = 0x277D20D48;
      goto LABEL_18;
    case 3:
      v14 = 0x277D20E10;
      v16 = 0x277D20E08;
      goto LABEL_18;
    case 4:
      v14 = 0x277D20E00;
      v16 = 0x277D20DF8;
      goto LABEL_18;
    case 5:
      v14 = 0x277D20E30;
      v16 = 0x277D20E28;
      goto LABEL_18;
    case 6:
      v14 = 0x277D20D40;
      v16 = 0x277D20D38;
      goto LABEL_18;
    case 7:
      v14 = 0x277D20D30;
      v16 = 0x277D20D28;
      goto LABEL_18;
    case 8:
      v14 = 0x277D20DF0;
      v16 = 0x277D20DE8;
      goto LABEL_18;
    case 9:
      v14 = 0x277D20DE0;
      v16 = 0x277D20DD8;
      goto LABEL_18;
    case 10:
      v14 = 0x277D20DD0;
      v16 = 0x277D20DC8;
      goto LABEL_18;
    case 11:
      v14 = 0x277D20DC0;
      v16 = 0x277D20DB8;
      goto LABEL_18;
    case 12:
      v14 = 0x277D20DA0;
      v16 = 0x277D20D98;
      goto LABEL_18;
    case 13:
      v14 = 0x277D20D90;
      v16 = 0x277D20D88;
      goto LABEL_18;
    case 14:
      v14 = 0x277D20D80;
      v16 = 0x277D20D78;
      goto LABEL_18;
    case 15:
      v14 = 0x277D20D70;
      v16 = 0x277D20D68;
      goto LABEL_18;
    case 16:
      v14 = 0x277D20DB0;
      v16 = 0x277D20DA8;
      goto LABEL_18;
    case 17:
      v14 = 0x277D20E20;
      v16 = 0x277D20E18;
LABEL_18:
      v17 = *v16;
      *(*(*(a1 + 32) + 8) + 24) = objc_opt_class();
      v18 = *v14;
      *(*(*(a1 + 40) + 8) + 24) = objc_opt_class();
      v15 = 48;
      goto LABEL_19;
    case 20:
LABEL_19:
      v19 = objc_msgSend_value(v22, v9, v10, v11, v12, v13);
      v20 = *(*(a1 + v15) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      break;
    default:
      break;
  }
}

BOOL KVIsEmptyOrWhitespace(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_length(v1, v2, v3, v4, v5, v6);
  v17 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v8, v9, v10, v11, v12);
  if (v7)
  {
    v18 = objc_msgSend_characterAtIndex_(v1, v13, 0, v14, v15, v16);
    if (objc_msgSend_characterIsMember_(v17, v19, v18, v20, v21, v22))
    {
      v27 = 1;
      while (v7 != v27)
      {
        v28 = objc_msgSend_characterAtIndex_(v1, v23, v27++, v24, v25, v26);
        if ((objc_msgSend_characterIsMember_(v17, v29, v28, v30, v31, v32) & 1) == 0)
        {
          v33 = v27 - 1;
          goto LABEL_10;
        }
      }

      v33 = v7;
LABEL_10:
      v34 = v33 >= v7;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  return v34;
}

void *KVSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

void KVSetAndReportError(void *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (a1 && v3)
  {
    v10 = v3;
    *a1 = v9;
  }

  v11 = objc_msgSend_domain(v9, v4, v5, v6, v7, v8);
  v17 = objc_msgSend_length(v11, v12, v13, v14, v15, v16);

  if (v17)
  {
    v18 = v9;
    AnalyticsSendEventLazy();
  }
}

id sub_2559C26C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60[4] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_underlyingErrors(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_firstObject(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_description(*(a1 + 32), v14, v15, v16, v17, v18);
  v59[0] = @"domain";
  v25 = objc_msgSend_domain(*(a1 + 32), v20, v21, v22, v23, v24);
  v60[0] = v25;
  v59[1] = @"code";
  v26 = MEMORY[0x277CCABB0];
  v32 = objc_msgSend_code(*(a1 + 32), v27, v28, v29, v30, v31);
  v42 = objc_msgSend_numberWithInteger_(v26, v33, v32, v34, v35, v36);
  v60[1] = v42;
  v59[2] = @"underlyingCode";
  if (v13)
  {
    v43 = MEMORY[0x277CCABB0];
    v44 = objc_msgSend_code(v13, v37, v38, v39, v40, v41);
    objc_msgSend_numberWithInteger_(v43, v45, v44, v46, v47, v48);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v37, v38, v39, v40, v41);
  }
  v54 = ;
  v60[2] = v54;
  v59[3] = @"description";
  v55 = v19;
  if (!v19)
  {
    v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v49, v50, v51, v52, v53);
  }

  v60[3] = v55;
  v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v60, v59, 4, v53);
  if (!v19)
  {
  }

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

id KVHash64(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v7 = v1;
  if (v1)
  {
    v8 = objc_msgSend_length(v1, v2, v3, v4, v5, v6);
    v9 = v7;
    v15 = objc_msgSend_bytes(v9, v10, v11, v12, v13, v14);
    if (v8 >= 0x10)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v15 + v20)) ^ ((0x9DDFEA08EB382D69 * *(v15 + v20)) >> 44));
        v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v15 + v20 + 8)) ^ ((0x9DDFEA08EB382D69 * *(v15 + v20 + 8)) >> 44));
        v21 -= 0x622015F714C7D297 * ((v24 ^ (v24 >> 41)) + (v23 ^ (v23 >> 41)));
        v20 += 16;
      }

      while (v20 < (v8 & 0xFFFFFFF0));
    }

    else
    {
      LODWORD(v20) = 0;
      v21 = 0;
    }

    if (v8 > v20)
    {
      __memcpy_chk();
    }

    v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v16, v21, v17, v18, v19);
  }

  else
  {
    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

id KVHash64String(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, a4, a5, a6);
  v7 = KVHash64(v6);

  return v7;
}

uint64_t KVScanHexString(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v6 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], a2, a1, a4, a5, a6);
  objc_msgSend_scanHexLongLong_(v6, v7, &v13, v8, v9, v10);
  v11 = v13;

  return v11;
}

id KVConcatenateHash64(void *a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = objc_msgSend_longLongValue(a1, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_longLongValue(v3, v10, v11, v12, v13, v14);

  v22[0] = v9;
  v22[1] = v15;
  v19 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v16, v22, 16, v17, v18);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id KVConcatenatedHash64Prefix(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3, v4, v5, v6) == 16)
  {
    v15 = 0;
    objc_msgSend_getBytes_range_(v1, v7, &v15, 0, 8, v8);
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v9, v15, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id KVConcatenatedHash64Suffix(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3, v4, v5, v6) == 16)
  {
    v15 = 0;
    objc_msgSend_getBytes_range_(v1, v7, &v15, 8, 8, v8);
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v9, v15, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_2559C2C40(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v7 = 0;
    do
    {
      objc_msgSend_appendString_(v2, v3, @"  ", v4, v5, v6);
      ++v7;
    }

    while (v7 < a1);
  }

  else
  {
    v2 = *(&off_2798040C0 + a1);
  }

  return v2;
}

__CFString *sub_2559C2CC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], a2, a1, 4, 0, a6);
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_initWithData_encoding_(v7, v8, v6, 4, v9, v10);
  }

  else
  {
    v11 = @"null";
    v12 = @"null";
  }

  return v11;
}

void sub_2559C3394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2559C33AC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28106B390)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_2559C3500;
    v5[4] = &unk_2798041B0;
    v5[5] = v5;
    v6 = xmmword_2798040E8;
    v7 = 0;
    qword_28106B390 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28106B390)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("KMItemMapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_28106B388 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2559C3500(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28106B390 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2559C35C8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v8 = objc_msgSend_formatOptions(v2, v3, v4, v5, v6, v7);
  objc_msgSend_setFormatOptions_(v2, v9, v8 | 0x800, v10, v11, v12);
  v17 = objc_msgSend_stringFromDate_(v2, v13, a1, v14, v15, v16);

  return v17;
}

void sub_2559C386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2559C3884(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27F7DA3D0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_2559C39D8;
    v5[4] = &unk_2798041B0;
    v5[5] = v5;
    v6 = xmmword_279804100;
    v7 = 0;
    qword_27F7DA3D0 = _sl_dlopen();
    v2 = v5[0];
    if (qword_27F7DA3D0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SEMSpanMatchQueryBuilder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_27F7DA3C8 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2559C39D8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27F7DA3D0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2559C3A4C()
{
  qword_28106B3C0 = os_log_create("com.apple.siri.vocabulary", "Koa");

  return MEMORY[0x2821F96F8]();
}

id sub_2559C6264(unint64_t a1, void *a2, unsigned int *a3, int a4)
{
  v7 = a2;
  v13 = objc_msgSend_buffer(v7, v8, v9, v10, v11, v12);
  v14 = v13;
  v20 = objc_msgSend_bytes(v14, v15, v16, v17, v18, v19);
  v21 = v13;
  v27 = objc_msgSend_bytes(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_length(v13, v28, v29, v30, v31, v32);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_2559C65B0(&v49, v20, v27 + v33, v27 + v33 - v20);
  v34 = v49;
  if (v50 == v49)
  {
    v35 = &unk_27F7DA3D8;
  }

  else
  {
    v35 = v49;
  }

  v36 = sub_2559C664C(a1, v35, v50 - v49);
  if (v34)
  {
    operator delete(v34);
  }

  sub_2559A7BAC(a1);
  *(a1 + 70) = 1;
  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = *(a1 + 40);
  sub_2559C66C8(a1, v36);
  if (a3 && *a3)
  {
    v40 = sub_2559A85F0(a1, *a3);
    sub_2559A8738(a1, 6, v40);
  }

  v41 = sub_2559A7D18(a1, v37 - v38 + v39);
  sub_2559A7FB4(a1, v41, "KPV2", a4);
  v42 = objc_alloc(MEMORY[0x277CBEA90]);
  v43 = sub_2559A80B8(a1);
  v47 = objc_msgSend_initWithBytes_length_(v42, v44, v43, (*(a1 + 32) - *(a1 + 48) + *(a1 + 40)), v45, v46);

  return v47;
}

void sub_2559C6400(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_2559C6434(void *a1, void *a2, void *a3, uint64_t a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCACA8];
  v16 = sub_2559B19E4(a4, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_stringWithFormat_(v10, v17, @"Failed to write %@ using format: %@ to stream %@", v18, v19, v20, v7, v16, v8, v29);
  v30[0] = v21;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v30, &v29, 1, v23);
  v27 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v25, @"com.apple.koa.profile", 4, v24, v26);
  if (a1 && v27)
  {
    v27 = v27;
    *a1 = v27;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2559C65B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2559ADF60();
  }
}

void sub_2559C6630(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2559C664C(uint64_t *a1, const void *a2, unint64_t a3)
{
  sub_2559AD6E4(a1, a3, 1uLL);
  if (a3)
  {
    sub_2559A8418(a1, a3);
    v6 = (a1[6] - a3);
    a1[6] = v6;
    memcpy(v6, a2, a3);
  }

  return sub_2559AD750(a1, a3);
}

_DWORD *sub_2559C66C8(_DWORD *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_2559A85F0(result, a2);

    return sub_2559A8738(v2, 4, v3);
  }

  return result;
}

void sub_2559C6974(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_2559C6B78(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_2559C710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_2559A811C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2559C9D60()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_28106B3A8;
  v7 = off_28106B3A8;
  if (!off_28106B3A8)
  {
    v1 = sub_2559C9EB4();
    v5[3] = dlsym(v1, "AFDeviceSupportsSiriUOD");
    off_28106B3A8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void *sub_2559C9E64(uint64_t a1)
{
  v2 = sub_2559C9EB4();
  result = dlsym(v2, "AFOfflineDictationCapable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27F7DA3F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2559C9EB4()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28106B3B0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = sub_2559C9FC4;
    v4[4] = &unk_2798041B0;
    v4[5] = v4;
    v5 = xmmword_279804198;
    v6 = 0;
    qword_28106B3B0 = _sl_dlopen();
    v1 = v4[0];
    v0 = qword_28106B3B0;
    if (qword_28106B3B0)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = qword_28106B3B0;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_2559C9FC4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28106B3B0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2559CA038(uint64_t a1)
{
  v2 = sub_2559C9EB4();
  result = dlsym(v2, "AFDeviceSupportsSiriUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28106B3A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2559CA18C(uint64_t a1)
{
  v2 = sub_2559C9EB4();
  result = dlsym(v2, "AFDeviceSupportsSiriMUX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27F7DA3E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2559CA2F0(uint64_t a1)
{
  v2 = sub_2559C9EB4();
  result = dlsym(v2, "AFShouldRunAsrOnServerForUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27F7DA3E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_2559CA340(void *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v7 = v1;
  if (!v1)
  {
    v24 = 0;
    goto LABEL_22;
  }

  v8 = objc_msgSend_domain(v1, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_code(v7, v9, v10, v11, v12, v13);
  if (objc_msgSend_isEqual_(v8, v15, *MEMORY[0x277CF0DE8], v16, v17, v18))
  {
    v23 = 3;
  }

  else
  {
    if (objc_msgSend_isEqual_(v8, v19, *MEMORY[0x277CF94A0], v20, v21, v22))
    {
      v29 = v14 == 1;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v23 = 2;
    }

    else
    {
      if (!objc_msgSend_isEqual_(v8, v25, *MEMORY[0x277CF9490], v26, v27, v28))
      {
        goto LABEL_15;
      }

      v23 = 1;
      if (v14 == 2 || v14 == 4)
      {
        goto LABEL_21;
      }

      if (v14 != 7)
      {
LABEL_15:
        isEqual = objc_msgSend_isEqual_(v8, v30, *MEMORY[0x277CF9488], v31, v32, v33);
        if ((v14 - 1) >= 0xB)
        {
          v35 = 0;
        }

        else
        {
          v35 = (v14 + 6);
        }

        if (isEqual)
        {
          v23 = v35;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_21;
      }

      v23 = 6;
    }
  }

LABEL_21:
  v45 = *MEMORY[0x277CCA7E8];
  v46[0] = v7;
  v36 = MEMORY[0x277CBEAC0];
  v37 = v7;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v36, v38, v46, &v45, 1, v39);
  v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v41, @"com.apple.koa.donate", v23, v40, v42);

LABEL_22:
  v43 = *MEMORY[0x277D85DE8];

  return v24;
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