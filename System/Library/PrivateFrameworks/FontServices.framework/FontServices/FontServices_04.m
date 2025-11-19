uint64_t sub_24BC00560(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  LODWORD(v13) = 0;
  v7 = a2 - a1;
  HIDWORD(v13) = a2 - a1;
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(v13, &v13);
  if (v13 >= 0)
  {
    v8 = HIDWORD(v13);
  }

  else
  {
    v8 = -HIDWORD(v13);
  }

  v12 = v8;
  if (dword_28151C1F4)
  {
    sub_24BBFDC88(v7, &v12, qword_28151C1E8, dword_28151C1F4, *(qword_28151C028 + 764));
  }

  LODWORD(v13) = 0;
  HIDWORD(v13) = a1 + (v7 >> 1);
  *a4 = HIDWORD(v13);
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD50(v13);
  v9 = v12;
  v10 = sub_24BBFF8CC(dword_28151C020, dword_28151C024, v12, SHIDWORD(v13));
  HIDWORD(v13) = v10;
  if (!off_28151BD58)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD58(v13, &v13);
  *a3 = HIDWORD(v13);
  return sub_24BBFFBB8(v7 >> 1, v8, v9, 1);
}

uint64_t sub_24BC006C0(unsigned int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  sub_24BBFF324(a1, a2, 1, a2 - a1);
  *a4 = 0;
  *a3 = 0;
  return 0;
}

uint64_t sub_24BC006FC(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = dword_28151C1F8;
  v9 = sub_24BBFF54C(a1, a2, 1, a5);
  if (v8 == 3)
  {
    if (!v9 || !sub_24BBFF324(a1, a2, 1, a2 - a1))
    {
      return 0;
    }

    sub_24BBFBF60(a1, a2, 1);
    v9 = sub_24BBFF54C(a1, a2, 1, a5);
  }

  if (v9)
  {
    sub_24BBEDB70(257, 0);
  }

  return 0;
}

uint64_t sub_24BC0079C(unsigned int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  sub_24BBFF324(a1, a2, 0, a2 - a1);
  *a4 = 0;
  *a3 = 0;
  return 0;
}

uint64_t sub_24BC007D8(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = dword_28151C1F8;
  v9 = sub_24BBFF54C(a1, a2, 0, a5);
  if (v8 == 3)
  {
    if (!v9 || !sub_24BBFF324(a1, a2, 0, a2 - a1))
    {
      return 0;
    }

    sub_24BBFBF60(a1, a2, 0);
    v9 = sub_24BBFF54C(a1, a2, 0, a5);
  }

  if (v9)
  {
    sub_24BBEDB70(257, 0);
  }

  return 0;
}

uint64_t sub_24BC00878(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 28);
  v3 = *(result + 32);
  v4 = a2[7];
  v5 = a2[8];
  if (v2 <= v4)
  {
    v6 = a2[7];
  }

  else
  {
    v6 = *(result + 28);
  }

  if (v3 >= v5)
  {
    v7 = a2[8];
  }

  else
  {
    v7 = *(result + 32);
  }

  v8 = v7 - v6;
  if (v8 >= 1)
  {
    v9 = v3 - v2;
    v10 = v5 - v4;
    if (v9 >= v10)
    {
      v9 = v10;
    }

    if (v9 <= 2 * v8)
    {
      v12 = result;
      v13 = *(result + 20);
      v14 = a2[6];
      v15 = v13 - v14;
      if (v13 <= v14)
      {
        sub_24BBEDB70(-1, 0);
      }

      result = sub_24BBFE09C();
      if (result)
      {
        *(result + 8) = v15;
        *(result + 16) = v12;
        *(result + 24) = a2;
        *result = qword_27F078550;
        qword_27F078550 = result;
      }

      else
      {
        byte_27F078474 = 1;
      }
    }
  }

  return result;
}

uint64_t sub_24BC00960(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (((a4 / a3 - 1) & 0x8000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4 / a3 - 1;
  while (1)
  {
    v9 = v7 + v8;
    v10 = *a1;
    v11 = a1[1] + ((v9 >> 1) * a3) + 10;
    v15 = 0;
    if ((*(v10 + 16))(a1, a2, v11, &v15))
    {
      break;
    }

    if (v15 <= a2)
    {
      v12 = v8;
    }

    else
    {
      v12 = (v9 >> 1) - 1;
    }

    v8 = v12;
    if (v15 <= a2)
    {
      v13 = (v9 >> 1) + 1;
    }

    else
    {
      v13 = v7;
    }

    v7 = v13;
    if (v13 > v12)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_24BC00A40(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*v2)
  {
    return 0;
  }

  v5 = __rev16(*v2);
  v6 = bswap32(v2[2]);
  v7 = HIWORD(v6);
  if (v2[4])
  {
    v8 = 0;
    v9 = 0;
    v10 = __rev16(v2[4]);
    v11 = v2 + v7 + 10;
    while (1)
    {
      v13 = 0;
      if ((*(*a1 + 16))(a1, a2, v11, &v13))
      {
        break;
      }

      if (!v9 && v13 > a2)
      {
        return sub_24BC00960(a1, a2, v5, v7);
      }

      v11 += v5;
      v9 = (v8 + v5) << 16;
      v8 = (v8 + v5);
      if (v8 >= v10)
      {
        return 0;
      }
    }

    return v11;
  }

  return sub_24BC00960(a1, a2, v5, HIWORD(v6));
}

void *sub_24BC00B80(void *a1)
{
  *a1 = &unk_285F8B648;
  sub_24BBE28C0((a1 + 4));
  return a1;
}

void sub_24BC00BC4(void *a1)
{
  *a1 = &unk_285F8B648;
  sub_24BBE28C0((a1 + 4));

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BC00C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = a5;
  *a1 = &unk_285F8B648;
  *(a1 + 8) = 0;
  sub_24BC05310(a1 + 16, a2, a3, a4, a5);
  sub_24BBE2A94(a1 + 32, a2, a3, *(a1 + 24), (*(a1 + 16) - *(a1 + 24)));
  v15 = *(a1 + 72);
  v16 = *(a1 + 20);
  if (v16 > 3)
  {
    switch(v16)
    {
      case 4u:
        v29 = &unk_285F8B760;
        v30 = v15;
        v20 = sub_24BC00A40(&v29, a6);
        if (v20)
        {
          v21 = bswap32(*(v20 + 4));
          LODWORD(v22) = v21 & 0xFFFFFF;
          if (a8)
          {
            v22 = v22;
          }

          else
          {
            v22 = v21;
          }

          if (v21 < 0)
          {
            v23 = a8;
          }

          else
          {
            v23 = 0;
          }

          if (v22 <= 9 || v22 >= *(a1 + 16) - v11)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            sub_24BBE0934(exception, 5);
            __cxa_throw(exception, &unk_285F89D90, nullsub_8);
          }

          v18 = v15 + v22 - 2;
          if ((v23 & 1) == 0)
          {
            v18 += (a6 - (bswap32(*(v20 + 2)) >> 16)) * a7;
          }

          goto LABEL_27;
        }

        return a1;
      case 6u:
        v29 = &unk_285F8B7A0;
        v30 = v15;
        v24 = sub_24BC00A40(&v29, a6);
        if (v24)
        {
          v18 = v24 + 2;
          goto LABEL_27;
        }

        return a1;
      case 8u:
        v17 = bswap32(*v15) >> 16;
        if (v17 <= a6 && v17 + (bswap32(v15[1]) >> 16) > a6)
        {
          v18 = v15 + (a6 - v17) * a7 + 4;
LABEL_27:
          *(a1 + 8) = v18;
          return a1;
        }

        return a1;
    }

LABEL_30:
    v28 = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(v28, 5);
    __cxa_throw(v28, &unk_285F89D90, nullsub_8);
  }

  if (!*(a1 + 20))
  {
    v25 = a6 * a7;
    if (v25 < *(a1 + 16) - *(a1 + 24))
    {
      v18 = v15 + v25;
      goto LABEL_27;
    }

    return a1;
  }

  if (v16 != 2)
  {
    goto LABEL_30;
  }

  v29 = &unk_285F8B760;
  v30 = v15;
  v19 = sub_24BC00A40(&v29, a6);
  if (v19)
  {
    v18 = v19 + 4;
    goto LABEL_27;
  }

  return a1;
}

uint64_t sub_24BC00EEC(uint64_t a1, _WORD *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11)
{
  v40 = *a2 < *((*(*a1 + 408))(a1) + 16);
  *a6 = 0;
  *a4 = 0;
  *a11 = 2097152001;
  *a10 = 2097152001;
  *a9 = 2097152001;
  *a8 = 2097152001;
  *a7 = 2097152001;
  v41 = a3;
  *a5 = 2097152001;
  *a3 = 2097152001;
  v18 = (*(*a1 + 408))(a1);
  v19 = *a2;
  if (*(v18 + 80) <= v19 && *(v18 + 82) >= v19)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v24 = (*(*a1 + 280))(a1);
    sub_24BC00C28(&v43, v24, 1095519576, 0x10000, 12, *a2, 10, 1);
    v25 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      *a2 -= bswap32(**(&v43 + 1)) >> 16;
      *a3 = bswap32(v25[1]) & 0xFFFF0000;
      *a4 = bswap32(v25[2]) & 0xFFFF0000;
      *a5 = bswap32(v25[3]) & 0xFFFF0000;
      *a6 = bswap32(v25[4]) & 0xFFFF0000;
      v22 = *a3 < 2097152000;
      v21 = *a5 < 2097152000;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *&v43 = &unk_285F8B648;
    sub_24BBE28C0(&v45);
    v23 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = v40;
  }

  v26 = (*(*a1 + 408))(a1);
  v27 = *a2;
  if (*(v26 + 84) <= v27 && *(v26 + 86) >= v27)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v29 = (*(*a1 + 280))(a1);
    sub_24BC00C28(&v43, v29, 1380930625, 0x10000, 12, *a2, 6, 0);
    v30 = *(&v43 + 1);
    v28 = *(&v43 + 1) != 0;
    if (*(&v43 + 1))
    {
      *a2 -= bswap32(**(&v43 + 1)) >> 16;
      *a10 = bswap32(*(v30 + 2)) & 0xFFFF0000;
      *a9 = bswap32(*(v30 + 4)) & 0xFFFF0000;
    }

    *&v43 = &unk_285F8B648;
    sub_24BBE28C0(&v45);
  }

  else
  {
    v28 = 0;
    if ((v23 & 1) == 0)
    {
      *a2 = 0;
    }
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v31 = (*(*a1 + 280))(a1);
  sub_24BC00C28(&v43, v31, 1447447896, 0x20000, 24, *a2, 6, 1);
  v32 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v33 = a11;
    *a11 = bswap32(**(&v43 + 1)) & 0xFFFF0000;
    *a7 = bswap32(*(v32 + 2)) & 0xFFFF0000;
    *a8 = bswap32(*(v32 + 4)) & 0xFFFF0000;
    *&v43 = &unk_285F8B648;
    v34 = &v45;
  }

  else
  {
    *&v43 = &unk_285F8B648;
    sub_24BBE28C0(&v45);
    *&v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v35 = (*(*a1 + 280))(a1);
    sub_24BBE2A94(&v43, v35, 1447447896, 18, 6);
    v36 = *(&v45 + 1);
    v33 = a11;
    *a11 = bswap32(**(&v45 + 1)) & 0xFFFF0000;
    *a7 = bswap32(*(v36 + 2)) & 0xFFFF0000;
    *a8 = bswap32(*(v36 + 4)) & 0xFFFF0000;
    v34 = &v43;
  }

  result = sub_24BBE28C0(v34);
  if (v28)
  {
    if (v22)
    {
      return result;
    }

    v38 = -*v33;
    v39 = v41;
  }

  else
  {
    if (v21)
    {
      return result;
    }

    v38 = *v33;
    v39 = a5;
  }

  *v39 = v38;
  return result;
}

uint64_t sub_24BC014DC(uint64_t a1, uint64_t a2, _WORD *a3, char a4)
{
  *a1 = &unk_285F8B668;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *a3;
  v8 = (a1 + 20);
  *(a1 + 22) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  pthread_mutex_lock(&stru_27F078360);
  *(a1 + 96) = qword_27F078558;
  qword_27F078558 = a1;
  (*(*a2 + 368))(a2, v8, a1 + 40, a1 + 32, a1 + 44, a1 + 36, a1 + 48, a1 + 52, a1 + 56, a1 + 60, a1 + 64);
  v9 = *(a1 + 56) < 2097152000;
  *(a1 + 22) = v9;
  if ((a4 & 1) == 0)
  {
    if (v9 || (v10 = *(a1 + 40), v10 > 2097151999))
    {
      *(a1 + 23) = 0;
    }

    else
    {
      v11 = *(a1 + 32);
      *(a1 + 23) = v11 < 2097152000;
      if (v11 <= 2097151999)
      {
        *(a1 + 24) = v10;
        *(a1 + 28) = v11;
      }
    }
  }

  v12 = (*(*a2 + 352))(a2, *v8);
  *(a1 + 88) = v12;
  if (v12 < 0 || v12 >= *((*(*a2 + 408))(a2) + 18))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v13 = *v8;
  if (*a3 != v13)
  {
    *a3 = v13;
  }

  return a1;
}

void sub_24BC01798()
{
  __cxa_free_exception(v0);
  __cxa_end_catch();
  JUMPOUT(0x24BC017B0);
}

void *sub_24BC017BC(void *a1)
{
  *a1 = &unk_285F8B668;
  v2 = a1[1];
  if (v2)
  {
    j__free(v2);
  }

  qword_27F078558 = a1[12];
  pthread_mutex_unlock(&stru_27F078360);
  return a1;
}

void sub_24BC01828(void *a1)
{
  sub_24BC017BC(a1);

  JUMPOUT(0x24C252120);
}

void *sub_24BC01860(void *a1)
{
  *a1 = &unk_285F8B688;
  v2 = a1[3];
  if (v2)
  {
    j__free(v2);
  }

  return sub_24BBEE618(a1);
}

void sub_24BC018C4(void *a1)
{
  v1 = sub_24BC01860(a1);

  j__free(v1);
}

void *sub_24BC018EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_24BBEE5F8(a1);
  *v12 = &unk_285F8B688;
  v12[3] = 0;
  v13 = v12 + 3;
  v14 = *((*(*a2 + 408))(a2) + 18);
  if (v14 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v15 = (*(*a2 + 72))(a2, a3, a4, a5, a6, v13);
  a1[1] = v15;
  v16 = a1[3];
  a1[2] = *v16;
  a1[4] = v15 + 984 * v14;
  a1[5] = &v16[v14];
  return a1;
}

void sub_24BC01A34(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_24BBEE618(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC01A58(uint64_t a1)
{
  if (!qword_27F078558)
  {
    return *(a1 + 8);
  }

  if (*(qword_27F078558 + 22))
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = *(a1 + 8);
  }

  return v1 + 984 * *(qword_27F078558 + 88);
}

uint64_t sub_24BC01A90(uint64_t a1)
{
  if (!qword_27F078558)
  {
    return *(a1 + 24);
  }

  if (*(qword_27F078558 + 22))
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = *(a1 + 24);
  }

  return v1 + 8 * *(qword_27F078558 + 88);
}

char *sub_24BC01AC4(uint64_t a1, uint64_t a2, __int128 *a3, int32x2_t *a4, int a5, uint64_t *a6)
{
  v10 = *((*(*a1 + 408))(a1) + 18);
  v11 = (v10 << (*((*(*a1 + 408))(a1) + 84) != -1));
  v29 = 0;
  v28 = sub_24BBD2070(*a6, v11, &v29);
  v20 = a6;
  v21 = sub_24BBD0F68(984 * v11, 0);
  v25 = *a3;
  v26 = a3[1];
  v27 = v21;
  v12 = (*(*a1 + 408))(a1);
  if (v11 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(v12 + 56);
    v16 = 8 * v11;
    v17 = v21;
    do
    {
      if (8 * v10 == v14)
      {
        v18 = *a3;
        *&v25 = vneg_s32(*(a3 + 8));
        *(&v25 + 1) = v18;
        v26 = vrev64_s32(a3[1]);
      }

      v24 = sub_24BBD20B4(a1, (v15 + 488 * (v13 % v10) + 36), a2, &v25, a4, a5, (v29 + v14));
      memcpy(v17, v24, 0x3D8uLL);
      sub_24BBEC42C(&v24);
      v14 += 8;
      v17 += 984;
      ++v13;
    }

    while (v16 != v14);
  }

  v27 = 0;
  v28 = 0;
  if (!*v20)
  {
    *v20 = v29;
  }

  sub_24BBF33B8(&v27);
  sub_24BBF33B8(&v28);
  return v21;
}

void sub_24BC01CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void *);
  sub_24BBF33B8(va);
  sub_24BBF33B8(va1);
  _Unwind_Resume(a1);
}

void *sub_24BC01CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24BBD1894(0x30u);
  sub_24BC018EC(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_24BC01D78(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = qword_27F078558;
  if (*(qword_27F078558 + 23) != 1)
  {
    return 0;
  }

  v6 = *(qword_27F078558 + 24);
  a3[2] = *(qword_27F078558 + 28);
  *a3 -= v6;
  v8 = 0;
  sub_24BBD71E0(a2, v6, &v8);
  a3[7] = v8;
  sub_24BBD71E0(a2, *(v3 + 28), &v8);
  result = v8;
  a3[5] -= v8;
  return result;
}

uint64_t sub_24BC01E14(void **a1, uint64_t a2, _WORD *a3)
{
  v6 = (*(*a1[6] + 168))(a1[6]);
  if (v6 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    goto LABEL_9;
  }

  v12 = 0;
  v8 = ((*a1)[43])(a1, a2, &v12 + 4, &v12);
  if (v8 >= *(((*a1)[51])(a1) + 18))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
LABEL_9:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(qword_27F078558 + 88) = v8;
  v9 = HIDWORD(v12);
  *a3 = v12;
  return ((*a1)[45])(a1, v8, v9);
}

uint64_t sub_24BC01FEC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v7 = *(a2 + 2);
  v8 = *(a2 + 2);
  if (atomic_load((a2 + 16)))
  {
    v10 = atomic_load((a2 + 16));
    v11 = (v10 + v8 * a3);
    v12 = sub_24BBE2D50(v11, *(a2 + 2));
    v13 = sub_24BBE2D50(&v11[v7], v8);
    v14 = *(a2 + 24);
    if (v14 <= v12 || v14 < v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 5);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    *a4 = v13 - v12;
  }

  else
  {
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    v17 = (*(*a1 + 280))(a1);
    v18 = (*(*a1 + 176))(a1);
    v19 = (*(*a1 + 408))(a1);
    sub_24BBE2A94(v26, v17, v18, (*(v19 + 20) + v7 * a3 + *(a2 + 8)), (2 * v7));
    v20 = v26[0];
    v21 = *(&v27 + 1);
    v12 = sub_24BBE2D50(*(&v27 + 1), v7);
    v22 = sub_24BBE2D50((v21 + v8), v7);
    if (v12 >= v20 || v22 > v20)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(v25, 5);
      __cxa_throw(v25, &unk_285F89D90, nullsub_8);
    }

    *a4 = v22 - v12;
    sub_24BBE28C0(v26);
  }

  return v12;
}

void sub_24BC02214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_24BBE28C0(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BC02248(uint64_t a1, uint64_t a2, void **a3, _DWORD *a4, uint64_t a5)
{
  v10 = *((*(*a1 + 408))(a1) + 56) + 488 * a2;
  if (*(v10 + 2) < 0)
  {
    return 0;
  }

  v11 = *(a5 + 56);
  LODWORD(__size) = 0;
  v12 = (*(*a1 + 384))(a1, v10, v11, &__size);
  v13 = *(v10 + 92);
  v14 = *a3;
  if (*a3)
  {
    v15 = __size;
    if (*a4 >= __size)
    {
LABEL_7:
      (*(*a1 + 376))(a1, v12, __size, v14, v13, a2);
      return v14;
    }

    *a4 = __size;
    v16 = sub_24BBE2E50(v14, v15);
    v14 = v16;
    if (v16)
    {
      *a3 = v16;
      goto LABEL_7;
    }
  }

  else
  {
    *a4 = __size;
    v14 = (*(*qword_28151C040 + 24))(qword_28151C040);
    *a3 = v14;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  return v14;
}

uint64_t sub_24BC02404(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v16 = 0;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v10 = (*(*a1 + 280))(a1);
  v11 = (*(*a1 + 176))(a1);
  v12 = (*(*a1 + 408))(a1);
  sub_24BBE2A94(v14, v10, v11, (*(v12 + 20) + a2), a3);
  sub_24BBD770C(a4, *(&v15 + 1), a3, a5);
  return sub_24BBE28C0(v14);
}

void *sub_24BC02548(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    return sub_24BBF4044(a1, a2, a3);
  }

  else
  {
    v5 = qword_27F078558;
    result = sub_24BC02248(a1, *(qword_27F078558 + 88), (qword_27F078558 + 8), (qword_27F078558 + 16), a3);
    if (result)
    {
      *(a3 + 70) = *(v5 + 16);
    }
  }

  return result;
}

uint64_t sub_24BC025BC(uint64_t a1, uint64_t *a2, _WORD *a3, void *a4)
{
  v6 = qword_27F078558;
  if (!qword_27F078558)
  {
    *a3 = 0;
LABEL_5:
    result = 0;
    *a2 = 0;
    return result;
  }

  v9 = *((*(*a1 + 408))(a1) + 56) + 488 * *(v6 + 88);
  *a3 = *(v9 + 2);
  if (atomic_load((v9 + 16)))
  {
    v11 = atomic_load((v9 + 16));
    *a2 = v11;
    *a4 = v11 + *(v9 + 24);
    return *a2;
  }

  if (!*(v9 + 4))
  {
    goto LABEL_5;
  }

  v16 = 0;
  v15 = 0;
  v13 = (*(*a1 + 408))(a1);
  v14 = (*(*v13 + 24))(v13, *(v6 + 20), &v16 + 2, &v16, &v15);
  *a2 = v14;
  *a4 = v14 + v15;
  result = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_24BC02770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8, int *a9, int *a10, int *a11)
{
  v11 = qword_27F078558;
  v12 = a5;
  v13 = a5 * a7 * 0.0000152587891;
  v14 = 0.5;
  if (v13 < 0.0)
  {
    v14 = -0.5;
  }

  v15 = v13 + v14;
  if (v15 >= 2147483650.0)
  {
    v16 = 0x7FFFFFFF;
  }

  else if (v15 > -2147483650.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x80000000;
  }

  a9[1] = *(a6 + 4);
  a10[1] = *(a6 + 12);
  if (*(v11 + 22) == 1)
  {
    v17 = v12 * -*(v11 + 56) * 0.0000152587891;
    v18 = 0.5;
    if (v17 >= 0.0)
    {
      v19 = 0.5;
    }

    else
    {
      v19 = -0.5;
    }

    v20 = v17 + v19;
    if (v20 > -2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x80000000;
    }

    if (v20 >= 2147483650.0)
    {
      v21 = 0x7FFFFFFF;
    }

    *a8 = v21;
    v22 = *(v11 + 44);
    if (v22 >= 2097152000)
    {
      v23 = 0;
      v24 = -v16;
      goto LABEL_51;
    }

    v39 = v12 * v22 * 0.0000152587891;
    if (v39 < 0.0)
    {
      v18 = -0.5;
    }

    v40 = v39 + v18;
    v37 = v40;
    if (v40 <= -2147483650.0)
    {
      v37 = 0x80000000;
    }

    v38 = v40 < 2147483650.0;
    v23 = 0;
  }

  else
  {
    v25 = v12 * *(v11 + 52) * 0.0000152587891;
    v26 = 0.5;
    if (v25 >= 0.0)
    {
      v27 = 0.5;
    }

    else
    {
      v27 = -0.5;
    }

    v28 = v25 + v27;
    if (v28 > -2147483650.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0x80000000;
    }

    if (v28 < 2147483650.0)
    {
      v23 = v29;
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    v30 = *(v11 + 44);
    v31 = v12 * *(v11 + 48) * 0.0000152587891;
    if (v31 >= 0.0)
    {
      v32 = 0.5;
    }

    else
    {
      v32 = -0.5;
    }

    v33 = v31 + v32;
    if (v33 > -2147483650.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0x80000000;
    }

    if (v33 < 2147483650.0)
    {
      v21 = v34;
    }

    else
    {
      v21 = 0x7FFFFFFF;
    }

    *a8 = v21;
    v35 = v12 * v30 * 0.0000152587891;
    if (v35 < 0.0)
    {
      v26 = -0.5;
    }

    v36 = v35 + v26;
    if (v36 > -2147483650.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x80000000;
    }

    v38 = v36 < 2147483650.0;
  }

  if (v38)
  {
    v24 = v37;
  }

  else
  {
    v24 = 0x7FFFFFFF;
  }

LABEL_51:
  *a11 = v21;
  *a10 = v21;
  *a9 = v21;
  v41 = v12 * *(v11 + 36) * 0.0000152587891;
  v42 = 0.5;
  if (v41 < 0.0)
  {
    v42 = -0.5;
  }

  v43 = v41 + v42;
  if (v43 >= 2147483650.0)
  {
    v44 = 0x7FFFFFFF;
  }

  else if (v43 <= -2147483650.0)
  {
    v44 = 0x80000000;
  }

  else
  {
    v44 = v43;
  }

  v45 = v23 + v44;
  a8[1] = v45;
  a11[1] = v45 + v24;
}

int32x2_t sub_24BC02A10(uint64_t a1, int32x2_t *a2)
{
  *&result = sub_24BBF4DC0(a1, a2);
  if (*(qword_27F078558 + 22) == 1)
  {
    v4 = *a2;
    *a2 = vneg_s32(a2[1]);
    a2[1] = v4;
    result = vrev64_s32(a2[2]);
    a2[2] = result;
  }

  return result;
}

double sub_24BC02A60(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v11 = 0uLL;
  v10 = 0;
  v9 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_24BBF4DD4(a1, a2, a3, a4, &v8, &v7, &v6, &v10 + 1, &v10, &v11, &v9);
  v4 = qword_27F078558;
  *(qword_27F078558 + 68) = HIDWORD(v10);
  result = *v11.i64;
  *(v4 + 72) = v11;
  return result;
}

uint64_t sub_24BC02ACC(uint64_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  if (*(qword_27F078558 + 60) <= 2097151999)
  {
    v13 = *(qword_27F078558 + 60);
  }

  else
  {
    v13 = 24903680;
  }

  v14 = *(qword_27F078558 + 64) + *(qword_27F078558 + 52) + *(qword_27F078558 + 32);
  v15 = a3;
  v16 = a3 * (-*(qword_27F078558 + 48) - v13) * 0.0000152587891;
  if (v16 >= 0.0)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = -0.5;
  }

  v18 = v16 + v17;
  if (v18 > -2147483650.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x80000000;
  }

  if (v18 < 2147483650.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = *a4;
  v22 = a4[2];
  v41 = v20;
  v42 = v22;
  v43 = v20;
  v44 = v21;
  v23 = v15 * v14 * 0.0000152587891;
  if (v23 >= 0.0)
  {
    v24 = 0.5;
  }

  else
  {
    v24 = -0.5;
  }

  v25 = v23 + v24;
  if (v25 > -2147483650.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x80000000;
  }

  if (v25 < 2147483650.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x7FFFFFFF;
  }

  v47 = v20;
  v45 = v20;
  v46 = v27;
  v28 = v15 * *(qword_27F078558 + 40) * 0.0000152587891;
  if (v28 >= 0.0)
  {
    v29 = 0.5;
  }

  else
  {
    v29 = -0.5;
  }

  v30 = v28 + v29;
  if (v30 >= 2147483650.0)
  {
    v31 = 0x7FFFFFFF;
  }

  else if (v30 <= -2147483650.0)
  {
    v31 = 0x80000000;
  }

  else
  {
    v31 = v30;
  }

  v40 = v31 + v27;
  (*(*a2 + 16))(a2, &v46, &v46);
  (*(*a2 + 16))(a2, &v40, &v40);
  (*(*a2 + 16))(a2, &v44, &v44);
  result = (*(*a2 + 16))(a2, &v42, &v42);
  v33 = v46;
  v34 = v47;
  v35 = v40;
  v36 = v41;
  v37 = v47 - v41;
  *a5 = v40 - v46;
  a5[1] = v37;
  v38 = v34 - v45;
  *a6 = v44 - v33;
  a6[1] = v38;
  v39 = v36 - v43;
  *a7 = v42 - v35;
  a7[1] = v39;
  *a8 = -v33;
  a8[1] = v34;
  return result;
}

void *sub_24BC02D50(uint64_t a1, uint64_t a2, unsigned __int16 a3, _DWORD *a4)
{
  v25 = a3;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = sub_24BBD6C14(a2);
  sub_24BC014DC(&v19, a1, &v25, v7);
  v8 = (*(*a2 + 64))(a2);
  v18 = 0;
  v9 = (*(*a1 + 200))(a1, v8, &v25, &v18);
  v17 = v9;
  if (BYTE6(v20) == 1 && !sub_24BBD6C14(a2))
  {
    if ((*(*a2 + 40))(a2))
    {
      v16 = 0uLL;
      sub_24BBF4758(v15, a1, a2, v9, v18);
      v10 = sub_24BBF4B0C(v15, &v16);
      v11 = (*(*v8 + 16))(v8);
      v12 = qword_27F078558;
      *(qword_27F078558 + 68) = *v11;
      *(v12 + 72) = *v10;
      v13 = sub_24BBF47BC(v15);
    }

    else
    {
      sub_24BC02A60(a1, a2, v9, v18);
    }

    sub_24BC02ACC(v13, a2, SDWORD1(v23[0]), v23 + 2, a4, a4 + 2, a4 + 4, v15);
  }

  else
  {
    sub_24BBE0E20(a1, a2, v25, v9, v18, a4);
  }

  sub_24BBEC42C(&v17);
  return sub_24BC017BC(&v19);
}

void sub_24BC02F54(_Unwind_Exception *a1)
{
  sub_24BBEC42C((v1 - 176));
  sub_24BC017BC((v1 - 160));
  _Unwind_Resume(a1);
}

void *sub_24BC02F94(void **a1, uint64_t a2, unsigned int a3, int32x2_t *a4)
{
  v29 = a3;
  v8 = (*(*a1[6] + 168))(a1[6]);
  if (v8 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = sub_24BBD6C14(a2);
  sub_24BC014DC(&v23, a1, &v29, v10);
  v11 = (*(*a2 + 64))(a2);
  v22 = 0;
  v12 = ((*a1)[25])(a1, v11, &v29, &v22);
  v21 = v12;
  sub_24BBD77F0(a1, a2, v29, v12, v22, a4);
  if (BYTE6(v24) == 1 && (sub_24BBD6C14(a2) & 1) == 0)
  {
    if ((*(*a2 + 40))(a2))
    {
      v20 = 0uLL;
      sub_24BBF4758(v19, a1, a2, v12, v22);
      v13 = sub_24BBF4B0C(v19, &v20);
      v14 = (*(*v11 + 16))(v11);
      v15 = qword_27F078558;
      *(qword_27F078558 + 68) = *v14;
      *(v15 + 72) = *v13;
      v16 = sub_24BBF47BC(v19);
    }

    else
    {
      sub_24BC02A60(a1, a2, v12, v22);
    }

    v19[0].i64[0] = 0;
    sub_24BC02ACC(v16, a2, SDWORD1(v27[0]), v27 + 2, a4, &a4[2] + 1, &a4[3] + 1, v19);
    a4[1] = vadd_s32(a4[1], *v19[0].i8);
  }

  sub_24BBEC42C(&v21);
  return sub_24BC017BC(&v23);
}

void sub_24BC0321C(_Unwind_Exception *a1)
{
  sub_24BBEC42C((v1 - 176));
  sub_24BC017BC((v1 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_24BC0326C(uint64_t result, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  *result = &unk_285F8B6B8;
  if (*a2 <= a3 << 16)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = *a2 / a3;
  }

  v6 = a2[1];
  if (v6 > a3 << 16 && v6 / a3 > v5)
  {
    v5 = v6 / a3;
  }

  v7 = v5 * a4;
  if (v5 <= 0x10000)
  {
    v7 = a4 << 16;
  }

  if (v7 >= 0x80000)
  {
    v8 = -2147381249;
    if (v7 >> 17 > 0x18)
    {
      v9 = (v7 - 3276800);
    }

    else
    {
      v9 = (v7 - 0x80000);
    }

    v10 = v9 * 25565281.0 * 9.31322575e-10 + 0.5;
    if (v10 < 2147483650.0)
    {
      if (v10 <= -2147483650.0)
      {
        v8 = -2147381248;
      }

      else
      {
        v8 = v10 + 102400;
      }
    }
  }

  else
  {
    v8 = 36864;
  }

  *(result + 32) = v8;
  *(result + 40) = a5;
  *(result + 8) = result + 8;
  return result;
}

void sub_24BC033A4(uint64_t a1)
{
  sub_24BBF52C0(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BC033DC(uint64_t a1)
{
  sub_24BBF52C0(a1 - 352);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BC03444(uint64_t a1)
{
  nullsub_1(a1 + 424);

  return sub_24BBF52C0(a1);
}

uint64_t sub_24BC03480(uint64_t a1)
{
  v1 = a1 - 352;
  nullsub_1(a1 + 72);

  return sub_24BBF52C0(v1);
}

uint64_t sub_24BC034BC(uint64_t a1)
{
  v1 = a1 - 424;
  nullsub_1(a1);

  return sub_24BBF52C0(v1);
}

void sub_24BC034F4(uint64_t a1)
{
  nullsub_1(a1 + 424);
  sub_24BBF52C0(a1);

  JUMPOUT(0x24C252120);
}

BOOL sub_24BC03554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 1;
  }

  v5 = 0;
  (*(*a2 + 48))(a2, &v5);
  return v5 < v2 << 16 && SHIDWORD(v5) < v2 << 16;
}

void *sub_24BC035D0(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  v51 = a3;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v11 = sub_24BBD6C14(a2);
  sub_24BC014DC(v49, a1, &v51, v11);
  v12 = (*(*a2 + 64))(a2);
  v13 = (*(*v12 + 16))(v12);
  if (!*(a1 + 56) || (*(*(a1 + 48) + 176) & 8) != 0)
  {
    sub_24BBE1C40(a1, a2, v51, a4, a5, a6);
  }

  else
  {
    v14 = v13;
    v48 = 0;
    v47 = 0;
    v47 = (*(*a1 + 200))(a1, v12, &v51, &v48);
    if ((*(*a2 + 40))(a2))
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
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
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      sub_24BC05490(&v19, a1, a2, *(a1 + 56), v47, v48, a5, a4);
      sub_24BBE1F5C(&v19, v14, 0);
      *a6 = sub_24BBF4B60(&v19);
      if (v20 == 19)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, v20);
        __cxa_throw(exception, &unk_285F89D90, nullsub_8);
      }

      nullsub_1(v45 + 8);
    }

    else
    {
      *&v45[0] = 0;
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
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      sub_24BC05388(&v19, a1, a2, *(a1 + 56), v47, v48, a5, a4);
      v15 = sub_24BBD7F18(a2);
      sub_24BBE1F5C(&v19, v14, v15);
      *a6 = sub_24BBF4B60(&v19);
      if (v20 == 19)
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v18, v20);
        __cxa_throw(v18, &unk_285F89D90, nullsub_8);
      }
    }

    sub_24BBF52C0(&v19);
    sub_24BBEC42C(&v47);
  }

  return sub_24BC017BC(v49);
}

void sub_24BC03900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_24BBF52C0(&a9);
  sub_24BBEC42C((v10 - 192));
  sub_24BC017BC((v10 - 176));
  _Unwind_Resume(a1);
}

void sub_24BC03984(void *a1)
{
  sub_24BBF5540(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BC039BC(uint64_t a1)
{
  sub_24BBF5540((a1 - 376));

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BC03A24(void *a1)
{
  nullsub_1(a1 + 56);

  return sub_24BBF5540(a1);
}

uint64_t sub_24BC03A60(uint64_t a1)
{
  v1 = (a1 - 376);
  nullsub_1(a1 + 72);

  return sub_24BBF5540(v1);
}

uint64_t sub_24BC03A9C(uint64_t a1)
{
  v1 = (a1 - 448);
  nullsub_1(a1);

  return sub_24BBF5540(v1);
}

void sub_24BC03AD4(void *a1)
{
  nullsub_1(a1 + 56);
  sub_24BBF5540(a1);

  JUMPOUT(0x24C252120);
}

void *sub_24BC03B34(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  v51 = a3;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v11 = sub_24BBD6C14(a2);
  sub_24BC014DC(v49, a1, &v51, v11);
  if (!*(a1 + 56) || (*(*(a1 + 48) + 176) & 8) != 0)
  {
    sub_24BBF60D4(a1, a2, v51, a4, a5, a6);
  }

  else
  {
    v12 = (*(*a2 + 64))(a2);
    v48 = 0;
    v47 = 0;
    v47 = (*(*a1 + 200))(a1, v12, &v51, &v48);
    v13 = (*(*v12 + 16))(v12);
    if ((*(*a2 + 40))(a2))
    {
      memset(v46, 0, sizeof(v46));
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      sub_24BC0563C(&v18, a1, a2, *(a1 + 56), v47, v48, a5, a4);
      sub_24BBD800C(&v18, v13, 0);
      *a6 = sub_24BBF57C4(&v18);
      if (v19 == 19)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, v19);
        __cxa_throw(exception, &unk_285F89D90, nullsub_8);
      }

      nullsub_1(v46);
    }

    else
    {
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      sub_24BC05534(&v18, a1, a2, *(a1 + 56), v47, v48, a5, a4);
      v14 = sub_24BBD7F18(a2);
      sub_24BBD800C(&v18, v13, v14);
      *a6 = sub_24BBF57C4(&v18);
      if (v19 == 19)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v17, v19);
        __cxa_throw(v17, &unk_285F89D90, nullsub_8);
      }
    }

    sub_24BBF5540(&v18);
    sub_24BBEC42C(&v47);
  }

  return sub_24BC017BC(v49);
}

void sub_24BC03E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_24BBF5540(&a9);
  sub_24BBEC42C((v10 - 192));
  sub_24BC017BC((v10 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_24BC03EDC(void *a1)
{
  *a1 = &unk_285F8B6E0;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return nullsub_1(a1);
}

void sub_24BC03F5C(void *a1)
{
  v1 = sub_24BC03EDC(a1);

  j__free(v1);
}

uint64_t sub_24BC03F84(uint64_t a1, uint64_t a2, int *a3)
{
  v16 = 0;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, &v16);
  v6 = HIDWORD(v16);
  v7 = *(a1 + 44);
  v8 = v16 * *(a1 + 40) * 0.0000152587891;
  v9 = 0.5;
  if (v8 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v8 + v10;
  if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  *a3 = v12;
  v13 = v6 * v7 * 0.0000152587891;
  if (v13 < 0.0)
  {
    v9 = -0.5;
  }

  v14 = v13 + v9;
  if (v14 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v14 <= -2147483650.0)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = v14;
  }

  a3[1] = v15;
  return result;
}

uint64_t sub_24BC04098(uint64_t a1, uint64_t a2, int *a3)
{
  v16 = 0;
  result = (*(**(a1 + 16) + 24))(*(a1 + 16), a2, &v16);
  v6 = HIDWORD(v16);
  v7 = *(a1 + 44);
  v8 = v16 * *(a1 + 40) * 0.0000152587891;
  v9 = 0.5;
  if (v8 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v8 + v10;
  if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  *a3 = v12;
  v13 = v6 * v7 * 0.0000152587891;
  if (v13 < 0.0)
  {
    v9 = -0.5;
  }

  v14 = v13 + v9;
  if (v14 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v14 <= -2147483650.0)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = v14;
  }

  a3[1] = v15;
  return result;
}

uint64_t sub_24BC04224(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(a1 + 32);
  }

  else
  {
    return (*(**(a1 + 16) + 64))();
  }
}

uint64_t sub_24BC0425C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = 65536.0 / v2 * 65536.0;
  v4 = 0.5;
  if (v3 < 0.0)
  {
    v4 = -0.5;
  }

  v5 = v3 + v4;
  if (v5 < 2147483650.0)
  {
    if (v5 <= -2147483650.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
LABEL_7:
    v6 = 0x7FFFFFFF;
  }

  v7 = v6;
  v8 = v6 * *a2 * 0.0000152587891;
  v9 = 0.5;
  if (v8 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v8 + v10;
  if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  *a2 = v12;
  v13 = v7 * *(a2 + 8) * 0.0000152587891;
  if (v13 >= 0.0)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = -0.5;
  }

  v15 = v13 + v14;
  if (v15 > -2147483650.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x80000000;
  }

  if (v15 < 2147483650.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  *(a2 + 8) = v17;
  *(a2 + 18) = (v6 * *(a2 + 18) + 0xFFFF) >> 16;
  v18 = v7 * *(a2 + 20) * 0.0000152587891;
  if (v18 >= 0.0)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = -0.5;
  }

  v20 = v18 + v19;
  if (v20 > -2147483650.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x80000000;
  }

  if (v20 < 2147483650.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  *(a2 + 20) = v22;
  v23 = v7 * *(a2 + 28) * 0.0000152587891;
  if (v23 >= 0.0)
  {
    v24 = 0.5;
  }

  else
  {
    v24 = -0.5;
  }

  v25 = v23 + v24;
  if (v25 > -2147483650.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x80000000;
  }

  if (v25 < 2147483650.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x7FFFFFFF;
  }

  *(a2 + 28) = v27;
  v28 = *(result + 44);
  if (v28 && ((v29 = 65536.0 / v28 * 65536.0, v29 >= 0.0) ? (v30 = 0.5) : (v30 = -0.5), v31 = v29 + v30, v31 < 2147483650.0))
  {
    if (v31 <= -2147483650.0)
    {
      v32 = 0x80000000;
    }

    else
    {
      v32 = v31;
    }
  }

  else
  {
    v32 = 0x7FFFFFFF;
  }

  v33 = v32;
  v34 = v32 * *(a2 + 4) * 0.0000152587891;
  if (v34 >= 0.0)
  {
    v35 = 0.5;
  }

  else
  {
    v35 = -0.5;
  }

  v36 = v34 + v35;
  if (v36 > -2147483650.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0x80000000;
  }

  if (v36 < 2147483650.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0x7FFFFFFF;
  }

  *(a2 + 4) = v38;
  v39 = v33 * *(a2 + 12) * 0.0000152587891;
  if (v39 >= 0.0)
  {
    v40 = 0.5;
  }

  else
  {
    v40 = -0.5;
  }

  v41 = v39 + v40;
  if (v41 > -2147483650.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0x80000000;
  }

  if (v41 < 2147483650.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0x7FFFFFFF;
  }

  *(a2 + 12) = v43;
  v44 = (v32 * *(a2 + 16) + 0xFFFF) >> 16;
  v45 = *(a2 + 24);
  *(a2 + 16) = v44;
  v46 = v33 * v45 * 0.0000152587891;
  if (v46 >= 0.0)
  {
    v47 = 0.5;
  }

  else
  {
    v47 = -0.5;
  }

  v48 = v46 + v47;
  if (v48 > -2147483650.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0x80000000;
  }

  if (v48 < 2147483650.0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0x7FFFFFFF;
  }

  *(a2 + 24) = v50;
  v51 = v33 * *(a2 + 32) * 0.0000152587891;
  if (v51 < 0.0)
  {
    v9 = -0.5;
  }

  v52 = v51 + v9;
  if (v52 >= 2147483650.0)
  {
    v53 = 0x7FFFFFFF;
  }

  else if (v52 <= -2147483650.0)
  {
    v53 = 0x80000000;
  }

  else
  {
    v53 = v52;
  }

  *(a2 + 32) = v53;
  return result;
}

uint64_t sub_24BC045B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v10 = (*(*a1 + 64))(a1);
  if (*((*(*v10 + 16))(v10) + 824) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 13);
    goto LABEL_34;
  }

  v11 = *(a2 + 16);
  v12 = *(a2 + 18);
  result = sub_24BC0425C(a1, a2);
  v14 = *(a2 + 16);
  v15 = *(a2 + 18);
  v16 = v15 > 0x10;
  v17 = ((v15 + 31) >> 3) & 0x3FFC;
  v18 = (v15 + 7) >> 3;
  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 * v14;
  *a5 = v19 * v14;
  if (!a3 || v20 > a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 19);
LABEL_34:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (v20)
  {
    v21 = ((v12 + 31) >> 3) & 0x3FFC;
    if (v12 <= 0x10)
    {
      v21 = (v12 + 7) >> 3;
    }

    if (v14)
    {
      v22 = 0;
      v23 = (a4 + v20);
      v24 = a4 + v21 * (v11 - 1);
      v25 = -v21;
      do
      {
        while (1)
        {
          --v14;
          if (!v22 || v11 > (a1[11] * v14 + 0x8000) >> 16)
          {
            break;
          }

          v23 -= v19;
          v34 = v14;
          result = memcpy(v23, v22, v19);
          v14 = v34;
          if (!v34)
          {
            return result;
          }
        }

        --v23;
        if (v19)
        {
          v26 = 1;
          v27 = 8 * v19 - 1;
          do
          {
            v28 = (a1[10] * v27 + 0x8000);
            if (v12 > WORD1(v28) && (*(v24 + (v28 >> 19)) & ((0x80000000 >> (BYTE2(v28) & 7)) >> 24)) != 0)
            {
              v29 = *v23 | v26;
            }

            else
            {
              v29 = *v23 & ~v26;
            }

            *v23 = v29;
            v30 = 2 * v26;
            v31 = v27 - 1;
            if (v27)
            {
              v26 = 1;
            }

            v32 = (v27 & 7) == 0;
            v33 = (v27 & 7) == 0 && v27 != 0;
            if (!v32)
            {
              v26 = v30;
            }

            v23 -= v33;
            v27 = v31;
          }

          while (v31 != -1);
        }

        v24 += v25;
        --v11;
        v22 = v23;
      }

      while (v14);
    }
  }

  return result;
}

void *sub_24BC0483C(__int16 *a1, uint64_t a2, unsigned __int16 a3, int32x2_t *a4)
{
  v25 = a3;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = sub_24BBD6C14(a2);
  sub_24BC014DC(&v19, a1, &v25, v7);
  v8 = (*(*a2 + 64))(a2);
  v9 = (*(*v8 + 16))(v8);
  v18 = 0;
  v10 = (*(*a1 + 200))(a1, v8, &v25, &v18);
  v17 = v10;
  if (sub_24BC03554(a1, a2))
  {
    sub_24BBF7404(a1, a2, v25, v10, v18, a4);
  }

  else
  {
    memset(v15, 0, 48);
    sub_24BC056E0(v15, a1, a2, a1[28]);
    sub_24BBF7404(a1, v15, v25, v10, v18, a4);
    sub_24BC0425C(v15, a4);
    sub_24BC03EDC(v15);
  }

  if (BYTE6(v20) == 1 && (sub_24BBD6C14(a2) & 1) == 0)
  {
    if ((*(*a2 + 40))(a2))
    {
      v16 = 0uLL;
      sub_24BBF4758(v15, a1, a2, v10, v18);
      v11 = sub_24BBF4B0C(v15, &v16);
      v12 = qword_27F078558;
      *(qword_27F078558 + 68) = *v9;
      *(v12 + 72) = *v11;
      v13 = sub_24BBF47BC(v15);
    }

    else
    {
      sub_24BC02A60(a1, a2, v10, v18);
    }

    v15[0].i64[0] = 0;
    sub_24BC02ACC(v13, a2, SDWORD1(v23[0]), v23 + 2, a4, &a4[2] + 1, &a4[3] + 1, v15);
    a4[1] = vadd_s32(a4[1], *v15[0].i8);
  }

  sub_24BBF72E4(v9[206], a4);
  sub_24BBEC42C(&v17);
  return sub_24BC017BC(&v19);
}

void sub_24BC04ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BBF47BC(&a9);
  sub_24BBEC42C((v9 - 176));
  sub_24BC017BC((v9 - 160));
  _Unwind_Resume(a1);
}

void *sub_24BC04B14(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, _WORD *a5, unsigned int *a6)
{
  v18 = a3;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v11 = sub_24BBD6C14(a2);
  sub_24BC014DC(v16, a1, &v18, v11);
  if (sub_24BC03554(a1, a2))
  {
    sub_24BBF7AA8(a1, a2, v18, a4, a5, a6);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    memset(v13, 0, sizeof(v13));
    sub_24BC056E0(v13, a1, a2, *(a1 + 56));
    sub_24BBF7D98(a1, v13, v18, v14, a4, a5, a6);
    sub_24BC045B8(v13, v14, a4, a5, a6);
    sub_24BC03EDC(v13);
  }

  return sub_24BC017BC(v16);
}

void sub_24BC04C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_24BC03EDC(&a9);
  sub_24BC017BC(&a21);
  _Unwind_Resume(a1);
}

void *sub_24BC04CE4(__int16 *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, unsigned int a5, _WORD *a6, unsigned int *a7)
{
  v38 = a3;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = sub_24BBD6C14(a2);
  sub_24BC014DC(&v32, a1, &v38, v13);
  v14 = (*(*a2 + 64))(a2);
  v15 = (*(*v14 + 16))(v14);
  v31 = 0;
  v30 = 0;
  v16 = (*(*a1 + 200))(a1, v14, &v38, &v31);
  v30 = v16;
  if (sub_24BC03554(a1, a2))
  {
    sub_24BBF7EDC(a1, a2, v15, v38, v16, v31, a4, a5, a6, a7);
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  sub_24BC056E0(&v24, a1, a2, a1[28]);
  v17 = v26;
  if (!v26)
  {
    v17 = (*(*v25 + 64))(v25);
  }

  v18 = (*(*v17 + 16))(v17);
  sub_24BBF7EDC(a1, &v24, v18, v38, v16, v31, &v27, a5, a6, a7);
  sub_24BC045B8(&v24, &v27, a5, a6, a7);
  if (a4)
  {
    v19 = v28;
    *a4 = v27;
    *(a4 + 16) = v19;
    *(a4 + 32) = v29;
  }

  sub_24BC03EDC(&v24);
  if (a4)
  {
LABEL_9:
    if (BYTE6(v33) == 1 && (sub_24BBD6C14(a2) & 1) == 0)
    {
      if ((*(*a2 + 40))(a2))
      {
        v27 = 0uLL;
        sub_24BBF4758(&v24, a1, a2, v16, v31);
        v20 = sub_24BBF4B0C(&v24, &v27);
        v21 = qword_27F078558;
        *(qword_27F078558 + 68) = *v15;
        *(v21 + 72) = *v20;
        v22 = sub_24BBF47BC(&v24);
      }

      else
      {
        sub_24BC02A60(a1, a2, v16, v31);
      }

      v24.i64[0] = 0;
      sub_24BC02ACC(v22, a2, SDWORD1(v36[0]), v36 + 2, a4, (a4 + 20), (a4 + 28), &v24);
      *(a4 + 8) = vadd_s32(*(a4 + 8), *v24.i8);
    }

    sub_24BBF72E4(v15[206], a4);
  }

LABEL_16:
  sub_24BBEC42C(&v30);
  return sub_24BC017BC(&v32);
}

void sub_24BC05020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BBF47BC(va);
  sub_24BBEC42C((v3 - 208));
  sub_24BC017BC((v3 - 192));
  _Unwind_Resume(a1);
}

void *sub_24BC05104(void *a1, uint64_t a2)
{
  *sub_24BBE06EC(a1) = &unk_285F8B738;
  v4 = (*(*a2 + 280))(a2);
  a1[1] = v4;
  sub_24BBF2BA4(a1 + 2, v4, 1447447896);
  return a1;
}

uint64_t sub_24BC051A8(void *a1)
{
  *a1 = &unk_285F8B738;
  sub_24BBE28C0((a1 + 2));

  return nullsub_1(a1);
}

void sub_24BC051FC(void *a1)
{
  *a1 = &unk_285F8B738;
  sub_24BBE28C0((a1 + 2));
  v2 = nullsub_1(a1);

  sub_24BBD7160(v2);
}

char *sub_24BC05254(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = 6;
  if (*v1 == 512)
  {
    v2 = 8;
  }

  return v1 + v2;
}

void *sub_24BC05274(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x48u);
  sub_24BC05104(v2, a1);
  return v2;
}

BOOL sub_24BC052C0(uint64_t a1, unsigned int a2, unsigned __int16 *a3, _WORD *a4)
{
  v4 = bswap32(*a3) >> 16;
  *a4 = v4;
  return v4 >= a2 && a2 >= bswap32(a3[1]) >> 16;
}

BOOL sub_24BC052F4(uint64_t a1, int a2, unsigned __int16 *a3, _WORD *a4)
{
  v4 = bswap32(*a3) >> 16;
  *a4 = v4;
  return v4 == a2;
}

uint64_t sub_24BC05310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_24BBE24E0(v8, a2, a3, a4, a5, 2);
  *a1 = v8[0];
  *(a1 + 4) = bswap32(**(&v9 + 1)) >> 16;
  *(a1 + 8) = v5 + 2;
  sub_24BBE28C0(v8);
  return a1;
}

void *sub_24BC05388(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, uint64_t a7, int a8)
{
  v11 = sub_24BBF5260(a1, a2, a5, a6, a7, a8);
  *v11 = &unk_285F8B838;
  v12 = (v11 + 44);
  v11[44] = &unk_285F8B8A8;
  v15 = (*(*a3 + 48))(a3, v11 + 52);
  v13 = sub_24BBF86B8(a3);
  sub_24BC0326C(v12, &v15, a4, v13, a1[39]);
  *a1 = &unk_285F8B838;
  a1[44] = &unk_285F8B8A8;
  return a1;
}

void *sub_24BC05490(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, uint64_t a7, int a8)
{
  v10 = sub_24BC05388(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_24BBF4540((v10 + 53), a3);
  *a1 = &unk_285F8B908;
  a1[44] = &unk_285F8B978;
  a1[53] = &unk_285F8B9A0;
  return a1;
}

void *sub_24BC05534(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, uint64_t a7, unsigned int a8)
{
  v11 = sub_24BBF5484(a1, a2, a5, a6, a7, a8);
  *v11 = &unk_285F8BA00;
  v12 = (v11 + 47);
  v11[47] = &unk_285F8BA78;
  v15 = (*(*a3 + 48))(a3, v11 + 55);
  v13 = sub_24BBF86B8(a3);
  sub_24BC0326C(v12, &v15, a4, v13, a1[39]);
  *a1 = &unk_285F8BA00;
  a1[47] = &unk_285F8BA78;
  return a1;
}

void *sub_24BC0563C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, uint64_t a7, unsigned int a8)
{
  v10 = sub_24BC05534(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_24BBF4540((v10 + 56), a3);
  *a1 = &unk_285F8BAD8;
  a1[47] = &unk_285F8BB50;
  a1[56] = &unk_285F8BB78;
  return a1;
}

uint64_t sub_24BC056E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_24BBF8690(a1, a3);
  *v9 = &unk_285F8B6E0;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4 << 16;
  *(v9 + 32) = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  (*(*a3 + 56))(a3, &v43, v8);
  v42 = 0;
  (*(*a3 + 48))(a3, &v42);
  v10 = *(a1 + 24);
  if (v10 >= v42)
  {
    *(a1 + 40) = 0x10000;
  }

  else
  {
    if (v42)
    {
      v11 = v10 / v42 * 65536.0;
      v12 = 0.5;
      if (v11 < 0.0)
      {
        v12 = -0.5;
      }

      v13 = v11 + v12;
      if (v13 >= 2147483650.0)
      {
        v14 = 0x7FFFFFFF;
      }

      else if (v13 <= -2147483650.0)
      {
        v14 = 0x80000000;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = (v10 >> 31) ^ 0x7FFFFFFF;
    }

    *(a1 + 40) = v14;
    v15 = v14;
    v16 = v14 * v43 * 0.0000152587891;
    if (v16 >= 0.0)
    {
      v17 = 0.5;
    }

    else
    {
      v17 = -0.5;
    }

    v18 = v16 + v17;
    if (v18 > -2147483650.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x80000000;
    }

    if (v18 >= 2147483650.0)
    {
      v19 = 0x7FFFFFFF;
    }

    LODWORD(v43) = v19;
    v20 = v15 * SHIDWORD(v43) * 0.0000152587891;
    if (v20 >= 0.0)
    {
      v21 = 0.5;
    }

    else
    {
      v21 = -0.5;
    }

    v22 = v20 + v21;
    if (v22 >= 2147483650.0)
    {
      v23 = 0x7FFFFFFF;
    }

    else if (v22 <= -2147483650.0)
    {
      v23 = 0x80000000;
    }

    else
    {
      v23 = v22;
    }

    HIDWORD(v43) = v23;
  }

  if (v10 >= SHIDWORD(v42))
  {
    *(a1 + 44) = 0x10000;
  }

  else
  {
    if (HIDWORD(v42))
    {
      v24 = v10 / SHIDWORD(v42) * 65536.0;
      v25 = 0.5;
      if (v24 < 0.0)
      {
        v25 = -0.5;
      }

      v26 = v24 + v25;
      if (v26 >= 2147483650.0)
      {
        v27 = 0x7FFFFFFF;
      }

      else if (v26 <= -2147483650.0)
      {
        v27 = 0x80000000;
      }

      else
      {
        v27 = v26;
      }
    }

    else
    {
      v27 = (v10 >> 31) ^ 0x7FFFFFFF;
    }

    v28 = HIDWORD(v44);
    v29 = v44;
    *(a1 + 44) = v27;
    v30 = v27 * v29 * 0.0000152587891;
    if (v30 >= 0.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = -0.5;
    }

    v32 = v30 + v31;
    if (v32 > -2147483650.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0x80000000;
    }

    if (v32 >= 2147483650.0)
    {
      v33 = 0x7FFFFFFF;
    }

    LODWORD(v44) = v33;
    v34 = v27 * v28 * 0.0000152587891;
    if (v34 >= 0.0)
    {
      v35 = 0.5;
    }

    else
    {
      v35 = -0.5;
    }

    v36 = v34 + v35;
    if (v36 >= 2147483650.0)
    {
      v37 = 0x7FFFFFFF;
    }

    else if (v36 <= -2147483650.0)
    {
      v37 = 0x80000000;
    }

    else
    {
      v37 = v36;
    }

    HIDWORD(v44) = v37;
  }

  if (((*(*a3 + 40))(a3) & 1) == 0)
  {
    v38 = (*(*a3 + 64))(a3);
    v39 = (*(*v38 + 16))(v38);
    v41 = *(v39 + 760);
    *(a1 + 32) = (*(*a2 + 80))(a2, v39 + 648, &v43, &v41, *(v39 + 824));
  }

  return a1;
}

void sub_24BC05BE4()
{
  if (__cxa_guard_acquire(&qword_27F0784D8))
  {
    dword_27F0784E0 = 1954115633;
    unk_27F0784E4 = "Type1OFA2Scaler";
    unk_27F0784EC = xmmword_24BC06B50;
    unk_27F0784FC = "OTTO1TDPCTDP0CDPNFWL1pytType1OFA2Scaler";
    dword_27F078504 = 1;
    qword_27F078508 = &unk_24BC06B88;
    dword_27F078510 = 2;
    unk_27F078514 = &unk_24BC06B8C;
    dword_27F07851C = 6;
    qword_27F078520 = &unk_24BC06B94;
    unk_27F078528 = off_285F8BBF8;

    __cxa_guard_release(&qword_27F0784D8);
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}