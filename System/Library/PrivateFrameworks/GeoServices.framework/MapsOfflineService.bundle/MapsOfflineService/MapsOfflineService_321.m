char *sub_13542D4(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 48);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 64);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 68);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 80);
    *v16 = 424;
    v16[2] = v22;
    if (v22 > 0x7F)
    {
      v16[2] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[3] = v22 >> 7;
      v21 = v16 + 4;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[3];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          v16 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v16 + 3;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 84);
    *v21 = 504;
    v21[2] = v26;
    if (v26 > 0x7F)
    {
      v21[2] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[3] = v26 >> 7;
      v25 = v21 + 4;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v21[3];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v21 + 3;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 72);
    *v25 = 640;
    v25[2] = v31;
    if (v31 > 0x7F)
    {
      v25[2] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[3] = v31 >> 7;
      v30 = v25 + 4;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[3];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 3;
    }
  }

  else
  {
    v30 = v25;
  }

  v34 = *(a1 + 24);
  if (v34 < 1)
  {
    v37 = v30;
  }

  else
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v36 = *(*(a1 + 32) + 4 * i);
      *v30 = 648;
      v30[2] = v36;
      if (v36 > 0x7F)
      {
        v30[2] = v36 | 0x80;
        v38 = v36 >> 7;
        v30[3] = v36 >> 7;
        v37 = v30 + 4;
        if (v36 >= 0x4000)
        {
          LOBYTE(v39) = v30[3];
          do
          {
            *(v37 - 1) = v39 | 0x80;
            v39 = v38 >> 7;
            *v37++ = v38 >> 7;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v37 = v30 + 3;
      }

      v30 = v37;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 76);
    *v37 = 656;
    v37[2] = v42;
    if (v42 > 0x7F)
    {
      v37[2] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[3] = v42 >> 7;
      v41 = v37 + 4;
      if (v42 >= 0x4000)
      {
        LOBYTE(v37) = v37[3];
        do
        {
          *(v41 - 1) = v37 | 0x80;
          v37 = (v43 >> 7);
          *v41++ = v43 >> 7;
          v44 = v43 >> 14;
          v43 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v41 = v37 + 3;
    }
  }

  else
  {
    v41 = v37;
  }

  if (v5)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v45 = *(a1 + 40);
    *v41 = 666;
    v46 = *(v45 + 20);
    v41[2] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v41 + 2);
    }

    else
    {
      v47 = v41 + 3;
    }

    v41 = sub_13515B0(v45, v47, a3);
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v41;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFFCLL;
  v51 = *(v50 + 31);
  if (v51 < 0)
  {
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
  }

  else
  {
    v52 = (v50 + 8);
  }

  if (*a3 - v41 >= v51)
  {
    v53 = v51;
    memcpy(v41, v52, v51);
    v41 += v53;
    return v41;
  }

  return sub_1957130(a3, v52, v51, v41);
}

unint64_t sub_135486C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_13548CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 6) != 0)
  {
    v3 = sub_135486C(a1);
  }

  else
  {
    v3 = ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v3 + 2 * v4 + v6;
  if (v2)
  {
    v10 = sub_1351698(*(a1 + 40));
    v9 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0xF8) == 0)
  {
    goto LABEL_19;
  }

  v9 += (v2 >> 2) & 2;
  if ((v2 & 0x10) != 0)
  {
    v11 = *(a1 + 68);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
    if ((v2 & 0x20) == 0)
    {
LABEL_17:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(a1 + 72);
  if (v13 < 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 += v14;
  if ((v2 & 0x40) != 0)
  {
LABEL_29:
    v15 = *(a1 + 76);
    if (v15 < 0)
    {
      v16 = 12;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v9 += v16;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_33;
    }

LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_18:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  v17 = *(a1 + 80);
  if (v17 < 0)
  {
    v18 = 12;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 += v18;
  if ((v2 & 0x100) != 0)
  {
LABEL_37:
    v19 = *(a1 + 84);
    if (v19 < 0)
    {
      v20 = 12;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v9 += v20;
  }

LABEL_41:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v9 += v24;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_1354B2C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    if (v8)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v11 = v3[1].__r_.__value_.__r.__words[2];
      if (!v11)
      {
        v12 = v3->__r_.__value_.__l.__size_;
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_13550F8(v13);
        v3[1].__r_.__value_.__r.__words[2] = v11;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &off_276C1A0;
      }

      result = sub_12F5A34(v11, v14);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_32:
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
      goto LABEL_13;
    }

LABEL_33:
    HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v8 & 0x100) != 0)
  {
    v9 = *(a2 + 84);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_1354CE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6B08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

double sub_1354D68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6B88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354DE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6C08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_1354E68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D6C88;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_1354EF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6D08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354F70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6D88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354FF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D6E08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1355070(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D6E88;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_13550F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D6F08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_135517C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1351784(v2, a1, 0);
}

double sub_13551DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D7008;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *&result = 0x100000001;
  *(v2 + 76) = 0x100000001;
  *(v2 + 84) = 1;
  return result;
}

void sub_1355704(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134C0C8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355788(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13509C0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_135580C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134CE44(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355890(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134DD54(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355914(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134E798(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355998(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134F308(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355A1C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_134FE6C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1355AA0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1354D68(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1355B2C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_1355070(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1355BA8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1355BB8(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1354DE8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1355C34(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1355C44(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1354E68(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1355CC0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1355CD0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1354EF0(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355D4C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1354F70(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355DC8(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1354FF0(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1355E44(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355E54()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(32, v0, v3);
}

void sub_1355E94()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(31, v0, v3);
}

void sub_1355ED4()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(34, v0, v3);
}

void sub_1355F14()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(33, v0, v3);
}

char *sub_1355F54(_DWORD *a1, int a2, uint64_t a3, char *a4)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    v4 = *(a3 + 8);
    if (v4 > 127)
    {
      goto LABEL_21;
    }
  }

  v5 = 8 * a2;
  v6 = 1;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if ((8 * a2) >> 28)
  {
    v9 = 5;
  }

  if (v5 >= 0x200000)
  {
    v8 = v9;
  }

  if (v5 >= 0x4000)
  {
    v7 = v8;
  }

  if (v5 >= 0x80)
  {
    v6 = v7;
  }

  if ((*a1 + ~&a4[v6] + 16) < v4)
  {
LABEL_21:

    return sub_1957480(a1, a2, a3, a4);
  }

  else
  {
    *a4 = v5 | 2;
    if (v5 > 0x7F)
    {
      *a4 = v5 | 0x82;
      v11 = v5 >> 7;
      a4[1] = v5 >> 7;
      v10 = a4 + 2;
      if (v5 >= 0x4000)
      {
        LOBYTE(v12) = a4[1];
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v10++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v10 = a4 + 1;
    }

    *v10 = v4;
    v14 = v10 + 1;
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    memcpy(v14, v15, v4);
    return &v14[v4];
  }
}

BOOL sub_1356070(int a1)
{
  result = 1;
  if ((a1 - 20) > 0x30 || ((1 << (a1 - 20)) & 0x1FFFFFEBFFFFFLL) == 0)
  {
    return (a1 + 1) < 0x13;
  }

  return result;
}

uint64_t sub_13560E4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135619C(uint64_t a1)
{
  sub_13560E4(a1);

  operator delete();
}

uint64_t sub_13561D4(uint64_t a1)
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

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1356250(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_13563D0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_13564B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_13565A4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_276C348)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1358DF8(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_135CD34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135667C(uint64_t a1)
{
  sub_13565A4(a1);

  operator delete();
}

uint64_t sub_13566B4(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1356738(*(result + 40));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1356904(*(v1 + 48));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 56) = 0xFFFFFFFF00000000;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1356738(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1365AD0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_13586B4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_13668A4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v17 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v17 = 0;
      *(v17 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_39:
  result = sub_1359064(*(a1 + 128));
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_1359188(*(a1 + 136));
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_13591F8(*(a1 + 144));
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_43:
    result = sub_13593CC(*(a1 + 160));
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_42:
  result = sub_13592D0(*(a1 + 152));
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_44:
  result = sub_13593F4(*(a1 + 168));
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    result = sub_1359614(*(a1 + 176));
  }

LABEL_23:
  if ((v12 & 0x300) != 0)
  {
    if ((v12 & 0x100) != 0)
    {
      result = sub_1359700(*(a1 + 184));
    }

    if ((v12 & 0x200) != 0)
    {
      v13 = *(a1 + 192);
      v14 = *(v13 + 8);
      result = v13 + 8;
      *(result + 18) = 0;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v14)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v12 & 0xC00) != 0)
  {
    *(a1 + 204) = 0;
    *(a1 + 200) = 0;
  }

  v16 = *(a1 + 8);
  v15 = a1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

uint64_t sub_1356904(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1368A08(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_17545D4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_1758FF4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_1364010(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_136309C(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_135BAE8(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 16);
  if (!v20)
  {
    goto LABEL_35;
  }

  if (v20)
  {
    v23 = *(v1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 23) < 0)
    {
      **v23 = 0;
      *(v23 + 8) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *v23 = 0;
      *(v23 + 23) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_28:
    if ((v20 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_69:
    v25 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v25 + 23) < 0)
    {
      **v25 = 0;
      *(v25 + 8) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      *v25 = 0;
      *(v25 + 23) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_30:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

  if ((v20 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_65:
  v24 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v24 + 23) < 0)
  {
    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    *v24 = 0;
    *(v24 + 23) = 0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_29:
  if ((v20 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_73:
  result = sub_16EE0BC(*(v1 + 192));
  if ((v20 & 0x10) == 0)
  {
LABEL_31:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_75:
    result = sub_13592D0(*(v1 + 208));
    if ((v20 & 0x40) == 0)
    {
LABEL_33:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_74:
  result = sub_152BAD4(*(v1 + 200));
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_75;
  }

LABEL_32:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_76:
  result = sub_13593F4(*(v1 + 216));
  if ((v20 & 0x80) != 0)
  {
LABEL_34:
    result = sub_1835AE0(*(v1 + 224));
  }

LABEL_35:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v20 & 0x100) != 0)
  {
    result = sub_135D084(*(v1 + 232));
    if ((v20 & 0x200) == 0)
    {
LABEL_38:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_58;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = sub_17DB104(*(v1 + 240));
  if ((v20 & 0x400) == 0)
  {
LABEL_39:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_135BAE8(*(v1 + 248));
  if ((v20 & 0x800) == 0)
  {
LABEL_40:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_13F1C38(*(v1 + 256));
  if ((v20 & 0x1000) == 0)
  {
LABEL_41:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = sub_135D104(*(v1 + 264));
  if ((v20 & 0x2000) == 0)
  {
LABEL_42:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = sub_15529A4(*(v1 + 272));
  if ((v20 & 0x4000) == 0)
  {
LABEL_43:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_62:
  result = sub_135D1EC(*(v1 + 280));
  if ((v20 & 0x8000) != 0)
  {
LABEL_44:
    result = sub_135D254(*(v1 + 288));
  }

LABEL_45:
  if ((v20 & 0x10000) != 0)
  {
    result = sub_135D2B8(*(v1 + 296));
  }

  if ((v20 & 0x3E0000) != 0)
  {
    *(v1 + 304) = 0;
    *(v1 + 312) = 0;
    *(v1 + 320) = 0;
    *(v1 + 328) = 0xFFFFFFFF00000000;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 8;
  *(v21 + 8) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

char *sub_1356BEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v41 + 1;
    v9 = *v41;
    if (*v41 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v41, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v41 + 2;
      }
    }

    v41 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      break;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_61;
      }

      if (v9 != 16)
      {
        if (v9 == 18)
        {
          *&v42 = a1 + 24;
          *(&v42 + 1) = sub_13560C0;
          v43 = a1 + 8;
          v44 = 2;
          v17 = sub_1216588(a3, v8, &v42);
          goto LABEL_68;
        }

        goto LABEL_61;
      }

      v18 = v8 - 1;
      while (2)
      {
        v41 = v18 + 1;
        v19 = v18[1];
        v20 = v18 + 2;
        if (v19 < 0)
        {
          v21 = *v20;
          v22 = (v21 << 7) + v19;
          LODWORD(v19) = v22 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = v18 + 3;
            goto LABEL_25;
          }

          v41 = sub_19587DC((v18 + 1), (v22 - 128));
          if (!v41)
          {
            goto LABEL_75;
          }

          LODWORD(v19) = v25;
        }

        else
        {
LABEL_25:
          v41 = v20;
        }

        if (v19 > 0x3C)
        {
          sub_12E8418();
        }

        else
        {
          v23 = *(a1 + 24);
          if (v23 == *(a1 + 28))
          {
            v24 = v23 + 1;
            sub_1958E5C((a1 + 24), v23 + 1);
            *(*(a1 + 32) + 4 * v23) = v19;
          }

          else
          {
            *(*(a1 + 32) + 4 * v23) = v19;
            v24 = v23 + 1;
          }

          *(a1 + 24) = v24;
        }

        v18 = v41;
        if (*a3 <= v41 || *v41 != 16)
        {
          goto LABEL_69;
        }

        continue;
      }
    }

    if (v9 != 8)
    {
      goto LABEL_61;
    }

    v5 |= 4u;
    v33 = v8 + 1;
    v34 = *v8;
    if (*v8 < 0)
    {
      v35 = *v33;
      v34 = v34 + (v35 << 7) - 128;
      if (v35 < 0)
      {
        v37 = sub_1958770(v8, v34);
        v41 = v37;
        *(a1 + 56) = v38;
        if (!v37)
        {
          goto LABEL_75;
        }

        goto LABEL_69;
      }

      v33 = v8 + 2;
    }

    v41 = v33;
    *(a1 + 56) = v34;
LABEL_69:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {
    if (v9 != 24)
    {
      goto LABEL_61;
    }

    v26 = v8 + 1;
    v27 = *v8;
    if (v27 < 0)
    {
      v28 = *v26;
      v29 = (v28 << 7) + v27;
      LODWORD(v27) = v29 - 128;
      if (v28 < 0)
      {
        v41 = sub_19587DC(v8, (v29 - 128));
        if (!v41)
        {
          goto LABEL_75;
        }

        LODWORD(v27) = v36;
        goto LABEL_42;
      }

      v26 = v8 + 2;
    }

    v41 = v26;
LABEL_42:
    if (sub_1356070(v27))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 60) = v27;
    }

    else
    {
      sub_1313740();
    }

    goto LABEL_69;
  }

  if (v13 == 4)
  {
    if (v9 == 34)
    {
      *(a1 + 16) |= 1u;
      v30 = *(a1 + 40);
      if (!v30)
      {
        v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v31 = *v31;
        }

        sub_1379524(v31);
        v30 = v32;
        *(a1 + 40) = v32;
        v8 = v41;
      }

      v17 = sub_2200350(a3, v30, v8);
LABEL_68:
      v41 = v17;
      if (!v17)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    }
  }

  else if (v13 == 5 && v9 == 42)
  {
    *(a1 + 16) |= 2u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v15 = *v15;
      }

      sub_137977C(v15);
      v14 = v16;
      *(a1 + 48) = v16;
      v8 = v41;
    }

    v17 = sub_22003E0(a3, v14, v8);
    goto LABEL_68;
  }

LABEL_61:
  if (v9)
  {
    v39 = (v9 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    if (*v7)
    {
      v40 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v8 = v41;
    }

    v17 = sub_1952690(v9, v40, v8, a3);
    goto LABEL_68;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_75:
    v41 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_1356FEC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  v11 = *(a1 + 24);
  if (v11 < 1)
  {
    v14 = v6;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 32) + 4 * i);
      *v6 = 16;
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v6[1] = v13 | 0x80;
        v15 = v13 >> 7;
        v6[2] = v13 >> 7;
        v14 = v6 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v14 - 1) = v6 | 0x80;
            v6 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = v14;
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 60);
    *v14 = 24;
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v14[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v14[2] = v18 >> 7;
      v17 = v14 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v17 - 1) = v14 | 0x80;
          v14 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v14 + 2;
    }
  }

  else
  {
    v17 = v14;
  }

  if (v5)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 40);
    *v17 = 34;
    v22 = *(v21 + 20);
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v17 + 1);
    }

    else
    {
      v23 = v17 + 2;
    }

    v17 = sub_1359F80(v21, v23, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 48);
    *v17 = 42;
    v25 = *(v24 + 20);
    v17[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v17 + 1);
    }

    else
    {
      v26 = v17 + 2;
    }

    v17 = sub_135E0C8(v24, v26, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v17;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v17) >= v30)
  {
    v32 = v30;
    memcpy(v17, v31, v30);
    v17 += v32;
    return v17;
  }

  return sub_1957130(a3, v31, v30, v17);
}

uint64_t sub_1357318(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v9 = sub_135A67C(*(a1 + 40));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_135ECF4(*(a1 + 48));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v11 = *(a1 + 60);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v12;
LABEL_22:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_135749C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_1379524(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_276C3C8;
      }

      sub_1357618(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_137977C(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_276C528;
    }

    sub_1357B30(v14, v17);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v8;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_30:
    *(a1 + 56) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1357618(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3DBC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B3E48((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B3ED4((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if (!v24)
  {
    goto LABEL_82;
  }

  if (v24)
  {
    v25 = *(a2 + 120);
    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 120), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v24 & 2) == 0)
    {
LABEL_16:
      if ((v24 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(a1 + 16) |= 2u;
  v28 = *(a1 + 128);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_137A034(v30);
    *(a1 + 128) = v28;
  }

  if (*(a2 + 128))
  {
    v31 = *(a2 + 128);
  }

  else
  {
    v31 = &off_276C918;
  }

  sub_135AA90(v28, v31);
  if ((v24 & 4) == 0)
  {
LABEL_17:
    if ((v24 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(a1 + 16) |= 4u;
  v32 = *(a1 + 136);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_1379F3C(v34);
    *(a1 + 136) = v32;
  }

  if (*(a2 + 136))
  {
    v35 = *(a2 + 136);
  }

  else
  {
    v35 = &off_276C8F0;
  }

  sub_131B904(v32, v35);
  if ((v24 & 8) == 0)
  {
LABEL_18:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_42:
  *(a1 + 16) |= 8u;
  v36 = *(a1 + 144);
  if (!v36)
  {
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_137A0E4(v38);
    *(a1 + 144) = v36;
  }

  if (*(a2 + 144))
  {
    v39 = *(a2 + 144);
  }

  else
  {
    v39 = &off_276C978;
  }

  sub_135AC94(v36, v39);
  if ((v24 & 0x10) == 0)
  {
LABEL_19:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_58:
    *(a1 + 16) |= 0x20u;
    v44 = *(a1 + 160);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_137A6D8(v46);
      *(a1 + 160) = v44;
    }

    if (*(a2 + 160))
    {
      v47 = *(a2 + 160);
    }

    else
    {
      v47 = &off_276CB98;
    }

    sub_128F948(v44, v47);
    if ((v24 & 0x40) == 0)
    {
LABEL_21:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_74;
    }

    goto LABEL_66;
  }

LABEL_50:
  *(a1 + 16) |= 0x10u;
  v40 = *(a1 + 152);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_1379E50(v42);
    *(a1 + 152) = v40;
  }

  if (*(a2 + 152))
  {
    v43 = *(a2 + 152);
  }

  else
  {
    v43 = &off_276C890;
  }

  sub_135AEA4(v40, v43);
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_20:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_66:
  *(a1 + 16) |= 0x40u;
  v48 = *(a1 + 168);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    sub_137A440(v50);
    *(a1 + 168) = v48;
  }

  if (*(a2 + 168))
  {
    v51 = *(a2 + 168);
  }

  else
  {
    v51 = &off_276CA20;
  }

  sub_135B098(v48, v51);
  if ((v24 & 0x80) != 0)
  {
LABEL_74:
    *(a1 + 16) |= 0x80u;
    v52 = *(a1 + 176);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_137967C(v54);
      *(a1 + 176) = v52;
    }

    if (*(a2 + 176))
    {
      v55 = *(a2 + 176);
    }

    else
    {
      v55 = &off_276C4D0;
    }

    sub_135B4C0(v52, v55);
  }

LABEL_82:
  if ((v24 & 0xF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v24 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v57 = *(a1 + 184);
    if (!v57)
    {
      v58 = *(a1 + 8);
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
      if (v58)
      {
        v59 = *v59;
      }

      v57 = sub_1379704(v59);
      *(a1 + 184) = v57;
    }

    if (*(a2 + 184))
    {
      v60 = *(a2 + 184);
    }

    else
    {
      v60 = &off_276C508;
    }

    sub_135B60C(v57, v60);
    if ((v24 & 0x200) == 0)
    {
LABEL_85:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_86;
      }

LABEL_109:
      *(a1 + 200) = *(a2 + 200);
      if ((v24 & 0x800) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_85;
  }

  *(a1 + 16) |= 0x200u;
  v61 = *(a1 + 192);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_13798CC(v63);
    *(a1 + 192) = v61;
  }

  if (*(a2 + 192))
  {
    v64 = *(a2 + 192);
  }

  else
  {
    v64 = &off_276C6F8;
  }

  sub_135B6B4(v61, v64);
  if ((v24 & 0x400) != 0)
  {
    goto LABEL_109;
  }

LABEL_86:
  if ((v24 & 0x800) != 0)
  {
LABEL_87:
    *(a1 + 204) = *(a2 + 204);
  }

LABEL_88:
  *(a1 + 16) |= v24;
LABEL_89:
  v56 = *(a2 + 8);
  if (v56)
  {

    sub_1957EF4((a1 + 8), (v56 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1357B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3F60((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B3FEC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B4078((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B4104((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B4190((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B421C((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if (!v34)
  {
    goto LABEL_78;
  }

  if (v34)
  {
    v35 = *(a2 + 168);
    *(a1 + 16) |= 1u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 168), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v34 & 2) == 0)
    {
LABEL_22:
      if ((v34 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_22;
  }

  v38 = *(a2 + 176);
  *(a1 + 16) |= 2u;
  v39 = *(a1 + 8);
  v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
  if (v39)
  {
    v40 = *v40;
  }

  sub_194EA1C((a1 + 176), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
  if ((v34 & 4) == 0)
  {
LABEL_23:
    if ((v34 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_35:
  v41 = *(a2 + 184);
  *(a1 + 16) |= 4u;
  v42 = *(a1 + 8);
  v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
  if (v42)
  {
    v43 = *v43;
  }

  sub_194EA1C((a1 + 184), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
  if ((v34 & 8) == 0)
  {
LABEL_24:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_38:
  *(a1 + 16) |= 8u;
  v44 = *(a1 + 192);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    v44 = sub_16F5F38(v46);
    *(a1 + 192) = v44;
  }

  if (*(a2 + 192))
  {
    v47 = *(a2 + 192);
  }

  else
  {
    v47 = &off_277E980;
  }

  sub_121721C(v44, v47);
  if ((v34 & 0x10) == 0)
  {
LABEL_25:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    *(a1 + 16) |= 0x20u;
    v52 = *(a1 + 208);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_1379E50(v54);
      *(a1 + 208) = v52;
    }

    if (*(a2 + 208))
    {
      v55 = *(a2 + 208);
    }

    else
    {
      v55 = &off_276C890;
    }

    sub_135AEA4(v52, v55);
    if ((v34 & 0x40) == 0)
    {
LABEL_27:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

LABEL_46:
  *(a1 + 16) |= 0x10u;
  v48 = *(a1 + 200);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    v48 = sub_1550F20(v50);
    *(a1 + 200) = v48;
  }

  if (*(a2 + 200))
  {
    v51 = *(a2 + 200);
  }

  else
  {
    v51 = &off_2776328;
  }

  sub_152D77C(v48, v51);
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_62:
  *(a1 + 16) |= 0x40u;
  v56 = *(a1 + 216);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    sub_137A440(v58);
    *(a1 + 216) = v56;
  }

  if (*(a2 + 216))
  {
    v59 = *(a2 + 216);
  }

  else
  {
    v59 = &off_276CA20;
  }

  sub_135B098(v56, v59);
  if ((v34 & 0x80) != 0)
  {
LABEL_70:
    *(a1 + 16) |= 0x80u;
    v60 = *(a1 + 224);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_18648BC(v62);
      *(a1 + 224) = v60;
    }

    if (*(a2 + 224))
    {
      v63 = *(a2 + 224);
    }

    else
    {
      v63 = &off_27868A0;
    }

    sub_18367AC(v60, v63);
  }

LABEL_78:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v34 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v64 = *(a1 + 232);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_1379C4C(v66);
      *(a1 + 232) = v64;
    }

    if (*(a2 + 232))
    {
      v67 = *(a2 + 232);
    }

    else
    {
      v67 = &off_276C7E8;
    }

    sub_135F3B8(v64, v67);
    if ((v34 & 0x200) == 0)
    {
LABEL_81:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(a1 + 16) |= 0x200u;
  v68 = *(a1 + 240);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    sub_1868ECC(v70);
    *(a1 + 240) = v68;
  }

  if (*(a2 + 240))
  {
    v71 = *(a2 + 240);
  }

  else
  {
    v71 = &off_2787A70;
  }

  sub_17DBC2C(v68, v71);
  if ((v34 & 0x400) == 0)
  {
LABEL_82:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(a1 + 16) |= 0x400u;
  v72 = *(a1 + 248);
  if (!v72)
  {
    v73 = *(a1 + 8);
    v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
    if (v73)
    {
      v74 = *v74;
    }

    v72 = sub_13795F4(v74);
    *(a1 + 248) = v72;
  }

  if (*(a2 + 248))
  {
    v75 = *(a2 + 248);
  }

  else
  {
    v75 = &off_276C498;
  }

  sub_135C12C(v72, v75);
  if ((v34 & 0x800) == 0)
  {
LABEL_83:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(a1 + 16) |= 0x800u;
  v76 = *(a1 + 256);
  if (!v76)
  {
    v77 = *(a1 + 8);
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    v76 = sub_13F6354(v78);
    *(a1 + 256) = v76;
  }

  if (*(a2 + 256))
  {
    v79 = *(a2 + 256);
  }

  else
  {
    v79 = &off_276F418;
  }

  sub_13F2B54(v76, v79);
  if ((v34 & 0x1000) == 0)
  {
LABEL_84:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(a1 + 16) |= 0x1000u;
  v80 = *(a1 + 264);
  if (!v80)
  {
    v81 = *(a1 + 8);
    v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL);
    if (v81)
    {
      v82 = *v82;
    }

    v80 = sub_1379A5C(v82);
    *(a1 + 264) = v80;
  }

  if (*(a2 + 264))
  {
    v83 = *(a2 + 264);
  }

  else
  {
    v83 = &off_276C760;
  }

  sub_135F4B0(v80, v83);
  if ((v34 & 0x2000) == 0)
  {
LABEL_85:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 16) |= 0x2000u;
  v84 = *(a1 + 272);
  if (!v84)
  {
    v85 = *(a1 + 8);
    v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
    if (v85)
    {
      v86 = *v86;
    }

    v84 = sub_1552C7C(v86);
    *(a1 + 272) = v84;
  }

  if (*(a2 + 272))
  {
    v87 = *(a2 + 272);
  }

  else
  {
    v87 = &off_2777110;
  }

  sub_132DE2C(v84, v87);
  if ((v34 & 0x4000) == 0)
  {
LABEL_86:
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(a1 + 16) |= 0x4000u;
  v88 = *(a1 + 280);
  if (!v88)
  {
    v89 = *(a1 + 8);
    v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
    if (v89)
    {
      v90 = *v90;
    }

    v88 = sub_137AE34(v90);
    *(a1 + 280) = v88;
  }

  if (*(a2 + 280))
  {
    v91 = *(a2 + 280);
  }

  else
  {
    v91 = &off_276CF20;
  }

  sub_135F5E0(v88, v91);
  if ((v34 & 0x8000) != 0)
  {
LABEL_144:
    *(a1 + 16) |= 0x8000u;
    v92 = *(a1 + 288);
    if (!v92)
    {
      v93 = *(a1 + 8);
      v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
      if (v93)
      {
        v94 = *v94;
      }

      sub_1379948(v94);
      *(a1 + 288) = v92;
    }

    if (*(a2 + 288))
    {
      v95 = *(a2 + 288);
    }

    else
    {
      v95 = &off_276C718;
    }

    sub_135F6C8(v92, v95);
  }

LABEL_152:
  if ((v34 & 0x3F0000) == 0)
  {
    goto LABEL_161;
  }

  if ((v34 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v97 = *(a1 + 296);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      sub_1379840(v99);
      *(a1 + 296) = v97;
    }

    if (*(a2 + 296))
    {
      v100 = *(a2 + 296);
    }

    else
    {
      v100 = &off_276C678;
    }

    sub_135F814(v97, v100);
    if ((v34 & 0x20000) == 0)
    {
LABEL_155:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_174;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(a1 + 304) = *(a2 + 304);
  if ((v34 & 0x40000) == 0)
  {
LABEL_156:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a1 + 312) = *(a2 + 312);
  if ((v34 & 0x80000) == 0)
  {
LABEL_157:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

LABEL_176:
    *(a1 + 328) = *(a2 + 328);
    if ((v34 & 0x200000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_159;
  }

LABEL_175:
  *(a1 + 320) = *(a2 + 320);
  if ((v34 & 0x100000) != 0)
  {
    goto LABEL_176;
  }

LABEL_158:
  if ((v34 & 0x200000) != 0)
  {
LABEL_159:
    *(a1 + 332) = *(a2 + 332);
  }

LABEL_160:
  *(a1 + 16) |= v34;
LABEL_161:
  v96 = *(a2 + 8);
  if (v96)
  {

    sub_1957EF4((a1 + 8), (v96 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1358338(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1358384(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_1358418(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1358384(uint64_t a1)
{
  result = sub_12D45E0(a1 + 72);
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = sub_135B718(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_135B770(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_135B7BC(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_135B830(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_135B89C(*(a1 + 168));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1358418(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17574A8(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_175C21C(*(*(a1 + 88) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 128);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_136393C(*(*(a1 + 136) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 152);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_135C2A8(*(*(a1 + 160) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 16);
  if ((v15 & 8) != 0)
  {
    result = sub_16EE510(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x10) != 0)
  {
    result = sub_152DE60(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x20) != 0)
  {
    result = sub_135B830(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x40) != 0)
  {
    result = sub_135B89C(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x80) != 0)
  {
    result = sub_1836CF0(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x400) != 0)
  {
    result = sub_135C2A8(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x800) != 0)
  {
    result = sub_13F2F78(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x4000) != 0)
  {
    v16 = *(a1 + 280);
    if (*(v16 + 16))
    {
      result = sub_137748C(*(v16 + 24));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 16);
    }
  }

  if ((v15 & 0x10000) == 0)
  {
    return 1;
  }

  result = sub_135FB64(*(a1 + 296));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13585B0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276C388 && *(a1 + 32))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135867C(uint64_t a1)
{
  sub_13585B0(a1);

  operator delete();
}

unsigned __int8 *sub_13586B4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_16E4E44(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 5) = 0;
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1358758(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v27, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v27 + 1);
    v8 = **v27;
    if (**v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v27 + 2);
      }
    }

    *v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 == 33)
        {
          v20 = *v7;
          v12 = v7 + 8;
          v5 |= 8u;
          *(a1 + 48) = v20;
          goto LABEL_28;
        }
      }

      else if (v11 == 5 && v8 == 41)
      {
        v13 = *v7;
        v12 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 56) = v13;
LABEL_28:
        *v27 = v12;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (v8 != 26)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 2u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_16F5828(v18);
      *(a1 + 32) = v16;
      v7 = *v27;
    }

    v19 = sub_21F4D60(a3, v16, v7);
LABEL_40:
    *v27 = v19;
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (sub_195ADC0(a3, v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v19 = sub_1958890(v23, *v27, a3);
    goto LABEL_40;
  }

  if (v11 == 2 && v8 == 17)
  {
    v15 = *v7;
    v12 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v15;
    goto LABEL_28;
  }

LABEL_33:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = *v27;
    }

    v19 = sub_1952690(v8, v26, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v27;
}

char *sub_1358990(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 26;
  v9 = *(v8 + 44);
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v10 = sub_19575D0(v9, v4 + 1);
  }

  else
  {
    v10 = v4 + 2;
  }

  v4 = sub_16E5070(v8, v10, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 33;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 41;
    *(v4 + 1) = v12;
    v4 += 9;
  }

LABEL_23:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_1358B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_16E51F0(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v9 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v9 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    result = v9 + 9;
  }

  else
  {
    result = v9;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1358C88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_16F5828(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277E5E8;
    }

    sub_16E527C(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_25:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1358DB8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1358DF8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1358EA8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B33F0(a1 + 12);
  sub_13B336C(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_13B32E8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1358EA8(uint64_t a1)
{
  v3 = *(a1 + 120);
  result = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C3C8)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      sub_1366DF0(v4);
      operator delete();
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      sub_13662F8(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_1367870(v6);
      operator delete();
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      sub_13650D4(v7);
      operator delete();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_136ED0C(v8);
      operator delete();
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      sub_136B798(v9);
      operator delete();
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_135C304(v10);
      operator delete();
    }

    v11 = *(a1 + 184);
    if (v11)
    {
      sub_135C8D0(v11);
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_1360A70(result);

      operator delete();
    }
  }

  return result;
}

void sub_135902C(void *a1)
{
  sub_1358DF8(a1);

  operator delete();
}

uint64_t sub_1359064(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_136980C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  result = sub_16E5B70(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_16E4E44(*(v1 + 72));
  }

LABEL_11:
  if ((v5 & 0x30) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 80) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

unsigned __int8 *sub_1359188(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 4));
    }
  }

  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13591F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    result = sub_14D28E4(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  result = sub_153FDC8(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  result = sub_18FA7B4(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_18FDA54(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0x60) != 0)
  {
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

unsigned __int8 *sub_13592D0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    result = sub_16E4E44(*(a1 + 64));
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  result = sub_16E5B70(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1869C8C(*(a1 + 80));
  }

LABEL_8:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 80) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_13593CC(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13593F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17545D4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1758FF4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_136A728(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_1421590(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_136E618(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_136D0E4(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 16);
  if ((v20 & 0x1F) == 0)
  {
    goto LABEL_32;
  }

  if ((v20 & 1) == 0)
  {
    if ((v20 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    v24 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v20 & 4) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v20 & 4) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    if ((v20 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  v23 = *(v1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v23 + 23) < 0)
  {
    **v23 = 0;
    *(v23 + 8) = 0;
    if ((v20 & 2) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *v23 = 0;
    *(v23 + 23) = 0;
    if ((v20 & 2) != 0)
    {
      goto LABEL_42;
    }
  }

LABEL_28:
  if ((v20 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_46:
  v25 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v25 + 23) < 0)
  {
    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v20 & 8) != 0)
    {
      goto LABEL_50;
    }

LABEL_30:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *v25 = 0;
  *(v25 + 23) = 0;
  if ((v20 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_50:
  result = sub_136B92C(*(v1 + 192));
  if ((v20 & 0x10) != 0)
  {
LABEL_31:
    result = sub_136B92C(*(v1 + 200));
  }

LABEL_32:
  if ((v20 & 0xE0) != 0)
  {
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 8;
  *(v21 + 216) = 0;
  *(v21 + 8) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

uint64_t sub_1359614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1359700(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_17DB104(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

uint64_t sub_135975C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 18) = 0;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1359778(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v81 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v81, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v81 + 1);
    v8 = **v81;
    if (**v81 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v81, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v81 + 2);
      }
    }

    *v81 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_120;
        }

        v11 = v7 - 1;
        while (1)
        {
          v12 = v11 + 1;
          *v81 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_1379EAC(*(a1 + 24));
            v15 = sub_19593CC(a1 + 24, v16);
            v12 = *v81;
          }

          v11 = sub_2200470(a3, v15, v12);
          *v81 = v11;
          if (!v11)
          {
            goto LABEL_138;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_128;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 2u;
        v52 = *(a1 + 128);
        if (!v52)
        {
          v53 = *(a1 + 8);
          v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
          if (v53)
          {
            v54 = *v54;
          }

          v52 = sub_137A034(v54);
          *(a1 + 128) = v52;
          v7 = *v81;
        }

        v26 = sub_2200500(a3, v52, v7);
        goto LABEL_127;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 4u;
        v39 = *(a1 + 136);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_1379F3C(v41);
          *(a1 + 136) = v39;
          v7 = *v81;
        }

        v26 = sub_2200590(a3, v39, v7);
        goto LABEL_127;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 8u;
        v45 = *(a1 + 144);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          sub_137A0E4(v47);
          v45 = v48;
          *(a1 + 144) = v48;
          v7 = *v81;
        }

        v26 = sub_2200620(a3, v45, v7);
        goto LABEL_127;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x10u;
        v27 = *(a1 + 152);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_1379E50(v29);
          *(a1 + 152) = v27;
          v7 = *v81;
        }

        v26 = sub_22006B0(a3, v27, v7);
        goto LABEL_127;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 1u;
        v55 = *(a1 + 8);
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v56 = *v56;
        }

        v57 = sub_194DB04((a1 + 120), v56);
        v26 = sub_1958890(v57, *v81, a3);
        goto LABEL_127;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_120;
        }

        v61 = (v7 - 1);
        while (1)
        {
          v62 = (v61 + 1);
          *v81 = v61 + 1;
          v63 = *(a1 + 64);
          if (v63 && (v64 = *(a1 + 56), v64 < *v63))
          {
            *(a1 + 56) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = *(a1 + 48);
            if (!v66)
            {
              operator new();
            }

            *v68 = v67;
            v68[1] = sub_195A650;
            *v67 = 0;
            v67[1] = 0;
            v67[2] = 0;
            v65 = sub_19593CC(a1 + 48, v67);
            v62 = *v81;
          }

          v61 = sub_1958890(v65, v62, a3);
          *v81 = v61;
          if (!v61)
          {
            goto LABEL_138;
          }

          if (*a3 <= v61 || *v61 != 58)
          {
            goto LABEL_128;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x20u;
        v49 = *(a1 + 160);
        if (!v49)
        {
          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          v49 = sub_137A6D8(v51);
          *(a1 + 160) = v49;
          v7 = *v81;
        }

        v26 = sub_2200740(a3, v49, v7);
        goto LABEL_127;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x40u;
        v72 = *(a1 + 168);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          sub_137A440(v74);
          v72 = v75;
          *(a1 + 168) = v75;
          v7 = *v81;
        }

        v26 = sub_22007D0(a3, v72, v7);
        goto LABEL_127;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_120;
        }

        v33 = v7 - 1;
        while (1)
        {
          v34 = v33 + 1;
          *v81 = v33 + 1;
          v35 = *(a1 + 88);
          if (v35 && (v36 = *(a1 + 80), v36 < *v35))
          {
            *(a1 + 80) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            sub_137949C(*(a1 + 72));
            v37 = sub_19593CC(a1 + 72, v38);
            v34 = *v81;
          }

          v33 = sub_2200860(a3, v37, v34);
          *v81 = v33;
          if (!v33)
          {
            goto LABEL_138;
          }

          if (*a3 <= v33 || *v33 != 82)
          {
            goto LABEL_128;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x80u;
        v69 = *(a1 + 176);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_137967C(v71);
          *(a1 + 176) = v69;
          v7 = *v81;
        }

        v26 = sub_22008F0(a3, v69, v7);
        goto LABEL_127;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x100u;
        v23 = *(a1 + 184);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_1379704(v25);
          *(a1 + 184) = v23;
          v7 = *v81;
        }

        v26 = sub_2200980(a3, v23, v7);
        goto LABEL_127;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_120;
        }

        v31 = (v7 + 1);
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          *v81 = sub_19587DC(v7, v30);
          if (!*v81)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_44:
          *v81 = v31;
        }

        if (v30 > 3)
        {
          sub_13B6734();
        }

        else
        {
          *(a1 + 16) |= 0x400u;
          *(a1 + 200) = v30;
        }

        goto LABEL_128;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_120;
        }

        v5 |= 0x800u;
        v59 = (v7 + 1);
        v58 = *v7;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v79 = sub_19587DC(v7, v58);
          *v81 = v79;
          *(a1 + 204) = v80 != 0;
          if (!v79)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v59 = (v7 + 2);
LABEL_95:
          *v81 = v59;
          *(a1 + 204) = v58 != 0;
        }

        goto LABEL_128;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_120;
        }

        v17 = (v7 - 1);
        while (1)
        {
          v18 = (v17 + 1);
          *v81 = v17 + 1;
          v19 = *(a1 + 112);
          if (v19 && (v20 = *(a1 + 104), v20 < *v19))
          {
            *(a1 + 104) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_1379FB8(*(a1 + 96));
            v21 = sub_19593CC(a1 + 96, v22);
            v18 = *v81;
          }

          v17 = sub_2200A10(a3, v21, v18);
          *v81 = v17;
          if (!v17)
          {
            goto LABEL_138;
          }

          if (*a3 <= v17 || *v17 != 122)
          {
            goto LABEL_128;
          }
        }

      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x200u;
        v42 = *(a1 + 192);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_13798CC(v44);
          *(a1 + 192) = v42;
          v7 = *v81;
        }

        v26 = sub_2200AA0(a3, v42, v7);
        goto LABEL_127;
      default:
LABEL_120:
        if (v8)
        {
          v76 = (v8 & 7) == 4;
        }

        else
        {
          v76 = 1;
        }

        if (!v76)
        {
          v77 = *(a1 + 8);
          if (v77)
          {
            v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v78 = sub_11F1920((a1 + 8));
            v7 = *v81;
          }

          v26 = sub_1952690(v8, v78, v7, a3);
LABEL_127:
          *v81 = v26;
          if (!v26)
          {
            goto LABEL_138;
          }

LABEL_128:
          if (sub_195ADC0(a3, v81, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_138:
          *v81 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v81;
    }
  }
}

char *sub_1359F80(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1365E70(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 128);
    *__dst = 18;
    v18 = *(v17 + 20);
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, __dst + 1);
    }

    else
    {
      v19 = __dst + 2;
    }

    __dst = sub_136730C(v17, v19, a3);
    if ((v11 & 4) == 0)
    {
LABEL_11:
      if ((v11 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_60;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v23 = *(a1 + 136);
  *__dst = 26;
  v24 = *(v23 + 20);
  __dst[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, __dst + 1);
  }

  else
  {
    v25 = __dst + 2;
  }

  __dst = sub_136659C(v23, v25, a3);
  if ((v11 & 8) == 0)
  {
LABEL_12:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_60:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v35 = *(a1 + 144);
  *__dst = 34;
  v36 = *(v35 + 20);
  __dst[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, __dst + 1);
  }

  else
  {
    v37 = __dst + 2;
  }

  __dst = sub_1367DB0(v35, v37, a3);
  if ((v11 & 0x10) == 0)
  {
LABEL_13:
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_72:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v41 = *(a1 + 152);
  *__dst = 42;
  v42 = *(v41 + 44);
  __dst[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, __dst + 1);
  }

  else
  {
    v43 = __dst + 2;
  }

  __dst = sub_1365584(v41, v43, a3);
  if (v11)
  {
LABEL_14:
    __dst = sub_128AEEC(a3, 6, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

LABEL_15:
  v12 = *(a1 + 56);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      __dst = sub_1355F54(a3, 7, *(*(a1 + 64) + v13), __dst);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v14 = *(a1 + 160);
    *__dst = 66;
    v15 = *(v14 + 20);
    __dst[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, __dst + 1);
    }

    else
    {
      v16 = __dst + 2;
    }

    __dst = sub_136F000(v14, v16, a3);
  }

  if ((v11 & 0x40) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v20 = *(a1 + 168);
    *__dst = 74;
    v21 = *(v20 + 20);
    __dst[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, __dst + 1);
    }

    else
    {
      v22 = __dst + 2;
    }

    __dst = sub_136C1A4(v20, v22, a3);
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 88) + 8 * j + 8);
      *__dst = 82;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_1358990(v28, v30, a3);
    }
  }

  if ((v11 & 0x80) == 0)
  {
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_52;
    }

LABEL_66:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v38 = *(a1 + 184);
    *__dst = 98;
    v39 = *(v38 + 20);
    __dst[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, __dst + 1);
    }

    else
    {
      v40 = __dst + 2;
    }

    __dst = sub_135CB04(v38, v40, a3);
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v32 = *(a1 + 176);
  *__dst = 90;
  v33 = *(v32 + 20);
  __dst[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, __dst + 1);
  }

  else
  {
    v34 = __dst + 2;
  }

  __dst = sub_135C61C(v32, v34, a3);
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_66;
  }

LABEL_52:
  if ((v11 & 0x400) == 0)
  {
LABEL_53:
    v31 = __dst;
    goto LABEL_88;
  }

LABEL_78:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v44 = *(a1 + 200);
  *__dst = 104;
  __dst[1] = v44;
  if (v44 > 0x7F)
  {
    __dst[1] = v44 | 0x80;
    v45 = v44 >> 7;
    __dst[2] = v44 >> 7;
    v31 = __dst + 3;
    if (v44 >= 0x4000)
    {
      LOBYTE(v46) = __dst[2];
      do
      {
        *(v31 - 1) = v46 | 0x80;
        v46 = v45 >> 7;
        *v31++ = v45 >> 7;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
    }
  }

  else
  {
    v31 = __dst + 2;
  }

LABEL_88:
  if ((v11 & 0x800) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v48 = *(a1 + 204);
    *v31 = 112;
    v31[1] = v48;
    v31 += 2;
  }

  v49 = *(a1 + 104);
  if (v49)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v51 = *(*(a1 + 112) + 8 * k + 8);
      *v31 = 122;
      v52 = *(v51 + 20);
      v31[1] = v52;
      if (v52 > 0x7F)
      {
        v53 = sub_19575D0(v52, v31 + 1);
      }

      else
      {
        v53 = v31 + 2;
      }

      v31 = sub_1366B4C(v51, v53, a3);
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v54 = *(a1 + 192);
    *v31 = 386;
    v55 = *(v54 + 20);
    v31[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v31 + 2);
    }

    else
    {
      v56 = v31 + 3;
    }

    v31 = sub_1360D94(v54, v56, a3);
  }

  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v31;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if ((*a3 - v31) >= v60)
  {
    v62 = v60;
    memcpy(v31, v61, v60);
    v31 += v62;
    return v31;
  }

  return sub_1957130(a3, v61, v60, v31);
}

uint64_t sub_135A67C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1366040(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_1358B84(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_1366CE4(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  if (v28)
  {
    v35 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(v35 + 23);
    v37 = *(v35 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v37 = v36;
    }

    v22 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 2) == 0)
    {
LABEL_29:
      if ((v28 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_29;
  }

  v38 = sub_136761C(*(a1 + 128));
  v22 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 4) == 0)
  {
LABEL_30:
    if ((v28 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_51:
  v39 = sub_1366718(*(a1 + 136));
  v22 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 8) == 0)
  {
LABEL_31:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_53;
  }

LABEL_52:
  v40 = sub_1368138(*(a1 + 144));
  v22 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x10) == 0)
  {
LABEL_32:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_54:
    v42 = sub_136F238(*(a1 + 160));
    v22 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x40) == 0)
    {
LABEL_34:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_55;
  }

LABEL_53:
  v41 = sub_1365818(*(a1 + 152));
  v22 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_33:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_55:
  v43 = sub_136C8BC(*(a1 + 168));
  v22 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x80) != 0)
  {
LABEL_35:
    v29 = sub_135C754(*(a1 + 176));
    v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_36:
  if ((v28 & 0xF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v28 & 0x100) == 0)
  {
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_39;
    }

LABEL_58:
    v45 = sub_1360EF0(*(a1 + 192));
    v22 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v28 & 0x400) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  v44 = sub_135CC10(*(a1 + 184));
  v22 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x200) != 0)
  {
    goto LABEL_58;
  }

LABEL_39:
  if ((v28 & 0x400) != 0)
  {
LABEL_40:
    v30 = *(a1 + 200);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v22 += v32;
  }

LABEL_44:
  v22 += (v28 >> 10) & 2;
LABEL_45:
  v33 = *(a1 + 8);
  if (v33)
  {
    v46 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v46 + 16);
    }

    v22 += v47;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_135AA90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4424((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_16F58FC(v19);
      *(a1 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_277E650;
    }

    sub_16E645C(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 72);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5828(v23);
      *(a1 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v24 = *(a2 + 72);
    }

    else
    {
      v24 = &off_277E5E8;
    }

    sub_16E527C(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 16) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_12;
    }

LABEL_39:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135AC94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_1551D64(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27769A8;
    }

    sub_1542CDC(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_155218C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2776D50;
    }

    sub_14D3AD8(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1906254(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_278AFA0;
    }

    sub_18FBB2C(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 0x10u;
    v21 = *(a1 + 56);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_190630C(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_278B0B0;
    }

    sub_18FED20(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_50:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135AEA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_20:
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_16F5828(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_277E5E8;
    }

    sub_16E527C(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 72);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_16F58FC(v18);
      *(a1 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = &off_277E650;
    }

    sub_16E645C(v16, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_9;
    }

LABEL_36:
    *(a1 + 40) |= 0x10u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_18FF354(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_2787BC0;
    }

    sub_186A25C(v20, v23);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135B098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3FEC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B4078((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B45A8((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B4634((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B46C0((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B474C((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if (v34)
  {
    if (v34)
    {
      v35 = *(a2 + 168);
      *(a1 + 16) |= 1u;
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      sub_194EA1C((a1 + 168), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
      if ((v34 & 2) == 0)
      {
LABEL_22:
        if ((v34 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

    v38 = *(a2 + 176);
    *(a1 + 16) |= 2u;
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 176), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v34 & 4) == 0)
    {
LABEL_33:
      if ((v34 & 8) != 0)
      {
        *(a1 + 16) |= 8u;
        v46 = *(a1 + 192);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          v46 = sub_137A5B0(v48);
          *(a1 + 192) = v46;
        }

        if (*(a2 + 192))
        {
          v49 = *(a2 + 192);
        }

        else
        {
          v49 = &off_276CB50;
        }

        sub_136CCE8(v46, v49);
        if ((v34 & 0x10) == 0)
        {
LABEL_35:
          if ((v34 & 0x20) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_62;
        }
      }

      else if ((v34 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 0x10u;
      v50 = *(a1 + 200);
      if (!v50)
      {
        v51 = *(a1 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v52 = *v52;
        }

        v50 = sub_137A5B0(v52);
        *(a1 + 200) = v50;
      }

      if (*(a2 + 200))
      {
        v53 = *(a2 + 200);
      }

      else
      {
        v53 = &off_276CB50;
      }

      sub_136CCE8(v50, v53);
      if ((v34 & 0x20) == 0)
      {
LABEL_36:
        if ((v34 & 0x40) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(a1 + 208) = *(a2 + 208);
      if ((v34 & 0x40) == 0)
      {
LABEL_37:
        if ((v34 & 0x80) == 0)
        {
LABEL_39:
          *(a1 + 16) |= v34;
          goto LABEL_40;
        }

LABEL_38:
        *(a1 + 216) = *(a2 + 216);
        goto LABEL_39;
      }

LABEL_63:
      *(a1 + 212) = *(a2 + 212);
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_30:
    v41 = *(a2 + 184);
    *(a1 + 16) |= 4u;
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    sub_194EA1C((a1 + 184), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
    goto LABEL_33;
  }

LABEL_40:
  if ((v34 & 0x100) != 0)
  {
    v44 = *(a2 + 224);
    *(a1 + 16) |= 0x100u;
    *(a1 + 224) = v44;
  }

  v45 = *(a2 + 8);
  if (v45)
  {

    sub_1957EF4((a1 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_135B4C0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    size = result->__r_.__value_.__l.__size_;
    v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v7 = *v7;
    }

    result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v12 = v3->__r_.__value_.__l.__size_;
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    v14 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[2], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

LABEL_19:
  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_135B60C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    data = result[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      sub_1868ECC(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2787A70;
    }

    result = sub_17DBC2C(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_135B6B4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_135B718(uint64_t a1)
{
  result = sub_13677FC(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 4) != 0)
    {
      result = sub_16E6614(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B770(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135B7BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_1543A14(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_14D3EC8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_18FCAE4(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135B830(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_16E6614(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_186A390(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B89C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17574A8(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_175C21C(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_136CED0(a1 + 72);
  if (result)
  {
    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_14230C4(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 152);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_136DBF4(*(*(a1 + 160) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 16);
    if ((v15 & 8) != 0)
    {
      result = sub_136CF2C(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 16);
    }

    if ((v15 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_136CF2C(*(a1 + 200));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B9A8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_276C498)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_18FA778(v6);
      operator delete();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      sub_18FDA18(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135BAB0(uint64_t a1)
{
  sub_135B9A8(a1);

  operator delete();
}

uint64_t sub_135BAE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_18FA7B4(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_18FDA54(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_135BBC8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 8);
          v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v17 = *v17;
          }

          v18 = (a1 + 24);
          goto LABEL_35;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
LABEL_35:
        v23 = sub_194DB04(v18, v17);
        v15 = sub_1958890(v23, *v28, a3);
        goto LABEL_43;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1906254(v21);
          *(a1 + 40) = v19;
          v6 = *v28;
        }

        v15 = sub_21F3AD0(a3, v19, v6);
        goto LABEL_43;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 8u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_190630C(v14);
        *(a1 + 48) = v12;
        v6 = *v28;
      }

      v15 = sub_21F3B60(a3, v12, v6);
      goto LABEL_43;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v28;
      }

LABEL_49:
      *v28 = 0;
      return *v28;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = *v28;
    }

    v15 = sub_1952690(v7, v26, v6, a3);
LABEL_43:
    *v28 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  return *v28;
}

char *sub_135BE00(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 40);
    *v4 = 10;
    v10 = *(v9 + 44);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
    }

    else
    {
      v11 = v4 + 2;
    }

    v4 = sub_18FB10C(v9, v11, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 48);
  *v4 = 18;
  v13 = *(v12 + 44);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
  }

  else
  {
    v14 = v4 + 2;
  }

  v4 = sub_18FE368(v12, v14, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_135BFCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = sub_18FB7A4(*(a1 + 40));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_14:
    v10 = sub_18FE97C(*(a1 + 48));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_135C12C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  *(a1 + 16) |= 4u;
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_1906254(v13);
    *(a1 + 40) = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_278AFA0;
  }

  sub_18FBB2C(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_190630C(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_278B0B0;
    }

    sub_18FED20(v15, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_135C2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_18FCAE4(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135C304(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135C3E4(uint64_t a1)
{
  sub_135C304(a1);

  operator delete();
}

uint64_t sub_135C41C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v17 = *(a1 + 8);
          v13 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v13 = *v13;
          }

          v14 = (a1 + 40);
          goto LABEL_31;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
        goto LABEL_31;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
        goto LABEL_31;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
LABEL_31:
      v18 = sub_194DB04(v14, v13);
      v19 = sub_1958890(v18, *v24, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v20 = (v7 & 7) == 4;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v24;
      }

LABEL_45:
      *v24 = 0;
      return *v24;
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v6 = *v24;
    }

    v19 = sub_1952690(v7, v22, v6, a3);
LABEL_32:
    *v24 = v19;
    if (!v19)
    {
      goto LABEL_45;
    }
  }

  return *v24;
}

char *sub_135C61C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_135C754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_17;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}