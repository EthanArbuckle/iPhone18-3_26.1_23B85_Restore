void sub_19D3F39A4()
{
  if (!v0)
  {
    JUMPOUT(0x19D3F3944);
  }

  JUMPOUT(0x19D3F393CLL);
}

void sub_19D3F39B0()
{
  if (!v0)
  {
    JUMPOUT(0x19D3F3944);
  }

  JUMPOUT(0x19D3F393CLL);
}

void sub_19D3F39BC()
{
  if (v0)
  {
    JUMPOUT(0x19D3F39C4);
  }

  JUMPOUT(0x19D3F3938);
}

void sub_19D3F39D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D3F3950);
  }

LABEL_13:
  JUMPOUT(0x19D3F3954);
}

uint64_t sub_19D3F3A24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D3F3E44(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D3F3D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3F3E44(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D3F3F4C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F3F80(double *a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v5 != -1)
  {
    if (v5 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v6 = *(a2 + 8);
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v7);
  vDSP_vdivD(*(a1 + 3), 1, 0, 1, 0, 1, v7);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v7);
  v8 = a1[2];
  __C = 0.0;
  vDSP_sveD(0, 1, &__C, v7);
  v9 = exp(__C * -0.5) * v8;
  MEMORY[0] = v9 + v9;
  v10 = *a1;
  if (*a1)
  {
    v11 = 8;
    v12 = 0;
    do
    {
      v13 = *v12++;
      *v11 = v13 * v9;
      v11 += 8;
      --*&v10;
    }

    while (v10 != 0.0);
    operator delete(0);
  }
}

void sub_19D3F4314(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
  }

  if (v1)
  {
    *(v2 + 8) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19D3F43A8(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_19D3F44A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BBD90;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BBD90;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BBD90;
  return sub_19D3715C0(v39);
}

void sub_19D3F4940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3F49E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3F4A9C();
}

void sub_19D3F4C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3F4C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3F4C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3F4C78(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BBC00;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D3F5B50(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BBC48;
  *(a1 + 512) = a1 + 176;
  *(a1 + 576) = 0x3FB999999999999ALL;
  *(a1 + 584) = 0;
  sub_19D3C21BC(a1 + 592);
  *(a1 + 10712) = 0;
  *(a1 + 10696) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D3F547C();
  }

  sub_19D3F55EC();
}

void sub_19D3F5308(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 592));
  v8 = *(v1 + 584);
  *(v1 + 584) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BBC98;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3F55A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3F55BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3F5710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3F572C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3F5760(uint64_t a1)
{
  v1 = sub_19D3F9948(a1);

  operator delete(v1);
}

__int128 **sub_19D3F5788@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 584) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10696) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3F58CC(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v6 = sub_19D3F7DF4(a1 + 176, &__p);
  v8 = sqrt(v7);
  v22 = v8;
  v23 = v6;
  v9 = v6 + *(a1 + 568) * v8;
  v21 = v9;
  v10 = *(a1 + 160);
  if (v10 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v23, &v22, &v21);
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    if (v25 != __p)
    {
      if (((v25 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v10 + 24) = v26;
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v10 + 56;
    *(a1 + 160) = v10 + 56;
  }

  *(a1 + 160) = v11;
  v12 = *(a1 + 488);
  v13 = v12 + 1;
  *(a1 + 488) = v12 + 1;
  v14 = *(a1 + 464);
  v15 = (*(a1 + 472) - v14) >> 3;
  if (v12 + 1 <= v15)
  {
    if (v12 + 1 < v15)
    {
      *(a1 + 472) = v14 + 8 * v12 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v12 + 1 - v15);
    v13 = *(a1 + 488);
    v14 = *(a1 + 464);
  }

  *(v14 + 8 * v13 - 8) = a3;
  sub_19D3F9B04(a1 + 176, &__p);
  sub_19D3FAB78(a1 + 496, a1 + 176);
  v16 = pow(*(*(a1 + 512) + 120), vcvtd_n_f64_s32(*(*(a1 + 512) + 124), 1uLL) + 2.0);
  v17 = log(v16 * 9.8696044 / (*(a1 + 576) * 3.0));
  *(a1 + 568) = sqrt(v17 + v17);
  sub_19D3F5DF8(a1 + 504);
  sub_19D3BA6D0(v27, a2);
  v28 = a3;
  v18 = *(a1 + 16);
  if (v18 >= *(a1 + 24))
  {
    v20 = sub_19D3C30A8((a1 + 8), v27);
  }

  else
  {
    v19 = sub_19D3BA6D0(v18, v27);
    *(v19 + 12) = v28;
    v20 = (v19 + 13);
  }

  *(a1 + 16) = v20;
  sub_19D3715C0(v27);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_19D3F5B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3F5B50(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_19D3F5D6C(uint64_t a1)
{
  v2 = pow(*(*(a1 + 8) + 120), vcvtd_n_f64_s32(*(*(a1 + 8) + 124), 1uLL) + 2.0);
  v3 = log(v2 * 9.8696044 / (*(a1 + 72) * 3.0));
  *(a1 + 64) = sqrt(v3 + v3);

  sub_19D3F5DF8(a1);
}

void sub_19D3F5DF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3F6370(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3F62E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D3F6370(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D3F6454(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D3F6438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3F6454@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3F66B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3F670C(uint64_t a1, uint64_t a2, const double **a3)
{
  __P = *(a1 + 48);
  if (__P)
  {
    operator new();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    *(8 * v5 * __P + 8 * v4) = 0;
    ++v6;
    v5 = v7 / __P;
    v4 = v6 - v7 / __P * __P;
    ++v7;
  }

  while (v5 != 0 / __P || v4 != 0 % __P);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = 0;
    do
    {
      v12 = *v10++;
      *v11 = 1.0 / (v12 * v12);
      v11 += __P + 1;
      --v9;
    }

    while (v9);
  }

  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  __B = 0;
  v21 = 0;
  v22 = 0;
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v23 = 0;
  sub_19D3C8D6C(&__B, __A);
  vDSP_mmulD(__A[0], 1, 0, 1, 0, 1, 1uLL, __P, v18);
  vDSP_mmulD(0, 1, __B, 1, &__C, 1, 1uLL, 1uLL, __P);
  v15 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (__B)
  {
    v21 = __B;
    operator delete(__B);
  }

  return v15;
}

void sub_19D3F6A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      v20 = a15;
      if (!a15)
      {
LABEL_8:
        if (v16)
        {
          operator delete(v16);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v20);
      goto LABEL_8;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  v20 = a15;
  if (!a15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_19D3F6AF4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBD18;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BBCC0;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3F6C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3F6C80(uint64_t a1)
{
  *a1 = &unk_1F10BBCC0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBD18;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3F6D1C(void *__p)
{
  *__p = &unk_1F10BBCC0;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BBD18;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3F6E58(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3F76CC(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v78 = a3;
  sub_19D3C6024(a2, &v92);
  sub_19D3F79DC(a2, v89);
  v7 = v90;
  if (v90 != v91)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v88, &v92[12 * v8]);
      v79 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v88);
      v71 = v7[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v7[2];
          v73 = *v72 == v7;
          v7 = v72;
        }

        while (!v73);
      }

      v7 = v72;
      if (v72 == v91)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3F7B04(a1, v88, &__B);
      sub_19D3709B0(v88, &__B);
      sub_19D2A3E48(v87, v87[1]);
      sub_19D2A3E48(v86, v86[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v85;
        v13 = __p;
        if (v85 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v85 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v83;
        v18 = __B;
        if (v83 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v83 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v88, v80);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D3F6454(*(v21 + 8), v94);
        *&__B = 0.0;
        vDSP_dotprD(v94[0], 1, *(v22 + 256), 1, &__B, v95);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v97 = 0.0;
        v98 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v99 = v26;
        v100 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v94, &__B);
        if (__C != 0.0)
        {
          v97 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        v63 = sub_19D3F670C(v22 + 8, v80, v80);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v64 = __C;
        if (*&__B != 0.0)
        {
          v83 = __B;
          operator delete(__B);
        }

        v65 = -(v64 - exp(v63 * -0.5) * v62);
        if (v65 > 2.22044605e-16)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v67 = *(v22 + 16);
        if (v94[0])
        {
          v94[1] = v94[0];
          operator delete(v94[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v67 + v66);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D3F7F14(v22, v80));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v68 = *(*(v21 + 8) + 120);
      if (v68 > 0)
      {
        if (*(v21 + 56) != v68)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v69 = (*(*v21 + 8))(v21);
LABEL_85:
      v70 = *&v69;
      if (v80[0])
      {
        v80[1] = v80[0];
        operator delete(v80[0]);
      }

      v81 = v70;
      sub_19D3C6830((a1 + 64), v88, &v81);
      if (++v10 == v79)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v74 = *(a1 + 72);
  sub_19D3BA6D0(v78, v74);
  *(v78 + 96) = v74[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v90, v91[0]);
  v75 = v92;
  if (v92)
  {
    v76 = v93;
    v77 = v92;
    if (v93 != v92)
    {
      do
      {
        v76 = sub_19D3715C0(v76 - 96);
      }

      while (v76 != v75);
      v77 = v92;
    }

    v93 = v75;
    operator delete(v77);
  }
}

void sub_19D3F75B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D3F76CC(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3F7DF4(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3F798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3F79B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3F79DC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3F7AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3F7B04(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3F7C94(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3F7D44(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3F7BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D3F7C94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3F7D44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3F7DF4(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3F6454(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D3F7FDC(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3F6370(a1);
    sub_19D3F7F14(a1, a2);
    return v7;
  }
}

void sub_19D3F7EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3F7F14(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3F6454(a1, __p);
    sub_19D3F7FDC(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3F670C(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3F7FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F7FDC(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3F670C(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3F80C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3F80F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBD18;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BBD48;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3F8404(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D3F84C4(uint64_t a1)
{
  v1 = sub_19D3F8A2C(a1);

  operator delete(v1);
}

void sub_19D3F84EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3F8BA8(a1, v22);
}

void sub_19D3F8914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3F8948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3F896C(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3F8988(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3F89B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3F89CC(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3F89F0(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3F8A2C(uint64_t a1)
{
  *a1 = &unk_1F10BBD48;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBD18;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3F8BA8(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3F9044(a1 + 64, v4, &__p);
}

void sub_19D3F8F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3F9044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3F9420(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3F95C4(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3F95C4(a3, &__p);
    __break(1u);
  }
}

void sub_19D3F95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3F95C4(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3F7DF4(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3F9920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3F9948(uint64_t a1)
{
  *a1 = &unk_1F10BBC00;
  v2 = *(a1 + 10696);
  if (v2)
  {
    v3 = *(a1 + 10704);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10696);
    }

    *(a1 + 10704) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10688));
  std::random_device::~random_device((a1 + 8144));
  std::random_device::~random_device((a1 + 5624));
  std::random_device::~random_device((a1 + 3096));
  v5 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BBC98;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D3F9B04(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3F9C48(a1, 1, 1);
}

void sub_19D3F9C48(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3F9FB8(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3FA504(a1);
  if (a3)
  {
    sub_19D3FA644(a1);
  }
}

void sub_19D3F9F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F9FB8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3FA480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
LABEL_3:
      v30 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v30 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v30);
  if (!v25)
  {
LABEL_5:
    *(v29 + 8) = v28;
    operator delete(v28);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v29 + 8) = v28;
  operator delete(v28);
  _Unwind_Resume(a1);
}

void sub_19D3FA504(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D3FA86C(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3FA5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3FA644(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3FA83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3FA86C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3FAB48(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3FAB78(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = *(a2 + 8);
  v29 = &unk_1F10BB3E8;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = -1;
  v36 = 0x7FF0000000000000;
  v37 = -5;
  v38 = 0;
  sub_19D3CA020(&v29, v3 + 1);
  sub_19D373338(v27, *(a2 + 8) + 1);
  v4 = v27[0];
  v5 = __p[0];
  *v27[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v11 = 0;
    v7 = v10 & 0xFFFFFFFC;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    do
    {
      v18 = 8 * v11;
      v19 = &v4[v18 + 8];
      *v19 = _Q0;
      v19[1] = _Q0;
      v20 = &v5[v18 + 8];
      *v20 = _Q1;
      *(v20 + 1) = _Q1;
      v11 += 4;
    }

    while (v7 != v11);
    if (v10 != v7)
    {
LABEL_10:
      v21 = v4 + 8;
      v22 = v5 + 8;
      do
      {
        *&v21[8 * v7] = 0xC024000000000000;
        v22[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v29, v27);
  sub_19D3CA7E0(&v29, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  v24 = *(a2 + 64);
  v23 = *(a2 + 72);
  memset(v25, 0, sizeof(v25));
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v26 = *(a2 + 88);
  sub_19D3FAF8C(&v29, &v39, v25);
}

void sub_19D3FAEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3FAF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3FAF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3FB368(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3FB664(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3FB664(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3FB5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3FB664@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D3FC770(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D3F9C48(&v28, 0, a3);
  v15 = sub_19D3FB8D0(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D3FBAF8(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D3FB8D0(uint64_t a1)
{
  sub_19D3FA86C(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3FBAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3FBAF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D3FCCCC((a1 + 8), &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D3FC580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}

void sub_19D3FC6F0()
{
  if (!v0)
  {
    JUMPOUT(0x19D3FC690);
  }

  JUMPOUT(0x19D3FC688);
}

void sub_19D3FC6FC()
{
  if (!v0)
  {
    JUMPOUT(0x19D3FC690);
  }

  JUMPOUT(0x19D3FC688);
}

void sub_19D3FC708()
{
  if (v0)
  {
    JUMPOUT(0x19D3FC710);
  }

  JUMPOUT(0x19D3FC684);
}

void sub_19D3FC720(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D3FC69CLL);
  }

LABEL_13:
  JUMPOUT(0x19D3FC6A0);
}

uint64_t sub_19D3FC770(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D3FCB90(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D3FCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3FCB90(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D3FCC98(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3FCCCC(double *a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v5 != -1)
  {
    if (v5 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v6 = *(a2 + 8);
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v7);
  vDSP_vdivD(*(a1 + 3), 1, 0, 1, 0, 1, v7);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v7);
  v8 = a1[2];
  __C = 0.0;
  vDSP_sveD(0, 1, &__C, v7);
  v9 = exp(__C * -0.5) * v8;
  MEMORY[0] = v9 + v9;
  v10 = *a1;
  if (*a1)
  {
    v11 = 8;
    v12 = 0;
    do
    {
      v13 = *v12++;
      *v11 = v13 * v9;
      v11 += 8;
      --*&v10;
    }

    while (v10 != 0.0);
    operator delete(0);
  }
}

void sub_19D3FD060(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
  }

  if (v1)
  {
    *(v2 + 8) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19D3FD0F4(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_19D3FD1F0(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3FE784(&v9);
}

void sub_19D3FD680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FD69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FD6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FD6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FD6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FD704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FD760(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D4073DC(&v9);
}

void sub_19D3FDBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FDC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FDC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FDC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FDC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FDC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FDCD0(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D4100AC(&v9);
}

void sub_19D3FE160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FE17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FE190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3FE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FE1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3FE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3FE240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BBF50;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BBF50;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BBF50;
  return sub_19D3715C0(v39);
}

void sub_19D3FE6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3FE784(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3FE838();
}

void sub_19D3FE9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3FE9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3FE9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3FEA14(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BBDC0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D3FF8A8(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BBE08;
  *(a1 + 512) = a1 + 176;
  *(a1 + 568) = 0;
  sub_19D3C21BC(a1 + 576);
  *(a1 + 10696) = 0;
  *(a1 + 10680) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D3FF208();
  }

  sub_19D3FF378();
}

void sub_19D3FF094(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 576));
  v8 = *(v1 + 568);
  *(v1 + 568) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BBE58;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3FF32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3FF348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3FF49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3FF4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3FF4EC(uint64_t a1)
{
  v1 = sub_19D403610(a1);

  operator delete(v1);
}

__int128 **sub_19D3FF514@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 568) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10680) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3FF658(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D401AA0(a1 + 176, &__p);
  v7 = sqrt(v6);
  v16 = v7;
  v17 = v5;
  v8 = erfc((v5 - *(a1 + 552)) * -0.707106781 / v7) * 0.5;
  v15 = v8;
  v9 = *(a1 + 160);
  if (v9 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v17, &v16, &v15);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    if (v19 != __p)
    {
      if (((v19 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v9 + 24) = v20;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = v9 + 56;
    *(a1 + 160) = v9 + 56;
  }

  *(a1 + 160) = v10;
  v11 = *(a1 + 488);
  v12 = v11 + 1;
  *(a1 + 488) = v11 + 1;
  v13 = *(a1 + 464);
  v14 = (*(a1 + 472) - v13) >> 3;
  if (v11 + 1 <= v14)
  {
    if (v11 + 1 < v14)
    {
      *(a1 + 472) = v13 + 8 * v11 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v11 + 1 - v14);
    v12 = *(a1 + 488);
    v13 = *(a1 + 464);
  }

  *(v13 + 8 * v12 - 8) = a3;
  sub_19D4037CC(a1 + 176, &__p);
  sub_19D404834(a1 + 496, a1 + 176);
}

void sub_19D3FF85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3FF8A8(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_19D3FFAEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D400064(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3FFFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D400064(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D400148(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D40012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D400148@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D4003C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D400414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 24);
  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, v6);
  v7 = *(a3 + 8);
  if (v7 != *a3)
  {
    if (((v7 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, *(a3 + 24));
  vDSP_vsubD(0, 1, 0, 1, 0, 1, v6);
  cblas_dnrm2_NEWLAPACK();
  return v8 * 2.23606798;
}

void sub_19D400704(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    operator delete(v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          operator delete(v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v2);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D400780()
{
  if (!v0)
  {
    JUMPOUT(0x19D400778);
  }

  JUMPOUT(0x19D400770);
}

uint64_t sub_19D400790(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBED8;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BBE80;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D4008D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D40091C(uint64_t a1)
{
  *a1 = &unk_1F10BBE80;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBED8;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D4009B8(void *__p)
{
  *__p = &unk_1F10BBE80;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BBED8;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D400AF4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D401378(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v94);
  sub_19D401688(a2, v91);
  v7 = v92;
  if (v92 != v93)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v90, &v94[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v90);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v93)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D4017B0(a1, v90, &__B);
      sub_19D3709B0(v90, &__B);
      sub_19D2A3E48(v89, v89[1]);
      sub_19D2A3E48(v88, v88[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v87;
        v13 = __p;
        if (v87 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v87 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v85;
        v18 = __B;
        if (v85 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v85 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v90, v82);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D400148(*(v21 + 8), v96);
        *&__B = 0.0;
        vDSP_dotprD(v96[0], 1, *(v22 + 256), 1, &__B, v97);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v99 = 0.0;
        v100 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v101 = v26;
        v102 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v96, &__B);
        if (__C != 0.0)
        {
          v99 = __C;
          operator delete(*&__C);
        }

        v62 = sub_19D400414(v22 + 8, v82, v82);
        v64 = v63;
        v65 = *(v22 + 24);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v66 = __C;
        if (*&__B != 0.0)
        {
          v85 = __B;
          operator delete(__B);
        }

        v67 = -(v66 - (v62 + 1.0 + v64) * (exp(-v62) * v65));
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v96[0])
        {
          v96[1] = v96[0];
          operator delete(v96[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D401BC0(v22, v82));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v70 = *(*(v21 + 8) + 120);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v71 = (*(*v21 + 8))(v21);
LABEL_85:
      v72 = *&v71;
      if (v82[0])
      {
        v82[1] = v82[0];
        operator delete(v82[0]);
      }

      v83 = v72;
      sub_19D3C6830((a1 + 64), v90, &v83);
      if (++v10 == v81)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v92, v93[0]);
  v77 = v94;
  if (v94)
  {
    v78 = v95;
    v79 = v94;
    if (v95 != v94)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v94;
    }

    v95 = v77;
    operator delete(v79);
  }
}

void sub_19D401264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D401378(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D401AA0(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D401638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D40165C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D401688(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D401750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D4017B0(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D401940(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D4019F0(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D401880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D401940@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D4019F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D401AA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D400148(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D401C94(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D400064(a1);
    sub_19D401BC0(a1, a2);
    return v7;
  }
}

void sub_19D401BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D401BC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D400148(a1, __p);
    sub_19D401C94(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = sub_19D400414(a1 + 8, a2, a2);
    v9 = *(a1 + 24);
    return *(a1 + 16) + exp(-v8) * v9 * (v8 + 1.0 + v10);
  }
}

void sub_19D401C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D401C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D400414(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(-v6);
}

void sub_19D401D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D401DB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBED8;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BBF08;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D4020CC(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D40218C(uint64_t a1)
{
  v1 = sub_19D4026F4(a1);

  operator delete(v1);
}

void sub_19D4021B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D402870(a1, v22);
}

void sub_19D4025DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D402610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D402634(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D402650(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D402680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D402694(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D4026B8(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4026F4(uint64_t a1)
{
  *a1 = &unk_1F10BBF08;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBED8;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D402870(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D402D0C(a1 + 64, v4, &__p);
}

void sub_19D402C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D402D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D4030E8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D40328C(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D40328C(a3, &__p);
    __break(1u);
  }
}

void sub_19D403268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D40328C(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D401AA0(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D4035E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D403610(uint64_t a1)
{
  *a1 = &unk_1F10BBDC0;
  v2 = *(a1 + 10680);
  if (v2)
  {
    v3 = *(a1 + 10688);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10680);
    }

    *(a1 + 10688) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10672));
  std::random_device::~random_device((a1 + 8128));
  std::random_device::~random_device((a1 + 5608));
  std::random_device::~random_device((a1 + 3080));
  v5 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BBE58;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D4037CC(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D403910(a1, 1, 1);
}

void sub_19D403910(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D403C80(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D4041C0(a1);
  if (a3)
  {
    sub_19D404300(a1);
  }
}

void sub_19D403C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D403C80(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D40414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    if (!v26)
    {
LABEL_3:
      v29 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v29 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v29);
  if (!v25)
  {
LABEL_5:
    *(v27 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v27 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D4041C0(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D404528(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D40429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D404300(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D4044F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D404528(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D404804(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D404834(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = *(a2 + 8);
  v28 = &unk_1F10BB3E8;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = -1;
  v35 = 0x7FF0000000000000;
  v36 = -5;
  v37 = 0;
  sub_19D3CA020(&v28, v3 + 1);
  sub_19D373338(v26, *(a2 + 8) + 1);
  v4 = v26[0];
  v5 = __p[0];
  *v26[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 56);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v10 & 0xFFFFFFFC;
    v11 = v5 + 3;
    v12 = v4 + 24;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    v19 = v10 & 0xFFFFFFFC;
    do
    {
      *(v12 - 1) = _Q0;
      *v12 = _Q0;
      *(v11 - 1) = _Q1;
      *v11 = _Q1;
      v11 += 2;
      v12 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v10 != v7)
    {
LABEL_10:
      v20 = v4 + 8;
      v21 = v5 + 1;
      do
      {
        *&v20[8 * v7] = 0xC024000000000000;
        v21[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v28, v26);
  sub_19D3CA7E0(&v28, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  memset(v24, 0, sizeof(v24));
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v25 = *(a2 + 88);
  sub_19D404C40(&v28, &v38, v24);
}

void sub_19D404BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D404C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D404C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D40501C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D405318(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D405318(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D4052B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D405318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D406424(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D403910(&v28, 0, a3);
  v15 = sub_19D405584(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D4057AC(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D405584(uint64_t a1)
{
  sub_19D404528(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D405754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D4057AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D406980(a1 + 8, &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D406234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}

void sub_19D4063A4()
{
  if (!v0)
  {
    JUMPOUT(0x19D406344);
  }

  JUMPOUT(0x19D40633CLL);
}

void sub_19D4063B0()
{
  if (!v0)
  {
    JUMPOUT(0x19D406344);
  }

  JUMPOUT(0x19D40633CLL);
}

void sub_19D4063BC()
{
  if (v0)
  {
    JUMPOUT(0x19D4063C4);
  }

  JUMPOUT(0x19D406338);
}

void sub_19D4063D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D406350);
  }

LABEL_13:
  JUMPOUT(0x19D406354);
}

uint64_t sub_19D406424(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D406844(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D406720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D406844(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D40694C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D406980(uint64_t a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v7 != -1)
  {
    if (v7 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = sub_19D400414(a1, a2, a3);
  v10 = v9;
  v11 = exp(-v8);
  v12 = v8 + 1.0;
  MEMORY[0] = v11 * *(a1 + 16) * (v12 + v10 + v12 + v10);
  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v14);
  v15 = *(a1 + 48);
  if (v15)
  {
    v17 = v11 * v12 * (1.66666667 * *(a1 + 16));
    v18 = 8;
    v19 = 0;
    v16 = *(a1 + 24);
    do
    {
      v20 = *v16++;
      v21 = v20;
      v22 = *v19++;
      *v18 = v17 * v22 / (v21 * v21);
      v18 += 8;
      --v15;
    }

    while (v15);

    operator delete(0);
  }
}

void sub_19D406D2C(_Unwind_Exception *a1)
{
  if (v5)
  {
    operator delete(v5);
    if (!v4)
    {
LABEL_3:
      if (!v3)
      {
LABEL_8:
        *(v2 + 8) = v1;
        operator delete(v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v3);
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  operator delete(v4);
  if (!v3)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL sub_19D406D9C(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_19D406E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BC110;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BC110;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BC110;
  return sub_19D3715C0(v39);
}

void sub_19D407334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D4073DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D407490();
}

void sub_19D407604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D407620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D40763C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D40766C(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BBF80;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D408538(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BBFC8;
  *(a1 + 512) = a1 + 176;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  sub_19D3C21BC(a1 + 592);
  *(a1 + 10712) = 0;
  *(a1 + 10696) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D407E64();
  }

  sub_19D407FD4();
}

void sub_19D407CF0(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 592));
  v8 = *(v1 + 584);
  *(v1 + 584) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BC018;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D407F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D407FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D4080F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D408114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D408148(uint64_t a1)
{
  v1 = sub_19D40C2E0(a1);

  operator delete(v1);
}

__int128 **sub_19D408170@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 584) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10696) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D4082B4(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D40A770(a1 + 176, &__p);
  v7 = sqrt(v6);
  v19 = v7;
  v20 = v5;
  v8 = v5 - (*(a1 + 552) + *(a1 + 568));
  v9 = v8 / v7;
  v10 = erfc(v8 / v7 * -0.707106781) * (0.5 * v8);
  v11 = v10 + v7 * 0.39894228 * exp(v9 * v9 * -0.5);
  v18 = v11;
  v12 = *(a1 + 160);
  if (v12 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v20, &v19, &v18);
  }

  else
  {
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    if (v22 != __p)
    {
      if (((v22 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v12 + 24) = v23;
    *(v12 + 32) = v5;
    *(v12 + 40) = v7;
    *(v12 + 48) = v11;
    v13 = v12 + 56;
    *(a1 + 160) = v12 + 56;
  }

  *(a1 + 160) = v13;
  v14 = *(a1 + 488);
  v15 = v14 + 1;
  *(a1 + 488) = v14 + 1;
  v16 = *(a1 + 464);
  v17 = (*(a1 + 472) - v16) >> 3;
  if (v14 + 1 <= v17)
  {
    if (v14 + 1 < v17)
    {
      *(a1 + 472) = v16 + 8 * v14 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v14 + 1 - v17);
    v15 = *(a1 + 488);
    v16 = *(a1 + 464);
  }

  *(v16 + 8 * v15 - 8) = a3;
  sub_19D40C49C(a1 + 176, &__p);
  sub_19D40D504(a1 + 496, a1 + 176);
}

void sub_19D4084EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D408538(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

long double sub_19D40873C(uint64_t a1, double a2, double a3)
{
  v4 = a2 - (*(a1 + 48) + *(a1 + 64));
  v5 = v4 / a3;
  v6 = erfc(v4 / a3 * -0.707106781) * (0.5 * v4);
  return v6 + a3 * 0.39894228 * exp(v5 * v5 * -0.5);
}

void sub_19D4087BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D408D34(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}