__n128 sub_109CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = (a4 - 2) >> 1;
  v5 = a1 + 96 * v4;
  v6 = 0x7FFFFFFF;
  v7 = *(v5 + 44) == -1 || *(v5 + 48) == 0x7FFFFFFF;
  if (!v7)
  {
    v8 = *(v5 + 52);
    if (v8 == -1)
    {
      goto LABEL_9;
    }

    v9 = *(v5 + 56);
    if (v9 != 0x7FFFFFFF)
    {
      v8 += *(v5 + 44);
      v6 = v9 + *(v5 + 48);
      v10 = -1;
      v11 = 0x7FFFFFFF;
      if (*(a2 - 52) != -1)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  v8 = -1;
LABEL_9:
  v10 = -1;
  v11 = 0x7FFFFFFF;
  if (*(a2 - 52) != -1)
  {
LABEL_10:
    if (*(a2 - 48) != 0x7FFFFFFF)
    {
      v10 = *(a2 - 44);
      if (v10 != -1)
      {
        v12 = *(a2 - 40);
        if (v12 == 0x7FFFFFFF)
        {
          v10 = -1;
        }

        else
        {
          v10 += *(a2 - 52);
          v11 = v12 + *(a2 - 48);
        }
      }
    }
  }

LABEL_17:
  v13 = v6 < v11;
  v7 = v8 == v10;
  v14 = v8 < v10;
  if (!v7)
  {
    v13 = v14;
  }

  if (v13)
  {
    v15 = a2 - 96;
    v38 = *(a2 - 96);
    *v39 = *(a2 - 80);
    *&v39[12] = *(a2 - 68);
    v16 = *(a2 - 52);
    v17 = *(a2 - 44);
    v18 = *(a2 - 40);
    v36 = *(a2 - 36);
    v37 = *(a2 - 20);
    v21 = v16 == -1 || HIDWORD(v16) == 0x7FFFFFFF || v17 == -1 || v18 == 0x7FFFFFFF;
    v22 = v17 + v16;
    v23 = v18 + HIDWORD(v16);
    if (v21)
    {
      v23 = 0x7FFFFFFF;
      v22 = -1;
    }

    do
    {
      v28 = v15;
      v15 = v5;
      v29 = *(v5 + 16);
      *v28 = *v5;
      v28[1] = v29;
      v30 = *(v5 + 32);
      v31 = *(v5 + 48);
      v32 = *(v5 + 64);
      *(v28 + 76) = *(v5 + 76);
      v28[3] = v31;
      v28[4] = v32;
      v28[2] = v30;
      if (!v4)
      {
        break;
      }

      v4 = (v4 - 1) >> 1;
      v5 = a1 + 96 * v4;
      if (*(v5 + 44) == -1 || *(v5 + 48) == 0x7FFFFFFF)
      {
        v24 = -1;
        v25 = 0x7FFFFFFF;
      }

      else
      {
        v24 = *(v5 + 52);
        v25 = 0x7FFFFFFF;
        if (v24 != -1)
        {
          v34 = *(v5 + 56);
          if (v34 == 0x7FFFFFFF)
          {
            v24 = -1;
          }

          else
          {
            v24 += *(v5 + 44);
            v25 = v34 + *(v5 + 48);
          }
        }
      }

      v26 = v25 < v23;
      v7 = v24 == v22;
      v27 = v24 < v22;
      if (!v7)
      {
        v26 = v27;
      }
    }

    while (v26);
    *v15 = v38;
    *(v15 + 16) = *v39;
    *(v15 + 28) = *&v39[12];
    *(v15 + 44) = v16;
    *(v15 + 52) = v17;
    *(v15 + 56) = v18;
    result = v36;
    *(v15 + 60) = v36;
    *(v15 + 76) = v37;
  }

  return result;
}

unint64_t sub_109CD74(uint64_t a1, unsigned int *a2, char a3)
{
  sub_2B7A20(a1, (((a2[1] & 0x10000000) << 20) | (a2[1] << 32) | *a2) ^ 0x1000000000000, v10);
  v4 = __p;
  if (__p == v12)
  {
    v6 = 0xFFFFFFFF00000000;
    v7 = 0xFFFFFFFFLL;
    if (!__p)
    {
      return v6 | v7;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    v5 = sub_31AA0C(v10);
  }

  else
  {
    v5 = sub_31A76C(v10);
  }

  v8 = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = __p;
  v7 = v8;
  if (__p)
  {
LABEL_8:
    v12 = v4;
    operator delete(v4);
  }

  return v6 | v7;
}

void sub_109CE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_109CE44@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_109D03C((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = v10[1] + 104 * v18;
      *v28 = *a2;
      *(v28 + 40) = 0u;
      *(v28 + 56) = 0u;
      *(v28 + 72) = 0u;
      *(v28 + 88) = 0u;
      *(v28 + 24) = 0u;
      *(v28 + 8) = 0u;
      *&v29.f64[0] = 0x8000000080000000;
      *&v29.f64[1] = 0x8000000080000000;
      v30 = vnegq_f64(v29);
      *(v28 + 48) = v30;
      *(v28 + 64) = v30;
      *(v28 + 80) = xmmword_2266550;
      *(v28 + 96) = 0x7FFFFFFF;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 104 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 104 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

unint64_t sub_109D03C(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_109D134(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_109D134(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_109D164();
  }

  return sub_109D388(a1);
}

uint64_t sub_109D388(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 104 * i);
        v19 = *v18;
        LODWORD(v18) = v18[1];
        v20 = 0x2127599BF4325C37 * ((((v19 << 32) + 16 * v18) | (v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v18 >> 25) & 8) ^ (((v19 << 32) + 16 * v18) >> 23));
        v21 = (v20 ^ ~(v20 >> 47)) + ((v20 ^ (v20 >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = v28 + 104 * v16;
            v30 = (v28 + 104 * i);
            v31 = *v30;
            v32 = v30[2];
            *(v29 + 16) = v30[1];
            *(v29 + 32) = v32;
            *v29 = v31;
            v33 = v30[3];
            v34 = v30[4];
            v35 = v30[5];
            *(v29 + 96) = *(v30 + 12);
            *(v29 + 64) = v34;
            *(v29 + 80) = v35;
            *(v29 + 48) = v33;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v36 = (v28 + 104 * i);
            v51 = v36[4];
            v52 = v36[5];
            v53 = *(v36 + 12);
            v47 = *v36;
            v48 = v36[1];
            v49 = v36[2];
            v50 = v36[3];
            v37 = (v28 + 104 * v16);
            v39 = v37[1];
            v38 = v37[2];
            *v36 = *v37;
            v36[1] = v39;
            v36[2] = v38;
            v41 = v37[4];
            v40 = v37[5];
            v42 = v37[3];
            *(v36 + 12) = *(v37 + 12);
            v36[4] = v41;
            v36[5] = v40;
            v36[3] = v42;
            v43 = *(result + 8) + 104 * v16;
            *v43 = v47;
            *(v43 + 16) = v48;
            *(v43 + 96) = v53;
            *(v43 + 64) = v51;
            *(v43 + 80) = v52;
            *(v43 + 32) = v49;
            *(v43 + 48) = v50;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v44 = i - (i >> 3);
    v45 = i == 7;
    v46 = 6;
    if (!v45)
    {
      v46 = v44;
    }
  }

  else
  {
    v46 = 0;
  }

  *(result + 40) = v46 - *(result + 16);
  return result;
}

void sub_109D72C()
{
  byte_27C15F7 = 3;
  LODWORD(qword_27C15E0) = 5136193;
  byte_27C160F = 3;
  LODWORD(qword_27C15F8) = 5136194;
  byte_27C1627 = 3;
  LODWORD(qword_27C1610) = 5136195;
  byte_27C163F = 15;
  strcpy(&qword_27C1628, "vehicle_mass_kg");
  byte_27C1657 = 21;
  strcpy(&xmmword_27C1640, "vehicle_cargo_mass_kg");
  byte_27C166F = 19;
  strcpy(&qword_27C1658, "vehicle_aux_power_w");
  byte_27C1687 = 15;
  strcpy(&qword_27C1670, "dcdc_efficiency");
  strcpy(&qword_27C1688, "drive_train_efficiency");
  HIBYTE(word_27C169E) = 22;
  operator new();
}

void sub_109D908(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C169E) < 0)
  {
    sub_21E703C();
  }

  sub_21E7048();
  _Unwind_Resume(a1);
}

void sub_109D998(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, void *a8@<X8>)
{
  sub_109DA78(a1, a2, a3, a4, a5, a6, a7, 0, &__p);
  sub_109E95C(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_109DA64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

void sub_109DA78(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  *(a1 + 3944) = 0;
  v12 = *(a1 + 3992);
  v13 = *(a1 + 3984);
  while (v12 != v13)
  {
    if (*(v12 - 1) < 0)
    {
      operator delete(*(v12 - 24));
    }

    v12 -= 32;
  }

  v79 = a4;
  *(a1 + 3992) = v13;
  __p[0] = 0;
  __p[1] = 0;
  locale = 0;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v102 = a2[3];
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v15 = a3[1] - *a3;
  if (!v15)
  {
LABEL_100:
    v103[0] = 0;
    v103[1] = 0;
    v104.__locale_ = 0;
    v70 = v79[1];
    if (v70 != *v79)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - *v79) >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v105[0] = v79[3];
    v94 = 0;
    v95 = 0;
    v93 = 0;
    __dst = &v93;
    LOBYTE(v91) = 0;
    operator new();
  }

  v16 = 0;
  v85 = v15 >> 5;
  v86 = a1;
  while (1)
  {
    ++v96;
    v17 = (*a3 + 32 * v16);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (a8 != 2)
    {
      v20 = *v17;
      v21 = v17[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_13;
        }

        v27 = v17[3];
        v28 = v94;
        if (v94 >= v95)
        {
          v34 = v93;
          v35 = (v94 - v93) >> 5;
          v36 = v35 + 1;
          if ((v35 + 1) >> 59)
          {
            sub_1794();
          }

          v37 = v95 - v93;
          if ((v95 - v93) >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v38 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v39 = (v94 - v93) >> 5;
          v40 = (32 * v35);
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v40[3] = v27;
          v41 = &v40[-4 * v39];
          if (v34 != v28)
          {
            v42 = v34;
            v43 = v41;
            do
            {
              *v43 = *v42;
              v43[2] = v42[2];
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v43[3] = v42[3];
              v42 += 4;
              v43 += 4;
            }

            while (v42 != v28);
            do
            {
              v44 = *v34;
              if (*v34)
              {
                v34[1] = v44;
                operator delete(v44);
              }

              v34 += 4;
            }

            while (v34 != v28);
            v34 = v93;
          }

          v29 = v40 + 4;
          v93 = v41;
          v94 = v40 + 4;
          v95 = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v94 = v40 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v40[1];
          v33 = v40[2];
          if (v32 < v33)
          {
LABEL_19:
            *v32 = v31;
            v22 = *v30;
            *(v32 + 24) = *(v30 + 1);
            *(v32 + 8) = v22;
            v23 = *(v30 + 2);
            v24 = *(v30 + 3);
            v25 = *(v30 + 4);
            *(v32 + 88) = v30[10];
            *(v32 + 72) = v25;
            *(v32 + 56) = v24;
            *(v32 + 40) = v23;
            v26 = v32 + 96;
            goto LABEL_20;
          }
        }

        else
        {
          *v94 = 0;
          v28[1] = 0;
          v29 = v28 + 4;
          v28[2] = 0;
          v28[3] = v27;
          v94 = v28 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v28[1];
          v33 = v28[2];
          if (v32 < v33)
          {
            goto LABEL_19;
          }
        }

        v45 = *(v29 - 4);
        v46 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v45) >> 5) + 1;
        if (v46 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v47 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v45) >> 5);
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        if (v47 >= 0x155555555555555)
        {
          v48 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (v48 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v49 = 32 * ((v32 - v45) >> 5);
        *v49 = v31;
        v50 = *v30;
        *(v49 + 24) = *(v30 + 1);
        *(v49 + 8) = v50;
        v51 = *(v30 + 2);
        v52 = *(v30 + 3);
        v53 = *(v30 + 4);
        *(v49 + 88) = v30[10];
        *(v49 + 72) = v53;
        *(v49 + 56) = v52;
        *(v49 + 40) = v51;
        v26 = v49 + 96;
        v54 = (v49 - (v32 - v45));
        memcpy(v54, v45, v32 - v45);
        *(v29 - 4) = v54;
        *(v29 - 3) = v26;
        *(v29 - 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }

LABEL_20:
        *(v29 - 3) = v26;
        v20 += 12;
      }
    }

    v94 = sub_1055A68(&v93, v17);
LABEL_13:
    v18 = sub_109EC68(v86, __p, &v93, a5, a6, a7, v98);
    if (!v18)
    {
      *(v86 + 3968) = 11;
      *(v86 + 3976) = &off_2669FE0;
      sub_109EFA8("Failed to compute a path including waypoint ", ".", v103);
      v55 = *(v86 + 3992);
      if (v55 >= *(v86 + 4000))
      {
        *(v86 + 3992) = sub_10A4308((v86 + 3984), v103);
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v55 = 0;
        v56 = (v55 + 8);
        if (SHIBYTE(v104.__locale_) < 0)
        {
          sub_325C(v56, v103[0], v103[1]);
        }

        else
        {
          v57 = *v103;
          *(v55 + 24) = v104;
          *v56 = v57;
        }

        *(v86 + 3992) = v55 + 32;
        *(v86 + 3992) = v55 + 32;
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
LABEL_61:
          *(v86 + 4008) = v96;
          *(v86 + 4010) = v97;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_90;
          }

          sub_19594F8(v103);
          sub_D166D4((*(v86 + 3992) - 32), &__dst);
          if ((v92 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v92 & 0x80u) == 0)
          {
            v59 = v92;
          }

          else
          {
            v59 = v91;
          }

          sub_4A5C(v103, p_dst, v59);
          if (v92 < 0)
          {
            operator delete(__dst);
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
LABEL_70:
              if ((v60 & 8) == 0)
              {
                v61 = 0;
                v92 = 0;
LABEL_85:
                *(&__dst + v61) = 0;
                sub_7E854(&__dst, 3u);
                if (v92 < 0)
                {
                  operator delete(__dst);
                }

                v103[0] = v83;
                *(v103 + *(v83 - 3)) = v82;
                if (v109 < 0)
                {
                  operator delete(v108);
                }

                std::locale::~locale(&v104);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_90:
                *a9 = 0;
                a9[1] = 0;
                a9[2] = 0;
                v19 = v93;
                if (!v93)
                {
                  goto LABEL_98;
                }

LABEL_91:
                v65 = v94;
                v66 = v19;
                if (v94 != v19)
                {
                  v67 = v94;
                  do
                  {
                    v69 = *(v67 - 4);
                    v67 -= 4;
                    v68 = v69;
                    if (v69)
                    {
                      *(v65 - 3) = v68;
                      operator delete(v68);
                    }

                    v65 = v67;
                  }

                  while (v67 != v19);
                  v66 = v93;
                }

                v94 = v19;
                operator delete(v66);
                goto LABEL_98;
              }

              v62 = v105[2];
              v63 = v105;
LABEL_79:
              v64 = *v63;
              v61 = v62 - *v63;
              if (v61 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v61 >= 0x17)
              {
                operator new();
              }

              v92 = v62 - *v63;
              if (v61)
              {
                memmove(&__dst, v64, v61);
              }

              goto LABEL_85;
            }
          }

          v62 = v110;
          v63 = &v106;
          if (v110 < v107)
          {
            v110 = v107;
            v62 = v107;
            v63 = &v106;
          }

          goto LABEL_79;
        }
      }

      operator delete(v103[0]);
      goto LABEL_61;
    }

    sub_109F25C(v98[1] - 3, a8, v103);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v103;
    locale = v104.__locale_;
    v102 = v105[0];
    v19 = v93;
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_98:
    if (!v18)
    {
      break;
    }

    if (++v16 == v85)
    {
      goto LABEL_100;
    }
  }

  v71 = v98[0];
  if (v98[0])
  {
    v72 = v98[1];
    v73 = v98[0];
    if (v98[1] != v98[0])
    {
      v74 = v98[1];
      do
      {
        v76 = *(v74 - 3);
        v74 -= 3;
        v75 = v76;
        if (v76)
        {
          v77 = *(v72 - 2);
          v78 = v75;
          if (v77 != v75)
          {
            do
            {
              v77 = sub_4547F0(v77 - 568);
            }

            while (v77 != v75);
            v78 = *v74;
          }

          *(v72 - 2) = v75;
          operator delete(v78);
        }

        v72 = v74;
      }

      while (v74 != v71);
      v73 = v98[0];
    }

    v98[1] = v71;
    operator delete(v73);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_109E81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a47);
  sub_109EBA4(&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void sub_109E95C(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3 || *(v3 - 24) == *(v3 - 16))
  {

    sub_F68960(a2);
  }

  else
  {
    sub_109F57C(a1, &__p);
    v5 = sub_109F744(a1, 0);
    v6 = sub_109FB7C(&__p, 0);
    v7 = sub_109F960(v5, *v6);
    sub_49D2CC(a2, v7);
    v8 = a1[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    if (v9 >= 2)
    {
      for (i = 1; i != v9; ++i)
      {
        v11 = sub_109F744(a1, i);
        v12 = sub_109FB7C(&__p, i);
        v13 = sub_109F960(v11, *v12);
        if (sub_F695B8(a2) && sub_F695B8(v13))
        {
          v14 = *sub_73F1C(a2);
          v15 = *sub_F69058(v13);
          v16 = sub_F69DE0(a2, 0);
          v17 = *(sub_F69DE0(v13, 0) + 32);
          if (__PAIR64__(*(v16 + 36), *(v16 + 32)) != __PAIR64__(WORD2(v17), v17) || *(v16 + 38) != BYTE6(v17) || v15 <= v14)
          {
            continue;
          }
        }

        sub_F6B1A0(a2, v13);
      }

      v8 = a1[1];
    }

    v18 = sub_109F960((v8 - 24), *(v27 - 1));
    v19 = sub_F69058(v18);
    v20 = *(v19 + 16);
    v24[0] = *v19;
    v24[1] = v20;
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v25 = *(v19 + 80);
    v24[3] = v22;
    v24[4] = v23;
    v24[2] = v21;
    sub_F6901C(a2, v24);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }
}

void sub_109EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_4547F0(v21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_109EBA4(void ***a1)
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
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 = sub_4547F0(v8 - 568);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
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

BOOL sub_109EC68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_109F478(&v33, (*(a3 + 8) - *a3) >> 5);
  sub_1030754(a1, a2, a3, a4, 0x7FFFFFFF, 0, a5, 0x7FFFFFFF, a6, 0, 0xFFFFFFFF);
  *(a1 + 3944) += sub_1031BE8(a1);
  v32[0].n128_u64[0] = sub_1031BFC(a1);
  v32[0].n128_u64[1] = v14;
  sub_32114((a1 + 3948), v32);
  v15 = *(a7 + 8);
  if (*a7 == v15)
  {
    LODWORD(v16) = 1;
  }

  else
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) / (0x193D4BB7E327A977 * ((*(v15 - 16) - *(v15 - 24)) >> 3));
  }

  v17 = sub_10309DC(a1);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*v17 != v19)
  {
    v20 = v34;
    do
    {
      v21 = *v18;
      if (v20 >= v35)
      {
        v22 = sub_10A49DC(&v33);
      }

      else
      {
        bzero(v20, 0x238uLL);
        sub_F68960(v20);
        *(v20 + 552) = 0x7FFFFFFFFFFFFFFFLL;
        *(v20 + 560) = -1;
        v22 = v20 + 568;
      }

      v34 = v22;
      sub_1030C24(a1, v21, v32);
      sub_49C304((v34 - 71), v32);
      sub_4547F0(v32);
      v23 = sub_10309E4(a1, v21);
      *(v34 - 2) = v23;
      v24 = sub_1030A20(a1, v21);
      v20 = v34;
      *(v34 - 2) = v24 / v16;
      ++v18;
    }

    while (v18 != v19);
  }

  v25 = *(a7 + 8);
  if (v25 >= *(a7 + 16))
  {
    v26 = sub_10A4B54(a7, &v33);
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    sub_10A4D3C(v25, v33, v34, 0x193D4BB7E327A977 * ((v34 - v33) >> 3));
    v26 = (v25 + 3);
    *(a7 + 8) = v25 + 3;
  }

  *(a7 + 8) = v26;
  v27 = v33;
  v28 = v34;
  if (v33)
  {
    v29 = v33;
    if (v33 != v34)
    {
      v30 = v34;
      do
      {
        v30 = sub_4547F0(v30 - 568);
      }

      while (v30 != v27);
      v29 = v33;
    }

    v34 = v27;
    operator delete(v29);
  }

  return v27 != v28;
}

void sub_109EEEC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_10A4F90((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_109EF54(_Unwind_Exception *a1)
{
  *(v2 - 104) = v1;
  sub_10A4F90((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_109EFA8@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v15, a1, v6);
  std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_109F238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_109F25C(int32x2_t **a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = -1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    if (a2 == 2)
    {
      do
      {
        v6 = sub_F69610(v4);
        LODWORD(v19) = 0;
        v20 = 0uLL;
        *(&v19 + 1) = 0;
        LOBYTE(v21) = 0;
        *(&v21 + 1) = 0x3FF0000000000000;
        LOBYTE(v22) = 1;
        *(&v22 + 1) = 0;
        *v23 = 0;
        *&v23[8] = 0;
        *&v23[10] = -29536;
        *&v23[12] = 0;
        *&v23[15] = 0;
        v7 = sub_F69058(v4);
        v9 = *(v7 + 48);
        v8 = *(v7 + 64);
        v10 = *(v7 + 32);
        *&v23[15] = *(v7 + 79);
        v22 = v9;
        *v23 = v8;
        v11 = *(v7 + 16);
        v19 = *v7;
        v20 = v11;
        v21 = v10;
        *(&v22 + 1) = vadd_s32(v4[69], *(&v22 + 8));
        *&v23[12] = 5;
        sub_1015104(a3, v6, &v19);
        LODWORD(v19) = 1000000000 - v19;
        LOBYTE(v21) = v21 ^ 1;
        if (v23[9] == 1)
        {
          if (v23[8])
          {
            v12 = 256;
          }

          else
          {
            v12 = 257;
          }

          *&v23[8] = v12;
        }

        sub_1015104(a3, v6 & 0xFFFFFFFFFFFF0003 ^ 2, &v19);
        v4 += 71;
      }

      while (v4 != v5);
    }

    else
    {
      do
      {
        v13 = sub_F69610(v4);
        LODWORD(v19) = 0;
        v20 = 0uLL;
        *(&v19 + 1) = 0;
        LOBYTE(v21) = 0;
        *(&v21 + 1) = 0x3FF0000000000000;
        LOBYTE(v22) = 1;
        *(&v22 + 1) = 0;
        *v23 = 0;
        *&v23[8] = 0;
        *&v23[10] = -29536;
        *&v23[12] = 0;
        *&v23[15] = 0;
        v14 = sub_F69058(v4);
        v16 = *(v14 + 48);
        v15 = *(v14 + 64);
        v17 = *(v14 + 32);
        *&v23[15] = *(v14 + 79);
        v22 = v16;
        *v23 = v15;
        v18 = *(v14 + 16);
        v19 = *v14;
        v20 = v18;
        v21 = v17;
        *(&v22 + 1) = vadd_s32(v4[69], *(&v22 + 8));
        *&v23[12] = 5;
        sub_1015104(a3, v13, &v19);
        v4 += 71;
      }

      while (v4 != v5);
    }
  }
}

void sub_109F450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_109F478(void *result, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_109F568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

void sub_109F57C(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3) - 1;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = v5;
        v9 = v5 >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v7 >> 1 > v10)
        {
          v10 = v7 >> 1;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (!(v11 >> 62))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v12 = (4 * v9);
        *v12 = v6;
        v5 = (v12 + 1);
        memcpy(0, 0, v8);
        a2[1] = v5;
        a2[2] = 0;
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v13 = sub_109F744(a1, v3);
      LODWORD(v6) = *(sub_109F960(v13, v6) + 560);
    }

    while (v6 != -1 && v3-- > 0);
    *a2 = 0;
    if (v5)
    {
      v15 = (v5 - 4);
      if (v5 != 4)
      {
        v16 = 4;
        do
        {
          v17 = *(v16 - 4);
          *(v16 - 4) = *v15;
          *v15-- = v17;
          v18 = v16 >= v15;
          v16 += 4;
        }

        while (!v18);
      }
    }
  }
}

void sub_109F71C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_109F744(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_109F880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_109F960(void *a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 568 * a2;
}

void sub_109FA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_109FB7C(void *a1, unint64_t a2)
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

void sub_109FC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_109FDE8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, void *a8@<X8>)
{
  sub_109FEC8(a1, a2, a3, a4, a5, a6, a7, 0, &__p);
  sub_10A0DA8(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_109FEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

void sub_109FEC8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  *(a1 + 3944) = 0;
  v12 = *(a1 + 3992);
  v13 = *(a1 + 3984);
  while (v12 != v13)
  {
    if (*(v12 - 1) < 0)
    {
      operator delete(*(v12 - 24));
    }

    v12 -= 32;
  }

  v79 = a4;
  *(a1 + 3992) = v13;
  __p[0] = 0;
  __p[1] = 0;
  locale = 0;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v102 = a2[3];
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v15 = a3[1] - *a3;
  if (!v15)
  {
LABEL_100:
    v103[0] = 0;
    v103[1] = 0;
    v104.__locale_ = 0;
    v70 = v79[1];
    if (v70 != *v79)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - *v79) >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v105[0] = v79[3];
    v94 = 0;
    v95 = 0;
    v93 = 0;
    __dst = &v93;
    LOBYTE(v91) = 0;
    operator new();
  }

  v16 = 0;
  v85 = v15 >> 5;
  v86 = a1;
  while (1)
  {
    ++v96;
    v17 = (*a3 + 32 * v16);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (a8 != 2)
    {
      v20 = *v17;
      v21 = v17[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_13;
        }

        v27 = v17[3];
        v28 = v94;
        if (v94 >= v95)
        {
          v34 = v93;
          v35 = (v94 - v93) >> 5;
          v36 = v35 + 1;
          if ((v35 + 1) >> 59)
          {
            sub_1794();
          }

          v37 = v95 - v93;
          if ((v95 - v93) >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v38 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v39 = (v94 - v93) >> 5;
          v40 = (32 * v35);
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v40[3] = v27;
          v41 = &v40[-4 * v39];
          if (v34 != v28)
          {
            v42 = v34;
            v43 = v41;
            do
            {
              *v43 = *v42;
              v43[2] = v42[2];
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v43[3] = v42[3];
              v42 += 4;
              v43 += 4;
            }

            while (v42 != v28);
            do
            {
              v44 = *v34;
              if (*v34)
              {
                v34[1] = v44;
                operator delete(v44);
              }

              v34 += 4;
            }

            while (v34 != v28);
            v34 = v93;
          }

          v29 = v40 + 4;
          v93 = v41;
          v94 = v40 + 4;
          v95 = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v94 = v40 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v40[1];
          v33 = v40[2];
          if (v32 < v33)
          {
LABEL_19:
            *v32 = v31;
            v22 = *v30;
            *(v32 + 24) = *(v30 + 1);
            *(v32 + 8) = v22;
            v23 = *(v30 + 2);
            v24 = *(v30 + 3);
            v25 = *(v30 + 4);
            *(v32 + 88) = v30[10];
            *(v32 + 72) = v25;
            *(v32 + 56) = v24;
            *(v32 + 40) = v23;
            v26 = v32 + 96;
            goto LABEL_20;
          }
        }

        else
        {
          *v94 = 0;
          v28[1] = 0;
          v29 = v28 + 4;
          v28[2] = 0;
          v28[3] = v27;
          v94 = v28 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v28[1];
          v33 = v28[2];
          if (v32 < v33)
          {
            goto LABEL_19;
          }
        }

        v45 = *(v29 - 4);
        v46 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v45) >> 5) + 1;
        if (v46 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v47 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v45) >> 5);
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        if (v47 >= 0x155555555555555)
        {
          v48 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (v48 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v49 = 32 * ((v32 - v45) >> 5);
        *v49 = v31;
        v50 = *v30;
        *(v49 + 24) = *(v30 + 1);
        *(v49 + 8) = v50;
        v51 = *(v30 + 2);
        v52 = *(v30 + 3);
        v53 = *(v30 + 4);
        *(v49 + 88) = v30[10];
        *(v49 + 72) = v53;
        *(v49 + 56) = v52;
        *(v49 + 40) = v51;
        v26 = v49 + 96;
        v54 = (v49 - (v32 - v45));
        memcpy(v54, v45, v32 - v45);
        *(v29 - 4) = v54;
        *(v29 - 3) = v26;
        *(v29 - 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }

LABEL_20:
        *(v29 - 3) = v26;
        v20 += 12;
      }
    }

    v94 = sub_1055A68(&v93, v17);
LABEL_13:
    v18 = sub_10A14C8(v86, __p, &v93, a5, a6, a7, v98);
    if (!v18)
    {
      *(v86 + 3968) = 11;
      *(v86 + 3976) = &off_2669FE0;
      sub_109EFA8("Failed to compute a path including waypoint ", ".", v103);
      v55 = *(v86 + 3992);
      if (v55 >= *(v86 + 4000))
      {
        *(v86 + 3992) = sub_10A4308((v86 + 3984), v103);
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v55 = 0;
        v56 = (v55 + 8);
        if (SHIBYTE(v104.__locale_) < 0)
        {
          sub_325C(v56, v103[0], v103[1]);
        }

        else
        {
          v57 = *v103;
          *(v55 + 24) = v104;
          *v56 = v57;
        }

        *(v86 + 3992) = v55 + 32;
        *(v86 + 3992) = v55 + 32;
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
LABEL_61:
          *(v86 + 4008) = v96;
          *(v86 + 4010) = v97;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_90;
          }

          sub_19594F8(v103);
          sub_D166D4((*(v86 + 3992) - 32), &__dst);
          if ((v92 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v92 & 0x80u) == 0)
          {
            v59 = v92;
          }

          else
          {
            v59 = v91;
          }

          sub_4A5C(v103, p_dst, v59);
          if (v92 < 0)
          {
            operator delete(__dst);
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
LABEL_70:
              if ((v60 & 8) == 0)
              {
                v61 = 0;
                v92 = 0;
LABEL_85:
                *(&__dst + v61) = 0;
                sub_7E854(&__dst, 3u);
                if (v92 < 0)
                {
                  operator delete(__dst);
                }

                v103[0] = v83;
                *(v103 + *(v83 - 3)) = v82;
                if (v109 < 0)
                {
                  operator delete(v108);
                }

                std::locale::~locale(&v104);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_90:
                *a9 = 0;
                a9[1] = 0;
                a9[2] = 0;
                v19 = v93;
                if (!v93)
                {
                  goto LABEL_98;
                }

LABEL_91:
                v65 = v94;
                v66 = v19;
                if (v94 != v19)
                {
                  v67 = v94;
                  do
                  {
                    v69 = *(v67 - 4);
                    v67 -= 4;
                    v68 = v69;
                    if (v69)
                    {
                      *(v65 - 3) = v68;
                      operator delete(v68);
                    }

                    v65 = v67;
                  }

                  while (v67 != v19);
                  v66 = v93;
                }

                v94 = v19;
                operator delete(v66);
                goto LABEL_98;
              }

              v62 = v105[2];
              v63 = v105;
LABEL_79:
              v64 = *v63;
              v61 = v62 - *v63;
              if (v61 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v61 >= 0x17)
              {
                operator new();
              }

              v92 = v62 - *v63;
              if (v61)
              {
                memmove(&__dst, v64, v61);
              }

              goto LABEL_85;
            }
          }

          v62 = v110;
          v63 = &v106;
          if (v110 < v107)
          {
            v110 = v107;
            v62 = v107;
            v63 = &v106;
          }

          goto LABEL_79;
        }
      }

      operator delete(v103[0]);
      goto LABEL_61;
    }

    sub_10A1808(v98[1] - 3, a8, v103);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v103;
    locale = v104.__locale_;
    v102 = v105[0];
    v19 = v93;
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_98:
    if (!v18)
    {
      break;
    }

    if (++v16 == v85)
    {
      goto LABEL_100;
    }
  }

  v71 = v98[0];
  if (v98[0])
  {
    v72 = v98[1];
    v73 = v98[0];
    if (v98[1] != v98[0])
    {
      v74 = v98[1];
      do
      {
        v76 = *(v74 - 3);
        v74 -= 3;
        v75 = v76;
        if (v76)
        {
          v77 = *(v72 - 2);
          v78 = v75;
          if (v77 != v75)
          {
            do
            {
              v77 = sub_4547F0(v77 - 568);
            }

            while (v77 != v75);
            v78 = *v74;
          }

          *(v72 - 2) = v75;
          operator delete(v78);
        }

        v72 = v74;
      }

      while (v74 != v71);
      v73 = v98[0];
    }

    v98[1] = v71;
    operator delete(v73);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10A0C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a47);
  sub_109EBA4(&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void sub_10A0DA8(void *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == v4 || *(v4 - 24) == *(v4 - 16))
  {

    sub_F6BEE8(a2);
  }

  else
  {
    sub_10A1A94(a1, &v47);
    v6 = sub_10A1C5C(a1, 0);
    v7 = sub_109FB7C(&v47, 0);
    v8 = sub_10A1E78(v6, *v7);
    sub_49EA74(a2, v8);
    v9 = a1[1];
    v41 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
    if (v41 >= 2)
    {
      for (i = 1; i != v41; ++i)
      {
        v11 = sub_10A1C5C(a1, i);
        v12 = sub_109FB7C(&v47, i);
        v13 = sub_10A1E78(v11, *v12);
        v14 = sub_F6C7D0(a2);
        v15 = sub_F6C788(v13);
        v16 = ((v15 ^ v14) >> 1) & 1;
        if (WORD1(v14) != WORD1(v15))
        {
          LODWORD(v16) = 0;
        }

        if ((v15 ^ v14) >> 32)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        if (sub_F695B8(a2) && sub_F695B8(v13))
        {
          v18 = *sub_73F1C(a2);
          v19 = sub_F69058(v13);
          if ((v17 & 1) == 0)
          {
            v32 = *v19;
            v33 = sub_F6D17C(a2, 0);
            v34 = *(sub_F6D17C(v13, 0) + 32);
            if (__PAIR64__(*(v33 + 36), *(v33 + 32)) != __PAIR64__(WORD2(v34), v34) || *(v33 + 38) != BYTE6(v34) || v32 <= v18)
            {
              continue;
            }
          }
        }

        if (((sub_F69D6C(a2) | v17 ^ 1) & 1) == 0)
        {
          v20 = sub_F6C814(a2);
          v21 = sub_F69654(v13);
          v22 = sub_F6C7D0(a2);
          v23 = sub_F6C788(v13);
          v24 = sub_F6C7D0(a2);
          v25 = sub_F6C788(v13);
          v2 = v2 & 0xFFFF8000 | 0x280;
          v26 = *v20;
          v27 = *(v20 + 16);
          *v44 = *(v20 + 32);
          v42 = v26;
          v43 = v27;
          v28 = *(v21 + 32);
          v29 = *(v21 + 16);
          *&v44[8] = *v21;
          *&v44[40] = v28;
          *&v44[24] = v29;
          LODWORD(v45) = (v23 << 14) & 0x3FFF0000 | (v22 >> 2);
          HIDWORD(v45) = v2 & 0xFF80;
          v46 = v24 & 1 | (2 * (v25 & 1)) | v46 & 0x80;
          sub_F6C3B8(a2, &v42, 0);
        }

        if (sub_F695B8(a2) && !sub_F695B8(v13))
        {
          sub_F687F4(a2);
        }

        v30 = sub_5FC64(v13);
        v31 = sub_445EF4(v13);
        sub_F6DCCC(a2, v30, v31);
      }

      v9 = a1[1];
    }

    v35 = sub_10A1E78((v9 - 24), *(v48 - 1));
    v36 = sub_F69058(v35);
    v37 = *(v36 + 16);
    v42 = *v36;
    v43 = v37;
    v38 = *(v36 + 32);
    v39 = *(v36 + 48);
    v40 = *(v36 + 64);
    v45 = *(v36 + 80);
    *&v44[16] = v39;
    *&v44[32] = v40;
    *v44 = v38;
    sub_F6901C(a2, &v42);
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

void sub_10A1100(_Unwind_Exception *a1)
{
  sub_4547F0(v1);
  v4 = *(v2 - 104);
  if (v4)
  {
    *(v2 - 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10A115C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, std::string *a8@<X8>)
{
  sub_109FEC8(a1, a2, a3, a4, a5, a6, a7, 1, &__p);
  sub_10A123C(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A1228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

double sub_10A123C@<D0>(void *a1@<X1>, std::string *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3 || *(v3 - 24) == *(v3 - 16))
  {

    return sub_4E3D18(a2);
  }

  else
  {
    sub_10A1A94(a1, v19);
    __p = 0;
    v17 = 0;
    v18 = 0;
    v5 = a1[1] - *a1;
    if (v5)
    {
      v6 = 0;
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      do
      {
        while (1)
        {
          v8 = sub_10A1C5C(a1, v6);
          v9 = sub_109FB7C(v19, v6);
          v10 = sub_10A1E78(v8, *v9);
          v11 = v17;
          if (v17 < v18)
          {
            break;
          }

          v17 = sub_F74B54(&__p, v10);
          if (v7 == ++v6)
          {
            goto LABEL_8;
          }
        }

        sub_49EA74(v17, v10);
        v17 = v11 + 552;
        ++v6;
      }

      while (v7 != v6);
    }

LABEL_8:
    sub_F63288(a2, &__p);
    v13 = __p;
    if (__p)
    {
      v14 = v17;
      v15 = __p;
      if (v17 != __p)
      {
        do
        {
          v14 = sub_4547F0((v14 - 552));
        }

        while (v14 != v13);
        v15 = __p;
      }

      v17 = v13;
      operator delete(v15);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }
  }

  return result;
}

void sub_10A13B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_487EC4(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10A13E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, __int32 a6@<W6>, unsigned int a7@<W7>, std::string *a8@<X8>)
{
  sub_109FEC8(a1, a2, a3, a4, a5, a6, a7, 2, &__p);
  sub_10A123C(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A14B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

BOOL sub_10A14C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int32 a5, unsigned int a6, uint64_t a7)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_10A1990(&v33, (*(a3 + 8) - *a3) >> 5);
  sub_103C9C0(a1, a2, a3, a4, 0x7FFFFFFF, 0, a5, 0x7FFFFFFF, a6, 0, 0xFFFFFFFF);
  *(a1 + 3944) += sub_1031BE8(a1);
  v32[0].n128_u64[0] = sub_103DD3C(a1);
  v32[0].n128_u64[1] = v14;
  sub_32114((a1 + 3948), v32);
  v15 = *(a7 + 8);
  if (*a7 == v15)
  {
    LODWORD(v16) = 1;
  }

  else
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) / (0x193D4BB7E327A977 * ((*(v15 - 16) - *(v15 - 24)) >> 3));
  }

  v17 = sub_10309DC(a1);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*v17 != v19)
  {
    v20 = v34;
    do
    {
      v21 = *v18;
      if (v20 >= v35)
      {
        v22 = sub_10A4FEC(&v33);
      }

      else
      {
        bzero(v20, 0x238uLL);
        sub_F6BEE8(v20);
        *(v20 + 552) = 0x7FFFFFFFFFFFFFFFLL;
        *(v20 + 560) = -1;
        v22 = v20 + 568;
      }

      v34 = v22;
      sub_103CE4C(a1, v21, v32);
      sub_49C304((v34 - 71), v32);
      sub_4547F0(v32);
      v23 = sub_10309E4(a1, v21);
      *(v34 - 2) = v23;
      v24 = sub_103CC48(a1, v21);
      v20 = v34;
      *(v34 - 2) = v24 / v16;
      ++v18;
    }

    while (v18 != v19);
  }

  v25 = *(a7 + 8);
  if (v25 >= *(a7 + 16))
  {
    v26 = sub_10A5164(a7, &v33);
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    sub_10A534C(v25, v33, v34, 0x193D4BB7E327A977 * ((v34 - v33) >> 3));
    v26 = (v25 + 3);
    *(a7 + 8) = v25 + 3;
  }

  *(a7 + 8) = v26;
  v27 = v33;
  v28 = v34;
  if (v33)
  {
    v29 = v33;
    if (v33 != v34)
    {
      v30 = v34;
      do
      {
        v30 = sub_4547F0(v30 - 568);
      }

      while (v30 != v27);
      v29 = v33;
    }

    v34 = v27;
    operator delete(v29);
  }

  return v27 != v28;
}

void sub_10A174C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_10A4F90((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10A17B4(_Unwind_Exception *a1)
{
  *(v2 - 104) = v1;
  sub_10A4F90((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10A1808(int32x2_t **a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = -1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v7 = sub_F6C7D0(v4);
      LODWORD(v15) = 0;
      if (a2 == 1)
      {
        v8 = v7 & 0xFFFFFFFFFFFF0002;
      }

      else
      {
        v8 = v7;
      }

      v16 = 0uLL;
      *(&v15 + 1) = 0;
      LOBYTE(v17) = 0;
      *(&v17 + 1) = 0x3FF0000000000000;
      LOBYTE(v18) = 1;
      *(&v18 + 1) = 0;
      *v19 = 0;
      *&v19[8] = 0;
      *&v19[10] = -29536;
      *&v19[12] = 0;
      *&v19[15] = 0;
      v9 = sub_F69058(v4);
      v11 = *(v9 + 48);
      v10 = *(v9 + 64);
      v12 = *(v9 + 32);
      *&v19[15] = *(v9 + 79);
      v18 = v11;
      *v19 = v10;
      v13 = *(v9 + 16);
      v15 = *v9;
      v16 = v13;
      v17 = v12;
      *(&v18 + 1) = vadd_s32(v4[69], *(&v18 + 8));
      *&v19[12] = 5;
      sub_1015104(a3, v8, &v15);
      LODWORD(v15) = 1000000000 - v15;
      LOBYTE(v17) = v17 ^ 1;
      if (v19[9] == 1)
      {
        if (v19[8])
        {
          v14 = 256;
        }

        else
        {
          v14 = 257;
        }

        *&v19[8] = v14;
      }

      sub_1015104(a3, v8 & 0xFFFFFFFFFFFF0003 ^ 2, &v15);
      v4 += 71;
    }

    while (v4 != v5);
  }
}

void sub_10A1970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10A1990(void *result, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10A1A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

void sub_10A1A94(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3) - 1;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = v5;
        v9 = v5 >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v7 >> 1 > v10)
        {
          v10 = v7 >> 1;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (!(v11 >> 62))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v12 = (4 * v9);
        *v12 = v6;
        v5 = (v12 + 1);
        memcpy(0, 0, v8);
        a2[1] = v5;
        a2[2] = 0;
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v13 = sub_10A1C5C(a1, v3);
      LODWORD(v6) = *(sub_10A1E78(v13, v6) + 560);
    }

    while (v6 != -1 && v3-- > 0);
    *a2 = 0;
    if (v5)
    {
      v15 = (v5 - 4);
      if (v5 != 4)
      {
        v16 = 4;
        do
        {
          v17 = *(v16 - 4);
          *(v16 - 4) = *v15;
          *v15-- = v17;
          v18 = v16 >= v15;
          v16 += 4;
        }

        while (!v18);
      }
    }
  }
}

void sub_10A1C34(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10A1C5C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_10A1D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_10A1E78(void *a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 568 * a2;
}

void sub_10A1FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_10A2094(uint64_t a1, uint64_t a2)
{
  v3 = sub_1045744(a1, a2, 0);
  *(v3 + 3944) = 0;
  *(v3 + 3948) = -1;
  *(v3 + 3956) = -1;
  v5.n128_u64[0] = 0;
  v5.n128_u64[1] = &off_2669FE0;
  sub_434934((v3 + 3968), &v5);
  return a1;
}

void sub_10A2104(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, uint64_t a8@<X8>)
{
  sub_10A21E4(a1, a2, a3, a4, a5, a6, a7, 0, &__p);
  sub_10A30C8(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A21D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

void sub_10A21E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  *(a1 + 3944) = 0;
  v12 = *(a1 + 3992);
  v13 = *(a1 + 3984);
  while (v12 != v13)
  {
    if (*(v12 - 1) < 0)
    {
      operator delete(*(v12 - 24));
    }

    v12 -= 32;
  }

  v79 = a4;
  *(a1 + 3992) = v13;
  __p[0] = 0;
  __p[1] = 0;
  locale = 0;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v102 = a2[3];
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v15 = a3[1] - *a3;
  if (!v15)
  {
LABEL_100:
    v103[0] = 0;
    v103[1] = 0;
    v104.__locale_ = 0;
    v70 = v79[1];
    if (v70 != *v79)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - *v79) >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v105[0] = v79[3];
    v94 = 0;
    v95 = 0;
    v93 = 0;
    __dst = &v93;
    LOBYTE(v91) = 0;
    operator new();
  }

  v16 = 0;
  v85 = v15 >> 5;
  v86 = a1;
  while (1)
  {
    ++v96;
    v17 = (*a3 + 32 * v16);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (a8 != 2)
    {
      v20 = *v17;
      v21 = v17[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_13;
        }

        v27 = v17[3];
        v28 = v94;
        if (v94 >= v95)
        {
          v34 = v93;
          v35 = (v94 - v93) >> 5;
          v36 = v35 + 1;
          if ((v35 + 1) >> 59)
          {
            sub_1794();
          }

          v37 = v95 - v93;
          if ((v95 - v93) >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v38 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v39 = (v94 - v93) >> 5;
          v40 = (32 * v35);
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v40[3] = v27;
          v41 = &v40[-4 * v39];
          if (v34 != v28)
          {
            v42 = v34;
            v43 = v41;
            do
            {
              *v43 = *v42;
              v43[2] = v42[2];
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v43[3] = v42[3];
              v42 += 4;
              v43 += 4;
            }

            while (v42 != v28);
            do
            {
              v44 = *v34;
              if (*v34)
              {
                v34[1] = v44;
                operator delete(v44);
              }

              v34 += 4;
            }

            while (v34 != v28);
            v34 = v93;
          }

          v29 = v40 + 4;
          v93 = v41;
          v94 = v40 + 4;
          v95 = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v94 = v40 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v40[1];
          v33 = v40[2];
          if (v32 < v33)
          {
LABEL_19:
            *v32 = v31;
            v22 = *v30;
            *(v32 + 24) = *(v30 + 1);
            *(v32 + 8) = v22;
            v23 = *(v30 + 2);
            v24 = *(v30 + 3);
            v25 = *(v30 + 4);
            *(v32 + 88) = v30[10];
            *(v32 + 72) = v25;
            *(v32 + 56) = v24;
            *(v32 + 40) = v23;
            v26 = v32 + 96;
            goto LABEL_20;
          }
        }

        else
        {
          *v94 = 0;
          v28[1] = 0;
          v29 = v28 + 4;
          v28[2] = 0;
          v28[3] = v27;
          v94 = v28 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v28[1];
          v33 = v28[2];
          if (v32 < v33)
          {
            goto LABEL_19;
          }
        }

        v45 = *(v29 - 4);
        v46 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v45) >> 5) + 1;
        if (v46 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v47 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v45) >> 5);
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        if (v47 >= 0x155555555555555)
        {
          v48 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (v48 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v49 = 32 * ((v32 - v45) >> 5);
        *v49 = v31;
        v50 = *v30;
        *(v49 + 24) = *(v30 + 1);
        *(v49 + 8) = v50;
        v51 = *(v30 + 2);
        v52 = *(v30 + 3);
        v53 = *(v30 + 4);
        *(v49 + 88) = v30[10];
        *(v49 + 72) = v53;
        *(v49 + 56) = v52;
        *(v49 + 40) = v51;
        v26 = v49 + 96;
        v54 = (v49 - (v32 - v45));
        memcpy(v54, v45, v32 - v45);
        *(v29 - 4) = v54;
        *(v29 - 3) = v26;
        *(v29 - 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }

LABEL_20:
        *(v29 - 3) = v26;
        v20 += 12;
      }
    }

    v94 = sub_1020B2C(&v93, v17);
LABEL_13:
    v18 = sub_10A3668(v86, __p, &v93, a5, a6, a7, v98);
    if (!v18)
    {
      *(v86 + 3968) = 11;
      *(v86 + 3976) = &off_2669FE0;
      sub_109EFA8("Failed to compute a path including waypoint ", ".", v103);
      v55 = *(v86 + 3992);
      if (v55 >= *(v86 + 4000))
      {
        *(v86 + 3992) = sub_10A4308((v86 + 3984), v103);
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v55 = 0;
        v56 = (v55 + 8);
        if (SHIBYTE(v104.__locale_) < 0)
        {
          sub_325C(v56, v103[0], v103[1]);
        }

        else
        {
          v57 = *v103;
          *(v55 + 24) = v104;
          *v56 = v57;
        }

        *(v86 + 3992) = v55 + 32;
        *(v86 + 3992) = v55 + 32;
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
LABEL_61:
          *(v86 + 4008) = v96;
          *(v86 + 4010) = v97;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_90;
          }

          sub_19594F8(v103);
          sub_D166D4((*(v86 + 3992) - 32), &__dst);
          if ((v92 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v92 & 0x80u) == 0)
          {
            v59 = v92;
          }

          else
          {
            v59 = v91;
          }

          sub_4A5C(v103, p_dst, v59);
          if (v92 < 0)
          {
            operator delete(__dst);
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
LABEL_70:
              if ((v60 & 8) == 0)
              {
                v61 = 0;
                v92 = 0;
LABEL_85:
                *(&__dst + v61) = 0;
                sub_7E854(&__dst, 3u);
                if (v92 < 0)
                {
                  operator delete(__dst);
                }

                v103[0] = v83;
                *(v103 + *(v83 - 3)) = v82;
                if (v109 < 0)
                {
                  operator delete(v108);
                }

                std::locale::~locale(&v104);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_90:
                *a9 = 0;
                a9[1] = 0;
                a9[2] = 0;
                v19 = v93;
                if (!v93)
                {
                  goto LABEL_98;
                }

LABEL_91:
                v65 = v94;
                v66 = v19;
                if (v94 != v19)
                {
                  v67 = v94;
                  do
                  {
                    v69 = *(v67 - 4);
                    v67 -= 4;
                    v68 = v69;
                    if (v69)
                    {
                      *(v65 - 3) = v68;
                      operator delete(v68);
                    }

                    v65 = v67;
                  }

                  while (v67 != v19);
                  v66 = v93;
                }

                v94 = v19;
                operator delete(v66);
                goto LABEL_98;
              }

              v62 = v105[2];
              v63 = v105;
LABEL_79:
              v64 = *v63;
              v61 = v62 - *v63;
              if (v61 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v61 >= 0x17)
              {
                operator new();
              }

              v92 = v62 - *v63;
              if (v61)
              {
                memmove(&__dst, v64, v61);
              }

              goto LABEL_85;
            }
          }

          v62 = v110;
          v63 = &v106;
          if (v110 < v107)
          {
            v110 = v107;
            v62 = v107;
            v63 = &v106;
          }

          goto LABEL_79;
        }
      }

      operator delete(v103[0]);
      goto LABEL_61;
    }

    sub_10A39A8(v98[1] - 3, a8, v103);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v103;
    locale = v104.__locale_;
    v102 = v105[0];
    v19 = v93;
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_98:
    if (!v18)
    {
      break;
    }

    if (++v16 == v85)
    {
      goto LABEL_100;
    }
  }

  v71 = v98[0];
  if (v98[0])
  {
    v72 = v98[1];
    v73 = v98[0];
    if (v98[1] != v98[0])
    {
      v74 = v98[1];
      do
      {
        v76 = *(v74 - 3);
        v74 -= 3;
        v75 = v76;
        if (v76)
        {
          v77 = *(v72 - 2);
          v78 = v75;
          if (v77 != v75)
          {
            do
            {
              v77 = sub_4547F0(v77 - 568);
            }

            while (v77 != v75);
            v78 = *v74;
          }

          *(v72 - 2) = v75;
          operator delete(v78);
        }

        v72 = v74;
      }

      while (v74 != v71);
      v73 = v98[0];
    }

    v98[1] = v71;
    operator delete(v73);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10A2F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a47);
  sub_109EBA4(&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void sub_10A30C8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3 || *(v3 - 24) == *(v3 - 16))
  {

    sub_F6EB3C(a2);
  }

  else
  {
    sub_10A3D08(a1, &__p);
    v5 = sub_10A3ED0(a1, 0);
    v6 = sub_109FB7C(&__p, 0);
    v7 = sub_10A40EC(v5, *v6);
    sub_49F780(a2, v7);
    v8 = a1[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    if (v9 >= 2)
    {
      for (i = 1; i != v9; ++i)
      {
        v11 = sub_10A3ED0(a1, i);
        v12 = sub_109FB7C(&__p, i);
        v13 = sub_10A40EC(v11, *v12);
        if (sub_83EB8(a2) && sub_83EB8(v13))
        {
          v14 = *sub_73F1C(a2);
          v15 = *sub_F69058(v13);
          v16 = sub_F6FE3C(a2, 0);
          v17 = *(sub_F6FE3C(v13, 0) + 32);
          if (*(v16 + 32) != v17)
          {
            continue;
          }

          if (*(v16 + 36) != HIDWORD(v17) || v15 <= v14)
          {
            continue;
          }
        }

        sub_F708E4(a2, v13);
      }

      v8 = a1[1];
    }

    v19 = sub_10A40EC((v8 - 24), *(v28 - 1));
    v20 = sub_F69058(v19);
    v21 = *(v20 + 16);
    v25[0] = *v20;
    v25[1] = v21;
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    v24 = *(v20 + 64);
    v26 = *(v20 + 80);
    v25[3] = v23;
    v25[4] = v24;
    v25[2] = v22;
    sub_F6901C(a2, v25);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_10A32C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_4547F0(v21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10A32FC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, __int32 a6@<W5>, unsigned int a7@<W6>, std::string *a8@<X8>)
{
  sub_10A21E4(a1, a2, a3, a4, a5, a6, a7, 1, &__p);
  sub_10A33DC(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A33C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

double sub_10A33DC@<D0>(void *a1@<X1>, std::string *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3 || *(v3 - 24) == *(v3 - 16))
  {

    return sub_4E3D18(a2);
  }

  else
  {
    sub_10A3D08(a1, v19);
    __p = 0;
    v17 = 0;
    v18 = 0;
    v5 = a1[1] - *a1;
    if (v5)
    {
      v6 = 0;
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      do
      {
        while (1)
        {
          v8 = sub_10A3ED0(a1, v6);
          v9 = sub_109FB7C(v19, v6);
          v10 = sub_10A40EC(v8, *v9);
          v11 = v17;
          if (v17 < v18)
          {
            break;
          }

          v17 = sub_F74CB8(&__p, v10);
          if (v7 == ++v6)
          {
            goto LABEL_8;
          }
        }

        sub_49F780(v17, v10);
        v17 = v11 + 552;
        ++v6;
      }

      while (v7 != v6);
    }

LABEL_8:
    sub_F64080(a2, &__p);
    v13 = __p;
    if (__p)
    {
      v14 = v17;
      v15 = __p;
      if (v17 != __p)
      {
        do
        {
          v14 = sub_4547F0((v14 - 552));
        }

        while (v14 != v13);
        v15 = __p;
      }

      v17 = v13;
      operator delete(v15);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }
  }

  return result;
}

void sub_10A3550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_487EC4(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10A3584(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, __int32 a6@<W6>, unsigned int a7@<W7>, std::string *a8@<X8>)
{
  sub_10A21E4(a1, a2, a3, a4, a5, a6, a7, 2, &__p);
  sub_10A33DC(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A3654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

BOOL sub_10A3668(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int32 a5, unsigned int a6, uint64_t a7)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_10A3C04(&v33, (*(a3 + 8) - *a3) >> 5);
  sub_1047FF0(a1, a2, a3, a4, 0x7FFFFFFF, 0, a5, 0x7FFFFFFF, a6, 0, 0xFFFFFFFF);
  *(a1 + 3944) += sub_1031BE8(a1);
  v32[0].n128_u64[0] = sub_10499B8(a1);
  v32[0].n128_u64[1] = v14;
  sub_32114((a1 + 3948), v32);
  v15 = *(a7 + 8);
  if (*a7 == v15)
  {
    LODWORD(v16) = 1;
  }

  else
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) / (0x193D4BB7E327A977 * ((*(v15 - 16) - *(v15 - 24)) >> 3));
  }

  v17 = sub_10309DC(a1);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*v17 != v19)
  {
    v20 = v34;
    do
    {
      v21 = *v18;
      if (v20 >= v35)
      {
        v22 = sub_10A5484(&v33);
      }

      else
      {
        bzero(v20, 0x238uLL);
        sub_F6EB3C(v20);
        *(v20 + 552) = 0x7FFFFFFFFFFFFFFFLL;
        *(v20 + 560) = -1;
        v22 = v20 + 568;
      }

      v34 = v22;
      sub_10488F4(a1, v21, v32);
      sub_49C304((v34 - 71), v32);
      sub_4547F0(v32);
      v23 = sub_10309E4(a1, v21);
      *(v34 - 2) = v23;
      v24 = sub_104849C(a1, v21);
      v20 = v34;
      *(v34 - 2) = v24 / v16;
      ++v18;
    }

    while (v18 != v19);
  }

  v25 = *(a7 + 8);
  if (v25 >= *(a7 + 16))
  {
    v26 = sub_10A55FC(a7, &v33);
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    sub_10A57E4(v25, v33, v34, 0x193D4BB7E327A977 * ((v34 - v33) >> 3));
    v26 = (v25 + 3);
    *(a7 + 8) = v25 + 3;
  }

  *(a7 + 8) = v26;
  v27 = v33;
  v28 = v34;
  if (v33)
  {
    v29 = v33;
    if (v33 != v34)
    {
      v30 = v34;
      do
      {
        v30 = sub_4547F0(v30 - 568);
      }

      while (v30 != v27);
      v29 = v33;
    }

    v34 = v27;
    operator delete(v29);
  }

  return v27 != v28;
}

void sub_10A38EC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_10A4F90((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10A3954(_Unwind_Exception *a1)
{
  *(v2 - 104) = v1;
  sub_10A4F90((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10A39A8(int32x2_t **a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = -1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    if (a2 == 2)
    {
      do
      {
        v6 = sub_F6F698(v4);
        LODWORD(v22) = 0;
        v23 = 0uLL;
        *(&v22 + 1) = 0;
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0x3FF0000000000000;
        LOBYTE(v25) = 1;
        *(&v25 + 1) = 0;
        *v26 = 0;
        *&v26[8] = 0;
        *&v26[10] = -29536;
        *&v26[12] = 0;
        *&v26[15] = 0;
        v7 = sub_F69058(v4);
        v9 = *(v7 + 48);
        v8 = *(v7 + 64);
        v10 = *(v7 + 32);
        *&v26[15] = *(v7 + 79);
        v25 = v9;
        *v26 = v8;
        v11 = *(v7 + 16);
        v22 = *v7;
        v23 = v11;
        v24 = v10;
        *(&v25 + 1) = vadd_s32(v4[69], *(&v25 + 8));
        *&v26[12] = 5;
        sub_1015104(a3, v6, &v22);
        LODWORD(v22) = 1000000000 - v22;
        LOBYTE(v24) = v24 ^ 1;
        if (v26[9] == 1)
        {
          if (v26[8])
          {
            v12 = 256;
          }

          else
          {
            v12 = 257;
          }

          *&v26[8] = v12;
        }

        v13 = (2 * HIDWORD(v6)) & 0x40000000;
        if ((HIDWORD(v6) & 0x60000000) != 0x40000000 && v13 == 0)
        {
          v15 = 0x40000000;
        }

        else
        {
          v15 = 0;
        }

        sub_1015104(a3, v6 | (((HIDWORD(v6) & 0x9FFFFFFF | (v13 >> 1) | v15) ^ 0x10000000) << 32), &v22);
        v4 += 71;
      }

      while (v4 != v5);
    }

    else
    {
      do
      {
        v16 = sub_F6F698(v4);
        LODWORD(v22) = 0;
        v23 = 0uLL;
        *(&v22 + 1) = 0;
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0x3FF0000000000000;
        LOBYTE(v25) = 1;
        *(&v25 + 1) = 0;
        *v26 = 0;
        *&v26[8] = 0;
        *&v26[10] = -29536;
        *&v26[12] = 0;
        *&v26[15] = 0;
        v17 = sub_F69058(v4);
        v19 = *(v17 + 48);
        v18 = *(v17 + 64);
        v20 = *(v17 + 32);
        *&v26[15] = *(v17 + 79);
        v25 = v19;
        *v26 = v18;
        v21 = *(v17 + 16);
        v22 = *v17;
        v23 = v21;
        v24 = v20;
        *(&v25 + 1) = vadd_s32(v4[69], *(&v25 + 8));
        *&v26[12] = 5;
        sub_1015104(a3, v16, &v22);
        v4 += 71;
      }

      while (v4 != v5);
    }
  }
}

void sub_10A3BDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10A3C04(void *result, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10A3CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

void sub_10A3D08(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3) - 1;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = v5;
        v9 = v5 >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v7 >> 1 > v10)
        {
          v10 = v7 >> 1;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (!(v11 >> 62))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v12 = (4 * v9);
        *v12 = v6;
        v5 = (v12 + 1);
        memcpy(0, 0, v8);
        a2[1] = v5;
        a2[2] = 0;
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v13 = sub_10A3ED0(a1, v3);
      LODWORD(v6) = *(sub_10A40EC(v13, v6) + 560);
    }

    while (v6 != -1 && v3-- > 0);
    *a2 = 0;
    if (v5)
    {
      v15 = (v5 - 4);
      if (v5 != 4)
      {
        v16 = 4;
        do
        {
          v17 = *(v16 - 4);
          *(v16 - 4) = *v15;
          *v15-- = v17;
          v18 = v16 >= v15;
          v16 += 4;
        }

        while (!v18);
      }
    }
  }
}

void sub_10A3EA8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10A3ED0(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_10A400C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_10A40EC(void *a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 568 * a2;
}

void sub_10A4228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_10A4308(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v16 = 32 * v2;
  *(32 * v2) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_325C((32 * v2 + 8), *a2, *(a2 + 8));
    v8 = 32 * v2 + 32;
    v9 = *a1;
    v10 = a1[1];
    v11 = v16 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_8[8 * v2] = *a2;
    *&dword_18[8 * v2] = *(a2 + 16);
    v8 = v7 + 32;
    v9 = *a1;
    v10 = a1[1];
    v11 = v7 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_21;
    }
  }

  v12 = v9;
  v13 = v11;
  do
  {
    *v13 = *v12;
    v14 = *(v12 + 8);
    *(v13 + 24) = *(v12 + 24);
    *(v13 + 8) = v14;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 8) = 0;
    v12 += 32;
    v13 += 32;
  }

  while (v12 != v10);
  do
  {
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    v9 += 32;
  }

  while (v9 != v10);
  v9 = *a1;
LABEL_21:
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_10A44A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10A44B8(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_10A4630((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_10A461C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_10A4630(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_10A474C(uint64_t *a1, void *a2)
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
      v27 = *(v8 + 552);
      *(v9 + 560) = *(v8 + 560);
      *(v9 + 552) = v27;
      v8 += 568;
      v9 += 568;
    }

    while (v8 != v5);
    do
    {
      result = sub_4547F0(result) + 568;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v28 = *a1;
  *a1 = v7;
  a1[1] = v28;
  a2[1] = v28;
  v29 = a1[1];
  a1[1] = a2[2];
  a2[2] = v29;
  v30 = a1[2];
  a1[2] = a2[3];
  a2[3] = v30;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10A4988(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 568;
    sub_4547F0(i - 568);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10A49DC(uint64_t *a1)
{
  v1 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x73615A240E6C2BLL)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 3)) >= 0x39B0AD12073615)
  {
    v4 = 0x73615A240E6C2BLL;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    if (v4 <= 0x73615A240E6C2BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 568 * v1;
  __p = 0;
  v11 = v5;
  v12 = v5;
  v13 = 0;
  bzero(v5, 0x238uLL);
  sub_F68960(v5);
  *(v5 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 560) = -1;
  v12 += 568;
  sub_10A474C(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 568;
    sub_4547F0(i - 568);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_10A4B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10A4B54(void ***a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
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

  v16 = (8 * (a1[1] - *a1));
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  sub_10A4D3C(24 * v2, *a2, a2[1], 0x193D4BB7E327A977 * ((a2[1] - *a2) >> 3));
  v6 = 24 * v2 + 24;
  v7 = *a1;
  v8 = a1[1];
  v9 = (v16 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v16 + *a1 - v8);
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *v10;
      v11[2] = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 3;
    }

    while (v10 != v8);
    do
    {
      v12 = *v7;
      if (*v7)
      {
        v13 = v7[1];
        v14 = *v7;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 568);
          }

          while (v13 != v12);
          v14 = *v7;
        }

        v7[1] = v12;
        operator delete(v14);
      }

      v7 += 3;
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

void sub_10A4D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4EEC(va);
  _Unwind_Resume(a1);
}

void sub_10A4D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10A4E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 568;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 568;
      v15 += 568;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_10A4E74(&a9);
  _Unwind_Resume(a1);
}

void ***sub_10A4E74(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_4547F0(v4 - 568);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_10A4EEC(uint64_t a1)
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
            v7 = sub_4547F0(v7 - 568);
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

void **sub_10A4F90(void **a1)
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
        v3 = sub_4547F0(v3 - 568);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10A4FEC(uint64_t *a1)
{
  v1 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x73615A240E6C2BLL)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 3)) >= 0x39B0AD12073615)
  {
    v4 = 0x73615A240E6C2BLL;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    if (v4 <= 0x73615A240E6C2BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 568 * v1;
  __p = 0;
  v11 = v5;
  v12 = v5;
  v13 = 0;
  bzero(v5, 0x238uLL);
  sub_F6BEE8(v5);
  *(v5 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 560) = -1;
  v12 += 568;
  sub_10A474C(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 568;
    sub_4547F0(i - 568);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_10A5150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10A5164(void ***a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
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

  v16 = (8 * (a1[1] - *a1));
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  sub_10A534C(24 * v2, *a2, a2[1], 0x193D4BB7E327A977 * ((a2[1] - *a2) >> 3));
  v6 = 24 * v2 + 24;
  v7 = *a1;
  v8 = a1[1];
  v9 = (v16 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v16 + *a1 - v8);
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *v10;
      v11[2] = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 3;
    }

    while (v10 != v8);
    do
    {
      v12 = *v7;
      if (*v7)
      {
        v13 = v7[1];
        v14 = *v7;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 568);
          }

          while (v13 != v12);
          v14 = *v7;
        }

        v7[1] = v12;
        operator delete(v14);
      }

      v7 += 3;
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

void sub_10A5338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4EEC(va);
  _Unwind_Resume(a1);
}

void sub_10A534C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10A5450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 568;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 568;
      v15 += 568;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_10A4E74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10A5484(uint64_t *a1)
{
  v1 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x73615A240E6C2BLL)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 3)) >= 0x39B0AD12073615)
  {
    v4 = 0x73615A240E6C2BLL;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    if (v4 <= 0x73615A240E6C2BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 568 * v1;
  __p = 0;
  v11 = v5;
  v12 = v5;
  v13 = 0;
  bzero(v5, 0x238uLL);
  sub_F6EB3C(v5);
  *(v5 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 560) = -1;
  v12 += 568;
  sub_10A474C(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 568;
    sub_4547F0(i - 568);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_10A55E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10A55FC(void ***a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
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

  v16 = (8 * (a1[1] - *a1));
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  sub_10A57E4(24 * v2, *a2, a2[1], 0x193D4BB7E327A977 * ((a2[1] - *a2) >> 3));
  v6 = 24 * v2 + 24;
  v7 = *a1;
  v8 = a1[1];
  v9 = (v16 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v16 + *a1 - v8);
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *v10;
      v11[2] = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 3;
    }

    while (v10 != v8);
    do
    {
      v12 = *v7;
      if (*v7)
      {
        v13 = v7[1];
        v14 = *v7;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 568);
          }

          while (v13 != v12);
          v14 = *v7;
        }

        v7[1] = v12;
        operator delete(v14);
      }

      v7 += 3;
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

void sub_10A57D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10A4EEC(va);
  _Unwind_Resume(a1);
}

void sub_10A57E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10A58E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 568;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 568;
      v15 += 568;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_10A4E74(&a9);
  _Unwind_Resume(a1);
}

void sub_10A591C()
{
  byte_27C16FF = 3;
  LODWORD(qword_27C16E8) = 5136193;
  byte_27C1717 = 3;
  LODWORD(qword_27C1700) = 5136194;
  byte_27C172F = 3;
  LODWORD(qword_27C1718) = 5136195;
  byte_27C1747 = 15;
  strcpy(&qword_27C1730, "vehicle_mass_kg");
  byte_27C175F = 21;
  strcpy(&xmmword_27C1748, "vehicle_cargo_mass_kg");
  byte_27C1777 = 19;
  strcpy(&qword_27C1760, "vehicle_aux_power_w");
  byte_27C178F = 15;
  strcpy(&qword_27C1778, "dcdc_efficiency");
  strcpy(&qword_27C1790, "drive_train_efficiency");
  HIBYTE(word_27C17A6) = 22;
  operator new();
}

void sub_10A5AF8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C17A6) < 0)
  {
    sub_21E7118();
  }

  sub_21E7124();
  _Unwind_Resume(a1);
}

void sub_10A5B18(uint64_t a1, __int128 *a2)
{
  *(a1 + 56) = 0;
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 152) = v6;
    return;
  }

  v7 = *(a1 + 144);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 24 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v8 + 24;
  v13 = *(a1 + 144);
  v14 = *(a1 + 152) - v13;
  v15 = v12 - v14;
  memcpy((v12 - v14), v13, v14);
  *(a1 + 144) = v15;
  *(a1 + 152) = v6;
  *(a1 + 160) = 0;
  if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a1 + 152) = v6;
}

unint64_t sub_10A5C78(uint64_t *a1, int32x2_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a3;
  v10 = HIDWORD(*a3);
  v11 = v10 & 0xFFFF0000FFFFFFFFLL | (WORD1(*a3) << 32);
  v12 = sub_2B51D8(*a1, v11);
  if (*(v8 + 7772) == 1)
  {
    sub_30C50C(v8 + 3896, v10, 0);
  }

  result = sub_31D7E8(v8, v11, 1);
  v14 = *(a5 + 48);
  v15 = *(a4 + 40);
  v16 = 1616;
  if (v15 > 0.95)
  {
    v16 = 1592;
  }

  v17 = a5 + v16;
  v39 = *(v17 + 32);
  v40 = *(v17 + 48);
  if (v15 <= 0.95)
  {
    a2[2] = vadd_s32(*(a5 + 1672), a2[2]);
    *&a2[3] += *(a5 + 1680);
  }

  v18 = *v12;
  v19 = -v18;
  v20 = (v12 - v18);
  v21 = *v20;
  if ((v9 & 2) != 0)
  {
    if (v21 < 0x47)
    {
      goto LABEL_17;
    }

    v23 = v20[35];
    if (!v23 || (*(v12 + v23) & 1) == 0 && (*(v12 + v23) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v21 < 0x47 || (v22 = v20[35]) == 0 || (*(v12 + v22) & 2) == 0 && (*(v12 + v22) & 1) == 0)
  {
LABEL_17:
    a2[2] = vadd_s32(*(a5 + 1688), a2[2]);
    *&a2[3] += *(a5 + 1696);
    v19 = -*v12;
  }

  v24 = (v12 + v19);
  if (*v24 >= 0x2Fu)
  {
    v25 = v24[23];
    if (v25)
    {
      if (*(v12 + v25) == 9)
      {
        a2[2] = vadd_s32(*(a5 + 1704), a2[2]);
        *&a2[3] += *(a5 + 1712);
      }
    }
  }

  if ((*&v14 <= -1 || ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v14 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_42;
  }

  if (v14 <= 0.0)
  {
    goto LABEL_42;
  }

  v29 = *(a4 + 8);
  if (v29 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_42;
  }

  v30 = v29 / 10.0 / (v14 / 3.6);
  if (v30 >= 0.0)
  {
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_41;
    }

    v31 = (v30 + v30) + 1;
  }

  else
  {
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_41;
    }

    v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v30 = (v31 >> 1);
LABEL_41:
  v37[0] = v30;
  v37[1] = v30;
  v38 = v29;
  if ((~v30 & 0x7FFFFFFF) == 0)
  {
LABEL_42:
    a2[7].i8[0] = 0;
    return result;
  }

  result = sub_F8634C(v37, &v39, v30);
  v32 = a2[2].i32[0] + result;
  v33 = a2[2].i32[1] + HIDWORD(result);
  a2[2].i32[0] = v32;
  a2[2].i32[1] = v33;
  v35 = (*&a2[3] + v34);
  a2[3] = v35;
  if (*(a4 + 73) == 1 && *(a4 + 72) == 1 && *(a4 + 24) >= *(a5 + 1744) && *(a4 + 8) <= *(a5 + 1736))
  {
    v36 = *(a5 + 1724) + v33;
    a2[2].i32[0] = *(a5 + 1720) + v32;
    a2[2].i32[1] = v36;
    a2[3] = (*(a5 + 1728) + *&v35);
  }

  return result;
}

void sub_10A5FA0(double a1, double a2, uint64_t a3, uint64_t a4, int **a5, unsigned int a6, uint64_t a7)
{
  v7 = *a5;
  v8 = **a5;
  v9 = (*a5 - v8);
  v10 = *v9;
  if (!*(a5 + 38))
  {
    if (v10 < 0x47)
    {
      if (v10 <= 0x38)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = v9[35];
      if (v9[35] && (v7[v9[35]] & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    if (!v9[28] || (*&v7[v9[28]] & 1) == 0 && (*&v7[v9[28]] & 6) != 4 && (*&v7[v9[28]] & 0x22) != 0x20)
    {
      goto LABEL_24;
    }

    if (v10 < 0x47)
    {
      goto LABEL_40;
    }

    v12 = v9[35];
    if (!v9[35])
    {
      goto LABEL_30;
    }

LABEL_27:
    LODWORD(v8) = *&v7[v12];
    if ((v8 & 0x20000000) != 0)
    {
LABEL_18:
      operator new();
    }

LABEL_28:
    v13 = 0;
    if (v10 < 0x9B)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v10 < 0x47)
  {
    if (v10 <= 0x38)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = v9[35];
    if (v9[35] && (v7[v9[35]] & 2) != 0)
    {
LABEL_17:
      LODWORD(v8) = *&v7[v11];
      if ((v8 & 0x40000000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  if (!v9[28] || (*&v7[v9[28]] & 2) == 0 && (*&v7[v9[28]] & 5) != 4 && (*&v7[v9[28]] & 0x21) != 0x20)
  {
LABEL_24:
    operator new();
  }

  if (v10 < 0x47)
  {
    goto LABEL_40;
  }

  v11 = v9[35];
  if (v9[35])
  {
    goto LABEL_17;
  }

LABEL_30:
  v13 = 1;
  if (v10 < 0x9B)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v9[77] && (v7[v9[77]] & 8) != 0)
  {
    v31 = 3;
    if (!*(a5 + 38))
    {
      v31 = 2;
    }

    v32 = a5[v31];
    v17 = -1.0;
    if (v32)
    {
      v33 = (v32 - *v32);
      if (*v33 >= 9u)
      {
        v34 = v33[4];
        if (v34)
        {
          v35 = *(v32 + v34);
          if ((v35 - 1) <= 0xFFFDu)
          {
            v17 = v35 / 100.0;
          }
        }
      }
    }

    v18 = 0;
    v37 = (*&v17 <= -1 || ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v17 - 1) >= 0xFFFFFFFFFFFFFLL;
    a2 = *(a7 + 56);
    if (v37)
    {
      v17 = *(a7 + 56);
    }

    v16 = 1;
    v19 = v9[4];
    if (v19)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

LABEL_33:
  if (*(a5 + 38))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if ((v8 & v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = 0;
    v18 = 0;
    v17 = *(a7 + 40);
    v19 = v9[4];
    if (v19)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

LABEL_40:
  v16 = 0;
  v17 = *(a7 + 48);
  v18 = 1;
  v19 = v9[4];
  if (v19)
  {
LABEL_41:
    LODWORD(a2) = *&v7[v19];
    v20 = *&a2;
    goto LABEL_44;
  }

LABEL_43:
  v20 = 0.0;
LABEL_44:
  v21 = a6 / 1000000000.0 * v20;
  if (v21 >= 0.0)
  {
    if (v21 >= 4.50359963e15)
    {
      goto LABEL_50;
    }

    v22 = (v21 + v21) + 1;
  }

  else
  {
    if (v21 <= -4.50359963e15)
    {
      goto LABEL_50;
    }

    v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
  }

  v21 = (v22 >> 1);
LABEL_50:
  v25 = *&v17 > -1 && ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v17 - 1) < 0xFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v25 || v17 <= 0.0 || (v26 = v21, v21 >= 0x7FFFFFFFFFFFFFFFLL))
  {
    *a4 = -NAN;
    *(a4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_71:
    v39 = 20;
    strcpy(__p, "Invalid segment cost");
    sub_10A5B18(a4, __p);
    goto LABEL_72;
  }

  v27 = v26 / 10.0 / (v17 / 3.6);
  if (v27 >= 0.0)
  {
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_70;
    }

    v28 = (v27 + v27) + 1;
  }

  else
  {
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_70;
    }

    v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v27 = (v28 >> 1);
LABEL_70:
  *a4 = v27;
  *(a4 + 4) = v27;
  *(a4 + 8) = v26;
  if ((v27 | 0x80000000) == 0xFFFFFFFF)
  {
    goto LABEL_71;
  }

  if ((*(a7 + 938) & 1) == 0)
  {
    v29 = (*a5 - **a5);
    if (*v29 >= 0x9Bu)
    {
      v30 = v29[77];
      if (v30)
      {
        if ((*(*a5 + v30 + 3) & 0x80) != 0)
        {
          operator new();
        }
      }
    }
  }

  if (!v16)
  {
    if (v18)
    {
      operator new();
    }

    operator new();
  }

  strcpy(__p, "TRAVERSAL_FERRY_FACTOR");
  v39 = 22;
  *(a4 + 32) = vmulq_f64(*(a7 + 840), *(a4 + 32));
  *(a4 + 48) = *(a7 + 856) * *(a4 + 48);
  sub_10AEFD4((a4 + 104), __p);
LABEL_72:
  if (v39 < 0)
  {
    operator delete(*__p);
  }
}

void sub_10A7B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 137) < 0)
  {
    operator delete(*(v16 - 160));
    sub_1959728(&__p);
    _Unwind_Resume(a1);
  }

  sub_1959728(&__p);
  _Unwind_Resume(a1);
}

void sub_10A7C74()
{
  if (*(v0 - 137) < 0)
  {
    JUMPOUT(0x10A7CA8);
  }

  JUMPOUT(0x10A7CACLL);
}

void sub_10A7C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10A7CB4(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  *(a1 + 32) = vmulq_f64(*a2, *(a1 + 32));
  *(a1 + 48) = a2[1].f64[0] * *(a1 + 48);
  return sub_10AEFD4((a1 + 104), a3);
}

BOOL sub_10A7CE4(uint64_t *a1, char **a2, uint64_t a3, _BYTE *a4)
{
  v4 = *a2;
  v5 = **a2;
  v6 = -v5;
  v7 = &(*a2)[-v5];
  if (*v7 >= 0x2Fu)
  {
    v8 = *(v7 + 23);
    if (v8)
    {
      if (v4[v8] == 44 && *a4 == 1)
      {
        v9 = a4;
        v10 = a3;
        sub_31E068(*a1, *(a2 + 8) | (*(a2 + 18) << 32), 8, &v19);
        v12 = v19;
        v13 = v20;
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        if (v12 != v13)
        {
          return 1;
        }

        v4 = *a2;
        v6 = -**a2;
        a3 = v10;
        a4 = v9;
      }
    }
  }

  v14 = &v4[v6];
  if (*v14 < 0x9Bu || !*(v14 + 77) || (v4[*(v14 + 77)] & 3) == 0)
  {
    return 0;
  }

  v15 = a4[1048];
  if (v15 == 1)
  {
    goto LABEL_21;
  }

  if (v15 != 2)
  {
    return 1;
  }

  v16 = *(v14 + 76);
  if (!v16)
  {
LABEL_21:
    if (!*(a3 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (v4[v16])
    {
      v17 = 1;
    }

    else
    {
      v17 = *(a3 + 32) == 0;
    }

    if (v17)
    {
      return 1;
    }
  }

  return !*a3 || !*(a3 + 8);
}

uint64_t sub_10A7E3C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_10A7F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

double sub_10A8058(uint64_t *a1, int **a2, uint64_t a3)
{
  if (*a3 == 1 && (v4 = (*a2 - **a2), *v4 >= 0x2Fu) && (v5 = v4[23]) != 0 && *(*a2 + v5) == 44)
  {
    v6 = *a1;
    v7 = *(a2 + 8) | (*(a2 + 18) << 32);
    v22[0] = a1;
    v22[1] = &v23;
    v23 = 0.0;
    v8 = sub_2B51D8(v6, v7);
    v9 = v8;
    v10 = (v8 - *v8);
    if (*v10 >= 0x5Fu && (v11 = v10[47]) != 0)
    {
      v12 = (v8 + v11 + *(v8 + v11));
    }

    else
    {
      v12 = 0;
    }

    sub_10AF4E4(v6, v12, v22);
    v19 = (v9 - *v9);
    if (*v19 >= 0x61u && (v20 = v19[48]) != 0)
    {
      v21 = (v9 + v20 + *(v9 + v20));
    }

    else
    {
      v21 = 0;
    }

    sub_10AF4E4(v6, v21, v22);
    v13 = v23;
  }

  else
  {
    v13 = sub_314550(a2);
  }

  v16 = *&v13 > -1 && ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v13 - 1) < 0xFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v17 = 1.0;
  if (!v16)
  {
    return 1.0;
  }

  if (v13 > 0.0)
  {
    LODWORD(v22[0]) = vcvtad_u64_f64(v13);
    return sub_10AEAE0(v22, (a3 + 352));
  }

  return v17;
}

double sub_10A81F4(uint64_t a1, int **a2, double **a3, int a4)
{
  if (a4 && (v6 = (*a2 - **a2), *v6 >= 0x2Fu) && (v7 = v6[23]) != 0 && *(*a2 + v7) == 44)
  {
    v8 = *a1;
    v9 = *(a2 + 8) | (*(a2 + 18) << 32);
    *&v25[0] = a1;
    *&v25[1] = &v26;
    v26 = 0.0;
    v10 = sub_2B51D8(v8, v9);
    v11 = v10;
    v12 = (v10 - *v10);
    if (*v12 >= 0x5Fu && (v13 = v12[47]) != 0)
    {
      v14 = (v10 + v13 + *(v10 + v13));
    }

    else
    {
      v14 = 0;
    }

    sub_10AF728(v8, v14, 8, v25);
    v22 = (v11 - *v11);
    if (*v22 >= 0x61u && (v23 = v22[48]) != 0)
    {
      v24 = (v11 + v23 + *(v11 + v23));
    }

    else
    {
      v24 = 0;
    }

    sub_10AF728(v8, v24, 8, v25);
    v20 = v26;
  }

  else
  {
    v15 = *(a1 + 16);
    v16 = sub_31CEE0(a2);
    v17 = *(a2 + 8) | (*(a2 + 18) << 32);
    v18 = sub_4345A0(v15, v17);
    v19 = sub_4345A0(v15, v17 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = v16 / v19;
    }

    else
    {
      v20 = 0.0;
    }
  }

  v25[0] = v20;
  return sub_10A8878(v25, a3);
}

uint64_t sub_10A8380(uint64_t *a1, int **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (v5 < 0x2F || !v4[23] || v3[v4[23]] != 44)
  {
    return 0;
  }

  if (*(a3 + 2) == 1)
  {
    if (*(a2 + 38))
    {
      if (v5 < 0x47)
      {
        return 0;
      }

      v8 = v4[35];
      if (!v8)
      {
        return 0;
      }

      v9 = 2;
    }

    else
    {
      if (v5 < 0x47)
      {
        return 0;
      }

      v8 = v4[35];
      if (!v8)
      {
        return 0;
      }

      v9 = 1;
    }

    if ((*&v3[v8] & v9) != 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  sub_31E068(*a1, *(a2 + 8) | (*(a2 + 18) << 32), 8, &__p);
  v10 = __p;
  v11 = v36;
  if (__p != v36)
  {
    do
    {
      v13 = *v10;
      v14 = *a1;
      sub_2B51D8(*a1, *v10 & 0xFFFFFFFFFFFFLL);
      if (*(v14 + 7772) == 1)
      {
        sub_30C50C(v14 + 3896, v13, 0);
      }

      sub_31D7E8(v14, v13 & 0xFFFFFFFFFFFFLL, 1);
      sub_31A0AC(*a1, a2, v13 & 0xFFFFFFFFFFFFLL, v37);
      if (v38)
      {
        v15 = v37[0] == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15 || v37[1] == 0;
      v17 = v16;
      if (!v16)
      {
        v18 = (v37[0] - *v37[0]);
        v19 = *v18;
        if (v39)
        {
          if (v19 >= 0x47)
          {
            v20 = v18[35];
            if (v20)
            {
              if ((*(v37[0] + v20) & 2) != 0)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v19 >= 0x47)
        {
          v21 = v18[35];
          if (v21)
          {
            if (*(v37[0] + v21))
            {
LABEL_62:
              result = 1;
              v33 = __p;
              if (!__p)
              {
                return result;
              }

LABEL_61:
              v36 = v33;
              v34 = result;
              operator delete(v33);
              return v34;
            }
          }
        }
      }

      v22 = *a2;
      v23 = (*a2 - **a2);
      v24 = *v23;
      if (*(a2 + 38))
      {
        if (v24 < 0x47)
        {
          goto LABEL_18;
        }

        v25 = v23[35];
        if (!v25)
        {
          goto LABEL_18;
        }

        v26 = *(v22 + v25);
        if ((v26 & 0x141512) != 2)
        {
          goto LABEL_18;
        }

        if ((v26 & 0x40) != 0)
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v24 < 0x47)
        {
          goto LABEL_18;
        }

        v27 = v23[35];
        if (!v27)
        {
          goto LABEL_18;
        }

        v28 = *(v22 + v27);
        if ((v28 & 0xA0A89) != 1)
        {
          goto LABEL_18;
        }

        if ((v28 & 0x20) != 0)
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_18;
        }
      }

      v29 = (v37[0] - *v37[0]);
      v30 = *v29;
      if (v39)
      {
        if (v30 < 0x47)
        {
          goto LABEL_18;
        }

        v31 = v29[35];
        if (!v31)
        {
          goto LABEL_18;
        }

        v32 = 1;
      }

      else
      {
        if (v30 < 0x47)
        {
          goto LABEL_18;
        }

        v31 = v29[35];
        if (!v31)
        {
          goto LABEL_18;
        }

        v32 = 2;
      }

      if ((*(v37[0] + v31) & v32) != 0)
      {
        goto LABEL_62;
      }

LABEL_18:
      v10 = (v10 + 12);
    }

    while (v10 != v11);
  }

  result = 0;
  v33 = __p;
  if (__p)
  {
    goto LABEL_61;
  }

  return result;
}

void sub_10A8650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10A866C(uint64_t a1, uint64_t a2, int **a3)
{
  v5 = (a2 + 472);
  v6 = *a3;
  v7 = (*a3 - **a3);
  v8 = *v7;
  if (*(a3 + 38))
  {
    if (v8 >= 0x47)
    {
      v9 = v7[35];
      if (v9)
      {
        v10 = *(v6 + v9);
        if ((v10 & 0x400) == 0)
        {
          if ((v10 & 0x100010) == 0)
          {
            if ((v10 & 0x100) == 0)
            {
              if ((v10 & 0x40000) == 0)
              {
                v11 = 4096;
                goto LABEL_18;
              }

              return *(a2 + 568);
            }

            return *(a2 + 496);
          }

          return *v5;
        }

        return *(a2 + 448);
      }
    }
  }

  else if (v8 >= 0x47)
  {
    v9 = v7[35];
    if (v9)
    {
      v12 = *(v6 + v9);
      if ((v12 & 0x200) == 0)
      {
        if ((v12 & 0x80008) == 0)
        {
          if ((v12 & 0x80) == 0)
          {
            if ((v12 & 0x20000) == 0)
            {
              v11 = 2048;
LABEL_18:
              if ((*(v6 + v9) & v11) != 0)
              {
                return *(a2 + 520);
              }

              goto LABEL_20;
            }

            return *(a2 + 568);
          }

          return *(a2 + 496);
        }

        return *v5;
      }

      return *(a2 + 448);
    }
  }

LABEL_20:
  if (sub_31393C(a3))
  {
    return *(a2 + 544);
  }

  else if (sub_313B34(a3))
  {
    return *(a2 + 592);
  }

  else if (sub_313B98(a3))
  {
    return v5[9];
  }

  else if (sub_313BFC(a3))
  {
    return *(a2 + 640);
  }

  else if (sub_313C60(a3))
  {
    return v5[12];
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }
  }

  return result;
}

double sub_10A8878(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 > v4)
  {
    v5 = a2[1];
    v6 = (v5 - v3) >> 5;
    if (v6 >= 1)
    {
      if (v5 - v3 != 32)
      {
        do
        {
          v7 = (8 * v6) & 0xFFFFFFFFFFFFFFE0;
          _X13 = v3 + v7;
          __asm { PRFM            #0, [X13] }

          v14 = &v3[4 * (v6 >> 1)];
          _X12 = v14 + v7;
          __asm { PRFM            #0, [X12] }

          if (*v14 >= v2)
          {
            v17 = 0;
          }

          else
          {
            v17 = v6 >> 1;
          }

          v3 += 4 * v17;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
        v4 = *v3;
      }

      v3 += 4 * (v4 < v2);
    }

    if (v5 == v3)
    {
      v19 = *(v5 - 3);
      return *&v19;
    }

    v18 = *(v3 - 4);
    if (v18 != *v3)
    {
      *&v19 = *&vaddq_f64(*(v3 - 3), vmulq_n_f64(vsubq_f64(*(v3 + 1), *(v3 - 3)), (v2 - v18) / (*v3 - v18)));
      return *&v19;
    }
  }

  v19 = *(v3 + 1);
  return *&v19;
}

double sub_10A8968(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0.0;
  }

  v4 = sub_2AF704(a1 + 3896, a2, 1);
  if (!v4)
  {
    return 0.0;
  }

  v5 = &v4[-*v4];
  if (*v5 < 0xDu)
  {
    return 0.0;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    return 0.0;
  }

  v7 = *&v4[v6];
  if (v7 == 0.0)
  {
    return 0.0;
  }

  v9 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  v11 = 0.0;
  if (*v10 >= 0x6Du)
  {
    v12 = v10[54];
    if (v12)
    {
      v13 = (v9 + v12 + *(v9 + v12));
      v14 = v13 + 1;
      v15 = 4 * *v13;
      if (*v13)
      {
        v16 = 0;
        v17 = a2;
        while (1)
        {
          v18 = v13[v16 / 4 + 1];
          v19 = &v13[v16 / 4] + v18 - *(&v13[v16 / 4 + 1] + v18);
          if (*(v19 + 2) < 5u)
          {
            break;
          }

          if (!*(v19 + 4) || *(&v13[v16 / 4 + 1] + v18 + *(v19 + 4)) == 4)
          {
            goto LABEL_18;
          }

          ++v14;
          v16 += 4;
          if (v15 == v16)
          {
            v14 = &v13[v16 / 4 + 1];
            goto LABEL_18;
          }
        }

        v14 = &v13[v16 / 4 + 1];
      }

      else
      {
        v17 = a2;
      }

LABEL_18:
      if (v14 != &v13[v15 / 4 + 1])
      {
        v20 = (v14 + *v14);
        v21 = (v20 - *v20);
        v22 = *v21;
        if ((v17 & 0xFF000000000000) != 0)
        {
          if (v22 < 0xD)
          {
            return (v11 / v7);
          }

          v23 = v21[6];
          if (!v21[6])
          {
            return (v11 / v7);
          }
        }

        else
        {
          if (v22 < 0xB)
          {
            return (v11 / v7);
          }

          v23 = v21[5];
          if (!v21[5])
          {
            return (v11 / v7);
          }
        }

        v11 = *(v20 + v23);
      }
    }
  }

  return (v11 / v7);
}

unint64_t sub_10A8B08(unint64_t result, uint64_t a2, char **a3, unsigned int a4, uint64_t a5, double a6, double a7)
{
  v7 = *a3;
  v8 = **a3;
  v9 = &(*a3)[-v8];
  v10 = *v9;
  if (!*(a3 + 38))
  {
    if (v10 < 0x47)
    {
      if (v10 <= 0x38)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v12 = v9[35];
      if (v9[35] && (v7[v9[35]] & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    if (!v9[28] || (*&v7[v9[28]] & 1) == 0 && (*&v7[v9[28]] & 6) != 4 && (*&v7[v9[28]] & 0x22) != 0x20)
    {
      goto LABEL_70;
    }

    if (v10 < 0x47)
    {
      goto LABEL_39;
    }

    v12 = v9[35];
    if (!v9[35])
    {
      goto LABEL_29;
    }

LABEL_26:
    LODWORD(v8) = *&v7[v12];
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

  if (v10 < 0x47)
  {
    if (v10 <= 0x38)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v11 = v9[35];
    if (v9[35] && (v7[v9[35]] & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  if (!v9[28] || (*&v7[v9[28]] & 2) == 0 && (*&v7[v9[28]] & 5) != 4 && (*&v7[v9[28]] & 0x21) != 0x20)
  {
    goto LABEL_70;
  }

  if (v10 < 0x47)
  {
    goto LABEL_39;
  }

  v11 = v9[35];
  if (v9[35])
  {
LABEL_17:
    LODWORD(v8) = *&v7[v11];
    if ((v8 & 0x40000000) == 0)
    {
LABEL_27:
      v13 = 0;
      if (v10 < 0x9B)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_70:
    *(a2 + 56) = 0;
    return result;
  }

LABEL_29:
  v13 = 1;
  if (v10 < 0x9B)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v9[77] && (v7[v9[77]] & 8) != 0)
  {
    v34 = 3;
    if (!*(a3 + 38))
    {
      v34 = 2;
    }

    v35 = a3[v34];
    v18 = -1.0;
    if (v35)
    {
      v36 = (v35 - *v35);
      if (*v36 >= 9u)
      {
        v37 = v36[4];
        if (v37)
        {
          v38 = *(v35 + v37);
          if ((v38 - 1) <= 0xFFFDu)
          {
            v18 = v38 / 100.0;
          }
        }
      }
    }

    v19 = 0;
    v17 = 0;
    v40 = (*&v18 <= -1 || ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL;
    a7 = *(a5 + 56);
    if (v40)
    {
      v18 = *(a5 + 56);
    }

    v16 = 1;
    v20 = v9[4];
    if (v20)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*(a3 + 38))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if ((v8 & v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = 0;
    v19 = 0;
    v18 = *(a5 + 40);
    v17 = 1;
    v20 = v9[4];
    if (v20)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_39:
  v16 = 0;
  v17 = 0;
  v18 = *(a5 + 48);
  v19 = 1;
  v20 = v9[4];
  if (v20)
  {
LABEL_40:
    LODWORD(a7) = *&v7[v20];
    v21 = *&a7;
    goto LABEL_43;
  }

LABEL_42:
  v21 = 0.0;
LABEL_43:
  v22 = a4 / 1000000000.0 * v21;
  if (v22 >= 0.0)
  {
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_49;
    }

    v23 = (v22 + v22) + 1;
  }

  else
  {
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_49;
    }

    v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v22 = (v23 >> 1);
LABEL_49:
  _ZF = *&v18 > -1 && ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v18 - 1) < 0xFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!_ZF || v18 <= 0.0 || (v27 = v22, v22 >= 0x7FFFFFFFFFFFFFFFLL))
  {
    *a2 = -NAN;
    *(a2 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_70;
  }

  v28 = v27;
  v29 = v27 / 10.0 / (v18 / 3.6);
  if (v29 >= 0.0)
  {
    if (v29 < 4.50359963e15)
    {
      v30 = (v29 + v29) + 1;
      goto LABEL_68;
    }
  }

  else if (v29 > -4.50359963e15)
  {
    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
LABEL_68:
    v29 = (v30 >> 1);
  }

  *a2 = v29;
  *(a2 + 4) = v29;
  *(a2 + 8) = v27;
  if ((v29 | 0x80000000) == 0xFFFFFFFF)
  {
    goto LABEL_70;
  }

  if ((*(a5 + 938) & 1) == 0)
  {
    v31 = &(*a3)[-**a3];
    if (*v31 >= 0x9Bu)
    {
      v32 = *(v31 + 77);
      if (v32)
      {
        if ((*a3)[v32 + 3] < 0)
        {
          goto LABEL_70;
        }
      }
    }
  }

  v33 = (a5 + 504);
  if (v16)
  {
    *(a2 + 32) = vmulq_f64(*(a5 + 840), *(a2 + 32));
    *(a2 + 48) = *(a5 + 856) * *(a2 + 48);
    return result;
  }

  v41 = *a3;
  v42 = **a3;
  if (v19)
  {
    v43 = vmulq_f64(*(a5 + 64), *(a2 + 32));
    *(a2 + 32) = v43;
    v44 = *(a5 + 80) * *(a2 + 48);
    *(a2 + 48) = v44;
    v45 = -v42;
    v46 = &v41[-v42];
    if (*v46 >= 0x2Fu)
    {
      v47 = *(v46 + 23);
      if (v47)
      {
        if (v41[v47] == 9)
        {
          *(a2 + 32) = vmulq_f64(v43, *(a5 + 88));
          *(a2 + 48) = v44 * *(a5 + 104);
        }
      }
    }
  }

  else
  {
    v45 = -v42;
  }

  v48 = (a5 + 32);
  v49 = &v41[v45];
  v50 = *&v41[v45];
  if (v50 < 0x9B || (v51 = *(v49 + 77), !*(v49 + 77)))
  {
    v53 = 0;
    goto LABEL_107;
  }

  v52 = *&v41[v51];
  if ((v52 & 0x800) != 0)
  {
    v58 = 1;
    if (*(a3 + 38))
    {
      v58 = 2;
    }

    v53 = (v58 & v52) != 0;
  }

  else
  {
    v53 = 0;
  }

  v59 = *&v41[v51];
  if ((v59 & 0x800) == 0)
  {
LABEL_107:
    v54 = 0;
    v55 = v50 >= 0x47;
    if (!*(a3 + 38))
    {
      goto LABEL_120;
    }

LABEL_108:
    if (v55)
    {
      v56 = *(v49 + 35);
      if (v56)
      {
        if ((*&v41[v56] & 0x141510) != 0)
        {
LABEL_124:
          v61 = 1;
          goto LABEL_126;
        }

        v57 = 64;
        goto LABEL_229;
      }
    }

LABEL_125:
    v61 = 0;
    goto LABEL_126;
  }

  v60 = 1;
  if (*(a3 + 38))
  {
    v60 = 2;
  }

  v54 = (v60 & v59) != 0;
  v55 = v50 >= 0x47;
  if (*(a3 + 38))
  {
    goto LABEL_108;
  }

LABEL_120:
  if (!v55)
  {
    goto LABEL_125;
  }

  v56 = *(v49 + 35);
  if (!v56)
  {
    goto LABEL_125;
  }

  if ((*&v41[v56] & 0xA0A88) != 0)
  {
    goto LABEL_124;
  }

  v57 = 32;
LABEL_229:
  v61 = (*&v41[v56] & v57) != 0;
LABEL_126:
  v62 = (*(a5 + 864) + 24 * v53 + 24 * (v54 & v61));
  *(a2 + 32) = vmulq_f64(*v62, *(a2 + 32));
  *(a2 + 48) = v62[1].f64[0] * *(a2 + 48);
  v63 = result;
  sub_31D6E8(*result, *(a3 + 8) | (*(a3 + 18) << 32), v184);
  v65 = v63;
  v66 = v63;
  v67 = a3;
  v68 = sub_10A7CE4(v66, a3, v184, v48);
  if (v68)
  {
    v69 = *a3;
    v70 = *(a3 + 38);
    v71 = &(*a3)[-**a3];
    v72 = *v71;
    if (*(a3 + 38))
    {
      if (v72 < 0x9B)
      {
        goto LABEL_139;
      }

      v73 = *(v71 + 77);
      if (!v73)
      {
        goto LABEL_139;
      }

      v74 = 2;
    }

    else
    {
      if (v72 < 0x9B)
      {
        goto LABEL_139;
      }

      v73 = *(v71 + 77);
      if (!v73)
      {
        goto LABEL_139;
      }

      v74 = 1;
    }

    if ((*&v69[v73] & v74) != 0)
    {
LABEL_140:
      v80 = sub_311A24(v69, v70);
      v81 = *(a5 + 360);
      v82 = *(a5 + 368);
      if (v81 != v82)
      {
        v83 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3) - 1;
        if (v83 >= v80)
        {
          v84 = v80;
        }

        else
        {
          v84 = v83;
        }

        v85 = sub_10A7E3C((a5 + 360), v84);
        *(a2 + 32) = vmulq_f64(*v85, *(a2 + 32));
        *(a2 + 48) = v85[1].f64[0] * *(a2 + 48);
      }

      v79 = v65;
      v86.f64[0] = sub_10A8058(v65, v67, v48);
      v86.f64[1] = v87;
      *(a2 + 32) = vmulq_f64(v86, *(a2 + 32));
      *(a2 + 48) = v88 * *(a2 + 48);
      v89.f64[0] = sub_10A81F4(v65, v67, (a5 + 408), *(a5 + 32));
      v75 = v67;
      v76 = a5;
      v77 = a2;
      v89.f64[1] = v90;
      *(a2 + 32) = vmulq_f64(v89, *(a2 + 32));
      goto LABEL_146;
    }

LABEL_139:
    v70 = v70 == 0;
    goto LABEL_140;
  }

  v75 = a3;
  if (v17)
  {
    v77 = a2;
    v76 = a5;
    *(a2 + 32) = vmulq_f64(*(a5 + 768), *(a2 + 32));
    v78 = *(a5 + 784);
    v79 = v65;
LABEL_146:
    v77[3].f64[0] = v78 * v77[3].f64[0];
    goto LABEL_147;
  }

  v77 = a2;
  v76 = a5;
  v79 = v65;
  if (v19)
  {
    *(a2 + 32) = vmulq_f64(v33[18], *(a2 + 32));
    v78 = *(a5 + 808);
    goto LABEL_146;
  }

LABEL_147:
  v91 = *(v76 + 1080);
  if (v91 != 1)
  {
    if (v91 != 2 || (v92 = (*v75 - **v75), *v92 >= 0x99u) && (v93 = v92[76]) != 0 && *(*v75 + v93))
    {
      if (*v48)
      {
        v68 = sub_10A8380(v65, v75, v48);
        v75 = v67;
        v77 = a2;
        v76 = a5;
        v79 = v65;
        if (v68)
        {
          *(a2 + 32) = vmulq_f64(v33[33], *(a2 + 32));
          *(a2 + 48) = *(a5 + 1048) * *(a2 + 48);
        }
      }

      if (*v48 != 1 || !v185)
      {
        goto LABEL_166;
      }

LABEL_161:
      if (v184[0] && v184[1])
      {
        if ((*v48 & 1) == 0)
        {
          v77[2] = vmulq_f64(*(v76 + 1056), v77[2]);
          v77[3].f64[0] = *(v76 + 1072) * v77[3].f64[0];
        }

        *&v94.f64[0] = sub_10A866C(v68, v48, v184).n128_u64[0];
        v77 = a2;
        v76 = a5;
        v94.f64[1] = v95;
        *(a2 + 32) = vmulq_f64(v94, *(a2 + 32));
        *(a2 + 48) = v96 * *(a2 + 48);
        v75 = v67;
        v79 = v65;
      }

      goto LABEL_166;
    }
  }

  v68 = sub_10A8380(v79, v75, v48);
  v77 = a2;
  v76 = a5;
  if (v68)
  {
    *(a2 + 32) = vmulq_f64(v33[33], *(a2 + 32));
    *(a2 + 48) = *(a5 + 1048) * *(a2 + 48);
  }

  v75 = v67;
  v79 = v65;
  if (v185)
  {
    goto LABEL_161;
  }

LABEL_166:
  v97 = *v75;
  v98 = (*v75 - **v75);
  v99 = *v98;
  if (!*(v75 + 38))
  {
    if (v99 >= 0x47)
    {
      v100 = v98[35];
      if (v98[35])
      {
        v102 = *(v97 + v98[35]);
        if ((v102 & 0xA0288) != 0)
        {
          goto LABEL_185;
        }

        if ((v102 & 0x820) != 0)
        {
LABEL_184:
          v100 = v98[35];
          if (!v98[35])
          {
            goto LABEL_188;
          }

LABEL_185:
          if ((*(v97 + v100) & 0xA0A88) != 0)
          {
            goto LABEL_191;
          }

          v104 = 32;
LABEL_187:
          if ((*(v97 + v100) & v104) != 0)
          {
            goto LABEL_191;
          }

          goto LABEL_188;
        }
      }
    }

LABEL_176:
    if (*(v76 + 432) != *(v76 + 440))
    {
      *v183 = sub_2B31AC(v79[1], v75[4] & 0xFFFFFFFFFFFFFFLL) / 1000000000.0;
      v103 = (a5 + 432);
LABEL_190:
      v105.f64[0] = sub_10A8878(v183, v103);
      v75 = v67;
      v77 = a2;
      v76 = a5;
      v105.f64[1] = v106;
      *(a2 + 32) = vmulq_f64(v105, *(a2 + 32));
      *(a2 + 48) = v107 * *(a2 + 48);
      goto LABEL_191;
    }

    if (*(v75 + 38))
    {
      if (v99 < 0x47)
      {
        goto LABEL_188;
      }

      goto LABEL_180;
    }

    if (v99 < 0x47)
    {
      goto LABEL_188;
    }

    goto LABEL_184;
  }

  if (v99 < 0x47)
  {
    goto LABEL_176;
  }

  v100 = v98[35];
  if (!v98[35])
  {
    goto LABEL_176;
  }

  v101 = *(v97 + v98[35]);
  if ((v101 & 0x141510) != 0)
  {
LABEL_181:
    if ((*(v97 + v100) & 0x141510) != 0)
    {
      goto LABEL_191;
    }

    v104 = 64;
    goto LABEL_187;
  }

  if ((v101 & 0x40) == 0)
  {
    goto LABEL_176;
  }

LABEL_180:
  v100 = v98[35];
  if (v98[35])
  {
    goto LABEL_181;
  }

LABEL_188:
  if (*(v76 + 456) != *(v76 + 464))
  {
    v183[0] = COERCE_VOID_CDECL_STD_OSTRINGSTREAM_HIDDEN_THIS_(sub_10A8968(*v79, v75[4] & 0xFFFFFFFFFFFFFFLL));
    v103 = (a5 + 456);
    goto LABEL_190;
  }

LABEL_191:
  v108 = (*v75 - **v75);
  if (*v108 >= 0x2Fu)
  {
    v109 = v108[23];
    if (v109)
    {
      if (*(*v75 + v109) == 9 && *(v76 + 280) == *(v76 + 288))
      {
        v177 = 224;
        v178 = v33;
        v110 = 216;
        v111 = 208;
        v112 = 152;
        v113 = 144;
        v114 = 136;
        goto LABEL_202;
      }
    }
  }

  if (v17)
  {
    if (*(v76 + 256) == *(v76 + 264))
    {
      v177 = 200;
      v178 = v33;
      v110 = 192;
      v111 = 184;
      v112 = 128;
      v113 = 120;
      v114 = 112;
LABEL_202:
      v115 = sub_31185C(v75);
      v116.f64[0] = *(a5 + v114);
      v117 = v115 * *(a5 + v112) + 1.0;
      v116.f64[1] = *(a5 + v113);
      v118 = vmulq_n_f64(v116, v115);
      __asm { FMOV            V2.2D, #1.0 }

      v176 = _Q2;
      *(a2 + 32) = vmulq_f64(vaddq_f64(v118, _Q2), *(a2 + 32));
      *(a2 + 48) = v117 * *(a2 + 48);
      v122 = sub_311940(v67);
      v75 = v67;
      v76 = a5;
      v77 = a2;
      v123 = 1.0 / (v122 * *(a5 + v177) + 1.0);
      v124.f64[0] = *(a5 + v111);
      v124.f64[1] = *(a5 + v110);
      *(a2 + 32) = vmulq_f64(vdivq_f64(v176, vaddq_f64(vmulq_n_f64(v124, v122), v176)), *(a2 + 32));
      *(a2 + 48) = v123 * *(a2 + 48);
      v33 = v178;
    }
  }

  else if (v19 && *(v76 + 304) == *(v76 + 312))
  {
    v177 = 248;
    v178 = v33;
    v110 = 240;
    v111 = 232;
    v112 = 176;
    v113 = 168;
    v114 = 160;
    goto LABEL_202;
  }

  v125 = *v75;
  v126 = (*v75 - **v75);
  v127 = *v126;
  if (v127 >= 0x2F && v126[23])
  {
    v128 = 272;
    if (v17)
    {
      v128 = 224;
    }

    v129 = &v48[v128];
    if (*(v125 + v126[23]) == 9)
    {
      v130 = (v76 + 280);
    }

    else
    {
      v130 = v129;
    }
  }

  else
  {
    v131 = 272;
    if (v17)
    {
      v131 = 224;
    }

    v130 = &v48[v131];
  }

  if (*v130 != v130[1])
  {
    if (*(v75 + 38))
    {
      v132 = 0.0;
      if (v127 < 0x57)
      {
        goto LABEL_233;
      }

      if (v126[43])
      {
        v125 = (v125 + v126[43] + *(v125 + v126[43]));
        v133 = (v125 - *v125);
        if (*v133 < 7u)
        {
          goto LABEL_233;
        }

        v134 = v133[3];
        if (!v134)
        {
          goto LABEL_233;
        }

LABEL_232:
        LOWORD(v132) = *(v125 + v134);
        v132 = *&v132 + *&v132;
        goto LABEL_233;
      }

      if (v127 >= 0x7D)
      {
        v134 = v126[62];
        if (v126[62])
        {
          goto LABEL_232;
        }
      }
    }

    else
    {
      v132 = 0.0;
      if (v127 < 0x57)
      {
        goto LABEL_233;
      }

      if (v126[43])
      {
        v125 = (v125 + v126[43] + *(v125 + v126[43]));
        v135 = (v125 - *v125);
        if (*v135 >= 5u)
        {
          v134 = v135[2];
          if (v134)
          {
            goto LABEL_232;
          }
        }
      }

      else if (v127 >= 0x7B)
      {
        v134 = v126[61];
        if (v126[61])
        {
          goto LABEL_232;
        }
      }
    }

LABEL_233:
    *v183 = v132 / 65535.0;
    v136.f64[0] = sub_10A8878(v183, v130);
    v136.f64[1] = v137;
    *(a2 + 32) = vmulq_f64(v136, *(a2 + 32));
    *(a2 + 48) = v138 * *(a2 + 48);
    v139 = *v67;
    v140 = (*v67 - **v67);
    v141 = *v140;
    v142 = 0.0;
    if (*(v67 + 38))
    {
      if (v141 >= 0x57)
      {
        if (v140[43])
        {
          v139 = (v139 + v140[43] + *(v139 + v140[43]));
          v143 = (v139 - *v139);
          if (*v143 < 5u)
          {
            goto LABEL_250;
          }

          v144 = v143[2];
          if (!v144)
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (v141 < 0x7B)
          {
            goto LABEL_250;
          }

          v144 = v140[61];
          if (!v144)
          {
            goto LABEL_250;
          }
        }

        goto LABEL_249;
      }
    }

    else if (v141 >= 0x57)
    {
      if (v140[43])
      {
        v139 = (v139 + v140[43] + *(v139 + v140[43]));
        v145 = (v139 - *v139);
        if (*v145 < 7u)
        {
          goto LABEL_250;
        }

        v144 = v145[3];
        if (!v144)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v141 < 0x7D)
        {
          goto LABEL_250;
        }

        v144 = v140[62];
        if (!v144)
        {
          goto LABEL_250;
        }
      }

LABEL_249:
      LOWORD(v142) = *(v139 + v144);
      v142 = *&v142 + *&v142;
    }

LABEL_250:
    *v183 = v142 / -65535.0;
    v146.f64[0] = sub_10A8878(v183, v130);
    v146.f64[1] = v147;
    v77 = a2;
    v76 = a5;
    *(a2 + 32) = vmulq_f64(v146, *(a2 + 32));
    *(a2 + 48) = v148 * *(a2 + 48);
    v75 = v67;
  }

  if ((v17 & 1) == 0)
  {
    result = *v75;
    v150 = -**v75;
    goto LABEL_281;
  }

  if (sub_3136E4(v75))
  {
    *(a2 + 32) = vmulq_f64(*(a5 + 480), *(a2 + 32));
    *(a2 + 48) = *(a5 + 496) * *(a2 + 48);
  }

  if (sub_313748(v67) || sub_313874(v67))
  {
    *(a2 + 32) = vmulq_f64(*v33, *(a2 + 32));
    *(a2 + 48) = *(a5 + 520) * *(a2 + 48);
    if (!sub_3137AC(v67))
    {
      goto LABEL_257;
    }
  }

  else if (!sub_3137AC(v67))
  {
LABEL_257:
    if (sub_313810(v67))
    {
      goto LABEL_258;
    }

    goto LABEL_269;
  }

  *(a2 + 32) = vmulq_f64(*(a5 + 528), *(a2 + 32));
  *(a2 + 48) = *(a5 + 544) * *(a2 + 48);
  if (sub_313810(v67))
  {
LABEL_258:
    *(a2 + 32) = vmulq_f64(v33[6], *(a2 + 32));
    *(a2 + 48) = *(a5 + 616) * *(a2 + 48);
    if (!sub_3138D8(v67))
    {
      goto LABEL_259;
    }

    goto LABEL_270;
  }

LABEL_269:
  if (!sub_3138D8(v67))
  {
LABEL_259:
    if (sub_31393C(v67))
    {
      goto LABEL_260;
    }

    goto LABEL_271;
  }

LABEL_270:
  *(a2 + 32) = vmulq_f64(v33[3], *(a2 + 32));
  *(a2 + 48) = *(a5 + 568) * *(a2 + 48);
  if (sub_31393C(v67))
  {
LABEL_260:
    *(a2 + 32) = vmulq_f64(*(a5 + 576), *(a2 + 32));
    *(a2 + 48) = *(a5 + 592) * *(a2 + 48);
    if (!sub_313AD0(v67))
    {
      goto LABEL_261;
    }

    goto LABEL_272;
  }

LABEL_271:
  if (!sub_313AD0(v67))
  {
LABEL_261:
    if (sub_313B34(v67))
    {
      goto LABEL_262;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(a2 + 32) = vmulq_f64(*(a5 + 816), *(a2 + 32));
  *(a2 + 48) = *(a5 + 832) * *(a2 + 48);
  if (sub_313B34(v67))
  {
LABEL_262:
    *(a2 + 32) = vmulq_f64(*(a5 + 624), *(a2 + 32));
    *(a2 + 48) = *(a5 + 640) * *(a2 + 48);
    if (!sub_313B98(v67))
    {
      goto LABEL_263;
    }

    goto LABEL_274;
  }

LABEL_273:
  if (!sub_313B98(v67))
  {
LABEL_263:
    if (sub_313BFC(v67))
    {
      goto LABEL_264;
    }

    goto LABEL_275;
  }

LABEL_274:
  *(a2 + 32) = vmulq_f64(v33[9], *(a2 + 32));
  *(a2 + 48) = *(a5 + 664) * *(a2 + 48);
  if (sub_313BFC(v67))
  {
LABEL_264:
    *(a2 + 32) = vmulq_f64(*(a5 + 672), *(a2 + 32));
    *(a2 + 48) = *(a5 + 688) * *(a2 + 48);
    v149 = sub_313C60(v67);
    v77 = a2;
    v76 = a5;
    if (!v149)
    {
      goto LABEL_277;
    }

    goto LABEL_276;
  }

LABEL_275:
  v151 = sub_313C60(v67);
  v77 = a2;
  v76 = a5;
  if (v151)
  {
LABEL_276:
    v77[2] = vmulq_f64(v33[12], v77[2]);
    v77[3].f64[0] = *(v76 + 712) * v77[3].f64[0];
  }

LABEL_277:
  v75 = v67;
  result = *v67;
  v152 = **v67;
  v150 = -v152;
  v153 = (*v67 - v152);
  if (*v153 >= 0x9Bu)
  {
    v154 = v153[77];
    if (v154)
    {
      if ((*(result + v154 + 2) & 0x40) != 0)
      {
        v77[2] = vmulq_f64(*(v76 + 720), v77[2]);
        v77[3].f64[0] = *(v76 + 736) * v77[3].f64[0];
      }
    }
  }

LABEL_281:
  v155 = result + v150;
  v156 = *(result + v150);
  if (v156 >= 0x9B && *(v155 + 154) && (*(result + *(v155 + 154) + 2) & 0x20) != 0)
  {
    v77[2] = vmulq_f64(v33[15], v77[2]);
    v77[3].f64[0] = *(v76 + 760) * v77[3].f64[0];
  }

  if (*(v76 + 936) != 1)
  {
    goto LABEL_298;
  }

  if (*(v75 + 38))
  {
    if (v156 >= 0x47 && *(v155 + 70))
    {
      v157 = *(result + *(v155 + 70));
      if ((v157 & 0x140510) != 0)
      {
        goto LABEL_314;
      }

      v158 = 4096;
      goto LABEL_295;
    }
  }

  else if (v156 >= 0x47 && *(v155 + 70))
  {
    v157 = *(result + *(v155 + 70));
    if ((v157 & 0xA0288) != 0)
    {
      goto LABEL_314;
    }

    v158 = 2048;
LABEL_295:
    if ((v157 & v158) != 0)
    {
      goto LABEL_314;
    }
  }

  result = sub_10AF488(result, *(v75 + 38));
  v75 = v67;
  v77 = a2;
  v76 = a5;
  if (result)
  {
    goto LABEL_314;
  }

  result = *v67;
  v150 = -**v67;
LABEL_298:
  v159 = (result + v150);
  if (*v159 >= 0x2Fu && (v160 = v159[23]) != 0)
  {
    v161 = *(result + v160);
  }

  else
  {
    v161 = 32;
  }

  if (v17)
  {
    v162 = *(v76 + 888);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v76 + 896) - v162) >> 3) <= v161)
    {
      result = sub_7E7E4(1u);
      v75 = v67;
      v76 = a5;
      if (!result)
      {
        goto LABEL_314;
      }

      sub_19594F8(v183);
      sub_4A5C(v183, "Invalid FOW factor access for form_of_way_idx: ", 47);
      v163 = std::ostream::operator<<();
      sub_4A5C(v163, " and fow_factors_cycling size: ", 31);
      std::ostream::operator<<();
      sub_1959680(v183, __p);
      sub_7E854(__p, 1u);
      goto LABEL_311;
    }

LABEL_308:
    v164 = (v162 + 24 * v161);
    v77[2] = vmulq_f64(*v164, v77[2]);
    v77[3].f64[0] = v164[1].f64[0] * v77[3].f64[0];
    goto LABEL_314;
  }

  if (!v19)
  {
    goto LABEL_314;
  }

  v162 = *(v76 + 912);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v76 + 920) - v162) >> 3) > v161)
  {
    goto LABEL_308;
  }

  result = sub_7E7E4(1u);
  v75 = v67;
  v76 = a5;
  if (!result)
  {
    goto LABEL_314;
  }

  sub_19594F8(v183);
  sub_4A5C(v183, "Invalid FOW factor access for form_of_way_idx: ", 47);
  v165 = std::ostream::operator<<();
  sub_4A5C(v165, " and fow_factors_walking size: ", 31);
  std::ostream::operator<<();
  sub_1959680(v183, __p);
  sub_7E854(__p, 1u);
LABEL_311:
  if (v182 < 0)
  {
    operator delete(__p[0]);
  }

  result = sub_1959728(v183);
  v76 = a5;
  v75 = v67;
LABEL_314:
  if (*(v76 + 328) || *(v76 + 332) || *(v76 + 336))
  {
    v166 = *(v75 + 38);
    v167 = *v75;
    v168 = (v167 - *v167);
    v169 = *v168;
    v170 = 0.0;
    if (v166)
    {
      if (v169 >= 0x57)
      {
        if (v168[43])
        {
          v167 = (v167 + v168[43] + *(v167 + v168[43]));
          v171 = (v167 - *v167);
          if (*v171 < 7u)
          {
            goto LABEL_334;
          }

          v172 = v171[3];
          if (!v172)
          {
            goto LABEL_334;
          }
        }

        else
        {
          if (v169 < 0x7D)
          {
            goto LABEL_334;
          }

          v172 = v168[62];
          if (!v172)
          {
            goto LABEL_334;
          }
        }

        goto LABEL_333;
      }
    }

    else if (v169 >= 0x57)
    {
      if (v168[43])
      {
        v167 = (v167 + v168[43] + *(v167 + v168[43]));
        v173 = (v167 - *v167);
        if (*v173 < 5u)
        {
          goto LABEL_334;
        }

        v172 = v173[2];
        if (!v172)
        {
          goto LABEL_334;
        }
      }

      else
      {
        if (v169 < 0x7B)
        {
          goto LABEL_334;
        }

        v172 = v168[61];
        if (!v172)
        {
          goto LABEL_334;
        }
      }

LABEL_333:
      LOWORD(v170) = *(v167 + v172);
      v170 = *&v170 + *&v170;
    }

LABEL_334:
    result = sub_108CF40((v76 + 328), v28 / 100.0 * (v170 / 65535.0), v28 / 100.0);
    v174 = *(a2 + 20) + HIDWORD(result);
    *(a2 + 16) += result;
    *(a2 + 20) = v174;
    *(a2 + 24) += v175;
  }

  return result;
}

void sub_10A9FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_1959728(&a21);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  _Unwind_Resume(a1);
}

void sub_10AA048(int **a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5)
{
  sub_10AA0E8(a1, a2, a3, a5);
  if (*(a2 + 56) == 1)
  {
    sub_10A5FA0(v10, v11, a1, a2, a3, a4, a5);
  }
}

void sub_10AA0E8(int **a1, uint64_t a2, int **a3, uint64_t a4)
{
  v9 = a3 + 5;
  v8 = a3[5];
  v10 = (v8 - *v8);
  v11 = *v10;
  if (*(a3 + 78))
  {
    if (v11 < 0x47)
    {
      if (v11 <= 0x38)
      {
        goto LABEL_19;
      }
    }

    else if (v10[35] && (*(v8 + v10[35]) & 2) != 0)
    {
      goto LABEL_20;
    }

    v12 = v10[28];
    if (!v12)
    {
LABEL_19:
      operator new();
    }

    v13 = *(v8 + v12);
    if ((v13 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    if ((v13 & 7) == 4 || (v13 & 0x23) == 0x20)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v11 < 0x47)
  {
    if (v11 <= 0x38)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v10[35] || (*(v8 + v10[35]) & 1) == 0)
  {
LABEL_15:
    v14 = v10[28];
    if (!v14)
    {
      goto LABEL_19;
    }

    v13 = *(v8 + v14);
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_20:
  if (*(a4 + 939) != 1)
  {
    goto LABEL_28;
  }

  if (!sub_314160(a3) && !sub_314010(v9))
  {
    if (sub_314400(a3))
    {
      operator new();
    }

    if (sub_3142B0(v9))
    {
      operator new();
    }

LABEL_28:
    v15 = *a3;
    v16 = **a3;
    v17 = -v16;
    v18 = (*a3 - v16);
    if (*v18 < 0x9Bu || (v19 = v18[77]) == 0 || (*(v15 + v19 + 2) & 0x20) == 0)
    {
      v20 = (*v9 - **v9);
      if (*v20 >= 0x9Bu)
      {
        v21 = v20[77];
        if (v21)
        {
          if ((*(*v9 + v21 + 2) & 0x20) != 0)
          {
            operator new();
          }
        }
      }
    }

    v22 = (v15 + v17);
    v23 = *(v15 + v17);
    if (*(a3 + 38))
    {
      if (v23 < 0x47 || !v22[35])
      {
        if (*v22 <= 0x46u)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

      if ((*(v15 + v22[35]) & 2) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v23 < 0x47 || !v22[35])
      {
        if (*v22 <= 0x46u)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      if ((*(v15 + v22[35]) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v24 = a3[5];
    v25 = (v24 - *v24);
    v26 = *v25;
    if (*(a3 + 78))
    {
      if (v26 >= 0x47)
      {
        v27 = v25[35];
        if (v27)
        {
          v28 = 2;
          goto LABEL_54;
        }
      }
    }

    else if (v26 >= 0x47)
    {
      v27 = v25[35];
      if (v27)
      {
        v28 = 1;
LABEL_54:
        if ((*(v24 + v27) & v28) == 0)
        {
          goto LABEL_55;
        }

LABEL_56:
        v22 = (v15 + v17);
        v29 = *(v15 + v17);
        if (*(a3 + 38))
        {
          if (v29 < 0x47)
          {
            goto LABEL_64;
          }

LABEL_58:
          if (v22[35] && (*(v15 + v22[35]) & 2) != 0)
          {
            goto LABEL_73;
          }

LABEL_64:
          v30 = a3[5];
          v31 = (v30 - *v30);
          v32 = *v31;
          if (*(a3 + 78))
          {
            if (v32 < 0x47 || (v33 = v31[35]) == 0 || (*(v30 + v33) & 2) == 0)
            {
LABEL_73:
              if (*(v15 + v17) < 0x9Bu || !*(v15 + v17 + 154) || (*(v15 + *(v15 + v17 + 154)) & 8) == 0)
              {
                v35 = (*v9 - **v9);
                if (*v35 >= 0x9Bu)
                {
                  v36 = v35[77];
                  if (v36)
                  {
                    if ((*(*v9 + v36) & 8) != 0)
                    {
                      operator new();
                    }
                  }
                }
              }

              if (*(v15 + v17) < 0x9Bu)
              {
                goto LABEL_86;
              }

              if (!*(v15 + v17 + 154))
              {
                goto LABEL_86;
              }

              v37 = *(v15 + *(v15 + v17 + 154));
              if ((v37 & 0x800) == 0)
              {
                goto LABEL_86;
              }

              v38 = 1;
              if (*(a3 + 38))
              {
                v38 = 2;
              }

              if ((v38 & v37) == 0)
              {
LABEL_86:
                v39 = (*v9 - **v9);
                if (*v39 >= 0x9Bu)
                {
                  v40 = v39[77];
                  if (v40)
                  {
                    v41 = *(*v9 + v40);
                    if ((v41 & 0x800) != 0)
                    {
                      v42 = 1;
                      if (*(a3 + 78))
                      {
                        v42 = 2;
                      }

                      if ((v42 & v41) != 0)
                      {
                        operator new();
                      }
                    }
                  }
                }
              }

              v43 = (v15 + v17);
              if (*v43 >= 0x2Fu && (v44 = v43[23]) != 0)
              {
                v45 = *(v15 + v44);
                v46 = *v9;
                v47 = (*v9 - **v9);
                if (*v47 < 0x2Fu)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v45 = 32;
                v46 = *v9;
                v47 = (*v9 - **v9);
                if (*v47 < 0x2Fu)
                {
                  goto LABEL_101;
                }
              }

              v48 = v47[23];
              if (v48)
              {
                v49 = *(v46 + v48);
                if (v45 == v49)
                {
                  goto LABEL_107;
                }

LABEL_102:
                if (v49 == 9)
                {
                  operator new();
                }

                if (v49 == 14 && sub_10AE0EC(a1, a3, v9, a4 + 32))
                {
                  operator new();
                }

LABEL_107:
                if (sub_10AE538(a1, a3, v9, a4 + 32))
                {
                  operator new();
                }

                v50 = *a3;
                v51 = **a3;
                v52 = (*a3 - v51);
                v53 = *v52;
                if (*(a3 + 38))
                {
                  if (v53 >= 0x9B)
                  {
                    v54 = v52[77];
                    if (v52[77])
                    {
                      v55 = 1;
                      if ((*(v50 + v54) & 2) != 0)
                      {
LABEL_120:
                        v56 = a3[5];
                        v57 = (v56 - *v56);
                        v58 = *v57;
                        if (*(a3 + 78))
                        {
                          if (v58 >= 0x9B)
                          {
                            v59 = v57[77];
                            if (v57[77])
                            {
                              v60 = 1;
                              if ((*(v56 + v59) & 2) != 0)
                              {
LABEL_132:
                                if (v55 != v60)
                                {
                                  goto LABEL_133;
                                }

LABEL_134:
                                v61 = (v50 - v51);
                                v62 = *v61;
                                if (*(a3 + 38))
                                {
                                  if (v62 >= 0x4D && v61[38])
                                  {
                                    if ((*(v50 + v61[38]) & 8) == 0)
                                    {
                                      if ((*(v50 + v61[38]) & 2) == 0)
                                      {
                                        goto LABEL_146;
                                      }

LABEL_144:
                                      operator new();
                                    }

LABEL_145:
                                    operator new();
                                  }
                                }

                                else if (v62 >= 0x4D && v61[38])
                                {
                                  if ((*(v50 + v61[38]) & 4) != 0)
                                  {
                                    goto LABEL_145;
                                  }

                                  if (*(v50 + v61[38]))
                                  {
                                    goto LABEL_144;
                                  }
                                }

LABEL_146:
                                if ((*(a3 + 84) & 4) != 0 || (v63 = *a3, v64 = (*a3 - **a3), v65 = *v64, v65 >= 0x2F) && v64[23] && (v66 = *(v63 + v64[23]), v66 <= 0x36) && ((1 << v66) & 0x44000000000008) != 0 && (v67 = (*v9 - **v9), *v67 >= 0x2Fu) && (v68 = v67[23]) != 0 && (v69 = *(*v9 + v68), v69 <= 0x36) && ((1 << v69) & 0x44000000000008) != 0)
                                {
                                  if (sub_10AC574(a1, a3, v9, (a4 + 32)))
                                  {
                                    if (*(a4 + 1384) == 1 && (*(a3 + 84) & 4) == 0)
                                    {
                                      sub_10AC880(a1, a3, v9, a4 + 32, 1);
                                      *__p = v95;
                                      sub_10ADE24(__p, (a4 + 1472));
                                    }

                                    operator new();
                                  }

                                  sub_10ADF6C(a1, a3, a4 + 32);
                                  operator new();
                                }

                                if (*(a3 + 38))
                                {
                                  if (v65 < 0x49 || (v70 = v64[36]) == 0)
                                  {
LABEL_162:
                                    v71 = -1;
LABEL_163:
                                    v72 = v71 + 18000;
                                    v73 = v71 - 18000;
                                    if ((v72 >> 5) >= 0x465u)
                                    {
                                      v74 = v73;
                                    }

                                    else
                                    {
                                      v74 = v72;
                                    }

                                    v75 = a3[5];
                                    v76 = (v75 - *v75);
                                    v77 = *v76;
                                    if (*(a3 + 78))
                                    {
                                      if (v77 < 0x4B || (v78 = v76[37]) == 0)
                                      {
LABEL_173:
                                        v79 = 0xFFFF;
LABEL_174:
                                        v80 = v79 - v74;
                                        if (v80 > 18000)
                                        {
                                          v80 -= 36000;
                                        }

                                        if (v80 < -17999)
                                        {
                                          v80 += 36000;
                                        }

                                        v81 = round(v80 / 100.0);
                                        v82 = fabs(v81);
                                        if (v65 >= 0x9B && (v83 = v64[77]) != 0)
                                        {
                                          if (v81 < 0.0 == *(v63 + v83 + 1) >> 7)
                                          {
                                            goto LABEL_193;
                                          }
                                        }

                                        else if (v81 >= 0.0)
                                        {
                                          goto LABEL_193;
                                        }

                                        if (*(a3 + 78))
                                        {
                                          if (v77 >= 0x9B)
                                          {
                                            v84 = v76[77];
                                            if (v76[77])
                                            {
                                              v85 = 2;
                                              goto LABEL_190;
                                            }
                                          }
                                        }

                                        else if (v77 >= 0x9B)
                                        {
                                          v84 = v76[77];
                                          if (v76[77])
                                          {
                                            v85 = 1;
LABEL_190:
                                            if ((*(v75 + v84) & v85) != 0)
                                            {
                                              goto LABEL_194;
                                            }
                                          }
                                        }

                                        if (!sub_312DF0(a3) && (*(a4 + 937) & 1) != 0)
                                        {
LABEL_193:
                                          sub_10AD680((a4 + 1328), v82);
                                          operator new();
                                        }

LABEL_194:
                                        v86 = sub_314550(a3);
                                        if ((*&v86 <= -1 || ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v86 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v86 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v86 <= 0.0 || v86 < *(a4 + 344))
                                        {
                                          v92 = 1.0;
                                        }

                                        else
                                        {
                                          v92 = *(a4 + 1376);
                                        }

                                        v93 = sub_10AD680((a4 + 1352), v82);
                                        sub_108CF40(v93, v92, v94);
                                        operator new();
                                      }
                                    }

                                    else
                                    {
                                      if (v77 < 0x49)
                                      {
                                        goto LABEL_173;
                                      }

                                      v78 = v76[36];
                                      if (!v76[36])
                                      {
                                        goto LABEL_173;
                                      }
                                    }

                                    v79 = *(v75 + v78);
                                    goto LABEL_174;
                                  }
                                }

                                else
                                {
                                  if (v65 < 0x4B)
                                  {
                                    goto LABEL_162;
                                  }

                                  v70 = v64[37];
                                  if (!v64[37])
                                  {
                                    goto LABEL_162;
                                  }
                                }

                                v71 = *(v63 + v70);
                                goto LABEL_163;
                              }

                              goto LABEL_129;
                            }
                          }
                        }

                        else if (v58 >= 0x9B)
                        {
                          v59 = v57[77];
                          if (v57[77])
                          {
                            if (*(v56 + v57[77]))
                            {
                              if (v55 == 1)
                              {
                                goto LABEL_134;
                              }

LABEL_133:
                              operator new();
                            }

                            v60 = 2;
LABEL_129:
                            if (v55 == ((*(v56 + v59) & v60) != 0))
                            {
                              goto LABEL_134;
                            }

                            goto LABEL_133;
                          }
                        }

                        LODWORD(v60) = 0;
                        goto LABEL_132;
                      }

                      goto LABEL_118;
                    }
                  }
                }

                else if (v53 >= 0x9B)
                {
                  v54 = v52[77];
                  if (v52[77])
                  {
                    if (*(v50 + v52[77]))
                    {
                      LODWORD(v55) = 1;
                      goto LABEL_120;
                    }

                    v55 = 2;
LABEL_118:
                    LODWORD(v55) = (*(v50 + v54) & v55) != 0;
                    goto LABEL_120;
                  }
                }

                LODWORD(v55) = 0;
                goto LABEL_120;
              }

LABEL_101:
              v49 = 32;
              if (v45 == 32)
              {
                goto LABEL_107;
              }

              goto LABEL_102;
            }
          }

          else
          {
            if (v32 < 0x47)
            {
              goto LABEL_73;
            }

            v34 = v31[35];
            if (!v34 || (*(v30 + v34) & 1) == 0)
            {
              goto LABEL_73;
            }
          }

          sub_10AD87C(a1, a3, v9, a4 + 32);
          operator new();
        }

        if (v29 < 0x47)
        {
          goto LABEL_64;
        }

LABEL_62:
        if (v22[35] && (*(v15 + v22[35]) & 1) != 0)
        {
          goto LABEL_73;
        }

        goto LABEL_64;
      }
    }

LABEL_55:
    sub_10AD0D4(a1, a3, v9, a4 + 32);
    operator new();
  }

  v97 = 16;
  strcpy(__p, "Blocking barrier");
  sub_10A5B18(a2, __p);
  if (v97 < 0)
  {
    operator delete(*__p);
  }
}

void sub_10AB690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10AB718(unint64_t a1, int32x2_t *a2, int **a3, unsigned int a4, uint64_t a5)
{
  result = sub_10AB7B8(a1, a2, a3, a5);
  if (a2[7].i8[0] == 1)
  {
    return sub_10A8B08(a1, a2, a3, a4, a5, v11, v12);
  }

  return result;
}

uint64_t sub_10AB7B8(uint64_t result, int32x2_t *a2, int **a3, uint64_t a4)
{
  v7 = result;
  v9 = a3 + 5;
  v8 = a3[5];
  v10 = (v8 - *v8);
  v11 = *v10;
  if (*(a3 + 78))
  {
    if (v11 < 0x47)
    {
      if (v11 <= 0x38)
      {
        goto LABEL_243;
      }
    }

    else if (v10[35] && (*(v8 + v10[35]) & 2) != 0)
    {
      goto LABEL_19;
    }

    v12 = v10[28];
    if (!v12)
    {
      goto LABEL_243;
    }

    v13 = *(v8 + v12);
    if ((v13 & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((v13 & 7) != 4 && (v13 & 0x23) != 0x20)
    {
      goto LABEL_243;
    }

    goto LABEL_19;
  }

  if (v11 < 0x47)
  {
    if (v11 <= 0x38)
    {
      goto LABEL_243;
    }
  }

  else if (v10[35] && (*(v8 + v10[35]) & 1) != 0)
  {
    goto LABEL_19;
  }

  v14 = v10[28];
  if (!v14)
  {
    goto LABEL_243;
  }

  v13 = *(v8 + v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (*(a4 + 939) == 1)
  {
    result = sub_314160(a3);
    if (result)
    {
      goto LABEL_243;
    }

    result = sub_314010(v9);
    if (result)
    {
      goto LABEL_243;
    }

    if (sub_314400(a3))
    {
      a2[2] = vadd_s32(*(a4 + 968), a2[2]);
      *&a2[3] += *(a4 + 976);
    }

    if (sub_3142B0(v9))
    {
      a2[2] = vadd_s32(*(a4 + 968), a2[2]);
      *&a2[3] += *(a4 + 976);
    }
  }

  v15 = *a3;
  v16 = **a3;
  v17 = -v16;
  v18 = (*a3 - v16);
  if (*v18 < 0x9Bu || (v19 = v18[77]) == 0 || (*(v15 + v19 + 2) & 0x20) == 0)
  {
    v20 = (*v9 - **v9);
    if (*v20 >= 0x9Bu)
    {
      v21 = v20[77];
      if (v21)
      {
        if ((*(*v9 + v21 + 2) & 0x20) != 0)
        {
          a2[2] = vadd_s32(*(a4 + 1008), a2[2]);
          *&a2[3] += *(a4 + 1016);
          v15 = *a3;
          v17 = -**a3;
        }
      }
    }
  }

  v22 = *(a3 + 38);
  v23 = (v15 + v17);
  v24 = *(v15 + v17);
  if (*(a3 + 38))
  {
    if (v24 < 0x47 || !v23[35])
    {
      if (*v23 <= 0x46u)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }

    if ((*(v15 + v23[35]) & 2) == 0)
    {
      goto LABEL_54;
    }

LABEL_43:
    v25 = a3[5];
    v26 = (v25 - *v25);
    v27 = *v26;
    if (*(a3 + 78))
    {
      if (v27 >= 0x47)
      {
        v28 = v26[35];
        if (v28)
        {
          v29 = 2;
          goto LABEL_52;
        }
      }
    }

    else if (v27 >= 0x47)
    {
      v28 = v26[35];
      if (v28)
      {
        v29 = 1;
LABEL_52:
        if ((*(v25 + v28) & v29) != 0)
        {
          goto LABEL_54;
        }
      }
    }

    v30 = sub_10AD0D4(v7, a3, v9, a4 + 32);
    v31 = a2[2].i32[1] + HIDWORD(v30);
    a2[2].i32[0] += v30;
    a2[2].i32[1] = v31;
    *&a2[3] += v32;
    v15 = *a3;
    v22 = *(a3 + 38);
    v17 = -**a3;
    goto LABEL_54;
  }

  if (v24 < 0x47 || !v23[35])
  {
    if (*v23 <= 0x46u)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (*(v15 + v23[35]))
  {
    goto LABEL_43;
  }

LABEL_54:
  v23 = (v15 + v17);
  v33 = *(v15 + v17);
  if (!v22)
  {
    if (v33 < 0x47)
    {
      goto LABEL_62;
    }

LABEL_60:
    if (v23[35] && (*(v15 + v23[35]) & 1) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_62;
  }

  if (v33 < 0x47)
  {
    goto LABEL_62;
  }

LABEL_56:
  if (v23[35] && (*(v15 + v23[35]) & 2) != 0)
  {
    goto LABEL_71;
  }

LABEL_62:
  v34 = a3[5];
  v35 = (v34 - *v34);
  v36 = *v35;
  if (*(a3 + 78))
  {
    if (v36 < 0x47)
    {
      goto LABEL_71;
    }

    v37 = v35[35];
    if (!v37 || (*(v34 + v37) & 2) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (v36 < 0x47)
    {
      goto LABEL_71;
    }

    v38 = v35[35];
    if (!v38 || (*(v34 + v38) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v39 = sub_10AD87C(v7, a3, v9, a4 + 32);
  v40 = a2[2].i32[1] + HIDWORD(v39);
  a2[2].i32[0] += v39;
  a2[2].i32[1] = v40;
  *&a2[3] += v41;
  v15 = *a3;
  v17 = -**a3;
LABEL_71:
  if (*(v15 + v17) < 0x9Bu || !*(v15 + v17 + 154) || (*(v15 + *(v15 + v17 + 154)) & 8) == 0)
  {
    v42 = (*v9 - **v9);
    if (*v42 >= 0x9Bu)
    {
      v43 = v42[77];
      if (v43)
      {
        if ((*(*v9 + v43) & 8) != 0)
        {
          a2[2] = vadd_s32(*(a4 + 1296), a2[2]);
          *&a2[3] += *(a4 + 1304);
          v15 = *a3;
          v17 = -**a3;
        }
      }
    }
  }

  if (*(v15 + v17) < 0x9Bu)
  {
    goto LABEL_84;
  }

  if (!*(v15 + v17 + 154))
  {
    goto LABEL_84;
  }

  v44 = *(v15 + *(v15 + v17 + 154));
  if ((v44 & 0x800) == 0)
  {
    goto LABEL_84;
  }

  v45 = 1;
  if (*(a3 + 38))
  {
    v45 = 2;
  }

  if ((v45 & v44) == 0)
  {
LABEL_84:
    v46 = (*v9 - **v9);
    if (*v46 >= 0x9Bu)
    {
      v47 = v46[77];
      if (v47)
      {
        v48 = *(*v9 + v47);
        if ((v48 & 0x800) != 0)
        {
          v49 = 1;
          if (*(a3 + 78))
          {
            v49 = 2;
          }

          if ((v49 & v48) != 0)
          {
            a2[2] = vadd_s32(*(a4 + 1312), a2[2]);
            *&a2[3] += *(a4 + 1320);
            v15 = *a3;
            v17 = -**a3;
          }
        }
      }
    }
  }

  v50 = (v15 + v17);
  if (*v50 >= 0x2Fu && (v51 = v50[23]) != 0)
  {
    v52 = *(v15 + v51);
    v53 = *v9;
    v54 = (*v9 - **v9);
    if (*v54 < 0x2Fu)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v52 = 32;
    v53 = *v9;
    v54 = (*v9 - **v9);
    if (*v54 < 0x2Fu)
    {
      goto LABEL_99;
    }
  }

  v55 = v54[23];
  if (v55)
  {
    v56 = *(v53 + v55);
    if (v52 == v56)
    {
      goto LABEL_106;
    }

    goto LABEL_100;
  }

LABEL_99:
  v56 = 32;
  if (v52 == 32)
  {
    goto LABEL_106;
  }

LABEL_100:
  if (v56 == 9)
  {
    v57 = 1224;
    v58 = 1220;
    v59 = 1216;
    goto LABEL_105;
  }

  if (v56 == 14 && sub_10AE0EC(v7, a3, v9, a4 + 32))
  {
    v57 = 952;
    v58 = 948;
    v59 = 944;
LABEL_105:
    v60 = a2[2].i32[1];
    a2[2].i32[0] += *(a4 + v59);
    a2[2].i32[1] = *(a4 + v58) + v60;
    *&a2[3] += *(a4 + v57);
  }

LABEL_106:
  if (sub_10AE538(v7, a3, v9, a4 + 32))
  {
    a2[2] = vadd_s32(*(a4 + 1232), a2[2]);
    *&a2[3] += *(a4 + 1240);
    sub_31D6E8(*v7, *(a3 + 18) | (*(a3 + 38) << 32), v139);
    if (sub_10A7CE4(v7, v9, v139, (a4 + 32)))
    {
      v61 = sub_10AF9E0(v7, v9, (a4 + 984), *(a4 + 32));
      v62 = a2[2].i32[1] + HIDWORD(v61);
      a2[2].i32[0] += v61;
      a2[2].i32[1] = v62;
      *&a2[3] += v63;
    }
  }

  v64 = *a3;
  v65 = **a3;
  v66 = (*a3 - v65);
  v67 = *v66;
  if (!*(a3 + 38))
  {
    if (v67 >= 0x9B)
    {
      v68 = v66[77];
      if (v66[77])
      {
        if (*(v64 + v66[77]))
        {
          LODWORD(v69) = 1;
          goto LABEL_120;
        }

        v69 = 2;
LABEL_118:
        LODWORD(v69) = (*(v64 + v68) & v69) != 0;
        goto LABEL_120;
      }
    }

LABEL_119:
    LODWORD(v69) = 0;
    goto LABEL_120;
  }

  if (v67 < 0x9B)
  {
    goto LABEL_119;
  }

  v68 = v66[77];
  if (!v66[77])
  {
    goto LABEL_119;
  }

  v69 = 1;
  if ((*(v64 + v68) & 2) == 0)
  {
    goto LABEL_118;
  }

LABEL_120:
  v70 = a3[5];
  v71 = (v70 - *v70);
  v72 = *v71;
  if (*(a3 + 78))
  {
    if (v72 >= 0x9B)
    {
      v73 = v71[77];
      if (v71[77])
      {
        v74 = 1;
        if ((*(v70 + v73) & 2) != 0)
        {
          if (v69 == 1)
          {
            goto LABEL_125;
          }

LABEL_138:
          a2[2] = vadd_s32(*(a4 + 1248), a2[2]);
          *&a2[3] += *(a4 + 1256);
          v64 = *a3;
          v75 = (*a3 - **a3);
          v76 = *v75 >= 0x4Du;
          if (*(a3 + 38))
          {
            goto LABEL_126;
          }

          goto LABEL_139;
        }

        goto LABEL_135;
      }
    }

LABEL_137:
    if (v69)
    {
      goto LABEL_138;
    }

    goto LABEL_125;
  }

  if (v72 < 0x9B)
  {
    goto LABEL_137;
  }

  v73 = v71[77];
  if (!v71[77])
  {
    goto LABEL_137;
  }

  if ((*(v70 + v71[77]) & 1) == 0)
  {
    v74 = 2;
LABEL_135:
    if (v69 != ((*(v70 + v73) & v74) != 0))
    {
      goto LABEL_138;
    }

    goto LABEL_125;
  }

  if (v69 != 1)
  {
    goto LABEL_138;
  }

LABEL_125:
  v75 = (v64 - v65);
  v76 = *v75 >= 0x4Du;
  if (*(a3 + 38))
  {
LABEL_126:
    if (!v76)
    {
      goto LABEL_148;
    }

    v77 = v75[38];
    if (!v75[38])
    {
      goto LABEL_148;
    }

    if ((*(v64 + v75[38]) & 8) == 0)
    {
      v78 = 2;
      goto LABEL_144;
    }

LABEL_146:
    v79 = 1272;
    v80 = 1268;
    v81 = 1264;
    goto LABEL_147;
  }

LABEL_139:
  if (!v76)
  {
    goto LABEL_148;
  }

  v77 = v75[38];
  if (!v75[38])
  {
    goto LABEL_148;
  }

  if ((*(v64 + v75[38]) & 4) != 0)
  {
    goto LABEL_146;
  }

  v78 = 1;
LABEL_144:
  if ((*(v64 + v77) & v78) != 0)
  {
    v79 = 1288;
    v80 = 1284;
    v81 = 1280;
LABEL_147:
    v82 = a2[2].i32[1];
    a2[2].i32[0] += *(a4 + v81);
    a2[2].i32[1] = *(a4 + v80) + v82;
    *&a2[3] += *(a4 + v79);
  }

LABEL_148:
  if ((*(a3 + 84) & 4) != 0)
  {
    goto LABEL_216;
  }

  v83 = *a3;
  v84 = (*a3 - **a3);
  v85 = *v84;
  if (v85 >= 0x2F)
  {
    if (v84[23])
    {
      v86 = *(v83 + v84[23]);
      if (v86 <= 0x36 && ((1 << v86) & 0x44000000000008) != 0)
      {
        v87 = (*v9 - **v9);
        if (*v87 >= 0x2Fu)
        {
          v88 = v87[23];
          if (v88)
          {
            v89 = *(*v9 + v88);
            if (v89 <= 0x36 && ((1 << v89) & 0x44000000000008) != 0)
            {
              goto LABEL_216;
            }
          }
        }
      }
    }
  }

  if (!*(a3 + 38))
  {
    if (v85 < 0x4B)
    {
      goto LABEL_164;
    }

    v90 = v84[37];
    if (!v84[37])
    {
      goto LABEL_164;
    }

LABEL_163:
    v91 = *(v83 + v90);
    goto LABEL_165;
  }

  if (v85 >= 0x49)
  {
    v90 = v84[36];
    if (v84[36])
    {
      goto LABEL_163;
    }
  }

LABEL_164:
  v91 = -1;
LABEL_165:
  v92 = v91 + 18000;
  v93 = v91 - 18000;
  if ((v92 >> 5) >= 0x465u)
  {
    v94 = v93;
  }

  else
  {
    v94 = v92;
  }

  v95 = a3[5];
  v96 = (v95 - *v95);
  v97 = *v96;
  if (!*(a3 + 78))
  {
    if (v97 < 0x49)
    {
      goto LABEL_175;
    }

    v98 = v96[36];
    if (!v96[36])
    {
      goto LABEL_175;
    }

LABEL_174:
    v99 = *(v95 + v98);
    goto LABEL_176;
  }

  if (v97 >= 0x4B)
  {
    v98 = v96[37];
    if (v96[37])
    {
      goto LABEL_174;
    }
  }

LABEL_175:
  v99 = 0xFFFF;
LABEL_176:
  v100 = v99 - v94;
  if (v100 > 18000)
  {
    v100 -= 36000;
  }

  if (v100 < -17999)
  {
    v100 += 36000;
  }

  v101 = round(v100 / 100.0);
  if (v85 >= 0x9B)
  {
    v102 = v84[77];
    if (v102)
    {
      if (v101 < 0.0 == *(v83 + v102 + 1) >> 7)
      {
        goto LABEL_195;
      }

LABEL_185:
      if (*(a3 + 78))
      {
        if (v97 >= 0x9B)
        {
          v103 = v96[77];
          if (v96[77])
          {
            v104 = 2;
            goto LABEL_192;
          }
        }
      }

      else if (v97 >= 0x9B)
      {
        v103 = v96[77];
        if (v96[77])
        {
          v104 = 1;
LABEL_192:
          if ((*(v95 + v103) & v104) != 0)
          {
            goto LABEL_196;
          }
        }
      }

      if (!sub_312DF0(a3) && (*(a4 + 937) & 1) != 0)
      {
        goto LABEL_195;
      }

LABEL_196:
      v110 = sub_314550(a3);
      if ((*&v110 <= -1 || ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v110 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v110 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v110 <= 0.0 || v110 < *(a4 + 344))
      {
        v116 = 1.0;
      }

      else
      {
        v116 = *(a4 + 1376);
      }

      v117 = sub_10AD680((a4 + 1352), fabs(v101));
      v119 = sub_108CF40(v117, v116, v118);
      v120 = a2[2].i32[1] + HIDWORD(v119);
      a2[2].i32[0] += v119;
      a2[2].i32[1] = v120;
      v108 = a2 + 3;
      v107 = a2 + 3;
      goto LABEL_215;
    }
  }

  if (v101 < 0.0)
  {
    goto LABEL_185;
  }

LABEL_195:
  v105 = sub_10AD680((a4 + 1328), fabs(v101));
  v107 = a2 + 3;
  v106 = a2[3];
  v109 = *v105;
  v108 = v105 + 1;
  a2[2] = vadd_s32(v109, a2[2]);
LABEL_215:
  *v107 = (*v108 + *&v106);
LABEL_216:
  if (sub_10AC574(v7, a3, v9, (a4 + 32)))
  {
    if (*(a4 + 1384) != 1 || (*(a3 + 84) & 4) != 0)
    {
      v122 = 0;
      v123 = 0;
    }

    else
    {
      sub_10AC880(v7, a3, v9, a4 + 32, 1);
      v139[0] = v121;
      v122 = sub_10ADE24(v139, (a4 + 1472));
    }
  }

  else
  {
    v122 = sub_10ADF6C(v7, a3, a4 + 32);
  }

  v124 = a2[2].i32[1] + HIDWORD(v122);
  a2[2].i32[0] += v122;
  a2[2].i32[1] = v124;
  *&a2[3] += v123;
  *(v7 + 32) = 0;
  v125 = sub_30F984(v7 + 24, a3);
  if (*(v7 + 32) != 1 || (result = sub_2BBF84(*(v7 + 24), a3[9] & 0xFFFFFFFFFFFFFFLL, 0), (v126 & 1) == 0))
  {
    result = sub_30F984(v7 + 24, v9);
  }

  if (v125 == result)
  {
LABEL_230:
    v130 = (*a3 - **a3);
    if (*v130 >= 0xDu && (v131 = v130[6]) != 0)
    {
      v132 = *(*a3 + v131);
      v133 = *v9;
      v134 = (*v9 - **v9);
      if (*v134 < 0xDu)
      {
        goto LABEL_238;
      }
    }

    else
    {
      v132 = 0;
      v133 = *v9;
      v134 = (*v9 - **v9);
      if (*v134 < 0xDu)
      {
        goto LABEL_238;
      }
    }

    v135 = v134[6];
    if (v135)
    {
      if (*(v133 + v135) == v132)
      {
        return result;
      }

LABEL_239:
      v136 = sub_4B6E88(*(v7 + 40), a3, v9);
      result = sub_10AD680((a4 + 1600), v136);
      v137 = *result;
      if (*result != -1 && v137.i32[1] != 0x7FFFFFFF)
      {
        v138 = *(result + 8);
        if (v138 != 0x7FFFFFFFFFFFFFFFLL)
        {
          a2[2] = vadd_s32(a2[2], v137);
          *&a2[3] += v138;
          return result;
        }
      }

      goto LABEL_243;
    }

LABEL_238:
    if (!v132)
    {
      return result;
    }

    goto LABEL_239;
  }

  v127 = sub_F925C4(a4 + 1528, v125, result, *(a3 + 84) & 1, (*(a3 + 84) >> 1) & 1);
  result = sub_10AD680((a4 + 1576), v127);
  v128 = *result;
  if (*result != -1 && v128.i32[1] != 0x7FFFFFFF)
  {
    v129 = *(result + 8);
    if (v129 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a2[2] = vadd_s32(a2[2], v128);
      *&a2[3] += v129;
      goto LABEL_230;
    }
  }

LABEL_243:
  a2[7].i8[0] = 0;
  return result;
}