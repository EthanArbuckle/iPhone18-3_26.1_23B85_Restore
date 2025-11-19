uint64_t sub_F840B0(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, void **a6)
{
  sub_F83FA0(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = sub_F95EB8(*a6, *a5);
  result = sub_F95EB8(*a6, v12);
  if (*(v13 + 16) < *(result + 16))
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    v17 = sub_F95EB8(*a6, *a4);
    result = sub_F95EB8(*a6, v16);
    if (*(v17 + 16) < *(result + 16))
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a2;
      v20 = sub_F95EB8(*a6, *a3);
      result = sub_F95EB8(*a6, v19);
      if (*(v20 + 16) < *(result + 16))
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a1;
        v23 = sub_F95EB8(*a6, *a2);
        result = sub_F95EB8(*a6, v22);
        if (*(v23 + 16) < *(result + 16))
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t sub_F84204(uint64_t result, unsigned __int16 *a2, void **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 2);
    if ((result + 2) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v8[1];
        v11 = *v8;
        v8 = v5;
        v12 = sub_F95EB8(*a3, v10);
        result = sub_F95EB8(*a3, v11);
        if (*(v12 + 16) < *(result + 16))
        {
          v13 = *v8;
          v14 = v7;
          do
          {
            *(v4 + v14 + 2) = *(v4 + v14);
            if (!v14)
            {
              v9 = v4;
              goto LABEL_5;
            }

            v15 = *(v4 + v14 - 2);
            v16 = sub_F95EB8(*a3, v13);
            result = sub_F95EB8(*a3, v15);
            v14 -= 2;
          }

          while (*(v16 + 16) < *(result + 16));
          v9 = (v4 + v14 + 2);
LABEL_5:
          *v9 = v13;
        }

        v5 = v8 + 1;
        v7 += 2;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned __int16 *sub_F84314(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(a2 - 1);
  v8 = sub_F95EB8(*a3, *a1);
  if (*(v8 + 16) >= *(sub_F95EB8(*a3, v7) + 16))
  {
    v12 = a1 + 1;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      ++v12;
      v13 = *v9;
      v14 = sub_F95EB8(*a3, v6);
    }

    while (*(v14 + 16) >= *(sub_F95EB8(*a3, v13) + 16));
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
      v11 = sub_F95EB8(*a3, v6);
    }

    while (*(v11 + 16) >= *(sub_F95EB8(*a3, v10) + 16));
  }

  if (v9 < v4)
  {
    do
    {
      v15 = *--v4;
      v16 = sub_F95EB8(*a3, v6);
    }

    while (*(v16 + 16) < *(sub_F95EB8(*a3, v15) + 16));
  }

  while (v9 < v4)
  {
    v17 = *v9;
    *v9 = *v4;
    *v4 = v17;
    do
    {
      v18 = v9[1];
      ++v9;
      v19 = sub_F95EB8(*a3, v6);
    }

    while (*(v19 + 16) >= *(sub_F95EB8(*a3, v18) + 16));
    do
    {
      v20 = *--v4;
      v21 = sub_F95EB8(*a3, v6);
    }

    while (*(v21 + 16) < *(sub_F95EB8(*a3, v20) + 16));
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v6;
  return v9;
}

unsigned __int16 *sub_F844D4(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = sub_F95EB8(*a3, a1[++v6]);
  }

  while (*(v8 + 16) < *(sub_F95EB8(*a3, v7) + 16));
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v13 = *--a2;
      v14 = sub_F95EB8(*a3, v13);
    }

    while (*(v14 + 16) >= *(sub_F95EB8(*a3, v7) + 16));
  }

  else
  {
    do
    {
      v11 = *--a2;
      v12 = sub_F95EB8(*a3, v11);
    }

    while (*(v12 + 16) >= *(sub_F95EB8(*a3, v7) + 16));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[1];
        ++v15;
        v19 = sub_F95EB8(*a3, v18);
      }

      while (*(v19 + 16) < *(sub_F95EB8(*a3, v7) + 16));
      do
      {
        v20 = *--v16;
        v21 = sub_F95EB8(*a3, v20);
      }

      while (*(v21 + 16) >= *(sub_F95EB8(*a3, v7) + 16));
    }

    while (v15 < v16);
    v10 = v15 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_F84668(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = sub_F95EB8(*a3, *(a2 - 1));
        if (*(v8 + 16) < *(sub_F95EB8(*a3, v7) + 16))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_F83E24(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_F83FA0(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_F840B0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  sub_F83E24(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = sub_F95EB8(*a3, *v11);
    if (*(v15 + 16) < *(sub_F95EB8(*a3, v14) + 16))
    {
      break;
    }

LABEL_20:
    v10 = v11;
    v12 += 2;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v16 = *v11;
  v17 = v12;
  do
  {
    *(a1 + v17 + 6) = *(a1 + v17 + 4);
    if (v17 == -4)
    {
      *a1 = v16;
      if (++v13 != 8)
      {
        goto LABEL_20;
      }

      return v11 + 1 == a2;
    }

    v18 = *(a1 + v17 + 2);
    v19 = sub_F95EB8(*a3, v16);
    v17 -= 2;
  }

  while (*(v19 + 16) < *(sub_F95EB8(*a3, v18) + 16));
  *(a1 + v17 + 6) = v16;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return v11 + 1 == a2;
}

uint64_t sub_F84880(uint64_t result, void **a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = a4 - result;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 1)
    {
      v11 = (v7 + 1);
      v12 = (result + 2 * (v7 + 1));
      v13 = (v7 + 2);
      v30 = result;
      if ((v7 + 2) < a3)
      {
        v14 = v4 >> 1;
        v15 = v12[1];
        v16 = sub_F95EB8(*a2, *v12);
        v17 = v15;
        v8 = v14;
        v6 = v30;
        if (*(v16 + 16) < *(sub_F95EB8(*a2, v17) + 16))
        {
          ++v12;
          v11 = v13;
        }
      }

      v18 = *v5;
      v19 = sub_F95EB8(*a2, *v12);
      result = sub_F95EB8(*a2, v18);
      if (*(v19 + 16) >= *(result + 16))
      {
        v31 = *v5;
        do
        {
          v22 = v12;
          *v5 = *v12;
          if (v8 < v11)
          {
            break;
          }

          v23 = (2 * v11) | 1;
          v12 = (v6 + 2 * v23);
          v24 = 2 * v11 + 2;
          if (v24 < a3)
          {
            v25 = v12[1];
            v26 = sub_F95EB8(*a2, *v12);
            v27 = sub_F95EB8(*a2, v25);
            v28 = *(v26 + 16);
            v29 = *(v27 + 16);
            if (v28 < v29)
            {
              ++v12;
            }

            v6 = v30;
            if (v28 < v29)
            {
              v23 = v24;
            }
          }

          v20 = sub_F95EB8(*a2, *v12);
          result = sub_F95EB8(*a2, v31);
          v21 = *(v20 + 16);
          v5 = v22;
          v11 = v23;
        }

        while (v21 >= *(result + 16));
        *v22 = v31;
      }
    }
  }

  return result;
}

uint64_t sub_F84A3C(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = result;
    v6 = 0;
    v29 = *result;
    v7 = (a4 - 2) >> 1;
    v8 = result;
    do
    {
      while (1)
      {
        v13 = &v8[v6];
        v12 = v13 + 1;
        v14 = (2 * v6) | 1;
        v15 = 2 * v6 + 2;
        if (v15 < a4)
        {
          break;
        }

        v6 = (2 * v6) | 1;
        *v8 = *v12;
        v8 = v13 + 1;
        if (v14 > v7)
        {
          goto LABEL_9;
        }
      }

      v10 = v13[2];
      v9 = v13 + 2;
      v11 = sub_F95EB8(*a3, *(v9 - 1));
      result = sub_F95EB8(*a3, v10);
      if (*(v11 + 16) >= *(result + 16))
      {
        v6 = v14;
      }

      else
      {
        v12 = v9;
        v6 = v15;
      }

      *v8 = *v12;
      v8 = v12;
    }

    while (v6 <= v7);
LABEL_9:
    v16 = (a2 - 2);
    if (v12 == (a2 - 2))
    {
      *v12 = v29;
    }

    else
    {
      *v12 = *v16;
      *v16 = v29;
      v17 = (v12 - v27 + 2) >> 1;
      v18 = v17 < 2;
      v19 = v17 - 2;
      if (!v18)
      {
        v20 = v19 >> 1;
        v21 = (v27 + 2 * (v19 >> 1));
        v22 = *v12;
        v23 = sub_F95EB8(*a3, *v21);
        result = sub_F95EB8(*a3, v22);
        if (*(v23 + 16) < *(result + 16))
        {
          v24 = *v12;
          do
          {
            v25 = v21;
            *v12 = *v21;
            if (!v20)
            {
              break;
            }

            v20 = (v20 - 1) >> 1;
            v21 = (v27 + 2 * v20);
            v26 = sub_F95EB8(*a3, *v21);
            result = sub_F95EB8(*a3, v24);
            v12 = v25;
          }

          while (*(v26 + 16) < *(result + 16));
          *v25 = v24;
        }
      }
    }
  }

  return result;
}

void sub_F84C00()
{
  byte_27BFC7F = 3;
  LODWORD(qword_27BFC68) = 5136193;
  byte_27BFC97 = 3;
  LODWORD(qword_27BFC80) = 5136194;
  byte_27BFCAF = 3;
  LODWORD(qword_27BFC98) = 5136195;
  byte_27BFCC7 = 15;
  strcpy(&qword_27BFCB0, "vehicle_mass_kg");
  byte_27BFCDF = 21;
  strcpy(&xmmword_27BFCC8, "vehicle_cargo_mass_kg");
  byte_27BFCF7 = 19;
  strcpy(&qword_27BFCE0, "vehicle_aux_power_w");
  byte_27BFD0F = 15;
  strcpy(&qword_27BFCF8, "dcdc_efficiency");
  strcpy(&qword_27BFD10, "drive_train_efficiency");
  HIBYTE(word_27BFD26) = 22;
  operator new();
}

void sub_F84DDC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFD26) < 0)
  {
    sub_21E59BC();
  }

  sub_21E59C8();
  _Unwind_Resume(a1);
}

BOOL sub_F84DFC(uint64_t a1, unsigned int a2, unsigned int *a3, int a4)
{
  if (a4)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a3;
  }

  if (sub_F75E1C(a1, v5))
  {
    v7 = *sub_F75E48(a1, v5) == 3;
    if (!sub_F75E1C(a1, v6))
    {
      return v7;
    }

    goto LABEL_11;
  }

  v7 = 0;
  if (sub_F75E1C(a1, v6))
  {
LABEL_11:
    sub_F75E48(a1, v6);
  }

  return v7;
}

void *sub_F84E90(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v4 = v3 ^ (v3 >> 47);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ (v3 >> 47);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v2)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_F851E0()
{
  byte_27BFD87 = 3;
  LODWORD(qword_27BFD70) = 5136193;
  byte_27BFD9F = 3;
  LODWORD(qword_27BFD88) = 5136194;
  byte_27BFDB7 = 3;
  LODWORD(qword_27BFDA0) = 5136195;
  byte_27BFDCF = 15;
  strcpy(&qword_27BFDB8, "vehicle_mass_kg");
  byte_27BFDE7 = 21;
  strcpy(&xmmword_27BFDD0, "vehicle_cargo_mass_kg");
  byte_27BFDFF = 19;
  strcpy(&qword_27BFDE8, "vehicle_aux_power_w");
  byte_27BFE17 = 15;
  strcpy(&qword_27BFE00, "dcdc_efficiency");
  strcpy(&qword_27BFE18, "drive_train_efficiency");
  HIBYTE(word_27BFE2E) = 22;
  operator new();
}

void sub_F853BC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFE2E) < 0)
  {
    sub_21E5A98();
  }

  sub_21E5AA4();
  _Unwind_Resume(a1);
}

char *sub_F853DC(char **a1, unsigned int a2, int a3, void *a4, uint64_t a5)
{
  v10 = sub_3B1348(a4);
  v11 = sub_3AF144(a4);
  if (a3 != 2)
  {
    v17 = *a1;
    v18 = &(*a1)[-**a1];
    v19 = *v18;
    if (v19 < 0x9B)
    {
      v16 = 0;
      if (v19 < 0x2F)
      {
        v21 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v16 = *(v18 + 77);
      if (*(v18 + 77))
      {
        v16 = (*&v17[v16] >> 4) & 0x10;
      }
    }

    if (!*(v18 + 23) || v17[*(v18 + 23)])
    {
      v21 = 1;
      if (v19 < 0x9B)
      {
        goto LABEL_34;
      }

LABEL_31:
      if (*(v18 + 77) && (v17[*(v18 + 77)] & 8) != 0)
      {
        v16 |= 0x40uLL;
      }

      goto LABEL_34;
    }

    v16 |= 0x20uLL;
    v21 = 1;
    if (v19 >= 0x9B)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (v21)
    {
      v24 = *(v18 + 23);
      if (v24)
      {
        if (v17[v24] == 21)
        {
          v16 |= 0x80uLL;
        }
      }
    }

    goto LABEL_38;
  }

  v12 = sub_2BDCDC(v11, a1[4] & 0xFFFFFFFFFFFFFFLL);
  v13 = *a1;
  v14 = &(*a1)[-**a1];
  v15 = *v14;
  if (v15 < 0x9B)
  {
    v16 = 0;
    if (v15 < 0x2F)
    {
      v20 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v16 = *(v14 + 77);
    if (*(v14 + 77))
    {
      v16 = (*&v13[v16] >> 4) & 0x10;
    }
  }

  if (*(v14 + 23) && !v13[*(v14 + 23)])
  {
    v16 |= 0x20uLL;
    v20 = 1;
    if (v15 < 0x9B)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = 1;
    if (v15 < 0x9B)
    {
      goto LABEL_24;
    }
  }

  if (*(v14 + 77) && (v13[*(v14 + 77)] & 8) != 0)
  {
    v16 |= 0x40uLL;
  }

LABEL_24:
  if (v20)
  {
    v22 = *(v14 + 23);
    if (v22)
    {
      if (v13[v22] == 21)
      {
        v16 |= 0x80uLL;
      }
    }
  }

  if (v12)
  {
    v23 = v16 | 4;
    goto LABEL_39;
  }

LABEL_38:
  v23 = v16 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_39:
  *(a5 + 16) |= v23;
  v25 = a2 / 1000000000.0;
  result = sub_36383C(v10, a1[4] & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    v35 = 0.0;
    goto LABEL_53;
  }

  v28 = &result[-*result];
  v29 = *v28;
  if (v29 >= 0xB && *(v28 + 5))
  {
    v30 = *&result[*(v28 + 5)];
    v31 = *(v10 + 3880);
    if (!*(v10 + 3880))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v30 = 0xFFFF;
    v31 = *(v10 + 3880);
    if (!*(v10 + 3880))
    {
      goto LABEL_49;
    }
  }

  if (v29 >= 0x11)
  {
    v32 = *(v28 + 8);
    if (v32)
    {
      v33 = &result[v32 + *&result[v32]];
      if (*v33 >= v31)
      {
        v34 = *&v33[2 * v31 + 2];
        if ((v34 + 1) > 1u)
        {
          HIDWORD(v27) = 1083129856;
          v35 = v34 / 1000.0;
          goto LABEL_53;
        }
      }
    }
  }

LABEL_49:
  v35 = 0.3;
  v27 = v30 / 1000.0;
  if (v30 != 0xFFFF)
  {
    v35 = v30 / 1000.0;
  }

LABEL_53:
  v36 = v25 * v35;
  v37 = *a1;
  v38 = **a1;
  v39 = -v38;
  v40 = &(*a1)[-v38];
  v41 = *v40;
  if (v41 <= 8)
  {
    v43 = v36 * 0.0 + *(a5 + 24);
    *(a5 + 24) = v43;
    goto LABEL_58;
  }

  v42 = *(v40 + 4);
  if (*(v40 + 4))
  {
    LODWORD(v27) = *&v37[v42];
    v43 = *(a5 + 24) + v36 * *&v27;
    *(a5 + 24) = v43;
    if (v41 < 0x2F)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v43 = *(a5 + 24) + v36 * 0.0;
    *(a5 + 24) = v43;
    if (v41 < 0x2F)
    {
      goto LABEL_58;
    }
  }

  v52 = *(v40 + 23);
  if (!v52 || v37[v52])
  {
    goto LABEL_58;
  }

  if (v42)
  {
    LODWORD(v43) = *&v37[v42];
    v43 = v25 * *&v43;
    if (v43 < 0.0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v43 = v25 * 0.0;
    if (v25 * 0.0 < 0.0)
    {
LABEL_73:
      if (v43 > -4.50359963e15)
      {
        v53 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
LABEL_85:
        v43 = (v53 >> 1);
        goto LABEL_86;
      }

      goto LABEL_86;
    }
  }

  if (v43 < 4.50359963e15)
  {
    v53 = (v43 + v43) + 1;
    goto LABEL_85;
  }

LABEL_86:
  *(a5 + 32) += v43;
  v37 = *a1;
  v39 = -**a1;
LABEL_58:
  v44 = &v37[v39];
  if (*v44 >= 0x2Fu && *(v44 + 23))
  {
    v45 = v37[*(v44 + 23)];
    v46 = v45 > 0x1A;
    v47 = (1 << v45) & 0x4810000;
    if (!v46 && v47 != 0)
    {
      v49 = *(v44 + 4);
      if (v49)
      {
        LODWORD(v43) = *&v37[v49];
        v50 = v25 * *&v43;
        if (v50 < 0.0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v50 = v25 * 0.0;
        if (v25 * 0.0 < 0.0)
        {
LABEL_66:
          if (v50 > -4.50359963e15)
          {
            v51 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
LABEL_78:
            v50 = (v51 >> 1);
            goto LABEL_79;
          }

          goto LABEL_79;
        }
      }

      if (v50 < 4.50359963e15)
      {
        v51 = (v50 + v50) + 1;
        goto LABEL_78;
      }

LABEL_79:
      *(a5 + 40) += v50;
    }
  }

  return result;
}

double sub_F85884@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_F858F4(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = 104;
  if (a3)
  {
    v7 = 8;
  }

  v24 = *&a2[v7];
  v8 = 112;
  if (a3)
  {
    v8 = 16;
  }

  v25 = 0u;
  v26 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v28 = 0x3FF0000000000000;
  v29 = 1;
  result = sub_10AFB6C(a4, &v25, &v24, &a2[v8], a5, 0);
  if (v29 != 1)
  {
    *&v25 = 0x7FFFFFFFFFFFFFFFLL;
    *(&v25 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  result = sub_F8634C(&v25, &v27, v15);
  v18 = *(&v26 + 1) + v17;
  v19 = (v26 + result) | ((DWORD1(v26) + HIDWORD(result)) << 32);
  *&v25 = v19;
  *(&v25 + 1) = v18;
  if (v26 + result == -1)
  {
LABEL_7:
    *a1 = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    return result;
  }

  v20 = HIDWORD(v19);
  if (HIDWORD(v19) == 0x7FFFFFFF)
  {
    *a1 = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    if (*a2 - 3 > 1)
    {
      v21 = *a1 + v19;
      v22 = (*(a1 + 4) + v20);
    }

    else
    {
      result = sub_F85A94(&v25, 2.0, v16);
      v21 = *a1 + result;
      v22 = (*(a1 + 4) + HIDWORD(result));
    }

    v23 = *(a1 + 8) + v18;
    *a1 = v21 | (v22 << 32);
    *(a1 + 8) = v23;
  }

  return result;
}

unint64_t sub_F85A94(_DWORD *a1, double a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *&a3 / a2;
  if (v3 >= 0.0)
  {
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) + 1;
  }

  else
  {
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v3 = (v4 >> 1);
LABEL_7:
  v5 = a1[1] / a2;
  if (v5 >= 0.0)
  {
    if (v5 < 4.50359963e15)
    {
      v6 = (v5 + v5) + 1;
      goto LABEL_12;
    }
  }

  else if (v5 > -4.50359963e15)
  {
    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
LABEL_12:
    v5 = (v6 >> 1);
  }

  return v3 | (v5 << 32);
}

char *sub_F85BC0(uint64_t a1, int **a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, void **a7)
{
  v24 = 0x7FFFFFFF;
  v25 = 0u;
  v26 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v28 = 0x3FF0000000000000;
  v29 = 1;
  sub_10AFF14(a4, &v25, a2, a3, a5, &v24, a6);
  if (v29)
  {
    v18 = sub_F8634C(&v25, &v27, v17);
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFF00000000;
    v22 = 0xFFFFFFFFLL;
    if (v26 + v18 != -1 && DWORD1(v26) + HIDWORD(v18) != 0x7FFFFFFF && *(&v26 + 1) + v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = (*a1 + v26 + v18);
      v20 = *(a1 + 8) + *(&v26 + 1) + v19;
      v21 = (*(a1 + 4) + DWORD1(v26) + HIDWORD(v18)) << 32;
    }
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFF00000000;
    v22 = 0xFFFFFFFFLL;
  }

  *a1 = v21 | v22;
  *(a1 + 8) = v20;
  return sub_F853DC(a2, a3, a6, *a7, a1);
}

char *sub_F85CFC(uint64_t a1, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5, int a6, void **a7)
{
  sub_3318(v27);
  v28 = 0u;
  v29 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v30 = _Q0;
  v31 = 0x3FF0000000000000;
  v32 = 1;
  sub_10B7014(a4, &v28, (a2 + 8), a3, a5, v27, a6);
  if (v32 != 1)
  {
    sub_3874(v27);
    v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v20 = sub_F8634C(&v28, &v30, v19);
  v22 = *(&v29 + 1) + v21;
  v23 = (v29 + v20) | ((DWORD1(v29) + HIDWORD(v20)) << 32);
  sub_3874(v27);
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  if (v23 == -1 || (v23 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    goto LABEL_8;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = *(a1 + 8) + v22;
    v25 = (*a1 + v23) | ((*(a1 + 4) + HIDWORD(v23)) << 32);
  }

LABEL_9:
  *a1 = v25;
  *(a1 + 8) = v24;
  sub_3AF144(*a7);
  *(a1 + 16) |= sub_F6D98C((a2 + 8), 0, 0) & 0xFFFFFFFFFFFFFFFBLL;
  return sub_F853DC((a2 + 8), 0x3B9ACA00u, a6, *a7, a1);
}

void sub_F85E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3874(va);
  _Unwind_Resume(a1);
}

unint64_t sub_F85EB0(uint64_t a1, unint64_t a2, int *a3, unint64_t a4, int *a5, uint64_t a6)
{
  result = sub_F8D290(a6, a2, a3, a4, a5);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (result == -1 || (result & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    *a1 = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *(a1 + 8) + v8;
      v10 = (*a1 + result) | ((*(a1 + 4) + HIDWORD(result)) << 32);
    }

    *a1 = v10;
    *(a1 + 8) = v9;
  }

  return result;
}

double sub_F85F38(uint64_t a1, uint64_t a2)
{
  *a1 = vadd_s32(*a2, *a1);
  v2 = *(a1 + 16);
  *(a1 + 8) += *(a2 + 8);
  *(a1 + 16) = v2 | *(a2 + 16);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32) + *(a1 + 32);
  result = *(a2 + 24) + *(a1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40) + v3;
  return result;
}

uint64_t sub_F85F94(_DWORD *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = 104;
  if (a3)
  {
    v7 = 8;
  }

  v22 = *&a2[v7];
  v8 = 112;
  if (a3)
  {
    v8 = 16;
  }

  v23 = 0u;
  v24 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v25 = _Q0;
  v26 = 0x3FF0000000000000;
  v27 = 1;
  sub_10AFB6C(a4, &v23, &v22, &a2[v8], a5, 0);
  if ((v27 & 1) == 0)
  {
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

  v15 = sub_F8634C(&v23, &v25, v14);
  if (v24 + v15 == -1 || (v17 = (DWORD1(v24) + HIDWORD(v15)), v17 == 0x7FFFFFFF))
  {
    result = 0x7FFFFFFFLL;
    *a1 = 0x7FFFFFFF;
    return result;
  }

  result = 0x7FFFFFFFLL;
  if (*(&v24 + 1) + v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    *a1 = 0x7FFFFFFF;
    return result;
  }

  v19 = v17;
  if (*a2 - 3 <= 1)
  {
    v20 = vcvtd_n_f64_s32(v17, 1uLL);
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v21 = (v20 + v20) + 1;
        goto LABEL_18;
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
LABEL_18:
      v20 = (v21 >> 1);
    }

    v19 = v20;
  }

  result = v17;
  *a1 += v19;
  return result;
}

uint64_t sub_F8613C(int *a1, int **a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int *a7)
{
  v18 = 0u;
  v19 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v20 = _Q0;
  v21 = 0x3FF0000000000000;
  v22 = 1;
  sub_10B0E88(a4, &v18, a2, a3, a5, a7, a6);
  if (v22)
  {
    v14 = sub_F8634C(&v18, &v20, v13);
    v15 = (DWORD1(v19) + HIDWORD(v14));
    result = 0x7FFFFFFFLL;
    v17 = 0x7FFFFFFF;
    if (v15 != 0x7FFFFFFF)
    {
      v17 = *a1 + v15;
      result = v15;
    }

    *a1 = v17;
  }

  else
  {
    result = 0x7FFFFFFFLL;
    *a1 = 0x7FFFFFFF;
  }

  return result;
}

uint64_t sub_F86218(int *a1, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5, int a6, unsigned int *a7)
{
  v18 = 0u;
  v19 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v20 = _Q0;
  v21 = 0x3FF0000000000000;
  v22 = 1;
  sub_10B7014(a4, &v18, (a2 + 8), a3, a5, a7, a6);
  if (v22)
  {
    v14 = sub_F8634C(&v18, &v20, v13);
    v15 = (DWORD1(v19) + HIDWORD(v14));
    result = 0x7FFFFFFFLL;
    v17 = 0x7FFFFFFF;
    if (v15 != 0x7FFFFFFF)
    {
      v17 = *a1 + v15;
      result = v15;
    }

    *a1 = v17;
  }

  else
  {
    result = 0x7FFFFFFFLL;
    *a1 = 0x7FFFFFFF;
  }

  return result;
}

unint64_t sub_F862F4(int *a1, unint64_t a2, int *a3, unint64_t a4, int *a5, uint64_t a6)
{
  result = sub_F8D290(a6, a2, a3, a4, a5) >> 32;
  v8 = 0x7FFFFFFF;
  if (result != 0x7FFFFFFF)
  {
    v8 = *a1 + result;
  }

  *a1 = v8;
  return result;
}

unint64_t sub_F8634C(_DWORD *a1, double *a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *a2 * *&a3;
  if (v3 >= 0.0)
  {
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) + 1;
  }

  else
  {
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v3 = (v4 >> 1);
LABEL_7:
  v5 = a2[1] * a1[1];
  if (v5 >= 0.0)
  {
    if (v5 < 4.50359963e15)
    {
      v6 = (v5 + v5) + 1;
      goto LABEL_12;
    }
  }

  else if (v5 > -4.50359963e15)
  {
    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
LABEL_12:
    v5 = (v6 >> 1);
  }

  return v3 | (v5 << 32);
}

void sub_F86484()
{
  byte_27BFE8F = 3;
  LODWORD(qword_27BFE78) = 5136193;
  byte_27BFEA7 = 3;
  LODWORD(qword_27BFE90) = 5136194;
  byte_27BFEBF = 3;
  LODWORD(qword_27BFEA8) = 5136195;
  byte_27BFED7 = 15;
  strcpy(&qword_27BFEC0, "vehicle_mass_kg");
  byte_27BFEEF = 21;
  strcpy(&xmmword_27BFED8, "vehicle_cargo_mass_kg");
  byte_27BFF07 = 19;
  strcpy(&qword_27BFEF0, "vehicle_aux_power_w");
  byte_27BFF1F = 15;
  strcpy(&qword_27BFF08, "dcdc_efficiency");
  strcpy(&qword_27BFF20, "drive_train_efficiency");
  HIBYTE(word_27BFF36) = 22;
  operator new();
}

void sub_F86660(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFF36) < 0)
  {
    sub_21E5B74();
  }

  sub_21E5B80();
  _Unwind_Resume(a1);
}

double *sub_F86680(double *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  *a1 = 0.0;
  if (a2)
  {
    a3 = a2;
  }

  v8 = sub_3B1348(*a6);
  v9 = v8[1];
  v21 = *v8;
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memcpy(v23, v8 + 2, sizeof(v23));
  v10 = sub_36383C(&v21, (HIDWORD(a3) & 0xFFFE0000FFFFFFFFLL | (WORD1(a3) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a3 >> 1) & 1) << 48)) ^ 0x1000000000000);
  if (!v10)
  {
    *a1 = 0.0;
    v19 = v22;
    if (!v22)
    {
      return a1;
    }

    goto LABEL_23;
  }

  v11 = &v10[-*v10];
  v12 = *v11;
  if (v12 >= 0xB && *(v11 + 5))
  {
    v13 = *&v10[*(v11 + 5)];
    v14 = WORD4(v23[241]);
    if (!WORD4(v23[241]))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0xFFFF;
    v14 = WORD4(v23[241]);
    if (!WORD4(v23[241]))
    {
      goto LABEL_16;
    }
  }

  if (v12 >= 0x11)
  {
    v15 = *(v11 + 8);
    if (v15)
    {
      v16 = &v10[v15 + *&v10[v15]];
      if (*v16 >= v14)
      {
        v17 = *&v16[2 * v14 + 2];
        if ((v17 + 1) > 1u)
        {
          v18 = v17;
LABEL_18:
          *a1 = v18 / 1000.0;
          v19 = v22;
          if (!v22)
          {
            return a1;
          }

          goto LABEL_23;
        }
      }
    }
  }

LABEL_16:
  if (v13 != 0xFFFF)
  {
    v18 = v13;
    goto LABEL_18;
  }

  *a1 = 0.3;
  v19 = v22;
  if (!v22)
  {
    return a1;
  }

LABEL_23:
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

uint64_t sub_F86870(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  if (sub_446D14(a1) && (v6 = nullsub_1(*(a2 + 8)), v12 = sub_4566AC(v6), v7 = sub_3B8500(a1), v10 = sub_4568F8(v7, &v12), v11 = v8, sub_456A78(&v10)))
  {
    *a3 += sub_3F80(a1);
    a3[1] += sub_5AAC4(a1);
    sub_456ABC(a3 + 2, &v10);
    if (sub_456A78(a3 + 2))
    {
      return sub_5AAC4(a1);
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  else
  {
    *a3 = xmmword_22A85E0;
    result = 0x7FFFFFFFLL;
    a3[4] = 0x7FFFFFFF;
  }

  return result;
}

uint64_t sub_F8696C(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void **a7)
{
  result = sub_3AF144(*a7);
  if (a6 != 2)
  {
    v15 = *a2;
    v16 = &(*a2)[-**a2];
    v17 = *v16;
    if (v17 < 0x9B)
    {
      v14 = 0;
      if (v17 < 0x2F)
      {
        v19 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v14 = *(v16 + 77);
      if (*(v16 + 77))
      {
        v14 = (*&v15[v14] >> 4) & 0x10;
      }
    }

    if (*(v16 + 23) && !v15[*(v16 + 23)])
    {
      v14 |= 0x20uLL;
      v19 = 1;
      if (v17 < 0x9B)
      {
LABEL_36:
        if (v19)
        {
          v22 = *(v16 + 23);
          if (v22)
          {
            if (v15[v22] == 21)
            {
              v14 |= 0x80uLL;
            }
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v19 = 1;
      if (v17 < 0x9B)
      {
        goto LABEL_36;
      }
    }

    if (*(v16 + 77) && (v15[*(v16 + 77)] & 8) != 0)
    {
      v14 |= 0x40uLL;
    }

    goto LABEL_36;
  }

  result = sub_2BDCDC(result, a2[4] & 0xFFFFFFFFFFFFFFLL);
  v11 = *a2;
  v12 = &(*a2)[-**a2];
  v13 = *v12;
  if (v13 < 0x9B)
  {
    v14 = 0;
    if (v13 < 0x2F)
    {
      v18 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v14 = *(v12 + 77);
    if (*(v12 + 77))
    {
      v14 = (*&v11[v14] >> 4) & 0x10;
    }
  }

  if (*(v12 + 23) && !v11[*(v12 + 23)])
  {
    v14 |= 0x20uLL;
    v18 = 1;
    if (v13 < 0x9B)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v18 = 1;
    if (v13 < 0x9B)
    {
      goto LABEL_26;
    }
  }

  if (*(v12 + 77) && (v11[*(v12 + 77)] & 8) != 0)
  {
    v14 |= 0x40uLL;
  }

LABEL_26:
  if (v18)
  {
    v20 = *(v12 + 23);
    if (v20)
    {
      if (v11[v20] == 21)
      {
        v14 |= 0x80uLL;
      }
    }
  }

  if (!result)
  {
LABEL_40:
    v21 = v14 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_41;
  }

  v21 = v14 | 4;
LABEL_41:
  *a1 |= v21;
  return result;
}

unint64_t sub_F86B2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void **a7)
{
  v10 = sub_3AF144(*a7);
  if (a6 != 2)
  {
    result = sub_F6D98C((a2 + 8), 1, 0);
    goto LABEL_5;
  }

  v11 = sub_2BDCDC(v10, *(a2 + 40) & 0xFFFFFFFFFFFFFFLL);
  result = sub_F6D98C((a2 + 8), 1, 0);
  if ((v11 & 1) == 0)
  {
LABEL_5:
    v13 = result & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_6;
  }

  v13 = result | 4;
LABEL_6:
  *a1 |= v13;
  return result;
}

uint64_t sub_F86BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = nullsub_1(*(a1 + 8));
  v6 = sub_4566AC(v3);
  *a2 = 0;
  result = sub_4568CC(&v6);
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_F86C30(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = 104;
  if (a3)
  {
    v7 = 8;
  }

  v8 = *&a2[v7];
  v9 = 16;
  if (!a3)
  {
    v9 = 112;
  }

  sub_10BF42C(a4, v8, &a2[v9], a5, 0, v17);
  if (!sub_446D14(v17))
  {
    *a1 = xmmword_22A85E0;
    result = 0x7FFFFFFFLL;
    *(a1 + 16) = 0x7FFFFFFF;
    return result;
  }

  v10 = *a2 - 3;
  v11 = sub_3F80(v17);
  v12 = v11;
  if (v10 <= 1)
  {
    v12 = v11 >> 1;
    v13 = vcvtd_n_f64_s32(sub_5AAC4(v17), 1uLL);
    if (v13 >= 0.0)
    {
      if (v13 < 4.50359963e15)
      {
        v14 = (v13 + v13) + 1;
        goto LABEL_14;
      }
    }

    else if (v13 > -4.50359963e15)
    {
      v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
LABEL_14:
      v13 = (v14 >> 1);
    }

    result = v13;
    goto LABEL_16;
  }

  result = sub_5AAC4(v17);
LABEL_16:
  v16 = *(a1 + 4) + result;
  *a1 += v12;
  *(a1 + 4) = v16;
  return result;
}

uint64_t sub_F86D6C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, unsigned int *a7, int a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  *v24 = 0x7FFFFFFF;
  *&v24[4] = 0x7FFFFFFF7FFFFFFFLL;
  *v25 = 0x7FFFFFFF;
  *&v25[4] = 0x7FFFFFFF7FFFFFFFLL;
  if (sub_44F320(v17))
  {
    v18 = nullsub_1(v17);
    v23[0].n128_u64[0] = sub_4566AC(v18);
    *v24 = sub_456608(0x32u, v23);
    *&v24[8] = v19;
    v20 = nullsub_1(v17);
    v21 = *(v20 + 8);
    *v25 = *v20;
    *&v25[8] = v21;
  }

  sub_10BEF98(a4, a2, a3, a5, a7, a6, v24, a8, v23);
  return sub_F86870(v23, a9, a1);
}

uint64_t sub_F86E74(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int *a7, int a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  *v24 = 0x7FFFFFFF;
  *&v24[4] = 0x7FFFFFFF7FFFFFFFLL;
  *v25 = 0x7FFFFFFF;
  *&v25[4] = 0x7FFFFFFF7FFFFFFFLL;
  if (sub_44F320(v17))
  {
    v18 = nullsub_1(v17);
    v23[0].n128_u64[0] = sub_4566AC(v18);
    *v24 = sub_456608(0x32u, v23);
    *&v24[8] = v19;
    v20 = nullsub_1(v17);
    v21 = *(v20 + 8);
    *v25 = *v20;
    *&v25[8] = v21;
  }

  sub_10BF1E0(a4, a2 + 8, a3, a5, a7, a6, v24, a8, v23);
  return sub_F86870(v23, a9, a1);
}

void sub_F86FD8()
{
  byte_27BFF97 = 3;
  LODWORD(qword_27BFF80) = 5136193;
  byte_27BFFAF = 3;
  LODWORD(qword_27BFF98) = 5136194;
  byte_27BFFC7 = 3;
  LODWORD(qword_27BFFB0) = 5136195;
  byte_27BFFDF = 15;
  strcpy(&qword_27BFFC8, "vehicle_mass_kg");
  byte_27BFFF7 = 21;
  strcpy(&xmmword_27BFFE0, "vehicle_cargo_mass_kg");
  byte_27C000F = 19;
  strcpy(&qword_27BFFF8, "vehicle_aux_power_w");
  byte_27C0027 = 15;
  strcpy(&qword_27C0010, "dcdc_efficiency");
  strcpy(&qword_27C0028, "drive_train_efficiency");
  HIBYTE(word_27C003E) = 22;
  operator new();
}

void sub_F871B4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C003E) < 0)
  {
    sub_21E5C50();
  }

  sub_21E5C5C();
  _Unwind_Resume(a1);
}

uint64_t sub_F871D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = -1;
  *(result + 8) = 0;
  *(result + 16) = -COERCE_DOUBLE(0x8000000080000000);
  if (*(a4 + 16))
  {
    if (*(a4 + 20) != -1 || *(a4 + 112) != -1)
    {
      *result = *a4;
      *(result + 8) = *(a4 + 8);
      *(result + 16) = 0;
      *(result + 20) = a5;
    }
  }

  return result;
}

uint64_t sub_F87220(uint64_t a1, _OWORD *a2, void **a3)
{
  *a1 = *a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = sub_3AF6B4(*a3);
  return a1;
}

void sub_F8725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5[4];
  v7 = a5[3];
  v8 = v5;
  v6 = a5[10];
  v9 = a5[9];
  v10 = v6;
  sub_F89D0C();
}

void sub_F87544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_404190(va);
  sub_3355FC((v5 - 216));
  _Unwind_Resume(a1);
}

void sub_F875B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (*(a1 + 880))
  {
    do
    {
      v7 = *(a1 + 832);
      v8 = (*(a1 + 776) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38(a1 + 800, v7);
      v10 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v10) = -1;
      v11 = *(a1 + 880) - 1;
      *(a1 + 880) = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 832);
        *(*(a1 + 856) + 4 * *v12) = 0;
        v6 = *(a1 + 880);
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 832);
            v28 = v12[v24];
            v29 = *(a1 + 856);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = *(a1 + 880);
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 840) -= 8;
      v31 = (v9 + 1);
      v32 = *(*a1 + 48);
      if (v31 >= (*(*a1 + 56) - v32) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(v32 + 4 * v9);
      v34 = *(v32 + 4 * v31);
      if (v33 != v34)
      {
        v35 = *(*a1 + 72);
        v36 = (v35 + 80 * v34);
        v37 = (v35 + 80 * v33);
        do
        {
          if (!sub_F8BA10(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC(a1 + 8, &v41, &v40);
          }

          v37 += 20;
        }

        while (v37 != v36);
        v6 = *(a1 + 880);
      }
    }

    while (v6);
  }
}

void sub_F87800(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (a1[220])
  {
    do
    {
      v7 = *(a1 + 104);
      v8 = (*(a1 + 97) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38((a1 + 200), v7);
      v10 = *(a1 + 104);
      *(*(a1 + 107) + 4 * *v10) = -1;
      v11 = a1[220] - 1;
      a1[220] = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 104);
        *(*(a1 + 107) + 4 * *v12) = 0;
        v6 = a1[220];
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 104);
            v28 = v12[v24];
            v29 = *(a1 + 107);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = a1[220];
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 105) -= 8;
      v31 = *a1;
      v32 = (v9 + 1);
      if (v32 >= (*(*a1 + 56) - *(*a1 + 48)) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(*v31 + 4 * v9);
      v34 = *(*v31 + 4 * v32);
      if (v33 != v34)
      {
        v35 = v31[3];
        v36 = (v35 + 80 * v34);
        v37 = (v35 + 80 * v33);
        do
        {
          if (!sub_F8BA10(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC((a1 + 2), &v41, &v40);
          }

          v37 += 20;
        }

        while (v37 != v36);
        v6 = a1[220];
      }
    }

    while (v6);
  }
}

void sub_F87A54(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = 9;
  if (!a3)
  {
    v3 = 3;
  }

  v4 = 10;
  if (!a3)
  {
    v4 = 4;
  }

  if (a2[v3] != a2[v4])
  {
    v6 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
    if (v6)
    {
      if (a3)
      {
        v8 = 0;
        do
        {
          sub_F880D4(a2, v8, a3, &v31);
          v9 = v31;
          v10 = v32;
          while (v9 != v10)
          {
            v12 = *v9;
            v13 = (v12 + 1);
            v14 = a2[6];
            if (v13 >= (a2[7] - v14) >> 2)
            {
              goto LABEL_35;
            }

            v15 = a2[9];
            v16 = *(v14 + 4 * v12);
            v11 = (v15 + 80 * v16);
            v17 = *(v14 + 4 * v13);
            if (v16 != v17)
            {
              v18 = (v15 + 80 * v17);
              while (*v11 != v8 || sub_38EC(v11 + 14))
              {
                v11 += 20;
                if (v11 == v18)
                {
                  v11 = v18;
                  break;
                }
              }
            }

            v11[14] = v9[14];
            v9 += 20;
          }

          ++v8;
        }

        while (v8 != v6);
      }

      else
      {
        v19 = 0;
        do
        {
          sub_F880D4(a2, v19, 0, &v31);
          v20 = v31;
          v21 = v32;
          while (v20 != v21)
          {
            v23 = *v20;
            v24 = (v23 + 1);
            if (v24 >= (a2[7] - a2[6]) >> 2)
            {
LABEL_35:
              exception = __cxa_allocate_exception(0x40uLL);
              v30 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
            }

            v25 = a2[3];
            v26 = *(*a2 + 4 * v23);
            v22 = (v25 + 80 * v26);
            v27 = *(*a2 + 4 * v24);
            if (v26 != v27)
            {
              v28 = (v25 + 80 * v27);
              while (*v22 != v19 || sub_38EC(v22 + 14))
              {
                v22 += 20;
                if (v22 == v28)
                {
                  v22 = v28;
                  break;
                }
              }
            }

            v22[14] = v20[14];
            v20 += 20;
          }

          ++v19;
        }

        while (v19 != v6);
      }
    }
  }
}

uint64_t sub_F87C78(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6, int32x2_t *a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v68[0] = sub_394BD0();
  if (sub_F75E1C(a5, a2))
  {
    v22 = sub_F75E48(a5, a2);
    v23 = sub_F85F94(v68, v22, 0, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v23 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a4 + 60);
  v26 = *(a4 + 64);
  v27 = *(a4 + 72);
  if (v25 == v26 && v27 == 0)
  {
    v51 = a3;
    v52 = a7;
    v53 = a8;
    v36 = sub_F98E1C(a6, v25);
    v37 = HIDWORD(v36);
    v38 = HIDWORD(v36) & 0xFFFF0000FFFFFFFFLL | (WORD1(v36) << 32);
    v54 = (HIDWORD(v36) & 0xFFFE0000FFFFFFFFLL | (WORD1(v36) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v36 >> 1) & 1) << 48)) ^ 0x1000000000000;
    v39 = *(a1 + 24);
    v40 = sub_2B51D8(v39, v38);
    if (*(v39 + 7772) == 1)
    {
      v41 = v36 << 16;
      v42 = sub_30C50C(v39 + 3896, v37, 0);
      v43 = &v42[-*v42];
      v35 = a5;
      if (*v43 < 5u)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v43 + 2);
        if (v44)
        {
          v44 += &v42[*&v42[v44]];
        }
      }

      v45 = v44 + ((v41 >> 30) & 0x3FFFC) + 4 + *(v44 + ((v41 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v45 = 0;
      v35 = a5;
    }

    v63 = v40;
    v64 = v45;
    v65 = sub_31D7E8(v39, v38, 1);
    v66 = v46;
    v67 = v54;
    if (v23 < 0)
    {
      v47 = -5;
    }

    else
    {
      v47 = 5;
    }

    sub_35CC(&v59, v23 / 10 + a9 + (((103 * (v47 + v23 % 10)) >> 15) & 1) + ((103 * (v47 + v23 % 10)) >> 10));
    sub_320EC8(*(a1 + 24), v38, v58);
    sub_3914(&v59, v58);
    a7 = v52;
    a8 = v53;
    a3 = v51;
    sub_25F00(v58);
    v34 = sub_F8613C(v68, &v63, a15 - a13, v52, v53, *(a1 + 12), &v59);
    sub_3874(&v59);
    result = 0x7FFFFFFFLL;
    if (v34 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a1 + 16);
    v31 = v25 == v26 && v27 != 0;
    v58[0] = a7;
    v58[1] = v29;
    v59 = a6;
    v60 = v25;
    v61 = v27;
    v62 = v31;
    v63 = a6;
    LODWORD(v64) = v26;
    v65 = 0;
    LOBYTE(v66) = 0;
    v32 = sub_394BD0();
    if (v23 < 0)
    {
      v33 = -5;
    }

    else
    {
      v33 = 5;
    }

    v57 = sub_117F848(&v59, &v63, v32, v58, a8, *(a1 + 12), v23 / 10 + a9 + (((103 * (v33 + v23 % 10)) >> 15) & 1) + ((103 * (v33 + v23 % 10)) >> 10), a11, 1000000000 - a13, 0, a15, &v56, **(a1 + 16));
    if (!sub_38EC(&v57))
    {
      return 0x7FFFFFFFLL;
    }

    v34 = HIDWORD(v57);
    if (HIDWORD(v57) == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    sub_F86338(v68, &v57);
    v35 = a5;
  }

  v48 = (v34 + v23);
  if (sub_F75E1C(v35, a3))
  {
    v49 = sub_F75E48(v35, a3);
    v50 = sub_F85F94(v68, v49, 1, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v50 == 0x7FFFFFFF)
    {
      return result;
    }

    v48 = (v50 + v48);
  }

  *(a4 + 56) = v68[0];
  return v48;
}

void sub_F880A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, char a26)
{
  sub_25F00(&a24);
  sub_3874(&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_F880D4@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = a2 + 1;
  v5 = result[6];
  v6 = (result[7] - v5) >> 2;
  if (!a3)
  {
    if (v6 > v4)
    {
      v7 = result[9];
      goto LABEL_6;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  if (v6 <= v4)
  {
    goto LABEL_7;
  }

  v7 = result[3];
  v5 = *result;
LABEL_6:
  v8 = v7 + 80 * *(v5 + 4 * v4);
  *a4 = v7 + 80 * *(v5 + 4 * a2);
  a4[1] = v8;
  return result;
}

void sub_F88168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5[4];
  v7 = a5[3];
  v8 = v5;
  v6 = a5[10];
  v9 = a5[9];
  v10 = v6;
  sub_F89D0C();
}

void sub_F88450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_404190(va);
  sub_3355FC((v5 - 216));
  _Unwind_Resume(a1);
}

void sub_F884BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (*(a1 + 880))
  {
    do
    {
      v7 = *(a1 + 832);
      v8 = (*(a1 + 776) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38(a1 + 800, v7);
      v10 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v10) = -1;
      v11 = *(a1 + 880) - 1;
      *(a1 + 880) = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 832);
        *(*(a1 + 856) + 4 * *v12) = 0;
        v6 = *(a1 + 880);
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 832);
            v28 = v12[v24];
            v29 = *(a1 + 856);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = *(a1 + 880);
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 840) -= 8;
      v31 = (v9 + 1);
      v32 = *(*a1 + 48);
      if (v31 >= (*(*a1 + 56) - v32) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(v32 + 4 * v9);
      v34 = *(v32 + 4 * v31);
      if (v33 != v34)
      {
        v35 = *(*a1 + 72);
        v36 = (v35 + 80 * v34);
        v37 = (v35 + 80 * v33);
        do
        {
          if (!sub_F8C170(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC(a1 + 8, &v41, &v40);
          }

          v37 += 20;
        }

        while (v37 != v36);
        v6 = *(a1 + 880);
      }
    }

    while (v6);
  }
}

void sub_F8870C(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (a1[220])
  {
    do
    {
      v7 = *(a1 + 104);
      v8 = (*(a1 + 97) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38((a1 + 200), v7);
      v10 = *(a1 + 104);
      *(*(a1 + 107) + 4 * *v10) = -1;
      v11 = a1[220] - 1;
      a1[220] = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 104);
        *(*(a1 + 107) + 4 * *v12) = 0;
        v6 = a1[220];
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 104);
            v28 = v12[v24];
            v29 = *(a1 + 107);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = a1[220];
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 105) -= 8;
      v31 = *a1;
      v32 = (v9 + 1);
      if (v32 >= (*(*a1 + 56) - *(*a1 + 48)) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(*v31 + 4 * v9);
      v34 = *(*v31 + 4 * v32);
      if (v33 != v34)
      {
        v35 = v31[3];
        v36 = (v35 + 80 * v34);
        v37 = (v35 + 80 * v33);
        do
        {
          if (!sub_F8C170(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC((a1 + 2), &v41, &v40);
          }

          v37 += 20;
        }

        while (v37 != v36);
        v6 = a1[220];
      }
    }

    while (v6);
  }
}

uint64_t sub_F88960(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6, int32x2_t *a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v68[0] = sub_394BD0();
  if (sub_F75E1C(a5, a2))
  {
    v22 = sub_F75E48(a5, a2);
    v23 = sub_F85F94(v68, v22, 0, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v23 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a4 + 60);
  v26 = *(a4 + 64);
  v27 = *(a4 + 72);
  if (v25 == v26 && v27 == 0)
  {
    v51 = a3;
    v52 = a7;
    v53 = a8;
    v36 = sub_F94B9C(a6, v25);
    v37 = HIDWORD(v36);
    v38 = HIDWORD(v36) & 0xFFFF0000FFFFFFFFLL | (WORD1(v36) << 32);
    v54 = (HIDWORD(v36) & 0xFFFE0000FFFFFFFFLL | (WORD1(v36) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v36 >> 1) & 1) << 48)) ^ 0x1000000000000;
    v39 = *(a1 + 24);
    v40 = sub_2B51D8(v39, v38);
    if (*(v39 + 7772) == 1)
    {
      v41 = v36 << 16;
      v42 = sub_30C50C(v39 + 3896, v37, 0);
      v43 = &v42[-*v42];
      v35 = a5;
      if (*v43 < 5u)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v43 + 2);
        if (v44)
        {
          v44 += &v42[*&v42[v44]];
        }
      }

      v45 = v44 + ((v41 >> 30) & 0x3FFFC) + 4 + *(v44 + ((v41 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v45 = 0;
      v35 = a5;
    }

    v63 = v40;
    v64 = v45;
    v65 = sub_31D7E8(v39, v38, 1);
    v66 = v46;
    v67 = v54;
    if (v23 < 0)
    {
      v47 = -5;
    }

    else
    {
      v47 = 5;
    }

    sub_35CC(&v59, v23 / 10 + a9 + (((103 * (v47 + v23 % 10)) >> 15) & 1) + ((103 * (v47 + v23 % 10)) >> 10));
    sub_320EC8(*(a1 + 24), v38, v58);
    sub_3914(&v59, v58);
    a7 = v52;
    a8 = v53;
    a3 = v51;
    sub_25F00(v58);
    v34 = sub_F8613C(v68, &v63, a15 - a13, v52, v53, *(a1 + 12), &v59);
    sub_3874(&v59);
    result = 0x7FFFFFFFLL;
    if (v34 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a1 + 16);
    v31 = v25 == v26 && v27 != 0;
    v58[0] = a7;
    v58[1] = v29;
    v59 = a6;
    v60 = v25;
    v61 = v27;
    v62 = v31;
    v63 = a6;
    LODWORD(v64) = v26;
    v65 = 0;
    LOBYTE(v66) = 0;
    v32 = sub_394BD0();
    if (v23 < 0)
    {
      v33 = -5;
    }

    else
    {
      v33 = 5;
    }

    v57 = sub_117FED4(&v59, &v63, v32, v58, a8, *(a1 + 12), v23 / 10 + a9 + (((103 * (v33 + v23 % 10)) >> 15) & 1) + ((103 * (v33 + v23 % 10)) >> 10), a11, 1000000000 - a13, 0, a15, &v56, **(a1 + 16));
    if (!sub_38EC(&v57))
    {
      return 0x7FFFFFFFLL;
    }

    v34 = HIDWORD(v57);
    if (HIDWORD(v57) == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    sub_F86338(v68, &v57);
    v35 = a5;
  }

  v48 = (v34 + v23);
  if (sub_F75E1C(v35, a3))
  {
    v49 = sub_F75E48(v35, a3);
    v50 = sub_F85F94(v68, v49, 1, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v50 == 0x7FFFFFFF)
    {
      return result;
    }

    v48 = (v50 + v48);
  }

  *(a4 + 56) = v68[0];
  return v48;
}

void sub_F88D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, char a26)
{
  sub_25F00(&a24);
  sub_3874(&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_F88DBC@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = a2 + 1;
  v5 = result[6];
  v6 = (result[7] - v5) >> 2;
  if (!a3)
  {
    if (v6 > v4)
    {
      v7 = result[9];
      goto LABEL_6;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  if (v6 <= v4)
  {
    goto LABEL_7;
  }

  v7 = result[3];
  v5 = *result;
LABEL_6:
  v8 = v7 + 56 * *(v5 + 4 * v4);
  *a4 = v7 + 56 * *(v5 + 4 * a2);
  a4[1] = v8;
  return result;
}

void sub_F88E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5[4];
  v7 = a5[3];
  v8 = v5;
  v6 = a5[10];
  v9 = a5[9];
  v10 = v6;
  sub_F8C41C();
}

void sub_F89138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_404190(va);
  sub_3355FC((v5 - 216));
  _Unwind_Resume(a1);
}

void sub_F891A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (*(a1 + 880))
  {
    do
    {
      v7 = *(a1 + 832);
      v8 = (*(a1 + 776) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38(a1 + 800, v7);
      v10 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v10) = -1;
      v11 = *(a1 + 880) - 1;
      *(a1 + 880) = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 832);
        *(*(a1 + 856) + 4 * *v12) = 0;
        v6 = *(a1 + 880);
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 832);
            v28 = v12[v24];
            v29 = *(a1 + 856);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = *(a1 + 880);
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 840) -= 8;
      v31 = (v9 + 1);
      v32 = *(*a1 + 48);
      if (v31 >= (*(*a1 + 56) - v32) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(v32 + 4 * v9);
      v34 = *(v32 + 4 * v31);
      if (v33 != v34)
      {
        v35 = *(*a1 + 72);
        v36 = (v35 + 56 * v34);
        v37 = (v35 + 56 * v33);
        do
        {
          if (!sub_F8CA10(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC(a1 + 8, &v41, &v40);
          }

          v37 += 14;
        }

        while (v37 != v36);
        v6 = *(a1 + 880);
      }
    }

    while (v6);
  }
}

void sub_F893F4(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (a1[220])
  {
    do
    {
      v7 = *(a1 + 104);
      v8 = (*(a1 + 97) + 12 * *v7);
      v9 = *v8;
      v42 = *(v8 + 1);
      sub_DD38((a1 + 200), v7);
      v10 = *(a1 + 104);
      *(*(a1 + 107) + 4 * *v10) = -1;
      v11 = a1[220] - 1;
      a1[220] = v11;
      if (v11)
      {
        *v10 = v10[v11];
        v12 = *(a1 + 104);
        *(*(a1 + 107) + 4 * *v12) = 0;
        v6 = a1[220];
        if (v6 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v6)
            {
              v17 = v6;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = v12[2 * v14 + 1];
            v20 = &v12[2 * v15 + 1];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 2;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v6)
            {
              break;
            }

            v24 = 2 * v14;
            v25 = &v12[v24];
            v26 = 8 * v18;
            v27 = *&v12[v24];
            *v25 = *(v12 + v26);
            v25[1] = v19;
            *(v12 + v26) = v27;
            v12 = *(a1 + 104);
            v28 = v12[v24];
            v29 = *(a1 + 107);
            v30 = *(v12 + v26);
            LODWORD(v26) = *(v29 + 4 * v28);
            *(v29 + 4 * v28) = *(v29 + 4 * v30);
            *(v29 + 4 * v30) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v6 = a1[220];
          }

          while (v15 < v6);
        }
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 105) -= 8;
      v31 = *a1;
      v32 = (v9 + 1);
      if (v32 >= (*(*a1 + 56) - *(*a1 + 48)) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v33 = *(*v31 + 4 * v9);
      v34 = *(*v31 + 4 * v32);
      if (v33 != v34)
      {
        v35 = v31[3];
        v36 = (v35 + 56 * v34);
        v37 = (v35 + 56 * v33);
        do
        {
          if (!sub_F8CA10(a4, v9, &v42, v37))
          {
            v41 = *v37;
            v40 = (HIDWORD(v42) + v42) | 0x7FFFFFFF00000000;
            sub_F8BCBC((a1 + 2), &v41, &v40);
          }

          v37 += 14;
        }

        while (v37 != v36);
        v6 = a1[220];
      }
    }

    while (v6);
  }
}

void sub_F89648(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = 9;
  if (!a3)
  {
    v3 = 3;
  }

  v4 = 10;
  if (!a3)
  {
    v4 = 4;
  }

  if (a2[v3] != a2[v4])
  {
    v6 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
    if (v6)
    {
      if (a3)
      {
        v8 = 0;
        do
        {
          sub_F88DBC(a2, v8, a3, &v33);
          v9 = v33;
          v10 = v34;
          while (v9 != v10)
          {
            v13 = *v9;
            v14 = (v13 + 1);
            v15 = a2[6];
            if (v14 >= (a2[7] - v15) >> 2)
            {
              goto LABEL_35;
            }

            v16 = a2[9];
            v17 = *(v15 + 4 * v13);
            v11 = (v16 + 56 * v17);
            v18 = *(v15 + 4 * v14);
            if (v17 != v18)
            {
              v19 = (v16 + 56 * v18);
              while (*v11 != v8 || sub_F86BB8(v11 + 4))
              {
                v11 += 14;
                if (v11 == v19)
                {
                  v11 = v19;
                  break;
                }
              }
            }

            v12 = *(v9 + 1);
            v11[8] = v9[8];
            *(v11 + 1) = v12;
            v9 += 14;
          }

          ++v8;
        }

        while (v8 != v6);
      }

      else
      {
        v20 = 0;
        do
        {
          sub_F88DBC(a2, v20, 0, &v33);
          v21 = v33;
          v22 = v34;
          while (v21 != v22)
          {
            v25 = *v21;
            v26 = (v25 + 1);
            if (v26 >= (a2[7] - a2[6]) >> 2)
            {
LABEL_35:
              exception = __cxa_allocate_exception(0x40uLL);
              v32 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
            }

            v27 = a2[3];
            v28 = *(*a2 + 4 * v25);
            v23 = (v27 + 56 * v28);
            v29 = *(*a2 + 4 * v26);
            if (v28 != v29)
            {
              v30 = (v27 + 56 * v29);
              while (*v23 != v20 || sub_F86BB8(v23 + 4))
              {
                v23 += 14;
                if (v23 == v30)
                {
                  v23 = v30;
                  break;
                }
              }
            }

            v24 = *(v21 + 1);
            v23[8] = v21[8];
            *(v23 + 1) = v24;
            v21 += 14;
          }

          ++v20;
        }

        while (v20 != v6);
      }
    }
  }
}

uint64_t sub_F8987C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  sub_F86BE4(*(a1 + 16), &v76);
  if (sub_F75E1C(a5, a2))
  {
    v23 = sub_F75E48(a5, a2);
    v24 = sub_F86C30(&v76, v23, 0, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v24 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v24 = 0;
  }

  v57 = a3;
  v26 = *(a4 + 36);
  v27 = *(a4 + 40);
  v28 = *(a4 + 48);
  if (v26 == v27 && v28 == 0)
  {
    v54 = a7;
    v55 = a8;
    v38 = sub_F94B9C(a6, v26);
    v39 = HIDWORD(v38);
    v40 = HIDWORD(v38) & 0xFFFF0000FFFFFFFFLL | (WORD1(v38) << 32);
    v56 = (HIDWORD(v38) & 0xFFFE0000FFFFFFFFLL | (WORD1(v38) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v38 >> 1) & 1) << 48)) ^ 0x1000000000000;
    v41 = *(a1 + 24);
    v42 = sub_2B51D8(v41, v40);
    if (*(v41 + 7772) == 1)
    {
      v43 = v38 << 16;
      v44 = sub_30C50C(v41 + 3896, v39, 0);
      v45 = &v44[-*v44];
      v36 = a5;
      v46 = a9;
      if (*v45 < 5u)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(v45 + 2);
        if (v47)
        {
          v47 += &v44[*&v44[v47]];
        }
      }

      v48 = v47 + ((v43 >> 30) & 0x3FFFC) + 4 + *(v47 + ((v43 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v48 = 0;
      v36 = a5;
      v46 = a9;
    }

    v71 = v42;
    v72 = v48;
    v73 = sub_31D7E8(v41, v40, 1);
    v74 = v49;
    v75 = v56;
    if (v24 < 0)
    {
      v50 = -5;
    }

    else
    {
      v50 = 5;
    }

    sub_35CC(&v67, v24 / 10 + v46 + (((103 * (v50 + v24 % 10)) >> 15) & 1) + ((103 * (v50 + v24 % 10)) >> 10));
    sub_320EC8(*(a1 + 24), v40, v64);
    sub_3914(&v67, v64);
    a7 = v54;
    a8 = v55;
    v37 = v57;
    sub_25F00(v64);
    v35 = sub_F86D6C(&v76, &v71, a15 - a13, v54, v55, *(a1 + 12), &v67, a11, *(a1 + 16));
    sub_3874(&v67);
    result = 0x7FFFFFFFLL;
    if (v35 == 0x7FFFFFFF)
    {
      return result;
    }
  }

  else
  {
    v30 = *(a1 + 16);
    v32 = v26 == v27 && v28 != 0;
    v66[0] = a7;
    v66[1] = v30;
    v67 = a6;
    v68 = v26;
    v69 = v28;
    v70 = v32;
    v71 = a6;
    LODWORD(v72) = v27;
    v73 = 0;
    LOBYTE(v74) = 0;
    sub_F86BE4(v30, &v62);
    v63 = 0;
    v33 = *(a1 + 12);
    if (v24 < 0)
    {
      v34 = -5;
    }

    else
    {
      v34 = 5;
    }

    v58 = 0x7FFFFFFF;
    v59 = 0x7FFFFFFF7FFFFFFFLL;
    v60 = 0x7FFFFFFF;
    v61 = 0x7FFFFFFF7FFFFFFFLL;
    sub_11804F8(&v67, &v71, &v62, v66, a8, v33, v24 / 10 + a9 + (((103 * (v34 + v24 % 10)) >> 15) & 1) + ((103 * (v34 + v24 % 10)) >> 10), a11, v64, 1000000000 - a13, 0, a15, &v58, **(a1 + 16));
    if (!sub_F86BB8(v64))
    {
      return 0x7FFFFFFFLL;
    }

    v35 = v65;
    if (v65 == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    sub_F86FC4(&v76, v64);
    v37 = a3;
    v36 = a5;
  }

  v51 = (v35 + v24);
  if (sub_F75E1C(v36, v37))
  {
    v52 = sub_F75E48(v36, v37);
    v53 = sub_F86C30(&v76, v52, 1, a7, a8);
    result = 0x7FFFFFFFLL;
    if (v53 == 0x7FFFFFFF)
    {
      return result;
    }

    v51 = (v53 + v51);
  }

  *(a4 + 16) = v76;
  *(a4 + 32) = v77;
  return v51;
}

void sub_F89CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_25F00(&a29);
  sub_3874(&a34);
  _Unwind_Resume(a1);
}

void sub_F89E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  v11 = *(v9 - 96);
  if (v11)
  {
    *(v9 - 88) = v11;
    operator delete(v11);
    v12 = *(v9 - 72);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = *(v9 - 72);
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  *(v9 - 64) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_F89EA4(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F89F94(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F89FC8(uint64_t result, void *a2, void *a3)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (((v4 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F8A168(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F8A19C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C((v5 + 103), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 2) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_F8A2A0(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void *sub_F8A300(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

uint64_t sub_F8AC6C(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (*(a1 + 16) - *a1 <= 0x3F7uLL)
  {
    operator new();
  }

  return a1;
}

void sub_F8AD20(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

void sub_F8AD44(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 776) - *(a1 + 768)) >> 2);
    sub_F8B0C4(a1, a2, &v35);
    v20 = v36;
    v21 = *(v35 + 8);
    if (v37 == 1)
    {
      *(v21 + 8 * v36) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 2) + 1;
      if (v26 > 0x1555555555555555)
      {
        sub_1794();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 2);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0xAAAAAAAAAAAAAAALL)
      {
        v28 = 0x1555555555555555;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 4 * ((v22 - v25) >> 2);
      *v32 = *a2;
      *(v32 + 4) = *a3;
      v24 = v32 + 12;
      v33 = (v32 - (v22 - v25));
      memcpy(v33, v25, v22 - v25);
      *(a1 + 768) = v33;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 4) = *a3;
      v24 = v22 + 12;
    }

    *(a1 + 776) = v24;
    v34 = *(a1 + 848);
    if (v19 >= ((*(a1 + 856) - v34) >> 2) || *(v34 + 4 * v19) == -1)
    {
      sub_F8B720(a1 + 824, v19, a3);
    }

    else
    {
      sub_F8B8B0((a1 + 824), v19, a3);
    }

    return;
  }

  v29 = v17 + 8 * v18;
  *(*(a1 + 768) + 12 * *(v29 + 4) + 4) = *a3;
  v30 = *(v29 + 4);
  v31 = *(a1 + 848);
  if (v30 >= (*(a1 + 856) - v31) >> 2 || *(v31 + 4 * v30) == -1)
  {

    sub_F8B720(a1 + 824, v30, a3);
  }

  else
  {

    sub_F8B8B0((a1 + 824), v30, a3);
  }
}

unint64_t sub_F8B0C4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 265 * ((~v4 + (v4 << 21)) ^ ((~v4 + (v4 << 21)) >> 24));
  v6 = 2147483649u * ((21 * (v5 ^ (v5 >> 14))) ^ ((21 * (v5 ^ (v5 >> 14))) >> 28));
  v7 = (a1 + 48 * (((BYTE1(v6) ^ BYTE2(v6)) ^ BYTE3(v6)) & 0xF));
  v8 = v6 >> 7;
  v9 = v7[3];
  while (1)
  {
    v10 = v8 & v9;
    v11 = *(*v7 + v10);
    v12 = ((v11 ^ (0x101010101010101 * (v6 & 0x7F))) - 0x101010101010101) & ~(v11 ^ (0x101010101010101 * (v6 & 0x7F))) & 0x8080808080808080;
    if (v12)
    {
      break;
    }

LABEL_5:
    if ((v11 & (~v11 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_F8B1E0(v7, v6);
      *a3 = v7;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v8 = v3 + v10;
  }

  while (1)
  {
    result = (v10 + (__clz(__rbit64(v12)) >> 3)) & v9;
    if (*(v7[1] + 8 * result) == v4)
    {
      break;
    }

    v12 &= v12 - 1;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_F8B1E0(void *a1, unint64_t a2)
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
      sub_F8B2D8(a1);
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

uint64_t sub_F8B2D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_F8B308();
  }

  return sub_F8B4B0(a1);
}

uint64_t sub_F8B4B0(uint64_t result)
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
      goto LABEL_27;
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
LABEL_27:
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
        v18 = *(*(result + 8) + 8 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            *(v25 + 8 * v16) = *(v25 + 8 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v26 = *(v25 + 8 * i);
            *(v25 + 8 * i) = *(v25 + 8 * v16);
            *(*(result + 8) + 8 * v16) = v26;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v27 = i - (i >> 3);
    v28 = i == 7;
    v29 = 6;
    if (!v28)
    {
      v29 = v27;
    }

    *(result + 40) = v29 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void sub_F8B720(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v24 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v24 - v10);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = v8 - v7;
        v25 = (v8 - v7) >> 2;
        if (v10 < v25)
        {
          goto LABEL_15;
        }
      }

      else if (v24 < v10)
      {
        v8 = v7 + 4 * v24;
        *(a1 + 32) = v8;
        v9 = 4 * v24;
        v25 = (4 * v24) >> 2;
        if (v10 < v25)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v25 = (v8 - v7) >> 2;
        if (v10 < v25)
        {
          goto LABEL_15;
        }
      }

      v10 = v25;
    }

    while (v25 <= v5);
  }

  v26 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v26);
  v11 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v5) = v11;
  *(a1 + 48) = v11 + 1;
  if (v11)
  {
    v12 = *a1;
    do
    {
      v13 = v11 - 1;
      v14 = (v11 - 1) >> 2;
      v15 = (v12 + 8 * v14);
      v16 = (v12 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 < v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v12 = *a1;
      v20 = *(*a1 + 8 * v11);
      v21 = *(a1 + 24);
      v22 = *(*a1 + 8 * v14);
      v23 = *(v21 + 4 * v20);
      *(v21 + 4 * v20) = *(v21 + 4 * v22);
      *(v21 + 4 * v22) = v23;
      v11 = v13 >> 2;
    }

    while (v13 > 3);
  }
}

double sub_F8B8B0(uint64_t *a1, unsigned int a2, int *a3)
{
  v3 = *(a1[3] + 4 * a2);
  v4 = *a1 + 8 * v3;
  v5 = *(v4 + 4);
  v6 = *a3;
  *(v4 + 4) = *a3;
  if (v6 >= v5)
  {
    v18 = (4 * v3) | 1;
    v19 = *(a1 + 12);
    if (v18 < v19)
    {
      v20 = 4 * v3;
      do
      {
        v21 = v20 + 5;
        if (v21 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v21 <= v18)
        {
          break;
        }

        v23 = *a1;
        v24 = v3;
        v25 = *(*a1 + 8 * v3 + 4);
        v26 = (*a1 + 8 * v18 + 4);
        LODWORD(v3) = -1;
        v27 = v25;
        do
        {
          v29 = *v26;
          v26 += 2;
          v28 = v29;
          if (v29 < v27)
          {
            v27 = v28;
            LODWORD(v3) = v18;
          }

          ++v18;
        }

        while (v18 < v22);
        if (v3 >= v19)
        {
          break;
        }

        v30 = 8 * v3;
        v31 = (v23 + v30);
        v32 = 8 * v24;
        result = *(v23 + v30);
        *v31 = *(v23 + v32);
        v31[1] = v25;
        *(v23 + v32) = result;
        v34 = *(*a1 + v30);
        v35 = a1[3];
        v36 = *(*a1 + v32);
        v37 = *(v35 + 4 * v34);
        *(v35 + 4 * v34) = *(v35 + 4 * v36);
        *(v35 + 4 * v36) = v37;
        v20 = 4 * v3;
        v18 = (4 * v3) | 1;
        v19 = *(a1 + 12);
      }

      while (v18 < v19);
    }
  }

  else if (v3)
  {
    v7 = *a1;
    do
    {
      v8 = v3 - 1;
      v9 = (v3 - 1) >> 2;
      v10 = (v7 + 8 * v9);
      v11 = (v7 + 8 * v3);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 < v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v7 = *a1;
      v3 = *(*a1 + 8 * v3);
      v15 = a1[3];
      v16 = *(*a1 + 8 * v9);
      v17 = *(v15 + 4 * v3);
      *(v15 + 4 * v3) = *(v15 + 4 * v16);
      *(v15 + 4 * v16) = v17;
      LODWORD(v3) = v8 >> 2;
    }

    while (v8 >= 4);
  }

  return result;
}

BOOL sub_F8BA10(unsigned __int8 **a1, unsigned int a2, int *a3, unsigned int *a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 64);
    v37[2] = *(v15 + 48);
    v37[3] = v16;
    v37[4] = *(v15 + 80);
    v38 = *(v15 + 96);
    v17 = *(v15 + 32);
    v37[0] = *(v15 + 16);
    v37[1] = v17;
    v18 = *(sub_F75E48(a1[1], v13) + 104);
    v19 = sub_F75E48(a1[1], v13);
    v20 = *(v19 + 160);
    v35[2] = *(v19 + 144);
    v35[3] = v20;
    v35[4] = *(v19 + 176);
    v36 = *(v19 + 192);
    v21 = *(v19 + 128);
    v35[0] = *(v19 + 112);
    v35[1] = v21;
    v34 = sub_394BD0();
    v22 = sub_F862F4(&v34, v14, v37, v18, v35, a1[3]);
    a4[14] = v34;
    goto LABEL_21;
  }

  v23 = *a1[4];
  v24 = *a3;
  if (*a3 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  v26 = v25 + *a3 % 10;
  if (**a1)
  {
    v27 = v24 / -10 + v23 + (((-103 * v26) >> 15) & 1) + ((-103 * v26) >> 10);
    v24 = (*a1[5] - v24) & ~((*a1[5] - v24) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v28 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v29 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v27 = *a3 / 10 + v23 + (((103 * v26) >> 15) & 1) + ((103 * v26) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v29 = 0;
LABEL_20:
  v22 = sub_F87C78(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v27, 0, v24, 0, v28, SHIDWORD(v28), v29);
LABEL_21:
  a3[1] = v22;
  return *a4 == -1 || a4[15] == -1 || a4[16] == -1 || v22 == 0x7FFFFFFF;
}

uint64_t sub_F8BCBC(uint64_t a1, unsigned int *a2, int *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 776) - *(a1 + 768)) >> 2);
    sub_F8B0C4(a1, a2, &v43);
    v20 = v44;
    v21 = *(v43 + 8);
    if (v45 == 1)
    {
      *(v21 + 8 * v44) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 2) + 1;
      if (v26 > 0x1555555555555555)
      {
        sub_1794();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 2);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0xAAAAAAAAAAAAAAALL)
      {
        v28 = 0x1555555555555555;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v38 = 4 * ((v22 - v25) >> 2);
      *v38 = *a2;
      *(v38 + 4) = *a3;
      v24 = v38 + 12;
      v39 = (v38 - (v22 - v25));
      memcpy(v39, v25, v22 - v25);
      *(a1 + 768) = v39;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 4) = *a3;
      v24 = v22 + 12;
    }

    *(a1 + 776) = v24;
    v40 = *(a1 + 848);
    if (v19 < ((*(a1 + 856) - v40) >> 2) && *(v40 + 4 * v19) != -1)
    {
      v37 = (a1 + 824);
      LODWORD(v35) = v19;
      goto LABEL_31;
    }

    v41 = a1 + 824;
    LODWORD(v35) = v19;
    goto LABEL_33;
  }

  v29 = v17 + 8 * v18;
  v31 = *(v29 + 4);
  v30 = (v29 + 4);
  v32 = *(a1 + 768) + 12 * v31;
  v34 = *(v32 + 4);
  v33 = (v32 + 4);
  if (*a3 < v34)
  {
    ++*(a1 + 816);
    *v33 = *a3;
    v35 = *v30;
    v36 = *(a1 + 848);
    if (v35 < (*(a1 + 856) - v36) >> 2 && *(v36 + 4 * v35) != -1)
    {
      v37 = (a1 + 824);
LABEL_31:
      sub_F8B8B0(v37, v35, a3);
      return 1;
    }

    v41 = a1 + 824;
LABEL_33:
    sub_F8B720(v41, v35, a3);
    return 1;
  }

  return 0;
}

void *sub_F8C00C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C((v5 + 103), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 2) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_F8C110(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

BOOL sub_F8C170(unsigned __int8 **a1, unsigned int a2, int *a3, unsigned int *a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 64);
    v37[2] = *(v15 + 48);
    v37[3] = v16;
    v37[4] = *(v15 + 80);
    v38 = *(v15 + 96);
    v17 = *(v15 + 32);
    v37[0] = *(v15 + 16);
    v37[1] = v17;
    v18 = *(sub_F75E48(a1[1], v13) + 104);
    v19 = sub_F75E48(a1[1], v13);
    v20 = *(v19 + 160);
    v35[2] = *(v19 + 144);
    v35[3] = v20;
    v35[4] = *(v19 + 176);
    v36 = *(v19 + 192);
    v21 = *(v19 + 128);
    v35[0] = *(v19 + 112);
    v35[1] = v21;
    v34 = sub_394BD0();
    v22 = sub_F862F4(&v34, v14, v37, v18, v35, a1[3]);
    a4[14] = v34;
    goto LABEL_21;
  }

  v23 = *a1[4];
  v24 = *a3;
  if (*a3 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  v26 = v25 + *a3 % 10;
  if (**a1)
  {
    v27 = v24 / -10 + v23 + (((-103 * v26) >> 15) & 1) + ((-103 * v26) >> 10);
    v24 = (*a1[5] - v24) & ~((*a1[5] - v24) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v28 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v29 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v27 = *a3 / 10 + v23 + (((103 * v26) >> 15) & 1) + ((103 * v26) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v29 = 0;
LABEL_20:
  v22 = sub_F88960(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v27, 0, v24, 0, v28, SHIDWORD(v28), v29);
LABEL_21:
  a3[1] = v22;
  return *a4 == -1 || a4[15] == -1 || a4[16] == -1 || v22 == 0x7FFFFFFF;
}

void sub_F8C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  v11 = *(v9 - 96);
  if (v11)
  {
    *(v9 - 88) = v11;
    operator delete(v11);
    v12 = *(v9 - 72);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = *(v9 - 72);
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  *(v9 - 64) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_F8C5B4(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F8C6A4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F8C6D8(uint64_t result, void *a2, void *a3)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (((v4 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F8C878(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F8C8AC(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C((v5 + 103), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 2) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_F8C9B0(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

BOOL sub_F8CA10(unsigned __int8 **a1, unsigned int a2, int *a3, uint64_t a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 48);
    v17 = *(v15 + 80);
    v39[3] = *(v15 + 64);
    v39[4] = v17;
    v40 = *(v15 + 96);
    v18 = *(v15 + 32);
    v39[0] = *(v15 + 16);
    v39[1] = v18;
    v39[2] = v16;
    v19 = *(sub_F75E48(a1[1], v13) + 104);
    v20 = sub_F75E48(a1[1], v13);
    v21 = *(v20 + 160);
    v37[2] = *(v20 + 144);
    v37[3] = v21;
    v37[4] = *(v20 + 176);
    v38 = *(v20 + 192);
    v22 = *(v20 + 128);
    v37[0] = *(v20 + 112);
    v37[1] = v22;
    sub_F86BE4(*(v9 + 16), &v35);
    v23 = sub_F86F7C(&v35, v14, v39, v19, v37, a1[3], *(v9 + 16));
    *(a4 + 16) = v35;
    *(a4 + 32) = v36;
    goto LABEL_21;
  }

  v24 = *a1[4];
  v25 = *a3;
  if (*a3 < 0)
  {
    v26 = -5;
  }

  else
  {
    v26 = 5;
  }

  v27 = v26 + *a3 % 10;
  if (**a1)
  {
    v28 = v25 / -10 + v24 + (((-103 * v27) >> 15) & 1) + ((-103 * v27) >> 10);
    v25 = (*a1[5] - v25) & ~((*a1[5] - v25) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v30 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v28 = *a3 / 10 + v24 + (((103 * v27) >> 15) & 1) + ((103 * v27) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v29 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v30 = 0;
LABEL_20:
  v23 = sub_F8987C(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v28, 0, v25, 0, v29, SHIDWORD(v29), v30);
LABEL_21:
  a3[1] = v23;
  return *a4 == -1 || *(a4 + 36) == -1 || *(a4 + 40) == -1 || v23 == 0x7FFFFFFF;
}

void sub_F8CCC4()
{
  byte_27C009F = 3;
  LODWORD(qword_27C0088) = 5136193;
  byte_27C00B7 = 3;
  LODWORD(qword_27C00A0) = 5136194;
  byte_27C00CF = 3;
  LODWORD(qword_27C00B8) = 5136195;
  byte_27C00E7 = 15;
  strcpy(&qword_27C00D0, "vehicle_mass_kg");
  byte_27C00FF = 21;
  strcpy(&xmmword_27C00E8, "vehicle_cargo_mass_kg");
  byte_27C0117 = 19;
  strcpy(&qword_27C0100, "vehicle_aux_power_w");
  byte_27C012F = 15;
  strcpy(&qword_27C0118, "dcdc_efficiency");
  strcpy(&qword_27C0130, "drive_train_efficiency");
  HIBYTE(word_27C0146) = 22;
  operator new();
}

void sub_F8CEA0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0146) < 0)
  {
    sub_21E5D2C();
  }

  sub_21E5D38();
  _Unwind_Resume(a1);
}

void sub_F8D134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8D268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_F8D290(uint64_t a1, unint64_t a2, int *a3, unint64_t a4, int *a5)
{
  v6 = HIDWORD(a2);
  v7 = a2 << 16;
  v8 = ((a2 << 16) & 0xFFFF00000000 | HIDWORD(a2) | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v9 = *a3;
  v10 = HIDWORD(a4);
  v11 = *a5;
  v12 = (((a4 << 16) & 0xFFFF00000000 | (((a4 >> 1) & 1) << 48) | HIDWORD(a4)) ^ 0x1000000000000) >> 48;
  if (WORD1(a2) == WORD1(a4) && HIWORD(v8) == v12 && v6 == v10 && v11 == v9)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (v6 != v10 || WORD2(v7) != WORD1(a4) || ((a2 << 47) & 0x1000000000000) >> 48 != v12 || v11 != 1000000000 - v9)
    {
      sub_2B7A20(*(a1 + 64), v8, v16);
      sub_31A76C(v16);
      sub_31AA0C(v16);
      operator new();
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 20);
  }

  return v14 | (v13 << 32);
}

void sub_F8DBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_21DB4B4(&a33);
  operator delete(v34);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v33);
  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void sub_F8DC28(uint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, unint64_t a4@<X3>, int *a5@<X4>, __n128 *a6@<X8>)
{
  v8 = sub_F8D290(a1, a2, a3, a4, a5);
  *&v17 = v8;
  *(&v17 + 1) = v9;
  if (v8 != -1 && (v8 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v9)
    {
      v13 = sub_456D70();
LABEL_16:
      v16.n128_u64[0] = v13;
      v16.n128_u64[1] = v14;
      sub_446CD4(a6, &v17, &v16);
      return;
    }

    v10 = v9 / 100000.0 * *(a1 + 40);
    v11 = v10 * sub_4495BC(*(*(a1 + 56) + 8));
    if (v11 >= 0.0)
    {
      if (v11 < 4.50359963e15)
      {
        v12 = (v11 + v11) + 1;
        goto LABEL_14;
      }
    }

    else if (v11 > -4.50359963e15)
    {
      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_14:
      v11 = (v12 >> 1);
    }

    v15 = v11;
    v13 = sub_456D5C(&v15);
    goto LABEL_16;
  }

  sub_446C94(a6);
}

uint64_t sub_F8DD60(void *a1)
{
  v10 = 4;
  strcpy(__p, "cost");
  v2 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 4;
  strcpy(__p, "time");
  v3 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 6;
  strcpy(__p, "length");
  v4 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  v6 = (v2 | v3 | v4) < 0;
  v7 = v2 | (v3 << 32);
  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void sub_F8DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8DF54(_Unwind_Exception *a1)
{
  v5 = *(v1 + v3);
  if (v5)
  {
    *(v1 + 4280) = v5;
    operator delete(v5);
  }

  sub_21DB4B4(v1 + v2);
  sub_3E3EF8((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_F8DF80(_Unwind_Exception *a1)
{
  v4 = v1[531];
  if (v4)
  {
    v1[532] = v4;
    operator delete(v4);
    v5 = *(v1 + v2);
    if (!v5)
    {
LABEL_3:
      sub_3E3EF8(v1 + 1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[529] = v5;
  operator delete(v5);
  sub_3E3EF8(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_F8DFCC(BOOL *a1, void *a2)
{
  strcpy(__p, "obey_turn_restrictions");
  v6 = 22;
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_F8E0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8E0E0(uint64_t a1, unsigned __int16 a2, int **a3, int **a4, int a5, uint64_t a6, int a7, int a8, char a9, char a10, void *a11)
{
  v12 = a7;
  if (a7)
  {
    v14 = a3;
  }

  else
  {
    v14 = a4;
  }

  if (a7)
  {
    v15 = a2 >> 2;
  }

  else
  {
    v15 = a5;
  }

  if (a7)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v76 = a2;
  v77 = v16;
  if (a7)
  {
    v17 = a5;
  }

  else
  {
    v17 = a2 >> 2;
  }

  if (*(a1 + 4216) != 1 || (v18 = sub_2BBF84(*(a1 + 4208), v14[4] & 0xFFFFFFFFFFFFFFLL, 0), (v19 & 1) == 0))
  {
    v18 = sub_30F984(a1 + 4208, v14);
  }

  v20 = v18;
  if (*(a1 + 4216) != 1 || (v21 = sub_2BBF84(*(a1 + 4208), v77[4] & 0xFFFFFFFFFFFFFFLL, 0), (v22 & 1) == 0))
  {
    v21 = sub_30F984(a1 + 4208, v77);
  }

  v23 = v21;
  v74 = v15;
  if (v20 == v21)
  {
    v24 = a11;
    v25 = 0;
    v26 = 0;
    v27 = v76;
    if (v76)
    {
      goto LABEL_21;
    }

LABEL_41:
    v30 = 0;
    goto LABEL_42;
  }

  v31 = v21 & v20;
  if ((v21 & v20) == v21)
  {
LABEL_26:
    v26 = 0;
    if (v31 == v20)
    {
      goto LABEL_40;
    }

LABEL_35:
    for (i = *(a1 + 4224); i != *(a1 + 4232); i += 4)
    {
      if ((i[1] & v20) == *i && (i[3] & v21) == i[2])
      {
        goto LABEL_40;
      }
    }

    v49 = *(a1 + 4248);
    v50 = *(a1 + 4256);
    if (v49 != v50)
    {
      while ((*(v49 + 8) & v20) != *v49 || (*(v49 + 24) & v21) != *(v49 + 16))
      {
        v49 += 40;
        if (v49 == v50)
        {
          v24 = a11;
          v25 = 1;
          v27 = v76;
          if (!v76)
          {
            goto LABEL_41;
          }

          goto LABEL_21;
        }
      }
    }

    v24 = a11;
    v27 = v76;
    if (v49 == v50)
    {
      v25 = 1;
      if (!v76)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *(v49 + 32) != 0;
      if (!v76)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_21;
  }

  for (j = *(a1 + 4224); j != *(a1 + 4232); j += 4)
  {
    if ((j[3] & v20) == j[2] && (j[1] & v21) == *j)
    {
      goto LABEL_26;
    }
  }

  v26 = 1;
  if (v31 != v20)
  {
    goto LABEL_35;
  }

LABEL_40:
  v24 = a11;
  v25 = 0;
  v27 = v76;
  if (!v76)
  {
    goto LABEL_41;
  }

LABEL_21:
  v72 = v26;
  if (*(a1 + 4216) != 1 || (v28 = sub_2BBF84(*(a1 + 4208), a4[4] & 0xFFFFFFFFFFFFFFLL, 0), (v29 & 1) == 0))
  {
    v28 = sub_30F984(a1 + 4208, a4);
  }

  v30 = v28 != 0;
  v27 = v76;
  v26 = v72;
LABEL_42:
  v80 = *v14;
  v82 = *(v14 + 1);
  *&v84[8] = *v77;
  if (v12)
  {
    v34 = v27;
  }

  else
  {
    v34 = v30;
  }

  if (!v12)
  {
    v30 = v27;
  }

  *v84 = v14[4];
  *&v84[24] = *(v77 + 1);
  *&v84[40] = v77[4];
  v35 = v74 | (v17 << 16);
  if (v30)
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  if (a8)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  if (v25 | v26)
  {
    v38 = 8;
  }

  else
  {
    v38 = 0;
  }

  v39 = (v38 | v37) & 0xFE | v34 | v36;
  v40 = v24[1];
  v41 = v24[2];
  if (v40 >= v41)
  {
    v75 = v12;
    v43 = *v24;
    v44 = 0x2E8BA2E8BA2E8BA3 * ((v40 - *v24) >> 3);
    v45 = v44 + 1;
    if ((v44 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      goto LABEL_112;
    }

    v46 = v24;
    v47 = 0x2E8BA2E8BA2E8BA3 * ((v41 - v43) >> 3);
    if (2 * v47 > v45)
    {
      v45 = 2 * v47;
    }

    if (v47 >= 0x1745D1745D1745DLL)
    {
      v48 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v48 = v45;
    }

    if (v48)
    {
      if (v48 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      goto LABEL_113;
    }

    v51 = 88 * v44;
    *(v51 + 32) = *v84;
    *(v51 + 48) = *&v84[16];
    *(v51 + 64) = *&v84[32];
    *v51 = v80;
    *(v51 + 16) = v82;
    *(v51 + 80) = v35;
    *(v51 + 84) = v39;
    v42 = 88 * v44 + 88;
    v52 = (v51 - (v40 - v43));
    memcpy(v52, v43, v40 - v43);
    *v46 = v52;
    v46[1] = v42;
    v46[2] = 0;
    v24 = v46;
    if (v43)
    {
      operator delete(v43);
    }

    v12 = v75;
  }

  else
  {
    *(v40 + 32) = *v84;
    *(v40 + 48) = *&v84[16];
    *(v40 + 64) = *&v84[32];
    *v40 = v80;
    *(v40 + 16) = v82;
    *(v40 + 80) = v35;
    v42 = v40 + 88;
    *(v40 + 84) = v39;
  }

  v24[1] = v42;
  if (*(a1 + 4216) != 1 || (v53 = sub_2BBF84(*(a1 + 4208), v14[4] & 0xFFFFFFFFFFFFFFLL, 0), (v54 & 1) == 0))
  {
    v53 = sub_30F984(a1 + 4208, v14);
  }

  v55 = v53;
  if (*(a1 + 4216) != 1 || (v56 = sub_2BBF84(*(a1 + 4208), v77[4] & 0xFFFFFFFFFFFFFFLL, 0), (v57 & 1) == 0))
  {
    v56 = sub_30F984(a1 + 4208, v77);
  }

  if (v20 != v23 && (v12 && v56 || (v12 & 1) == 0 && v55) && a10)
  {
    v58 = v24[1];
    v59 = v24[2];
    v85 = *(v58 - 40);
    v86 = *(v58 - 24);
    v87 = *(v58 - 8);
    v81 = *(v58 - 88);
    v83 = *(v58 - 72);
    v78 = *(v58 - 3);
    v79 = *(v58 - 1);
    if (v12)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    v61 = *(v58 - 4) ^ v60;
    if (v58 < v59)
    {
      v62 = *(v58 - 40);
      *(v58 + 32) = *(v58 - 56);
      *(v58 + 48) = v62;
      *(v58 + 64) = *(v58 - 24);
      *(v58 + 80) = *(v58 - 8);
      v63 = *(v58 - 72);
      *v58 = *(v58 - 88);
      *(v58 + 16) = v63;
      *(v58 + 84) = v61;
      *(v58 + 85) = *(v58 - 3);
      v64 = v58 + 88;
      *(v58 + 87) = *(v58 - 1);
LABEL_108:
      v24[1] = v64;
      return;
    }

    v65 = *v24;
    v66 = 0x2E8BA2E8BA2E8BA3 * ((v58 - *v24) >> 3);
    v67 = v66 + 1;
    if ((v66 + 1) <= 0x2E8BA2E8BA2E8BALL)
    {
      v68 = 0x2E8BA2E8BA2E8BA3 * ((v59 - v65) >> 3);
      if (2 * v68 > v67)
      {
        v67 = 2 * v68;
      }

      if (v68 >= 0x1745D1745D1745DLL)
      {
        v69 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v69 = v67;
      }

      if (!v69)
      {
        v70 = 8 * ((v58 - *v24) >> 3);
        *(v70 + 32) = *(v58 - 56);
        *(v70 + 48) = v85;
        *(v70 + 64) = v86;
        *(v70 + 80) = v87;
        *v70 = v81;
        *(v70 + 16) = v83;
        *(v70 + 84) = v61;
        *(v70 + 85) = v78;
        v64 = 88 * v66 + 88;
        v71 = (v70 - (v58 - v65));
        *(v70 + 87) = v79;
        memcpy(v71, v65, v58 - v65);
        *v24 = v71;
        v24[1] = v64;
        v24[2] = 0;
        if (v65)
        {
          operator delete(v65);
        }

        goto LABEL_108;
      }

      if (v69 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

LABEL_113:
      sub_1808();
    }

LABEL_112:
    sub_1794();
  }
}

void sub_F8E7AC(BOOL *a1, uint64_t a2)
{
  v6[23] = 19;
  strcpy(v6, "CyclingRoutingGraph");
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_3AEC94(a2, v6, __p);
  sub_F8DFCC(a1, v3);
}

void sub_F8EB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5BF68((v32 - 80));
  v34 = v30[534];
  if (v34)
  {
    v30[535] = v34;
    operator delete(v34);
  }

  sub_21DB4B4(v30 + v31);
  sub_3E3EF8(v30 + 1);
  _Unwind_Resume(a1);
}

void sub_F8EC30()
{
  v2 = v0[531];
  if (v2)
  {
    v0[532] = v2;
    operator delete(v2);
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v0[529] = v3;
    operator delete(v3);
  }

  JUMPOUT(0xF8EC20);
}

void sub_F8EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1A104(va);
  if (*(v11 - 57) < 0)
  {
    operator delete(*(v11 - 80));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xF8EC28);
}

char *sub_F8EC88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v6;
  a3[1] = v10;
  a3[2] = result;
  a3[3] = v12;
  a3[4] = a2;
  return result;
}

void sub_F8ED58(uint64_t a1, unint64_t a2, int a3, void *a4, int a5)
{
  v83 = a2;
  v82 = a5;
  a4[1] = *a4;
  v9 = *(a1 + 4296);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  v12 = (HIDWORD(a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v13 = sub_2B51D8(v9, v11);
  if (*(v9 + 7772) == 1)
  {
    v14 = sub_30C50C(v9 + 3896, v10, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4 + *(v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v80[0] = v13;
  v80[1] = v17;
  v80[2] = sub_31D7E8(v9, v11, 1);
  v80[3] = v18;
  v81 = v12;
  v19 = (v13 - *v13);
  v20 = *v19;
  v21 = a3;
  if (HIWORD(v12))
  {
    if (v20 < 0x47)
    {
      if (v20 <= 0x38)
      {
        return;
      }
    }

    else if (v19[35] && (*(v13 + v19[35]) & 2) != 0)
    {
      goto LABEL_26;
    }

    v24 = v19[28];
    if (!v24)
    {
      return;
    }

    v23 = *(v13 + v24);
    if ((v23 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    if ((v23 & 7) != 4 && (v23 & 0x23) != 0x20)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v20 < 0x47)
  {
    if (v20 <= 0x38)
    {
      return;
    }
  }

  else if (v19[35] && (*(v13 + v19[35]) & 1) != 0)
  {
    goto LABEL_26;
  }

  v22 = v19[28];
  if (!v22)
  {
    return;
  }

  v23 = *(v13 + v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v79 = a3 == 0;
  v25 = *(a1 + 4296);
  if (a3)
  {
    v26 = sub_311544(v80);
  }

  else
  {
    v26 = sub_3116D0(v80);
  }

  v27 = sub_31BA24(v25, v26, (a1 + 4272), a3 != 0, 1, 1);
  v28 = *(a1 + 4280);
  v29 = *(a1 + 4272);
  v30 = v28 - v29;
  v78 = v28 - v29 == 80;
  if (v28 - v29 != 120)
  {
    goto LABEL_66;
  }

  if (v29 != v28)
  {
    v31 = v29;
    while (1)
    {
      v32 = (*v31 - **v31);
      if (*v32 < 0x9Bu)
      {
        break;
      }

      v33 = v32[77];
      if (!v33 || ((*(*v31 + v33) ^ (*(*v31 + v33) >> 1) & 1) & 1) == 0)
      {
        break;
      }

      v31 += 5;
      if (v31 == v28)
      {
        goto LABEL_36;
      }
    }

LABEL_66:
    v34 = 0;
    v77 = 0;
    if (v29 != v28)
    {
      goto LABEL_67;
    }

LABEL_37:
    v35 = *(a1 + 1) & 1;
    v76 = v35;
    if ((a2 & 0xFFFC) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_38;
  }

LABEL_36:
  v34 = 1;
  v77 = 1;
  if (v29 == v28)
  {
    goto LABEL_37;
  }

LABEL_67:
  v47 = 0;
  do
  {
    v48 = *v29;
    v49 = (*v29 - **v29);
    v50 = *v49;
    if (*(v29 + 38))
    {
      if (v50 >= 0x47)
      {
        v51 = v49[35];
        if (v51)
        {
          v52 = *(v48 + v51);
          if (v52 & 2) != 0 || (v52)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else if (v50 >= 0x47)
    {
      v53 = v49[35];
      if (v53)
      {
        v54 = *(v48 + v53);
        if ((v54 & 1) != 0 || (v54 & 2) != 0)
        {
LABEL_68:
          ++v47;
        }
      }
    }

    v29 += 5;
  }

  while (v29 != v28);
  v55 = 3;
  if (v47 < 3)
  {
    v55 = v47;
  }

  v35 = *(a1 + 1) & (v55 != 2);
  v76 = v35;
  if ((a2 & 0xFFFC) == 0)
  {
LABEL_38:
    v62 = v34;
    sub_30A454(a1 + 8, v12, v21, a5 == 0, &v72);
    v36 = (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3));
    if (!(-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3)))
    {
LABEL_92:
      if (a5 != 1 && (*a1 & 1) != 0)
      {
        *&v64 = a1;
        *(&v64 + 1) = &v76;
        v65 = v80;
        v66 = &v83;
        v67 = &v79;
        v68 = &v78;
        v69 = &v77;
        v70 = &v82;
        v71 = a4;
        sub_F8F394(&v72, &v64);
      }

      return;
    }

    v37 = 0;
    v38 = 32;
    while (1)
    {
      v39 = *(a1 + 4272);
      v41 = (v39 + v38 - 32);
      v40 = *v41;
      v42 = (v40 - *v40);
      v43 = *v42;
      if (*(v39 + v38 + 6))
      {
        if (v43 < 0x47)
        {
          if (v43 <= 0x38)
          {
            goto LABEL_41;
          }
        }

        else if (v42[35] && (*(v40 + v42[35]) & 2) != 0)
        {
          goto LABEL_60;
        }

        v44 = v42[28];
        if (!v44)
        {
          goto LABEL_41;
        }

        v45 = *(v40 + v44);
        if ((v45 & 2) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v43 < 0x47)
        {
          if (v43 <= 0x38)
          {
            goto LABEL_41;
          }
        }

        else if (v42[35] && (*(v40 + v42[35]) & 1) != 0)
        {
LABEL_60:
          if (v81 != *(v39 + v38) || (WORD2(v81) != *(v39 + v38 + 4)) | v35 & 1)
          {
            if (a5 == 1 || (*a1 & 1) == 0 || (v64 = v72, v65 = v73, v84 = v74, v85 = v75, v86[0] = v37, (sub_F91960(&v64, &v84, v86) & 1) == 0))
            {
              sub_F8E0E0(a1, a2, v80, v41, 0, 0, v21 == 0, v30 == 80, v62, a5 == 0, a4);
            }
          }

          goto LABEL_41;
        }

        v46 = v42[28];
        if (!v46)
        {
          goto LABEL_41;
        }

        v45 = *(v40 + v46);
        if (v45)
        {
          goto LABEL_60;
        }
      }

      if ((v45 & 7) == 4 || (v45 & 0x23) == 0x20)
      {
        goto LABEL_60;
      }

LABEL_41:
      ++v37;
      v38 += 40;
      if (v36 == v37)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_84:
  v56 = sub_30A630(a1 + 8, v12, a2 >> 2, v21, a5 == 0);
  if ((((~v56 & 0xFF0000) != 0) & v27) == 1)
  {
    v57 = *(a1 + 4272);
    if (v57 != *(a1 + 4280))
    {
      if ((v35 & 1) != 0 || ((v58 = v57 + 40 * BYTE2(v56), v59 = *(v58 + 36), v60 = *(v58 + 32), v59 == WORD2(v81)) ? (v61 = v60 == v81) : (v61 = 0), !v61))
      {
        sub_F8E0E0(a1, a2, v80, (v57 + 40 * BYTE2(v56)), v56, (v56 >> 25) & 1, v21 == 0, v30 == 80, v34, a5 == 0, a4);
      }
    }
  }
}

void sub_F8F394(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v9;
  v22 = *(a2 + 64);
  v10 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v10;
  v12 = v4 == v6 && v3 == v8;
  if (!v12 || v7 != v5)
  {
    if (v4)
    {
      if (!v12)
      {
        for (i = 4 * v5; ; i += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + i) | (*(*v4 + i + 2) << 16) | (*(*v4 + i + 3) << 24);
          sub_F91BA4(v21, v2);
        }
      }

      v14 = v7 - v5;
      v15 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + v15) | (*(*v4 + v15 + 2) << 16) | (*(*v4 + v15 + 3) << 24);
        sub_F91BA4(v21, v2);
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = v3 + 4;
      if (!v12)
      {
        for (j = 4 * v5; ; j += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (j & 0x3FFFFFFFCLL)) | (*(v16 + (j & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (j & 0x3FFFFFFFCLL) + 3) << 24);
          sub_F91BA4(v21, v2);
        }
      }

      v17 = v7 - v5;
      v18 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (v18 & 0x3FFFFFFFCLL)) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 3) << 24);
        sub_F91BA4(v21, v2);
        v18 += 4;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_F8F5EC(_Unwind_Exception *a1)
{
  v5 = *(v1 + v3);
  if (v5)
  {
    *(v1 + 4280) = v5;
    operator delete(v5);
  }

  sub_21DB4B4(v1 + v2);
  sub_3E3EF8((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_F8F618(_Unwind_Exception *a1)
{
  v4 = v1[531];
  if (v4)
  {
    v1[532] = v4;
    operator delete(v4);
    v5 = *(v1 + v2);
    if (!v5)
    {
LABEL_3:
      sub_3E3EF8(v1 + 1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[529] = v5;
  operator delete(v5);
  sub_3E3EF8(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_F8F664(BOOL *a1, void *a2)
{
  strcpy(__p, "obey_turn_restrictions");
  v6 = 22;
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_F8F758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8F778(uint64_t a1, unsigned __int16 a2, int **a3, int **a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, char a10, void **a11)
{
  v14 = a2;
  if (a7)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  v17 = a2 >> 2;
  if (a7)
  {
    v18 = a2 >> 2;
  }

  else
  {
    v18 = a5;
  }

  if (a7)
  {
    v19 = a4;
  }

  else
  {
    v19 = a3;
  }

  if (a7)
  {
    v17 = a5;
  }

  v81 = v17;
  v82 = v18;
  if (*(a1 + 4216) != 1 || (v20 = sub_2BC10C(*(a1 + 4208), v16[4] & 0xFFFFFFFFFFFFFFLL, 0), (v21 & 1) == 0))
  {
    v20 = sub_30F8F8(a1 + 4208, v16);
  }

  v22 = v20;
  if (*(a1 + 4216) != 1 || (v23 = sub_2BC10C(*(a1 + 4208), v19[4] & 0xFFFFFFFFFFFFFFLL, 0), (v24 & 1) == 0))
  {
    v23 = sub_30F8F8(a1 + 4208, v19);
  }

  v25 = v23;
  v86 = v16;
  v85 = a6;
  if (v22 == v23)
  {
    v26 = v19;
    v79 = 0;
    v80 = 0;
    v27 = a9;
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_40:
    v31 = 0;
    v30 = a11;
    goto LABEL_41;
  }

  v32 = v23 & v22;
  if ((v23 & v22) == v23)
  {
LABEL_25:
    v80 = 0;
    if (v32 == v22)
    {
      goto LABEL_39;
    }

LABEL_34:
    for (i = *(a1 + 4224); i != *(a1 + 4232); i += 4)
    {
      if ((i[1] & v22) == *i && (i[3] & v23) == i[2])
      {
        goto LABEL_39;
      }
    }

    v55 = *(a1 + 4248);
    v56 = *(a1 + 4256);
    if (v55 != v56)
    {
      while ((*(v55 + 8) & v22) != *v55 || (*(v55 + 24) & v23) != *(v55 + 16))
      {
        v55 += 40;
        if (v55 == v56)
        {
          v26 = v19;
          goto LABEL_110;
        }
      }
    }

    v26 = v19;
    if (v55 == v56)
    {
LABEL_110:
      v79 = 64;
      v27 = a9;
      if (!v14)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v79 = (*(v55 + 32) != 0) << 6;
      v27 = a9;
      if (!v14)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_20;
  }

  for (j = *(a1 + 4224); j != *(a1 + 4232); j += 4)
  {
    if ((j[3] & v22) == j[2] && (j[1] & v23) == *j)
    {
      goto LABEL_25;
    }
  }

  v80 = 1;
  if (v32 != v22)
  {
    goto LABEL_34;
  }

LABEL_39:
  v26 = v19;
  v79 = 0;
  v27 = a9;
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (*(a1 + 4216) != 1 || (v28 = sub_2BC10C(*(a1 + 4208), a4[4] & 0xFFFFFFFFFFFFFFLL, 0), (v29 & 1) == 0))
  {
    v28 = sub_30F8F8(a1 + 4208, a4);
  }

  v30 = a11;
  v31 = v28 != 0;
LABEL_41:
  v35 = a7 == 0;
  v36 = a7;
  if (a7)
  {
    v37 = v14;
  }

  else
  {
    v37 = v31;
  }

  if (v35)
  {
    v38 = v14;
  }

  else
  {
    v38 = v31;
  }

  v78 = v36;
  v39 = sub_41DAF8(v86, v26, (a1 + 4272), a1 + 4208, v36 ^ 1u, 0);
  v88 = *v86;
  v90 = *(v86 + 1);
  *&v92[8] = *v26;
  *v92 = v86[4];
  *&v92[24] = *(v26 + 16);
  v40 = v82 | (v81 << 16);
  v83 = v26;
  *&v92[40] = *(v26 + 32);
  if (v38)
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  if (a8)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v27)
  {
    v43 = 8;
  }

  else
  {
    v43 = 0;
  }

  if (v85)
  {
    v44 = 16;
  }

  else
  {
    v44 = 0;
  }

  if (v80)
  {
    v45 = 32;
  }

  else
  {
    v45 = 0;
  }

  v46 = v42 | v44 | v43 | v79 | v45 | v37 | v41;
  v47 = v30[1];
  v48 = v30[2];
  if (v47 >= v48)
  {
    v50 = *v30;
    v51 = 0xAAAAAAAAAAAAAAABLL * ((v47 - *v30) >> 5);
    v52 = v51 + 1;
    if (v51 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_116;
    }

    v53 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v50) >> 5);
    if (2 * v53 > v52)
    {
      v52 = 2 * v53;
    }

    if (v53 >= 0x155555555555555)
    {
      v54 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v54 = v52;
    }

    if (v54)
    {
      if (v54 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_117;
    }

    v30 = a11;
    v57 = 96 * v51;
    *(v57 + 32) = *v92;
    *(v57 + 48) = *&v92[16];
    *(v57 + 64) = *&v92[32];
    *v57 = v88;
    *(v57 + 16) = v90;
    *(v57 + 80) = v40;
    *(v57 + 84) = v39;
    *(v57 + 88) = v46;
    v49 = 96 * v51 + 96;
    v58 = (96 * v51 - (v47 - v50));
    memcpy(v58, v50, v47 - v50);
    *a11 = v58;
    a11[1] = v49;
    a11[2] = 0;
    if (v50)
    {
      operator delete(v50);
    }
  }

  else
  {
    *(v47 + 2) = *v92;
    *(v47 + 3) = *&v92[16];
    *(v47 + 4) = *&v92[32];
    *v47 = v88;
    *(v47 + 1) = v90;
    *(v47 + 20) = v40;
    *(v47 + 21) = v39;
    v49 = (v47 + 96);
    v47[88] = v46;
  }

  v30[1] = v49;
  if (*(a1 + 4216) != 1 || (v59 = sub_2BC10C(*(a1 + 4208), v86[4] & 0xFFFFFFFFFFFFFFLL, 0), (v60 & 1) == 0))
  {
    v59 = sub_30F8F8(a1 + 4208, v86);
  }

  v61 = v59;
  if (*(a1 + 4216) != 1 || (v62 = sub_2BC10C(*(a1 + 4208), v83[4] & 0xFFFFFFFFFFFFFFLL, 0), (v63 & 1) == 0))
  {
    v62 = sub_30F8F8(a1 + 4208, v83);
  }

  if (v22 != v25 && (v78 && v62 || (v78 & 1) == 0 && v61) && a10)
  {
    v64 = v30[1];
    v65 = v30[2];
    v93 = *(v64 - 3);
    v94 = *(v64 - 2);
    v95 = *(v64 - 2);
    v89 = *(v64 - 6);
    v91 = *(v64 - 5);
    *v87 = *(v64 - 7);
    *&v87[3] = *(v64 - 1);
    if (v78)
    {
      v66 = 2;
    }

    else
    {
      v66 = 1;
    }

    v67 = *(v64 - 8) ^ v66;
    if (v64 < v65)
    {
      v68 = *(v64 - 3);
      *(v64 + 2) = *(v64 - 4);
      *(v64 + 3) = v68;
      *(v64 + 4) = *(v64 - 2);
      *(v64 + 10) = *(v64 - 2);
      v69 = *(v64 - 5);
      *v64 = *(v64 - 6);
      *(v64 + 1) = v69;
      v64[88] = v67;
      *(v64 + 89) = *(v64 - 7);
      v70 = (v64 + 96);
      *(v64 + 23) = *(v64 - 1);
LABEL_114:
      v30[1] = v70;
      return;
    }

    v71 = *v30;
    v72 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *v30) >> 5);
    v73 = v72 + 1;
    if (v72 + 1 <= 0x2AAAAAAAAAAAAAALL)
    {
      v74 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v71) >> 5);
      if (2 * v74 > v73)
      {
        v73 = 2 * v74;
      }

      if (v74 >= 0x155555555555555)
      {
        v75 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v75 = v73;
      }

      if (!v75)
      {
        v76 = 32 * ((v64 - *v30) >> 5);
        *(v76 + 32) = *(v64 - 4);
        *(v76 + 48) = v93;
        *(v76 + 64) = v94;
        *(v76 + 80) = v95;
        *v76 = v89;
        *(v76 + 16) = v91;
        *(v76 + 88) = v67;
        *(v76 + 89) = *v87;
        v70 = 96 * v72 + 96;
        v77 = (96 * v72 - (v64 - v71));
        *(v76 + 92) = *&v87[3];
        memcpy(v77, v71, v64 - v71);
        *v30 = v77;
        v30[1] = v70;
        v30[2] = 0;
        if (v71)
        {
          operator delete(v71);
        }

        goto LABEL_114;
      }

      if (v75 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_117:
      sub_1808();
    }

LABEL_116:
    sub_1794();
  }
}

void sub_F8FE74(BOOL *a1, uint64_t a2)
{
  v6[23] = 19;
  strcpy(v6, "DrivingRoutingGraph");
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_3AEC94(a2, v6, __p);
  sub_F8F664(a1, v3);
}

void sub_F90258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5BF68((v32 - 80));
  v34 = v30[534];
  if (v34)
  {
    v30[535] = v34;
    operator delete(v34);
  }

  sub_21DB4B4(v30 + v31);
  sub_3E3EF8(v30 + 1);
  _Unwind_Resume(a1);
}

void sub_F902F8()
{
  v2 = v0[531];
  if (v2)
  {
    v0[532] = v2;
    operator delete(v2);
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v0[529] = v3;
    operator delete(v3);
  }

  JUMPOUT(0xF902E8);
}

void sub_F90328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1A104(va);
  if (*(v11 - 57) < 0)
  {
    operator delete(*(v11 - 80));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xF902F0);
}

void sub_F90350(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  v78 = a2;
  v77 = a5;
  *(a4 + 8) = *a4;
  v9 = *(a1 + 4296);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  v12 = (HIDWORD(a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v13 = sub_2B51D8(v9, v11);
  if (*(v9 + 7772) == 1)
  {
    v14 = sub_30C50C(v9 + 3896, v10, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4 + *(v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v75[0] = v13;
  v75[1] = v17;
  v75[2] = sub_31D7E8(v9, v11, 1);
  v75[3] = v18;
  v76 = v12;
  v19 = (v13 - *v13);
  v20 = *v19;
  if (!HIWORD(v12))
  {
    if (v20 < 0x9B)
    {
      if (v20 <= 0x38)
      {
        return;
      }
    }

    else if (v19[77])
    {
      v21 = *(v13 + v19[77]);
      if (v21)
      {
        goto LABEL_28;
      }

      if ((v21 & 2) != 0)
      {
        return;
      }
    }

    v23 = v19[28];
    if (!v23)
    {
      return;
    }

    v24 = *(v13 + v23);
    if (v24)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((v24 & 7) != 4 && (v24 & 0x23) != 0x20)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v20 < 0x9B)
  {
    if (v20 <= 0x38)
    {
      return;
    }
  }

  else if (v19[77])
  {
    v22 = *(v13 + v19[77]);
    if ((v22 & 2) != 0)
    {
      goto LABEL_28;
    }

    if (v22)
    {
      return;
    }
  }

  v25 = v19[28];
  if (!v25)
  {
    return;
  }

  v24 = *(v13 + v25);
  if ((v24 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v74 = a3 == 0;
  v26 = *(a1 + 4296);
  if (a3)
  {
    v27 = sub_311544(v75);
  }

  else
  {
    v27 = sub_3116D0(v75);
  }

  v28 = sub_31BA24(v26, v27, (a1 + 4272), a3 != 0, 1, 1);
  v29 = *(a1 + 4280);
  v30 = *(a1 + 4272);
  v73 = v29 - v30 == 80;
  v57 = v29 - v30;
  if (v29 - v30 != 120)
  {
    goto LABEL_51;
  }

  if (v30 != v29)
  {
    v31 = v30;
    while (1)
    {
      v32 = (*v31 - **v31);
      if (*v32 < 0x9Bu)
      {
        break;
      }

      v33 = v32[77];
      if (!v33 || ((*(*v31 + v33) ^ (*(*v31 + v33) >> 1) & 1) & 1) == 0)
      {
        break;
      }

      v31 += 5;
      if (v31 == v29)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    v34 = 0;
    v72 = 0;
    if (v30 != v29)
    {
      goto LABEL_52;
    }

LABEL_39:
    v35 = *(a1 + 1) & 1;
    v71 = v35;
    if ((a2 & 0xFFFC) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_40;
  }

LABEL_38:
  v34 = 1;
  v72 = 1;
  if (v30 == v29)
  {
    goto LABEL_39;
  }

LABEL_52:
  v41 = 0;
  do
  {
    v42 = *v30;
    v43 = (*v30 - **v30);
    v44 = *v43;
    if (*(v30 + 38))
    {
      if (v44 >= 0x9B)
      {
        v45 = v43[77];
        if (v45)
        {
          v46 = *(v42 + v45);
          if (v46 & 2) != 0 || (v46)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else if (v44 >= 0x9B)
    {
      v47 = v43[77];
      if (v47)
      {
        v48 = *(v42 + v47);
        if ((v48 & 1) != 0 || (v48 & 2) != 0)
        {
LABEL_53:
          ++v41;
        }
      }
    }

    v30 += 5;
  }

  while (v30 != v29);
  v49 = 3;
  if (v41 < 3)
  {
    v49 = v41;
  }

  v35 = *(a1 + 1) & (v49 != 2);
  v71 = v35;
  if ((a2 & 0xFFFC) == 0)
  {
LABEL_40:
    v56 = a4;
    v36 = v34;
    sub_30A454(a1 + 8, v12, a3, a5 == 0, &v67);
    v37 = (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3));
    if (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3))
    {
      v38 = 0;
      v39 = 32;
      do
      {
        v40 = *(a1 + 4272);
        if (sub_313158((v40 + v39 - 32)) && (v76 != *(v40 + v39) || (WORD2(v76) != *(v40 + v39 + 4)) | v35 & 1))
        {
          if (a5 == 1 || (*a1 & 1) == 0 || (v59 = v67, v60 = v68, v79 = v69, v80 = v70, v81[0] = v38, (sub_F91960(&v59, &v79, v81) & 1) == 0))
          {
            sub_F8F778(a1, a2, v75, (v40 + v39 - 32), 0, 0, a3 == 0, v57 == 80, v36, a5 == 0, v56);
          }
        }

        ++v38;
        v39 += 40;
      }

      while (v37 != v38);
    }

    if (a5 != 1 && (*a1 & 1) != 0)
    {
      *&v59 = a1;
      *(&v59 + 1) = &v71;
      v60 = v75;
      v61 = &v78;
      v62 = &v74;
      v63 = &v73;
      v64 = &v72;
      v65 = &v77;
      v66 = v56;
      sub_F90914(&v67, &v59);
    }

    return;
  }

LABEL_69:
  v50 = sub_30A630(a1 + 8, v12, a2 >> 2, a3, a5 == 0);
  if ((((~v50 & 0xFF0000) != 0) & v28) == 1)
  {
    v51 = *(a1 + 4272);
    if (v51 != *(a1 + 4280))
    {
      if ((v35 & 1) != 0 || ((v52 = v51 + 40 * BYTE2(v50), v53 = *(v52 + 36), v54 = *(v52 + 32), v53 == WORD2(v76)) ? (v55 = v54 == v76) : (v55 = 0), !v55))
      {
        sub_F8F778(a1, a2, v75, (v51 + 40 * BYTE2(v50)), v50, (v50 >> 25) & 1, a3 == 0, v57 == 80, v34, a5 == 0, a4);
      }
    }
  }
}

void sub_F90914(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v9;
  v22 = *(a2 + 64);
  v10 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v10;
  v12 = v4 == v6 && v3 == v8;
  if (!v12 || v7 != v5)
  {
    if (v4)
    {
      if (!v12)
      {
        for (i = 4 * v5; ; i += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + i) | (*(*v4 + i + 2) << 16) | (*(*v4 + i + 3) << 24);
          sub_F91C88(v21, v2);
        }
      }

      v14 = v7 - v5;
      v15 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + v15) | (*(*v4 + v15 + 2) << 16) | (*(*v4 + v15 + 3) << 24);
        sub_F91C88(v21, v2);
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = v3 + 4;
      if (!v12)
      {
        for (j = 4 * v5; ; j += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (j & 0x3FFFFFFFCLL)) | (*(v16 + (j & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (j & 0x3FFFFFFFCLL) + 3) << 24);
          sub_F91C88(v21, v2);
        }
      }

      v17 = v7 - v5;
      v18 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (v18 & 0x3FFFFFFFCLL)) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 3) << 24);
        sub_F91C88(v21, v2);
        v18 += 4;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_F90A90(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_F90350(a1, a2, 0, &v12, 0);
  v6 = v12;
  v7 = v12;
  if (v12 != v13)
  {
    v7 = v12;
    while (((((*(v7 + 9) >> 16) & 0xFFFF0000 | (*(v7 + 9) << 32) | (2 * ((*(v7 + 9) & 0xFF000000000000) == 0))) + 4 * *(v7 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v7 + 88) >> 1) & 1) != a3)
    {
      v7 += 6;
      if (v7 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v13)
  {
LABEL_9:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0x1000000000000;
    *(a4 + 80) = 0;
    *(a4 + 84) = *(a4 + 84) & 0x8000 | 0x280;
    *(a4 + 86) = 0;
    *(a4 + 88) &= 0xE0u;
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = v7[1];
  *a4 = *v7;
  *(a4 + 16) = v8;
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[5];
  *(a4 + 64) = v7[4];
  *(a4 + 80) = v11;
  *(a4 + 32) = v9;
  *(a4 + 48) = v10;
  if (v6)
  {
LABEL_10:
    v13 = v6;
    operator delete(v6);
  }
}

void sub_F90BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F90BC0(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = *a3;
  v21[0] = a1;
  v21[1] = a3;
  sub_F90D8C(v21, (a2 & 0xFFFFFFFFFFFFLL));
  sub_F90D8C(v21, (a2 & 0xFFFFFFFFFFFFLL | 0x1000000000000));
  v5 = a3[1] - *a3;
  if (v5)
  {
    v6 = 0;
    v19 = v5 >> 3;
    do
    {
      v7 = *(*a3 + 8 * v6);
      v8 = sub_30A33C(a1 + 8, (HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000);
      v9 = v8;
      if (v8)
      {
        v10 = a3[1];
        v11 = v7 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v12 = a3[2];
          if (v10 < v12)
          {
            *v10++ = v11;
          }

          else
          {
            v13 = *a3;
            v14 = v10 - *a3;
            v15 = v14 >> 3;
            v16 = (v14 >> 3) + 1;
            if (v16 >> 61)
            {
              sub_1794();
            }

            v17 = v12 - v13;
            if (v17 >> 2 > v16)
            {
              v16 = v17 >> 2;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v15) = v11;
            v10 = (8 * v15 + 8);
            memcpy(0, v13, v14);
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
            }
          }

          a3[1] = v10;
          v11 += 4;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v19);
  }
}

int *sub_F90D8C(uint64_t *a1, int *a2)
{
  v23 = a2;
  v4 = *a1;
  v5 = *(*a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = (v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  v22[0] = v6;
  v22[1] = v10;
  v22[2] = result;
  v22[3] = v12;
  v22[4] = a2;
  v13 = (v6 - *v6);
  v14 = *v13;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v14 < 0x47)
    {
      if (v14 <= 0x38)
      {
        return result;
      }
    }

    else if (v13[35] && (*(v6 + v13[35]) & 1) != 0)
    {
      goto LABEL_27;
    }

    v17 = v13[28];
    if (!v17)
    {
      return result;
    }

    v16 = *(v6 + v17);
    if (v16)
    {
      goto LABEL_27;
    }

LABEL_24:
    if ((v16 & 7) != 4 && (v16 & 0x23) != 0x20)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v14 < 0x47)
  {
    if (v14 <= 0x38)
    {
      return result;
    }

LABEL_18:
    v15 = v13[28];
    if (!v15)
    {
      return result;
    }

    v16 = *(v6 + v15);
    if ((v16 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v13[35] || (*(v6 + v13[35]) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  sub_F916AC(a1[1], &v23);
  if (*(v4 + 4216) != 1 || (result = sub_2BBF84(*(v4 + 4208), a2 & 0xFFFFFFFFFFFFFFLL, 0), (v18 & 1) == 0))
  {
    result = sub_30F984(v4 + 4208, v22);
  }

  if (result)
  {
    v19 = a1[1];
    v21 = 0;
    v20 = 1;
    return sub_F917E4(v19, &v23, &v21, &v20);
  }

  return result;
}

void sub_F90F80(uint64_t a1, int *a2, void *a3)
{
  a3[1] = *a3;
  v20[0] = a1;
  v20[1] = a3;
  sub_F90D8C(v20, a2);
  v4 = a3[1] - *a3;
  if (v4)
  {
    v5 = 0;
    v18 = v4 >> 3;
    do
    {
      v6 = *(*a3 + 8 * v5);
      v7 = sub_30A33C(a1 + 8, (HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000);
      v8 = v7;
      if (v7)
      {
        v9 = a3[1];
        v10 = v6 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v11 = a3[2];
          if (v9 < v11)
          {
            *v9++ = v10;
          }

          else
          {
            v12 = *a3;
            v13 = v9 - *a3;
            v14 = v13 >> 3;
            v15 = (v13 >> 3) + 1;
            if (v15 >> 61)
            {
              sub_1794();
            }

            v16 = v11 - v12;
            if (v16 >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v14) = v10;
            v9 = (8 * v14 + 8);
            memcpy(0, v12, v13);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          a3[1] = v9;
          v10 += 4;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v18);
  }
}

void sub_F91134(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = *a3;
  v21[0] = a1;
  v21[1] = a3;
  sub_F91300(v21, a2 & 0xFFFFFFFFFFFFLL);
  sub_F91300(v21, a2 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
  v5 = a3[1] - *a3;
  if (v5)
  {
    v6 = 0;
    v19 = v5 >> 3;
    do
    {
      v7 = *(*a3 + 8 * v6);
      v8 = sub_30A33C(a1 + 8, (HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000);
      v9 = v8;
      if (v8)
      {
        v10 = a3[1];
        v11 = v7 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v12 = a3[2];
          if (v10 < v12)
          {
            *v10++ = v11;
          }

          else
          {
            v13 = *a3;
            v14 = v10 - *a3;
            v15 = v14 >> 3;
            v16 = (v14 >> 3) + 1;
            if (v16 >> 61)
            {
              sub_1794();
            }

            v17 = v12 - v13;
            if (v17 >> 2 > v16)
            {
              v16 = v17 >> 2;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v15) = v11;
            v10 = (8 * v15 + 8);
            memcpy(0, v13, v14);
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
            }
          }

          a3[1] = v10;
          v11 += 4;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v19);
  }
}

uint64_t sub_F91300(uint64_t *a1, unint64_t a2)
{
  v25 = a2;
  v4 = *a1;
  v5 = *(*a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  v24[0] = v6;
  v24[1] = v10;
  v24[2] = result;
  v24[3] = v12;
  v24[4] = a2;
  v13 = (v6 - *v6);
  v14 = *v13;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v14 < 0x9B)
    {
      if (v14 <= 0x38)
      {
        return result;
      }
    }

    else if (v13[77])
    {
      v16 = *(v6 + v13[77]);
      if (v16)
      {
        goto LABEL_28;
      }

      if ((v16 & 2) != 0)
      {
        return result;
      }
    }

    v19 = v13[28];
    if (!v19)
    {
      return result;
    }

    v18 = *(v6 + v19);
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v14 < 0x9B)
  {
    if (v14 <= 0x38)
    {
      return result;
    }

LABEL_20:
    v17 = v13[28];
    if (!v17)
    {
      return result;
    }

    v18 = *(v6 + v17);
    if ((v18 & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((v18 & 7) != 4 && (v18 & 0x23) != 0x20)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!v13[77])
  {
    goto LABEL_20;
  }

  v15 = *(v6 + v13[77]);
  if ((v15 & 2) == 0)
  {
    if (v15)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_28:
  sub_F916AC(a1[1], &v25);
  if (*(v4 + 4216) != 1 || (result = sub_2BC10C(*(v4 + 4208), a2 & 0xFFFFFFFFFFFFFFLL, 0), (v20 & 1) == 0))
  {
    result = sub_30F8F8(v4 + 4208, v24);
  }

  if (result)
  {
    v21 = a1[1];
    v23 = 0;
    v22 = 1;
    return sub_F917E4(v21, &v25, &v23, &v22);
  }

  return result;
}

void sub_F914F8(uint64_t a1, unint64_t a2, void *a3)
{
  a3[1] = *a3;
  v20[0] = a1;
  v20[1] = a3;
  sub_F91300(v20, a2);
  v4 = a3[1] - *a3;
  if (v4)
  {
    v5 = 0;
    v18 = v4 >> 3;
    do
    {
      v6 = *(*a3 + 8 * v5);
      v7 = sub_30A33C(a1 + 8, (HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000);
      v8 = v7;
      if (v7)
      {
        v9 = a3[1];
        v10 = v6 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v11 = a3[2];
          if (v9 < v11)
          {
            *v9++ = v10;
          }

          else
          {
            v12 = *a3;
            v13 = v9 - *a3;
            v14 = v13 >> 3;
            v15 = (v13 >> 3) + 1;
            if (v15 >> 61)
            {
              sub_1794();
            }

            v16 = v11 - v12;
            if (v16 >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v14) = v10;
            v9 = (8 * v14 + 8);
            memcpy(0, v12, v13);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          a3[1] = v9;
          v10 += 4;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v18);
  }
}

uint64_t sub_F916AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v8) = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0));
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0));
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return v5 - 8;
}

uint64_t sub_F917E4(uint64_t a1, void *a2, _DWORD *a3, unsigned __int8 *a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = v7 - *a1;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v11) = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0)) | *a4) + 4 * *a3;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0)) | *a4) + 4 * *a3;
    v8 = (v7 + 1);
  }

  *(a1 + 8) = v8;
  return v8 - 8;
}

uint64_t sub_F91960(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = *a3;
  if (*a1 != *a2)
  {
    if (v3)
    {
      v5 = *v3;
      v6 = *(a1 + 16);
      v7 = (v5 + 4 * v6);
      if (v4 == v7[2] && (v7[3] & 1) != 0)
      {
        return 1;
      }

      v9 = (v7 + 7);
      do
      {
        ++v6;
        v10 = *(v9 - 1);
        v11 = *v9;
        v9 += 4;
        v12 = v11 & 1;
      }

      while (v4 != v10 || v12 == 0);
    }

    else
    {
      v6 = *(a1 + 16);
      v24 = *(a1 + 8) + 4;
      v25 = v24 + 4 * v6;
      v26 = *(v25 + 2);
      v27 = *(v25 + 3) & 1;
      if (v4 == v26 && v27 != 0)
      {
        return 1;
      }

      v29 = 4 * v6 + 4;
      do
      {
        ++v6;
        v30 = v24 + (v29 & 0x3FFFFFFFCLL);
        v31 = *(v30 + 2);
        v32 = *(v30 + 3) & 1;
        v29 += 4;
      }

      while (v4 != v31 || v32 == 0);
    }

LABEL_49:
    *(a1 + 16) = v6;
    return 1;
  }

  v14 = *(a1 + 8);
  v15 = a2[1];
  if (v3)
  {
    if (v14 != v15)
    {
      v16 = *v3;
      v6 = *(a1 + 16);
      v17 = (v16 + 4 * v6);
      if (v4 == v17[2] && (v17[3] & 1) != 0)
      {
        return 1;
      }

      v19 = (v17 + 7);
      do
      {
        ++v6;
        v20 = *(v19 - 1);
        v21 = *v19;
        v19 += 4;
        v22 = v21 & 1;
      }

      while (v4 != v20 || v22 == 0);
      goto LABEL_49;
    }

    v46 = *(a1 + 16);
    if (v46 != a2[2])
    {
      v48 = (*v3 + 4 * v46 + 3);
      do
      {
        v44 = (v4 == *(v48 - 1)) & *v48;
        if (((v4 == *(v48 - 1)) & *v48) != 0)
        {
          break;
        }

        v44 = 0;
        v48 += 4;
        *(a1 + 16) = ++v46;
      }

      while (v46 != a2[2]);
      return v44;
    }

    return 0;
  }

  else
  {
    if (v14 != v15)
    {
      v34 = v14 + 4;
      v6 = *(a1 + 16);
      v35 = v14 + 4 + 4 * v6;
      v36 = *(v35 + 2);
      v37 = *(v35 + 3) & 1;
      if (v4 == v36 && v37 != 0)
      {
        return 1;
      }

      v39 = 4 * v6 + 4;
      do
      {
        ++v6;
        v40 = v34 + (v39 & 0x3FFFFFFFCLL);
        v41 = *(v40 + 2);
        v42 = *(v40 + 3) & 1;
        v39 += 4;
      }

      while (v4 != v41 || v42 == 0);
      goto LABEL_49;
    }

    v47 = *(a1 + 16);
    if (v47 != a2[2])
    {
      v49 = v14 + 4;
      v50 = 4 * v47;
      do
      {
        v44 = (v4 == *(v49 + (v50 & 0x3FFFFFFFCLL) + 2)) & *(v49 + (v50 & 0x3FFFFFFFCLL) + 3);
        if (((v4 == *(v49 + (v50 & 0x3FFFFFFFCLL) + 2)) & *(v49 + (v50 & 0x3FFFFFFFCLL) + 3)) != 0)
        {
          break;
        }

        v44 = 0;
        *(a1 + 16) = ++v47;
        v50 += 4;
      }

      while (v47 != a2[2]);
      return v44;
    }

    return 0;
  }
}

void sub_F91BA4(uint64_t a1, int a2)
{
  if ((a2 & 0x1000000) == 0)
  {
    v3 = *a1;
    v4 = *(v3 + 4272);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 4280) - v4) >> 3) > BYTE2(a2))
    {
      if (!a2 || (**(a1 + 8) & 1) != 0)
      {
        v8 = *(a1 + 16);
LABEL_12:
        sub_F8E0E0(v3, **(a1 + 24), v8, (v4 + 40 * BYTE2(a2)), a2, (HIBYTE(a2) >> 1) & 1, **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) == 0, *(a1 + 64));
        return;
      }

      v5 = v4 + 40 * BYTE2(a2);
      v6 = *(v5 + 36);
      v7 = *(v5 + 32);
      v8 = *(a1 + 16);
      if (v6 != *(v8 + 36) || v7 != *(v8 + 32))
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_F91C88(uint64_t a1, int a2)
{
  if ((a2 & 0x1000000) == 0)
  {
    v3 = *a1;
    v4 = *(v3 + 4272);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 4280) - v4) >> 3) > BYTE2(a2))
    {
      if (!a2 || (**(a1 + 8) & 1) != 0)
      {
        v8 = *(a1 + 16);
LABEL_12:
        sub_F8F778(v3, **(a1 + 24), v8, (v4 + 40 * BYTE2(a2)), a2, (HIBYTE(a2) >> 1) & 1, **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) == 0, *(a1 + 64));
        return;
      }

      v5 = v4 + 40 * BYTE2(a2);
      v6 = *(v5 + 36);
      v7 = *(v5 + 32);
      v8 = *(a1 + 16);
      if (v6 != *(v8 + 36) || v7 != *(v8 + 32))
      {
        goto LABEL_12;
      }
    }
  }
}

void *sub_F91D6C(void *a1, uint64_t a2)
{
  std::ostream::operator<<();
  v4 = sub_4A5C(a1, "+", 1);
  std::ostream::operator<<();
  v5 = sub_4A5C(v4, "/", 1);
  v6 = sub_70FBC(v5, *(a2 + 16));
  v7 = sub_4A5C(v6, "+", 1);
  sub_70FBC(v7, *(a2 + 24));
  return a1;
}

void sub_F91DF8(uint64_t a1, unint64_t a2, void *a3)
{
  a3[1] = *a3;
  v6[0] = a1;
  v6[1] = a3;
  v4 = HIDWORD(a2) & 0x1FFFFFFF;
  v5 = a2;
  sub_F91E9C(v6, a2 | ((v4 | 0x20000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0x80000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0xA0000000) << 32));
  sub_F91E9C(v6, a2 & 0x1FFFFFFFFFFFFFFFLL);
  sub_F91E9C(v6, v5 | ((v4 | 0x60000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0x40000000) << 32));
}

void sub_F91E9C(uint64_t *a1, unint64_t a2)
{
  v37 = a2;
  v4 = *a1;
  v5 = *(*a1 + 136);
  v6 = **a1;
  v7 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (v6 == 1 && *(v5 + 7772) == 1)
  {
    v8 = v7;
    v9 = sub_30C50C(v5 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v7 = v8;
    v12 = (v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v12 = 0;
  }

  v35[0] = v7;
  v35[1] = v12;
  v35[2] = 0;
  v35[3] = 0;
  v36 = a2 & 0x6000FFFFFFFFFFFFLL | ((a2 >> 62 == 2) << 63);
  if ((a2 & 0x4000000000000000) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 >> 62 == 2;
  }

  if (sub_314D1C(v35, v13))
  {
    sub_F931B4(a1[1], &v37);
    if (*(v4 + 16) != 1 || (v14 = sub_2BC294(*(v4 + 8), (((HIDWORD(v36) & 0x20000000) << 19) | (WORD2(v36) << 32) | v36) ^ 0x1000000000000, 0), (v15 & 1) == 0))
    {
      v14 = sub_30FA10(v4 + 8, v35);
    }

    if (v14)
    {
      v16 = a1[1];
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      if (v17 >= v18)
      {
        v24 = *v16;
        v25 = v17 - *v16;
        v26 = (v25 >> 3) + 1;
        if (v26 >> 61)
        {
          sub_1794();
        }

        v27 = v18 - v24;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v29 = (8 * (v25 >> 3));
        v30 = HIDWORD(v37) & 0x40000000;
        v31 = (v37 & 0x8000000000000000) != 0 && v30 == 0;
        v32 = HIDWORD(v37) & 0xFFFFFFF | (v37 >> 33) & 0x10000000;
        if (v31)
        {
          v33 = 0x40000000;
        }

        else
        {
          v33 = 0;
        }

        *v29 = v37;
        dword_4[2 * (v25 >> 3)] = v32 | (v30 >> 1) | v33 | 0x80000000;
        v23 = v29 + 2;
        v34 = 0;
        memcpy(v34, v24, v25);
        *v16 = v34;
        *(v16 + 8) = v23;
        *(v16 + 16) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v19 = HIDWORD(v37) & 0x40000000;
        v20 = (v37 & 0x8000000000000000) != 0 && v19 == 0;
        v21 = HIDWORD(v37) & 0xFFFFFFF | (v37 >> 33) & 0x10000000;
        if (v20)
        {
          v22 = 0x40000000;
        }

        else
        {
          v22 = 0;
        }

        *v17 = v37;
        v17[1] = v21 | (v19 >> 1) | v22 | 0x80000000;
        v23 = v17 + 2;
      }

      *(v16 + 8) = v23;
    }
  }
}

void sub_F92148(uint64_t a1, unint64_t a2, void *a3)
{
  a3[1] = *a3;
  v3[0] = a1;
  v3[1] = a3;
  sub_F91E9C(v3, a2);
}

uint64_t sub_F92178(uint64_t a1, void *a2, char a3)
{
  *a1 = a3 & 1;
  v5 = sub_3AF144(a2);
  *(a1 + 24) = 0u;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_111CB34(a1 + 24);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 16) = (a3 & 2) != 0;
  return a1;
}

void sub_F92200(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F92244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = a8 & 1;
  *(a1 + 8) = a4;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_111CB34(a1 + 24);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 16) = (a8 & 2) != 0;
  return a1;
}

void sub_F922C8(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

unint64_t sub_F92304(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7, int a8, char a9, uint64_t a10)
{
  v50 = a8;
  if (a9)
  {
    v14 = a4;
  }

  else
  {
    v14 = a2;
  }

  if (a9)
  {
    v15 = a7;
  }

  else
  {
    v15 = a3;
  }

  v49 = v15;
  if (a9)
  {
    v16 = a2;
  }

  else
  {
    v16 = a4;
  }

  if (a9)
  {
    v17 = a3;
  }

  else
  {
    v17 = a7;
  }

  v48 = v17;
  if (*(a1 + 16) != 1 || (v18 = sub_2BC294(*(a1 + 8), (((*(v14 + 36) & 0x20000000) << 19) | (*(v14 + 36) << 32) | *(v14 + 32)) ^ 0x1000000000000, 0), (v19 & 1) == 0))
  {
    v18 = sub_30FA10(a1 + 8, v14);
  }

  v20 = v18;
  if (*(a1 + 16) != 1 || (result = sub_2BC294(*(a1 + 8), (((*(v16 + 36) & 0x20000000) << 19) | (*(v16 + 36) << 32) | *(v16 + 32)) ^ 0x1000000000000, 0), (v22 & 1) == 0))
  {
    result = sub_30FA10(a1 + 8, v16);
  }

  v23 = result;
  if (v20 != result || ((a3 ^ a7) & 1) == 0)
  {
    v24 = sub_30F7C8(a1 + 8, v14);
    v25 = v24 ^ sub_30F7C8(a1 + 8, v16);
    v47 = v25;
    v26 = sub_F925C4(a1 + 24, v20, v23, v15, v17);
    v46 = v26;
    v27 = *(a10 + 8);
    if (v27 >= *(a10 + 16))
    {
      result = sub_F93324(a10, v14, v16, a5, a6, &v49, &v48, &v50, &v46, &v47);
    }

    else
    {
      v28 = *v14;
      v29 = *(v14 + 16);
      *(v27 + 32) = *(v14 + 32);
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = *v16;
      v31 = *(v16 + 16);
      *(v27 + 72) = *(v16 + 32);
      *(v27 + 56) = v31;
      *(v27 + 40) = v30;
      sub_F935A0((v27 + 80), a5, a6, v15, v17, a8, v26, v25);
      v54[0] = v14;
      v54[1] = v16;
      v32 = *(v27 + 80);
      v33 = v32 & 0x1F;
      if (v33 == 31)
      {
        v33 = -1;
      }

      v34 = (v32 >> 5) & 0x1F;
      if (v34 == 31)
      {
        v34 = -1;
      }

      v51.i64[0] = v33;
      v51.i64[1] = v34;
      if (((v32 >> 10) & 0x1FF) == 0x1FF)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = 50 * ((v32 >> 10) & 0x1FF);
      }

      v36 = (v32 >> 19) & 0x1FF;
      if (v36 == 511)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = 50 * v36;
      }

      v52 = v35;
      v53 = v37;
      sub_49FC9C(v54, &v51, a5);
      v38 = *(v27 + 80);
      v39 = vdupq_n_s64(0x1FuLL);
      v40 = vandq_s8(vshlq_u64(vdupq_n_s64(v38), xmmword_2297E80), v39);
      v51 = vorrq_s8(v40, vceqq_s64(v40, v39));
      if (((v38 >> 38) & 0x1FF) == 0x1FF)
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = 50 * ((v38 >> 38) & 0x1FF);
      }

      v42 = (v38 >> 47) & 0x1FF;
      if (v42 == 511)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = 50 * v42;
      }

      v52 = v41;
      v53 = v43;
      sub_49FC9C(v54, &v51, a6);
      result = v27 + 88;
      *(a10 + 8) = v27 + 88;
    }

    *(a10 + 8) = result;
  }

  return result;
}

uint64_t sub_F925C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    if (a5)
    {
      if ((a3 & a2) == a3)
      {
        return 3;
      }

      v6 = *a1;
      v7 = *(a1 + 8);
      if (*a1 != v7)
      {
        while ((v6[3] & a2) != v6[2] || (v6[1] & a3) != *v6)
        {
          v6 += 4;
          if (v6 == v7)
          {
            return 0;
          }
        }

        return 3;
      }
    }

    else if ((a3 & a2) != a3)
    {
      for (i = *a1; i != *(a1 + 8); i += 4)
      {
        if ((i[3] & a2) == i[2] && (i[1] & a3) == *i)
        {
          return 0;
        }
      }

      return 3;
    }

    return 0;
  }

  if (!a5)
  {
    if (a3)
    {
      return 3;
    }

    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v8 != v9)
    {
      while ((*(v8 + 8) & a2) != *v8 || *(v8 + 16))
      {
        v8 += 40;
        if (v8 == v9)
        {
          return 3;
        }
      }
    }

    goto LABEL_38;
  }

  if ((a2 & ~a3) == 0)
  {
    return 0;
  }

  for (j = *a1; j != *(a1 + 8); j += 4)
  {
    if ((j[1] & a2) == *j && (j[3] & a3) == j[2])
    {
      return 0;
    }
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v8 != v9)
  {
    while ((*(v8 + 8) & a2) != *v8 || (*(v8 + 24) & a3) != *(v8 + 16))
    {
      v8 += 40;
      if (v8 == v9)
      {
        return 3;
      }
    }
  }

LABEL_38:
  if (v8 != v9)
  {
    return *(v8 + 32);
  }

  return 3;
}

uint64_t sub_F92730@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(result + 112);
  v4 = *(result + 120);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      result = *v3;
      v9 = (*v3 - **v3);
      v10 = *v9;
      if (*(v3 + 38))
      {
        if (v10 < 0x39)
        {
          goto LABEL_18;
        }

        v11 = v9[28];
        if (!v11)
        {
          goto LABEL_18;
        }

        v12 = *(result + v11);
        if ((v12 & 3) != 0)
        {
          goto LABEL_4;
        }

        if ((v12 & 0x4000) == 0)
        {
          goto LABEL_18;
        }

        v13 = v12 & 0x1000;
        result = sub_314800(result);
        if (v13)
        {
LABEL_17:
          ++v7;
          v6 += result;
          goto LABEL_4;
        }
      }

      else
      {
        if (v10 < 0x39 || (v14 = v9[28]) == 0)
        {
LABEL_18:
          *a2 = -1;
          *(a2 + 8) = -1;
          v17.f64[0] = NAN;
          v17.f64[1] = NAN;
          *(a2 + 16) = vnegq_f64(v17);
          return result;
        }

        v15 = *(result + v14);
        if ((v15 & 3) != 0)
        {
          goto LABEL_4;
        }

        if ((v15 & 0x2000) == 0)
        {
          goto LABEL_18;
        }

        v16 = v15 & 0x800;
        result = sub_314800(result);
        if (v16)
        {
          goto LABEL_17;
        }
      }

      ++v8;
      v5 += result;
LABEL_4:
      v3 += 5;
      if (v3 == v4)
      {
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 8) = v7;
        goto LABEL_21;
      }
    }
  }

  v8 = 0;
LABEL_21:
  *a2 = v8;
  return result;
}

uint64_t sub_F92868@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 17);
  v6 = *a1;
  result = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (v6 == 1 && *(v5 + 7772) == 1)
  {
    v8 = result;
    v9 = sub_30C50C(v5 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    result = v8;
    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  *a3 = result;
  a3[1] = v12;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = a2 & 0x6000FFFFFFFFFFFFLL | ((a2 >> 62 == 2) << 63);
  return result;
}

double sub_F92948(unsigned __int8 *a1, unint64_t a2, int a3, void *a4)
{
  v8 = HIDWORD(a2);
  a4[1] = *a4;
  v9 = (a2 >> 31) & 0x60000000 | (((a2 & 0x6000000000000000) == 0x4000000000000000) << 31);
  v10 = a2 | ((v9 | HIDWORD(a2) & 0xFFFFFFF) << 32);
  v11 = *(a1 + 17);
  v12 = *a1;
  v13 = sub_2B51D8(v11, v10 & 0xFFFFFFFFFFFFLL);
  if (v12 == 1 && *(v11 + 7772) == 1)
  {
    v14 = v13;
    v15 = sub_30C50C(v11 + 3896, a2, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v13 = v14;
    v18 = (v17 + 4 * v8 + 4 + *(v17 + 4 * v8 + 4));
  }

  else
  {
    v18 = 0;
  }

  v91[0] = v13;
  v91[1] = v18;
  v91[2] = 0;
  v91[3] = 0;
  v91[4] = (v10 & 0x6000FFFFFFFFFFFFLL | (((v9 & 0xC0000000) == 0x80000000) << 63));
  if ((v10 & 0x4000000000000000) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = (v9 & 0xC0000000) == 0x80000000;
  }

  if (sub_314D1C(v91, v19))
  {
    v21 = a3 ? sub_314A00(v91) : sub_314B90(v91);
    sub_31BA24(*(a1 + 17), v21, a1 + 14, 0, *a1, 0);
    v23 = *(a1 + 14);
    v22 = *(a1 + 15);
    v24 = v8 & 0xFFFFFFF | (((v8 >> 28) & 3) << 29);
    v25 = v24 | (((v8 & 0x60000000) == 0x40000000) << 31);
    v26 = (v24 | ((v25 >> 30 == 0) << 31)) ^ 0x20000000;
    v27 = a3 ? v25 : v26;
    v28 = v22 - v23;
    if (v22 != v23)
    {
      v29 = 0;
      while ((*(v23 + 32) & 0xFFFFFFFFFFFFFFLL) != (((v27 << 19) & 0x1000000000000 | (v27 << 32) | a2) ^ 0x1000000000000))
      {
        v23 += 40;
        v29 += 40;
        if (v23 == v22)
        {
          return result;
        }
      }

      if (v23 != v22)
      {
        v30 = 0xCCCCCCCCCCCCCCCDLL * (v29 >> 3);
        sub_F92730(a1, &v88);
        v31 = v88;
        v32 = v27 >> 31;
        if ((v27 & 0x40000000) != 0)
        {
          LOBYTE(v32) = 2;
        }

        v66 = v30;
        v79[0] = a1 + 112;
        v79[1] = v30;
        v80 = v32;
        v81 = v30;
        v65 = v32;
        v82 = v32;
        v83 = 1;
        v84 = a3;
        v85 = 1;
        v86 = 0u;
        v87 = 0u;
        sub_F93034(v79);
        v33 = a2 >> 63;
        if (v85 == 1)
        {
          v67 = v89;
          v34 = v90;
          if (a3)
          {
            v35 = v71;
          }

          else
          {
            v35 = v78;
          }

          if (a3)
          {
            v36 = v78;
          }

          else
          {
            v36 = v71;
          }

          do
          {
            v37 = *v79[0] + 40 * v81;
            v38 = *(v37 + 32);
            v39 = WORD2(v38) | (((v38 & 0xFF000000000000) == 0) << 29) | ((v82 == 2) << 30);
            v40 = v39 | ((v82 == 1) << 31);
            v41 = (v39 | ((v40 >> 30 == 0) << 31)) ^ 0x20000000;
            if (!v84)
            {
              v41 = v40;
            }

            v92 = *v37;
            v93 = *(v37 + 16);
            *&v94 = v38 | (v41 << 32);
            *v71 = v86;
            *&v71[16] = v87;
            if (v31 == -1)
            {
              *v78 = -1;
              *&v78[8] = -1;
              v42 = 0x7FFFFFFFFFFFFFFFLL;
              *&v78[16] = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              *v78 = v31 - *v71;
              *&v78[8] = vsubq_s64(v67, *&v71[8]);
              v42 = v34 - *&v71[24];
            }

            *&v78[24] = v42;
            sub_F92304(a1, v91, v33, &v92, v35, v36, 0, v28 == 80, a3, a4);
            if (a1[16] != 1 || (v43 = sub_2BC294(*(a1 + 1), (((DWORD1(v94) & 0x20000000) << 19) | (WORD2(v94) << 32) | v94) ^ 0x1000000000000, 0), (v44 & 1) == 0))
            {
              v43 = sub_30FA10((a1 + 8), &v92);
            }

            if (v43)
            {
              sub_F92304(a1, v91, v33, &v92, v35, v36, 1, v28 == 80, a3, a4);
            }

            sub_F93034(v79);
          }

          while ((v85 & 1) != 0);
        }

        if (v31 == -1)
        {
          v64 = a4[1] - *a4;
          *v71 = a1 + 112;
          *&v71[8] = v66;
          v71[16] = v65;
          *&v71[24] = v66;
          v72 = v65;
          v73 = 0;
          v74 = a3;
          v75 = 1;
          v76 = 0u;
          v77 = 0u;
          sub_F93034(v71);
          if (v75 == 1)
          {
            if (a3)
            {
              v45 = v69;
            }

            else
            {
              v45 = v78;
            }

            if (a3)
            {
              v46 = v78;
            }

            else
            {
              v46 = v69;
            }

            v47.f64[0] = NAN;
            v47.f64[1] = NAN;
            v68 = vnegq_f64(v47);
            do
            {
              v48 = **v71 + 40 * *&v71[24];
              v49 = *(v48 + 32);
              v50 = WORD2(v49) | (((v49 & 0xFF000000000000) == 0) << 29) | ((v72 == 2) << 30);
              v92 = *v48;
              v51 = *(v48 + 16);
              v52 = (v50 | (((v50 | ((v72 == 1) << 31)) >> 30 == 0) << 31)) ^ 0x20000000;
              if (!v74)
              {
                v52 = v50 | ((v72 == 1) << 31);
              }

              v93 = v51;
              *&v94 = v49 | (v52 << 32);
              *v78 = v76;
              *&v78[16] = v77;
              v69[0] = -1;
              v69[1] = -1;
              v70 = v68;
              if (a1[16] != 1 || (v53 = sub_2BC294(*(a1 + 1), (((v52 & 0x20000000) << 19) | (v52 << 32) | v49) ^ 0x1000000000000, 0), (v54 & 1) == 0))
              {
                v53 = sub_30FA10((a1 + 8), &v92);
              }

              if (v53)
              {
                sub_F92304(a1, v91, v33, &v92, v45, v46, 1, v28 == 80, a3, a4);
              }

              sub_F92304(a1, v91, v33, &v92, v45, v46, 0, v28 == 80, a3, a4);
              sub_F93034(v71);
            }

            while ((v75 & 1) != 0);
          }

          v55 = a4[1];
          v56 = v64 + *a4;
          if (v56 != v55)
          {
            v57 = v55 - 88;
            if (v57 > v56)
            {
              v58 = v56 + 88;
              do
              {
                v94 = *(v58 - 56);
                v95 = *(v58 - 40);
                v96 = *(v58 - 24);
                v97 = *(v58 - 8);
                v92 = *(v58 - 88);
                v93 = *(v58 - 72);
                v59 = *(v57 + 16);
                *(v58 - 88) = *v57;
                *(v58 - 72) = v59;
                v61 = *(v57 + 48);
                v60 = *(v57 + 64);
                v62 = *(v57 + 80);
                *(v58 - 56) = *(v57 + 32);
                *(v58 - 8) = v62;
                *(v58 - 24) = v60;
                *(v58 - 40) = v61;
                *v57 = v92;
                *(v57 + 80) = v97;
                *(v57 + 64) = v96;
                *(v57 + 48) = v95;
                *(v57 + 32) = v94;
                result = *&v93;
                *(v57 + 16) = v93;
                v57 -= 88;
                v63 = v58 >= v57;
                v58 += 88;
              }

              while (!v63);
            }
          }
        }
      }
    }
  }

  return result;
}