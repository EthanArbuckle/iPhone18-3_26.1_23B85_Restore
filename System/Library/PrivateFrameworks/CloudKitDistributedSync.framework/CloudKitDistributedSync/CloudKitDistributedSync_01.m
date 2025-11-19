std::string *sub_2438B440C(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B3EB0(result);

    return sub_2438B438C(v4, a2);
  }

  return result;
}

__n128 sub_2438B4460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  v10 = *(a2 + 8);
  v8 = (a2 + 8);
  v9 = v10;
  if (v6)
  {
    if ((v9 & 1) == 0)
    {
      sub_2438BF7E4(v8);
      v11 = v16;
      v6 = *v7;
      if (*v7)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6)
    {
LABEL_6:
      v12 = (v6 & 0xFFFFFFFFFFFFFFFELL);
LABEL_7:
      v13 = v12[1].n128_u64[0];
      result = *v12;
      v15 = *(v11 + 16);
      *v12 = *v11;
      v12[1].n128_u64[0] = v15;
      *v11 = result;
      *(v11 + 16) = v13;
      return result;
    }

LABEL_9:
    sub_2438BF7E4(v7);
    goto LABEL_7;
  }

  if (v9)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2438B453C(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_28569E388;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  if (atomic_load_explicit(dword_281AF3D98, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3D98);
  }

  return a1;
}

void sub_2438B45C0(_Unwind_Exception *a1)
{
  sub_2438BFD08((v2 + 48));
  sub_2438BFD08(v3);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B45EC(void *a1)
{
  *a1 = &unk_28569E388;
  sub_2438BFD08(a1 + 6);
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B464C(void *a1)
{
  v1 = sub_2438B45EC(a1);

  operator delete(v1);
}

void sub_2438B4674(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B3674(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_2438B3EB0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    sub_2438BFCC0(v8);
  }
}

uint64_t sub_2438B471C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v36 = (a1 + 8);
  v37 = 0uLL;
  v38 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v38 = *(v5 + 16);
    v37 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v35, &v37);
  sub_2439657D8(v34, v35, 0);
  do
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v9 >> 3 != 2)
    {
      if (v9 >> 3 != 1 || v9 != 10)
      {
LABEL_23:
        if (!v9)
        {
          v32 = 1;
          goto LABEL_50;
        }

        v20 = sub_243967FF0(a2, v9, v34);
        continue;
      }

      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(a1 + 32) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
LABEL_32:
          v23 = *a2;
          if (*a2 >= *(a2 + 8) || (v24 = *v23, (v24 & 0x80000000) != 0))
          {
            v24 = sub_243965380(a2);
            if ((v24 & 0x80000000) != 0)
            {
              break;
            }
          }

          else
          {
            *a2 = v23 + 1;
          }

          v25 = sub_243989C1C(a2, v24);
          v26 = v25;
          if ((v25 & 0x8000000000000000) != 0 || !sub_2438B3698(v15, a2))
          {
            break;
          }

          goto LABEL_38;
        }

        if (v14 != *(a1 + 36))
        {
LABEL_31:
          *v12 = v14 + 1;
          v15 = sub_2438BEB90(*(a1 + 24));
          v21 = *(a1 + 32);
          v22 = *(a1 + 40) + 8 * v21;
          *(a1 + 32) = v21 + 1;
          *(v22 + 8) = v15;
          goto LABEL_32;
        }
      }

      else
      {
        v14 = *(a1 + 36);
      }

      sub_243967234(a1 + 24, v14 + 1);
      v12 = *(a1 + 40);
      v14 = *v12;
      goto LABEL_31;
    }

    if (v9 != 18)
    {
      goto LABEL_23;
    }

    v16 = *(a1 + 64);
    if (!v16)
    {
      v18 = *(a1 + 60);
      goto LABEL_40;
    }

    v17 = *(a1 + 56);
    v18 = *v16;
    if (v17 >= *v16)
    {
      if (v18 != *(a1 + 60))
      {
LABEL_41:
        *v16 = v18 + 1;
        v19 = sub_2438BEC24(*(a1 + 48));
        v27 = *(a1 + 56);
        v28 = *(a1 + 64) + 8 * v27;
        *(a1 + 56) = v27 + 1;
        *(v28 + 8) = v19;
        goto LABEL_42;
      }

LABEL_40:
      sub_243967234(a1 + 48, v18 + 1);
      v16 = *(a1 + 64);
      v18 = *v16;
      goto LABEL_41;
    }

    *(a1 + 56) = v17 + 1;
    v19 = *&v16[2 * v17 + 2];
LABEL_42:
    v29 = *a2;
    if (*a2 >= *(a2 + 8) || (v30 = *v29, (v30 & 0x80000000) != 0))
    {
      v30 = sub_243965380(a2);
      if ((v30 & 0x80000000) != 0)
      {
        break;
      }
    }

    else
    {
      *a2 = v29 + 1;
    }

    v31 = sub_243989C1C(a2, v30);
    v26 = v31;
    if ((v31 & 0x8000000000000000) != 0 || !sub_2438B3ED8(v19, a2))
    {
      break;
    }

LABEL_38:
    v20 = sub_243964938(a2, v26);
  }

  while ((v20 & 1) != 0);
  v32 = 0;
LABEL_50:
  sub_243965918(v34);
  sub_2438BF88C(&v36);
  return v32;
}

void sub_2438B4A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B4A3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      sub_243969590(2, *(*(a1 + 64) + 8 * j + 8), a2);
    }
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = &qword_27ED97020;
  }

  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  if (v8)
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = &qword_27ED97020;
  }

  v11 = *(v10 + 23);
  if (v11 < 0)
  {
    v11 = v10[1];
  }

  return sub_243965944(a2, v9, v11);
}

uint64_t sub_2438B4B1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B3A78(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 56);
  v10 = v6 + v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = sub_2438B42BC(*(*(a1 + 64) + 8 * v11 + 8));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v11;
    }

    while (v9 != v11);
  }

  *(a1 + 20) = v10;
  return v10;
}

std::string *sub_2438B4C0C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438BFF14(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(&v3[2], v10);
    result = sub_2438BFFD4(v3 + 2, v12, (v11 + 8), v10, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v13 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v10;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v13;
    v14 = v3[2].__r_.__value_.__r.__words[2];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return result;
}

uint64_t sub_2438B4D1C(uint64_t a1)
{
  *a1 = &unk_28569E428;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_281AF3F78, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F78);
  }

  *(a1 + 96) = &qword_27ED97020;
  return a1;
}

void sub_2438B4DB8(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_2438BFD08(v5);
  sub_2438BFD08((v2 + 48));
  sub_2438BFD08(v3);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B4DF8(void *a1)
{
  *a1 = &unk_28569E428;
  v2 = a1 + 9;
  sub_2438B4E6C(a1);
  sub_2438BFD08(v2);
  sub_2438BFD08(a1 + 6);
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B4E6C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 != &qword_27ED97020 && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

void sub_2438B4ED4(void *a1)
{
  v1 = sub_2438B4DF8(a1);

  operator delete(v1);
}

void sub_2438B4EFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B3674(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_2438B3EB0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      sub_2438B4674(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 16))
  {
    v11 = *(a1 + 96);
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    sub_2438BFCC0(v12);
  }
}

uint64_t sub_2438B4FF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v47 = (a1 + 8);
  v48 = 0uLL;
  v49 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v49 = *(v5 + 16);
    v48 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v46, &v48);
  sub_2439657D8(v45, v46, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_10:
    v11 = v9 >> 3;
    if (v9 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 != 4 || v9 != 34)
      {
        goto LABEL_34;
      }

      v17 = *(a1 + 88);
      if (!v17)
      {
        v19 = *(a1 + 84);
        goto LABEL_52;
      }

      v18 = *(a1 + 80);
      v19 = *v17;
      if (v18 < *v17)
      {
        *(a1 + 80) = v18 + 1;
        v20 = *&v17[2 * v18 + 2];
        goto LABEL_54;
      }

      if (v19 == *(a1 + 84))
      {
LABEL_52:
        sub_243967234(a1 + 72, v19 + 1);
        v17 = *(a1 + 88);
        v19 = *v17;
      }

      *v17 = v19 + 1;
      v20 = sub_2438BECB8(*(a1 + 72));
      v33 = *(a1 + 80);
      v34 = *(a1 + 88) + 8 * v33;
      *(a1 + 80) = v33 + 1;
      *(v34 + 8) = v20;
LABEL_54:
      v35 = *a2;
      if (*a2 >= *(a2 + 8) || (v36 = *v35, (v36 & 0x80000000) != 0))
      {
        v36 = sub_243965380(a2);
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        *a2 = v35 + 1;
      }

      v37 = sub_243989C1C(a2, v36);
      v32 = v37;
      if ((v37 & 0x8000000000000000) != 0 || !sub_2438B471C(v20, a2))
      {
        goto LABEL_73;
      }

LABEL_70:
      v26 = sub_243964938(a2, v32);
      goto LABEL_36;
    }

    if (v9 != 26)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 96);
    if (v25 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 96), &qword_27ED97020);
      v25 = *(a1 + 96);
    }

    v26 = sub_243969704(a2, v25);
LABEL_36:
    if ((v26 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v9 != 18)
    {
LABEL_34:
      if (!v9)
      {
        v43 = 1;
        goto LABEL_72;
      }

      v26 = sub_243967FF0(a2, v9, v45);
      goto LABEL_36;
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *(a1 + 56);
      v15 = *v13;
      if (v14 < *v13)
      {
        *(a1 + 56) = v14 + 1;
        v16 = *&v13[2 * v14 + 2];
LABEL_44:
        v29 = *a2;
        if (*a2 >= *(a2 + 8) || (v30 = *v29, (v30 & 0x80000000) != 0))
        {
          v30 = sub_243965380(a2);
          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *a2 = v29 + 1;
        }

        v31 = sub_243989C1C(a2, v30);
        v32 = v31;
        if ((v31 & 0x8000000000000000) != 0 || !sub_2438B3ED8(v16, a2))
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

      if (v15 == *(a1 + 60))
      {
LABEL_42:
        sub_243967234(a1 + 48, v15 + 1);
        v13 = *(a1 + 64);
        v15 = *v13;
      }

      *v13 = v15 + 1;
      v16 = sub_2438BEC24(*(a1 + 48));
      v27 = *(a1 + 56);
      v28 = *(a1 + 64) + 8 * v27;
      *(a1 + 56) = v27 + 1;
      *(v28 + 8) = v16;
      goto LABEL_44;
    }

    v15 = *(a1 + 60);
    goto LABEL_42;
  }

  if (v9 != 10)
  {
    goto LABEL_34;
  }

  v21 = *(a1 + 40);
  if (!v21)
  {
    v23 = *(a1 + 36);
    goto LABEL_62;
  }

  v22 = *(a1 + 32);
  v23 = *v21;
  if (v22 >= *v21)
  {
    if (v23 != *(a1 + 36))
    {
LABEL_63:
      *v21 = v23 + 1;
      v24 = sub_2438BEB90(*(a1 + 24));
      v38 = *(a1 + 32);
      v39 = *(a1 + 40) + 8 * v38;
      *(a1 + 32) = v38 + 1;
      *(v39 + 8) = v24;
      goto LABEL_64;
    }

LABEL_62:
    sub_243967234(a1 + 24, v23 + 1);
    v21 = *(a1 + 40);
    v23 = *v21;
    goto LABEL_63;
  }

  *(a1 + 32) = v22 + 1;
  v24 = *&v21[2 * v22 + 2];
LABEL_64:
  v40 = *a2;
  if (*a2 >= *(a2 + 8) || (v41 = *v40, (v41 & 0x80000000) != 0))
  {
    v41 = sub_243965380(a2);
    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    *a2 = v40 + 1;
  }

  v42 = sub_243989C1C(a2, v41);
  v32 = v42;
  if ((v42 & 0x8000000000000000) == 0 && sub_2438B3698(v24, a2))
  {
    goto LABEL_70;
  }

LABEL_73:
  v43 = 0;
LABEL_72:
  sub_243965918(v45);
  sub_2438BF88C(&v47);
  return v43;
}

void sub_2438B5444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B546C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      sub_243969590(2, *(*(a1 + 64) + 8 * j + 8), a2);
    }
  }

  if (*(a1 + 16))
  {
    sub_243969034(3, *(a1 + 96), a2);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    for (k = 0; k != v8; ++k)
    {
      sub_243969590(4, *(*(a1 + 88) + 8 * k + 8), a2);
    }
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v11 = &qword_27ED97020;
  }

  if (v11[23] < 0)
  {
    v11 = *v11;
  }

  if (v10)
  {
    v12 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v12 = &qword_27ED97020;
  }

  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = v12[1];
  }

  return sub_243965944(a2, v11, v13);
}

uint64_t sub_2438B5594(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B3A78(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 56);
  v10 = v6 + v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = sub_2438B42BC(*(*(a1 + 64) + 8 * v11 + 8));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v11;
    }

    while (v9 != v11);
  }

  v13 = *(a1 + 80);
  v14 = v10 + v13;
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = sub_2438B4B1C(*(*(a1 + 88) + 8 * v15 + 8));
      v14 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  if (*(a1 + 16))
  {
    v17 = *(a1 + 96);
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 20) = v14;
  return v14;
}

std::string *sub_2438B5714(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438BFF14(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(&v3[2], *(a2 + 56));
    result = sub_2438BFFD4(v3 + 2, v12, (v11 + 8), v10, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v13 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v10;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v13;
    v14 = v3[2].__r_.__value_.__r.__words[2];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_243967130(&v3[3], *(a2 + 80));
    result = sub_2438C0094(v3 + 3, v17, (v16 + 8), v15, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v18 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v15;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v18;
    v19 = v3[3].__r_.__value_.__r.__words[2];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    data = v3[4].__r_.__value_.__l.__data_;
    v20 = &v3[4];
    result = data;
    LODWORD(v20[-4].__words[2]) |= 1u;
    v22 = *(a2 + 96);
    if (data != v22)
    {
      if (result == &qword_27ED97020)
      {

        return sub_2438BF924(v20, v22);
      }

      else
      {

        return std::string::operator=(result, v22);
      }
    }
  }

  return result;
}

__n128 sub_2438B58E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2[5];
  a2[5] = v2;
  v3 = *(a1 + 64);
  *(a1 + 64) = a2[8];
  a2[8] = v3;
  v4 = *(a1 + 88);
  *(a1 + 88) = a2[11];
  a2[11] = v4;
  v5 = *(a1 + 96);
  *(a1 + 96) = a2[12];
  a2[12] = v5;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  v8 = *(a1 + 32);
  v11 = a2[1];
  v9 = a2 + 1;
  v10 = v11;
  *(a1 + 32) = *(v9 + 6);
  *(v9 + 6) = v8;
  v12 = *(a1 + 36);
  *(a1 + 36) = *(v9 + 7);
  *(v9 + 7) = v12;
  v13 = *(a1 + 56);
  *(a1 + 56) = *(v9 + 12);
  *(v9 + 12) = v13;
  v14 = *(a1 + 60);
  *(a1 + 60) = *(v9 + 13);
  *(v9 + 13) = v14;
  v15 = *(a1 + 80);
  *(a1 + 80) = *(v9 + 18);
  *(v9 + 18) = v15;
  v16 = *(a1 + 84);
  *(a1 + 84) = *(v9 + 19);
  *(v9 + 19) = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = *(v9 + 2);
  *(v9 + 2) = v17;
  if (v6)
  {
    if ((v10 & 1) == 0)
    {
      sub_2438BF7E4(v9);
      v18 = v23;
      v6 = *v7;
      if (*v7)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    v18 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if (v6)
    {
LABEL_6:
      v19 = (v6 & 0xFFFFFFFFFFFFFFFELL);
LABEL_7:
      v20 = v19[1].n128_u64[0];
      result = *v19;
      v22 = *(v18 + 16);
      *v19 = *v18;
      v19[1].n128_u64[0] = v22;
      *v18 = result;
      *(v18 + 16) = v20;
      return result;
    }

LABEL_9:
    sub_2438BF7E4(v7);
    goto LABEL_7;
  }

  if (v10)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_2438B5A34(void *a1)
{
  *a1 = &unk_28569E4C8;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3FA0, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3FA0);
  }

  a1[3] = &qword_27ED97020;
  a1[4] = &qword_27ED97020;
  return a1;
}

void sub_2438B5AC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != &qword_27ED97020 && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v4 = *(a1 + 32);
  if (v4 != &qword_27ED97020 && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }
}

void *sub_2438B5B5C(void *a1)
{
  *a1 = &unk_28569E4C8;
  v2 = a1 + 1;
  sub_2438B5AC0(a1);
  sub_2438BF788(v2);
  return a1;
}

void sub_2438B5BAC(uint64_t *a1)
{
  *a1 = &unk_28569E4C8;
  v2 = a1 + 1;
  sub_2438B5AC0(a1);
  sub_2438BF788(v2);

  operator delete(a1);
}

void sub_2438B5C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24);
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {
    sub_2438BFCC0(v4);
  }
}

uint64_t sub_2438B5C80(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v18 = (a1 + 8);
  v19 = 0uLL;
  v20 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v20 = *(v5 + 16);
    v19 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v17, &v19);
  sub_2439657D8(v16, v17, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = (v7 + 1);
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v9 >> 3 != 2)
    {
      break;
    }

    if (v9 != 18)
    {
      goto LABEL_23;
    }

    *(a1 + 16) |= 2u;
    v12 = *(a1 + 32);
    if (v12 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 32), &qword_27ED97020);
      v12 = *(a1 + 32);
    }

LABEL_18:
    v13 = sub_243969704(a2, v12);
LABEL_25:
    if (!v13)
    {
      v14 = 0;
      goto LABEL_28;
    }
  }

  if (v9 >> 3 == 1 && v9 == 10)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 24);
    if (v12 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 24), &qword_27ED97020);
      v12 = *(a1 + 24);
    }

    goto LABEL_18;
  }

LABEL_23:
  if (v9)
  {
    v13 = sub_243967FF0(a2, v9, v16);
    goto LABEL_25;
  }

  v14 = 1;
LABEL_28:
  sub_243965918(v16);
  sub_2438BF88C(&v18);
  return v14;
}

void sub_2438B5E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B5E4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969034(1, *(a1 + 24), a2);
  }

  if ((v4 & 2) != 0)
  {
    sub_243969034(2, *(a1 + 32), a2);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B5EF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a1 + 24);
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438B5FB8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = v3 + 1;
      data = v3[1].__r_.__value_.__l.__data_;
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v7 = *(a2 + 24);
      if (data != v7)
      {
        if (data == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v7);
          if ((v5 & 2) == 0)
          {
            return result;
          }

          goto LABEL_9;
        }

        result = std::string::operator=(data, v7);
      }
    }

    if ((v5 & 2) == 0)
    {
      return result;
    }

LABEL_9:
    size = v3[1].__r_.__value_.__l.__size_;
    p_size = &v3[1].__r_.__value_.__l.__size_;
    result = size;
    *(p_size - 4) |= 2u;
    v10 = *(a2 + 32);
    if (size != v10)
    {
      if (result == &qword_27ED97020)
      {

        return sub_2438BF924(p_size, v10);
      }

      else
      {

        return std::string::operator=(result, v10);
      }
    }
  }

  return result;
}

uint64_t sub_2438B60D4(uint64_t a1)
{
  *a1 = &unk_28569E568;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (atomic_load_explicit(dword_281AF4078, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF4078);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_2438B615C(_Unwind_Exception *a1)
{
  sub_2438BFD08((v1 + 72));
  sub_2438C0154(v3);
  sub_2438AD72C(v1 + 24);
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B6194(uint64_t a1)
{
  *a1 = &unk_28569E568;
  sub_2438BFD08((a1 + 72));
  sub_2438C0154((a1 + 48));
  if (*(a1 + 28) >= 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438B6214(uint64_t a1)
{
  v1 = sub_2438B6194(a1);

  operator delete(v1);
}

void sub_2438B623C(uint64_t a1)
{
  *(a1 + 24) = 0;
  sub_2438BFC18(a1 + 48);
  v2 = *(a1 + 80);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 88) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B5C0C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 80) = 0;
  }

  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438B62D8(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v60 = (a1 + 8);
  v61 = 0uLL;
  v62 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v62 = *(v5 + 16);
    v61 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v59, &v61);
  sub_2439657D8(&v56, v59, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        v7 = *a2;
        if (*a2 >= a2[1])
        {
          v8 = 0;
        }

        else
        {
          v8 = *v7;
          if (*v7 >= 1)
          {
            *a2 = (v7 + 1);
            v9 = v8 | 0x100000000;
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          }
        }

        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_10:
        v11 = v9 >> 3;
        if (v9 >> 3 > 3)
        {
          break;
        }

        if (v11 != 1)
        {
          if (v11 != 2)
          {
            if (v11 != 3 || v9 != 26)
            {
              goto LABEL_52;
            }

            v15 = *(a1 + 64);
            if (v15)
            {
              v16 = *(a1 + 56);
              v17 = *v15;
              if (v16 < *v15)
              {
                *(a1 + 56) = v16 + 1;
                v18 = *&v15[2 * v16 + 2];
LABEL_77:
                v29 = sub_243969704(a2, v18);
                goto LABEL_54;
              }

              if (v17 != *(a1 + 60))
              {
LABEL_61:
                *v15 = v17 + 1;
                v30 = *(a1 + 48);
                if (v30)
                {
                  if (*(v30 + 112))
                  {
                    sub_243961E70(*(a1 + 48), &unk_28569EFD0, 24);
                  }

                  v18 = sub_243961B18(v30, 0x18uLL, sub_2438BFB5C);
                }

                else
                {
                  v18 = operator new(0x18uLL);
                }

                v18->__r_.__value_.__r.__words[0] = 0;
                v18->__r_.__value_.__l.__size_ = 0;
                v18->__r_.__value_.__r.__words[2] = 0;
                v37 = *(a1 + 56);
                v38 = *(a1 + 64) + 8 * v37;
                *(a1 + 56) = v37 + 1;
                *(v38 + 8) = v18;
                goto LABEL_77;
              }
            }

            else
            {
              v17 = *(a1 + 60);
            }

            sub_243967234(a1 + 48, v17 + 1);
            v15 = *(a1 + 64);
            v17 = *v15;
            goto LABEL_61;
          }

          if (v9 == 16)
          {
            v29 = sub_2439894CC(1, 0x12u, a2, (a1 + 24));
            goto LABEL_54;
          }

          if (v9 != 18)
          {
LABEL_52:
            if (!v9)
            {
              v54 = 1;
              goto LABEL_115;
            }

            v29 = sub_243967FF0(a2, v9, &v56);
LABEL_54:
            if (v29)
            {
              continue;
            }

            goto LABEL_116;
          }

          v27 = *a2;
          if (*a2 >= a2[1] || (v28 = *v27, (v28 & 0x80000000) != 0))
          {
            v28 = sub_243965380(a2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_116;
            }
          }

          else
          {
            *a2 = (v27 + 1);
          }

          v39 = sub_243989BA4(a2, v28);
          while (1)
          {
            if (sub_243964994(a2) < 1)
            {
              sub_2439648F0(a2, v39);
              goto LABEL_4;
            }

            v40 = *a2;
            if (*a2 >= a2[1])
            {
              v41 = 0;
            }

            else
            {
              v41 = *v40;
              if ((*v40 & 0x80000000) == 0)
              {
                *a2 = (v40 + 1);
                goto LABEL_86;
              }
            }

            v42 = sub_24396529C(a2, v41);
            v41 = v42;
            if (v42 < 0)
            {
              goto LABEL_116;
            }

LABEL_86:
            v43 = *(a1 + 24);
            if (v43 == *(a1 + 28))
            {
              sub_2438C01D4((a1 + 24), v43 + 1);
              v43 = *(a1 + 24);
            }

            v44 = *(a1 + 32) + 4 * v43;
            *(a1 + 24) = v43 + 1;
            *(v44 + 8) = v41;
          }
        }

        if (v9 != 8)
        {
          goto LABEL_52;
        }

        v23 = *a2;
        if (*a2 >= a2[1])
        {
          LODWORD(v24) = 0;
        }

        else
        {
          LODWORD(v24) = *v23;
          if ((*v23 & 0x80000000) == 0)
          {
            *a2 = (v23 + 1);
            goto LABEL_92;
          }
        }

        v24 = sub_24396529C(a2, v24);
        if (v24 < 0)
        {
          goto LABEL_116;
        }

LABEL_92:
        if (v24 > 0x12)
        {
          if (v58 < 5)
          {
            sub_243965B70(&v56, 8u);
            v45 = v58;
          }

          else
          {
            *v57++ = 8;
            v45 = --v58;
          }

          if (v45 < 5)
          {
            sub_243965B70(&v56, v24);
          }

          else
          {
            v46 = v57;
            if (v24 < 0x80)
            {
              LOBYTE(v48) = v24;
              v47 = v57;
            }

            else
            {
              v47 = v57;
              do
              {
                *v47++ = v24 | 0x80;
                v48 = v24 >> 7;
                v49 = v24 >> 14;
                LODWORD(v24) = v24 >> 7;
              }

              while (v49);
            }

            *v47 = v48;
            v50 = v47 - v46 + 1;
            v57 += v50;
            v58 -= v50;
          }
        }

        else
        {
          *(a1 + 16) |= 1u;
          *(a1 + 96) = v24;
        }
      }

      if (v9 >> 3 > 5)
      {
        break;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v12 = *a2;
        if (*a2 >= a2[1])
        {
          v25 = 0;
        }

        else
        {
          v25 = *v12;
          if ((*v12 & 0x80000000) == 0)
          {
            *(a1 + 100) = v25;
            goto LABEL_46;
          }
        }

        v51 = sub_24396529C(a2, v25);
        *(a1 + 100) = v51;
        if (v51 < 0)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 4u;
        v12 = *a2;
        if (*a2 >= a2[1])
        {
          v13 = 0;
        }

        else
        {
          v13 = *v12;
          if ((*v12 & 0x80000000) == 0)
          {
            *(a1 + 104) = v13;
LABEL_46:
            *a2 = (v12 + 1);
            goto LABEL_4;
          }
        }

        v53 = sub_24396529C(a2, v13);
        *(a1 + 104) = v53;
        if (v53 < 0)
        {
          goto LABEL_116;
        }
      }
    }

    if (v11 != 6)
    {
      break;
    }

    if (v9 != 48)
    {
      goto LABEL_52;
    }

    *(a1 + 16) |= 8u;
    v12 = *a2;
    if (*a2 >= a2[1])
    {
      v26 = 0;
    }

    else
    {
      v26 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        *(a1 + 108) = v26;
        goto LABEL_46;
      }
    }

    v52 = sub_24396529C(a2, v26);
    *(a1 + 108) = v52;
    if (v52 < 0)
    {
      goto LABEL_116;
    }
  }

  if (v11 != 7 || v9 != 58)
  {
    goto LABEL_52;
  }

  v19 = *(a1 + 88);
  if (!v19)
  {
    v21 = *(a1 + 84);
    goto LABEL_66;
  }

  v20 = *(a1 + 80);
  v21 = *v19;
  if (v20 >= *v19)
  {
    if (v21 != *(a1 + 84))
    {
LABEL_67:
      *v19 = v21 + 1;
      v22 = sub_2438BEDE0(*(a1 + 72));
      v31 = *(a1 + 80);
      v32 = *(a1 + 88) + 8 * v31;
      *(a1 + 80) = v31 + 1;
      *(v32 + 8) = v22;
      goto LABEL_68;
    }

LABEL_66:
    sub_243967234(a1 + 72, v21 + 1);
    v19 = *(a1 + 88);
    v21 = *v19;
    goto LABEL_67;
  }

  *(a1 + 80) = v20 + 1;
  v22 = *&v19[2 * v20 + 2];
LABEL_68:
  v33 = *a2;
  if (*a2 >= a2[1] || (v34 = *v33, (v34 & 0x80000000) != 0))
  {
    v34 = sub_243965380(a2);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    *a2 = (v33 + 1);
LABEL_72:
    v35 = sub_243989C1C(a2, v34);
    v36 = v35;
    if ((v35 & 0x8000000000000000) == 0 && sub_2438B5C80(v22, a2))
    {
      v29 = sub_243964938(a2, v36);
      goto LABEL_54;
    }
  }

LABEL_116:
  v54 = 0;
LABEL_115:
  sub_243965918(&v56);
  sub_2438BF88C(&v60);
  return v54;
}

void sub_2438B6920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B6950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968670(1, *(a1 + 96), a2);
  }

  if (*(a1 + 24) >= 1)
  {
    if (*(a2 + 16) < 5)
    {
      sub_243965B70(a2, 0x12u);
      v5 = *(a2 + 16);
    }

    else
    {
      *(*(a2 + 8))++ = 18;
      v5 = *(a2 + 16) - 1;
      *(a2 + 16) = v5;
    }

    v6 = *(a1 + 40);
    if (v5 < 5)
    {
      sub_243965B70(a2, v6);
    }

    else
    {
      v7 = *(a2 + 8);
      if (v6 < 0x80)
      {
        v9 = *(a1 + 40);
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = *(a2 + 8);
        do
        {
          *v8++ = v6 | 0x80;
          v9 = v6 >> 7;
          v10 = v6 >> 14;
          v6 >>= 7;
        }

        while (v10);
      }

      *v8 = v9;
      v11 = v8 - v7 + 1;
      *(a2 + 8) += v11;
      *(a2 + 16) -= v11;
    }

    v12 = *(a1 + 24);
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = *(*(a1 + 32) + 4 * i + 8);
        if (*(a2 + 16) < 5)
        {
          sub_243965B70(a2, v14);
        }

        else
        {
          v15 = *(a2 + 8);
          if (v14 < 0x80)
          {
            v17 = *(*(a1 + 32) + 4 * i + 8);
            v16 = *(a2 + 8);
          }

          else
          {
            v16 = *(a2 + 8);
            do
            {
              *v16++ = v14 | 0x80;
              v17 = v14 >> 7;
              v18 = v14 >> 14;
              v14 >>= 7;
            }

            while (v18);
          }

          *v16 = v17;
          v19 = v16 - v15 + 1;
          *(a2 + 8) += v19;
          *(a2 + 16) -= v19;
        }
      }
    }
  }

  v20 = *(a1 + 56);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      sub_243968E78(3, *(*(a1 + 64) + v21), a2);
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  if ((v4 & 2) != 0)
  {
    sub_243968790(4, *(a1 + 100), a2);
    if ((v4 & 4) == 0)
    {
LABEL_31:
      if ((v4 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_31;
  }

  sub_243968790(5, *(a1 + 104), a2);
  if ((v4 & 8) != 0)
  {
LABEL_32:
    sub_243968790(6, *(a1 + 108), a2);
  }

LABEL_33:
  v22 = *(a1 + 80);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      sub_243969590(7, *(*(a1 + 88) + 8 * j + 8), a2);
    }
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = (v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v25 = &qword_27ED97020;
  }

  if (v25[23] < 0)
  {
    v25 = *v25;
  }

  if (v24)
  {
    v26 = (v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v26 = &qword_27ED97020;
  }

  v27 = *(v26 + 23);
  if (v27 < 0)
  {
    v27 = v26[1];
  }

  return sub_243965944(a2, v25, v27);
}

uint64_t sub_2438B6BF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = sub_2439697F0((a1 + 24));
  v6 = 11;
  v7 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v6 = v7;
  }

  v8 = v6 + v4;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (!v5)
  {
    v8 = v4;
  }

  *(a1 + 40) = v9;
  v10 = *(a1 + 56);
  v11 = v8 + v5 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 64) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 80);
  v17 = v11 + v16;
  if (v16)
  {
    v18 = 0;
    do
    {
      v19 = sub_2438B5EF8(*(*(a1 + 88) + 8 * v18 + 8));
      v17 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      ++v18;
    }

    while (v16 != v18);
  }

  v20 = *(a1 + 16);
  if ((v20 & 0xF) == 0)
  {
    goto LABEL_27;
  }

  if (v20)
  {
    v22 = *(a1 + 96);
    v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v22 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 11;
    }

    v17 += v24;
    if ((v20 & 2) == 0)
    {
LABEL_24:
      if ((v20 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      v17 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v20 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_24;
  }

  v17 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v20 & 4) != 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  if ((v20 & 8) != 0)
  {
LABEL_26:
    v17 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_27:
  *(a1 + 20) = v17;
  return v17;
}

uint64_t *sub_2438B6DFC(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(result + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v3 + 6);
    sub_2438C01D4(v3 + 6, v6 + v5);
    v7 = v3[4] + 4 * v6;
    *(v3 + 6) += *(a2 + 24);
    result = memcpy((v7 + 8), (*(a2 + 32) + 8), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = sub_243967130((v3 + 6), *(a2 + 56));
    result = sub_2438C0300(v3 + 2, v10, (v9 + 8), v8, *v3[8] - *(v3 + 14));
    v11 = *(v3 + 14) + v8;
    *(v3 + 14) = v11;
    v12 = v3[8];
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    v14 = *(a2 + 88);
    v15 = sub_243967130((v3 + 9), *(a2 + 80));
    result = sub_2438C0404(v3 + 3, v15, (v14 + 8), v13, *v3[11] - *(v3 + 20));
    v16 = *(v3 + 20) + v13;
    *(v3 + 20) = v16;
    v17 = v3[11];
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 16);
  if ((v18 & 0xF) != 0)
  {
    if (v18)
    {
      *(v3 + 24) = *(a2 + 96);
      if ((v18 & 2) == 0)
      {
LABEL_14:
        if ((v18 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_14;
    }

    *(v3 + 25) = *(a2 + 100);
    if ((v18 & 4) == 0)
    {
LABEL_15:
      if ((v18 & 8) == 0)
      {
LABEL_17:
        *(v3 + 4) |= v18;
        return result;
      }

LABEL_16:
      *(v3 + 27) = *(a2 + 108);
      goto LABEL_17;
    }

LABEL_21:
    *(v3 + 26) = *(a2 + 104);
    if ((v18 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t *sub_2438B6F98(uint64_t *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B623C(result);

    return sub_2438B6DFC(v4, a2);
  }

  return result;
}

uint64_t sub_2438B6FFC(uint64_t a1)
{
  *a1 = &unk_28569E608;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF3DE8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3DE8);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

void sub_2438B7088(_Unwind_Exception *a1)
{
  sub_2438C0154(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B70AC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569E608;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(a1 + 24, *(a2 + 32));
    sub_2438C0300((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_2438BFC64(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v12;
  *(a1 + 48) = v11;
  return a1;
}

void sub_2438B71A0(_Unwind_Exception *a1)
{
  sub_2438C0154((v2 + 24));
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B71CC(void *a1)
{
  *a1 = &unk_28569E608;
  sub_2438C0154(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B7220(void *a1)
{
  v1 = sub_2438B71CC(a1);

  operator delete(v1);
}

void sub_2438B7248(uint64_t a1)
{
  sub_2438BFC18(a1 + 24);
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 48) = 0u;
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    sub_2438BFCC0(v2);
  }
}

uint64_t sub_2438B72B4(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v34 = (a1 + 8);
  v35 = 0uLL;
  v36 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v36 = *(v5 + 16);
    v35 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v33, &v35);
  sub_2439657D8(v32, v33, 0);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = *a2;
            if (*a2 >= a2[1])
            {
              v8 = 0;
            }

            else
            {
              v8 = *v7;
              if (*v7 >= 1)
              {
                *a2 = (v7 + 1);
                v9 = v8 | 0x100000000;
                if ((v9 & 0x100000000) == 0)
                {
                  goto LABEL_51;
                }

                goto LABEL_10;
              }
            }

            v10 = sub_2439655D8(a2, v8);
            v9 = v10 | ((v10 - 1 < 0x7F) << 32);
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_51;
            }

LABEL_10:
            v11 = v9 >> 3;
            if (v9 >> 3 <= 3)
            {
              break;
            }

            if (v9 >> 3 > 5)
            {
              if (v11 == 6)
              {
                if (v9 != 48)
                {
                  goto LABEL_51;
                }

                *(a1 + 16) |= 0x20u;
                v12 = *a2;
                if (*a2 < a2[1] && (*v12 & 0x80000000) == 0)
                {
                  v13 = *v12;
                  v14 = (a1 + 88);
                  goto LABEL_50;
                }

                *(a1 + 88) = sub_2439650E0(a2);
                if ((v24 & 1) == 0)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (v11 != 7 || v9 != 58)
                {
                  goto LABEL_51;
                }

                v16 = *(a1 + 40);
                if (!v16)
                {
                  v18 = *(a1 + 36);
                  goto LABEL_69;
                }

                v17 = *(a1 + 32);
                v18 = *v16;
                if (v17 >= *v16)
                {
                  if (v18 == *(a1 + 36))
                  {
LABEL_69:
                    sub_243967234(a1 + 24, v18 + 1);
                    v16 = *(a1 + 40);
                    v18 = *v16;
                  }

                  *v16 = v18 + 1;
                  v27 = *(a1 + 24);
                  if (v27)
                  {
                    if (*(v27 + 112))
                    {
                      sub_243961E70(*(a1 + 24), &unk_28569EFD0, 24);
                    }

                    v19 = sub_243961B18(v27, 0x18uLL, sub_2438BFB5C);
                  }

                  else
                  {
                    v19 = operator new(0x18uLL);
                  }

                  v19->__r_.__value_.__r.__words[0] = 0;
                  v19->__r_.__value_.__l.__size_ = 0;
                  v19->__r_.__value_.__r.__words[2] = 0;
                  v28 = *(a1 + 32);
                  v29 = *(a1 + 40) + 8 * v28;
                  *(a1 + 32) = v28 + 1;
                  *(v29 + 8) = v19;
                  goto LABEL_76;
                }

                *(a1 + 32) = v17 + 1;
                v19 = *&v16[2 * v17 + 2];
LABEL_76:
                v20 = sub_243969704(a2, v19);
LABEL_53:
                if (!v20)
                {
                  goto LABEL_79;
                }
              }
            }

            else if (v11 == 4)
            {
              if (v9 != 32)
              {
                goto LABEL_51;
              }

              *(a1 + 16) |= 8u;
              v12 = *a2;
              if (*a2 < a2[1] && (*v12 & 0x80000000) == 0)
              {
                v13 = *v12;
                v14 = (a1 + 72);
                goto LABEL_50;
              }

              *(a1 + 72) = sub_2439650E0(a2);
              if ((v23 & 1) == 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              if (v11 != 5 || v9 != 40)
              {
                goto LABEL_51;
              }

              *(a1 + 16) |= 0x10u;
              v12 = *a2;
              if (*a2 < a2[1] && (*v12 & 0x80000000) == 0)
              {
                v13 = *v12;
                v14 = (a1 + 80);
                goto LABEL_50;
              }

              *(a1 + 80) = sub_2439650E0(a2);
              if ((v25 & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          if (v11 != 1)
          {
            break;
          }

          if (v9 != 8)
          {
            goto LABEL_51;
          }

          *(a1 + 16) |= 1u;
          v12 = *a2;
          if (*a2 < a2[1] && (*v12 & 0x80000000) == 0)
          {
            v13 = *v12;
            v14 = (a1 + 48);
            goto LABEL_50;
          }

          *(a1 + 48) = sub_2439650E0(a2);
          if ((v21 & 1) == 0)
          {
            goto LABEL_79;
          }
        }

        if (v11 == 2)
        {
          break;
        }

        if (v11 != 3 || v9 != 24)
        {
LABEL_51:
          if (!v9)
          {
            v30 = 1;
            goto LABEL_78;
          }

          v20 = sub_243967FF0(a2, v9, v32);
          goto LABEL_53;
        }

        *(a1 + 16) |= 4u;
        v12 = *a2;
        if (*a2 < a2[1] && (*v12 & 0x80000000) == 0)
        {
          v13 = *v12;
          v14 = (a1 + 64);
          goto LABEL_50;
        }

        *(a1 + 64) = sub_2439650E0(a2);
        if ((v22 & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      if (v9 != 16)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 2u;
      v12 = *a2;
      if (*a2 >= a2[1] || *v12 < 0)
      {
        break;
      }

      v13 = *v12;
      v14 = (a1 + 56);
LABEL_50:
      *v14 = v13;
      *a2 = (v12 + 1);
    }

    *(a1 + 56) = sub_2439650E0(a2);
  }

  while ((v26 & 1) != 0);
LABEL_79:
  v30 = 0;
LABEL_78:
  sub_243965918(v32);
  sub_2438BF88C(&v34);
  return v30;
}

void sub_2438B7700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B7728(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2439688B0(1, *(a1 + 48), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_2439688B0(2, *(a1 + 56), a2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_2439688B0(3, *(a1 + 64), a2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_2439688B0(4, *(a1 + 72), a2);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_28:
  sub_2439688B0(5, *(a1 + 80), a2);
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    sub_2439688B0(6, *(a1 + 88), a2);
  }

LABEL_8:
  v5 = *(a1 + 32);
  if (v5 >= 1)
  {
    v6 = 8;
    do
    {
      sub_243969204(7, *(*(a1 + 40) + v6), a2);
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  if (v8[23] < 0)
  {
    v8 = *v8;
  }

  if (v7)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = &qword_27ED97020;
  }

  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v10 = v9[1];
  }

  return sub_243965944(a2, v8, v10);
}

uint64_t sub_2438B786C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
  if (v4 >= 1)
  {
    v6 = (*(a1 + 40) + 8);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      --v4;
    }

    while (v4);
  }

  v10 = *(a1 + 16);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    v5 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_13:
      if ((v10 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_13;
  }

  v5 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_15:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    v5 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_22:
  v5 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v10 & 0x20) != 0)
  {
LABEL_17:
    v5 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_2438B79F4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438C0300(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v10;
        return result;
      }

LABEL_13:
      v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
      goto LABEL_14;
    }

LABEL_20:
    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

std::string *sub_2438B7B08(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B7248(result);

    return sub_2438B79F4(v4, a2);
  }

  return result;
}

void *sub_2438B7B6C(void *a1)
{
  *a1 = &unk_28569E6A8;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3E48, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E48);
  }

  a1[3] = &qword_27ED97020;
  a1[4] = &qword_27ED97020;
  return a1;
}

void *sub_2438B7BF8(void *a1)
{
  *a1 = &unk_28569E6A8;
  v2 = a1 + 1;
  sub_2438B5AC0(a1);
  sub_2438BF788(v2);
  return a1;
}

void sub_2438B7C48(uint64_t *a1)
{
  *a1 = &unk_28569E6A8;
  v2 = a1 + 1;
  sub_2438B5AC0(a1);
  sub_2438BF788(v2);

  operator delete(a1);
}

void sub_2438B7CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24);
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {
    sub_2438BFCC0(v4);
  }
}

uint64_t sub_2438B7D1C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v18 = (a1 + 8);
  v19 = 0uLL;
  v20 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v20 = *(v5 + 16);
    v19 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v17, &v19);
  sub_2439657D8(v16, v17, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = (v7 + 1);
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v9 >> 3 != 2)
    {
      break;
    }

    if (v9 != 18)
    {
      goto LABEL_23;
    }

    *(a1 + 16) |= 2u;
    v12 = *(a1 + 32);
    if (v12 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 32), &qword_27ED97020);
      v12 = *(a1 + 32);
    }

LABEL_18:
    v13 = sub_243969704(a2, v12);
LABEL_25:
    if (!v13)
    {
      v14 = 0;
      goto LABEL_28;
    }
  }

  if (v9 >> 3 == 1 && v9 == 10)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 24);
    if (v12 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 24), &qword_27ED97020);
      v12 = *(a1 + 24);
    }

    goto LABEL_18;
  }

LABEL_23:
  if (v9)
  {
    v13 = sub_243967FF0(a2, v9, v16);
    goto LABEL_25;
  }

  v14 = 1;
LABEL_28:
  sub_243965918(v16);
  sub_2438BF88C(&v18);
  return v14;
}

void sub_2438B7EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B7EE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969034(1, *(a1 + 24), a2);
  }

  if ((v4 & 2) != 0)
  {
    sub_2439693C0(2, *(a1 + 32), a2);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B7F94(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a1 + 24);
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_2438B806C(uint64_t a1)
{
  *a1 = &unk_28569E748;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF3E60, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E60);
  }

  return a1;
}

void sub_2438B80EC(_Unwind_Exception *a1)
{
  sub_2438BFD08(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B810C(void *a1)
{
  *a1 = &unk_28569E748;
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B8160(void *a1)
{
  v1 = sub_2438B810C(a1);

  operator delete(v1);
}

void sub_2438B8188(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B0538(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438B8208(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v27 = (a1 + 8);
  v28 = 0uLL;
  v29 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v29 = *(v5 + 16);
    v28 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v26, &v28);
  sub_2439657D8(v25, v26, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      break;
    }

LABEL_10:
    if (v9 != 10 || (v9 & 0xFFFFFFF8) != 8)
    {
      break;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      v15 = *(a1 + 36);
LABEL_21:
      sub_243967234(a1 + 24, v15 + 1);
      v13 = *(a1 + 40);
      v15 = *v13;
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    v15 = *v13;
    if (v14 < *v13)
    {
      *(a1 + 32) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
      goto LABEL_23;
    }

    if (v15 == *(a1 + 36))
    {
      goto LABEL_21;
    }

LABEL_22:
    *v13 = v15 + 1;
    v16 = sub_2438BE8AC(*(a1 + 24));
    v17 = *(a1 + 32);
    v18 = *(a1 + 40) + 8 * v17;
    *(a1 + 32) = v17 + 1;
    *(v18 + 8) = v16;
LABEL_23:
    v19 = *a2;
    if (*a2 >= *(a2 + 8) || (v20 = *v19, (v20 & 0x80000000) != 0))
    {
      v20 = sub_243965380(a2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a2 = v19 + 1;
    }

    v21 = sub_243989C1C(a2, v20);
    v22 = v21;
    if ((v21 & 0x8000000000000000) != 0 || !sub_2438B0648(v16, a2))
    {
LABEL_31:
      v23 = 0;
      goto LABEL_33;
    }

    v12 = sub_243964938(a2, v22);
LABEL_30:
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v9)
  {
    v12 = sub_243967FF0(a2, v9, v25);
    goto LABEL_30;
  }

  v23 = 1;
LABEL_33:
  sub_243965918(v25);
  sub_2438BF88C(&v27);
  return v23;
}

void sub_2438B8408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B8430(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  if (v6)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = v8[1];
  }

  return sub_243965944(a2, v7, v9);
}

uint64_t sub_2438B84E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B0F9C(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_2438B8584(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], v5);
    result = sub_2438C04C4(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t sub_2438B8638(uint64_t a1)
{
  *a1 = &unk_28569E7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF3FF8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3FF8);
  }

  return a1;
}

void sub_2438B86B8(_Unwind_Exception *a1)
{
  sub_2438BFD08(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B86DC(void *a1)
{
  *a1 = &unk_28569E7E8;
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B8730(void *a1)
{
  v1 = sub_2438B86DC(a1);

  operator delete(v1);
}

void sub_2438B8758(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B8188(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438B87D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v27 = (a1 + 8);
  v28 = 0uLL;
  v29 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v29 = *(v5 + 16);
    v28 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v26, &v28);
  sub_2439657D8(v25, v26, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      break;
    }

LABEL_10:
    if (v9 != 10 || (v9 & 0xFFFFFFF8) != 8)
    {
      break;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      v15 = *(a1 + 36);
LABEL_21:
      sub_243967234(a1 + 24, v15 + 1);
      v13 = *(a1 + 40);
      v15 = *v13;
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    v15 = *v13;
    if (v14 < *v13)
    {
      *(a1 + 32) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
      goto LABEL_23;
    }

    if (v15 == *(a1 + 36))
    {
      goto LABEL_21;
    }

LABEL_22:
    *v13 = v15 + 1;
    v16 = sub_2438BF030(*(a1 + 24));
    v17 = *(a1 + 32);
    v18 = *(a1 + 40) + 8 * v17;
    *(a1 + 32) = v17 + 1;
    *(v18 + 8) = v16;
LABEL_23:
    v19 = *a2;
    if (*a2 >= *(a2 + 8) || (v20 = *v19, (v20 & 0x80000000) != 0))
    {
      v20 = sub_243965380(a2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a2 = v19 + 1;
    }

    v21 = sub_243989C1C(a2, v20);
    v22 = v21;
    if ((v21 & 0x8000000000000000) != 0 || !sub_2438B8208(v16, a2))
    {
LABEL_31:
      v23 = 0;
      goto LABEL_33;
    }

    v12 = sub_243964938(a2, v22);
LABEL_30:
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v9)
  {
    v12 = sub_243967FF0(a2, v9, v25);
    goto LABEL_30;
  }

  v23 = 1;
LABEL_33:
  sub_243965918(v25);
  sub_2438BF88C(&v27);
  return v23;
}

void sub_2438B89D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B8A00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  if (v6)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = v8[1];
  }

  return sub_243965944(a2, v7, v9);
}

uint64_t sub_2438B8AB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B84E0(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_2438B8B54(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], v5);
    result = sub_2438C0584(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t sub_2438B8C08(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_28569E888;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (atomic_load_explicit(dword_281AF4010, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF4010);
  }

  *(a1 + 72) = &qword_27ED97020;
  return a1;
}

void sub_2438B8C98(_Unwind_Exception *a1)
{
  sub_2438AD72C(v2 + 48);
  sub_2438C0154(v3);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B8CC0(uint64_t a1)
{
  *a1 = &unk_28569E888;
  sub_2438B8D38(a1);
  if (*(a1 + 52) >= 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  sub_2438C0154((a1 + 24));
  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438B8D38(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 != &qword_27ED97020 && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

void sub_2438B8DA0(uint64_t a1)
{
  v1 = sub_2438B8CC0(a1);

  operator delete(v1);
}

void sub_2438B8DC8(uint64_t a1)
{
  sub_2438BFC18(a1 + 24);
  *(a1 + 48) = 0;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 72);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    sub_2438BFCC0(v3);
  }
}

uint64_t sub_2438B8E4C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v33 = (a1 + 8);
  v34 = 0uLL;
  v35 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v35 = *(v5 + 16);
    v34 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v32, &v34);
  sub_2439657D8(v31, v32, 0);
LABEL_4:
  while (2)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
LABEL_9:
      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_10;
    }

    v8 = *v7;
    if (*v7 < 1)
    {
      goto LABEL_9;
    }

    *a2 = (v7 + 1);
    v9 = v8 | 0x100000000;
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_10:
    v11 = v9 >> 3;
    if (v9 >> 3 != 3)
    {
      if (v11 != 2)
      {
        if (v11 != 1 || v9 != 10)
        {
          goto LABEL_29;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 72);
        if (v13 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 72), &qword_27ED97020);
          v13 = *(a1 + 72);
        }

LABEL_19:
        v14 = sub_243969704(a2, v13);
        goto LABEL_31;
      }

      if (v9 != 18)
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = *(a1 + 32);
        v17 = *v15;
        if (v16 < *v15)
        {
          *(a1 + 32) = v16 + 1;
          v13 = *&v15[2 * v16 + 2];
          goto LABEL_19;
        }

        if (v17 != *(a1 + 36))
        {
LABEL_37:
          *v15 = v17 + 1;
          v20 = *(a1 + 24);
          if (v20)
          {
            if (*(v20 + 112))
            {
              sub_243961E70(*(a1 + 24), &unk_28569EFD0, 24);
            }

            v13 = sub_243961B18(v20, 0x18uLL, sub_2438BFB5C);
          }

          else
          {
            v13 = operator new(0x18uLL);
          }

          v13->__r_.__value_.__r.__words[0] = 0;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v21 = *(a1 + 32);
          v22 = *(a1 + 40) + 8 * v21;
          *(a1 + 32) = v21 + 1;
          *(v22 + 8) = v13;
          goto LABEL_19;
        }
      }

      else
      {
        v17 = *(a1 + 36);
      }

      sub_243967234(a1 + 24, v17 + 1);
      v15 = *(a1 + 40);
      v17 = *v15;
      goto LABEL_37;
    }

    if (v9 == 24)
    {
      v14 = sub_2439894CC(1, 0x1Au, a2, (a1 + 48));
LABEL_31:
      if (v14)
      {
        continue;
      }

      goto LABEL_57;
    }

    break;
  }

  if (v9 == 26)
  {
    v18 = *a2;
    if (*a2 >= a2[1] || (v19 = *v18, (v19 & 0x80000000) != 0))
    {
      v19 = sub_243965380(a2);
      if ((v19 & 0x80000000) != 0)
      {
LABEL_57:
        v29 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      *a2 = (v18 + 1);
    }

    v23 = sub_243989BA4(a2, v19);
    while (1)
    {
      if (sub_243964994(a2) < 1)
      {
        sub_2439648F0(a2, v23);
        goto LABEL_4;
      }

      v24 = *a2;
      if (*a2 >= a2[1])
      {
        v25 = 0;
      }

      else
      {
        v25 = *v24;
        if ((*v24 & 0x80000000) == 0)
        {
          *a2 = (v24 + 1);
          goto LABEL_51;
        }
      }

      v26 = sub_24396529C(a2, v25);
      v25 = v26;
      if (v26 < 0)
      {
        goto LABEL_57;
      }

LABEL_51:
      v27 = *(a1 + 48);
      if (v27 == *(a1 + 52))
      {
        sub_2438C01D4((a1 + 48), v27 + 1);
        v27 = *(a1 + 48);
      }

      v28 = *(a1 + 56) + 4 * v27;
      *(a1 + 48) = v27 + 1;
      *(v28 + 8) = v25;
    }
  }

LABEL_29:
  if (v9)
  {
    v14 = sub_243967FF0(a2, v9, v31);
    goto LABEL_31;
  }

  v29 = 1;
LABEL_56:
  sub_243965918(v31);
  sub_2438BF88C(&v33);
  return v29;
}

void sub_2438B91AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B91D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    sub_243969034(1, *(a1 + 72), a2);
  }

  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = 8;
    do
    {
      sub_243968E78(2, *(*(a1 + 40) + v5), a2);
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  if (*(a1 + 48) > 0)
  {
    if (*(a2 + 16) < 5)
    {
      sub_243965B70(a2, 0x1Au);
      v6 = *(a2 + 16);
    }

    else
    {
      *(*(a2 + 8))++ = 26;
      v6 = *(a2 + 16) - 1;
      *(a2 + 16) = v6;
    }

    v7 = *(a1 + 64);
    if (v6 < 5)
    {
      sub_243965B70(a2, v7);
    }

    else
    {
      v8 = *(a2 + 8);
      if (v7 < 0x80)
      {
        v10 = *(a1 + 64);
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
        do
        {
          *v9++ = v7 | 0x80;
          v10 = v7 >> 7;
          v11 = v7 >> 14;
          v7 >>= 7;
        }

        while (v11);
      }

      *v9 = v10;
      v12 = v9 - v8 + 1;
      *(a2 + 8) += v12;
      *(a2 + 16) -= v12;
    }

    v13 = *(a1 + 48);
    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = *(*(a1 + 56) + 4 * i + 8);
        if (*(a2 + 16) < 5)
        {
          sub_243965B70(a2, v15);
        }

        else
        {
          v16 = *(a2 + 8);
          if (v15 < 0x80)
          {
            v18 = *(*(a1 + 56) + 4 * i + 8);
            v17 = *(a2 + 8);
          }

          else
          {
            v17 = *(a2 + 8);
            do
            {
              *v17++ = v15 | 0x80;
              v18 = v15 >> 7;
              v19 = v15 >> 14;
              v15 >>= 7;
            }

            while (v19);
          }

          *v17 = v18;
          v20 = v17 - v16 + 1;
          *(a2 + 8) += v20;
          *(a2 + 16) -= v20;
        }
      }
    }
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = (v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v22 = &qword_27ED97020;
  }

  if (v22[23] < 0)
  {
    v22 = *v22;
  }

  if (v21)
  {
    v23 = (v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v23 = &qword_27ED97020;
  }

  v24 = *(v23 + 23);
  if (v24 < 0)
  {
    v24 = v23[1];
  }

  return sub_243965944(a2, v22, v24);
}

uint64_t sub_2438B93F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5 >= 1)
  {
    v7 = (*(a1 + 40) + 8);
    do
    {
      v8 = *v7++;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      --v5;
    }

    while (v5);
  }

  v11 = sub_2439697F0((a1 + 48));
  v12 = 11;
  v13 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v11 >= 0)
  {
    v12 = v13;
  }

  v14 = v12 + v6;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (!v11)
  {
    v14 = v6;
  }

  *(a1 + 64) = v15;
  result = v14 + v11;
  if (*(a1 + 16))
  {
    v17 = *(a1 + 72);
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    result += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_2438B9528(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438C0300(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    data_low = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_2438C01D4(&v3[2], data_low + v10);
    v12 = v3[2].__r_.__value_.__l.__size_ + 4 * data_low;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v12 + 8), (*(a2 + 56) + 8), 4 * *(a2 + 48));
  }

  if (*(a2 + 16))
  {
    data = v3[3].__r_.__value_.__l.__data_;
    v13 = &v3[3];
    result = data;
    LODWORD(v13[-3].__words[2]) |= 1u;
    v15 = *(a2 + 72);
    if (data != v15)
    {
      if (result == &qword_27ED97020)
      {

        return sub_2438BF924(v13, v15);
      }

      else
      {

        return std::string::operator=(result, v15);
      }
    }
  }

  return result;
}

void *sub_2438B96A0(void *a1)
{
  *a1 = &unk_28569E928;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3F60, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F60);
  }

  a1[3] = &qword_27ED97020;
  a1[4] = 0;
  return a1;
}

void sub_2438B972C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != &qword_27ED97020 && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

void *sub_2438B9790(void *a1)
{
  *a1 = &unk_28569E928;
  v2 = a1 + 1;
  sub_2438B972C(a1);
  sub_2438BF788(v2);
  return a1;
}

void sub_2438B97E0(uint64_t *a1)
{
  *a1 = &unk_28569E928;
  v2 = a1 + 1;
  sub_2438B972C(a1);
  sub_2438BF788(v2);

  operator delete(a1);
}

void sub_2438B9840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {
    sub_2438BFCC0(v3);
  }
}

uint64_t sub_2438B988C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v32 = (a1 + 8);
  v33 = 0uLL;
  v34 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v34 = *(v5 + 16);
    v33 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v31, &v33);
  sub_2439657D8(&v28, v31, 0);
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = (v7 + 1);
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_10;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_10:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        break;
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_28;
        }

        *(a1 + 16) |= 2u;
        v15 = *a2;
        if (*a2 >= a2[1])
        {
          v16 = 0;
          goto LABEL_33;
        }

        v16 = *v15;
        if (*v15 < 0)
        {
LABEL_33:
          v19 = sub_24396529C(a2, v16);
          *(a1 + 32) = v19;
          if (v19 < 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          *(a1 + 32) = v16;
          *a2 = (v15 + 1);
        }
      }

      else
      {
        if (v11 != 1 || v9 != 10)
        {
LABEL_28:
          if (!v9)
          {
            v26 = 1;
            goto LABEL_51;
          }

          v14 = sub_243967FF0(a2, v9, &v28);
          goto LABEL_30;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 24);
        if (v13 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 24), &qword_27ED97020);
          v13 = *(a1 + 24);
        }

        v14 = sub_243969704(a2, v13);
LABEL_30:
        if (!v14)
        {
          goto LABEL_52;
        }
      }
    }

    if (v9 != 24)
    {
      goto LABEL_28;
    }

    v17 = *a2;
    if (*a2 >= a2[1])
    {
      break;
    }

    LODWORD(v18) = *v17;
    if (*v17 < 0)
    {
      goto LABEL_36;
    }

    *a2 = (v17 + 1);
LABEL_37:
    if (v18 > 2)
    {
      if (v30 < 5)
      {
        sub_243965B70(&v28, 0x18u);
        v20 = v30;
      }

      else
      {
        *v29++ = 24;
        v20 = --v30;
      }

      if (v20 < 5)
      {
        sub_243965B70(&v28, v18);
      }

      else
      {
        v21 = v29;
        if (v18 < 0x80)
        {
          LOBYTE(v23) = v18;
          v22 = v29;
        }

        else
        {
          v22 = v29;
          do
          {
            *v22++ = v18 | 0x80;
            v23 = v18 >> 7;
            v24 = v18 >> 14;
            LODWORD(v18) = v18 >> 7;
          }

          while (v24);
        }

        *v22 = v23;
        v25 = v22 - v21 + 1;
        v29 += v25;
        v30 -= v25;
      }
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 36) = v18;
    }
  }

  LODWORD(v18) = 0;
LABEL_36:
  v18 = sub_24396529C(a2, v18);
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_52:
  v26 = 0;
LABEL_51:
  sub_243965918(&v28);
  sub_2438BF88C(&v32);
  return v26;
}

void sub_2438B9B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B9BA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969034(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968790(2, *(a1 + 32), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_243968670(3, *(a1 + 36), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B9C70(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v9 = *(a1 + 24);
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 2) == 0)
      {
LABEL_8:
        if ((v4 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 = *(a1 + 36);
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 11;
    }

    v3 += v7;
  }

LABEL_13:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438B9D58(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = v3 + 1;
      data = v3[1].__r_.__value_.__l.__data_;
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v7 = *(a2 + 24);
      if (data != v7)
      {
        if (data == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v7);
          if ((v5 & 2) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        result = std::string::operator=(data, v7);
      }
    }

    if ((v5 & 2) == 0)
    {
LABEL_10:
      if ((v5 & 4) != 0)
      {
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
      }

      LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
      return result;
    }

LABEL_9:
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2438B9E28(uint64_t a1)
{
  *a1 = &unk_28569E9C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF3E18, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E18);
  }

  *(a1 + 48) = &qword_27ED97020;
  *(a1 + 56) = &qword_27ED97020;
  *(a1 + 64) = 0;
  return a1;
}

void sub_2438B9EB8(_Unwind_Exception *a1)
{
  sub_2438BFD08(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B9ED8(void *a1)
{
  *a1 = &unk_28569E9C8;
  v2 = a1 + 3;
  sub_2438B9F34(a1);
  sub_2438BFD08(v2);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B9F34(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != &qword_27ED97020 && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v4 = *(a1 + 56);
  if (v4 != &qword_27ED97020 && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }
}

void sub_2438B9FD4(void *a1)
{
  v1 = sub_2438B9ED8(a1);

  operator delete(v1);
}

void sub_2438B9FFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B3674(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(a1 + 56);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  if ((v5 & 0xC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    sub_2438BFCC0(v8);
  }
}

uint64_t sub_2438BA0E8(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v34 = (a1 + 8);
  v35 = 0uLL;
  v36 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v36 = *(v5 + 16);
    v35 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v33, &v35);
  sub_2439657D8(v32, v33, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = *a2;
        if (*a2 >= a2[1])
        {
          v8 = 0;
        }

        else
        {
          v8 = *v7;
          if (*v7 >= 1)
          {
            *a2 = (v7 + 1);
            v9 = v8 | 0x100000000;
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_10;
          }
        }

        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_10:
        v11 = v9 >> 3;
        if (v9 >> 3 <= 2)
        {
          break;
        }

        if (v11 == 3)
        {
          if (v9 != 26)
          {
            goto LABEL_40;
          }

          *(a1 + 16) |= 1u;
          v12 = *(a1 + 48);
          if (v12 == &qword_27ED97020)
          {
            sub_2438BF924((a1 + 48), &qword_27ED97020);
            v12 = *(a1 + 48);
          }

LABEL_17:
          v13 = sub_243969704(a2, v12);
          goto LABEL_42;
        }

        if (v11 != 4)
        {
          if (v11 != 5 || v9 != 42)
          {
            goto LABEL_40;
          }

          *(a1 + 16) |= 2u;
          v12 = *(a1 + 56);
          if (v12 == &qword_27ED97020)
          {
            sub_2438BF924((a1 + 56), &qword_27ED97020);
            v12 = *(a1 + 56);
          }

          goto LABEL_17;
        }

        if (v9 != 34)
        {
          goto LABEL_40;
        }

        v17 = *(a1 + 40);
        if (!v17)
        {
          v19 = *(a1 + 36);
LABEL_46:
          sub_243967234(a1 + 24, v19 + 1);
          v17 = *(a1 + 40);
          v19 = *v17;
          goto LABEL_47;
        }

        v18 = *(a1 + 32);
        v19 = *v17;
        if (v18 < *v17)
        {
          *(a1 + 32) = v18 + 1;
          v20 = *&v17[2 * v18 + 2];
          goto LABEL_48;
        }

        if (v19 == *(a1 + 36))
        {
          goto LABEL_46;
        }

LABEL_47:
        *v17 = v19 + 1;
        v20 = sub_2438BEB90(*(a1 + 24));
        v22 = *(a1 + 32);
        v23 = *(a1 + 40) + 8 * v22;
        *(a1 + 32) = v22 + 1;
        *(v23 + 8) = v20;
LABEL_48:
        v24 = *a2;
        if (*a2 >= a2[1] || (v25 = *v24, (v25 & 0x80000000) != 0))
        {
          v25 = sub_243965380(a2);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          *a2 = (v24 + 1);
        }

        v26 = sub_243989C1C(a2, v25);
        v27 = v26;
        if ((v26 & 0x8000000000000000) != 0 || !sub_2438B3698(v20, a2))
        {
LABEL_60:
          v30 = 0;
          goto LABEL_62;
        }

        v13 = sub_243964938(a2, v27);
LABEL_42:
        if ((v13 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      if (v11 != 1)
      {
        break;
      }

      if (v9 != 8)
      {
        goto LABEL_40;
      }

      *(a1 + 16) |= 4u;
      v15 = *a2;
      if (*a2 >= a2[1])
      {
        v21 = 0;
        goto LABEL_59;
      }

      v21 = *v15;
      if (*v15 < 0)
      {
LABEL_59:
        v29 = sub_24396529C(a2, v21);
        *(a1 + 64) = v29;
        if (v29 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        *(a1 + 64) = v21;
LABEL_39:
        *a2 = (v15 + 1);
      }
    }

    if (v11 != 2 || v9 != 16)
    {
      break;
    }

    *(a1 + 16) |= 8u;
    v15 = *a2;
    if (*a2 >= a2[1])
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        *(a1 + 68) = v16;
        goto LABEL_39;
      }
    }

    v28 = sub_24396529C(a2, v16);
    *(a1 + 68) = v28;
    if (v28 < 0)
    {
      goto LABEL_60;
    }
  }

LABEL_40:
  if (v9)
  {
    v13 = sub_243967FF0(a2, v9, v32);
    goto LABEL_42;
  }

  v30 = 1;
LABEL_62:
  sub_243965918(v32);
  sub_2438BF88C(&v34);
  return v30;
}

void sub_2438BA448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BA470(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((v4 & 4) != 0)
  {
    sub_243968790(1, *(a1 + 64), a2);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  sub_243968790(2, *(a1 + 68), a2);
  if (v4)
  {
LABEL_4:
    sub_2439693C0(3, *(a1 + 48), a2);
  }

LABEL_5:
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      sub_243969590(4, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  if ((v4 & 2) != 0)
  {
    sub_2439693C0(5, *(a1 + 56), a2);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  if (v8[23] < 0)
  {
    v8 = *v8;
  }

  if (v7)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = &qword_27ED97020;
  }

  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v10 = v9[1];
  }

  return sub_243965944(a2, v8, v10);
}

uint64_t sub_2438BA588(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B3A78(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if (v9)
  {
    v11 = *(a1 + 48);
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v6 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_11:
      if ((v9 & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_21:
      v6 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 56);
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v6 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v9 & 8) != 0)
  {
LABEL_13:
    v6 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_2438BA718(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438BFF14(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0xF) != 0)
  {
    if (v10)
    {
      result = v3 + 2;
      data = v3[2].__r_.__value_.__l.__data_;
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v12 = *(a2 + 48);
      if (data != v12)
      {
        if (data == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v12);
          if ((v10 & 2) != 0)
          {
LABEL_12:
            result = (v3 + 56);
            size = v3[2].__r_.__value_.__l.__size_;
            LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
            v14 = *(a2 + 56);
            if (size != v14)
            {
              if (size == &qword_27ED97020)
              {
                result = sub_2438BF924(result, v14);
              }

              else
              {
                result = std::string::operator=(size, v14);
              }
            }
          }

LABEL_18:
          if ((v10 & 4) != 0)
          {
            LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
          }

          if ((v10 & 8) != 0)
          {
            HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
          }

          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v10;
          return result;
        }

        result = std::string::operator=(data, v12);
      }
    }

    if ((v10 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2438BA888(uint64_t a1)
{
  *a1 = &unk_28569EA68;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_281AF3FD0, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3FD0);
  }

  *(a1 + 96) = 0;
  return a1;
}

void sub_2438BA91C(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_2438BFD08(v5);
  sub_2438BFD08((v2 + 48));
  sub_2438BFD08(v3);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BA958(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569EA68;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(a1 + 24, *(a2 + 32));
    sub_2438C0644((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(a1 + 48, *(a2 + 56));
    sub_2438C0704((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_243967130(a1 + 72, *(a2 + 80));
    sub_2438C07C4((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 8);
  if (v20)
  {
    sub_2438BFC64(v4, v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void sub_2438BAB1C(_Unwind_Exception *a1)
{
  sub_2438BFD08(v4);
  sub_2438BFD08(v3);
  sub_2438BFD08((v2 + 24));
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438BAB6C(void *a1)
{
  *a1 = &unk_28569EA68;
  sub_2438BFD08(a1 + 9);
  sub_2438BFD08(a1 + 6);
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438BABD8(void *a1)
{
  v1 = sub_2438BAB6C(a1);

  operator delete(v1);
}

void sub_2438BAC00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B8DC8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_2438B9840(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      sub_2438B9FFC(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 8);
  v11 = a1 + 8;
  *(v11 + 88) = 0;
  *(v11 + 8) = 0;
  if (v12)
  {

    sub_2438BFCC0(v11);
  }
}

uint64_t sub_2438BACD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v56 = (a1 + 8);
  v57 = 0uLL;
  v58 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v58 = *(v5 + 16);
    v57 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v55, &v57);
  sub_2439657D8(&v52, v55, 0);
  do
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = v7 + 1;
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_10;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_10:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 != 2 || v9 != 18)
          {
LABEL_34:
            if (!v9)
            {
              v50 = 1;
              goto LABEL_87;
            }

            v27 = sub_243967FF0(a2, v9, &v52);
            goto LABEL_36;
          }

          v13 = *(a1 + 64);
          if (v13)
          {
            v14 = *(a1 + 56);
            v15 = *v13;
            if (v14 < *v13)
            {
              *(a1 + 56) = v14 + 1;
              v16 = *&v13[2 * v14 + 2];
LABEL_44:
              v30 = *a2;
              if (*a2 >= *(a2 + 8) || (v31 = *v30, (v31 & 0x80000000) != 0))
              {
                v31 = sub_243965380(a2);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                *a2 = v30 + 1;
              }

              v32 = sub_243989C1C(a2, v31);
              v33 = v32;
              if ((v32 & 0x8000000000000000) != 0 || !sub_2438B988C(v16, a2))
              {
                goto LABEL_88;
              }

              goto LABEL_70;
            }

            if (v15 != *(a1 + 60))
            {
LABEL_43:
              *v13 = v15 + 1;
              v16 = sub_2438BF1EC(*(a1 + 48));
              v28 = *(a1 + 56);
              v29 = *(a1 + 64) + 8 * v28;
              *(a1 + 56) = v28 + 1;
              *(v29 + 8) = v16;
              goto LABEL_44;
            }
          }

          else
          {
            v15 = *(a1 + 60);
          }

          sub_243967234(a1 + 48, v15 + 1);
          v13 = *(a1 + 64);
          v15 = *v13;
          goto LABEL_43;
        }

        if (v9 != 10)
        {
          goto LABEL_34;
        }

        v19 = *(a1 + 40);
        if (v19)
        {
          v20 = *(a1 + 32);
          v21 = *v19;
          if (v20 < *v19)
          {
            *(a1 + 32) = v20 + 1;
            v22 = *&v19[2 * v20 + 2];
LABEL_54:
            v36 = *a2;
            if (*a2 >= *(a2 + 8) || (v37 = *v36, (v37 & 0x80000000) != 0))
            {
              v37 = sub_243965380(a2);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              *a2 = v36 + 1;
            }

            v38 = sub_243989C1C(a2, v37);
            v33 = v38;
            if ((v38 & 0x8000000000000000) != 0 || !sub_2438B8E4C(v22, a2))
            {
              goto LABEL_88;
            }

            goto LABEL_70;
          }

          if (v21 != *(a1 + 36))
          {
LABEL_53:
            *v19 = v21 + 1;
            v22 = sub_2438BF158(*(a1 + 24));
            v34 = *(a1 + 32);
            v35 = *(a1 + 40) + 8 * v34;
            *(a1 + 32) = v34 + 1;
            *(v35 + 8) = v22;
            goto LABEL_54;
          }
        }

        else
        {
          v21 = *(a1 + 36);
        }

        sub_243967234(a1 + 24, v21 + 1);
        v19 = *(a1 + 40);
        v21 = *v19;
        goto LABEL_53;
      }

      if (v11 == 3)
      {
        break;
      }

      if (v11 != 4 || v9 != 32)
      {
        goto LABEL_34;
      }

      v17 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        LODWORD(v18) = 0;
      }

      else
      {
        LODWORD(v18) = *v17;
        if ((*v17 & 0x80000000) == 0)
        {
          *a2 = v17 + 1;
          goto LABEL_73;
        }
      }

      v18 = sub_24396529C(a2, v18);
      if (v18 < 0)
      {
        goto LABEL_88;
      }

LABEL_73:
      if (v18 > 4)
      {
        if (v54 < 5)
        {
          sub_243965B70(&v52, 0x20u);
          v44 = v54;
        }

        else
        {
          *v53++ = 32;
          v44 = --v54;
        }

        if (v44 < 5)
        {
          sub_243965B70(&v52, v18);
        }

        else
        {
          v45 = v53;
          if (v18 < 0x80)
          {
            LOBYTE(v47) = v18;
            v46 = v53;
          }

          else
          {
            v46 = v53;
            do
            {
              *v46++ = v18 | 0x80;
              v47 = v18 >> 7;
              v48 = v18 >> 14;
              LODWORD(v18) = v18 >> 7;
            }

            while (v48);
          }

          *v46 = v47;
          v49 = v46 - v45 + 1;
          v53 += v49;
          v54 -= v49;
        }
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 96) = v18;
      }
    }

    if (v9 != 26)
    {
      goto LABEL_34;
    }

    v23 = *(a1 + 88);
    if (!v23)
    {
      v25 = *(a1 + 84);
      goto LABEL_62;
    }

    v24 = *(a1 + 80);
    v25 = *v23;
    if (v24 >= *v23)
    {
      if (v25 != *(a1 + 84))
      {
LABEL_63:
        *v23 = v25 + 1;
        v26 = sub_2438BF280(*(a1 + 72));
        v39 = *(a1 + 80);
        v40 = *(a1 + 88) + 8 * v39;
        *(a1 + 80) = v39 + 1;
        *(v40 + 8) = v26;
        goto LABEL_64;
      }

LABEL_62:
      sub_243967234(a1 + 72, v25 + 1);
      v23 = *(a1 + 88);
      v25 = *v23;
      goto LABEL_63;
    }

    *(a1 + 80) = v24 + 1;
    v26 = *&v23[2 * v24 + 2];
LABEL_64:
    v41 = *a2;
    if (*a2 >= *(a2 + 8) || (v42 = *v41, (v42 & 0x80000000) != 0))
    {
      v42 = sub_243965380(a2);
      if ((v42 & 0x80000000) != 0)
      {
        break;
      }
    }

    else
    {
      *a2 = v41 + 1;
    }

    v43 = sub_243989C1C(a2, v42);
    v33 = v43;
    if ((v43 & 0x8000000000000000) != 0 || !sub_2438BA0E8(v26, a2))
    {
      break;
    }

LABEL_70:
    v27 = sub_243964938(a2, v33);
LABEL_36:
    ;
  }

  while ((v27 & 1) != 0);
LABEL_88:
  v50 = 0;
LABEL_87:
  sub_243965918(&v52);
  sub_2438BF88C(&v56);
  return v50;
}

void sub_2438BB1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BB220(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      sub_243969590(2, *(*(a1 + 64) + 8 * j + 8), a2);
    }
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    for (k = 0; k != v8; ++k)
    {
      sub_243969590(3, *(*(a1 + 88) + 8 * k + 8), a2);
    }
  }

  if (*(a1 + 16))
  {
    sub_243968670(4, *(a1 + 96), a2);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v11 = &qword_27ED97020;
  }

  if (v11[23] < 0)
  {
    v11 = *v11;
  }

  if (v10)
  {
    v12 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v12 = &qword_27ED97020;
  }

  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = v12[1];
  }

  return sub_243965944(a2, v11, v13);
}

uint64_t sub_2438BB348(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B93F8(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 56);
  v10 = v6 + v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = sub_2438B9C70(*(*(a1 + 64) + 8 * v11 + 8));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v11;
    }

    while (v9 != v11);
  }

  v13 = *(a1 + 80);
  v14 = v10 + v13;
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = sub_2438BA588(*(*(a1 + 88) + 8 * v15 + 8));
      v14 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  if (*(a1 + 16))
  {
    v17 = *(a1 + 96);
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v17 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 11;
    }

    v14 += v19;
  }

  *(a1 + 20) = v14;
  return v14;
}

std::string *sub_2438BB4BC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438C0644(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(&v3[2], *(a2 + 56));
    result = sub_2438C0704(v3 + 2, v12, (v11 + 8), v10, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v13 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v10;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v13;
    v14 = v3[2].__r_.__value_.__r.__words[2];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_243967130(&v3[3], *(a2 + 80));
    result = sub_2438C07C4(v3 + 3, v17, (v16 + 8), v15, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v18 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v15;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v18;
    v19 = v3[3].__r_.__value_.__r.__words[2];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 96);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(v3[4].__r_.__value_.__l.__data_) = v20;
  }

  return result;
}

uint64_t sub_2438BB644(uint64_t a1)
{
  *a1 = &unk_28569EB08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (atomic_load_explicit(dword_281AF4040, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF4040);
  }

  *(a1 + 148) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_2438BB6F0(_Unwind_Exception *a1)
{
  sub_2438BFD08((v2 + 96));
  sub_2438BFD08(v4);
  sub_2438BFD08((v2 + 48));
  sub_2438BFD08(v3);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BB738(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569EB08;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(a1 + 24, *(a2 + 32));
    sub_2438C0884((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(a1 + 48, *(a2 + 56));
    sub_2438C0944((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_243967130(a1 + 72, *(a2 + 80));
    sub_2438C0A04((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_243967130(a1 + 96, *(a2 + 104));
    sub_2438C04C4((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 8);
  if (v25)
  {
    sub_2438BFC64(v4, v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a2 + 16))
  {
    v26 = operator new(0x68uLL);
    sub_2438BA958(v26, *(a2 + 120));
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 120) = v26;
  v27 = *(a2 + 128);
  v28 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v27;
  *(a1 + 144) = v28;
  return a1;
}

void sub_2438BB994(_Unwind_Exception *a1)
{
  operator delete(v6);
  sub_2438BFD08(v5);
  sub_2438BFD08(v4);
  sub_2438BFD08(v3);
  sub_2438BFD08((v1 + 24));
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BBA0C(uint64_t a1)
{
  *a1 = &unk_28569EB08;
  if (a1 != &unk_27ED96E00)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_2438BFD08((a1 + 96));
  sub_2438BFD08((a1 + 72));
  sub_2438BFD08((a1 + 48));
  sub_2438BFD08((a1 + 24));
  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438BBAC4(uint64_t a1)
{
  v1 = sub_2438BBA0C(a1);

  operator delete(v1);
}

void sub_2438BBAEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B7248(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_2438B623C(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      sub_2438B7CA8(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 112) + 8);
    do
    {
      v13 = *v12++;
      sub_2438B0538(v13);
      --v11;
    }

    while (v11);
    *(a1 + 104) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    sub_2438BAC00(*(a1 + 120));
  }

  if ((v14 & 0x7E) != 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  v16 = *(a1 + 8);
  v15 = a1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    sub_2438BFCC0(v15);
  }
}

uint64_t sub_2438BBC08(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v80 = (a1 + 8);
  v81 = 0uLL;
  v82 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v82 = *(v5 + 16);
    v81 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v79, &v81);
  sub_2439657D8(&v76, v79, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = *a2;
        if (*a2 >= a2[1])
        {
          v8 = 0;
        }

        else
        {
          v8 = *v7;
          if (*v7 >= 1)
          {
            *a2 = (v7 + 1);
            v9 = v8 | 0x100000000;
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_14;
          }
        }

        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_14:
        v12 = v9 >> 3;
        if (v9 >> 3 <= 5)
        {
          break;
        }

        if (v9 >> 3 > 8)
        {
          if (v12 == 9)
          {
            if (v9 != 72)
            {
              goto LABEL_10;
            }

            *(a1 + 16) |= 0x20u;
            v13 = *a2;
            if (*a2 >= a2[1])
            {
              v40 = 0;
              goto LABEL_151;
            }

            v40 = *v13;
            if (*v13 < 0)
            {
LABEL_151:
              v73 = sub_24396529C(a2, v40);
              *(a1 + 156) = v73;
              if (v73 < 0)
              {
                goto LABEL_152;
              }
            }

            else
            {
              *(a1 + 156) = v40;
LABEL_77:
              *a2 = (v13 + 1);
            }
          }

          else
          {
            if (v12 == 10)
            {
              if (v9 == 82)
              {
                *(a1 + 16) |= 1u;
                v32 = *(a1 + 120);
                if (!v32)
                {
                  v32 = sub_2438BF314(0);
                  *(a1 + 120) = v32;
                }

                v33 = *a2;
                if (*a2 >= a2[1] || (v34 = *v33, (v34 & 0x80000000) != 0))
                {
                  v34 = sub_243965380(a2);
                  if ((v34 & 0x80000000) != 0)
                  {
                    goto LABEL_152;
                  }
                }

                else
                {
                  *a2 = (v33 + 1);
                }

                v44 = sub_243989C1C(a2, v34);
                v45 = v44;
                if ((v44 & 0x8000000000000000) != 0 || !sub_2438BACD4(v32, a2))
                {
                  goto LABEL_152;
                }

                goto LABEL_131;
              }

              goto LABEL_10;
            }

            if (v12 != 11 || v9 != 88)
            {
              goto LABEL_10;
            }

            v19 = *a2;
            if (*a2 >= a2[1])
            {
              LODWORD(v20) = 0;
            }

            else
            {
              LODWORD(v20) = *v19;
              if ((*v19 & 0x80000000) == 0)
              {
                *a2 = (v19 + 1);
                goto LABEL_137;
              }
            }

            v20 = sub_24396529C(a2, v20);
            if (v20 < 0)
            {
              goto LABEL_152;
            }

LABEL_137:
            if (v20 > 2)
            {
              if (v78 < 5)
              {
                sub_243965B70(&v76, 0x58u);
                v67 = v78;
              }

              else
              {
                *v77++ = 88;
                v67 = --v78;
              }

              if (v67 < 5)
              {
                sub_243965B70(&v76, v20);
              }

              else
              {
                v68 = v77;
                if (v20 < 0x80)
                {
                  LOBYTE(v70) = v20;
                  v69 = v77;
                }

                else
                {
                  v69 = v77;
                  do
                  {
                    *v69++ = v20 | 0x80;
                    v70 = v20 >> 7;
                    v71 = v20 >> 14;
                    LODWORD(v20) = v20 >> 7;
                  }

                  while (v71);
                }

                *v69 = v70;
                v72 = v69 - v68 + 1;
                v77 += v72;
                v78 -= v72;
              }
            }

            else
            {
              *(a1 + 16) |= 0x40u;
              *(a1 + 160) = v20;
            }
          }
        }

        else if (v12 == 6)
        {
          if (v9 != 48)
          {
            goto LABEL_10;
          }

          *(a1 + 16) |= 8u;
          v13 = *a2;
          if (*a2 < a2[1])
          {
            v39 = *v13;
            if ((v39 & 0x8000000000000000) == 0)
            {
              *(a1 + 144) = v39;
              goto LABEL_77;
            }
          }

          *(a1 + 144) = sub_2439650E0(a2);
          if ((v43 & 1) == 0)
          {
            goto LABEL_152;
          }
        }

        else
        {
          if (v12 == 7)
          {
            if (v9 == 58)
            {
              v28 = *(a1 + 112);
              if (v28)
              {
                v29 = *(a1 + 104);
                v30 = *v28;
                if (v29 < *v28)
                {
                  *(a1 + 104) = v29 + 1;
                  v31 = *&v28[2 * v29 + 2];
LABEL_105:
                  v53 = *a2;
                  if (*a2 >= a2[1] || (v54 = *v53, (v54 & 0x80000000) != 0))
                  {
                    v54 = sub_243965380(a2);
                    if ((v54 & 0x80000000) != 0)
                    {
                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    *a2 = (v53 + 1);
                  }

                  v55 = sub_243989C1C(a2, v54);
                  v45 = v55;
                  if ((v55 & 0x8000000000000000) != 0 || !sub_2438B0648(v31, a2))
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_131;
                }

                if (v30 == *(a1 + 108))
                {
LABEL_103:
                  sub_243967234(a1 + 96, v30 + 1);
                  v28 = *(a1 + 112);
                  v30 = *v28;
                }

                *v28 = v30 + 1;
                v31 = sub_2438BE8AC(*(a1 + 96));
                v51 = *(a1 + 104);
                v52 = *(a1 + 112) + 8 * v51;
                *(a1 + 104) = v51 + 1;
                *(v52 + 8) = v31;
                goto LABEL_105;
              }

              v30 = *(a1 + 108);
              goto LABEL_103;
            }

            goto LABEL_10;
          }

          if (v12 != 8 || v9 != 64)
          {
            goto LABEL_10;
          }

          *(a1 + 16) |= 0x10u;
          v13 = *a2;
          if (*a2 >= a2[1])
          {
            v14 = 0;
          }

          else
          {
            v14 = *v13;
            if ((*v13 & 0x80000000) == 0)
            {
              *(a1 + 152) = v14;
              goto LABEL_77;
            }
          }

          v66 = sub_24396529C(a2, v14);
          *(a1 + 152) = v66;
          if (v66 < 0)
          {
            goto LABEL_152;
          }
        }
      }

      if (v9 >> 3 > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        if (v9 != 8)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 2u;
        v13 = *a2;
        if (*a2 < a2[1])
        {
          v23 = *v13;
          if ((v23 & 0x8000000000000000) == 0)
          {
            *(a1 + 128) = v23;
            goto LABEL_77;
          }
        }

        *(a1 + 128) = sub_2439650E0(a2);
        if ((v41 & 1) == 0)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (v12 != 2 || v9 != 16)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 4u;
        v13 = *a2;
        if (*a2 < a2[1])
        {
          v22 = *v13;
          if ((v22 & 0x8000000000000000) == 0)
          {
            *(a1 + 136) = v22;
            goto LABEL_77;
          }
        }

        *(a1 + 136) = sub_2439650E0(a2);
        if ((v42 & 1) == 0)
        {
          goto LABEL_152;
        }
      }
    }

    if (v12 == 3)
    {
      if (v9 == 26)
      {
        v35 = *(a1 + 40);
        if (v35)
        {
          v36 = *(a1 + 32);
          v37 = *v35;
          if (v36 < *v35)
          {
            *(a1 + 32) = v36 + 1;
            v38 = *&v35[2 * v36 + 2];
LABEL_125:
            v63 = *a2;
            if (*a2 >= a2[1] || (v64 = *v63, (v64 & 0x80000000) != 0))
            {
              v64 = sub_243965380(a2);
              if ((v64 & 0x80000000) != 0)
              {
                goto LABEL_152;
              }
            }

            else
            {
              *a2 = (v63 + 1);
            }

            v65 = sub_243989C1C(a2, v64);
            v45 = v65;
            if ((v65 & 0x8000000000000000) != 0 || !sub_2438B72B4(v38, a2))
            {
LABEL_152:
              v74 = 0;
              goto LABEL_154;
            }

            goto LABEL_131;
          }

          if (v37 == *(a1 + 36))
          {
LABEL_123:
            sub_243967234(a1 + 24, v37 + 1);
            v35 = *(a1 + 40);
            v37 = *v35;
          }

          *v35 = v37 + 1;
          v38 = sub_2438BEF08(*(a1 + 24));
          v61 = *(a1 + 32);
          v62 = *(a1 + 40) + 8 * v61;
          *(a1 + 32) = v61 + 1;
          *(v62 + 8) = v38;
          goto LABEL_125;
        }

        v37 = *(a1 + 36);
        goto LABEL_123;
      }
    }

    else if (v12 == 4)
    {
      if (v9 == 34)
      {
        v24 = *(a1 + 64);
        if (v24)
        {
          v25 = *(a1 + 56);
          v26 = *v24;
          if (v25 < *v24)
          {
            *(a1 + 56) = v25 + 1;
            v27 = *&v24[2 * v25 + 2];
LABEL_95:
            v48 = *a2;
            if (*a2 >= a2[1] || (v49 = *v48, (v49 & 0x80000000) != 0))
            {
              v49 = sub_243965380(a2);
              if ((v49 & 0x80000000) != 0)
              {
                goto LABEL_152;
              }
            }

            else
            {
              *a2 = (v48 + 1);
            }

            v50 = sub_243989C1C(a2, v49);
            v45 = v50;
            if ((v50 & 0x8000000000000000) != 0 || !sub_2438B62D8(v27, a2))
            {
              goto LABEL_152;
            }

            goto LABEL_131;
          }

          if (v26 == *(a1 + 60))
          {
LABEL_93:
            sub_243967234(a1 + 48, v26 + 1);
            v24 = *(a1 + 64);
            v26 = *v24;
          }

          *v24 = v26 + 1;
          v27 = sub_2438BEE74(*(a1 + 48));
          v46 = *(a1 + 56);
          v47 = *(a1 + 64) + 8 * v46;
          *(a1 + 56) = v46 + 1;
          *(v47 + 8) = v27;
          goto LABEL_95;
        }

        v26 = *(a1 + 60);
        goto LABEL_93;
      }
    }

    else if (v12 == 5 && v9 == 42)
    {
      v15 = *(a1 + 88);
      if (!v15)
      {
        v17 = *(a1 + 84);
        goto LABEL_113;
      }

      v16 = *(a1 + 80);
      v17 = *v15;
      if (v16 < *v15)
      {
        *(a1 + 80) = v16 + 1;
        v18 = *&v15[2 * v16 + 2];
        goto LABEL_115;
      }

      if (v17 == *(a1 + 84))
      {
LABEL_113:
        sub_243967234(a1 + 72, v17 + 1);
        v15 = *(a1 + 88);
        v17 = *v15;
      }

      *v15 = v17 + 1;
      v18 = sub_2438BEF9C(*(a1 + 72));
      v56 = *(a1 + 80);
      v57 = *(a1 + 88) + 8 * v56;
      *(a1 + 80) = v56 + 1;
      *(v57 + 8) = v18;
LABEL_115:
      v58 = *a2;
      if (*a2 >= a2[1] || (v59 = *v58, (v59 & 0x80000000) != 0))
      {
        v59 = sub_243965380(a2);
        if ((v59 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }
      }

      else
      {
        *a2 = (v58 + 1);
      }

      v60 = sub_243989C1C(a2, v59);
      v45 = v60;
      if ((v60 & 0x8000000000000000) != 0 || !sub_2438B7D1C(v18, a2))
      {
        goto LABEL_152;
      }

LABEL_131:
      v11 = sub_243964938(a2, v45);
      goto LABEL_12;
    }

LABEL_10:
    if (!v9)
    {
      break;
    }

    v11 = sub_243967FF0(a2, v9, &v76);
LABEL_12:
    if ((v11 & 1) == 0)
    {
      goto LABEL_152;
    }
  }

  v74 = 1;
LABEL_154:
  sub_243965918(&v76);
  sub_2438BF88C(&v80);
  return v74;
}

void sub_2438BC468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  sub_243965918(&a9);
  sub_2438BF88C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BC494(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((v4 & 2) != 0)
  {
    sub_2439688B0(1, *(a1 + 128), a2);
  }

  if ((v4 & 4) != 0)
  {
    sub_2439688B0(2, *(a1 + 136), a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      sub_243969590(3, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (j = 0; j != v7; ++j)
    {
      sub_243969590(4, *(*(a1 + 64) + 8 * j + 8), a2);
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    for (k = 0; k != v9; ++k)
    {
      sub_243969590(5, *(*(a1 + 88) + 8 * k + 8), a2);
    }
  }

  if ((v4 & 8) != 0)
  {
    sub_2439688B0(6, *(a1 + 144), a2);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    for (m = 0; m != v11; ++m)
    {
      sub_243969590(7, *(*(a1 + 112) + 8 * m + 8), a2);
    }
  }

  if ((v4 & 0x10) != 0)
  {
    sub_243968790(8, *(a1 + 152), a2);
    if ((v4 & 0x20) == 0)
    {
LABEL_21:
      if ((v4 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_21;
  }

  sub_243968790(9, *(a1 + 156), a2);
  if ((v4 & 1) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_39:
  sub_243969590(10, *(a1 + 120), a2);
  if ((v4 & 0x40) != 0)
  {
LABEL_23:
    sub_243968670(11, *(a1 + 160), a2);
  }

LABEL_24:
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v14 = &qword_27ED97020;
  }

  if (v14[23] < 0)
  {
    v14 = *v14;
  }

  if (v13)
  {
    v15 = (v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v15 = &qword_27ED97020;
  }

  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v16 = v15[1];
  }

  return sub_243965944(a2, v14, v16);
}

uint64_t sub_2438BC67C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B786C(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 56);
  v10 = v6 + v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = sub_2438B6BF0(*(*(a1 + 64) + 8 * v11 + 8));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v11;
    }

    while (v9 != v11);
  }

  v13 = *(a1 + 80);
  v14 = v10 + v13;
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = sub_2438B7F94(*(*(a1 + 88) + 8 * v15 + 8));
      v14 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v17 = *(a1 + 104);
  v18 = v14 + v17;
  if (v17)
  {
    v19 = 0;
    do
    {
      v20 = sub_2438B0F9C(*(*(a1 + 112) + 8 * v19 + 8));
      v18 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      ++v19;
    }

    while (v17 != v19);
  }

  v21 = *(a1 + 16);
  if ((v21 & 0x7F) != 0)
  {
    if (v21)
    {
      v26 = sub_2438BB348(*(a1 + 120));
      v18 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      v21 = *(a1 + 16);
      if ((v21 & 2) == 0)
      {
LABEL_20:
        if ((v21 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }

    v18 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
LABEL_21:
      if ((v21 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_32:
    v18 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 8) == 0)
    {
LABEL_22:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }

LABEL_33:
    v18 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 0x10) == 0)
    {
LABEL_23:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }

LABEL_34:
    v18 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x20) == 0)
    {
LABEL_24:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_35:
    v18 += ((9 * (__clz(*(a1 + 156) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_29;
    }

LABEL_25:
    v22 = *(a1 + 160);
    v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v22 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 11;
    }

    v18 += v24;
  }

LABEL_29:
  *(a1 + 20) = v18;
  return v18;
}

std::string *sub_2438BC950(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], *(a2 + 32));
    result = sub_2438C0884(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_243967130(&v3[2], *(a2 + 56));
    result = sub_2438C0944(&v3[2], v12, (v11 + 8), v10, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v13 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v10;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v13;
    v14 = v3[2].__r_.__value_.__r.__words[2];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_243967130(&v3[3], *(a2 + 80));
    result = sub_2438C0A04(v3 + 3, v17, (v16 + 8), v15, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v18 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v15;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v18;
    v19 = v3[3].__r_.__value_.__r.__words[2];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_243967130(&v3[4], *(a2 + 104));
    result = sub_2438C04C4(v3 + 4, v22, (v21 + 8), v20, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v23 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v20;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v23;
    v24 = v3[4].__r_.__value_.__r.__words[2];
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if ((v25 & 0x7F) != 0)
  {
    if (v25)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[5].__r_.__value_.__l.__data_;
      if (!data)
      {
        data = sub_2438BF314(0);
        v3[5].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 120))
      {
        v27 = *(a2 + 120);
      }

      else
      {
        v27 = &unk_27ED96CF0;
      }

      result = sub_2438BB4BC(data, v27);
      if ((v25 & 2) == 0)
      {
LABEL_18:
        if ((v25 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_18;
    }

    v3[5].__r_.__value_.__l.__size_ = *(a2 + 128);
    if ((v25 & 4) == 0)
    {
LABEL_19:
      if ((v25 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    v3[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
    if ((v25 & 8) == 0)
    {
LABEL_20:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

LABEL_34:
    v3[6].__r_.__value_.__r.__words[0] = *(a2 + 144);
    if ((v25 & 0x10) == 0)
    {
LABEL_21:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_35:
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) = *(a2 + 152);
    if ((v25 & 0x20) == 0)
    {
LABEL_22:
      if ((v25 & 0x40) == 0)
      {
LABEL_24:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v25;
        return result;
      }

LABEL_23:
      LODWORD(v3[6].__r_.__value_.__r.__words[2]) = *(a2 + 160);
      goto LABEL_24;
    }

LABEL_36:
    HIDWORD(v3[6].__r_.__value_.__r.__words[1]) = *(a2 + 156);
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  return result;
}

std::string *sub_2438BCBB4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438BBAEC(result);

    return sub_2438BC950(v4, a2);
  }

  return result;
}

uint64_t sub_2438BCC18(uint64_t a1)
{
  *a1 = &unk_28569EBA8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (atomic_load_explicit(dword_281AF3FB8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3FB8);
  }

  *(a1 + 48) = &qword_27ED97020;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return a1;
}

void sub_2438BCCAC(_Unwind_Exception *a1)
{
  sub_2438AD72C(v1 + 24);
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BCCCC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569EBA8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_2438C01D4((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy((v6 + 8), (*(a2 + 32) + 8), 4 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2438BFC64(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + 48) = &qword_27ED97020;
  if (*(a2 + 16))
  {
    v8 = *(a2 + 48);
    if (v8 != &qword_27ED97020)
    {
      sub_2438BF924((a1 + 48), v8);
    }
  }

  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v10;
  *(a1 + 56) = v9;
  return a1;
}

uint64_t sub_2438BCDEC(uint64_t a1)
{
  *a1 = &unk_28569EBA8;
  sub_2438BCE58(a1);
  if (*(a1 + 28) >= 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438BCE58(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != &qword_27ED97020 && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

void sub_2438BCEC0(uint64_t a1)
{
  v1 = sub_2438BCDEC(a1);

  operator delete(v1);
}

void sub_2438BCEE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 48);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0x7E) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {
    sub_2438BFCC0(v3);
  }
}

uint64_t sub_2438BCF44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v50 = (a1 + 8);
  v51 = 0uLL;
  v52 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v52 = *(v5 + 16);
    v51 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v49, &v51);
  sub_2439657D8(&v46, v49, 0);
  while (1)
  {
    while (1)
    {
LABEL_4:
      v7 = *a2;
      v8 = *(a2 + 8);
      if (*a2 >= v8)
      {
        v10 = 0;
      }

      else
      {
        v9 = v7 + 1;
        v10 = *v7;
        if (*v7 >= 1)
        {
          *a2 = v9;
          v10 |= 0x100000000uLL;
          if ((v10 & 0x100000000) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }

        if (v9 < v8)
        {
          v11 = *v9;
          if ((v10 & ~v11) >= 0x80)
          {
            *a2 = v7 + 2;
            LODWORD(v10) = v10 + (v11 << 7) - 128;
            goto LABEL_17;
          }
        }
      }

      v13 = sub_2439655D8(a2, v10);
      v10 = v13 | ((v13 - 1 < 0xFA05) << 32);
      if ((v10 & 0x100000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v14 = v10 >> 3;
      if (v10 >> 3 > 4)
      {
        break;
      }

      if (v10 >> 3 > 2)
      {
        if (v14 == 3)
        {
          if (v10 == 24)
          {
            *(a1 + 16) |= 4u;
            v18 = *a2;
            if (*a2 < *(a2 + 8))
            {
              v25 = *v18;
              if ((v25 & 0x8000000000000000) == 0)
              {
                *(a1 + 64) = v25;
                goto LABEL_64;
              }
            }

            *(a1 + 64) = sub_2439650E0(a2);
            if (v29)
            {
              continue;
            }

            goto LABEL_103;
          }

          goto LABEL_11;
        }

        if (v14 != 4)
        {
          goto LABEL_11;
        }

        if (v10 != 32)
        {
          if (v10 != 34)
          {
            goto LABEL_11;
          }

          v20 = *a2;
          if (*a2 >= *(a2 + 8) || (v21 = *v20, (v21 & 0x80000000) != 0))
          {
            v21 = sub_243965380(a2);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_103;
            }
          }

          else
          {
            *a2 = v20 + 1;
          }

          v31 = sub_243989BA4(a2, v21);
          while (1)
          {
            if (sub_243964994(a2) < 1)
            {
              sub_2439648F0(a2, v31);
              goto LABEL_4;
            }

            v32 = *a2;
            if (*a2 >= *(a2 + 8))
            {
              v33 = 0;
            }

            else
            {
              v33 = *v32;
              if ((*v32 & 0x80000000) == 0)
              {
                *a2 = v32 + 1;
                goto LABEL_82;
              }
            }

            v34 = sub_24396529C(a2, v33);
            v33 = v34;
            if (v34 < 0)
            {
              goto LABEL_103;
            }

LABEL_82:
            v35 = *(a1 + 24);
            if (v35 == *(a1 + 28))
            {
              sub_2438C01D4((a1 + 24), v35 + 1);
              v35 = *(a1 + 24);
            }

            v36 = *(a1 + 32) + 4 * v35;
            *(a1 + 24) = v35 + 1;
            *(v36 + 8) = v33;
          }
        }

        v12 = sub_2439894CC(1, 0x22u, a2, (a1 + 24));
LABEL_13:
        if (v12)
        {
          continue;
        }

        goto LABEL_103;
      }

      if (v14 == 1)
      {
        if (v10 != 8)
        {
          goto LABEL_11;
        }

        *(a1 + 16) |= 2u;
        v18 = *a2;
        if (*a2 < *(a2 + 8))
        {
          v23 = *v18;
          if ((v23 & 0x8000000000000000) == 0)
          {
            *(a1 + 56) = v23;
            goto LABEL_64;
          }
        }

        *(a1 + 56) = sub_2439650E0(a2);
        if (v27)
        {
          continue;
        }

LABEL_103:
        v44 = 0;
        goto LABEL_105;
      }

      if (v14 != 2 || v10 != 16)
      {
        goto LABEL_11;
      }

      v16 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v17) = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          *a2 = v16 + 1;
          goto LABEL_88;
        }
      }

      v17 = sub_24396529C(a2, v17);
      if (v17 < 0)
      {
        goto LABEL_103;
      }

LABEL_88:
      if (v17 > 5)
      {
        if (v48 < 5)
        {
          sub_243965B70(&v46, 0x10u);
          v37 = v48;
        }

        else
        {
          *v47++ = 16;
          v37 = --v48;
        }

        if (v37 < 5)
        {
          sub_243965B70(&v46, v17);
        }

        else
        {
          v38 = v47;
          if (v17 < 0x80)
          {
            LOBYTE(v40) = v17;
            v39 = v47;
          }

          else
          {
            v39 = v47;
            do
            {
              *v39++ = v17 | 0x80;
              v40 = v17 >> 7;
              v41 = v17 >> 14;
              LODWORD(v17) = v17 >> 7;
            }

            while (v41);
          }

          *v39 = v40;
          v42 = v39 - v38 + 1;
          v47 += v42;
          v48 -= v42;
        }
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 72) = v17;
      }
    }

    if (v10 >> 3 > 6)
    {
      if (v14 == 7)
      {
        if (v10 == 56)
        {
          *(a1 + 16) |= 0x40u;
          v18 = *a2;
          if (*a2 < *(a2 + 8))
          {
            v26 = *v18;
            if ((v26 & 0x8000000000000000) == 0)
            {
              *(a1 + 88) = v26;
              goto LABEL_64;
            }
          }

          *(a1 + 88) = sub_2439650E0(a2);
          if (v30)
          {
            goto LABEL_4;
          }

          goto LABEL_103;
        }

        goto LABEL_11;
      }

      if (v14 != 8000 || v10 != 2)
      {
        goto LABEL_11;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 48);
      if (v22 == &qword_27ED97020)
      {
        sub_2438BF924((a1 + 48), &qword_27ED97020);
        v22 = *(a1 + 48);
      }

      v12 = sub_243969704(a2, v22);
      goto LABEL_13;
    }

    if (v14 == 5)
    {
      break;
    }

    if (v14 != 6 || v10 != 48)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 0x10u;
    v18 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        *(a1 + 76) = v19;
LABEL_64:
        *a2 = v18 + 1;
        goto LABEL_4;
      }
    }

    v43 = sub_24396529C(a2, v19);
    *(a1 + 76) = v43;
    if (v43 < 0)
    {
      goto LABEL_103;
    }
  }

  if (v10 == 40)
  {
    *(a1 + 16) |= 0x20u;
    v18 = *a2;
    if (*a2 < *(a2 + 8))
    {
      v24 = *v18;
      if ((v24 & 0x8000000000000000) == 0)
      {
        *(a1 + 80) = v24;
        goto LABEL_64;
      }
    }

    *(a1 + 80) = sub_2439650E0(a2);
    if (v28)
    {
      goto LABEL_4;
    }

    goto LABEL_103;
  }

LABEL_11:
  if (v10)
  {
    v12 = sub_243967FF0(a2, v10, &v46);
    goto LABEL_13;
  }

  v44 = 1;
LABEL_105:
  sub_243965918(&v46);
  sub_2438BF88C(&v50);
  return v44;
}

void sub_2438BD4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  sub_243965918(&a9);
  sub_2438BF88C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BD4F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((v4 & 2) == 0)
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_243968670(2, *(a1 + 72), a2);
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_2439688B0(1, *(a1 + 56), a2);
  if ((v4 & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_2439688B0(3, *(a1 + 64), a2);
  }

LABEL_5:
  if (*(a1 + 24) >= 1)
  {
    if (*(a2 + 16) < 5)
    {
      sub_243965B70(a2, 0x22u);
      v5 = *(a2 + 16);
    }

    else
    {
      *(*(a2 + 8))++ = 34;
      v5 = *(a2 + 16) - 1;
      *(a2 + 16) = v5;
    }

    v6 = *(a1 + 40);
    if (v5 < 5)
    {
      sub_243965B70(a2, v6);
    }

    else
    {
      v7 = *(a2 + 8);
      if (v6 < 0x80)
      {
        v9 = *(a1 + 40);
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = *(a2 + 8);
        do
        {
          *v8++ = v6 | 0x80;
          v9 = v6 >> 7;
          v10 = v6 >> 14;
          v6 >>= 7;
        }

        while (v10);
      }

      *v8 = v9;
      v11 = v8 - v7 + 1;
      *(a2 + 8) += v11;
      *(a2 + 16) -= v11;
    }

    v12 = *(a1 + 24);
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = *(*(a1 + 32) + 4 * i + 8);
        if (*(a2 + 16) < 5)
        {
          sub_243965B70(a2, v14);
        }

        else
        {
          v15 = *(a2 + 8);
          if (v14 < 0x80)
          {
            v17 = *(*(a1 + 32) + 4 * i + 8);
            v16 = *(a2 + 8);
          }

          else
          {
            v16 = *(a2 + 8);
            do
            {
              *v16++ = v14 | 0x80;
              v17 = v14 >> 7;
              v18 = v14 >> 14;
              v14 >>= 7;
            }

            while (v18);
          }

          *v16 = v17;
          v19 = v16 - v15 + 1;
          *(a2 + 8) += v19;
          *(a2 + 16) -= v19;
        }
      }
    }
  }

  if ((v4 & 0x20) != 0)
  {
    sub_2439688B0(5, *(a1 + 80), a2);
    if ((v4 & 0x10) == 0)
    {
LABEL_33:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_51;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  sub_243968790(6, *(a1 + 76), a2);
  if ((v4 & 0x40) == 0)
  {
LABEL_34:
    if ((v4 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_51:
  sub_2439688B0(7, *(a1 + 88), a2);
  if (v4)
  {
LABEL_35:
    sub_243969034(8000, *(a1 + 48), a2);
  }

LABEL_36:
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v21 = &qword_27ED97020;
  }

  if (v21[23] < 0)
  {
    v21 = *v21;
  }

  if (v20)
  {
    v22 = (v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v22 = &qword_27ED97020;
  }

  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    v23 = v22[1];
  }

  return sub_243965944(a2, v21, v23);
}

uint64_t sub_2438BD780(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = sub_2439697F0((a1 + 24));
  v6 = 11;
  v7 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v6 = v7;
  }

  v8 = v6 + v4;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (!v5)
  {
    v8 = v4;
  }

  *(a1 + 40) = v9;
  result = v8 + v5;
  v11 = *(a1 + 16);
  if ((v11 & 0x7F) == 0)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    v12 = *(a1 + 48);
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 3;
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

  result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_28:
  v15 = *(a1 + 72);
  v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v15 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 11;
  }

  result += v17;
  if ((v11 & 0x10) == 0)
  {
LABEL_19:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_33:
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_32:
  result += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_20:
  if ((v11 & 0x40) != 0)
  {
LABEL_21:
    result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_22:
  *(a1 + 20) = result;
  return result;
}

void *sub_2438BD968(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(result + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v3 + 6);
    sub_2438C01D4(v3 + 6, v6 + v5);
    v7 = v3[4] + 4 * v6;
    *(v3 + 6) += *(a2 + 24);
    result = memcpy((v7 + 8), (*(a2 + 32) + 8), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 0x7F) != 0)
  {
    if (v8)
    {
      result = v3 + 6;
      v9 = v3[6];
      *(v3 + 4) |= 1u;
      v10 = *(a2 + 48);
      if (v9 != v10)
      {
        if (v9 == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v10);
          if ((v8 & 2) == 0)
          {
LABEL_11:
            if ((v8 & 4) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_21;
          }

LABEL_20:
          v3[7] = *(a2 + 56);
          if ((v8 & 4) == 0)
          {
LABEL_12:
            if ((v8 & 8) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

LABEL_21:
          v3[8] = *(a2 + 64);
          if ((v8 & 8) == 0)
          {
LABEL_13:
            if ((v8 & 0x10) == 0)
            {
              goto LABEL_14;
            }

            goto LABEL_23;
          }

LABEL_22:
          *(v3 + 18) = *(a2 + 72);
          if ((v8 & 0x10) == 0)
          {
LABEL_14:
            if ((v8 & 0x20) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_24;
          }

LABEL_23:
          *(v3 + 19) = *(a2 + 76);
          if ((v8 & 0x20) == 0)
          {
LABEL_15:
            if ((v8 & 0x40) == 0)
            {
LABEL_17:
              *(v3 + 4) |= v8;
              return result;
            }

LABEL_16:
            v3[11] = *(a2 + 88);
            goto LABEL_17;
          }

LABEL_24:
          v3[10] = *(a2 + 80);
          if ((v8 & 0x40) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        result = std::string::operator=(v9, v10);
      }
    }

    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  return result;
}

void *sub_2438BDAB0(void *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438BCEE8(result);

    return sub_2438BD968(v4, a2);
  }

  return result;
}

uint64_t sub_2438BDB14(uint64_t a1)
{
  *a1 = &unk_28569EC48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_281AF40F0, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF40F0);
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

void *sub_2438BDBA4(void *a1)
{
  *a1 = &unk_28569EC48;
  sub_2438BDBF4(a1);
  sub_2438BF788(a1 + 1);
  return a1;
}

void *sub_2438BDBF4(void *result)
{
  if (result != &unk_27ED96FE8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_2438BDC98(void *a1)
{
  v1 = sub_2438BDBA4(a1);

  operator delete(v1);
}

void sub_2438BDCC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      sub_2438BCEE8(*(a1 + 24));
    }

    if ((v2 & 2) != 0)
    {
      sub_2438BBAEC(*(a1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    sub_2438BFCC0(v3);
  }
}

uint64_t sub_2438BDD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v32 = (a1 + 8);
  v33 = 0uLL;
  v34 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v34 = *(v5 + 16);
    v33 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v31, &v33);
  sub_2439657D8(v30, v31, 0);
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = v7 + 1;
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_10;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_10:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        break;
      }

      if (v11 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v16 = *a2;
        if (*a2 >= *(a2 + 8) || *v16 < 0)
        {
          *(a1 + 40) = sub_2439650E0(a2);
          if ((v24 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v17 = *v16;
          v18 = (a1 + 40);
LABEL_38:
          *v18 = v17;
          *a2 = v16 + 1;
        }
      }

      else
      {
        if (v11 != 4 || v9 != 32)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v16 = *a2;
        if (*a2 < *(a2 + 8) && (*v16 & 0x80000000) == 0)
        {
          v17 = *v16;
          v18 = (a1 + 48);
          goto LABEL_38;
        }

        *(a1 + 48) = sub_2439650E0(a2);
        if ((v23 & 1) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v9 != 18)
    {
LABEL_39:
      if (!v9)
      {
        v28 = 1;
        goto LABEL_56;
      }

      v22 = sub_243967FF0(a2, v9, v30);
      goto LABEL_41;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = sub_2438BF3A8(0);
      *(a1 + 32) = v13;
    }

    v14 = *a2;
    if (*a2 >= *(a2 + 8) || (v15 = *v14, (v15 & 0x80000000) != 0))
    {
      v15 = sub_243965380(a2);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *a2 = v14 + 1;
    }

    v25 = sub_243989C1C(a2, v15);
    v26 = v25;
    if ((v25 & 0x8000000000000000) != 0 || !sub_2438BBC08(v13, a2))
    {
      goto LABEL_57;
    }

LABEL_50:
    v22 = sub_243964938(a2, v26);
LABEL_41:
    if ((v22 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v9 != 10)
  {
    goto LABEL_39;
  }

  *(a1 + 16) |= 1u;
  v19 = *(a1 + 24);
  if (!v19)
  {
    v19 = sub_2438BF43C(0);
    *(a1 + 24) = v19;
  }

  v20 = *a2;
  if (*a2 >= *(a2 + 8) || (v21 = *v20, (v21 & 0x80000000) != 0))
  {
    v21 = sub_243965380(a2);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    *a2 = v20 + 1;
  }

  v27 = sub_243989C1C(a2, v21);
  v26 = v27;
  if ((v27 & 0x8000000000000000) == 0 && sub_2438BCF44(v19, a2))
  {
    goto LABEL_50;
  }

LABEL_57:
  v28 = 0;
LABEL_56:
  sub_243965918(v30);
  sub_2438BF88C(&v32);
  return v28;
}

void sub_2438BE048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438BE070(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969590(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243969590(2, *(a1 + 32), a2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  sub_2439688B0(3, *(a1 + 40), a2);
  if ((v4 & 8) != 0)
  {
LABEL_5:
    sub_2439688B0(4, *(a1 + 48), a2);
  }

LABEL_6:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438BE154(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v7 = sub_2438BD780(*(a1 + 24));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v5 = *(a1 + 16);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_15:
      v4 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_9;
  }

  v8 = sub_2438BC67C(*(a1 + 32));
  v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v5 & 8) != 0)
  {
LABEL_11:
    v4 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_12:
  *(a1 + 20) = v4;
  return v4;
}