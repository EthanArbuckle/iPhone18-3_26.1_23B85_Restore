uint64_t sub_19D356F24(uint64_t a1, int a2, uint64_t a3, float a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B90F8;
  *(a1 + 44) = a2;
  *(a1 + 48) = a4;
  *(a1 + 56) = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a1 + 120) = *(a3 + 64);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 168) = 0u;
  v8 = (a1 + 168);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  sub_19D42933C(a1 + 216);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 41) = 0;
  v9 = dword_1EB0131E8;
  v10 = dword_1EB0131E8;
  v11 = *(a1 + 168);
  v12 = (*(a1 + 176) - v11) >> 3;
  if (dword_1EB0131E8 <= v12)
  {
    if (dword_1EB0131E8 < v12)
    {
      *(a1 + 176) = v11 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0(v8, dword_1EB0131E8 - v12);
    v9 = dword_1EB0131E8;
    v10 = dword_1EB0131E8;
  }

  v13 = *(a1 + 192);
  v14 = (*(a1 + 200) - v13) >> 3;
  if (v10 <= v14)
  {
    if (v10 < v14)
    {
      *(a1 + 200) = v13 + 8 * v10;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 192), v10 - v14);
    v9 = dword_1EB0131E8;
  }

  *(a1 + 160) = *(a1 + 101);
  if (v9 >= 1)
  {
    operator new[]();
  }

  (*(*a1 + 200))(a1);
  return a1;
}

void sub_19D357194(_Unwind_Exception *exception_object)
{
  v5 = v1[24];
  if (v5)
  {
    v1[25] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      *v1 = v2;
      v7 = v1[1];
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[22] = v6;
  operator delete(v6);
  *v1 = v2;
  v7 = v1[1];
  if (!v7)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_19D357274(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 72);
  v7 = (*a2 + v6);
  if (v7 <= *a2 + *(a2 + 8) - 4)
  {
    v8 = *v7;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 44) != v8)
  {
    sub_19D41C548(3);
  }

  v9 = *a3;
  v10 = *(a1 + 161);
  v11 = sub_19D41C518();
  sub_19D3090B4((a1 + 128), a2, v9, v10, v11, *(a1 + 44));
  v12 = *a3;
  v13 = *(a1 + 161);
  v14 = sub_19D41C518();
  sub_19D3090B4((a1 + 136), a2, v12, v13, v14, *(a1 + 44));
  v15 = *a3;
  v16 = *(a1 + 161);
  v17 = sub_19D41C518();
  sub_19D3090B4((a1 + 144), a2, v15, v16, v17, *(a1 + 44));
  v18 = *a3;
  v19 = *(a1 + 161);
  v20 = sub_19D41C518();
  v21 = *(a1 + 44);

  return sub_19D3090B4((a1 + 152), a2, v18, v19, v20, v21);
}

uint64_t sub_19D3573AC(uint64_t a1, FILE *__stream, int *a3, uint64_t a4, unsigned int a5)
{
  sub_19D41C9E8(__stream, a3, *(a1 + 44));
  v9 = sub_19D41C518();
  sub_19D3204D0(a1 + 128, __stream, a3, 3, v9, a5);
  v10 = sub_19D41C518();
  sub_19D3204D0(a1 + 136, __stream, a3, 3, v10, a5);
  v11 = sub_19D41C518();
  sub_19D3204D0(a1 + 144, __stream, a3, 3, v11, a5);
  v12 = sub_19D41C518();

  return sub_19D3204D0(a1 + 152, __stream, a3, 3, v12, a5);
}

void sub_19D357578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D357594(void *a1)
{
  v2 = a1[36];
  v3 = a1[37];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[36];
        v3 = a1[37];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[37] = v2;
  a1[22] = a1[21];
  a1[25] = a1[24];
}

int *sub_19D35762C(int *result, void *a2, uint64_t a3, int a4)
{
  v4 = a4 & 0xFFFFFF;
  if ((a4 & 0xFFFFFF) != 0)
  {
    v6 = result;
    for (i = 0; i != v4; ++i)
    {
      memmove(*(*(v6 + 21) + 8 * i), *(*a2 + 8 * i), 4 * v6[11]);
      v9 = v6[11];
      v10 = *(*(v6 + 21) + 8 * i);
      if (v9 >= 1)
      {
        v8.i32[0] = v6[12];
        v11 = *(v6 + 16);
        v12 = *(v6 + 17);
        v13 = *(v6 + 18);
        v14 = *(v6 + 19);
        if (v9 >= 8)
        {
          v15 = 0;
          v30 = (v10 + 4 * v9);
          v32 = v10 < &v12->f32[v9] && v12 < v30;
          v34 = v10 < &v13->f32[v9] && v13 < v30;
          v36 = v10 < &v14->f32[v9] && v14 < v30;
          if ((v11 >= v30 || v10 >= &v11->f32[v9]) && !v32 && !v34 && !v36)
          {
            v15 = v9 & 0x7FFFFFF8;
            v38 = v11 + 1;
            v39 = v10 + 1;
            v40 = vdupq_lane_s32(v8, 0);
            v41 = v12 + 1;
            v42 = v14 + 1;
            v43 = v13 + 1;
            v44 = v15;
            do
            {
              v45 = vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(v39[-1], v38[-1]), v43[-1]), vsqrtq_f32(vaddq_f32(v41[-1], v40))), v42[-1]);
              v46 = vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(*v39, *v38), *v43), vsqrtq_f32(vaddq_f32(*v41, v40))), *v42);
              v38 += 2;
              v39[-1] = v45;
              *v39 = v46;
              v39 += 2;
              v41 += 2;
              v42 += 2;
              v43 += 2;
              v44 -= 8;
            }

            while (v44);
            if (v15 == v9)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9 - v15;
        v17 = v15;
        v18 = &v10->f32[v15];
        v19 = &v14->f32[v17];
        v20 = &v13->f32[v17];
        v21 = &v12->f32[v17];
        v22 = &v11->f32[v17];
        do
        {
          v23 = *v22++;
          v24 = v23;
          v25 = *v21++;
          v26 = sqrtf(v25 + *v8.i32);
          v27 = *v20++;
          v28 = v27;
          v29 = *v19++;
          *v18 = (((*v18 - v24) * v28) / v26) + v29;
          ++v18;
          --v16;
        }

        while (v16);
      }

LABEL_3:
      result = memmove(*(*(v6 + 24) + 8 * i), v10, 4 * v9);
    }
  }

  return result;
}

void *sub_19D357810(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9270, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  a1[18] = result[18];
  a1[19] = result[19];
  a1[16] = result[16];
  a1[17] = result[17];
  return result;
}

void sub_19D3578D0(void *a1)
{
  v1 = sub_19D3578F8(a1);

  operator delete(v1);
}

void *sub_19D3578F8(void *a1)
{
  *a1 = &unk_1F10B90F8;
  v4 = a1 + 36;
  v2 = a1[36];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        operator delete[](v2[v5]);
        v2 = a1[36];
        v3 = a1[37];
      }

      ++v5;
    }

    while (v5 < v3 - v2);
  }

  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  sub_19D429384((a1 + 27));
  v6 = a1[24];
  if (v6)
  {
    a1[25] = v6;
    operator delete(v6);
  }

  v7 = a1[21];
  if (v7)
  {
    a1[22] = v7;
    operator delete(v7);
  }

  *a1 = &unk_1F10B68F8;
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_19D3579D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 80) = 0u;
  v8 = (a1 + 80);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *a1 = &unk_1F10B9298;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = a4;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 41) = 0;
  *(a1 + 529) = a6;
  *(a1 + 332) = xmmword_19D475330;
  *(a1 + 328) = a5;
  *(a1 + 528) = 0;
  if (v8 != a2)
  {
    sub_19D324128(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  *(a1 + 224) = a3;
  v30 = 16;
  strcpy(__p, "From constructor");
  sub_19D3211E4(a1);
  *(a1 + 264) = *(a1 + 256);
  *(a1 + 240) = *(a1 + 232);
  *(a1 + 360) = *(a1 + 352);
  *__p = 0;
  v9 = *(a1 + 80);
  if (*(a1 + 88) != v9)
  {
    v10 = 0;
    do
    {
      v28 = (*(**(v9 + 8 * v10) + 272))(*(v9 + 8 * v10));
      sub_19D2C7CE4(a1 + 256, &v28);
      v11 = *__p;
      if (*__p >= 1)
      {
        sub_19D2C7CE4(a1 + 352, __p);
        v11 = *__p;
      }

      *__p = v11 + 1;
      v10 = v11 + 1;
      v9 = *(a1 + 80);
    }

    while (v10 < (*(a1 + 88) - v9) >> 3);
  }

  v12 = dword_1EB0131E8;
  v13 = *(a1 + 376);
  v14 = (*(a1 + 384) - v13) >> 2;
  if (dword_1EB0131E8 <= v14)
  {
    if (dword_1EB0131E8 < v14)
    {
      *(a1 + 384) = v13 + 4 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 376, dword_1EB0131E8 - v14);
    v12 = dword_1EB0131E8;
  }

  v15 = *(a1 + 400);
  v16 = (*(a1 + 408) - v15) >> 2;
  if (v12 <= v16)
  {
    if (v12 < v16)
    {
      *(a1 + 408) = v15 + 4 * v12;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 400, v12 - v16);
    v12 = dword_1EB0131E8;
  }

  v17 = *(a1 + 424);
  v18 = (*(a1 + 432) - v17) >> 2;
  if (v12 <= v18)
  {
    if (v12 < v18)
    {
      *(a1 + 432) = v17 + 4 * v12;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 424, v12 - v18);
  }

  v19 = (*(a1 + 88) - *(a1 + 80)) >> 3;
  v20 = *(a1 + 544);
  v21 = *(a1 + 536);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      v23 = v21 + 24 * v19;
      if (v20 != v23)
      {
        v24 = *(a1 + 544);
        do
        {
          v26 = *(v24 - 24);
          v24 -= 24;
          v25 = v26;
          if (v26)
          {
            *(v20 - 16) = v25;
            operator delete(v25);
          }

          v20 = v24;
        }

        while (v24 != v23);
      }

      *(a1 + 544) = v23;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 536, v19 - v22);
  }

  return a1;
}

void sub_19D357CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_19D2B2DD8(v17);
    v21 = *v19;
    if (!*v19)
    {
LABEL_3:
      sub_19D2B2DD8((v16 + 472));
      v22 = *(v16 + 448);
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_19D2B2DD8(v17);
    v21 = *v19;
    if (!*v19)
    {
      goto LABEL_3;
    }
  }

  *(v16 + 512) = v21;
  operator delete(v21);
  sub_19D2B2DD8((v16 + 472));
  v22 = *(v16 + 448);
  if (!v22)
  {
LABEL_4:
    v23 = *(v16 + 424);
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v16 + 456) = v22;
  operator delete(v22);
  v23 = *(v16 + 424);
  if (!v23)
  {
LABEL_5:
    v24 = *(v16 + 400);
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v16 + 432) = v23;
  operator delete(v23);
  v24 = *(v16 + 400);
  if (!v24)
  {
LABEL_6:
    v25 = *(v16 + 376);
    if (!v25)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v16 + 408) = v24;
  operator delete(v24);
  v25 = *(v16 + 376);
  if (!v25)
  {
LABEL_7:
    v26 = *(v16 + 352);
    if (!v26)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v16 + 384) = v25;
  operator delete(v25);
  v26 = *(v16 + 352);
  if (!v26)
  {
LABEL_8:
    v27 = *(v16 + 304);
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v16 + 360) = v26;
  operator delete(v26);
  v27 = *(v16 + 304);
  if (!v27)
  {
LABEL_9:
    v28 = *v18;
    if (!*v18)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v16 + 312) = v27;
  operator delete(v27);
  v28 = *v18;
  if (!*v18)
  {
LABEL_10:
    sub_19D30FE34(v16);
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v16 + 288) = v28;
  operator delete(v28);
  sub_19D30FE34(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19D357E24(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (*(a1 + 88) == v1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    result = (*(**(v1 + 8 * v3) + 56))(*(v1 + 8 * v3));
    if (result)
    {
      break;
    }

    ++v3;
    v1 = *(a1 + 80);
  }

  while (v3 < (*(a1 + 88) - v1) >> 3);
  return result;
}

uint64_t sub_19D357EA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 80);
  if (*(result + 88) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 64))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 80);
    }

    while (v9 < (*(v8 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D357F38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 80);
  if (*(result + 88) != v5)
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = (*(**(v5 + 8 * v11) + 72))(*(v5 + 8 * v11), a2, a3, a4, a5);
      ++v11;
      v5 = *(v10 + 80);
    }

    while (v11 < (*(v10 + 88) - v5) >> 3);
  }

  return result;
}

void *sub_19D357FD8(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v5 = result;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v3 = result;
  }

LABEL_4:
  v6 = *(v4 + 80);
  if (*(v4 + 88) != v6)
  {
    v7 = 0;
    do
    {
      result = (*(**(v6 + 8 * v7) + 80))(*(v6 + 8 * v7), *(*(v5 + 80) + 8 * v7), *(v3[10] + 8 * v7));
      ++v7;
      v6 = *(v4 + 80);
    }

    while (v7 < (*(v4 + 88) - v6) >> 3);
  }

  return result;
}

void *sub_19D358108(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v5 = result;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v3 = result;
  }

LABEL_4:
  v6 = *(v4 + 80);
  if (*(v4 + 88) != v6)
  {
    v7 = 0;
    do
    {
      result = (*(**(v6 + 8 * v7) + 88))(*(v6 + 8 * v7), *(*(v5 + 80) + 8 * v7), *(v3[10] + 8 * v7));
      ++v7;
      v6 = *(v4 + 80);
    }

    while (v7 < (*(v4 + 88) - v6) >> 3);
  }

  return result;
}

void *sub_19D358238(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v3 = result;
    v4 = v2[10];
    if (v2[11] == v4)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = result[10];
    if (result[11] == v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    result = (*(**(v4 + 8 * v5) + 96))(*(v4 + 8 * v5), *(v3[10] + 8 * v5));
    ++v5;
    v4 = v2[10];
  }

  while (v5 < (v2[11] - v4) >> 3);
  return result;
}

void *sub_19D358318(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9418, 0);
    v3 = result;
    v4 = v2[10];
    if (v2[11] == v4)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = result[10];
    if (result[11] == v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    result = (*(**(v4 + 8 * v5) + 104))(*(v4 + 8 * v5), *(v3[10] + 8 * v5));
    ++v5;
    v4 = v2[10];
  }

  while (v5 < (v2[11] - v4) >> 3);
  return result;
}

uint64_t sub_19D3583F8(uint64_t result, float a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 112))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D358478(uint64_t result, float a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 120))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D358508(uint64_t result)
{
  v1 = *(result + 80);
  if (*(result + 88) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 160))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 80);
    }

    while (v3 < (*(v2 + 88) - v1) >> 3);
  }

  return result;
}

void sub_19D358578(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (*(a1 + 88) != v2)
  {
    v3 = 0;
    do
    {
      (*(**(v2 + 8 * v3) + 200))(*(v2 + 8 * v3));
      ++v3;
      v2 = *(a1 + 80);
    }

    while (v3 < (*(a1 + 88) - v2) >> 3);
  }

  strcpy(__p, "From allocAllBuffers");
  sub_19D3211E4(a1);
}

void sub_19D358640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D35865C(void *a1)
{
  v2 = a1[35];
  v3 = a1[36];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*v5)
      {
        operator delete[](*v5);
        *v5 = 0;
        v2 = a1[35];
        v3 = a1[36];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[36] = v2;
  v6 = a1[10];
  if (a1[11] != v6)
  {
    v7 = 0;
    do
    {
      (*(**(v6 + 8 * v7) + 208))(*(v6 + 8 * v7));
      ++v7;
      v6 = a1[10];
    }

    while (v7 < (a1[11] - v6) >> 3);
  }

  a1[14] = a1[13];
  a1[57] = a1[56];
  a1[64] = a1[63];
  v9 = a1[25];
  v8 = a1[26];
  if (v8 != v9)
  {
    v10 = a1[26];
    do
    {
      v12 = *(v10 - 24);
      v10 -= 24;
      v11 = v12;
      if (v12)
      {
        *(v8 - 16) = v11;
        operator delete(v11);
      }

      v8 = v10;
    }

    while (v10 != v9);
  }

  a1[26] = v9;
  v14 = a1[59];
  v13 = a1[60];
  if (v13 != v14)
  {
    v15 = a1[60];
    do
    {
      v17 = *(v15 - 24);
      v15 -= 24;
      v16 = v17;
      if (v17)
      {
        *(v13 - 16) = v16;
        operator delete(v16);
      }

      v13 = v15;
    }

    while (v15 != v14);
  }

  a1[60] = v14;
  a1[39] = a1[38];
}

void sub_19D3587A4(uint64_t a1, void *a2, void *a3, int a4, char a5)
{
  v9 = (*(*a1 + 272))(a1);
  if (a4 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9;
    while ((a5 & 1) != 0)
    {
      if (a3[1] == *a3)
      {
        if (v10 >= 1)
        {
          v20 = 0;
          v27 = 0;
          v28 = 1.1755e-38;
          do
          {
            v29 = *(*(*a2 + 8 * v11) + 4 * v27);
            if (v29 > v28)
            {
              v20 = v27;
            }

            v28 = fmaxf(v29, v28);
            ++v27;
          }

          while (v12 != v27);
          goto LABEL_21;
        }

LABEL_26:
        v20 = 0;
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = 0;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }

      if (v11 >= (a4 - 1))
      {
        v20 = 2;
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = 2;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
LABEL_22:
          v30 = (v23 + 8 * v20 + 4);
          goto LABEL_23;
        }
      }

      else
      {
        v20 = **(*a3 + 24 * v11 + 24);
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = v20;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
          goto LABEL_22;
        }
      }

LABEL_27:
      v34 = v22[6];
      if (v34)
      {
        v35 = v22 + 6;
        do
        {
          if (*(v34 + 28) >= v20)
          {
            v35 = v34;
          }

          v34 = *(v34 + 8 * (*(v34 + 28) < v20));
        }

        while (v34);
        if (v35 != v22 + 6 && *(v35 + 7) <= v20)
        {
          v30 = v35 + 4;
LABEL_23:
          *(*(a1 + 400) + 4 * v11) = *v30 + 1;
          v31 = *(v21 + 4 * v11);
          v32 = v22[13];
          if (v32)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

      *(*(a1 + 400) + 4 * v11) = 0;
      v31 = *(v21 + 4 * v11);
      v32 = v22[13];
      if (v32)
      {
LABEL_24:
        v33 = (v32 + 8 * v31 + 4);
LABEL_25:
        v13 = *v33;
        goto LABEL_4;
      }

LABEL_35:
      v38 = v22[11];
      v36 = v22 + 11;
      v37 = v38;
      if (v38)
      {
        v39 = v36;
        do
        {
          if (*(v37 + 28) >= v31)
          {
            v39 = v37;
          }

          v37 = *(v37 + 8 * (*(v37 + 28) < v31));
        }

        while (v37);
        if (v39 != v36 && *(v39 + 7) <= v31)
        {
          v33 = (v39 + 4);
          goto LABEL_25;
        }
      }

      v13 = -1;
LABEL_4:
      *(*(a1 + 424) + 4 * v11) = v13;
      v14 = **(a1 + 200);
      v15 = (*(***(a1 + 80) + 272))(**(a1 + 80));
      bzero(*(v14 + 8 * v11), 4 * v15);
      v16 = *(a1 + 200);
      v17 = *(*(a1 + 400) + 4 * v11);
      *(*(*v16 + 8 * v11) + 4 * v17 - 4) = 1065353216;
      v18 = v16[3 * v17];
      v19 = (*(**(*(a1 + 80) + 8 * v17) + 272))();
      bzero(*(v18 + 8 * v11), 4 * v19);
      *(*(*(*(a1 + 200) + 24 * *(*(a1 + 400) + 4 * v11)) + 8 * v11) + 4 * *(*(a1 + 424) + 4 * v11)) = 1065353216;
      if (++v11 == a4)
      {
        return;
      }
    }

    if (v10 >= 1)
    {
      v20 = 0;
      v24 = 0;
      v25 = 1.1755e-38;
      do
      {
        v26 = *(*(*a2 + 8 * v11) + 4 * v24);
        if (v26 > v25)
        {
          v20 = v24;
        }

        v25 = fmaxf(v26, v25);
        ++v24;
      }

      while (v12 != v24);
LABEL_21:
      v21 = *(a1 + 376);
      *(v21 + 4 * v11) = v20;
      v22 = *(a1 + 496);
      v23 = v22[8];
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }
}

uint64_t sub_19D358B2C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if ((*(a1 + 88) - v1) < 9)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = 1;
  do
  {
    v3 = (*(**(v1 + 8 * v4) + 272))(*(v1 + 8 * v4)) + v3;
    ++v4;
    v1 = *(a1 + 80);
  }

  while (v4 < (*(a1 + 88) - v1) >> 3);
  return v3;
}

uint64_t sub_19D358BD0(uint64_t result, uint64_t a2)
{
  *(result + 528) = a2;
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 280))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

void sub_19D358C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = 8 * a5;
    v9 = a5;
    do
    {
      v10 = *(a1 + 504);
      v11 = (*(***(a1 + 80) + 264))(**(a1 + 80));
      bzero(*(v10 + v7), 4 * v11);
      v7 += 8;
    }

    while (v8 != v7);
    for (i = 0; i != v9; ++i)
    {
      v13 = *(a1 + 332);
      v14 = *(*(a1 + 80) + 8 * v13);
      (*(*v14 + 248))(v14, *(a1 + 472) + 24 * v13, a3, i, *(*(a1 + 256) + 4 * v13), *(*(a1 + 256) + 4 * v13));
      v15 = *(*(a1 + 80) + 8 * v13);
      v16 = (*(*v15 + 48))(v15);
      v17 = v16[1];
      if (v17 != *v16)
      {
        if (((v17 - *v16) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v18 = *(a1 + 504);
      v19 = *(*(a1 + 80) + 8 * v13);
      v20 = (*(*v19 + 264))(v19);
      v21 = v20 / 8;
      if (v20 >= 8)
      {
        v22 = *(v18 + 8 * i);
        v23 = *(8 * i);
        v24 = v20 / 8;
        do
        {
          v25 = *v23;
          v26 = v23[1];
          v23 += 2;
          v27 = vaddq_f32(v22[1], v26);
          *v22 = vaddq_f32(*v22, v25);
          v22[1] = v27;
          v22 += 2;
          --v24;
        }

        while (v24);
      }

      v28 = 8 * v21;
      if (8 * v21 < v20)
      {
        v29 = *(8 * i);
        v30 = *(v18 + 8 * i);
        v31 = v28;
        if ((v20 - v28) <= 7)
        {
          goto LABEL_19;
        }

        v32 = v30 + 4 * v28;
        v33 = v29 + 4 * v28;
        if (v32 < v29 + 4 * v20 && v33 < v30 + 4 * v20)
        {
          goto LABEL_19;
        }

        v34 = v28 + (v20 & 7) - v20;
        v35 = (v33 + 16);
        v36 = (v32 + 16);
        do
        {
          v37 = vaddq_f32(*v36, *v35);
          v36[-1] = vaddq_f32(v36[-1], v35[-1]);
          *v36 = v37;
          v35 += 2;
          v36 += 2;
          v34 += 8;
        }

        while (v34);
        v31 = v20 - (v20 & 7);
        if ((v20 & 7) != 0)
        {
LABEL_19:
          v38 = v20 - v31;
          v39 = (v30 + 4 * v31);
          v40 = (v29 + 4 * v31);
          do
          {
            v41 = *v40++;
            *v39 = *v39 + v41;
            ++v39;
            --v38;
          }

          while (v38);
        }
      }

      v42 = *(*(a1 + 400) + 4 * i);
      v43 = *(*(a1 + 80) + 8 * v42);
      (*(*v43 + 248))(v43, *(a1 + 472) + 24 * *(a1 + 336), a3, i, *(a1 + 344), *(*(a1 + 256) + 4 * v42));
      v44 = *(*(a1 + 80) + 8 * v42);
      v45 = (*(*v44 + 48))(v44);
      v46 = v45[1];
      if (v46 != *v45)
      {
        if (((v46 - *v45) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v47 = *(a1 + 504);
      v48 = *(*(a1 + 80) + 8 * v42);
      v49 = (*(*v48 + 264))(v48);
      v50 = v49 / 8;
      if (v49 >= 8)
      {
        v51 = *(v47 + 8 * i);
        v52 = *(8 * i);
        v53 = v49 / 8;
        do
        {
          v54 = *v52;
          v55 = v52[1];
          v52 += 2;
          v56 = vaddq_f32(v51[1], v55);
          *v51 = vaddq_f32(*v51, v54);
          v51[1] = v56;
          v51 += 2;
          --v53;
        }

        while (v53);
      }

      v57 = 8 * v50;
      if (8 * v50 < v49)
      {
        v58 = *(8 * i);
        v59 = *(v47 + 8 * i);
        v60 = v57;
        if ((v49 - v57) <= 7)
        {
          goto LABEL_34;
        }

        v61 = v59 + 4 * v57;
        v62 = v58 + 4 * v57;
        if (v61 < v58 + 4 * v49 && v62 < v59 + 4 * v49)
        {
          goto LABEL_34;
        }

        v63 = v57 + (v49 & 7) - v49;
        v64 = (v62 + 16);
        v65 = (v61 + 16);
        do
        {
          v66 = vaddq_f32(*v65, *v64);
          v65[-1] = vaddq_f32(v65[-1], v64[-1]);
          *v65 = v66;
          v64 += 2;
          v65 += 2;
          v63 += 8;
        }

        while (v63);
        v60 = v49 - (v49 & 7);
        if ((v49 & 7) != 0)
        {
LABEL_34:
          v67 = v49 - v60;
          v68 = (v59 + 4 * v60);
          v69 = (v58 + 4 * v60);
          do
          {
            v70 = *v69++;
            *v68 = *v68 + v70;
            ++v68;
            --v67;
          }

          while (v67);
        }
      }
    }
  }
}

void sub_19D359144(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3591A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v94 = 0;
  v95 = 0;
  v96 = 0;
  if ((*(a1 + 340) & 0x80000000) == 0)
  {
    v13 = *(a1 + 304);
    v14 = -1;
    do
    {
      *v13++ = 0;
      ++v14;
    }

    while (v14 < *(a1 + 340));
  }

  v15 = *(a1 + 224);
  if (v15)
  {
    a2 = (*(*v15 + 32))(v15);
  }

  v16 = a4 & 0xFFFFFF;
  if (v16 > (a5 != 0))
  {
    v17 = a5 != 0;
    v85 = a3;
    v86 = a4 & 0xFFFFFF;
    do
    {
      v18 = *(a1 + 332);
      v19 = *(*(a1 + 80) + 8 * v18);
      (*(*v19 + 272))(v19);
      v20 = *(*(a1 + 80) + 8 * v18);
      (*(*v20 + 264))(v20);
      v21 = *(a1 + 304);
      if (!*(v21 + 4 * v18))
      {
        *(v21 + 4 * v18) = 1;
        v22 = *(*(a1 + 80) + 8 * v18);
        (*(*v22 + 256))(v22, v16);
      }

      v91 = 0;
      v92 = 0;
      v93 = 0;
      v23 = *(*(a1 + 80) + 8 * v18);
      (*(*v23 + 224))(v23, a2, a3, v17, &v91);
      v24 = *(*(a1 + 80) + 8 * v18);
      v87 = (*(*v24 + 32))(v24);
      __p = 0;
      v89 = 0;
      v90 = 0;
      v25 = *(a1 + 328);
      if (v25 == 1)
      {
        operator new();
      }

      if (v25 == 2)
      {
        v32 = *v87;
        v33 = *(*(a1 + 80) + 8 * *(a1 + 332));
        v34 = (*(*v33 + 272))(v33);
        if (v34 < 1)
        {
          v39 = 1;
          v41 = v89;
          v40 = v90;
          if (v89 < v90)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 1.1755e-38;
          do
          {
            v38 = *(*(v32 + 8 * v17) + 4 * v36);
            if (v38 > v37)
            {
              v35 = v36;
            }

            v37 = fmaxf(v38, v37);
            ++v36;
          }

          while (v34 != v36);
          v39 = v35 + 1;
          v41 = v89;
          v40 = v90;
          if (v89 < v90)
          {
LABEL_26:
            *v41 = v39;
            v42 = v41 + 1;
LABEL_52:
            v89 = v42;
            goto LABEL_53;
          }
        }

        v44 = __p;
        v45 = v41 - __p;
        v46 = (v41 - __p) >> 2;
        v47 = v46 + 1;
        if ((v46 + 1) >> 62)
        {
          sub_19D2AE2B4();
        }

        v48 = v40 - __p;
        if (v48 >> 1 > v47)
        {
          v47 = v48 >> 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 62))
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v56 = (v41 - __p) >> 2;
        v57 = (4 * v46);
        v58 = (4 * v46 - 4 * v56);
        *v57 = v39;
        v42 = v57 + 1;
        memcpy(v58, v44, v45);
        __p = v58;
        v89 = v42;
        v90 = 0;
        if (v44)
        {
          operator delete(v44);
        }

        a3 = v85;
        goto LABEL_52;
      }

      if (v25 != 4)
      {
        p_p = &__p;
        sub_19D324284(*v87 + 8 * v17, *v87 + 8 * v17, *(a1 + 340), &__p, *(*(a1 + 496) + 8), 1u);
        goto LABEL_54;
      }

      v26 = v94;
      v95 = v94;
      v27 = *(a1 + 536);
      v28 = *(a1 + 544) - v27;
      if (v28)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        }

        if (v29 > 1)
        {
          v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
          v50 = (v27 + 24);
          v51 = v30 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v52 = *v50;
            *(v50 - 2) = *(v50 - 3);
            v50[1] = v52;
            v50 += 6;
            v51 -= 2;
          }

          while (v51);
          if (v29 == v31)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v31 = 0;
        }

        v53 = (v27 + 24 * v31 + 8);
        v54 = v30 - v31;
        do
        {
          *v53 = *(v53 - 1);
          v53 += 3;
          --v54;
        }

        while (v54);
      }

LABEL_44:
      p_p = (a1 + 352);
      v55 = a7[1] - *a7;
      if (!v55)
      {
        goto LABEL_54;
      }

      if (v55 >= 5)
      {
        operator new();
      }

      v95 = v26;
      if (v55 == 4)
      {
        operator new();
      }

LABEL_53:
      p_p = &__p;
LABEL_54:
      bzero(*(*(a1 + 104) + 8 * v17), 4 * *(a1 + 348));
      v59 = *p_p;
      v16 = v86;
      if (p_p[1] != *p_p)
      {
        v60 = 0;
        while (1)
        {
          v61 = v59[v60];
          v62 = *(a1 + 304);
          if (!*(v62 + 4 * v61))
          {
            *(v62 + 4 * v61) = 1;
            v63 = *(*(a1 + 80) + 8 * v61);
            (*(*v63 + 256))(v63, v86);
          }

          v64 = a7[1] != *a7 && **a7 == -1 ? (*(a1 + 536) + 24 * v61 - 24) : &v94;
          v65 = *(*(a1 + 80) + 8 * v61);
          (*(*v65 + 224))(v65, a2, a3, v17, v64);
          v66 = *(*(a1 + 80) + 8 * v61);
          v67 = (*(*v66 + 32))(v66);
          v68 = *(a1 + 256);
          if ((*(a1 + 328) - 3) >= 2)
          {
            break;
          }

          v69 = *(v68 + 4 * v61);
          if (v69 >= 1)
          {
            v70 = *(*(*v87 + 8 * v17) + 4 * v61 - 4);
            v71 = *(*v67 + 8 * v17);
            if (v69 < 8)
            {
              v72 = 0;
              goto LABEL_71;
            }

            v72 = v69 & 0x7FFFFFF8;
            v73 = v71 + 1;
            v74 = v72;
            do
            {
              v75 = vmulq_n_f32(*v73, v70);
              v73[-1] = vmulq_n_f32(v73[-1], v70);
              *v73 = v75;
              v73 += 2;
              v74 -= 8;
            }

            while (v74);
            if (v72 != v69)
            {
LABEL_71:
              v76 = v69 - v72;
              v77 = &v71->f32[v72];
              do
              {
                *v77 = *v77 * v70;
                ++v77;
                --v76;
              }

              while (v76);
            }

LABEL_73:
            if (v69 >= 1)
            {
              v78 = *(*(*(a1 + 496) + 120) + 24 * v61 - 24);
              v79 = *(*v67 + 8 * v17);
              v80 = *(*(a1 + 104) + 8 * v17);
              do
              {
                v82 = *v78++;
                v81 = v82;
                LODWORD(v82) = *v79++;
                *(v80 + 4 * v81) = v82;
                --v69;
              }

              while (v69);
            }
          }

          ++v60;
          v59 = *p_p;
          if (v60 >= (p_p[1] - *p_p) >> 2)
          {
            goto LABEL_77;
          }
        }

        v69 = *(v68 + 4 * v61);
        goto LABEL_73;
      }

LABEL_77:
      v83 = *(a1 + 104);
      v84 = *(a1 + 348);
      __C = 0.0;
      vDSP_sve(*(v83 + 8 * v17), 1, &__C, v84);
      if (__p)
      {
        v89 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      ++v17;
    }

    while (v17 != v86);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_19D359E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  operator delete(__p);
  if (a15)
  {
    operator delete(a15);
    v23 = a18;
    if (!a18)
    {
LABEL_3:
      v24 = a21;
      if (!a21)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v23 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  v24 = a21;
  if (!a21)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v24);
  _Unwind_Resume(a1);
}

void *sub_19D359F10(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B9418, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v10 = *(a1 + 340);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = result;
    v12 = 0;
    do
    {
      if (*(*(v11 + 304) + 4 * v12) >= 1)
      {
        v14 = *(*(a1 + 80) + 8 * v12);
        result = (*(*v14 + 336))(v14, *(*(v11 + 80) + 8 * v12), a3, a4, a5);
        v10 = *(a1 + 340);
      }
    }

    while (v12++ < v10);
  }

  return result;
}

uint64_t sub_19D35A01C(uint64_t result, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v19 = v6;
    v20 = v7;
    v10 = result;
    v11 = 0;
    v12 = a4;
    do
    {
      v18 = 0;
      v13 = *(v10 + 332);
      v14 = *(*(v10 + 80) + 8 * v13);
      (*(*v14 + 240))(v14, *(v10 + 200) + 24 * v13, *(v10 + 472) + 24 * v13, v11, &v18, a6);
      v17 = 0;
      v15 = *(*(v10 + 400) + 4 * v11);
      v16 = *(*(v10 + 80) + 8 * v15);
      result = (*(*v16 + 240))(v16, *(v10 + 200) + 24 * v15, *(v10 + 472) + 24 * *(v10 + 336), v11, &v17, a6);
      if (v18 == 1 || v17 == 1)
      {
        ++*a5;
      }

      ++v11;
    }

    while (v12 != v11);
  }

  return result;
}

float sub_19D35A15C(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 0;
  if (a3 < 1)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = a3;
  v6 = 0.0;
  do
  {
    v7 = *(a1 + 332);
    v8 = *(*(a1 + 80) + 8 * v7);
    (*(*v8 + 232))(v8, *(a1 + 200) + 24 * v7, &v13 + 4, v4);
    v9 = *(*(a1 + 400) + 4 * v4);
    v10 = *(*(a1 + 80) + 8 * v9);
    (*(*v10 + 232))(v10, *(a1 + 200) + 24 * v9, &v13, v4);
    v11 = *&v13;
    if ((*(a1 + 328) - 3) >= 2)
    {
      v11 = *(&v13 + 1) + *&v13;
    }

    v6 = v11 + v6;
    ++v4;
  }

  while (v5 != v4);
  return v6;
}

void sub_19D35A26C(void *a1)
{
  v1 = sub_19D35A294(a1);

  operator delete(v1);
}

void *sub_19D35A294(void *a1)
{
  *a1 = &unk_1F10B9298;
  v2 = a1[35];
  v3 = a1[36];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*v5)
      {
        operator delete[](*v5);
        *v5 = 0;
        v2 = a1[35];
        v3 = a1[36];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[36] = v2;
  v6 = a1[67];
  if (v6)
  {
    v7 = a1[68];
    v8 = a1[67];
    if (v7 != v6)
    {
      v9 = a1[68];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = a1[67];
    }

    a1[68] = v6;
    operator delete(v8);
  }

  v12 = a1[63];
  if (v12)
  {
    a1[64] = v12;
    operator delete(v12);
  }

  v13 = a1[59];
  if (v13)
  {
    v14 = a1[60];
    v15 = a1[59];
    if (v14 != v13)
    {
      v16 = a1[60];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = a1[59];
    }

    a1[60] = v13;
    operator delete(v15);
  }

  v19 = a1[56];
  if (v19)
  {
    a1[57] = v19;
    operator delete(v19);
  }

  v20 = a1[53];
  if (v20)
  {
    a1[54] = v20;
    operator delete(v20);
  }

  v21 = a1[50];
  if (v21)
  {
    a1[51] = v21;
    operator delete(v21);
  }

  v22 = a1[47];
  if (v22)
  {
    a1[48] = v22;
    operator delete(v22);
  }

  v23 = a1[44];
  if (v23)
  {
    a1[45] = v23;
    operator delete(v23);
  }

  v24 = a1[38];
  if (v24)
  {
    a1[39] = v24;
    operator delete(v24);
  }

  v25 = a1[35];
  if (v25)
  {
    a1[36] = v25;
    operator delete(v25);
  }

  return sub_19D30FE34(a1);
}

uint64_t sub_19D35A448(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t a8, char a9)
{
  v20 = 0;
  if ((atomic_load_explicit(&qword_1EB0139C0, memory_order_acquire) & 1) == 0)
  {
    sub_19D4545EC();
  }

  (*(*a1 + 304))(a1, a2, a3, a5, 0, &v20, qword_1EB0139A8);
  v17 = (*(*a1 + 40))(a1);
  (*(*a1 + 344))(a1, a4, v17, a5, a6, a8);
  *a7 = (*(*a1 + 352))(a1, a4, a5);
  v18 = (*(*a1 + 40))(a1);
  result = (*(*a1 + 296))(a1, a2, a3, v18, a5);
  if ((a9 & 1) == 0)
  {
    return (*(*a1 + 288))(a1, a1[8], a1[9]);
  }

  return result;
}

void sub_19D35AD30(void *a1, FILE *__stream)
{
  *(a1 + 2) = -1;
  v3 = (a1 + 1);
  sub_19D41C8F8(__stream, "", a1 + 1);
  sub_19D35BBF4(a1, *v3);
  operator new[]();
}

void sub_19D35B230(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = -1;
  v3 = (*a2 + *(a2 + 72));
  if (v3 <= *a2 + *(a2 + 8) - 4)
  {
    v4 = *v3;
    *(a1 + 8) = *v3;
    *(a2 + 72) += 4;
  }

  else
  {
    v4 = 0;
    *(a1 + 8) = 0;
  }

  sub_19D35BBF4(a1, v4);
  operator new[]();
}

void sub_19D35BBF4(void *a1, int a2)
{
  if (!a2)
  {
    sub_19D41C548(42);
  }

  v4 = a1[2];
  v5 = (a1 + 2);
  v6 = a2;
  v7 = (a1[3] - v4) >> 2;
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    sub_19D2CA0E8((a1 + 2), v9);
  }

  else if (!v8)
  {
    a1[3] = v4 + 4 * v6;
  }

  v11 = a1[15];
  v10 = a1[16];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
  if (v6 <= v12)
  {
    if (v6 < v12)
    {
      v13 = v11 + 24 * v6;
      if (v10 != v13)
      {
        v14 = a1[16];
        do
        {
          v16 = *(v14 - 24);
          v14 -= 24;
          v15 = v16;
          if (v16)
          {
            *(v10 - 16) = v15;
            operator delete(v15);
          }

          v10 = v14;
        }

        while (v14 != v13);
      }

      a1[16] = v13;
    }
  }

  else
  {
    sub_19D35D8AC((a1 + 15), v6 - v12);
  }

  if (a2 >= 1)
  {
    v17 = *v5;

    bzero(v17, 4 * a2);
  }
}

void sub_19D35BD08(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (v5 + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 2;
    v7 = v6 + a2;
    if ((v6 + a2) >> 62)
    {
      sub_19D2AE2B4();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v18 = 4 * v6;
    v19 = 4 * v6 + 4 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

uint64_t sub_19D35BED8(uint64_t a1)
{
  *a1 = &unk_1F10B9440;
  *(a1 + 24) = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = *(a1 + 120);
  if (v2 >= 1)
  {
    if (v2 == 1)
    {
      v4 = 0;
LABEL_7:
      v8 = (v3 + 24 * v4 + 8);
      v9 = v2 - v4;
      do
      {
        *v8 = *(v8 - 1);
        v8 += 3;
        --v9;
      }

      while (v9);
      goto LABEL_9;
    }

    v4 = v2 & 0x7FFFFFFE;
    v5 = (v3 + 24);
    v6 = v4;
    do
    {
      v7 = *v5;
      *(v5 - 2) = *(v5 - 3);
      v5[1] = v7;
      v5 += 6;
      v6 -= 2;
    }

    while (v6);
    if (v4 != v2)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v10 = *(a1 + 128);
  if (v10 != v3)
  {
    v11 = *(a1 + 128);
    do
    {
      v13 = *(v11 - 24);
      v11 -= 24;
      v12 = v13;
      if (v13)
      {
        *(v10 - 16) = v12;
        operator delete(v12);
      }

      v10 = v11;
    }

    while (v11 != v3);
  }

  *(a1 + 128) = v3;
  if (*(a1 + 64))
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (*(a1 + 104))
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_19D2AD8CC(a1 + 40, *(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = a1 + 48;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (*(a1 + 104))
    {
LABEL_16:
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      v14 = *(a1 + 120);
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }
  }

  sub_19D2AD8CC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v14 = *(a1 + 120);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_20:
  v15 = *(a1 + 128);
  v16 = v14;
  if (v15 != v14)
  {
    v17 = *(a1 + 128);
    do
    {
      v19 = *(v17 - 3);
      v17 -= 24;
      v18 = v19;
      if (v19)
      {
        *(v15 - 2) = v18;
        operator delete(v18);
      }

      v15 = v17;
    }

    while (v17 != v14);
    v16 = *(a1 + 120);
  }

  *(a1 + 128) = v14;
  operator delete(v16);
LABEL_27:
  sub_19D2AD8CC(a1 + 80, *(a1 + 88));
  sub_19D2AD8CC(a1 + 40, *(a1 + 48));
  v20 = *(a1 + 16);
  if (v20)
  {
    *(a1 + 24) = v20;
    operator delete(v20);
  }

  return a1;
}

void sub_19D35C0B8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19D35C0B8(a1, *a2);
    sub_19D35C0B8(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t sub_19D35C144(uint64_t a1, int a2, float **a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = 1 << (v3 - 1);
    v5 = *a3;
    do
    {
      if ((v4 & a2) != 0)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      *v5++ = v6;
      v4 >>= 1;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_19D35C1A0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_19D35C1BC(uint64_t a1, int a2, void **a3)
{
  bzero(*a3, 4 * *(a1 + 28));
  v6 = *(a1 + 12);
  v7 = *a3;
  *(*a3 + a2 % v6) = 1065353216;
  v7[a2 / v6 + v6] = 1065353216;
  return 0;
}

__n128 sub_19D35C238(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 40) = *(a2 + 40);
  }

  return result;
}

uint64_t sub_19D35C25C(uint64_t a1, unsigned int a2, float **a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = 1 << (v3 - 1);
    v5 = *a3;
    do
    {
      if ((v4 & (a2 ^ (a2 >> 1))) != 0)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      *v5++ = v6;
      v4 >>= 1;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_19D35C2B4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_19D35C2C8(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F10B95B8;
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = a3;
  v14 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 16);
  }

  sub_19D35C50C(a1, __p, &v14, 1, 0);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v14;
  if (v14 <= 0)
  {
    sub_19D41C548(4);
  }

  ++v14;
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24) - v7) >> 3;
  if (v6 + 1 <= v8)
  {
    if (v6 + 1 < v8)
    {
      *(a1 + 24) = v7 + 8 * v6 + 8;
    }

LABEL_13:
    operator new[]();
  }

  sub_19D308DD0(v5, v6 + 1 - v8);
  if (v14 >= 1)
  {
    goto LABEL_13;
  }

  *(a1 + 12) = -1;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D35C50C(a1, v10, (a1 + 12), 0, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return a1;
}

void sub_19D35C4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v24 = *v22;
  if (*v22)
  {
    *(v21 + 24) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D35C50C(uint64_t a1, uint64_t a2, int *a3, int a4, int a5)
{
  v44[19] = *MEMORY[0x1E69E9840];
  *a3 = 0x80000000;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  sub_19D2B8208(v42);
  if (!v43[15])
  {
    sub_19D41C548(3);
  }

  if (a5 < 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  v24 = v9;
  v26 = *(MEMORY[0x1E69E54D8] + 64);
  v27 = *MEMORY[0x1E69E54D8];
  v25 = *(MEMORY[0x1E69E54D8] + 72);
  while (1)
  {
    std::ios_base::getloc((v42 + *(v42[0] - 24)));
    v10 = std::locale::use_facet(&v34, MEMORY[0x1E69E5318]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v34);
    v12 = sub_19D35CF2C(v42, v40, v11);
    if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_19D35CD98(&v34, v40, 24);
    v13 = 0;
    v32[0] = 0;
    v32[1] = 0;
    v14 = -1;
    v33 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_12:
    while (!v13)
    {
      v16 = sub_19D35CF2C(&v34, v32, 0x20u);
      if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0)
      {
        goto LABEL_43;
      }

LABEL_11:
      while (1)
      {
        ++v13;
        if (a4)
        {
          break;
        }

LABEL_18:
        while (v13)
        {
          if (v13 != 1)
          {
            while (1)
            {
              while (1)
              {
                v18 = sub_19D35CF2C(&v34, v32, 0x20u);
                if ((*(v18 + *(*v18 - 24) + 32) & 5) != 0)
                {
                  goto LABEL_41;
                }

                if (SHIBYTE(v33) < 0)
                {
                  break;
                }

                if (HIBYTE(v33))
                {
                  *v28 = *v32;
                  v29 = v33;
LABEL_38:
                  v21 = sub_19D41C738(v28);
                  if (SHIBYTE(v29) < 0)
                  {
                    v22 = v21;
                    operator delete(v28[0]);
                    v21 = v22;
                  }

                  *(*(*(a1 + 16) + 8 * v14) + 4 * v13 - 8) = v21;
                  goto LABEL_11;
                }
              }

              if (v32[1])
              {
                sub_19D2AD6B8(v28, v32[0], v32[1]);
                goto LABEL_38;
              }
            }
          }

          v17 = sub_19D35CF2C(&v34, v32, 0x20u);
          if ((*(v17 + *(*v17 - 24) + 32) & 5) != 0)
          {
            goto LABEL_41;
          }

LABEL_21:
          if (SHIBYTE(v33) < 0)
          {
            sub_19D2AD6B8(__p, v32[0], v32[1]);
          }

          else
          {
            *__p = *v32;
            v31 = v33;
          }

          v20 = sub_19D41C578(__p);
          v14 = v20;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
            if (v14 <= *a3)
            {
              goto LABEL_11;
            }
          }

          else if (v20 <= *a3)
          {
            goto LABEL_11;
          }

          *a3 = v14;
          v13 = 2;
          if (a4)
          {
            goto LABEL_12;
          }
        }

        v19 = sub_19D35CF2C(&v34, v32, 0x20u);
        if ((*(v19 + *(*v19 - 24) + 32) & 5) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    if (v13 == 1)
    {
      v15 = sub_19D35CF2C(&v34, v32, 0x20u);
      if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    do
    {
      v23 = sub_19D35CF2C(&v34, v32, 0x20u);
    }

    while ((*(v23 + *(*v23 - 24) + 32) & 5) == 0);
LABEL_41:
    if ((v24 & 1) == 0)
    {
      sub_19D31ED5C((*(a1 + 16) + 8 * v14), "corpus entry ", *(a1 + 8));
    }

LABEL_43:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    v34.__locale_ = v27;
    *(&v34.__locale_ + *(v27 - 3)) = v26;
    v35 = v25;
    v36 = MEMORY[0x1E69E5548] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x19EAFA410](&v39);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v42 + *(v42[0] - 24)), *(&v43[2] + *(v42[0] - 24)) | 4);
  }

  v42[0] = *MEMORY[0x1E69E54C8];
  *(v42 + *(v42[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x19EAFA1F0](v43);
  std::istream::~istream();
  MEMORY[0x19EAFA410](v44);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }
}

void sub_19D35CB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D35CC64(uint64_t a1)
{
  *a1 = &unk_1F10B95B8;
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        operator delete[](v4);
        v2 = *(a1 + 12);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_19D35CCEC(_DWORD *__p)
{
  *__p = &unk_1F10B95B8;
  v2 = __p[3];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(__p + 2) + 8 * i);
      if (v4)
      {
        operator delete[](v4);
        v2 = __p[3];
      }
    }
  }

  v5 = *(__p + 2);
  if (v5)
  {
    *(__p + 3) = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t sub_19D35CD84(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_19D35CD98(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 176) = 0;
  v5 = MEMORY[0x1E69E5560] + 24;
  *a1 = MEMORY[0x1E69E5560] + 24;
  v6 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v7 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  sub_19D3072F0(a1, (MEMORY[0x1E69E54D8] + 8), (a1 + 24));
  *a1 = v5;
  *(a1 + 128) = v6;
  v8 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  MEMORY[0x19EAFA3C0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a3;
  std::stringbuf::str();
  return a1;
}

void sub_19D35CEDC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](v1);
  _Unwind_Resume(a1);
}

void *sub_19D35CF2C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x19EAFA230](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_19D35D090(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D35D050);
  }

  __cxa_rethrow();
}

void *sub_19D35D14C(void *result)
{
  *result = &unk_1F10B9620;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D35D1A4(void *a1)
{
  *a1 = &unk_1F10B9620;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_19D35D46C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
    v2 = result;
    sub_19D324128((result + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
    return v2;
  }

  return result;
}

uint64_t sub_19D35D4C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = ***(a1 + 16);
    v6 = *a3;
    if (v3 < 8)
    {
      goto LABEL_7;
    }

    if ((v6 - v5) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = v3 & 0x7FFFFFF8;
    v7 = (v5 + 16);
    v8 = (v6 + 16);
    v9 = v4;
    do
    {
      v10 = *v7;
      *(v8 - 1) = *(v7 - 1);
      *v8 = v10;
      v7 += 2;
      v8 += 2;
      v9 -= 8;
    }

    while (v9);
    if (v4 != v3)
    {
LABEL_7:
      v11 = v3 - v4;
      v12 = 4 * v4;
      v13 = (v6 + 4 * v4);
      v14 = (v5 + v12);
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v11;
      }

      while (v11);
    }
  }

  return 0;
}

uint64_t sub_19D35D568(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

void sub_19D35D584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = a1;
  v17 = a10;
  v18 = a11;
  if ((atomic_load_explicit(&qword_1EB0139E0, memory_order_acquire) & 1) == 0)
  {
    v21 = a2;
    v20 = a3;
    sub_19D454648();
    v17 = a10;
    v18 = a11;
    a3 = v20;
    a2 = v21;
    v16 = a1;
  }

  (*(*v16 + 304))(v16, a2, a3, a5, v17, v18, qword_1EB0139C8);
  v19 = (*(*v16 + 40))(v16);
  (*(*v16 + 344))(v16, a4, v19, a5, a6, a8);
  *a7 = (*(*v16 + 352))(v16, a4, a5);
}

void sub_19D35D700(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19D2AE2B4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_19D35D8AC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19D2AE2B4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

size_t sub_19D35DA58(_DWORD *a1, FILE *__stream, _DWORD *a3)
{
  __ptr = a1[3] | a1[6];
  v6 = fwrite(a1, 4uLL, 1uLL, __stream);
  v7 = fwrite(a1 + 1, 4uLL, 1uLL, __stream) + v6;
  v8 = fwrite(a1 + 2, 4uLL, 1uLL, __stream);
  v9 = v7 + v8 + fwrite(&__ptr, 4uLL, 1uLL, __stream);
  v10 = fwrite(a1 + 4, 4uLL, 1uLL, __stream);
  result = fwrite(a1 + 5, 4uLL, 1uLL, __stream);
  if (v9 + v10 + result != 6)
  {
    sub_19D41C548(67);
  }

  *a3 += 24;
  return result;
}

uint64_t sub_19D35DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 96);
  v9 = *(a1 + 56);
  v10 = *(v8 + 72);
  v11 = (*v8 + v10);
  if (v11 > *v8 + *(v8 + 8) - 4)
  {
    v12 = 0;
    goto LABEL_4;
  }

  v12 = *v11;
  *(v8 + 72) = v10 + 4;
  if (v12 <= 1)
  {
LABEL_4:
    v13 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v13;
    *(a1 + 84) = 0x2000000001;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v12 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v8, 1);
  if (v12 == 3 || v12 == 5)
  {
LABEL_5:
    (*(*v9 + 16))(v9, v8);
  }

LABEL_6:
  v14 = *(a1 + 88);
  if (v14 != sub_19D41C528())
  {
    sub_19D41C548(33);
  }

  v15 = *(a1 + 84);
  if ((v15 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v15 != 2)
  {
    sub_19D41C548(35);
  }

  v16 = *(a1 + 96);
  v17 = *v16;
  v18 = v16[1];
  v19 = (*v16 + *(v16 + 18));
  if (v19 > *v16 + v18 - 4)
  {
    *a1 = 0;
    v20 = (v17 + *(v16 + 18));
    if (v20 <= v17 + v18 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v22 = (v17 + *(v16 + 18));
    v71 = a4;
    if (v22 <= v17 + v18 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    v23 = a1;
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v19;
  v24 = *(v16 + 18) + 4;
  *(v16 + 18) = v24;
  v17 = *v16;
  v18 = v16[1];
  v20 = (*v16 + v24);
  if (v20 > *v16 + v18 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v20;
  v21 = *(v16 + 18) + 4;
  *(v16 + 18) = v21;
  v22 = (*v16 + v21);
  v71 = a4;
  if (v22 > *v16 + v16[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = a1;
  *(a1 + 8) = *v22;
  *(v16 + 18) += 4;
LABEL_16:
  v25 = (a2 + 8);
  sub_19D2AD8CC(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v26 = (a3 + 8);
  sub_19D2AD8CC(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v27 = *(v23 + 96);
  v28 = *(v27 + 72);
  v29 = (*v27 + v28);
  v30 = a5;
  if (v29 <= *v27 + *(v27 + 8) - 4)
  {
    v31 = *v29;
    *(v27 + 72) = v28 + 4;
    v72 = v31;
    if (v31 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = *(a1 + 96);
        v34 = *(v33 + 18);
        v35 = *v33;
        v36 = (*v33 + v34);
        v37 = *v33 + v33[1] - 4;
        if (v36 <= v37)
        {
          v38 = *v36;
          v34 += 4;
          *(v33 + 18) = v34;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
LABEL_22:
            v40 = *v39;
            *(v33 + 18) = v34 + 4;
            v41 = *v25;
            if (*v25)
            {
              goto LABEL_28;
            }

LABEL_31:
            operator new();
          }
        }

        else
        {
          v38 = 0;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
            goto LABEL_22;
          }
        }

        v40 = 0;
        v41 = *v25;
        if (!*v25)
        {
          goto LABEL_31;
        }

        while (1)
        {
LABEL_28:
          while (1)
          {
            v42 = v41;
            v43 = *(v41 + 7);
            if (v38 >= v43)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_31;
            }
          }

          if (v43 >= v38)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_31;
          }
        }

        *(v42 + 8) = v40;
        v44 = *v26;
        if (!*v26)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v45 = v44;
            v46 = *(v44 + 7);
            if (v40 >= v46)
            {
              break;
            }

            v44 = *v45;
            if (!*v45)
            {
              goto LABEL_38;
            }
          }

          if (v46 >= v40)
          {
            break;
          }

          v44 = v45[1];
          if (!v44)
          {
            goto LABEL_38;
          }
        }

        v30 = a5;
        *(v45 + 8) = v38;
        ++v32;
      }

      while (v32 != v72);
    }
  }

  v47 = (v71 + 8);
  sub_19D2AD8CC(v71, *(v71 + 8));
  *v71 = v71 + 8;
  *(v71 + 16) = 0;
  *(v71 + 8) = 0;
  v48 = (v30 + 8);
  sub_19D2AD8CC(v30, *(v30 + 8));
  *v30 = v30 + 8;
  *(v30 + 16) = 0;
  *(v30 + 8) = 0;
  v49 = *(a1 + 96);
  v50 = *(v49 + 72);
  v51 = (*v49 + v50);
  if (v51 <= *v49 + *(v49 + 8) - 4)
  {
    v52 = *v51;
    *(v49 + 72) = v50 + 4;
    if (v52 >= 1)
    {
      for (i = 0; i != v52; ++i)
      {
        v54 = *(a1 + 96);
        v55 = *(v54 + 18);
        v56 = *v54;
        v57 = (*v54 + v55);
        v58 = *v54 + v54[1] - 4;
        if (v57 <= v58)
        {
          v59 = *v57;
          v55 += 4;
          *(v54 + 18) = v55;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
LABEL_45:
            v61 = *v60;
            *(v54 + 18) = v55 + 4;
            v62 = *v47;
            if (*v47)
            {
              goto LABEL_51;
            }

LABEL_54:
            operator new();
          }
        }

        else
        {
          v59 = 0;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
            goto LABEL_45;
          }
        }

        v61 = 0;
        v62 = *v47;
        if (!*v47)
        {
          goto LABEL_54;
        }

        while (1)
        {
LABEL_51:
          while (1)
          {
            v63 = v62;
            v64 = *(v62 + 7);
            if (v59 >= v64)
            {
              break;
            }

            v62 = *v63;
            if (!*v63)
            {
              goto LABEL_54;
            }
          }

          if (v64 >= v59)
          {
            break;
          }

          v62 = v63[1];
          if (!v62)
          {
            goto LABEL_54;
          }
        }

        *(v63 + 8) = v61;
        v65 = *v48;
        if (!*v48)
        {
LABEL_61:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v66 = v65;
            v67 = *(v65 + 7);
            if (v61 >= v67)
            {
              break;
            }

            v65 = *v66;
            if (!*v66)
            {
              goto LABEL_61;
            }
          }

          if (v67 >= v61)
          {
            break;
          }

          v65 = v66[1];
          if (!v65)
          {
            goto LABEL_61;
          }
        }

        *(v66 + 8) = v59;
      }
    }
  }

  v68 = *(**(a1 + 40) + 64);

  return v68();
}

uint64_t sub_19D35E27C(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8((a1 + 16), *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v9 = *a3;
      *(a1 + 56) = *(a3 + 2);
      *(a1 + 40) = v9;
      goto LABEL_6;
    }
  }

  sub_19D2AD6B8((a1 + 40), *a3, *(a3 + 1));
LABEL_6:
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  *(a1 + 72) = 0;
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1) != 1 || **a3 != 114)
    {
      if (*(a3 + 1) != 2 || **a3 != 11122)
      {
LABEL_33:
        sub_19D41C548(11);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a3 + 23);
    if (v10 != 1)
    {
      if (v10 != 2 || *a3 != 11122)
      {
        goto LABEL_33;
      }

LABEL_15:
      *(a1 + 64) = 514;
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = open(v11, 514, 384);
      goto LABEL_24;
    }

    if (*a3 != 114)
    {
      goto LABEL_33;
    }
  }

  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v12 = open(v13, 0);
LABEL_24:
  v14 = v12;
  if (v12 < 0)
  {
    goto LABEL_33;
  }

  if (fstat(v12, &v18) < 0)
  {
    close(v14);
    goto LABEL_33;
  }

  st_size = v18.st_size;
  *(a1 + 8) = v18.st_size;
  v19 = 0;
  v20 = st_size;
  fcntl(v14, 44, &v19);
  if (!a4)
  {
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v16 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v14, 0);
    if (v16 == -1)
    {
      close(v14);
      sub_19D41C548(11);
    }

    *a1 = v16;
  }

  close(v14);
  return a1;
}

void sub_19D35E4BC(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 39) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 16));
  _Unwind_Resume(exception_object);
}

_DWORD *sub_19D35E50C(_DWORD *result, uint64_t *a2, char a3)
{
  v3 = *a2;
  v4 = *(a2 + 18);
  if (a3)
  {
    v5 = a2[1];
    if (v3 + v4 <= (v3 + v5 - 4))
    {
      v4 += 4;
      *(a2 + 18) = v4;
    }

    v6 = (v3 + v4);
    if (v6 > v3 + v5 - 4)
    {
LABEL_5:
      *result = 0;
      v7 = (v3 + *(a2 + 18));
      if (v7 <= v3 + v5 - 4)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = a2[1];
    v6 = (v3 + v4);
    if (v6 > v3 + v5 - 4)
    {
      goto LABEL_5;
    }
  }

  *result = *v6;
  v17 = *(a2 + 18) + 4;
  *(a2 + 18) = v17;
  v3 = *a2;
  v5 = a2[1];
  v7 = (*a2 + v17);
  if (v7 <= *a2 + v5 - 4)
  {
LABEL_6:
    result[1] = *v7;
    v8 = *(a2 + 18) + 4;
    *(a2 + 18) = v8;
    v3 = *a2;
    v5 = a2[1];
    v9 = (*a2 + v8);
    if (v9 <= *a2 + v5 - 4)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result[1] = 0;
  v9 = (v3 + *(a2 + 18));
  if (v9 <= v3 + v5 - 4)
  {
LABEL_7:
    result[2] = *v9;
    v10 = *(a2 + 18) + 4;
    *(a2 + 18) = v10;
    v3 = *a2;
    v5 = a2[1];
    v11 = (*a2 + v10);
    if (v11 <= *a2 + v5 - 4)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result[2] = 0;
  v11 = (v3 + *(a2 + 18));
  if (v11 <= v3 + v5 - 4)
  {
LABEL_8:
    v12 = *v11;
    result[3] = v12;
    v13 = *(a2 + 18) + 4;
    *(a2 + 18) = v13;
    v3 = *a2;
    v5 = a2[1];
    v14 = (*a2 + v13);
    if (v14 <= *a2 + v5 - 4)
    {
      goto LABEL_9;
    }

LABEL_16:
    result[4] = 0;
    v16 = (v3 + *(a2 + 18));
    if (v16 <= v3 + v5 - 4)
    {
      goto LABEL_10;
    }

LABEL_17:
    result[5] = 0;
    goto LABEL_18;
  }

LABEL_15:
  v12 = 0;
  result[3] = 0;
  v14 = (v3 + *(a2 + 18));
  if (v14 > v3 + v5 - 4)
  {
    goto LABEL_16;
  }

LABEL_9:
  result[4] = *v14;
  v15 = *(a2 + 18) + 4;
  *(a2 + 18) = v15;
  v16 = (*a2 + v15);
  if (v16 > *a2 + a2[1] - 4)
  {
    goto LABEL_17;
  }

LABEL_10:
  result[5] = *v16;
  *(a2 + 18) += 4;
LABEL_18:
  if ((v12 & 3) == 0)
  {
    goto LABEL_25;
  }

  v18 = v12 & 0xFFFFFFFC;
  if ((v12 & 0xFFFFFFFC) == 0)
  {
    v18 = 32;
  }

  result[6] = v18;
  if (v18 > 0x20 || ((1 << v18) & 0x100010100) == 0)
  {
LABEL_25:
    sub_19D41C548(25);
  }

  result[3] = v12 & 3;
  if (*(a2 + 18) != 32)
  {
    sub_19D41C548(67);
  }

  return result;
}

uint64_t sub_19D35E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 96);
  v9 = *(a1 + 56);
  v10 = *(v8 + 72);
  v11 = (*v8 + v10);
  if (v11 > *v8 + *(v8 + 8) - 4)
  {
    v12 = 0;
    goto LABEL_4;
  }

  v12 = *v11;
  *(v8 + 72) = v10 + 4;
  if (v12 <= 1)
  {
LABEL_4:
    v13 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v13;
    *(a1 + 84) = 0x2000000001;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v12 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v8, 1);
  if (v12 == 3 || v12 == 5)
  {
LABEL_5:
    (*(*v9 + 16))(v9, v8);
  }

LABEL_6:
  v14 = *(a1 + 88);
  if (v14 != sub_19D41C520())
  {
    sub_19D41C548(33);
  }

  v15 = *(a1 + 84);
  if ((v15 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v15 != 2)
  {
    sub_19D41C548(35);
  }

  v16 = *(a1 + 96);
  v17 = *v16;
  v18 = v16[1];
  v19 = (*v16 + *(v16 + 18));
  if (v19 > *v16 + v18 - 4)
  {
    *a1 = 0;
    v20 = (v17 + *(v16 + 18));
    if (v20 <= v17 + v18 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v22 = (v17 + *(v16 + 18));
    v71 = a4;
    if (v22 <= v17 + v18 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    v23 = a1;
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v19;
  v24 = *(v16 + 18) + 4;
  *(v16 + 18) = v24;
  v17 = *v16;
  v18 = v16[1];
  v20 = (*v16 + v24);
  if (v20 > *v16 + v18 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v20;
  v21 = *(v16 + 18) + 4;
  *(v16 + 18) = v21;
  v22 = (*v16 + v21);
  v71 = a4;
  if (v22 > *v16 + v16[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = a1;
  *(a1 + 8) = *v22;
  *(v16 + 18) += 4;
LABEL_16:
  v25 = (a2 + 8);
  sub_19D2AD8CC(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v26 = (a3 + 8);
  sub_19D2AD8CC(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v27 = *(v23 + 96);
  v28 = *(v27 + 72);
  v29 = (*v27 + v28);
  v30 = a5;
  if (v29 <= *v27 + *(v27 + 8) - 4)
  {
    v31 = *v29;
    *(v27 + 72) = v28 + 4;
    v72 = v31;
    if (v31 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = *(a1 + 96);
        v34 = *(v33 + 18);
        v35 = *v33;
        v36 = (*v33 + v34);
        v37 = *v33 + v33[1] - 4;
        if (v36 <= v37)
        {
          v38 = *v36;
          v34 += 4;
          *(v33 + 18) = v34;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
LABEL_22:
            v40 = *v39;
            *(v33 + 18) = v34 + 4;
            v41 = *v25;
            if (*v25)
            {
              goto LABEL_28;
            }

LABEL_31:
            operator new();
          }
        }

        else
        {
          v38 = 0;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
            goto LABEL_22;
          }
        }

        v40 = 0;
        v41 = *v25;
        if (!*v25)
        {
          goto LABEL_31;
        }

        while (1)
        {
LABEL_28:
          while (1)
          {
            v42 = v41;
            v43 = *(v41 + 7);
            if (v38 >= v43)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_31;
            }
          }

          if (v43 >= v38)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_31;
          }
        }

        *(v42 + 8) = v40;
        v44 = *v26;
        if (!*v26)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v45 = v44;
            v46 = *(v44 + 7);
            if (v40 >= v46)
            {
              break;
            }

            v44 = *v45;
            if (!*v45)
            {
              goto LABEL_38;
            }
          }

          if (v46 >= v40)
          {
            break;
          }

          v44 = v45[1];
          if (!v44)
          {
            goto LABEL_38;
          }
        }

        v30 = a5;
        *(v45 + 8) = v38;
        ++v32;
      }

      while (v32 != v72);
    }
  }

  v47 = (v71 + 8);
  sub_19D2AD8CC(v71, *(v71 + 8));
  *v71 = v71 + 8;
  *(v71 + 16) = 0;
  *(v71 + 8) = 0;
  v48 = (v30 + 8);
  sub_19D2AD8CC(v30, *(v30 + 8));
  *v30 = v30 + 8;
  *(v30 + 16) = 0;
  *(v30 + 8) = 0;
  v49 = *(a1 + 96);
  v50 = *(v49 + 72);
  v51 = (*v49 + v50);
  if (v51 <= *v49 + *(v49 + 8) - 4)
  {
    v52 = *v51;
    *(v49 + 72) = v50 + 4;
    if (v52 >= 1)
    {
      for (i = 0; i != v52; ++i)
      {
        v54 = *(a1 + 96);
        v55 = *(v54 + 18);
        v56 = *v54;
        v57 = (*v54 + v55);
        v58 = *v54 + v54[1] - 4;
        if (v57 <= v58)
        {
          v59 = *v57;
          v55 += 4;
          *(v54 + 18) = v55;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
LABEL_45:
            v61 = *v60;
            *(v54 + 18) = v55 + 4;
            v62 = *v47;
            if (*v47)
            {
              goto LABEL_51;
            }

LABEL_54:
            operator new();
          }
        }

        else
        {
          v59 = 0;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
            goto LABEL_45;
          }
        }

        v61 = 0;
        v62 = *v47;
        if (!*v47)
        {
          goto LABEL_54;
        }

        while (1)
        {
LABEL_51:
          while (1)
          {
            v63 = v62;
            v64 = *(v62 + 7);
            if (v59 >= v64)
            {
              break;
            }

            v62 = *v63;
            if (!*v63)
            {
              goto LABEL_54;
            }
          }

          if (v64 >= v59)
          {
            break;
          }

          v62 = v63[1];
          if (!v62)
          {
            goto LABEL_54;
          }
        }

        *(v63 + 8) = v61;
        v65 = *v48;
        if (!*v48)
        {
LABEL_61:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v66 = v65;
            v67 = *(v65 + 7);
            if (v61 >= v67)
            {
              break;
            }

            v65 = *v66;
            if (!*v66)
            {
              goto LABEL_61;
            }
          }

          if (v67 >= v61)
          {
            break;
          }

          v65 = v66[1];
          if (!v65)
          {
            goto LABEL_61;
          }
        }

        *(v66 + 8) = v59;
      }
    }
  }

  v68 = *(**(a1 + 40) + 64);

  return v68();
}

uint64_t sub_19D35EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 96);
  v9 = *(a1 + 56);
  v10 = *(v8 + 72);
  v11 = (*v8 + v10);
  if (v11 > *v8 + *(v8 + 8) - 4)
  {
    v12 = 0;
    goto LABEL_4;
  }

  v12 = *v11;
  *(v8 + 72) = v10 + 4;
  if (v12 <= 1)
  {
LABEL_4:
    v13 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v13;
    *(a1 + 84) = 0x2000000001;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v12 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v8, 1);
  if (v12 == 3 || v12 == 5)
  {
LABEL_5:
    (*(*v9 + 16))(v9, v8);
  }

LABEL_6:
  v14 = *(a1 + 88);
  if (v14 != sub_19D41C518())
  {
    sub_19D41C548(33);
  }

  v15 = *(a1 + 84);
  if ((v15 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v15 != 2)
  {
    sub_19D41C548(35);
  }

  v16 = *(a1 + 96);
  v17 = *v16;
  v18 = v16[1];
  v19 = (*v16 + *(v16 + 18));
  if (v19 > *v16 + v18 - 4)
  {
    *a1 = 0;
    v20 = (v17 + *(v16 + 18));
    if (v20 <= v17 + v18 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v22 = (v17 + *(v16 + 18));
    v71 = a4;
    if (v22 <= v17 + v18 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    v23 = a1;
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v19;
  v24 = *(v16 + 18) + 4;
  *(v16 + 18) = v24;
  v17 = *v16;
  v18 = v16[1];
  v20 = (*v16 + v24);
  if (v20 > *v16 + v18 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v20;
  v21 = *(v16 + 18) + 4;
  *(v16 + 18) = v21;
  v22 = (*v16 + v21);
  v71 = a4;
  if (v22 > *v16 + v16[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = a1;
  *(a1 + 8) = *v22;
  *(v16 + 18) += 4;
LABEL_16:
  v25 = (a2 + 8);
  sub_19D2AD8CC(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v26 = (a3 + 8);
  sub_19D2AD8CC(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v27 = *(v23 + 96);
  v28 = *(v27 + 72);
  v29 = (*v27 + v28);
  v30 = a5;
  if (v29 <= *v27 + *(v27 + 8) - 4)
  {
    v31 = *v29;
    *(v27 + 72) = v28 + 4;
    v72 = v31;
    if (v31 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = *(a1 + 96);
        v34 = *(v33 + 18);
        v35 = *v33;
        v36 = (*v33 + v34);
        v37 = *v33 + v33[1] - 4;
        if (v36 <= v37)
        {
          v38 = *v36;
          v34 += 4;
          *(v33 + 18) = v34;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
LABEL_22:
            v40 = *v39;
            *(v33 + 18) = v34 + 4;
            v41 = *v25;
            if (*v25)
            {
              goto LABEL_28;
            }

LABEL_31:
            operator new();
          }
        }

        else
        {
          v38 = 0;
          v39 = (v35 + v34);
          if (v39 <= v37)
          {
            goto LABEL_22;
          }
        }

        v40 = 0;
        v41 = *v25;
        if (!*v25)
        {
          goto LABEL_31;
        }

        while (1)
        {
LABEL_28:
          while (1)
          {
            v42 = v41;
            v43 = *(v41 + 7);
            if (v38 >= v43)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_31;
            }
          }

          if (v43 >= v38)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_31;
          }
        }

        *(v42 + 8) = v40;
        v44 = *v26;
        if (!*v26)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v45 = v44;
            v46 = *(v44 + 7);
            if (v40 >= v46)
            {
              break;
            }

            v44 = *v45;
            if (!*v45)
            {
              goto LABEL_38;
            }
          }

          if (v46 >= v40)
          {
            break;
          }

          v44 = v45[1];
          if (!v44)
          {
            goto LABEL_38;
          }
        }

        v30 = a5;
        *(v45 + 8) = v38;
        ++v32;
      }

      while (v32 != v72);
    }
  }

  v47 = (v71 + 8);
  sub_19D2AD8CC(v71, *(v71 + 8));
  *v71 = v71 + 8;
  *(v71 + 16) = 0;
  *(v71 + 8) = 0;
  v48 = (v30 + 8);
  sub_19D2AD8CC(v30, *(v30 + 8));
  *v30 = v30 + 8;
  *(v30 + 16) = 0;
  *(v30 + 8) = 0;
  v49 = *(a1 + 96);
  v50 = *(v49 + 72);
  v51 = (*v49 + v50);
  if (v51 <= *v49 + *(v49 + 8) - 4)
  {
    v52 = *v51;
    *(v49 + 72) = v50 + 4;
    if (v52 >= 1)
    {
      for (i = 0; i != v52; ++i)
      {
        v54 = *(a1 + 96);
        v55 = *(v54 + 18);
        v56 = *v54;
        v57 = (*v54 + v55);
        v58 = *v54 + v54[1] - 4;
        if (v57 <= v58)
        {
          v59 = *v57;
          v55 += 4;
          *(v54 + 18) = v55;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
LABEL_45:
            v61 = *v60;
            *(v54 + 18) = v55 + 4;
            v62 = *v47;
            if (*v47)
            {
              goto LABEL_51;
            }

LABEL_54:
            operator new();
          }
        }

        else
        {
          v59 = 0;
          v60 = (v56 + v55);
          if (v60 <= v58)
          {
            goto LABEL_45;
          }
        }

        v61 = 0;
        v62 = *v47;
        if (!*v47)
        {
          goto LABEL_54;
        }

        while (1)
        {
LABEL_51:
          while (1)
          {
            v63 = v62;
            v64 = *(v62 + 7);
            if (v59 >= v64)
            {
              break;
            }

            v62 = *v63;
            if (!*v63)
            {
              goto LABEL_54;
            }
          }

          if (v64 >= v59)
          {
            break;
          }

          v62 = v63[1];
          if (!v62)
          {
            goto LABEL_54;
          }
        }

        *(v63 + 8) = v61;
        v65 = *v48;
        if (!*v48)
        {
LABEL_61:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v66 = v65;
            v67 = *(v65 + 7);
            if (v61 >= v67)
            {
              break;
            }

            v65 = *v66;
            if (!*v66)
            {
              goto LABEL_61;
            }
          }

          if (v67 >= v61)
          {
            break;
          }

          v65 = v66[1];
          if (!v65)
          {
            goto LABEL_61;
          }
        }

        *(v66 + 8) = v59;
      }
    }
  }

  v68 = *(**(a1 + 40) + 64);

  return v68();
}

uint64_t sub_19D35F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a1 + 56);
  v11 = *(v9 + 72);
  v12 = (*v9 + v11);
  if (v12 > *v9 + *(v9 + 8) - 4)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v13 = *v12;
  *(v9 + 72) = v11 + 4;
  if (v13 <= 1)
  {
LABEL_4:
    v14 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v14;
    *(a1 + 84) = 0x2000000001;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v13 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v9, 1);
  if (v13 == 3 || v13 == 5)
  {
LABEL_5:
    (*(*v10 + 16))(v10, v9);
  }

LABEL_6:
  v15 = *(a1 + 88);
  if (v15 != sub_19D41C528())
  {
    sub_19D41C548(33);
  }

  v16 = *(a1 + 84);
  if ((v16 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v16 != 3)
  {
    sub_19D41C548(35);
  }

  v17 = *(a1 + 96);
  v18 = *v17;
  v19 = v17[1];
  v20 = (*v17 + *(v17 + 18));
  if (v20 > *v17 + v19 - 4)
  {
    *a1 = 0;
    v21 = (v18 + *(v17 + 18));
    if (v21 <= v18 + v19 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v23 = (v18 + *(v17 + 18));
    v61 = a5;
    if (v23 <= v18 + v19 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v20;
  v24 = *(v17 + 18) + 4;
  *(v17 + 18) = v24;
  v18 = *v17;
  v19 = v17[1];
  v21 = (*v17 + v24);
  if (v21 > *v17 + v19 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v21;
  v22 = *(v17 + 18) + 4;
  *(v17 + 18) = v22;
  v23 = (*v17 + v22);
  v61 = a5;
  if (v23 > *v17 + v17[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  *(a1 + 8) = *v23;
  *(v17 + 18) += 4;
LABEL_16:
  sub_19D2A3E48(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v25 = (a3 + 8);
  sub_19D35C0B8(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v26 = *(a1 + 96);
  v27 = *(v26 + 72);
  v28 = (*v26 + v27);
  if (v28 <= *v26 + *(v26 + 8) - 4)
  {
    v29 = *v28;
    *(v26 + 72) = v27 + 4;
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        memset(&__str, 0, sizeof(__str));
        sub_19D2CA328(*(a1 + 96), &__str);
        v31 = *(a1 + 96);
        v32 = *(v31 + 72);
        v33 = (*v31 + v32);
        if (v33 <= *v31 + *(v31 + 8) - 4)
        {
          v34 = *v33;
          *(v31 + 72) = v32 + 4;
        }

        else
        {
          v34 = 0;
        }

        p_str = &__str;
        *(sub_19D35FC30(a2, &__str.__r_.__value_.__l.__data_) + 14) = v34;
        v35 = *v25;
        if (!*v25)
        {
LABEL_29:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v36 = v35;
            v37 = *(v35 + 8);
            if (v34 >= v37)
            {
              break;
            }

            v35 = *v36;
            if (!*v36)
            {
              goto LABEL_29;
            }
          }

          if (v37 >= v34)
          {
            break;
          }

          v35 = v36[1];
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        std::string::operator=((v36 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v38 = (a4 + 8);
  sub_19D2AD8CC(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v39 = (v61 + 8);
  sub_19D2AD8CC(v61, *(v61 + 8));
  *v61 = v61 + 8;
  *(v61 + 16) = 0;
  *(v61 + 8) = 0;
  v40 = *(a1 + 96);
  v41 = *(v40 + 72);
  v42 = (*v40 + v41);
  if (v42 <= *v40 + *(v40 + 8) - 4)
  {
    v43 = *v42;
    *(v40 + 72) = v41 + 4;
    v63 = v43;
    if (v43 >= 1)
    {
      v44 = 0;
      do
      {
        v45 = *(a1 + 96);
        v46 = *(v45 + 18);
        v47 = *v45;
        v48 = (*v45 + v46);
        v49 = *v45 + v45[1] - 4;
        if (v48 <= v49)
        {
          v50 = *v48;
          v46 += 4;
          *(v45 + 18) = v46;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
LABEL_38:
            v52 = *v51;
            *(v45 + 18) = v46 + 4;
            v53 = *v38;
            if (*v38)
            {
              goto LABEL_44;
            }

LABEL_47:
            operator new();
          }
        }

        else
        {
          v50 = 0;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
            goto LABEL_38;
          }
        }

        v52 = 0;
        v53 = *v38;
        if (!*v38)
        {
          goto LABEL_47;
        }

        while (1)
        {
LABEL_44:
          while (1)
          {
            v54 = v53;
            v55 = *(v53 + 7);
            if (v50 >= v55)
            {
              break;
            }

            v53 = *v54;
            if (!*v54)
            {
              goto LABEL_47;
            }
          }

          if (v55 >= v50)
          {
            break;
          }

          v53 = v54[1];
          if (!v53)
          {
            goto LABEL_47;
          }
        }

        *(v54 + 8) = v52;
        v56 = *v39;
        if (!*v39)
        {
LABEL_54:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v57 = v56;
            v58 = *(v56 + 7);
            if (v52 >= v58)
            {
              break;
            }

            v56 = *v57;
            if (!*v57)
            {
              goto LABEL_54;
            }
          }

          if (v58 >= v52)
          {
            break;
          }

          v56 = v57[1];
          if (!v56)
          {
            goto LABEL_54;
          }
        }

        *(v57 + 8) = v50;
        ++v44;
      }

      while (v44 != v63);
      v40 = *(a1 + 96);
    }
  }

  return (*(**(a1 + 40) + 64))(*(a1 + 40), v40, a1 + 64, *(a1 + 72));
}

void sub_19D35FC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D35FC30(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D35FDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D35FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a1 + 56);
  v11 = *(v9 + 72);
  v12 = (*v9 + v11);
  if (v12 > *v9 + *(v9 + 8) - 4)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v13 = *v12;
  *(v9 + 72) = v11 + 4;
  if (v13 <= 1)
  {
LABEL_4:
    v14 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v14;
    *(a1 + 84) = 0x2000000001;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v13 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v9, 1);
  if (v13 == 3 || v13 == 5)
  {
LABEL_5:
    (*(*v10 + 16))(v10, v9);
  }

LABEL_6:
  v15 = *(a1 + 88);
  if (v15 != sub_19D41C520())
  {
    sub_19D41C548(33);
  }

  v16 = *(a1 + 84);
  if ((v16 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v16 != 3)
  {
    sub_19D41C548(35);
  }

  v17 = *(a1 + 96);
  v18 = *v17;
  v19 = v17[1];
  v20 = (*v17 + *(v17 + 18));
  if (v20 > *v17 + v19 - 4)
  {
    *a1 = 0;
    v21 = (v18 + *(v17 + 18));
    if (v21 <= v18 + v19 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v23 = (v18 + *(v17 + 18));
    v61 = a5;
    if (v23 <= v18 + v19 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v20;
  v24 = *(v17 + 18) + 4;
  *(v17 + 18) = v24;
  v18 = *v17;
  v19 = v17[1];
  v21 = (*v17 + v24);
  if (v21 > *v17 + v19 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v21;
  v22 = *(v17 + 18) + 4;
  *(v17 + 18) = v22;
  v23 = (*v17 + v22);
  v61 = a5;
  if (v23 > *v17 + v17[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  *(a1 + 8) = *v23;
  *(v17 + 18) += 4;
LABEL_16:
  sub_19D2A3E48(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v25 = (a3 + 8);
  sub_19D35C0B8(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v26 = *(a1 + 96);
  v27 = *(v26 + 72);
  v28 = (*v26 + v27);
  if (v28 <= *v26 + *(v26 + 8) - 4)
  {
    v29 = *v28;
    *(v26 + 72) = v27 + 4;
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        memset(&__str, 0, sizeof(__str));
        sub_19D2CA328(*(a1 + 96), &__str);
        v31 = *(a1 + 96);
        v32 = *(v31 + 72);
        v33 = (*v31 + v32);
        if (v33 <= *v31 + *(v31 + 8) - 4)
        {
          v34 = *v33;
          *(v31 + 72) = v32 + 4;
        }

        else
        {
          v34 = 0;
        }

        p_str = &__str;
        *(sub_19D35FC30(a2, &__str.__r_.__value_.__l.__data_) + 14) = v34;
        v35 = *v25;
        if (!*v25)
        {
LABEL_29:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v36 = v35;
            v37 = *(v35 + 8);
            if (v34 >= v37)
            {
              break;
            }

            v35 = *v36;
            if (!*v36)
            {
              goto LABEL_29;
            }
          }

          if (v37 >= v34)
          {
            break;
          }

          v35 = v36[1];
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        std::string::operator=((v36 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v38 = (a4 + 8);
  sub_19D2AD8CC(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v39 = (v61 + 8);
  sub_19D2AD8CC(v61, *(v61 + 8));
  *v61 = v61 + 8;
  *(v61 + 16) = 0;
  *(v61 + 8) = 0;
  v40 = *(a1 + 96);
  v41 = *(v40 + 72);
  v42 = (*v40 + v41);
  if (v42 <= *v40 + *(v40 + 8) - 4)
  {
    v43 = *v42;
    *(v40 + 72) = v41 + 4;
    v63 = v43;
    if (v43 >= 1)
    {
      v44 = 0;
      do
      {
        v45 = *(a1 + 96);
        v46 = *(v45 + 18);
        v47 = *v45;
        v48 = (*v45 + v46);
        v49 = *v45 + v45[1] - 4;
        if (v48 <= v49)
        {
          v50 = *v48;
          v46 += 4;
          *(v45 + 18) = v46;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
LABEL_38:
            v52 = *v51;
            *(v45 + 18) = v46 + 4;
            v53 = *v38;
            if (*v38)
            {
              goto LABEL_44;
            }

LABEL_47:
            operator new();
          }
        }

        else
        {
          v50 = 0;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
            goto LABEL_38;
          }
        }

        v52 = 0;
        v53 = *v38;
        if (!*v38)
        {
          goto LABEL_47;
        }

        while (1)
        {
LABEL_44:
          while (1)
          {
            v54 = v53;
            v55 = *(v53 + 7);
            if (v50 >= v55)
            {
              break;
            }

            v53 = *v54;
            if (!*v54)
            {
              goto LABEL_47;
            }
          }

          if (v55 >= v50)
          {
            break;
          }

          v53 = v54[1];
          if (!v53)
          {
            goto LABEL_47;
          }
        }

        *(v54 + 8) = v52;
        v56 = *v39;
        if (!*v39)
        {
LABEL_54:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v57 = v56;
            v58 = *(v56 + 7);
            if (v52 >= v58)
            {
              break;
            }

            v56 = *v57;
            if (!*v57)
            {
              goto LABEL_54;
            }
          }

          if (v58 >= v52)
          {
            break;
          }

          v56 = v57[1];
          if (!v56)
          {
            goto LABEL_54;
          }
        }

        *(v57 + 8) = v50;
        ++v44;
      }

      while (v44 != v63);
      v40 = *(a1 + 96);
    }
  }

  return (*(**(a1 + 40) + 64))(*(a1 + 40), v40, a1 + 64, *(a1 + 72));
}

void sub_19D360458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D360474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a1 + 56);
  v11 = *(v9 + 72);
  v12 = (*v9 + v11);
  if (v12 > *v9 + *(v9 + 8) - 4)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v13 = *v12;
  *(v9 + 72) = v11 + 4;
  if (v13 <= 1)
  {
LABEL_4:
    v14 = *(a1 + 24);
    *(a1 + 64) = xmmword_19D4752B0;
    *(a1 + 80) = v14;
    *(a1 + 84) = 0x2000000001;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v13 - 2 > 3)
  {
    sub_19D41C548(38);
  }

  sub_19D35E50C((a1 + 64), v9, 1);
  if (v13 == 3 || v13 == 5)
  {
LABEL_5:
    (*(*v10 + 16))(v10, v9);
  }

LABEL_6:
  v15 = *(a1 + 88);
  if (v15 != sub_19D41C518())
  {
    sub_19D41C548(33);
  }

  v16 = *(a1 + 84);
  if ((v16 & 0xFFFFFFFE) != 2)
  {
    sub_19D41C548(34);
  }

  if (v16 != 3)
  {
    sub_19D41C548(35);
  }

  v17 = *(a1 + 96);
  v18 = *v17;
  v19 = v17[1];
  v20 = (*v17 + *(v17 + 18));
  if (v20 > *v17 + v19 - 4)
  {
    *a1 = 0;
    v21 = (v18 + *(v17 + 18));
    if (v21 <= v18 + v19 - 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a1 + 4) = 0;
    v23 = (v18 + *(v17 + 18));
    v61 = a5;
    if (v23 <= v18 + v19 - 4)
    {
      goto LABEL_12;
    }

LABEL_15:
    *(a1 + 8) = 0;
    goto LABEL_16;
  }

  *a1 = *v20;
  v24 = *(v17 + 18) + 4;
  *(v17 + 18) = v24;
  v18 = *v17;
  v19 = v17[1];
  v21 = (*v17 + v24);
  if (v21 > *v17 + v19 - 4)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(a1 + 4) = *v21;
  v22 = *(v17 + 18) + 4;
  *(v17 + 18) = v22;
  v23 = (*v17 + v22);
  v61 = a5;
  if (v23 > *v17 + v17[1] - 4)
  {
    goto LABEL_15;
  }

LABEL_12:
  *(a1 + 8) = *v23;
  *(v17 + 18) += 4;
LABEL_16:
  sub_19D2A3E48(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v25 = (a3 + 8);
  sub_19D35C0B8(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v26 = *(a1 + 96);
  v27 = *(v26 + 72);
  v28 = (*v26 + v27);
  if (v28 <= *v26 + *(v26 + 8) - 4)
  {
    v29 = *v28;
    *(v26 + 72) = v27 + 4;
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        memset(&__str, 0, sizeof(__str));
        sub_19D2CA328(*(a1 + 96), &__str);
        v31 = *(a1 + 96);
        v32 = *(v31 + 72);
        v33 = (*v31 + v32);
        if (v33 <= *v31 + *(v31 + 8) - 4)
        {
          v34 = *v33;
          *(v31 + 72) = v32 + 4;
        }

        else
        {
          v34 = 0;
        }

        p_str = &__str;
        *(sub_19D35FC30(a2, &__str.__r_.__value_.__l.__data_) + 14) = v34;
        v35 = *v25;
        if (!*v25)
        {
LABEL_29:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v36 = v35;
            v37 = *(v35 + 8);
            if (v34 >= v37)
            {
              break;
            }

            v35 = *v36;
            if (!*v36)
            {
              goto LABEL_29;
            }
          }

          if (v37 >= v34)
          {
            break;
          }

          v35 = v36[1];
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        std::string::operator=((v36 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v38 = (a4 + 8);
  sub_19D2AD8CC(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v39 = (v61 + 8);
  sub_19D2AD8CC(v61, *(v61 + 8));
  *v61 = v61 + 8;
  *(v61 + 16) = 0;
  *(v61 + 8) = 0;
  v40 = *(a1 + 96);
  v41 = *(v40 + 72);
  v42 = (*v40 + v41);
  if (v42 <= *v40 + *(v40 + 8) - 4)
  {
    v43 = *v42;
    *(v40 + 72) = v41 + 4;
    v63 = v43;
    if (v43 >= 1)
    {
      v44 = 0;
      do
      {
        v45 = *(a1 + 96);
        v46 = *(v45 + 18);
        v47 = *v45;
        v48 = (*v45 + v46);
        v49 = *v45 + v45[1] - 4;
        if (v48 <= v49)
        {
          v50 = *v48;
          v46 += 4;
          *(v45 + 18) = v46;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
LABEL_38:
            v52 = *v51;
            *(v45 + 18) = v46 + 4;
            v53 = *v38;
            if (*v38)
            {
              goto LABEL_44;
            }

LABEL_47:
            operator new();
          }
        }

        else
        {
          v50 = 0;
          v51 = (v47 + v46);
          if (v51 <= v49)
          {
            goto LABEL_38;
          }
        }

        v52 = 0;
        v53 = *v38;
        if (!*v38)
        {
          goto LABEL_47;
        }

        while (1)
        {
LABEL_44:
          while (1)
          {
            v54 = v53;
            v55 = *(v53 + 7);
            if (v50 >= v55)
            {
              break;
            }

            v53 = *v54;
            if (!*v54)
            {
              goto LABEL_47;
            }
          }

          if (v55 >= v50)
          {
            break;
          }

          v53 = v54[1];
          if (!v53)
          {
            goto LABEL_47;
          }
        }

        *(v54 + 8) = v52;
        v56 = *v39;
        if (!*v39)
        {
LABEL_54:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v57 = v56;
            v58 = *(v56 + 7);
            if (v52 >= v58)
            {
              break;
            }

            v56 = *v57;
            if (!*v57)
            {
              goto LABEL_54;
            }
          }

          if (v58 >= v52)
          {
            break;
          }

          v56 = v57[1];
          if (!v56)
          {
            goto LABEL_54;
          }
        }

        *(v57 + 8) = v50;
        ++v44;
      }

      while (v44 != v63);
      v40 = *(a1 + 96);
    }
  }

  return (*(**(a1 + 40) + 64))(*(a1 + 40), v40, a1 + 64, *(a1 + 72));
}

void sub_19D360AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D360AFC(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_19D360B74(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_19D360B74(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_19D360EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void ***sub_19D360EF4(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_19D360F7C(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_19D2C3F28(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_19D36107C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

void sub_19D361090(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = &v4[v2 - v7];
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_19D361178(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 2;
    if (v1 != v2)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    if (v4 < v3)
    {
      v7 = 4 * v6;
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

float *sub_19D361270(float *result, float *a2, float *a3)
{
  if (a3 != a2)
  {
    while (1)
    {
      v3 = (a3 - result) >> 3;
      if (v3 < 2)
      {
        return result;
      }

      if (v3 == 3)
      {
        v46 = result[3];
        v47 = result[1];
        v48 = *(a3 - 1);
        if (v46 <= v47)
        {
          if (v48 > v46)
          {
            v58 = *(result + 2);
            result[2] = *(a3 - 2);
            *(a3 - 2) = v58;
            result[3] = v48;
            *(a3 - 1) = v46;
            v59 = result[3];
            v60 = result[1];
            if (v59 > v60)
            {
              v61 = *result;
              *result = result[2];
              *(result + 2) = v61;
              result[1] = v59;
              result[3] = v60;
            }
          }
        }

        else
        {
          v49 = *result;
          if (v48 <= v46)
          {
            *result = result[2];
            *(result + 2) = v49;
            result[1] = v46;
            result[3] = v47;
            v62 = *(a3 - 1);
            if (v62 > v47)
            {
              result[2] = *(a3 - 2);
              *(a3 - 2) = v49;
              result[3] = v62;
              *(a3 - 1) = v47;
            }
          }

          else
          {
            *result = *(a3 - 2);
            *(a3 - 2) = v49;
            result[1] = v48;
            *(a3 - 1) = v47;
          }
        }

        return result;
      }

      if (v3 == 2)
      {
        v50 = *(a3 - 1);
        v51 = result[1];
        if (v50 > v51)
        {
          v52 = *result;
          *result = *(a3 - 2);
          *(a3 - 2) = v52;
          result[1] = v50;
          *(a3 - 1) = v51;
        }

        return result;
      }

      if (v3 <= 7)
      {
        while (result != a3 - 2)
        {
          v53 = result;
          result += 2;
          if (v53 != a3 && result != a3)
          {
            v54 = result;
            v55 = v53;
            do
            {
              if (v54[1] > v55[1])
              {
                v55 = v54;
              }

              v54 += 2;
            }

            while (v54 != a3);
            if (v55 != v53)
            {
              v56 = *v53;
              *v53 = *v55;
              *v55 = v56;
              v57 = *(v53 + 1);
              v53[1] = v55[1];
              *(v55 + 1) = v57;
            }
          }
        }

        return result;
      }

      v4 = &result[2 * ((a3 - result) >> 4)];
      v5 = *(v4 + 4);
      v6 = result[1];
      v7 = *(a3 - 1);
      if (v5 > v6)
      {
        break;
      }

      if (v7 > v5)
      {
        v9 = *v4;
        *v4 = *(a3 - 2);
        *(a3 - 2) = v9;
        *(v4 + 4) = v7;
        *(a3 - 1) = v5;
        v10 = *(v4 + 4);
        v11 = result[1];
        if (v10 > v11)
        {
          v12 = *result;
          *result = *v4;
          *v4 = v12;
          result[1] = v10;
          *(v4 + 4) = v11;
        }

        goto LABEL_16;
      }

      v14 = 0;
      v15 = (a3 - 2);
      v16 = result[1];
      v17 = *(v4 + 4);
      if (v16 <= v17)
      {
LABEL_27:
        v26 = v15;
        while (1)
        {
          v18 = v26 - 8;
          if ((v26 - 8) == result)
          {
            break;
          }

          v27 = *(v26 - 4);
          v26 -= 8;
          if (v27 > v17)
          {
            v28 = *result;
            *result = *v18;
            *v18 = v28;
            result[1] = v27;
            *(v18 + 4) = v16;
            if (v14)
            {
              v14 = 2;
            }

            else
            {
              v14 = 1;
            }

            v19 = (result + 2);
            if ((result + 2) < v18)
            {
              goto LABEL_18;
            }

            goto LABEL_34;
          }
        }

        v35 = result + 2;
        v36 = *(a3 - 1);
        if (v16 <= v36)
        {
          if (v35 == v15)
          {
            return result;
          }

          while (1)
          {
            v37 = v35[1];
            if (v16 > v37)
            {
              break;
            }

            v35 += 2;
            if (v35 == v15)
            {
              return result;
            }
          }

          v41 = *v35;
          *v35 = *(a3 - 2);
          *(a3 - 2) = v41;
          v35[1] = v36;
          *(a3 - 1) = v37;
          v35 += 2;
        }

        if (v35 == v15)
        {
          return result;
        }

        while (1)
        {
          v42 = result[1];
          do
          {
            v32 = v35;
            v43 = v35[1];
            v35 += 2;
          }

          while (v42 <= v43);
          do
          {
            v44 = *(v15 - 4);
            v15 -= 8;
          }

          while (v42 > v44);
          if (v32 >= v15)
          {
            break;
          }

          v45 = *v32;
          *v32 = *v15;
          *v15 = v45;
          *(v32 + 4) = v44;
          *(v15 + 4) = v43;
        }

        if (v32 > a2)
        {
          return result;
        }

        goto LABEL_64;
      }

LABEL_17:
      v18 = v15;
      v19 = (result + 2);
      if ((result + 2) >= v18)
      {
LABEL_34:
        v22 = v19;
      }

      else
      {
LABEL_18:
        v20 = v19;
        while (1)
        {
          v21 = *(v4 + 4);
          do
          {
            v22 = v20;
            v23 = *(v20 + 4);
            v20 += 8;
          }

          while (v23 > v21);
          do
          {
            v24 = *(v18 - 4);
            v18 -= 8;
          }

          while (v24 <= v21);
          if (v22 >= v18)
          {
            break;
          }

          v25 = *v22;
          *v22 = *v18;
          *v18 = v25;
          *(v22 + 4) = v24;
          *(v18 + 4) = v23;
          ++v14;
          if (v4 == v22)
          {
            v4 = v18;
          }
        }
      }

      if (v22 != v4)
      {
        v29 = *(v4 + 4);
        v30 = *(v22 + 4);
        if (v29 > v30)
        {
          v31 = *v22;
          *v22 = *v4;
          *v4 = v31;
          *(v22 + 4) = v29;
          *(v4 + 4) = v30;
          ++v14;
        }
      }

      if (v22 == a2)
      {
        return result;
      }

      if (!v14)
      {
        if (v22 <= a2)
        {
          v38 = v22 + 8;
          while (v38 != a3)
          {
            v39 = *(v38 + 4);
            v40 = *(v38 - 4);
            v38 += 8;
            if (v39 > v40)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          while (v19 != v22)
          {
            v33 = *(v19 + 4);
            v34 = *(v19 - 4);
            v19 += 8;
            if (v33 > v34)
            {
              goto LABEL_40;
            }
          }
        }

        return result;
      }

LABEL_40:
      if (v22 <= a2)
      {
        v32 = v22 + 8;
      }

      else
      {
        a3 = v22;
        v32 = result;
      }

LABEL_64:
      result = v32;
      if (a3 == a2)
      {
        return result;
      }
    }

    v8 = *result;
    if (v7 <= v5)
    {
      *result = *v4;
      *v4 = v8;
      result[1] = v5;
      *(v4 + 4) = v6;
      v13 = *(a3 - 1);
      if (v13 <= v6)
      {
        goto LABEL_16;
      }

      *v4 = *(a3 - 2);
      *(a3 - 2) = v8;
      *(v4 + 4) = v13;
    }

    else
    {
      *result = *(a3 - 2);
      *(a3 - 2) = v8;
      result[1] = v7;
    }

    *(a3 - 1) = v6;
LABEL_16:
    v14 = 1;
    v15 = (a3 - 2);
    v16 = result[1];
    v17 = *(v4 + 4);
    if (v16 <= v17)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  return result;
}

int *sub_19D361714(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v81 = *(a2 - 1);
      v82 = v10[1];
      if (v81 > v82)
      {
        v83 = *v10;
        *v10 = *(a2 - 2);
        *(a2 - 2) = v83;
        v10[1] = v81;
        *(a2 - 1) = v82;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v94 = v10 + 2;
      v96 = v10 == a2 || v94 == a2;
      if (a5)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v10 + 1;
          v99 = v10;
          do
          {
            v101 = v99[3];
            v102 = v99[1];
            v99 = v94;
            if (v101 > v102)
            {
              v103 = *v94;
              v104 = v97;
              v105 = v98;
              do
              {
                v105[1] = *(v105 - 1);
                v105[2] = *v105;
                if (!v104)
                {
                  v100 = v10;
                  goto LABEL_126;
                }

                v106 = *(v105 - 2);
                v105 -= 2;
                v104 += 8;
              }

              while (v101 > v106);
              v100 = v105 + 1;
LABEL_126:
              *v100 = v103;
              v100[1] = v101;
            }

            v94 = v99 + 2;
            v98 += 2;
            v97 -= 8;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v96)
      {
        v114 = v10 + 1;
        do
        {
          v115 = v9[3];
          v116 = v9[1];
          v9 = v94;
          if (v115 > v116)
          {
            v117 = *v94;
            v118 = v114;
            do
            {
              v118[1] = *(v118 - 1);
              v118[2] = *v118;
              v119 = *(v118 - 2);
              v118 -= 2;
            }

            while (v115 > v119);
            v118[1] = v117;
            v118[2] = v115;
          }

          v94 = v9 + 2;
          v114 += 2;
        }

        while (v9 + 2 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_19D362554(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[2 * (v11 >> 1)];
    v13 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = v10[1];
      v18 = v12[1];
      if (v17 > v18)
      {
        v19 = *v12;
        if (v13 > v17)
        {
          *v12 = *(a2 - 2);
          *(a2 - 2) = v19;
          v12[1] = v13;
          goto LABEL_37;
        }

        *v12 = *v10;
        *v10 = v19;
        v12[1] = v17;
        v10[1] = v18;
        v37 = *(a2 - 1);
        if (v37 > v18)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v19;
          v10[1] = v37;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v13 <= v17)
      {
        goto LABEL_38;
      }

      v24 = *v10;
      *v10 = *(a2 - 2);
      *(a2 - 2) = v24;
      v10[1] = v13;
      *(a2 - 1) = v17;
      v25 = v10[1];
      v26 = v12[1];
      if (v25 <= v26)
      {
        goto LABEL_38;
      }

      v27 = *v12;
      *v12 = *v10;
      *v10 = v27;
      v12[1] = v25;
      v10[1] = v26;
      --a4;
      if (a5)
      {
        goto LABEL_39;
      }

LABEL_63:
      v39 = v10[1];
      v38 = *v10;
      if (*(v10 - 1) > v39)
      {
        goto LABEL_64;
      }

      if (v39 <= *(a2 - 1))
      {
        v72 = v10 + 2;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v73 = v72[1];
          v72 += 2;
        }

        while (v39 <= v73);
      }

      else
      {
        v70 = v10;
        do
        {
          v10 = v70 + 2;
          v71 = v70[3];
          v70 += 2;
        }

        while (v39 <= v71);
      }

      v74 = a2;
      if (v10 < a2)
      {
        v75 = a2;
        do
        {
          v74 = (v75 - 2);
          v76 = *(v75 - 1);
          v75 -= 2;
        }

        while (v39 > v76);
      }

      while (v10 < v74)
      {
        v77 = *v10;
        *v10 = *v74;
        *v74 = v77;
        v78 = *(v10 + 1);
        v10[1] = v74[1];
        *(v74 + 1) = v78;
        do
        {
          v79 = v10[3];
          v10 += 2;
        }

        while (v39 <= v79);
        do
        {
          v80 = *(v74 - 1);
          v74 -= 2;
        }

        while (v39 > v80);
      }

      if (v10 - 2 != v9)
      {
        *v9 = *(v10 - 2);
        v9[1] = *(v10 - 1);
      }

      a5 = 0;
      *(v10 - 2) = v38;
      *(v10 - 1) = v39;
    }

    else
    {
      v14 = v12[1];
      v15 = v10[1];
      if (v14 <= v15)
      {
        if (v13 > v14)
        {
          v20 = *v12;
          *v12 = *(a2 - 2);
          *(a2 - 2) = v20;
          v12[1] = v13;
          *(a2 - 1) = v14;
          v21 = v12[1];
          v22 = v10[1];
          if (v21 > v22)
          {
            v23 = *v10;
            *v10 = *v12;
            *v12 = v23;
            v10[1] = v21;
            v12[1] = v22;
          }
        }
      }

      else
      {
        v16 = *v10;
        if (v13 <= v14)
        {
          *v10 = *v12;
          *v12 = v16;
          v10[1] = v14;
          v12[1] = v15;
          v28 = *(a2 - 1);
          if (v28 <= v15)
          {
            goto LABEL_29;
          }

          *v12 = *(a2 - 2);
          *(a2 - 2) = v16;
          v12[1] = v28;
        }

        else
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v16;
          v10[1] = v13;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v29 = *(v12 - 1);
      v30 = v10[3];
      v31 = *(a2 - 3);
      if (v29 <= v30)
      {
        if (v31 > v29)
        {
          v33 = *(v12 - 2);
          *(v12 - 2) = *(a2 - 4);
          *(a2 - 4) = v33;
          *(v12 - 1) = v31;
          *(a2 - 3) = v29;
          v34 = *(v12 - 1);
          v35 = v10[3];
          if (v34 > v35)
          {
            v36 = *(v10 + 2);
            v10[2] = *(v12 - 2);
            *(v12 - 2) = v36;
            v10[3] = v34;
            *(v12 - 1) = v35;
          }
        }
      }

      else
      {
        v32 = *(v10 + 2);
        if (v31 <= v29)
        {
          v10[2] = *(v12 - 2);
          *(v12 - 2) = v32;
          v10[3] = v29;
          *(v12 - 1) = v30;
          v40 = *(a2 - 3);
          if (v40 <= v30)
          {
            goto LABEL_43;
          }

          *(v12 - 2) = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v12 - 1) = v40;
        }

        else
        {
          *(v10 + 2) = *(a2 - 4);
          *(a2 - 4) = v32;
          v10[3] = v31;
        }

        *(a2 - 3) = v30;
      }

LABEL_43:
      v41 = v12[3];
      v42 = v10[5];
      v43 = *(a2 - 5);
      if (v41 <= v42)
      {
        if (v43 > v41)
        {
          v45 = *(v12 + 2);
          *(v12 + 2) = *(a2 - 6);
          *(a2 - 6) = v45;
          v12[3] = v43;
          *(a2 - 5) = v41;
          v46 = v12[3];
          v47 = v10[5];
          if (v46 > v47)
          {
            v48 = *(v10 + 4);
            v10[4] = v12[2];
            *(v12 + 2) = v48;
            v10[5] = v46;
            v12[3] = v47;
          }
        }
      }

      else
      {
        v44 = *(v10 + 4);
        if (v43 <= v41)
        {
          v10[4] = v12[2];
          *(v12 + 2) = v44;
          v10[5] = v41;
          v12[3] = v42;
          v49 = *(a2 - 5);
          if (v49 <= v42)
          {
            goto LABEL_52;
          }

          *(v12 + 2) = *(a2 - 6);
          *(a2 - 6) = v44;
          v12[3] = v49;
        }

        else
        {
          *(v10 + 4) = *(a2 - 6);
          *(a2 - 6) = v44;
          v10[5] = v43;
        }

        *(a2 - 5) = v42;
      }

LABEL_52:
      v50 = v12[1];
      v51 = *(v12 - 1);
      v52 = v12[3];
      if (v50 <= v51)
      {
        v53 = *v12;
        if (v52 <= v50)
        {
          goto LABEL_58;
        }

        v54 = v12[2];
        *v12 = v54;
        v12[2] = v53;
        v12[1] = v52;
        v12[3] = v50;
        if (v52 > v51)
        {
          v53 = *(v12 - 2);
          *(v12 - 2) = v54;
          *v12 = v53;
          *(v12 - 1) = v52;
          v12[1] = v51;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v53 = *(v12 - 2);
      if (v52 > v50)
      {
        *(v12 - 2) = v12[2];
        v12[2] = v53;
        *(v12 - 1) = v52;
        v12[3] = v51;
        v53 = *v12;
LABEL_58:
        v51 = v50;
        goto LABEL_62;
      }

      *(v12 - 2) = *v12;
      *v12 = v53;
      *(v12 - 1) = v50;
      v12[1] = v51;
      if (v52 > v51)
      {
        v54 = v12[2];
        *v12 = v54;
        v12[2] = v53;
        v12[1] = v52;
        v12[3] = v51;
LABEL_61:
        v51 = v52;
        v53 = v54;
      }

LABEL_62:
      v55 = *v10;
      *v10 = v53;
      *v12 = v55;
      v56 = *(v10 + 1);
      v10[1] = v51;
      *(v12 + 1) = v56;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v38 = *v10;
      v39 = v10[1];
LABEL_64:
      v57 = v10;
      do
      {
        v58 = v57;
        v57 += 2;
      }

      while (v58[3] > v39);
      v59 = a2;
      if (v58 == v10)
      {
        v62 = a2;
        while (v57 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 > v39)
          {
            goto LABEL_72;
          }
        }

        v60 = v62;
        v10 = v57;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 <= v39);
LABEL_72:
        v10 = v57;
        if (v57 < v60)
        {
          v64 = v60;
          do
          {
            v65 = *v10;
            *v10 = *v64;
            *v64 = v65;
            v66 = *(v10 + 1);
            v10[1] = v64[1];
            *(v64 + 1) = v66;
            do
            {
              v67 = v10[3];
              v10 += 2;
            }

            while (v67 > v39);
            do
            {
              v68 = *(v64 - 1);
              v64 -= 2;
            }

            while (v68 <= v39);
          }

          while (v10 < v64);
        }
      }

      if (v10 - 2 != v9)
      {
        *v9 = *(v10 - 2);
        v9[1] = *(v10 - 1);
      }

      *(v10 - 2) = v38;
      *(v10 - 1) = v39;
      if (v57 < v60)
      {
        goto LABEL_83;
      }

      v69 = sub_19D362144(v9, v10 - 2);
      result = sub_19D362144(v10, a2);
      if (result)
      {
        a2 = (v10 - 2);
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_83:
        result = sub_19D361714(v9, v10 - 2, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v88 = v10 + 3;
      v89 = v10[3];
      v90 = v10 + 1;
      v91 = v10[1];
      v92 = v10[5];
      if (v89 <= v91)
      {
        if (v92 > v89)
        {
          v111 = *(v10 + 2);
          v112 = *(v10 + 4);
          *(v10 + 2) = v112;
          *(v10 + 4) = v111;
          v10[3] = v92;
          v10[5] = v89;
          if (v92 > v91)
          {
            v113 = *v10;
            *v10 = v112;
            v10[2] = v113;
            goto LABEL_156;
          }

LABEL_157:
          v92 = v89;
        }
      }

      else
      {
        v93 = *v10;
        if (v92 > v89)
        {
          *v10 = v10[4];
          v10[4] = v93;
          goto LABEL_155;
        }

        *v10 = v10[2];
        v10[2] = v93;
        v10[1] = v89;
        v10[3] = v91;
        if (v92 > v91)
        {
          v10[2] = v10[4];
          v10[4] = v93;
          v90 = v10 + 3;
LABEL_155:
          v88 = v10 + 5;
          v89 = v91;
LABEL_156:
          *v90 = v92;
          *v88 = v91;
          goto LABEL_157;
        }
      }

      v121 = *(a2 - 1);
      if (v121 <= v92)
      {
        return result;
      }

      v122 = *(v10 + 4);
      *(v10 + 4) = *(a2 - 2);
      *(a2 - 2) = v122;
      v10[5] = v121;
      *(a2 - 1) = v92;
      v108 = v10[5];
      v123 = v10[3];
      if (v108 <= v123)
      {
        return result;
      }

      v124 = *(v10 + 2);
      v125 = *(v10 + 4);
      *(v10 + 2) = v125;
      *(v10 + 4) = v124;
      v10[3] = v108;
      v10[5] = v123;
      v109 = v10[1];
      if (v108 <= v109)
      {
        return result;
      }

      v126 = *v10;
      *v10 = v125;
      v10[2] = v126;
LABEL_162:
      v10[1] = v108;
      v10[3] = v109;
      return result;
    }

    if (v11 == 5)
    {

      return sub_19D2B9538(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
    }

    goto LABEL_10;
  }

  v84 = v10[3];
  v85 = v10[1];
  v86 = *(a2 - 1);
  if (v84 <= v85)
  {
    if (v86 <= v84)
    {
      return result;
    }

    v107 = *(v10 + 2);
    *(v10 + 2) = *(a2 - 2);
    *(a2 - 2) = v107;
    v10[3] = v86;
    *(a2 - 1) = v84;
    v108 = v10[3];
    v109 = v10[1];
    if (v108 <= v109)
    {
      return result;
    }

    v110 = *v10;
    *v10 = v10[2];
    v10[2] = v110;
    goto LABEL_162;
  }

  v87 = *v10;
  if (v86 <= v84)
  {
    *v10 = v10[2];
    v10[2] = v87;
    v10[1] = v84;
    v10[3] = v85;
    v120 = *(a2 - 1);
    if (v120 <= v85)
    {
      return result;
    }

    *(v10 + 2) = *(a2 - 2);
    *(a2 - 2) = v87;
    v10[3] = v120;
  }

  else
  {
    *v10 = *(a2 - 2);
    *(a2 - 2) = v87;
    v10[1] = v86;
  }

  *(a2 - 1) = v85;
  return result;
}

BOOL sub_19D362144(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[3];
      v8 = a1[1];
      v9 = *(a2 - 1);
      if (v7 <= v8)
      {
        if (v9 <= v7)
        {
          return 1;
        }

        v23 = *(a1 + 2);
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        a1[3] = v9;
        *(a2 - 1) = v7;
        v24 = a1[3];
        v25 = a1[1];
        if (v24 <= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        a1[1] = v24;
        a1[3] = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = a1[2];
          *(a1 + 2) = v10;
          a1[1] = v7;
          a1[3] = v8;
          v33 = *(a2 - 1);
          if (v33 <= v8)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[3] = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[1] = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_19D2B9538(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

LABEL_14:
      v11 = a1[3];
      v12 = a1 + 1;
      v13 = a1[1];
      v14 = a1 + 5;
      v15 = a1[5];
      if (v11 <= v13)
      {
        if (v15 <= v11)
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 2);
        v28 = *(a1 + 4);
        *(a1 + 2) = v28;
        *(a1 + 4) = v27;
        a1[3] = v15;
        a1[5] = v11;
        if (v15 <= v13)
        {
          goto LABEL_34;
        }

        v29 = *a1;
        *a1 = v28;
        a1[2] = v29;
        v14 = a1 + 3;
      }

      else
      {
        v16 = *a1;
        if (v15 <= v11)
        {
          *a1 = a1[2];
          a1[2] = v16;
          a1[1] = v11;
          a1[3] = v13;
          if (v15 <= v13)
          {
LABEL_34:
            v34 = a1 + 6;
            if (a1 + 6 == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            v37 = a1 + 4;
            while (1)
            {
              v38 = v34[1];
              if (v38 > v37[1])
              {
                break;
              }

LABEL_43:
              v37 = v34;
              v35 += 8;
              v34 += 2;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *v34;
            v40 = v35;
            do
            {
              v41 = (a1 + v40);
              v41[6] = *(a1 + v40 + 16);
              v41[7] = *(a1 + v40 + 20);
              if (v40 == -16)
              {
                *a1 = v39;
                a1[1] = v38;
                if (++v36 != 8)
                {
                  goto LABEL_43;
                }

                return v34 + 2 == a2;
              }

              v40 -= 8;
            }

            while (v38 > v41[3]);
            v42 = a1 + v40;
            *(v42 + 6) = v39;
            *(v42 + 7) = v38;
            if (++v36 != 8)
            {
              goto LABEL_43;
            }

            return v34 + 2 == a2;
          }

          a1[2] = a1[4];
          a1[4] = v16;
          v12 = a1 + 3;
        }

        else
        {
          *a1 = a1[4];
          a1[4] = v16;
        }
      }

      *v12 = v15;
      *v14 = v13;
      goto LABEL_34;
    }

    v17 = a1 + 3;
    v18 = a1[3];
    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1[5];
    if (v18 <= v20)
    {
      if (v21 <= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 2);
      v31 = *(a1 + 4);
      *(a1 + 2) = v31;
      *(a1 + 4) = v30;
      a1[3] = v21;
      a1[5] = v18;
      if (v21 <= v20)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      a1[2] = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 <= v18)
      {
        *a1 = a1[2];
        a1[2] = v22;
        a1[1] = v18;
        a1[3] = v20;
        if (v21 <= v20)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v22;
        v19 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v22;
      }

      v17 = a1 + 5;
      v18 = v20;
    }

    *v19 = v21;
    *v17 = v20;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 <= v21)
    {
      return 1;
    }

    v44 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v44;
    a1[5] = v43;
    *(a2 - 1) = v21;
    v45 = a1[5];
    v46 = a1[3];
    if (v45 <= v46)
    {
      return 1;
    }

    v47 = *(a1 + 2);
    v48 = *(a1 + 4);
    *(a1 + 2) = v48;
    *(a1 + 4) = v47;
    a1[3] = v45;
    a1[5] = v46;
    v49 = a1[1];
    if (v45 <= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    a1[2] = v50;
    a1[1] = v45;
    a1[3] = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = a1[1];
  if (v4 <= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 2);
  *(a2 - 2) = v6;
  a1[1] = v4;
  *(a2 - 1) = v5;
  return 1;
}

int *sub_19D362554(uint64_t a1, int *a2, int *a3)
{
  if (a1 != a2)
  {
    v3 = (a2 - a1) >> 3;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = a1 + 8;
      v6 = v4;
      do
      {
        if (v4 >= v6)
        {
          v8 = (2 * (v6 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v9 = (v5 + 16 * v6);
          if (2 * (v6 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && v9[1] > v9[3])
          {
            v9 += 2;
            v8 = 2 * (v6 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v10 = (a1 + 8 * v6);
          v11 = v9[1];
          v12 = v10[1];
          if (v11 <= v12)
          {
            v13 = *v10;
            do
            {
              v14 = v10;
              v10 = v9;
              *v14 = *v9;
              v14[1] = v11;
              if (v4 < v8)
              {
                break;
              }

              v15 = (2 * v8) | 1;
              v9 = (v5 + 16 * v8);
              v16 = 2 * v8 + 2;
              if (v16 < v3 && v9[1] > v9[3])
              {
                v9 += 2;
                v15 = v16;
              }

              v11 = v9[1];
              v8 = v15;
            }

            while (v11 <= v12);
            *v10 = v13;
            v10[1] = v12;
          }
        }

        v7 = v6-- <= 0;
      }

      while (!v7);
    }

    v17 = a2;
    if (a2 == a3)
    {
LABEL_38:
      if (v3 < 2)
      {
        return v17;
      }

      while (1)
      {
        v33 = 0;
        v34 = *a1;
        v35 = *(a1 + 4);
        v36 = a1;
        do
        {
          v41 = &v36[2 * v33];
          v40 = v41 + 2;
          v42 = (2 * v33) | 1;
          v33 = 2 * v33 + 2;
          if (v33 < v3)
          {
            v37 = *(v41 + 3);
            v38 = *(v41 + 5);
            v39 = v41 + 4;
            if (v37 <= v38)
            {
              v33 = v42;
            }

            else
            {
              v40 = v39;
            }
          }

          else
          {
            v33 = v42;
          }

          *v36 = *v40;
          v36[1] = v40[1];
          v36 = v40;
        }

        while (v33 <= ((v3 - 2) >> 1));
        if (v40 == a2 - 2)
        {
          *v40 = v34;
        }

        else
        {
          *v40 = *(a2 - 2);
          v40[1] = *(a2 - 1);
          *(a2 - 2) = v34;
          *(a2 - 1) = v35;
          v43 = (v40 - a1 + 8) >> 3;
          v7 = v43 < 2;
          v44 = v43 - 2;
          if (v7)
          {
            goto LABEL_43;
          }

          v45 = v44 >> 1;
          v46 = a1 + 8 * v45;
          v47 = *(v46 + 4);
          v35 = *(v40 + 1);
          if (v47 <= v35)
          {
            goto LABEL_43;
          }

          v48 = *v40;
          do
          {
            v49 = v40;
            v40 = v46;
            *v49 = *v46;
            v49[1] = v47;
            if (!v45)
            {
              break;
            }

            v45 = (v45 - 1) >> 1;
            v46 = a1 + 8 * v45;
            v47 = *(v46 + 4);
          }

          while (v47 > v35);
          *v40 = v48;
        }

        *(v40 + 1) = v35;
LABEL_43:
        a2 -= 2;
        v7 = v3-- <= 2;
        if (v7)
        {
          return v17;
        }
      }
    }

    if (v3 < 2)
    {
      v18 = *(a1 + 4);
      v17 = a2;
      do
      {
        v19 = v17[1];
        if (v19 > v18)
        {
          v20 = *v17;
          *v17 = *a1;
          *a1 = v20;
          v17[1] = v18;
          *(a1 + 4) = v19;
          v18 = v19;
        }

        v17 += 2;
      }

      while (v17 != a3);
      goto LABEL_38;
    }

    v17 = a2;
    while (1)
    {
      v21 = v17[1];
      v22 = *(a1 + 4);
      if (v21 > v22)
      {
        v23 = *v17;
        *v17 = *a1;
        *a1 = v23;
        v17[1] = v22;
        *(a1 + 4) = v21;
        if ((a2 - a1) == 16 || *(a1 + 12) <= *(a1 + 20))
        {
          v24 = a1 + 8;
          v25 = 1;
          v26 = *(a1 + 12);
          if (v26 <= v21)
          {
LABEL_32:
            v27 = *a1;
            v28 = a1;
            do
            {
              v29 = v28;
              v28 = v24;
              *v29 = *v24;
              *(v29 + 4) = v26;
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v30 = (2 * v25) | 1;
              v24 = a1 + 8 + 16 * v25;
              v31 = 2 * v25 + 2;
              if (v31 < v3 && *(v24 + 4) > *(v24 + 12))
              {
                v24 += 8;
                v30 = v31;
              }

              v26 = *(v24 + 4);
              v25 = v30;
            }

            while (v26 <= v21);
            *v28 = v27;
            *(v28 + 4) = v21;
          }
        }

        else
        {
          v24 = a1 + 16;
          v25 = 2;
          v26 = *(a1 + 20);
          if (v26 <= v21)
          {
            goto LABEL_32;
          }
        }
      }

      v17 += 2;
      if (v17 == a3)
      {
        goto LABEL_38;
      }
    }
  }

  return a3;
}

void sub_19D3628E0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_19D2AE2B4();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_19D362A7C(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_19D2CAF54, a2, a3);
}

void sub_19D362AA8(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_19D362F00()
{
  if (qword_1EB0147D8 != -1)
  {
    sub_19D4546A4();
  }

  return byte_1EB0147D0;
}

void sub_19D362F40()
{
  if (qword_1EB0147E8 == -1)
  {
    v0 = qword_1EB0147E0;
    if (!qword_1EB0147E0)
    {
      return;
    }
  }

  else
  {
    sub_19D4546B8();
    v0 = qword_1EB0147E0;
    if (!qword_1EB0147E0)
    {
      return;
    }
  }

  off_1EB014870 = dlsym(v0, "NLModelContainerCreate");
  off_1EB014860 = dlsym(v0, "NLModelContainerCreateWithContentsOfURL");
  off_1EB014868 = dlsym(v0, "NLModelContainerCreateWithContainerData");
  qword_1EB014840 = dlsym(v0, "NLModelContainerGetType");
  qword_1EB014848 = dlsym(v0, "NLModelContainerGetSubtype");
  qword_1EB014850 = dlsym(v0, "NLModelContainerGetRevision");
  off_1EB014880 = dlsym(v0, "NLModelContainerCopyInfoDictionary");
  qword_1EB014858 = dlsym(v0, "NLModelContainerGetModelDataCount");
  off_1EB014878 = dlsym(v0, "NLModelContainerCopyModelDataAtIndex");
  v1 = dlsym(v0, "NLModelContainerWriteToURL");
  off_1EB014838 = v1;
  if (off_1EB014870)
  {
    v2 = off_1EB014860 == 0;
  }

  else
  {
    v2 = 1;
  }

  v11 = !v2 && off_1EB014868 != 0 && qword_1EB014840 != 0 && qword_1EB014848 != 0 && qword_1EB014850 != 0 && off_1EB014880 != 0 && qword_1EB014858 != 0 && off_1EB014878 != 0 && v1 != 0;
  byte_1EB0147D0 = v11;
}

void sub_19D3630F4()
{
  sub_19D43FDB8("/System/Library/PrivateFrameworks/CoreNLP.framework/CoreNLP", __p);
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  qword_1EB0147E0 = dlopen(v0, 261);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D36316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_19D36472C(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = *(a2 + 2496);
    v7 = *(a2 + 4 * v6);
    v8 = vdup_n_s32(0x9D2C5680);
    v9 = vdup_n_s32(0xEFC60000);
    __asm { FMOV            V3.2S, #-1.0 }

    do
    {
      v15 = (v6 + 1) % 0x270;
      v16 = *(a2 + 4 * v15);
      v17 = v16 & 0x7FFFFFFE | v7 & 0x80000000;
      if (v16)
      {
        v18 = -1727483681;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 ^ *(a2 + 4 * ((v6 + 397) % 0x270)) ^ (v17 >> 1);
      *(a2 + 4 * v6) = v19;
      if (v15 < 0x26F)
      {
        v6 = v15 + 1;
      }

      else
      {
        v6 = v15 - 623;
      }

      if (v15 >= 0xE3)
      {
        v20 = -227;
      }

      else
      {
        v20 = 397;
      }

      v7 = *(a2 + 4 * v6);
      v21 = *(a2 + 4 * (v20 + v15));
      if (v7)
      {
        v22 = -1727483681;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 ^ v21 ^ ((v7 & 0x7FFFFFFE | *(a2 + 4 * v15) & 0x80000000) >> 1);
      *(a2 + 4 * v15) = v23;
      v24 = veor_s8(vshr_n_u32(__PAIR64__(v19, v23), 0xBuLL), __PAIR64__(v19, v23));
      v25 = veor_s8(vand_s8(vshl_n_s32(v24, 7uLL), v8), v24);
      v26 = veor_s8(vand_s8(vshl_n_s32(v25, 0xFuLL), v9), v25);
      v27 = vmla_f32(_D3, vcvt_f32_u32(veor_s8(vshr_n_u32(v26, 0x12uLL), v26)), 0x3000000030000000);
      v28 = vaddv_f32(vmul_f32(v27, v27));
    }

    while (v28 > 1.0 || v28 == 0.0);
    *(a2 + 2496) = v6;
    v31 = v27;
    v29 = sqrtf((logf(v28) * -2.0) / v28);
    *(a1 + 8) = v29 * v31.f32[0];
    *(a1 + 12) = 1;
    v5 = vmuls_lane_f32(v29, v31, 1);
  }

  return *a3 + (a3[1] * v5);
}

uint64_t sub_19D3648E4(double *a1, double a2, double a3)
{
  if (a1[1] >= a2)
  {
    return 1;
  }

  v4 = a1[2];
  v5 = a1[3];
  if (__isinfd())
  {
    return 0;
  }

  v8 = vabdd_f64(a2, a3);
  if (v8 < v5)
  {
    return 1;
  }

  if (v8 >= (fabs(a3) + fabs(a2)) * (0.5 * v4))
  {
    return (v4 > 0.0) & (a2 == a3);
  }

  return 1;
}

BOOL sub_19D3649F0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(a1 + 80);
  return sub_19D374E94() - v2 >= v1;
}

char *sub_19D364A5C(void *a1, char *__s, va_list a3)
{
  v6 = strlen(__s) + 128;
  v7 = malloc_type_realloc(a1, v6, 0x100004077774924uLL);
  if (!v7)
  {
LABEL_10:
    abort();
  }

  v8 = v7;
  while (1)
  {
    v9 = vsnprintf(v8, v6, __s, a3);
    if ((v9 & 0x80000000) == 0 && v6 > v9)
    {
      return v8;
    }

    if (v9 >= 0)
    {
      v6 = (v9 + 1);
    }

    else
    {
      v6 = (3 * v6) >> 1;
    }

    v8 = malloc_type_realloc(v8, v6, 0x100004077774924uLL);
    if (!v8)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_19D365470(void *a1)
{
  *a1 = &unk_1F10B9720;
  sub_19D3676C0(a1);
  v2 = a1[154];
  if (v2)
  {
    a1[155] = v2;
    operator delete(v2);
  }

  v3 = a1[151];
  if (v3)
  {
    a1[152] = v3;
    operator delete(v3);
  }

  v4 = a1[148];
  if (v4)
  {
    a1[149] = v4;
    operator delete(v4);
  }

  v5 = a1[145];
  if (v5)
  {
    a1[146] = v5;
    operator delete(v5);
  }

  v6 = a1[142];
  if (v6)
  {
    a1[143] = v6;
    operator delete(v6);
  }

  v7 = a1[139];
  if (v7)
  {
    a1[140] = v7;
    operator delete(v7);
  }

  v8 = a1[136];
  if (v8)
  {
    a1[137] = v8;
    operator delete(v8);
  }

  v9 = a1[133];
  if (v9)
  {
    a1[134] = v9;
    operator delete(v9);
  }

  v10 = a1[130];
  if (v10)
  {
    a1[131] = v10;
    operator delete(v10);
  }

  v11 = a1[127];
  if (v11)
  {
    a1[128] = v11;
    operator delete(v11);
  }

  return sub_19D38640C(a1);
}

void sub_19D36556C(void *a1)
{
  v1 = sub_19D365470(a1);

  operator delete(v1);
}

uint64_t sub_19D365594(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v27 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10B9720;
  v24 = a1 + 1040;
  v25 = a1 + 1064;
  v22 = a1 + 1112;
  v23 = a1 + 1088;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0;
  v7 = __src[7];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *(a1 + 1320) = v7;
  v8 = __src[9];
  if (!v8)
  {
    v8 = 2;
  }

  *(a1 + 1328) = v8;
  v9 = __src[8];
  if (v9 <= 1)
  {
    v9 = 1;
  }

  *(a1 + 1336) = v9;
  v10 = __src[10];
  if (v10 <= 1)
  {
    v10 = 1;
  }

  *(a1 + 1344) = v10;
  v11 = __src[11];
  if (!v11)
  {
    v11 = 2;
  }

  *(a1 + 1352) = v11;
  v12 = *(__src + 32);
  LODWORD(__srca) = 1;
  v29 = vdupq_n_s64(1uLL);
  v31 = 0;
  v32 = 0;
  v30 = v12;
  sub_19D2AD9C0(a1 + 16, &__srca, &v33);
  v13 = *(__src + 64);
  v14 = (*(*a1 + 240))(a1);
  LODWORD(__srca) = 9;
  v29 = vdupq_n_s64(1uLL);
  v31 = 0;
  v32 = 0;
  v30 = v13 << v14;
  sub_19D2AD9C0(a1 + 40, &__srca, &v33);
  v15 = *(__src + 32);
  v16 = *(__src + 64);
  __srca = __src[56];
  sub_19D2C7DFC(a1 + 1016, &__srca);
  __srca = __src[57];
  sub_19D2C7DFC(v25, &__srca);
  __srca = __src[72];
  sub_19D2C7DFC(v24, &__srca);
  __srca = __src[73];
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[58];
  sub_19D2C7DFC(v22, &__srca);
  __srca = __src[59];
  sub_19D2C7DFC(a1 + 1160, &__srca);
  __srca = __src[74];
  sub_19D2C7DFC(a1 + 1136, &__srca);
  __srca = __src[75];
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v17 = v16 * v15;
  __srca = __src[56] + 4 * v17;
  sub_19D2C7DFC(a1 + 1016, &__srca);
  v18 = (v16 * v16);
  __srca = __src[57] + 4 * v18;
  sub_19D2C7DFC(v25, &__srca);
  __srca = __src[72] + 4 * v16;
  sub_19D2C7DFC(v24, &__srca);
  __srca = __src[73] + 4 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[58] + 4 * v17;
  sub_19D2C7DFC(v22, &__srca);
  __srca = __src[59] + 4 * v18;
  sub_19D2C7DFC(a1 + 1160, &__srca);
  __srca = __src[74] + 4 * v16;
  sub_19D2C7DFC(a1 + 1136, &__srca);
  __srca = __src[75] + 4 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  __srca = __src[56] + 8 * v17;
  sub_19D2C7DFC(a1 + 1016, &__srca);
  __srca = __src[57] + 8 * v18;
  sub_19D2C7DFC(v25, &__srca);
  __srca = __src[72] + 8 * v16;
  sub_19D2C7DFC(v24, &__srca);
  __srca = __src[73] + 8 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[58] + 8 * v17;
  sub_19D2C7DFC(v22, &__srca);
  __srca = __src[59] + 8 * v18;
  sub_19D2C7DFC(a1 + 1160, &__srca);
  __srca = __src[74] + 8 * v16;
  sub_19D2C7DFC(a1 + 1136, &__srca);
  __srca = __src[75] + 8 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v17 *= 3;
  __srca = __src[56] + 4 * v17;
  sub_19D2C7DFC(a1 + 1016, &__srca);
  __srca = __src[57] + 12 * v18;
  sub_19D2C7DFC(v25, &__srca);
  __srca = __src[72] + 12 * v16;
  sub_19D2C7DFC(v24, &__srca);
  __srca = __src[73] + 12 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[58] + 4 * v17;
  sub_19D2C7DFC(v22, &__srca);
  __srca = __src[59] + 12 * v18;
  sub_19D2C7DFC(a1 + 1160, &__srca);
  __srca = __src[74] + 12 * v16;
  sub_19D2C7DFC(a1 + 1136, &__srca);
  __srca = __src[75] + 12 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v19 = __src[61];
  __srca = __src[60];
  v29.i64[0] = __srca + 4 * v16;
  v29.i64[1] = __srca + 8 * v16;
  sub_19D369FD4((a1 + 1208), &__srca, &v30, 3uLL);
  __srca = v19;
  v29.i64[0] = v19 + 4 * v16;
  v29.i64[1] = v19 + 8 * v16;
  sub_19D369FD4((a1 + 1232), &__srca, &v30, 3uLL);
  *(a1 + 1256) = __src[62];
  *(a1 + 1264) = __src[63];
  v20 = *(__src + 80);
  if (v20 <= 0)
  {
    v20 = *(__src + 64);
  }

  *(a1 + 1272) = v20;
  return a1;
}

void sub_19D365B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12, void **a13, void **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v26 = *a9;
  if (*a9)
  {
    v20[155] = v26;
    operator delete(v26);
    v27 = *a10;
    if (!*a10)
    {
LABEL_3:
      v28 = *v24;
      if (!*v24)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v27 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  v20[152] = v27;
  operator delete(v27);
  v28 = *v24;
  if (!*v24)
  {
LABEL_4:
    v29 = *v23;
    if (!*v23)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v20[149] = v28;
  operator delete(v28);
  v29 = *v23;
  if (!*v23)
  {
LABEL_5:
    v30 = *v22;
    if (!*v22)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v20[146] = v29;
  operator delete(v29);
  v30 = *v22;
  if (!*v22)
  {
LABEL_6:
    v31 = *a11;
    if (!*a11)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v20[143] = v30;
  operator delete(v30);
  v31 = *a11;
  if (!*a11)
  {
LABEL_7:
    v32 = *a12;
    if (!*a12)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v20[140] = v31;
  operator delete(v31);
  v32 = *a12;
  if (!*a12)
  {
LABEL_8:
    v33 = *a14;
    if (!*a14)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20[137] = v32;
  operator delete(v32);
  v33 = *a14;
  if (!*a14)
  {
LABEL_9:
    v34 = *a13;
    if (!*a13)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v20[134] = v33;
  operator delete(v33);
  v34 = *a13;
  if (!*a13)
  {
LABEL_10:
    v35 = *v21;
    if (!*v21)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20[131] = v34;
  operator delete(v34);
  v35 = *v21;
  if (!*v21)
  {
LABEL_11:
    sub_19D38640C(v20);
    _Unwind_Resume(a1);
  }

LABEL_21:
  v20[128] = v35;
  operator delete(v35);
  sub_19D38640C(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_19D365D70(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v10 = *(*a2 + 40);
    v11 = a2;
    v12 = a1;
  }

  else
  {
    v10 = *(*a2 + 32);
    v11 = a2;
    v12 = a1;
  }

  return v10(v11, v12);
}

void sub_19D365F1C(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 280) = a3;
  v40 = *sub_19D387A2C(a1, 1);
  v39 = *sub_19D387D50(a1, 9);
  v6 = a1 + 232;
  if (*(a1 + 240) != a1 + 232)
  {
    sub_19D43026C();
  }

  v7 = (*(*a1 + 56))(a1, 1) * a3;
  v42 = v7 / (*(*a1 + 88))(a1);
  __p = (*(*a1 + 64))(a1, 9);
  v8 = (*(*a1 + 88))(a1);
  v41 = __p * a3 / v8;
  if (a2 >= 1)
  {
    v9 = 0;
    v11 = *(a1 + 160);
    v10 = *(a1 + 168);
    if (v11 != v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v12 = sub_19D387D50(a1, 9);
      sub_19D366718(a1, *v12);
      v13 = sub_19D387A2C(a1, 1);
      *v13 += 4 * v42;
      v14 = sub_19D387D50(a1, 9);
      *v14 += 4 * v41;
      if (++v9 == a2)
      {
        break;
      }

      v11 = *(a1 + 160);
      v10 = *(a1 + 168);
      while (v11 != v10)
      {
LABEL_7:
        v15 = *v11++;
        (*(*v15 + 16))(v15, a3);
      }
    }
  }

  if ((*(*a1 + 240))(a1))
  {
    v16 = sub_19D387A2C(a1, 1);
    *v16 -= 4 * v42;
    v17 = sub_19D387D50(a1, 9);
    *v17 -= 4 * v41;
    v18 = sub_19D387D50(a1, 9);
    *v18 += 4 * (__p / v8 / 2);
    v37 = *(a1 + 1288);
    *(a1 + 1288) = *(a1 + 1304);
    *(a1 + 1296) = *(a1 + 1312);
    v19 = *(a1 + 1016);
    v20 = *(a1 + 1024);
    if (v20 != v19)
    {
      if (((v20 - v19) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v21 = *(a1 + 1040);
    v22 = *(a1 + 1048);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v23 = *(a1 + 1064);
    v24 = *(a1 + 1072);
    if (v24 != v23)
    {
      if (((v24 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v25 = *(a1 + 1088);
    v26 = *(a1 + 1096);
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v27 = *(a1 + 1208);
    v28 = *(a1 + 1216);
    if (v28 != v27)
    {
      if (((v28 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v36 = *(a1 + 1256);
    sub_19D36A1F4((a1 + 1016), *(a1 + 1112), *(a1 + 1120), (*(a1 + 1120) - *(a1 + 1112)) >> 3);
    sub_19D36A1F4((a1 + 1040), *(a1 + 1136), *(a1 + 1144), (*(a1 + 1144) - *(a1 + 1136)) >> 3);
    sub_19D36A1F4((a1 + 1064), *(a1 + 1160), *(a1 + 1168), (*(a1 + 1168) - *(a1 + 1160)) >> 3);
    sub_19D36A1F4((a1 + 1088), *(a1 + 1184), *(a1 + 1192), (*(a1 + 1192) - *(a1 + 1184)) >> 3);
    sub_19D36A1F4((a1 + 1208), *(a1 + 1232), *(a1 + 1240), (*(a1 + 1240) - *(a1 + 1232)) >> 3);
    *(a1 + 1256) = *(a1 + 1264);
    if (a2 >= 1)
    {
      v29 = 0;
      do
      {
        v30 = *(a1 + 160);
        for (i = *(a1 + 168); v30 != i; ++v30)
        {
          (*(**v30 + 16))(*v30, a3);
        }

        v32 = sub_19D387D50(a1, 9);
        sub_19D366718(a1, *v32);
        v33 = sub_19D387A2C(a1, 1);
        *v33 -= 4 * v42;
        v34 = sub_19D387D50(a1, 9);
        *v34 -= 4 * v41;
        ++v29;
      }

      while (v29 != a2);
    }

    *(a1 + 1288) = v37;
    sub_19D36A1F4((a1 + 1016), 0, 0, 0);
    sub_19D36A1F4((a1 + 1040), 0, 0, 0);
    sub_19D36A1F4((a1 + 1064), 0, 0, 0);
    sub_19D36A1F4((a1 + 1088), 0, 0, 0);
    sub_19D36A1F4((a1 + 1208), 0, 0, 0);
    *(a1 + 1256) = v36;
  }

  for (j = *(a1 + 240); j != v6; j = *(j + 8))
  {
    sub_19D430284(*(a1 + 8), *(j + 16) * a3, *(j + 24));
    *(j + 24) = 0;
  }

  *sub_19D387A2C(a1, 1) = v40;
  *sub_19D387D50(a1, 9) = v39;

  sub_19D3865C8(a1);
}

void sub_19D366668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (v24)
  {
    operator delete(v24);
    if (!v23)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v23)
  {
    goto LABEL_3;
  }

  operator delete(v23);
  if (!v22)
  {
LABEL_4:
    if (!__p)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v22);
  if (!__p)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *sub_19D366718(void *a1, char *a2)
{
  result = (*(*a1 + 240))(a1);
  if (result)
  {
    if (*(a1 + 70) >= 1)
    {
      v5 = 0;
      v6 = a1[161];
      do
      {
        v7 = (*(*a1 + 80))(a1, 9);
        v8 = (*(*a1 + 88))(a1);
        memmove(a2, v6, v8 * v7);
        a2 += (*(*a1 + 64))(a1, 9);
        v9 = (*(*a1 + 80))(a1, 9);
        result = (*(*a1 + 88))(a1);
        v6 += result * v9;
        ++v5;
      }

      while (v5 < *(a1 + 70));
    }
  }

  else
  {
    v10 = a1[161];
    v11 = (*(*a1 + 80))(a1, 9);
    v12 = *(a1 + 70) * ((*(*a1 + 88))(a1) * v11);

    return memmove(a2, v10, v12);
  }

  return result;
}

void sub_19D366928(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*a1 + 80))(a1, 9);
  v7 = (*(*a1 + 88))(a1) * v6;
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a1 + 1272);
    v8 = (*(*a1 + 88))(a1) * v9;
  }

  v10 = v8 + v7;
  (*(*a1 + 240))(a1);
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = 0;
  v12 = *(a1 + 1288);
  v13 = (*(*a1 + 80))(a1, 9);
  v14 = (*(*a1 + 80))(a1, 9);
  v15 = (*(*a1 + 88))(a1);
  memmove(0, (v12 + 4 * v13 * a3), v15 * v14);
  if ((*(*a1 + 240))(a1))
  {
    v16 = (*(*a1 + 80))(a1, 9);
    v17 = (*(*a1 + 88))(a1);
    v18 = *(a1 + 1304);
    v19 = (*(*a1 + 80))(a1, 9);
    v20 = (*(*a1 + 80))(a1, 9);
    v21 = (*(*a1 + 88))(a1);
    v11 = (v17 * v16);
    memmove(v11, (v18 + 4 * v19 * a3), v21 * v20);
  }

  if ((*(*a1 + 104))(a1) != 9 && (*(*a1 + 104))(a1) != 10)
  {
    v22 = (*(*a1 + 80))(a1, 9);
    v23 = (*(*a1 + 88))(a1);
    v24 = *(a1 + 1296);
    v25 = *(a1 + 1272);
    v26 = (*(*a1 + 88))(a1);
    v27 = v11 + v23 * v22;
    memmove(v27, (v24 + 4 * v25 * a3), v26 * v25);
    if ((*(*a1 + 240))(a1))
    {
      v28 = *(a1 + 1272);
      v29 = (*(*a1 + 88))(a1);
      v30 = *(a1 + 1312);
      v31 = *(a1 + 1272);
      v32 = (*(*a1 + 88))(a1);
      memmove(&v27[v28 * v29], (v30 + 4 * v31 * a3), v32 * v31);
    }
  }

  sub_19D37D9D8(a2 + 16, (a1 + 256), &__p);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_19D366E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D366EB0(uint64_t a1, const __CFArray *a2, int a3)
{
  v6 = (*(*a1 + 80))(a1, 9);
  v7 = (*(*a1 + 88))(a1) * v6;
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a1 + 1272);
    v8 = (*(*a1 + 88))(a1) * v9;
  }

  v10 = (v8 + v7) << (*(*a1 + 240))(a1);
  v11 = *(a1 + 280);
  v12 = *(a1 + 1280);
  if (v11 != a3)
  {
    if (v12)
    {
      sub_19D430284(*(a1 + 8), v10 * v11, v12);
    }

LABEL_10:
    sub_19D43026C();
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    if (a3 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + 1288);
        v15 = (*(*a1 + 80))(a1, 9);
        v16 = (v14 + (v15 * v13 * (*(*a1 + 88))(a1)));
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
        v18 = sub_19D37D73C(ValueAtIndex + 16, (a1 + 256));
        v19 = (*(*a1 + 80))(a1, 9);
        v20 = (*(*a1 + 88))(a1);
        memmove(v16, v18, v20 * v19);
        if ((*(*a1 + 240))(a1))
        {
          v21 = (*(*a1 + 80))(a1, 9);
          v16 += (v21 * a3 * (*(*a1 + 88))(a1));
          v22 = (*(*a1 + 80))(a1, 9);
          v18 = (v18 + ((*(*a1 + 88))(a1) * v22));
          v23 = (*(*a1 + 80))(a1, 9);
          v24 = (*(*a1 + 88))(a1);
          memmove(v16, v18, v24 * v23);
        }

        if ((*(*a1 + 104))(a1) != 9 && (*(*a1 + 104))(a1) != 10)
        {
          v25 = (*(*a1 + 80))(a1, 9);
          v26 = &v16[(v25 * a3 * (*(*a1 + 88))(a1))];
          v27 = (*(*a1 + 80))(a1, 9);
          v28 = v18 + ((*(*a1 + 88))(a1) * v27);
          v29 = *(a1 + 1272);
          v30 = (*(*a1 + 88))(a1);
          memmove(v26, v28, v29 * v30);
          if ((*(*a1 + 240))(a1))
          {
            v31 = *(a1 + 1272);
            v32 = &v26[(v31 * a3 * (*(*a1 + 88))(a1))];
            v33 = *(a1 + 1272);
            v34 = &v28[v33 * (*(*a1 + 88))(a1)];
            v35 = *(a1 + 1272);
            v36 = (*(*a1 + 88))(a1);
            memmove(v32, v34, v35 * v36);
          }
        }

        ++v13;
      }

      while (a3 != v13);
    }
  }

  else
  {
    v37 = *(a1 + 1280);

    bzero(v37, v10 * a3);
  }
}

void sub_19D3676C0(uint64_t a1)
{
  sub_19D3865C8(a1);
  v2 = (*(*a1 + 80))(a1, 9);
  v3 = (*(*a1 + 88))(a1);
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 1272);
    v4 = (*(*a1 + 88))(a1) * v5;
  }

  v6 = v4 + v3 * v2;
  v7 = (*(*a1 + 240))(a1);
  sub_19D430284(*(a1 + 8), (v6 << v7) * *(a1 + 280), *(a1 + 1280));
  *(a1 + 1280) = 0;
}

uint64_t sub_19D367828(uint64_t a1)
{
  result = sub_19D386664(a1);
  if (*(a1 + 1280))
  {
    v3 = result;
    v4 = (*(*a1 + 80))(a1, 9);
    v5 = (*(*a1 + 88))(a1) * v4;
    if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(a1 + 1272);
      v6 = (*(*a1 + 88))(a1) * v7;
    }

    return (v3 + ((v6 + v5) << (*(*a1 + 240))(a1)) * *(a1 + 280));
  }

  return result;
}

int64x2_t sub_19D36798C(int *a1, int a2)
{
  v4 = a1[142];
  v5 = (*(*a1 + 240))(a1);
  v6 = (*(*a1 + 224))(a1);
  v7 = (*(*a1 + 216))(a1, 1);
  v8 = *(a1 + 6);
  if (!v8)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 8);
      if (v10 <= a2)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

    if (v10 >= a2)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v9 + 5) = result;
  v9[7] = v4 << v5;
  v9[8] = v6;
  v9[9] = v7;
  return result;
}

uint64_t sub_19D367B20(void *a1)
{
  *a1 = &unk_1F10B9890;
  sub_19D369B74(a1);
  v2 = a1[154];
  if (v2)
  {
    a1[155] = v2;
    operator delete(v2);
  }

  v3 = a1[151];
  if (v3)
  {
    a1[152] = v3;
    operator delete(v3);
  }

  v4 = a1[148];
  if (v4)
  {
    a1[149] = v4;
    operator delete(v4);
  }

  v5 = a1[145];
  if (v5)
  {
    a1[146] = v5;
    operator delete(v5);
  }

  v6 = a1[142];
  if (v6)
  {
    a1[143] = v6;
    operator delete(v6);
  }

  v7 = a1[139];
  if (v7)
  {
    a1[140] = v7;
    operator delete(v7);
  }

  v8 = a1[136];
  if (v8)
  {
    a1[137] = v8;
    operator delete(v8);
  }

  v9 = a1[133];
  if (v9)
  {
    a1[134] = v9;
    operator delete(v9);
  }

  v10 = a1[130];
  if (v10)
  {
    a1[131] = v10;
    operator delete(v10);
  }

  v11 = a1[127];
  if (v11)
  {
    a1[128] = v11;
    operator delete(v11);
  }

  return sub_19D388648(a1);
}