void sub_19D30C0D8(float32x4_t **a1, int **a2, uint64_t *a3, int a4, int a5)
{
  v10 = sub_19D41C53C();
  v11 = (sub_19D41C53C() * v10);
  v14 = *a2;
  v13 = a2[1];
  v15 = v13 - *a2;
  if (v15 == 8)
  {
    if (a4 >= 1)
    {
      v16 = 0;
      v18 = *v14;
      v17 = (*a2)[1];
      v19 = v11 * 6554.0;
      v20 = *a3;
      v21 = *a1;
      v22 = 0;
      if (a4 < 8)
      {
        goto LABEL_8;
      }

      if (a5 != 1)
      {
        goto LABEL_8;
      }

      v16 = a4 & 0x7FFFFFF8;
      v22 = a4 & 0x7FFFFFF8;
      v23 = *a3;
      v24 = v16;
      v25 = *a1;
      do
      {
        v26 = *(v23 + 2 * v18);
        v27 = *(v23 + 2 * v17);
        v28 = vaddl_s16(*v27.i8, *v26.i8);
        v29 = vcvtq_f32_s32(vaddl_high_s16(v27, v26));
        v30 = vcvtq_f32_s32(v28);
        *v25 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v30.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v30), v19));
        v25[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v29.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v29), v19));
        v25 += 2;
        v23 += 16;
        v24 -= 8;
      }

      while (v24);
      if (v16 != a4)
      {
LABEL_8:
        v31 = &v21->f32[v16];
        v32 = a4 - v16;
        v33 = v20 + 2 * v22;
        do
        {
          v34 = v19 * (*(v33 + 2 * v17) + *(v33 + 2 * v18));
          *v31++ = v34;
          v33 += 2 * a5;
          --v32;
        }

        while (v32);
      }
    }
  }

  else if (a4 >= 1)
  {
    v35 = *a1;
    if (v13 == v14)
    {

      bzero(v35, 4 * a4);
    }

    else
    {
      v36 = 0;
      v37 = v15 >> 2;
      v38 = v11 * 6554.0;
      v39 = *a3;
      if (v37 <= 1)
      {
        v37 = 1;
      }

      do
      {
        v40 = 0.0;
        v41 = v37;
        v42 = v14;
        do
        {
          v43 = *v42++;
          LOWORD(v12) = *(v39 + 2 * v36 * a5 + 2 * v43);
          v12 = vmovl_s16(*&v12).i32[0];
          v40 = v40 + v38 * v12;
          --v41;
        }

        while (v41);
        v35->f32[v36++] = v40;
      }

      while (v36 != a4);
    }
  }
}

uint64_t sub_19D30C308(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t *a5, void *a6, int a7, int a8, int a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    if (a2)
    {
      sub_19D41C548(456);
    }

LABEL_12:
    sub_19D41C548(34);
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (a7 != 1)
  {
    sub_19D41C548(502);
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v12 = a6[1];
  if (v12 != *a6)
  {
    if (((v12 - *a6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v13 = (a1 + 760);
  sub_19D30C0D8((a1 + 760), &__p, a5, a8, a9);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return MEMORY[0x19EAFB120](*v13, 1, *a3, 1, *a3, 1, a8);
}

void sub_19D30C420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D30C43C(void *a1)
{
  *a1 = &unk_1F10B6748;
  sub_19D30138C(a1);
  v2 = a1[194];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[194] = 0;
    v3 = a1[195];
    if (v3)
    {
      (*(*v3 + 80))(v3);
    }

    a1[195] = 0;
    v4 = a1[196];
    if (v4)
    {
      (*(*v4 + 80))(v4);
    }

    a1[196] = 0;
    v5 = a1[197];
    if (v5)
    {
      (*(*v5 + 80))(v5);
    }

    a1[197] = 0;
    v6 = a1[198];
    if (v6)
    {
      (*(*v6 + 80))(v6);
    }

    a1[198] = 0;
    v7 = a1[199];
    if (v7)
    {
      (*(*v7 + 80))(v7);
    }

    a1[199] = 0;
    v8 = a1[200];
    if (v8)
    {
      (*(*v8 + 80))(v8);
    }

    a1[200] = 0;
    v9 = a1[201];
    if (v9)
    {
      (*(*v9 + 80))(v9);
    }

    a1[201] = 0;
  }

  v10 = a1[331];
  if (v10)
  {
    a1[332] = v10;
    operator delete(v10);
  }

  v11 = a1[328];
  if (v11)
  {
    a1[329] = v11;
    operator delete(v11);
  }

  sub_19D429384((a1 + 303));
  sub_19D429384((a1 + 294));
  sub_19D429384((a1 + 285));
  sub_19D429384((a1 + 276));
  sub_19D429384((a1 + 267));
  sub_19D429384((a1 + 258));
  sub_19D429384((a1 + 249));
  sub_19D429384((a1 + 240));
  sub_19D429384((a1 + 231));
  sub_19D429384((a1 + 222));
  sub_19D429384((a1 + 213));
  sub_19D308FC0(a1 + 168);
  sub_19D308FC0(a1 + 153);
  sub_19D308FC0(a1 + 138);
  sub_19D308FC0(a1 + 123);
  v12 = a1[120];
  if (v12)
  {
    a1[121] = v12;
    operator delete(v12);
  }

  v13 = a1[117];
  if (v13)
  {
    a1[118] = v13;
    operator delete(v13);
  }

  v14 = a1[114];
  if (v14)
  {
    a1[115] = v14;
    operator delete(v14);
  }

  v15 = a1[111];
  if (v15)
  {
    a1[112] = v15;
    operator delete(v15);
  }

  v16 = a1[108];
  if (v16)
  {
    a1[109] = v16;
    operator delete(v16);
  }

  v17 = a1[105];
  if (v17)
  {
    a1[106] = v17;
    operator delete(v17);
  }

  v18 = a1[102];
  if (v18)
  {
    a1[103] = v18;
    operator delete(v18);
  }

  v19 = a1[99];
  if (v19)
  {
    a1[100] = v19;
    operator delete(v19);
  }

  v20 = a1[89];
  if (v20)
  {
    a1[90] = v20;
    operator delete(v20);
  }

  v21 = a1[86];
  if (v21)
  {
    a1[87] = v21;
    operator delete(v21);
  }

  v22 = a1[83];
  if (v22)
  {
    a1[84] = v22;
    operator delete(v22);
  }

  v23 = a1[80];
  if (v23)
  {
    a1[81] = v23;
    operator delete(v23);
  }

  v24 = a1[77];
  if (v24)
  {
    a1[78] = v24;
    operator delete(v24);
  }

  v25 = a1[74];
  if (v25)
  {
    a1[75] = v25;
    operator delete(v25);
  }

  v26 = a1[71];
  if (v26)
  {
    a1[72] = v26;
    operator delete(v26);
  }

  v27 = a1[68];
  if (v27)
  {
    a1[69] = v27;
    operator delete(v27);
  }

  v28 = a1[65];
  if (v28)
  {
    a1[66] = v28;
    operator delete(v28);
  }

  v29 = a1[62];
  if (v29)
  {
    a1[63] = v29;
    operator delete(v29);
  }

  v30 = a1[59];
  if (v30)
  {
    a1[60] = v30;
    operator delete(v30);
  }

  v31 = a1[56];
  if (v31)
  {
    a1[57] = v31;
    operator delete(v31);
  }

  v32 = a1[53];
  if (v32)
  {
    a1[54] = v32;
    operator delete(v32);
  }

  v33 = a1[50];
  if (v33)
  {
    a1[51] = v33;
    operator delete(v33);
  }

  v34 = a1[47];
  if (v34)
  {
    a1[48] = v34;
    operator delete(v34);
  }

  v35 = a1[44];
  if (v35)
  {
    a1[45] = v35;
    operator delete(v35);
  }

  v36 = a1[26];
  if (v36)
  {
    v37 = a1[27];
    v38 = a1[26];
    if (v37 != v36)
    {
      v39 = a1[27];
      do
      {
        v41 = *(v39 - 24);
        v39 -= 24;
        v40 = v41;
        if (v41)
        {
          *(v37 - 16) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = a1[26];
    }

    a1[27] = v36;
    operator delete(v38);
  }

  v42 = a1[23];
  if (v42)
  {
    a1[24] = v42;
    operator delete(v42);
  }

  v43 = a1[20];
  if (v43)
  {
    a1[21] = v43;
    operator delete(v43);
  }

  v44 = a1[17];
  if (v44)
  {
    a1[18] = v44;
    operator delete(v44);
  }

  v45 = a1[14];
  if (v45)
  {
    a1[15] = v45;
    operator delete(v45);
  }

  v46 = a1[11];
  if (v46)
  {
    a1[12] = v46;
    operator delete(v46);
  }

  v47 = a1[8];
  if (v47)
  {
    a1[9] = v47;
    operator delete(v47);
  }

  *a1 = &unk_1F10B68F8;
  v48 = a1[1];
  if (v48)
  {
    a1[2] = v48;
    operator delete(v48);
  }

  return a1;
}

uint64_t sub_19D30CA88(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  }

  else
  {
    v5 = 0;
  }

  v6 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  v7 = v5[6];
  v8 = v6[6];
  v9 = *(**(a1 + 48) + 80);
  v10 = *(a1 + 48);

  return v9(v10, v7, v8);
}

uint64_t sub_19D30CB90(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  }

  else
  {
    v5 = 0;
  }

  v6 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  v7 = v5[6];
  v8 = v6[6];
  v9 = *(**(a1 + 48) + 88);
  v10 = *(a1 + 48);

  return v9(v10, v7, v8);
}

uint64_t sub_19D30CC98(uint64_t a1, void *lpsrc)
{
  v3 = *(__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0) + 6);
  v4 = *(**(a1 + 48) + 96);
  v5 = *(a1 + 48);

  return v4(v5, v3);
}

uint64_t sub_19D30CD3C(uint64_t a1, void *lpsrc)
{
  v3 = *(__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0) + 6);
  v4 = *(**(a1 + 48) + 104);
  v5 = *(a1 + 48);

  return v4(v5, v3);
}

uint64_t sub_19D30D0DC(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3[6];
  v5 = *(**(a1 + 48) + 328);
  v6 = *(a1 + 48);

  return v5(v6, v4);
}

uint64_t sub_19D30D190(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  v9 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6DA0, 0);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v12 = v9[6];
  v13 = *(**(a1 + 48) + 336);
  v14 = *(a1 + 48);
  v10.n128_f32[0] = a4;
  v11.n128_f32[0] = a5;

  return v13(v14, v12, a3, v10, v11);
}

void *sub_19D30D2C4(void *a1)
{
  *a1 = &unk_1F10B6C28;
  v2 = a1[6];
  if (v2)
  {
    (*(*v2 + 368))(v2);
  }

  *a1 = &unk_1F10B68F8;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_19D30D364(void *__p)
{
  *__p = &unk_1F10B6C28;
  v2 = __p[6];
  if (v2)
  {
    (*(*v2 + 368))(v2);
  }

  *__p = &unk_1F10B68F8;
  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t sub_19D30D414(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B6DC8;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  unk_1F10B6E88(a1);
  *(a1 + 72) = 0;
  v5 = *(a1 + 80);
  if (*(a1 + 88) != v5)
  {
    v6 = 0;
    do
    {
      *(a1 + 72) += (*(**(v5 + 8 * v6) + 272))(*(v5 + 8 * v6));
      ++v6;
      v5 = *(a1 + 80);
    }

    while (v6 < (*(a1 + 88) - v5) >> 3);
  }

  *(a1 + 41) = 0;
  if (*(*v5 + 40))
  {
    *(a1 + 40) = 1;
  }

  sub_19D30D6C4(a1);
  return a1;
}

void sub_19D30D5EC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[11] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      *v1 = v2;
      v8 = v1[1];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[7] = v7;
  operator delete(v7);
  *v1 = v2;
  v8 = v1[1];
  if (!v8)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v8;
  operator delete(v8);
  _Unwind_Resume(exception_object);
}

void sub_19D30D6C4(uint64_t a1)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v2 = (a1 + 104);
  v5 = dword_1EB0131E8;
  v6 = dword_1EB0131E8;
  v7 = (v4 - v3) >> 3;
  if (dword_1EB0131E8 <= v7)
  {
    if (dword_1EB0131E8 < v7)
    {
      *(a1 + 112) = v3 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0(v2, dword_1EB0131E8 - v7);
    v5 = dword_1EB0131E8;
    v6 = dword_1EB0131E8;
  }

  v8 = *(a1 + 128);
  v9 = (*(a1 + 136) - v8) >> 3;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      *(a1 + 136) = v8 + 8 * v6;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 128), v6 - v9);
    v5 = dword_1EB0131E8;
  }

  if (v5 >= 1)
  {
    operator new[]();
  }

  v10 = *(a1 + 176);
  v11 = (*(a1 + 88) - *(a1 + 80)) >> 3;
  v12 = *(a1 + 184);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 3);
  if (v11 <= v13)
  {
    if (v11 < v13)
    {
      v14 = v10 + 24 * v11;
      if (v12 != v14)
      {
        v15 = *(a1 + 184);
        do
        {
          v17 = *(v15 - 24);
          v15 -= 24;
          v16 = v17;
          if (v17)
          {
            *(v12 - 16) = v16;
            operator delete(v16);
          }

          v12 = v15;
        }

        while (v15 != v14);
      }

      *(a1 + 184) = v14;
    }
  }

  else
  {
    sub_19D35D700(a1 + 176, v11 - v13);
  }

  v19 = (a1 + 152);
  v18 = *(a1 + 152);
  v20 = (*(a1 + 88) - *(a1 + 80)) >> 3;
  v21 = *(a1 + 160);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v18) >> 3);
  if (v20 <= v22)
  {
    if (v20 < v22)
    {
      v23 = v18 + 24 * v20;
      if (v21 != v23)
      {
        v24 = *(a1 + 160);
        do
        {
          v26 = *(v24 - 24);
          v24 -= 24;
          v25 = v26;
          if (v26)
          {
            *(v21 - 16) = v25;
            operator delete(v25);
          }

          v21 = v24;
        }

        while (v24 != v23);
      }

      *(a1 + 160) = v23;
    }
  }

  else
  {
    sub_19D35D700(a1 + 152, v20 - v22);
  }

  v28 = (a1 + 200);
  v27 = *(a1 + 200);
  v29 = (*(a1 + 88) - *(a1 + 80)) >> 3;
  v30 = *(a1 + 208);
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v27) >> 3);
  if (v29 <= v31)
  {
    if (v29 < v31)
    {
      v32 = v27 + 24 * v29;
      if (v30 != v32)
      {
        v33 = *(a1 + 208);
        do
        {
          v35 = *(v33 - 24);
          v33 -= 24;
          v34 = v35;
          if (v35)
          {
            *(v30 - 16) = v34;
            operator delete(v34);
          }

          v30 = v33;
        }

        while (v33 != v32);
      }

      *(a1 + 208) = v32;
    }
  }

  else
  {
    sub_19D35D700(a1 + 200, v29 - v31);
  }

  *(a1 + 240) = *(a1 + 232);
  *(a1 + 264) = *(a1 + 256);
  v36 = *(a1 + 80);
  if (*(a1 + 88) != v36)
  {
    v37 = 0;
    do
    {
      LODWORD(v46) = (*(**(v36 + 8 * v37) + 272))(*(v36 + 8 * v37));
      sub_19D2C7CE4(a1 + 256, &v46);
      LODWORD(v46) = (*(**(*(a1 + 80) + 8 * v37) + 264))();
      sub_19D2C7CE4(a1 + 232, &v46);
      v38 = *(a1 + 176) + 24 * v37;
      v39 = dword_1EB0131E8;
      v40 = dword_1EB0131E8;
      v41 = (*(v38 + 8) - *v38) >> 3;
      if (dword_1EB0131E8 <= v41)
      {
        if (dword_1EB0131E8 < v41)
        {
          *(v38 + 8) = *v38 + 8 * dword_1EB0131E8;
        }
      }

      else
      {
        sub_19D308DD0(v38, dword_1EB0131E8 - v41);
        v39 = dword_1EB0131E8;
        v40 = dword_1EB0131E8;
      }

      v42 = *v19 + 24 * v37;
      v43 = (*(v42 + 8) - *v42) >> 3;
      if (v40 <= v43)
      {
        if (v40 < v43)
        {
          *(v42 + 8) = *v42 + 8 * v40;
        }
      }

      else
      {
        sub_19D308DD0(v42, v40 - v43);
        v39 = dword_1EB0131E8;
        v40 = dword_1EB0131E8;
      }

      v44 = *v28 + 24 * v37;
      v45 = (*(v44 + 8) - *v44) >> 3;
      if (v40 <= v45)
      {
        if (v40 < v45)
        {
          *(v44 + 8) = *v44 + 8 * v40;
        }
      }

      else
      {
        sub_19D308DD0(v44, v40 - v45);
        v39 = dword_1EB0131E8;
      }

      if (v39 >= 1)
      {
        operator new[]();
      }

      ++v37;
      v36 = *(a1 + 80);
      v28 = (a1 + 200);
      v19 = (a1 + 152);
    }

    while (v37 < (*(a1 + 88) - v36) >> 3);
  }
}

uint64_t sub_19D30DF54(uint64_t result)
{
  v1 = *(result + 80);
  if (*(result + 88) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 8))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 80);
    }

    while (v3 < (*(v2 + 88) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D30E028(uint64_t a1)
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

uint64_t sub_19D30E0A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_19D30E13C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void *sub_19D30E1DC(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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

void *sub_19D30E30C(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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

void *sub_19D30E43C(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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

void *sub_19D30E51C(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
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

uint64_t sub_19D30E5FC(uint64_t result, float a2)
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

uint64_t sub_19D30E67C(uint64_t result, float a2)
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

uint64_t sub_19D30E6FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 128))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D30E77C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 80);
  if (*(result + 88) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 136))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 80);
    }

    while (v9 < (*(v8 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D30E814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 80);
  if (*(result + 88) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 144))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 80);
    }

    while (v9 < (*(v8 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D30E8AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 80);
  if (*(result + 88) != v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(**(v3 + 8 * v7) + 152))(*(v3 + 8 * v7), a2, a3);
      ++v7;
      v3 = *(v6 + 80);
    }

    while (v7 < (*(v6 + 88) - v3) >> 3);
  }

  return result;
}

uint64_t sub_19D30E934(uint64_t result)
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

uint64_t sub_19D30E9A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 168))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D30EA24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 176))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D30EAA4(uint64_t result)
{
  v1 = *(result + 80);
  if (*(result + 88) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 184))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 80);
    }

    while (v3 < (*(v2 + 88) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D30EB14(uint64_t result)
{
  v1 = *(result + 80);
  if (*(result + 88) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 192))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 80);
    }

    while (v3 < (*(v2 + 88) - v1) >> 3);
  }

  return result;
}

void sub_19D30EB84(uint64_t a1)
{
  sub_19D30D6C4(a1);
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
}

void sub_19D30EBF4(void *a1)
{
  v2 = a1[10];
  if (a1[11] != v2)
  {
    v3 = 0;
    do
    {
      (*(**(v2 + 8 * v3) + 208))(*(v2 + 8 * v3));
      ++v3;
      v2 = a1[10];
    }

    while (v3 < (a1[11] - v2) >> 3);
  }

  v4 = a1[6];
  v5 = a1[7];
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      if (v7)
      {
        operator delete[](v7);
        v4 = a1[6];
        v5 = a1[7];
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  a1[7] = v4;
}

uint64_t sub_19D30ECD0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (*(a1 + 88) == v1)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v4 = (*(**(v1 + 8 * v3) + 272))(*(v1 + 8 * v3)) + v4;
    ++v3;
    v1 = *(a1 + 80);
  }

  while (v3 < (*(a1 + 88) - v1) >> 3);
  return v4;
}

uint64_t sub_19D30ED70(uint64_t result, uint64_t a2)
{
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

uint64_t sub_19D30EDF8(uint64_t result, float a2, float a3)
{
  v3 = *(result + 80);
  if (*(result + 88) != v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(**(v3 + 8 * v7) + 288))(*(v3 + 8 * v7), a2, a3);
      ++v7;
      v3 = *(v6 + 80);
    }

    while (v7 < (*(v6 + 88) - v3) >> 3);
  }

  return result;
}

void sub_19D30EE88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[10];
  v9 = a1[11];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = a1[32];
  v11 = a1[33];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v13 = ((a1[11] - a1[10]) >> 3) - 1;
  if (v13 >= 0)
  {
    v14 = 8 * (((a1[11] - a1[10]) >> 3) - 1);
    v15 = 8 * (v13 + 2 * v13);
    do
    {
      (*(**(a1[10] + v14) + 296))(*(a1[10] + v14), a2, a3, a1[22] + v15, a5);
      v14 -= 8;
      v15 -= 24;
    }

    while (v14 != -8);
  }
}

void sub_19D30F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D30F19C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4 & 0xFFFFFF;
  v7 = a1[10];
  v6 = a1[11];
  v8 = v6 - v7;
  if (v6 != v7)
  {
    v10 = 0;
    do
    {
      v11 = a1[28];
      if (v11)
      {
        (*(*v11 + 32))(v11, a2);
        v7 = a1[10];
      }

      (*(**(v7 + 8 * v10) + 304))(*(v7 + 8 * v10));
      ++v10;
      v7 = a1[10];
      v6 = a1[11];
      v8 = v6 - v7;
    }

    while (v10 < (v6 - v7) >> 3);
  }

  if (v8)
  {
    v12 = 0;
    if (v5)
    {
      do
      {
        v15 = (*(**(v7 + 8 * v12) + 32))(*(v7 + 8 * v12));
        v16 = 0;
        v17 = *v15;
        v18 = *(a1[19] + 24 * v12);
        if (v5 < 4)
        {
          goto LABEL_15;
        }

        if ((v18 - v17) < 0x20)
        {
          goto LABEL_15;
        }

        v19 = (v17 + 16);
        v20 = (v18 + 16);
        v21 = v5 & 0xFFFFFC;
        do
        {
          v22 = *v19;
          *(v20 - 1) = *(v19 - 1);
          *v20 = v22;
          v19 += 2;
          v20 += 2;
          v21 -= 4;
        }

        while (v21);
        v16 = v5 & 0xFFFFFC;
        if ((v5 & 0xFFFFFC) != v5)
        {
LABEL_15:
          v23 = (v17 + 8 * v16);
          v24 = (v18 + 8 * v16);
          v25 = v5 - v16;
          do
          {
            v26 = *v23++;
            *v24++ = v26;
            --v25;
          }

          while (v25);
        }

        ++v12;
        v7 = a1[10];
        v13 = a1[11];
        v14 = v13 - v7;
      }

      while (v12 < (v13 - v7) >> 3);
    }

    else
    {
      do
      {
        (*(**(v7 + 8 * v12) + 32))(*(v7 + 8 * v12));
        ++v12;
        v7 = a1[10];
        v13 = a1[11];
        v14 = v13 - v7;
      }

      while (v12 < (v13 - v7) >> 3);
    }

    if (v13 != v7)
    {
      if (v14 < 0)
      {
        sub_19D2AE2B4();
      }

LABEL_23:
      operator new();
    }
  }

  else if (v6 != v7)
  {
    goto LABEL_23;
  }

  v28 = a1[32];
  v27 = a1[33];
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (v5 && a1[11] != a1[10])
  {
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = 0;
      v48 = v30;
      v32 = 4 * v30;
      do
      {
        v33 = a1[13];
        v34 = *(a1[19] + 24 * v29);
        v35 = *(4 * v29);
        (*(*a1 + 272))(a1);
        if (v35 < 1)
        {
          goto LABEL_32;
        }

        v36 = *(v34 + 8 * v31);
        v37 = *(v33 + 8 * v31);
        if (v35 < 8 || (v32 + v37 - v36) < 0x20)
        {
          v38 = 0;
LABEL_37:
          v39 = v35 - v38;
          v40 = 4 * v38;
          v41 = (v37 + v32 + v40);
          v42 = (v36 + v40);
          do
          {
            v43 = *v42++;
            *v41++ = v43;
            --v39;
          }

          while (v39);
          goto LABEL_32;
        }

        v38 = v35 & 0x7FFFFFF8;
        v44 = (v36 + 16);
        v45 = (v37 + v32 + 16);
        v46 = v38;
        do
        {
          v47 = *v44;
          *(v45 - 1) = *(v44 - 1);
          *v45 = v47;
          v44 += 2;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v38 != v35)
        {
          goto LABEL_37;
        }

LABEL_32:
        ++v31;
      }

      while (v31 != v5);
      v30 = *(4 * v29++) + v48;
      if (v29 >= (a1[11] - a1[10]) >> 3)
      {
        operator delete(0);
        return;
      }
    }
  }
}

void sub_19D30F5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D30F5FC(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v4 = *(a1 + 80);
  if (*(a1 + 88) != v4)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = (*(**(v4 + 8 * v6) + 328))(*(v4 + 8 * v6), *(*(v5 + 80) + 8 * v6));
      ++v6;
      v4 = *(a1 + 80);
    }

    while (v6 < (*(a1 + 88) - v4) >> 3);
  }

  return result;
}

void *sub_19D30F6D4(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6F48, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v10 = *(a1 + 80);
  if (*(a1 + 88) != v10)
  {
    v11 = result;
    v12 = 0;
    do
    {
      result = (*(**(v10 + 8 * v12) + 336))(*(v10 + 8 * v12), *(*(v11 + 80) + 8 * v12), a3, a4, a5);
      ++v12;
      v10 = *(a1 + 80);
    }

    while (v12 < (*(a1 + 88) - v10) >> 3);
  }

  return result;
}

void sub_19D30F7CC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v9 = a1[10];
  v8 = a1[11];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_36;
  }

  v11 = a1[32];
  v10 = a1[33];
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = a4 > 0;
  v14 = a1[10];
  if (a1[11] != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      (*(**(v14 + 8 * v16) + 344))(*(v14 + 8 * v16), a1[25] + v15, a1[22] + v15, a4, a5, a6);
      ++v16;
      v14 = a1[10];
      v17 = a1[11];
      v15 += 24;
    }

    while (v16 < (v17 - v14) >> 3);
    if (v17 != v14)
    {
      if (((v17 - v14) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_36:
      sub_19D2AE2B4();
    }
  }

  v19 = a4;
  v21 = a1[32];
  v20 = a1[33];
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v18 = !v12;
  if (a1[11] == a1[10])
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v22 = 0;
    v23 = 0;
    v24 = v19;
    while (1)
    {
      v25 = 0;
      v44 = v23;
      v26 = 4 * v23;
      do
      {
        v27 = *a3;
        v28 = *(a1[22] + 24 * v22);
        v29 = *(4 * v22);
        (*(*a1 + 272))(a1);
        if (v29 < 1)
        {
          goto LABEL_22;
        }

        v30 = *(v28 + 8 * v25);
        v31 = *(v27 + 8 * v25);
        if (v29 < 8 || (v26 + v31 - v30) < 0x20)
        {
          v32 = 0;
LABEL_27:
          v33 = v29 - v32;
          v34 = 4 * v32;
          v35 = (v31 + v26 + v34);
          v36 = (v30 + v34);
          do
          {
            v37 = *v36++;
            *v35++ = v37;
            --v33;
          }

          while (v33);
          goto LABEL_22;
        }

        v32 = v29 & 0x7FFFFFF8;
        v38 = (v30 + 16);
        v39 = (v31 + v26 + 16);
        v40 = v32;
        do
        {
          v41 = *v38;
          *(v39 - 1) = *(v38 - 1);
          *v39 = v41;
          v38 += 2;
          v39 += 2;
          v40 -= 8;
        }

        while (v40);
        if (v32 != v29)
        {
          goto LABEL_27;
        }

LABEL_22:
        ++v25;
      }

      while (v25 != v24);
      v23 = *(4 * v22++) + v44;
      if (v22 >= (a1[11] - a1[10]) >> 3)
      {
        operator delete(0);
        return;
      }
    }
  }
}

void sub_19D30FCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  v12 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

float sub_19D30FD40(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[10];
  if (a1[11] == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  do
  {
    v8 = (*(**(v3 + 8 * v7) + 352))(*(v3 + 8 * v7), a1[25] + v6, a3) + v8;
    ++v7;
    v3 = a1[10];
    v6 += 24;
  }

  while (v7 < (a1[11] - v3) >> 3);
  return v8;
}

void sub_19D30FE08(void *a1)
{
  v1 = sub_19D30FE34(a1);

  operator delete(v1);
}

void *sub_19D30FE34(void *a1)
{
  *a1 = &unk_1F10B6DC8;
  v2 = a1[6];
  v3 = a1[7];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[6];
        v3 = a1[7];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[7] = v2;
  v7 = a1[10];
  v6 = a1[11];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        (*(*v9 + 368))(v9);
        v7 = a1[10];
        v6 = a1[11];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v10 = a1[32];
  if (v10)
  {
    a1[33] = v10;
    operator delete(v10);
  }

  v11 = a1[29];
  if (v11)
  {
    a1[30] = v11;
    operator delete(v11);
  }

  v12 = a1[25];
  if (v12)
  {
    v13 = a1[26];
    v14 = a1[25];
    if (v13 != v12)
    {
      v15 = a1[26];
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

      while (v15 != v12);
      v14 = a1[25];
    }

    a1[26] = v12;
    operator delete(v14);
  }

  v18 = a1[22];
  if (v18)
  {
    v19 = a1[23];
    v20 = a1[22];
    if (v19 != v18)
    {
      v21 = a1[23];
      do
      {
        v23 = *(v21 - 24);
        v21 -= 24;
        v22 = v23;
        if (v23)
        {
          *(v19 - 16) = v22;
          operator delete(v22);
        }

        v19 = v21;
      }

      while (v21 != v18);
      v20 = a1[22];
    }

    a1[23] = v18;
    operator delete(v20);
  }

  v24 = a1[19];
  if (v24)
  {
    v25 = a1[20];
    v26 = a1[19];
    if (v25 != v24)
    {
      v27 = a1[20];
      do
      {
        v29 = *(v27 - 24);
        v27 -= 24;
        v28 = v29;
        if (v29)
        {
          *(v25 - 16) = v28;
          operator delete(v28);
        }

        v25 = v27;
      }

      while (v27 != v24);
      v26 = a1[19];
    }

    a1[20] = v24;
    operator delete(v26);
  }

  v30 = a1[16];
  if (v30)
  {
    a1[17] = v30;
    operator delete(v30);
  }

  v31 = a1[13];
  if (v31)
  {
    a1[14] = v31;
    operator delete(v31);
  }

  v32 = a1[10];
  if (v32)
  {
    a1[11] = v32;
    operator delete(v32);
  }

  v33 = a1[6];
  if (v33)
  {
    a1[7] = v33;
    operator delete(v33);
  }

  *a1 = &unk_1F10B68F8;
  v34 = a1[1];
  if (v34)
  {
    a1[2] = v34;
    operator delete(v34);
  }

  return a1;
}

uint64_t sub_19D310088(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B6F70;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a5;
  *(a1 + 112) = a6;
  (*(*a1 + 192))(a1);
  *(a1 + 41) = 0;
  *(a1 + 408) = a4;
  *(a1 + 120) = *(a7 + 68);
  *(a1 + 528) = a9;
  if (a9)
  {
    nullsub_171("FullLayer constructor");
    a8 = *(*(a1 + 528) + 376);
  }

  *(a1 + 40) = a8;
  *(a1 + 520) = 0;
  *(a1 + 116) = *(a7 + 45);
  v18 = 9;
  strcpy(__p, "FullLayer");
  (*(*a1 + 400))(a1, __p, 0, -0.44);
  if (v18 < 0)
  {
    operator delete(__p[0]);
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  v15 = *(a7 + 32);
  switch(v15)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  return a1;
}

void sub_19D310458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v23);
  sub_19D429384(v20 + 432);
  v26 = *(v20 + 384);
  if (v26)
  {
    *(v20 + 392) = v26;
    operator delete(v26);
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
LABEL_5:
      v28 = *(v20 + 312);
      if (!v28)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 344) = v27;
  operator delete(v27);
  v28 = *(v20 + 312);
  if (!v28)
  {
LABEL_6:
    v29 = *(v20 + 288);
    if (!v29)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v20 + 320) = v28;
  operator delete(v28);
  v29 = *(v20 + 288);
  if (!v29)
  {
LABEL_7:
    v30 = *(v20 + 264);
    if (!v30)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v20 + 296) = v29;
  operator delete(v29);
  v30 = *(v20 + 264);
  if (!v30)
  {
LABEL_8:
    sub_19D308FC0(v22);
    v31 = *(v20 + 72);
    if (!v31)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v20 + 272) = v30;
  operator delete(v30);
  sub_19D308FC0(v22);
  v31 = *(v20 + 72);
  if (!v31)
  {
LABEL_9:
    v32 = *v24;
    if (!*v24)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v20 + 80) = v31;
  operator delete(v31);
  v32 = *v24;
  if (!*v24)
  {
LABEL_10:
    *v20 = v21;
    v33 = *(v20 + 8);
    if (!v33)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v20 + 56) = v32;
  operator delete(v32);
  *v20 = v21;
  v33 = *(v20 + 8);
  if (!v33)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v20 + 16) = v33;
  operator delete(v33);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D3105F8(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 408) = v14;
LABEL_12:
  if (*(a1 + 100) != v10 || *(a1 + 104) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 512);
  v16 = *a3;
  v17 = *(a1 + 117);
  v18 = sub_19D41C520();
  v19 = *(a1 + 100);
  v20 = *(a1 + 104);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D310720(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 104);
  sub_19D41C9E8(__stream, a3, *(a1 + 100));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 408));
  }

  v11 = *(a1 + 512);
  v12 = sub_19D41C520();

  return sub_19D3095DC(v11, __stream, a3, 3, v12, a5);
}

double sub_19D3107DC(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7108, 0);
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(a1 + 104) * *(a1 + 100));
  if (v7 >= 1)
  {
    v8 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7108, 0);
    v9 = 0;
    v10 = v8[16];
    v11 = v5[16];
    v12 = **(a1 + 512);
    if (v7 < 4)
    {
      goto LABEL_6;
    }

    v9 = 0;
    if ((v12 - v10) < 0x20 || (v12 - v11) < 0x20)
    {
      goto LABEL_6;
    }

    if (v7 < 0x10)
    {
      v9 = 0;
LABEL_17:
      v26 = v9;
      v9 = v7 & 0x7FFFFFFC;
      v27 = (v10 + 2 * v26);
      v28 = (v11 + 2 * v26);
      v29 = (v12->i64 + 2 * v26);
      v30 = v26 - v9;
      do
      {
        v31 = *v27++;
        v32 = v31;
        v33 = *v28++;
        *v6.i8 = vsub_s16(v32, v33);
        *v29++ = v6.i64[0];
        v30 += 4;
      }

      while (v30);
      if (v9 == v7)
      {
        return *v6.i64;
      }

LABEL_6:
      v13 = v7 - v9;
      v14 = v9;
      v15 = &v12->i16[v14];
      v16 = &v11->i16[v14];
      v17 = &v10->i16[v14];
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = *v16++;
        *v15++ = v18 - v20;
        --v13;
      }

      while (v13);
      return *v6.i64;
    }

    v9 = v7 & 0x7FFFFFF0;
    v21 = v10 + 1;
    v22 = v11 + 1;
    v23 = v12 + 1;
    v24 = v9;
    do
    {
      v6 = vsubq_s16(v21[-1], v22[-1]);
      v25 = vsubq_s16(*v21, *v22);
      v23[-1] = v6;
      *v23 = v25;
      v21 += 2;
      v22 += 2;
      v23 += 2;
      v24 -= 16;
    }

    while (v24);
    if (v9 != v7)
    {
      if ((v7 & 0xC) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  return *v6.i64;
}

double sub_19D310A0C(uint64_t a1, void *lpsrc)
{
  v2 = (*(a1 + 104) * *(a1 + 100));
  if (v2 >= 1)
  {
    v4 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7108, 0);
    v6 = **(a1 + 512);
    v7 = v4[16];
    if (v2 < 4 || (v6 < v7 + 2 * v2 ? (v8 = v7 >= v6 + 2 * v2) : (v8 = 1), !v8))
    {
      v9 = 0;
      goto LABEL_11;
    }

    if (v2 >= 0x10)
    {
      v9 = v2 & 0x7FFFFFF0;
      v15 = (v6 + 16);
      v16 = (v7 + 16);
      v17 = v9;
      do
      {
        v5 = vaddq_s16(v16[-1], v15[-1]);
        v18 = vaddq_s16(*v16, *v15);
        v15[-1] = v5;
        *v15 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 16;
      }

      while (v17);
      if (v9 == v2)
      {
        return *v5.i64;
      }

      if ((v2 & 0xC) == 0)
      {
LABEL_11:
        v10 = v2 - v9;
        v11 = 2 * v9;
        v12 = (v7 + v11);
        v13 = (v6 + v11);
        do
        {
          v14 = *v12++;
          *v13++ += v14;
          --v10;
        }

        while (v10);
        return *v5.i64;
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = v9;
    v9 = v2 & 0x7FFFFFFC;
    v20 = (v6 + 2 * v19);
    v21 = (v7 + 2 * v19);
    v22 = v19 - v9;
    do
    {
      v23 = *v21++;
      *v5.i8 = vadd_s16(v23, *v20);
      *v20++ = *v5.i8;
      v22 += 4;
    }

    while (v22);
    if (v9 != v2)
    {
      goto LABEL_11;
    }
  }

  return *v5.i64;
}

uint64_t sub_19D310BD4(uint64_t result, double a2, double a3, int32x4_t a4)
{
  v4 = *(result + 108);
  if (v4 < 1)
  {
    return result;
  }

  *&a3 = -*&a2;
  v5 = **(result + 512);
  if (v4 < 8)
  {
    v6 = 0;
    goto LABEL_26;
  }

  v6 = v4 & 0x7FFFFFF8;
  a4 = vdupq_lane_s32(*&a3, 0);
  v7 = vdupq_lane_s32(*&a2, 0);
  v8 = (v5 + 8);
  v9 = v6;
  do
  {
    v10 = *(v8 - 4);
    v11 = vcvtq_f32_s32(vmovl_s16(*v10.i8));
    v12 = vcvtq_f32_s32(vmovl_high_s16(v10));
    v13 = vuzp1q_s16(vcgtq_f32(a4, v11), vcgtq_f32(a4, v12));
    v14 = vuzp1q_s16(vcgeq_f32(v11, a4), vcgeq_f32(v12, a4));
    v15 = vuzp1q_s16(vcgtq_f32(v11, v7), vcgtq_f32(v12, v7));
    v16 = vmovn_s16(vandq_s8(v14, v15));
    v17 = vmovn_s16(vorrq_s8(v13, v15));
    v18 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v16, *&a2)), 0x1FuLL)), v7, a4);
    if (v17.i8[0])
    {
      *(v8 - 4) = *v18.i32;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_8:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_8;
    }

    *(v8 - 3) = *&v18.i32[1];
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_9:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      *(v8 - 1) = *&v18.i32[3];
      goto LABEL_11;
    }

LABEL_18:
    *(v8 - 2) = *&v18.i32[2];
    if (v17.i8[3])
    {
      goto LABEL_10;
    }

LABEL_11:
    v19 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v16, *&a2)), 0x1FuLL)), v7, a4);
    if (v17.i8[4])
    {
      *v8 = *v19.i32;
      if ((v17.i8[5] & 1) == 0)
      {
LABEL_13:
        if (v17.i8[6])
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else if ((v17.i8[5] & 1) == 0)
    {
      goto LABEL_13;
    }

    v8[1] = *&v19.i32[1];
    if (v17.i8[6])
    {
LABEL_22:
      v8[2] = *&v19.i32[2];
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }

LABEL_14:
    if ((v17.i8[7] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    v8[3] = *&v19.i32[3];
LABEL_5:
    v8 += 8;
    v9 -= 8;
  }

  while (v9);
  if (v6 == v4)
  {
    return result;
  }

LABEL_26:
  v20 = v4 - v6;
  v21 = (v5 + 2 * v6);
  do
  {
    a4.i16[0] = *v21;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v22 = a4.i32[0];
    v23 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v23 || (a4.i32[0] = LODWORD(a2), v22 > *&a2))
    {
      *v21 = *a4.i32;
    }

    ++v21;
    --v20;
  }

  while (v20);
  return result;
}

uint64_t sub_19D310DB8(uint64_t result, float a2, __n128 a3)
{
  v3 = *(result + 108);
  if (v3 >= 1)
  {
    v4 = **(result + 512);
    if (v3 < 4)
    {
      v5 = 0;
      goto LABEL_13;
    }

    if (v3 >= 0x10)
    {
      v5 = v3 & 0x7FFFFFF0;
      v6 = v4 + 2;
      v7 = v5;
      do
      {
        a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v6[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v6[-2].i8)), a2)));
        v8 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v6)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v6->i8)), a2)));
        *v6[-2].i8 = a3;
        *v6->i8 = v8;
        v6 += 4;
        v7 -= 16;
      }

      while (v7);
      if (v5 == v3)
      {
        return result;
      }

      if ((v3 & 0xC) == 0)
      {
LABEL_13:
        v12 = v3 - v5;
        v13 = v4 + v5;
        do
        {
          a3.n128_u16[0] = *v13;
          a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
          a3.n128_f32[0] = a3.n128_i32[0] * a2;
          *v13++ = a3.n128_f32[0];
          --v12;
        }

        while (v12);
        return result;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
    v5 = v3 & 0x7FFFFFFC;
    v10 = (v4 + 2 * v9);
    v11 = v9 - v5;
    do
    {
      a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v10)), a2)));
      *v10++ = a3.n128_u64[0];
      v11 += 4;
    }

    while (v11);
    if (v5 != v3)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void sub_19D310F04(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 512);
  v2[1] = *(a1 + 100);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D310F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 128) = v3;
  result = a1 + 128;
  *(result + 384) = result;
  return result;
}

void sub_19D31104C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D311068(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = *(a1 + 48);
        v3 = *(a1 + 56);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = *(a1 + 72);
        v7 = *(a1 + 80);
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = *(a1 + 48);
  }

  *(a1 + 56) = v2;
  *(a1 + 80) = v6;
  v10 = *(a1 + 240);
  v11 = *(a1 + 248);
  if (v11 != v10)
  {
    v12 = 0;
    do
    {
      v13 = *(v10 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = *(a1 + 240);
        v11 = *(a1 + 248);
      }

      ++v12;
    }

    while (v12 < (v11 - v10) >> 3);
  }

  *(a1 + 248) = v10;
  v14 = *(a1 + 224);
  if (v14)
  {
    operator delete(v14);
    *(a1 + 224) = 0;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    operator delete(v15);
    *(a1 + 216) = 0;
  }

  *(a1 + 272) = *(a1 + 264);
  *(a1 + 296) = *(a1 + 288);
  *(a1 + 392) = *(a1 + 384);
  v17 = *(a1 + 360);
  v16 = *(a1 + 368);
  if (v16 != v17)
  {
    v18 = *(a1 + 368);
    do
    {
      v20 = *(v18 - 24);
      v18 -= 24;
      v19 = v20;
      if (v20)
      {
        *(v16 - 16) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 368) = v17;
  if ((*(a1 + 116) & 1) == 0)
  {
    *(a1 + 320) = *(a1 + 312);
    *(a1 + 344) = *(a1 + 336);
  }
}

float sub_19D3111D0(uint64_t a1, void *a2, float *a3, int a4)
{
  v5 = *(a1 + 100);
  if (v5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 1.1755e-38;
    do
    {
      v9 = *(*(*a2 + 8 * a4) + 4 * v7);
      if (v9 > v8)
      {
        v6 = v7;
      }

      v8 = fmaxf(v9, v8);
      ++v7;
    }

    while (v5 != v7);
    v10 = v6;
  }

  v11 = *(*(*(a1 + 288) + 8 * a4) + 4 * v10);
  if (v11 <= 1.0e-10)
  {
    result = 99.0;
    *a3 = 99.0;
  }

  else
  {
    result = -log2f(v11);
    *a3 = result;
  }

  return result;
}

float32x4_t sub_19D311280(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, _DWORD *a5, float32x4_t result)
{
  v6 = *(a1 + 288);
  v7 = *(a1 + 100);
  if (v7 <= 0)
  {
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1.1755e-38;
    do
    {
      v11 = *(*(v6 + 8 * a4) + 4 * v9);
      if (v11 > v10)
      {
        v8 = v9;
      }

      v10 = fmaxf(v11, v10);
      ++v9;
    }

    while (v7 != v9);
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    result.i32[0] = 0x800000;
    do
    {
      v16 = (*v15)->f32[v13];
      if (v16 > result.f32[0])
      {
        v12 = v13;
      }

      result.f32[0] = fmaxf(v16, result.f32[0]);
      ++v13;
    }

    while (v7 != v13);
    if (v8 != v12)
    {
      ++*a5;
    }

    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  if (a4 < ((a2[1] - v14) >> 3) && a4 < ((*(a1 + 296) - v6) >> 3))
  {
    v18 = *(a1 + 100);
    if (v18 >= 1)
    {
      v19 = *v15;
      v20 = *(v6 + 8 * a4);
      v21 = *(v17 + 8 * a4);
      if (v18 >= 8)
      {
        v22 = 0;
        if ((v21 - v19) >= 0x20 && (v21 - v20) >= 0x20)
        {
          v22 = v18 & 0x7FFFFFF8;
          v30 = v19 + 1;
          v31 = v20 + 1;
          v32 = v21 + 1;
          v33 = v22;
          do
          {
            result = vsubq_f32(v30[-1], v31[-1]);
            v34 = vsubq_f32(*v30, *v31);
            v32[-1] = result;
            *v32 = v34;
            v30 += 2;
            v31 += 2;
            v32 += 2;
            v33 -= 8;
          }

          while (v33);
          if (v22 == v18)
          {
            return result;
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21->i32[v22];
      v24 = &v20->f32[v22];
      v25 = &v19->f32[v22];
      v26 = v18 - v22;
      do
      {
        v27 = *v25++;
        v28 = v27;
        v29 = *v24++;
        result.f32[0] = v28 - v29;
        *v23++ = result.i32[0];
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_19D311414(uint64_t a1, void *a2, void *a3, int a4)
{
  if (((**a1)(a1) & 1) == 0)
  {
    sub_19D3128E0((a1 + 416), (*(a1 + 384) + 8 * a4), (*a2 + 8 * a4), *(a1 + 100), *(a1 + 408), v8);
    sub_19D30A978();
  }

  if (a3[1] == *a3 || *(a1 + 112) < 1 || !(**a1)(a1))
  {
    v12 = *(a1 + 264) + 8 * a4;
    v13 = a1 + 416;
    v14 = *(a1 + 104);
    v15 = *(a1 + 100);
    v16 = *(a1 + 136);
    global_queue = dispatch_get_global_queue(0, 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = sub_19D30AD54;
    v33[3] = &unk_1E7626958;
    v34 = v14;
    v33[4] = v16;
    v33[5] = v13;
    v33[6] = v12;
    dispatch_apply(v15, global_queue, v33);
  }

  else
  {
    v9 = (*(a1 + 360) + 24 * a4);
    v11 = *v9;
    v10 = v9[1];
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v18 = *(a1 + 100);
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = *(*a2 + 8 * a4);
      v21 = *(*(a1 + 168) + 8 * *(a1 + 160));
      if (v18 < 8)
      {
        goto LABEL_16;
      }

      if ((v21 - v20) < 0x20)
      {
        goto LABEL_16;
      }

      v19 = v18 & 0x7FFFFFF8;
      v22 = (v20 + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_16:
        v26 = v18 - v19;
        v27 = 4 * v19;
        v28 = (v21 + 4 * v19);
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

    if (*(a1 + 156) < 1)
    {
      ++*(a1 + 160);
    }

    else
    {
      v31 = 0;
      v32 = *(a1 + 192);
      do
      {
        *(*(v32 + 24 * *(a1 + 160)) + 4 * v31) = *(4 * v31);
        ++v31;
      }

      while (v31 < *(a1 + 156));
      ++*(a1 + 160);

      operator delete(0);
    }
  }
}

void sub_19D311748(uint64_t a1, int a2)
{
  if ((*(a1 + 116) & 1) == 0)
  {
    if (!*(a1 + 112))
    {
      bzero(*(a1 + 136), 4 * *(a1 + 108));
      v4 = *(a1 + 264);
      if (*(a1 + 272) == v4)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    *(a1 + 160) = 0;
  }

  v4 = *(a1 + 264);
  if (*(a1 + 272) == v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v5 = 0;
  do
  {
    bzero(*(v4 + 8 * v5++), 4 * *(a1 + 104));
    v4 = *(a1 + 264);
  }

  while (v5 < (*(a1 + 272) - v4) >> 3);
LABEL_7:
  v6 = *(a1 + 288);
  if (*(a1 + 296) != v6)
  {
    v7 = 0;
    do
    {
      bzero(*(v6 + 8 * v7++), 4 * *(a1 + 100));
      v6 = *(a1 + 288);
    }

    while (v7 < (*(a1 + 296) - v6) >> 3);
  }

  if (a2 >= 1 && (*(a1 + 116) & 1) == 0)
  {
    v8 = 0;
    v9 = 8 * a2;
    do
    {
      if ((*(a1 + 116) & 1) == 0)
      {
        bzero(*(*(a1 + 312) + v8), 4 * *(a1 + 104));
        bzero(*(*(a1 + 336) + v8), 4 * *(a1 + 100));
      }

      v8 += 8;
    }

    while (v9 != v8);
  }
}

void sub_19D311880(uint64_t a1)
{
  if (*(a1 + 112) >= 1)
  {
    sub_19D41C548(33);
  }

  sub_19D41C548(23);
}

void sub_19D3118A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 112) < 1)
  {
    bzero(*(a1 + 136), 4 * *(a1 + 108));
    v10 = __OFSUB__(a5, 1);
    v9 = a5 - 1;
    if (v9 < 0 != v10)
    {
      return;
    }
  }

  else
  {
    *(a1 + 160) = 0;
    v9 = a5 - 1;
    if (a5 < 1)
    {
      return;
    }
  }

  v11 = 0;
  do
  {
    if (*(a1 + 520))
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    (*(*a1 + 248))(a1, a4, a3, v12, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
    --v9;
    ++v11;
  }

  while (v9 != -1);
}

void sub_19D311970(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a3[1] == *a3 || *(a1 + 112) < 1)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = (**a1)(a1);
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 520))
  {
    sub_19D41C548(34);
  }

LABEL_7:
  v10 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v10)
  {
    v11 = a4 & 0xFFFFFF;
    v27 = a4 & 0xFFFFFF;
    while (1)
    {
      v12 = *(a1 + 520) ? v11 + ~v10 : v10;
      v13 = v12;
      v14 = (*(a1 + 42) & v9) != 0 ? 1 : v12;
      v15 = *(a1 + 42) ? 1 : v12;
      v16 = *(a1 + 264);
      if (v9)
      {
        break;
      }

      memmove(*(v16 + 8 * v14), *(*a2 + 8 * v14), 4 * *(a1 + 96));
      v17 = *(a1 + 40);
      if (v17 == 1)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (!v9)
      {
        sub_19D30A978();
      }

      v18 = (*(a1 + 360) + 24 * v13);
      v19 = *v18;
      **v18 = **(*a3 + 24 * v13);
      if (v17)
      {
        v19[1] = *(a1 + 104) - 1;
      }

      v20 = *(a1 + 384);
      v30 = 0;
      v31 = 0;
      __p = 0;
      v21 = v18[1];
      if (v21 != *v18)
      {
        if (((v21 - *v18) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      sub_19D30C0D8((v20 + 8 * v15), &__p, *(a1 + 512), *(a1 + 100), *(a1 + 104));
      v11 = v27;
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v22 = (*(a1 + 384) + 8 * v15);
      v23 = *(a1 + 100);
      if (v23 >= 1)
      {
        v24 = *v22;
        v25 = *(a1 + 100);
        do
        {
          v26 = -1035468800;
          if (*v24 < -50.0 || (v26 = 1112014848, *v24 > 50.0))
          {
            *v24 = v26;
          }

          ++v24;
          --v25;
        }

        while (v25);
      }

      sub_19D30A3C0((*(a1 + 288) + 8 * v13), v22, v23, *(a1 + 408));
      if (++v10 == v27)
      {
        return;
      }
    }

    bzero(*(v16 + 8 * v14), 4 * *(a1 + 104));
    *(*(*(a1 + 264) + 8 * v14) + 4 * **(*a3 + 24 * v13)) = 1065353216;
    v17 = *(a1 + 40);
    if (v17 != 1)
    {
      goto LABEL_24;
    }

LABEL_23:
    *(*(*(a1 + 264) + 8 * v14) + 4 * *(a1 + 104) - 4) = 1065353216;
    goto LABEL_24;
  }
}

void sub_19D311C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D311C84(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[520] = 1;
  if ((atomic_load_explicit(&qword_1EB013908, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D45430C();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB0138F0);
  a1[520] = 0;
  return result;
}

uint64_t sub_19D311D2C(_BYTE *a1)
{
  a1[520] = 1;
  result = (*(*a1 + 296))(a1);
  a1[520] = 0;
  return result;
}

char *sub_19D311D84(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 504) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7108, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 512) = result + 128;
  return result;
}

void sub_19D311E10(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 504))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7108, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D429424(a1 + 432);
    if (!*(a1 + 112))
    {
      sub_19D41C548(23);
    }

    sub_19D41C548(33);
  }

  sub_19D41C548(1);
}

_DWORD *sub_19D311EA4(_DWORD *result)
{
  if (!result[30])
  {
    return (*(*result + 392))();
  }

  return result;
}

float sub_19D311EDC(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 100);
  v4 = *(a1 + 288);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D312020(void *a1)
{
  v1 = sub_19D312D14(a1);

  operator delete(v1);
}

uint64_t sub_19D312060(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 100);
    if (v6 >= 1)
    {
      v7 = *(result + 288);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 100);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

void sub_19D3121DC(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    v3 = *(v2 + 376) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  v4 = *(a1 + 96) + v3;
  v5 = *(a1 + 100) * v4;
  *(a1 + 104) = v4;
  *(a1 + 108) = v5;
  if (!*(a1 + 504))
  {
    if ((*(a1 + 117) & 1) == 0)
    {
      if (!v2 || *(v2 + 40) != 1)
      {
        operator new[]();
      }

      *(a1 + 128) = *(v2 + 112);
    }

    *(a1 + 512) = a1 + 128;
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    operator new[]();
  }

  if (*(a1 + 112) < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (**a1)(a1);
  }

  if ((*(a1 + 42) & v6) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = dword_1EB0131E8;
  }

  if (*(a1 + 42))
  {
    v8 = 2;
  }

  else
  {
    v8 = dword_1EB0131E8;
  }

  v9 = v7;
  v10 = *(a1 + 264);
  v11 = (*(a1 + 272) - v10) >> 3;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      *(a1 + 272) = v10 + 8 * v7;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 264), v7 - v11);
  }

  v12 = *(a1 + 384);
  v13 = (*(a1 + 392) - v12) >> 3;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      *(a1 + 392) = v12 + 8 * v8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 384), v8 - v13);
  }

  v14 = dword_1EB0131E8;
  v15 = *(a1 + 288);
  v16 = (*(a1 + 296) - v15) >> 3;
  if (dword_1EB0131E8 <= v16)
  {
    if (dword_1EB0131E8 < v16)
    {
      *(a1 + 296) = v15 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 288), dword_1EB0131E8 - v16);
    v14 = dword_1EB0131E8;
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    v17 = v14;
    v18 = *(a1 + 312);
    v19 = (*(a1 + 320) - v18) >> 3;
    if (v14 <= v19)
    {
      if (v14 < v19)
      {
        *(a1 + 320) = v18 + 8 * v14;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 312), v14 - v19);
      v14 = dword_1EB0131E8;
      v17 = dword_1EB0131E8;
    }

    v20 = *(a1 + 336);
    v21 = (*(a1 + 344) - v20) >> 3;
    if (v17 <= v21)
    {
      if (v17 < v21)
      {
        *(a1 + 344) = v20 + 8 * v17;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 336), v17 - v21);
      v14 = dword_1EB0131E8;
    }
  }

  v22 = v14;
  v24 = *(a1 + 360);
  v23 = *(a1 + 368);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v26 = v24 + 24 * v22;
      if (v23 != v26)
      {
        v27 = *(a1 + 368);
        do
        {
          v29 = *(v27 - 24);
          v27 -= 24;
          v28 = v29;
          if (v29)
          {
            *(v23 - 16) = v28;
            operator delete(v28);
          }

          v23 = v27;
        }

        while (v27 != v26);
      }

      *(a1 + 368) = v26;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 360, v22 - v25);
  }

  if (v9 >= 1)
  {
    operator new[]();
  }

  if (v8 >= 1)
  {
    operator new[]();
  }

  if (dword_1EB0131E8 >= 1)
  {
    if ((*(a1 + 116) & 1) == 0)
    {
      operator new[]();
    }

    operator new[]();
  }
}

void sub_19D312880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D312894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

float32x4_t sub_19D3128E0(void **a1, float32x4_t **a2, const void **a3, unsigned int a4, int a5, float32x4_t result)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      memmove(*a1, *a3, 4 * a4);
      return result;
    }

    if (a5 == 1 && a4 >= 1)
    {
      v29 = *a2;
      v30 = *a3;
      v31 = *a1;
      if (a4 >= 8)
      {
        v32 = 0;
        if ((v31 - v29) >= 0x20 && (v31 - v30) >= 0x20)
        {
          v32 = a4 & 0x7FFFFFF8;
          v83 = v29 + 1;
          v84 = v30 + 1;
          v85 = v31 + 1;
          v86 = v32;
          do
          {
            result = vmulq_f32(vmlsq_f32(v83[-1], v83[-1], v83[-1]), v84[-1]);
            v87 = vmulq_f32(vmlsq_f32(*v83, *v83, *v83), *v84);
            v85[-1] = result;
            *v85 = v87;
            v83 += 2;
            v84 += 2;
            v85 += 2;
            v86 -= 8;
          }

          while (v86);
          if (v32 == a4)
          {
            return result;
          }
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = a4 - v32;
      v34 = v32;
      v35 = v31 + v34 * 4;
      v36 = &v30->f32[v34];
      v37 = &v29->f32[v34];
      do
      {
        v38 = *v37++;
        v39 = v38 - (v38 * v38);
        v40 = *v36++;
        result.f32[0] = v39 * v40;
        *v35 = result.i32[0];
        v35 += 4;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        if (a4 < 1)
        {
          return result;
        }

        v41 = *a2;
        v42 = *a3;
        v43 = *a1;
        if (a4 >= 8)
        {
          v44 = 0;
          if ((v43 - v41) >= 0x20 && (v43 - v42) >= 0x20)
          {
            v44 = a4 & 0x7FFFFFF8;
            v71 = v41 + 1;
            v72 = v42 + 1;
            v73 = v43 + 1;
            v74 = v44;
            do
            {
              result = vmulq_f32(v71[-1], v71[-1]);
              v75 = vmlsq_f32(*v72, *v72, vmulq_f32(*v71, *v71));
              v73[-1] = vmlsq_f32(v72[-1], v72[-1], result);
              *v73 = v75;
              v71 += 2;
              v72 += 2;
              v73 += 2;
              v74 -= 8;
            }

            while (v74);
            if (v44 == a4)
            {
              return result;
            }
          }
        }

        else
        {
          v44 = 0;
        }

        v45 = a4 - v44;
        v46 = v44;
        v47 = v43 + v46 * 4;
        v48 = &v42->f32[v46];
        v49 = &v41->f32[v46];
        do
        {
          v50 = *v49++;
          v51 = v50 * v50;
          v52 = *v48++;
          result.f32[0] = v52 - (v51 * v52);
          *v47 = result.i32[0];
          v47 += 4;
          --v45;
        }

        while (v45);
        return result;
      case 3:
        if (a4 < 1)
        {
          return result;
        }

        v53 = *a2;
        v54 = *a3;
        v55 = *a1;
        if (a4 >= 8)
        {
          v56 = 0;
          if ((v55 - v53) >= 0x20 && (v55 - v54) >= 0x20)
          {
            v56 = a4 & 0x7FFFFFF8;
            v76 = v53 + 1;
            v77 = v54 + 1;
            v78 = v55 + 1;
            result = vdupq_n_s32(0x3EC6ECC0u);
            v79 = vdupq_n_s32(0x3F2AAAE3u);
            v80 = vdupq_n_s32(0x3FDBA29Cu);
            v81 = v56;
            do
            {
              v82 = vmulq_f32(vmulq_f32(*v77, vmlsq_f32(v79, *v76, result)), vaddq_f32(*v76, v80));
              v78[-1] = vmulq_f32(vmulq_f32(v77[-1], vmlsq_f32(v79, v76[-1], result)), vaddq_f32(v76[-1], v80));
              *v78 = v82;
              v76 += 2;
              v77 += 2;
              v78 += 2;
              v81 -= 8;
            }

            while (v81);
            if (v56 == a4)
            {
              return result;
            }
          }
        }

        else
        {
          v56 = 0;
        }

        v57 = a4 - v56;
        v58 = v56;
        v59 = &v55->f32[v58];
        v60 = &v54->f32[v58];
        v61 = &v53->f32[v58];
        result.i32[0] = -1094259520;
        do
        {
          v62 = *v61++;
          v63 = v62;
          v64 = (v62 * -0.38853) + 0.66667;
          v65 = *v60++;
          *v59++ = (v65 * (v63 + 1.7159)) * v64;
          --v57;
        }

        while (v57);
        return result;
      case 4:
        v6 = *a1;
        **a1 = -971227136;
        if (a4 >= 1)
        {
          v7 = 0;
          v8 = *a2;
          if (a4 < 8)
          {
            goto LABEL_11;
          }

          if ((v6 - v8) < 0x20)
          {
            goto LABEL_11;
          }

          v7 = a4 & 0x7FFFFFF8;
          v9 = v8 + 1;
          v10 = v6 + 1;
          __asm { FMOV            V0.4S, #1.0 }

          v14 = v7;
          do
          {
            v15 = vbicq_s8(result, vclezq_f32(*v9));
            v10[-1] = vbicq_s8(result, vclezq_f32(v9[-1]));
            *v10 = v15;
            v9 += 2;
            v10 += 2;
            v14 -= 8;
          }

          while (v14);
          if (v7 != a4)
          {
LABEL_11:
            v16 = a4 - v7;
            v17 = v7;
            v18 = &v6->i32[v7];
            v19 = &v8->f32[v17];
            do
            {
              v20 = *v19++;
              if (v20 > 0.0)
              {
                v21 = 1.0;
              }

              else
              {
                v21 = 0.0;
              }

              *v18++ = v21;
              --v16;
            }

            while (v16);
          }

          v22 = *a3;
          if (a4 < 8 || (v6 < &v22->f32[a4] ? (_CF = v22 >= (v6 + 4 * a4)) : (_CF = 1), !_CF))
          {
            v24 = 0;
LABEL_48:
            v66 = a4 - v24;
            v67 = v24;
            v68 = &v22->f32[v67];
            v69 = &v6->i32[v67];
            do
            {
              v70 = *v68++;
              result.f32[0] = v70 * *v69;
              *v69++ = result.f32[0];
              --v66;
            }

            while (v66);
            return result;
          }

          v24 = a4 & 0x7FFFFFF8;
          v25 = &v6[1];
          v26 = v22 + 1;
          v27 = v24;
          do
          {
            result = vmulq_f32(v26[-1], v25[-1]);
            v28 = vmulq_f32(*v26, *v25);
            v25[-1] = result;
            *v25 = v28;
            v25 += 2;
            v26 += 2;
            v27 -= 8;
          }

          while (v27);
          if (v24 != a4)
          {
            goto LABEL_48;
          }
        }

        break;
    }
  }

  return result;
}

void *sub_19D312D14(void *a1)
{
  *a1 = &unk_1F10B6F70;
  sub_19D311068(a1);
  v2 = a1[53];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[53] = 0;
  }

  sub_19D429384((a1 + 54));
  v3 = a1[48];
  if (v3)
  {
    a1[49] = v3;
    operator delete(v3);
  }

  v4 = a1[45];
  if (v4)
  {
    v5 = a1[46];
    v6 = a1[45];
    if (v5 != v4)
    {
      v7 = a1[46];
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[45];
    }

    a1[46] = v4;
    operator delete(v6);
  }

  v10 = a1[42];
  if (v10)
  {
    a1[43] = v10;
    operator delete(v10);
  }

  v11 = a1[39];
  if (v11)
  {
    a1[40] = v11;
    operator delete(v11);
  }

  v12 = a1[36];
  if (v12)
  {
    a1[37] = v12;
    operator delete(v12);
  }

  v13 = a1[33];
  if (v13)
  {
    a1[34] = v13;
    operator delete(v13);
  }

  sub_19D308FC0(a1 + 18);
  v14 = a1[9];
  if (v14)
  {
    a1[10] = v14;
    operator delete(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    a1[7] = v15;
    operator delete(v15);
  }

  *a1 = &unk_1F10B68F8;
  v16 = a1[1];
  if (v16)
  {
    a1[2] = v16;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_19D312E88(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F10B7148;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 41) = 0;
  unk_1F10B7208(a1);
  *(a1 + 32) = 0;
  *(a1 + 40) = *(**a2 + 40);
  return a1;
}

void sub_19D312FA0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
    *v1 = v2;
    v6 = v1[1];
    if (!v6)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v2;
    v6 = v1[1];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D31311C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) == v1)
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
    v1 = *(a1 + 48);
  }

  while (v3 < (*(a1 + 56) - v1) >> 3);
  return result;
}

uint64_t sub_19D313198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (*(result + 56) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 64))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 48);
    }

    while (v9 < (*(v8 + 56) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D313230(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 48);
  if (*(result + 56) != v5)
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = (*(**(v5 + 8 * v11) + 72))(*(v5 + 8 * v11), a2, a3, a4, a5);
      ++v11;
      v5 = *(v10 + 48);
    }

    while (v11 < (*(v10 + 56) - v5) >> 3);
  }

  return result;
}

uint64_t sub_19D3132D0(uint64_t result, void *lpsrc, void *a3)
{
  v3 = *(result + 48);
  if (*(result + 56) != v3)
  {
    v6 = result;
    if (lpsrc)
    {
      v7 = 0;
      do
      {
        v8 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        v9 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        result = (*(**(v3 + 8 * v7) + 80))(*(v3 + 8 * v7), *(v8[6] + 8 * v7), *(v9[6] + 8 * v7));
        ++v7;
        v3 = *(v6 + 48);
      }

      while (v7 < (*(v6 + 56) - v3) >> 3);
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        result = (*(**(v3 + 8 * v10) + 80))(*(v3 + 8 * v10), *(MEMORY[0x30] + 8 * v10), *(v11[6] + 8 * v10));
        ++v10;
        v3 = *(v6 + 48);
      }

      while (v10 < (*(v6 + 56) - v3) >> 3);
    }
  }

  return result;
}

uint64_t sub_19D3134A8(uint64_t result, void *lpsrc, void *a3)
{
  v3 = *(result + 48);
  if (*(result + 56) != v3)
  {
    v6 = result;
    if (lpsrc)
    {
      v7 = 0;
      do
      {
        v8 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        v9 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        result = (*(**(v3 + 8 * v7) + 88))(*(v3 + 8 * v7), *(v8[6] + 8 * v7), *(v9[6] + 8 * v7));
        ++v7;
        v3 = *(v6 + 48);
      }

      while (v7 < (*(v6 + 56) - v3) >> 3);
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B72C0, 0);
        result = (*(**(v3 + 8 * v10) + 88))(*(v3 + 8 * v10), *(MEMORY[0x30] + 8 * v10), *(v11[6] + 8 * v10));
        ++v10;
        v3 = *(v6 + 48);
      }

      while (v10 < (*(v6 + 56) - v3) >> 3);
    }
  }

  return result;
}

uint64_t sub_19D313680(uint64_t result, void *lpsrc)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
      result = (*(**(v2 + 8 * v5) + 96))(*(v2 + 8 * v5), *(v6[6] + 8 * v5));
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313758(uint64_t result, void *lpsrc)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
      result = (*(**(v2 + 8 * v5) + 104))(*(v2 + 8 * v5), *(v6[6] + 8 * v5));
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313830(uint64_t result, float a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 112))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D3138B0(uint64_t result, float a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 120))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313930(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 128))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D3139B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (*(result + 56) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 136))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 48);
    }

    while (v9 < (*(v8 + 56) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D313A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (*(result + 56) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 144))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 48);
    }

    while (v9 < (*(v8 + 56) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D313AE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  if (*(result + 56) != v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(**(v3 + 8 * v7) + 152))(*(v3 + 8 * v7), a2, a3);
      ++v7;
      v3 = *(v6 + 48);
    }

    while (v7 < (*(v6 + 56) - v3) >> 3);
  }

  return result;
}

uint64_t sub_19D313B68(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 160))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 48);
    }

    while (v3 < (*(v2 + 56) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D313BD8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 168))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313C58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 176))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313CD8(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 184))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 48);
    }

    while (v3 < (*(v2 + 56) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D313D48(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 192))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 48);
    }

    while (v3 < (*(v2 + 56) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D313DB8(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 200))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 48);
    }

    while (v3 < (*(v2 + 56) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D313E28(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 208))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 48);
    }

    while (v3 < (*(v2 + 56) - v1) >> 3);
  }

  return result;
}

uint64_t sub_19D313F00(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 280))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 48);
    }

    while (v5 < (*(v4 + 56) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D313F88(uint64_t result, float a2, float a3)
{
  v3 = *(result + 48);
  if (*(result + 56) != v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(**(v3 + 8 * v7) + 288))(*(v3 + 8 * v7), a2, a3);
      ++v7;
      v3 = *(v6 + 48);
    }

    while (v7 < (*(v6 + 56) - v3) >> 3);
  }

  return result;
}

uint64_t sub_19D314018(uint64_t result)
{
  v1 = *(result + 48);
  v2 = (*(result + 56) - v1) >> 3;
  v3 = (v2 - 1);
  if (v2 - 1 >= 0)
  {
    v4 = result;
    result = (*(**(v1 + 8 * v3) + 296))(*(v1 + 8 * v3));
    if (v3)
    {
      do
      {
        v5 = *(*(v4 + 48) + 8 * v3);
        (*(*v5 + 48))(v5);
        result = (*(**(*(v4 + 48) + 8 * v3 - 8) + 296))();
      }

      while (v3-- > 1);
    }
  }

  return result;
}

uint64_t sub_19D314128(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    result = (*(**v1 + 304))(*v1);
    v3 = *(v2 + 48);
    if ((*(v2 + 56) - v3) >= 9)
    {
      v4 = 0;
      do
      {
        (*(**(v3 + 8 * v4) + 32))(*(v3 + 8 * v4));
        result = (*(**(*(v2 + 48) + 8 * v4 + 8) + 304))();
        v3 = *(v2 + 48);
        v5 = v4 + 2;
        ++v4;
      }

      while (v5 < (*(v2 + 56) - v3) >> 3);
    }
  }

  return result;
}

uint64_t sub_19D314268(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 56) != v1)
  {
    v2 = result;
    result = (*(**v1 + 312))(*v1);
    v3 = *(v2 + 48);
    if ((*(v2 + 56) - v3) >= 9)
    {
      v4 = 0;
      do
      {
        (*(**(v3 + 8 * v4) + 32))(*(v3 + 8 * v4));
        result = (*(**(*(v2 + 48) + 8 * v4 + 8) + 312))();
        v3 = *(v2 + 48);
        v5 = v4 + 2;
        ++v4;
      }

      while (v5 < (*(v2 + 56) - v3) >> 3);
    }
  }

  return result;
}

uint64_t sub_19D3143A0(uint64_t result)
{
  v1 = *(result + 48);
  v2 = (*(result + 56) - v1) >> 3;
  v3 = (v2 - 1);
  if (v2 - 1 >= 0)
  {
    v4 = result;
    result = (*(**(v1 + 8 * v3) + 320))(*(v1 + 8 * v3));
    if (v3)
    {
      do
      {
        v5 = *(*(v4 + 48) + 8 * v3);
        (*(*v5 + 48))(v5);
        result = (*(**(*(v4 + 48) + 8 * v3 - 8) + 320))();
      }

      while (v3-- > 1);
    }
  }

  return result;
}

void *sub_19D3144B0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v4 = *(a1 + 48);
  if (*(a1 + 56) != v4)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = (*(**(v4 + 8 * v6) + 328))(*(v4 + 8 * v6), *(*(v5 + 48) + 8 * v6));
      ++v6;
      v4 = *(a1 + 48);
    }

    while (v6 < (*(a1 + 56) - v4) >> 3);
  }

  return result;
}

void *sub_19D314588(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B72C0, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v11 = result;
  if (*(a1 + 32) != a4)
  {
    *(a1 + 32) = a4;
  }

  if (*(lpsrc + 8) != a4)
  {
    *(lpsrc + 8) = a4;
  }

  v12 = *(a1 + 48);
  if (*(a1 + 56) != v12)
  {
    v13 = 0;
    do
    {
      result = (*(**(v12 + 8 * v13) + 336))(*(v12 + 8 * v13), *(*(v11 + 48) + 8 * v13), a3, a4, a5);
      ++v13;
      v12 = *(a1 + 48);
    }

    while (v13 < (*(a1 + 56) - v12) >> 3);
  }

  return result;
}

void *sub_19D314708(void *a1)
{
  *a1 = &unk_1F10B7148;
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 368))(v2[v5]);
        v2 = a1[6];
        v3 = a1[7];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F10B68F8;
  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_19D3147E4(char *__p)
{
  *__p = &unk_1F10B7148;
  v4 = __p + 48;
  v2 = *(__p + 6);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 368))(v2[v5]);
        v2 = *(__p + 6);
        v3 = *(__p + 7);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(__p + 7) = v2;
    operator delete(v2);
  }

  *__p = &unk_1F10B68F8;
  v7 = *(__p + 1);
  if (v7)
  {
    *(__p + 2) = v7;
    operator delete(v7);
  }

  operator delete(__p);
}

void sub_19D3148D0(uint64_t a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B72E8;
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  sub_19D42933C(a1 + 296);
  *(a1 + 368) = a5;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  (*(*a1 + 192))(a1);
  *(a1 + 232) = 0;
  *(a1 + 41) = 0;
  *(a1 + 208) = a4;
  *(a1 + 240) = a9;
  *(a1 + 40) = a8;
  *(a1 + 60) = a6;
  *(a1 + 61) = a7;
  operator new();
}

void sub_19D314A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_19D429384((v15 + 37));
  v19 = v15[34];
  if (v19)
  {
    v15[35] = v19;
    operator delete(v19);
    v20 = *v17;
    if (!*v17)
    {
LABEL_5:
      v21 = v15[23];
      if (!v21)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = *v17;
    if (!*v17)
    {
      goto LABEL_5;
    }
  }

  v15[32] = v20;
  operator delete(v20);
  v21 = v15[23];
  if (!v21)
  {
LABEL_6:
    v22 = v15[20];
    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15[24] = v21;
  operator delete(v21);
  v22 = v15[20];
  if (!v22)
  {
LABEL_7:
    v23 = v15[17];
    if (!v23)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15[21] = v22;
  operator delete(v22);
  v23 = v15[17];
  if (!v23)
  {
LABEL_8:
    v24 = v15[14];
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15[18] = v23;
  operator delete(v23);
  v24 = v15[14];
  if (!v24)
  {
LABEL_9:
    v25 = v15[11];
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v15[15] = v24;
  operator delete(v24);
  v25 = v15[11];
  if (!v25)
  {
LABEL_10:
    *v15 = v16;
    v26 = v15[1];
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15[12] = v25;
  operator delete(v25);
  *v15 = v16;
  v26 = v15[1];
  if (!v26)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  v15[2] = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D314BE8(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 208) = v14;
LABEL_12:
  if (*(a1 + 48) != v10 || *(a1 + 52) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 376);
  v16 = *a3;
  v17 = *(a1 + 61);
  v18 = sub_19D41C520();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D314D10(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 52);
  sub_19D41C9E8(__stream, a3, *(a1 + 48));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 208));
  }

  v11 = *(a1 + 376);
  v12 = sub_19D41C520();

  return sub_19D3095DC(v11, __stream, a3, 3, v12, a5);
}

double sub_19D314DCC(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7478, 0);
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(a1 + 52) * *(a1 + 48));
  if (v7 >= 1)
  {
    v8 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7478, 0);
    v9 = 0;
    v10 = v8[8];
    v11 = v5[8];
    v12 = **(a1 + 376);
    if (v7 < 4)
    {
      goto LABEL_6;
    }

    v9 = 0;
    if ((v12 - v10) < 0x20 || (v12 - v11) < 0x20)
    {
      goto LABEL_6;
    }

    if (v7 < 0x10)
    {
      v9 = 0;
LABEL_17:
      v26 = v9;
      v9 = v7 & 0x7FFFFFFC;
      v27 = (v10 + 2 * v26);
      v28 = (v11 + 2 * v26);
      v29 = (v12->i64 + 2 * v26);
      v30 = v26 - v9;
      do
      {
        v31 = *v27++;
        v32 = v31;
        v33 = *v28++;
        *v6.i8 = vsub_s16(v32, v33);
        *v29++ = v6.i64[0];
        v30 += 4;
      }

      while (v30);
      if (v9 == v7)
      {
        return *v6.i64;
      }

LABEL_6:
      v13 = v7 - v9;
      v14 = v9;
      v15 = &v12->i16[v14];
      v16 = &v11->i16[v14];
      v17 = &v10->i16[v14];
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = *v16++;
        *v15++ = v18 - v20;
        --v13;
      }

      while (v13);
      return *v6.i64;
    }

    v9 = v7 & 0x7FFFFFF0;
    v21 = v10 + 1;
    v22 = v11 + 1;
    v23 = v12 + 1;
    v24 = v9;
    do
    {
      v6 = vsubq_s16(v21[-1], v22[-1]);
      v25 = vsubq_s16(*v21, *v22);
      v23[-1] = v6;
      *v23 = v25;
      v21 += 2;
      v22 += 2;
      v23 += 2;
      v24 -= 16;
    }

    while (v24);
    if (v9 != v7)
    {
      if ((v7 & 0xC) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  return *v6.i64;
}

double sub_19D314FFC(uint64_t a1, void *lpsrc)
{
  v2 = (*(a1 + 52) * *(a1 + 48));
  if (v2 >= 1)
  {
    v4 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7478, 0);
    v6 = **(a1 + 376);
    v7 = v4[8];
    if (v2 < 4 || (v6 < v7 + 2 * v2 ? (v8 = v7 >= v6 + 2 * v2) : (v8 = 1), !v8))
    {
      v9 = 0;
      goto LABEL_11;
    }

    if (v2 >= 0x10)
    {
      v9 = v2 & 0x7FFFFFF0;
      v15 = (v6 + 16);
      v16 = (v7 + 16);
      v17 = v9;
      do
      {
        v5 = vaddq_s16(v16[-1], v15[-1]);
        v18 = vaddq_s16(*v16, *v15);
        v15[-1] = v5;
        *v15 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 16;
      }

      while (v17);
      if (v9 == v2)
      {
        return *v5.i64;
      }

      if ((v2 & 0xC) == 0)
      {
LABEL_11:
        v10 = v2 - v9;
        v11 = 2 * v9;
        v12 = (v7 + v11);
        v13 = (v6 + v11);
        do
        {
          v14 = *v12++;
          *v13++ += v14;
          --v10;
        }

        while (v10);
        return *v5.i64;
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = v9;
    v9 = v2 & 0x7FFFFFFC;
    v20 = (v6 + 2 * v19);
    v21 = (v7 + 2 * v19);
    v22 = v19 - v9;
    do
    {
      v23 = *v21++;
      *v5.i8 = vadd_s16(v23, *v20);
      *v20++ = *v5.i8;
      v22 += 4;
    }

    while (v22);
    if (v9 != v2)
    {
      goto LABEL_11;
    }
  }

  return *v5.i64;
}

void *sub_19D315230(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 16 * *a4) = v5;
  result = memmove(**(v6 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v5);
  ++*a4;
  return result;
}

void *sub_19D315294(uint64_t a1, void *a2, int a3, int *a4)
{
  v4 = *(a1 + 112);
  v5 = *a4;
  *a4 = v5 + 1;
  return memmove(*(v4 + 8 * a3), **(*a2 + 16 * v5 + 8), 4 * *(a1 + 48));
}

void sub_19D3152C8(uint64_t a1, void *a2, int *a3)
{
  v4 = (*a2 + 16 * *a3);
  bzero(**(v4 + 1), 4 * *v4);
  ++*a3;
}

void sub_19D315318(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 376);
  v2[1] = *(a1 + 48);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D315358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 64) = v3;
  result = a1 + 64;
  *(result + 312) = result;
  return result;
}

void sub_19D315460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31547C(void *a1)
{
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
}

uint64_t sub_19D315534(uint64_t result, float a2, __n128 a3)
{
  v3 = *(result + 56);
  if (v3 >= 1)
  {
    v4 = *(result + 64);
    v5 = *(result + 80);
    v6 = truncf(a2);
    if (v3 < 8)
    {
      v7 = 0;
LABEL_7:
      v13 = v3 - v7;
      v14 = (v5 + 4 * v7);
      v15 = (v4 + 2 * v7);
      do
      {
        a3.n128_u16[0] = *v15;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        v16 = *v14++;
        a3.n128_f32[0] = a3.n128_i32[0] + (v16 * v6);
        *v15++ = a3.n128_f32[0];
        --v13;
      }

      while (v13);
      return result;
    }

    v7 = v3 & 0x7FFFFFF8;
    v8 = v7;
    v9 = *(result + 80);
    v10 = *(result + 64);
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v10)), v11, v6)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v10->i8)), v12, v6)));
      *v10->i8 = a3;
      v10 += 2;
      v8 -= 8;
    }

    while (v8);
    if (v7 != v3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_19D3155E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v8 = (**a1)(a1);
  if (a5 >= 1 && (v8 & 1) == 0)
  {
    if (*(a1 + 232))
    {
      v10 = 0;
    }

    else
    {
      v10 = a5 - 1;
    }

    sub_19D3128E0((a1 + 216), (*(a1 + 184) + 8 * v10), (*a4 + 8 * v10), *(a1 + 48), *(a1 + 208), v9);
    sub_19D30A978();
  }

  bzero(*(a1 + 80), 4 * *(a1 + 56));
  if (a5 >= 1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v12 = 0;
    v13 = MEMORY[0x1E69E9820];
    do
    {
      --a5;
      if (*(a1 + 232))
      {
        v14 = v12;
      }

      else
      {
        v14 = a5;
      }

      v15 = 8 * v14;
      v16 = *(a1 + 80);
      v17 = *(a1 + 88) + v15;
      v18 = *a4 + v15;
      v19 = *(a1 + 52);
      v20 = *(a1 + 48);
      v21[0] = v13;
      v21[1] = 0x40000000;
      v21[2] = sub_19D30AD54;
      v21[3] = &unk_1E7626958;
      v22 = v19;
      v21[4] = v16;
      v21[5] = v18;
      v21[6] = v17;
      dispatch_apply(v20, global_queue, v21);
      if (*(a1 + 40) == 1)
      {
        *(*(*(a1 + 136) + 8 * v14) + 4 * *(a1 + 52) - 4) = 1065353216;
      }

      ++v12;
    }

    while (a5 > 0);
  }
}

uint64_t sub_19D315818(uint64_t result, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(result + 240);
  if (v5)
  {
    if ((*(v5 + 20) & 1) != 0 || *(v5 + 40) != 1)
    {
      v6 = 0;
      v7 = *(result + 232);
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(v5 + 44) == 1;
      v7 = *(result + 232);
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 1;
    v7 = *(result + 232);
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    sub_19D41C548(34);
  }

LABEL_10:
  v8 = a4 & 0xFFFFFF;
  v9 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v9)
  {
    v46 = v6;
    if (v7)
    {
      v11 = v8 + ~v9;
    }

    else
    {
      v11 = a5 != 0;
    }

    v12 = v11 < v8 - 1;
    if (v7)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    if (v7)
    {
      v14 = v12;
    }

    else
    {
      v14 = a5 != 0;
    }

    v15 = 8 * v11;
    v16 = result;
    bzero(*(*(result + 88) + v15), 4 * *(result + 52));
    v17 = *(v16 + 88);
    v18 = *(v16 + 44);
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = *(*a2 + 8 * v11);
      v21 = *(v17 + 8 * v11);
      if (v18 < 8)
      {
        goto LABEL_28;
      }

      if ((v21 - v20) < 0x20)
      {
        goto LABEL_28;
      }

      v19 = v18 & 0x7FFFFFF8;
      v22 = (v20 + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_28:
        v26 = v18 - v19;
        v27 = 4 * v19;
        v28 = (v21 + 4 * v19);
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

    v31 = v11 + v13;
    if (v46 && v14)
    {
      v32 = *(v16 + 48);
      if (v32 >= 1)
      {
        v33 = *(*(v16 + 112) + 8 * v31);
        v34 = *(v17 + v15);
        if (v32 >= 8 && (v35 = 4 * v18 + v34, (v35 - v33) >= 0x20))
        {
          v36 = v32 & 0x7FFFFFF8;
          v42 = (v33 + 16);
          v43 = (v35 + 16);
          v44 = v36;
          do
          {
            v45 = *v42;
            *(v43 - 1) = *(v42 - 1);
            *v43 = v45;
            v42 += 2;
            v43 += 2;
            v44 -= 8;
          }

          while (v44);
          if (v36 == v32)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = v32 - v36;
        v38 = 4 * v36;
        v39 = (v34 + v38 + 4 * v18);
        v40 = (v33 + v38);
        do
        {
          v41 = *v40++;
          *v39++ = v41;
          --v37;
        }

        while (v37);
      }
    }

LABEL_37:
    if (*(v16 + 40) == 1)
    {
      *(*(v17 + v15) + 4 * *(v16 + 52) - 4) = 1065353216;
    }

    sub_19D30A978();
  }

  return result;
}

char *sub_19D315AD4(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 368) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7478, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 376) = result + 64;
  return result;
}

uint64_t sub_19D315B60(uint64_t a1, void *lpsrc, float a3)
{
  if (*(a1 + 368))
  {
    sub_19D41C548(1);
  }

  v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7478, 0);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  sub_19D429424(a1 + 296);
  v8 = *(a1 + 56);
  if (v8 >= 1)
  {
    v9 = *(a1 + 64);
    v10 = *(v6 + 10);
    v11 = truncf(a3);
    if (v8 < 8)
    {
      v12 = 0;
LABEL_9:
      v18 = v8 - v12;
      v19 = (v10 + 4 * v12);
      v20 = (v9 + 2 * v12);
      do
      {
        v7.i16[0] = *v20;
        v7.i64[0] = vmovl_s16(*v7.i8).u64[0];
        v21 = *v19++;
        *v7.i32 = v7.i32[0] + (v21 * v11);
        *v20++ = *v7.i32;
        --v18;
      }

      while (v18);
      goto LABEL_11;
    }

    v12 = v8 & 0x7FFFFFF8;
    v13 = v12;
    v14 = *(v6 + 10);
    v15 = *(a1 + 64);
    do
    {
      v16 = *v14;
      v17 = v14[1];
      v14 += 2;
      v7 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15)), v16, v11)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v15->i8)), v17, v11)));
      *v15->i8 = v7;
      v15 += 2;
      v13 -= 8;
    }

    while (v13);
    if (v12 != v8)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  return sub_19D42942C(a1 + 296);
}

uint64_t sub_19D315CB4(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 48);
    if (v6 >= 1)
    {
      v7 = *(result + 112);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 48);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

float sub_19D315E30(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 112);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D315F74(void *a1)
{
  v1 = sub_19D316578(a1);

  operator delete(v1);
}

void sub_19D315FB4(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    if ((*(v1 + 20) & 1) != 0 || *(v1 + 40) != 1)
    {
      v2 = 0;
      if ((*(a1 + 42) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = *(v1 + 44) == 1;
      if ((*(a1 + 42) & 1) == 0)
      {
LABEL_11:
        v3 = *(a1 + 48);
        v4 = *(a1 + 44) + *(a1 + 40);
        *(a1 + 52) = v4;
        if (!v2)
        {
LABEL_9:
          *(a1 + 56) = v3 * v4;
          operator new[]();
        }

LABEL_8:
        v4 += v3;
        *(a1 + 52) = v4;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v2 = 1;
    if ((*(a1 + 42) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 44) + *(a1 + 40);
  *(a1 + 52) = v4;
  if (!v2)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_19D316578(void *a1)
{
  *a1 = &unk_1F10B72E8;
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
  sub_19D429384((a1 + 37));
  v10 = a1[34];
  if (v10)
  {
    a1[35] = v10;
    operator delete(v10);
  }

  v11 = a1[31];
  if (v11)
  {
    a1[32] = v11;
    operator delete(v11);
  }

  v12 = a1[23];
  if (v12)
  {
    a1[24] = v12;
    operator delete(v12);
  }

  v13 = a1[20];
  if (v13)
  {
    a1[21] = v13;
    operator delete(v13);
  }

  v14 = a1[17];
  if (v14)
  {
    a1[18] = v14;
    operator delete(v14);
  }

  v15 = a1[14];
  if (v15)
  {
    a1[15] = v15;
    operator delete(v15);
  }

  v16 = a1[11];
  if (v16)
  {
    a1[12] = v16;
    operator delete(v16);
  }

  *a1 = &unk_1F10B68F8;
  v17 = a1[1];
  if (v17)
  {
    a1[2] = v17;
    operator delete(v17);
  }

  return a1;
}

uint64_t sub_19D3166D8(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B74A0;
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = 0u;
  v8 = (a1 + 64);
  *(a1 + 112) = 0u;
  v9 = (a1 + 112);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  sub_19D42933C(a1 + 160);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 40) = a6;
  *(a1 + 60) = *(a1 + 44) + a6;
  *(a1 + 41) = 0;
  v10 = dword_1EB0131E8;
  v11 = dword_1EB0131E8;
  v12 = *(a1 + 64);
  v13 = (*(a1 + 72) - v12) >> 3;
  if (dword_1EB0131E8 <= v13)
  {
    if (dword_1EB0131E8 < v13)
    {
      *(a1 + 72) = v12 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0(v8, dword_1EB0131E8 - v13);
    v10 = dword_1EB0131E8;
    v11 = dword_1EB0131E8;
  }

  v14 = *(a1 + 88);
  v15 = (*(a1 + 96) - v14) >> 3;
  if (v11 <= v15)
  {
    if (v11 < v15)
    {
      *(a1 + 96) = v14 + 8 * v11;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 88), v11 - v15);
    v10 = dword_1EB0131E8;
    v11 = dword_1EB0131E8;
  }

  v16 = *(a1 + 112);
  v17 = (*(a1 + 120) - v16) >> 3;
  if (v11 <= v17)
  {
    if (v11 < v17)
    {
      *(a1 + 120) = v16 + 8 * v11;
    }
  }

  else
  {
    sub_19D308DD0(v9, v11 - v17);
    v10 = dword_1EB0131E8;
    v11 = dword_1EB0131E8;
  }

  v18 = *(a1 + 136);
  v19 = (*(a1 + 144) - v18) >> 3;
  if (v11 <= v19)
  {
    if (v11 < v19)
    {
      *(a1 + 144) = v18 + 8 * v11;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 136), v11 - v19);
    v10 = dword_1EB0131E8;
  }

  if (v10 >= 1)
  {
    operator new[]();
  }

  return a1;
}

void sub_19D316A28(_Unwind_Exception *exception_object)
{
  v6 = v1[17];
  if (v6)
  {
    v1[18] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = v1[11];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[15] = v7;
  operator delete(v7);
  v8 = v1[11];
  if (!v8)
  {
LABEL_4:
    v9 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v1[12] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_5:
    *v1 = v2;
    v10 = v1[1];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  v1[9] = v9;
  operator delete(v9);
  *v1 = v2;
  v10 = v1[1];
  if (!v10)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  v1[2] = v10;
  operator delete(v10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D316B9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *a4;
    v7 = *(result + 112);
    if (a5 < 4)
    {
      goto LABEL_7;
    }

    if ((v7 - v6) <= 0x1F)
    {
      goto LABEL_7;
    }

    v5 = a5 & 0x7FFFFFFC;
    v8 = (v6 + 16);
    v9 = (v7 + 16);
    v10 = v5;
    do
    {
      v11 = *v8;
      *(v9 - 1) = *(v8 - 1);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != a5)
    {
LABEL_7:
      v12 = (v6 + 8 * v5);
      v13 = (v7 + 8 * v5);
      v14 = a5 - v5;
      do
      {
        v15 = *v12++;
        *v13++ = v15;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

int *sub_19D316C1C(int *result, void *a2, uint64_t a3, int a4)
{
  if ((a4 & 0xFFFFFF) != 0)
  {
    v5 = result;
    v6 = 0;
    v7 = 8 * (a4 & 0xFFFFFF);
    do
    {
      memmove(*(*(v5 + 8) + v6), *(*a2 + v6), 4 * v5[11]);
      if (*(v5 + 40) == 1)
      {
        *(*(*(v5 + 8) + v6) + 4 * v5[11]) = 1065353216;
      }

      result = memmove(*(*(v5 + 11) + v6), *(*a2 + v6), 4 * v5[12]);
      v6 += 8;
    }

    while (v7 != v6);
  }

  return result;
}

void sub_19D316D04(void *a1)
{
  v1 = sub_19D316D40(a1);

  operator delete(v1);
}

void *sub_19D316D40(void *a1)
{
  *a1 = &unk_1F10B74A0;
  v4 = a1 + 29;
  v2 = a1[29];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        operator delete[](v2[v5]);
        v2 = a1[29];
        v3 = a1[30];
      }

      ++v5;
    }

    while (v5 < v3 - v2);
  }

  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  sub_19D429384((a1 + 20));
  v6 = a1[17];
  if (v6)
  {
    a1[18] = v6;
    operator delete(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    a1[15] = v7;
    operator delete(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[12] = v8;
    operator delete(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  *a1 = &unk_1F10B68F8;
  v10 = a1[1];
  if (v10)
  {
    a1[2] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_19D316E3C(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v15 = sub_19D3171B0(a1, a5);
  *v15 = &unk_1F10B7648;
  *(v15 + 41) = 0;
  *(v15 + 112) = 0;
  *(v15 + 408) = a4;
  *(v15 + 528) = a8;
  *(v15 + 120) = *(a6 + 68);
  if (a8)
  {
    a7 = *(a8 + 376);
  }

  *(a1 + 40) = a7;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 104) = 0;
  *(a1 + 116) = *(a6 + 45);
  *(a1 + 424) = 0;
  *(a1 + 528) = a8;
  if (a2 < 1 || a3 <= 0)
  {
    sub_19D41C548(34);
  }

  v19 = 7;
  strcpy(__p, "SoftMax");
  sub_19D3121DC(a1);
  *(a1 + 32) = *(a6 + 16);
  *(a1 + 424) = 0;
  if ((*(a1 + 116) & 1) == 0)
  {
    v16 = *(a6 + 32);
    switch(v16)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  return a1;
}

void sub_19D317148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  sub_19D312D14(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3171B0(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B6F70;
  *(a1 + 48) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 400) = 0;
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a2;
  *(a1 + 40) = 0;
  *(a1 + 424) = 0;
  *(a1 + 520) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 110) = 0;
  *(a1 + 408) = 1;
  *(a1 + 528) = 0;
  (*(*a1 + 192))(a1);
  return a1;
}

void sub_19D3172CC(_Unwind_Exception *a1)
{
  sub_19D429384(v1 + 432);
  v6 = *(v1 + 384);
  if (v6)
  {
    *(v1 + 392) = v6;
    operator delete(v6);
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
LABEL_3:
      v8 = *(v1 + 312);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 344) = v7;
  operator delete(v7);
  v8 = *(v1 + 312);
  if (!v8)
  {
LABEL_4:
    v9 = *(v1 + 288);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 320) = v8;
  operator delete(v8);
  v9 = *(v1 + 288);
  if (!v9)
  {
LABEL_5:
    v10 = *(v1 + 264);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 296) = v9;
  operator delete(v9);
  v10 = *(v1 + 264);
  if (!v10)
  {
LABEL_6:
    sub_19D308FC0(v3);
    v11 = *(v1 + 72);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 272) = v10;
  operator delete(v10);
  sub_19D308FC0(v3);
  v11 = *(v1 + 72);
  if (!v11)
  {
LABEL_7:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 80) = v11;
  operator delete(v11);
  v12 = *v4;
  if (!*v4)
  {
LABEL_8:
    *v1 = v2;
    v13 = *(v1 + 8);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 56) = v12;
  operator delete(v12);
  *v1 = v2;
  v13 = *(v1 + 8);
  if (!v13)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_17:
  *(v1 + 16) = v13;
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_19D317470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31748C(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a4;
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = (*(*a1 + 24))(a1);
  memmove(*(*v12 + 8 * a4), *(*a2 + 8 * a4), 4 * v10);
  if (*(a1 + 40) == 1)
  {
    *(*(*(*(*a1 + 24))(a1) + 8 * v9) + 4 * v11 - 4) = 1065353216;
  }

  if (a5[1] == *a5)
  {
    (*(*a1 + 24))(a1);
    sub_19D30A978();
  }

  (*(*a1 + 24))(a1);
  sub_19D41C548(65);
}

uint64_t sub_19D317764(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = result;
  if (a5 && (*(result + 520) & 1) != 0)
  {
    sub_19D41C548(34);
  }

  v11 = a4 & 0xFFFFFF;
  v12 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v12)
  {
    do
    {
      result = (*(*v10 + 224))(v10, a2, a3, v12, a7);
      v12 = (v12 + 1);
    }

    while (v11 != v12);
  }

  return result;
}

void sub_19D317810(void *a1)
{
  v1 = sub_19D312D14(a1);

  operator delete(v1);
}

void sub_19D317838(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F10B7808;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 920) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 956) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 1112) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  sub_19D42933C(a1 + 1192);
  sub_19D42933C(a1 + 1264);
  sub_19D42933C(a1 + 1336);
  sub_19D42933C(a1 + 1408);
  sub_19D42933C(a1 + 1480);
  sub_19D42933C(a1 + 1552);
  sub_19D42933C(a1 + 1624);
  sub_19D42933C(a1 + 1696);
  sub_19D42933C(a1 + 1768);
  sub_19D42933C(a1 + 1840);
  sub_19D42933C(a1 + 1912);
  *(a1 + 1988) = a5;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  (*(*a1 + 192))(a1);
  *(a1 + 2040) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2048) = a9;
  if (a9)
  {
    v15 = *(a9 + 376);
    nullsub_171("GRU constructor");
    v16 = v15 ^ 1;
    a8 = *(*(a1 + 2048) + 376);
    *(a1 + 40) = a8;
  }

  else
  {
    *(a1 + 40) = a8;
    v16 = 1;
  }

  *(a1 + 1984) = *(a7 + 45);
  v17 = *a4;
  *(a1 + 520) = **a4;
  *(a1 + 524) = v17[1];
  *(a1 + 528) = v17[2];
  if ((a8 & 1) == 0)
  {
    v16 = 0;
  }

  *(a1 + 48) = v16 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2040) = 1;
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  operator new();
}

void sub_19D317B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v22 = v15[252];
    if (!v22)
    {
LABEL_3:
      v23 = *v18;
      if (!*v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v22 = v15[252];
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  v15[253] = v22;
  operator delete(v22);
  v23 = *v18;
  if (!*v18)
  {
LABEL_5:
    sub_19D429384((v15 + 239));
    sub_19D429384((v15 + 230));
    sub_19D429384((v15 + 221));
    sub_19D429384((v15 + 212));
    sub_19D429384((v15 + 203));
    sub_19D429384((v15 + 194));
    sub_19D429384((v15 + 185));
    sub_19D429384((v15 + 176));
    sub_19D429384((v15 + 167));
    sub_19D429384((v15 + 158));
    sub_19D429384((v15 + 149));
    sub_19D308FC0(v15 + 119);
    sub_19D308FC0(v15 + 104);
    sub_19D308FC0(v15 + 89);
    v24 = v15[85];
    if (v24)
    {
      v15[86] = v24;
      operator delete(v24);
      v25 = v15[82];
      if (!v25)
      {
LABEL_7:
        v26 = v15[79];
        if (!v26)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v25 = v15[82];
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    v15[83] = v25;
    operator delete(v25);
    v26 = v15[79];
    if (!v26)
    {
LABEL_8:
      v27 = v15[76];
      if (!v27)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v15[80] = v26;
    operator delete(v26);
    v27 = v15[76];
    if (!v27)
    {
LABEL_9:
      v28 = v15[73];
      if (!v28)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v15[77] = v27;
    operator delete(v27);
    v28 = v15[73];
    if (!v28)
    {
LABEL_10:
      v29 = v15[70];
      if (!v29)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    v15[74] = v28;
    operator delete(v28);
    v29 = v15[70];
    if (!v29)
    {
LABEL_11:
      v30 = v15[62];
      if (!v30)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v15[71] = v29;
    operator delete(v29);
    v30 = v15[62];
    if (!v30)
    {
LABEL_12:
      v31 = v15[59];
      if (!v31)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    v15[63] = v30;
    operator delete(v30);
    v31 = v15[59];
    if (!v31)
    {
LABEL_13:
      v32 = v15[56];
      if (!v32)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    v15[60] = v31;
    operator delete(v31);
    v32 = v15[56];
    if (!v32)
    {
LABEL_14:
      v33 = v15[53];
      if (!v33)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    v15[57] = v32;
    operator delete(v32);
    v33 = v15[53];
    if (!v33)
    {
LABEL_15:
      v34 = v15[50];
      if (!v34)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    v15[54] = v33;
    operator delete(v33);
    v34 = v15[50];
    if (!v34)
    {
LABEL_16:
      v35 = *v20;
      if (!*v20)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    v15[51] = v34;
    operator delete(v34);
    v35 = *v20;
    if (!*v20)
    {
LABEL_17:
      sub_19D2B2DD8(v17);
      v36 = v15[23];
      if (!v36)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    v15[48] = v35;
    operator delete(v35);
    sub_19D2B2DD8(v17);
    v36 = v15[23];
    if (!v36)
    {
LABEL_18:
      v37 = v15[20];
      if (!v37)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_37:
    v15[24] = v36;
    operator delete(v36);
    v37 = v15[20];
    if (!v37)
    {
LABEL_19:
      v38 = v15[17];
      if (!v38)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    v15[21] = v37;
    operator delete(v37);
    v38 = v15[17];
    if (!v38)
    {
LABEL_20:
      v39 = v15[14];
      if (!v39)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

LABEL_39:
    v15[18] = v38;
    operator delete(v38);
    v39 = v15[14];
    if (!v39)
    {
LABEL_21:
      v40 = v15[11];
      if (!v40)
      {
        goto LABEL_22;
      }

      goto LABEL_41;
    }

LABEL_40:
    v15[15] = v39;
    operator delete(v39);
    v40 = v15[11];
    if (!v40)
    {
LABEL_22:
      v41 = *v19;
      if (!*v19)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

LABEL_41:
    v15[12] = v40;
    operator delete(v40);
    v41 = *v19;
    if (!*v19)
    {
LABEL_23:
      *v15 = v16;
      v42 = v15[1];
      if (!v42)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

LABEL_42:
    v15[9] = v41;
    operator delete(v41);
    *v15 = v16;
    v42 = v15[1];
    if (!v42)
    {
LABEL_24:
      _Unwind_Resume(a1);
    }

LABEL_43:
    v15[2] = v42;
    operator delete(v42);
    _Unwind_Resume(a1);
  }

LABEL_4:
  v15[250] = v23;
  operator delete(v23);
  goto LABEL_5;
}

void sub_19D317E80(uint64_t a1)
{
  v1 = 3;
  v2 = 6;
  if ((*(a1 + 42) & 1) == 0)
  {
    if (*(a1 + 2040))
    {
      v2 = 6;
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 2040))
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
    }
  }

  if (!*(a1 + 1988))
  {
    v3 = *(a1 + 2048);
    if (v3 && (v4 = *(v3 + 40), v4 >= 1))
    {
      v5 = (v3 + 8 * v2);
      if (v4 == 4)
      {
        v6 = 232;
      }

      else
      {
        if (v4 != 6)
        {
          sub_19D41C548(45);
        }

        *(a1 + 232) = v5[14];
        *(a1 + 240) = v5[15];
        v2 += 2;
        v6 = 248;
      }

      *(a1 + v6) = *(v3 + 8 * v2 + 112);
      *(a1 + 256) = v5[17];
      *(a1 + 264) = v5[18];
      *(a1 + 272) = v5[19];
      if ((*(a1 + 1985) & 1) == 0)
      {
        v7 = *(a1 + 2048);
        if (v7)
        {
          if (*(v7 + 244) != 1)
          {
            operator new[]();
          }

          v8 = (v7 + 8 * v1);
          *(a1 + 280) = v8[31];
          *(a1 + 288) = v8[32];
          *(a1 + 296) = v8[33];
        }
      }
    }

    else if ((*(a1 + 1985) & 1) == 0)
    {
      operator new[]();
    }

    *(a1 + 304) = a1 + 232;
    *(a1 + 312) = a1 + 240;
    *(a1 + 320) = a1 + 248;
    *(a1 + 328) = a1 + 256;
    *(a1 + 336) = a1 + 264;
    *(a1 + 344) = a1 + 272;
    *(a1 + 352) = a1 + 280;
    *(a1 + 360) = a1 + 288;
    *(a1 + 368) = a1 + 296;
  }

  operator new[]();
}

_BYTE *sub_19D318A68(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_21:
    sub_19D41C548(3);
  }

  v7 = *(a2 + 72);
  v8 = *a2;
  v9 = (*a2 + v7);
  v10 = *a2 + *(a2 + 8) - 4;
  if (v9 <= v10)
  {
    v11 = *v9;
    v7 += 4;
    *(a2 + 72) = v7;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
LABEL_4:
      v13 = *v12;
      v7 += 4;
      *(a2 + 72) = v7;
      if (a4 < 1)
      {
        goto LABEL_16;
      }

LABEL_8:
      v14 = v7;
      v15 = (v8 + v7);
      if (v15 <= v10)
      {
        v19 = *v15;
        v7 += 4;
        *(a2 + 72) = v7;
        v14 = v7;
        *(a1 + 520) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 524) = v16;
          v17 = (v8 + v7);
          if (v17 > v10)
          {
LABEL_14:
            v18 = 0;
            goto LABEL_15;
          }

LABEL_11:
          v18 = *v17;
          *(a2 + 72) = v7 + 4;
LABEL_15:
          *(a1 + 528) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 520) = 0;
      }

      *(a1 + 524) = 0;
      v17 = (v8 + v14);
      if (v17 > v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a4 >= 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (*(a1 + 52) != v11 || *(a1 + 48) != v13)
  {
    goto LABEL_21;
  }

  v21 = *(a1 + 312);
  v22 = *a3;
  v23 = *(a1 + 1985);
  v24 = sub_19D41C520();
  sub_19D3092B8(v21, a2, v22, v23, v24, *(a1 + 52), *(a1 + 48));
  v25 = *(a1 + 304);
  v26 = *a3;
  v27 = *(a1 + 1985);
  v28 = sub_19D41C520();
  sub_19D3092B8(v25, a2, v26, v27, v28, *(a1 + 52), *(a1 + 48));
  v29 = *(a1 + 320);
  v30 = *a3;
  v31 = *(a1 + 1985);
  v32 = sub_19D41C520();
  sub_19D3092B8(v29, a2, v30, v31, v32, *(a1 + 52), *(a1 + 48));
  v33 = *(a1 + 336);
  v34 = *a3;
  v35 = *(a1 + 1985);
  v36 = sub_19D41C520();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 52));
  v37 = *(a1 + 328);
  v38 = *a3;
  v39 = *(a1 + 1985);
  v40 = sub_19D41C520();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 52));
  v41 = *(a1 + 344);
  v42 = *a3;
  v43 = *(a1 + 1985);
  v44 = sub_19D41C520();
  v45 = *(a1 + 52);

  return sub_19D3092B8(v41, a2, v42, v43, v44, v45, v45);
}

uint64_t sub_19D318CFC(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 48);
  sub_19D41C9E8(__stream, a3, *(a1 + 52));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    __ptr = *(a1 + 520);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 524);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 528);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 312);
  v12 = sub_19D41C520();
  sub_19D3095DC(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 304);
  v14 = sub_19D41C520();
  sub_19D3095DC(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 320);
  v16 = sub_19D41C520();
  sub_19D3095DC(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 336);
  v18 = sub_19D41C520();
  sub_19D3095DC(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 328);
  v20 = sub_19D41C520();
  sub_19D3095DC(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 344);
  v22 = sub_19D41C520();
  return sub_19D3095DC(v21, __stream, a3, 3, v22, a5);
}

double sub_19D318EEC(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7980, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = *(a1 + 52);
    v9 = (*(a1 + 48) * v8);
    if (v9 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7980, 0);
  v8 = *(a1 + 52);
  v9 = (*(a1 + 48) * v8);
  if (v9 < 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v10 = *v7[39];
  v11 = *v5[39];
  v12 = **(a1 + 312);
  if (v9 < 4)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
  if ((v12 - v10) < 0x20 || (v12 - v11) < 0x20)
  {
    goto LABEL_9;
  }

  if (v9 >= 0x10)
  {
    v13 = v9 & 0x7FFFFFF0;
    v83 = v10 + 1;
    v84 = v11 + 1;
    v85 = v12 + 1;
    v86 = v13;
    do
    {
      v6 = vsubq_s16(v83[-1], v84[-1]);
      v87 = vsubq_s16(*v83, *v84);
      v85[-1] = v6;
      *v85 = v87;
      v83 += 2;
      v84 += 2;
      v85 += 2;
      v86 -= 16;
    }

    while (v86);
    if (v13 == v9)
    {
      goto LABEL_11;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_9:
      v14 = v9 - v13;
      v15 = v13;
      v16 = &v12->i16[v15];
      v17 = &v11->i16[v15];
      v18 = &v10->i16[v15];
      do
      {
        v20 = *v18++;
        v19 = v20;
        v21 = *v17++;
        *v16++ = v19 - v21;
        --v14;
      }

      while (v14);
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  v88 = v13;
  v13 = v9 & 0x7FFFFFFC;
  v89 = (v10 + 2 * v88);
  v90 = (v11 + 2 * v88);
  v91 = (v12->i64 + 2 * v88);
  v92 = v88 - v13;
  do
  {
    v93 = *v89++;
    v94 = v93;
    v95 = *v90++;
    *v6.i8 = vsub_s16(v94, v95);
    *v91++ = v6.i64[0];
    v92 += 4;
  }

  while (v92);
  if (v13 != v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v22 = *v7[40];
  v23 = *v5[40];
  v24 = **(a1 + 320);
  if (v9 < 4)
  {
    v25 = 0;
    goto LABEL_13;
  }

  v25 = 0;
  if ((v24 - v22) < 0x20 || (v24 - v23) < 0x20)
  {
    goto LABEL_13;
  }

  if (v9 >= 0x10)
  {
    v25 = v9 & 0x7FFFFFF0;
    v96 = v22 + 1;
    v97 = v23 + 1;
    v98 = v24 + 1;
    v99 = v25;
    do
    {
      v6 = vsubq_s16(v96[-1], v97[-1]);
      v100 = vsubq_s16(*v96, *v97);
      v98[-1] = v6;
      *v98 = v100;
      v96 += 2;
      v97 += 2;
      v98 += 2;
      v99 -= 16;
    }

    while (v99);
    if (v25 == v9)
    {
      goto LABEL_15;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_13:
      v26 = v9 - v25;
      v27 = v25;
      v28 = &v24->i16[v27];
      v29 = &v23->i16[v27];
      v30 = &v22->i16[v27];
      do
      {
        v32 = *v30++;
        v31 = v32;
        v33 = *v29++;
        *v28++ = v31 - v33;
        --v26;
      }

      while (v26);
      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0;
  }

  v101 = v25;
  v25 = v9 & 0x7FFFFFFC;
  v102 = (v22 + 2 * v101);
  v103 = (v23 + 2 * v101);
  v104 = (v24->i64 + 2 * v101);
  v105 = v101 - v25;
  do
  {
    v106 = *v102++;
    v107 = v106;
    v108 = *v103++;
    *v6.i8 = vsub_s16(v107, v108);
    *v104++ = v6.i64[0];
    v105 += 4;
  }

  while (v105);
  if (v25 != v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  v34 = *v7[38];
  v35 = *v5[38];
  v36 = **(a1 + 304);
  if (v9 < 4)
  {
    v37 = 0;
    goto LABEL_17;
  }

  v37 = 0;
  if ((v36 - v34) < 0x20 || (v36 - v35) < 0x20)
  {
    goto LABEL_17;
  }

  if (v9 >= 0x10)
  {
    v37 = v9 & 0x7FFFFFF0;
    v109 = v34 + 1;
    v110 = v35 + 1;
    v111 = v36 + 1;
    v112 = v37;
    do
    {
      v6 = vsubq_s16(v109[-1], v110[-1]);
      v113 = vsubq_s16(*v109, *v110);
      v111[-1] = v6;
      *v111 = v113;
      v109 += 2;
      v110 += 2;
      v111 += 2;
      v112 -= 16;
    }

    while (v112);
    if (v37 == v9)
    {
      goto LABEL_19;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_17:
      v38 = v9 - v37;
      v39 = v37;
      v40 = &v36->i16[v39];
      v41 = &v35->i16[v39];
      v42 = &v34->i16[v39];
      do
      {
        v44 = *v42++;
        v43 = v44;
        v45 = *v41++;
        *v40++ = v43 - v45;
        --v38;
      }

      while (v38);
      goto LABEL_19;
    }
  }

  else
  {
    v37 = 0;
  }

  v114 = v37;
  v37 = v9 & 0x7FFFFFFC;
  v115 = (v34 + 2 * v114);
  v116 = (v35 + 2 * v114);
  v117 = (v36->i64 + 2 * v114);
  v118 = v114 - v37;
  do
  {
    v119 = *v115++;
    v120 = v119;
    v121 = *v116++;
    *v6.i8 = vsub_s16(v120, v121);
    *v117++ = v6.i64[0];
    v118 += 4;
  }

  while (v118);
  if (v37 != v9)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (!v8)
  {
    return *v6.i64;
  }

  v46 = (v8 * v8);
  v47 = *v7[42];
  v48 = *v5[42];
  v49 = **(a1 + 336);
  if (v46 < 4)
  {
    v50 = 0;
    goto LABEL_22;
  }

  v50 = 0;
  if ((v49 - v47) < 0x20 || (v49 - v48) < 0x20)
  {
    goto LABEL_22;
  }

  if (v46 >= 0x10)
  {
    v50 = v46 & 0x7FFFFFF0;
    v122 = v47 + 1;
    v123 = v48 + 1;
    v124 = v49 + 1;
    v125 = v50;
    do
    {
      v6 = vsubq_s16(v122[-1], v123[-1]);
      v126 = vsubq_s16(*v122, *v123);
      v124[-1] = v6;
      *v124 = v126;
      v122 += 2;
      v123 += 2;
      v124 += 2;
      v125 -= 16;
    }

    while (v125);
    if (v50 == v46)
    {
      goto LABEL_24;
    }

    if ((v46 & 0xC) == 0)
    {
LABEL_22:
      v51 = v46 - v50;
      v52 = v50;
      v53 = &v49->i16[v52];
      v54 = &v48->i16[v52];
      v55 = &v47->i16[v52];
      do
      {
        v57 = *v55++;
        v56 = v57;
        v58 = *v54++;
        *v53++ = v56 - v58;
        --v51;
      }

      while (v51);
      goto LABEL_24;
    }
  }

  else
  {
    v50 = 0;
  }

  v127 = v50;
  v50 = v46 & 0x7FFFFFFC;
  v128 = (v47 + 2 * v127);
  v129 = (v48 + 2 * v127);
  v130 = (v49->i64 + 2 * v127);
  v131 = v127 - v50;
  do
  {
    v132 = *v128++;
    v133 = v132;
    v134 = *v129++;
    *v6.i8 = vsub_s16(v133, v134);
    *v130++ = v6.i64[0];
    v131 += 4;
  }

  while (v131);
  if (v50 != v46)
  {
    goto LABEL_22;
  }

LABEL_24:
  v59 = *v7[43];
  v60 = *v5[43];
  v61 = **(a1 + 344);
  if (v46 < 4)
  {
    v62 = 0;
    goto LABEL_26;
  }

  v62 = 0;
  if ((v61 - v59) < 0x20 || (v61 - v60) < 0x20)
  {
    goto LABEL_26;
  }

  if (v46 >= 0x10)
  {
    v62 = v46 & 0x7FFFFFF0;
    v135 = v59 + 1;
    v136 = v60 + 1;
    v137 = v61 + 1;
    v138 = v62;
    do
    {
      v6 = vsubq_s16(v135[-1], v136[-1]);
      v139 = vsubq_s16(*v135, *v136);
      v137[-1] = v6;
      *v137 = v139;
      v135 += 2;
      v136 += 2;
      v137 += 2;
      v138 -= 16;
    }

    while (v138);
    if (v62 == v46)
    {
      goto LABEL_28;
    }

    if ((v46 & 0xC) == 0)
    {
LABEL_26:
      v63 = v46 - v62;
      v64 = v62;
      v65 = &v61->i16[v64];
      v66 = &v60->i16[v64];
      v67 = &v59->i16[v64];
      do
      {
        v69 = *v67++;
        v68 = v69;
        v70 = *v66++;
        *v65++ = v68 - v70;
        --v63;
      }

      while (v63);
      goto LABEL_28;
    }
  }

  else
  {
    v62 = 0;
  }

  v140 = v62;
  v62 = v46 & 0x7FFFFFFC;
  v141 = (v59 + 2 * v140);
  v142 = (v60 + 2 * v140);
  v143 = (v61->i64 + 2 * v140);
  v144 = v140 - v62;
  do
  {
    v145 = *v141++;
    v146 = v145;
    v147 = *v142++;
    *v6.i8 = vsub_s16(v146, v147);
    *v143++ = v6.i64[0];
    v144 += 4;
  }

  while (v144);
  if (v62 != v46)
  {
    goto LABEL_26;
  }

LABEL_28:
  v71 = *v7[41];
  v72 = *v5[41];
  v73 = **(a1 + 328);
  if (v46 < 4)
  {
    v74 = 0;
    goto LABEL_30;
  }

  v74 = 0;
  if ((v73 - v71) < 0x20 || (v73 - v72) < 0x20)
  {
    goto LABEL_30;
  }

  if (v46 >= 0x10)
  {
    v74 = v46 & 0x7FFFFFF0;
    v148 = v71 + 1;
    v149 = v72 + 1;
    v150 = v73 + 1;
    v151 = v74;
    do
    {
      v6 = vsubq_s16(v148[-1], v149[-1]);
      v152 = vsubq_s16(*v148, *v149);
      v150[-1] = v6;
      *v150 = v152;
      v148 += 2;
      v149 += 2;
      v150 += 2;
      v151 -= 16;
    }

    while (v151);
    if (v74 == v46)
    {
      return *v6.i64;
    }

    if ((v46 & 0xC) == 0)
    {
LABEL_30:
      v75 = v46 - v74;
      v76 = v74;
      v77 = &v73->i16[v76];
      v78 = &v72->i16[v76];
      v79 = &v71->i16[v76];
      do
      {
        v81 = *v79++;
        v80 = v81;
        v82 = *v78++;
        *v77++ = v80 - v82;
        --v75;
      }

      while (v75);
      return *v6.i64;
    }
  }

  else
  {
    v74 = 0;
  }

  v153 = v74;
  v74 = v46 & 0x7FFFFFFC;
  v154 = (v71 + 2 * v153);
  v155 = (v72 + 2 * v153);
  v156 = (v73->i64 + 2 * v153);
  v157 = v153 - v74;
  do
  {
    v158 = *v154++;
    v159 = v158;
    v160 = *v155++;
    *v6.i8 = vsub_s16(v159, v160);
    *v156++ = v6.i64[0];
    v157 += 4;
  }

  while (v157);
  if (v74 != v46)
  {
    goto LABEL_30;
  }

  return *v6.i64;
}

double sub_19D3196AC(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7980, 0);
    v5 = *(a1 + 52);
    v6 = (*(a1 + 48) * v5);
    if (v6 < 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v3 = 0;
    v5 = *(a1 + 52);
    v6 = (*(a1 + 48) * v5);
    if (v6 < 1)
    {
      goto LABEL_38;
    }
  }

  v7 = **(a1 + 312);
  v8 = *v3[39];
  v9 = 2 * v6;
  if (v6 >= 4 && (v7 >= &v8->i8[v9] || v8 >= &v7->i8[v9]))
  {
    if (v6 >= 0x10)
    {
      v11 = v6 & 0x7FFFFFF0;
      v64 = v7 + 1;
      v65 = v8 + 1;
      v66 = v11;
      do
      {
        v4 = vaddq_s16(v65[-1], v64[-1]);
        v67 = vaddq_s16(*v65, *v64);
        v64[-1] = v4;
        *v64 = v67;
        v64 += 2;
        v65 += 2;
        v66 -= 16;
      }

      while (v66);
      if (v11 == v6)
      {
        goto LABEL_16;
      }

      if ((v6 & 0xC) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

    v68 = v11;
    v11 = v6 & 0x7FFFFFFC;
    v69 = (v7 + 2 * v68);
    v70 = (v8 + 2 * v68);
    v71 = v68 - v11;
    do
    {
      v72 = *v70++;
      *v4.i8 = vadd_s16(v72, *v69);
      *v69++ = *v4.i8;
      v71 += 4;
    }

    while (v71);
    if (v11 == v6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:
  v12 = v6 - v11;
  v13 = v11;
  v14 = &v8->i16[v13];
  v15 = &v7->i16[v13];
  do
  {
    v16 = *v14++;
    *v15++ += v16;
    --v12;
  }

  while (v12);
LABEL_16:
  v17 = **(a1 + 304);
  v18 = *v3[38];
  if (v6 >= 4 && (v17 >= &v18->i8[v9] || v18 >= &v17->i8[v9]))
  {
    if (v6 >= 0x10)
    {
      v20 = v6 & 0x7FFFFFF0;
      v73 = v17 + 1;
      v74 = v18 + 1;
      v75 = v20;
      do
      {
        v4 = vaddq_s16(v74[-1], v73[-1]);
        v76 = vaddq_s16(*v74, *v73);
        v73[-1] = v4;
        *v73 = v76;
        v73 += 2;
        v74 += 2;
        v75 -= 16;
      }

      while (v75);
      if (v20 == v6)
      {
        goto LABEL_27;
      }

      if ((v6 & 0xC) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

    v77 = v20;
    v20 = v6 & 0x7FFFFFFC;
    v78 = (v17 + 2 * v77);
    v79 = (v18 + 2 * v77);
    v80 = v77 - v20;
    do
    {
      v81 = *v79++;
      *v4.i8 = vadd_s16(v81, *v78);
      *v78++ = *v4.i8;
      v80 += 4;
    }

    while (v80);
    if (v20 == v6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v20 = 0;
LABEL_25:
  v21 = v6 - v20;
  v22 = v20;
  v23 = &v18->i16[v22];
  v24 = &v17->i16[v22];
  do
  {
    v25 = *v23++;
    *v24++ += v25;
    --v21;
  }

  while (v21);
LABEL_27:
  v26 = **(a1 + 320);
  v27 = *v3[40];
  if (v6 < 4 || (v26 < &v27->i8[v9] ? (v28 = v27 >= &v26->i8[v9]) : (v28 = 1), !v28))
  {
    v29 = 0;
    goto LABEL_36;
  }

  if (v6 >= 0x10)
  {
    v29 = v6 & 0x7FFFFFF0;
    v82 = v26 + 1;
    v83 = v27 + 1;
    v84 = v29;
    do
    {
      v4 = vaddq_s16(v83[-1], v82[-1]);
      v85 = vaddq_s16(*v83, *v82);
      v82[-1] = v4;
      *v82 = v85;
      v82 += 2;
      v83 += 2;
      v84 -= 16;
    }

    while (v84);
    if (v29 == v6)
    {
      goto LABEL_38;
    }

    if ((v6 & 0xC) == 0)
    {
LABEL_36:
      v30 = v6 - v29;
      v31 = v29;
      v32 = &v27->i16[v29];
      v33 = &v26->i16[v31];
      do
      {
        v34 = *v32++;
        *v33++ += v34;
        --v30;
      }

      while (v30);
      goto LABEL_38;
    }
  }

  else
  {
    v29 = 0;
  }

  v86 = v29;
  v29 = v6 & 0x7FFFFFFC;
  v87 = (v26 + 2 * v86);
  v88 = (v27 + 2 * v86);
  v89 = v86 - v29;
  do
  {
    v90 = *v88++;
    *v4.i8 = vadd_s16(v90, *v87);
    *v87++ = *v4.i8;
    v89 += 4;
  }

  while (v89);
  if (v29 != v6)
  {
    goto LABEL_36;
  }

LABEL_38:
  if (!v5)
  {
    return *v4.i64;
  }

  v35 = (v5 * v5);
  v36 = **(a1 + 336);
  v37 = *v3[42];
  v38 = 2 * v35;
  if (v35 >= 4 && (v36 >= &v37->i8[v38] || v37 >= &v36->i8[v38]))
  {
    if (v35 >= 0x10)
    {
      v40 = v35 & 0x7FFFFFF0;
      v91 = v36 + 1;
      v92 = v37 + 1;
      v93 = v40;
      do
      {
        v4 = vaddq_s16(v92[-1], v91[-1]);
        v94 = vaddq_s16(*v92, *v91);
        v91[-1] = v4;
        *v91 = v94;
        v91 += 2;
        v92 += 2;
        v93 -= 16;
      }

      while (v93);
      if (v40 == v35)
      {
        goto LABEL_50;
      }

      if ((v35 & 0xC) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v40 = 0;
    }

    v95 = v40;
    v40 = v35 & 0x7FFFFFFC;
    v96 = (v36 + 2 * v95);
    v97 = (v37 + 2 * v95);
    v98 = v95 - v40;
    do
    {
      v99 = *v97++;
      *v4.i8 = vadd_s16(v99, *v96);
      *v96++ = *v4.i8;
      v98 += 4;
    }

    while (v98);
    if (v40 == v35)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v40 = 0;
LABEL_48:
  v41 = v35 - v40;
  v42 = v40;
  v43 = &v37->i16[v42];
  v44 = &v36->i16[v42];
  do
  {
    v45 = *v43++;
    *v44++ += v45;
    --v41;
  }

  while (v41);
LABEL_50:
  v46 = **(a1 + 328);
  v47 = *v3[41];
  if (v35 >= 4 && (v46 >= &v47->i8[v38] || v47 >= &v46->i8[v38]))
  {
    if (v35 >= 0x10)
    {
      v49 = v35 & 0x7FFFFFF0;
      v100 = v46 + 1;
      v101 = v47 + 1;
      v102 = v49;
      do
      {
        v4 = vaddq_s16(v101[-1], v100[-1]);
        v103 = vaddq_s16(*v101, *v100);
        v100[-1] = v4;
        *v100 = v103;
        v100 += 2;
        v101 += 2;
        v102 -= 16;
      }

      while (v102);
      if (v49 == v35)
      {
        goto LABEL_61;
      }

      if ((v35 & 0xC) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v49 = 0;
    }

    v104 = v49;
    v49 = v35 & 0x7FFFFFFC;
    v105 = (v46 + 2 * v104);
    v106 = (v47 + 2 * v104);
    v107 = v104 - v49;
    do
    {
      v108 = *v106++;
      *v4.i8 = vadd_s16(v108, *v105);
      *v105++ = *v4.i8;
      v107 += 4;
    }

    while (v107);
    if (v49 == v35)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v49 = 0;
LABEL_59:
  v50 = v35 - v49;
  v51 = v49;
  v52 = &v47->i16[v51];
  v53 = &v46->i16[v51];
  do
  {
    v54 = *v52++;
    *v53++ += v54;
    --v50;
  }

  while (v50);
LABEL_61:
  v55 = **(a1 + 344);
  v56 = *v3[43];
  if (v35 < 4 || (v55 < &v56->i8[v38] ? (v57 = v56 >= &v55->i8[v38]) : (v57 = 1), !v57))
  {
    v58 = 0;
    goto LABEL_70;
  }

  if (v35 >= 0x10)
  {
    v58 = v35 & 0x7FFFFFF0;
    v109 = v55 + 1;
    v110 = v56 + 1;
    v111 = v58;
    do
    {
      v4 = vaddq_s16(v110[-1], v109[-1]);
      v112 = vaddq_s16(*v110, *v109);
      v109[-1] = v4;
      *v109 = v112;
      v109 += 2;
      v110 += 2;
      v111 -= 16;
    }

    while (v111);
    if (v58 == v35)
    {
      return *v4.i64;
    }

    if ((v35 & 0xC) == 0)
    {
LABEL_70:
      v59 = v35 - v58;
      v60 = v58;
      v61 = &v56->i16[v58];
      v62 = &v55->i16[v60];
      do
      {
        v63 = *v61++;
        *v62++ += v63;
        --v59;
      }

      while (v59);
      return *v4.i64;
    }
  }

  else
  {
    v58 = 0;
  }

  v113 = v58;
  v58 = v35 & 0x7FFFFFFC;
  v114 = (v55 + 2 * v113);
  v115 = (v56 + 2 * v113);
  v116 = v113 - v58;
  do
  {
    v117 = *v115++;
    *v4.i8 = vadd_s16(v117, *v114);
    *v114++ = *v4.i8;
    v116 += 4;
  }

  while (v116);
  if (v58 != v35)
  {
    goto LABEL_70;
  }

  return *v4.i64;
}

uint64_t sub_19D319D28(uint64_t result, double a2, double a3, int32x4_t a4)
{
  *&a3 = -*&a2;
  v4 = *(result + 52);
  v5 = (*(result + 48) * v4);
  if (v5 < 1)
  {
    goto LABEL_83;
  }

  v6 = **(result + 312);
  if (v5 >= 8)
  {
    v7 = v5 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v8 = vdupq_lane_s32(*&a2, 0);
    v9 = (v6 + 8);
    v10 = v7;
    while (1)
    {
      v11 = *(v9 - 4);
      v12 = vcvtq_f32_s32(vmovl_s16(*v11.i8));
      v13 = vcvtq_f32_s32(vmovl_high_s16(v11));
      v14 = vuzp1q_s16(vcgtq_f32(a4, v12), vcgtq_f32(a4, v13));
      v15 = vuzp1q_s16(vcgeq_f32(v12, a4), vcgeq_f32(v13, a4));
      v16 = vuzp1q_s16(vcgtq_f32(v12, v8), vcgtq_f32(v13, v8));
      v17 = vmovn_s16(vandq_s8(v15, v16));
      v18 = vmovn_s16(vorrq_s8(v14, v16));
      v19 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v17, *&a2)), 0x1FuLL)), v8, a4);
      if (v18.i8[0])
      {
        *(v9 - 4) = *v19.i32;
        if ((v18.i8[1] & 1) == 0)
        {
LABEL_8:
          if ((v18.i8[2] & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      else if ((v18.i8[1] & 1) == 0)
      {
        goto LABEL_8;
      }

      *(v9 - 3) = *&v19.i32[1];
      if ((v18.i8[2] & 1) == 0)
      {
LABEL_9:
        if ((v18.i8[3] & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v9 - 1) = *&v19.i32[3];
        goto LABEL_11;
      }

LABEL_18:
      *(v9 - 2) = *&v19.i32[2];
      if (v18.i8[3])
      {
        goto LABEL_10;
      }

LABEL_11:
      v20 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v17, *&a2)), 0x1FuLL)), v8, a4);
      if (v18.i8[4])
      {
        *v9 = *v20.i32;
        if ((v18.i8[5] & 1) == 0)
        {
LABEL_13:
          if ((v18.i8[6] & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }

      else if ((v18.i8[5] & 1) == 0)
      {
        goto LABEL_13;
      }

      v9[1] = *&v20.i32[1];
      if ((v18.i8[6] & 1) == 0)
      {
LABEL_14:
        if (v18.i8[7])
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

LABEL_22:
      v9[2] = *&v20.i32[2];
      if (v18.i8[7])
      {
LABEL_23:
        v9[3] = *&v20.i32[3];
      }

LABEL_5:
      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        if (v7 == v5)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }
  }

  v7 = 0;
LABEL_27:
  v23 = v5 - v7;
  v24 = (v6 + 2 * v7);
  do
  {
    a4.i16[0] = *v24;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v25 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v25 > *&a2))
    {
      *v24 = *a4.i32;
    }

    ++v24;
    --v23;
  }

  while (v23);
LABEL_25:
  v21 = **(result + 304);
  if (v5 >= 8)
  {
    v22 = v5 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v27 = vdupq_lane_s32(*&a2, 0);
    v28 = (v21 + 8);
    v29 = v22;
    while (1)
    {
      v30 = *(v28 - 4);
      v31 = vcvtq_f32_s32(vmovl_s16(*v30.i8));
      v32 = vcvtq_f32_s32(vmovl_high_s16(v30));
      v33 = vuzp1q_s16(vcgtq_f32(a4, v31), vcgtq_f32(a4, v32));
      v34 = vuzp1q_s16(vcgeq_f32(v31, a4), vcgeq_f32(v32, a4));
      v35 = vuzp1q_s16(vcgtq_f32(v31, v27), vcgtq_f32(v32, v27));
      v36 = vmovn_s16(vandq_s8(v34, v35));
      v37 = vmovn_s16(vorrq_s8(v33, v35));
      v38 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v36, *&a2)), 0x1FuLL)), v27, a4);
      if (v37.i8[0])
      {
        *(v28 - 4) = *v38.i32;
        if ((v37.i8[1] & 1) == 0)
        {
LABEL_37:
          if ((v37.i8[2] & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_47;
        }
      }

      else if ((v37.i8[1] & 1) == 0)
      {
        goto LABEL_37;
      }

      *(v28 - 3) = *&v38.i32[1];
      if ((v37.i8[2] & 1) == 0)
      {
LABEL_38:
        if ((v37.i8[3] & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_39:
        *(v28 - 1) = *&v38.i32[3];
        goto LABEL_40;
      }

LABEL_47:
      *(v28 - 2) = *&v38.i32[2];
      if (v37.i8[3])
      {
        goto LABEL_39;
      }

LABEL_40:
      v39 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v36, *&a2)), 0x1FuLL)), v27, a4);
      if (v37.i8[4])
      {
        *v28 = *v39.i32;
        if ((v37.i8[5] & 1) == 0)
        {
LABEL_42:
          if ((v37.i8[6] & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_51;
        }
      }

      else if ((v37.i8[5] & 1) == 0)
      {
        goto LABEL_42;
      }

      v28[1] = *&v39.i32[1];
      if ((v37.i8[6] & 1) == 0)
      {
LABEL_43:
        if (v37.i8[7])
        {
          goto LABEL_52;
        }

        goto LABEL_34;
      }

LABEL_51:
      v28[2] = *&v39.i32[2];
      if (v37.i8[7])
      {
LABEL_52:
        v28[3] = *&v39.i32[3];
      }

LABEL_34:
      v28 += 8;
      v29 -= 8;
      if (!v29)
      {
        if (v22 == v5)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }
  }

  v22 = 0;
LABEL_56:
  v42 = v5 - v22;
  v43 = (v21 + 2 * v22);
  do
  {
    a4.i16[0] = *v43;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v44 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v44 > *&a2))
    {
      *v43 = *a4.i32;
    }

    ++v43;
    --v42;
  }

  while (v42);
LABEL_54:
  v40 = **(result + 320);
  if (v5 < 8)
  {
    v41 = 0;
    goto LABEL_86;
  }

  v41 = v5 & 0x7FFFFFF8;
  a4 = vdupq_lane_s32(*&a3, 0);
  v45 = vdupq_lane_s32(*&a2, 0);
  v46 = (v40 + 8);
  v47 = v41;
  do
  {
    v48 = *(v46 - 4);
    v49 = vcvtq_f32_s32(vmovl_s16(*v48.i8));
    v50 = vcvtq_f32_s32(vmovl_high_s16(v48));
    v51 = vuzp1q_s16(vcgtq_f32(a4, v49), vcgtq_f32(a4, v50));
    v52 = vuzp1q_s16(vcgeq_f32(v49, a4), vcgeq_f32(v50, a4));
    v53 = vuzp1q_s16(vcgtq_f32(v49, v45), vcgtq_f32(v50, v45));
    v54 = vmovn_s16(vandq_s8(v52, v53));
    v55 = vmovn_s16(vorrq_s8(v51, v53));
    v56 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v54, *&a2)), 0x1FuLL)), v45, a4);
    if (v55.i8[0])
    {
      *(v46 - 4) = *v56.i32;
      if ((v55.i8[1] & 1) == 0)
      {
LABEL_66:
        if ((v55.i8[2] & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_76;
      }
    }

    else if ((v55.i8[1] & 1) == 0)
    {
      goto LABEL_66;
    }

    *(v46 - 3) = *&v56.i32[1];
    if ((v55.i8[2] & 1) == 0)
    {
LABEL_67:
      if ((v55.i8[3] & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_68:
      *(v46 - 1) = *&v56.i32[3];
      goto LABEL_69;
    }

LABEL_76:
    *(v46 - 2) = *&v56.i32[2];
    if (v55.i8[3])
    {
      goto LABEL_68;
    }

LABEL_69:
    v57 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v54, *&a2)), 0x1FuLL)), v45, a4);
    if (v55.i8[4])
    {
      *v46 = *v57.i32;
      if ((v55.i8[5] & 1) == 0)
      {
LABEL_71:
        if (v55.i8[6])
        {
          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else if ((v55.i8[5] & 1) == 0)
    {
      goto LABEL_71;
    }

    v46[1] = *&v57.i32[1];
    if (v55.i8[6])
    {
LABEL_80:
      v46[2] = *&v57.i32[2];
      if ((v55.i8[7] & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_81;
    }

LABEL_72:
    if ((v55.i8[7] & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_81:
    v46[3] = *&v57.i32[3];
LABEL_63:
    v46 += 8;
    v47 -= 8;
  }

  while (v47);
  if (v41 == v5)
  {
    goto LABEL_83;
  }

LABEL_86:
  v61 = v5 - v41;
  v62 = (v40 + 2 * v41);
  do
  {
    a4.i16[0] = *v62;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v63 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v63 > *&a2))
    {
      *v62 = *a4.i32;
    }

    ++v62;
    --v61;
  }

  while (v61);
LABEL_83:
  if (!v4)
  {
    return result;
  }

  v58 = (v4 * v4);
  v59 = **(result + 336);
  if (v58 >= 8)
  {
    v60 = v58 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v64 = vdupq_lane_s32(*&a2, 0);
    v65 = (v59 + 8);
    v66 = v60;
    while (1)
    {
      v67 = *(v65 - 4);
      v68 = vcvtq_f32_s32(vmovl_s16(*v67.i8));
      v69 = vcvtq_f32_s32(vmovl_high_s16(v67));
      v70 = vuzp1q_s16(vcgtq_f32(a4, v68), vcgtq_f32(a4, v69));
      v71 = vuzp1q_s16(vcgeq_f32(v68, a4), vcgeq_f32(v69, a4));
      v72 = vuzp1q_s16(vcgtq_f32(v68, v64), vcgtq_f32(v69, v64));
      v73 = vmovn_s16(vandq_s8(v71, v72));
      v74 = vmovn_s16(vorrq_s8(v70, v72));
      v75 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v73, *&a2)), 0x1FuLL)), v64, a4);
      if (v74.i8[0])
      {
        *(v65 - 4) = *v75.i32;
        if ((v74.i8[1] & 1) == 0)
        {
LABEL_96:
          if ((v74.i8[2] & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_106;
        }
      }

      else if ((v74.i8[1] & 1) == 0)
      {
        goto LABEL_96;
      }

      *(v65 - 3) = *&v75.i32[1];
      if ((v74.i8[2] & 1) == 0)
      {
LABEL_97:
        if ((v74.i8[3] & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_98:
        *(v65 - 1) = *&v75.i32[3];
        goto LABEL_99;
      }

LABEL_106:
      *(v65 - 2) = *&v75.i32[2];
      if (v74.i8[3])
      {
        goto LABEL_98;
      }

LABEL_99:
      v76 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v73, *&a2)), 0x1FuLL)), v64, a4);
      if (v74.i8[4])
      {
        *v65 = *v76.i32;
        if ((v74.i8[5] & 1) == 0)
        {
LABEL_101:
          if ((v74.i8[6] & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_110;
        }
      }

      else if ((v74.i8[5] & 1) == 0)
      {
        goto LABEL_101;
      }

      v65[1] = *&v76.i32[1];
      if ((v74.i8[6] & 1) == 0)
      {
LABEL_102:
        if (v74.i8[7])
        {
          goto LABEL_111;
        }

        goto LABEL_93;
      }

LABEL_110:
      v65[2] = *&v76.i32[2];
      if (v74.i8[7])
      {
LABEL_111:
        v65[3] = *&v76.i32[3];
      }

LABEL_93:
      v65 += 8;
      v66 -= 8;
      if (!v66)
      {
        if (v60 == v58)
        {
          goto LABEL_113;
        }

        goto LABEL_115;
      }
    }
  }

  v60 = 0;
LABEL_115:
  v79 = v58 - v60;
  v80 = (v59 + 2 * v60);
  do
  {
    a4.i16[0] = *v80;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v81 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v81 > *&a2))
    {
      *v80 = *a4.i32;
    }

    ++v80;
    --v79;
  }

  while (v79);
LABEL_113:
  v77 = **(result + 328);
  if (v58 >= 8)
  {
    v78 = v58 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v82 = vdupq_lane_s32(*&a2, 0);
    v83 = (v77 + 8);
    v84 = v78;
    while (1)
    {
      v85 = *(v83 - 4);
      v86 = vcvtq_f32_s32(vmovl_s16(*v85.i8));
      v87 = vcvtq_f32_s32(vmovl_high_s16(v85));
      v88 = vuzp1q_s16(vcgtq_f32(a4, v86), vcgtq_f32(a4, v87));
      v89 = vuzp1q_s16(vcgeq_f32(v86, a4), vcgeq_f32(v87, a4));
      v90 = vuzp1q_s16(vcgtq_f32(v86, v82), vcgtq_f32(v87, v82));
      v91 = vmovn_s16(vandq_s8(v89, v90));
      v92 = vmovn_s16(vorrq_s8(v88, v90));
      v93 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v91, *&a2)), 0x1FuLL)), v82, a4);
      if (v92.i8[0])
      {
        *(v83 - 4) = *v93.i32;
        if ((v92.i8[1] & 1) == 0)
        {
LABEL_125:
          if ((v92.i8[2] & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_135;
        }
      }

      else if ((v92.i8[1] & 1) == 0)
      {
        goto LABEL_125;
      }

      *(v83 - 3) = *&v93.i32[1];
      if ((v92.i8[2] & 1) == 0)
      {
LABEL_126:
        if ((v92.i8[3] & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_127:
        *(v83 - 1) = *&v93.i32[3];
        goto LABEL_128;
      }

LABEL_135:
      *(v83 - 2) = *&v93.i32[2];
      if (v92.i8[3])
      {
        goto LABEL_127;
      }

LABEL_128:
      v94 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v91, *&a2)), 0x1FuLL)), v82, a4);
      if (v92.i8[4])
      {
        *v83 = *v94.i32;
        if ((v92.i8[5] & 1) == 0)
        {
LABEL_130:
          if ((v92.i8[6] & 1) == 0)
          {
            goto LABEL_131;
          }

          goto LABEL_139;
        }
      }

      else if ((v92.i8[5] & 1) == 0)
      {
        goto LABEL_130;
      }

      v83[1] = *&v94.i32[1];
      if ((v92.i8[6] & 1) == 0)
      {
LABEL_131:
        if (v92.i8[7])
        {
          goto LABEL_140;
        }

        goto LABEL_122;
      }

LABEL_139:
      v83[2] = *&v94.i32[2];
      if (v92.i8[7])
      {
LABEL_140:
        v83[3] = *&v94.i32[3];
      }

LABEL_122:
      v83 += 8;
      v84 -= 8;
      if (!v84)
      {
        if (v78 == v58)
        {
          goto LABEL_142;
        }

        goto LABEL_144;
      }
    }
  }

  v78 = 0;
LABEL_144:
  v97 = v58 - v78;
  v98 = (v77 + 2 * v78);
  do
  {
    a4.i16[0] = *v98;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v99 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v99 > *&a2))
    {
      *v98 = *a4.i32;
    }

    ++v98;
    --v97;
  }

  while (v97);
LABEL_142:
  v95 = **(result + 344);
  if (v58 >= 8)
  {
    v96 = v58 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v100 = vdupq_lane_s32(*&a2, 0);
    v101 = (v95 + 8);
    v102 = v96;
    while (1)
    {
      v103 = *(v101 - 4);
      v104 = vcvtq_f32_s32(vmovl_s16(*v103.i8));
      v105 = vcvtq_f32_s32(vmovl_high_s16(v103));
      v106 = vuzp1q_s16(vcgtq_f32(a4, v104), vcgtq_f32(a4, v105));
      v107 = vuzp1q_s16(vcgeq_f32(v104, a4), vcgeq_f32(v105, a4));
      v108 = vuzp1q_s16(vcgtq_f32(v104, v100), vcgtq_f32(v105, v100));
      v109 = vmovn_s16(vandq_s8(v107, v108));
      v110 = vmovn_s16(vorrq_s8(v106, v108));
      v111 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v109, *&a2)), 0x1FuLL)), v100, a4);
      if (v110.i8[0])
      {
        *(v101 - 4) = *v111.i32;
        if ((v110.i8[1] & 1) == 0)
        {
LABEL_154:
          if ((v110.i8[2] & 1) == 0)
          {
            goto LABEL_155;
          }

          goto LABEL_164;
        }
      }

      else if ((v110.i8[1] & 1) == 0)
      {
        goto LABEL_154;
      }

      *(v101 - 3) = *&v111.i32[1];
      if ((v110.i8[2] & 1) == 0)
      {
LABEL_155:
        if ((v110.i8[3] & 1) == 0)
        {
          goto LABEL_157;
        }

LABEL_156:
        *(v101 - 1) = *&v111.i32[3];
        goto LABEL_157;
      }

LABEL_164:
      *(v101 - 2) = *&v111.i32[2];
      if (v110.i8[3])
      {
        goto LABEL_156;
      }

LABEL_157:
      v112 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v109, *&a2)), 0x1FuLL)), v100, a4);
      if (v110.i8[4])
      {
        *v101 = *v112.i32;
        if ((v110.i8[5] & 1) == 0)
        {
LABEL_159:
          if ((v110.i8[6] & 1) == 0)
          {
            goto LABEL_160;
          }

          goto LABEL_168;
        }
      }

      else if ((v110.i8[5] & 1) == 0)
      {
        goto LABEL_159;
      }

      v101[1] = *&v112.i32[1];
      if ((v110.i8[6] & 1) == 0)
      {
LABEL_160:
        if (v110.i8[7])
        {
          goto LABEL_169;
        }

        goto LABEL_151;
      }

LABEL_168:
      v101[2] = *&v112.i32[2];
      if (v110.i8[7])
      {
LABEL_169:
        v101[3] = *&v112.i32[3];
      }

LABEL_151:
      v101 += 8;
      v102 -= 8;
      if (!v102)
      {
        if (v96 == v58)
        {
          return result;
        }

        goto LABEL_172;
      }
    }
  }

  v96 = 0;
LABEL_172:
  v113 = v58 - v96;
  v114 = (v95 + 2 * v96);
  do
  {
    a4.i16[0] = *v114;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v115 = a4.i32[0];
    v26 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v26 || (a4.i32[0] = LODWORD(a2), v115 > *&a2))
    {
      *v114 = *a4.i32;
    }

    ++v114;
    --v113;
  }

  while (v113);
  return result;
}