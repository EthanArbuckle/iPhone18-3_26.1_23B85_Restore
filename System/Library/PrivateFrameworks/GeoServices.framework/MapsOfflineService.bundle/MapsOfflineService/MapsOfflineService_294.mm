std::string *sub_1214A0C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&v10[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[2], v12 + v11);
    v13 = v3[3].__r_.__value_.__l.__data_;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) += *(a2 + 64);
    result = memcpy(&v13[4 * v12], *(a2 + 72), 4 * *(a2 + 64));
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = SLODWORD(v3[3].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[3].__r_.__value_.__r.__words[2], v15 + v14);
    v16 = v3[4].__r_.__value_.__l.__data_;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) += *(a2 + 88);
    result = memcpy(&v16[4 * v15], *(a2 + 96), 4 * *(a2 + 88));
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    v18 = SLODWORD(v3[4].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[4].__r_.__value_.__r.__words[2], v18 + v17);
    v19 = v3[5].__r_.__value_.__l.__data_;
    LODWORD(v3[4].__r_.__value_.__r.__words[2]) += *(a2 + 112);
    result = memcpy(&v19[4 * v18], *(a2 + 120), 4 * *(a2 + 112));
  }

  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = SLODWORD(v3[5].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[5].__r_.__value_.__r.__words[2], v21 + v20);
    v22 = v3[6].__r_.__value_.__l.__data_;
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) += *(a2 + 136);
    result = memcpy(&v22[4 * v21], *(a2 + 144), 4 * *(a2 + 136));
  }

  v23 = *(a2 + 160);
  if (v23)
  {
    v24 = SLODWORD(v3[6].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[6].__r_.__value_.__r.__words[2], v24 + v23);
    v25 = v3[7].__r_.__value_.__l.__data_;
    LODWORD(v3[6].__r_.__value_.__r.__words[2]) += *(a2 + 160);
    result = memcpy(&v25[4 * v24], *(a2 + 168), 4 * *(a2 + 160));
  }

  v26 = *(a2 + 192);
  if (v26)
  {
    v27 = *(a2 + 200);
    v28 = sub_19592E8(&v3[7].__r_.__value_.__r.__words[2], *(a2 + 192));
    result = sub_1201B48(&v3[7].__r_.__value_.__r.__words[2], v28, (v27 + 8), v26, *v3[8].__r_.__value_.__l.__size_ - LODWORD(v3[8].__r_.__value_.__l.__data_));
    v29 = LODWORD(v3[8].__r_.__value_.__l.__data_) + v26;
    LODWORD(v3[8].__r_.__value_.__l.__data_) = v29;
    size = v3[8].__r_.__value_.__l.__size_;
    if (*size < v29)
    {
      *size = v29;
    }
  }

  v31 = *(a2 + 208);
  if (v31)
  {
    v32 = SLODWORD(v3[8].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[8].__r_.__value_.__r.__words[2], v32 + v31);
    v33 = v3[9].__r_.__value_.__l.__data_;
    LODWORD(v3[8].__r_.__value_.__r.__words[2]) += *(a2 + 208);
    result = memcpy(&v33[4 * v32], *(a2 + 216), 4 * *(a2 + 208));
  }

  v34 = *(a2 + 232);
  if (v34)
  {
    v35 = SLODWORD(v3[9].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[9].__r_.__value_.__r.__words[2], v35 + v34);
    v36 = v3[10].__r_.__value_.__l.__data_;
    LODWORD(v3[9].__r_.__value_.__r.__words[2]) += *(a2 + 232);
    result = memcpy(&v36[4 * v35], *(a2 + 240), 4 * *(a2 + 232));
  }

  v37 = *(a2 + 256);
  if (v37)
  {
    v38 = SLODWORD(v3[10].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[10].__r_.__value_.__r.__words[2], v38 + v37);
    v39 = v3[11].__r_.__value_.__l.__data_;
    LODWORD(v3[10].__r_.__value_.__r.__words[2]) += *(a2 + 256);
    result = memcpy(&v39[4 * v38], *(a2 + 264), 4 * *(a2 + 256));
  }

  v40 = *(a2 + 8);
  if (v40)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1214DD8(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[7];
  if (v5 && !a1[5])
  {
    v6 = (v5 + 2);
    v7 = *v5;
    if (v7 >= 1)
    {
      do
      {
        if (*v6)
        {
          sub_1216DB4(*v6);
          operator delete();
        }

        ++v6;
        --v7;
      }

      while (v7);
      v5 = a1[7];
    }

    operator delete(v5);
  }

  a1[7] = 0;
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v8 = a1[1];
  if ((v8 & 2) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      if (*v9)
      {
LABEL_14:
        sub_194E188();
        operator delete();
      }
    }

    else if (v9)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_1214EE8(void *a1)
{
  sub_1214DD8(a1);

  operator delete();
}

uint64_t sub_1214F20(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1216F14(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1214FA0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 32);
  if (v5 >= 1)
  {
    v6 = __dst;
    if (*a3 <= __dst)
    {
      v6 = sub_225EB68(a3, __dst);
      *v6 = 10;
      v7 = v6 + 1;
      if (v5 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *__dst = 10;
      v7 = __dst + 1;
      if (v5 < 0x80)
      {
LABEL_4:
        result = v6 + 2;
        *v7 = v5;
        v9 = *(a1 + 24);
        v10 = &v9[*(a1 + 16)];
        while (1)
        {
          if (*a3 <= result)
          {
            result = sub_225EB68(a3, result);
            v16 = *v9++;
            v11 = v16;
            *result = v16;
            if (v16 > 0x7F)
            {
LABEL_9:
              *result = v11 | 0x80;
              v13 = v11 >> 7;
              result[1] = v11 >> 7;
              result += 2;
              if (v11 >= 0x4000)
              {
                v14 = v11 >> 7;
                do
                {
                  *(result - 1) = v13 | 0x80;
                  v13 = v14 >> 7;
                  *result++ = v14 >> 7;
                  v15 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v15);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v12 = *v9++;
            v11 = v12;
            *result = v12;
            if (v12 > 0x7F)
            {
              goto LABEL_9;
            }
          }

          ++result;
LABEL_6:
          if (v9 >= v10)
          {
            goto LABEL_16;
          }
        }
      }
    }

    do
    {
      *v7++ = v5 | 0x80;
      v26 = v5 >> 14;
      v5 >>= 7;
    }

    while (v26);
    v6 = v7 - 1;
    goto LABEL_4;
  }

  result = __dst;
LABEL_16:
  v17 = *(a1 + 48);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v20 = *(*(a1 + 56) + 8 * i + 8);
      *result = 18;
      v21 = *(v20 + 20);
      result[1] = v21;
      if (v21 > 0x7F)
      {
        v19 = sub_19575D0(v21, result + 1);
      }

      else
      {
        v19 = result + 2;
      }

      result = sub_1216F38(v20, v19, a3);
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *(v23 + 31);
    if (v24 < 0)
    {
      v25 = *(v23 + 8);
      v24 = *(v23 + 16);
    }

    else
    {
      v25 = (v23 + 8);
    }

    v27 = v24;
    if (*a3 - result < v24)
    {

      return sub_1957130(a3, v25, v24, result);
    }

    else
    {
      v28 = result;
      memcpy(result, v25, v24);
      return &v28[v27];
    }
  }

  return result;
}

uint64_t sub_12151E8(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 32) = v3;
  v5 = *(a1 + 48);
  v6 = v4 + v2 + v5;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_1217134(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v16 = v15 + v6;
    *(a1 + 64) = v16;
    return v16;
  }

  else
  {
    *(a1 + 64) = v6;
    return v6;
  }
}

std::string *sub_12152EC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1216880((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    size = v3[2].__r_.__value_.__l.__size_;
    if (*size < v11)
    {
      *size = v11;
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_1215458(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2677EB0;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1215490(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2734AC8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1212E84(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1213674(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1214DD8(v7);
      operator delete();
    }
  }

  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_12:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v8 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v8)
      {
LABEL_15:
        sub_194E188();
        operator delete();
      }
    }

    else if (v8)
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void sub_12155B0(uint64_t a1)
{
  sub_1215490(a1);

  operator delete();
}

uint64_t sub_12155E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_1212FD0(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      *(v3 + 16) = 0;
      *(v3 + 40) = 0;
      *(v3 + 64) = 0;
      *(v3 + 88) = 0;
      *(v3 + 112) = 0;
      *(v3 + 136) = 0;
      *(v3 + 160) = 0;
      v4 = *(v3 + 192);
      if (v4 >= 1)
      {
        v5 = *(v3 + 200) + 8;
        do
        {
          while (1)
          {
            v6 = *v5;
            if (*(*v5 + 23) < 0)
            {
              break;
            }

            *v6 = 0;
            *(v6 + 23) = 0;
            v5 += 8;
            if (!--v4)
            {
              goto LABEL_10;
            }
          }

          **v6 = 0;
          *(v6 + 8) = 0;
          v5 += 8;
          --v4;
        }

        while (v4);
LABEL_10:
        *(v3 + 192) = 0;
      }

      v7 = *(v3 + 8);
      result = v3 + 8;
      *(result + 200) = 0;
      *(result + 224) = 0;
      *(result + 248) = 0;
      if (v7)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      v8 = *(v1 + 40);
      *(v8 + 16) = 0;
      v9 = *(v8 + 48);
      if (v9 >= 1)
      {
        v10 = (*(v8 + 56) + 8);
        do
        {
          v11 = *v10++;
          result = sub_1216F14(v11);
          --v9;
        }

        while (v9);
        *(v8 + 48) = 0;
      }

      v13 = *(v8 + 8);
      v12 = (v8 + 8);
      if (v13)
      {
        result = sub_1957EA8(v12);
      }
    }
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 40) = 0;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

char *sub_1215740(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 48);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 48);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v4++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 24);
    *v4 = 18;
    v14 = *(v13 + 20);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
      v4 = sub_1213164(v13, v15, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = sub_1213164(v13, (v4 + 2), a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_11:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 40);
    *v4 = 34;
    v20 = *(v19 + 64);
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v4 + 1);
    }

    else
    {
      v21 = v4 + 2;
    }

    v4 = sub_1214FA0(v19, v21, a3);
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_32;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 32);
  *v4 = 26;
  v17 = *(v16 + 276);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
    v4 = sub_1213858(v16, v18, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = sub_1213858(v16, v4 + 2, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_12:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

LABEL_32:
  v22 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  v25 = v23;
  if ((*a3 - v4) < v23)
  {

    return sub_1957130(a3, v24, v23, v4);
  }

  else
  {
    memcpy(v4, v24, v23);
    return &v4[v25];
  }
}

uint64_t sub_1215A00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v2)
  {
    v5 = sub_1213390(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_8:
    v6 = sub_1214474(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 40);
    v8 = sub_1959E5C((v7 + 16));
    v9 = 11;
    v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v9 = v10;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v8)
    {
      v9 = 0;
    }

    *(v7 + 32) = v11;
    v12 = v9 + v8;
    v13 = *(v7 + 48);
    v14 = v12 + v13;
    v15 = *(v7 + 56);
    if (v15)
    {
      v16 = (v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = 8 * v13;
      do
      {
        v18 = *v16++;
        v19 = sub_1217134(v18);
        v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
        v17 -= 8;
      }

      while (v17);
    }

    v20 = *(v7 + 8);
    if (v20)
    {
      v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      v25 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v25 < 0)
      {
        v25 = *(v24 + 16);
      }

      v14 += v25;
    }

    *(v7 + 64) = v14;
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      v4 = *(a1 + 8);
      if ((v4 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v22 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v23 < 0)
  {
    v23 = *(v22 + 16);
  }

  v3 += v23;
LABEL_29:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1215C04(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        sub_1215F40(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2734938;
      }

      result = sub_12134B4(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3[1].__r_.__value_.__l.__size_;
    if (!v10)
    {
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_1215FBC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2734968;
    }

    result = sub_1214A0C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v14 = v3[1].__r_.__value_.__r.__words[2];
    if (!v14)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_1216124(v16);
      v3[1].__r_.__value_.__r.__words[2] = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2734A80;
    }

    result = sub_12152EC(v14, v17);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1215DEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677C30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1215E94(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677CB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_1215F40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2677D30;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_1215FBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2677DB0;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = a1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = a1;
  *(v2 + 176) = 0;
  *(v2 + 184) = a1;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = a1;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = a1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0;
  return result;
}

uint64_t sub_1216124(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677E30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = a1;
  *(result + 64) = 0;
  return result;
}

double sub_12161DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2677EB0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1216520(char *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2 < 0)
  {
    v4 = (a1[1] << 7) + v2 - 128;
    if (a1[1] < 0)
    {
      result = sub_19587DC(a1, v4);
      *a2 = v6;
    }

    else
    {
      *a2 = v4;
      return (a1 + 2);
    }
  }

  else
  {
    *a2 = v2;
    return (a1 + 1);
  }

  return result;
}

char *sub_1216588(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    v7 = *(a1 + 8);
    v8 = v7 - result;
    if (v5 > v7 - result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = a3[1];
    v14 = &result[v5];
    v19 = *a3;
    v20 = v13;
    result = sub_1216734(result, v14, &v19);
    if (v14 != result)
    {
      return 0;
    }

    return result;
  }

  result = sub_225F208(a2, *a2);
  if (!result)
  {
    return result;
  }

  v5 = v15;
  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
    goto LABEL_8;
  }

LABEL_3:
  while (1)
  {
    v9 = a3[1];
    v19 = *a3;
    v20 = v9;
    result = sub_1216734(result, v7, &v19);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 8);
    v11 = result - v10;
    v12 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      v23 = 0;
      v22 = 0;
      v16 = *v10;
      v17 = v12;
      v18 = a3[1];
      v19 = *a3;
      v20 = v18;
      v21 = v16;
      if (sub_1216734(&v21 + v11, &v21 + v12, &v19) != &v21 + v12)
      {
        return 0;
      }

      return (*(a1 + 8) + v17);
    }

    if (*(a1 + 28) < 17)
    {
      return 0;
    }

    result = sub_1958134(a1);
    if (!result)
    {
      return result;
    }

    v5 = v5 - v8 - v11;
    result += v11;
    v7 = *(a1 + 8);
    v8 = v7 - result;
    if (v5 <= v7 - result)
    {
      goto LABEL_8;
    }
  }
}

char *sub_1216734(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_19587DC(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v10;
        if ((a3[1])(v10))
        {
LABEL_9:
          v8 = *a3;
          v9 = **a3;
          if (v9 == (*a3)[1])
          {
            sub_1958E5C(*a3, v9 + 1);
          }

          *(*(v8 + 1) + 4 * v9) = v6;
          *v8 = v9 + 1;
          continue;
        }
      }

      else
      {
        v3 += 2;
        if ((a3[1])((v7 - 128)))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      ++v3;
      if ((a3[1])(v6))
      {
        goto LABEL_9;
      }
    }

    v11 = *(a3 + 6);
    v12 = *a3[2];
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v14 = *(a3 + 6);
      v13 = sub_11F1920(a3[2]);
      v11 = v14;
    }

    sub_19586BC(v11, v6, v13);
  }

  return v3;
}

std::string *sub_1216880(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1219678(v9);
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
      result = sub_12168FC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1216944()
{
  v2 = *(v1 + 28) + v0;
  *(v1 + 28) = v2;
  *v1 = *(v1 + 8) + (v2 & (v2 >> 31));
}

void *sub_12169BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1216A5C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_1216B1C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_1216B40(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= v3)
    {
      v14 = a1;
      v15 = v3;
      v16 = a3;
      v17 = sub_225EB68(a3, v15);
      a3 = v16;
      v3 = v17;
      a1 = v14;
    }

    v8 = *(a1 + 28);
    *v3 = 21;
    *(v3 + 1) = v8;
    v3 += 5;
    v5 = *(a1 + 8);
    if ((v5 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    v19 = a1;
    v12 = a3;
    v13 = sub_225EB68(a3, __dst);
    a3 = v12;
    v3 = v13;
    a1 = v19;
  }

  v7 = *(a1 + 24);
  *v3 = 13;
  *(v3 + 1) = v7;
  v3 += 5;
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = *(a1 + 8);
  if ((v5 & 1) == 0)
  {
    return v3;
  }

LABEL_11:
  v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  v18 = v10;
  if (*a3 - v3 < v10)
  {

    return sub_1957130(a3, v11, v10, v3);
  }

  else
  {
    memcpy(v3, v11, v10);
    return &v3[v18];
  }
}

uint64_t sub_1216C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  v3 = (~v1 & 3) == 0;
  v4 = 10;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v9 = v8 + v4;
    *(a1 + 20) = v9;
    return v9;
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

std::string *sub_1216CF0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1216DB4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1216E54(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_1216F14(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_1216F38(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v25 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v25;
      v5 = *(v25 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v12 = a1;
    v13 = v3;
    v14 = a3;
    v15 = sub_225EB68(a3, v13);
    a3 = v14;
    v3 = v15;
    a1 = v12;
    v11 = *(v12 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v16 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v17 = v11 >> 7;
    do
    {
      *(v3 - 1) = v17 | 0x80;
      v17 = v16 >> 7;
      *v3++ = v16 >> 7;
      v18 = v16 >> 14;
      v16 >>= 7;
    }

    while (v18);
  }

LABEL_17:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v3;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  v24 = v22;
  if (*a3 - v3 < v22)
  {

    return sub_1957130(a3, v23, v22, v3);
  }

  else
  {
    memcpy(v3, v23, v22);
    return &v3[v24];
  }
}

unint64_t sub_1217134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v7 = v6 + v2;
    *(a1 + 20) = v7;
    return v7;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_12171D0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_121721C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1217268(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    if ((result->__r_.__value_.__s.__data_[16] & 3) != 0)
    {
      result[1].__r_.__value_.__r.__words[0] = 0;
      result[1].__r_.__value_.__l.__size_ = 0;
    }

    p_size = &result->__r_.__value_.__l.__size_;
    v2 = result->__r_.__value_.__s.__data_[8];
    LODWORD(result->__r_.__value_.__r.__words[2]) = 0;
    if (v2)
    {
      v4 = result;
      v5 = a2;
      sub_1957EA8(&result->__r_.__value_.__l.__size_);
      result = v4;
      a2 = v5;
    }

    v6 = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      if (v6)
      {
        result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      }

      if ((v6 & 2) != 0)
      {
        result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
      }

      LODWORD(result->__r_.__value_.__r.__words[2]) |= v6;
    }

    v7 = *(a2 + 8);
    if (v7)
    {

      return sub_1957EF4(p_size, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  return result;
}

double sub_121739C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26780C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &qword_278E990;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x100000000;
  return result;
}

void *sub_12173EC(void *a1)
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

  sub_12174A0(a1);
  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_5:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_8:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

void ***sub_12174A0(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2734B48)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v4[1];
      if ((v5 & 1) != 0 && !*(v5 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v4 + 1);
        v5 = v4[1];
      }

      *v4 = off_27215B8;
      if ((v5 & 2) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
        if (v5)
        {
          if (*v6)
          {
LABEL_9:
            sub_194E188();
            operator delete();
          }
        }

        else if (v6)
        {
          goto LABEL_9;
        }
      }

      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7[1];
      if ((v8 & 1) != 0 && !*(v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v7 + 1);
        v8 = v7[1];
      }

      *v7 = off_27215B8;
      if ((v8 & 2) != 0)
      {
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          if (*v9)
          {
LABEL_16:
            sub_194E188();
            operator delete();
          }
        }

        else if (v9)
        {
          goto LABEL_16;
        }
      }

      operator delete();
    }
  }

  return result;
}

void sub_1217650(void *a1)
{
  sub_12173EC(a1);

  operator delete();
}

uint64_t sub_1217688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_16;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    *v2 = 0;
    *(v2 + 23) = 0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32);
    if ((*(v3 + 16) & 3) != 0)
    {
      *(v3 + 24) = 0;
    }

    v5 = *(v3 + 8);
    v4 = v3 + 8;
    *(v4 + 8) = 0;
    if (v5)
    {
      v6 = a1;
      sub_1957EA8(v4);
      a1 = v6;
    }
  }

LABEL_11:
  if ((v1 & 4) != 0)
  {
    v7 = *(a1 + 40);
    if ((*(v7 + 16) & 3) != 0)
    {
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
    }

    v9 = *(v7 + 8);
    v8 = v7 + 8;
    *(v8 + 8) = 0;
    if (v9)
    {
      v10 = a1;
      sub_1957EA8(v8);
      a1 = v10;
    }
  }

LABEL_16:
  if ((v1 & 0xF8) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0xF00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0x100000000;
  }

  v12 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12177C0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 84);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 84);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v4++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
    *v4 = 18;
    v12 = *(v11 + 20);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_1216B40(v11, v13, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v14 = *(a1 + 56);
      *v4 = 24;
      v4[1] = v14;
      if (v14 <= 0x7F)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = *(a1 + 56);
      *v4 = 24;
      v4[1] = v14;
      if (v14 <= 0x7F)
      {
LABEL_19:
        v4 += 2;
        goto LABEL_24;
      }
    }

    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v4 += 3;
    if (v14 >= 0x4000)
    {
      v16 = v14 >> 7;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v4++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

LABEL_24:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 48);
    *v4 = 33;
    *(v4 + 1) = v18;
    v4 += 9;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v19 = *(a1 + 60);
      *v4 = 40;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + 60);
      *v4 = 40;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
LABEL_31:
        v4 += 2;
        goto LABEL_36;
      }
    }

    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v4[2] = v19 >> 7;
    v4 += 3;
    if (v19 >= 0x4000)
    {
      v21 = v19 >> 7;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v20 = v21 >> 7;
        *v4++ = v21 >> 7;
        v22 = v21 >> 14;
        v21 >>= 7;
      }

      while (v22);
    }
  }

LABEL_36:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_44;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v23 = *(a1 + 64);
    *v4 = 48;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = *(a1 + 64);
    *v4 = 48;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
LABEL_39:
      v4 += 2;
      goto LABEL_44;
    }
  }

  v4[1] = v23 | 0x80;
  v24 = v23 >> 7;
  v4[2] = v23 >> 7;
  v4 += 3;
  if (v23 >= 0x4000)
  {
    v25 = v23 >> 7;
    do
    {
      *(v4 - 1) = v24 | 0x80;
      v24 = v25 >> 7;
      *v4++ = v25 >> 7;
      v26 = v25 >> 14;
      v25 >>= 7;
    }

    while (v26);
  }

LABEL_44:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v27 = *(a1 + 68);
    *v4 = 56;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v27 = *(a1 + 68);
    *v4 = 56;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
LABEL_47:
      v4 += 2;
      goto LABEL_52;
    }
  }

  v4[1] = v27 | 0x80;
  v28 = v27 >> 7;
  v4[2] = v27 >> 7;
  v4 += 3;
  if (v27 >= 0x4000)
  {
    v29 = v27 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v29 >> 7;
      *v4++ = v29 >> 7;
      v30 = v29 >> 14;
      v29 >>= 7;
    }

    while (v30);
  }

LABEL_52:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_60;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v31 = *(a1 + 72);
    *v4 = 64;
    v4[1] = v31;
    if (v31 <= 0x7F)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v31 = *(a1 + 72);
    *v4 = 64;
    v4[1] = v31;
    if (v31 <= 0x7F)
    {
LABEL_55:
      v4 += 2;
      goto LABEL_60;
    }
  }

  v4[1] = v31 | 0x80;
  v32 = v31 >> 7;
  v4[2] = v31 >> 7;
  v4 += 3;
  if (v31 >= 0x4000)
  {
    v33 = v31 >> 7;
    do
    {
      *(v4 - 1) = v32 | 0x80;
      v32 = v33 >> 7;
      *v4++ = v33 >> 7;
      v34 = v33 >> 14;
      v33 >>= 7;
    }

    while (v34);
  }

LABEL_60:
  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_62;
    }

LABEL_68:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 40);
    *v4 = 82;
    v37 = *(v36 + 20);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
      v4 = sub_1216F38(v36, v38, a3);
      if (v6)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v4 = sub_1216F38(v36, v4 + 2, a3);
      if (v6)
      {
        goto LABEL_74;
      }
    }

LABEL_63:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_81;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v35 = *(a1 + 76);
  *v4 = 72;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
    goto LABEL_68;
  }

LABEL_62:
  if ((v6 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_74:
  v39 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  if (v40 < 0 && (v40 = *(v39 + 8), v40 > 127) || *a3 - v4 + 14 < v40)
  {
    v4 = sub_19572D4(a3, 11, v39, v4);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
    *v4 = 90;
    v4[1] = v40;
    if (*(v39 + 23) >= 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *v39;
    }

    memcpy(v4 + 2, v41, v40);
    v4 += v40 + 2;
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_81:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v42 = *(a1 + 80);
    *v4 = 96;
    v4[1] = v42;
    if (v42 <= 0x7F)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v42 = *(a1 + 80);
    *v4 = 96;
    v4[1] = v42;
    if (v42 <= 0x7F)
    {
LABEL_83:
      v4 += 2;
      goto LABEL_90;
    }
  }

  v4[1] = v42 | 0x80;
  v43 = v42 >> 7;
  v4[2] = v42 >> 7;
  v4 += 3;
  if (v42 >= 0x4000)
  {
    v44 = v42 >> 7;
    do
    {
      *(v4 - 1) = v44 | 0x80;
      v44 = v43 >> 7;
      *v4++ = v43 >> 7;
      v45 = v43 >> 14;
      v43 >>= 7;
    }

    while (v45);
  }

LABEL_90:
  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v4;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  v51 = v49;
  if (*a3 - v4 < v49)
  {

    return sub_1957130(a3, v50, v49, v4);
  }

  else
  {
    memcpy(v4, v50, v49);
    return &v4[v51];
  }
}

uint64_t sub_1217E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v2 = 0;
    if ((v1 & 0xF00) == 0)
    {
      goto LABEL_53;
    }

LABEL_46:
    if ((v1 & 0x100) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1 + ((v1 >> 8) & 2);
      if ((v1 & 0x400) == 0)
      {
LABEL_48:
        if ((v1 & 0x800) == 0)
        {
          goto LABEL_53;
        }

LABEL_49:
        v16 = *(a1 + 84);
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v16 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 11;
        }

        v2 += v18;
        goto LABEL_53;
      }
    }

    else
    {
      v2 += (v1 >> 8) & 2;
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_48;
      }
    }

    v21 = *(a1 + 80);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 11;
    }

    v2 += v23;
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
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
LABEL_10:
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    if ((~v7 & 3) != 0)
    {
      v9 = 5;
      if ((v7 & 1) == 0)
      {
        v9 = 0;
      }

      if ((v7 & 2) != 0)
      {
        v8 = v9 + 5;
      }

      else
      {
        v8 = v9;
      }
    }

    else
    {
      v8 = 10;
    }

    v10 = *(v6 + 8);
    if (v10)
    {
      v27 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v28 < 0)
      {
        v28 = *(v27 + 16);
      }

      v8 += v28;
    }

    *(v6 + 20) = v8;
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    v15 = *(a1 + 56);
    if (v15 < 0)
    {
      v2 += 11;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_24:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  if ((v12 & 3) == 0)
  {
    v13 = 0;
    goto LABEL_35;
  }

  if (v12)
  {
    v13 = ((9 * (__clz(*(v11 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v12 & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = 0;
  if ((v12 & 2) != 0)
  {
LABEL_34:
    v13 += ((9 * (__clz(*(v11 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_35:
  v14 = *(v11 + 8);
  if (v14)
  {
    v29 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v30 < 0)
    {
      v30 = *(v29 + 16);
    }

    v13 += v30;
  }

  *(v11 + 20) = v13;
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_43:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_25:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_45:
    v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0xF00) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

LABEL_26:
  if ((v1 & 0xF00) != 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  v19 = *(a1 + 8);
  if (v19)
  {
    v24 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v26 = v25 + v2;
    *(a1 + 20) = v26;
    return v26;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_12181EC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      result = v3[1].__r_.__value_.__l.__size_;
      if (!result)
      {
        v8 = v3->__r_.__value_.__l.__size_;
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          v9 = *v9;
        }

        result = sub_1219600(v9);
        v3[1].__r_.__value_.__l.__size_ = result;
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = &off_2734B00;
      }

      v11 = *(v10 + 4);
      if ((v11 & 3) != 0)
      {
        if (v11)
        {
          LODWORD(result[1].__r_.__value_.__l.__data_) = *(v10 + 6);
        }

        if ((v11 & 2) != 0)
        {
          HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(v10 + 7);
        }

        LODWORD(result->__r_.__value_.__r.__words[2]) |= v11;
      }

      v12 = v10[1];
      if (v12)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 4) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      result = v3[1].__r_.__value_.__r.__words[2];
      if (!result)
      {
        v13 = v3->__r_.__value_.__l.__size_;
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        result = sub_1219678(v14);
        v3[1].__r_.__value_.__r.__words[2] = result;
      }

      v15 = *(a2 + 40);
      if (!v15)
      {
        v15 = &off_2734B20;
      }

      v16 = *(v15 + 4);
      if ((v16 & 3) != 0)
      {
        if (v16)
        {
          result[1].__r_.__value_.__r.__words[0] = v15[3];
        }

        if ((v16 & 2) != 0)
        {
          result[1].__r_.__value_.__l.__size_ = v15[4];
        }

        LODWORD(result->__r_.__value_.__r.__words[2]) |= v16;
      }

      v17 = v15[1];
      if (v17)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 8) != 0)
    {
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      if ((v4 & 0x10) == 0)
      {
LABEL_38:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_56;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_39:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    }

LABEL_56:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_40:
      if ((v4 & 0x80) == 0)
      {
LABEL_42:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_43;
      }

LABEL_41:
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
      goto LABEL_42;
    }

LABEL_57:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_43:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v4 & 0x100) != 0)
  {
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_46:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  v3[3].__r_.__value_.__s.__data_[4] = *(a2 + 76);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_61;
  }

LABEL_47:
  if ((v4 & 0x800) != 0)
  {
LABEL_48:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  }

LABEL_49:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_50:
  v18 = *(a2 + 8);
  if (v18)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_121845C(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1217688(result);

    return sub_12181EC(v4, a2);
  }

  return result;
}

__n128 sub_12184D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  LODWORD(v8) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v8;
  LODWORD(v8) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v8;
  return result;
}

void *sub_12185BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_121865C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_121871C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1218734(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v5;
      v4 = *(v5 + 24);
      *v3 = 8;
      v3[1] = v4;
      if (v4 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v4;
      if (v4 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v4 | 0x80;
    v8 = v4 >> 7;
    v3[2] = v4 >> 7;
    v3 += 3;
    if (v4 >= 0x4000)
    {
      v9 = v4 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v3;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  v16 = v14;
  if (*a3 - v3 < v14)
  {

    return sub_1957130(a3, v15, v14, v3);
  }

  else
  {
    memcpy(v3, v15, v14);
    return &v3[v16];
  }
}

uint64_t sub_121887C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_6:
    *(a1 + 20) = v1;
    return v1;
  }

  v3 = *(a1 + 24);
  if (v3 < 0)
  {
    v1 = 11;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v1;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_12188F8(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_121899C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v4 = (v2 + 2);
    v5 = *v2;
    if (v5 >= 1)
    {
      do
      {
        if (*v4)
        {
          sub_12173EC(*v4);
          operator delete();
        }

        ++v4;
        --v5;
      }

      while (v5);
      v2 = a1[2];
    }

    operator delete(v2);
    a1[2] = 0;
    return a1;
  }

  else
  {
    a1[2] = 0;
    return a1;
  }
}

void *sub_1218A44(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26781C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_1218A88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26781C0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1219AC4((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

void sub_1218C6C(_Unwind_Exception *a1)
{
  sub_121899C(v1 + 3);
  sub_11EE1AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1218C8C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2734BC0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = v6[1];
      if (v7)
      {
        v15 = v6 + 1;
        if (!*(v7 & 0xFFFFFFFFFFFFFFFCLL))
        {
          sub_11F19CC(v15);
          v7 = *v15;
        }
      }

      *v6 = off_27215B8;
      if ((v7 & 2) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
          if (v8)
          {
LABEL_11:
            sub_194E188(v8);
            operator delete();
          }
        }

        else if (v8)
        {
          goto LABEL_11;
        }
      }

      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  v9 = *(a1 + 40);
  if (v9 && !*(a1 + 24))
  {
    v12 = (v9 + 2);
    v13 = *v9;
    if (v13 >= 1)
    {
      do
      {
        if (*v12)
        {
          sub_12173EC(*v12);
          operator delete();
        }

        ++v12;
        --v13;
      }

      while (v13);
      v9 = *(a1 + 40);
    }

    operator delete(v9);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v10 = *(a1 + 8);
    if ((v10 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v10 = *(a1 + 8);
    if ((v10 & 2) == 0)
    {
      return a1;
    }
  }

  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
    if (v11)
    {
LABEL_20:
      sub_194E188(v11);
      operator delete();
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  return a1;
}

void sub_1218EC0(uint64_t a1)
{
  sub_1218C8C(a1);

  operator delete();
}

uint64_t sub_1218EF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1217688(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v7 = *(v1 + 56);
    v8 = *(v7 + 8);
    result = v7 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v8)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_13:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_1218FD0(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    result = a2;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 40) + 8 * v6 + 8);
      *result = 10;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_12177C0(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    if (v14 < 0 && (v14 = *(v13 + 8), v14 > 127) || *a3 - result + 14 < v14)
    {
      result = sub_19572D4(a3, 2, v13, result);
      if ((v11 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *result = 18;
      v15 = result + 2;
      result[1] = v14;
      if (*(v13 + 23) >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      memcpy(result + 2, v16, v14);
      result = &v15[v14];
      if ((v11 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_12:
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v17 = *(a1 + 56);
  *result = 26;
  v18 = *(v17 + 20);
  result[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, result + 1);
    result = sub_1218734(v17, v19, a3);
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_1218734(v17, result + 2, a3);
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

LABEL_27:
  v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  v23 = v21;
  if (*a3 - result < v21)
  {

    return sub_1957130(a3, v22, v21, result);
  }

  else
  {
    v24 = result;
    memcpy(result, v22, v21);
    return &v24[v23];
  }
}

uint64_t sub_1219210(uint64_t a1)
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
      v7 = sub_1217E70(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
    v8 = *(a1 + 16);
    if ((v8 & 3) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v2 = 0;
    v8 = *(a1 + 16);
    if ((v8 & 3) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v8)
  {
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 2) != 0)
  {
    v12 = *(a1 + 56);
    if (*(v12 + 16))
    {
      v15 = *(v12 + 24);
      if (v15 < 0)
      {
        v13 = 11;
        v14 = *(v12 + 8);
        if (v14)
        {
LABEL_28:
          v21 = v14 & 0xFFFFFFFFFFFFFFFCLL;
          v22 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
          if (v22 < 0)
          {
            v22 = *(v21 + 16);
          }

          v13 += v22;
        }
      }

      else
      {
        v13 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
        v14 = *(v12 + 8);
        if (v14)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = *(v12 + 8);
      if (v14)
      {
        goto LABEL_28;
      }
    }

    *(v12 + 20) = v13;
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v20 = v19 + v2;
    *(a1 + 20) = v20;
    return v20;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

void sub_12193C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1219AC4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_121978C(v15);
        *(a1 + 56) = v13;
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = &off_2734BA0;
      }

      if (v16[2])
      {
        v17 = *(v16 + 6);
        *(v13 + 16) |= 1u;
        *(v13 + 24) = v17;
      }

      v18 = v16[1];
      if (v18)
      {
        sub_1957EF4((v13 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_121953C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 40) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_1219600(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2677FC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1219678(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2678040;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12196F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26780C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0x100000000;
  return result;
}

uint64_t sub_121978C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2678140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1219808(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26781C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

void sub_1219AC4(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_12196F4(v9);
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
      sub_1219B40(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1219B80(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *a1 = a2;
  *(a1 + 136) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v2 = (a2[1] - *a2) >> 3;
  if (v2 >= 2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not triangulation");
}

void sub_121A930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  if (__p)
  {
    operator delete(__p);
    v26 = v24[23];
    if (!v26)
    {
LABEL_3:
      v27 = *a12;
      if (!*a12)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v26 = v24[23];
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  v24[24] = v26;
  operator delete(v26);
  v27 = *a12;
  if (!*a12)
  {
LABEL_4:
    v28 = *a14;
    if (!*a14)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24[18] = v27;
  operator delete(v27);
  v28 = *a14;
  if (!*a14)
  {
LABEL_5:
    v29 = v24[10];
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v24[14] = v28;
  operator delete(v28);
  v29 = v24[10];
  if (!v29)
  {
LABEL_6:
    v30 = *a13;
    if (!*a13)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v24[11] = v29;
  operator delete(v29);
  v30 = *a13;
  if (!*a13)
  {
LABEL_7:
    v31 = v24[4];
    if (!v31)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v24[8] = v30;
  operator delete(v30);
  v31 = v24[4];
  if (!v31)
  {
LABEL_8:
    v32 = *a24;
    if (!*a24)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v24[5] = v31;
  operator delete(v31);
  v32 = *a24;
  if (!*a24)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v24[2] = v32;
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

unint64_t sub_121AA54(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v28 = (a1 + 184);
  *(a1 + 192) = *(a1 + 184);
  while (1)
  {
    v5 = 3 * (a2 / 3);
    v6 = v5 + (a2 + 2) % 3;
    v7 = *(a1 + 32);
    v8 = *(v7 + 8 * a2);
    if (v8 != -1)
    {
      while (1)
      {
        v9 = 3 * (v8 / 3);
        v10 = v9 + (v8 + 2) % 3;
        v11 = *(a1 + 8);
        v12 = *(v11 + 8 * v6);
        v13 = *(v11 + 8 * v10);
        v14 = **a1;
        v15 = *(v14 + 16 * v13);
        v16 = vsubq_f64(*(v14 + 16 * v12), v15);
        v17 = vsubq_f64(*(v14 + 16 * *(v11 + 8 * a2)), v15);
        v18 = vsubq_f64(*(v14 + 16 * *(v11 + 24 * (a2 / 3) + 8 * ((a2 + 1) % 3))), v15);
        v19 = vextq_s8(v18, v18, 8uLL);
        v20 = vaddvq_f64(vmulq_f64(v16, v16));
        v21 = vmulq_n_f64(v17, vmuld_n_f64(v18.f64[0], v18.f64[0]) + COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]));
        v22 = vmulq_f64(v16, vsubq_f64(vextq_s8(v21, v21, 8uLL), vmulq_n_f64(v19, vmulq_f64(v17, v17).f64[0] + vmuld_lane_f64(v17.f64[1], v17, 1))));
        if (v20 * (vmulq_f64(v17, v19).f64[0] - vmuld_lane_f64(v18.f64[0], v17, 1)) + vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0] >= 0.0)
        {
          break;
        }

        *(v11 + 8 * a2) = v13;
        *(v11 + 8 * v8) = v12;
        v23 = *(v7 + 8 * v10);
        if (v23 == -1)
        {
          v24 = *(a1 + 104);
          v25 = *(a1 + 128);
          while (*(v24 + 8 * v25) != v10)
          {
            v25 = *(*(a1 + 56) + 8 * v25);
            if (v25 == *(a1 + 128))
            {
              goto LABEL_12;
            }
          }

          *(v24 + 8 * v25) = a2;
LABEL_12:
          v23 = -1;
        }

        sub_121ACC4(a1, a2, v23);
        sub_121ACC4(a1, v8, *(*(a1 + 32) + 8 * v6));
        sub_121ACC4(a1, v5 + (a2 + 2) % 3, v9 + (v8 + 2) % 3);
        v29 = v9 + (v8 + 1) % 3;
        v26 = *(a1 + 184);
        if (v4 < (*(a1 + 192) - v26) >> 3)
        {
          *(v26 + 8 * v4++) = v9 + (v8 + 1) % 3;
          v7 = *(a1 + 32);
          v8 = *(v7 + 8 * a2);
          if (v8 == -1)
          {
            break;
          }
        }

        else
        {
          sub_2512DC(v28, &v29);
          ++v4;
          v7 = *(a1 + 32);
          v8 = *(v7 + 8 * a2);
          if (v8 == -1)
          {
            break;
          }
        }
      }
    }

    if (!v4)
    {
      return v5 + (a2 + 2) % 3;
    }

    --v4;
    a2 = *(*v28 + 8 * v4);
  }
}

void sub_121ACC4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = a3;
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = a1 + 32;
  v7 = (*(a1 + 40) - v5) >> 3;
  if (v7 == a2)
  {
    sub_2512DC(a1 + 32, &v11);
    a3 = v11;
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot link edge");
    goto LABEL_12;
  }

  *(v5 + 8 * a2) = a3;
  if (a3 != -1)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = (*(a1 + 40) - v8) >> 3;
    if (a3 == v9)
    {
      sub_2512DC(v6, &v12);
      return;
    }

    if (a3 < v9)
    {
      *(v8 + 8 * a3) = a2;
      return;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot link edge");
LABEL_12:
  }
}

void sub_121AE08(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5)
{
LABEL_1:
  v9 = a2 - 1;
  v48 = a2 - 3;
  v49 = a2 - 2;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v37 = *(a2 - 1);
        v38 = *v10;
        v39 = **a3;
        v40 = (v39 + 16 * v37);
        v41 = v40[1];
        v42 = a3[1];
        v43 = (v39 + 16 * *v10);
        v44 = v43[1];
        v45 = (*v40 - v42) * (*v40 - v42) + (v41 - a3[2]) * (v41 - a3[2]) - ((*v43 - v42) * (*v43 - v42) + (v44 - a3[2]) * (v44 - a3[2]));
        v46 = v45 < 0.0;
        if (v45 == 0.0 && (v47 = *v40 - *v43, v46 = v47 < 0.0, v47 == 0.0))
        {
          if (v41 >= v44)
          {
            return;
          }
        }

        else if (!v46)
        {
          return;
        }

        *v10 = v37;
        *(a2 - 1) = v38;
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_121B4F4(v10, v10 + 1, v10 + 2, v9, a3);
      return;
    }

    if (v13 == 5)
    {

      sub_121B6CC(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_121B924(v10, a2, a3);
      }

      else
      {

        sub_121BA74(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_121C380(v10, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_121B2AC(&v10[v13 >> 1], v10, v9, a3);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_121B2AC(v10, &v10[v13 >> 1], v9, a3);
      v16 = v10 + 1;
      v50 = v12;
      v17 = a2;
      v18 = a5;
      v19 = v9;
      v20 = &a1[v14];
      sub_121B2AC(a1 + 1, v20 - 1, v49, a3);
      sub_121B2AC(a1 + 2, &v16[v14], v48, a3);
      sub_121B2AC(v20 - 1, v15, &v16[v14], a3);
      v21 = *a1;
      *a1 = *v20;
      *v20 = v21;
      v9 = v19;
      a5 = v18;
      a2 = v17;
      v12 = v50;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v22 = **a3;
    v23 = (v22 + 16 * *(a1 - 1));
    v25 = *v23;
    v24 = v23[1];
    v26 = a3[1];
    v27 = a3[2];
    v28 = (*v23 - v26) * (*v23 - v26) + (v24 - v27) * (v24 - v27);
    v29 = (v22 + 16 * *a1);
    v30 = v29[1];
    v31 = v28 - ((*v29 - v26) * (*v29 - v26) + (v30 - v27) * (v30 - v27));
    v32 = v31 < 0.0;
    if (v31 == 0.0 && (v36 = v25 - *v29, v32 = v36 < 0.0, v36 == 0.0))
    {
      if (v24 >= v30)
      {
LABEL_25:
        v10 = sub_121BB8C(a1, a2, a3);
LABEL_27:
        a5 = 0;
        a4 = -v12;
        goto LABEL_2;
      }
    }

    else if (!v32)
    {
      goto LABEL_25;
    }

LABEL_19:
    v33 = sub_121BE28(a1, a2, a3);
    if ((v34 & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = sub_121C07C(a1, v33, a3);
    v10 = v33 + 1;
    if (sub_121C07C(v33 + 1, a2, a3))
    {
      a4 = -v12;
      a2 = v33;
      if (v35)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v35)
    {
LABEL_26:
      sub_121AE08(a1, v33, a3, -v12, a5 & 1);
      v10 = v33 + 1;
      goto LABEL_27;
    }
  }

  sub_121B2AC(v10, v10 + 1, v9, a3);
}

uint64_t sub_121B2AC(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = (v6 + 16 * *a2);
  v9 = *v7;
  v8 = v7[1];
  v11 = a4[1];
  v10 = a4[2];
  v12 = (*v7 - v11) * (*v7 - v11) + (v8 - v10) * (v8 - v10);
  v13 = (v6 + 16 * *a1);
  v15 = *v13;
  v14 = v13[1];
  v16 = (*v13 - v11) * (*v13 - v11) + (v14 - v10) * (v14 - v10);
  if (v12 - v16 == 0.0)
  {
    if (v9 - v15 == 0.0)
    {
      if (v8 < v14)
      {
        goto LABEL_3;
      }
    }

    else if (v9 - v15 < 0.0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v22 = (v6 + 16 * *a3);
    v23 = v22[1];
    v24 = (*v22 - v11) * (*v22 - v11) + (v23 - v10) * (v23 - v10) - v12;
    if (v24 == 0.0)
    {
      v34 = *v22 - v9;
      if (v34 == 0.0)
      {
        if (v23 < v8)
        {
          goto LABEL_11;
        }
      }

      else if (v34 < 0.0)
      {
        goto LABEL_11;
      }
    }

    else if (v24 < 0.0)
    {
LABEL_11:
      *a2 = *a3;
      *a3 = v4;
      v25 = *a1;
      v26 = (v6 + 16 * *a2);
      v28 = *v26;
      v27 = v26[1];
      v29 = (v6 + 16 * *a1);
      v31 = *v29;
      v30 = v29[1];
      v32 = (*v26 - v11) * (*v26 - v11) + (v27 - v10) * (v27 - v10) - ((*v29 - v11) * (*v29 - v11) + (v30 - v10) * (v30 - v10));
      if (v32 == 0.0 && (v32 = v28 - v31, v28 - v31 == 0.0))
      {
        if (v27 >= v30)
        {
          return 1;
        }
      }

      else if (v32 >= 0.0)
      {
        return 1;
      }

      *a1 = *a2;
      *a2 = v25;
      return 1;
    }

    return 0;
  }

  if (v12 - v16 >= 0.0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = (v6 + 16 * *a3);
  v18 = v17[1];
  v19 = (*v17 - v11) * (*v17 - v11) + (v18 - v10) * (v18 - v10) - v12;
  v20 = v19 < 0.0;
  if (v19 != 0.0 || (v33 = *v17 - v9, v20 = v33 < 0.0, v33 != 0.0))
  {
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_6:
    *a1 = *a3;
    *a3 = v5;
    return 1;
  }

  if (v18 < v8)
  {
    goto LABEL_6;
  }

LABEL_24:
  *a1 = v4;
  *a2 = v5;
  v35 = (v6 + 16 * *a3);
  v37 = *v35;
  v36 = v35[1];
  v38 = (*v35 - v11) * (*v35 - v11) + (v36 - v10) * (v36 - v10) - v16;
  if (v38 == 0.0 && (v38 = v37 - v15, v37 - v15 == 0.0))
  {
    if (v36 < v14)
    {
      goto LABEL_26;
    }
  }

  else if (v38 < 0.0)
  {
LABEL_26:
    *a2 = *a3;
    *a3 = v5;
    return 1;
  }

  return 1;
}

double sub_121B4F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double *a5)
{
  sub_121B2AC(a1, a2, a3, a5);
  v10 = *a3;
  v11 = **a5;
  v12 = (v11 + 16 * *a4);
  v14 = *v12;
  v13 = v12[1];
  result = a5[1];
  v16 = a5[2];
  v17 = (*v12 - result) * (*v12 - result) + (v13 - v16) * (v13 - v16);
  v18 = (v11 + 16 * *a3);
  v19 = v18[1];
  v20 = v17 - ((*v18 - result) * (*v18 - result) + (v19 - v16) * (v19 - v16));
  v21 = v20 < 0.0;
  if (v20 == 0.0 && (v39 = v14 - *v18, v21 = v39 < 0.0, v39 == 0.0))
  {
    if (v13 >= v19)
    {
      return result;
    }
  }

  else if (!v21)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v10;
  v22 = *a2;
  v23 = (v11 + 16 * *a3);
  v25 = *v23;
  v24 = v23[1];
  v26 = (*v23 - result) * (*v23 - result) + (v24 - v16) * (v24 - v16);
  v27 = (v11 + 16 * *a2);
  v28 = v27[1];
  v29 = v26 - ((*v27 - result) * (*v27 - result) + (v28 - v16) * (v28 - v16));
  v30 = v29 < 0.0;
  if (v29 == 0.0 && (v40 = v25 - *v27, v30 = v40 < 0.0, v40 == 0.0))
  {
    if (v24 >= v28)
    {
      return result;
    }
  }

  else if (!v30)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v22;
  v31 = *a1;
  v32 = (v11 + 16 * *a2);
  v34 = *v32;
  v33 = v32[1];
  v35 = (v11 + 16 * *a1);
  v37 = *v35;
  v36 = v35[1];
  result = (*v32 - result) * (*v32 - result) + (v33 - v16) * (v33 - v16) - ((*v35 - result) * (*v35 - result) + (v36 - v16) * (v36 - v16));
  v38 = result < 0.0;
  if (result == 0.0)
  {
    result = v34 - v37;
    v38 = v34 - v37 < 0.0;
    if (v34 - v37 == 0.0)
    {
      if (v33 >= v36)
      {
        return result;
      }

LABEL_10:
      *a1 = *a2;
      *a2 = v31;
      return result;
    }
  }

  if (v38)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_121B6CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  sub_121B4F4(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = **a6;
  v14 = (v13 + 16 * *a5);
  v16 = *v14;
  v15 = v14[1];
  result = a6[1];
  v18 = a6[2];
  v19 = (*v14 - result) * (*v14 - result) + (v15 - v18) * (v15 - v18);
  v20 = (v13 + 16 * *a4);
  v21 = v20[1];
  v22 = v19 - ((*v20 - result) * (*v20 - result) + (v21 - v18) * (v21 - v18));
  v23 = v22 < 0.0;
  if (v22 == 0.0 && (v50 = v16 - *v20, v23 = v50 < 0.0, v50 == 0.0))
  {
    if (v15 >= v21)
    {
      return result;
    }
  }

  else if (!v23)
  {
    return result;
  }

  *a4 = *a5;
  *a5 = v12;
  v24 = *a3;
  v25 = (v13 + 16 * *a4);
  v27 = *v25;
  v26 = v25[1];
  v28 = (*v25 - result) * (*v25 - result) + (v26 - v18) * (v26 - v18);
  v29 = (v13 + 16 * *a3);
  v30 = v29[1];
  v31 = v28 - ((*v29 - result) * (*v29 - result) + (v30 - v18) * (v30 - v18));
  v32 = v31 < 0.0;
  if (v31 == 0.0 && (v51 = v27 - *v29, v32 = v51 < 0.0, v51 == 0.0))
  {
    if (v26 >= v30)
    {
      return result;
    }
  }

  else if (!v32)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v24;
  v33 = *a2;
  v34 = (v13 + 16 * *a3);
  v36 = *v34;
  v35 = v34[1];
  v37 = (*v34 - result) * (*v34 - result) + (v35 - v18) * (v35 - v18);
  v38 = (v13 + 16 * *a2);
  v39 = v38[1];
  v40 = v37 - ((*v38 - result) * (*v38 - result) + (v39 - v18) * (v39 - v18));
  v41 = v40 < 0.0;
  if (v40 == 0.0 && (v52 = v36 - *v38, v41 = v52 < 0.0, v52 == 0.0))
  {
    if (v35 >= v39)
    {
      return result;
    }
  }

  else if (!v41)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v33;
  v42 = *a1;
  v43 = (v13 + 16 * *a2);
  v45 = *v43;
  v44 = v43[1];
  v46 = (v13 + 16 * *a1);
  v48 = *v46;
  v47 = v46[1];
  result = (*v43 - result) * (*v43 - result) + (v44 - v18) * (v44 - v18) - ((*v46 - result) * (*v46 - result) + (v47 - v18) * (v47 - v18));
  v49 = result < 0.0;
  if (result == 0.0)
  {
    result = v45 - v48;
    v49 = v45 - v48 < 0.0;
    if (v45 - v48 == 0.0)
    {
      if (v44 >= v47)
      {
        return result;
      }

LABEL_13:
      *a1 = *a2;
      *a2 = v42;
      return result;
    }
  }

  if (v49)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_121B924(void *result, void *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = a3[1];
      v7 = a3[2];
      v8 = result;
      while (1)
      {
        v9 = v8;
        v8 = v3;
        v10 = v9[1];
        v11 = (v5 + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*v11 - v6) * (*v11 - v6) + (v13 - v7) * (v13 - v7);
        v15 = (v5 + 16 * *v9);
        v16 = v15[1];
        v17 = v14 - ((*v15 - v6) * (*v15 - v6) + (v16 - v7) * (v16 - v7));
        v18 = v17 < 0.0;
        if (v17 == 0.0 && (v26 = v12 - *v15, v18 = v26 < 0.0, v26 == 0.0))
        {
          if (v13 >= v16)
          {
            goto LABEL_5;
          }
        }

        else if (!v18)
        {
          goto LABEL_5;
        }

        v9[1] = *v9;
        v19 = result;
        if (v9 == result)
        {
          goto LABEL_4;
        }

        v20 = v4;
        while (1)
        {
          v21 = *(result + v20 - 8);
          v22 = (v5 + 16 * v21);
          v23 = v22[1];
          v24 = v14 - ((*v22 - v6) * (*v22 - v6) + (v23 - v7) * (v23 - v7));
          if (v24 == 0.0)
          {
            break;
          }

          if (v24 >= 0.0)
          {
            goto LABEL_23;
          }

LABEL_13:
          --v9;
          *(result + v20) = v21;
          v20 -= 8;
          if (!v20)
          {
            v19 = result;
            goto LABEL_4;
          }
        }

        v25 = v12 - *v22;
        if (v25 == 0.0)
        {
          break;
        }

        if (v25 < 0.0)
        {
          goto LABEL_13;
        }

LABEL_23:
        v19 = v9;
LABEL_4:
        *v19 = v10;
LABEL_5:
        v3 = v8 + 1;
        v4 += 8;
        if (v8 + 1 == a2)
        {
          return result;
        }
      }

      if (v13 >= v23)
      {
        v19 = (result + v20);
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  return result;
}

void *sub_121BA74(void *result, void *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = a3[1];
      v6 = a3[2];
      do
      {
        v7 = result;
        result = v3;
        v9 = *v7;
        v8 = v7[1];
        v10 = (v4 + 16 * v8);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*v10 - v5) * (*v10 - v5) + (v12 - v6) * (v12 - v6);
        v14 = (v4 + 16 * *v7);
        v15 = v14[1];
        v16 = v13 - ((*v14 - v5) * (*v14 - v5) + (v15 - v6) * (v15 - v6));
        v17 = v16 < 0.0;
        if (v16 == 0.0 && (v24 = v11 - *v14, v17 = v24 < 0.0, v24 == 0.0))
        {
          if (v12 < v15)
          {
            do
            {
              while (1)
              {
LABEL_9:
                while (1)
                {
                  v18 = v7;
                  v19 = *--v7;
                  v7[2] = v9;
                  v9 = v19;
                  v20 = (v4 + 16 * v19);
                  v21 = v20[1];
                  v22 = v13 - ((*v20 - v5) * (*v20 - v5) + (v21 - v6) * (v21 - v6));
                  if (v22 == 0.0)
                  {
                    break;
                  }

                  if (v22 >= 0.0)
                  {
                    goto LABEL_4;
                  }
                }

                v23 = v11 - *v20;
                if (v23 == 0.0)
                {
                  break;
                }

                if (v23 >= 0.0)
                {
                  goto LABEL_4;
                }
              }
            }

            while (v12 < v21);
LABEL_4:
            *v18 = v8;
          }
        }

        else if (v17)
        {
          goto LABEL_9;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_121BB8C(uint64_t *a1, uint64_t *a2, double *a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = (v5 + 16 * *a1);
  v7 = *v6;
  v8 = v6[1];
  v9 = a3[1];
  v10 = a3[2];
  v11 = (*v6 - v9) * (*v6 - v9) + (v8 - v10) * (v8 - v10);
  v12 = (v5 + 16 * v4);
  v13 = v12[1];
  v14 = v11 - ((*v12 - v9) * (*v12 - v9) + (v13 - v10) * (v13 - v10));
  if (v14 == 0.0)
  {
    v21 = v7 - *v12;
    if (v21 == 0.0)
    {
      if (v8 < v13)
      {
        goto LABEL_3;
      }
    }

    else if (v21 < 0.0)
    {
      goto LABEL_3;
    }
  }

  else if (v14 < 0.0)
  {
LABEL_3:
    for (i = a1 + 1; ; ++i)
    {
      v16 = (v5 + 16 * *i);
      v17 = v16[1];
      v18 = v11 - ((*v16 - v9) * (*v16 - v9) + (v17 - v10) * (v17 - v10));
      v19 = v18 < 0.0;
      if (v18 == 0.0 && (v20 = v7 - *v16, v19 = v20 < 0.0, v20 == 0.0))
      {
        if (v8 < v17)
        {
          goto LABEL_20;
        }
      }

      else if (v19)
      {
        goto LABEL_20;
      }
    }
  }

  for (i = a1 + 1; i < a2; ++i)
  {
    v24 = (v5 + 16 * *i);
    v25 = v24[1];
    v26 = v11 - ((*v24 - v9) * (*v24 - v9) + (v25 - v10) * (v25 - v10));
    v23 = v26 < 0.0;
    if (v26 == 0.0 && (v22 = v7 - *v24, v23 = v22 < 0.0, v22 == 0.0))
    {
      if (v8 < v25)
      {
        break;
      }
    }

    else if (v23)
    {
      break;
    }
  }

LABEL_20:
  if (i < a2)
  {
    for (--a2; ; --a2)
    {
      v27 = (v5 + 16 * v4);
      v28 = v27[1];
      v29 = v11 - ((*v27 - v9) * (*v27 - v9) + (v28 - v10) * (v28 - v10));
      v30 = v29 < 0.0;
      if (v29 == 0.0 && (v32 = v7 - *v27, v30 = v32 < 0.0, v32 == 0.0))
      {
        if (v8 >= v28)
        {
          break;
        }
      }

      else if (!v30)
      {
        break;
      }

      v31 = *(a2 - 1);
      v4 = v31;
    }
  }

  if (i < a2)
  {
    v33 = *i;
    v34 = *a2;
    do
    {
      *i++ = v34;
      *a2 = v33;
      while (1)
      {
        v33 = *i;
        v37 = (v5 + 16 * *i);
        v38 = v37[1];
        v39 = v11 - ((*v37 - v9) * (*v37 - v9) + (v38 - v10) * (v38 - v10));
        v36 = v39 < 0.0;
        if (v39 == 0.0)
        {
          v35 = v7 - *v37;
          v36 = v35 < 0.0;
          if (v35 == 0.0)
          {
            break;
          }
        }

        if (v36)
        {
          goto LABEL_38;
        }

LABEL_34:
        ++i;
      }

      if (v8 >= v38)
      {
        goto LABEL_34;
      }

      do
      {
        while (1)
        {
LABEL_38:
          while (1)
          {
            v40 = *--a2;
            v34 = v40;
            v41 = (v5 + 16 * v40);
            v42 = v41[1];
            v43 = v11 - ((*v41 - v9) * (*v41 - v9) + (v42 - v10) * (v42 - v10));
            if (v43 == 0.0)
            {
              break;
            }

            if (v43 >= 0.0)
            {
              goto LABEL_30;
            }
          }

          v44 = v7 - *v41;
          if (v44 == 0.0)
          {
            break;
          }

          if (v44 >= 0.0)
          {
            goto LABEL_30;
          }
        }
      }

      while (v8 < v42);
LABEL_30:
      ;
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v3;
  return i;
}

uint64_t *sub_121BE28(uint64_t *a1, uint64_t *a2, double *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = **a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = (v5 + 16 * *a1);
  v9 = *v8;
  v10 = v8[1];
  v11 = (*v8 - v6) * (*v8 - v6) + (v10 - v7) * (v10 - v7);
  while (1)
  {
    v12 = a1[v3 + 1];
    v13 = (v5 + 16 * v12);
    v14 = v13[1];
    v15 = (*v13 - v6) * (*v13 - v6) + (v14 - v7) * (v14 - v7) - v11;
    v16 = v15 < 0.0;
    if (v15 == 0.0)
    {
      v17 = *v13 - v9;
      v16 = v17 < 0.0;
      if (v17 == 0.0)
      {
        break;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

LABEL_5:
    ++v3;
  }

  if (v14 < v10)
  {
    goto LABEL_5;
  }

LABEL_8:
  v18 = &a1[v3];
  v19 = &a1[v3 + 1];
  if (v3 * 8)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v27 = *--a2;
          v28 = (v5 + 16 * v27);
          v29 = v28[1];
          v30 = (*v28 - v6) * (*v28 - v6) + (v29 - v7) * (v29 - v7) - v11;
          if (v30 == 0.0)
          {
            break;
          }

          if (v30 < 0.0)
          {
            goto LABEL_25;
          }
        }

        v31 = *v28 - v9;
        if (v31 == 0.0)
        {
          break;
        }

        if (v31 < 0.0)
        {
          goto LABEL_25;
        }
      }
    }

    while (v29 >= v10);
  }

  else if (v19 < a2)
  {
    do
    {
      v20 = *--a2;
      v21 = (v5 + 16 * v20);
      v22 = v21[1];
      v23 = (*v21 - v6) * (*v21 - v6) + (v22 - v7) * (v22 - v7) - v11;
      v24 = v23 < 0.0;
      if (v23 == 0.0)
      {
        v26 = *v21 - v9;
        v24 = v26 < 0.0;
        if (v26 == 0.0)
        {
          v24 = v22 < v10;
        }
      }
    }

    while (!v24 && v19 < a2);
  }

LABEL_25:
  if (v19 >= a2)
  {
    goto LABEL_45;
  }

  v32 = *a2;
  v33 = v19;
  v34 = a2;
  while (2)
  {
    *v33++ = v32;
    *v34 = v12;
    while (2)
    {
      v12 = *v33;
      v37 = (v5 + 16 * *v33);
      v38 = v37[1];
      v39 = (*v37 - v6) * (*v37 - v6) + (v38 - v7) * (v38 - v7) - v11;
      v36 = v39 < 0.0;
      if (v39 == 0.0)
      {
        v35 = *v37 - v9;
        v36 = v35 < 0.0;
        if (v35 == 0.0)
        {
          if (v38 >= v10)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if (v36)
      {
LABEL_32:
        ++v33;
        continue;
      }

      break;
    }

    do
    {
      while (1)
      {
LABEL_36:
        while (1)
        {
          v40 = *--v34;
          v32 = v40;
          v41 = (v5 + 16 * v40);
          v42 = v41[1];
          v43 = (*v41 - v6) * (*v41 - v6) + (v42 - v7) * (v42 - v7) - v11;
          if (v43 == 0.0)
          {
            break;
          }

          if (v43 < 0.0)
          {
            goto LABEL_27;
          }
        }

        v44 = *v41 - v9;
        if (v44 == 0.0)
        {
          break;
        }

        if (v44 < 0.0)
        {
          goto LABEL_27;
        }
      }
    }

    while (v42 >= v10);
LABEL_27:
    if (v33 < v34)
    {
      continue;
    }

    break;
  }

  v18 = v33 - 1;
LABEL_45:
  if (v18 != a1)
  {
    *a1 = *v18;
  }

  *v18 = v4;
  return v18;
}

BOOL sub_121C07C(uint64_t *a1, uint64_t *a2, double *a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_121B2AC(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_121B4F4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_121B6CC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = **a3;
      v9 = (v8 + 16 * v6);
      v10 = v9[1];
      v11 = a3[1];
      v12 = (v8 + 16 * *a1);
      v13 = v12[1];
      v14 = (*v9 - v11) * (*v9 - v11) + (v10 - a3[2]) * (v10 - a3[2]) - ((*v12 - v11) * (*v12 - v11) + (v13 - a3[2]) * (v13 - a3[2]));
      if (v14 == 0.0)
      {
        v41 = *v9 - *v12;
        if (v41 == 0.0)
        {
          if (v10 >= v13)
          {
            return 1;
          }
        }

        else if (v41 >= 0.0)
        {
          return 1;
        }
      }

      else if (v14 >= 0.0)
      {
        return 1;
      }

      *a1 = v6;
      *(a2 - 1) = v7;
      return 1;
    }
  }

  v15 = a1 + 2;
  sub_121B2AC(a1, a1 + 1, a1 + 2, a3);
  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = **a3;
  v22 = a3[1];
  v23 = a3[2];
  while (1)
  {
    v24 = *v18;
    v25 = (v21 + 16 * *v18);
    v26 = *v25;
    v27 = v25[1];
    v28 = (*v25 - v22) * (*v25 - v22) + (v27 - v23) * (v27 - v23);
    v29 = (v21 + 16 * *v15);
    v30 = v29[1];
    v31 = v28 - ((*v29 - v22) * (*v29 - v22) + (v30 - v23) * (v30 - v23));
    v32 = v31 < 0.0;
    if (v31 == 0.0)
    {
      v40 = v26 - *v29;
      v32 = v40 < 0.0;
      if (v40 == 0.0)
      {
        break;
      }
    }

    if (v32)
    {
      goto LABEL_20;
    }

LABEL_16:
    v15 = v18;
    v19 += 8;
    if (++v18 == a2)
    {
      return 1;
    }
  }

  if (v27 >= v30)
  {
    goto LABEL_16;
  }

LABEL_20:
  *v18 = *v15;
  v33 = v19;
  while (1)
  {
    v34 = *(a1 + v33 + 8);
    v35 = (v21 + 16 * v34);
    v36 = v35[1];
    v37 = v28 - ((*v35 - v22) * (*v35 - v22) + (v36 - v23) * (v36 - v23));
    v38 = v37 < 0.0;
    if (v37 == 0.0)
    {
      v39 = v26 - *v35;
      v38 = v39 < 0.0;
      if (v39 == 0.0)
      {
        break;
      }
    }

    if (!v38)
    {
      goto LABEL_28;
    }

LABEL_24:
    *(a1 + v33 + 16) = v34;
    v33 -= 8;
    if (v33 == -16)
    {
      *a1 = v24;
      if (++v20 != 8)
      {
        goto LABEL_16;
      }

      return v18 + 1 == a2;
    }
  }

  if (v27 < v36)
  {
    goto LABEL_24;
  }

LABEL_28:
  *(a1 + v33 + 16) = v24;
  if (++v20 != 8)
  {
    goto LABEL_16;
  }

  return v18 + 1 == a2;
}

uint64_t *sub_121C380(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_121C608(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; ++i)
      {
        v13 = *i;
        v14 = **a4;
        v15 = (v14 + 16 * *i);
        v16 = v15[1];
        v17 = a4[1];
        v18 = (v14 + 16 * *a1);
        v19 = v18[1];
        v20 = (*v15 - v17) * (*v15 - v17) + (v16 - a4[2]) * (v16 - a4[2]) - ((*v18 - v17) * (*v18 - v17) + (v19 - a4[2]) * (v19 - a4[2]));
        v21 = v20 < 0.0;
        if (v20 == 0.0 && (v22 = *v15 - *v18, v21 = v22 < 0.0, v22 == 0.0))
        {
          if (v16 >= v19)
          {
            continue;
          }
        }

        else if (!v21)
        {
          continue;
        }

        *i = *a1;
        *a1 = v13;
        sub_121C608(a1, a4, v8, a1);
      }
    }

    if (v8 < 2)
    {
      return i;
    }

LABEL_18:
    v24 = 0;
    v25 = *a1;
    v26 = *a4;
    v27 = a4[1];
    v28 = a4[2];
    v29 = a1;
    while (1)
    {
      v30 = v29;
      v31 = &v29[v24];
      v29 = v31 + 1;
      v32 = 2 * v24;
      v24 = (2 * v24) | 1;
      v33 = v32 + 2;
      if (v33 < v8)
      {
        v35 = v31[2];
        v34 = v31 + 2;
        v36 = (*v26 + 16 * *(v34 - 1));
        v37 = v36[1];
        v38 = (*v26 + 16 * v35);
        v39 = v38[1];
        v40 = (*v36 - v27) * (*v36 - v27) + (v37 - v28) * (v37 - v28) - ((*v38 - v27) * (*v38 - v27) + (v39 - v28) * (v39 - v28));
        v41 = v40 < 0.0;
        if (v40 == 0.0 && (v42 = *v36 - *v38, v41 = v42 < 0.0, v42 == 0.0))
        {
          if (v37 >= v39)
          {
            goto LABEL_20;
          }
        }

        else if (!v41)
        {
          goto LABEL_20;
        }

        v29 = v34;
        v24 = v33;
      }

LABEL_20:
      *v30 = *v29;
      if (v24 > ((v8 - 2) >> 1))
      {
        if (v29 == --v6)
        {
          *v29 = v25;
          v23 = v8-- <= 2;
          if (v23)
          {
            return i;
          }

          goto LABEL_18;
        }

        *v29 = *v6;
        *v6 = v25;
        sub_121C85C(a1, (v29 + 1), a4, v29 + 1 - a1, v27);
        v23 = v8-- <= 2;
        if (v23)
        {
          return i;
        }

        goto LABEL_18;
      }
    }
  }

  return a3;
}

uint64_t sub_121C608(uint64_t result, double *a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 3)
  {
    return result;
  }

  v6 = v4 >> 2;
  v7 = (v4 >> 2) + 1;
  v8 = (result + 8 * v7);
  v9 = v6 + 2;
  v10 = **a2;
  if (v9 >= a3)
  {
    v14 = a2[1];
    v15 = a2[2];
  }

  else
  {
    v11 = (v10 + 16 * *v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = a2[1];
    v15 = a2[2];
    v16 = (*v11 - v14) * (*v11 - v14) + (v12 - v15) * (v12 - v15);
    v17 = (v10 + 16 * v8[1]);
    v18 = v17[1];
    v19 = v16 - ((*v17 - v14) * (*v17 - v14) + (v18 - v15) * (v18 - v15));
    v20 = v19 < 0.0;
    if (v19 == 0.0 && (v21 = v13 - *v17, v20 = v21 < 0.0, v21 == 0.0))
    {
      if (v12 >= v18)
      {
        goto LABEL_11;
      }
    }

    else if (!v20)
    {
      goto LABEL_11;
    }

    ++v8;
    v7 = v9;
  }

LABEL_11:
  v22 = *a4;
  v23 = (v10 + 16 * *v8);
  v25 = *v23;
  v24 = v23[1];
  v26 = (*v23 - v14) * (*v23 - v14) + (v24 - v15) * (v24 - v15);
  v27 = (v10 + 16 * *a4);
  v28 = *v27;
  v29 = v27[1];
  v30 = (*v27 - v14) * (*v27 - v14) + (v29 - v15) * (v29 - v15);
  v31 = v26 - v30;
  v32 = v31 < 0.0;
  if (v31 == 0.0 && (v33 = v25 - v28, v32 = v33 < 0.0, v33 == 0.0))
  {
    if (v24 >= v29)
    {
LABEL_17:
      *a4 = *v8;
      while (1)
      {
        if (v5 < v7)
        {
LABEL_36:
          *v8 = v22;
          return result;
        }

        v38 = v8;
        v39 = 2 * v7;
        v7 = (2 * v7) | 1;
        v8 = (result + 8 * v7);
        v40 = v39 + 2;
        if (v40 < a3)
        {
          v41 = (v10 + 16 * *v8);
          v43 = *v41;
          v42 = v41[1];
          v44 = (*v41 - v14) * (*v41 - v14) + (v42 - v15) * (v42 - v15);
          v45 = (v10 + 16 * v8[1]);
          v46 = v45[1];
          v47 = v44 - ((*v45 - v14) * (*v45 - v14) + (v46 - v15) * (v46 - v15));
          v48 = v47 < 0.0;
          if (v47 == 0.0 && (v50 = v43 - *v45, v48 = v50 < 0.0, v50 == 0.0))
          {
            if (v42 >= v46)
            {
              goto LABEL_18;
            }
          }

          else if (!v48)
          {
            goto LABEL_18;
          }

          ++v8;
          v7 = v40;
        }

LABEL_18:
        v34 = (v10 + 16 * *v8);
        v35 = v34[1];
        v36 = (*v34 - v14) * (*v34 - v14) + (v35 - v15) * (v35 - v15) - v30;
        v37 = v36 < 0.0;
        if (v36 == 0.0 && (v49 = *v34 - v28, v37 = v49 < 0.0, v49 == 0.0))
        {
          if (v35 < v29)
          {
LABEL_35:
            v8 = v38;
            goto LABEL_36;
          }
        }

        else if (v37)
        {
          goto LABEL_35;
        }

        *v38 = *v8;
      }
    }
  }

  else if (!v32)
  {
    goto LABEL_17;
  }

  return result;
}

double sub_121C85C(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double result)
{
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v5 >> 1;
    v7 = (a1 + 8 * (v5 >> 1));
    v8 = *(a2 - 8);
    v9 = **a3;
    v10 = (v9 + 16 * *v7);
    v12 = *v10;
    v11 = v10[1];
    result = a3[1];
    v13 = a3[2];
    v14 = (*v10 - result) * (*v10 - result) + (v11 - v13) * (v11 - v13);
    v15 = (v9 + 16 * v8);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*v15 - result) * (*v15 - result) + (v17 - v13) * (v17 - v13);
    v19 = v14 - v18;
    v20 = v19 < 0.0;
    if (v19 == 0.0 && (v28 = v12 - v16, v20 = v28 < 0.0, v28 == 0.0))
    {
      if (v11 >= v17)
      {
        return result;
      }
    }

    else if (!v20)
    {
      return result;
    }

    *(a2 - 8) = *v7;
    if (v5 >= 2)
    {
      while (1)
      {
        v22 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v21 = (a1 + 8 * v6);
        v23 = (v9 + 16 * *v21);
        v24 = v23[1];
        v25 = (*v23 - result) * (*v23 - result) + (v24 - v13) * (v24 - v13) - v18;
        v26 = v25 < 0.0;
        if (v25 == 0.0 && (v27 = *v23 - v16, v26 = v27 < 0.0, v27 == 0.0))
        {
          if (v24 >= v17)
          {
LABEL_15:
            *v7 = v8;
            return result;
          }
        }

        else if (!v26)
        {
          goto LABEL_15;
        }

        *v7 = *v21;
        v7 = (a1 + 8 * v6);
        if (v22 <= 1)
        {
          goto LABEL_7;
        }
      }
    }

    v21 = (a1 + 8 * (v5 >> 1));
LABEL_7:
    *v21 = v8;
  }

  return result;
}

void *sub_121C9AC(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = result[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *result = a2;
  result[1] = a3;
  return result;
}

void **sub_121CA34(uint64_t a1)
{
  v1 = (a1 + 40);
  if (*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, &std::nothrow);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = sub_121CB40(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return result;
}

void **sub_121CB40(void *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return sub_121CC1C(&v4);
}

void sub_121CBDC(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void **sub_121CC1C(void **result)
{
  v1 = *result;
  if (*result)
  {
    if (v1[6])
    {
      operator delete[]();
    }

    if (*v1)
    {
      operator delete[]();
    }

    operator delete();
  }

  return result;
}

uint64_t sub_121CC98(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_121CCB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 24));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    close(v3);
  }

  return a1;
}

uint64_t *sub_121CD00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v4 = result[1];
  v3 = result[2];
  v5 = a2[2];
  result[1] = a2[1];
  result[2] = v5;
  a2[1] = v4;
  a2[2] = v3;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_121CD44(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *a1;
  v4 = a1[1];
  *a1 = a2;
  *(a1 + 1) = -1;
  *(a1 + 2) = a3;
  *(a1 + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = -1;
  v9 = v5;
  return sub_121CCB0(v8);
}

uint64_t sub_121CDF4(uint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return sub_121CED0(a1, a2);
}

uint64_t sub_121CED0(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *a1 = v2 + a2;
  a1[2] = v5;
  return v2;
}

uint64_t sub_121CFAC(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 697) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  sub_121F690((a1 + 744));
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 3;
  *(a1 + 1080) = 0x100000000200;
  *(a1 + 1088) = 0x20000;
  sub_121CC98(a1 + 1096);
  return a1;
}

void sub_121D0E4(_Unwind_Exception *a1)
{
  if (v1[126])
  {
    operator delete[]();
  }

  sub_121F5D8(v4);
  sub_121E6F4(v1 + 93);
  if (*v6)
  {
    operator delete[]();
  }

  if (*v5)
  {
    operator delete[]();
  }

  sub_121D16C(v3);
  sub_121D16C(v2);
  sub_121D16C(v1);
  _Unwind_Resume(a1);
}

void *sub_121D16C(void *result)
{
  if (result[20])
  {
    operator delete[]();
  }

  if (result[14])
  {
    operator delete[]();
  }

  if (result[8])
  {
    operator delete[]();
  }

  if (*result)
  {
    operator delete[]();
  }

  return result;
}

void *sub_121D1E4(void *a1)
{
  sub_121CCFC(a1 + 137);
  if (a1[126])
  {
    operator delete[]();
  }

  sub_121F5D8(a1 + 125);
  if (a1[119])
  {
    operator delete[]();
  }

  if (a1[113])
  {
    operator delete[]();
  }

  if (a1[107])
  {
    operator delete[]();
  }

  if (a1[99])
  {
    operator delete[]();
  }

  if (a1[93])
  {
    operator delete[]();
  }

  if (a1[84])
  {
    operator delete[]();
  }

  if (a1[78])
  {
    operator delete[]();
  }

  if (a1[72])
  {
    operator delete[]();
  }

  if (a1[66])
  {
    operator delete[]();
  }

  if (a1[60])
  {
    operator delete[]();
  }

  if (a1[52])
  {
    operator delete[]();
  }

  if (a1[46])
  {
    operator delete[]();
  }

  if (a1[40])
  {
    operator delete[]();
  }

  if (a1[34])
  {
    operator delete[]();
  }

  if (a1[26])
  {
    operator delete[]();
  }

  if (a1[20])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t *sub_121D368(uint64_t a1, uint64_t a2)
{
  sub_121DEA8(a1, a2);
  sub_121DEA8((a1 + 208), (a2 + 208));
  sub_121DEA8((a1 + 416), (a2 + 416));
  sub_121DF20((a1 + 624), (a2 + 624));
  sub_121DF20((a1 + 672), (a2 + 672));
  v4 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v4;
  LODWORD(v4) = *(a1 + 728);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = v4;
  v5 = *(a1 + 736);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = v5;
  sub_121F6C4((a1 + 744), (a2 + 744));
  v6 = *(a1 + 1000);
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = v6;
  sub_121DF20((a1 + 1008), (a2 + 1008));
  v7 = *(a1 + 1056);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = v7;
  v8 = *(a1 + 1064);
  *(a1 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = v8;
  v9 = *(a1 + 1072);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v9;
  v10 = *(a1 + 1080);
  *(a1 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = v10;
  LODWORD(v9) = *(a1 + 1088);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v9;

  return sub_121CD00((a1 + 1096), (a2 + 1096));
}

void *sub_121D480(uint64_t a1, uint64_t *a2)
{
  sub_121D508(v5, a2);
  sub_121CFAC(v5);
  sub_121D5C8(v5, a2);
  sub_121CD00(v6, a2);
  sub_121D368(a1, v5);
  return sub_121D1E4(v5);
}

_BYTE *sub_121D508(uint64_t a1, uint64_t *a2)
{
  result = sub_121CED0(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = aWeLoveMarisa[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

double sub_121D5C8(uint64_t a1, uint64_t *a2)
{
  sub_121E010(a1, a2);
  sub_121E010((a1 + 208), a2);
  sub_121E010((a1 + 416), a2);
  sub_121E0DC((a1 + 624), a2);
  sub_121E19C((a1 + 672), a2);
  sub_121F704(a1 + 744, a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, &std::nothrow);
    v5 = v4;
    if (v4)
    {
      sub_121CFAC(v4);
    }

    sub_121DF74((a1 + 1000), v5);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x80000021ELL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:542: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    sub_121D5C8(v6, a2);
  }

  sub_121E298((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  *(a1 + 1064) = *sub_121CED0(a2, 4uLL);
  v7 = *sub_121CED0(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_121E778(&v10, v7);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

uint64_t *sub_121D780(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_121EA28(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

uint64_t sub_121D7EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 108);
  if (v5 == 2)
  {
    do
    {
      while (1)
      {
LABEL_10:
        v10 = *(v4 + 104);
        if (*(v4 + 72) == v10)
        {
          v11 = *(v4 + 56) + 20 * v10;
          *v30 = xmmword_22A7520;
          *&v30[16] = -1;
          v12 = sub_121FBD8(a1, *(v11 - 20));
          *&v30[4] = v12 + 1;
          *v30 = v12 - *(v11 - 20);
          sub_121DDCC((v4 + 48), v30);
          LODWORD(v10) = *(v4 + 104);
        }

        v13 = (*(v4 + 56) + 20 * v10);
        v14 = v13[1];
        v15 = *(*(a1 + 16) + ((v14 >> 3) & 0x1FFFFFF8));
        v13[1] = v14 + 1;
        if ((v15 >> v14))
        {
          break;
        }

        if (v10 == 1)
        {
LABEL_7:
          result = 0;
          *(v4 + 108) = 4;
          return result;
        }

        ++*(v13 - 5);
        sub_121DE58(v4, *(v13 - 8));
        --*(v4 + 104);
      }

      *(v4 + 104) = v10 + 1;
      v16 = *v13;
      if ((*(*(a1 + 432) + ((v16 >> 3) & 0x1FFFFFF8)) >> v16))
      {
        v17 = v13[3];
        if (v17 == -1)
        {
          v18 = sub_121FADC(a1 + 416, v16);
          v16 = *v13;
        }

        else
        {
          v18 = v17 + 1;
        }

        v13[3] = v18;
        v19 = *(a1 + 720);
        v20 = v19 * v18;
        v21 = (v20 & 0x3F) + v19;
        v22 = (*(a1 + 688) + 8 * (v20 >> 6));
        v23 = *v22;
        if (v21 > 0x40)
        {
          v24 = ((2 * v22[1]) << ~v20) | (v23 >> v20);
        }

        else
        {
          v24 = v23 >> (v20 & 0x3F);
        }

        v25 = *(*(a1 + 640) + v16) | ((*(a1 + 728) & v24) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          sub_121E358(v26, a2, v25);
        }

        else
        {
          sub_121F840((a1 + 744), a2, v25);
        }
      }

      else
      {
        v30[0] = *(*(a1 + 640) + v16);
        sub_121D780(v4, v30);
      }

      v27 = *(v4 + 24);
      v13[2] = v27;
      v28 = *v13;
    }

    while (((*(*(a1 + 224) + ((v28 >> 3) & 0x1FFFFFF8)) >> v28) & 1) == 0);
    v29 = v13[4];
    if (v29 == -1)
    {
      v9 = sub_121FADC(a1 + 208, v28);
      v27 = *(v4 + 24);
    }

    else
    {
      v9 = v29 + 1;
    }

    v13[4] = v9;
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v27;
  }

  else
  {
    if (v5 == 4)
    {
      return 0;
    }

    sub_121DAE8(*(a2 + 40));
    while (*(a2 + 8) > *(v4 + 100))
    {
      if ((sub_121DB68(a1, a2) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *&v30[12] = -1;
    *v30 = *(v4 + 96);
    *&v30[8] = *(v4 + 24);
    sub_121DDCC((v4 + 48), v30);
    *(v4 + 104) = 1;
    v7 = *(v4 + 96);
    if (((*(*(a1 + 224) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = *(v4 + 24);
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v8;
    v9 = sub_121FADC(a1 + 208, v7);
  }

  *(a2 + 36) = v9;
  return 1;
}

double sub_121DAE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0x3F)
  {
    if (v2 <= 0x20)
    {
      v3 = 64;
    }

    else
    {
      v3 = 2 * v2;
    }

    sub_121EA28(a1, v3);
  }

  sub_121EAC0((a1 + 48), 0);
  v4 = *(a1 + 80);
  if (v4 <= 3)
  {
    if (v4 == 3)
    {
      v5 = 6;
    }

    else
    {
      v5 = 4;
    }

    sub_121EB58((a1 + 48), v5);
  }

  result = 0.0;
  *(a1 + 96) = xmmword_22B2F00;
  return result;
}

uint64_t sub_121DB68(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = *(v4 + 96);
  v6 = (*(*a2 + *(v4 + 100)) ^ (32 * v5) ^ v5) & *(a1 + 1056);
  v7 = (*(a1 + 1024) + 12 * v6);
  if (v5 != *v7)
  {
    v9 = sub_121FBD8(a1, v5);
    v10 = *(a1 + 16);
    if ((*(v10 + (((v9 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 1)))
    {
      v11 = v9 - *(v4 + 96);
      *(v4 + 96) = v11;
      v12 = v9 + 2;
      v13 = 0xFFFFFFFFLL;
      while (1)
      {
        v14 = v11;
        if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFF8)) >> v11))
        {
          if (v13 == 0xFFFFFFFFLL)
          {
            v13 = sub_121FADC(a1 + 416, v11);
            v14 = *(v4 + 96);
          }

          else
          {
            ++v13;
          }

          v15 = *(v4 + 100);
          v16 = *(a1 + 720);
          v17 = v16 * v13;
          v18 = (v16 * v13) & 0x3F;
          v19 = v18 + v16;
          v20 = (*(a1 + 688) + 8 * ((v16 * v13) >> 6));
          v21 = *v20;
          if (v19 > 0x40)
          {
            v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
          }

          else
          {
            v22 = v21 >> v18;
          }

          v23 = *(*(a1 + 640) + v14) | ((*(a1 + 728) & v22) << 8);
          v24 = *(a1 + 1000);
          if (v24)
          {
            if (sub_121E4EC(v24, a2, v23))
            {
              return 1;
            }
          }

          else if (sub_121F8CC((a1 + 744), a2, v23))
          {
            return 1;
          }

          if (*(v4 + 100) != v15)
          {
            return 0;
          }

          v11 = *(v4 + 96);
          v10 = *(a1 + 16);
        }

        else if (*(*(a1 + 640) + v11) == *(*a2 + *(v4 + 100)))
        {
          v28 = *(*(a1 + 640) + v11);
          sub_121D780(v4, &v28);
          ++*(v4 + 100);
          return 1;
        }

        *(v4 + 96) = ++v11;
        v25 = *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12;
        ++v12;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v8 = v7[2];
  if (v8 > 0xFFFFFEFF)
  {
    v29 = v7[2];
    sub_121D780(v4, &v29);
    ++*(v4 + 100);
    goto LABEL_25;
  }

  v26 = *(a1 + 1000);
  if (v26)
  {
    if (sub_121E4EC(v26, a2, v8))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((sub_121F8CC((a1 + 744), a2, v8) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(a1 + 1024) + 12 * v6 + 4);
  return 1;
}

__n128 sub_121DDCC(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x666666666666666)
    {
      v7 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    sub_121EB58(a1, v8);
    v4 = a1[3];
  }

  v9 = (a1[1] + 20 * v4);
  result = *a2;
  v9[1].n128_u32[0] = a2[1].n128_u32[0];
  *v9 = result;
  ++a1[3];
  return result;
}

uint64_t *sub_121DE58(uint64_t *result, size_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 < 0)
    {
      v5 = -1;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_121EA28(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t *sub_121DEA8(uint64_t *a1, uint64_t *a2)
{
  sub_121DF20(a1, a2);
  v4 = a1[6];
  a1[6] = a2[6];
  a2[6] = v4;
  v5 = a1[7];
  a1[7] = a2[7];
  a2[7] = v5;
  sub_121DF20(a1 + 8, a2 + 8);
  sub_121DF20(a1 + 14, a2 + 14);

  return sub_121DF20(a1 + 20, a2 + 20);
}

uint64_t *sub_121DF20(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

void **sub_121DF74(void *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return sub_121F5D8(&v4);
}

uint64_t sub_121E010(uint64_t *a1, uint64_t *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_121EC00(v4, a2);
  sub_121DEA8(a1, v4);
  if (v9)
  {
    operator delete[]();
  }

  if (v7)
  {
    operator delete[]();
  }

  if (v5)
  {
    operator delete[]();
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_121E0DC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121E19C(__int128 *a1, uint64_t *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_121F50C(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121E298(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F16C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_121E358(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 40);
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 1056) & a3;
      v8 = *(a1 + 1024) + 12 * v7;
      if (a3 != *(v8 + 4))
      {
        break;
      }

      v9 = *(v8 + 8);
      if (v9 <= 0xFFFFFEFF)
      {
        v20 = *(a1 + 1000);
        if (v20)
        {
          result = sub_121E358(v20, a2, v9);
        }

        else
        {
          result = sub_121F840((a1 + 744), a2, v9);
        }
      }

      else
      {
        v24 = *(v8 + 8);
        result = sub_121D780(v6, &v24);
      }

      a3 = *(*(a1 + 1024) + 12 * v7);
      if (!a3)
      {
        return result;
      }
    }

    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v11 = *(*(a1 + 640) + a3);
      v12 = sub_121FADC(a1 + 416, a3);
      v13 = *(a1 + 720);
      v14 = v13 * v12;
      v15 = (v13 * v12) & 0x3F;
      v16 = v15 + v13;
      v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
      v18 = *v17;
      v19 = v16 > 0x40 ? ((2 * v17[1]) << ~v14) | (v18 >> v14) : v18 >> v15;
      v21 = v11 | ((*(a1 + 728) & v19) << 8);
      v22 = *(a1 + 1000);
      result = v22 ? sub_121E358(v22, a2, v21) : sub_121F840((a1 + 744), a2, v21);
    }

    else
    {
      v23 = *(*(a1 + 640) + a3);
      result = sub_121D780(v6, &v23);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = sub_121FE3C(a1, a3) + ~a3;
  }

  return result;
}

uint64_t sub_121E4EC(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2[5];
  while (1)
  {
    v7 = *(a1 + 1056) & a3;
    v8 = *(a1 + 1024) + 12 * v7;
    if (a3 != *(v8 + 4))
    {
      v10 = *(*(a1 + 640) + a3);
      if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        v11 = sub_121FADC(a1 + 416, a3);
        v12 = *(a1 + 720);
        v13 = v12 * v11;
        v14 = (v12 * v11) & 0x3F;
        v15 = v14 + v12;
        v16 = (*(a1 + 688) + 8 * ((v12 * v11) >> 6));
        v17 = *v16;
        if (v15 > 0x40)
        {
          v18 = ((2 * v16[1]) << ~v13) | (v17 >> v13);
        }

        else
        {
          v18 = v17 >> v14;
        }

        v20 = v10 | ((*(a1 + 728) & v18) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          if ((sub_121E4EC(v21, a2, v20) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((sub_121F8CC((a1 + 744), a2, v20) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v10 != *(*a2 + *(v6 + 100)))
        {
          return 0;
        }

        v23 = *(*(a1 + 640) + a3);
        sub_121D780(v6, &v23);
        ++*(v6 + 100);
      }

      if (a3 <= *(a1 + 1064))
      {
        return 1;
      }

      a3 = sub_121FE3C(a1, a3) + ~a3;
      goto LABEL_23;
    }

    v9 = *(v8 + 8);
    if (v9 > 0xFFFFFEFF)
    {
      if (*(*a2 + *(v6 + 100)) != v9)
      {
        return 0;
      }

      v24 = *(v8 + 8);
      sub_121D780(v6, &v24);
      ++*(v6 + 100);
      goto LABEL_22;
    }

    v19 = *(a1 + 1000);
    if (!v19)
    {
      break;
    }

    if ((sub_121E4EC(v19, a2, v9) & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    a3 = *(*(a1 + 1024) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

LABEL_23:
    if (a2[1] <= *(v6 + 100))
    {
      sub_121E358(a1, a2, a3);
      return 1;
    }
  }

  if (sub_121F8CC((a1 + 744), a2, v9))
  {
    goto LABEL_22;
  }

  return 0;
}

void *sub_121E6F4(void *result)
{
  if (result[26])
  {
    operator delete[]();
  }

  if (result[20])
  {
    operator delete[]();
  }

  if (result[14])
  {
    operator delete[]();
  }

  if (result[6])
  {
    operator delete[]();
  }

  if (*result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_121E778(void *a1, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  if ((a2 & 0x7F) != 0)
  {
    *a1 = a2 & 0x7F;
  }

  sub_121E840(a1, a2);
  sub_121E900(a1, a2);

  return sub_121E994(a1, a2);
}

uint64_t sub_121E840(uint64_t result, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(result + 8) = v3;
  return result;
}

uint64_t sub_121E900(uint64_t result, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(result + 12) = v2;
  return result;
}

uint64_t sub_121E994(uint64_t result, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008DLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *sub_121EA28(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, &std::nothrow);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    operator delete[]();
  }

  return result;
}

uint64_t *sub_121EAC0(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_121EB58(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = (v3[1] + 20 * v6 + 16);
    do
    {
      *(v8 - 1) = xmmword_22A7520;
      *v8 = -1;
      v8 += 5;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

_DWORD *sub_121EB58(uint64_t *a1, uint64_t a2)
{
  result = operator new[](20 * a2, &std::nothrow);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[4] = *(v6 + 4);
      *v7 = v8;
      v7 += 5;
      v6 = (v6 + 20);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_121EC00(uint64_t a1, uint64_t *a2)
{
  sub_121ECEC(a1, a2);
  *(a1 + 48) = *sub_121CED0(a2, 4uLL);
  v4 = *sub_121CED0(a2, 4uLL);
  if (*(a1 + 48) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(a1 + 56) = v4;
  sub_121EDAC((a1 + 64), a2);
  sub_121EE6C((a1 + 112), a2);

  return sub_121EE6C((a1 + 160), a2);
}

uint64_t sub_121ECEC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121EF2C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121ED84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EDAC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F16C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121EE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EE6C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F34C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121EF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EF2C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  sub_121F008(a2, (a1 + 16), v4 >> 3);
  sub_121CDF4(a2, 0);
  *(a1 + 24) = v5;

  return sub_121F0E8(a1);
}

uint64_t sub_121F008(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_121F0E8(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x10000006BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:107: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t sub_121F16C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  sub_121F25C(a2, (a1 + 16), v5);
  sub_121CDF4(a2, -v4 & 7);
  *(a1 + 24) = v5;

  return sub_121F0E8(a1);
}

uint64_t sub_121F25C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_121F34C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  sub_121F42C(a2, (a1 + 16), v4 >> 2);
  sub_121CDF4(a2, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return sub_121F0E8(a1);
}

uint64_t sub_121F42C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *sub_121F50C(uint64_t a1, uint64_t *a2)
{
  sub_121ECEC(a1, a2);
  v4 = *sub_121CED0(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(a1 + 48) = v4;
  *(a1 + 56) = *sub_121CED0(a2, 4uLL);
  result = sub_121CED0(a2, 8uLL);
  *(a1 + 64) = *result;
  return result;
}

void **sub_121F5D8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_121D1E4(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_121F61C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  *(a1 + 16) = sub_121CED0(a2, v4);
  sub_121CDF4(a2, -v4 & 7);
  *(a1 + 24) = v4;

  return sub_121F0E8(a1);
}

double sub_121F690(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  *(a1 + 185) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  *(a1 + 233) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t *sub_121F6C4(uint64_t *a1, uint64_t *a2)
{
  sub_121DF20(a1, a2);

  return sub_121DEA8(a1 + 6, a2 + 6);
}

uint64_t sub_121F704(uint64_t a1, uint64_t *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_121FA1C(v8, a2);
  sub_121E010(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_121DEA8((a1 + 48), v9);
  if (v14)
  {
    operator delete[]();
  }

  if (v12)
  {
    operator delete[]();
  }

  if (v10)
  {
    operator delete[]();
  }

  if (*&v9[0])
  {
    operator delete[]();
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    operator delete[]();
  }

  return result;
}

uint64_t *sub_121F840(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(a2 + 40);
  if (result[12])
  {
    do
    {
      result = sub_121D780(v5, (v4[2] + v3));
      v6 = *(v4[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = (result[2] + a3);
    if (*v7)
    {
      do
      {
        result = sub_121D780(v5, v7);
      }

      while (*++v7);
    }
  }

  return result;
}

uint64_t sub_121F8CC(void *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v6 = a2[5];
  if (a1[12])
  {
    v7 = *(v6 + 100);
    while (1)
    {
      v8 = a1[2];
      v9 = *(v8 + v3);
      v10 = *(*a2 + v7);
      v11 = v9 == v10;
      if (v9 != v10)
      {
        break;
      }

      sub_121D780(v6, (v8 + v3));
      v7 = *(v6 + 100) + 1;
      *(v6 + 100) = v7;
      if ((*(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      if (a2[1] <= v7)
      {
        do
        {
          sub_121D780(v6, (a1[2] + v3));
          v12 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
          ++v3;
        }

        while ((v12 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v15 = a1[2] + a3;
    v13 = (v15 - *(v6 + 100));
    v14 = *v15;
    LODWORD(v15) = *(v6 + 100);
    while (1)
    {
      v16 = *(*a2 + v15);
      v11 = v14 == v16;
      if (v14 != v16)
      {
        break;
      }

      sub_121D780(v6, &v13[v15]);
      v15 = (*(v6 + 100) + 1);
      *(v6 + 100) = v15;
      v14 = v13[v15];
      if (!v13[v15])
      {
        break;
      }

      if (a2[1] <= v15)
      {
        v17 = &v13[v15];
        do
        {
          sub_121D780(v6, v17);
        }

        while (*++v17);
        return 1;
      }
    }
  }

  return v11;
}

uint64_t sub_121FA1C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121FADC(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 80) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(a1 + 16) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t sub_121FBD8(void *a1, unint64_t a2)
{
  v2 = (a1[16] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = a2 - (v3 << 9) + *v11;
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = v13 + v19 - 448;
      }

      else
      {
        v14 |= 6uLL;
        v13 = v13 + v17 - 384;
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = v13 + (v16 & 0x1FF) - 320;
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v12 >> 23) + v13 - 256;
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = v13 + v18 - 192;
    }

    else
    {
      v14 |= 2uLL;
      v13 = v13 + (v12 >> 7) - 128;
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = v15 + v13 - 64;
    }
  }

  return sub_121FDB4(v13, v14 << 6, ~*(a1[2] + 8 * v14));
}

unint64_t sub_121FDB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * a1 - 0x101010101010101) >> 7) & 0x101010101010101));
  return v5 + a2 + asc_22B2F20[256 * (a1 - ((0x101010101010100 * v4) >> v5)) + (a3 >> v5)];
}

unint64_t sub_121FE3C(void *a1, unint64_t a2)
{
  v2 = (a1[22] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = v12 - v25;
    }

    else
    {
      v29 = v12 - v26;
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = v12 - v23;
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = v12 - v30;
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = v12 - (v11 >> 7);
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = v12 - v15;
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = v12 - v18;
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }

  return sub_121FDB4(v21, v22 << 6, *(a1[2] + 8 * v22));
}

void **sub_121FFB4(void **a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, &std::nothrow);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &off_26782D0;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  sub_121D1E0(v6);
  v13 = v7;
  sub_121CC98(v12);
  sub_121CD44(v12, a2, a3);
  sub_121D480(v13, v12);
  v8 = *a1;
  *a1 = v13;
  v13 = v8;
  sub_121CCFC(v12);
  return sub_121F5D8(&v13);
}

void sub_1220120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_121F5D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1220160(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_121CA34(a2);
      result = *a1;
    }

    return sub_121D7EC(result, a2);
  }

  return result;
}

void sub_12201C0(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v14 = [NSData dataWithBytes:v6 length:v7];
  v8 = [v14 base64EncodedDataWithOptions:0];
  sub_194E7E8(a3, [v8 bytes], objc_msgSend(v8, "length"));
  if (a2)
  {
    v9 = *(a3 + 23);
    v10 = *a3;
    v11 = *(a3 + 8);
    if (v9 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v9 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = *(a3 + 8);
    }

    if (v13)
    {
      do
      {
        if (*v12 == 43)
        {
          *v12 = 45;
        }

        ++v12;
        --v13;
      }

      while (v13);
      v9 = *(a3 + 23);
      v10 = *a3;
      v11 = *(a3 + 8);
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = v11;
    }

    else
    {
      v10 = a3;
    }

    for (; v9; --v9)
    {
      if (*v10 == 47)
      {
        *v10 = 95;
      }

      ++v10;
    }
  }
}

void sub_122030C(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_325C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v16 = *(a1 + 16);
  }

  v5 = __p[0];
  if (a2)
  {
    v6 = SHIBYTE(v16);
    v7 = __p;
    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = __p[1];
    if (v16 >= 0)
    {
      v10 = SHIBYTE(v16);
    }

    else
    {
      v10 = __p[1];
    }

    if (v10)
    {
      do
      {
        if (*v8 == 45)
        {
          *v8 = 43;
        }

        v8 = (v8 + 1);
        v10 = v10 - 1;
      }

      while (v10);
      v6 = HIBYTE(v16);
      v5 = __p[0];
      v9 = __p[1];
    }

    if ((v6 & 0x80u) != 0)
    {
      v7 = v5;
      v6 = v9;
    }

    if (v6)
    {
      do
      {
        if (*v7 == 95)
        {
          *v7 = 47;
        }

        v7 = (v7 + 1);
        --v6;
      }

      while (v6);
      v5 = __p[0];
    }
  }

  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = v5;
  }

  if (v16 >= 0)
  {
    v12 = HIBYTE(v16);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = [NSData dataWithBytes:v11 length:v12, __p[0]];
  v14 = [[NSData alloc] initWithBase64EncodedData:v13 options:0];
  sub_194E7E8(a3, [v14 bytes], objc_msgSend(v14, "length"));

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1220474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_12204A8(const void *a1, CC_LONG a2)
{
  *md = 0;
  v13 = 0;
  v14 = 0;
  CC_SHA1(a1, a2, md);
  sub_19594F8(&v7);
  v2 = v7;
  v3 = (&v7 + *(v7 - 3));
  if (v3[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v3);
    v4 = std::locale::use_facet(&v11, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v11);
    v2 = v7;
  }

  v5 = 0;
  v3[1].__fmtflags_ = 48;
  *(&v7 + *(v2 - 3) + 8) = *(&v7 + *(v2 - 3) + 8) & 0xFFFFFFB5 | 8;
  *(&v7 + *(v2 - 3) + 8) |= 0x4000u;
  do
  {
    *(&v9[1].__locale_ + *(v7 - 3)) = (&dword_0 + 2);
    std::ostream::operator<<();
    ++v5;
  }

  while (v5 != 20);
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1220764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 104));
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_12207A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_12208C4(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_195CB10(a1);
  return a1;
}

void sub_1220958(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1220984(std::runtime_error *a1)
{
  sub_12209BC(a1);

  operator delete();
}

void sub_12209BC(std::runtime_error *this)
{
  this->__vftable = &off_2678310;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    sub_1220A18(imp);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_1220A18(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unint64_t sub_1220A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_AAD8(&v5, a2, v3);
}

BOOL sub_1220AC4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_1220B3C(std::runtime_error_vtbl **a1, _DWORD *a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to int");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  result = (*(v3->~runtime_error + 5))(v3);
  *a2 = result;
  return result;
}

void sub_1220C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

double sub_1220C7C(std::runtime_error_vtbl **a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to string");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  (*(v3->~runtime_error + 11))(&v9);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v9.__r_.__value_.__l.__data_;
  *a2 = v9;
  return result;
}

void sub_1220D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

uint64_t sub_1220DDC(std::runtime_error_vtbl **a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to BOOLean");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  result = (*(v3->~runtime_error + 10))(v3);
  *a2 = result;
  return result;
}

void sub_1220ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

BOOL sub_1220F1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220B3C(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}