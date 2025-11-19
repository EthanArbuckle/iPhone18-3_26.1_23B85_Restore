uint64_t sub_19D31A828(uint64_t result, float a2, __n128 a3)
{
  v3 = *(result + 52);
  v4 = (*(result + 48) * v3);
  if (v4 < 1)
  {
    goto LABEL_41;
  }

  v5 = **(result + 312);
  if (v4 < 4)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v4 >= 0x10)
  {
    v6 = v4 & 0x7FFFFFF0;
    v7 = v5 + 2;
    v8 = v6;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v7[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v7[-2].i8)), a2)));
      v9 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v7)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v7->i8)), a2)));
      *v7[-2].i8 = a3;
      *v7->i8 = v9;
      v7 += 4;
      v8 -= 16;
    }

    while (v8);
    if (v6 == v4)
    {
      goto LABEL_15;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_13:
      v13 = v4 - v6;
      v14 = v5 + v6;
      do
      {
        a3.n128_u16[0] = *v14;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v14++ = a3.n128_f32[0];
        --v13;
      }

      while (v13);
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v6 = v4 & 0x7FFFFFFC;
  v11 = (v5 + 2 * v10);
  v12 = v10 - v6;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v11)), a2)));
    *v11++ = a3.n128_u64[0];
    v12 += 4;
  }

  while (v12);
  if (v6 != v4)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v4 >= 4)
  {
    if (v4 >= 0x10)
    {
      v15 = v4 & 0x7FFFFFF0;
      v16 = v5 + 2;
      v17 = v15;
      do
      {
        a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v16[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v16[-2].i8)), a2)));
        v18 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v16)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v16->i8)), a2)));
        *v16[-2].i8 = a3;
        *v16->i8 = v18;
        v16 += 4;
        v17 -= 16;
      }

      while (v17);
      if (v15 == v4)
      {
        goto LABEL_28;
      }

      if ((v4 & 0xC) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = v15;
    v15 = v4 & 0x7FFFFFFC;
    v20 = (v5 + 2 * v19);
    v21 = v19 - v15;
    do
    {
      a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v20)), a2)));
      *v20++ = a3.n128_u64[0];
      v21 += 4;
    }

    while (v21);
    if (v15 == v4)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v15 = 0;
LABEL_26:
  v22 = v4 - v15;
  v23 = v5 + v15;
  do
  {
    a3.n128_u16[0] = *v23;
    a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
    a3.n128_f32[0] = a3.n128_i32[0] * a2;
    *v23++ = a3.n128_f32[0];
    --v22;
  }

  while (v22);
LABEL_28:
  v24 = **(result + 320);
  if (v4 < 4)
  {
    v25 = 0;
    goto LABEL_39;
  }

  if (v4 >= 0x10)
  {
    v25 = v4 & 0x7FFFFFF0;
    v26 = v24 + 2;
    v27 = v25;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v26[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v26[-2].i8)), a2)));
      v28 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v26)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v26->i8)), a2)));
      *v26[-2].i8 = a3;
      *v26->i8 = v28;
      v26 += 4;
      v27 -= 16;
    }

    while (v27);
    if (v25 == v4)
    {
      goto LABEL_41;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_39:
      v32 = v4 - v25;
      v33 = v24 + v25;
      do
      {
        a3.n128_u16[0] = *v33;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v33++ = a3.n128_f32[0];
        --v32;
      }

      while (v32);
      goto LABEL_41;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = v25;
  v25 = v4 & 0x7FFFFFFC;
  v30 = (v24 + 2 * v29);
  v31 = v29 - v25;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v30)), a2)));
    *v30++ = a3.n128_u64[0];
    v31 += 4;
  }

  while (v31);
  if (v25 != v4)
  {
    goto LABEL_39;
  }

LABEL_41:
  if (!v3)
  {
    return result;
  }

  v34 = (v3 * v3);
  v35 = **(result + 336);
  if (v34 < 4)
  {
    v36 = 0;
    goto LABEL_53;
  }

  if (v34 >= 0x10)
  {
    v36 = v34 & 0x7FFFFFF0;
    v37 = v35 + 2;
    v38 = v36;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v37[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v37[-2].i8)), a2)));
      v39 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v37)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v37->i8)), a2)));
      *v37[-2].i8 = a3;
      *v37->i8 = v39;
      v37 += 4;
      v38 -= 16;
    }

    while (v38);
    if (v36 == v34)
    {
      goto LABEL_55;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_53:
      v43 = v34 - v36;
      v44 = v35 + v36;
      do
      {
        a3.n128_u16[0] = *v44;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v44++ = a3.n128_f32[0];
        --v43;
      }

      while (v43);
      goto LABEL_55;
    }
  }

  else
  {
    v36 = 0;
  }

  v40 = v36;
  v36 = v34 & 0x7FFFFFFC;
  v41 = (v35 + 2 * v40);
  v42 = v40 - v36;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v41)), a2)));
    *v41++ = a3.n128_u64[0];
    v42 += 4;
  }

  while (v42);
  if (v36 != v34)
  {
    goto LABEL_53;
  }

LABEL_55:
  v45 = **(result + 328);
  if (v34 < 4)
  {
    v46 = 0;
    goto LABEL_66;
  }

  if (v34 >= 0x10)
  {
    v46 = v34 & 0x7FFFFFF0;
    v47 = v45 + 2;
    v48 = v46;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v47[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v47[-2].i8)), a2)));
      v49 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v47)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v47->i8)), a2)));
      *v47[-2].i8 = a3;
      *v47->i8 = v49;
      v47 += 4;
      v48 -= 16;
    }

    while (v48);
    if (v46 == v34)
    {
      goto LABEL_68;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_66:
      v53 = v34 - v46;
      v54 = v45 + v46;
      do
      {
        a3.n128_u16[0] = *v54;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v54++ = a3.n128_f32[0];
        --v53;
      }

      while (v53);
      goto LABEL_68;
    }
  }

  else
  {
    v46 = 0;
  }

  v50 = v46;
  v46 = v34 & 0x7FFFFFFC;
  v51 = (v45 + 2 * v50);
  v52 = v50 - v46;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v51)), a2)));
    *v51++ = a3.n128_u64[0];
    v52 += 4;
  }

  while (v52);
  if (v46 != v34)
  {
    goto LABEL_66;
  }

LABEL_68:
  v55 = **(result + 344);
  if (v34 < 4)
  {
    v56 = 0;
    goto LABEL_79;
  }

  if (v34 >= 0x10)
  {
    v56 = v34 & 0x7FFFFFF0;
    v57 = v55 + 2;
    v58 = v56;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v57[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v57[-2].i8)), a2)));
      v59 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v57->i8)), a2)));
      *v57[-2].i8 = a3;
      *v57->i8 = v59;
      v57 += 4;
      v58 -= 16;
    }

    while (v58);
    if (v56 == v34)
    {
      return result;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_79:
      v63 = v34 - v56;
      v64 = v55 + v56;
      do
      {
        a3.n128_u16[0] = *v64;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v64++ = a3.n128_f32[0];
        --v63;
      }

      while (v63);
      return result;
    }
  }

  else
  {
    v56 = 0;
  }

  v60 = v56;
  v56 = v34 & 0x7FFFFFFC;
  v61 = (v55 + 2 * v60);
  v62 = v60 - v56;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v61)), a2)));
    *v61++ = a3.n128_u64[0];
    v62 += 4;
  }

  while (v62);
  if (v56 != v34)
  {
    goto LABEL_79;
  }

  return result;
}

void *sub_19D31AFB0(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v8 = *(a1 + 52);
  v9 = *a2;
  *(v9 + 16 * *a4) = v8;
  memmove(**(v9 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v8);
  v10 = *a4;
  *a4 = v10 + 1;
  v11 = *(a1 + 52);
  v12 = *a2;
  *(*a2 + 16 * v10 + 16) = v11;
  result = memmove(**(v12 + 16 * *a4 + 8), *(*(a1 + 88) + 8 * a3), 4 * v11);
  ++*a4;
  return result;
}

void *sub_19D31B060(uint64_t a1, void *a2, int a3, int *a4)
{
  v8 = *(a1 + 112);
  v9 = *a4;
  *a4 = v9 + 1;
  memmove(*(v8 + 8 * a3), **(*a2 + 16 * v9 + 8), 4 * *(a1 + 52));
  v10 = *(a1 + 88);
  v11 = *a4;
  *a4 = v11 + 1;
  v12 = 4 * *(a1 + 52);
  v13 = *(v10 + 8 * a3);
  v14 = **(*a2 + 16 * v11 + 8);

  return memmove(v13, v14, v12);
}

void sub_19D31B100(uint64_t a1, void *a2, int *a3)
{
  v5 = (*a2 + 16 * *a3);
  bzero(**(v5 + 1), 4 * *v5);
  v6 = *a3;
  *a3 = v6 + 1;
  bzero(**(*a2 + 16 * v6 + 24), 4 * *(*a2 + 16 * v6 + 16));
  ++*a3;
}

void sub_19D31B178(void *a1)
{
  v2 = a1[140];
  BYTE7(v14[2]) = 17;
  strcpy(v14, "GRU before resetGRU before reset ");
  (*(*v2 + 40))(v2, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v3 = a1[141];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v3 + 40))(v3, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v4 = a1[142];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v4 + 40))(v4, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v5 = a1[143];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v5 + 40))(v5, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v6 = a1[144];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v6 + 40))(v6, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v7 = a1[145];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v7 + 40))(v7, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  (*(*a1[140] + 16))(a1[140]);
  (*(*a1[141] + 16))(a1[141]);
  (*(*a1[142] + 16))(a1[142]);
  (*(*a1[143] + 16))(a1[143]);
  (*(*a1[144] + 16))(a1[144]);
  (*(*a1[145] + 16))(a1[145]);
  v8 = a1[140];
  BYTE7(v14[2]) = 16;
  strcpy(v14, "GRU AFTER reset GRU AFTER reset ");
  (*(*v8 + 40))(v8, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v9 = a1[141];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v9 + 40))(v9, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v10 = a1[142];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v10 + 40))(v10, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v11 = a1[143];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v11 + 40))(v11, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v12 = a1[144];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v12 + 40))(v12, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v13 = a1[145];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v13 + 40))(v13, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }
}

void sub_19D31B688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31B6D0(uint64_t a1, uint64_t a2)
{
  v7 = **(a1 + 304);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 312);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 320);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v4 = *(a1 + 52);
  v7 = **(a1 + 328);
  v8.i32[0] = v4;
  v8.i32[1] = v4;
  sub_19D309FB0(a2, &v7);
  v5 = *(a1 + 52);
  v7 = **(a1 + 336);
  v8.i32[0] = v5;
  v8.i32[1] = v5;
  sub_19D309FB0(a2, &v7);
  v6 = *(a1 + 52);
  v7 = **(a1 + 344);
  v8.i32[0] = v6;
  v8.i32[1] = v6;
  sub_19D309FB0(a2, &v7);
}

void sub_19D31B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31B890(void *a1)
{
  v2 = a1[250];
  v3 = a1[249];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[250];
        v3 = a1[249];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[253];
  v7 = a1[252];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[253];
        v7 = a1[252];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[249];
  }

  a1[250] = v3;
  a1[253] = v7;
  v10 = a1[102];
  v11 = a1[101];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[102];
        v11 = a1[101];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[102] = v11;
  v14 = a1[99];
  if (v14)
  {
    operator delete(v14);
    a1[99] = 0;
  }

  v15 = a1[98];
  if (v15)
  {
    operator delete(v15);
    a1[98] = 0;
  }

  v16 = a1[132];
  v17 = a1[131];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[132];
        v17 = a1[131];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[132] = v17;
  v20 = a1[129];
  if (v20)
  {
    operator delete(v20);
    a1[129] = 0;
  }

  v21 = a1[128];
  if (v21)
  {
    operator delete(v21);
    a1[128] = 0;
  }

  v22 = a1[117];
  v23 = a1[116];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[117];
        v23 = a1[116];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[117] = v23;
  v26 = a1[114];
  if (v26)
  {
    operator delete(v26);
    a1[114] = 0;
  }

  v27 = a1[113];
  if (v27)
  {
    operator delete(v27);
    a1[113] = 0;
  }
}

uint64_t sub_19D31BA7C(uint64_t result, float a2, __n128 a3)
{
  v3 = a2;
  v4 = *(result + 52);
  if (*(result + 56) < 1)
  {
    v11 = (*(result + 48) * v4);
    if (v11 < 1)
    {
      goto LABEL_38;
    }

    v12 = *(result + 240);
    v13 = *(result + 1072);
    v14 = v3;
    if (v11 >= 8)
    {
      v15 = v11 & 0x7FFFFFF8;
      v23 = v15;
      v24 = *(result + 1072);
      v25 = *(result + 240);
      do
      {
        v26 = *v24;
        v27 = v24[1];
        v24 += 2;
        a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v25)), v26, v14)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v25->i8)), v27, v14)));
        *v25->i8 = a3;
        v25 += 2;
        v23 -= 8;
      }

      while (v23);
      if (v15 == v11)
      {
LABEL_24:
        v32 = *(result + 248);
        v33 = *(result + 1088);
        if (v11 >= 8)
        {
          v34 = v11 & 0x7FFFFFF8;
          v35 = v34;
          v36 = *(result + 1088);
          v37 = *(result + 248);
          do
          {
            v38 = *v36;
            v39 = v36[1];
            v36 += 2;
            a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v37)), v38, v14)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v37->i8)), v39, v14)));
            *v37->i8 = a3;
            v37 += 2;
            v35 -= 8;
          }

          while (v35);
          if (v34 == v11)
          {
LABEL_31:
            v44 = *(result + 232);
            v45 = *(result + 1080);
            if (v11 >= 8)
            {
              v46 = v11 & 0x7FFFFFF8;
              v47 = v46;
              v48 = *(result + 1080);
              v49 = *(result + 232);
              do
              {
                v50 = *v48;
                v51 = v48[1];
                v48 += 2;
                a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v49)), v50, v14)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v49->i8)), v51, v14)));
                *v49->i8 = a3;
                v49 += 2;
                v47 -= 8;
              }

              while (v47);
              if (v46 == v11)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v46 = 0;
            }

            v52 = v11 - v46;
            v53 = (v45 + 4 * v46);
            v54 = (v44 + 2 * v46);
            do
            {
              a3.n128_u16[0] = *v54;
              a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
              v55 = *v53++;
              a3.n128_f32[0] = a3.n128_i32[0] + (v55 * v14);
              *v54++ = a3.n128_f32[0];
              --v52;
            }

            while (v52);
            goto LABEL_38;
          }
        }

        else
        {
          v34 = 0;
        }

        v40 = v11 - v34;
        v41 = (v33 + 4 * v34);
        v42 = (v32 + 2 * v34);
        do
        {
          a3.n128_u16[0] = *v42;
          a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
          v43 = *v41++;
          a3.n128_f32[0] = a3.n128_i32[0] + (v43 * v14);
          *v42++ = a3.n128_f32[0];
          --v40;
        }

        while (v40);
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
    }

    v28 = v11 - v15;
    v29 = (v13 + 4 * v15);
    v30 = (v12 + 2 * v15);
    do
    {
      a3.n128_u16[0] = *v30;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v31 = *v29++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v31 * v14);
      *v30++ = a3.n128_f32[0];
      --v28;
    }

    while (v28);
    goto LABEL_24;
  }

  v5 = v3;
  v6 = *(result + 728);
  if (v6 >= 1)
  {
    if (v4 < 1)
    {
LABEL_72:
      v103 = *(result + 760);
      v105 = *v103;
      v104 = v103[1];
      if (v104 == v105)
      {
        sub_19D41C548(67);
      }

      if (((v104 - v105) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_94;
    }

    v94 = 0;
    v95 = *(result + 736);
    while (1)
    {
      v96 = *(v95 + 8 * v94);
      if (v4 >= 8)
      {
        v98 = v96 + 1;
        v99 = v4 & 0x7FFFFFF8;
        do
        {
          v100 = vmulq_n_f32(*v98, v5);
          v98[-1] = vmulq_n_f32(v98[-1], v5);
          *v98 = v100;
          v98 += 2;
          v99 -= 8;
        }

        while (v99);
        v97 = v4 & 0x7FFFFFF8;
        if (v97 == v4)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v97 = 0;
      }

      v101 = v4 - v97;
      v102 = &v96->f32[v97];
      do
      {
        *v102 = *v102 * v5;
        ++v102;
        --v101;
      }

      while (v101);
LABEL_63:
      if (++v94 == v6)
      {
        goto LABEL_72;
      }
    }
  }

  v7 = *(result + 968);
  if (v7 >= 1)
  {
    if (v4 < 1)
    {
LABEL_85:
      v115 = *(result + 1000);
      v117 = *v115;
      v116 = v115[1];
      if (v116 == v117)
      {
        sub_19D41C548(67);
      }

      if (((v116 - v117) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_94;
    }

    v106 = 0;
    v107 = *(result + 976);
    while (1)
    {
      v108 = *(v107 + 8 * v106);
      if (v4 >= 8)
      {
        v110 = v108 + 1;
        v111 = v4 & 0x7FFFFFF8;
        do
        {
          v112 = vmulq_n_f32(*v110, v5);
          v110[-1] = vmulq_n_f32(v110[-1], v5);
          *v110 = v112;
          v110 += 2;
          v111 -= 8;
        }

        while (v111);
        v109 = v4 & 0x7FFFFFF8;
        if (v109 == v4)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v109 = 0;
      }

      v113 = v4 - v109;
      v114 = &v108->f32[v109];
      do
      {
        *v114 = *v114 * v5;
        ++v114;
        --v113;
      }

      while (v113);
LABEL_76:
      if (++v106 == v7)
      {
        goto LABEL_85;
      }
    }
  }

  v8 = *(result + 848);
  if (v8 >= 1)
  {
    if (v4 >= 1)
    {
      v9 = 0;
      v10 = *(result + 856);
      do
      {
        v16 = *(v10 + 8 * v9);
        if (v4 >= 8)
        {
          v18 = v16 + 1;
          v19 = v4 & 0x7FFFFFF8;
          do
          {
            v20 = vmulq_n_f32(*v18, v5);
            v18[-1] = vmulq_n_f32(v18[-1], v5);
            *v18 = v20;
            v18 += 2;
            v19 -= 8;
          }

          while (v19);
          v17 = v4 & 0x7FFFFFF8;
          if (v17 == v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = 0;
        }

        v21 = v4 - v17;
        v22 = &v16->f32[v17];
        do
        {
          *v22 = *v22 * v5;
          ++v22;
          --v21;
        }

        while (v21);
LABEL_10:
        ++v9;
      }

      while (v9 != v8);
    }

    v118 = *(result + 880);
    v120 = *v118;
    v119 = v118[1];
    if (v119 == v120)
    {
      sub_19D41C548(67);
    }

    if (((v119 - v120) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_94:
    sub_19D2AE2B4();
  }

LABEL_38:
  if (!v4)
  {
    return result;
  }

  v56 = (v4 * v4);
  v57 = *(result + 264);
  v58 = *(result + 1096);
  v59 = v3;
  if (v56 < 8)
  {
    v60 = 0;
LABEL_44:
    v66 = v56 - v60;
    v67 = (v58 + 4 * v60);
    v68 = (v57 + 2 * v60);
    do
    {
      a3.n128_u16[0] = *v68;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v69 = *v67++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v69 * v59);
      *v68++ = a3.n128_f32[0];
      --v66;
    }

    while (v66);
    goto LABEL_46;
  }

  v60 = v56 & 0x7FFFFFF8;
  v61 = v60;
  v62 = *(result + 1096);
  v63 = *(result + 264);
  do
  {
    v64 = *v62;
    v65 = v62[1];
    v62 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v63)), v64, v59)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v63->i8)), v65, v59)));
    *v63->i8 = a3;
    v63 += 2;
    v61 -= 8;
  }

  while (v61);
  if (v60 != v56)
  {
    goto LABEL_44;
  }

LABEL_46:
  v70 = *(result + 272);
  v71 = *(result + 1112);
  if (v56 < 8)
  {
    v72 = 0;
LABEL_51:
    v78 = v56 - v72;
    v79 = (v71 + 4 * v72);
    v80 = (v70 + 2 * v72);
    do
    {
      a3.n128_u16[0] = *v80;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v81 = *v79++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v81 * v59);
      *v80++ = a3.n128_f32[0];
      --v78;
    }

    while (v78);
    goto LABEL_53;
  }

  v72 = v56 & 0x7FFFFFF8;
  v73 = v72;
  v74 = *(result + 1112);
  v75 = *(result + 272);
  do
  {
    v76 = *v74;
    v77 = v74[1];
    v74 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v75)), v76, v59)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v75->i8)), v77, v59)));
    *v75->i8 = a3;
    v75 += 2;
    v73 -= 8;
  }

  while (v73);
  if (v72 != v56)
  {
    goto LABEL_51;
  }

LABEL_53:
  v82 = *(result + 256);
  v83 = *(result + 1104);
  if (v56 < 8)
  {
    v84 = 0;
LABEL_58:
    v90 = v56 - v84;
    v91 = (v83 + 4 * v84);
    v92 = (v82 + 2 * v84);
    do
    {
      a3.n128_u16[0] = *v92;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v93 = *v91++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v93 * v59);
      *v92++ = a3.n128_f32[0];
      --v90;
    }

    while (v90);
    return result;
  }

  v84 = v56 & 0x7FFFFFF8;
  v85 = v84;
  v86 = *(result + 1104);
  v87 = *(result + 256);
  do
  {
    v88 = *v86;
    v89 = v86[1];
    v86 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v87)), v88, v59)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v87->i8)), v89, v59)));
    *v87->i8 = a3;
    v87 += 2;
    v85 -= 8;
  }

  while (v85);
  if (v84 != v56)
  {
    goto LABEL_58;
  }

  return result;
}

void sub_19D31C114(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31C134(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v266 = a5 - 1;
  if (a5 >= 1)
  {
    v265 = (a1 + 1168);
    v263 = (a1 + 1184);
    v6 = (a1 + 1176);
    v7 = a5 - 1;
    while (1)
    {
      if (*(a1 + 2040))
      {
        v9 = v266 - v7;
      }

      else
      {
        v9 = v7;
      }

      if (*(a1 + 2040))
      {
        v10 = v9 < v266;
      }

      else
      {
        v10 = v9 > 0;
      }

      if (*(a1 + 2040))
      {
        v11 = v9 > 0;
      }

      else
      {
        v11 = v9 < v266;
      }

      if (*(a1 + 2040))
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v9 - 1;
      }

      v264 = v12;
      memmove(*(*(a1 + 584) + 8 * v9), *(*a4 + 8 * v9), 4 * *(a1 + 52));
      v13 = 8 * v9;
      if (v11)
      {
        bzero(*(a1 + 704), 4 * *(a1 + 52));
        sub_19D30A978();
      }

      sub_19D30A0F8(v265, (*(a1 + 424) + v13), *(a1 + 52), *(a1 + 528));
      sub_19D30A0F8(v263, (*(a1 + 400) + v13), *(a1 + 52), *(a1 + 524));
      sub_19D30A0F8((a1 + 1176), (*(a1 + 376) + v13), *(a1 + 52), *(a1 + 520));
      bzero(*(*(a1 + 608) + 8 * v9), 4 * *(a1 + 52));
      v14 = *(a1 + 608);
      v15 = *(a1 + 52);
      v16 = v15;
      if (v15 <= 0)
      {
        v35 = -8 * (-v15 >> 3);
        if (v35 >= v16)
        {
          goto LABEL_40;
        }

LABEL_29:
        v36 = *(v14 + 8 * v9);
        v37 = *v265;
        v38 = v35;
        v39 = v16 - v35;
        if (v39 <= 7)
        {
          goto LABEL_38;
        }

        v40 = v36 + 4 * v35;
        v41 = &v37[v35 / 4u];
        if (v40 < v37->u64 + 4 * v16 && v41 < v36 + 4 * v16)
        {
          goto LABEL_38;
        }

        v43 = v39 - (v16 & 7) + v35;
        v44 = v35 + (v16 & 7) - v16;
        v45 = (v40 + 16);
        v46 = (v41 + 16);
        do
        {
          v47 = vmulq_f32(*v46, *v45);
          v45[-1] = vmulq_f32(v46[-1], v45[-1]);
          *v45 = v47;
          v45 += 2;
          v46 += 2;
          v44 += 8;
        }

        while (v44);
        v38 = v43;
        if ((v16 & 7) != 0)
        {
LABEL_38:
          v48 = v16 - v38;
          v49 = &v37->f32[v38];
          v50 = (v36 + 4 * v38);
          do
          {
            v51 = *v49++;
            *v50 = v51 * *v50;
            ++v50;
            --v48;
          }

          while (v48);
        }

        goto LABEL_40;
      }

      v17 = *(*(a1 + 584) + 8 * v9);
      v18 = *(*(a1 + 448) + 8 * v9);
      v19 = *(v14 + 8 * v9);
      if (v15 < 8)
      {
        break;
      }

      v20 = 0;
      v80 = (v19 + 4 * v15);
      v82 = v19 < &v18->f32[v15] && v18 < v80;
      if (v17 < v80 && v19 < &v17->f32[v15])
      {
        goto LABEL_21;
      }

      if (v82)
      {
        goto LABEL_21;
      }

      v20 = v15 & 0x7FFFFFF8;
      v84 = v17 + 1;
      v85 = v18 + 1;
      v86 = v19 + 1;
      v87 = v20;
      do
      {
        v88 = vaddq_f32(vmlsq_f32(*v84, *v84, *v85), *v86);
        v86[-1] = vaddq_f32(vmlsq_f32(v84[-1], v84[-1], v85[-1]), v86[-1]);
        *v86 = v88;
        v84 += 2;
        v85 += 2;
        v86 += 2;
        v87 -= 8;
      }

      while (v87);
      if (v20 != v15)
      {
        goto LABEL_21;
      }

LABEL_23:
      v29 = v15 >> 3;
      if (v15 >= 8)
      {
        v30 = *v265;
        v31 = v15 >> 3;
        do
        {
          v32 = *v30;
          v33 = v30[1];
          v30 += 2;
          v34 = vmulq_f32(v33, v19[1]);
          *v19 = vmulq_f32(v32, *v19);
          v19[1] = v34;
          v19 += 2;
          --v31;
        }

        while (v31);
      }

      v35 = 8 * v29;
      if ((8 * v29) < v16)
      {
        goto LABEL_29;
      }

LABEL_40:
      v52 = *(a1 + 632);
      if (!v10)
      {
        memmove(*(v52 + 8 * v9), *(*(a1 + 496) + 8 * v9), 4 * *(a1 + 52));
        v75 = *(a1 + 632);
        v76 = *(a1 + 52);
        v77 = v76;
        if (v76 <= 0)
        {
          v131 = (*(a1 + 584) + 8 * v9);
          v132 = -(-v76 >> 3);
        }

        else
        {
          v78 = *(v75 + 8 * v9);
          if (v76 < 8)
          {
            v79 = 0;
            goto LABEL_108;
          }

          v79 = v76 & 0x7FFFFFF8;
          v138 = v78 + 1;
          v139 = v79;
          do
          {
            v140 = vnegq_f32(*v138);
            v138[-1] = vnegq_f32(v138[-1]);
            *v138 = v140;
            v138 += 2;
            v139 -= 8;
          }

          while (v139);
          if (v79 != v76)
          {
LABEL_108:
            v141 = v76 - v79;
            v142 = &v78->f32[v79];
            do
            {
              *v142 = -*v142;
              ++v142;
              --v141;
            }

            while (v141);
          }

          v131 = (*(a1 + 584) + 8 * v9);
          v132 = v76 >> 3;
          if (v76 >= 8)
          {
            v143 = *v131;
            v144 = v76 >> 3;
            do
            {
              v145 = *v143;
              v146 = v143[1];
              v143 += 2;
              v147 = vmulq_f32(v78[1], v146);
              *v78 = vmulq_f32(*v78, v145);
              v78[1] = v147;
              v78 += 2;
              --v144;
            }

            while (v144);
          }
        }

        v148 = 8 * v132;
        if ((8 * v132) < v77)
        {
          v149 = *v131;
          v150 = *(v75 + 8 * v9);
          v151 = v148;
          v152 = v77 - v148;
          if (v152 <= 7)
          {
            goto LABEL_123;
          }

          v153 = v150 + 4 * v148;
          v154 = &v149[v148 / 4u];
          if (v153 < v149->u64 + 4 * v77 && v154 < v150 + 4 * v77)
          {
            goto LABEL_123;
          }

          v156 = v152 - (v77 & 7) + v148;
          v157 = v148 + (v77 & 7) - v77;
          v158 = (v154 + 16);
          v159 = (v153 + 16);
          do
          {
            v160 = vmulq_f32(*v159, *v158);
            v159[-1] = vmulq_f32(v159[-1], v158[-1]);
            *v159 = v160;
            v158 += 2;
            v159 += 2;
            v157 += 8;
          }

          while (v157);
          v151 = v156;
          if ((v77 & 7) != 0)
          {
LABEL_123:
            v161 = v77 - v151;
            v162 = (v150 + 4 * v151);
            v163 = &v149->f32[v151];
            do
            {
              v164 = *v163++;
              *v162 = *v162 * v164;
              ++v162;
              --v161;
            }

            while (v161);
          }
        }

        v165 = *(a1 + 632);
        v166 = *(a1 + 52);
        v167 = v166 / 8;
        if (v166 >= 8)
        {
          v168 = *(v165 + 8 * v9);
          v169 = *v6;
          v170 = v166 / 8;
          do
          {
            v171 = *v169;
            v172 = v169[1];
            v169 += 2;
            v173 = vmulq_f32(v172, v168[1]);
            *v168 = vmulq_f32(v171, *v168);
            v168[1] = v173;
            v168 += 2;
            --v170;
          }

          while (v170);
        }

        v174 = 8 * v167;
        if (8 * v167 < v166)
        {
          v175 = *(v165 + 8 * v9);
          v176 = *v6;
          v177 = v174;
          v178 = v166 - v174;
          if (v178 <= 7)
          {
            goto LABEL_138;
          }

          v179 = v175 + 4 * v174;
          v180 = &v176[v174 / 4u];
          if (v179 < v176->u64 + 4 * v166 && v180 < v175 + 4 * v166)
          {
            goto LABEL_138;
          }

          v182 = v178 - (v166 & 7) + v174;
          v183 = v174 + (v166 & 7) - v166;
          v184 = (v179 + 16);
          v185 = (v180 + 16);
          do
          {
            v186 = vmulq_f32(*v185, *v184);
            v184[-1] = vmulq_f32(v185[-1], v184[-1]);
            *v184 = v186;
            v184 += 2;
            v185 += 2;
            v183 += 8;
          }

          while (v183);
          v177 = v182;
          if ((v166 & 7) != 0)
          {
LABEL_138:
            v187 = v166 - v177;
            v188 = &v176->f32[v177];
            v189 = (v175 + 4 * v177);
            do
            {
              v190 = *v188++;
              *v189 = v190 * *v189;
              ++v189;
              --v187;
            }

            while (v187);
          }
        }

        goto LABEL_140;
      }

      v53 = *(a1 + 52);
      v54 = v53;
      if (v53 > 0)
      {
        v55 = *(*(a1 + 112) + 8 * v264);
        v56 = *(*(a1 + 496) + 8 * v9);
        v57 = *(v52 + 8 * v9);
        if (v53 < 8)
        {
          v58 = 0;
          goto LABEL_44;
        }

        v58 = 0;
        if ((v57 - v55) < 0x20)
        {
          goto LABEL_44;
        }

        if ((v57 - v56) < 0x20)
        {
          goto LABEL_44;
        }

        v58 = v53 & 0x7FFFFFF8;
        v133 = v55 + 1;
        v134 = v56 + 1;
        v135 = v57 + 1;
        v136 = v58;
        do
        {
          v137 = vsubq_f32(*v133, *v134);
          v135[-1] = vsubq_f32(v133[-1], v134[-1]);
          *v135 = v137;
          v133 += 2;
          v134 += 2;
          v135 += 2;
          v136 -= 8;
        }

        while (v136);
        if (v58 != v53)
        {
LABEL_44:
          v59 = v53 - v58;
          v60 = v58;
          v61 = &v57->f32[v58];
          v62 = &v56->f32[v60];
          v63 = &v55->f32[v60];
          do
          {
            v64 = *v63++;
            v65 = v64;
            v66 = *v62++;
            *v61++ = v65 - v66;
            --v59;
          }

          while (v59);
        }

        v67 = (*(a1 + 584) + 8 * v9);
        v68 = v53 >> 3;
        if (v53 >= 8)
        {
          v69 = *v67;
          v70 = v53 >> 3;
          do
          {
            v71 = *v69;
            v72 = v69[1];
            v69 += 2;
            v73 = vmulq_f32(v57[1], v72);
            *v57 = vmulq_f32(*v57, v71);
            v57[1] = v73;
            v57 += 2;
            --v70;
          }

          while (v70);
        }

        v74 = 8 * v68;
        if ((8 * v68) >= v54)
        {
          goto LABEL_82;
        }

LABEL_71:
        v89 = *v67;
        v90 = *(v52 + 8 * v9);
        v91 = v74;
        v92 = v54 - v74;
        if (v92 <= 7)
        {
          goto LABEL_80;
        }

        v93 = v90 + 4 * v74;
        v94 = &v89[v74 / 4u];
        if (v93 < v89->u64 + 4 * v54 && v94 < v90 + 4 * v54)
        {
          goto LABEL_80;
        }

        v96 = v92 - (v54 & 7) + v74;
        v97 = v74 + (v54 & 7) - v54;
        v98 = (v94 + 16);
        v99 = (v93 + 16);
        do
        {
          v100 = vmulq_f32(*v99, *v98);
          v99[-1] = vmulq_f32(v99[-1], v98[-1]);
          *v99 = v100;
          v98 += 2;
          v99 += 2;
          v97 += 8;
        }

        while (v97);
        v91 = v96;
        if ((v54 & 7) != 0)
        {
LABEL_80:
          v101 = v54 - v91;
          v102 = (v90 + 4 * v91);
          v103 = &v89->f32[v91];
          do
          {
            v104 = *v103++;
            *v102 = *v102 * v104;
            ++v102;
            --v101;
          }

          while (v101);
        }

        goto LABEL_82;
      }

      v67 = (*(a1 + 584) + 8 * v9);
      v74 = -8 * (-v53 >> 3);
      if (v74 < v54)
      {
        goto LABEL_71;
      }

LABEL_82:
      v105 = *(a1 + 632);
      v106 = *(a1 + 52);
      v107 = v106 / 8;
      if (v106 >= 8)
      {
        v108 = *(v105 + 8 * v9);
        v109 = *v6;
        v110 = v106 / 8;
        do
        {
          v111 = *v109;
          v112 = v109[1];
          v109 += 2;
          v113 = vmulq_f32(v112, v108[1]);
          *v108 = vmulq_f32(v111, *v108);
          v108[1] = v113;
          v108 += 2;
          --v110;
        }

        while (v110);
      }

      v114 = 8 * v107;
      if (8 * v107 < v106)
      {
        v115 = *(v105 + 8 * v9);
        v116 = *v6;
        v117 = v114;
        v118 = v106 - v114;
        if (v118 <= 7)
        {
          goto LABEL_95;
        }

        v119 = v115 + 4 * v114;
        v120 = &v116[v114 / 4u];
        if (v119 < v116->u64 + 4 * v106 && v120 < v115 + 4 * v106)
        {
          goto LABEL_95;
        }

        v122 = v118 - (v106 & 7) + v114;
        v123 = v114 + (v106 & 7) - v106;
        v124 = (v119 + 16);
        v125 = (v120 + 16);
        do
        {
          v126 = vmulq_f32(*v125, *v124);
          v124[-1] = vmulq_f32(v125[-1], v124[-1]);
          *v124 = v126;
          v124 += 2;
          v125 += 2;
          v123 += 8;
        }

        while (v123);
        v117 = v122;
        if ((v106 & 7) != 0)
        {
LABEL_95:
          v127 = v106 - v117;
          v128 = &v116->f32[v117];
          v129 = (v115 + 4 * v117);
          do
          {
            v130 = *v128++;
            *v129 = v130 * *v129;
            ++v129;
            --v127;
          }

          while (v127);
        }
      }

LABEL_140:
      if (v10)
      {
        sub_19D30A978();
      }

      bzero(*(*(a1 + 656) + 8 * v9), 4 * *(a1 + 52));
      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 560) + 8 * v9), 4 * *(a1 + 48));
        sub_19D30A978();
      }

      if (v7-- <= 0)
      {
        goto LABEL_144;
      }
    }

    v20 = 0;
LABEL_21:
    v21 = v15 - v20;
    v22 = v20;
    v23 = &v19->f32[v20];
    v24 = &v18->f32[v22];
    v25 = &v17->f32[v22];
    do
    {
      v26 = *v25++;
      v27 = v26;
      v28 = *v24++;
      *v23 = (v27 - (v28 * v27)) + *v23;
      ++v23;
      --v21;
    }

    while (v21);
    goto LABEL_23;
  }

LABEL_144:
  if (*(a1 + 56) > 0)
  {
    *(a1 + 728) = 0;
    *(a1 + 968) = 0;
    *(a1 + 848) = 0;
  }

  if (a5 > 1)
  {
    v191 = 1;
    v192 = a5 - 2;
    do
    {
      if (*(a1 + 2040))
      {
        v193 = v192;
      }

      else
      {
        v193 = v191;
      }

      if (*(a1 + 2040))
      {
        v194 = 1;
      }

      else
      {
        v194 = -1;
      }

      v195 = v193 + v194;
      if (*(a1 + 2040))
      {
        v196 = a5 - 2;
      }

      else
      {
        v196 = 1;
      }

      v197 = v193 == v196;
      v198 = 8 * v193;
      v199 = 8 * v195;
      sub_19D30A868(*(a1 + 64) + v198, *(a1 + 632) + v198, *(a1 + 112) + v199, (a1 + 1104), *(a1 + 52), *(a1 + 52), v197);
      sub_19D30A868(*(a1 + 64) + v198, *(a1 + 656) + v198, *(a1 + 112) + v199, (a1 + 1096), *(a1 + 52), *(a1 + 52), v197);
      sub_19D30A868(*(a1 + 64) + v198, *(a1 + 608) + v198, *(a1 + 112) + v199, (a1 + 1112), *(a1 + 52), *(a1 + 52), v197);
      ++v191;
      --v192;
    }

    while (v192 != -1);
  }

  if (a5 >= 1)
  {
    v200 = 0;
    while (1)
    {
      v204 = *(a1 + 2040) ? v266 - v200 : v200;
      v205 = *(a1 + 2040) ? v266 : 0;
      if (a3[1] == *a3)
      {
        break;
      }

      v201 = *(a1 + 656);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_161;
      }

      v206 = (*(a1 + 208) + 24 * v204);
      v208 = *v206;
      v207 = v206[1];
      if (v207 != v208)
      {
        if (((v207 - v208) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_220;
      }

      v209 = *(a1 + 52);
      if (v209 >= 1)
      {
        v210 = 0;
        v211 = *(v201 + 8 * v204);
        v212 = *(*(a1 + 736) + 8 * *(a1 + 728));
        if (v209 < 8)
        {
          goto LABEL_180;
        }

        if ((v212 - v211) < 0x20)
        {
          goto LABEL_180;
        }

        v210 = v209 & 0x7FFFFFF8;
        v213 = (v211 + 16);
        v214 = (v212 + 16);
        v215 = v210;
        do
        {
          v216 = *v213;
          *(v214 - 1) = *(v213 - 1);
          *v214 = v216;
          v213 += 2;
          v214 += 2;
          v215 -= 8;
        }

        while (v215);
        if (v210 != v209)
        {
LABEL_180:
          v217 = v209 - v210;
          v218 = 4 * v210;
          v219 = (v212 + 4 * v210);
          v220 = (v211 + v218);
          do
          {
            v221 = *v220++;
            *v219++ = v221;
            --v217;
          }

          while (v217);
        }
      }

      if (*(a1 + 724) < 1)
      {
        ++*(a1 + 728);
      }

      else
      {
        v222 = 0;
        v223 = *(a1 + 760);
        do
        {
          *(*(v223 + 24 * *(a1 + 728)) + 4 * v222) = *(4 * v222);
          ++v222;
        }

        while (v222 < *(a1 + 724));
        ++*(a1 + 728);
        operator delete(0);
      }

      v224 = (*(a1 + 208) + 24 * v204);
      v226 = *v224;
      v225 = v224[1];
      if (v225 != v226)
      {
        if (((v225 - v226) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_220;
      }

      v227 = *(a1 + 52);
      if (v227 >= 1)
      {
        v228 = 0;
        v229 = *(*(a1 + 632) + 8 * v204);
        v230 = *(*(a1 + 856) + 8 * *(a1 + 848));
        if (v227 < 8)
        {
          goto LABEL_196;
        }

        if ((v230 - v229) < 0x20)
        {
          goto LABEL_196;
        }

        v228 = v227 & 0x7FFFFFF8;
        v231 = (v229 + 16);
        v232 = (v230 + 16);
        v233 = v228;
        do
        {
          v234 = *v231;
          *(v232 - 1) = *(v231 - 1);
          *v232 = v234;
          v231 += 2;
          v232 += 2;
          v233 -= 8;
        }

        while (v233);
        if (v228 != v227)
        {
LABEL_196:
          v235 = v227 - v228;
          v236 = 4 * v228;
          v237 = (v230 + 4 * v228);
          v238 = (v229 + v236);
          do
          {
            v239 = *v238++;
            *v237++ = v239;
            --v235;
          }

          while (v235);
        }
      }

      if (*(a1 + 844) < 1)
      {
        ++*(a1 + 848);
      }

      else
      {
        v240 = 0;
        v241 = *(a1 + 880);
        do
        {
          *(*(v241 + 24 * *(a1 + 848)) + 4 * v240) = *(4 * v240);
          ++v240;
        }

        while (v240 < *(a1 + 844));
        ++*(a1 + 848);
        operator delete(0);
      }

      v242 = (*(a1 + 208) + 24 * v204);
      v244 = *v242;
      v243 = v242[1];
      if (v243 != v244)
      {
        if (((v243 - v244) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_220:
        sub_19D2AE2B4();
      }

      v245 = *(a1 + 52);
      if (v245 >= 1)
      {
        v246 = 0;
        v247 = *(*(a1 + 608) + 8 * v204);
        v248 = *(*(a1 + 976) + 8 * *(a1 + 968));
        if (v245 < 8)
        {
          goto LABEL_212;
        }

        if ((v248 - v247) < 0x20)
        {
          goto LABEL_212;
        }

        v246 = v245 & 0x7FFFFFF8;
        v249 = (v247 + 16);
        v250 = (v248 + 16);
        v251 = v246;
        do
        {
          v252 = *v249;
          *(v250 - 1) = *(v249 - 1);
          *v250 = v252;
          v249 += 2;
          v250 += 2;
          v251 -= 8;
        }

        while (v251);
        if (v246 != v245)
        {
LABEL_212:
          v253 = v245 - v246;
          v254 = 4 * v246;
          v255 = (v248 + 4 * v246);
          v256 = (v247 + v254);
          do
          {
            v257 = *v256++;
            *v255++ = v257;
            --v253;
          }

          while (v253);
        }
      }

      if (*(a1 + 964) < 1)
      {
        ++*(a1 + 968);
      }

      else
      {
        v258 = 0;
        v259 = *(a1 + 1000);
        do
        {
          *(*(v259 + 24 * *(a1 + 968)) + 4 * v258) = *(4 * v258);
          ++v258;
        }

        while (v258 < *(a1 + 964));
        ++*(a1 + 968);
        operator delete(0);
      }

LABEL_162:
      if (++v200 == a5)
      {
        return;
      }
    }

    v201 = *(a1 + 656);
LABEL_161:
    v202 = v204 == v205;
    v203 = 8 * v204;
    sub_19D30A868(*(a1 + 64) + v203, v201 + v203, *(a1 + 64) + v203, (a1 + 1072), *(a1 + 52), *(a1 + 48), v202);
    sub_19D30A868(*(a1 + 64) + v203, *(a1 + 632) + v203, *(a1 + 64) + v203, (a1 + 1080), *(a1 + 52), *(a1 + 48), v202);
    sub_19D30A868(*(a1 + 64) + v203, *(a1 + 608) + v203, *(a1 + 64) + v203, (a1 + 1088), *(a1 + 52), *(a1 + 48), v202);
    goto LABEL_162;
  }
}

uint64_t sub_19D31D45C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2040] = 1;
  if ((atomic_load_explicit(&qword_1EB013928, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D454368();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013910);
  a1[2040] = 0;
  return result;
}

uint64_t sub_19D31D504(_BYTE *a1)
{
  a1[2040] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2040] = 0;
  return result;
}

char *sub_19D31D55C(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 1988) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7980, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 304) = result + 232;
  *(a1 + 312) = result + 240;
  *(a1 + 320) = result + 248;
  *(a1 + 328) = result + 256;
  *(a1 + 336) = result + 264;
  *(a1 + 344) = result + 272;
  *(a1 + 352) = result + 280;
  *(a1 + 360) = result + 288;
  *(a1 + 368) = result + 296;
  return result;
}

void sub_19D31D618(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 1988))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7980, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D41C548(34);
  }

  sub_19D41C548(1);
}

void sub_19D31D6B8(void *a1)
{
  v1 = sub_19D31F888(a1);

  operator delete(v1);
}

uint64_t sub_19D31D6E0(uint64_t result, void *a2, void *a3, int a4, uint64_t a5)
{
  v7 = result;
  if (a3[1] != *a3 && *(result + 56) >= 1)
  {
    result = (**result)(result);
    v8 = result;
    v9 = a4 & 0xFFFFFF;
    v10 = *(v7 + 2048);
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = *(v10 + 468);
    if (v11 > 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v9 = a4 & 0xFFFFFF;
  v10 = *(result + 2048);
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = 50.0;
LABEL_8:
  v12 = a5 != 0;
  if (v9 > v12)
  {
    v13 = -v11;
    if (*(v7 + 2040))
    {
      v14 = v9 + ~v12;
    }

    else
    {
      v14 = a5 != 0;
    }

    if (*(v7 + 2040))
    {
      v15 = v14 < (v9 - 1);
    }

    else
    {
      v15 = v14 > 0;
    }

    v62 = v15;
    memmove(*(*(v7 + 64) + 8 * v14), *(*a2 + 8 * v14), 4 * *(v7 + 44));
    v16 = *(v7 + 40);
    if (v16 == 1)
    {
      *(*(*(v7 + 64) + 8 * v14) + 4 * *(v7 + 48) - 4) = 1065353216;
    }

    if (v8)
    {
      v17 = *(v7 + 48);
      v18 = *(*(v7 + 208) + 24 * v14);
      *v18 = **(*a3 + 24 * v14);
      if (v16)
      {
        v18[1] = v17 - 1;
      }
    }

    bzero(*(*(v7 + 376) + 8 * v14), 4 * *(v7 + 52));
    bzero(*(*(v7 + 400) + 8 * v14), 4 * *(v7 + 52));
    bzero(*(*(v7 + 424) + 8 * v14), 4 * *(v7 + 52));
    v19 = *(v7 + 2048);
    v20 = 8 * v14;
    v63 = v14;
    if (v19)
    {
      if ((*(v19 + 20) & 1) == 0)
      {
        v56 = *(v19 + 40);
        if ((v56 == 4 || v56 == 2) && *(v19 + 44) == 3)
        {
          v57 = (*(v7 + 208) + 24 * v14);
          v74 = 0;
          v75 = 0;
          v73 = 0;
          v59 = *v57;
          v58 = v57[1];
          if (v58 != v59)
          {
            if (((v58 - v59) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          sub_19D31E2BC(v7, 0);
        }
      }
    }

    v21 = *(v7 + 376);
    v22 = *(v7 + 64);
    v23 = *(v7 + 304);
    v24 = (*(v7 + 208) + 24 * v14);
    v71 = 0;
    v72 = 0;
    __p = 0;
    v26 = *v24;
    v25 = v24[1];
    if (v25 != v26)
    {
      if (((v25 - v26) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    sub_19D31EA3C(v7, v8, (v21 + v20), v22 + v20, v23, &__p, *(v7 + 52), *(v7 + 48), 1);
    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }

    v27 = *(v7 + 2048);
    if (!v27 || *(v27 + 244) != 1)
    {
      v28 = *(v7 + 52);
      if (v62)
      {
        sub_19D30A978();
      }

      v29 = (*(v7 + 376) + 8 * v14);
      if (v28 >= 1)
      {
        v30 = *v29;
        v31 = v28;
        do
        {
          v32 = -v11;
          if (*v30 < v13 || (v32 = v11, *v30 > v11))
          {
            *v30 = v32;
          }

          ++v30;
          --v31;
        }

        while (v31);
      }

      sub_19D30A3C0((*(v7 + 448) + 8 * v14), v29, v28, *(v7 + 520));
      v33 = *(v7 + 400);
      v34 = *(v7 + 64);
      v35 = *(v7 + 312);
      v36 = (*(v7 + 208) + 24 * v63);
      v68 = 0;
      v69 = 0;
      v67 = 0;
      v38 = *v36;
      v37 = v36[1];
      if (v37 != v38)
      {
        if (((v37 - v38) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      sub_19D31EA3C(v7, v8, (v33 + v20), v34 + v20, v35, &v67, *(v7 + 52), *(v7 + 48), 1);
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      v39 = *(v7 + 2048);
      if (!v39 || *(v39 + 244) != 1)
      {
        v40 = *(v7 + 52);
        v41 = (*(v7 + 400) + 8 * v63);
        if (v40 >= 1)
        {
          v42 = *v41;
          v43 = v40;
          do
          {
            v44 = -v11;
            if (*v42 < v13 || (v44 = v11, *v42 > v11))
            {
              *v42 = v44;
            }

            ++v42;
            --v43;
          }

          while (v43);
        }

        sub_19D30A3C0((*(v7 + 472) + v20), v41, v40, *(v7 + 524));
        bzero(*(*(v7 + 88) + v20), 4 * *(v7 + 52));
        v45 = *(v7 + 52);
        if (v45 >= 1)
        {
          v46 = *(*(v7 + 88) + 8 * v63);
          v47 = *(v7 + 52);
          do
          {
            v48 = -v11;
            if (*v46 < v13 || (v48 = v11, *v46 > v11))
            {
              *v46 = v48;
            }

            ++v46;
            --v47;
          }

          while (v47);
        }

        v49 = *(v7 + 424);
        v50 = *(v7 + 64);
        v51 = *(v7 + 320);
        v52 = (*(v7 + 208) + 24 * v63);
        v65 = 0;
        v66 = 0;
        v64 = 0;
        v54 = *v52;
        v53 = v52[1];
        if (v53 != v54)
        {
          if (((v53 - v54) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D31EA3C(v7, v8, (v49 + v20), v50 + v20, v51, &v64, v45, *(v7 + 48), 1);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v55 = *(v7 + 2048);
        if (!v55 || *(v55 + 244) != 1)
        {
          sub_19D30A978();
        }
      }
    }

    sub_19D41C548(76);
  }

  return result;
}

void sub_19D31E220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 128);
  if (v29)
  {
    *(v27 - 120) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31E2BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    if (!*(a1 + 552))
    {
      operator new[]();
    }

    sub_19D30A978();
  }

  sub_19D41C548(545);
}

float32_t sub_19D31EA3C(uint64_t a1, int a2, float32x4_t **a3, uint64_t a4, uint64_t *a5, void *a6, int a7, int a8, char a9)
{
  if (a9)
  {
    v11 = (a1 + 536);
    if (!a2)
    {
      sub_19D30A978();
    }

    __p = 0;
    v38 = 0;
    v39 = 0;
    v12 = a6[1];
    if (v12 != *a6)
    {
      if (((v12 - *a6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_32;
    }

    sub_19D30C0D8(v11, &__p, a5, a7, a8);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    v14 = a7 / 8;
    if (a7 >= 8)
    {
      v16 = *a3;
      v17 = *v11;
      v18 = a7 / 8;
      do
      {
        v19 = *v17;
        v20 = v17[1];
        v17 += 2;
        v21 = vaddq_f32(v16[1], v20);
        v13 = vaddq_f32(*v16, v19);
        *v16 = v13;
        v16[1] = v21;
        v16 += 2;
        --v18;
      }

      while (v18);
    }

    v22 = 8 * v14;
    if (8 * v14 < a7)
    {
      v23 = *v11;
      v24 = *a3;
      v25 = v22;
      if ((a7 - v22) <= 7)
      {
        goto LABEL_26;
      }

      v26 = 4 * v22;
      if (v24 + v26 < &v23->f32[a7] && v23 + v26 < &v24->f32[a7])
      {
        goto LABEL_26;
      }

      v27 = v22 + (a7 & 7) - a7;
      v28 = v26 + 16;
      v29 = (v23 + v26 + 16);
      v30 = (v24 + v28);
      do
      {
        v13 = vaddq_f32(v30[-1], v29[-1]);
        v31 = vaddq_f32(*v30, *v29);
        v30[-1] = v13;
        *v30 = v31;
        v29 += 2;
        v30 += 2;
        v27 += 8;
      }

      while (v27);
      v25 = a7 - (a7 & 7);
      if ((a7 & 7) != 0)
      {
LABEL_26:
        v32 = a7 - v25;
        v33 = &v24->f32[v25];
        v34 = &v23->f32[v25];
        do
        {
          v35 = *v34++;
          v13.f32[0] = *v33 + v35;
          *v33++ = v13.f32[0];
          --v32;
        }

        while (v32);
      }
    }
  }

  else
  {
    if (!a2)
    {

      sub_19D30A978();
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v15 = a6[1];
    if (v15 != *a6)
    {
      if (((v15 - *a6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_32:
      sub_19D2AE2B4();
    }

    sub_19D30C0D8(a3, &v40, a5, a7, a8);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  return v13.f32[0];
}

void sub_19D31ED2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D31ED5C(float32x4_t **a1, const char *a2, uint64_t a3)
{
  v94 = *MEMORY[0x1E69E9840];
  sprintf(v93, "0x%lx", *a1);
  v92 = 5;
  strcpy(v91, "() ");
  v6 = &v75.__r_.__value_.__s.__data_[11];
  if (a3 <= 0)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  if (a3 < 4)
  {
    v8 = 0;
    LOBYTE(v9) = 1;
    goto LABEL_13;
  }

  __asm { FMOV            V0.4S, #1.0 }

  if (a3 >= 0x20)
  {
    v8 = a3 & 0x7FFFFFE0;
    v15 = v7 + 4;
    v16 = 0uLL;
    v17 = v8;
    v18 = 0uLL;
    do
    {
      v20 = v15[-2];
      v19 = v15[-1];
      v22 = v15[-4];
      v21 = v15[-3];
      v24 = v15[2];
      v23 = v15[3];
      v26 = *v15;
      v25 = v15[1];
      v15 += 8;
      v16 = vorrq_s8(v16, vuzp1q_s8(vuzp1q_s16(vcgtq_f32(vabsq_f32(v22), _Q0), vcgtq_f32(vabsq_f32(v21), _Q0)), vuzp1q_s16(vcgtq_f32(vabsq_f32(v20), _Q0), vcgtq_f32(vabsq_f32(v19), _Q0))));
      v18 = vorrq_s8(v18, vuzp1q_s8(vuzp1q_s16(vcgtq_f32(vabsq_f32(v26), _Q0), vcgtq_f32(vabsq_f32(v25), _Q0)), vuzp1q_s16(vcgtq_f32(vabsq_f32(v24), _Q0), vcgtq_f32(vabsq_f32(v23), _Q0))));
      v17 -= 32;
    }

    while (v17);
    v27 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v18, v16), 7uLL));
    v27.i8[0] = vmaxvq_u8(v27);
    v9 = v27.i32[0] ^ 1;
    if (v8 == a3)
    {
      goto LABEL_15;
    }

    if ((a3 & 0x1C) == 0)
    {
LABEL_13:
      v33 = &v7->f32[v8];
      v34 = a3 - v8;
      do
      {
        v35 = *v33++;
        LOBYTE(v9) = (fabsf(v35) <= 1.0) & v9;
        --v34;
      }

      while (v34);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v28 = v8;
  v8 = a3 & 0x7FFFFFFC;
  v29 = vdup_n_s16(v9 ^ 1u);
  v30 = (v7 + 4 * v28);
  v31 = v28 - v8;
  do
  {
    v32 = *v30++;
    v29 = vorr_s8(v29, vmovn_s32(vcgtq_f32(vabsq_f32(v32), _Q0)));
    v31 += 4;
  }

  while (v31);
  LOBYTE(v9) = vmaxv_u16(vcltz_s16(vshl_n_s16(v29, 0xFuLL))) ^ 1;
  if (v8 != a3)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v9)
  {
LABEL_16:
    *(&v75.__r_.__value_.__s + 23) = 11;
    *(v75.__r_.__value_.__r.__words + 7) = 1936030010;
    v36 = "inRange:yes";
    goto LABEL_18;
  }

  v6 = &v75.__r_.__value_.__s.__data_[10];
  *(&v75.__r_.__value_.__s + 23) = 10;
  LOWORD(v75.__r_.__value_.__r.__words[1]) = 28526;
  v36 = "inRange:no";
LABEL_18:
  v75.__r_.__value_.__r.__words[0] = *v36;
  *v6 = 0;
  v37 = std::string::insert(&v75, 0, " (");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v84, ") ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v90 = v39->__r_.__value_.__r.__words[2];
  v89 = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
LABEL_20:
  sub_19D306AF4(&v84);
  v82[0] = 0;
  v82[1] = 0;
  v83 = 0;
  MEMORY[0x19EAFA2E0](&v84.__r_.__value_.__r.__words[2], a3);
  sub_19D306E5C(&v84, v82);
  std::operator+<char>();
  v41 = std::string::append(&v75, "] ");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v81 = v41->__r_.__value_.__r.__words[2];
  v80 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  sub_19D306AF4(&v75);
  v43 = strlen(a2);
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_19D2AD774();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v43;
  if (v43)
  {
    memcpy(&__dst, a2, v43);
  }

  __dst.__r_.__value_.__s.__data_[v44] = 0;
  if (v90 >= 0)
  {
    v45 = &v89;
  }

  else
  {
    v45 = v89;
  }

  if (v90 >= 0)
  {
    v46 = HIBYTE(v90);
  }

  else
  {
    v46 = *(&v89 + 1);
  }

  v47 = std::string::append(&__dst, v45, v46);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if (v92 >= 0)
  {
    v49 = v91;
  }

  else
  {
    v49 = v91[0];
  }

  if (v92 >= 0)
  {
    v50 = v92;
  }

  else
  {
    v50 = v91[1];
  }

  v51 = std::string::append(&v71, v49, v50);
  v52 = *&v51->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (v81 >= 0)
  {
    v53 = &v80;
  }

  else
  {
    v53 = v80;
  }

  if (v81 >= 0)
  {
    v54 = HIBYTE(v81);
  }

  else
  {
    v54 = *(&v80 + 1);
  }

  v55 = std::string::append(&v72, v53, v54);
  v56 = *&v55->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v73, "[ ");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_49:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_57:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (a3 < 1)
    {
      goto LABEL_85;
    }

    goto LABEL_58;
  }

LABEL_56:
  operator delete(v71.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_50:
  if (a3 >= 1)
  {
LABEL_58:
    v59 = 0;
    if (a3 >= 0x3E8)
    {
      v60 = 1000;
    }

    else
    {
      v60 = a3;
    }

    v61 = 4 * v60;
    do
    {
      memset(&v73, 0, sizeof(v73));
      std::ios_base::clear((&v75 + *(v75.__r_.__value_.__r.__words[0] - 24)), 0);
      std::ostream::operator<<();
      sub_19D306E5C(&v75, &v73);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v73.__r_.__value_.__l.__size_;
      }

      if (size + 3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_19D2AD774();
      }

      if (size + 3 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = size + 3;
      if (size)
      {
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v73;
        }

        else
        {
          v63 = v73.__r_.__value_.__r.__words[0];
        }

        memmove(&v72, v63, size);
      }

      *(&v72.__r_.__value_.__l.__data_ + size) = 2108448;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v72;
      }

      else
      {
        v64 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v72.__r_.__value_.__l.__size_;
      }

      std::string::append(&v74, v64, v65);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_84:
          operator delete(v73.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_84;
      }

      v59 += 4;
    }

    while (v61 != v59);
  }

LABEL_85:
  std::string::append(&v74, "]");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v75.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D8];
  v66 = v75.__r_.__value_.__r.__words[0];
  v67 = *(MEMORY[0x1E69E54D8] + 72);
  v68 = *(MEMORY[0x1E69E54D8] + 64);
  *(v75.__r_.__value_.__r.__words + *(v75.__r_.__value_.__r.__words[0] - 24)) = v68;
  v69 = v67;
  v75.__r_.__value_.__r.__words[2] = v67;
  v76 = MEMORY[0x1E69E5548] + 16;
  if (v78 < 0)
  {
    operator delete(v77[7].__locale_);
  }

  v76 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v77);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](&v79);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
    if ((SHIBYTE(v83) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }
  }

  else if ((SHIBYTE(v83) & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

  operator delete(v82[0]);
LABEL_91:
  v84.__r_.__value_.__r.__words[0] = v66;
  *(v84.__r_.__value_.__r.__words + *(v66 - 24)) = v68;
  v84.__r_.__value_.__r.__words[2] = v69;
  v85 = MEMORY[0x1E69E5548] + 16;
  if (v87 < 0)
  {
    operator delete(v86[7].__locale_);
  }

  v85 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v86);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](&v88);
  if ((SHIBYTE(v90) & 0x80000000) == 0)
  {
    if ((v92 & 0x80000000) == 0)
    {
      return;
    }

LABEL_99:
    operator delete(v91[0]);
    return;
  }

  operator delete(v89);
  if (v92 < 0)
  {
    goto LABEL_99;
  }
}

void sub_19D31F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_19D30719C(&a33);
  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  sub_19D30719C(&a75);
  if (*(v75 - 233) < 0)
  {
    operator delete(*(v75 - 256));
  }

  if (*(v75 - 209) < 0)
  {
    operator delete(*(v75 - 232));
  }

  _Unwind_Resume(a1);
}

void *sub_19D31F888(void *a1)
{
  *a1 = &unk_1F10B7808;
  sub_19D31B890(a1);
  v2 = a1[252];
  if (v2)
  {
    a1[253] = v2;
    operator delete(v2);
  }

  v3 = a1[249];
  if (v3)
  {
    a1[250] = v3;
    operator delete(v3);
  }

  sub_19D429384((a1 + 239));
  sub_19D429384((a1 + 230));
  sub_19D429384((a1 + 221));
  sub_19D429384((a1 + 212));
  sub_19D429384((a1 + 203));
  sub_19D429384((a1 + 194));
  sub_19D429384((a1 + 185));
  sub_19D429384((a1 + 176));
  sub_19D429384((a1 + 167));
  sub_19D429384((a1 + 158));
  sub_19D429384((a1 + 149));
  sub_19D308FC0(a1 + 119);
  sub_19D308FC0(a1 + 104);
  sub_19D308FC0(a1 + 89);
  v4 = a1[85];
  if (v4)
  {
    a1[86] = v4;
    operator delete(v4);
  }

  v5 = a1[82];
  if (v5)
  {
    a1[83] = v5;
    operator delete(v5);
  }

  v6 = a1[79];
  if (v6)
  {
    a1[80] = v6;
    operator delete(v6);
  }

  v7 = a1[76];
  if (v7)
  {
    a1[77] = v7;
    operator delete(v7);
  }

  v8 = a1[73];
  if (v8)
  {
    a1[74] = v8;
    operator delete(v8);
  }

  v9 = a1[70];
  if (v9)
  {
    a1[71] = v9;
    operator delete(v9);
  }

  v10 = a1[62];
  if (v10)
  {
    a1[63] = v10;
    operator delete(v10);
  }

  v11 = a1[59];
  if (v11)
  {
    a1[60] = v11;
    operator delete(v11);
  }

  v12 = a1[56];
  if (v12)
  {
    a1[57] = v12;
    operator delete(v12);
  }

  v13 = a1[53];
  if (v13)
  {
    a1[54] = v13;
    operator delete(v13);
  }

  v14 = a1[50];
  if (v14)
  {
    a1[51] = v14;
    operator delete(v14);
  }

  v15 = a1[47];
  if (v15)
  {
    a1[48] = v15;
    operator delete(v15);
  }

  v16 = a1[26];
  if (v16)
  {
    v17 = a1[27];
    v18 = a1[26];
    if (v17 != v16)
    {
      v19 = a1[27];
      do
      {
        v21 = *(v19 - 24);
        v19 -= 24;
        v20 = v21;
        if (v21)
        {
          *(v17 - 16) = v20;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[26];
    }

    a1[27] = v16;
    operator delete(v18);
  }

  v22 = a1[23];
  if (v22)
  {
    a1[24] = v22;
    operator delete(v22);
  }

  v23 = a1[20];
  if (v23)
  {
    a1[21] = v23;
    operator delete(v23);
  }

  v24 = a1[17];
  if (v24)
  {
    a1[18] = v24;
    operator delete(v24);
  }

  v25 = a1[14];
  if (v25)
  {
    a1[15] = v25;
    operator delete(v25);
  }

  v26 = a1[11];
  if (v26)
  {
    a1[12] = v26;
    operator delete(v26);
  }

  v27 = a1[8];
  if (v27)
  {
    a1[9] = v27;
    operator delete(v27);
  }

  *a1 = &unk_1F10B68F8;
  v28 = a1[1];
  if (v28)
  {
    a1[2] = v28;
    operator delete(v28);
  }

  return a1;
}

uint64_t sub_19D31FAFC(uint64_t a1, int a2, uint64_t a3, float a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B79C0;
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

void sub_19D31FD6C(_Unwind_Exception *exception_object)
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

_BYTE *sub_19D31FE4C(uint64_t a1, uint64_t a2, int *a3)
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
  v11 = sub_19D41C520();
  sub_19D3090B4((a1 + 128), a2, v9, v10, v11, *(a1 + 44));
  v12 = *a3;
  v13 = *(a1 + 161);
  v14 = sub_19D41C520();
  sub_19D3090B4((a1 + 136), a2, v12, v13, v14, *(a1 + 44));
  v15 = *a3;
  v16 = *(a1 + 161);
  v17 = sub_19D41C520();
  sub_19D3090B4((a1 + 144), a2, v15, v16, v17, *(a1 + 44));
  v18 = *a3;
  v19 = *(a1 + 161);
  v20 = sub_19D41C520();
  v21 = *(a1 + 44);

  return sub_19D3090B4((a1 + 152), a2, v18, v19, v20, v21);
}

uint64_t sub_19D31FF84(uint64_t a1, FILE *__stream, int *a3, uint64_t a4, unsigned int a5)
{
  sub_19D41C9E8(__stream, a3, *(a1 + 44));
  v9 = sub_19D41C520();
  sub_19D3204D0(a1 + 128, __stream, a3, 3, v9, a5);
  v10 = sub_19D41C520();
  sub_19D3204D0(a1 + 136, __stream, a3, 3, v10, a5);
  v11 = sub_19D41C520();
  sub_19D3204D0(a1 + 144, __stream, a3, 3, v11, a5);
  v12 = sub_19D41C520();

  return sub_19D3204D0(a1 + 152, __stream, a3, 3, v12, a5);
}

void sub_19D320150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D32016C(void *a1)
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

int *sub_19D320204(int *result, void *a2, uint64_t a3, int a4)
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

void *sub_19D3203E8(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7B38, 0);
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

void sub_19D3204A8(void *a1)
{
  v1 = sub_19D320CD0(a1);

  operator delete(v1);
}

uint64_t sub_19D3204D0(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D3205E8(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D320838(result, a2, a3, a4);
        case 0x10u:

          sub_19D320710(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

void sub_19D3205E8(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(17);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D320710(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(17);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D320838(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(17);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D320958(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = dword_1EB0131E8;
  v4 = (*(a1 + 176) - v2) >> 3;
  if (dword_1EB0131E8 <= v4)
  {
    if (dword_1EB0131E8 < v4)
    {
      *(a1 + 176) = v2 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 168), dword_1EB0131E8 - v4);
    v3 = dword_1EB0131E8;
  }

  v5 = *(a1 + 192);
  v6 = (*(a1 + 200) - v5) >> 3;
  if (v3 <= v6)
  {
    if (v3 < v6)
    {
      *(a1 + 200) = v5 + 8 * v3;
      if ((*(a1 + 161) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((*(a1 + 161) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 192), v3 - v6);
    if ((*(a1 + 161) & 1) == 0)
    {
LABEL_13:
      operator new[]();
    }
  }

  if (dword_1EB0131E8 >= 1)
  {
    operator new[]();
  }
}

void *sub_19D320CD0(void *a1)
{
  *a1 = &unk_1F10B79C0;
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

uint64_t sub_19D320DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
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
  *a1 = &unk_1F10B7B60;
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

void sub_19D3210B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void sub_19D3211E4(uint64_t a1)
{
  v2 = *(a1 + 529);
  v3 = *(a1 + 496);
  v4 = *(v3 + 8);
  *(a1 + 340) = v4;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v5 + 1;
  if (v5 != v6 && v7 != v6)
  {
    v9 = *v5;
    v10 = v5 + 1;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v9 < v12;
      if (v9 <= v12)
      {
        v9 = v11;
      }

      if (v13)
      {
        v5 = v7;
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  v14 = *v5;
  if (v14 > v4)
  {
    v4 = v14;
  }

  *(a1 + 344) = v4;
  (*(***(a1 + 80) + 272))(**(a1 + 80));
  v15 = (*(*a1 + 272))(a1);
  v16 = *(a1 + 104);
  *(a1 + 72) = v15;
  *(a1 + 348) = v15;
  *(a1 + 112) = v16;
  if (!dword_1EB0131E8)
  {
    if (v2)
    {
      goto LABEL_78;
    }

    v17 = 0;
    *(a1 + 456) = *(a1 + 448);
    v19 = (a1 + 512);
    v20 = *(a1 + 504);
    *(a1 + 512) = v20;
    goto LABEL_23;
  }

  sub_19D308DD0((a1 + 104), dword_1EB0131E8);
  v17 = dword_1EB0131E8;
  if (dword_1EB0131E8 >= 1)
  {
    operator new[]();
  }

  if ((v2 & 1) == 0)
  {
    *(a1 + 456) = *(a1 + 448);
    v18 = (a1 + 504);
    v19 = (a1 + 512);
    v20 = *(a1 + 504);
    *(a1 + 512) = v20;
    if (v17)
    {
      sub_19D308DD0((a1 + 448), v17);
      v17 = dword_1EB0131E8;
      v20 = *v18;
      v21 = dword_1EB0131E8;
      v22 = (*v19 - *v18) >> 3;
      v23 = dword_1EB0131E8 >= v22;
      if (dword_1EB0131E8 > v22)
      {
        sub_19D308DD0(v18, dword_1EB0131E8 - v22);
        v17 = dword_1EB0131E8;
LABEL_25:
        if (v17 >= 1)
        {
          operator new[]();
        }

        v24 = *(a1 + 200);
        v60 = (a1 + 200);
        v25 = *(a1 + 208);
        v26 = v24;
        if (v25 != v24)
        {
          v27 = *(a1 + 208);
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
          v26 = *v60;
        }

        *(a1 + 208) = v24;
        v30 = (*(a1 + 88) - *(a1 + 80)) >> 3;
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
        if (v30 <= v31)
        {
          if (v30 < v31)
          {
            v32 = v26 + 24 * v30;
            if (v24 != v32)
            {
              v33 = v24;
              do
              {
                v35 = *(v33 - 24);
                v33 -= 24;
                v34 = v35;
                if (v35)
                {
                  *(v24 - 16) = v34;
                  operator delete(v34);
                }

                v24 = v33;
              }

              while (v33 != v32);
            }

            *(a1 + 208) = v32;
          }
        }

        else
        {
          sub_19D35D700(v60, v30 - v31);
        }

        if (*(a1 + 88) != *(a1 + 80))
        {
          v36 = 0;
          v37 = dword_1EB0131E8;
          do
          {
            v38 = *v60 + 24 * v36;
            v39 = (*(v38 + 8) - *v38) >> 3;
            if (v37 <= v39)
            {
              if (v37 < v39)
              {
                *(v38 + 8) = *v38 + 8 * v37;
              }
            }

            else
            {
              sub_19D308DD0(v38, v37 - v39);
              v37 = dword_1EB0131E8;
            }

            if (v37 >= 1)
            {
              v40 = *(*(a1 + 80) + 8 * v36);
              (*(*v40 + 272))(v40);
              operator new[]();
            }

            ++v36;
          }

          while (v36 < (*(a1 + 88) - *(a1 + 80)) >> 3);
        }

        v42 = *(a1 + 472);
        v41 = *(a1 + 480);
        v43 = v42;
        if (v41 != v42)
        {
          v44 = *(a1 + 480);
          do
          {
            v46 = *(v44 - 24);
            v44 -= 24;
            v45 = v46;
            if (v46)
            {
              *(v41 - 16) = v45;
              operator delete(v45);
            }

            v41 = v44;
          }

          while (v44 != v42);
          v43 = *(a1 + 472);
        }

        *(a1 + 480) = v42;
        v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 3);
        if (v47 > 1)
        {
          if (v42 - v43 != 48)
          {
            v48 = v43 + 48;
            if (v42 != v43 + 48)
            {
              v49 = v42;
              do
              {
                v51 = *(v49 - 24);
                v49 -= 24;
                v50 = v51;
                if (v51)
                {
                  *(v42 - 16) = v50;
                  operator delete(v50);
                }

                v42 = v49;
              }

              while (v49 != v48);
            }

            *(a1 + 480) = v48;
          }
        }

        else
        {
          sub_19D35D700(a1 + 472, 2 - v47);
        }

        v52 = *(a1 + 472);
        v53 = dword_1EB0131E8;
        v54 = (*(v52 + 8) - *v52) >> 3;
        if (dword_1EB0131E8 <= v54)
        {
          if (dword_1EB0131E8 < v54)
          {
            *(v52 + 8) = *v52 + 8 * dword_1EB0131E8;
          }
        }

        else
        {
          sub_19D308DD0(v52, dword_1EB0131E8 - v54);
          v53 = dword_1EB0131E8;
        }

        if (v53 > 0)
        {
          operator new[]();
        }

        v55 = *(a1 + 472);
        v56 = *(v55 + 24);
        v57 = (*(v55 + 32) - v56) >> 3;
        if (v53 <= v57)
        {
          if (v53 < v57)
          {
            *(v55 + 32) = v56 + 8 * v53;
          }
        }

        else
        {
          sub_19D308DD0((v55 + 24), v53 - v57);
          v53 = dword_1EB0131E8;
        }

        if (v53 >= 1)
        {
          operator new[]();
        }

        goto LABEL_78;
      }

LABEL_19:
      if (!v23)
      {
        *v19 = &v20[8 * v21];
      }

      goto LABEL_25;
    }

LABEL_23:
    v21 = v17;
    v23 = 1;
    goto LABEL_19;
  }

LABEL_78:
  *(a1 + 312) = *(a1 + 304);
  v58 = *(a1 + 340);
  v23 = __CFADD__(v58, 1);
  v59 = v58 + 1;
  if (!v23)
  {
    sub_19D2CA0E8(a1 + 304, v59);
  }
}

uint64_t sub_19D321CB8(uint64_t a1)
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

uint64_t sub_19D321D34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_19D321DCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void *sub_19D321E6C(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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

void *sub_19D321F9C(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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

void *sub_19D3220CC(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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

void *sub_19D3221AC(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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

uint64_t sub_19D32228C(uint64_t result, float a2)
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

uint64_t sub_19D32230C(uint64_t result, float a2)
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

uint64_t sub_19D32239C(uint64_t result)
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

void sub_19D32240C(uint64_t a1)
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

void sub_19D3224D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3224F0(void *a1)
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

void sub_19D322638(uint64_t a1, void *a2, void *a3, int a4, char a5)
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

uint64_t sub_19D3229C0(uint64_t a1)
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

uint64_t sub_19D322A64(uint64_t result, uint64_t a2)
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

void sub_19D322B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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

void sub_19D322FD8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D323038(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
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

void sub_19D323CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
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

void *sub_19D323DA4(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7CE0, 0);
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

uint64_t sub_19D323EB0(uint64_t result, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6)
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

float sub_19D323FF0(uint64_t a1, uint64_t a2, int a3)
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

void sub_19D324100(void *a1)
{
  v1 = sub_19D324508(a1);

  operator delete(v1);
}

char *sub_19D324128(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_19D324284(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, int a5, unsigned int a6)
{
  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = (8 * a5);
  if (v9)
  {
    sub_19D361270(0, v9, 0);
  }

  v10 = 126 - 2 * __clz(a5);
  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_19D361714(0, v9, &v27, v11, 1);
  v12 = (a4[1] - *a4) >> 2;
  if (a5 <= v12)
  {
    if (a5 < v12)
    {
      a4[1] = *a4 + 4 * a5;
    }
  }

  else
  {
    sub_19D2CA0E8(a4, a5 - v12);
  }

  if (a5 >= 1)
  {
    v13 = *a4;
    if (a5 <= 0xC || v13 < 8 * a5 - 4 && v13 + 4 * a5)
    {
      v14 = 0;
    }

    else
    {
      v15 = a5 & 7;
      if ((a5 & 7) == 0)
      {
        v15 = 8;
      }

      v14 = a5 - v15;
      v16 = vdupq_n_s32(a6);
      v17 = 32;
      v18 = (v13 + 16);
      v19 = v14;
      do
      {
        v20 = (v17 - 32);
        v21 = vld2q_f32(v20);
        v22 = vld2q_f32(v17);
        v18[-1] = vaddq_s32(v21, v16);
        *v18 = vaddq_s32(v22, v16);
        v17 += 64;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
    }

    v23 = (8 * v14);
    v24 = a5 - v14;
    v25 = (v13 + 4 * v14);
    do
    {
      v26 = *v23;
      v23 += 2;
      *v25++ = v26 + a6;
      --v24;
    }

    while (v24);
    operator delete(0);
  }
}

void sub_19D3244E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D324508(void *a1)
{
  *a1 = &unk_1F10B7B60;
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

void sub_19D3246BC(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B7D08;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  v15 = a1 + 752;
  v16 = (a1 + 1080);
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  v17 = a1 + 1200;
  *(a1 + 1192) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  v18 = (a1 + 1320);
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  v19 = (a1 + 1640);
  *(a1 + 1432) = 0;
  bzero((a1 + 64), 0x2A0uLL);
  *(v15 + 236) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  *(v16 + 28) = 0u;
  *(v17 + 28) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  *(v18 + 28) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *(a1 + 1688) = 0;
  sub_19D42933C(a1 + 1704);
  sub_19D42933C(a1 + 1776);
  sub_19D42933C(a1 + 1848);
  sub_19D42933C(a1 + 1920);
  sub_19D42933C(a1 + 1992);
  sub_19D42933C(a1 + 2064);
  sub_19D42933C(a1 + 2136);
  sub_19D42933C(a1 + 2208);
  sub_19D42933C(a1 + 2280);
  sub_19D42933C(a1 + 2352);
  sub_19D42933C(a1 + 2424);
  *(a1 + 2496) = a5;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  (*(*a1 + 192))(a1);
  v20 = *(a7 + 45);
  *(a1 + 2692) = v20 ^ 1;
  *(a1 + 2672) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2680) = a9;
  if (a9)
  {
    v21 = *(a9 + 376);
    *(a1 + 2688) = *(a9 + 28);
    nullsub_171("LSTM constructor");
    v22 = v21 ^ 1;
    a8 = *(*(a1 + 2680) + 376);
    *(a1 + 40) = a8;
    v20 = *(a7 + 45);
  }

  else
  {
    v22 = 1;
    *(a1 + 2688) = 1;
    *(a1 + 40) = a8;
  }

  *(a1 + 1696) = v20;
  *(a1 + 1697) = *(a7 + 46);
  v23 = *a4;
  *(a1 + 736) = **a4;
  *(a1 + 740) = v23[1];
  *(a1 + 744) = v23[2];
  if ((a8 & 1) == 0)
  {
    v22 = 0;
  }

  *(a1 + 48) = v22 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2672) = 1;
    v20 = *(a1 + 1696);
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  if ((v20 & 1) == 0)
  {
    v24 = *(a7 + 32);
    switch(v24)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  operator new();
}

void sub_19D325490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v53);
  v87 = (v52 + 2624);
  v88 = *(v52 + 2648);
  if (v88)
  {
    *(v52 + 2656) = v88;
    operator delete(v88);
    v55 = *v87;
    if (!*v87)
    {
LABEL_6:
      sub_19D429384(v52 + 2424);
      sub_19D429384(v52 + 2352);
      sub_19D429384(v52 + 2280);
      sub_19D429384(v52 + 2208);
      sub_19D429384(v52 + 2136);
      sub_19D429384(v52 + 2064);
      sub_19D429384(v52 + 1992);
      sub_19D429384(v52 + 1920);
      sub_19D429384(v52 + 1848);
      sub_19D429384(v52 + 1776);
      sub_19D429384(v52 + 1704);
      sub_19D308FC0((v52 + 1344));
      sub_19D308FC0((v52 + 1224));
      sub_19D308FC0((v52 + 1104));
      sub_19D308FC0((v52 + 984));
      v56 = *(v52 + 960);
      if (v56)
      {
        *(v52 + 968) = v56;
        operator delete(v56);
        v57 = *(v52 + 936);
        if (!v57)
        {
LABEL_8:
          v58 = *(v52 + 912);
          if (!v58)
          {
            goto LABEL_9;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v57 = *(v52 + 936);
        if (!v57)
        {
          goto LABEL_8;
        }
      }

      *(v52 + 944) = v57;
      operator delete(v57);
      v58 = *(v52 + 912);
      if (!v58)
      {
LABEL_9:
        v59 = *(v52 + 888);
        if (!v59)
        {
          goto LABEL_10;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(v52 + 920) = v58;
      operator delete(v58);
      v59 = *(v52 + 888);
      if (!v59)
      {
LABEL_10:
        v60 = *(v52 + 864);
        if (!v60)
        {
          goto LABEL_11;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(v52 + 896) = v59;
      operator delete(v59);
      v60 = *(v52 + 864);
      if (!v60)
      {
LABEL_11:
        v61 = *(v52 + 840);
        if (!v61)
        {
          goto LABEL_12;
        }

        goto LABEL_43;
      }

LABEL_42:
      *(v52 + 872) = v60;
      operator delete(v60);
      v61 = *(v52 + 840);
      if (!v61)
      {
LABEL_12:
        v62 = *(v52 + 816);
        if (!v62)
        {
          goto LABEL_13;
        }

        goto LABEL_44;
      }

LABEL_43:
      *(v52 + 848) = v61;
      operator delete(v61);
      v62 = *(v52 + 816);
      if (!v62)
      {
LABEL_13:
        v63 = *(v52 + 792);
        if (!v63)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

LABEL_44:
      *(v52 + 824) = v62;
      operator delete(v62);
      v63 = *(v52 + 792);
      if (!v63)
      {
LABEL_14:
        v64 = *(v52 + 712);
        if (!v64)
        {
          goto LABEL_15;
        }

        goto LABEL_46;
      }

LABEL_45:
      *(v52 + 800) = v63;
      operator delete(v63);
      v64 = *(v52 + 712);
      if (!v64)
      {
LABEL_15:
        v65 = *(v52 + 688);
        if (!v65)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }

LABEL_46:
      *(v52 + 720) = v64;
      operator delete(v64);
      v65 = *(v52 + 688);
      if (!v65)
      {
LABEL_16:
        v66 = *(v52 + 664);
        if (!v66)
        {
          goto LABEL_17;
        }

        goto LABEL_48;
      }

LABEL_47:
      *(v52 + 696) = v65;
      operator delete(v65);
      v66 = *(v52 + 664);
      if (!v66)
      {
LABEL_17:
        v67 = *(v52 + 640);
        if (!v67)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }

LABEL_48:
      *(v52 + 672) = v66;
      operator delete(v66);
      v67 = *(v52 + 640);
      if (!v67)
      {
LABEL_18:
        v68 = *(v52 + 616);
        if (!v68)
        {
          goto LABEL_19;
        }

        goto LABEL_50;
      }

LABEL_49:
      *(v52 + 648) = v67;
      operator delete(v67);
      v68 = *(v52 + 616);
      if (!v68)
      {
LABEL_19:
        v69 = *(v52 + 592);
        if (!v69)
        {
          goto LABEL_20;
        }

        goto LABEL_51;
      }

LABEL_50:
      *(v52 + 624) = v68;
      operator delete(v68);
      v69 = *(v52 + 592);
      if (!v69)
      {
LABEL_20:
        v70 = *(v52 + 568);
        if (!v70)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

LABEL_51:
      *(v52 + 600) = v69;
      operator delete(v69);
      v70 = *(v52 + 568);
      if (!v70)
      {
LABEL_21:
        v71 = *(v52 + 544);
        if (!v71)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

LABEL_52:
      *(v52 + 576) = v70;
      operator delete(v70);
      v71 = *(v52 + 544);
      if (!v71)
      {
LABEL_22:
        v72 = *(v52 + 520);
        if (!v72)
        {
          goto LABEL_23;
        }

        goto LABEL_54;
      }

LABEL_53:
      *(v52 + 552) = v71;
      operator delete(v71);
      v72 = *(v52 + 520);
      if (!v72)
      {
LABEL_23:
        v73 = *(v52 + 496);
        if (!v73)
        {
          goto LABEL_24;
        }

        goto LABEL_55;
      }

LABEL_54:
      *(v52 + 528) = v72;
      operator delete(v72);
      v73 = *(v52 + 496);
      if (!v73)
      {
LABEL_24:
        v74 = *(v52 + 472);
        if (!v74)
        {
          goto LABEL_25;
        }

        goto LABEL_56;
      }

LABEL_55:
      *(v52 + 504) = v73;
      operator delete(v73);
      v74 = *(v52 + 472);
      if (!v74)
      {
LABEL_25:
        v75 = *(v52 + 448);
        if (!v75)
        {
          goto LABEL_26;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(v52 + 480) = v74;
      operator delete(v74);
      v75 = *(v52 + 448);
      if (!v75)
      {
LABEL_26:
        v76 = *(v52 + 424);
        if (!v76)
        {
          goto LABEL_27;
        }

        goto LABEL_58;
      }

LABEL_57:
      *(v52 + 456) = v75;
      operator delete(v75);
      v76 = *(v52 + 424);
      if (!v76)
      {
LABEL_27:
        v77 = *(v52 + 400);
        if (!v77)
        {
          goto LABEL_28;
        }

        goto LABEL_59;
      }

LABEL_58:
      *(v52 + 432) = v76;
      operator delete(v76);
      v77 = *(v52 + 400);
      if (!v77)
      {
LABEL_28:
        v78 = *(v52 + 376);
        if (!v78)
        {
          goto LABEL_29;
        }

        goto LABEL_60;
      }

LABEL_59:
      *(v52 + 408) = v77;
      operator delete(v77);
      v78 = *(v52 + 376);
      if (!v78)
      {
LABEL_29:
        v79 = *(v52 + 352);
        if (!v79)
        {
          goto LABEL_30;
        }

        goto LABEL_61;
      }

LABEL_60:
      *(v52 + 384) = v78;
      operator delete(v78);
      v79 = *(v52 + 352);
      if (!v79)
      {
LABEL_30:
        sub_19D2B2DD8((v52 + 208));
        v80 = *(v52 + 184);
        if (!v80)
        {
          goto LABEL_31;
        }

        goto LABEL_62;
      }

LABEL_61:
      *(v52 + 360) = v79;
      operator delete(v79);
      sub_19D2B2DD8((v52 + 208));
      v80 = *(v52 + 184);
      if (!v80)
      {
LABEL_31:
        v81 = *(v52 + 160);
        if (!v81)
        {
          goto LABEL_32;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(v52 + 192) = v80;
      operator delete(v80);
      v81 = *(v52 + 160);
      if (!v81)
      {
LABEL_32:
        v82 = *(v52 + 136);
        if (!v82)
        {
          goto LABEL_33;
        }

        goto LABEL_64;
      }

LABEL_63:
      *(v52 + 168) = v81;
      operator delete(v81);
      v82 = *(v52 + 136);
      if (!v82)
      {
LABEL_33:
        v83 = *(v52 + 112);
        if (!v83)
        {
          goto LABEL_34;
        }

        goto LABEL_65;
      }

LABEL_64:
      *(v52 + 144) = v82;
      operator delete(v82);
      v83 = *(v52 + 112);
      if (!v83)
      {
LABEL_34:
        v84 = *(v52 + 88);
        if (!v84)
        {
          goto LABEL_35;
        }

        goto LABEL_66;
      }

LABEL_65:
      *(v52 + 120) = v83;
      operator delete(v83);
      v84 = *(v52 + 88);
      if (!v84)
      {
LABEL_35:
        v85 = *(v52 + 64);
        if (!v85)
        {
          goto LABEL_36;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v52 + 96) = v84;
      operator delete(v84);
      v85 = *(v52 + 64);
      if (!v85)
      {
LABEL_36:
        *v52 = a10;
        v86 = *(v52 + 8);
        if (!v86)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v52 + 72) = v85;
      operator delete(v85);
      *v52 = a10;
      v86 = *(v52 + 8);
      if (!v86)
      {
LABEL_37:
        _Unwind_Resume(a1);
      }

LABEL_68:
      *(v52 + 16) = v86;
      operator delete(v86);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v55 = *v87;
    if (!*v87)
    {
      goto LABEL_6;
    }
  }

  *(v52 + 2632) = v55;
  operator delete(v55);
  goto LABEL_6;
}

void sub_19D327AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D327B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
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

uint64_t *sub_19D327BBC(void *a1)
{
  v2 = a1 + 99;
  v3 = a1[20];
  v4 = a1[21];
  v5 = (v4 - v3) >> 3;
  v6 = a1[99];
  v7 = (a1[100] - v6) >> 3;
  if (v5 <= v7)
  {
    if (v5 < v7)
    {
      a1[100] = v6 + v4 - v3;
    }
  }

  else
  {
    sub_19D308DD0(a1 + 99, v5 - v7);
    v3 = a1[20];
    v4 = a1[21];
    v5 = (v4 - v3) >> 3;
  }

  if (v4 != v3)
  {
    v8 = *v2;
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    if (v5 <= 3)
    {
      v10 = 0;
LABEL_14:
      v15 = (v8 + 8 * v10);
      v16 = (v3 + 8 * v10);
      v17 = v9 - v10;
      do
      {
        v18 = *v16++;
        *v15++ = v18;
        --v17;
      }

      while (v17);
      return v2;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (v3 + 16);
    v12 = (v8 + 16);
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v5 != v10)
    {
      goto LABEL_14;
    }
  }

  return v2;
}

_BYTE *sub_19D327CC4(uint64_t a1, uint64_t a2, int *a3, int a4)
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
        *(a1 + 736) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 740) = v16;
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
          *(a1 + 744) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 736) = 0;
      }

      *(a1 + 740) = 0;
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

  v21 = *(a1 + 2568);
  v22 = *a3;
  v23 = *(a1 + 1697);
  v24 = sub_19D41C528();
  sub_19D3090B4(v21, a2, v22, v23, v24, *(a1 + 52));
  v25 = *(a1 + 2576);
  v26 = *a3;
  v27 = *(a1 + 1697);
  v28 = sub_19D41C528();
  sub_19D3090B4(v25, a2, v26, v27, v28, *(a1 + 52));
  v29 = *(a1 + 2584);
  v30 = *a3;
  v31 = *(a1 + 1697);
  v32 = sub_19D41C528();
  sub_19D3090B4(v29, a2, v30, v31, v32, *(a1 + 52));
  v33 = *(a1 + 2504);
  v34 = *a3;
  v35 = *(a1 + 1697);
  v36 = sub_19D41C528();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 48));
  v37 = *(a1 + 2512);
  v38 = *a3;
  v39 = *(a1 + 1697);
  v40 = sub_19D41C528();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 48));
  v41 = *(a1 + 2520);
  v42 = *a3;
  v43 = *(a1 + 1697);
  v44 = sub_19D41C528();
  sub_19D3092B8(v41, a2, v42, v43, v44, *(a1 + 52), *(a1 + 48));
  v45 = *(a1 + 2528);
  v46 = *a3;
  v47 = *(a1 + 1697);
  v48 = sub_19D41C528();
  sub_19D3092B8(v45, a2, v46, v47, v48, *(a1 + 52), *(a1 + 48));
  v49 = *(a1 + 2536);
  v50 = *a3;
  v51 = *(a1 + 1697);
  v52 = sub_19D41C528();
  sub_19D3092B8(v49, a2, v50, v51, v52, *(a1 + 52), *(a1 + 52));
  v53 = *(a1 + 2544);
  v54 = *a3;
  v55 = *(a1 + 1697);
  v56 = sub_19D41C528();
  sub_19D3092B8(v53, a2, v54, v55, v56, *(a1 + 52), *(a1 + 52));
  v57 = *(a1 + 2552);
  v58 = *a3;
  v59 = *(a1 + 1697);
  v60 = sub_19D41C528();
  sub_19D3092B8(v57, a2, v58, v59, v60, *(a1 + 52), *(a1 + 52));
  v61 = *(a1 + 2560);
  v62 = *a3;
  v63 = *(a1 + 1697);
  v64 = sub_19D41C528();
  v65 = *(a1 + 52);

  return sub_19D3092B8(v61, a2, v62, v63, v64, v65, v65);
}

uint64_t sub_19D32804C(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
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
    __ptr = *(a1 + 736);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 740);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 744);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 2568);
  v12 = sub_19D41C528();
  sub_19D32CCE8(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 2576);
  v14 = sub_19D41C528();
  sub_19D32CCE8(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 2584);
  v16 = sub_19D41C528();
  sub_19D32CCE8(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 2504);
  v18 = sub_19D41C528();
  sub_19D32CE00(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 2512);
  v20 = sub_19D41C528();
  sub_19D32CE00(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 2520);
  v22 = sub_19D41C528();
  sub_19D32CE00(v21, __stream, a3, 3, v22, a5);
  v23 = *(a1 + 2528);
  v24 = sub_19D41C528();
  sub_19D32CE00(v23, __stream, a3, 3, v24, a5);
  v25 = *(a1 + 2536);
  v26 = sub_19D41C528();
  sub_19D32CE00(v25, __stream, a3, 3, v26, a5);
  v27 = *(a1 + 2544);
  v28 = sub_19D41C528();
  sub_19D32CE00(v27, __stream, a3, 3, v28, a5);
  v29 = *(a1 + 2552);
  v30 = sub_19D41C528();
  sub_19D32CE00(v29, __stream, a3, 3, v30, a5);
  v31 = *(a1 + 2560);
  v32 = sub_19D41C528();
  return sub_19D32CE00(v31, __stream, a3, 3, v32, a5);
}

void *sub_19D32831C(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7E80, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = 0;
    v7 = *(a1 + 52);
    if (v7 < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7E80, 0);
  v7 = *(a1 + 52);
  if (v7 < 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  v8 = 0;
  v9 = *(a1 + 2568);
  v10 = result[321];
  v11 = v5[321];
  do
  {
    *(*v9 + v8) = *(*v10 + v8) - *(*v11 + v8);
    ++v8;
  }

  while (v7 != v8);
  v7 = *(a1 + 52);
  if (v7 < 1)
  {
LABEL_17:
    v20 = (*(a1 + 48) * v7);
    if (v20 < 1)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  v12 = 0;
  v13 = *(a1 + 2576);
  v14 = result[322];
  v15 = v5[322];
  do
  {
    *(*v13 + v12) = *(*v14 + v12) - *(*v15 + v12);
    ++v12;
  }

  while (v7 != v12);
  v7 = *(a1 + 52);
  if (v7 < 1)
  {
    v20 = (*(a1 + 48) * v7);
    if (v20 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(a1 + 2584);
    v18 = result[323];
    v19 = v5[323];
    do
    {
      *(*v17 + v16) = *(*v18 + v16) - *(*v19 + v16);
      ++v16;
    }

    while (v7 != v16);
    LODWORD(v7) = *(a1 + 52);
    v20 = (*(a1 + 48) * v7);
    if (v20 < 1)
    {
      goto LABEL_31;
    }
  }

LABEL_18:
  v21 = 0;
  v22 = *(a1 + 2504);
  v23 = result[313];
  v24 = v5[313];
  do
  {
    *(*v22 + v21) = *(*v23 + v21) - *(*v24 + v21);
    ++v21;
  }

  while (v20 != v21);
  LODWORD(v7) = *(a1 + 52);
  v25 = (*(a1 + 48) * v7);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = *(a1 + 2520);
    v28 = result[315];
    v29 = v5[315];
    do
    {
      *(*v27 + v26) = *(*v28 + v26) - *(*v29 + v26);
      ++v26;
    }

    while (v25 != v26);
    LODWORD(v7) = *(a1 + 52);
    v30 = (*(a1 + 48) * v7);
    if (v30 >= 1)
    {
      v31 = 0;
      v32 = *(a1 + 2512);
      v33 = result[314];
      v34 = v5[314];
      do
      {
        *(*v32 + v31) = *(*v33 + v31) - *(*v34 + v31);
        ++v31;
      }

      while (v30 != v31);
      LODWORD(v7) = *(a1 + 52);
      v35 = (*(a1 + 48) * v7);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = *(a1 + 2528);
        v38 = result[316];
        v39 = v5[316];
        do
        {
          *(*v37 + v36) = *(*v38 + v36) - *(*v39 + v36);
          ++v36;
        }

        while (v35 != v36);
        LODWORD(v7) = *(a1 + 52);
      }
    }
  }

LABEL_31:
  if (v7)
  {
    v40 = 0;
    v41 = *(a1 + 2536);
    v42 = result[317];
    v43 = (v7 * v7);
    v44 = v5[317];
    do
    {
      *(*v41 + v40) = *(*v42 + v40) - *(*v44 + v40);
      ++v40;
    }

    while (v43 != v40);
    v45 = *(a1 + 52);
    if (v45)
    {
      v46 = 0;
      v47 = *(a1 + 2552);
      v48 = result[319];
      v49 = (v45 * v45);
      v50 = v5[319];
      do
      {
        *(*v47 + v46) = *(*v48 + v46) - *(*v50 + v46);
        ++v46;
      }

      while (v49 != v46);
      v51 = *(a1 + 52);
      if (v51)
      {
        v52 = 0;
        v53 = *(a1 + 2544);
        v54 = result[318];
        v55 = (v51 * v51);
        v56 = v5[318];
        do
        {
          *(*v53 + v52) = *(*v54 + v52) - *(*v56 + v52);
          ++v52;
        }

        while (v55 != v52);
        v57 = *(a1 + 52);
        if (v57)
        {
          v58 = 0;
          v59 = *(a1 + 2560);
          v60 = result[320];
          v61 = (v57 * v57);
          v62 = v5[320];
          do
          {
            *(*v59 + v58) = *(*v60 + v58) - *(*v62 + v58);
            ++v58;
          }

          while (v61 != v58);
        }
      }
    }
  }

  return result;
}

void sub_19D328720(int a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7E80, 0);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
LABEL_4:
    operator new();
  }

  __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7E80, 0);
  goto LABEL_4;
}

void *sub_19D3288A0(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7E80, 0);
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 2568);
  v5 = result[321];
  v6 = *(a1 + 52);
  if (v6 >= 8)
  {
    v7 = *v4;
    v8 = *v5;
    v9 = v6 / 8;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      v8 += 2;
      v12 = vaddq_f32(v7[1], v11);
      *v7 = vaddq_f32(*v7, v10);
      v7[1] = v12;
      v7 += 2;
      --v9;
    }

    while (v9);
  }

  LODWORD(v13) = 8 * (v6 / 8);
  if (v13 < v6)
  {
    v13 = v13;
    do
    {
      (*v4)->i8[v13] += (*v5)->i8[v13];
      ++v13;
    }

    while (v6 != v13);
  }

  v14 = *(a1 + 2576);
  v15 = result[322];
  v16 = *(a1 + 52);
  if (v16 >= 8)
  {
    v17 = *v14;
    v18 = *v15;
    v19 = v16 / 8;
    do
    {
      v20 = *v18;
      v21 = v18[1];
      v18 += 2;
      v22 = vaddq_f32(v17[1], v21);
      *v17 = vaddq_f32(*v17, v20);
      v17[1] = v22;
      v17 += 2;
      --v19;
    }

    while (v19);
  }

  LODWORD(v23) = 8 * (v16 / 8);
  if (v23 < v16)
  {
    v23 = v23;
    do
    {
      (*v14)->i8[v23] += (*v15)->i8[v23];
      ++v23;
    }

    while (v16 != v23);
  }

  v24 = *(a1 + 2584);
  v25 = result[323];
  v26 = *(a1 + 52);
  if (v26 >= 8)
  {
    v27 = *v24;
    v28 = *v25;
    v29 = v26 / 8;
    do
    {
      v30 = *v28;
      v31 = v28[1];
      v28 += 2;
      v32 = vaddq_f32(v27[1], v31);
      *v27 = vaddq_f32(*v27, v30);
      v27[1] = v32;
      v27 += 2;
      --v29;
    }

    while (v29);
  }

  LODWORD(v33) = 8 * (v26 / 8);
  if (v33 < v26)
  {
    v33 = v33;
    do
    {
      (*v24)->i8[v33] += (*v25)->i8[v33];
      ++v33;
    }

    while (v26 != v33);
  }

  v34 = *(a1 + 52);
  v35 = (*(a1 + 48) * v34);
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = *(a1 + 2504);
    v38 = result[313];
    do
    {
      *(*v37 + v36) += *(*v38 + v36);
      ++v36;
    }

    while (v35 != v36);
    v34 = *(a1 + 52);
    v39 = (*(a1 + 48) * v34);
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = *(a1 + 2512);
      v42 = result[314];
      do
      {
        *(*v41 + v40) += *(*v42 + v40);
        ++v40;
      }

      while (v39 != v40);
      v34 = *(a1 + 52);
      v43 = (*(a1 + 48) * v34);
      if (v43 >= 1)
      {
        v44 = 0;
        v45 = *(a1 + 2520);
        v46 = result[315];
        do
        {
          *(*v45 + v44) += *(*v46 + v44);
          ++v44;
        }

        while (v43 != v44);
        v34 = *(a1 + 52);
        v47 = (*(a1 + 48) * v34);
        if (v47 >= 1)
        {
          v48 = 0;
          v49 = *(a1 + 2528);
          v50 = result[316];
          do
          {
            *(*v49 + v48) += *(*v50 + v48);
            ++v48;
          }

          while (v47 != v48);
          v34 = *(a1 + 52);
        }
      }
    }
  }

  if (v34)
  {
    v51 = 0;
    v52 = *(a1 + 2536);
    v53 = result[317];
    v54 = (v34 * v34);
    do
    {
      *(*v52 + v51) += *(*v53 + v51);
      ++v51;
    }

    while (v54 != v51);
    v55 = *(a1 + 52);
    if (v55)
    {
      v56 = 0;
      v57 = *(a1 + 2544);
      v58 = result[318];
      v59 = (v55 * v55);
      do
      {
        *(*v57 + v56) += *(*v58 + v56);
        ++v56;
      }

      while (v59 != v56);
      v60 = *(a1 + 52);
      if (v60)
      {
        v61 = 0;
        v62 = *(a1 + 2552);
        v63 = result[319];
        v64 = (v60 * v60);
        do
        {
          *(*v62 + v61) += *(*v63 + v61);
          ++v61;
        }

        while (v64 != v61);
        v65 = *(a1 + 52);
        if (v65)
        {
          v66 = 0;
          v67 = *(a1 + 2560);
          v68 = result[320];
          v69 = (v65 * v65);
          do
          {
            *(*v67 + v66) += *(*v68 + v66);
            ++v66;
          }

          while (v69 != v66);
        }
      }
    }
  }

  return result;
}

void sub_19D328C84(uint64_t a1)
{
  (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  sub_19D41C548(23);
}

uint64_t sub_19D328D1C(uint64_t result, float a2, double a3, double a4)
{
  v4 = -a2;
  v5 = *(result + 52);
  if (v5 < 1)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = *(result + 2568);
  do
  {
    LOBYTE(a4) = *(*v7 + v6);
    *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
    v8 = SLODWORD(a4);
    v9 = SLODWORD(a4) < v4;
    *&a4 = -a2;
    if (v9 || (*&a4 = a2, v8 > a2))
    {
      *(*v7 + v6) = *&a4;
    }

    ++v6;
  }

  while (v5 != v6);
  v5 = *(result + 52);
  if (v5 < 1)
  {
LABEL_24:
    v16 = (*(result + 48) * v5);
    if (v16 < 1)
    {
      goto LABEL_54;
    }

    goto LABEL_25;
  }

  v10 = 0;
  v11 = *(result + 2576);
  do
  {
    LOBYTE(a4) = *(*v11 + v10);
    *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
    v12 = SLODWORD(a4);
    v9 = SLODWORD(a4) < v4;
    *&a4 = -a2;
    if (v9 || (*&a4 = a2, v12 > a2))
    {
      *(*v11 + v10) = *&a4;
    }

    ++v10;
  }

  while (v5 != v10);
  v5 = *(result + 52);
  if (v5 < 1)
  {
    v16 = (*(result + 48) * v5);
    if (v16 < 1)
    {
      goto LABEL_54;
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = *(result + 2584);
  do
  {
    LOBYTE(a4) = *(*v14 + v13);
    *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
    v15 = SLODWORD(a4);
    v9 = SLODWORD(a4) < v4;
    *&a4 = -a2;
    if (v9 || (*&a4 = a2, v15 > a2))
    {
      *(*v14 + v13) = *&a4;
    }

    ++v13;
  }

  while (v5 != v13);
  LODWORD(v5) = *(result + 52);
  v16 = (*(result + 48) * v5);
  if (v16 >= 1)
  {
LABEL_25:
    v17 = 0;
    v18 = *(result + 2504);
    do
    {
      LOBYTE(a4) = *(*v18 + v17);
      *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
      v19 = SLODWORD(a4);
      v9 = SLODWORD(a4) < v4;
      *&a4 = -a2;
      if (v9 || (*&a4 = a2, v19 > a2))
      {
        *(*v18 + v17) = *&a4;
      }

      ++v17;
    }

    while (v16 != v17);
    LODWORD(v5) = *(result + 52);
    v20 = (*(result + 48) * v5);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = *(result + 2512);
      do
      {
        LOBYTE(a4) = *(*v22 + v21);
        *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
        v23 = SLODWORD(a4);
        v9 = SLODWORD(a4) < v4;
        *&a4 = -a2;
        if (v9 || (*&a4 = a2, v23 > a2))
        {
          *(*v22 + v21) = *&a4;
        }

        ++v21;
      }

      while (v20 != v21);
      LODWORD(v5) = *(result + 52);
      v24 = (*(result + 48) * v5);
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = *(result + 2520);
        do
        {
          LOBYTE(a4) = *(*v26 + v25);
          *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
          v27 = SLODWORD(a4);
          v9 = SLODWORD(a4) < v4;
          *&a4 = -a2;
          if (v9 || (*&a4 = a2, v27 > a2))
          {
            *(*v26 + v25) = *&a4;
          }

          ++v25;
        }

        while (v24 != v25);
        LODWORD(v5) = *(result + 52);
        v28 = (*(result + 48) * v5);
        if (v28 >= 1)
        {
          v29 = 0;
          v30 = *(result + 2528);
          do
          {
            LOBYTE(a4) = *(*v30 + v29);
            *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
            v31 = SLODWORD(a4);
            v9 = SLODWORD(a4) < v4;
            *&a4 = -a2;
            if (v9 || (*&a4 = a2, v31 > a2))
            {
              *(*v30 + v29) = *&a4;
            }

            ++v29;
          }

          while (v28 != v29);
          LODWORD(v5) = *(result + 52);
        }
      }
    }
  }

LABEL_54:
  if (v5)
  {
    v32 = 0;
    v33 = *(result + 2536);
    v34 = (v5 * v5);
    do
    {
      LOBYTE(a4) = *(*v33 + v32);
      *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
      v35 = SLODWORD(a4);
      v9 = SLODWORD(a4) < v4;
      *&a4 = -a2;
      if (v9 || (*&a4 = a2, v35 > a2))
      {
        *(*v33 + v32) = *&a4;
      }

      ++v32;
    }

    while (v34 != v32);
    v36 = *(result + 52);
    if (v36)
    {
      v37 = 0;
      v38 = *(result + 2544);
      v39 = (v36 * v36);
      do
      {
        LOBYTE(a4) = *(*v38 + v37);
        *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
        v40 = SLODWORD(a4);
        v9 = SLODWORD(a4) < v4;
        *&a4 = -a2;
        if (v9 || (*&a4 = a2, v40 > a2))
        {
          *(*v38 + v37) = *&a4;
        }

        ++v37;
      }

      while (v39 != v37);
      v41 = *(result + 52);
      if (v41)
      {
        v42 = 0;
        v43 = *(result + 2552);
        v44 = (v41 * v41);
        do
        {
          LOBYTE(a4) = *(*v43 + v42);
          *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
          v45 = SLODWORD(a4);
          v9 = SLODWORD(a4) < v4;
          *&a4 = -a2;
          if (v9 || (*&a4 = a2, v45 > a2))
          {
            *(*v43 + v42) = *&a4;
          }

          ++v42;
        }

        while (v44 != v42);
        v46 = *(result + 52);
        if (v46)
        {
          v47 = 0;
          v48 = *(result + 2560);
          v49 = (v46 * v46);
          do
          {
            LOBYTE(a4) = *(*v48 + v47);
            *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
            v50 = SLODWORD(a4);
            v9 = SLODWORD(a4) < v4;
            *&a4 = -a2;
            if (v9 || (*&a4 = a2, v50 > a2))
            {
              *(*v48 + v47) = *&a4;
            }

            ++v47;
          }

          while (v49 != v47);
        }
      }
    }
  }

  return result;
}

uint64_t sub_19D329150(uint64_t result, float a2, double a3)
{
  v3 = *(result + 52);
  if (v3 < 1)
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = *(result + 2568);
  do
  {
    LOBYTE(a3) = *(*v5 + v4);
    *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
    *&a3 = SLODWORD(a3) * a2;
    *(*v5 + v4++) = *&a3;
  }

  while (v3 != v4);
  v3 = *(result + 52);
  if (v3 < 1)
  {
LABEL_12:
    v10 = (*(result + 48) * v3);
    if (v10 < 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(result + 2576);
    do
    {
      LOBYTE(a3) = *(*v7 + v6);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v7 + v6++) = *&a3;
    }

    while (v3 != v6);
    v3 = *(result + 52);
    if (v3 < 1)
    {
      v10 = (*(result + 48) * v3);
      if (v10 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v8 = 0;
      v9 = *(result + 2584);
      do
      {
        LOBYTE(a3) = *(*v9 + v8);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) * a2;
        *(*v9 + v8++) = *&a3;
      }

      while (v3 != v8);
      LODWORD(v3) = *(result + 52);
      v10 = (*(result + 48) * v3);
      if (v10 < 1)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = 0;
  v12 = *(result + 2504);
  do
  {
    LOBYTE(a3) = *(*v12 + v11);
    *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
    *&a3 = SLODWORD(a3) * a2;
    *(*v12 + v11++) = *&a3;
  }

  while (v10 != v11);
  LODWORD(v3) = *(result + 52);
  v13 = (*(result + 48) * v3);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(result + 2512);
    do
    {
      LOBYTE(a3) = *(*v15 + v14);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v15 + v14++) = *&a3;
    }

    while (v13 != v14);
    LODWORD(v3) = *(result + 52);
    v16 = (*(result + 48) * v3);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = *(result + 2520);
      do
      {
        LOBYTE(a3) = *(*v18 + v17);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) * a2;
        *(*v18 + v17++) = *&a3;
      }

      while (v16 != v17);
      LODWORD(v3) = *(result + 52);
      v19 = (*(result + 48) * v3);
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = *(result + 2528);
        do
        {
          LOBYTE(a3) = *(*v21 + v20);
          *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
          *&a3 = SLODWORD(a3) * a2;
          *(*v21 + v20++) = *&a3;
        }

        while (v19 != v20);
        LODWORD(v3) = *(result + 52);
      }
    }
  }

LABEL_26:
  if (v3)
  {
    v22 = 0;
    v23 = *(result + 2536);
    v24 = (v3 * v3);
    do
    {
      LOBYTE(a3) = *(*v23 + v22);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v23 + v22++) = *&a3;
    }

    while (v24 != v22);
    v25 = *(result + 52);
    if (v25)
    {
      v26 = 0;
      v27 = *(result + 2544);
      v28 = (v25 * v25);
      do
      {
        LOBYTE(a3) = *(*v27 + v26);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) * a2;
        *(*v27 + v26++) = *&a3;
      }

      while (v28 != v26);
      v29 = *(result + 52);
      if (v29)
      {
        v30 = 0;
        v31 = *(result + 2552);
        v32 = (v29 * v29);
        do
        {
          LOBYTE(a3) = *(*v31 + v30);
          *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
          *&a3 = SLODWORD(a3) * a2;
          *(*v31 + v30++) = *&a3;
        }

        while (v32 != v30);
        v33 = *(result + 52);
        if (v33)
        {
          v34 = 0;
          v35 = *(result + 2560);
          v36 = (v33 * v33);
          do
          {
            LOBYTE(a3) = *(*v35 + v34);
            *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
            *&a3 = SLODWORD(a3) * a2;
            *(*v35 + v34++) = *&a3;
          }

          while (v36 != v34);
        }
      }
    }
  }

  return result;
}

uint64_t sub_19D32944C(uint64_t result)
{
  if (*(result + 2688) >= 1)
  {
    operator new();
  }

  return result;
}

int *sub_19D3295D0(int *result, uint64_t *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *a4;
    do
    {
      v10 = v7[13];
      v11 = *(*(v7 + 20) + 8 * a3);
      v12 = *a2;
      *(v12 + 16 * v9) = v10;
      v13 = 4 * v10 * v8;
      memmove(**(v12 + 16 * *a4 + 8), (v11 + v13), 4 * v10);
      v14 = *a4;
      *a4 = v14 + 1;
      v15 = *(*(v7 + 23) + 8 * a3);
      v16 = v7[13];
      v17 = *a2;
      *(*a2 + 16 * v14 + 16) = v16;
      result = memmove(**(v17 + 16 * *a4 + 8), (v15 + v13), 4 * v16);
      v9 = *a4 + 1;
      *a4 = v9;
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

int *sub_19D3296BC(int *result, void *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(*(v7 + 20) + 8 * a3);
      v10 = 4 * v7[13] * v8;
      v11 = *(*(v7 + 23) + 8 * a3);
      v12 = *a4;
      *a4 = v12 + 1;
      memmove((v9 + v10), **(*a2 + 16 * v12 + 8), 4 * v7[13]);
      v13 = *a4;
      *a4 = v13 + 1;
      result = memmove((v11 + v10), **(*a2 + 16 * v13 + 8), 4 * v7[13]);
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

void sub_19D329798(uint64_t a1, void *a2, int *a3)
{
  if (*(a1 + 2688) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      bzero(**(*a2 + 16 * v7 + 8), 4 * *(*a2 + 16 * v7));
      v8 = *a3;
      *a3 = v8 + 1;
      bzero(**(*a2 + 16 * v8 + 24), 4 * *(*a2 + 16 * v8 + 16));
      v7 = *a3 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 2688));
  }
}

void sub_19D329840(uint64_t a1)
{
  if (*(a1 + 2692) == 1)
  {
    v2 = *(a1 + 1552);
    BYTE7(v18[2]) = 18;
    strcpy(v18, "LSTM before reseLSTM before reset ");
    (*(*v2 + 40))(v2, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v3 = *(a1 + 1560);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v3 + 40))(v3, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v4 = *(a1 + 1568);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v4 + 40))(v4, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v5 = *(a1 + 1576);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v5 + 40))(v5, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v6 = *(a1 + 1584);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v6 + 40))(v6, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v7 = *(a1 + 1592);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v7 + 40))(v7, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v8 = *(a1 + 1600);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v8 + 40))(v8, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v9 = *(a1 + 1608);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v9 + 40))(v9, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    (*(**(a1 + 1552) + 16))(*(a1 + 1552));
    (*(**(a1 + 1560) + 16))(*(a1 + 1560));
    (*(**(a1 + 1568) + 16))(*(a1 + 1568));
    (*(**(a1 + 1576) + 16))(*(a1 + 1576));
    (*(**(a1 + 1584) + 16))(*(a1 + 1584));
    (*(**(a1 + 1592) + 16))(*(a1 + 1592));
    (*(**(a1 + 1600) + 16))(*(a1 + 1600));
    (*(**(a1 + 1608) + 16))(*(a1 + 1608));
    v10 = *(a1 + 1552);
    BYTE7(v18[2]) = 17;
    strcpy(v18, "LSTM AFTER resetLSTM AFTER reset ");
    (*(*v10 + 40))(v10, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v11 = *(a1 + 1560);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v11 + 40))(v11, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v12 = *(a1 + 1568);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v12 + 40))(v12, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v13 = *(a1 + 1576);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v13 + 40))(v13, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v14 = *(a1 + 1584);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v14 + 40))(v14, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v15 = *(a1 + 1592);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v15 + 40))(v15, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v16 = *(a1 + 1600);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v16 + 40))(v16, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v17 = *(a1 + 1608);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v17 + 40))(v17, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }
  }
}

void sub_19D329F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D329F8C(uint64_t a1, uint64_t a2)
{
  v11 = **(a1 + 2504);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2512);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2528);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2520);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v4 = *(a1 + 52);
  v11 = **(a1 + 2536);
  v12.i32[0] = v4;
  v12.i32[1] = v4;
  sub_19D309FB0(a2, &v11);
  v5 = *(a1 + 52);
  v11 = **(a1 + 2544);
  v12.i32[0] = v5;
  v12.i32[1] = v5;
  sub_19D309FB0(a2, &v11);
  v6 = *(a1 + 52);
  v11 = **(a1 + 2560);
  v12.i32[0] = v6;
  v12.i32[1] = v6;
  sub_19D309FB0(a2, &v11);
  v7 = *(a1 + 52);
  v11 = **(a1 + 2552);
  v12.i32[0] = v7;
  v12.i32[1] = v7;
  sub_19D309FB0(a2, &v11);
  v8 = *(a1 + 52);
  v11 = **(a1 + 2568);
  v12 = v8;
  sub_19D309FB0(a2, &v11);
  v9 = *(a1 + 52);
  v11 = **(a1 + 2576);
  v12 = v9;
  sub_19D309FB0(a2, &v11);
  v10 = *(a1 + 52);
  v11 = **(a1 + 2584);
  v12 = v10;
  sub_19D309FB0(a2, &v11);
}

__n128 sub_19D32A128(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2-- - 2);
  a1[29] = v3;
  a1[313] = a1 + 29;
  *(a2 + 8) = v2;
  *v2 = *(v2 - 1);
  a1[30] = *v2;
  a1[314] = a1 + 30;
  v4 = *(a2 + 8);
  *(a2 + 8) = v4 - 16;
  *v2 = *(v4 - 32);
  a1[32] = *v2;
  a1[316] = a1 + 32;
  v5 = *(a2 + 8);
  *(a2 + 8) = v5 - 16;
  *v2 = *(v5 - 32);
  a1[31] = *v2;
  v6 = a1 + 31;
  v6[284] = v6;
  v7 = *(a2 + 8);
  *(a2 + 8) = v7 - 16;
  *v2 = *(v7 - 32);
  v6[2] = *v2;
  v6[286] = v6 + 2;
  v8 = *(a2 + 8);
  *(a2 + 8) = v8 - 16;
  *v2 = *(v8 - 32);
  v6[3] = *v2;
  v6[287] = v6 + 3;
  v9 = *(a2 + 8);
  *(a2 + 8) = v9 - 16;
  *v2 = *(v9 - 32);
  v6[5] = *v2;
  v6[289] = v6 + 5;
  v10 = *(a2 + 8);
  *(a2 + 8) = v10 - 16;
  *v2 = *(v10 - 32);
  v6[4] = *v2;
  v6[288] = v6 + 4;
  v11 = *(a2 + 8);
  *(a2 + 8) = v11 - 16;
  *v2 = *(v11 - 32);
  v6[6] = *v2;
  v6[290] = v6 + 6;
  v12 = *(a2 + 8);
  *(a2 + 8) = v12 - 16;
  *v2 = *(v12 - 32);
  v6[7] = *v2;
  v6[291] = v6 + 7;
  v13 = *(a2 + 8);
  *(a2 + 8) = v13 - 16;
  result = *(v13 - 32);
  *v2 = result;
  v6[8] = *v2;
  v6[292] = v6 + 8;
  *(a2 + 8) -= 16;
  return result;
}

void sub_19D32A354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D32A370(void *a1)
{
  v2 = a1[329];
  v3 = a1[328];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[329];
        v3 = a1[328];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[332];
  v7 = a1[331];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[332];
        v7 = a1[331];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[328];
  }

  a1[329] = v3;
  a1[332] = v7;
  v10 = a1[136];
  v11 = a1[135];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[136];
        v11 = a1[135];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[136] = v11;
  v14 = a1[133];
  if (v14)
  {
    operator delete(v14);
    a1[133] = 0;
  }

  v15 = a1[132];
  if (v15)
  {
    operator delete(v15);
    a1[132] = 0;
  }

  v16 = a1[166];
  v17 = a1[165];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[166];
        v17 = a1[165];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[166] = v17;
  v20 = a1[163];
  if (v20)
  {
    operator delete(v20);
    a1[163] = 0;
  }

  v21 = a1[162];
  if (v21)
  {
    operator delete(v21);
    a1[162] = 0;
  }

  v22 = a1[151];
  v23 = a1[150];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[151];
        v23 = a1[150];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[151] = v23;
  v26 = a1[148];
  if (v26)
  {
    operator delete(v26);
    a1[148] = 0;
  }

  v27 = a1[147];
  if (v27)
  {
    operator delete(v27);
    a1[147] = 0;
  }

  v28 = a1[181];
  v29 = a1[180];
  if (v28 != v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v29 + 8 * v30);
      if (v31)
      {
        operator delete[](v31);
        v28 = a1[181];
        v29 = a1[180];
      }

      ++v30;
    }

    while (v30 < (v28 - v29) >> 3);
  }

  a1[181] = v29;
  v32 = a1[178];
  if (v32)
  {
    operator delete(v32);
    a1[178] = 0;
  }

  v33 = a1[177];
  if (v33)
  {
    operator delete(v33);
    a1[177] = 0;
  }
}

uint64_t sub_19D32A5C0(uint64_t result, float a2, double a3)
{
  v3 = a2;
  v4 = *(result + 52);
  if (*(result + 56) < 1)
  {
    v12 = (*(result + 48) * v4);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = v3;
      do
      {
        v15 = *(result + 232);
        LOBYTE(a3) = *(v15 + v13);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1464) + 4 * v13) * v14);
        *(v15 + v13++) = *&a3;
      }

      while (v12 != v13);
      for (i = 0; i != v12; ++i)
      {
        v17 = *(result + 248);
        LOBYTE(a3) = *(v17 + i);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1480) + 4 * i) * v14);
        *(v17 + i) = *&a3;
      }

      for (j = 0; j != v12; ++j)
      {
        v19 = *(result + 240);
        LOBYTE(a3) = *(v19 + j);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1472) + 4 * j) * v14);
        *(v19 + j) = *&a3;
      }

      for (k = 0; k != v12; ++k)
      {
        v21 = *(result + 256);
        LOBYTE(a3) = *(v21 + k);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1488) + 4 * k) * v14);
        *(v21 + k) = *&a3;
      }
    }

    goto LABEL_17;
  }

  v5 = v3;
  v6 = *(result + 1000);
  if (v6 >= 1)
  {
    if (v4 < 1)
    {
LABEL_58:
      v54 = *(result + 1032);
      v56 = *v54;
      v55 = v54[1];
      if (v55 == v56)
      {
        sub_19D41C548(67);
      }

      if (((v55 - v56) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_95;
    }

    v45 = 0;
    v46 = *(result + 1008);
    while (1)
    {
      v47 = *(v46 + 8 * v45);
      if (v4 >= 8)
      {
        v49 = v47 + 1;
        v50 = v4 & 0x7FFFFFF8;
        do
        {
          v51 = vmulq_n_f32(*v49, v5);
          v49[-1] = vmulq_n_f32(v49[-1], v5);
          *v49 = v51;
          v49 += 2;
          v50 -= 8;
        }

        while (v50);
        v48 = v4 & 0x7FFFFFF8;
        if (v48 == v4)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v48 = 0;
      }

      v52 = v4 - v48;
      v53 = &v47->f32[v48];
      do
      {
        *v53 = *v53 * v5;
        ++v53;
        --v52;
      }

      while (v52);
LABEL_49:
      if (++v45 == v6)
      {
        goto LABEL_58;
      }
    }
  }

  v7 = *(result + 1240);
  if (v7 >= 1)
  {
    if (v4 < 1)
    {
LABEL_71:
      v66 = *(result + 1272);
      v68 = *v66;
      v67 = v66[1];
      if (v67 == v68)
      {
        sub_19D41C548(67);
      }

      if (((v67 - v68) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_95;
    }

    v57 = 0;
    v58 = *(result + 1248);
    while (1)
    {
      v59 = *(v58 + 8 * v57);
      if (v4 >= 8)
      {
        v61 = v59 + 1;
        v62 = v4 & 0x7FFFFFF8;
        do
        {
          v63 = vmulq_n_f32(*v61, v5);
          v61[-1] = vmulq_n_f32(v61[-1], v5);
          *v61 = v63;
          v61 += 2;
          v62 -= 8;
        }

        while (v62);
        v60 = v4 & 0x7FFFFFF8;
        if (v60 == v4)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v60 = 0;
      }

      v64 = v4 - v60;
      v65 = &v59->f32[v60];
      do
      {
        *v65 = *v65 * v5;
        ++v65;
        --v64;
      }

      while (v64);
LABEL_62:
      if (++v57 == v7)
      {
        goto LABEL_71;
      }
    }
  }

  v8 = *(result + 1120);
  if (v8 >= 1)
  {
    if (v4 < 1)
    {
LABEL_84:
      v78 = *(result + 1152);
      v80 = *v78;
      v79 = v78[1];
      if (v79 == v80)
      {
        sub_19D41C548(67);
      }

      if (((v79 - v80) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_95;
    }

    v69 = 0;
    v70 = *(result + 1128);
    while (1)
    {
      v71 = *(v70 + 8 * v69);
      if (v4 >= 8)
      {
        v73 = v71 + 1;
        v74 = v4 & 0x7FFFFFF8;
        do
        {
          v75 = vmulq_n_f32(*v73, v5);
          v73[-1] = vmulq_n_f32(v73[-1], v5);
          *v73 = v75;
          v73 += 2;
          v74 -= 8;
        }

        while (v74);
        v72 = v4 & 0x7FFFFFF8;
        if (v72 == v4)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v72 = 0;
      }

      v76 = v4 - v72;
      v77 = &v71->f32[v72];
      do
      {
        *v77 = *v77 * v5;
        ++v77;
        --v76;
      }

      while (v76);
LABEL_75:
      if (++v69 == v8)
      {
        goto LABEL_84;
      }
    }
  }

  v9 = *(result + 1360);
  if (v9 >= 1)
  {
    if (v4 >= 1)
    {
      v10 = 0;
      v11 = *(result + 1368);
      do
      {
        v38 = *(v11 + 8 * v10);
        if (v4 >= 8)
        {
          v40 = v38 + 1;
          v41 = v4 & 0x7FFFFFF8;
          do
          {
            v42 = vmulq_n_f32(*v40, v5);
            v40[-1] = vmulq_n_f32(v40[-1], v5);
            *v40 = v42;
            v40 += 2;
            v41 -= 8;
          }

          while (v41);
          v39 = v4 & 0x7FFFFFF8;
          if (v39 == v4)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v39 = 0;
        }

        v43 = v4 - v39;
        v44 = &v38->f32[v39];
        do
        {
          *v44 = *v44 * v5;
          ++v44;
          --v43;
        }

        while (v43);
LABEL_38:
        ++v10;
      }

      while (v10 != v9);
    }

    v81 = *(result + 1392);
    v83 = *v81;
    v82 = v81[1];
    if (v82 == v83)
    {
      sub_19D41C548(67);
    }

    if (((v82 - v83) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_95:
    sub_19D2AE2B4();
  }

LABEL_17:
  if (v4)
  {
    v22 = 0;
    v23 = (v4 * v4);
    v24 = v3;
    do
    {
      v25 = *(result + 264);
      LOBYTE(a3) = *(v25 + v22);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1496) + 4 * v22) * v24);
      *(v25 + v22++) = *&a3;
    }

    while (v23 != v22);
    v26 = 0;
    do
    {
      v27 = *(result + 280);
      LOBYTE(a3) = *(v27 + v26);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1512) + 4 * v26) * v24);
      *(v27 + v26++) = *&a3;
    }

    while (v23 != v26);
    v28 = 0;
    do
    {
      v29 = *(result + 272);
      LOBYTE(a3) = *(v29 + v28);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1504) + 4 * v28) * v24);
      *(v29 + v28++) = *&a3;
    }

    while (v23 != v28);
    v30 = 0;
    do
    {
      v31 = *(result + 288);
      LOBYTE(a3) = *(v31 + v30);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1520) + 4 * v30) * v24);
      *(v31 + v30++) = *&a3;
    }

    while (v23 != v30);
    v32 = *(result + 52);
    if (v32 < 1)
    {
      return result;
    }
  }

  else
  {
    v24 = v3;
    v32 = *(result + 52);
    if (v32 < 1)
    {
      return result;
    }
  }

  for (m = 0; m != v32; ++m)
  {
    *(*(result + 296) + m) += (*(*(result + 1528) + 4 * m) * v24);
  }

  v34 = *(result + 52);
  if (v34 >= 1)
  {
    for (n = 0; n != v34; ++n)
    {
      *(*(result + 312) + n) += (*(*(result + 1544) + 4 * n) * v24);
    }

    v36 = *(result + 52);
    if (v36 >= 1)
    {
      for (ii = 0; ii != v36; ++ii)
      {
        *(*(result + 304) + ii) += (*(*(result + 1536) + 4 * ii) * v24);
      }
    }
  }

  return result;
}

void sub_19D32AC34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D32AC58(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v616 = a5 - 1;
  if (a5 >= 1)
  {
    v614 = (a1 + 1640);
    v606 = (a1 + 1648);
    v6 = (a1 + 1656);
    v7 = (a1 + 1672);
    v613 = (a1 + 1664);
    v612 = (a1 + 1680);
    v611 = (a1 + 1688);
    v8 = a5 - 1;
    v603 = (a1 + 1656);
    do
    {
      v9 = v616 - v8;
      v610 = v8;
      if (*(a1 + 2672))
      {
        v10 = v9 < v616;
      }

      else
      {
        v9 = v8;
        v10 = v8 > 0;
      }

      v609 = v10;
      if (*(a1 + 2672))
      {
        v11 = v9 > 0;
      }

      else
      {
        v11 = v9 < v616;
      }

      if (*(a1 + 2672))
      {
        v12 = v9 - 1;
      }

      else
      {
        v12 = v9 + 1;
      }

      if (*(a1 + 2672))
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v9 - 1;
      }

      v605 = v13;
      v14 = v9;
      memmove(*(*(a1 + 840) + 8 * v9), *(*a4 + 8 * v9), 4 * *(a1 + 52));
      v15 = 8 * v14;
      if (v11)
      {
        v16 = 8 * v12;
        sub_19D32D178((*(a1 + 840) + v15), (*(a1 + 936) + v16), *(a1 + 2560), *(a1 + 52), *(a1 + 52), 1.0);
        sub_19D32D178((*(a1 + 840) + v15), (*(a1 + 912) + v16), *(a1 + 2536), *(a1 + 52), *(a1 + 52), 1.0);
        sub_19D32D178((*(a1 + 840) + v15), (*(a1 + 888) + v16), *(a1 + 2544), *(a1 + 52), *(a1 + 52), 1.0);
        sub_19D32D178((*(a1 + 840) + v15), (*(a1 + 864) + v16), *(a1 + 2552), *(a1 + 52), *(a1 + 52), 1.0);
      }

      v17 = *(*(a1 + 352) + 8 * v14);
      v619 = *(*(a1 + 376) + 8 * v14);
      v620 = v17;
      v618 = *(*(a1 + 424) + 8 * v14);
      v607 = v12;
      v608 = *(*(a1 + 448) + 8 * v14);
      v617 = *(*(a1 + 400) + 8 * v14);
      v18 = *(*(a1 + 496) + 8 * v14);
      sub_19D30A0F8(v614, &v617, *(a1 + 52), *(a1 + 736));
      sub_19D30A0F8(v606, &v619, *(a1 + 52), *(a1 + 736));
      sub_19D30A0F8(v6, &v620, *(a1 + 52), *(a1 + 736));
      v19 = v7;
      sub_19D30A3C0(v7, &v618, *(a1 + 52), *(a1 + 740));
      sub_19D30A0F8(v613, &v618, *(a1 + 52), *(a1 + 740));
      sub_19D30A3C0(v612, (*(a1 + 88) + v15), *(a1 + 52), *(a1 + 744));
      sub_19D30A0F8(v611, (*(a1 + 88) + v15), *(a1 + 52), *(a1 + 744));
      v20 = *(a1 + 864);
      v21 = *(a1 + 840);
      v22 = *(a1 + 52);
      v23 = 4 * v22;
      bzero(*(v20 + 8 * v14), 4 * v22);
      v24 = v22 / 8;
      if (v22 >= 8)
      {
        v25 = *(v20 + 8 * v14);
        v26 = *(v21 + 8 * v14);
        v27 = *v612;
        v28 = v22 / 8;
        v29 = *v614;
        do
        {
          v30 = *v29;
          v31 = v29[1];
          v29 += 2;
          v32 = *v27;
          v33 = *(v27 + 4);
          v27 += 8;
          v34 = vmulq_f32(v33, v31);
          v35 = vmulq_f32(v32, v30);
          v37 = *v26;
          v36 = v26[1];
          v26 += 2;
          v38 = vmlaq_f32(v25[1], v34, v36);
          *v25 = vmlaq_f32(*v25, v35, v37);
          v25[1] = v38;
          v25 += 2;
          --v28;
        }

        while (v28);
      }

      v39 = 8 * v24;
      if (8 * v24 < v22)
      {
        v40 = *v614;
        v41 = *(v21 + 8 * v14);
        v42 = *v612;
        v43 = *(v20 + 8 * v14);
        v44 = v39;
        v45 = v22 - v39;
        if (v45 <= 7)
        {
          goto LABEL_46;
        }

        v46 = 4 * v39;
        v47 = v43 + v46;
        v48 = v43 + v23;
        v49 = v43 + v46 >= &v42[v23 / 4] || &v42[v46 / 4] >= v48;
        v50 = !v49;
        v51 = v47 >= v41 + v23 || v41 + 4 * v44 >= v48;
        v52 = !v51;
        if (v40 + v46 < v48 && v47 < v40 + v23)
        {
          goto LABEL_46;
        }

        if (v50)
        {
          goto LABEL_46;
        }

        if (v52)
        {
          goto LABEL_46;
        }

        v54 = v45 - (v22 & 7) + v44;
        v55 = v44 + (v22 & 7) - v22;
        v56 = (v43 + v46 + 16);
        v57 = (v40 + v46 + 16);
        v58 = (v41 + v46 + 16);
        v59 = &v42[v46 / 4 + 4];
        do
        {
          v60 = vmlaq_f32(*v56, vmulq_f32(*v59, *v57), *v58);
          v56[-1] = vmlaq_f32(v56[-1], vmulq_f32(v59[-1], v57[-1]), v58[-1]);
          *v56 = v60;
          v56 += 2;
          v57 += 2;
          v58 += 2;
          v59 += 2;
          v55 += 8;
        }

        while (v55);
        v44 = v54;
        if ((v22 & 7) != 0)
        {
LABEL_46:
          v61 = v22 - v44;
          v62 = (v43 + 4 * v44);
          v63 = (v41 + 4 * v44);
          v64 = &v42[v44];
          v65 = &v40->f32[v44];
          do
          {
            v66 = *v65++;
            v67 = v66;
            v68 = *v64++;
            v69 = v68;
            v70 = *v63++;
            *v62 = *v62 + ((v69 * v67) * v70);
            ++v62;
            --v61;
          }

          while (v61);
        }
      }

      v71 = *(a1 + 960);
      v72 = *(a1 + 840);
      v73 = *(a1 + 52);
      v74 = 4 * v73;
      bzero(*(v71 + 8 * v14), 4 * v73);
      v76 = v73 / 8;
      if (v73 >= 8)
      {
        v77 = *(v71 + 8 * v14);
        v78 = *(v72 + 8 * v14);
        v79 = v73 / 8;
        v80 = v18;
        v81 = *v611;
        do
        {
          v82 = *v81;
          v83 = v81[1];
          v81 += 2;
          v84 = *v80;
          v85 = v80[1];
          v80 += 2;
          v75 = vmulq_f32(v85, v83);
          v86 = vmulq_f32(v84, v82);
          v88 = *v78;
          v87 = v78[1];
          v78 += 2;
          v89 = vmlaq_f32(v77[1], v75, v87);
          *v77 = vmlaq_f32(*v77, v86, v88);
          v77[1] = v89;
          v77 += 2;
          --v79;
        }

        while (v79);
      }

      v90 = 8 * v76;
      if (8 * v76 < v73)
      {
        v91 = *(v72 + 8 * v14);
        v92 = *v611;
        v93 = *(v71 + 8 * v14);
        v94 = v90;
        v95 = v73 - v90;
        if (v95 <= 7)
        {
          goto LABEL_75;
        }

        v96 = 4 * v90;
        v97 = v93 + v96;
        v98 = v93 + v74;
        v99 = v93 + v96 >= v18 + v74 || v18 + v96 >= v98;
        v100 = !v99;
        v101 = v97 >= v91 + v74 || v91 + 4 * v94 >= v98;
        v102 = !v101;
        if (v92 + v96 < v98 && v97 < v92 + v74)
        {
          goto LABEL_75;
        }

        if (v100)
        {
          goto LABEL_75;
        }

        if (v102)
        {
          goto LABEL_75;
        }

        v104 = v95 - (v73 & 7) + v94;
        v105 = v94 + (v73 & 7) - v73;
        v106 = (v93 + v96 + 16);
        v107 = (v92 + v96 + 16);
        v108 = (v91 + v96 + 16);
        v109 = (v18 + v96 + 16);
        do
        {
          v75 = vmulq_f32(*v109, *v107);
          v110 = vmlaq_f32(*v106, v75, *v108);
          v106[-1] = vmlaq_f32(v106[-1], vmulq_f32(v109[-1], v107[-1]), v108[-1]);
          *v106 = v110;
          v106 += 2;
          v107 += 2;
          v108 += 2;
          v109 += 2;
          v105 += 8;
        }

        while (v105);
        v94 = v104;
        if ((v73 & 7) != 0)
        {
LABEL_75:
          v111 = v73 - v94;
          v112 = v94;
          v113 = (v93 + v112 * 4);
          v114 = (v91 + v112 * 4);
          v115 = &v18->f32[v112];
          v116 = &v92->f32[v112];
          do
          {
            v117 = *v116++;
            v118 = v117;
            v119 = *v115++;
            v120 = v119;
            v121 = *v114++;
            *v113 = *v113 + ((v120 * v118) * v121);
            ++v113;
            --v111;
          }

          while (v111);
        }
      }

      v122 = *(a1 + 960);
      v123 = *(a1 + 52);
      if (v123 < 1)
      {
        v7 = v19;
        if (!v11)
        {
          v128 = v609;
          goto LABEL_117;
        }

        v166 = 8 * v607;
        v136 = *(*(a1 + 472) + v166);
        v158 = (v122 + v166);
        v128 = v609;
        v165 = -8 * (-v123 >> 3);
        if (v165 < v123)
        {
          goto LABEL_98;
        }

        goto LABEL_116;
      }

      v124 = *(*(a1 + 864) + 8 * v14);
      v125 = **(a1 + 2584);
      v126 = *(v122 + 8 * v14);
      v7 = v19;
      v127 = 0;
      if (v123 < 4)
      {
        v128 = v609;
LABEL_80:
        v129 = v123 - v127;
        v130 = (v126 + 4 * v127);
        v131 = (v125 + v127);
        v132 = (v124 + 4 * v127);
        do
        {
          v133 = *v132++;
          v134 = v133;
          v135 = *v131++;
          *v130 = *v130 + (v134 * v135);
          ++v130;
          --v129;
        }

        while (v129);
        goto LABEL_82;
      }

      v340 = v126 + 4 * v123;
      v342 = v126 < v125 + v123 && v125 < v340;
      v343 = v124 >= v340 || v126 >= v124 + 4 * v123;
      v128 = v609;
      if (!v343 || v342)
      {
        goto LABEL_80;
      }

      if (v123 >= 0x10)
      {
        v127 = v123 & 0x7FFFFFF0;
        v352 = v127;
        v353 = *(v122 + 8 * v14);
        v354 = **(a1 + 2584);
        v355 = *(*(a1 + 864) + 8 * v14);
        do
        {
          v75 = *v355;
          v356 = *v354++;
          v357 = vmlaq_f32(v353[1], v355[1], vcvtq_n_f32_s32(vqtbl1q_s8(v356, xmmword_19D475370), 0x18uLL));
          v358 = vmlaq_f32(*v353, *v355, vcvtq_n_f32_s32(vqtbl1q_s8(v356, xmmword_19D475360), 0x18uLL));
          v359 = vmlaq_f32(v353[3], v355[3], vcvtq_n_f32_s32(vqtbl1q_s8(v356, xmmword_19D475350), 0x18uLL));
          v353[2] = vmlaq_f32(v353[2], v355[2], vcvtq_n_f32_s32(vqtbl1q_s8(v356, xmmword_19D475340), 0x18uLL));
          v353[3] = v359;
          *v353 = v358;
          v353[1] = v357;
          v353 += 4;
          v355 += 4;
          v352 -= 16;
        }

        while (v352);
        if (v127 == v123)
        {
          goto LABEL_82;
        }

        if ((v123 & 0xC) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v127 = 0;
      }

      v360 = v127;
      v127 = v123 & 0x7FFFFFFC;
      v361 = (v124 + 4 * v360);
      v362 = (v125 + v360);
      v363 = (v126 + 4 * v360);
      v364 = v360 - v127;
      do
      {
        v365 = *v361++;
        v366 = v365;
        v365.i32[0] = *v362++;
        v75.i32[0] = v365.i32[0];
        v75 = vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_19D475360), 0x18uLL);
        *v363 = vmlaq_f32(*v363, v366, v75);
        ++v363;
        v364 += 4;
      }

      while (v364);
      if (v127 != v123)
      {
        goto LABEL_80;
      }

LABEL_82:
      if (v11)
      {
        v136 = *(*(a1 + 472) + 8 * v607);
        v137 = *(*(a1 + 888) + 8 * v607);
        v138 = **(a1 + 2576);
        if (v123 < 4)
        {
          v139 = 0;
          goto LABEL_85;
        }

        v139 = 0;
        v344 = v126 + 4 * v123;
        v346 = v126 < v138 + v123 && v138 < v344;
        v347 = v137 >= v344 || v126 >= v137 + 4 * v123;
        if (!v347 || v346)
        {
          goto LABEL_85;
        }

        if (v123 < 0x10)
        {
          v139 = 0;
          goto LABEL_263;
        }

        v139 = v123 & 0x7FFFFFF0;
        v367 = v139;
        v368 = v126;
        v369 = **(a1 + 2576);
        v370 = *(*(a1 + 888) + 8 * v607);
        do
        {
          v75 = *v370;
          v371 = *v369++;
          v372 = vmlaq_f32(v368[1], v370[1], vcvtq_n_f32_s32(vqtbl1q_s8(v371, xmmword_19D475370), 0x18uLL));
          v373 = vmlaq_f32(*v368, *v370, vcvtq_n_f32_s32(vqtbl1q_s8(v371, xmmword_19D475360), 0x18uLL));
          v374 = vmlaq_f32(v368[3], v370[3], vcvtq_n_f32_s32(vqtbl1q_s8(v371, xmmword_19D475350), 0x18uLL));
          v368[2] = vmlaq_f32(v368[2], v370[2], vcvtq_n_f32_s32(vqtbl1q_s8(v371, xmmword_19D475340), 0x18uLL));
          v368[3] = v374;
          *v368 = v373;
          v368[1] = v372;
          v368 += 4;
          v370 += 4;
          v367 -= 16;
        }

        while (v367);
        if (v139 != v123)
        {
          if ((v123 & 0xC) == 0)
          {
            goto LABEL_85;
          }

LABEL_263:
          v375 = v139;
          v139 = v123 & 0x7FFFFFFC;
          v376 = (v137 + 4 * v375);
          v377 = (v138 + v375);
          v378 = (v126 + 4 * v375);
          v379 = v375 - v139;
          do
          {
            v380 = *v376++;
            v381 = v380;
            v380.i32[0] = *v377++;
            v75.i32[0] = v380.i32[0];
            v75 = vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_19D475360), 0x18uLL);
            *v378 = vmlaq_f32(*v378, v381, v75);
            ++v378;
            v379 += 4;
          }

          while (v379);
          if (v139 != v123)
          {
LABEL_85:
            v140 = v123 - v139;
            v141 = (v126 + 4 * v139);
            v142 = (v138 + v139);
            v143 = (v137 + 4 * v139);
            do
            {
              v144 = *v143++;
              v145 = v144;
              v146 = *v142++;
              *v141 = *v141 + (v145 * v146);
              ++v141;
              --v140;
            }

            while (v140);
          }
        }

        v147 = *(*(a1 + 912) + 8 * v607);
        v148 = **(a1 + 2568);
        if (v123 < 4)
        {
          v149 = 0;
          goto LABEL_89;
        }

        v149 = 0;
        v348 = v126 + 4 * v123;
        v350 = v126 < v148 + v123 && v148 < v348;
        v351 = v147 >= v348 || v126 >= v147 + 4 * v123;
        if (!v351 || v350)
        {
          goto LABEL_89;
        }

        if (v123 < 0x10)
        {
          v149 = 0;
          goto LABEL_271;
        }

        v149 = v123 & 0x7FFFFFF0;
        v382 = v149;
        v383 = v126;
        v384 = **(a1 + 2568);
        v385 = *(*(a1 + 912) + 8 * v607);
        do
        {
          v75 = *v385;
          v386 = *v384++;
          v387 = vmlaq_f32(v383[1], v385[1], vcvtq_n_f32_s32(vqtbl1q_s8(v386, xmmword_19D475370), 0x18uLL));
          v388 = vmlaq_f32(*v383, *v385, vcvtq_n_f32_s32(vqtbl1q_s8(v386, xmmword_19D475360), 0x18uLL));
          v389 = vmlaq_f32(v383[3], v385[3], vcvtq_n_f32_s32(vqtbl1q_s8(v386, xmmword_19D475350), 0x18uLL));
          v383[2] = vmlaq_f32(v383[2], v385[2], vcvtq_n_f32_s32(vqtbl1q_s8(v386, xmmword_19D475340), 0x18uLL));
          v383[3] = v389;
          *v383 = v388;
          v383[1] = v387;
          v383 += 4;
          v385 += 4;
          v382 -= 16;
        }

        while (v382);
        if (v149 != v123)
        {
          if ((v123 & 0xC) == 0)
          {
            goto LABEL_89;
          }

LABEL_271:
          v390 = v149;
          v149 = v123 & 0x7FFFFFFC;
          v391 = (v147 + 4 * v390);
          v392 = (v148 + v390);
          v393 = (v126 + 4 * v390);
          v394 = v390 - v149;
          do
          {
            v395 = *v391++;
            v396 = v395;
            v395.i32[0] = *v392++;
            v75.i32[0] = v395.i32[0];
            v75 = vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_19D475360), 0x18uLL);
            *v393 = vmlaq_f32(*v393, v396, v75);
            ++v393;
            v394 += 4;
          }

          while (v394);
          if (v149 != v123)
          {
LABEL_89:
            v150 = v123 - v149;
            v151 = (v126 + 4 * v149);
            v152 = (v148 + v149);
            v153 = (v147 + 4 * v149);
            do
            {
              v154 = *v153++;
              v155 = v154;
              v156 = *v152++;
              *v151 = *v151 + (v155 * v156);
              ++v151;
              --v150;
            }

            while (v150);
          }
        }

        v157 = v123 >> 3;
        v158 = (v122 + 8 * v607);
        if (v123 >= 8)
        {
          v159 = 0;
          v160 = *v158;
          do
          {
            v161 = (v126 + 32 * v159);
            v162 = (v136 + 32 * v159);
            v163 = (v160 + 32 * v159);
            v164 = vmlaq_f32(v161[1], v162[1], v163[1]);
            *v161 = vmlaq_f32(*v161, *v162, *v163);
            v161[1] = v164;
            ++v159;
          }

          while ((v123 >> 3) != v159);
        }

        v165 = 8 * v157;
        if ((8 * v157) >= v123)
        {
          goto LABEL_116;
        }

LABEL_98:
        v167 = *v158;
        v168 = *(v122 + 8 * v14);
        v169 = v165;
        v170 = v123 - v165;
        if (v170 <= 7)
        {
          goto LABEL_114;
        }

        v171 = 4 * v165;
        v172 = v168 + 4 * v123;
        v173 = v168 + v171 >= (v136 + 4 * v123) || v136 + 4 * v165 >= v172;
        v174 = !v173;
        if (v167 + v171 < v172 && v168 + v171 < (v167 + 4 * v123))
        {
          goto LABEL_114;
        }

        if (v174)
        {
          goto LABEL_114;
        }

        v176 = v170 - (v123 & 7) + v169;
        v177 = v169 + (v123 & 7) - v123;
        v178 = (v168 + v171 + 16);
        v179 = (v167 + v171 + 16);
        v180 = (v136 + v171 + 16);
        do
        {
          v181 = vmlaq_f32(*v178, *v180, *v179);
          v178[-1] = vmlaq_f32(v178[-1], v180[-1], v179[-1]);
          *v178 = v181;
          v178 += 2;
          v179 += 2;
          v180 += 2;
          v177 += 8;
        }

        while (v177);
        v169 = v176;
        if ((v123 & 7) != 0)
        {
LABEL_114:
          v182 = v123 - v169;
          v183 = (v168 + 4 * v169);
          v184 = (v136 + 4 * v169);
          v185 = (v167 + 4 * v169);
          do
          {
            v186 = *v185++;
            v187 = v186;
            v188 = *v184++;
            *v183 = *v183 + (v188 * v187);
            ++v183;
            --v182;
          }

          while (v182);
        }
      }

LABEL_116:
      LODWORD(v123) = *(a1 + 52);
      v122 = *(a1 + 960);
LABEL_117:
      v189 = *(a1 + 936);
      v190 = 4 * v123;
      bzero(*(v189 + 8 * v14), v190);
      v191 = v123 / 8;
      if (v123 >= 8)
      {
        v192 = *(v189 + 8 * v14);
        v193 = *(v122 + 8 * v14);
        v194 = v123 / 8;
        v195 = v608;
        v196 = *v613;
        do
        {
          v197 = *v196;
          v198 = v196[1];
          v196 += 2;
          v199 = *v193;
          v200 = v193[1];
          v193 += 2;
          v201 = vmulq_f32(v200, v198);
          v202 = vmulq_f32(v199, v197);
          v204 = *v195;
          v203 = v195[1];
          v195 += 2;
          v205 = vmlaq_f32(v192[1], v201, v203);
          *v192 = vmlaq_f32(*v192, v202, v204);
          v192[1] = v205;
          v192 += 2;
          --v194;
        }

        while (v194);
      }

      v206 = 8 * v191;
      if (8 * v191 < v123)
      {
        v207 = *(v122 + 8 * v14);
        v208 = *v613;
        v209 = *(v189 + 8 * v14);
        v210 = v206;
        v211 = v123 - v206;
        if (v211 <= 7)
        {
          goto LABEL_144;
        }

        v212 = 4 * v206;
        v213 = v209 + v212;
        v214 = v209 + v190;
        v215 = v209 + v212 >= v207 + v190 || v207 + v212 >= v214;
        v216 = !v215;
        v217 = v213 >= v608 + v190 || v608->u64 + 4 * v210 >= v214;
        v218 = !v217;
        if (v208 + v212 < v214 && v213 < v208 + v190)
        {
          goto LABEL_144;
        }

        if (v216)
        {
          goto LABEL_144;
        }

        if (v218)
        {
          goto LABEL_144;
        }

        v220 = v211 - (v123 & 7) + v210;
        v221 = v210 + (v123 & 7) - v123;
        v222 = (v209 + v212 + 16);
        v223 = (v208 + v212 + 16);
        v224 = (v608 + v212 + 16);
        v225 = (v207 + v212 + 16);
        do
        {
          v226 = vmlaq_f32(*v222, vmulq_f32(*v225, *v223), *v224);
          v222[-1] = vmlaq_f32(v222[-1], vmulq_f32(v225[-1], v223[-1]), v224[-1]);
          *v222 = v226;
          v222 += 2;
          v223 += 2;
          v224 += 2;
          v225 += 2;
          v221 += 8;
        }

        while (v221);
        v210 = v220;
        if ((v123 & 7) != 0)
        {
LABEL_144:
          v227 = v123 - v210;
          v228 = (v209 + 4 * v210);
          v229 = &v608->f32[v210];
          v230 = (v207 + 4 * v210);
          v231 = &v208->f32[v210];
          do
          {
            v232 = *v231++;
            v233 = v232;
            v234 = *v230++;
            v235 = v234;
            v236 = *v229++;
            *v228 = *v228 + ((v235 * v233) * v236);
            ++v228;
            --v227;
          }

          while (v227);
        }
      }

      if (v128)
      {
        v237 = *(a1 + 888);
        v238 = *(a1 + 960);
        v239 = *(a1 + 88);
        v240 = *(a1 + 52);
        v241 = 4 * v240;
        bzero(*(v237 + 8 * v14), 4 * v240);
        v242 = v240 / 8;
        if (v240 >= 8)
        {
          v243 = *(v237 + 8 * v14);
          v244 = *(v239 + 8 * v605);
          v245 = v240 / 8;
          v246 = *(v238 + 8 * v14);
          v247 = *v606;
          do
          {
            v248 = *v247;
            v249 = v247[1];
            v247 += 2;
            v250 = *v246;
            v251 = v246[1];
            v246 += 2;
            v252 = vmulq_f32(v251, v249);
            v253 = vmulq_f32(v250, v248);
            v255 = *v244;
            v254 = v244[1];
            v244 += 2;
            v256 = vmlaq_f32(v243[1], v252, v254);
            *v243 = vmlaq_f32(*v243, v253, v255);
            v243[1] = v256;
            v243 += 2;
            --v245;
          }

          while (v245);
        }

        v257 = 8 * v242;
        if (8 * v242 < v240)
        {
          v258 = *(v238 + 8 * v14);
          v259 = *(v239 + 8 * v605);
          v260 = *v606;
          v261 = *(v237 + 8 * v14);
          v262 = v257;
          v263 = v240 - v257;
          if (v263 <= 7)
          {
            goto LABEL_174;
          }

          v264 = 4 * v257;
          v265 = v261 + v264;
          v266 = v261 + v241;
          v267 = v261 + v264 >= (v258 + v241) || v258 + v264 >= v266;
          v268 = !v267;
          v269 = v265 >= v259 + v241 || v259 + 4 * v262 >= v266;
          v270 = !v269;
          if (v260 + v264 < v266 && v265 < v260 + v241)
          {
            goto LABEL_174;
          }

          if (v268)
          {
            goto LABEL_174;
          }

          if (v270)
          {
            goto LABEL_174;
          }

          v272 = v263 - (v240 & 7) + v262;
          v273 = v262 + (v240 & 7) - v240;
          v274 = (v261 + v264 + 16);
          v275 = (v260 + v264 + 16);
          v276 = (v259 + v264 + 16);
          v277 = (v258 + v264 + 16);
          do
          {
            v278 = vmlaq_f32(*v274, vmulq_f32(*v277, *v275), *v276);
            v274[-1] = vmlaq_f32(v274[-1], vmulq_f32(v277[-1], v275[-1]), v276[-1]);
            *v274 = v278;
            v274 += 2;
            v275 += 2;
            v276 += 2;
            v277 += 2;
            v273 += 8;
          }

          while (v273);
          v262 = v272;
          if ((v240 & 7) != 0)
          {
LABEL_174:
            v279 = v240 - v262;
            v280 = (v261 + 4 * v262);
            v281 = (v259 + 4 * v262);
            v282 = (v258 + 4 * v262);
            v283 = &v260->f32[v262];
            do
            {
              v284 = *v283++;
              v285 = v284;
              v286 = *v282++;
              v287 = v286;
              v288 = *v281++;
              *v280 = *v280 + ((v287 * v285) * v288);
              ++v280;
              --v279;
            }

            while (v279);
          }
        }
      }

      v289 = *(a1 + 912);
      v290 = *(a1 + 960);
      v291 = *(a1 + 52);
      v292 = 4 * v291;
      bzero(*(v289 + 8 * v14), 4 * v291);
      v293 = v291 / 8;
      v6 = v603;
      if (v291 >= 8)
      {
        v294 = *(v289 + 8 * v14);
        v295 = *v7;
        v296 = *(v290 + 8 * v14);
        v297 = v291 / 8;
        v298 = *v603;
        do
        {
          v299 = *v298;
          v300 = v298[1];
          v298 += 2;
          v301 = *v296;
          v302 = v296[1];
          v296 += 2;
          v303 = vmulq_f32(v302, v300);
          v304 = vmulq_f32(v301, v299);
          v306 = *v295;
          v305 = *(v295 + 4);
          v295 += 8;
          v307 = vmlaq_f32(v294[1], v303, v305);
          *v294 = vmlaq_f32(*v294, v304, v306);
          v294[1] = v307;
          v294 += 2;
          --v297;
        }

        while (v297);
      }

      v308 = 8 * v293;
      if (8 * v293 < v291)
      {
        v309 = *v603;
        v310 = *(v290 + 8 * v14);
        v311 = *v7;
        v312 = *(v289 + 8 * v14);
        v313 = v308;
        v314 = v291 - v308;
        if (v314 <= 7)
        {
          goto LABEL_203;
        }

        v315 = 4 * v308;
        v316 = v312 + v315;
        v317 = v312 + v292;
        v318 = v312 + v315 >= (v310 + v292) || v310 + v315 >= v317;
        v319 = !v318;
        v320 = v316 >= &v311[v292 / 4] || &v311[v313] >= v317;
        v321 = !v320;
        if (v309 + v315 < v317 && v316 < v309 + v292)
        {
          goto LABEL_203;
        }

        if (v319)
        {
          goto LABEL_203;
        }

        if (v321)
        {
          goto LABEL_203;
        }

        v323 = v314 - (v291 & 7) + v313;
        v324 = v313 + (v291 & 7) - v291;
        v325 = (v312 + v315 + 16);
        v326 = (v309 + v315 + 16);
        v327 = &v311[v315 / 4 + 4];
        v328 = (v310 + v315 + 16);
        do
        {
          v329 = vmlaq_f32(*v325, vmulq_f32(*v328, *v326), *v327);
          v325[-1] = vmlaq_f32(v325[-1], vmulq_f32(v328[-1], v326[-1]), v327[-1]);
          *v325 = v329;
          v325 += 2;
          v326 += 2;
          v327 += 2;
          v328 += 2;
          v324 += 8;
        }

        while (v324);
        v313 = v323;
        if ((v291 & 7) != 0)
        {
LABEL_203:
          v330 = v291 - v313;
          v331 = (v312 + 4 * v313);
          v332 = &v311[v313];
          v333 = (v310 + 4 * v313);
          v334 = &v309->f32[v313];
          do
          {
            v335 = *v334++;
            v336 = v335;
            v337 = *v333++;
            v338 = v337;
            v339 = *v332++;
            *v331 = *v331 + ((v338 * v336) * v339);
            ++v331;
            --v330;
          }

          while (v330);
        }
      }

      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 816) + 8 * v14), 4 * *(a1 + 48));
        sub_19D32D178((*(a1 + 816) + v15), (*(a1 + 912) + v15), *(a1 + 2504), *(a1 + 52), *(a1 + 48), 0.0);
        if (v128)
        {
          sub_19D32D178((*(a1 + 816) + v15), (*(a1 + 888) + v15), *(a1 + 2512), *(a1 + 52), *(a1 + 48), 1.0);
        }

        sub_19D32D178((*(a1 + 816) + v15), (*(a1 + 864) + v15), *(a1 + 2520), *(a1 + 52), *(a1 + 48), 1.0);
        sub_19D32D178((*(a1 + 816) + v15), (*(a1 + 936) + v15), *(a1 + 2528), *(a1 + 52), *(a1 + 48), 1.0);
      }

      v8 = v610 - 1;
    }

    while (v610 > 0);
  }

  v397 = *(a1 + 52);
  if (v397 > 0)
  {
    v398 = 4 * v397;
    bzero(*(a1 + 1528), 4 * v397);
    v399 = (a1 + 1536);
    bzero(*(a1 + 1536), v398);
    v400 = (a1 + 1544);
    bzero(*(a1 + 1544), v398);
    v401 = a3;
    if (*(a1 + 56) <= 0)
    {
      goto LABEL_278;
    }

    goto LABEL_277;
  }

  v399 = (a1 + 1536);
  v400 = (a1 + 1544);
  v401 = a3;
  if (*(a1 + 56) > 0)
  {
LABEL_277:
    *(a1 + 1000) = 0;
    *(a1 + 1240) = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1360) = 0;
  }

LABEL_278:
  if (a5 > 1)
  {
    v402 = 1;
    do
    {
      v406 = v616 - v402;
      if (*(a1 + 2672))
      {
        v407 = a5 - 2;
      }

      else
      {
        v406 = v402;
        v407 = 1;
      }

      if (*(a1 + 2672))
      {
        v408 = v406 + 1;
      }

      else
      {
        v408 = v406 - 1;
      }

      v409 = *(a1 + 912);
      v410 = *(a1 + 88);
      v411 = *(a1 + 52);
      v412 = v411 / 8;
      if (v411 >= 8)
      {
        v413 = *(a1 + 1528);
        v414 = *(v410 + 8 * v408);
        v415 = v411 / 8;
        v416 = *(v409 + 8 * v406);
        do
        {
          v418 = *v416;
          v417 = v416[1];
          v416 += 2;
          v420 = *v414;
          v419 = v414[1];
          v414 += 2;
          v421 = vmlaq_f32(v413[1], v419, v417);
          *v413 = vmlaq_f32(*v413, v420, v418);
          v413[1] = v421;
          v413 += 2;
          --v415;
        }

        while (v415);
      }

      v422 = 8 * v412;
      if (8 * v412 < v411)
      {
        v423 = *(v409 + 8 * v406);
        v424 = *(v410 + 8 * v408);
        v425 = *(a1 + 1528);
        v426 = v422;
        v427 = v411 - v422;
        if (v427 <= 7)
        {
          goto LABEL_307;
        }

        v428 = 4 * v422;
        v429 = v425 + 4 * v411;
        v430 = v425 + v428 >= (v424 + 4 * v411) || v424 + 4 * v422 >= v429;
        v431 = !v430;
        if (v423 + v428 < v429 && v425 + v428 < (v423 + 4 * v411))
        {
          goto LABEL_307;
        }

        if (v431)
        {
          goto LABEL_307;
        }

        v433 = v427 - (v411 & 7) + v426;
        v434 = v426 + (v411 & 7) - v411;
        v435 = (v425 + v428 + 16);
        v436 = (v423 + v428 + 16);
        v437 = (v424 + v428 + 16);
        do
        {
          v438 = vmlaq_f32(*v435, *v437, *v436);
          v435[-1] = vmlaq_f32(v435[-1], v437[-1], v436[-1]);
          *v435 = v438;
          v435 += 2;
          v436 += 2;
          v437 += 2;
          v434 += 8;
        }

        while (v434);
        v426 = v433;
        if ((v411 & 7) != 0)
        {
LABEL_307:
          v439 = v411 - v426;
          v440 = (v425 + 4 * v426);
          v441 = (v424 + 4 * v426);
          v442 = (v423 + 4 * v426);
          do
          {
            v443 = *v442++;
            v444 = v443;
            v445 = *v441++;
            *v440 = *v440 + (v445 * v444);
            ++v440;
            --v439;
          }

          while (v439);
        }
      }

      v446 = *(a1 + 888);
      v447 = *(a1 + 88);
      v448 = *(a1 + 52);
      v449 = v448 / 8;
      if (v448 >= 8)
      {
        v450 = *v399;
        v451 = *(v447 + 8 * v408);
        v452 = v448 / 8;
        v453 = *(v446 + 8 * v406);
        do
        {
          v455 = *v453;
          v454 = v453[1];
          v453 += 2;
          v457 = *v451;
          v456 = v451[1];
          v451 += 2;
          v458 = vmlaq_f32(v450[1], v456, v454);
          *v450 = vmlaq_f32(*v450, v457, v455);
          v450[1] = v458;
          v450 += 2;
          --v452;
        }

        while (v452);
      }

      v459 = 8 * v449;
      if (8 * v449 < v448)
      {
        v460 = *(v446 + 8 * v406);
        v461 = *(v447 + 8 * v408);
        v462 = *v399;
        v463 = v459;
        v464 = v448 - v459;
        if (v464 <= 7)
        {
          goto LABEL_329;
        }

        v465 = 4 * v459;
        v466 = v462->u64 + 4 * v448;
        v467 = v462 + v465 >= v461 + 4 * v448 || v461 + 4 * v459 >= v466;
        v468 = !v467;
        if (v460 + v465 < v466 && v462 + v465 < v460 + 4 * v448)
        {
          goto LABEL_329;
        }

        if (v468)
        {
          goto LABEL_329;
        }

        v470 = v464 - (v448 & 7) + v463;
        v471 = v463 + (v448 & 7) - v448;
        v472 = (v462 + v465 + 16);
        v473 = (v460 + v465 + 16);
        v474 = (v461 + v465 + 16);
        do
        {
          v475 = vmlaq_f32(*v472, *v474, *v473);
          v472[-1] = vmlaq_f32(v472[-1], v474[-1], v473[-1]);
          *v472 = v475;
          v472 += 2;
          v473 += 2;
          v474 += 2;
          v471 += 8;
        }

        while (v471);
        v463 = v470;
        if ((v448 & 7) != 0)
        {
LABEL_329:
          v476 = v448 - v463;
          v477 = &v462->f32[v463];
          v478 = (v461 + 4 * v463);
          v479 = (v460 + 4 * v463);
          do
          {
            v480 = *v479++;
            v481 = v480;
            v482 = *v478++;
            *v477 = *v477 + (v482 * v481);
            ++v477;
            --v476;
          }

          while (v476);
        }
      }

      v403 = v406 == v407;
      v404 = 8 * v406;
      v405 = 8 * v408;
      sub_19D30A868(*(a1 + 64) + v404, *(a1 + 912) + v404, *(a1 + 112) + 8 * v408, (a1 + 1496), *(a1 + 52), *(a1 + 52), v403);
      sub_19D30A868(*(a1 + 64) + v404, *(a1 + 888) + v404, *(a1 + 112) + v405, (a1 + 1504), *(a1 + 52), *(a1 + 52), v403);
      sub_19D30A868(*(a1 + 64) + v404, *(a1 + 864) + v404, *(a1 + 112) + v405, (a1 + 1512), *(a1 + 52), *(a1 + 52), v403);
      sub_19D30A868(*(a1 + 64) + v404, *(a1 + 936) + v404, *(a1 + 112) + v405, (a1 + 1520), *(a1 + 52), *(a1 + 52), v403);
      ++v402;
    }

    while (v402 != a5);
    v483 = 1;
    v401 = a3;
    do
    {
      if (*(a1 + 2672))
      {
        v484 = v616 - v483;
      }

      else
      {
        v484 = v483;
      }

      if (*(a1 + 2672))
      {
        v485 = a5 - 2;
      }

      else
      {
        v485 = 1;
      }

      if (v401[1] == *v401 || *(a1 + 56) < 1 || !(**a1)(a1))
      {
        sub_19D30A868(*(a1 + 64) + 8 * v484, *(a1 + 888) + 8 * v484, *(a1 + 64) + 8 * v484, (a1 + 1472), *(a1 + 52), *(a1 + 48), v484 == v485);
      }

      else
      {
        v486 = (*(a1 + 208) + 24 * v484);
        v488 = *v486;
        v487 = v486[1];
        if (v487 != v488)
        {
          if (((v487 - v488) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_443;
        }

        v489 = *(a1 + 52);
        v401 = a3;
        if (v489 >= 1)
        {
          v490 = 0;
          v491 = *(*(a1 + 888) + 8 * v484);
          v492 = *(*(a1 + 1128) + 8 * *(a1 + 1120));
          if (v489 < 8)
          {
            goto LABEL_353;
          }

          if ((v492 - v491) < 0x20)
          {
            goto LABEL_353;
          }

          v490 = v489 & 0x7FFFFFF8;
          v493 = (v491 + 16);
          v494 = (v492 + 16);
          v495 = v490;
          do
          {
            v496 = *v493;
            *(v494 - 1) = *(v493 - 1);
            *v494 = v496;
            v493 += 2;
            v494 += 2;
            v495 -= 8;
          }

          while (v495);
          if (v490 != v489)
          {
LABEL_353:
            v497 = v489 - v490;
            v498 = 4 * v490;
            v499 = (v492 + 4 * v490);
            v500 = (v491 + v498);
            do
            {
              v501 = *v500++;
              *v499++ = v501;
              --v497;
            }

            while (v497);
          }
        }

        if (*(a1 + 1116) < 1)
        {
          ++*(a1 + 1120);
        }

        else
        {
          v502 = 0;
          v503 = *(a1 + 1152);
          do
          {
            *(*(v503 + 24 * *(a1 + 1120)) + 4 * v502) = *(4 * v502);
            ++v502;
          }

          while (v502 < *(a1 + 1116));
          ++*(a1 + 1120);
          operator delete(0);
        }
      }

      ++v483;
    }

    while (v483 != a5);
  }

  if (a5 >= 1)
  {
    v504 = 0;
    while (1)
    {
      v508 = v616 - v504;
      if (*(a1 + 2672))
      {
        v509 = v616;
      }

      else
      {
        v508 = v504;
        v509 = 0;
      }

      v510 = v508;
      v511 = *(a1 + 864);
      v512 = *(a1 + 88);
      v513 = *(a1 + 52);
      v514 = v513 / 8;
      if (v513 >= 8)
      {
        v515 = *v400;
        v516 = *(v512 + 8 * v510);
        v517 = v513 / 8;
        v518 = *(v511 + 8 * v510);
        do
        {
          v520 = *v518;
          v519 = v518[1];
          v518 += 2;
          v522 = *v516;
          v521 = v516[1];
          v516 += 2;
          v523 = vmlaq_f32(v515[1], v521, v519);
          *v515 = vmlaq_f32(*v515, v522, v520);
          v515[1] = v523;
          v515 += 2;
          --v517;
        }

        while (v517);
      }

      v524 = 8 * v514;
      if (8 * v514 < v513)
      {
        v525 = *(v511 + 8 * v510);
        v526 = *(v512 + 8 * v510);
        v527 = *v400;
        v528 = v524;
        v529 = v513 - v524;
        if (v529 <= 7)
        {
          goto LABEL_388;
        }

        v530 = 4 * v524;
        v531 = v527->u64 + 4 * v513;
        v532 = v527 + v530 >= v526 + 4 * v513 || v526 + 4 * v524 >= v531;
        v533 = !v532;
        if (v525 + v530 < v531 && v527 + v530 < v525 + 4 * v513)
        {
          goto LABEL_388;
        }

        if (v533)
        {
          goto LABEL_388;
        }

        v535 = v529 - (v513 & 7) + v528;
        v536 = v528 + (v513 & 7) - v513;
        v537 = (v527 + v530 + 16);
        v538 = (v525 + v530 + 16);
        v539 = (v526 + v530 + 16);
        do
        {
          v540 = vmlaq_f32(*v537, *v539, *v538);
          v537[-1] = vmlaq_f32(v537[-1], v539[-1], v538[-1]);
          *v537 = v540;
          v537 += 2;
          v538 += 2;
          v539 += 2;
          v536 += 8;
        }

        while (v536);
        v528 = v535;
        if ((v513 & 7) != 0)
        {
LABEL_388:
          v541 = v513 - v528;
          v542 = &v527->f32[v528];
          v543 = (v526 + 4 * v528);
          v544 = (v525 + 4 * v528);
          do
          {
            v545 = *v544++;
            v546 = v545;
            v547 = *v543++;
            *v542 = *v542 + (v547 * v546);
            ++v542;
            --v541;
          }

          while (v541);
        }
      }

      if (v401[1] == *v401)
      {
        break;
      }

      v505 = *(a1 + 912);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_363;
      }

      v548 = (*(a1 + 208) + 24 * v510);
      v550 = *v548;
      v549 = v548[1];
      if (v549 != v550)
      {
        if (((v549 - v550) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_443;
      }

      v551 = *(a1 + 52);
      if (v551 >= 1)
      {
        v552 = 0;
        v553 = *(v505 + 8 * v510);
        v554 = *(*(a1 + 1008) + 8 * *(a1 + 1000));
        if (v551 < 8)
        {
          goto LABEL_401;
        }

        if ((v554 - v553) < 0x20)
        {
          goto LABEL_401;
        }

        v552 = v551 & 0x7FFFFFF8;
        v555 = (v553 + 16);
        v556 = (v554 + 16);
        v557 = v552;
        do
        {
          v558 = *v555;
          *(v556 - 1) = *(v555 - 1);
          *v556 = v558;
          v555 += 2;
          v556 += 2;
          v557 -= 8;
        }

        while (v557);
        if (v552 != v551)
        {
LABEL_401:
          v559 = v551 - v552;
          v560 = 4 * v552;
          v561 = (v554 + 4 * v552);
          v562 = (v553 + v560);
          do
          {
            v563 = *v562++;
            *v561++ = v563;
            --v559;
          }

          while (v559);
        }
      }

      if (*(a1 + 996) < 1)
      {
        ++*(a1 + 1000);
      }

      else
      {
        v564 = 0;
        v565 = *(a1 + 1032);
        do
        {
          *(*(v565 + 24 * *(a1 + 1000)) + 4 * v564) = *(4 * v564);
          ++v564;
        }

        while (v564 < *(a1 + 996));
        ++*(a1 + 1000);
        operator delete(0);
      }

      v566 = (*(a1 + 208) + 24 * v510);
      v568 = *v566;
      v567 = v566[1];
      if (v567 != v568)
      {
        if (((v567 - v568) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_443;
      }

      v569 = *(a1 + 52);
      if (v569 >= 1)
      {
        v570 = 0;
        v571 = *(*(a1 + 864) + 8 * v510);
        v572 = *(*(a1 + 1248) + 8 * *(a1 + 1240));
        if (v569 < 8)
        {
          goto LABEL_417;
        }

        if ((v572 - v571) < 0x20)
        {
          goto LABEL_417;
        }

        v570 = v569 & 0x7FFFFFF8;
        v573 = (v571 + 16);
        v574 = (v572 + 16);
        v575 = v570;
        do
        {
          v576 = *v573;
          *(v574 - 1) = *(v573 - 1);
          *v574 = v576;
          v573 += 2;
          v574 += 2;
          v575 -= 8;
        }

        while (v575);
        if (v570 != v569)
        {
LABEL_417:
          v577 = v569 - v570;
          v578 = 4 * v570;
          v579 = (v572 + 4 * v570);
          v580 = (v571 + v578);
          do
          {
            v581 = *v580++;
            *v579++ = v581;
            --v577;
          }

          while (v577);
        }
      }

      if (*(a1 + 1236) < 1)
      {
        ++*(a1 + 1240);
      }

      else
      {
        v582 = 0;
        v583 = *(a1 + 1272);
        do
        {
          *(*(v583 + 24 * *(a1 + 1240)) + 4 * v582) = *(4 * v582);
          ++v582;
        }

        while (v582 < *(a1 + 1236));
        ++*(a1 + 1240);
        operator delete(0);
      }

      v584 = (*(a1 + 208) + 24 * v510);
      v586 = *v584;
      v585 = v584[1];
      if (v585 != v586)
      {
        if (((v585 - v586) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_443:
        sub_19D2AE2B4();
      }

      v587 = *(a1 + 52);
      v401 = a3;
      if (v587 >= 1)
      {
        v588 = 0;
        v589 = *(*(a1 + 936) + 8 * v510);
        v590 = *(*(a1 + 1368) + 8 * *(a1 + 1360));
        if (v587 < 8)
        {
          goto LABEL_433;
        }

        if ((v590 - v589) < 0x20)
        {
          goto LABEL_433;
        }

        v588 = v587 & 0x7FFFFFF8;
        v591 = (v589 + 16);
        v592 = (v590 + 16);
        v593 = v588;
        do
        {
          v594 = *v591;
          *(v592 - 1) = *(v591 - 1);
          *v592 = v594;
          v591 += 2;
          v592 += 2;
          v593 -= 8;
        }

        while (v593);
        if (v588 != v587)
        {
LABEL_433:
          v595 = v587 - v588;
          v596 = 4 * v588;
          v597 = (v590 + 4 * v588);
          v598 = (v589 + v596);
          do
          {
            v599 = *v598++;
            *v597++ = v599;
            --v595;
          }

          while (v595);
        }
      }

      if (*(a1 + 1356) < 1)
      {
        ++*(a1 + 1360);
      }

      else
      {
        v600 = 0;
        v601 = *(a1 + 1392);
        do
        {
          *(*(v601 + 24 * *(a1 + 1360)) + 4 * v600) = *(4 * v600);
          ++v600;
        }

        while (v600 < *(a1 + 1356));
        ++*(a1 + 1360);
        operator delete(0);
      }

LABEL_364:
      if (++v504 == a5)
      {
        return;
      }
    }

    v505 = *(a1 + 912);
LABEL_363:
    v506 = v510 == v509;
    v507 = 8 * v510;
    sub_19D30A868(*(a1 + 64) + 8 * v510, v505 + 8 * v510, *(a1 + 64) + 8 * v510, (a1 + 1464), *(a1 + 52), *(a1 + 48), v506);
    sub_19D30A868(*(a1 + 64) + v507, *(a1 + 864) + v507, *(a1 + 64) + v507, (a1 + 1480), *(a1 + 52), *(a1 + 48), v506);
    sub_19D30A868(*(a1 + 64) + v507, *(a1 + 936) + v507, *(a1 + 64) + v507, (a1 + 1488), *(a1 + 52), *(a1 + 48), v506);
    goto LABEL_364;
  }
}