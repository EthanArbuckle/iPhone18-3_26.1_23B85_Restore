void *sub_CFD5E4(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = (a1 + 3);
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 != v9)
    {
      do
      {
        v10 = sub_55A8B4(v10 - 496);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    a1[4] = v9;
    operator delete(v11);
    *v8 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_53B8B8((a1 + 6), a2 + 48);
  sub_53B8B8((a1 + 68), a2 + 544);
  v12 = a1[130];
  if (v12)
  {
    v13 = (a1 + 130);
    v14 = a1[131];
    v15 = a1[130];
    if (v14 != v12)
    {
      do
      {
        v14 = sub_55A8B4(v14 - 496);
      }

      while (v14 != v12);
      v15 = *v13;
    }

    a1[131] = v12;
    operator delete(v15);
    *v13 = 0;
    a1[131] = 0;
    a1[132] = 0;
  }

  *(a1 + 65) = *(a2 + 1040);
  a1[132] = *(a2 + 1056);
  *(a2 + 1040) = 0;
  *(a2 + 1048) = 0;
  *(a2 + 1056) = 0;
  v16 = a1[133];
  if (v16)
  {
    v17 = (a1 + 133);
    v18 = a1[134];
    v19 = a1[133];
    if (v18 != v16)
    {
      do
      {
        v18 = sub_55A8B4(v18 - 496);
      }

      while (v18 != v16);
      v19 = *v17;
    }

    a1[134] = v16;
    operator delete(v19);
    *v17 = 0;
    a1[134] = 0;
    a1[135] = 0;
  }

  a1[133] = *(a2 + 1064);
  *(a1 + 67) = *(a2 + 1072);
  *(a2 + 1080) = 0;
  *(a2 + 1064) = 0u;
  return a1;
}

uint64_t sub_CFD7BC(uint64_t a1)
{
  v2 = *(a1 + 8456);
  if (v2)
  {
    *(a1 + 8464) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_60B2B4(a1);
}

void sub_CFD804()
{
  byte_27B4897 = 3;
  LODWORD(qword_27B4880) = 5136193;
  byte_27B48AF = 3;
  LODWORD(qword_27B4898) = 5136194;
  byte_27B48C7 = 3;
  LODWORD(qword_27B48B0) = 5136195;
  byte_27B48DF = 15;
  strcpy(&qword_27B48C8, "vehicle_mass_kg");
  byte_27B48F7 = 21;
  strcpy(&xmmword_27B48E0, "vehicle_cargo_mass_kg");
  byte_27B490F = 19;
  strcpy(&qword_27B48F8, "vehicle_aux_power_w");
  byte_27B4927 = 15;
  strcpy(&qword_27B4910, "dcdc_efficiency");
  strcpy(&qword_27B4928, "drive_train_efficiency");
  HIBYTE(word_27B493E) = 22;
  operator new();
}

void sub_CFDC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4840)
  {
    qword_27B4848 = qword_27B4840;
    operator delete(qword_27B4840);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFDD00(uint64_t a1)
{
  sub_7E9A4(v8);
  sub_EE0E84(a1, &v7);
  if (*sub_4EE304(*(a1 + 216)) == 1)
  {
    if ((*(a1 + 276) & 1) == 0)
    {
      sub_4F0F0C();
    }

    sub_4EF350(*(a1 + 216), *(a1 + 272) | 0x100000000);
  }

  sub_4EE30C(*(a1 + 216));
  sub_4EE31C(*(a1 + 216));
  if (*(sub_4EE304(*(a1 + 216)) + 152) == 0x7FFFFFFF)
  {
    v2 = *(a1 + 236);
    *(sub_4EE304(*(a1 + 216)) + 152) = v2;
  }

  sub_14CA0A8(v5, 0, 0);
  sub_14CA0A8(v6, 0, 0);
  v6[16] = 0u;
  if (*(a1 + 34))
  {
    sub_EB0820(__p, *(a1 + 224));
  }

  __p[0] = *(a1 + 224);
  sub_EADFDC(__p, &v4);
}

void sub_CFE26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a16);
  sub_14CA828(v48 + 256);
  sub_14CA828(&a48);
  sub_5C010(v49 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_CFE344(uint64_t a1, uint64_t a2)
{
  sub_14CA0A8(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_14CC448(a1, a2);
    }

    else
    {
      sub_14CC34C(a1, a2);
    }
  }

  return a1;
}

void sub_CFE3E4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4988 = 0u;
  unk_27B4998 = 0u;
  dword_27B49A8 = 1065353216;
  sub_3A9A34(&xmmword_27B4988, v0);
  sub_3A9A34(&xmmword_27B4988, v3);
  sub_3A9A34(&xmmword_27B4988, __p);
  sub_3A9A34(&xmmword_27B4988, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B4960 = 0;
    qword_27B4968 = 0;
    qword_27B4958 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_CFE62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4970)
  {
    qword_27B4978 = qword_27B4970;
    operator delete(qword_27B4970);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFE6D8()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v4);
  v2 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_114E52C(v1, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 29));
}

void sub_CFE840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CFE878(va);
  sub_60A84C((v4 - 128));
  _Unwind_Resume(a1);
}

void *sub_CFE878(void *a1)
{
  sub_3E3DF0(a1 + 85);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_CFE8B4()
{
  byte_27B49F7 = 3;
  LODWORD(qword_27B49E0) = 5136193;
  byte_27B4A0F = 3;
  LODWORD(qword_27B49F8) = 5136194;
  byte_27B4A27 = 3;
  LODWORD(qword_27B4A10) = 5136195;
  byte_27B4A3F = 15;
  strcpy(&qword_27B4A28, "vehicle_mass_kg");
  byte_27B4A57 = 21;
  strcpy(&xmmword_27B4A40, "vehicle_cargo_mass_kg");
  byte_27B4A6F = 19;
  strcpy(&qword_27B4A58, "vehicle_aux_power_w");
  byte_27B4A87 = 15;
  strcpy(&qword_27B4A70, "dcdc_efficiency");
  strcpy(&qword_27B4A88, "drive_train_efficiency");
  HIBYTE(word_27B4A9E) = 22;
  operator new();
}

void sub_CFEA90(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B4A9E) < 0)
  {
    sub_21E4114();
  }

  sub_21E4120();
  _Unwind_Resume(a1);
}

void sub_CFEAB0(uint64_t a1)
{
  sub_7E9A4(v4);
  v2 = *(a1 + 24);
  v3 = sub_3AF4C0(*(a1 + 136));
  sub_21E2C18(v3, 3, v2);
}

void sub_CFF1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33)
{
  *(v33 - 40) = v34;
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  sub_2CD04(&a24);
  sub_1F1A8(&a30);
  sub_CFFA9C(&a32);
  _Unwind_Resume(a1);
}

void sub_CFF280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_2CD04(&a21);
  sub_1AB28(v29 - 144);
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

void sub_CFF2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

void sub_CFF2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_5EBF44(&a21);
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_CFF30C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_1794();
  }

  if (0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((a1[2] - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v5 = 0xAE4C415C9882B9;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAE4C415C9882B9)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_CFF460(v11, a2);
  v6 = 376 * v2 + 376;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_CFF5E4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_CFF44C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CFF92C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CFF460(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_4C4BD8(a2);
  *(a1 + 32) = 0x8000000080000000;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  *(a1 + 272) = 0u;
  *(a1 + 288) = v5;
  *(a1 + 304) = v5;
  *(a1 + 320) = 5;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  if (!sub_4C49D0(a2))
  {
    *(a1 + 32) = sub_4C4C40(a2);
    *(a1 + 36) = sub_4E4B18(a2, 0, 6);
    *(a1 + 296) = sub_4E4B18(a2, 1, 6);
    *(a1 + 300) = sub_4E4B18(a2, 2, 6);
    *(a1 + 304) = sub_4E4B18(a2, 3, 6);
    *(a1 + 308) = sub_4E4B18(a2, 4, 6);
    *(a1 + 312) = sub_4E4B18(a2, 5, 6);
  }

  return a1;
}

void sub_CFF588(_Unwind_Exception *a1)
{
  sub_5706DC((v2 + 320));
  sub_5C0ED8(v3);
  sub_3EE9A4(v2);
  sub_60DB0C(v1);
  _Unwind_Resume(a1);
}

void sub_CFF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v7 = *(v6 + 32);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 32) = v7;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 240) = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(v6 + 240) = 0;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 264) = *(v6 + 264);
      *(a4 + 272) = *(v6 + 272);
      *(v6 + 264) = 0;
      *(v6 + 272) = 0;
      *(v6 + 280) = 0;
      v8 = *(v6 + 304);
      *(a4 + 288) = *(v6 + 288);
      *(a4 + 304) = v8;
      *(a4 + 320) = *(v6 + 320);
      *(a4 + 336) = 0;
      *(a4 + 344) = 0;
      *(a4 + 328) = 0;
      *(a4 + 328) = *(v6 + 328);
      *(a4 + 336) = *(v6 + 336);
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 344) = 0;
      *(a4 + 352) = 0;
      *(a4 + 360) = 0;
      *(a4 + 368) = 0;
      *(a4 + 352) = *(v6 + 352);
      *(a4 + 368) = *(v6 + 368);
      *(v6 + 352) = 0;
      *(v6 + 360) = 0;
      *(v6 + 368) = 0;
      v6 += 376;
      a4 += 376;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_CFF804(v5) + 376;
    }
  }
}

uint64_t sub_CFF804(uint64_t a1)
{
  sub_5706DC((a1 + 352));
  v2 = *(a1 + 328);
  if (v2)
  {
    v3 = *(a1 + 336);
    v4 = *(a1 + 328);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 328);
    }

    *(a1 + 336) = v2;
    operator delete(v4);
  }

  sub_3EE9A4((a1 + 32));
  v5 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 == v5)
    {
LABEL_22:
      *(a1 + 8) = v5;
      operator delete(v7);
      return a1;
    }

    while (1)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        if ((*(v6 - 33) & 0x80000000) == 0)
        {
LABEL_12:
          if ((*(v6 - 57) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }
      }

      else if ((*(v6 - 33) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(*(v6 - 7));
      if ((*(v6 - 57) & 0x80000000) == 0)
      {
LABEL_13:
        if ((*(v6 - 97) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

LABEL_18:
      operator delete(*(v6 - 10));
      if ((*(v6 - 97) & 0x80000000) == 0)
      {
LABEL_14:
        v8 = v6 - 19;
        if (*(v6 - 129) < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_9;
      }

LABEL_19:
      operator delete(*(v6 - 15));
      v8 = v6 - 19;
      if (*(v6 - 129) < 0)
      {
LABEL_20:
        operator delete(*v8);
      }

LABEL_9:
      v6 = v8;
      if (v8 == v5)
      {
        v7 = *a1;
        goto LABEL_22;
      }
    }
  }

  return a1;
}

uint64_t sub_CFF92C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 376;
    sub_CFF804(i - 376);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_CFF980(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_CFFA80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_CFFA9C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_CFF804(v3 - 376);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_CFFAF8(uint64_t a1, void *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_693F6C(&__p, a1);
  v6 = v3;
  sub_78E308(v3 - 12656, a2);
  sub_78E6E8((v3 - 12656), a2);
  sub_7DFA08(&v4, a2);
}

void sub_CFFC08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_68F8B4(va);
  _Unwind_Resume(a1);
}

void sub_CFFC1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_68F8B4(va);
  _Unwind_Resume(a1);
}

void sub_CFFC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_68F8B4(va);
  _Unwind_Resume(a1);
}

void sub_CFFC44()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4AE8 = 0u;
  unk_27B4AF8 = 0u;
  dword_27B4B08 = 1065353216;
  sub_3A9A34(&xmmword_27B4AE8, v0);
  sub_3A9A34(&xmmword_27B4AE8, v3);
  sub_3A9A34(&xmmword_27B4AE8, __p);
  sub_3A9A34(&xmmword_27B4AE8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B4AC0 = 0;
    qword_27B4AC8 = 0;
    qword_27B4AB8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_CFFE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4AD0)
  {
    qword_27B4AD8 = qword_27B4AD0;
    operator delete(qword_27B4AD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFFF38(uint64_t a1)
{
  sub_7E9A4(v5);
  v3 = 0u;
  v4 = 0u;
  sub_60C4B0(v2, *(a1 + 136));
}

void sub_CFFFE8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4B10 = 0u;
  unk_27B4B20 = 0u;
  dword_27B4B30 = 1065353216;
  sub_3A9A34(&xmmword_27B4B10, v0);
  sub_3A9A34(&xmmword_27B4B10, v3);
  sub_3A9A34(&xmmword_27B4B10, __p);
  sub_3A9A34(&xmmword_27B4B10, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D001B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B4B10);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_D00230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v13);
  sub_14D4048(v9, 0, 0);
  v11 = 0;
  sub_EB482C(&v12, a1, (a1 + 24), a1 + 48, (a1 + 424), v7);
  v4 = v10;
  if ((v10 & 2) != 0)
  {
    v4 = 0;
  }

  else if (v10)
  {
    v4 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v5 = v8;
  if ((v8 & 2) != 0)
  {
    v5 = 0;
  }

  else if (v8)
  {
    v5 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v4 == v5)
  {
    sub_14D5848(v9, v7);
  }

  else
  {
    sub_14D5750(v9, v7);
  }

  sub_14D4598(v7);
  v11 = vcvtad_u64_f64(sub_7EA60(v13));
  sub_D0033C(a2, v9);
  return sub_14D4598(v9);
}

uint64_t sub_D0033C(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_14D4048(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_14D5848(v4, a2);
    }

    else
    {
      sub_14D5750(v4, a2);
    }
  }

  *(a1 + 176) = *(a2 + 168);
  return a1;
}

void sub_D003E4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4B38 = 0u;
  unk_27B4B48 = 0u;
  dword_27B4B58 = 1065353216;
  sub_3A9A34(&xmmword_27B4B38, v0);
  sub_3A9A34(&xmmword_27B4B38, v3);
  sub_3A9A34(&xmmword_27B4B38, __p);
  sub_3A9A34(&xmmword_27B4B38, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D005B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B4B38);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_D0062C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  v4 = *(a1 + 40);
  v7[23] = 8;
  strcpy(v7, "standard");
  sub_F9B970(v5, v4, v7);
}

void sub_D00A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 - 105) < 0)
  {
    operator delete(*(v12 - 128));
  }

  sub_D02B88(a12);
  _Unwind_Resume(a1);
}

void sub_D00A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void **);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_D00AFC(va);
  sub_D02AF4(va1);
  sub_D02B88(v11);
  _Unwind_Resume(a1);
}

void ***sub_D00AFC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = v9 - 128;
            do
            {
              v12 = *(v10 + 72);
              if (v12)
              {
                *(v10 + 80) = v12;
                operator delete(v12);
              }

              v13 = *(v10 + 48);
              if (v13)
              {
                *(v10 + 56) = v13;
                operator delete(v13);
              }

              v14 = *(v10 + 24);
              if (v14)
              {
                *(v10 + 32) = v14;
                operator delete(v14);
              }

              v15 = *v10;
              if (*v10)
              {
                *(v10 + 8) = v15;
                operator delete(v15);
              }

              v16 = *(v10 - 24);
              if (v16)
              {
                *(v10 - 16) = v16;
                operator delete(v16);
              }

              v17 = *(v10 - 48);
              if (v17)
              {
                *(v10 - 40) = v17;
                operator delete(v17);
              }

              v18 = *(v10 - 72);
              if (v18)
              {
                *(v10 - 64) = v18;
                operator delete(v18);
              }

              v19 = *(v10 - 96);
              if (v19)
              {
                *(v10 - 88) = v19;
                operator delete(v19);
              }

              v20 = *(v10 - 120);
              if (v20)
              {
                *(v10 - 112) = v20;
                operator delete(v20);
              }

              v21 = *(v10 - 144);
              if (v21)
              {
                *(v10 - 136) = v21;
                operator delete(v21);
              }

              v11 = (v10 - 160);
              v10 -= 288;
            }

            while (v11 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D00C48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v5);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  sub_D01090(*(a1 + 40), v4);
}

void sub_D0103C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_D00AFC(va);
  sub_C64C18(va1);
  sub_D02B88(v9);
  _Unwind_Resume(a1);
}

void sub_D01090(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  HIBYTE(v18) = 10;
  strcpy(v17, "WalkingETA");
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  v4 = sub_3AEC94(a1, v17, __p);
  sub_5ADDC(v19, v4);
  v5 = __p[0];
  if (__p[0])
  {
    v6 = __p[1];
    v7 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[0];
    }

    __p[1] = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  HIBYTE(v16) = 13;
  strcpy(__p, "eta_evaluator");
  v9 = sub_5F8FC(v19, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C(v17, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v18 = v9[2];
    *v17 = v10;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = 13;
  strcpy(v13, "cost_function");
  v11 = sub_5F8FC(v19, v13);
  if (*(v11 + 23) < 0)
  {
    sub_325C(__p, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v16 = v11[2];
    *__p = v12;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  sub_FBB328(a2, a1, v17, __p);
}

void sub_D012E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_5C010(v28 - 72);
  _Unwind_Resume(a1);
}

void sub_D01344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1A104(&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_D0136C(unint64_t result, void **a2)
{
  if (*(result + 32) == 1)
  {
    v3 = result;
    result = sub_44F320(*(result + 24));
    if (result)
    {
      result = sub_3AF6B4(v3[5]);
      v4 = *v3;
      v5 = **v3;
      v40 = v4[1];
      if (v5 != v40)
      {
        v6 = result;
        v7 = a2[3];
        v8 = *a2;
        do
        {
          v9 = sub_45AC50(v5);
          v41 = v8;
          v42 = v7;
          v10 = *v7;
          v11 = *v8;
          v43 = v5;
          result = sub_588D8(v5);
          for (i = result; v9 != i; v11 = v45 + 24)
          {
            v45 = v11;
            v12 = *nullsub_1(v9);
            sub_4C35D4(v10, &v50);
            v13 = v50;
            v14 = *(nullsub_1(v9) + 8);
            v46 = v10;
            result = sub_4C35D4(v10, &v50);
            while (v12 != v14)
            {
              v15 = sub_F69654(v12);
              sub_335660(v6, v15, 1);
              v17 = v16;
              v18 = sub_F6C814(v12);
              sub_335660(v6, v18, 0);
              v20 = v19;
              v50 = sub_4DAC3C(v13);
              LODWORD(v51) = v21;
              result = sub_456704(&v50);
              if ((result & 1) == 0)
              {
                __dst = sub_4DACB0(v13);
                LODWORD(v48) = v22;
                result = sub_456704(&__dst);
                if ((result & 1) == 0)
                {
                  result = sub_4DADBC(v13);
                  if (result >= 4)
                  {
                    v23 = sub_588E0(v13);
                    v50 = sub_4DAC3C(v13);
                    LODWORD(v51) = v24;
                    v25 = sub_3F80(&v50);
                    v26 = sub_456B24(v23, v25);
                    v27 = (sub_588E0(v13) + 12);
                    v28 = sub_5FC64(v13) - 12;
                    for (result = v26; v27 != v28; v27 += 3)
                    {
                      result = sub_456B24(v27, result);
                    }

                    if (v20 > v17 && v26 - result < -100000)
                    {
                      v29 = v46;
                      if (sub_7E7E4(3u))
                      {
                        v60 = 0;
                        v50 = v39;
                        *(&v50 + *(v39 - 24)) = v38;
                        v30 = (&v50 + *(v50 - 24));
                        std::ios_base::init(v30, &v51);
                        v30[1].__vftable = 0;
                        v30[1].__fmtflags_ = -1;
                        std::locale::locale(&v52);
                        v54 = 0u;
                        v55 = 0u;
                        v53 = 0u;
                        memset(&__p, 0, sizeof(__p));
                        v58 = 16;
                        p_p = &__p;
                        std::string::append(&__p, 0x16uLL, 0);
                        size = __p.__r_.__value_.__l.__size_;
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        *(&v54 + 1) = &__p;
                        *&v55 = &__p;
                        *(&v55 + 1) = &__p + size;
                        sub_4A5C(&v50, "Predicted energy consumption on uphill leg is negative.", 55);
                        if ((v58 & 0x10) != 0)
                        {
                          v33 = p_p;
                          v34 = &v54 + 1;
                          if (p_p < v55)
                          {
                            p_p = v55;
                            v33 = v55;
                            v34 = &v54 + 1;
                          }
                        }

                        else
                        {
                          if ((v58 & 8) == 0)
                          {
                            v32 = 0;
                            v49 = 0;
                            goto LABEL_37;
                          }

                          v33 = v54;
                          v34 = &v53;
                        }

                        v35 = *v34;
                        v32 = v33 - *v34;
                        if (v32 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          sub_3244();
                        }

                        if (v32 >= 0x17)
                        {
                          operator new();
                        }

                        v49 = v33 - *v34;
                        if (v32)
                        {
                          memmove(&__dst, v35, v32);
                        }

                        v29 = v46;
LABEL_37:
                        *(&__dst + v32) = 0;
                        sub_7E854(&__dst, 3u);
                        if (v49 < 0)
                        {
                          operator delete(__dst);
                        }

                        v50 = v37;
                        *(&v50 + *(v37 - 24)) = v36;
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        std::locale::~locale(&v52);
                        std::ostream::~ostream();
                        std::ios::~ios();
                      }

                      result = sub_4E3E40(v29);
                      break;
                    }
                  }
                }
              }

              v12 += 552;
              v13 += 56;
            }

            v9 += 48;
            v10 = v46 + 48;
          }

          v5 = v43 + 24;
          v7 = v42 + 3;
          v8 = v41 + 3;
        }

        while (v43 + 24 != v40);
      }
    }
  }

  return result;
}

void sub_D01984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_D019DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a31);
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_D01A24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v91);
  v77 = a2;
  if (a1[8])
  {
    v4 = sub_44F320(*(a1 + 3));
    sub_FA95C8(&v90);
    if (v4)
    {
      v5 = *(a1 + 5);
      v88 = 9;
      strcpy(v87, "EVRouting");
      __p[0] = 0;
      __p[1] = 0;
      v80 = 0;
      v6 = sub_3AEC94(v5, v87, __p);
      sub_5ADDC(&v81, v6);
      v7 = __p[0];
      if (__p[0])
      {
        v8 = __p[1];
        v9 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v10 = *(v8 - 1);
            v8 -= 3;
            if (v10 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v9 = __p[0];
        }

        __p[1] = v7;
        operator delete(v9);
      }

      if (v88 < 0)
      {
        operator delete(v87[0]);
      }

      operator new();
    }

    a2 = v77;
  }

  else
  {
    sub_FA95C8(&v90);
  }

  sub_FA17A4(v87, *(a1 + 5));
  *a2 = 1;
  *(a2 + 8) = 0u;
  v75 = (a2 + 8);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v11 = **a1;
  for (i = *(*a1 + 8); v11 != i; v11 += 3)
  {
    memset(v89, 0, 24);
    v12 = sub_F73E78(v11);
    sub_D02608(v89, v12);
    v13 = sub_45AC50(v11);
    for (j = sub_588D8(v11); v13 != j; v13 += 48)
    {
      while (1)
      {
        sub_FA340C(v87, v13, a1 + 2, a1[4], __p);
        v15 = *(&v89[0] + 1);
        if (*(&v89[0] + 1) >= *&v89[1])
        {
          break;
        }

        **(&v89[0] + 1) = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = *__p;
        *(v15 + 16) = v80;
        *(&v89[0] + 1) = v15 + 24;
        v13 += 48;
        if (v13 == j)
        {
          goto LABEL_60;
        }
      }

      v16 = *&v89[0];
      v17 = *(&v89[0] + 1) - *&v89[0];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((*(&v89[0] + 1) - *&v89[0]) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((*&v89[1] - *&v89[0]) >> 3) > v19)
      {
        v19 = 0x5555555555555556 * ((*&v89[1] - *&v89[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*&v89[1] - *&v89[0]) >> 3) >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      v84 = v89;
      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v21 = 8 * ((*(&v89[0] + 1) - *&v89[0]) >> 3);
      v81 = 0;
      v82 = v21;
      *v21 = *__p;
      *(v21 + 16) = v80;
      __p[0] = 0;
      __p[1] = 0;
      v80 = 0;
      v83[0] = (24 * v18 + 24);
      v83[1] = 0;
      v22 = (24 * v18 - v17);
      sub_D02844(v89, v16, v15, v22);
      v23 = *&v89[0];
      v24 = *&v89[1];
      *&v89[0] = v22;
      v78 = v83[0];
      *(v89 + 8) = *v83;
      v83[0] = v23;
      v83[1] = v24;
      v81 = v23;
      v82 = v23;
      sub_D026FC(&v81);
      v25 = __p[0];
      *(&v89[0] + 1) = v78;
      if (__p[0])
      {
        v26 = __p[0];
        if (__p[1] != __p[0])
        {
          v27 = __p[1] - 128;
          do
          {
            v29 = *(v27 + 9);
            if (v29)
            {
              *(v27 + 10) = v29;
              operator delete(v29);
            }

            v30 = *(v27 + 6);
            if (v30)
            {
              *(v27 + 7) = v30;
              operator delete(v30);
            }

            v31 = *(v27 + 3);
            if (v31)
            {
              *(v27 + 4) = v31;
              operator delete(v31);
            }

            v32 = *v27;
            if (*v27)
            {
              *(v27 + 1) = v32;
              operator delete(v32);
            }

            v33 = *(v27 - 3);
            if (v33)
            {
              *(v27 - 2) = v33;
              operator delete(v33);
            }

            v34 = *(v27 - 6);
            if (v34)
            {
              *(v27 - 5) = v34;
              operator delete(v34);
            }

            v35 = *(v27 - 9);
            if (v35)
            {
              *(v27 - 8) = v35;
              operator delete(v35);
            }

            v36 = *(v27 - 12);
            if (v36)
            {
              *(v27 - 11) = v36;
              operator delete(v36);
            }

            v37 = *(v27 - 15);
            if (v37)
            {
              *(v27 - 14) = v37;
              operator delete(v37);
            }

            v38 = *(v27 - 18);
            if (v38)
            {
              *(v27 - 17) = v38;
              operator delete(v38);
            }

            v28 = v27 - 160;
            v27 -= 288;
          }

          while (v28 != v25);
          v26 = __p[0];
        }

        __p[1] = v25;
        operator delete(v26);
      }
    }

LABEL_60:
    v85[0] = 0;
    v85[1] = 0;
    v86 = 0;
    v39 = sub_F73E78(v11);
    v40 = v85[1];
    v41 = 0xAAAAAAAAAAAAAAABLL * ((v85[1] - v85[0]) >> 4);
    if (v39 <= v41)
    {
      if (v39 < v41)
      {
        v42 = (v85[0] + 48 * v39);
        if (v85[1] != v42)
        {
          do
          {
            v44 = *(v40 - 3);
            if (v44)
            {
              v45 = *(v40 - 2);
              v46 = *(v40 - 3);
              if (v45 != v44)
              {
                do
                {
                  v47 = *(v45 - 40);
                  if (v47)
                  {
                    *(v45 - 32) = v47;
                    operator delete(v47);
                  }

                  v45 -= 56;
                }

                while (v45 != v44);
                v46 = *(v40 - 3);
              }

              *(v40 - 2) = v44;
              operator delete(v46);
            }

            v48 = (v40 - 48);
            v49 = *(v40 - 6);
            if (v49)
            {
              v50 = *(v40 - 5);
              v43 = *(v40 - 6);
              if (v50 != v49)
              {
                do
                {
                  v51 = *(v50 - 72);
                  if (v51)
                  {
                    *(v50 - 64) = v51;
                    operator delete(v51);
                  }

                  v52 = *(v50 - 96);
                  if (v52)
                  {
                    *(v50 - 88) = v52;
                    operator delete(v52);
                  }

                  v50 -= 136;
                }

                while (v50 != v49);
                v43 = *v48;
              }

              *(v40 - 5) = v49;
              operator delete(v43);
            }

            v40 -= 48;
          }

          while (v48 != v42);
        }

        v85[1] = v42;
      }
    }

    else
    {
      sub_D02D9C(v85, v39 - v41);
    }

    v53 = *(a2 + 16);
    if (v53 >= *(a2 + 24))
    {
      v54 = sub_D029A0(v75, v89);
    }

    else
    {
      *v53 = 0;
      v53[1] = 0;
      v53[2] = 0;
      *v53 = v89[0];
      v53[2] = *&v89[1];
      memset(v89, 0, 24);
      v54 = (v53 + 3);
    }

    *(a2 + 16) = v54;
    v55 = *(a2 + 40);
    if (v55 < *(a2 + 48))
    {
      *v55 = 0;
      v55[1] = 0;
      v55[2] = 0;
      *v55 = *v85;
      v55[2] = v86;
      *(a2 + 40) = v55 + 3;
    }

    else
    {
      sub_D03120(a2 + 32, v85);
      v56 = v85[0];
      *(a2 + 40) = v57;
      if (v56)
      {
        v58 = v85[1];
        v59 = v56;
        if (v85[1] != v56)
        {
          do
          {
            v61 = *(v58 - 3);
            if (v61)
            {
              v62 = *(v58 - 2);
              v63 = *(v58 - 3);
              if (v62 != v61)
              {
                do
                {
                  v64 = *(v62 - 40);
                  if (v64)
                  {
                    *(v62 - 32) = v64;
                    operator delete(v64);
                  }

                  v62 -= 56;
                }

                while (v62 != v61);
                v63 = *(v58 - 3);
              }

              *(v58 - 2) = v61;
              operator delete(v63);
              a2 = v77;
            }

            v65 = (v58 - 48);
            v66 = *(v58 - 6);
            if (v66)
            {
              v67 = *(v58 - 5);
              v60 = *(v58 - 6);
              if (v67 != v66)
              {
                do
                {
                  v68 = *(v67 - 72);
                  if (v68)
                  {
                    *(v67 - 64) = v68;
                    operator delete(v68);
                  }

                  v69 = *(v67 - 96);
                  if (v69)
                  {
                    *(v67 - 88) = v69;
                    operator delete(v69);
                  }

                  v67 -= 136;
                }

                while (v67 != v66);
                v60 = *v65;
              }

              *(v58 - 5) = v66;
              operator delete(v60);
            }

            v58 -= 48;
          }

          while (v65 != v56);
          v59 = v85[0];
        }

        v85[1] = v56;
        operator delete(v59);
      }
    }

    sub_D00AFC(v89);
  }

  sub_D0136C(a1, v75);
  v70 = *a1;
  v72 = **a1;
  v71 = v70[1];
  *(a2 + 56) = vcvtad_u64_f64(sub_7EA60(v91));
  if (v71 == v72)
  {
    v73 = 1000;
  }

  else
  {
    v73 = vcvtad_u64_f64(0.0 / (0xAAAAAAAAAAAAAAABLL * (v71 - v72)));
  }

  *(a2 + 80) = v73;
  return sub_419720(v87);
}

void sub_D024E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_5C010(va);
  sub_5C010(va1);
  _Unwind_Resume(a1);
}

void sub_D02500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D02514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  sub_1A104((v59 - 224));
  if (a59 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a23);
  _Unwind_Resume(a1);
}

void sub_D02540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_1A104(&a15);
  if (a62 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_D02608(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D026E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D026FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D026FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          v9 = v8 - 128;
          do
          {
            v11 = *(v9 + 72);
            if (v11)
            {
              *(v9 + 80) = v11;
              operator delete(v11);
            }

            v12 = *(v9 + 48);
            if (v12)
            {
              *(v9 + 56) = v12;
              operator delete(v12);
            }

            v13 = *(v9 + 24);
            if (v13)
            {
              *(v9 + 32) = v13;
              operator delete(v13);
            }

            v14 = *v9;
            if (*v9)
            {
              *(v9 + 8) = v14;
              operator delete(v14);
            }

            v15 = *(v9 - 24);
            if (v15)
            {
              *(v9 - 16) = v15;
              operator delete(v15);
            }

            v16 = *(v9 - 48);
            if (v16)
            {
              *(v9 - 40) = v16;
              operator delete(v16);
            }

            v17 = *(v9 - 72);
            if (v17)
            {
              *(v9 - 64) = v17;
              operator delete(v17);
            }

            v18 = *(v9 - 96);
            if (v18)
            {
              *(v9 - 88) = v18;
              operator delete(v18);
            }

            v19 = *(v9 - 120);
            if (v19)
            {
              *(v9 - 112) = v19;
              operator delete(v19);
            }

            v20 = *(v9 - 144);
            if (v20)
            {
              *(v9 - 136) = v20;
              operator delete(v20);
            }

            v10 = (v9 - 160);
            v9 -= 288;
          }

          while (v10 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_D02844(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      if (*v5)
      {
        v9 = v5[1];
        v7 = *v5;
        if (v9 != v8)
        {
          v10 = v9 - 128;
          do
          {
            v12 = *(v10 + 72);
            if (v12)
            {
              *(v10 + 80) = v12;
              operator delete(v12);
            }

            v13 = *(v10 + 48);
            if (v13)
            {
              *(v10 + 56) = v13;
              operator delete(v13);
            }

            v14 = *(v10 + 24);
            if (v14)
            {
              *(v10 + 32) = v14;
              operator delete(v14);
            }

            v15 = *v10;
            if (*v10)
            {
              *(v10 + 8) = v15;
              operator delete(v15);
            }

            v16 = *(v10 - 24);
            if (v16)
            {
              *(v10 - 16) = v16;
              operator delete(v16);
            }

            v17 = *(v10 - 48);
            if (v17)
            {
              *(v10 - 40) = v17;
              operator delete(v17);
            }

            v18 = *(v10 - 72);
            if (v18)
            {
              *(v10 - 64) = v18;
              operator delete(v18);
            }

            v19 = *(v10 - 96);
            if (v19)
            {
              *(v10 - 88) = v19;
              operator delete(v19);
            }

            v20 = *(v10 - 120);
            if (v20)
            {
              *(v10 - 112) = v20;
              operator delete(v20);
            }

            v21 = *(v10 - 144);
            if (v21)
            {
              *(v10 - 136) = v21;
              operator delete(v21);
            }

            v11 = (v10 - 160);
            v10 -= 288;
          }

          while (v11 != v8);
          v7 = *v5;
        }

        v5[1] = v8;
        operator delete(v7);
      }

      v5 += 3;
    }
  }
}

uint64_t sub_D029A0(void ****a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * (a1[1] - *a1);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = v5 + 24;
  v7 = *a1;
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v5 + *a1 - v8;
    do
    {
      *v11 = *v10;
      *(v11 + 16) = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 24;
    }

    while (v10 != v8);
    do
    {
      v7 = sub_D00AFC(v7) + 3;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void *sub_D02AF4(void *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    operator delete(v2);
  }

  v3 = a1[41];
  if (v3)
  {
    a1[42] = v3;
    operator delete(v3);
  }

  v4 = a1[36];
  if (v4)
  {
    a1[37] = v4;
    operator delete(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    a1[34] = v5;
    operator delete(v5);
  }

  v6 = a1[27];
  if (v6)
  {
    a1[28] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    a1[25] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_D02B88(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D02C48((a1 + 32));
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 3;
          sub_D00AFC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

void ***sub_D02C48(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v11 = *(v9 - 3);
              if (v11)
              {
                v12 = *(v9 - 2);
                v13 = *(v9 - 3);
                if (v12 != v11)
                {
                  do
                  {
                    v14 = *(v12 - 5);
                    if (v14)
                    {
                      *(v12 - 4) = v14;
                      operator delete(v14);
                    }

                    v12 -= 56;
                  }

                  while (v12 != v11);
                  v13 = *(v9 - 3);
                }

                *(v9 - 2) = v11;
                operator delete(v13);
              }

              v15 = v9 - 6;
              v16 = *(v9 - 6);
              if (v16)
              {
                v17 = *(v9 - 5);
                v10 = *(v9 - 6);
                if (v17 != v16)
                {
                  do
                  {
                    v18 = *(v17 - 9);
                    if (v18)
                    {
                      *(v17 - 8) = v18;
                      operator delete(v18);
                    }

                    v19 = *(v17 - 12);
                    if (v19)
                    {
                      *(v17 - 11) = v19;
                      operator delete(v19);
                    }

                    v17 -= 136;
                  }

                  while (v17 != v16);
                  v10 = *v15;
                }

                *(v9 - 5) = v16;
                operator delete(v10);
              }

              v9 -= 6;
            }

            while (v15 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D02D9C(void ***a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = &v4[6 * a2];
      v10 = 48 * a2;
      do
      {
        sub_4E3D18(v4);
        v4 += 6;
        v10 -= 48;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 48 * v5;
    v19 = v11;
    v12 = 48 * a2;
    v13 = v11 + 48 * a2;
    do
    {
      sub_4E3D18(v11);
      v11 += 48;
      v12 -= 48;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = (v19 + *a1 - v15);
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = (v19 + *a1 - v15);
      do
      {
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        *v18 = *v17;
        v18[2] = v17[2];
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v18[3] = 0;
        v18[4] = 0;
        v18[5] = 0;
        *(v18 + 3) = *(v17 + 3);
        v18[5] = v17[5];
        v17[3] = 0;
        v17[4] = 0;
        v17[5] = 0;
        v17 += 6;
        v18 += 6;
      }

      while (v17 != v15);
      do
      {
        sub_D02FC8(v14);
        v14 += 6;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v13;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_D02FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D030CC(va);
  _Unwind_Resume(a1);
}

void sub_D02FC8(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 == v6)
    {
      a1[1] = v6;
    }

    else
    {
      do
      {
        v9 = *(v7 - 9);
        if (v9)
        {
          *(v7 - 8) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 12);
        if (v10)
        {
          *(v7 - 11) = v10;
          operator delete(v10);
        }

        v7 -= 136;
      }

      while (v7 != v6);
      v8 = *a1;
      a1[1] = v6;
    }

    operator delete(v8);
  }
}

uint64_t sub_D030CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_D02FC8((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_D03120(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = (24 * v2 + *a1 - v6);
  sub_D03268(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = 24 * v2 + 24;
  *(a1 + 8) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 24 * v2 + 24;
  }

  return *&v9;
}

void sub_D03254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_D033CC(va);
  _Unwind_Resume(a1);
}

void sub_D03268(uint64_t a1, void ***a2, void ***a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      if (*v5)
      {
        v9 = v5[1];
        v7 = *v5;
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 3);
            if (v11)
            {
              v12 = *(v9 - 2);
              v13 = *(v9 - 3);
              if (v12 != v11)
              {
                do
                {
                  v14 = *(v12 - 5);
                  if (v14)
                  {
                    *(v12 - 4) = v14;
                    operator delete(v14);
                  }

                  v12 -= 56;
                }

                while (v12 != v11);
                v13 = *(v9 - 3);
              }

              *(v9 - 2) = v11;
              operator delete(v13);
            }

            v15 = v9 - 6;
            v16 = *(v9 - 6);
            if (v16)
            {
              v17 = *(v9 - 5);
              v10 = *(v9 - 6);
              if (v17 != v16)
              {
                do
                {
                  v18 = *(v17 - 9);
                  if (v18)
                  {
                    *(v17 - 8) = v18;
                    operator delete(v18);
                  }

                  v19 = *(v17 - 12);
                  if (v19)
                  {
                    *(v17 - 11) = v19;
                    operator delete(v19);
                  }

                  v17 -= 136;
                }

                while (v17 != v16);
                v10 = *v15;
              }

              *(v9 - 5) = v16;
              operator delete(v10);
            }

            v9 -= 6;
          }

          while (v15 != v8);
          v7 = *v5;
        }

        v5[1] = v8;
        operator delete(v7);
      }

      v5 += 3;
    }
  }
}

uint64_t sub_D033CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 3);
      v4 -= 3;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 2);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {
            v7 -= 6;
            sub_D02FC8(v7);
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 2) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_D03470(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 6;
        sub_D02FC8(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D034D4()
{
  byte_27B4BBF = 3;
  LODWORD(qword_27B4BA8) = 5136193;
  byte_27B4BD7 = 3;
  LODWORD(qword_27B4BC0) = 5136194;
  byte_27B4BEF = 3;
  LODWORD(qword_27B4BD8) = 5136195;
  byte_27B4C07 = 15;
  strcpy(&qword_27B4BF0, "vehicle_mass_kg");
  byte_27B4C1F = 21;
  strcpy(&xmmword_27B4C08, "vehicle_cargo_mass_kg");
  byte_27B4C37 = 19;
  strcpy(&qword_27B4C20, "vehicle_aux_power_w");
  byte_27B4C4F = 15;
  strcpy(&qword_27B4C38, "dcdc_efficiency");
  strcpy(&qword_27B4C50, "drive_train_efficiency");
  HIBYTE(word_27B4C66) = 22;
  operator new();
}

void sub_D036F4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B4C66) < 0)
  {
    sub_21E41F0();
  }

  sub_21E41FC();
  _Unwind_Resume(a1);
}

uint64_t sub_D03714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v13);
  sub_14D4048(v9, 0, 0);
  v11 = 0;
  sub_EB4F7C(&v12, a1, (a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), v7);
  v4 = v10;
  if ((v10 & 2) != 0)
  {
    v4 = 0;
  }

  else if (v10)
  {
    v4 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v5 = v8;
  if ((v8 & 2) != 0)
  {
    v5 = 0;
  }

  else if (v8)
  {
    v5 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v4 == v5)
  {
    sub_14D5848(v9, v7);
  }

  else
  {
    sub_14D5750(v9, v7);
  }

  sub_14D4598(v7);
  v11 = vcvtad_u64_f64(sub_7EA60(v13));
  sub_D03824(a2, v9);
  return sub_14D4598(v9);
}

uint64_t sub_D03824(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_14D4048(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_14D5848(v4, a2);
    }

    else
    {
      sub_14D5750(v4, a2);
    }
  }

  *(a1 + 176) = *(a2 + 168);
  return a1;
}

void sub_D038CC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4C80 = 0u;
  *algn_27B4C90 = 0u;
  dword_27B4CA0 = 1065353216;
  sub_3A9A34(&xmmword_27B4C80, v0);
  sub_3A9A34(&xmmword_27B4C80, v3);
  sub_3A9A34(&xmmword_27B4C80, __p);
  sub_3A9A34(&xmmword_27B4C80, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D03A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B4C80);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_D03B14(uint64_t a1)
{
  sub_7E9A4(v10);
  *__p = 0u;
  v9 = 0u;
  sub_975A28(v11, *(a1 + 136));
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v4 = 0;
    do
    {
      while (v4 >= v7)
      {
        v4 = sub_A5AE5C(&v5, v2);
        v6 = v4;
        v2 = (v2 + 232);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      sub_A31084(v4, v2);
      v4 += 232;
      v6 = v4;
      v2 = (v2 + 232);
    }

    while (v2 != v3);
  }

LABEL_6:
  sub_975A80(v11, &v5, (a1 + 24));
}

void sub_D03D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_A3091C(va);
  sub_D03D60(va1);
  _Unwind_Resume(a1);
}

void sub_D03D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_A3091C(va);
  sub_D03D60(va1);
  _Unwind_Resume(a1);
}

void **sub_D03D60(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v6 = sub_53A868(v6 - 160);
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D03DFC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4CA8 = 0u;
  unk_27B4CB8 = 0u;
  dword_27B4CC8 = 1065353216;
  sub_3A9A34(&xmmword_27B4CA8, v0);
  sub_3A9A34(&xmmword_27B4CA8, v3);
  sub_3A9A34(&xmmword_27B4CA8, __p);
  sub_3A9A34(&xmmword_27B4CA8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D03FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B4CA8);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_D04044(uint64_t a1)
{
  sub_7E9A4(v4);
  v2 = *(a1 + 24);
  v3 = sub_3AF4C0(*(a1 + 136));
  sub_21E2C18(v3, 3, v2);
}

void sub_D04790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33)
{
  *(v33 - 40) = v34;
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  sub_2CD04(&a24);
  sub_1F1A8(&a30);
  sub_CFFA9C(&a32);
  _Unwind_Resume(a1);
}

void sub_D04814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_2CD04(&a21);
  sub_1AB28(v29 - 144);
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

void sub_D04840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

void sub_D0485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29)
{
  sub_5EBF44(&a21);
  sub_1F1A8(&a27);
  sub_CFFA9C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_D048A0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_1794();
  }

  if (0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((a1[2] - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v5 = 0xAE4C415C9882B9;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAE4C415C9882B9)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_D049F4(v11, a2);
  v6 = 376 * v2 + 376;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_CFF5E4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_D049E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CFF92C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D049F4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_4C4BD8(a2);
  *(a1 + 32) = 0x8000000080000000;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  *(a1 + 272) = 0u;
  *(a1 + 288) = v5;
  *(a1 + 304) = v5;
  *(a1 + 320) = 5;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  if (!sub_4C49D0(a2))
  {
    *(a1 + 32) = sub_4C4C40(a2);
    *(a1 + 36) = sub_4E4B18(a2, 0, 6);
    *(a1 + 296) = sub_4E4B18(a2, 1, 6);
    *(a1 + 300) = sub_4E4B18(a2, 2, 6);
    *(a1 + 304) = sub_4E4B18(a2, 3, 6);
    *(a1 + 308) = sub_4E4B18(a2, 4, 6);
    *(a1 + 312) = sub_4E4B18(a2, 5, 6);
  }

  return a1;
}

void sub_D04B1C(_Unwind_Exception *a1)
{
  sub_5706DC((v2 + 320));
  sub_5C0ED8(v3);
  sub_3EE9A4(v2);
  sub_60DB0C(v1);
  _Unwind_Resume(a1);
}

void sub_D04B78()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4D00 = 0u;
  *algn_27B4D10 = 0u;
  dword_27B4D20 = 1065353216;
  sub_3A9A34(&xmmword_27B4D00, v0);
  sub_3A9A34(&xmmword_27B4D00, v3);
  sub_3A9A34(&xmmword_27B4D00, __p);
  sub_3A9A34(&xmmword_27B4D00, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B4CD8 = 0;
    qword_27B4CE0 = 0;
    qword_27B4CD0 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D04DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4CE8)
  {
    qword_27B4CF0 = qword_27B4CE8;
    operator delete(qword_27B4CE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_D04E6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v5);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  sub_4E3D18((a2 + 8));
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 33) == 1)
  {
    sub_48D00C(v4, *a1);
  }
}

void sub_D05A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  std::ios::~ios();
  sub_49AD08(&a32);
  if (a61 < 0)
  {
    operator delete(*(v65 + 192));
  }

  sub_487EC4(&a62);
  sub_D05E04(&a65);
  sub_D05E48(a24);
  _Unwind_Resume(a1);
}

uint64_t sub_D05BD8(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0uLL;
      *v8 = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0uLL;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 40) = 0;
      *(v8 + 24) = 0uLL;
      v11 = *(v8 + 48);
      v12 = *(v8 + 80);
      v13 = *(v8 + 96);
      *(v9 + 64) = *(v8 + 64);
      *(v9 + 80) = v12;
      *(v9 + 48) = v11;
      *(v9 + 96) = v13;
      *(v9 + 104) = 0;
      *(v9 + 112) = 0uLL;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 120) = *(v8 + 120);
      *(v8 + 120) = 0;
      *(v8 + 104) = 0uLL;
      *(v9 + 144) = 0;
      *(v9 + 128) = 0uLL;
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v8 + 144) = 0;
      *(v8 + 128) = 0uLL;
      *(v9 + 168) = 0;
      *(v9 + 152) = 0uLL;
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v8 + 168) = 0;
      *(v8 + 152) = 0uLL;
      v14 = *(v8 + 192);
      v15 = *(v8 + 208);
      *(v9 + 176) = *(v8 + 176);
      *(v9 + 192) = v14;
      *(v9 + 208) = v15;
      *(v9 + 216) = 0;
      *(v9 + 224) = 0uLL;
      *(v9 + 216) = *(v8 + 216);
      *(v9 + 232) = *(v8 + 232);
      *(v8 + 232) = 0;
      *(v8 + 216) = 0uLL;
      *(v9 + 256) = 0;
      *(v9 + 240) = 0uLL;
      *(v9 + 240) = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v8 + 256) = 0;
      *(v8 + 240) = 0uLL;
      v16 = *(v8 + 264);
      v17 = *(v8 + 296);
      *(v9 + 280) = *(v8 + 280);
      *(v9 + 296) = v17;
      *(v9 + 264) = v16;
      v18 = *(v8 + 424);
      v20 = *(v8 + 376);
      v19 = *(v8 + 392);
      *(v9 + 408) = *(v8 + 408);
      *(v9 + 424) = v18;
      *(v9 + 376) = v20;
      *(v9 + 392) = v19;
      v21 = *(v8 + 488);
      v23 = *(v8 + 440);
      v22 = *(v8 + 456);
      *(v9 + 472) = *(v8 + 472);
      *(v9 + 488) = v21;
      *(v9 + 440) = v23;
      *(v9 + 456) = v22;
      v24 = *(v8 + 312);
      v25 = *(v8 + 328);
      v26 = *(v8 + 360);
      *(v9 + 344) = *(v8 + 344);
      *(v9 + 360) = v26;
      *(v9 + 312) = v24;
      *(v9 + 328) = v25;
      *(v9 + 504) = *(v8 + 504);
      *(v9 + 512) = *(v8 + 512);
      *(v8 + 520) = 0;
      *(v8 + 504) = 0uLL;
      *(v9 + 544) = 0;
      *(v9 + 528) = 0uLL;
      *(v9 + 528) = *(v8 + 528);
      *(v9 + 544) = *(v8 + 544);
      *(v8 + 544) = 0;
      *(v8 + 528) = 0uLL;
      v8 += 552;
      v9 += 552;
    }

    while (v8 != v5);
    do
    {
      result = sub_4547F0(result) + 552;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v27 = *a1;
  *a1 = v7;
  a1[1] = v27;
  a2[1] = v27;
  v28 = a1[1];
  a1[1] = a2[2];
  a2[2] = v28;
  v29 = a1[2];
  a1[2] = a2[3];
  a2[3] = v29;
  *a2 = a2[1];
  return result;
}

void *sub_D05E04(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_D05E48(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 552;
          sub_4547F0(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_17:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_D07B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_5BF0C(&a27);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(a10);
  v36 = *(v34 - 224);
  if (v36)
  {
    v38 = *(v34 - 216);
    v39 = *(v34 - 224);
    if (v38 != v36)
    {
      do
      {
        v40 = v38 - 16;
        v41 = *(v38 - 8);
        if (v41 != -1)
        {
          (off_2673638[v41])(&STACK[0x338], v38 - 16);
        }

        *(v38 - 8) = -1;
        v38 -= 16;
      }

      while (v40 != v36);
      v39 = *(v34 - 224);
    }

    *(v34 - 216) = v36;
    operator delete(v39);
    v37 = *(v34 - 176);
    if (!v37)
    {
LABEL_13:
      v42 = *(v34 - 192);
      *(v34 - 192) = 0;
      if (v42)
      {
        operator delete(v42);
      }

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v37 = *(v34 - 176);
    if (!v37)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v43 = *v37;
    v44 = *(v37 + 12);
    if (v44 != -1)
    {
      (off_2673638[v44])(&STACK[0x338], v37 + 5);
    }

    *(v37 + 12) = -1;
    if (*(v37 + 39) < 0)
    {
      operator delete(v37[2]);
    }

    operator delete(v37);
    v37 = v43;
  }

  while (v43);
  goto LABEL_13;
}

void sub_D083FC()
{
  if (!STACK[0x2B0])
  {
    JUMPOUT(0xD081ACLL);
  }

  JUMPOUT(0xD08104);
}

uint64_t sub_D08410(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 4 * a2;
}

void sub_D0852C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_D0860C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 4 * a2;
}

void sub_D08728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_D08808()
{
  __chkstk_darwin();
  v1 = v0;
  sub_7E9A4(v2);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D098AC((v1 + 8));
}

void sub_D08AD4(_Unwind_Exception *a1)
{
  sub_778538(&STACK[0xC18]);
  if (*(v2 + 23) < 0)
  {
    operator delete(*(v3 - 112));
    sub_D0ECD8(v1);
    _Unwind_Resume(a1);
  }

  sub_D0ECD8(v1);
  _Unwind_Resume(a1);
}

void sub_D08B30()
{
  __chkstk_darwin();
  v1 = v0;
  sub_7E9A4(v2);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D0EECC((v1 + 8));
}

void sub_D08D84(_Unwind_Exception *a1)
{
  sub_784028(&STACK[0xC18]);
  if (*(v2 + 23) < 0)
  {
    operator delete(*(v3 - 96));
    sub_D0F09C(v1);
    _Unwind_Resume(a1);
  }

  sub_D0F09C(v1);
  _Unwind_Resume(a1);
}

void sub_D08DDC()
{
  __chkstk_darwin();
  v1 = v0;
  sub_7E9A4(v2);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D0F290((v1 + 8));
}

void sub_D0929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_5BF0C(&a14);
  sub_5C010(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(STACK[0x980]);
  }

  sub_615AA0(&STACK[0xC40]);
  if (*(v22 + 23) < 0)
  {
    operator delete(*(v23 - 152));
  }

  sub_D0F460(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_D09358(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  sub_6BE5B4(a1 + 56, (a2 + 56));
  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  sub_5A0314((a1 + 120), a2 + 120);
  v8 = *(a2 + 488);
  v9 = *(a2 + 520);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 520) = v9;
  *(a1 + 488) = v8;
  v10 = *(a2 + 536);
  v11 = *(a2 + 552);
  v12 = *(a2 + 568);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 552) = v11;
  *(a1 + 568) = v12;
  *(a1 + 536) = v10;
  v13 = *(a1 + 632);
  v14 = *(a2 + 632);
  if (v13 == -1)
  {
    if (v14 == -1)
    {
      goto LABEL_12;
    }
  }

  else if (v14 == -1)
  {
    (off_26736C8[v13])(&v34, a1 + 600);
    *(a1 + 632) = -1;
    goto LABEL_12;
  }

  v33 = a1 + 600;
  (off_26736F0[v14])(&v33);
LABEL_12:
  *(a1 + 640) = *(a2 + 640);
  v15 = (a1 + 648);
  if (*(a1 + 671) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *v15 = v16;
  *(a2 + 671) = 0;
  *(a2 + 648) = 0;
  *(a1 + 672) = *(a2 + 672);
  v17 = (a1 + 680);
  if (*(a1 + 703) < 0)
  {
    operator delete(*v17);
  }

  v18 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *v17 = v18;
  *(a2 + 703) = 0;
  *(a2 + 680) = 0;
  *(a1 + 704) = *(a2 + 704);
  v19 = *(a1 + 712);
  if (v19)
  {
    v20 = (a1 + 712);
    v21 = *(a1 + 720);
    v22 = *(a1 + 712);
    if (v21 != v19)
    {
      do
      {
        v23 = *(v21 - 41);
        v21 -= 8;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v19);
      v22 = *v20;
    }

    *(a1 + 720) = v19;
    operator delete(v22);
    *v20 = 0;
    *(a1 + 720) = 0;
    *(a1 + 728) = 0;
  }

  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 728) = 0;
  *(a2 + 712) = 0;
  v24 = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 736) = v24;
  v25 = *(a1 + 760);
  if (v25)
  {
    v26 = (a1 + 760);
    v27 = *(a1 + 768);
    v28 = *(a1 + 760);
    if (v27 != v25)
    {
      do
      {
        v27 = sub_53A868(v27 - 168);
      }

      while (v27 != v25);
      v28 = *v26;
    }

    *(a1 + 768) = v25;
    operator delete(v28);
    *v26 = 0;
    *(a1 + 768) = 0;
    *(a1 + 776) = 0;
  }

  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 776) = 0;
  *(a2 + 760) = 0;
  v29 = *(a2 + 784);
  *(a1 + 788) = *(a2 + 788);
  *(a1 + 784) = v29;
  v30 = (a1 + 792);
  if (*(a1 + 815) < 0)
  {
    operator delete(*v30);
  }

  v31 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *v30 = v31;
  *(a2 + 815) = 0;
  *(a2 + 792) = 0;
  return a1;
}

void sub_D09670(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  if ((*a2 != -1 || *(a2 + 4) != -1) && (*a3 != -1 || a3[1] != -1))
  {
    sub_314EC(a2, a3, a4);
    v8 = v7 * 100.0;
    if (v8 >= 0.0)
    {
      v9 = v8;
      if (v8 >= 4.50359963e15)
      {
        goto LABEL_17;
      }

      v10 = (v8 + v8) + 1;
    }

    else
    {
      v9 = v8;
      if (v8 <= -4.50359963e15)
      {
        goto LABEL_17;
      }

      v10 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    }

    v9 = (v10 >> 1);
LABEL_17:
    if (v9 >= 9.22337204e18)
    {
      v11 = 0x7FFFFFFFFFFFFFFELL;
      v12 = *(a1 + 8);
      v14 = *(v12 + 8);
      v13 = *(v12 + 16);
      if (v14 >= v13)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    if (v8 >= 0.0)
    {
      if (v8 >= 4.50359963e15)
      {
        goto LABEL_26;
      }

      v15 = (v8 + v8) + 1;
    }

    else
    {
      if (v8 <= -4.50359963e15)
      {
        goto LABEL_26;
      }

      v15 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    }

    v8 = (v15 >> 1);
LABEL_26:
    v11 = v8;
    v12 = *(a1 + 8);
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    if (v14 >= v13)
    {
      goto LABEL_27;
    }

LABEL_13:
    *v14 = v11;
    *(v12 + 8) = v14 + 1;
    return;
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 8);
  v14 = *(v12 + 8);
  v13 = *(v12 + 16);
  if (v14 < v13)
  {
    goto LABEL_13;
  }

LABEL_27:
  v16 = *v12;
  v17 = v14 - *v12;
  v18 = v17 >> 3;
  v19 = (v17 >> 3) + 1;
  if (v19 >> 61)
  {
    sub_1794();
  }

  v20 = v13 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (!(v21 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(8 * v18) = v11;
  v22 = 8 * v18 + 8;
  memcpy(0, v16, v17);
  *v12 = 0;
  *(v12 + 8) = v22;
  *(v12 + 16) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  *(v12 + 8) = v22;
}

void sub_D098AC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_559C9C(a1 + 24);
  bzero((a1 + 1112), 0x348uLL);
  sub_5C0A00(a1 + 1136);
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2154) = 0u;
  sub_787B20(a1 + 2176);
  sub_D09A7C(a1 + 1952, v2);
  *__p = *v2;
  v5 = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  sub_44F3E4(a1 + 5000, __p);
}

void sub_D099F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_9DA0(&a9);
  v22 = *(v20 + 4976);
  if (v22)
  {
    *(v20 + 4984) = v22;
    operator delete(v22);
  }

  sub_D0AA6C(v20 + 24);
  sub_77A2F0(v20);
  _Unwind_Resume(a1);
}

void sub_D09A44(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1112));
  sub_559E70((v1 + 24));
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void sub_D09A7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 23) = 14;
  qmemcpy(a2, "GuidanceModule", 14);
  LOBYTE(v44[0]) = 1;
  v5 = sub_D0ACE4((a2 + 24), "Runtime", v44, a1);
  v6 = v5;
  v7 = *(a2 + 40);
  *(a2 + 32) = v5;
  LOBYTE(v44[0]) = 1;
  if (v5 >= v7)
  {
    v8 = sub_3899C4(v4, "PopulateSubrouteWaypointsEVInfo.Runtime", v44, (a1 + 8));
    *(a2 + 32) = v8;
    LOBYTE(v44[0]) = 1;
    if (v8 >= *(a2 + 40))
    {
LABEL_3:
      v9 = sub_D0AFE8(v4, "StepBuilder.Runtime", v44, (a1 + 16));
      *(a2 + 32) = v9;
      LOBYTE(v44[0]) = 1;
      if (v9 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_389B78(v5, "PopulateSubrouteWaypointsEVInfo.Runtime", v44, (a1 + 8));
    v8 = v6 + 48;
    *(a2 + 32) = v8;
    LOBYTE(v44[0]) = 1;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_D0B19C(v8, "StepBuilder.Runtime", v44, (a1 + 16));
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  LOBYTE(v44[0]) = 1;
  if (v9 >= *(a2 + 40))
  {
LABEL_4:
    v10 = sub_D0B2EC(v4, "StepNamer.Runtime", v44, (a1 + 24));
    *(a2 + 32) = v10;
    LOBYTE(v44[0]) = 1;
    if (v10 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_D0B4A0(v9, "StepNamer.Runtime", v44, (a1 + 24));
  v10 = v9 + 48;
  *(a2 + 32) = v10;
  LOBYTE(v44[0]) = 1;
  if (v10 >= *(a2 + 40))
  {
LABEL_5:
    v11 = sub_D0B5F0(v4, "AddTrafficColors.Runtime", v44, (a1 + 32));
    *(a2 + 32) = v11;
    LOBYTE(v44[0]) = 1;
    if (v11 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_D0B7A4(v10, "AddTrafficColors.Runtime", v44, (a1 + 32));
  v11 = v10 + 48;
  *(a2 + 32) = v11;
  LOBYTE(v44[0]) = 1;
  if (v11 >= *(a2 + 40))
  {
LABEL_6:
    v12 = sub_D0B8F4(v4, "SetOnRouteIncidents.Runtime", v44, (a1 + 40));
    *(a2 + 32) = v12;
    LOBYTE(v44[0]) = 1;
    if (v12 >= *(a2 + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_D0BAA8(v11, "SetOnRouteIncidents.Runtime", v44, (a1 + 40));
  v12 = v11 + 48;
  *(a2 + 32) = v12;
  LOBYTE(v44[0]) = 1;
  if (v12 >= *(a2 + 40))
  {
LABEL_7:
    v13 = sub_D0BBF8(v4, "StepAnalyzer.Runtime", v44, (a1 + 48));
    *(a2 + 32) = v13;
    LOBYTE(v44[0]) = 1;
    if (v13 >= *(a2 + 40))
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_D0BDAC(v12, "StepAnalyzer.Runtime", v44, (a1 + 48));
  v13 = v12 + 48;
  *(a2 + 32) = v13;
  LOBYTE(v44[0]) = 1;
  if (v13 >= *(a2 + 40))
  {
LABEL_8:
    v14 = sub_D0B8F4(v4, "LaneGuidanceBuilder.Runtime", v44, (a1 + 56));
    *(a2 + 32) = v14;
    LOBYTE(v44[0]) = 1;
    if (v14 >= *(a2 + 40))
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_D0BAA8(v13, "LaneGuidanceBuilder.Runtime", v44, (a1 + 56));
  v14 = v13 + 48;
  *(a2 + 32) = v14;
  LOBYTE(v44[0]) = 1;
  if (v14 >= *(a2 + 40))
  {
LABEL_9:
    v15 = sub_3893BC(v4, "SpecialTravelZoneCalculator.Runtime", v44, (a1 + 72));
    *(a2 + 32) = v15;
    LOBYTE(v44[0]) = 1;
    if (v15 >= *(a2 + 40))
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_389570(v14, "SpecialTravelZoneCalculator.Runtime", v44, (a1 + 72));
  v15 = v14 + 48;
  *(a2 + 32) = v15;
  LOBYTE(v44[0]) = 1;
  if (v15 >= *(a2 + 40))
  {
LABEL_10:
    v16 = sub_D0BEFC(v4, "ArrivalInfoBuilder.Runtime", v44, (a1 + 80));
    *(a2 + 32) = v16;
    LOBYTE(v44[0]) = 1;
    if (v16 >= *(a2 + 40))
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_D0C0B0(v15, "ArrivalInfoBuilder.Runtime", v44, (a1 + 80));
  v16 = v15 + 48;
  *(a2 + 32) = v16;
  LOBYTE(v44[0]) = 1;
  if (v16 >= *(a2 + 40))
  {
LABEL_11:
    v17 = sub_389CC8(v4, "ElevationInfoBuilder.Runtime", v44, (a1 + 88));
    *(a2 + 32) = v17;
    LOBYTE(v44[0]) = 1;
    if (v17 >= *(a2 + 40))
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_389E7C(v16, "ElevationInfoBuilder.Runtime", v44, (a1 + 88));
  v17 = v16 + 48;
  *(a2 + 32) = v17;
  LOBYTE(v44[0]) = 1;
  if (v17 >= *(a2 + 40))
  {
LABEL_12:
    v18 = sub_389CC8(v4, "EnrouteNoticeBuilder.Runtime", v44, (a1 + 96));
    *(a2 + 32) = v18;
    LOBYTE(v44[0]) = 1;
    if (v18 >= *(a2 + 40))
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_389E7C(v17, "EnrouteNoticeBuilder.Runtime", v44, (a1 + 96));
  v18 = v17 + 48;
  *(a2 + 32) = v18;
  LOBYTE(v44[0]) = 1;
  if (v18 >= *(a2 + 40))
  {
LABEL_13:
    v19 = sub_D0C200(v4, "RouteLineStyleBuilder.Runtime", v44, (a1 + 104));
    *(a2 + 32) = v19;
    LOBYTE(v44[0]) = 1;
    if (v19 >= *(a2 + 40))
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_D0C3B4(v18, "RouteLineStyleBuilder.Runtime", v44, (a1 + 104));
  v19 = v18 + 48;
  *(a2 + 32) = v19;
  LOBYTE(v44[0]) = 1;
  if (v19 >= *(a2 + 40))
  {
LABEL_14:
    v20 = sub_D0C504(v4, "RoadDescriptionBuilder.Runtime", v44, (a1 + 112));
    *(a2 + 32) = v20;
    LOBYTE(v44[0]) = 1;
    if (v20 >= *(a2 + 40))
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  sub_D0C6B8(v19, "RoadDescriptionBuilder.Runtime", v44, (a1 + 112));
  v20 = v19 + 48;
  *(a2 + 32) = v20;
  LOBYTE(v44[0]) = 1;
  if (v20 >= *(a2 + 40))
  {
LABEL_15:
    v21 = sub_D0C808(v4, "AdvisoryBuilder.Runtime", v44, (a1 + 120));
    *(a2 + 32) = v21;
    LOBYTE(v44[0]) = 1;
    if (v21 >= *(a2 + 40))
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_D0C9BC(v20, "AdvisoryBuilder.Runtime", v44, (a1 + 120));
  v21 = v20 + 48;
  *(a2 + 32) = v21;
  LOBYTE(v44[0]) = 1;
  if (v21 >= *(a2 + 40))
  {
LABEL_16:
    v22 = sub_D0AFE8(v4, "RouteTagger.Runtime", v44, (a1 + 128));
    *(a2 + 32) = v22;
    LOBYTE(v44[0]) = 1;
    if (v22 >= *(a2 + 40))
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_D0B19C(v21, "RouteTagger.Runtime", v44, (a1 + 128));
  v22 = v21 + 48;
  *(a2 + 32) = v22;
  LOBYTE(v44[0]) = 1;
  if (v22 >= *(a2 + 40))
  {
LABEL_17:
    v23 = sub_D0CB0C(v4, "RouteNamer.Runtime", v44, (a1 + 136));
    *(a2 + 32) = v23;
    LOBYTE(v44[0]) = 1;
    if (v23 >= *(a2 + 40))
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  sub_D0CCC0(v22, "RouteNamer.Runtime", v44, (a1 + 136));
  v23 = v22 + 48;
  *(a2 + 32) = v23;
  LOBYTE(v44[0]) = 1;
  if (v23 >= *(a2 + 40))
  {
LABEL_18:
    v24 = sub_D0C504(v4, "SmartGuidancePopulator.Runtime", v44, (a1 + 144));
    *(a2 + 32) = v24;
    LOBYTE(v44[0]) = 1;
    if (v24 >= *(a2 + 40))
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  sub_D0C6B8(v23, "SmartGuidancePopulator.Runtime", v44, (a1 + 144));
  v24 = v23 + 48;
  *(a2 + 32) = v24;
  LOBYTE(v44[0]) = 1;
  if (v24 >= *(a2 + 40))
  {
LABEL_19:
    v25 = sub_D0C504(v4, "BasicGuidancePopulator.Runtime", v44, (a1 + 152));
    *(a2 + 32) = v25;
    LOBYTE(v44[0]) = 1;
    if (v25 >= *(a2 + 40))
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_D0C6B8(v24, "BasicGuidancePopulator.Runtime", v44, (a1 + 152));
  v25 = v24 + 48;
  *(a2 + 32) = v25;
  LOBYTE(v44[0]) = 1;
  if (v25 >= *(a2 + 40))
  {
LABEL_20:
    v26 = sub_D0CE10(v4, "ARInfoBuilder.Runtime", v44, (a1 + 160));
    *(a2 + 32) = v26;
    LOBYTE(v44[0]) = 1;
    if (v26 >= *(a2 + 40))
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  sub_D0CFC4(v25, "ARInfoBuilder.Runtime", v44, (a1 + 160));
  v26 = v25 + 48;
  *(a2 + 32) = v26;
  LOBYTE(v44[0]) = 1;
  if (v26 >= *(a2 + 40))
  {
LABEL_21:
    v27 = sub_D0D114(v4, "RouteLineOffsetCalibrator.Runtime", v44, (a1 + 184));
    *(a2 + 32) = v27;
    LOBYTE(v44[0]) = 4;
    if (v27 >= *(a2 + 40))
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  sub_D0D2C8(v26, "RouteLineOffsetCalibrator.Runtime", v44, (a1 + 184));
  v27 = v26 + 48;
  *(a2 + 32) = v27;
  LOBYTE(v44[0]) = 4;
  if (v27 >= *(a2 + 40))
  {
LABEL_22:
    v28 = sub_D0D418(v4, "NumTotalWaypointRoutes", v44, (a1 + 192));
    *(a2 + 32) = v28;
    LOBYTE(v44[0]) = 4;
    if (v28 >= *(a2 + 40))
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  sub_D0D5CC(v27, "NumTotalWaypointRoutes", v44, (a1 + 192));
  v28 = v27 + 48;
  *(a2 + 32) = v28;
  LOBYTE(v44[0]) = 4;
  if (v28 >= *(a2 + 40))
  {
LABEL_23:
    v29 = sub_D0D71C(v4, "NumTotalSubroutes", v44, (a1 + 196));
    *(a2 + 32) = v29;
    LOBYTE(v44[0]) = 4;
    if (v29 >= *(a2 + 40))
    {
      goto LABEL_24;
    }

LABEL_48:
    sub_D0DBD4(v29, "NumTotalSteps", v44, (a1 + 200));
    v30 = v29 + 48;
    *(a2 + 32) = v30;
    LOBYTE(v44[0]) = 4;
    if (v30 >= *(a2 + 40))
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_47:
  sub_D0D8D0(v28, "NumTotalSubroutes", v44, (a1 + 196));
  v29 = v28 + 48;
  *(a2 + 32) = v29;
  LOBYTE(v44[0]) = 4;
  if (v29 < *(a2 + 40))
  {
    goto LABEL_48;
  }

LABEL_24:
  v30 = sub_D0DA20(v4, "NumTotalSteps", v44, (a1 + 200));
  *(a2 + 32) = v30;
  LOBYTE(v44[0]) = 4;
  if (v30 >= *(a2 + 40))
  {
LABEL_25:
    v31 = sub_D0DD24(v4, "NumTotalSegments", v44, (a1 + 204));
    goto LABEL_50;
  }

LABEL_49:
  sub_D0DED8(v30, "NumTotalSegments", v44, (a1 + 204));
  v31 = v30 + 48;
LABEL_50:
  *(a2 + 32) = v31;
  sub_D0AAE0(a1 + 208, v44);
  sub_D0E630(v4, *(a2 + 32), v46, v47, 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 4));
  sub_722F64((a1 + 224), &v40);
  sub_D0E630(v4, *(a2 + 32), __p, v43, 0xAAAAAAAAAAAAAAABLL * ((v43 - __p) >> 4));
  v32 = __p;
  if (__p)
  {
    v33 = v43;
    v34 = __p;
    if (v43 != __p)
    {
      do
      {
        v35 = *(v33 - 25);
        v33 -= 6;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
      v34 = __p;
    }

    v43 = v32;
    operator delete(v34);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  v36 = v46;
  if (v46)
  {
    v37 = v47;
    v38 = v46;
    if (v47 != v46)
    {
      do
      {
        v39 = *(v37 - 25);
        v37 -= 6;
        if (v39 < 0)
        {
          operator delete(*v37);
        }
      }

      while (v37 != v36);
      v38 = v46;
    }

    v47 = v36;
    operator delete(v38);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }
}

void sub_D0A5E0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A60C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A638(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A664(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A690(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A6BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A6E8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A714(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A740(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A76C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A798(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A7C4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A7F0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A81C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A848(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A874(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A8A0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A8CC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A8F8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A924(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A950(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A97C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A9A8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0A9E8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_9DA0(&a9);
  sub_9DA0(&a15);
  sub_9DA0(v15);
  _Unwind_Resume(a1);
}

void sub_D0AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9DA0(va);
  sub_9DA0(v7);
  _Unwind_Resume(a1);
}

void ***sub_D0AA6C(uint64_t a1)
{
  sub_5C0F34(a1 + 1112);
  v2 = *(a1 + 1088);
  if (v2)
  {
    v3 = *(a1 + 1096);
    v4 = *(a1 + 1088);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3A9518(v3 - 1120);
      }

      while (v3 != v2);
      v4 = *(a1 + 1088);
    }

    *(a1 + 1096) = v2;
    operator delete(v4);
  }

  return sub_559E70(a1);
}

uint64_t sub_D0AAE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  *(a2 + 24) = 0;
  v5 = (a2 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  strcpy(a2, "TrafficControlGuidance");
  *(a2 + 23) = 22;
  if (*(result + 8) == 1)
  {
    if (*result)
    {
      v13 = 4;
      result = sub_D0E028(v5, "TrafficControlGuidance.NumTotalSignals", &v13, result);
    }

    else
    {
      v12 = 4;
      v11 = 1;
      result = sub_D0E32C(v5, "TrafficControlGuidance.NoSignalsFound", &v12, &v11);
    }

    v4 = result;
    *(a2 + 32) = result;
  }

  if (*(v2 + 9) == 1)
  {
    v7 = *(v2 + 4);
    v6 = (v2 + 4);
    if (v7)
    {
      v10 = 4;
      if (v4 >= *(a2 + 40))
      {
        result = sub_D0E028(v5, "TrafficControlGuidance.NumTotalCameras", &v10, v6);
        goto LABEL_15;
      }

      sub_D0E1DC(v4, "TrafficControlGuidance.NumTotalCameras", &v10, v6);
    }

    else
    {
      v9 = 4;
      v8 = 1;
      if (v4 >= *(a2 + 40))
      {
        result = sub_D0E32C(v5, "TrafficControlGuidance.NoCamerasFound", &v9, &v8);
        goto LABEL_15;
      }

      sub_D0E4E0(v4, "TrafficControlGuidance.NoCamerasFound", &v9, &v8);
    }

    result = v4 + 48;
LABEL_15:
    *(a2 + 32) = result;
  }

  return result;
}

void sub_D0AC78(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D0ACA4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D0ACE4(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0AE98(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0AE84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0AE98(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0AFE8(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0B19C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0B188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0B19C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0B2EC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0B4A0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0B48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0B4A0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0B5F0(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0B7A4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0B790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0B7A4(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0B8F4(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0BAA8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0BA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0BAA8(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0BBF8(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0BDAC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0BD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0BDAC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0BEFC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0C0B0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0C09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0C0B0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0C200(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0C3B4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0C3A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0C3B4(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0C504(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0C6B8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0C6A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0C6B8(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0C808(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0C9BC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0C9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0C9BC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0CB0C(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0CCC0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0CCAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0CCC0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0CE10(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0CFC4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0CFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0CFC4(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0D114(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0D2C8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0D2B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0D2C8(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0D418(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0D5CC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0D5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0D5CC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0D71C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0D8D0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0D8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0D8D0(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0DA20(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0DBD4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0DBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0DBD4(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0DD24(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0DED8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0DEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0DED8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0E028(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0E1DC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0E1C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0E1DC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0E32C(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D0E4E0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D0E4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0E4E0(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D0E630(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 16 * (a2 - v11);
    v81 = v30;
    v31 = 48 * a5;
    v32 = v30 + 48 * a5;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v30, *v7, *(v7 + 1));
      }

      else
      {
        v33 = *v7;
        *(v30 + 16) = *(v7 + 2);
        *v30 = v33;
      }

      v34 = *(v7 + 24);
      *(v30 + 40) = *(v7 + 10);
      *(v30 + 24) = v34;
      v30 += 48;
      v7 += 3;
      v31 -= 48;
    }

    while (v31);
    v35 = a1[1];
    v36 = v5;
    if (v35 != v5)
    {
      v37 = v5;
      v38 = v32;
      do
      {
        v39 = *v37;
        *(v38 + 16) = *(v37 + 2);
        *v38 = v39;
        *(v37 + 1) = 0;
        *(v37 + 2) = 0;
        *v37 = 0;
        v40 = *(v37 + 24);
        *(v38 + 40) = *(v37 + 10);
        *(v38 + 24) = v40;
        v37 += 3;
        v38 += 48;
      }

      while (v37 != v35);
      v41 = v5;
      do
      {
        if (*(v41 + 23) < 0)
        {
          operator delete(*v41);
        }

        v41 += 3;
      }

      while (v41 != v35);
      v36 = a1[1];
    }

    v42 = v32 + v36 - v5;
    a1[1] = v5;
    v43 = *a1;
    v44 = v81 + *a1 - v5;
    if (*a1 != v5)
    {
      v45 = *a1;
      v46 = v81 + *a1 - v5;
      do
      {
        v47 = *v45;
        *(v46 + 16) = *(v45 + 2);
        *v46 = v47;
        *(v45 + 1) = 0;
        *(v45 + 2) = 0;
        *v45 = 0;
        v48 = *(v45 + 24);
        *(v46 + 40) = *(v45 + 10);
        *(v46 + 24) = v48;
        v45 += 3;
        v46 += 48;
      }

      while (v45 != v5);
      do
      {
        if (*(v43 + 23) < 0)
        {
          operator delete(*v43);
        }

        v43 += 48;
      }

      while (v43 != v5);
      v43 = *a1;
    }

    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v43)
    {
      operator delete(v43);
    }

    return v81;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) < a5)
  {
    v16 = (a3 + v15);
    v17 = sub_D0EC10(a1, (a3 + v15), a4, a1[1]);
    v18 = v17;
    a1[1] = v17;
    if (v15 >= 1)
    {
      v19 = v17 - 48 * a5;
      if (v19 >= v10)
      {
        v21 = v17;
      }

      else
      {
        v20 = v17 - 48 * a5;
        v21 = v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = 0;
          v23 = *(v20 + 24);
          *(v21 + 40) = *(v20 + 40);
          *(v21 + 24) = v23;
          v20 += 48;
          v21 += 48;
        }

        while (v20 < v10);
      }

      a1[1] = v21;
      if (v17 != &v5[3 * a5])
      {
        v66 = 0;
        v67 = &v5[3 * a5] - v17;
        do
        {
          v71 = v18 + v66;
          v72 = (v18 + v66 - 48);
          if (*(v18 + v66 - 25) < 0)
          {
            operator delete(*v72);
          }

          v68 = (v19 + v66 - 48);
          v69 = *v68;
          *(v18 + v66 - 32) = *(v19 + v66 - 32);
          *v72 = v69;
          *(v19 + v66 - 25) = 0;
          *v68 = 0;
          v70 = *(v19 + v66 - 24);
          *(v71 - 8) = *(v19 + v66 - 8);
          *(v71 - 24) = v70;
          v66 -= 48;
        }

        while (v67 != v66);
      }

      v73 = 0;
      do
      {
        v77 = &v5[v73];
        v78 = &v7[v73];
        if (v7 != v5)
        {
          v79 = *(v78 + 23);
          if (*(v77 + 23) < 0)
          {
            if (v79 >= 0)
            {
              v74 = &v7[v73];
            }

            else
            {
              v74 = *&v7[v73];
            }

            if (v79 >= 0)
            {
              v75 = *(v78 + 23);
            }

            else
            {
              v75 = *(&v7[v73] + 1);
            }

            sub_13B38(&v5[v73], v74, v75);
          }

          else if ((*(v78 + 23) & 0x80) != 0)
          {
            sub_13A68(&v5[v73], *&v7[v73], *(&v7[v73] + 1));
          }

          else
          {
            v80 = *v78;
            *(v77 + 2) = *(v78 + 2);
            *v77 = v80;
          }
        }

        v76 = *(v78 + 24);
        *(v77 + 10) = *(v78 + 10);
        *(v77 + 24) = v76;
        v73 += 3;
      }

      while (&v7[v73] != v16);
    }

    return v5;
  }

  v24 = &a2[3 * a5];
  v25 = v10 - 48 * a5;
  if (v25 >= v10)
  {
    a1[1] = v10;
    if (v10 == v24)
    {
      goto LABEL_53;
    }

LABEL_49:
    v50 = 0;
    v51 = &a2[3 * a5] - v10;
    do
    {
      v55 = v10 + v50;
      v56 = (v10 + v50 - 48);
      if (*(v10 + v50 - 25) < 0)
      {
        operator delete(*v56);
      }

      v52 = (v25 + v50 - 48);
      v53 = *v52;
      *(v10 + v50 - 32) = *(v25 + v50 - 32);
      *v56 = v53;
      *(v25 + v50 - 25) = 0;
      *v52 = 0;
      v54 = *(v25 + v50 - 24);
      *(v55 - 8) = *(v25 + v50 - 8);
      *(v55 - 24) = v54;
      v50 -= 48;
    }

    while (v51 != v50);
    goto LABEL_53;
  }

  v26 = (v10 - 48 * a5);
  v27 = a1[1];
  do
  {
    v28 = *v26;
    *(v27 + 16) = *(v26 + 2);
    *v27 = v28;
    *(v26 + 1) = 0;
    *(v26 + 2) = 0;
    *v26 = 0;
    v29 = *(v26 + 24);
    *(v27 + 40) = *(v26 + 10);
    *(v27 + 24) = v29;
    v26 += 3;
    v27 += 48;
  }

  while (v26 < v10);
  a1[1] = v27;
  if (v10 != v24)
  {
    goto LABEL_49;
  }

LABEL_53:
  v57 = 0;
  v58 = &v7[3 * a5];
  do
  {
    v62 = &v5[v57];
    v63 = &v7[v57];
    if (v7 != v5)
    {
      v64 = *(v63 + 23);
      if (*(v62 + 23) < 0)
      {
        if (v64 >= 0)
        {
          v59 = &v7[v57];
        }

        else
        {
          v59 = *&v7[v57];
        }

        if (v64 >= 0)
        {
          v60 = *(v63 + 23);
        }

        else
        {
          v60 = *(&v7[v57] + 1);
        }

        sub_13B38(&v5[v57], v59, v60);
      }

      else if ((*(v63 + 23) & 0x80) != 0)
      {
        sub_13A68(&v5[v57], *&v7[v57], *(&v7[v57] + 1));
      }

      else
      {
        v65 = *v63;
        *(v62 + 2) = *(v63 + 2);
        *v62 = v65;
      }
    }

    v61 = *(v63 + 24);
    *(v62 + 10) = *(v63 + 10);
    *(v62 + 24) = v61;
    v57 += 3;
  }

  while (&v7[v57] != v58);
  return v5;
}

void sub_D0EBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0EC10(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v4, *v7, *(v7 + 1));
        v9 = v11;
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
        v9 = v4;
      }

      v10 = *(v7 + 24);
      *(v4 + 40) = *(v7 + 10);
      *(v4 + 24) = v10;
      v7 += 3;
      v4 = v9 + 48;
      v11 = v9 + 48;
    }

    while (v7 != a3);
  }

  return v4;
}

uint64_t sub_D0ECD8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0ED74(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0ED74(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_789448(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0EECC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_559C9C(a1 + 24);
  bzero((a1 + 1112), 0x348uLL);
  sub_5C0A00(a1 + 1136);
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2154) = 0u;
  sub_787B20(a1 + 2176);
  sub_D09A7C(a1 + 1952, v2);
  *__p = *v2;
  v5 = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  sub_44F3E4(a1 + 5000, __p);
}

void sub_D0F010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_9DA0(&a9);
  v22 = *(v20 + 4976);
  if (v22)
  {
    *(v20 + 4984) = v22;
    operator delete(v22);
  }

  sub_D0AA6C(v20 + 24);
  sub_785D84(v20);
  _Unwind_Resume(a1);
}

void sub_D0F064(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1112));
  sub_559E70((v1 + 24));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D0F09C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0F138(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0F138(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_78B5C0(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0F290(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_559C9C(a1 + 24);
  bzero((a1 + 1112), 0x348uLL);
  sub_5C0A00(a1 + 1136);
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2154) = 0u;
  sub_787B20(a1 + 2176);
  sub_D09A7C(a1 + 1952, v2);
  *__p = *v2;
  v5 = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  sub_44F3E4(a1 + 5000, __p);
}

void sub_D0F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_9DA0(&a9);
  v22 = *(v20 + 4976);
  if (v22)
  {
    *(v20 + 4984) = v22;
    operator delete(v22);
  }

  sub_D0AA6C(v20 + 24);
  sub_5DAA94(v20);
  _Unwind_Resume(a1);
}

void sub_D0F428(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1112));
  sub_559E70((v1 + 24));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D0F460(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0F4FC(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0F4FC(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_5C1158(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0F654()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B4D88 = 0u;
  unk_27B4D98 = 0u;
  dword_27B4DA8 = 1065353216;
  sub_3A9A34(&xmmword_27B4D88, v0);
  sub_3A9A34(&xmmword_27B4D88, v3);
  sub_3A9A34(&xmmword_27B4D88, __p);
  sub_3A9A34(&xmmword_27B4D88, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B4D30 = 0;
    qword_27B4D38 = 0;
    qword_27B4D28 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D0FA6C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (byte_27B4E6F < 0)
  {
    sub_21E42CC();
  }

  sub_21E42EC(a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_D0FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4D40)
  {
    qword_27B4D48 = qword_27B4D40;
    operator delete(qword_27B4D40);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_D0FB60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(v13, "HikingTourLookupModule");
  HIBYTE(v13[2]) = 22;
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_3AEC94(a2, v13, &__p);
  v16 = 0;
  v17 = 0;
  v15 = a2;
  sub_D0FC90(v14, a1, a3);
  v6 = __p;
  if (__p)
  {
    v7 = v11;
    v8 = __p;
    if (v11 != __p)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v11 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_D0FC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D0FC90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v26);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 16);
  if ((sub_6EECC() & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_31:
      *a3 = 0;
      v27.n128_u64[0] = 1;
      v27.n128_u64[1] = &off_2669FE0;
      sub_434934((a3 + 8), &v27);
      return;
    }

    sub_19594F8(&v27);
    sub_4A5C(&v27, "Inconsistent input provided to hiking tour lookup module; failing module.", 73);
    if ((v36 & 0x10) != 0)
    {
      v13 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v13 = v32;
      }

      v14 = v31;
      v11 = v13 - v31;
      if (v13 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v11 = 0;
        BYTE7(v24) = 0;
LABEL_26:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 3u);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_31;
      }

      v14 = v29;
      v11 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    BYTE7(v24) = v11;
    if (v11)
    {
      memmove(&__dst, v14, v11);
    }

    goto LABEL_26;
  }

  v25 = 0;
  __dst = 0u;
  v24 = 0u;
  sub_D10FF4(&__dst, 0x14C1BACF914C1BADLL * ((*(a2 + 1632) - *(a2 + 1624)) >> 4));
  v7 = *(a2 + 1624);
  for (i = *(a2 + 1632); v7 != i; v7 += 148)
  {
    sub_D103B8(a1, v7, &v27);
    v10 = *(&__dst + 1);
    if (*(&__dst + 1) < v24)
    {
      **(&__dst + 1) = v27.n128_u32[0];
      sub_4C6AE8(v10 + 8, &v27.n128_i64[1]);
      v9 = (v10 + 1104);
    }

    else
    {
      v9 = sub_D11158(&__dst, &v27);
    }

    *(&__dst + 1) = v9;
    sub_3EEA68(&v27.n128_i64[1]);
  }

  if (sub_D11318(a2, &__dst))
  {
    *v6 = sub_7EA60(v26);
    *a3 = 1;
    *(a3 + 8) = __dst;
    *(a3 + 24) = v24;
    *(a3 + 32) = *v6;
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_47;
  }

  sub_19594F8(&v27);
  sub_4A5C(&v27, "Inconsistent output computed whilst processing hiking tour lookup module; failing solution.", 91);
  if ((v36 & 0x10) != 0)
  {
    v15 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v15 = v32;
    }

    v16 = v31;
    v12 = v15 - v31;
    if (v15 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

LABEL_37:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v22 = v12;
    if (v12)
    {
      memmove(&v21, v16, v12);
    }

    goto LABEL_42;
  }

  if ((v36 & 8) != 0)
  {
    v16 = v29;
    v12 = v30 - v29;
    if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v12 = 0;
  v22 = 0;
LABEL_42:
  *(&v21 + v12) = 0;
  sub_7E854(&v21, 3u);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_47:
  *a3 = 0;
  v27.n128_u64[0] = 3;
  v27.n128_u64[1] = &off_2669FE0;
  sub_434934((a3 + 8), &v27);
  v17 = __dst;
  if (__dst)
  {
    v18 = *(&__dst + 1);
    v19 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v20 = v18 - 1104;
        sub_3EEA68(v18 - 1096);
        v18 = v20;
      }

      while (v20 != v17);
      v19 = __dst;
    }

    *(&__dst + 1) = v17;
    operator delete(v19);
  }
}