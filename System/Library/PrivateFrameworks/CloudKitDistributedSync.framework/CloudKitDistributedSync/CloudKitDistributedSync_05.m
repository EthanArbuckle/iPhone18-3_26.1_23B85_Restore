void *sub_2438EC7A4(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = &unk_2856A1168;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  if (*(a2 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      v9 = sub_2438EC604(*(*(a2 + 40) + 8 * v7 + 8), a3);
      sub_2439780F8(v4, &v9);
      ++v7;
    }

    while (v7 < *(a2 + 32));
  }

  return a1;
}

void sub_2438EC854(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438EC870(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = &unk_2856A1168;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  if (*(a2 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      v9 = sub_2438EC604(*(*(a2 + 112) + 8 * v7 + 8), a3);
      sub_2439780F8(v4, &v9);
      ++v7;
    }

    while (v7 < *(a2 + 104));
  }

  return a1;
}

void sub_2438EC920(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438EC940(void *a1)
{
  *a1 = &unk_2856A1168;
  v3 = a1[1];
  v2 = a1[2];
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = a1[2];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2438EC9E0(void *a1)
{
  v1 = sub_2438EC940(a1);

  operator delete(v1);
}

uint64_t sub_2438ECA08(uint64_t a1)
{
  *a1 = &unk_2856A1198;
  v4 = (a1 + 16);
  sub_2438F4258(&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438ECA94(uint64_t a1)
{
  v1 = sub_2438ECA08(a1);

  operator delete(v1);
}

uint64_t sub_2438ECABC(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *a1 = &unk_2856A1198;
  *(a1 + 8) = 0u;
  v22 = (a1 + 8);
  v8 = (a1 + 16);
  *(a1 + 24) = 0u;
  v9 = operator new(0x20uLL);
  sub_2438EC7A4(v9, a2, a4);
  v10 = *v22;
  *v22 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_2438ECCE0(v8, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11 != v12)
  {
    v13 = 0;
    v14 = *a3;
    do
    {
      v15 = *(v14 + 24 * v13);
      if (*(v14 + 24 * v13 + 8) != v15)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *v8;
          v19 = sub_2438EC604(v15 + v16, a4);
          sub_2438F44C0(&v23, v19);
          sub_2438E5FB4((v18 + 24 * v13), &v23);
          if (v24)
          {
            sub_2438CB880(v24);
          }

          ++v17;
          v14 = *a3;
          v20 = (*a3 + 24 * v13);
          v15 = *v20;
          v16 += 120;
        }

        while (v17 < 0xEEEEEEEEEEEEEEEFLL * ((v20[1] - *v20) >> 3));
        v12 = *(a1 + 16);
        v11 = *(a1 + 24);
      }

      ++v13;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3));
  }

  return a1;
}

void sub_2438ECC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  sub_2438F4258(&a11);
  v14 = *a10;
  *a10 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_2438ECCE0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2438F42CC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_2438E676C(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void *sub_2438ECD8C(void *result)
{
  *result = &unk_2856A11D8;
  result[1] = &unk_2856A1240;
  return result;
}

void *sub_2438ECDCC(void *result)
{
  *(result - 1) = &unk_2856A11D8;
  *result = &unk_2856A1240;
  return result;
}

void *sub_2438ECE18(void *result)
{
  *result = &unk_2856A1290;
  result[1] = &unk_2856A1308;
  return result;
}

void *sub_2438ECE58(void *result)
{
  *(result - 1) = &unk_2856A1290;
  *result = &unk_2856A1308;
  return result;
}

void *sub_2438ECEA4(void *result)
{
  *result = &unk_2856A1358;
  result[1] = &unk_2856A13D8;
  return result;
}

void *sub_2438ECEE4(void *result)
{
  *(result - 1) = &unk_2856A1358;
  *result = &unk_2856A13D8;
  return result;
}

void *sub_2438ECF30(void *result)
{
  *result = &unk_2856A1428;
  result[1] = &unk_2856A14B0;
  return result;
}

void *sub_2438ECF70(void *result)
{
  *(result - 1) = &unk_2856A1428;
  *result = &unk_2856A14B0;
  return result;
}

void *sub_2438ECFBC(void *result)
{
  *result = &unk_2856A1500;
  result[1] = &unk_2856A1598;
  return result;
}

void *sub_2438ECFFC(void *result)
{
  *(result - 1) = &unk_2856A1500;
  *result = &unk_2856A1598;
  return result;
}

void *sub_2438ED048(void *result)
{
  *result = &unk_2856A15E8;
  result[1] = &unk_2856A1680;
  return result;
}

void *sub_2438ED088(void *result)
{
  *(result - 1) = &unk_2856A15E8;
  *result = &unk_2856A1680;
  return result;
}

void *sub_2438ED0D4(void *result)
{
  *result = &unk_2856A16D0;
  result[1] = &unk_2856A1768;
  return result;
}

void *sub_2438ED114(void *result)
{
  *(result - 1) = &unk_2856A16D0;
  *result = &unk_2856A1768;
  return result;
}

uint64_t sub_2438ED160(uint64_t result, uint64_t a2, int a3)
{
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 257;
    *(result + 48) = a2;
    v3 = (result + 40);
LABEL_6:
    *v3 = a2;
    goto LABEL_7;
  }

  v3 = (result + 40);
  if (*(result + 40) > a2)
  {
    goto LABEL_6;
  }

  v3 = (result + 48);
  if (*(result + 48) < a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*(result + 19) == 1)
  {
    v4 = *(result + 56);
    v5 = v4 + a3 * a2;
    *(result + 56) = v5;
    if (((v4 ^ a2) & 0x8000000000000000) == 0)
    {
      *(result + 19) = (v5 ^ v4) >= 0;
    }
  }

  return result;
}

void *sub_2438ED1D8(void *a1)
{
  *a1 = &unk_2856A17B8;
  a1[1] = &unk_2856A1850;
  sub_2438F4204((a1 + 2));
  return a1;
}

uint64_t sub_2438ED240(void *a1)
{
  *(a1 - 1) = &unk_2856A17B8;
  *a1 = &unk_2856A1850;
  return sub_2438F4204((a1 + 1));
}

void sub_2438ED280(void *a1)
{
  *a1 = &unk_2856A17B8;
  a1[1] = &unk_2856A1850;
  sub_2438F4204((a1 + 2));

  operator delete(a1);
}

void sub_2438ED2F8(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = &unk_2856A17B8;
  *a1 = &unk_2856A1850;
  sub_2438F4204((a1 + 1));

  operator delete(v1);
}

void *sub_2438ED368(void *result)
{
  *result = &unk_2856A18A0;
  result[1] = &unk_2856A1948;
  return result;
}

void *sub_2438ED3A8(void *result)
{
  *(result - 1) = &unk_2856A18A0;
  *result = &unk_2856A1948;
  return result;
}

uint64_t sub_2438ED3F4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *result = &unk_2856A1290;
  *(result + 8) = &unk_2856A1308;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 32) = *(a2 + 96);
  *(result + 16) = *(a2 + 112);
  if ((*(a2 + 16) & 0x40) != 0 && *a3 == 1)
  {
    v3 = *(a2 + 72);
    if (!v3)
    {
      v3 = &unk_27ED96B70;
    }

    *(result + 20) = v3[16] & 1;
    *(result + 24) = *(v3 + 3);
  }

  return result;
}

uint64_t sub_2438ED48C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *result = &unk_2856A1358;
  *(result + 8) = &unk_2856A13D8;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 32) = *(a2 + 96);
  *(result + 16) = *(a2 + 112);
  if ((*(a2 + 16) & 8) != 0 && *a3 == 1)
  {
    *(result + 48) = 1;
    v3 = *(a2 + 48);
    if (!v3)
    {
      v3 = &unk_27ED96B40;
    }

    v4 = *(v3[4] + 8);
  }

  else
  {
    v4 = 0;
    *(result + 48) = 0;
  }

  *(result + 56) = v4;
  return result;
}

uint64_t sub_2438ED52C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *result = &unk_2856A1428;
  *(result + 8) = &unk_2856A14B0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 32) = *(a2 + 96);
  *(result + 16) = *(a2 + 112);
  if (*(a2 + 16) & 0x20) != 0 && (*a3)
  {
    v3 = *(a2 + 64);
    if (!v3)
    {
      v3 = &unk_27ED96B90;
    }

    v4 = v3[16];
    *(result + 17) = v4 & 1;
    *(result + 18) = (v4 & 2) != 0;
    v6 = *(v3 + 6);
    v5 = *(v3 + 7);
    *(result + 40) = v6;
  }

  else
  {
    v5 = 0;
    *(result + 40) = 0;
  }

  *(result + 44) = v5;
  return result;
}

uint64_t sub_2438ED5D8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a1 = &unk_2856A1500;
  *(a1 + 8) = &unk_2856A1598;
  sub_2438F41BC(a1 + 16);
  *(a1 + 32) = *(a2 + 96);
  *(a1 + 16) = *(a2 + 112);
  if ((*(a2 + 16) & 0x10) != 0 && *a3 == 1)
  {
    if (*(a2 + 56))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = qword_27ED969D0;
    }

    v7 = *(v6 + 16);
    *(a1 + 17) = v7 & 1;
    *(a1 + 18) = (v7 & 2) != 0;
    *(a1 + 19) = (v7 & 4) != 0;
    sub_2438FF1B0(&v9, v6[3]);
    *(a1 + 40) = v9;
    *(a1 + 56) = v10;
    sub_2438FF1B0(&v9, v6[4]);
    *(a1 + 64) = v9;
    *(a1 + 80) = v10;
    sub_2438FF1B0(&v9, v6[5]);
    *(a1 + 88) = v9;
    *(a1 + 104) = v10;
  }

  return a1;
}

uint64_t sub_2438ED700(uint64_t result, uint64_t a2)
{
  *result = &unk_2856A15E8;
  *(result + 8) = &unk_2856A1680;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 32) = *(a2 + 96);
  *(result + 16) = *(a2 + 112);
  if ((*(a2 + 16) & 2) != 0)
  {
    v4 = &unk_27ED96A98;
    if (*(a2 + 32))
    {
      v4 = *(a2 + 32);
    }

    v5 = v4[16];
    *(result + 17) = v5 & 1;
    *(result + 18) = (v5 & 2) != 0;
    *(result + 19) = (v5 & 4) != 0;
    v2 = *(v4 + 24);
    v3 = *(v4 + 5);
  }

  else
  {
    v2 = 0uLL;
    v3 = 0;
  }

  *(result + 40) = v2;
  *(result + 56) = v3;
  return result;
}

uint64_t sub_2438ED7B0(uint64_t result, uint64_t a2)
{
  *result = &unk_2856A16D0;
  *(result + 8) = &unk_2856A1768;
  *(result + 16) = 0;
  *(result + 20) = 0;
  v2 = 0uLL;
  *(result + 24) = 0u;
  *(result + 32) = *(a2 + 96);
  *(result + 16) = *(a2 + 112);
  if (*(a2 + 16))
  {
    v4 = &unk_27ED96958;
    if (*(a2 + 24))
    {
      v4 = *(a2 + 24);
    }

    v5 = v4[16];
    *(result + 17) = v5 & 1;
    *(result + 18) = (v5 & 2) != 0;
    *(result + 19) = (v5 & 4) != 0;
    v2 = *(v4 + 24);
    v3 = *(v4 + 5);
  }

  else
  {
    v3 = 0;
  }

  *(result + 40) = v2;
  *(result + 56) = v3;
  return result;
}

uint64_t sub_2438ED860(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a1 = &unk_2856A17B8;
  *(a1 + 8) = &unk_2856A1850;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 96);
  *(a1 + 16) = *(a2 + 112);
  if ((*(a2 + 16) & 4) != 0 && *a3 == 1)
  {
    if (*(a2 + 40))
    {
      v4 = *(a2 + 40);
    }

    else
    {
      v4 = qword_27ED96A58;
    }

    v5 = *(v4 + 16);
    *(a1 + 17) = v5 & 1;
    *(a1 + 18) = (v5 & 2) != 0;
    *(a1 + 20) = (v5 & 0x10) != 0;
    v6 = v4[3];
    if (*(v6 + 23) < 0)
    {
      sub_2438BF99C(&__str, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      __str.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__str.__r_.__value_.__l.__data_ = v7;
    }

    std::string::operator=((a1 + 40), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v9 = v4[4];
    if (*(v9 + 23) < 0)
    {
      sub_2438BF99C(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    std::string::operator=((a1 + 64), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = v4[7];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 24) = v8;
  return a1;
}

uint64_t sub_2438EDA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A18A0;
  *(a1 + 8) = &unk_2856A1948;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 96);
  *(a1 + 16) = *(a2 + 112);
  if (*(a2 + 16) & 0x80) != 0 && (*a3)
  {
    if (*(a2 + 80))
    {
      v5 = *(a2 + 80);
    }

    else
    {
      v5 = &unk_27ED968B8;
    }

    v6 = *(v5 + 4);
    v7 = (v6 & 4) != 0 || (v6 & 1) != 0 && *(a3 + 8) != 0;
    *(a1 + 17) = v7;
    v8 = (v6 & 8) != 0 || (v6 & 2) != 0 && *(a3 + 8) != 0;
    *(a1 + 18) = v8;
    *(a1 + 64) = (v6 & 5) != 0;
    *(a1 + 65) = (v6 & 0xA) != 0;
    if ((v6 & 4) != 0)
    {
      v13 = *(v5 + 5);
      *(a1 + 40) = v13;
    }

    else
    {
      v9 = *(a3 + 8);
      if (v9)
      {
        v10 = *(v5 + 3);
        v11 = v10 + 1000 * *(*(*v9 + 16))(v9, v10 / 1000);
        *(a1 + 40) = v11;
        *(a1 + 72) = v11;
        if ((*(v5 + 4) & 8) != 0)
        {
LABEL_20:
          v12 = *(v5 + 6);
          goto LABEL_26;
        }

LABEL_24:
        v14 = *(a3 + 8);
        if (!v14)
        {
          *(a1 + 48) = 0;
          v12 = *(v5 + 4) + 90000000;
          goto LABEL_27;
        }

        v15 = *(v5 + 4);
        v12 = v15 + 1000 * *(*(*v14 + 16))(v14, v15 / 1000);
LABEL_26:
        *(a1 + 48) = v12;
LABEL_27:
        *(a1 + 80) = v12 + 1;
        return a1;
      }

      *(a1 + 40) = 0;
      v13 = *(v5 + 3) - 90000000;
    }

    *(a1 + 72) = v13;
    if ((v6 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void *sub_2438EDC70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 32))(a1);
  if (v4 <= 8)
  {
    if (v4 <= 4)
    {
      if ((v4 - 1) < 4)
      {
        result = operator new(0x40uLL);
        *result = &unk_2856A16D0;
        v6 = result + 1;
        v7 = &unk_2856A1768;
LABEL_21:
        result[1] = v7;
        *(result + 4) = 0;
        *(result + 20) = 0;
        result[3] = 0;
        result[4] = 0;
        *(result + 19) = 1;
LABEL_22:
        result[7] = 0;
        goto LABEL_23;
      }

      if (!v4)
      {
        result = operator new(0x40uLL);
        *result = &unk_2856A1358;
        v6 = result + 1;
        result[1] = &unk_2856A13D8;
        *(result + 4) = 0;
        *(result + 20) = 0;
        result[3] = 0;
        result[4] = 0;
        *(result + 48) = 1;
        goto LABEL_22;
      }

LABEL_29:
      exception = __cxa_allocate_exception(0x10uLL);
      (*(*a1 + 88))(&v13, a1);
      v11 = std::string::insert(&v13, 0, "Not supported type: ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      sub_2438DCA98(exception, &v14);
      __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
    }

    if ((v4 - 5) < 2)
    {
      result = operator new(0x40uLL);
      *result = &unk_2856A15E8;
      v6 = result + 1;
      v7 = &unk_2856A1680;
      goto LABEL_21;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        goto LABEL_29;
      }

      result = operator new(0x30uLL);
      v6 = result + 1;
      *result = &unk_2856A1290;
      result[1] = &unk_2856A1308;
      *(result + 4) = 0;
      *(result + 20) = 1;
      goto LABEL_9;
    }

LABEL_18:
    result = operator new(0x70uLL);
    *result = &unk_2856A17B8;
    v6 = result + 1;
    result[1] = &unk_2856A1850;
    *(result + 4) = 0;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 20) = 1;
    goto LABEL_19;
  }

  if (v4 > 13)
  {
    if ((v4 - 16) < 2)
    {
      goto LABEL_18;
    }

    if (v4 == 14)
    {
      v9 = operator new(0x70uLL);
      v6 = v9 + 1;
      *v9 = &unk_2856A1500;
      v9[1] = &unk_2856A1598;
      sub_2438F41BC((v9 + 2));
      result = (*(*v9 + 120))(v9);
      goto LABEL_23;
    }

    if (v4 != 15)
    {
      goto LABEL_29;
    }

    result = operator new(0x38uLL);
    v6 = result + 1;
    *result = &unk_2856A1428;
    v8 = &unk_2856A14B0;
  }

  else if ((v4 - 10) >= 4)
  {
    if (v4 != 9)
    {
      goto LABEL_29;
    }

    result = operator new(0x58uLL);
    v6 = result + 1;
    *result = &unk_2856A18A0;
    v8 = &unk_2856A1948;
  }

  else
  {
    result = operator new(0x30uLL);
    v6 = result + 1;
    *result = &unk_2856A11D8;
    v8 = &unk_2856A1240;
  }

  result[1] = v8;
  *(result + 4) = 0;
  *(result + 20) = 0;
LABEL_9:
  result[4] = 0;
LABEL_19:
  result[3] = 0;
LABEL_23:
  *a2 = v6;
  return result;
}

void sub_2438EE0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2438EE170(uint64_t a1)
{
  sub_2438A9A08(&v13);
  v2 = sub_2438AA2A8(&v13, "Column has ", 11);
  v3 = (*(*a1 + 16))(a1);
  v4 = MEMORY[0x245D431D0](v2, v3);
  v5 = sub_2438AA2A8(v4, " values", 7);
  v6 = sub_2438AA2A8(v5, " and has null value: ", 21);
  v7 = (*(*a1 + 24))(a1);
  if (v7)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = sub_2438AA2A8(v6, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v17);
}

void sub_2438EE3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 40));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438EE434(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A19A8, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return sub_2438F3B84(a1 + 16, v4 + 16);
}

uint64_t sub_2438EE4C0(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2438EE4D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 112) = *(result + 16);
  v3 = *(result + 32);
  *(a2 + 16) = v2 | 0xA00;
  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_2438EE51C(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2438EE52C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 112) = *(result + 8);
  v3 = *(result + 24);
  *(a2 + 16) = v2 | 0xA00;
  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_2438EE550(uint64_t a1)
{
  sub_2438A9A08(&v19);
  v2 = sub_2438AA2A8(&v19, "Data type: Binary", 17);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v19, "Total length: ", 14);
    v15 = (*(*a1 + 48))(a1);
    v16 = MEMORY[0x245D431D0](v14, v15);
  }

  else
  {
    v16 = sub_2438AA2A8(&v19, "Total length: not defined", 25);
  }

  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v19 = *MEMORY[0x277D82828];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v23);
}

void sub_2438EE9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438EEA1C(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Total length is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[3];
}

uint64_t sub_2438EEAB4(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A19F8, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return sub_2438F3B84(a1 + 16, v4 + 16);
}

uint64_t sub_2438EEB40(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_2438EEB54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA40;
  result = *(a2 + 72);
  if (!result)
  {
    result = sub_2438BE784(0);
    *(a2 + 72) = result;
  }

  v6 = *(a1 + 24);
  *(result + 4) |= 1u;
  result[3] = v6;
  return result;
}

uint64_t sub_2438EEBC4(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 12) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2438EEBE0(uint64_t a1)
{
  sub_2438A9A08(&v27);
  v2 = sub_2438AA2A8(&v27, "Data type: Boolean", 18);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v27, "(true: ", 7);
    v15 = (*(*a1 + 56))(a1);
    v16 = MEMORY[0x245D431D0](v14, v15);
    v17 = sub_2438AA2A8(v16, "; false: ", 9);
    v18 = (*(*a1 + 48))(a1);
    v19 = MEMORY[0x245D431D0](v17, v18);
    v20 = ")";
    v21 = 1;
  }

  else
  {
    v22 = sub_2438AA2A8(&v27, "(true: not defined; false: not defined)", 39);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    v20 = "True and false counts are not defined";
    v19 = &v27;
    v21 = 37;
  }

  v24 = sub_2438AA2A8(v19, v20, v21);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v27 = *MEMORY[0x277D82828];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v31);
}

void sub_2438EF158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438EF194(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "False count is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return (*(*a1 + 16))(a1) - a1[7];
}

uint64_t sub_2438EF258(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "True count is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[7];
}

uint64_t sub_2438EF2F0(uint64_t result, uint64_t a2)
{
  *(result + 32) += a2;
  *(result + 48) = 1;
  return result;
}

uint64_t sub_2438EF308(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1A48, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  result = sub_2438F3B84(a1 + 16, (v4 + 16));
  if (*(a1 + 48) == 1)
  {
    v7 = v5[48];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 48) = v7 & 1;
  *(a1 + 56) += *(v5 + 7);
  return result;
}

uint64_t sub_2438EF3B8(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 1;
  *(result + 56) = 0;
  return result;
}

void sub_2438EF3D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA08;
  v4 = *(a2 + 48);
  if (!v4)
  {
    v4 = sub_2438BE534(0);
    *(a2 + 48) = v4;
  }

  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 56);
    v7 = v4[6];
    if (v7 == v4[7])
    {
      sub_2438BFA30(v4 + 6, v7 + 1);
      v7 = v4[6];
    }

    v8 = *(v4 + 4) + 8 * v7;
    v4[6] = v7 + 1;
    *(v8 + 8) = v6;
  }

  else
  {
    v4[6] = 0;
  }
}

uint64_t sub_2438EF484(uint64_t result, uint64_t a2)
{
  *(result + 24) += a2;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_2438EF4A4(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 1;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_2438EF4C8(uint64_t a1)
{
  sub_2438A9A08(&v23);
  v2 = sub_2438AA2A8(&v23, "Data type: Date", 15);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v23, "Minimum: ", 9);
    v15 = (*(*a1 + 56))(a1);
    v16 = MEMORY[0x245D43190](v14, v15);
  }

  else
  {
    v16 = sub_2438AA2A8(&v23, "Minimum: not defined", 20);
  }

  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 48))(a1))
  {
    v18 = sub_2438AA2A8(&v23, "Maximum: ", 9);
    v19 = (*(*a1 + 64))(a1);
    v20 = MEMORY[0x245D43190](v18, v19);
  }

  else
  {
    v20 = sub_2438AA2A8(&v23, "Maximum: not defined", 20);
  }

  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v23 = *MEMORY[0x277D82828];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x277D82828] + 24);
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v27);
}

void sub_2438EFA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438EFAAC(unsigned int *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[10];
}

uint64_t sub_2438EFB44(unsigned int *a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[11];
}

uint64_t sub_2438EFBDC(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1A98, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return sub_2438F3C1C(a1 + 16, v4 + 16);
}

_DWORD *sub_2438EFC68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA20;
  result = *(a2 + 64);
  if (!result)
  {
    result = sub_2438BE65C(0);
    *(a2 + 64) = result;
  }

  if (*(a1 + 17) == 1)
  {
    v6 = *(a1 + 44);
    v7 = result[4];
    result[4] = v7 | 2;
    result[7] = v6;
    v8 = *(a1 + 40);
    v9 = v7 | 3;
  }

  else
  {
    v8 = 0;
    v10 = result[4];
    result[7] = 0;
    v9 = v10 & 0xFFFFFFFC;
  }

  result[4] = v9;
  result[6] = v8;
  return result;
}

uint64_t sub_2438EFD10(uint64_t a1)
{
  sub_2438A9A08(&v38);
  v2 = sub_2438AA2A8(&v38, "Data type: Decimal", 18);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v38, "Minimum: ", 9);
    (*(*a1 + 64))(v36, a1);
    sub_2438FF1C0(v36, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v37;
    }

    else
    {
      v15 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v17 = sub_2438AA2A8(v14, v15, size);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = sub_2438AA2A8(&v38, "Minimum: not defined", 20);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
  }

  if ((*(*a1 + 48))(a1))
  {
    v21 = sub_2438AA2A8(&v38, "Maximum: ", 9);
    (*(*a1 + 72))(v36, a1);
    sub_2438FF1C0(v36, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v37;
    }

    else
    {
      v22 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v37.__r_.__value_.__l.__size_;
    }

    v24 = sub_2438AA2A8(v21, v22, v23);
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v26 = sub_2438AA2A8(&v38, "Maximum: not defined", 20);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
  }

  if ((*(*a1 + 56))(a1))
  {
    v28 = sub_2438AA2A8(&v38, "Sum: ", 5);
    (*(*a1 + 80))(v36, a1);
    sub_2438FF1C0(v36, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v37;
    }

    else
    {
      v29 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v37.__r_.__value_.__l.__size_;
    }

    v31 = sub_2438AA2A8(v28, v29, v30);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v33 = sub_2438AA2A8(&v38, "Sum: not defined", 16);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
  }

  std::stringbuf::str();
  v38 = *MEMORY[0x277D82828];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v42);
}

void sub_2438F05D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::locale::~locale((v18 - 56));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_2438A9B74(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_2438F065C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

__n128 sub_2438F0704@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  if (!(*(a1->n128_u64[0] + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = a1[4];
  *a2 = result;
  a2[1].n128_u64[0] = a1[5].n128_u64[0];
  return result;
}

__n128 sub_2438F07AC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (!(*(*a1 + 56))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Sum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = *(a1 + 88);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 104);
  return result;
}

uint64_t sub_2438F0854(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1AE8, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  result = sub_2438F3CB4(a1 + 16, v4 + 16);
  if (*(a1 + 19))
  {
    result = (*(*v5 + 56))(v5);
    *(a1 + 19) = result;
    if (result)
    {
      (*(*v5 + 80))(v7, v5);
      return sub_2438D7D7C(a1, v7);
    }
  }

  else
  {
    *(a1 + 19) = 0;
  }

  return result;
}

double sub_2438F0954(uint64_t a1)
{
  *(a1 + 20) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_2438FF1B4(&v3);
  *(a1 + 19) = 1;
  result = *&v3;
  *(a1 + 88) = v3;
  *(a1 + 104) = v4;
  return result;
}

void sub_2438F09A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA10;
  v4 = *(a2 + 56);
  if (!v4)
  {
    v4 = sub_2438BE5C8(0);
    *(a2 + 56) = v4;
  }

  if (*(a1 + 17) == 1)
  {
    sub_2438FF1C0(a1 + 40, &__p);
    *(v4 + 4) |= 1u;
    sub_2438C1BA0(v4 + 3, &qword_27ED97020, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_2438FF1C0(a1 + 64, &__p);
    *(v4 + 4) |= 2u;
    sub_2438C1BA0(v4 + 4, &qword_27ED97020, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = v4[3];
    if (v6 != &qword_27ED97020)
    {
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
      }
    }

    *(v4 + 4) &= ~1u;
    v7 = v4[4];
    if (v7 != &qword_27ED97020)
    {
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

    *(v4 + 4) &= ~2u;
  }

  if (*(a1 + 19) == 1)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 104);
    sub_2438FF1C0(&v9, &__p);
    *(v4 + 4) |= 4u;
    sub_2438C1BA0(v4 + 5, &qword_27ED97020, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = v4[5];
    if (v8 != &qword_27ED97020)
    {
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    *(v4 + 4) &= ~4u;
  }
}

void sub_2438F0BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2438F0BDC(uint64_t a1)
{
  *(a1 + 12) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_2438FF1B4(&v3);
  *(a1 + 11) = 1;
  result = *&v3;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return result;
}

uint64_t sub_2438F0C38(uint64_t a1)
{
  sub_2438A9A08(&v24);
  v2 = sub_2438AA2A8(&v24, "Data type: Double", 17);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v24, "Minimum: ", 9);
    (*(*a1 + 64))(a1);
    v15 = MEMORY[0x245D43180](v14);
  }

  else
  {
    v15 = sub_2438AA2A8(&v24, "Minimum: not defined", 20);
  }

  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 48))(a1))
  {
    v17 = sub_2438AA2A8(&v24, "Maximum: ", 9);
    (*(*a1 + 72))(a1);
    v18 = MEMORY[0x245D43180](v17);
  }

  else
  {
    v18 = sub_2438AA2A8(&v24, "Maximum: not defined", 20);
  }

  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 56))(a1))
  {
    v20 = sub_2438AA2A8(&v24, "Sum: ", 5);
    (*(*a1 + 80))(a1);
    v21 = MEMORY[0x245D43180](v20);
  }

  else
  {
    v21 = sub_2438AA2A8(&v24, "Sum: not defined", 16);
  }

  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v24 = *MEMORY[0x277D82828];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v28);
}

void sub_2438F12D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

double sub_2438F1310(double *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[5];
}

double sub_2438F13A8(double *a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[6];
}

double sub_2438F1440(double *a1)
{
  if (!(*(*a1 + 56))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Sum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[7];
}

void sub_2438F14D8(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1B38, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  sub_2438F3DE4(a1 + 16, v4 + 16);
  if (*(a1 + 19))
  {
    v6 = (*(*v5 + 56))(v5);
    *(a1 + 19) = v6;
    if (v6)
    {
      v7 = *(a1 + 56);
      *(a1 + 56) = v7 + (*(*v5 + 80))(v5);
    }
  }

  else
  {
    *(a1 + 19) = 0;
  }
}

uint64_t sub_2438F15D4(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 19) = 1;
  *(result + 56) = 0;
  return result;
}

void *sub_2438F15F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA02;
  result = *(a2 + 32);
  if (!result)
  {
    result = sub_2438BE40C(0);
    *(a2 + 32) = result;
  }

  if (*(a1 + 17) == 1)
  {
    v6 = *(result + 4);
    result[3] = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v6 | 3;
  }

  else
  {
    result[3] = 0;
    v8 = result[2] & 0xFFFFFFFC;
    v7 = 0;
  }

  result[4] = v7;
  if (*(a1 + 19) == 1)
  {
    v9 = *(a1 + 56);
    v10 = v8 | 4;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFB;
    v9 = 0;
  }

  *(result + 4) = v10;
  result[5] = v9;
  return result;
}

uint64_t sub_2438F16AC(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 11) = 1;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_2438F16D0(uint64_t a1)
{
  sub_2438A9A08(&v27);
  v2 = sub_2438AA2A8(&v27, "Data type: Integer", 18);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v27, "Minimum: ", 9);
    v15 = (*(*a1 + 64))(a1);
    v16 = MEMORY[0x245D431C0](v14, v15);
  }

  else
  {
    v16 = sub_2438AA2A8(&v27, "Minimum: not defined", 20);
  }

  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 48))(a1))
  {
    v18 = sub_2438AA2A8(&v27, "Maximum: ", 9);
    v19 = (*(*a1 + 72))(a1);
    v20 = MEMORY[0x245D431C0](v18, v19);
  }

  else
  {
    v20 = sub_2438AA2A8(&v27, "Maximum: not defined", 20);
  }

  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 56))(a1))
  {
    v22 = sub_2438AA2A8(&v27, "Sum: ", 5);
    v23 = (*(*a1 + 80))(a1);
    v24 = MEMORY[0x245D431C0](v22, v23);
  }

  else
  {
    v24 = sub_2438AA2A8(&v27, "Sum: not defined", 16);
  }

  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v27 = *MEMORY[0x277D82828];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v31);
}

void sub_2438F1D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438F1DB4(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[5];
}

uint64_t sub_2438F1E4C(void *a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[6];
}

uint64_t sub_2438F1EE4(void *a1)
{
  if (!(*(*a1 + 56))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Sum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[7];
}

uint64_t sub_2438F1F7C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1B88, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  result = sub_2438F3E7C(a1 + 16, v4 + 16);
  if (*(a1 + 19) != 1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  result = (*(*v5 + 56))(v5);
  *(a1 + 19) = result;
  if (result)
  {
    v7 = *(a1 + 56);
    *(a1 + 56) = (*(*v5 + 80))(v5) + v7;
    result = (*(*v5 + 80))(v5);
    if (((result ^ v7) & 0x8000000000000000) == 0)
    {
      v8 = (*(a1 + 56) ^ v7) >= 0;
LABEL_7:
      *(a1 + 19) = v8;
    }
  }

  return result;
}

void *sub_2438F20C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA01;
  result = *(a2 + 24);
  if (!result)
  {
    result = sub_2438BE378(0);
    *(a2 + 24) = result;
  }

  if (*(a1 + 17) == 1)
  {
    v6 = *(result + 4);
    result[3] = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v6 | 3;
  }

  else
  {
    v7 = 0;
    result[3] = 0;
    v8 = result[2] & 0xFFFFFFFC;
  }

  result[4] = v7;
  if (*(a1 + 19) == 1)
  {
    v9 = *(a1 + 56);
    v10 = v8 | 4;
  }

  else
  {
    v9 = 0;
    v10 = v8 & 0xFFFFFFFB;
  }

  *(result + 4) = v10;
  result[5] = v9;
  return result;
}

uint64_t sub_2438F2184(uint64_t a1)
{
  sub_2438A9A08(&v33);
  v2 = sub_2438AA2A8(&v33, "Data type: String", 17);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v14 = sub_2438AA2A8(&v33, "Minimum: ", 9);
    v15 = (*(*a1 + 64))(a1);
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = sub_2438AA2A8(v14, v17, v18);
  }

  else
  {
    v19 = sub_2438AA2A8(&v33, "Minimum is not defined", 22);
  }

  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 48))(a1))
  {
    v21 = sub_2438AA2A8(&v33, "Maximum: ", 9);
    v22 = (*(*a1 + 72))(a1);
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >= 0)
    {
      v25 = *(v22 + 23);
    }

    else
    {
      v25 = *(v22 + 8);
    }

    v26 = sub_2438AA2A8(v21, v24, v25);
  }

  else
  {
    v26 = sub_2438AA2A8(&v33, "Maximum is not defined", 22);
  }

  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 56))(a1))
  {
    v28 = sub_2438AA2A8(&v33, "Total length: ", 14);
    v29 = (*(*a1 + 80))(a1);
    v30 = MEMORY[0x245D431D0](v28, v29);
  }

  else
  {
    v30 = sub_2438AA2A8(&v33, "Total length is not defined", 27);
  }

  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v37);
}

void sub_2438F2858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_2438A9B74(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2438F2890(uint64_t a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1 + 40;
}

uint64_t sub_2438F2928(uint64_t a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1 + 64;
}

uint64_t sub_2438F29C0(void *a1)
{
  if (!(*(*a1 + 56))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Total length is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[3];
}

void sub_2438F2A58(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1BD8, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  sub_2438F3F14(a1 + 16, v4 + 16);
}

std::string *sub_2438F2AE4(std::string *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  *(a2 + 112) = result->__r_.__value_.__s.__data_[16];
  *(a2 + 96) = result[1].__r_.__value_.__l.__size_;
  *(a2 + 16) = v3 | 0xA04;
  v4 = *(a2 + 40);
  if (!v4)
  {
    result = sub_2438BE4A0(0);
    v4 = result;
    *(a2 + 40) = result;
  }

  if (v2->__r_.__value_.__s.__data_[17] == 1)
  {
    data = v4[1].__r_.__value_.__l.__data_;
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    v7 = (v2 + 40);
    if (data == &qword_27ED97020)
    {
      sub_2438BF924(v4[1].__r_.__value_.__r.__words, v7);
    }

    else
    {
      std::string::operator=(data, v7);
    }

    size = v4[1].__r_.__value_.__l.__size_;
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = (v2 + 64);
    if (size == &qword_27ED97020)
    {
      result = sub_2438BF924(&v4[1].__r_.__value_.__l.__size_, v10);
    }

    else
    {
      result = std::string::operator=(size, v10);
    }
  }

  else
  {
    v8 = v4[1].__r_.__value_.__l.__data_;
    if (v8 != &qword_27ED97020)
    {
      if (v8[23] < 0)
      {
        **v8 = 0;
        *(v8 + 1) = 0;
      }

      else
      {
        *v8 = 0;
        v8[23] = 0;
      }
    }

    LODWORD(v4->__r_.__value_.__r.__words[2]) &= ~1u;
    v11 = v4[1].__r_.__value_.__l.__size_;
    if (v11 != &qword_27ED97020)
    {
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

    LODWORD(v4->__r_.__value_.__r.__words[2]) &= ~2u;
  }

  if (v2->__r_.__value_.__s.__data_[20] == 1)
  {
    v12 = v2[1].__r_.__value_.__l.__data_;
    v13 = LODWORD(v4->__r_.__value_.__r.__words[2]) | 0x10;
  }

  else
  {
    v12 = 0;
    v13 = v4->__r_.__value_.__r.__words[2] & 0xFFFFFFEF;
  }

  LODWORD(v4->__r_.__value_.__r.__words[2]) = v13;
  v4[2].__r_.__value_.__l.__size_ = v12;
  return result;
}

uint64_t sub_2438F2C78(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  sub_2438A9A08(&v46);
  v44 = 0;
  v2 = sub_2438AA2A8(&v46, "Data type: Timestamp", 20);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_2438AA2A8(v2, "Values: ", 8);
  v5 = (*(*a1 + 16))(a1);
  v6 = MEMORY[0x245D431D0](v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_2438AA2A8(v6, "Has null: ", 10);
  v9 = (*(*a1 + 24))(a1);
  if (v9)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 40))(a1))
  {
    v44 = (*(*a1 + 56))(a1) / 1000;
    gmtime_r(&v44, &v45);
    strftime(__s, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v45);
    v14 = sub_2438AA2A8(&v46, "Minimum: ", 9);
    v15 = strlen(__s);
    v16 = sub_2438AA2A8(v14, __s, v15);
    v17 = sub_2438AA2A8(v16, ".", 1);
    v18 = (*(*a1 + 56))(a1);
    v19 = MEMORY[0x245D431C0](v17, v18 % 1000);
  }

  else
  {
    v19 = sub_2438AA2A8(&v46, "Minimum is not defined", 22);
  }

  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 72))(a1))
  {
    v44 = (*(*a1 + 88))(a1) / 1000;
    gmtime_r(&v44, &v45);
    strftime(__s, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v45);
    v21 = sub_2438AA2A8(&v46, "LowerBound: ", 12);
    v22 = strlen(__s);
    v23 = sub_2438AA2A8(v21, __s, v22);
    v24 = sub_2438AA2A8(v23, ".", 1);
    v25 = (*(*a1 + 88))(a1);
    v26 = MEMORY[0x245D431C0](v24, v25 % 1000);
  }

  else
  {
    v26 = sub_2438AA2A8(&v46, "LowerBound is not defined", 25);
  }

  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 48))(a1))
  {
    v44 = (*(*a1 + 64))(a1) / 1000;
    gmtime_r(&v44, &v45);
    strftime(__s, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v45);
    v28 = sub_2438AA2A8(&v46, "Maximum: ", 9);
    v29 = strlen(__s);
    v30 = sub_2438AA2A8(v28, __s, v29);
    v31 = sub_2438AA2A8(v30, ".", 1);
    v32 = (*(*a1 + 64))(a1);
    v33 = MEMORY[0x245D431C0](v31, v32 % 1000);
  }

  else
  {
    v33 = sub_2438AA2A8(&v46, "Maximum is not defined", 22);
  }

  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if ((*(*a1 + 80))(a1))
  {
    v44 = (*(*a1 + 96))(a1) / 1000;
    gmtime_r(&v44, &v45);
    strftime(__s, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v45);
    v35 = sub_2438AA2A8(&v46, "UpperBound: ", 12);
    v36 = strlen(__s);
    v37 = sub_2438AA2A8(v35, __s, v36);
    v38 = sub_2438AA2A8(v37, ".", 1);
    v39 = (*(*a1 + 96))(a1);
    v40 = MEMORY[0x245D431C0](v38, v39 % 1000);
  }

  else
  {
    v40 = sub_2438AA2A8(&v46, "UpperBound is not defined", 25);
  }

  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v46 = *MEMORY[0x277D82828];
  *(&v46 + *(v46 - 24)) = *(MEMORY[0x277D82828] + 24);
  v47 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(v48[7].__locale_);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::ostream::~ostream();
  result = MEMORY[0x245D432B0](&v50);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2438F3744(void *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Minimum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[5];
}

uint64_t sub_2438F37DC(void *a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Maximum is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[6];
}

uint64_t sub_2438F3884(void *a1)
{
  if (!(*(*a1 + 72))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "LowerBound is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[9];
}

uint64_t sub_2438F391C(void *a1)
{
  if (!(*(*a1 + 80))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "UpperBound is not defined.");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1[10];
}

uint64_t sub_2438F39B4(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_2856A1998, &unk_2856A1C28, 8);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return sub_2438F3E7C(a1 + 16, v4 + 16);
}

_DWORD *sub_2438F3A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a2 + 112) = *(a1 + 16);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 16) = v3 | 0xA80;
  result = *(a2 + 80);
  if (!result)
  {
    result = sub_2438BE6F0(0);
    *(a2 + 80) = result;
  }

  if (*(a1 + 17) == 1)
  {
    v6 = result[4];
    *(result + 5) = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v6 | 0xC;
  }

  else
  {
    v7 = 0;
    *(result + 5) = 0;
    v8 = result[4] & 0xFFFFFFF3;
  }

  result[4] = v8;
  *(result + 6) = v7;
  return result;
}

uint64_t sub_2438F3B84(uint64_t result, uint64_t a2)
{
  *result = (*result | *a2) & 1;
  *(result + 16) += *(a2 + 16);
  if (*(a2 + 1) == 1)
  {
    if (*(result + 1))
    {
      v2 = *(a2 + 25);
      if (*(result + 25) < v2)
      {
        *(result + 25) = v2;
      }

      v3 = *(a2 + 24);
      if (v3 < *(result + 24))
      {
        *(result + 24) = v3;
      }
    }

    else
    {
      *(result + 1) = 257;
      *(result + 24) = *(a2 + 24);
    }
  }

  *(result + 4) &= *(a2 + 4);
  *(result + 8) += *(a2 + 8);
  return result;
}

uint64_t sub_2438F3C1C(uint64_t result, uint64_t a2)
{
  *result = (*result | *a2) & 1;
  *(result + 16) += *(a2 + 16);
  if (*(a2 + 1) == 1)
  {
    if (*(result + 1))
    {
      v2 = *(a2 + 28);
      if (*(result + 28) < v2)
      {
        *(result + 28) = v2;
      }

      v3 = *(a2 + 24);
      if (v3 < *(result + 24))
      {
        *(result + 24) = v3;
      }
    }

    else
    {
      *(result + 1) = 257;
      *(result + 24) = *(a2 + 24);
    }
  }

  *(result + 4) &= *(a2 + 4);
  *(result + 8) += *(a2 + 8);
  return result;
}

uint64_t sub_2438F3CB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = (*result | *a2) & 1;
  *(result + 16) += *(a2 + 16);
  if (*(a2 + 1) == 1)
  {
    if (*(result + 1))
    {
      v10 = *(result + 48);
      v11 = *(result + 64);
      v8 = *(a2 + 48);
      v9 = *(a2 + 64);
      if (sub_2438D7E70(&v10, &v8))
      {
        v4 = *(a2 + 48);
        *(v3 + 64) = *(a2 + 64);
        *(v3 + 48) = v4;
      }

      v10 = *(a2 + 24);
      v11 = *(a2 + 40);
      v8 = *(v3 + 24);
      v9 = *(v3 + 40);
      result = sub_2438D7E70(&v10, &v8);
      if (result)
      {
        v5 = *(a2 + 24);
        *(v3 + 40) = *(a2 + 40);
        *(v3 + 24) = v5;
      }
    }

    else
    {
      *(result + 1) = 257;
      v6 = *(a2 + 24);
      *(result + 40) = *(a2 + 40);
      *(result + 24) = v6;
      v7 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v7;
    }
  }

  *(v3 + 4) &= *(a2 + 4);
  *(v3 + 8) += *(a2 + 8);
  return result;
}

uint64_t sub_2438F3DE4(uint64_t result, uint64_t a2)
{
  *result = (*result | *a2) & 1;
  *(result + 16) += *(a2 + 16);
  if (*(a2 + 1) == 1)
  {
    if (*(result + 1))
    {
      v2 = *(a2 + 32);
      if (*(result + 32) < v2)
      {
        *(result + 32) = v2;
      }

      v3 = *(a2 + 24);
      if (v3 < *(result + 24))
      {
        *(result + 24) = v3;
      }
    }

    else
    {
      *(result + 1) = 257;
      *(result + 24) = *(a2 + 24);
    }
  }

  *(result + 4) &= *(a2 + 4);
  *(result + 8) += *(a2 + 8);
  return result;
}

uint64_t sub_2438F3E7C(uint64_t result, uint64_t a2)
{
  *result = (*result | *a2) & 1;
  *(result + 16) += *(a2 + 16);
  if (*(a2 + 1) == 1)
  {
    if (*(result + 1))
    {
      v2 = *(a2 + 32);
      if (*(result + 32) < v2)
      {
        *(result + 32) = v2;
      }

      v3 = *(a2 + 24);
      if (v3 < *(result + 24))
      {
        *(result + 24) = v3;
      }
    }

    else
    {
      *(result + 1) = 257;
      *(result + 24) = *(a2 + 24);
    }
  }

  *(result + 4) &= *(a2 + 4);
  *(result + 8) += *(a2 + 8);
  return result;
}

void sub_2438F3F14(uint64_t a1, uint64_t a2)
{
  *a1 = (*a1 | *a2) & 1;
  *(a1 + 16) += *(a2 + 16);
  if (*(a2 + 1) != 1)
  {
    goto LABEL_67;
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    *(a1 + 1) = 257;
    std::string::operator=((a1 + 24), (a2 + 24));
    v4 = (a1 + 48);
    v5 = (a2 + 48);
LABEL_66:
    std::string::operator=(v4, v5);
    goto LABEL_67;
  }

  if (*(a1 + 71) < 0)
  {
    sub_2438BF99C(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v33 = *(a1 + 64);
  }

  if (*(a2 + 71) < 0)
  {
    sub_2438BF99C(&__dst, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __dst = *(a2 + 48);
    v31 = *(a2 + 64);
  }

  v6 = SHIBYTE(v31);
  v7 = __dst;
  v8 = HIBYTE(v33);
  if (v33 >= 0)
  {
    v9 = HIBYTE(v33);
  }

  else
  {
    v9 = __p[1];
  }

  if (v33 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v31 >= 0)
  {
    v11 = SHIBYTE(v31);
  }

  else
  {
    v11 = *(&__dst + 1);
  }

  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = memcmp(v10, p_dst, v13);
  if (v14)
  {
    v15 = v14 < 0;
  }

  else
  {
    v15 = v9 < v11;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    operator delete(__p[0]);
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v7);
  if (v33 < 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  if (v15)
  {
LABEL_31:
    std::string::operator=((a1 + 48), (a2 + 48));
  }

LABEL_32:
  if (*(a2 + 47) < 0)
  {
    sub_2438BF99C(v28, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *v28 = *(a2 + 24);
    v29 = *(a2 + 40);
  }

  if (*(a1 + 47) < 0)
  {
    sub_2438BF99C(&v26, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v26 = *(a1 + 24);
    v27 = *(a1 + 40);
  }

  v16 = SHIBYTE(v27);
  v17 = v26;
  v18 = HIBYTE(v29);
  if (v29 >= 0)
  {
    v19 = HIBYTE(v29);
  }

  else
  {
    v19 = v28[1];
  }

  if (v29 >= 0)
  {
    v20 = v28;
  }

  else
  {
    v20 = v28[0];
  }

  if (v27 >= 0)
  {
    v21 = SHIBYTE(v27);
  }

  else
  {
    v21 = *(&v26 + 1);
  }

  if (v27 >= 0)
  {
    v22 = &v26;
  }

  else
  {
    v22 = v26;
  }

  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  v24 = memcmp(v20, v22, v23);
  if (v24)
  {
    v25 = v24 < 0;
  }

  else
  {
    v25 = v19 < v21;
  }

  if (v16 < 0)
  {
    operator delete(v17);
    if ((v29 & 0x8000000000000000) == 0)
    {
LABEL_61:
      if (!v25)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_61;
  }

  operator delete(v28[0]);
  if (v25)
  {
LABEL_65:
    v4 = (a1 + 24);
    v5 = (a2 + 24);
    goto LABEL_66;
  }

LABEL_67:
  *(a1 + 4) &= *(a2 + 4);
  *(a1 + 8) += *(a2 + 8);
}

void sub_2438F4188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F41BC(uint64_t a1)
{
  sub_2438FF1B4(a1 + 24);
  sub_2438FF1B4(a1 + 48);
  sub_2438FF1B4(a1 + 72);
  *(a1 + 4) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_2438F4204(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_2438F4258(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_2438E676C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2438F42CC(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v11);
      v5 += v11;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_243980874();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_2438D8BEC(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = a1[1] - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v15;
    v19 = a1[2];
    a1[2] = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_2438F4438(v20);
  }
}

void **sub_2438F4438(void **a1)
{
  sub_2438F446C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438F446C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_2438E676C(&v5);
  }
}

void *sub_2438F44C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2856A1CC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2438F4518(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2439899B4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F4530(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2438F4560(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A1D18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2438F45A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = &unk_2856A1D40;
  result[1] = a2;
  result[2] = a4;
  result[3] = a5;
  result[4] = a3;
  result[5] = a6;
  result[6] = a7;
  result[7] = a8;
  return result;
}

void sub_2438F45D0(uint64_t a1)
{
  v1 = nullsub_1(a1);

  operator delete(v1);
}

void *sub_2438F4668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = a1[5];
  v11 = a1[2];
  v12 = v11[6];
  v13 = v11[7];
  v14 = v11[8];
  result = sub_2438E2638(a1[1]);
  v16 = a1[3];
  v17 = *(v16 + 32);
  if (v17 < 1)
  {
LABEL_7:
    *a5 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v13 + v12 + v14;
    v20 = result[6];
    v21 = *(v16 + 40) + 8;
    while (1)
    {
      v22 = *(v21 + 8 * v18);
      if ((*(v22 + 16) & 1) != 0 && *(v22 + 24) == a3 && *(v22 + 28) == a2)
      {
        break;
      }

      v10 += *(v22 + 32);
      if (v17 == ++v18)
      {
        goto LABEL_7;
      }
    }

    v23 = *(v22 + 32);
    v24 = v23;
    if (a4)
    {
      v24 = (*(*a1[6] + 24))(a1[6]);
    }

    if (v23 + v10 > v19)
    {
      sub_2438C102C(&v44);
      v28 = sub_2438AA2A8(v45, "Malformed stream meta at stream index ", 38);
      v29 = MEMORY[0x245D43190](v28, v18);
      v30 = sub_2438AA2A8(v29, " in stripe ", 11);
      v31 = MEMORY[0x245D431D0](v30, a1[4]);
      v32 = sub_2438AA2A8(v31, ": streamOffset=", 15);
      v33 = MEMORY[0x245D431D0](v32, v10);
      v34 = sub_2438AA2A8(v33, ", streamLength=", 15);
      v35 = MEMORY[0x245D431D0](v34, v23);
      v36 = sub_2438AA2A8(v35, ", stripeOffset=", 15);
      v37 = MEMORY[0x245D431D0](v36, *(a1[2] + 48));
      v38 = sub_2438AA2A8(v37, ", stripeIndexLength=", 20);
      v39 = MEMORY[0x245D431D0](v38, *(a1[2] + 56));
      v40 = sub_2438AA2A8(v39, ", stripeDataLength=", 19);
      MEMORY[0x245D431D0](v40, *(a1[2] + 64));
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      sub_2438DCB2C(exception, &v43);
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v25 = sub_2438E1CD0(a1[1]);
    v26 = operator new(0x48uLL);
    sub_2438A9D84(v26, a1[6], v10, *(v22 + 32), v20, v24);
    v42 = v26;
    v27 = sub_2438E1CDC(a1[1]);
    sub_2438DB514(v25, &v42, v27, v20, a5);
    result = v42;
    v42 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_2438F491C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_2438F49BC(uint64_t result)
{
  if (!*(result + 80))
  {
    v1 = result;
    v2 = *(result + 64);
    v3 = operator new(0x48uLL);
    sub_2438A9D84(v3, v1[6], v1[2] + v1[1] + v1[3], v1[4], v1[7], 0);
    v8 = v3;
    sub_2438DB514(v2, &v8, v1[9], v1[7], &v9);
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = operator new(0x68uLL);
    sub_2438B4DF4(v5);
    v6 = v1[10];
    v1[10] = v5;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v5 = v1[10];
    }

    if ((sub_243966404(v5, v9) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Failed to parse the stripe footer");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_2438F4B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_2438F4BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2438F49BC(a1);
  v6 = *(a1 + 8);
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v6 += *(*(*(*(a1 + 80) + 40) + 8 + (v7 >> 29)) + 32);
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }

  result = operator new(0x28uLL);
  v10 = *(*(*(a1 + 80) + 40) + 8 * a2 + 8);
  *result = &unk_2856A1DB0;
  v11 = *(v10 + 28);
  result[2] = *(v10 + 24);
  *(result + 2) = v11;
  *(result + 3) = v6;
  *(result + 4) = *(v10 + 32);
  *a3 = result;
  return result;
}

void *sub_2438F4C7C(void *a1)
{
  *a1 = &unk_2856A1E18;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438F4CEC(void *__p)
{
  *__p = &unk_2856A1E18;
  v2 = __p[10];
  __p[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_2438F4E58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (!v3)
  {
    return -1;
  }

  v4 = (v3 >> 3) - 1;
  v5 = v4 >> 1;
  v6 = *(v2 + 8 * (v4 >> 1));
  if (v6 != a2 && v4 != 0)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      if (v4 >= 2)
      {
        v10 = v5 - 1;
      }

      else
      {
        v10 = 0;
      }

      if (v6 >= a2)
      {
        v9 = v10;
      }

      else
      {
        v8 = v5 + 1;
      }

      v4 = v9 + v8;
      v5 = (v9 + v8) >> 1;
      v6 = *(v2 + 8 * v5);
    }

    while (v6 != a2 && v8 < v9);
  }

  return v5 - (v6 > a2);
}

uint64_t sub_2438F4ED0(uint64_t a1)
{
  *a1 = &unk_2856A1EC0;
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2438F4F54(uint64_t a1)
{
  v1 = sub_2438F4ED0(a1);

  operator delete(v1);
}

BOOL sub_2438F4F7C(uint64_t a1)
{
  v1 = *(a1 + 31);
  if (v1 < 0)
  {
    v1 = *(a1 + 16);
  }

  return v1 != 0;
}

uint64_t sub_2438F4F94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    if (a2 % 0x2F0605980 >= 0)
    {
      v3 = a2 % 0x2F0605980;
    }

    else
    {
      v3 = a2 % 0x2F0605980 + 0x2F0605980;
    }

    v4 = sub_2438F4E58((a1 + 200), v3);
    v5 = 32;
    if ((v4 & 1) == *(a1 + 224))
    {
      v5 = 80;
    }
  }

  else
  {
    v5 = 32;
  }

  return a1 + v5;
}

void sub_2438F5028(uint64_t a1, void *a2)
{
  if ((*(*a1 + 16))(a1))
  {
    v4 = sub_2438AA2A8(a2, "  Future rule: ", 15);
    v5 = *(a1 + 8);
    v6 = *(a1 + 31);
    if (v6 >= 0)
    {
      v7 = a1 + 8;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 31);
    }

    else
    {
      v8 = *(a1 + 16);
    }

    v9 = sub_2438AA2A8(v4, v7, v8);
    sub_2438AA2A8(v9, "\n", 1);
    v10 = sub_2438AA2A8(a2, "  standard ", 11);
    sub_2438F52A8(a1 + 32);
    if ((v28 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v12 = v28;
    }

    else
    {
      v12 = v27;
    }

    v13 = sub_2438AA2A8(v10, p_p, v12);
    sub_2438AA2A8(v13, "\n", 1);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 72) == 1)
    {
      v14 = sub_2438AA2A8(a2, "  dst ", 6);
      sub_2438F52A8(a1 + 80);
      if ((v28 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v28 & 0x80u) == 0)
      {
        v16 = v28;
      }

      else
      {
        v16 = v27;
      }

      v17 = sub_2438AA2A8(v14, v15, v16);
      sub_2438AA2A8(v17, "\n", 1);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      v18 = sub_2438AA2A8(a2, "  start ", 8);
      sub_2438F54A0((a1 + 120));
      if ((v28 & 0x80u) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p;
      }

      if ((v28 & 0x80u) == 0)
      {
        v20 = v28;
      }

      else
      {
        v20 = v27;
      }

      v21 = sub_2438AA2A8(v18, v19, v20);
      sub_2438AA2A8(v21, "\n", 1);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      v22 = sub_2438AA2A8(a2, "  end ", 6);
      sub_2438F54A0((a1 + 160));
      if ((v28 & 0x80u) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p;
      }

      if ((v28 & 0x80u) == 0)
      {
        v24 = v28;
      }

      else
      {
        v24 = v27;
      }

      v25 = sub_2438AA2A8(v22, v23, v24);
      sub_2438AA2A8(v25, "\n", 1);
      if (v28 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_2438F5280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F52A8(uint64_t a1)
{
  sub_2438C102C(v9);
  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = a1 + 16;
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 39);
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = sub_2438AA2A8(&v10, v3, v4);
  v6 = sub_2438AA2A8(v5, " ", 1);
  MEMORY[0x245D431C0](v6, *a1);
  if (*(a1 + 8) == 1)
  {
    sub_2438AA2A8(&v10, " (dst)", 6);
  }

  std::stringbuf::str();
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D432B0](&v14);
}

void sub_2438F548C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438C12D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438F54A0(int *a1)
{
  sub_2438C102C(v17);
  v2 = *a1;
  if (*a1 == 2)
  {
    v6 = sub_2438AA2A8(&v18, "month ", 6);
    v7 = MEMORY[0x245D431C0](v6, *(a1 + 3));
    v8 = sub_2438AA2A8(v7, " week ", 6);
    v3 = MEMORY[0x245D431C0](v8, *(a1 + 2));
    v4 = " day ";
    v5 = 5;
  }

  else if (v2 == 1)
  {
    v3 = &v18;
    v4 = "day ";
    v5 = 4;
  }

  else
  {
    if (v2)
    {
      goto LABEL_8;
    }

    v3 = &v18;
    v4 = "julian ";
    v5 = 7;
  }

  v9 = sub_2438AA2A8(v3, v4, v5);
  MEMORY[0x245D431C0](v9, *(a1 + 1));
LABEL_8:
  v10 = sub_2438AA2A8(&v18, " at ", 4);
  v11 = MEMORY[0x245D431C0](v10, *(a1 + 4) / 3600);
  v12 = sub_2438AA2A8(v11, ":", 1);
  v13 = MEMORY[0x245D431C0](v12, *(a1 + 4) / 60 % 60);
  v14 = sub_2438AA2A8(v13, ":", 1);
  MEMORY[0x245D431C0](v14, *(a1 + 4) % 60);
  std::stringbuf::str();
  v17[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v15;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D432B0](&v22);
}

void sub_2438F5774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438C12D0(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2438F5788@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  *(v4 + 27) = 0;
  *(v4 + 28) = 0;
  *v4 = &unk_2856A1EC0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 12) = 0;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  *(v4 + 25) = 0;
  *(v4 + 26) = 0;
  sub_2438F7AA8(a2, v4);
  v5 = *a2;
  if (*a2)
  {
    v6 = **v5;
    v7 = __dynamic_cast(v5, &unk_2856A1EE8, &unk_2856A1EF8, 0);
  }

  else
  {
    v7 = 0;
  }

  return sub_2438F6DD0(&v9, a1, v7);
}

void sub_2438F587C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2438CB880(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F58D0(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_2856A1F20;
  if (*(a2 + 23) < 0)
  {
    sub_2438BF99C((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 40) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v6 = *a3;
  v7 = a3[1] - *a3;
  *&v10.tm_sec = &unk_2856A1FB8;
  sub_2438F5A64(a1, v6, 0, v7, &v10);
  *&v10.tm_sec = xmmword_24398DDB0;
  *&v10.tm_mon = 0x7300000000;
  v10.tm_isdst = 0;
  v8 = timegm(&v10);
  *(a1 + 144) = v8 - *(*(*a1 + 16))(a1, v8);
  return a1;
}

void sub_2438F5A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 128);
  if (v12)
  {
    sub_2438CB880(v12);
  }

  v13 = *(v9 + 88);
  if (v13)
  {
    *(v9 + 96) = v13;
    operator delete(v13);
  }

  v14 = *(v9 + 64);
  if (v14)
  {
    *(v9 + 72) = v14;
    operator delete(v14);
  }

  sub_2438F7C38(&a9);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438F5A64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a3 + 44;
  if (a3 + 44 > a4 || (v10 = (a2 + a3), strncmp((a2 + a3), "TZif", 4uLL)))
  {
    sub_2438C102C(__p);
    v39 = sub_2438AA2A8(v68, "non-tzfile ", 11);
    v42 = *(a1 + 8);
    v41 = a1 + 8;
    v40 = v42;
    v43 = *(v41 + 23);
    if (v43 >= 0)
    {
      v44 = v41;
    }

    else
    {
      v44 = v40;
    }

    if (v43 >= 0)
    {
      v45 = *(v41 + 23);
    }

    else
    {
      v45 = *(v41 + 8);
    }

    sub_2438AA2A8(v39, v44, v45);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v66);
    exception->__vftable = &unk_2856A1F80;
    __cxa_throw(exception, &unk_2856A1F58, std::runtime_error::~runtime_error);
  }

  v65 = a2;
  v62 = bswap32(v10[5]);
  v11 = bswap32(v10[6]);
  v12 = bswap32(v10[7]);
  v13 = bswap32(v10[8]);
  v14 = v10[10];
  v15 = bswap32(v10[9]);
  v16 = bswap32(v14);
  v60 = v6 + (*(*a5 + 24))(a5) * v13;
  v61 = v6;
  v17 = v60 + v13 + 6 * v15;
  v18 = (*(*a5 + 24))(a5);
  v19 = v11 + v62 + v16 + v17 + (v18 + 4) * v12;
  if (a4 < v19)
  {
    v47 = v11 + v62 + v16 + v17 + (v18 + 4) * v12;
    sub_2438C102C(__p);
    v48 = sub_2438AA2A8(v68, "tzfile too short ", 17);
    v51 = *(a1 + 8);
    v50 = a1 + 8;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = v49;
    }

    if (v52 >= 0)
    {
      v54 = *(v50 + 23);
    }

    else
    {
      v54 = *(v50 + 8);
    }

    v55 = sub_2438AA2A8(v48, v53, v54);
    v56 = sub_2438AA2A8(v55, " needs ", 7);
    v57 = MEMORY[0x245D431D0](v56, v47);
    v58 = sub_2438AA2A8(v57, " and has ", 9);
    MEMORY[0x245D431D0](v58, a4);
    v59 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v59, &v66);
    v59->__vftable = &unk_2856A1F80;
    __cxa_throw(v59, &unk_2856A1F58, std::runtime_error::~runtime_error);
  }

  if (!a3 && *(v65 + 4))
  {
    __p[0] = &unk_2856A2010;
    return sub_2438F5A64(a1, v65);
  }

  v64 = a4 - v19;
  v20 = v11 + v62 + v16 + v17 + (v18 + 4) * v12;
  *(a1 + 32) = (*(*a5 + 16))(a5);
  sub_2438F6880((a1 + 40), v15);
  sub_2438C99C4((a1 + 64), v13);
  sub_2438C99C4((a1 + 88), v13);
  v21 = sub_2438F6670(a1, v65, v60 + v13, v15, v17, v16);
  if (v13)
  {
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = (*(*a5 + 24))(a5, v21);
      *(*(a1 + 64) + 8 * v22) = (*(*a5 + 32))(a5, v65 + v61 + v24 * v22);
      v25 = *(v65 + v60 + v22);
      *(*(a1 + 88) + 8 * v22) = v25;
      if (v15 <= v25)
      {
        sub_2438C102C(__p);
        v30 = sub_2438AA2A8(v68, "tzfile rule out of range ", 25);
        v31 = *(a1 + 31);
        if (v31 >= 0)
        {
          v32 = a1 + 8;
        }

        else
        {
          v32 = *(a1 + 8);
        }

        if (v31 >= 0)
        {
          v33 = *(a1 + 31);
        }

        else
        {
          v33 = *(a1 + 16);
        }

        v34 = sub_2438AA2A8(v30, v32, v33);
        v35 = sub_2438AA2A8(v34, " references rule ", 17);
        v36 = MEMORY[0x245D431D0](v35, *(*(a1 + 88) + 8 * v22));
        v37 = sub_2438AA2A8(v36, " of ", 4);
        MEMORY[0x245D431D0](v37, v15);
        v38 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(v38, &v66);
        v38->__vftable = &unk_2856A1F80;
        __cxa_throw(v38, &unk_2856A1F58, std::runtime_error::~runtime_error);
      }

      if (v23)
      {
        goto LABEL_13;
      }

      if (*(*(a1 + 40) + 40 * v25 + 8))
      {
        v23 = 0;
        if (++v22 == v13)
        {
          break;
        }
      }

      else
      {
        *(a1 + 112) = v25;
LABEL_13:
        ++v22;
        v23 = 1;
        if (v22 == v13)
        {
          goto LABEL_16;
        }
      }
    }
  }

  *(a1 + 112) = 0;
LABEL_16:
  (*(*a5 + 40))(__p, a5, v65, v20, v64);
  sub_2438F5788(__p, &v66);
  v26 = *&v66.__r_.__value_.__l.__data_;
  *&v66.__r_.__value_.__l.__data_ = 0uLL;
  v27 = *(a1 + 128);
  *(a1 + 120) = v26;
  if (v27)
  {
    sub_2438CB880(v27);
    if (v66.__r_.__value_.__l.__size_)
    {
      sub_2438CB880(v66.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(v68[0]) < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(**(a1 + 120) + 16))(*(a1 + 120));
  if (result)
  {
    if (v13)
    {
      v29 = *(*(a1 + 64) + 8 * v13 - 8);
    }

    else
    {
      v29 = 0x8000000000000000;
    }
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a1 + 136) = v29;
  return result;
}

void sub_2438F6060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t sub_2438F60D8(const void **a1)
{
  std::mutex::lock(&stru_27ED96400);
  v2 = sub_2438E7498(&qword_280F7C1B0, a1);
  if (v2 == &qword_280F7C1B8)
  {
    sub_2438DFA08(a1, &v17);
    v3 = (*(*v17 + 16))(v17);
    sub_2438F7CDC(&v15, v3);
    (*(*v17 + 32))(v17, v15, v3, 0);
    v4 = operator new(0x98uLL);
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_2438F7ED8(&__p, v15, v16, v16 - v15);
    sub_2438F58D0(v4, a1, &__p);
    sub_2438F7F54(&v14, v4);
    v18 = a1;
    v5 = sub_2438F7D50(&qword_280F7C1B0, a1, &unk_24398E06C, &v18);
    v6 = v14;
    v14 = 0uLL;
    v7 = v5[8];
    *(v5 + 7) = v6;
    if (v7)
    {
      sub_2438CB880(v7);
      if (*(&v14 + 1))
      {
        sub_2438CB880(*(&v14 + 1));
      }
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    v8 = v17;
    v17 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v15 = a1;
    v2 = sub_2438F7D50(&qword_280F7C1B0, a1, &unk_24398E06C, &v15);
  }

  v9 = v2[7];
  std::mutex::unlock(&stru_27ED96400);
  return v9;
}

void sub_2438F62C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::string *a15, std::string *a16)
{
  if (a14)
  {
    sub_2438CB880(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  v19 = *(v16 - 56);
  *(v16 - 56) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = (*(*v20 + 16))(v20);
    sub_2438BFB70(&a15, v22);
    std::runtime_error::runtime_error(exception, &a15);
    exception->__vftable = &unk_2856A1F80;
    __cxa_throw(exception, &unk_2856A1F58, std::runtime_error::~runtime_error);
  }

  std::mutex::unlock(&stru_27ED96400);
  _Unwind_Resume(a1);
}

uint64_t sub_2438F6488()
{
  sub_2438BFB70(__p, "UTC");
  v0 = sub_2438F64F8(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return v0;
}

void sub_2438F64DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F64F8(uint64_t a1)
{
  v2 = getenv("TZDIR");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "/usr/share/zoneinfo";
  }

  sub_2438BFB70(&v9, v3);
  std::string::append(&v9, "/");
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::string::append(&v9, v5, v6);
  v7 = sub_2438F60D8(&v9.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2438F6594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F65B0(uint64_t a1)
{
  *a1 = &unk_2856A1F20;
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_2438CB880(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 40);
  sub_2438F7C38(&v6);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2438F6648(uint64_t a1)
{
  v1 = sub_2438F65B0(a1);

  operator delete(v1);
}

__n128 sub_2438F6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a4)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2 + a5;
    v12 = (a3 + a2 + 2);
    do
    {
      v13 = *(a1 + 40) + v9;
      *v13 = (*(v12 - 2) << 24) | (*(v12 - 1) << 16) | (*v12 << 8) | v12[1];
      *(v13 + 8) = v12[2] != 0;
      v14 = v12[3];
      if (v14 >= a6)
      {
        v17 = v12[3];
        sub_2438C102C(&v25);
        v18 = sub_2438AA2A8(v26, "name out of range in variant ", 29);
        v19 = MEMORY[0x245D431D0](v18, v10);
        v20 = sub_2438AA2A8(v19, " - ", 3);
        v21 = MEMORY[0x245D431D0](v20, v17);
        v22 = sub_2438AA2A8(v21, " >= ", 4);
        MEMORY[0x245D431D0](v22, a6);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v24);
        exception->__vftable = &unk_2856A1F80;
        __cxa_throw(exception, &unk_2856A1F58, std::runtime_error::~runtime_error);
      }

      sub_2438BFB70(&v25, (v11 + v14));
      v15 = *(a1 + 40) + v9;
      if (*(v15 + 39) < 0)
      {
        operator delete(*(v15 + 16));
      }

      v12 += 6;
      result = v25;
      *(v15 + 32) = v26[0];
      *(v15 + 16) = result;
      ++v10;
      v9 += 40;
    }

    while (a4 != v10);
  }

  return result;
}

void sub_2438F6838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_2438F6880(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2438F8034(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 40;
    }

    a1[1] = v7;
  }
}

uint64_t sub_2438F6920(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) >= a2)
  {
    v5 = sub_2438F4E58((a1 + 64), a2);
    if (v5 < 0)
    {
      v6 = (a1 + 112);
    }

    else
    {
      v6 = (*(a1 + 88) + 8 * v5);
    }

    return *(a1 + 40) + 40 * *v6;
  }

  else
  {
    v3 = *(**(a1 + 120) + 24);

    return v3();
  }
}

void sub_2438F69B8(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = sub_2438AA2A8(a2, "Timezone file: ", 15);
  v5 = *(a1 + 8);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = a1 + 8;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = sub_2438AA2A8(v4, v7, v8);
  sub_2438AA2A8(v9, "\n", 1);
  v10 = sub_2438AA2A8(a2, "  Version: ", 11);
  v11 = MEMORY[0x245D431D0](v10, *(a1 + 32));
  sub_2438AA2A8(v11, "\n", 1);
  (*(**(a1 + 120) + 32))(*(a1 + 120), a2);
  if (*(a1 + 48) != *(a1 + 40))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = sub_2438AA2A8(a2, "  Variant ", 10);
      v15 = MEMORY[0x245D431D0](v14, v13);
      v16 = sub_2438AA2A8(v15, ": ", 2);
      sub_2438F52A8(*(a1 + 40) + v12);
      if (__p.tm_year >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.tm_sec;
      }

      if (__p.tm_year >= 0)
      {
        tm_year_high = HIBYTE(__p.tm_year);
      }

      else
      {
        tm_year_high = *&__p.tm_hour;
      }

      v19 = sub_2438AA2A8(v16, p_p, tm_year_high);
      sub_2438AA2A8(v19, "\n", 1);
      if (SHIBYTE(__p.tm_year) < 0)
      {
        operator delete(*&__p.tm_sec);
      }

      ++v13;
      v12 += 40;
    }

    while (v13 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 48) - *(a1 + 40)) >> 3));
  }

  v20 = *(a1 + 64);
  if (*(a1 + 72) != v20)
  {
    v21 = 0;
    v22 = MEMORY[0x277D82678];
    do
    {
      v40 = *(v20 + 8 * v21);
      if (gmtime_r(&v40, &__p))
      {
        strftime(v42, 0x19uLL, "%F %H:%M:%S", &__p);
        v23 = v42;
      }

      else
      {
        v23 = "null";
      }

      v24 = sub_2438AA2A8(v22, "  Transition: ", 14);
      v25 = strlen(v23);
      v26 = sub_2438AA2A8(v24, v23, v25);
      v27 = sub_2438AA2A8(v26, " (", 2);
      v28 = (a1 + 64);
      v29 = MEMORY[0x245D431C0](v27, *(*(a1 + 64) + 8 * v21));
      v30 = sub_2438AA2A8(v29, ") -> ", 5);
      v31 = *(a1 + 40) + 40 * *(*(a1 + 88) + 8 * v21);
      v34 = *(v31 + 16);
      v32 = v31 + 16;
      v33 = v34;
      v35 = *(v32 + 23);
      if (v35 >= 0)
      {
        v36 = v32;
      }

      else
      {
        v36 = v33;
      }

      if (v35 >= 0)
      {
        v37 = *(v32 + 23);
      }

      else
      {
        v37 = *(v32 + 8);
      }

      v38 = sub_2438AA2A8(v30, v36, v37);
      sub_2438AA2A8(v38, "\n", 1);
      ++v21;
      v20 = *v28;
    }

    while (v21 < (*(a1 + 72) - *v28) >> 3);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2438F6CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438F6CE4(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

uint64_t **sub_2438F6DD0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = *(a2 + 8);
  }

  a1[1] = v4;
  a1[2] = 0;
  a1[3] = a3;
  std::string::operator=((a3 + 8), a2);
  if (a1[2] != a1[1])
  {
    sub_2438F6EF8(a1, (a1[3] + 6));
    v5 = sub_2438F7098(a1);
    v6 = a1[3];
    v6[4] = -v5;
    *(v6 + 40) = 0;
    v8 = a1[1];
    v7 = a1[2];
    *(v6 + 72) = v7 < v8;
    if (v7 < v8)
    {
      sub_2438F6EF8(a1, (v6 + 12));
      v10 = a1[2];
      v9 = a1[3];
      *(v9 + 88) = 1;
      v11 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v11 = *v11;
      }

      if (*(v10 + v11) == 44)
      {
        v12 = v9[4] + 3600;
      }

      else
      {
        v12 = -sub_2438F7098(a1);
        v9 = a1[3];
      }

      v9[10] = v12;
      sub_2438F718C(a1, (v9 + 15));
      sub_2438F718C(a1, (a1[3] + 20));
      v8 = a1[1];
      v7 = a1[2];
    }

    if (v7 != v8)
    {
      sub_2438F7338(a1, "Extra text");
    }

    sub_2438F75B4(a1[3]);
  }

  return a1;
}

double sub_2438F6EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == *(a1 + 8))
  {
    sub_2438F7338(a1, "name required");
  }

  v4 = *a1;
  v5 = *a1;
  if (*(*a1 + 23) < 0)
  {
    v5 = *v4;
  }

  v6 = *(v5 + v3);
  v7 = *(a1 + 8);
  if (v6 == 60)
  {
    v8 = *(a1 + 16);
    if (v3 < v7)
    {
      v8 = *(a1 + 16);
      while (1)
      {
        v9 = v4;
        if (*(v4 + 23) < 0)
        {
          v9 = *v4;
        }

        if (*(v9 + v8) == 62)
        {
          break;
        }

        *(a1 + 16) = ++v8;
        if (v7 == v8)
        {
          goto LABEL_25;
        }
      }
    }

    if (v8 == v7)
    {
LABEL_25:
      sub_2438F7338(a1, "missing close '>'");
    }

    v11 = v8 + 1;
    *(a1 + 16) = v11;
  }

  else
  {
    if (v3 >= v7)
    {
      goto LABEL_28;
    }

    v10 = MEMORY[0x277D85DE0];
    v11 = *(a1 + 16);
    while (1)
    {
      v12 = v4;
      if (*(v4 + 23) < 0)
      {
        v12 = *v4;
      }

      v13 = *(v12 + v11);
      if (v13 < 0)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v14 = (*(v10 + 4 * v13 + 60) >> 10) & 1;
      }

      if (v13 - 43 < 3 || (v14 & 1) != 0)
      {
        break;
      }

      *(a1 + 16) = ++v11;
      if (v7 == v11)
      {
        v11 = v7;
        break;
      }
    }
  }

  if (v11 == v3)
  {
LABEL_28:
    sub_2438F7338(a1, "empty string not allowed");
  }

  std::string::basic_string(&v16, *a1, v3, v11 - v3, &v17);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v16.__r_.__value_.__l.__data_;
  *a2 = v16;
  return result;
}

uint64_t sub_2438F7098(void *a1)
{
  v2 = a1[2];
  if (v2 >= a1[1])
  {
    v5 = 0;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v3 = *v3;
    }

    v4 = *(v3 + v2);
    v5 = v4 == 45;
    if (v4 == 45 || v4 == 43)
    {
      a1[2] = v2 + 1;
    }
  }

  v6 = 3600 * sub_2438F7730(a1);
  v7 = a1[2];
  if (v7 < a1[1])
  {
    v8 = 3600;
    do
    {
      v9 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v9 = *v9;
      }

      if (*(v9 + v7) != 58)
      {
        break;
      }

      a1[2] = v7 + 1;
      v6 += sub_2438F7730(a1) * (v8 / 0x3C);
      v7 = a1[2];
      if (v7 >= a1[1])
      {
        break;
      }

      v10 = v8 > 0x77;
      v8 /= 0x3CuLL;
    }

    while (v10);
  }

  if (v5)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2438F718C(uint64_t **a1, uint64_t a2)
{
  v4 = a1[2];
  if ((a1[1] - v4) < 2)
  {
    goto LABEL_5;
  }

  v5 = *a1;
  v6 = *a1;
  if (*(*a1 + 23) < 0)
  {
    v6 = *v5;
  }

  if (*(v4 + v6) != 44)
  {
LABEL_5:
    sub_2438F7338(a1, "missing transition");
  }

  a1[2] = (v4 + 1);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v7 = *(v4 + v5 + 1);
  if (v7 == 77)
  {
    *a2 = 2;
    a1[2] = (v4 + 2);
    *(a2 + 24) = sub_2438F7730(a1);
    v9 = a1[2];
    if (v9 == a1[1])
    {
      goto LABEL_15;
    }

    v10 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v10 = *v10;
    }

    if (*(v9 + v10) != 46)
    {
LABEL_15:
      sub_2438F7338(a1, "missing first .");
    }

    a1[2] = (v9 + 1);
    *(a2 + 16) = sub_2438F7730(a1);
    v11 = a1[2];
    if (v11 == a1[1])
    {
      goto LABEL_20;
    }

    v12 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v12 = *v12;
    }

    if (*(v11 + v12) != 46)
    {
LABEL_20:
      sub_2438F7338(a1, "missing second .");
    }

    v8 = (v11 + 1);
  }

  else
  {
    if (v7 != 74)
    {
      *a2 = 1;
      goto LABEL_24;
    }

    *a2 = 0;
    v8 = (v4 + 2);
  }

  a1[2] = v8;
LABEL_24:
  *(a2 + 8) = sub_2438F7730(a1);
  v13 = a1[2];
  if (v13 >= a1[1])
  {
    goto LABEL_29;
  }

  v14 = *a1;
  if (*(*a1 + 23) < 0)
  {
    v14 = *v14;
  }

  if (*(v13 + v14) == 47)
  {
    a1[2] = (v13 + 1);
    result = sub_2438F7098(a1);
  }

  else
  {
LABEL_29:
    result = 7200;
  }

  *(a2 + 32) = result;
  return result;
}

void sub_2438F7338(uint64_t **a1, const char *a2)
{
  sub_2438C102C(&v15);
  v4 = strlen(a2);
  v5 = sub_2438AA2A8(v16, a2, v4);
  v6 = sub_2438AA2A8(v5, " at ", 4);
  v7 = MEMORY[0x245D431B0](v6, a1[2]);
  v8 = sub_2438AA2A8(v7, " in '", 5);
  v9 = *(*a1 + 23);
  if (v9 >= 0)
  {
    v10 = *a1;
  }

  else
  {
    v10 = **a1;
  }

  if (v9 >= 0)
  {
    v11 = *(*a1 + 23);
  }

  else
  {
    v11 = (*a1)[1];
  }

  v12 = sub_2438AA2A8(v8, v10, v11);
  sub_2438AA2A8(v12, "'", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::runtime_error::runtime_error(exception, &v14);
  exception->__vftable = &unk_2856A1F80;
  __cxa_throw(exception, &unk_2856A1F58, std::runtime_error::~runtime_error);
}

void sub_2438F744C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
LABEL_6:
      a15 = *MEMORY[0x277D82818];
      v37 = *(MEMORY[0x277D82818] + 72);
      *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82818] + 64);
      a17 = v37;
      a18 = MEMORY[0x277D82878] + 16;
      if (a31 < 0)
      {
        operator delete(a26);
      }

      a18 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&a19);
      std::iostream::~basic_iostream();
      MEMORY[0x245D432B0](&a34);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

void sub_2438F75B4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_2438C99C4((a1 + 200), 0x321uLL);
    v2 = 1970;
    v3 = sub_2438F77D4((a1 + 120), 1970);
    v4 = 0;
    v5 = 0;
    *(a1 + 224) = v3 < sub_2438F77D4((a1 + 160), 1970);
    do
    {
      if (*(a1 + 224))
      {
        v6 = (a1 + 120);
      }

      else
      {
        v6 = (a1 + 160);
      }

      if (*(a1 + 224))
      {
        v7 = 32;
      }

      else
      {
        v7 = 80;
      }

      if (*(a1 + 224))
      {
        v8 = (a1 + 160);
      }

      else
      {
        v8 = (a1 + 120);
      }

      if (*(a1 + 224))
      {
        v9 = 80;
      }

      else
      {
        v9 = 32;
      }

      *(*(a1 + 200) + v4 * 8 + 8) = sub_2438F77D4(v6, v2) + v5 - *(a1 + v7);
      v10 = sub_2438F77D4(v8, v2);
      v11 = *(a1 + 200);
      v11[v4 + 2] = v10 + v5 - *(a1 + v9);
      v12 = 31536000;
      if ((v2 & 3) == 0)
      {
        HIDWORD(v14) = -1030792151 * v2;
        LODWORD(v14) = HIDWORD(v14);
        v13 = v14 >> 2;
        LODWORD(v14) = HIDWORD(v14);
        v15 = (v14 >> 4) < 0xA3D70B || v13 > 0x28F5C28;
        v12 = 31536000;
        if (v15)
        {
          v12 = 31622400;
        }
      }

      v5 += v12;
      ++v2;
      v4 += 2;
    }

    while (v2 != 2370);
  }

  else
  {
    *(a1 + 224) = 1;
    sub_2438C99C4((a1 + 200), 1uLL);
    v11 = *(a1 + 200);
  }

  *v11 = 0;
}

uint64_t sub_2438F7730(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 >= v2)
  {
    sub_2438F7338(a1, "missing number");
  }

  result = 0;
  v5 = *a1;
  v6 = MEMORY[0x277D85DE0];
  do
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v8 = *(v7 + v3);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v6 + 4 * v8 + 60) & 0x400) == 0)
    {
      break;
    }

    result = v8 + 10 * result - 48;
    *(a1 + 16) = ++v3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_2438F77D4(int *a1, uint64_t a2)
{
  result = *(a1 + 4);
  v4 = *a1;
  if (*a1 == 2)
  {
    if ((a2 & 3) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = __ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
    }

    v10 = *(a1 + 3);
    v11 = ((v10 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64;
    v12 = v10 + 9 - 12 * ((v11 >> 63) + (v11 >> 1));
    v13 = a2 - (v10 < 3);
    v14 = ((v13 * 0x5C28F5C28F5C28F5) >> 64) - v13;
    v15 = (v13 / 400 + v13 % 100 + 2 * ((v14 >> 6) + (v14 >> 63)) + ((((v13 % 100) + (((v13 % 100) >> 13) & 3)) << 24) >> 26) + (((26215 * (26 * v12 + 24)) >> 18) + ((26215 * (26 * v12 + 24)) >> 31) + 1)) % 7;
    v16 = v15 + (v15 < 0 ? 7uLL : 0);
    v17 = *(a1 + 1);
    v18 = *(a1 + 2);
    v19 = v17 - v16;
    v7 = v17 < v16;
    v20 = v17 - v16 + 7;
    if (v7)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = v10 - 1;
    if (v18 >= 2)
    {
      v23 = v21 - v18 + 8 * v18 - 7;
      v24 = v18 - 1;
      while (v21 + 7 < qword_24398DE88[12 * v9 + v22])
      {
        v21 += 7;
        if (!--v24)
        {
          v21 = v23;
          break;
        }
      }
    }

    result += 86400 * v21;
    if (v10 >= 2)
    {
      v25 = &qword_24398DE88[12 * v9];
      do
      {
        v26 = *v25++;
        result += 86400 * v26;
        --v22;
      }

      while (v22);
    }
  }

  else if (v4 == 1)
  {
    result += 86400 * *(a1 + 1);
  }

  else if (!v4)
  {
    v5 = *(a1 + 1);
    result += 86400 * v5;
    if ((a2 & 3) == 0)
    {
      v6 = __ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB8, 2);
      v7 = __ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL || v6 > 0x28F5C28F5C28F5CLL;
      v8 = result + 86400;
      if (!v7)
      {
        v8 = result;
      }

      if (v5 >= 61)
      {
        return v8;
      }
    }
  }

  return result;
}

void *sub_2438F7AA8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2856A2090;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2438F7B00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_243989A10(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F7B18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2438F7B48(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A20E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2438F7B88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2438F7B88(a1, *a2);
    sub_2438F7B88(a1, a2[1]);
    sub_2438F7BE4((a2 + 4));

    operator delete(a2);
  }
}

void sub_2438F7BE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2438CB880(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_2438F7C38(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2438F7C8C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2438F7C8C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *sub_2438F7CDC(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438D8BAC(a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_2438F7D34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2438F7D50(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_2438E6F28(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_2438F7DE8(a1, a4, &v8);
    sub_2438D8944(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_2438F7DE8@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_2438BF99C(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_2438F7E7C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2438F7BE4(v2 + 32);
    }

    operator delete(v2);
  }
}

void *sub_2438F7ED8(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_2438D8BAC(result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2438F7F38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438F7F54(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2856A2108;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2438F7FAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_243989A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F7FC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2438F7FF4(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A2158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2438F8034(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_243980874();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      v10 = sub_2438D83BC(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v18 = &v10[5 * v6];
    *(&v19 + 1) = &v10[5 * v9];
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v18, v12);
    *&v19 = v18 + v12;
    v13 = *(a1 + 8);
    v14 = v18 + *a1 - v13;
    sub_2438F81C0(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_2438F8304(&v17);
  }
}

void sub_2438F81AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438F8304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438F81C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }
  }

  return sub_2438F8284(v10);
}

uint64_t sub_2438F8284(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2438F82BC(a1);
  }

  return a1;
}

void sub_2438F82BC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_2438F8304(uint64_t a1)
{
  sub_2438F833C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438F833C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_2438F8398()
{
  __cxa_atexit(MEMORY[0x277D82690], &stru_27ED96400, &dword_2438A8000);
  qword_280F7C1C0 = 0;
  qword_280F7C1B8 = 0;
  qword_280F7C1B0 = &qword_280F7C1B8;

  return __cxa_atexit(sub_2438F58A4, &qword_280F7C1B0, &dword_2438A8000);
}

uint64_t sub_2438F8418(void *a1, uint64_t a2)
{
  a1[2] = a2;
  v3 = a2 + 1;
  if (a1[11])
  {
    v4 = 0;
    do
    {
      v5 = *(a1[5] + 8 * v4);
      if (v5)
      {
        v6 = **v5;
        v5 = __dynamic_cast(v5, &unk_2856A21F8, &unk_2856A2208, 0);
      }

      v3 = sub_2438F8418(v5, v3);
      ++v4;
    }

    while (v4 < a1[11]);
  }

  a1[3] = v3 - 1;
  return v3;
}

uint64_t sub_2438F84D8(uint64_t a1)
{
  *a1 = &unk_2856A2180;
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(a1 + 48);
    }

    ++v3;
  }

  v6 = (a1 + 64);
  sub_2438E758C(&v6);
  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_2438F8588(uint64_t a1)
{
  v1 = sub_2438F84D8(a1);

  operator delete(v1);
}

uint64_t sub_2438F85B0(void *a1)
{
  result = a1[2];
  if (result == -1)
  {
    v3 = a1;
    do
    {
      v4 = v3;
      v3 = v3[1];
    }

    while (v3);
    sub_2438F8418(v4, 0);
    return a1[2];
  }

  return result;
}

uint64_t sub_2438F85F8(void *a1)
{
  if (a1[2] == -1)
  {
    v2 = a1;
    do
    {
      v3 = v2;
      v2 = v2[1];
    }

    while (v2);
    sub_2438F8418(v3, 0);
  }

  return a1[3];
}

void sub_2438F8684(uint64_t a1, char ***a2)
{
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    v4 = **v3;
    v5 = __dynamic_cast(v3, &unk_2856A21F8, &unk_2856A2208, 0);
    v6 = v5;
    sub_2439780F8(a1 + 40, &v6);
    if (v5)
    {
      v5[1] = a1;
    }
  }

  else
  {
    v6 = 0;
    sub_2439780F8(a1 + 40, &v6);
  }

  ++*(a1 + 88);
}

uint64_t sub_2438F8734(uint64_t a1, __int128 *a2, char ***a3)
{
  v5 = *a3;
  *a3 = 0;
  v7 = v5;
  sub_2438F8684(a1, &v7);
  if (v7)
  {
    (*(*v7 + 1))(v7);
  }

  sub_2438E11B8((a1 + 64), a2);
  return a1;
}

void sub_2438F87B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_243989A58(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438F87C8(uint64_t a1, char ***a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  sub_2438F8684(a1, &v5);
  if (v5)
  {
    (*(*v5 + 1))(v5);
  }

  return a1;
}

void sub_2438F8834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_243989A58(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438F884C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  switch(*(a1 + 32))
  {
    case 0:
      v4 = "BOOLean";
      goto LABEL_57;
    case 1:
      v4 = "tinyint";
      goto LABEL_57;
    case 2:
      v4 = "smallint";
      goto LABEL_57;
    case 3:
      v4 = "int";
      goto LABEL_57;
    case 4:
      v4 = "bigint";
      goto LABEL_57;
    case 5:
      v4 = "float";
      goto LABEL_57;
    case 6:
      v4 = "double";
      goto LABEL_57;
    case 7:
      v4 = "string";
      goto LABEL_57;
    case 8:
      v4 = "binary";
      goto LABEL_57;
    case 9:
      v4 = "timestamp";
      goto LABEL_57;
    case 0xA:
      v27 = **(a1 + 40);
      if (v27)
      {
        (*(*v27 + 88))(&v54);
      }

      else
      {
        sub_2438BFB70(&v54, "void");
      }

      v33 = std::string::insert(&v54, 0, "array<");
      v34 = *&v33->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&__p, ">");
      v36 = *&v35->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v37 = v54.__r_.__value_.__r.__words[0];
      goto LABEL_85;
    case 0xB:
      v11 = **(a1 + 40);
      if (v11)
      {
        (*(*v11 + 88))(&v52);
      }

      else
      {
        sub_2438BFB70(&v52, "void");
      }

      v28 = std::string::insert(&v52, 0, "map<");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v53, ",");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = *(*(a1 + 40) + 8);
      if (v32)
      {
        (*(*v32 + 88))(v50);
      }

      else
      {
        sub_2438BFB70(v50, "void");
      }

      if ((v51 & 0x80u) == 0)
      {
        v38 = v50;
      }

      else
      {
        v38 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v39 = v51;
      }

      else
      {
        v39 = v50[1];
      }

      v40 = std::string::append(&v54, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&__p, ">");
      v43 = *&v42->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v37 = v52.__r_.__value_.__r.__words[0];
LABEL_85:
      operator delete(v37);
      return;
    case 0xC:
      sub_2438BFB70(a2, "struct<");
      if (*(a1 + 48) != *(a1 + 40))
      {
        v12 = 0;
        v13 = 0;
        do
        {
          if (v13)
          {
            std::string::append(a2, ",");
          }

          v14 = *(a1 + 64) + v12;
          v15 = *(v14 + 23);
          if (v15 >= 0)
          {
            v16 = (*(a1 + 64) + v12);
          }

          else
          {
            v16 = *v14;
          }

          if (v15 >= 0)
          {
            v17 = *(v14 + 23);
          }

          else
          {
            v17 = *(v14 + 8);
          }

          std::string::append(a2, v16, v17);
          std::string::append(a2, ":");
          (*(**(*(a1 + 40) + 8 * v13) + 88))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v13;
          v12 += 24;
        }

        while (v13 < (*(a1 + 48) - *(a1 + 40)) >> 3);
      }

      goto LABEL_27;
    case 0xD:
      sub_2438BFB70(a2, "uniontype<");
      v23 = *(a1 + 40);
      if (*(a1 + 48) != v23)
      {
        v24 = 0;
        do
        {
          if (v24)
          {
            std::string::append(a2, ",");
            v23 = *(a1 + 40);
          }

          (*(**(v23 + 8 * v24) + 88))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, v25, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v24;
          v23 = *(a1 + 40);
        }

        while (v24 < (*(a1 + 48) - v23) >> 3);
      }

LABEL_27:
      std::string::append(a2, ">");
      return;
    case 0xE:
      sub_2438C102C(&__p);
      v7 = sub_2438AA2A8(&__p.__r_.__value_.__r.__words[2], "decimal(", 8);
      v8 = MEMORY[0x245D431D0](v7, *(a1 + 104));
      v9 = sub_2438AA2A8(v8, ",", 1);
      v10 = MEMORY[0x245D431D0](v9, *(a1 + 112));
      sub_2438AA2A8(v10, ")", 1);
      std::stringbuf::str();
      goto LABEL_35;
    case 0xF:
      v4 = "date";
LABEL_57:

      sub_2438BFB70(a2, v4);
      return;
    case 0x10:
      sub_2438C102C(&__p);
      v5 = sub_2438AA2A8(&__p.__r_.__value_.__r.__words[2], "varchar(", 8);
      v6 = MEMORY[0x245D431D0](v5, *(a1 + 96));
      sub_2438AA2A8(v6, ")", 1);
      std::stringbuf::str();
      goto LABEL_35;
    case 0x11:
      sub_2438C102C(&__p);
      v20 = sub_2438AA2A8(&__p.__r_.__value_.__r.__words[2], "char(", 5);
      v21 = MEMORY[0x245D431D0](v20, *(a1 + 96));
      sub_2438AA2A8(v21, ")", 1);
      std::stringbuf::str();
LABEL_35:
      __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
      v22 = *(MEMORY[0x277D82818] + 72);
      *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      __p.__r_.__value_.__r.__words[2] = v22;
      v46 = MEMORY[0x277D82878] + 16;
      if (v48 < 0)
      {
        operator delete(v47[7].__locale_);
      }

      v46 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v47);
      std::iostream::~basic_iostream();
      MEMORY[0x245D432B0](&v49);
      return;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCACC(exception, "Unknown type");
      __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }
}

unint64_t sub_2438F9110@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8 = a1[8];
  if (v8 <= 8)
  {
    if (v8 < 5)
    {
LABEL_3:
      v9 = operator new(0x78uLL);
      result = sub_2438FC500(v9, a2, a3);
LABEL_46:
      *a5 = v9;
      return result;
    }

    if ((v8 - 5) < 2)
    {
      v9 = operator new(0x78uLL);
      result = sub_2438FC8B4(v9, a2, a3);
      goto LABEL_46;
    }

    if ((v8 - 7) >= 2)
    {
LABEL_48:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCACC(exception, "not supported yet");
      __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
    }

    goto LABEL_20;
  }

  if (v8 > 13)
  {
    if ((v8 - 16) >= 2)
    {
      if (v8 == 14)
      {
        if ((*(*a1 + 72))(a1) && (*(*a1 + 72))(a1) < 0x13)
        {
          v9 = operator new(0xA8uLL);
          result = sub_2438FE9B8(v9, a2, a3);
        }

        else
        {
          v9 = operator new(0xA8uLL);
          result = sub_2438FED68(v9, a2, a3);
        }

        goto LABEL_46;
      }

      if (v8 == 15)
      {
        goto LABEL_3;
      }

      goto LABEL_48;
    }

LABEL_20:
    if (a4)
    {
      v9 = operator new(0x100uLL);
      result = sub_2438FCE08(v9, a2, a3);
    }

    else
    {
      v9 = operator new(0xC8uLL);
      result = sub_2438FD034(v9, a2, a3);
    }

    goto LABEL_46;
  }

  if (v8 <= 10)
  {
    if (v8 == 9)
    {
      v9 = operator new(0xA0uLL);
      result = sub_2438FF2AC(v9, a2, a3);
      goto LABEL_46;
    }

    v17 = operator new(0x80uLL);
    sub_2438FD8CC(v17, a2, a3);
    *a5 = v17;
    result = (*(*a1 + 48))(a1, 0);
    if (result)
    {
      v18 = (*(*a1 + 48))(a1, 0);
      (*(*v18 + 96))(&v34);
      v19 = v34;
      v34 = 0;
      result = v17[15];
      v17[15] = v19;
      if (result)
      {
LABEL_34:
        (*(*result + 8))(result);
        result = v34;
        v34 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    if (v8 != 11)
    {
      if (v8 == 12)
      {
        v27 = operator new(0x68uLL);
        sub_2438FD284(v27, a2, a3);
        v28 = 0;
        *a5 = v27;
        while (1)
        {
          result = (*(*a1 + 40))(a1);
          if (v28 >= result)
          {
            break;
          }

          v29 = (*(*a1 + 48))(a1, v28);
          (*(*v29 + 96))(&v33);
          v30 = v33;
          v33 = 0;
          v34 = v30;
          sub_2439780F8(v27 + 80, &v34);
          v31 = v33;
          v33 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }

          ++v28;
        }
      }

      else
      {
        v12 = operator new(0xB8uLL);
        sub_2438FE370(v12, a2, a3);
        v13 = 0;
        *a5 = v12;
        while (1)
        {
          result = (*(*a1 + 40))(a1);
          if (v13 >= result)
          {
            break;
          }

          v14 = (*(*a1 + 48))(a1, v13);
          (*(*v14 + 96))(&v33);
          v15 = v33;
          v33 = 0;
          v34 = v15;
          sub_2439780F8(v12 + 160, &v34);
          v16 = v33;
          v33 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          ++v13;
        }
      }

      return result;
    }

    v20 = operator new(0x88uLL);
    sub_2438FDD70(v20, a2, a3);
    *a5 = v20;
    if ((*(*a1 + 48))(a1, 0))
    {
      v21 = (*(*a1 + 48))(a1, 0);
      (*(*v21 + 96))(&v34);
      v22 = v34;
      v34 = 0;
      v23 = v20[15];
      v20[15] = v22;
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v24 = v34;
        v34 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }
    }

    result = (*(*a1 + 48))(a1, 1);
    if (result)
    {
      v25 = (*(*a1 + 48))(a1, 1);
      (*(*v25 + 96))(&v34);
      v26 = v34;
      v34 = 0;
      result = v20[16];
      v20[16] = v26;
      if (result)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

char *sub_2438F98E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = *(a1 + 96);
  if (v4 <= 9)
  {
    if (v4 < 0xA)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  if (v4 > 13)
  {
    if ((v4 - 16) < 2)
    {
      result = operator new(0x78uLL);
      v12 = *(a1 + 100);
      *result = &unk_2856A2180;
      *(result + 1) = 0;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 2) = -1;
      *(result + 3) = -1;
      *(result + 8) = v4;
      *(result + 11) = 0;
      *(result + 12) = v12;
      *(result + 13) = 0;
      *(result + 14) = 0;
      goto LABEL_4;
    }

    if (v4 == 14)
    {
      result = operator new(0x78uLL);
      *result = &unk_2856A2180;
      *(result + 1) = 0;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 2) = -1;
      *(result + 3) = -1;
      *(result + 8) = 14;
      v16 = *(a1 + 104);
      *&v17 = v16;
      *(&v17 + 1) = HIDWORD(v16);
      *(result + 104) = v17;
      *(result + 11) = 0;
      *(result + 12) = 0;
      goto LABEL_4;
    }

    if (v4 == 15)
    {
LABEL_3:
      result = operator new(0x78uLL);
      *result = &unk_2856A2180;
      *(result + 1) = 0;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 2) = -1;
      *(result + 3) = -1;
      *(result + 8) = v4;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
LABEL_4:
      *a3 = result;
      return result;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCACC(exception, "Unknown type kind");
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

  if ((v4 - 10) < 2)
  {
LABEL_10:
    result = operator new(0x78uLL);
    v8 = result;
    *result = &unk_2856A2180;
    *(result + 1) = 0;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 2) = -1;
    *(result + 3) = -1;
    *(result + 8) = v4;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *a3 = result;
    v9 = *(a1 + 24);
    switch(v4)
    {
      case 13:
        if (v9)
        {
          goto LABEL_30;
        }

        v10 = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB60(v10, "Illegal UNION type that doesn't contain any subtypes");
        break;
      case 11:
        if (v9 == 2)
        {
LABEL_31:
          v18 = 0;
          do
          {
            sub_2438F98E4(&v20, *(*(a2 + 64) + 8 * *(*(a1 + 32) + 4 * v18 + 8) + 8), a2);
            (*(*v8 + 112))(v8, &v20);
            result = v20;
            v20 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v18;
          }

          while (v18 < *(a1 + 24));
          return result;
        }

        v10 = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB60(v10, "Illegal MAP type that doesn't contain two subtypes");
        break;
      case 10:
        if (v9 != 1)
        {
          v10 = __cxa_allocate_exception(0x10uLL);
          sub_2438DCB60(v10, "Illegal LIST type that doesn't contain one subtype");
          break;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if (v9 < 1)
        {
          return result;
        }

        goto LABEL_31;
    }

    __cxa_throw(v10, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (v4 != 12)
  {
    if (v4 != 13)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = operator new(0x78uLL);
  *result = &unk_2856A2180;
  *(result + 1) = 0;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 2) = -1;
  *(result + 3) = -1;
  *(result + 8) = 12;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *a3 = result;
  if (*(a1 + 24) >= 1)
  {
    v13 = result;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 64) + 8 * v14 + 8);
      sub_2438F98E4(&v19, *(*(a2 + 64) + 8 * *(*(a1 + 32) + 4 * v14 + 8) + 8), a2);
      (*(*v13 + 104))(v13, v15, &v19);
      result = v19;
      v19 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v14;
    }

    while (v14 < *(a1 + 24));
  }

  return result;
}

void sub_2438F9D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v12);
  *v10 = 0;
  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

unint64_t sub_2438F9DD8@<X0>(unint64_t result@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  if (!result || (v5 = result, result = (*(*result + 16))(result), ((*(*a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0))
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = (*(*v5 + 32))(v5);
  if (v6 <= 10)
  {
    if (v6 < 0xA)
    {
      goto LABEL_5;
    }

    if (v6 == 10)
    {
      v7 = operator new(0x78uLL);
      v26 = (*(*v5 + 32))(v5);
      *v7 = &unk_2856A2180;
      *(v7 + 1) = 0;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 2) = -1;
      *(v7 + 3) = -1;
      *(v7 + 8) = v26;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      v27 = (*(*v5 + 48))(v5, 0);
      sub_2438F9DD8(&v37, v27, a2);
      sub_2438F8684(v7, &v37);
      v19 = v37;
      if (!v37)
      {
        goto LABEL_6;
      }

LABEL_37:
      (*(*v19 + 1))(v19);
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  if (v6 <= 13)
  {
    if (v6 != 11)
    {
      if (v6 == 12)
      {
        v7 = operator new(0x78uLL);
        v20 = (*(*v5 + 32))(v5);
        *v7 = &unk_2856A2180;
        *(v7 + 1) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 56) = 0u;
        *(v7 + 72) = 0u;
        *(v7 + 2) = -1;
        *(v7 + 3) = -1;
        *(v7 + 8) = v20;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0u;
        if ((*(*v5 + 40))(v5))
        {
          v21 = 0;
          do
          {
            v22 = (*(*v5 + 48))(v5, v21);
            sub_2438F9DD8(&v34, v22, a2);
            v23 = v34;
            if (v34)
            {
              v24 = (*(*v5 + 56))(v5, v21);
              v33 = v23;
              (*(*v7 + 104))(v7, v24, &v33);
              v25 = v33;
              v33 = 0;
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }
            }

            ++v21;
          }

          while (v21 < (*(*v5 + 40))(v5));
        }
      }

      else
      {
        v7 = operator new(0x78uLL);
        v10 = (*(*v5 + 32))(v5);
        *v7 = &unk_2856A2180;
        *(v7 + 1) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 56) = 0u;
        *(v7 + 72) = 0u;
        *(v7 + 2) = -1;
        *(v7 + 3) = -1;
        *(v7 + 8) = v10;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0u;
        if ((*(*v5 + 40))(v5))
        {
          v11 = 0;
          do
          {
            v12 = (*(*v5 + 48))(v5, v11);
            sub_2438F9DD8(&v34, v12, a2);
            if (v34)
            {
              v32 = v34;
              (*(*v7 + 112))(v7, &v32);
              v13 = v32;
              v32 = 0;
              if (v13)
              {
                (*(*v13 + 8))(v13);
              }
            }

            ++v11;
          }

          while (v11 < (*(*v5 + 40))(v5));
        }
      }

      goto LABEL_6;
    }

    v7 = operator new(0x78uLL);
    v16 = (*(*v5 + 32))(v5);
    *v7 = &unk_2856A2180;
    *(v7 + 1) = 0;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 2) = -1;
    *(v7 + 3) = -1;
    *(v7 + 8) = v16;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0u;
    v17 = (*(*v5 + 48))(v5, 0);
    sub_2438F9DD8(&v36, v17, a2);
    sub_2438F8684(v7, &v36);
    if (v36)
    {
      (*v36)[1](v36);
    }

    v18 = (*(*v5 + 48))(v5, 1);
    sub_2438F9DD8(&v35, v18, a2);
    sub_2438F8684(v7, &v35);
    v19 = v35;
    if (!v35)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  if ((v6 - 16) < 2)
  {
    v7 = operator new(0x78uLL);
    v14 = (*(*v5 + 32))(v5);
    v15 = (*(*v5 + 64))(v5);
    *v7 = &unk_2856A2180;
    *(v7 + 1) = 0;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 2) = -1;
    *(v7 + 3) = -1;
    *(v7 + 8) = v14;
    *(v7 + 11) = 0;
    *(v7 + 12) = v15;
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    goto LABEL_6;
  }

  if (v6 == 14)
  {
    v7 = operator new(0x78uLL);
    v28 = (*(*v5 + 32))(v5);
    v29 = (*(*v5 + 72))(v5);
    v30 = (*(*v5 + 80))(v5);
    *v7 = &unk_2856A2180;
    *(v7 + 1) = 0;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 2) = -1;
    *(v7 + 3) = -1;
    *(v7 + 8) = v28;
    *(v7 + 13) = v29;
    *(v7 + 14) = v30;
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    goto LABEL_6;
  }

  if (v6 != 15)
  {
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCACC(exception, "Unknown type kind");
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

LABEL_5:
  v7 = operator new(0x78uLL);
  v8 = (*(*v5 + 32))(v5);
  *v7 = &unk_2856A2180;
  *(v7 + 1) = 0;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 2) = -1;
  *(v7 + 3) = -1;
  *(v7 + 8) = v8;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
LABEL_6:
  v9 = (*(*v5 + 16))(v5);
  result = (*(*v5 + 24))(v5);
  *(v7 + 2) = v9;
  *(v7 + 3) = result;
LABEL_8:
  *a3 = v7;
  return result;
}

void sub_2438FA770(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  sub_2438FA84C(v6, a1, 0, v3);
  if ((v6[1] - v6[0]) != 32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid type string.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v4 = *(v6[0] + 3);
  *(v6[0] + 3) = 0;
  *a2 = v4;
  v7 = v6;
  sub_2438FC234(&v7);
}

void sub_2438FA820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_2438FC234(&a12);
  _Unwind_Resume(a1);
}

void sub_2438FA84C(void **__return_ptr a1@<X8>, std::string *__str@<X0>, std::string::size_type __pos@<X1>, std::string::size_type a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (__pos < a4)
  {
    v5 = __pos;
    v7 = MEMORY[0x277D85DE0];
    do
    {
      v8 = v5;
      while (1)
      {
        v9 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __str : __str->__r_.__value_.__r.__words[0];
        v10 = v9->__r_.__value_.__s.__data_[v8];
        if (!((v10 & 0x80000000) != 0 ? __maskrune(v10, 0x500uLL) : *(v7 + 4 * v10 + 60) & 0x500))
        {
          v12 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
          v13 = __str->__r_.__value_.__r.__words[0];
          v14 = v12 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
          if (v14->__r_.__value_.__s.__data_[v8] != 95)
          {
            break;
          }
        }

        if (++v8 >= a4)
        {
          LOBYTE(v12) = *(&__str->__r_.__value_.__s + 23);
          v13 = __str->__r_.__value_.__r.__words[0];
          break;
        }
      }

      memset(v41, 0, 7);
      if ((v12 & 0x80u) == 0)
      {
        v15 = __str;
      }

      else
      {
        v15 = v13;
      }

      if (v15->__r_.__value_.__s.__data_[v8] == 58)
      {
        std::string::basic_string(&__dst, __str, v5, v8 - v5, &v40);
        size = __dst.__r_.__value_.__l.__size_;
        v35 = __dst.__r_.__value_.__r.__words[0];
        v41[0] = __dst.__r_.__value_.__r.__words[2];
        *(v41 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
        v17 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v5 = v8 + 1;
        v8 = v5;
        if (v5 < a4)
        {
          while (1)
          {
            v18 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __str : __str->__r_.__value_.__r.__words[0];
            v19 = v18->__r_.__value_.__s.__data_[v8];
            if (!((v19 & 0x80000000) != 0 ? __maskrune(v19, 0x100uLL) : *(v7 + 4 * v19 + 60) & 0x100))
            {
              break;
            }

            if (a4 == ++v8)
            {
              v8 = a4;
              break;
            }
          }
        }
      }

      else
      {
        v35 = 0;
        size = 0;
        v17 = 0;
      }

      v21 = v8 + 1;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = __str;
      }

      else
      {
        v22 = __str->__r_.__value_.__r.__words[0];
      }

      v23 = v22->__r_.__value_.__s.__data_[v8];
      v24 = v8 + 1;
      if (v23 == 40)
      {
        if (v21 < a4)
        {
          v24 = v8 + 1;
          while (v22->__r_.__value_.__s.__data_[v24] != 41)
          {
            if (a4 == ++v24)
            {
              goto LABEL_87;
            }
          }
        }

        if (v24 == a4)
        {
LABEL_87:
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Invalid type string. Cannot find closing)");
LABEL_88:
          __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }
      }

      else if (v23 == 60)
      {
        if (v21 < a4)
        {
          v25 = 1;
          v24 = v8 + 1;
          while (1)
          {
            v26 = v22->__r_.__value_.__s.__data_[v24];
            if (v26 == 60)
            {
              if (!++v25)
              {
                break;
              }
            }

            else if (v26 == 62 && !--v25)
            {
              break;
            }

            if (a4 == ++v24)
            {
              goto LABEL_86;
            }
          }
        }

        if (v24 == a4)
        {
LABEL_86:
          v32 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v32, "Invalid type string. Cannot find closing >");
          __cxa_throw(v32, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }
      }

      else if (v8 != a4)
      {
        v24 = v8 + 1;
        if (v23 != 44)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Unrecognized character.");
          goto LABEL_88;
        }
      }

      std::string::basic_string(&v40, __str, v5, v8 - v5, &v37);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_2438BF99C(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v40;
      }

      sub_2438FB704(&__p, __str, v21, v24, &v37);
      if (v17 < 0)
      {
        sub_2438BF99C(&__dst, v35, size);
      }

      else
      {
        __dst.__r_.__value_.__r.__words[0] = v35;
        __dst.__r_.__value_.__l.__size_ = size;
        LODWORD(__dst.__r_.__value_.__r.__words[2]) = v41[0];
        *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v41 + 3);
        *(&__dst.__r_.__value_.__s + 23) = v17;
      }

      v27 = v37;
      v37 = 0;
      v39 = v27;
      sub_2438FC0B0(a1, &__dst);
      v28 = v39;
      v39 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v29 = v37;
      v37 = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v24 < a4 && ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v30 = __str) : (v30 = __str->__r_.__value_.__r.__words[0]), (v31 = v30->__r_.__value_.__s.__data_[v24], v31 == 62) || v31 == 41))
      {
        v5 = v24 + 2;
      }

      else
      {
        v5 = v24;
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        if (v17 < 0)
        {
LABEL_84:
          operator delete(v35);
        }
      }

      else if (v17 < 0)
      {
        goto LABEL_84;
      }
    }

    while (v5 < a4);
  }
}

void sub_2438FACCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  a18 = a9;
  sub_2438FC234(&a18);
  _Unwind_Resume(a1);
}

void sub_2438FAD9C(std::string *a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *v6 = &unk_2856A2180;
  *(v6 + 1) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 2) = -1;
  *(v6 + 3) = -1;
  *(v6 + 8) = 10;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *a3 = v6;
  sub_2438FA84C(v10, a1, a2);
  if (v10[1] - v10[0] != 32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Array type must contain exactly one sub type.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v7 = *(v10[0] + 24);
  *(v10[0] + 24) = 0;
  v9 = v7;
  sub_2438F8684(v6, &v9);
  if (v9)
  {
    (*(*v9 + 1))(v9);
  }

  v11 = v10;
  sub_2438FC234(&v11);
}

void sub_2438FAEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_2438FC234(&a14);
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

void sub_2438FAF5C(std::string *a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *v6 = &unk_2856A2180;
  *(v6 + 1) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 2) = -1;
  *(v6 + 3) = -1;
  *(v6 + 8) = 11;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *a3 = v6;
  sub_2438FA84C(v12, a1, a2);
  if (v12[1] - v12[0] != 64)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Map type must contain exactly two sub types.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v7 = *(v12[0] + 24);
  *(v12[0] + 24) = 0;
  v11 = v7;
  sub_2438F8684(v6, &v11);
  if (v11)
  {
    (*(*v11 + 1))(v11);
  }

  v8 = *(v12[0] + 56);
  *(v12[0] + 56) = 0;
  v10 = v8;
  sub_2438F8684(v6, &v10);
  if (v10)
  {
    (*(*v10 + 1))(v10);
  }

  v13 = v12;
  sub_2438FC234(&v13);
}

void sub_2438FB0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_2438FC234(&a14);
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

void sub_2438FB178(std::string *a1@<X0>, std::string::size_type a2@<X1>, char **a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *v6 = &unk_2856A2180;
  *(v6 + 1) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 2) = -1;
  *(v6 + 3) = -1;
  *(v6 + 8) = 12;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *a3 = v6;
  sub_2438FA84C(&v15, a1, a2);
  v7 = v15;
  if (v16 == v15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Struct type must contain at least one sub type.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v8 = 0;
  v9 = 24;
  do
  {
    v10 = (v7 + v9);
    v11 = *(v7 + v9);
    *v10 = 0;
    v14 = v11;
    (*(*v6 + 104))(v6, v10 - 3, &v14);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    ++v8;
    v7 = v15;
    v9 += 32;
  }

  while (v8 < (v16 - v15) >> 5);
  v17 = &v15;
  sub_2438FC234(&v17);
}

void sub_2438FB308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_2438FC234(&a14);
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

void sub_2438FB380(std::string *a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *v6 = &unk_2856A2180;
  *(v6 + 1) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 2) = -1;
  *(v6 + 3) = -1;
  *(v6 + 8) = 13;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *a3 = v6;
  sub_2438FA84C(&v14, a1, a2);
  v7 = v14;
  if (v15 == v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Union type must contain at least one sub type.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v8 = 0;
  v9 = 24;
  do
  {
    v10 = *(v7 + v9);
    *(v7 + v9) = 0;
    v13 = v10;
    sub_2438F8684(v6, &v13);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 1))(v11);
    }

    ++v8;
    v7 = v14;
    v9 += 32;
  }

  while (v8 < (v15 - v14) >> 5);
  v16 = &v14;
  sub_2438FC234(&v16);
}

void sub_2438FB4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_2438FC234(&a14);
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

double sub_2438FB560@<D0>(std::string::size_type __pos@<X1>, const std::string *a2@<X0>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  v8 = std::string::find(a2, 44, __pos);
  v9 = v8 + 1;
  if (v8 == -1 || v9 >= a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Decimal type must specify precision and scale.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v10 = v8;
  std::string::basic_string(&v18, a2, __pos, v8 - __pos, &v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v18.__r_.__value_.__r.__words[0];
    v11 = atoi(v18.__r_.__value_.__l.__data_);
    operator delete(v12);
  }

  else
  {
    v11 = atoi(&v18);
  }

  std::string::basic_string(&v18, a2, v9, ~v10 + a3, &v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v18.__r_.__value_.__r.__words[0];
    v13 = atoi(v18.__r_.__value_.__l.__data_);
    operator delete(v14);
  }

  else
  {
    v13 = atoi(&v18);
  }

  v15 = operator new(0x78uLL);
  *v15 = &unk_2856A2180;
  *(v15 + 1) = 0;
  result = 0.0;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 2) = -1;
  *(v15 + 3) = -1;
  *(v15 + 8) = 14;
  *(v15 + 13) = v11;
  *(v15 + 14) = v13;
  *(v15 + 11) = 0;
  *(v15 + 12) = 0;
  *a4 = v15;
  return result;
}

double sub_2438FB704@<D0>(void *a1@<X0>, std::string *a2@<X1>, std::string::size_type a3@<X2>, std::string::size_type a4@<X3>, char **a5@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 7 && **a1 == 1819242338 && *(*a1 + 3) == 1851876716)
    {
      goto LABEL_65;
    }

    if (a1[1] == 7 && **a1 == 2037279092 && *(*a1 + 3) == 1953393017)
    {
      goto LABEL_67;
    }

    if (a1[1] == 8 && **a1 == 0x746E696C6C616D73)
    {
      goto LABEL_66;
    }

    if (a1[1] != 3 || (**a1 == 28265 ? (v13 = *(*a1 + 2) == 116) : (v13 = 0), !v13))
    {
      if (a1[1] == 6 && **a1 == 1768384866 && *(*a1 + 4) == 29806)
      {
LABEL_54:
        v19 = operator new(0x78uLL);
        *v19 = &unk_2856A2180;
        *(v19 + 1) = 0;
        v20 = 0uLL;
        *(v19 + 40) = 0u;
        *(v19 + 56) = 0u;
        *(v19 + 72) = 0u;
        *(v19 + 2) = -1;
        *(v19 + 3) = -1;
        v21 = 4;
        goto LABEL_71;
      }

      if (a1[1] != 5)
      {
        goto LABEL_59;
      }

      v15 = *a1;
LABEL_34:
      v16 = *v15;
      v17 = *(v15 + 4);
      if (v16 != 1634692198 || v17 != 116)
      {
        goto LABEL_59;
      }

      v19 = operator new(0x78uLL);
      *v19 = &unk_2856A2180;
      *(v19 + 1) = 0;
      v20 = 0uLL;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 2) = -1;
      *(v19 + 3) = -1;
      v21 = 5;
LABEL_71:
      *(v19 + 8) = v21;
      goto LABEL_72;
    }

LABEL_68:
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 3;
    goto LABEL_71;
  }

  v10 = *(a1 + 23);
  if (v10 <= 5)
  {
    if (v10 != 3)
    {
      v15 = a1;
      if (v10 != 5)
      {
        goto LABEL_59;
      }

      goto LABEL_34;
    }

    if (*a1 != 28265 || *(a1 + 2) != 116)
    {
      goto LABEL_59;
    }

    goto LABEL_68;
  }

  if (v10 == 6)
  {
    if (*a1 != 1768384866 || *(a1 + 2) != 29806)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  if (v10 == 7)
  {
    if (*a1 != 1819242338 || *(a1 + 3) != 1851876716)
    {
      if (*a1 != 2037279092 || *(a1 + 3) != 1953393017)
      {
        goto LABEL_59;
      }

LABEL_67:
      v19 = operator new(0x78uLL);
      *v19 = &unk_2856A2180;
      *(v19 + 1) = 0;
      v20 = 0uLL;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 2) = -1;
      *(v19 + 3) = -1;
      v21 = 1;
      goto LABEL_71;
    }

LABEL_65:
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    *(v19 + 8) = 0;
LABEL_72:
    *(v19 + 88) = v20;
    *(v19 + 104) = v20;
LABEL_73:
    *a5 = v19;
    return *&v20;
  }

  if (v10 == 8 && *a1 == 0x746E696C6C616D73)
  {
LABEL_66:
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 2;
    goto LABEL_71;
  }

LABEL_59:
  if (sub_2438FC02C(a1, "double"))
  {
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 6;
    goto LABEL_71;
  }

  if (sub_2438FC02C(a1, "string"))
  {
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 7;
    goto LABEL_71;
  }

  if (sub_2438FC02C(a1, "binary"))
  {
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 8;
    goto LABEL_71;
  }

  if (sub_2438FC02C(a1, "timestamp"))
  {
    v19 = operator new(0x78uLL);
    *v19 = &unk_2856A2180;
    *(v19 + 1) = 0;
    v20 = 0uLL;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 2) = -1;
    *(v19 + 3) = -1;
    v21 = 9;
    goto LABEL_71;
  }

  if (sub_2438FC02C(a1, "array"))
  {

    sub_2438FAD9C(a2, a3, a5);
  }

  else if (sub_2438FC02C(a1, "map"))
  {

    sub_2438FAF5C(a2, a3, a5);
  }

  else if (sub_2438FC02C(a1, "struct"))
  {

    sub_2438FB178(a2, a3, a5);
  }

  else if (sub_2438FC02C(a1, "uniontype"))
  {

    sub_2438FB380(a2, a3, a5);
  }

  else
  {
    if (!sub_2438FC02C(a1, "decimal"))
    {
      if (!sub_2438FC02C(a1, "date"))
      {
        if (sub_2438FC02C(a1, "varchar"))
        {
          std::string::basic_string(&v32, a2, a3, a4 - a3, &v33);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            v27 = v32.__r_.__value_.__r.__words[0];
            LODWORD(v26) = atoi(v32.__r_.__value_.__l.__data_);
            operator delete(v27);
          }

          else
          {
            LODWORD(v26) = atoi(&v32);
          }

          v26 = v26;
          v19 = operator new(0x78uLL);
          *v19 = &unk_2856A2180;
          *(v19 + 1) = 0;
          *&v20 = 0;
          *(v19 + 40) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 2) = -1;
          *(v19 + 3) = -1;
          v28 = 16;
        }

        else
        {
          if (!sub_2438FC02C(a1, "char"))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::operator+<char>();
            std::logic_error::logic_error(exception, &v32);
            __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
          }

          std::string::basic_string(&v32, a2, a3, a4 - a3, &v33);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            v29 = v32.__r_.__value_.__r.__words[0];
            LODWORD(v26) = atoi(v32.__r_.__value_.__l.__data_);
            operator delete(v29);
          }

          else
          {
            LODWORD(v26) = atoi(&v32);
          }

          v26 = v26;
          v19 = operator new(0x78uLL);
          *v19 = &unk_2856A2180;
          *(v19 + 1) = 0;
          *&v20 = 0;
          *(v19 + 40) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 2) = -1;
          *(v19 + 3) = -1;
          v28 = 17;
        }

        *(v19 + 8) = v28;
        *(v19 + 11) = 0;
        *(v19 + 12) = v26;
        *(v19 + 13) = 0;
        *(v19 + 14) = 0;
        goto LABEL_73;
      }

      v19 = operator new(0x78uLL);
      *v19 = &unk_2856A2180;
      *(v19 + 1) = 0;
      v20 = 0uLL;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 2) = -1;
      *(v19 + 3) = -1;
      v21 = 15;
      goto LABEL_71;
    }

    *&v20 = sub_2438FB560(a3, a2, a4, a5);
  }

  return *&v20;
}

void sub_2438FBFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

BOOL sub_2438FC02C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_2438FC334();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void **sub_2438FC0B0(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = (v4 - *result) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_243980874();
    }

    v11 = v5 - *result;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v22[4] = result;
    if (v12)
    {
      v13 = sub_2438FC34C(result, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[32 * v9];
    v15 = &v13[32 * v12];
    v16 = *a2;
    *(v14 + 2) = *(a2 + 2);
    *v14 = v16;
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v14 + 3) = v17;
    v8 = v14 + 32;
    v18 = v3[1] - *v3;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], *v3, v18);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v8;
    v21 = v3[2];
    v3[2] = v15;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = sub_2438FC384(v22);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v4 + 3) = v7;
    v8 = v4 + 32;
  }

  v3[1] = v8;
  return result;
}

uint64_t sub_2438FC1D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438FC234(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        sub_2438FC2BC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2438FC2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void *sub_2438FC34C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    sub_2438C1CC8();
  }

  return operator new(32 * a2);
}

void **sub_2438FC384(void **a1)
{
  sub_2438FC3B8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438FC3B8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    sub_2438FC2BC(v4, i - 32);
  }
}

void sub_2438FC408(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
  }
}

uint64_t sub_2438FC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2278;
  sub_2438DF2FC(a1 + 80, a3, a2);
  return a1;
}

void sub_2438FC4E8(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FC504(void *a1)
{
  *a1 = &unk_2856A2278;
  sub_2438DF670((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FC56C(void *a1)
{
  *a1 = &unk_2856A2278;
  sub_2438DF670((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);

  operator delete(a1);
}

uint64_t sub_2438FC5E4(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Long vector <", 13);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FC76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FC780(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);

    sub_2438DEE58(a1 + 80, a2);
  }
}

uint64_t sub_2438FC7F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A22C0;
  sub_2438DF00C((a1 + 80), a3, a2);
  return a1;
}

void sub_2438FC89C(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FC8B8(void *a1)
{
  *a1 = &unk_2856A22C0;
  sub_2438DF5D0((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FC920(void *a1)
{
  *a1 = &unk_2856A22C0;
  sub_2438DF5D0((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);

  operator delete(a1);
}

uint64_t sub_2438FC998(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Double vector <", 15);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FCB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FCB34(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);

    sub_2438DEE58(a1 + 80, a2);
  }
}

uint64_t sub_2438FCBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2438DECF0(a1, a2);
  sub_2438DF2FC(v4 + 40, a2, 0);
  return a1;
}

uint64_t sub_2438FCBFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_2438FCC84(a1, a2, a3);
  *v6 = &unk_2856A2308;
  v6[25] = 0;
  v6[26] = 0;
  sub_2438DF2FC(v6 + 27, a3, a2);
  return a1;
}

void sub_2438FCC64(_Unwind_Exception *a1)
{
  v3 = v1[26];
  if (v3)
  {
    sub_2438CB880(v3);
  }

  sub_2438FCD88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438FCC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2350;
  sub_2438DEEA0((a1 + 80), a3, a2);
  sub_2438DF2FC(a1 + 120, a3, a2);
  sub_2438DECF0(a1 + 160, a3);
  return a1;
}

void sub_2438FCD50(_Unwind_Exception *a1)
{
  sub_2438DF670((v1 + 15));
  sub_2438DF530((v1 + 10));
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FCD88(void *a1)
{
  *a1 = &unk_2856A2350;
  v2 = (a1 + 10);
  sub_2438DF490(a1 + 20);
  sub_2438DF670((a1 + 15));
  sub_2438DF530(v2);
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void *sub_2438FCE0C(void *a1)
{
  *a1 = &unk_2856A2308;
  sub_2438DF670((a1 + 27));
  v2 = a1[26];
  if (v2)
  {
    sub_2438CB880(v2);
  }

  return sub_2438FCD88(a1);
}

void sub_2438FCE70(void *a1)
{
  v1 = sub_2438FCE0C(a1);

  operator delete(v1);
}

uint64_t sub_2438FCE98(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Encoded string vector <", 23);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FD020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FD03C(void *a1)
{
  v1 = sub_2438FCD88(a1);

  operator delete(v1);
}

uint64_t sub_2438FD064(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Byte vector <", 13);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FD1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FD200(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
    sub_2438DEE58(a1 + 80, a2);

    sub_2438DEE58(a1 + 120, a2);
  }
}

uint64_t sub_2438FD284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2398;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void *sub_2438FD318(void *a1)
{
  *a1 = &unk_2856A2398;
  v4 = a1 + 10;
  v2 = a1[10];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = a1[10];
        v3 = a1[11];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FD3E0(void *a1)
{
  v1 = sub_2438FD318(a1);

  operator delete(v1);
}

uint64_t sub_2438FD408(void *a1)
{
  sub_2438A9A08(&v13);
  v2 = sub_2438AA2A8(&v13, "Struct vector <", 15);
  v3 = MEMORY[0x245D431D0](v2, a1[2]);
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, a1[1]);
  sub_2438AA2A8(v5, "; ", 2);
  for (i = a1[10]; i != a1[11]; i += 8)
  {
    (*(**i + 16))(__p);
    if ((v12 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_2438AA2A8(&v13, v7, v8);
    sub_2438AA2A8(v9, "; ", 2);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_2438AA2A8(&v13, ">", 1);
  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v17);
}

void sub_2438FD66C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
  }
}

uint64_t sub_2438FD688(uint64_t result)
{
  v1 = result;
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v3 = 0;
    do
    {
      result = (*(**(v2 + 8 * v3) + 32))(*(v2 + 8 * v3));
      ++v3;
      v2 = v1[10];
    }

    while (v3 < (v1[11] - v2) >> 3);
  }

  v1[2] = 0;
  return result;
}

uint64_t sub_2438FD6F8(void *a1)
{
  v1 = a1[7];
  v2 = a1[10];
  if (a1[11] != v2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v1 += (*(**(v2 + 8 * v4) + 40))(*(v2 + 8 * v4));
      v4 = v5;
      v2 = a1[10];
      ++v5;
    }

    while (v4 < (a1[11] - v2) >> 3);
  }

  return v1;
}

uint64_t sub_2438FD780(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (*(a1 + 88) == v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    result = (*(**(v1 + 8 * v3) + 48))(*(v1 + 8 * v3));
    if (result)
    {
      break;
    }

    v3 = v4;
    v1 = *(a1 + 80);
    ++v4;
  }

  while (v3 < (*(a1 + 88) - v1) >> 3);
  return result;
}

uint64_t sub_2438FD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A23E0;
  sub_2438DF2FC(a1 + 80, a3, a2 + 1);
  *(a1 + 120) = 0;
  return a1;
}

void sub_2438FD8B4(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FD8D0(void *a1)
{
  *a1 = &unk_2856A23E0;
  v2 = a1[15];
  a1[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2438DF670((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FD970(void *a1)
{
  v1 = sub_2438FD8D0(a1);

  operator delete(v1);
}

uint64_t sub_2438FD998(uint64_t a1)
{
  sub_2438A9A08(&v13);
  v2 = sub_2438AA2A8(&v13, "List vector <", 13);
  (*(**(a1 + 120) + 16))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  v6 = sub_2438AA2A8(v5, " with ", 6);
  v7 = MEMORY[0x245D431D0](v6, *(a1 + 16));
  v8 = sub_2438AA2A8(v7, " of ", 4);
  v9 = MEMORY[0x245D431D0](v8, *(a1 + 8));
  sub_2438AA2A8(v9, ">", 1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v17);
}

void sub_2438FDBCC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);

    sub_2438DEE58(a1 + 80, a2 + 1);
  }
}

uint64_t sub_2438FDCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2428;
  sub_2438DF2FC(a1 + 80, a3, a2 + 1);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_2438FDD58(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FDD74(void *a1)
{
  *a1 = &unk_2856A2428;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_2438DF670((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FDE44(void *a1)
{
  v1 = sub_2438FDD74(a1);

  operator delete(v1);
}

uint64_t sub_2438FDE6C(uint64_t a1)
{
  sub_2438A9A08(&v19);
  v2 = sub_2438AA2A8(&v19, "Map vector <", 12);
  (*(**(a1 + 120) + 16))(v17);
  if ((v18 & 0x80u) == 0)
  {
    v3 = v17;
  }

  else
  {
    v3 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v4 = v18;
  }

  else
  {
    v4 = v17[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  v6 = sub_2438AA2A8(v5, ", ", 2);
  (*(**(a1 + 128) + 16))(__p);
  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = sub_2438AA2A8(v6, v7, v8);
  v10 = sub_2438AA2A8(v9, " with ", 6);
  v11 = MEMORY[0x245D431D0](v10, *(a1 + 16));
  v12 = sub_2438AA2A8(v11, " of ", 4);
  v13 = MEMORY[0x245D431D0](v12, *(a1 + 8));
  sub_2438AA2A8(v13, ">", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::stringbuf::str();
  v19 = *MEMORY[0x277D82828];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v23);
}

void sub_2438FE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2438A9B74(&a22);
  _Unwind_Resume(a1);
}

void sub_2438FE130(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);

    sub_2438DEE58(a1 + 80, a2 + 1);
  }
}

uint64_t sub_2438FE188(uint64_t a1)
{
  (*(**(a1 + 120) + 32))(*(a1 + 120));
  result = (*(**(a1 + 128) + 32))(*(a1 + 128));
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2438FE1FC(uint64_t a1)
{
  v2 = *(a1 + 56) + 8 * *(a1 + 112);
  v3 = v2 + (*(**(a1 + 120) + 40))(*(a1 + 120));
  return v3 + (*(**(a1 + 128) + 40))(*(a1 + 128));
}

uint64_t sub_2438FE284(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2470;
  sub_2438DF400(a1 + 80, a3, a2);
  sub_2438DF380((a1 + 120), a3, a2);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_2438FE348(_Unwind_Exception *a1)
{
  sub_2438DF7B0((v1 + 10));
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FE374(void *a1)
{
  *a1 = &unk_2856A2470;
  v4 = a1 + 20;
  v2 = a1[20];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = a1[20];
        v3 = a1[21];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  sub_2438DF710((a1 + 15));
  sub_2438DF7B0((a1 + 10));
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FE44C(void *a1)
{
  v1 = sub_2438FE374(a1);

  operator delete(v1);
}

uint64_t sub_2438FE474(void *a1)
{
  sub_2438A9A08(&v13);
  sub_2438AA2A8(&v13, "Union vector <", 14);
  v2 = a1[20];
  if (a1[21] != v2)
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        sub_2438AA2A8(&v13, ", ", 2);
        v2 = a1[20];
      }

      (*(**(v2 + 8 * v3) + 16))(__p);
      if ((v12 & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v5 = v12;
      }

      else
      {
        v5 = __p[1];
      }

      sub_2438AA2A8(&v13, v4, v5);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v2 = a1[20];
    }

    while (v3 < (a1[21] - v2) >> 3);
  }

  v6 = sub_2438AA2A8(&v13, "; with ", 7);
  v7 = MEMORY[0x245D431D0](v6, a1[2]);
  v8 = sub_2438AA2A8(v7, " of ", 4);
  v9 = MEMORY[0x245D431D0](v8, a1[1]);
  sub_2438AA2A8(v9, ">", 1);
  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v17);
}

void sub_2438FE6F0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
    sub_2438DECAC(a1 + 80, a2);

    sub_2438DEE58(a1 + 120, a2);
  }
}

uint64_t sub_2438FE754(uint64_t result)
{
  v1 = result;
  v2 = *(result + 160);
  if (*(result + 168) != v2)
  {
    v3 = 0;
    do
    {
      result = (*(**(v2 + 8 * v3) + 32))(*(v2 + 8 * v3));
      ++v3;
      v2 = v1[20];
    }

    while (v3 < (v1[21] - v2) >> 3);
  }

  v1[2] = 0;
  return result;
}

uint64_t sub_2438FE7C4(void *a1)
{
  v1 = a1[20];
  v2 = a1[14] + a1[7] + 8 * a1[19];
  if (a1[21] != v1)
  {
    v4 = 0;
    do
    {
      v2 += (*(**(v1 + 8 * v4) + 40))(*(v1 + 8 * v4));
      ++v4;
      v1 = a1[20];
    }

    while (v4 < (a1[21] - v1) >> 3);
  }

  return v2;
}

uint64_t sub_2438FE854(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (*(a1 + 168) == v1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    result = (*(**(v1 + 8 * v3) + 48))(*(v1 + 8 * v3));
    if (result)
    {
      break;
    }

    ++v3;
    v1 = *(a1 + 160);
  }

  while (v3 < (*(a1 + 168) - v1) >> 3);
  return result;
}

uint64_t sub_2438FE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A24B8;
  *(a1 + 80) = 0;
  sub_2438DF2FC(a1 + 88, a3, a2);
  sub_2438DF2FC(a1 + 128, a3, a2);
  return a1;
}

void sub_2438FE990(_Unwind_Exception *a1)
{
  sub_2438DF670((v1 + 11));
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FE9BC(void *a1)
{
  *a1 = &unk_2856A24B8;
  v2 = (a1 + 11);
  sub_2438DF670((a1 + 16));
  sub_2438DF670(v2);
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FEA38(void *a1)
{
  v1 = sub_2438FE9BC(a1);

  operator delete(v1);
}

uint64_t sub_2438FEA60(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Decimal64 vector  with ", 23);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FEBE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FEBFC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
    sub_2438DEE58(a1 + 88, a2);

    sub_2438DEE58(a1 + 128, a2);
  }
}

uint64_t sub_2438FEC80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2500;
  *(a1 + 80) = 0;
  sub_2438DF0F0((a1 + 88), a3, a2);
  sub_2438DF2FC(a1 + 128, a3, a2);
  return a1;
}