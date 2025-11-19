void sub_1458480(uint64_t a1)
{
  sub_1458388(a1);

  operator delete();
}

uint64_t sub_14584B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E5CC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_14592FC(*(v1 + 32));
    }
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

uint64_t sub_1458528(uint64_t a1)
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

uint64_t sub_145854C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  if (sub_195ADC0(a3, v49, a3[11].i32[1]))
  {
    return *v49;
  }

  while (1)
  {
    v6 = (*v49 + 1);
    v7 = **v49;
    if (**v49 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v49, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v49 + 2);
      }
    }

    *v49 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v23 = (v6 - 1);
          while (1)
          {
            v24 = (v23 + 1);
            *v49 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = *(a1 + 24);
              if (!v28)
              {
                operator new();
              }

              *v30 = v29;
              v30[1] = sub_195A650;
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v27 = sub_19593CC(a1 + 24, v29);
              v24 = *v49;
            }

            v23 = sub_1958890(v27, v24, a3);
            *v49 = v23;
            if (!v23)
            {
              goto LABEL_83;
            }

            if (*a3 <= v23 || *v23 != 26)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          v37 = v6 - 1;
          while (1)
          {
            v38 = v37 + 1;
            *v49 = v37 + 1;
            v39 = *(a1 + 64);
            if (v39 && (v40 = *(a1 + 56), v40 < *v39))
            {
              *(a1 + 56) = v40 + 1;
              v41 = *&v39[2 * v40 + 2];
            }

            else
            {
              sub_14BAC9C(*(a1 + 48));
              v41 = sub_19593CC(a1 + 48, v42);
              v38 = *v49;
            }

            v37 = sub_220C618(a3, v41, v38);
            *v49 = v37;
            if (!v37)
            {
              goto LABEL_83;
            }

            if (*a3 <= v37 || *v37 != 34)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        v11 = (v6 - 1);
        while (1)
        {
          v12 = (v11 + 1);
          *v49 = v11 + 1;
          v13 = *(a1 + 88);
          if (v13 && (v14 = *(a1 + 80), v14 < *v13))
          {
            *(a1 + 80) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 72);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 72, v17);
            v12 = *v49;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v49 = v11;
          if (!v11)
          {
            goto LABEL_83;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v10 == 6)
    {
      break;
    }

    if (v10 == 7)
    {
      if (v7 != 58)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 1u;
      v43 = *(a1 + 120);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_14BAFC4(v45);
        *(a1 + 120) = v43;
        v6 = *v49;
      }

      v22 = sub_220C738(a3, v43, v6);
    }

    else
    {
      if (v10 != 8 || v7 != 66)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 128);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BF234(v21);
        *(a1 + 128) = v19;
        v6 = *v49;
      }

      v22 = sub_220C7C8(a3, v19, v6);
    }

LABEL_77:
    *v49 = v22;
    if (!v22)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, v49, a3[11].i32[1]))
    {
      return *v49;
    }
  }

  if (v7 == 50)
  {
    v31 = v6 - 1;
    while (1)
    {
      v32 = v31 + 1;
      *v49 = v31 + 1;
      v33 = *(a1 + 112);
      if (v33 && (v34 = *(a1 + 104), v34 < *v33))
      {
        *(a1 + 104) = v34 + 1;
        v35 = *&v33[2 * v34 + 2];
      }

      else
      {
        v36 = sub_14BADDC(*(a1 + 96));
        v35 = sub_19593CC(a1 + 96, v36);
        v32 = *v49;
      }

      v31 = sub_220C6A8(a3, v35, v32);
      *v49 = v31;
      if (!v31)
      {
        goto LABEL_83;
      }

      if (*a3 <= v31 || *v31 != 50)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_70:
  if (v7)
  {
    v46 = (v7 & 7) == 4;
  }

  else
  {
    v46 = 1;
  }

  if (!v46)
  {
    v47 = *(a1 + 8);
    if (v47)
    {
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v48 = sub_11F1920((a1 + 8));
      v6 = *v49;
    }

    v22 = sub_1952690(v7, v48, v6, a3);
    goto LABEL_77;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v49;
  }

LABEL_83:
  *v49 = 0;
  return *v49;
}

char *sub_14589F4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
      {
        __dst = sub_1957480(a3, 3, v8, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *__dst = 34;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_1456380(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - __dst + 14) < v19)
      {
        __dst = sub_1957480(a3, 5, v18, __dst);
      }

      else
      {
        *__dst = 42;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * j + 8);
      *__dst = 50;
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

      __dst = sub_1457C50(v23, v25, a3);
    }
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v27 = *(a1 + 120);
    *__dst = 58;
    v28 = *(v27 + 20);
    __dst[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, __dst + 1);
    }

    else
    {
      v29 = __dst + 2;
    }

    __dst = sub_1459E70(v27, v29, a3);
  }

  if ((v26 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v30 = *(a1 + 128);
    *__dst = 66;
    v31 = *(v30 + 20);
    __dst[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, __dst + 1);
    }

    else
    {
      v32 = __dst + 2;
    }

    __dst = sub_14B385C(v30, v32, a3);
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return __dst;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - __dst) >= v36)
  {
    v38 = v36;
    memcpy(__dst, v37, v36);
    __dst += v38;
    return __dst;
  }

  return sub_1957130(a3, v37, v36, __dst);
}

uint64_t sub_1458DB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 56);
  v9 = v4 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_1456B68(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 104);
  v22 = v16 + v21;
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
      v27 = sub_1457E00(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if ((v28 & 3) != 0)
  {
    if (v28)
    {
      v29 = sub_1459FEC(*(a1 + 120));
      v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v28 & 2) != 0)
    {
      v30 = sub_14B3A0C(*(a1 + 128));
      v22 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v31 = *(a1 + 8);
  if (v31)
  {
    v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v22 += v34;
  }

  *(a1 + 20) = v22;
  return v22;
}

std::string *sub_1458FCC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      if (!result[1].__r_.__value_.__r.__words[0])
      {
        size = result->__r_.__value_.__l.__size_;
        v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v6 = *v6;
        }

        sub_14BAE64(v6);
        v3[1].__r_.__value_.__r.__words[0] = v7;
      }

      result = sub_144EF20();
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_14BAF28(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_27717C0;
      }

      result = sub_1459978(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14590D0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1459110(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E3A40;
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
    sub_1565C64((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_1459200(_Unwind_Exception *a1)
{
  sub_1563EE8(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1459244(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1563EE8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14592C4(void *a1)
{
  sub_1459244(a1);

  operator delete();
}

uint64_t sub_14592FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14592FC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_145938C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v19 = v7 - 1;
        while (1)
        {
          v29 = v19 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_14BAF28(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
          }

          v19 = sub_220C858(a3, v22);
          v29 = v19;
          if (!v19)
          {
            goto LABEL_52;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_13;
    }

    if (v11 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v29 = v16;
      *(a1 + 52) = v17;
      goto LABEL_42;
    }

    v27 = sub_1958770(v7, v17);
    v29 = v27;
    *(a1 + 52) = v28;
    if (!v27)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 8)
  {
    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if (v26 < 0)
    {
      v29 = sub_19587DC(v7, v24);
      if (!v29)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v25 = v7 + 2;
LABEL_39:
      v29 = v25;
    }

    if (v24 > 5)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 48) = v24;
    }

    goto LABEL_42;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v15, v7, a3);
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_145961C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
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
          LODWORD(v6) = v13 >> 7;
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

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 26;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_145961C(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v11 >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_1459868(uint64_t a1)
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
      v7 = sub_1459868(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1459978(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1565C64(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1459A7C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_26E3AC0;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  a1[4] = 0;
  return a1;
}

uint64_t sub_1459BC0(uint64_t a1)
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

  if (a1 != &off_27717F8)
  {
    if (*(a1 + 24))
    {
      sub_1458388();
      operator delete();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      sub_1459244(v5);
      operator delete();
    }
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

void sub_1459C90(uint64_t a1)
{
  sub_1459BC0(a1);

  operator delete();
}

char *sub_1459CC8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_14BAF28(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_220C858(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        v18 = v21;
        *(a1 + 24) = v21;
      }

      v14 = sub_22095B8(a3, v18);
      goto LABEL_30;
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
        return v23;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_1459E70(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_145961C(v10, v12, a3);
  }

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

uint64_t sub_1459FEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1459868(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_145A0CC(void *a1)
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

  sub_145A150(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_145A150(uint64_t result)
{
  if (result != &off_2771820)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_1458388(v8);
      operator delete();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_1458388(v9);
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145A260(void *a1)
{
  sub_145A0CC(a1);

  operator delete();
}

uint64_t sub_145A298(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_144E5CC(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_144E5CC(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_144E5CC(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = sub_144E5CC(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = sub_144E5CC(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = sub_144E5CC(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_144E5CC(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_144E5CC(*(v1 + 88));
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

char *sub_145A37C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v45, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v45 + 1;
    v7 = *v45;
    if (*v45 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v45, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v45 + 2;
      }
    }

    v45 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (v11)
            {
              goto LABEL_68;
            }

            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            sub_14BAE64(v29);
            v11 = v30;
            *(a1 + 40) = v30;
            goto LABEL_67;
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v11 = *(a1 + 48);
          if (v11)
          {
            goto LABEL_68;
          }

          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v11 = v21;
          *(a1 + 48) = v21;
LABEL_67:
          v6 = v45;
          goto LABEL_68;
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v11 = *(a1 + 24);
          if (v11)
          {
            goto LABEL_68;
          }

          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          v11 = v27;
          *(a1 + 24) = v27;
          goto LABEL_67;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v11 = *(a1 + 32);
        if (!v11)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v11 = v18;
          *(a1 + 32) = v18;
          goto LABEL_67;
        }

LABEL_68:
        v40 = sub_22095B8(a3, v11, v6);
        goto LABEL_69;
      }
    }

    else if (v7 >> 3 <= 6)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 56);
          if (!v11)
          {
            v34 = *(a1 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            sub_14BAE64(v35);
            v11 = v36;
            *(a1 + 56) = v36;
            goto LABEL_67;
          }

          goto LABEL_68;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v11 = *(a1 + 64);
        if (!v11)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_14BAE64(v23);
          v11 = v24;
          *(a1 + 64) = v24;
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_14BAE64(v32);
          v11 = v33;
          *(a1 + 72) = v33;
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else if (v10 == 8)
    {
      if (v7 == 66)
      {
        *(a1 + 16) |= 0x80u;
        v11 = *(a1 + 80);
        if (!v11)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_14BAE64(v38);
          v11 = v39;
          *(a1 + 80) = v39;
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else if (v10 == 9 && v7 == 74)
    {
      *(a1 + 16) |= 0x100u;
      v11 = *(a1 + 88);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 88) = v14;
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (v7)
    {
      v41 = (v7 & 7) == 4;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v45;
      }

      return 0;
    }

    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v6 = v45;
    }

    v40 = sub_1952690(v7, v43, v6, a3);
LABEL_69:
    v45 = v40;
    if (!v40)
    {
      return 0;
    }
  }

  return v45;
}

char *sub_145A744(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 32);
  *v4 = 18;
  v11 = *(v10 + 20);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 48);
  *v4 = 34;
  v17 = *(v16 + 20);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_14589F4(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 42;
  v20 = *(v19 + 20);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_14589F4(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 64);
  *v4 = 50;
  v23 = *(v22 + 20);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_14589F4(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 72);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_14589F4(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 80);
  *v4 = 66;
  v29 = *(v28 + 20);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_14589F4(v28, v30, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_59:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v31 = *(a1 + 88);
    *v4 = 74;
    v32 = *(v31 + 20);
    v4[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v4 + 1);
    }

    else
    {
      v33 = v4 + 2;
    }

    v4 = sub_14589F4(v31, v33, a3);
  }

LABEL_65:
  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v4;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v4) >= v37)
  {
    v39 = v37;
    memcpy(v4, v38, v37);
    v4 += v39;
    return v4;
  }

  return sub_1957130(a3, v38, v37, v4);
}

uint64_t sub_145ABA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = sub_1458DB4(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_17;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v9 = sub_1458DB4(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v10 = sub_1458DB4(*(a1 + 48));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_1458DB4(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = sub_1458DB4(*(a1 + 64));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = sub_1458DB4(*(a1 + 72));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v14 = sub_1458DB4(*(a1 + 80));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v7 = *(a1 + 8);
  if (v7)
  {
    v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_145ADE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    *(a1 + 16) |= 1u;
    v5 = *(a1 + 24);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_14BAE64(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
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

    sub_14BAE64(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2771738;
  }

  sub_144EF20(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_28:
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

    sub_14BAE64(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2771738;
  }

  sub_144EF20(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_36:
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

    sub_14BAE64(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_2771738;
  }

  sub_144EF20(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_44:
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

    sub_14BAE64(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_2771738;
  }

  sub_144EF20(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_52:
  *(a1 + 16) |= 0x20u;
  v25 = *(a1 + 64);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_14BAE64(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_2771738;
  }

  sub_144EF20(v25, v28);
  if ((v4 & 0x40) != 0)
  {
LABEL_60:
    *(a1 + 16) |= 0x40u;
    v29 = *(a1 + 72);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_14BAE64(v31);
      *(a1 + 72) = v29;
    }

    if (*(a2 + 72))
    {
      v32 = *(a2 + 72);
    }

    else
    {
      v32 = &off_2771738;
    }

    sub_144EF20(v29, v32);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_68;
    }

LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_68:
  *(a1 + 16) |= 0x80u;
  v33 = *(a1 + 80);
  if (!v33)
  {
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_14BAE64(v35);
    *(a1 + 80) = v33;
  }

  if (*(a2 + 80))
  {
    v36 = *(a2 + 80);
  }

  else
  {
    v36 = &off_2771738;
  }

  sub_144EF20(v33, v36);
  if ((v4 & 0x100) != 0)
  {
LABEL_76:
    *(a1 + 16) |= 0x100u;
    v37 = *(a1 + 88);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_14BAE64(v39);
      *(a1 + 88) = v37;
    }

    if (*(a2 + 88))
    {
      v40 = *(a2 + 88);
    }

    else
    {
      v40 = &off_2771738;
    }

    sub_144EF20(v37, v40);
  }

LABEL_84:
  v41 = *(a2 + 8);
  if (v41)
  {

    sub_1957EF4((a1 + 8), (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145B0DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F560(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_144F560(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_144F560(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_145B1C4(uint64_t a1)
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

  if (a1 != &off_2771880)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_14B64B0(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A1C8((a1 + 72));
  sub_144A1C8((a1 + 48));
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145B2D8(uint64_t a1)
{
  sub_145B1C4(a1);

  operator delete();
}

uint64_t sub_145B310(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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
      result = sub_144E5CC(v7);
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
      result = sub_144E5CC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      result = sub_144E5CC(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_144E6A8(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      result = sub_144E5CC(*(v1 + 112));
    }
  }

LABEL_18:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_145B41C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v45, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v45 + 1;
    v7 = *v45;
    if (*v45 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v45, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v45 + 2;
      }
    }

    v45 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          v26 = v6 - 1;
          while (1)
          {
            v27 = (v26 + 1);
            v45 = v26 + 1;
            v28 = *(a1 + 88);
            if (v28 && (v29 = *(a1 + 80), v29 < *v28))
            {
              *(a1 + 80) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 72));
              v30 = sub_19593CC(a1 + 72, v31);
              v27 = v45;
            }

            v26 = sub_22095B8(a3, v30, v27);
            v45 = v26;
            if (!v26)
            {
              return 0;
            }

            if (*a3 <= v26 || *v26 != 34)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 2u;
          v38 = *(a1 + 104);
          if (!v38)
          {
            v39 = *(a1 + 8);
            v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if (v39)
            {
              v40 = *v40;
            }

            v38 = sub_14BF484(v40);
            *(a1 + 104) = v38;
            v6 = v45;
          }

          v25 = sub_2209138(a3, v38, v6);
          goto LABEL_72;
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 16) |= 4u;
        v18 = *(a1 + 112);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v18 = v21;
          *(a1 + 112) = v21;
LABEL_37:
          v6 = v45;
        }

LABEL_38:
        v25 = sub_22095B8(a3, v18, v6);
        goto LABEL_72;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 96);
        if (!v18)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_14BAE64(v23);
          v18 = v24;
          *(a1 + 96) = v24;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v32 = v6 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          v45 = v32 + 1;
          v34 = *(a1 + 40);
          if (v34 && (v35 = *(a1 + 32), v35 < *v34))
          {
            *(a1 + 32) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 24));
            v36 = sub_19593CC(a1 + 24, v37);
            v33 = v45;
          }

          v32 = sub_22095B8(a3, v36, v33);
          v45 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = (v12 + 1);
        v45 = v12 + 1;
        v14 = *(a1 + 64);
        if (v14 && (v15 = *(a1 + 56), v15 < *v14))
        {
          *(a1 + 56) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 48));
          v16 = sub_19593CC(a1 + 48, v17);
          v13 = v45;
        }

        v12 = sub_22095B8(a3, v16, v13);
        v45 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 26)
        {
          goto LABEL_73;
        }
      }
    }

    if (v7)
    {
      v41 = (v7 & 7) == 4;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v45;
      }

      return 0;
    }

    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v6 = v45;
    }

    v25 = sub_1952690(v7, v43, v6, a3);
LABEL_72:
    v45 = v25;
    if (!v25)
    {
      return 0;
    }

LABEL_73:
    ;
  }

  return v45;
}

char *sub_145B7D4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_14589F4(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
      v18 = *(v17 + 20);
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v4 + 1);
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = sub_14589F4(v17, v19, a3);
    }
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v22 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 34;
      v23 = *(v22 + 20);
      v4[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v4 + 1);
      }

      else
      {
        v24 = v4 + 2;
      }

      v4 = sub_14589F4(v22, v24, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 104);
    *v4 = 50;
    v26 = *(v25 + 44);
    v4[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v4 + 1);
    }

    else
    {
      v27 = v4 + 2;
    }

    v4 = sub_14B6D24(v25, v27, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 112);
    *v4 = 58;
    v29 = *(v28 + 20);
    v4[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v4 + 1);
    }

    else
    {
      v30 = v4 + 2;
    }

    v4 = sub_14589F4(v28, v30, a3);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v4) >= v34)
  {
    v36 = v34;
    memcpy(v4, v35, v34);
    v4 += v36;
    return v4;
  }

  return sub_1957130(a3, v35, v34, v4);
}

uint64_t sub_145BB4C(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_1458DB4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_1458DB4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v26 = sub_1458DB4(*(a1 + 96));
      v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v27 = sub_14B71B8(*(a1 + 104));
    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) != 0)
    {
LABEL_25:
      v23 = sub_1458DB4(*(a1 + 112));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_26:
  v24 = *(a1 + 8);
  if (v24)
  {
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v16 += v29;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_145BD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_144A454((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_144A454((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 96);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_14BAE64(v22);
        *(a1 + 96) = v20;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = &off_2771738;
      }

      sub_144EF20(v20, v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v24 = *(a1 + 104);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_14BF484(v26);
      *(a1 + 104) = v24;
    }

    if (*(a2 + 104))
    {
      v27 = *(a2 + 104);
    }

    else
    {
      v27 = &off_2773AC8;
    }

    sub_144F194(v24, v27);
    if ((v19 & 4) != 0)
    {
LABEL_31:
      *(a1 + 16) |= 4u;
      v28 = *(a1 + 112);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        sub_14BAE64(v30);
        *(a1 + 112) = v28;
      }

      if (*(a2 + 112))
      {
        v31 = *(a2 + 112);
      }

      else
      {
        v31 = &off_2771738;
      }

      sub_144EF20(v28, v31);
    }
  }

LABEL_39:
  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4((a1 + 8), (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145BFA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
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
    v7 = sub_144F560(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_144F560(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    result = sub_144F560(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 2) != 0)
  {
    result = sub_144F5D0(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_145C090(void *a1)
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

  sub_145C114(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_145C114(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27718F8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145C1D8(void *a1)
{
  sub_145C090(a1);

  operator delete();
}

uint64_t sub_145C210(uint64_t result)
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
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    result = sub_144E5CC(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_144E5CC(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  result = sub_144E5CC(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_144E5CC(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_145C2DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            sub_14BAE64(v27);
            v16 = v28;
            *(a1 + 32) = v28;
LABEL_40:
            v6 = *v33;
          }

LABEL_41:
          v14 = sub_22095B8(a3, v16, v6);
          goto LABEL_42;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_14BAE64(v18);
          v16 = v19;
          *(a1 + 40) = v19;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_14BAE64(v21);
          v16 = v22;
          *(a1 + 48) = v22;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 0x10u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_14BAE64(v24);
          v16 = v25;
          *(a1 + 56) = v25;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = sub_194DB04((a1 + 24), v12);
      v14 = sub_1958890(v13, *v33, a3);
      goto LABEL_42;
    }

    if (v7)
    {
      v29 = (v7 & 7) == 4;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v33;
      }

LABEL_55:
      *v33 = 0;
      return *v33;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v6 = *v33;
    }

    v14 = sub_1952690(v7, v31, v6, a3);
LABEL_42:
    *v33 = v14;
    if (!v14)
    {
      goto LABEL_55;
    }
  }

  return *v33;
}

char *sub_145C564(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 32);
    *v4 = 10;
    v10 = *(v9 + 20);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
    }

    else
    {
      v11 = v4 + 2;
    }

    v4 = sub_14589F4(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
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

  v12 = *(a1 + 40);
  *v4 = 18;
  v13 = *(v12 + 20);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
  }

  else
  {
    v14 = v4 + 2;
  }

  v4 = sub_14589F4(v12, v14, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 48);
  *v4 = 26;
  v16 = *(v15 + 20);
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v4 + 1);
  }

  else
  {
    v17 = v4 + 2;
  }

  v4 = sub_14589F4(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 56);
  *v4 = 34;
  v19 = *(v18 + 20);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_14589F4(v18, v20, a3);
  if (v6)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v21 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_145C7DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1458DB4(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v11 = sub_1458DB4(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_1458DB4(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v8 = sub_1458DB4(*(a1 + 56));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_145C95C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_43;
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
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    v8 = *(a1 + 32);
    if (!v8)
    {
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      *(a1 + 32) = v8;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &off_2771738;
    }

    sub_144EF20(v8, v11);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(a1 + 16) |= 4u;
  v12 = *(a1 + 40);
  if (!v12)
  {
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BAE64(v14);
    *(a1 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = &off_2771738;
  }

  sub_144EF20(v12, v15);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 8u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_14BAE64(v18);
    *(a1 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v19 = *(a2 + 48);
  }

  else
  {
    v19 = &off_2771738;
  }

  sub_144EF20(v16, v19);
  if ((v4 & 0x10) != 0)
  {
LABEL_35:
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_14BAE64(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_2771738;
    }

    sub_144EF20(v20, v23);
  }

LABEL_43:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145CB24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_144F560(*(a1 + 48));
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

  result = sub_144F560(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_145CBA8(void *a1)
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

  sub_145CC38(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A1C8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_145CC38(uint64_t result)
{
  if (result != &off_2771938)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145CCE4(void *a1)
{
  sub_145CBA8(a1);

  operator delete();
}

uint64_t sub_145CD1C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_144E5CC(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_144E5CC(*(v1 + 48));
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_144E5CC(*(v1 + 72));
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 72) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_145CDEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 48);
        if (v13)
        {
          goto LABEL_43;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_14BAE64(v21);
        v13 = v22;
        *(a1 + 48) = v22;
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 56);
        if (v13)
        {
          goto LABEL_43;
        }

        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_14BAE64(v27);
        v13 = v28;
        *(a1 + 56) = v28;
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 64);
        if (v13)
        {
          goto LABEL_43;
        }

        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_14BAE64(v15);
        v13 = v16;
        *(a1 + 64) = v16;
      }

LABEL_42:
      v7 = v41;
LABEL_43:
      v29 = sub_22095B8(a3, v13, v7);
      goto LABEL_44;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_57;
      }

      *(a1 + 16) |= 8u;
      v13 = *(a1 + 72);
      if (v13)
      {
        goto LABEL_43;
      }

      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_14BAE64(v24);
      v13 = v25;
      *(a1 + 72) = v25;
      goto LABEL_42;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_57;
    }

    v5 |= 0x10u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      v41 = v17;
      *(a1 + 80) = v18;
      goto LABEL_45;
    }

    v39 = sub_1958770(v7, v18);
    v41 = v39;
    *(a1 + 80) = v40;
    if (!v39)
    {
      goto LABEL_69;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    v30 = v7 - 1;
    while (1)
    {
      v31 = (v30 + 1);
      v41 = v30 + 1;
      v32 = *(a1 + 40);
      if (v32 && (v33 = *(a1 + 32), v33 < *v32))
      {
        *(a1 + 32) = v33 + 1;
        v34 = *&v32[2 * v33 + 2];
      }

      else
      {
        sub_14BAE64(*(a1 + 24));
        v34 = sub_19593CC(a1 + 24, v35);
        v31 = v41;
      }

      v30 = sub_22095B8(a3, v34, v31);
      v41 = v30;
      if (!v30)
      {
        goto LABEL_69;
      }

      if (*a3 <= v30 || *v30 != 42)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_57:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v29 = sub_1952690(v8, v38, v7, a3);
LABEL_44:
    v41 = v29;
    if (!v29)
    {
      goto LABEL_69;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_145D144(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 56);
  *v4 = 18;
  v11 = *(v10 + 20);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 72);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_14589F4(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v22 = *(v21 + 20);
      v4[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v4 + 1);
      }

      else
      {
        v23 = v4 + 2;
      }

      v4 = sub_14589F4(v21, v23, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 80);
    *v4 = 48;
    v4[1] = v25;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v4[2] = v25 >> 7;
      v24 = v4 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v24 - 1) = v4 | 0x80;
          LODWORD(v4) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v4 + 2;
    }
  }

  else
  {
    v24 = v4;
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v24;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if ((*a3 - v24) >= v31)
  {
    v33 = v31;
    memcpy(v24, v32, v31);
    v24 += v33;
    return v24;
  }

  return sub_1957130(a3, v32, v31, v24);
}

uint64_t sub_145D4B0(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_1458DB4(*(a1 + 48));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v13 = sub_1458DB4(*(a1 + 64));
      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_1458DB4(*(a1 + 56));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v14 = sub_1458DB4(*(a1 + 72));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_145D660(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
  {
    if (v9)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2771738;
      }

      sub_144EF20(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_32;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_14BAE64(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_2771738;
    }

    sub_144EF20(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 16) |= 4u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_14BAE64(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_2771738;
    }

    sub_144EF20(v19, v22);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_40:
    *(a1 + 16) |= 8u;
    v23 = *(a1 + 72);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_14BAE64(v25);
      *(a1 + 72) = v23;
    }

    if (*(a2 + 72))
    {
      v26 = *(a2 + 72);
    }

    else
    {
      v26 = &off_2771738;
    }

    sub_144EF20(v23, v26);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145D86C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_145D91C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145D9BC(uint64_t a1)
{
  sub_145D91C(a1);

  operator delete();
}

uint64_t sub_145D9F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_145DA38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_145DB70(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_145DC38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
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

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_145DCCC(uint64_t a1)
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

  if (a1 != &off_27719B0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
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

void sub_145DD9C(uint64_t a1)
{
  sub_145DCCC(a1);

  operator delete();
}

uint64_t sub_145DDD4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E5CC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_144E5CC(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_145DE48(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_29:
      v29 = v22;
      *(a1 + 40) = v21 != 0;
      goto LABEL_37;
    }

    v27 = sub_19587DC(v7, v21);
    v29 = v27;
    *(a1 + 40) = v28 != 0;
    if (!v27)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 32);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_14BAE64(v19);
      v17 = v20;
      *(a1 + 32) = v20;
      goto LABEL_34;
    }

LABEL_35:
    v16 = sub_22095B8(a3, v17, v7);
    goto LABEL_36;
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 24);
    if (!v17)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_14BAE64(v25);
      v17 = v26;
      *(a1 + 24) = v26;
LABEL_34:
      v7 = v29;
      goto LABEL_35;
    }

    goto LABEL_35;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_36:
    v29 = v16;
    if (!v16)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_145E07C(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 32);
  *v4 = 18;
  v11 = *(v10 + 20);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v13;
    v4 += 2;
  }

LABEL_20:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_145E23C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_1458DB4(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_1458DB4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  result = v3 + ((v2 >> 1) & 2);
LABEL_9:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_145E314(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_14BAE64(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2771738;
      }

      sub_144EF20(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_14BAE64(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2771738;
    }

    sub_144EF20(v10, v13);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145E434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
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

  result = sub_144F560(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_145E490(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E3E40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_145E51C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_145E54C(uint64_t a1)
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

  if (a1 != &off_27719E0)
  {
    v5 = *(a1 + 168);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 176);
    if (v6)
    {
      sub_145DCCC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_144A1C8((a1 + 144));
  sub_144A1C8((a1 + 120));
  sub_144A1C8((a1 + 96));
  sub_144A1C8((a1 + 72));
  sub_144A1C8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145E660(uint64_t a1)
{
  sub_145E54C(a1);

  operator delete();
}

uint64_t sub_145E698(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_144E5CC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_144E5CC(v8);
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
      result = sub_144E5CC(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_144E5CC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_144E5CC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 40);
  if ((v18 & 3) != 0)
  {
    if (v18)
    {
      result = sub_144E5CC(*(a1 + 168));
    }

    if ((v18 & 2) != 0)
    {
      result = sub_145DDD4(*(a1 + 176));
    }
  }

  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 32) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

char *sub_145E7E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v52 = a2;
  if (sub_195ADC0(a3, &v52, a3[11].i32[1]))
  {
    return v52;
  }

  while (1)
  {
    v6 = v52 + 1;
    v7 = *v52;
    if (*v52 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v52, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v52 + 2;
      }
    }

    v52 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 6)
    {
      break;
    }

    if (v7 >> 3 <= 8)
    {
      if (v10 == 7)
      {
        if (v7 == 58)
        {
          v33 = v6 - 1;
          while (1)
          {
            v34 = (v33 + 1);
            v52 = v33 + 1;
            v35 = *(a1 + 136);
            if (v35 && (v36 = *(a1 + 128), v36 < *v35))
            {
              *(a1 + 128) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 120));
              v37 = sub_19593CC(a1 + 120, v38);
              v34 = v52;
            }

            v33 = sub_22095B8(a3, v37, v34);
            v52 = v33;
            if (!v33)
            {
              return 0;
            }

            if (*a3 <= v33 || *v33 != 58)
            {
              goto LABEL_88;
            }
          }
        }
      }

      else if (v10 == 8 && v7 == 66)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v52 = v11 + 1;
          v13 = *(a1 + 160);
          if (v13 && (v14 = *(a1 + 152), v14 < *v13))
          {
            *(a1 + 152) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 144));
            v15 = sub_19593CC(a1 + 144, v16);
            v12 = v52;
          }

          v11 = sub_22095B8(a3, v15, v12);
          v52 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 66)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_78;
    }

    if (v10 == 9)
    {
      if (v7 != 74)
      {
        goto LABEL_78;
      }

      *(a1 + 40) |= 1u;
      v39 = *(a1 + 168);
      if (!v39)
      {
        v40 = *(a1 + 8);
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v41 = *v41;
        }

        sub_14BAE64(v41);
        v39 = v42;
        *(a1 + 168) = v42;
        v6 = v52;
      }

      v26 = sub_22095B8(a3, v39, v6);
    }

    else
    {
      if (v10 != 10 || v7 != 82)
      {
        goto LABEL_78;
      }

      *(a1 + 40) |= 2u;
      v23 = *(a1 + 176);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_14BB324(v25);
        *(a1 + 176) = v23;
        v6 = v52;
      }

      v26 = sub_220A338(a3, v23, v6);
    }

LABEL_87:
    v52 = v26;
    if (!v26)
    {
      return 0;
    }

LABEL_88:
    if (sub_195ADC0(a3, &v52, a3[11].i32[1]))
    {
      return v52;
    }
  }

  if (v10 == 4)
  {
    if (v7 == 34)
    {
      v27 = v6 - 1;
      while (1)
      {
        v28 = (v27 + 1);
        v52 = v27 + 1;
        v29 = *(a1 + 64);
        if (v29 && (v30 = *(a1 + 56), v30 < *v29))
        {
          *(a1 + 56) = v30 + 1;
          v31 = *&v29[2 * v30 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 48));
          v31 = sub_19593CC(a1 + 48, v32);
          v28 = v52;
        }

        v27 = sub_22095B8(a3, v31, v28);
        v52 = v27;
        if (!v27)
        {
          return 0;
        }

        if (*a3 <= v27 || *v27 != 34)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else if (v10 == 5)
  {
    if (v7 == 42)
    {
      v43 = v6 - 1;
      while (1)
      {
        v44 = (v43 + 1);
        v52 = v43 + 1;
        v45 = *(a1 + 88);
        if (v45 && (v46 = *(a1 + 80), v46 < *v45))
        {
          *(a1 + 80) = v46 + 1;
          v47 = *&v45[2 * v46 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 72));
          v47 = sub_19593CC(a1 + 72, v48);
          v44 = v52;
        }

        v43 = sub_22095B8(a3, v47, v44);
        v52 = v43;
        if (!v43)
        {
          return 0;
        }

        if (*a3 <= v43 || *v43 != 42)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else if (v10 == 6 && v7 == 50)
  {
    v17 = v6 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v52 = v17 + 1;
      v19 = *(a1 + 112);
      if (v19 && (v20 = *(a1 + 104), v20 < *v19))
      {
        *(a1 + 104) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        sub_14BAE64(*(a1 + 96));
        v21 = sub_19593CC(a1 + 96, v22);
        v18 = v52;
      }

      v17 = sub_22095B8(a3, v21, v18);
      v52 = v17;
      if (!v17)
      {
        return 0;
      }

      if (*a3 <= v17 || *v17 != 50)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_78:
  if (v7)
  {
    v49 = (v7 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (v7 - 7600 > 0x18F)
    {
      v50 = *(a1 + 8);
      if (v50)
      {
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v51 = sub_11F1920((a1 + 8));
        v6 = v52;
      }

      v26 = sub_1952690(v7, v51, v6, a3);
    }

    else
    {
      v26 = sub_19525AC((a1 + 16), v7, v6, &off_27719E0, (a1 + 8), a3);
    }

    goto LABEL_87;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v52;
  }

  return 0;
}

char *sub_145ECD4(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 34;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_14589F4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * j + 8);
      *a2 = 42;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_14589F4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 112) + 8 * k + 8);
      *a2 = 50;
      v19 = *(v18 + 20);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_14589F4(v18, v20, a3);
    }
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v23 = *(*(a1 + 136) + 8 * m + 8);
      *a2 = 58;
      v24 = *(v23 + 20);
      a2[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, a2 + 1);
      }

      else
      {
        v25 = a2 + 2;
      }

      a2 = sub_14589F4(v23, v25, a3);
    }
  }

  v26 = *(a1 + 152);
  if (v26)
  {
    for (n = 0; n != v26; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v28 = *(*(a1 + 160) + 8 * n + 8);
      *a2 = 66;
      v29 = *(v28 + 20);
      a2[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, a2 + 1);
      }

      else
      {
        v30 = a2 + 2;
      }

      a2 = sub_14589F4(v28, v30, a3);
    }
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v32 = *(a1 + 168);
    *a2 = 74;
    v33 = *(v32 + 20);
    a2[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, a2 + 1);
    }

    else
    {
      v34 = a2 + 2;
    }

    a2 = sub_14589F4(v32, v34, a3);
  }

  if ((v31 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v35 = *(a1 + 176);
    *a2 = 82;
    v36 = *(v35 + 20);
    a2[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, a2 + 1);
    }

    else
    {
      v37 = a2 + 2;
    }

    a2 = sub_145E07C(v35, v37, a3);
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 950, 1000, a2, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if ((*a3 - a2) >= v41)
  {
    v43 = v41;
    memcpy(a2, v42, v41);
    a2 += v43;
    return a2;
  }

  return sub_1957130(a3, v42, v41, a2);
}

uint64_t sub_145F114(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1458DB4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_1458DB4(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_1458DB4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_1458DB4(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_1458DB4(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 40);
  if ((v38 & 3) != 0)
  {
    if (v38)
    {
      v39 = sub_1458DB4(*(a1 + 168));
      v32 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v38 & 2) != 0)
    {
      v40 = sub_145E23C(*(a1 + 176));
      v32 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v41 = *(a1 + 8);
  if (v41)
  {
    v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *((v41 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v44 < 0)
    {
      v44 = *(v43 + 16);
    }

    v32 += v44;
  }

  *(a1 + 44) = v32;
  return v32;
}

void sub_145F36C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A454((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144A454((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144A454((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_144A454((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_144A454((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      *(a1 + 40) |= 1u;
      v30 = *(a1 + 168);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_14BAE64(v32);
        *(a1 + 168) = v30;
      }

      if (*(a2 + 168))
      {
        v33 = *(a2 + 168);
      }

      else
      {
        v33 = &off_2771738;
      }

      sub_144EF20(v30, v33);
    }

    if ((v29 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v34 = *(a1 + 176);
      if (!v34)
      {
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v34 = sub_14BB324(v36);
        *(a1 + 176) = v34;
      }

      if (*(a2 + 176))
      {
        v37 = *(a2 + 176);
      }

      else
      {
        v37 = &off_27719B0;
      }

      sub_145E314(v34, v37);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((a1 + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145F648(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_144F560(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_144F560(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_144F560(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 128);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_144F560(*(*(a1 + 136) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 152);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = sub_144F560(*(*(a1 + 160) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      result = sub_144F560(*(a1 + 168));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 2) == 0)
    {
      return 1;
    }

    result = sub_145E434(*(a1 + 176));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_145F784(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E3EC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = a2;
  *(a1 + 160) = 0;
  return a1;
}

void sub_145F80C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_145F83C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144A1C8(a1 + 17);
  sub_144A1C8(a1 + 14);
  sub_144A1C8(a1 + 11);
  sub_144A1C8(a1 + 8);
  sub_144A1C8(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145F8F4(void *a1)
{
  sub_145F83C(a1);

  operator delete();
}

uint64_t sub_145F92C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_144E5CC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 72);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 80) + 8);
    do
    {
      v8 = *v7++;
      result = sub_144E5CC(v8);
      --v6;
    }

    while (v6);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 96);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 104) + 8);
    do
    {
      v11 = *v10++;
      result = sub_144E5CC(v11);
      --v9;
    }

    while (v9);
    *(a1 + 96) = 0;
  }

  v12 = *(a1 + 120);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 128) + 8);
    do
    {
      v14 = *v13++;
      result = sub_144E5CC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 120) = 0;
  }

  v15 = *(a1 + 144);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 152) + 8);
    do
    {
      v17 = *v16++;
      result = sub_144E5CC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 144) = 0;
  }

  v19 = *(a1 + 8);
  v18 = (a1 + 8);
  if (v19)
  {

    return sub_1957EA8(v18);
  }

  return result;
}

char *sub_145FA50(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  if ((sub_195ADC0(a3, &v45, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v45 + 1;
      v7 = *v45;
      if (*v45 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v45, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v45 + 2;
        }
      }

      v45 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 <= 5)
      {
        if (v10 == 4)
        {
          if (v7 == 34)
          {
            v35 = v6 - 1;
            while (1)
            {
              v36 = (v35 + 1);
              v45 = v35 + 1;
              v37 = *(a1 + 56);
              if (v37 && (v38 = *(a1 + 48), v38 < *v37))
              {
                *(a1 + 48) = v38 + 1;
                v39 = *&v37[2 * v38 + 2];
              }

              else
              {
                sub_14BAE64(*(a1 + 40));
                v39 = sub_19593CC(a1 + 40, v40);
                v36 = v45;
              }

              v35 = sub_22095B8(a3, v39, v36);
              v45 = v35;
              if (!v35)
              {
                return 0;
              }

              if (*a3 <= v35 || *v35 != 34)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v10 == 5 && v7 == 42)
        {
          v17 = v6 - 1;
          while (1)
          {
            v18 = (v17 + 1);
            v45 = v17 + 1;
            v19 = *(a1 + 80);
            if (v19 && (v20 = *(a1 + 72), v20 < *v19))
            {
              *(a1 + 72) = v20 + 1;
              v21 = *&v19[2 * v20 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 64));
              v21 = sub_19593CC(a1 + 64, v22);
              v18 = v45;
            }

            v17 = sub_22095B8(a3, v21, v18);
            v45 = v17;
            if (!v17)
            {
              return 0;
            }

            if (*a3 <= v17 || *v17 != 42)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 6)
      {
        if (v7 == 50)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            v45 = v23 + 1;
            v25 = *(a1 + 104);
            if (v25 && (v26 = *(a1 + 96), v26 < *v25))
            {
              *(a1 + 96) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 88));
              v27 = sub_19593CC(a1 + 88, v28);
              v24 = v45;
            }

            v23 = sub_22095B8(a3, v27, v24);
            v45 = v23;
            if (!v23)
            {
              return 0;
            }

            if (*a3 <= v23 || *v23 != 50)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 7)
      {
        if (v7 == 58)
        {
          v29 = v6 - 1;
          while (1)
          {
            v30 = (v29 + 1);
            v45 = v29 + 1;
            v31 = *(a1 + 128);
            if (v31 && (v32 = *(a1 + 120), v32 < *v31))
            {
              *(a1 + 120) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 112));
              v33 = sub_19593CC(a1 + 112, v34);
              v30 = v45;
            }

            v29 = sub_22095B8(a3, v33, v30);
            v45 = v29;
            if (!v29)
            {
              return 0;
            }

            if (*a3 <= v29 || *v29 != 58)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 8 && v7 == 66)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v45 = v11 + 1;
          v13 = *(a1 + 152);
          if (v13 && (v14 = *(a1 + 144), v14 < *v13))
          {
            *(a1 + 144) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 136));
            v15 = sub_19593CC(a1 + 136, v16);
            v12 = v45;
          }

          v11 = sub_22095B8(a3, v15, v12);
          v45 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 66)
          {
            goto LABEL_73;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      if (v7 - 7600 > 0x18F)
      {
        v43 = *(a1 + 8);
        if (v43)
        {
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v44 = sub_11F1920((a1 + 8));
          v6 = v45;
        }

        v42 = sub_1952690(v7, v44, v6, a3);
      }

      else
      {
        v42 = sub_19525AC((a1 + 16), v7, v6, &off_2771A98, (a1 + 8), a3);
      }

      v45 = v42;
      if (!v42)
      {
        return 0;
      }

LABEL_73:
      if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
      {
        return v45;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v45;
    }

    return 0;
  }

  return v45;
}

char *sub_145FE88(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
      *a2 = 34;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_14589F4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 80) + 8 * j + 8);
      *a2 = 42;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_14589F4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 104) + 8 * k + 8);
      *a2 = 50;
      v19 = *(v18 + 20);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_14589F4(v18, v20, a3);
    }
  }

  v21 = *(a1 + 120);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v23 = *(*(a1 + 128) + 8 * m + 8);
      *a2 = 58;
      v24 = *(v23 + 20);
      a2[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, a2 + 1);
      }

      else
      {
        v25 = a2 + 2;
      }

      a2 = sub_14589F4(v23, v25, a3);
    }
  }

  v26 = *(a1 + 144);
  if (v26)
  {
    for (n = 0; n != v26; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v28 = *(*(a1 + 152) + 8 * n + 8);
      *a2 = 66;
      v29 = *(v28 + 20);
      a2[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, a2 + 1);
      }

      else
      {
        v30 = a2 + 2;
      }

      a2 = sub_14589F4(v28, v30, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 950, 1000, a2, a3);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - a2) >= v34)
  {
    v36 = v34;
    memcpy(a2, v35, v34);
    a2 += v36;
    return a2;
  }

  return sub_1957130(a3, v35, v34, a2);
}

uint64_t sub_14601FC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1458DB4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_1458DB4(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  v18 = v11 + v17;
  v19 = *(a1 + 104);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_1458DB4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 120);
  v25 = v18 + v24;
  v26 = *(a1 + 128);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_1458DB4(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 144);
  v32 = v25 + v31;
  v33 = *(a1 + 152);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_1458DB4(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 8);
  if (v38)
  {
    v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v41 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v41 < 0)
    {
      v41 = *(v40 + 16);
    }

    v32 += v41;
  }

  *(a1 + 160) = v32;
  return v32;
}

void sub_14603E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_144A454((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_144A454((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_144A454((a1 + 88), v16, (v15 + 8), v14, **(a1 + 104) - *(a1 + 96));
    v17 = *(a1 + 96) + v14;
    *(a1 + 96) = v17;
    v18 = *(a1 + 104);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a2 + 128);
    v21 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_144A454((a1 + 112), v21, (v20 + 8), v19, **(a1 + 128) - *(a1 + 120));
    v22 = *(a1 + 120) + v19;
    *(a1 + 120) = v22;
    v23 = *(a1 + 128);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 144);
  if (v24)
  {
    v25 = *(a2 + 152);
    v26 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_144A454((a1 + 136), v26, (v25 + 8), v24, **(a1 + 152) - *(a1 + 144));
    v27 = *(a1 + 144) + v24;
    *(a1 + 144) = v27;
    v28 = *(a1 + 152);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1460620(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 72);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_144F560(*(*(a1 + 80) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 96);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_144F560(*(*(a1 + 104) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 120);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_144F560(*(*(a1 + 128) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a1 + 144);
  do
  {
    v14 = v16 < 1;
    if (v16 < 1)
    {
      break;
    }

    v17 = v16 - 1;
    v18 = sub_144F560(*(*(a1 + 152) + 8 * v16));
    v16 = v17;
  }

  while ((v18 & 1) != 0);
  return v14;
}

uint64_t sub_1460734(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E3F40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 100) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_14607AC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14607DC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
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

  sub_1460868(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1460868(uint64_t (***result)()))()
{
  if (result != &off_2771B40)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_145F83C(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_145E54C(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_145D91C(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_145B1C4(v7);
      operator delete();
    }

    v8 = v1[12];
    if (v8)
    {
      sub_145B1C4(v8);
      operator delete();
    }

    result = v1[13];
    if (result)
    {
      sub_145CBA8(result);

      operator delete();
    }
  }

  return result;
}

void sub_14609A4(uint64_t a1)
{
  sub_14607DC(a1);

  operator delete();
}

uint64_t sub_14609DC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
    result = sub_145F92C(*(a1 + 48));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_145E698(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_145D9F4(*(a1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_144E5CC(*(a1 + 72));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    result = sub_145B310(*(a1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = sub_144E5CC(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  result = sub_145B310(*(a1 + 96));
  if (v3 < 0)
  {
LABEL_10:
    result = sub_145CD1C(*(a1 + 104));
  }

LABEL_11:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 104) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_1460ABC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v43 = a2;
  if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
  {
    return v43;
  }

  while (1)
  {
    v6 = v43 + 1;
    v7 = *v43;
    if (*v43 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v43, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v43 + 2;
      }
    }

    v43 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      break;
    }

    if (v7 >> 3 <= 6)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 40) |= 0x10u;
          v19 = *(a1 + 80);
          if (!v19)
          {
            v34 = *(a1 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            sub_14BAE64(v35);
            v19 = v36;
            *(a1 + 80) = v36;
            goto LABEL_69;
          }

          goto LABEL_70;
        }

        goto LABEL_77;
      }

      if (v10 != 6 || v7 != 50)
      {
        goto LABEL_77;
      }

      *(a1 + 40) |= 0x20u;
      v23 = *(a1 + 88);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_14BB0C4(v25);
        *(a1 + 88) = v23;
LABEL_62:
        v6 = v43;
      }

LABEL_63:
      v18 = sub_220CA98(a3, v23, v6);
      goto LABEL_86;
    }

    if (v10 == 7)
    {
      if (v7 != 58)
      {
        goto LABEL_77;
      }

      *(a1 + 40) |= 0x40u;
      v23 = *(a1 + 96);
      if (!v23)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v23 = sub_14BB0C4(v33);
        *(a1 + 96) = v23;
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (v10 != 8)
    {
      if (v10 == 10 && v7 == 80)
      {
        v12 = v6 + 1;
        v11 = *v6;
        if (v11 < 0)
        {
          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if (v13 < 0)
          {
            v43 = sub_19587DC(v6, v11);
            if (!v43)
            {
              return 0;
            }

            goto LABEL_17;
          }

          v12 = v6 + 2;
        }

        v43 = v12;
LABEL_17:
        if (v11 > 4)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 112) = v11;
        }

        goto LABEL_87;
      }

      goto LABEL_77;
    }

    if (v7 != 66)
    {
      goto LABEL_77;
    }

    *(a1 + 40) |= 0x80u;
    v37 = *(a1 + 104);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_14BB1FC(v39);
      *(a1 + 104) = v37;
      v6 = v43;
    }

    v18 = sub_220CB28(a3, v37, v6);
LABEL_86:
    v43 = v18;
    if (!v18)
    {
      return 0;
    }

LABEL_87:
    if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
    {
      return v43;
    }
  }

  if (v7 >> 3 <= 2)
  {
    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_77;
      }

      *(a1 + 40) |= 1u;
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_14BB400(v28);
        *(a1 + 48) = v26;
        v6 = v43;
      }

      v18 = sub_220C8E8(a3, v26, v6);
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_77;
      }

      *(a1 + 40) |= 2u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_14BB3A4(v17);
        *(a1 + 56) = v15;
        v6 = v43;
      }

      v18 = sub_220C978(a3, v15, v6);
    }

    goto LABEL_86;
  }

  if (v10 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_77;
    }

    *(a1 + 40) |= 4u;
    v29 = *(a1 + 64);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_14BB2A0(v31);
      *(a1 + 64) = v29;
      v6 = v43;
    }

    v18 = sub_220CA08(a3, v29, v6);
    goto LABEL_86;
  }

  if (v10 == 4 && v7 == 34)
  {
    *(a1 + 40) |= 8u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_14BAE64(v21);
      v19 = v22;
      *(a1 + 72) = v22;
LABEL_69:
      v6 = v43;
    }

LABEL_70:
    v18 = sub_22095B8(a3, v19, v6);
    goto LABEL_86;
  }

LABEL_77:
  if (v7)
  {
    v40 = (v7 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    if (v7 - 7600 > 0x18F)
    {
      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
        v6 = v43;
      }

      v18 = sub_1952690(v7, v42, v6, a3);
    }

    else
    {
      v18 = sub_19525AC((a1 + 16), v7, v6, &off_2771B40, (a1 + 8), a3);
    }

    goto LABEL_86;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v43;
  }

  return 0;
}

char *sub_1460F40(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 48);
    *v4 = 10;
    v9 = *(v8 + 160);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_145FE88(v8, v10, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 18;
  v12 = *(v11 + 44);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_145ECD4(v11, v13, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 64);
  *v4 = 26;
  v15 = *(v14 + 20);
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v4 + 1);
  }

  else
  {
    v16 = v4 + 2;
  }

  v4 = sub_145DB70(v14, v16, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 72);
  *v4 = 34;
  v18 = *(v17 + 20);
  v4[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v4 + 1);
  }

  else
  {
    v19 = v4 + 2;
  }

  v4 = sub_14589F4(v17, v19, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 80);
  *v4 = 42;
  v21 = *(v20 + 20);
  v4[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v4 + 1);
  }

  else
  {
    v22 = v4 + 2;
  }

  v4 = sub_14589F4(v20, v22, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v23 = *(a1 + 88);
  *v4 = 50;
  v24 = *(v23 + 20);
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v4 + 1);
  }

  else
  {
    v25 = v4 + 2;
  }

  v4 = sub_145B7D4(v23, v25, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v29 = *(a1 + 104);
    *v4 = 66;
    v30 = *(v29 + 20);
    v4[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v4 + 1);
    }

    else
    {
      v31 = v4 + 2;
    }

    v4 = sub_145D144(v29, v31, a3);
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v26 = *(a1 + 96);
  *v4 = 58;
  v27 = *(v26 + 20);
  v4[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v4 + 1);
  }

  else
  {
    v28 = v4 + 2;
  }

  v4 = sub_145B7D4(v26, v28, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    v7 = v4;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v32 = *(a1 + 112);
  *v4 = 80;
  v4[1] = v32;
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v4[2] = v32 >> 7;
    v7 = v4 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v33 >> 7);
        *v7++ = v33 >> 7;
        v34 = v33 >> 14;
        v33 >>= 7;
      }

      while (v34);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_66:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 950, 1000, v7, a3);
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v7;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v7) >= v38)
  {
    v40 = v38;
    memcpy(v7, v39, v38);
    v7 += v40;
    return v7;
  }

  return sub_1957130(a3, v39, v38, v7);
}

uint64_t sub_14613D4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v7 = sub_14601FC(*(a1 + 48));
    v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = sub_145F114(*(a1 + 56));
  v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = sub_145DC38(*(a1 + 64));
  v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = sub_1458DB4(*(a1 + 72));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v12 = sub_145BB4C(*(a1 + 88));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_18:
  v11 = sub_1458DB4(*(a1 + 80));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_20:
  v13 = sub_145BB4C(*(a1 + 96));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_145D4B0(*(a1 + 104));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0x100) != 0)
  {
    v5 = *(a1 + 112);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 44) = v2;
  return v2;
}