void sub_1D360B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    sub_325C(&__p, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    __p.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  sub_16E58B4(a2, 0, 0);
  *(a2 + 104) = 0;
  *(a2 + 96) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  if ((*(a1 + 16) & 8) != 0)
  {
    if (*(*(a1 + 152) + 24))
    {
      v7 = *(*(a1 + 152) + 24);
    }

    else
    {
      v7 = &off_277E650;
    }

    sub_16E65C8(a2, v7);
    v8 = *(a1 + 152);
    if (!v8)
    {
      v8 = &off_2787BC0;
    }

    *(a2 + 96) = *(v8 + 8);
  }

  else
  {
    v6 = *(a2 + 16);
    *(a2 + 72) = 0;
    *(a2 + 16) = v6 | 0xA;
    *(a2 + 56) = 0x3FF0000000000000;
  }

  std::string::operator=((a2 + 104), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D361BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D361E8(uint64_t a1, uint64_t a2)
{
  sub_16CA378(a1, a2);
  if (a1 != a2)
  {
    sub_1D366CC((a1 + 56), *(a2 + 56), (a2 + 64));
  }

  return a1;
}

char *sub_1D36230@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[1751] < 0)
  {
    return sub_325C(a2, *(result + 216), *(result + 217));
  }

  *a2 = *(result + 108);
  *(a2 + 16) = *(result + 218);
  return result;
}

void sub_1D36290(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_1F65088(*a2, &v12);
    v4 = v12;
    v5 = v13;
    v14 = &v12;
    sub_1A3CCC4(&v14);
    if (v4 != v5)
    {
      sub_1F65088(*a2, &v12);
      v6 = v12;
      v7 = v13;
      if (v12 != v13)
      {
        v8 = *(a1 + 2665);
        while (1)
        {
          v9 = *(*v6 + 296);
          if ((v9 & 0xFFFFFFFD) == 0)
          {
            break;
          }

          if (v9 == 4 || v9 == 1)
          {
            *(a1 + 2665) = 0;
LABEL_16:
            v8 = 0;
            v6 += 16;
            if (*(a1 + 2664) != 1 || v6 == v7)
            {
              goto LABEL_21;
            }
          }

          else
          {
LABEL_13:
            if ((v8 & 1) == 0)
            {
              goto LABEL_16;
            }

            v6 += 16;
            v8 = 1;
            if (v6 == v7)
            {
              goto LABEL_21;
            }
          }
        }

        *(a1 + 2664) = 0;
        goto LABEL_13;
      }

LABEL_21:
      v14 = &v12;
      sub_1A3CCC4(&v14);
    }
  }
}

void sub_1D3637C(uint64_t a1, uint64_t *a2)
{
  sub_1D36290(a1, a2);
  v4 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 1760);
  *(a1 + 1752) = v4;
  if (v5)
  {

    sub_1220A18(v5);
  }
}

BOOL sub_1D363D8(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *(a1 + 1096);
  sub_1F65088(*a2, &v12);
  v4 = v12;
  v5 = v13;
  v14 = &v12;
  sub_1A3CCC4(&v14);
  if (v4 == v5)
  {
    return 0;
  }

  sub_1F65088(*a2, &v12);
  for (i = v12; ; i += 2)
  {
    if (i == v13)
    {
      v14 = &v12;
      sub_1A3CCC4(&v14);
      return 0;
    }

    v7 = *i;
    v8 = *(*i + 296);
    if (v8 == 4)
    {
      break;
    }

    if (v8 == 1)
    {
      if (*(v7 + 288) != 2)
      {
        sub_5AF20();
      }

      goto LABEL_14;
    }
  }

  if (*(v7 + 288) != 4)
  {
    sub_5AF20();
  }

LABEL_14:
  v11 = *(v7 + 72);
  v9 = *(v7 + 80) != v11 && *(v11 + 24) > v3;
  v14 = &v12;
  sub_1A3CCC4(&v14);
  return v9;
}

void sub_1D364F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1A3CCC4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D36514(uint64_t a1, uint64_t *a2)
{
  result = sub_19727E0(a1 + 2120);
  if (result)
  {
    if (sub_1D363D8(a1, a2) || (result = sub_1972400(a1 + 2120), result))
    {
      result = sub_197280C(a1 + 2120);
      if ((result & 1) == 0)
      {
        *(a1 + 2496) = 9;
      }
    }
  }

  return result;
}

void sub_1D36574(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 1256);
  if (v3 != a2)
  {
    *(a1 + 1288) = *(a2 + 32);
    sub_1D3698C(v3, *(a2 + 16), 0);
  }
}

double sub_1D365CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (a1 != a2 && *(a1 + 96))
    {
      v2 = *(a1 + 8);
      if ((v2 & 2) != 0)
      {
        v2 = 0;
      }

      else if (v2)
      {
        v2 = *(v2 & 0xFFFFFFFFFFFFFFFCLL);
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

      if (v2 == v6)
      {
        *&result = sub_16E668C(a1, a2).n128_u64[0];
      }

      else
      {
        sub_16E65C8(a1, a2);
      }
    }
  }

  else
  {
    if (*(a1 + 96))
    {
      v3 = sub_16E5B34(a1);
      v5 = 0;
    }

    else
    {
      v3 = sub_19B91BC(a1, a2);
      v5 = 1;
    }

    *(v3 + 96) = v5;
  }

  return result;
}

void sub_1D3666C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_16E5B34(v3 - 96);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t **sub_1D366CC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1961430(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v10 = sub_1AB630C(v5, &v16, v15 + 4);
          sub_12235F4(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1961430(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1D3685C(&v13);
  }

  if (a2 != a3)
  {
    sub_1D368B4();
  }

  return result;
}

uint64_t sub_1D3685C(uint64_t a1)
{
  sub_196318C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_196318C(*a1, v2);
  }

  return a1;
}

void sub_1D3691C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1963054(va);
  _Unwind_Resume(a1);
}

void sub_1D36930(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[64] == *(a2 + 64))
  {
    if (a1[64])
    {

      sub_139ACDC(a1, a2);
    }
  }

  else if (a1[64])
  {
    *(sub_139A0E0(a1) + 64) = 0;
  }

  else
  {
    *(sub_1399FF4(a1, a2) + 64) = 1;
  }
}

void sub_1D3698C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_1D36A88((v8 + 16), (v4 + 2));
        v10 = *v8;
        sub_1D36AD8(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_1965C08(a1, v10);
  }

  if (v4 != a3)
  {
    sub_1D36F58();
  }
}

void sub_1D36A58(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1965C08(v1, v2);
  __cxa_rethrow();
}

std::string *sub_1D36A88(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = data;
  a1[1].__r_.__value_.__l.__size_ = size;
  if (v6)
  {
    sub_1220A18(v6);
  }

  return a1;
}

uint64_t sub_1D36AD8(void *a1, uint64_t a2)
{
  v4 = sub_1220A84(a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = sub_1D36B2C(a1, v4, (a2 + 16));
  sub_1961050(a1, a2, v5);
  return a2;
}

const void **sub_1D36B2C(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_1D36CA4(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_1220AC4(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_1D36CA4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1D36D94(a1, prime);
    }
  }
}

void sub_1D36D94(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1D36FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1965AC4(va);
  _Unwind_Resume(a1);
}

void sub_1D37048()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27EF3F0, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}

void sub_1D3E030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v86 = -13944;
  v87 = v80;
  do
  {
    v87 = sub_195CE20(v87) - 56;
    v86 += 56;
  }

  while (v86);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v81 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v81 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v81 + 88));
  }

  if (a67 < 0)
  {
    operator delete(*(v81 + 112));
  }

  if (a72 < 0)
  {
    operator delete(*(v81 + 144));
  }

  if (a73 < 0)
  {
    operator delete(*(v81 + 168));
  }

  if (a74 < 0)
  {
    operator delete(*(v81 + 200));
  }

  if (a75 < 0)
  {
    operator delete(*(v81 + 224));
  }

  if (a76 < 0)
  {
    operator delete(*(v81 + 256));
  }

  if (a77 < 0)
  {
    operator delete(*(v81 + 280));
  }

  if (a78 < 0)
  {
    operator delete(*(v81 + 312));
  }

  if (a79 < 0)
  {
    operator delete(*(v81 + 336));
  }

  if (a80 < 0)
  {
    operator delete(*(v81 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v81 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v81 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v81 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v81 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v81 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v81 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v81 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v81 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v81 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v81 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v81 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v81 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v81 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v81 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v81 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v81 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v81 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v81 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v81 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v81 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v81 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v81 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v81 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v81 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v81 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v81 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v81 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v81 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v81 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v81 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v81 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v81 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v81 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v81 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v81 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v81 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v81 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v81 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v81 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v81 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v81 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v81 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v81 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v81 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v81 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v81 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v81 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v81 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v81 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v81 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v81 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v81 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v81 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v81 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v81 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v81 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v81 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v81 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v81 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v81 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v81 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v81 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v81 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v81 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v81 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v81 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v81 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v81 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v81 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v81 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v81 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v81 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v81 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v81 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v81 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v81 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v81 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v81 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v81 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v81 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v81 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v81 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v81 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v81 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v81 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v81 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v81 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v81 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v81 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v81 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v81 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v81 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v81 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v81 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v81 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v81 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v81 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v81 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v81 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v81 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v81 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v81 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v81 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v81 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v81 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v81 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v81 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v81 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v81 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v81 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v81 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v81 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v81 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v81 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v81 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v81 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v81 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v81 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v81 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v81 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v81 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v81 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v81 + 3808));
  }

  if (*(v81 + 3863) < 0)
  {
    operator delete(*(v81 + 3840));
  }

  if (*(v81 + 3887) < 0)
  {
    operator delete(*(v81 + 3864));
  }

  if (*(v81 + 3919) < 0)
  {
    operator delete(*(v81 + 3896));
  }

  if (*(v81 + 3943) < 0)
  {
    operator delete(*(v81 + 3920));
  }

  if (*(v81 + 3975) < 0)
  {
    operator delete(*(v81 + 3952));
  }

  if (*(v81 + 3999) < 0)
  {
    operator delete(*(v81 + 3976));
  }

  if (*(v81 + 4031) < 0)
  {
    operator delete(*(v81 + 4008));
  }

  if (*(v81 + 4055) < 0)
  {
    operator delete(*(v81 + 4032));
  }

  if (*(v81 + 4087) < 0)
  {
    operator delete(*(v81 + 4064));
  }

  if (*(v84 + 23) < 0)
  {
    operator delete(*v84);
  }

  if (*(v84 + 55) < 0)
  {
    operator delete(*(v84 + 32));
  }

  if (*(v84 + 79) < 0)
  {
    operator delete(*(v84 + 56));
  }

  if (*(v84 + 111) < 0)
  {
    operator delete(*(v84 + 88));
  }

  if (*(v84 + 135) < 0)
  {
    operator delete(*(v84 + 112));
  }

  if (*(v84 + 167) < 0)
  {
    operator delete(*(v84 + 144));
  }

  if (*(v84 + 191) < 0)
  {
    operator delete(*(v84 + 168));
  }

  if (*(v84 + 223) < 0)
  {
    operator delete(*(v84 + 200));
  }

  if (*(v84 + 247) < 0)
  {
    operator delete(*(v84 + 224));
  }

  if (*(v84 + 279) < 0)
  {
    operator delete(*(v84 + 256));
  }

  if (*(v84 + 303) < 0)
  {
    operator delete(*(v84 + 280));
  }

  if (*(v84 + 335) < 0)
  {
    operator delete(*(v84 + 312));
  }

  if (*(v84 + 359) < 0)
  {
    operator delete(*(v84 + 336));
  }

  if (*(v84 + 391) < 0)
  {
    operator delete(*(v84 + 368));
  }

  if (*(v84 + 415) < 0)
  {
    operator delete(*(v84 + 392));
  }

  if (*(v84 + 447) < 0)
  {
    operator delete(*(v84 + 424));
  }

  if (*(v84 + 471) < 0)
  {
    operator delete(*(v84 + 448));
  }

  if (*(v84 + 503) < 0)
  {
    operator delete(*(v84 + 480));
  }

  if (*(v84 + 527) < 0)
  {
    operator delete(*(v84 + 504));
  }

  if (*(v84 + 559) < 0)
  {
    operator delete(*(v84 + 536));
  }

  if (*(v84 + 583) < 0)
  {
    operator delete(*(v84 + 560));
  }

  if (*(v84 + 615) < 0)
  {
    operator delete(*(v84 + 592));
  }

  if (*(v84 + 639) < 0)
  {
    operator delete(*(v84 + 616));
  }

  if (*(v84 + 671) < 0)
  {
    operator delete(*(v84 + 648));
  }

  if (*(v84 + 695) < 0)
  {
    operator delete(*(v84 + 672));
  }

  if (*(v84 + 727) < 0)
  {
    operator delete(*(v84 + 704));
  }

  if (*(v84 + 751) < 0)
  {
    operator delete(*(v84 + 728));
  }

  if (*(v84 + 783) < 0)
  {
    operator delete(*(v84 + 760));
  }

  if (*(v84 + 807) < 0)
  {
    operator delete(*(v84 + 784));
  }

  if (*(v84 + 839) < 0)
  {
    operator delete(*(v84 + 816));
  }

  if (*(v84 + 863) < 0)
  {
    operator delete(*(v84 + 840));
  }

  if (*(v84 + 895) < 0)
  {
    operator delete(*(v84 + 872));
  }

  if (*(v84 + 919) < 0)
  {
    operator delete(*(v84 + 896));
  }

  if (*(v84 + 951) < 0)
  {
    operator delete(*(v84 + 928));
  }

  if (*(v84 + 975) < 0)
  {
    operator delete(*(v84 + 952));
  }

  if (*(v84 + 1007) < 0)
  {
    operator delete(*(v84 + 984));
  }

  if (*(v84 + 1031) < 0)
  {
    operator delete(*(v84 + 1008));
  }

  if (*(v84 + 1063) < 0)
  {
    operator delete(*(v84 + 1040));
  }

  if (*(v84 + 1087) < 0)
  {
    operator delete(*(v84 + 1064));
  }

  if (*(v84 + 1119) < 0)
  {
    operator delete(*(v84 + 1096));
  }

  if (*(v84 + 1143) < 0)
  {
    operator delete(*(v84 + 1120));
  }

  if (*(v84 + 1175) < 0)
  {
    operator delete(*(v84 + 1152));
  }

  if (*(v84 + 1199) < 0)
  {
    operator delete(*(v84 + 1176));
  }

  if (*(v84 + 1231) < 0)
  {
    operator delete(*(v84 + 1208));
  }

  if (*(v84 + 1255) < 0)
  {
    operator delete(*(v84 + 1232));
  }

  if (*(v84 + 1287) < 0)
  {
    operator delete(*(v84 + 1264));
  }

  if (*(v84 + 1311) < 0)
  {
    operator delete(*(v84 + 1288));
  }

  if (*(v84 + 1343) < 0)
  {
    operator delete(*(v84 + 1320));
  }

  if (*(v84 + 1367) < 0)
  {
    operator delete(*(v84 + 1344));
  }

  if (*(v84 + 1399) < 0)
  {
    operator delete(*(v84 + 1376));
  }

  if (*(v84 + 1423) < 0)
  {
    operator delete(*(v84 + 1400));
  }

  if (*(v84 + 1455) < 0)
  {
    operator delete(*(v84 + 1432));
  }

  if (*(v84 + 1479) < 0)
  {
    operator delete(*(v84 + 1456));
  }

  if (*(v84 + 1511) < 0)
  {
    operator delete(*(v84 + 1488));
  }

  if (*(v84 + 1535) < 0)
  {
    operator delete(*(v84 + 1512));
  }

  if (*(v84 + 1567) < 0)
  {
    operator delete(*(v84 + 1544));
  }

  if (*(v84 + 1591) < 0)
  {
    operator delete(*(v84 + 1568));
  }

  if (*(v84 + 1623) < 0)
  {
    operator delete(*(v84 + 1600));
  }

  if (*(v84 + 1647) < 0)
  {
    operator delete(*(v84 + 1624));
  }

  if (*(v84 + 1679) < 0)
  {
    operator delete(*(v84 + 1656));
  }

  if (*(v84 + 1703) < 0)
  {
    operator delete(*(v84 + 1680));
  }

  if (*(v84 + 1735) < 0)
  {
    operator delete(*(v84 + 1712));
  }

  if (*(v84 + 1759) < 0)
  {
    operator delete(*(v84 + 1736));
  }

  if (*(v84 + 1791) < 0)
  {
    operator delete(*(v84 + 1768));
  }

  if (*(v84 + 1815) < 0)
  {
    operator delete(*(v84 + 1792));
  }

  if (*(v84 + 1847) < 0)
  {
    operator delete(*(v84 + 1824));
  }

  if (*(v84 + 1871) < 0)
  {
    operator delete(*(v84 + 1848));
  }

  if (*(v84 + 1903) < 0)
  {
    operator delete(*(v84 + 1880));
  }

  if (*(v84 + 1927) < 0)
  {
    operator delete(*(v84 + 1904));
  }

  if (*(v84 + 1959) < 0)
  {
    operator delete(*(v84 + 1936));
  }

  if (*(v84 + 1983) < 0)
  {
    operator delete(*(v84 + 1960));
  }

  if (*(v84 + 2015) < 0)
  {
    operator delete(*(v84 + 1992));
  }

  if (*(v84 + 2039) < 0)
  {
    operator delete(*(v84 + 2016));
  }

  if (*(v84 + 2071) < 0)
  {
    operator delete(*(v84 + 2048));
  }

  if (*(v84 + 2095) < 0)
  {
    operator delete(*(v84 + 2072));
  }

  if (*(v84 + 2127) < 0)
  {
    operator delete(*(v84 + 2104));
  }

  if (*(v84 + 2151) < 0)
  {
    operator delete(*(v84 + 2128));
  }

  if (*(v84 + 2183) < 0)
  {
    operator delete(*(v84 + 2160));
  }

  if (*(v84 + 2207) < 0)
  {
    operator delete(*(v84 + 2184));
  }

  if (*(v84 + 2239) < 0)
  {
    operator delete(*(v84 + 2216));
  }

  if (*(v84 + 2263) < 0)
  {
    operator delete(*(v84 + 2240));
  }

  if (*(v84 + 2295) < 0)
  {
    operator delete(*(v84 + 2272));
  }

  if (*(v84 + 2319) < 0)
  {
    operator delete(*(v84 + 2296));
  }

  if (*(v84 + 2351) < 0)
  {
    operator delete(*(v84 + 2328));
  }

  if (*(v84 + 2375) < 0)
  {
    operator delete(*(v84 + 2352));
  }

  if (*(v84 + 2407) < 0)
  {
    operator delete(*(v84 + 2384));
  }

  if (*(v84 + 2431) < 0)
  {
    operator delete(*(v84 + 2408));
  }

  if (*(v84 + 2463) < 0)
  {
    operator delete(*(v84 + 2440));
  }

  if (*(v84 + 2487) < 0)
  {
    operator delete(*(v84 + 2464));
  }

  if (*(v84 + 2519) < 0)
  {
    operator delete(*(v84 + 2496));
  }

  if (*(v84 + 2543) < 0)
  {
    operator delete(*(v84 + 2520));
  }

  if (*(v84 + 2575) < 0)
  {
    operator delete(*(v84 + 2552));
  }

  if (*(v84 + 2599) < 0)
  {
    operator delete(*(v84 + 2576));
  }

  if (*(v84 + 2631) < 0)
  {
    operator delete(*(v84 + 2608));
  }

  if (*(v84 + 2655) < 0)
  {
    operator delete(*(v84 + 2632));
  }

  if (*(v84 + 2687) < 0)
  {
    operator delete(*(v84 + 2664));
  }

  if (*(v84 + 2711) < 0)
  {
    operator delete(*(v84 + 2688));
  }

  if (*(v84 + 2743) < 0)
  {
    operator delete(*(v84 + 2720));
  }

  if (*(v84 + 2767) < 0)
  {
    operator delete(*(v84 + 2744));
  }

  if (*(v84 + 2799) < 0)
  {
    operator delete(*(v84 + 2776));
  }

  if (*(v84 + 2823) < 0)
  {
    operator delete(*(v84 + 2800));
  }

  if (*(v84 + 2855) < 0)
  {
    operator delete(*(v84 + 2832));
  }

  if (*(v84 + 2879) < 0)
  {
    operator delete(*(v84 + 2856));
  }

  if (*(v84 + 2911) < 0)
  {
    operator delete(*(v84 + 2888));
  }

  if (*(v84 + 2935) < 0)
  {
    operator delete(*(v84 + 2912));
  }

  if (*(v84 + 2967) < 0)
  {
    operator delete(*(v84 + 2944));
  }

  if (*(v84 + 2991) < 0)
  {
    operator delete(*(v84 + 2968));
  }

  if (*(v84 + 3023) < 0)
  {
    operator delete(*(v84 + 3000));
  }

  if (*(v84 + 3047) < 0)
  {
    operator delete(*(v84 + 3024));
  }

  if (*(v84 + 3079) < 0)
  {
    operator delete(*(v84 + 3056));
  }

  if (*(v84 + 3103) < 0)
  {
    operator delete(*(v84 + 3080));
  }

  if (*(v84 + 3135) < 0)
  {
    operator delete(*(v84 + 3112));
  }

  if (*(v84 + 3159) < 0)
  {
    operator delete(*(v84 + 3136));
  }

  if (*(v84 + 3191) < 0)
  {
    operator delete(*(v84 + 3168));
  }

  if (*(v84 + 3215) < 0)
  {
    operator delete(*(v84 + 3192));
  }

  if (*(v84 + 3247) < 0)
  {
    operator delete(*(v84 + 3224));
  }

  if (*(v84 + 3271) < 0)
  {
    operator delete(*(v84 + 3248));
  }

  if (*(v84 + 3303) < 0)
  {
    operator delete(*(v84 + 3280));
  }

  if (*(v84 + 3327) < 0)
  {
    operator delete(*(v84 + 3304));
  }

  if (*(v84 + 3359) < 0)
  {
    operator delete(*(v84 + 3336));
  }

  if (*(v84 + 3383) < 0)
  {
    operator delete(*(v84 + 3360));
  }

  if (*(v84 + 3415) < 0)
  {
    operator delete(*(v84 + 3392));
  }

  if (*(v84 + 3439) < 0)
  {
    operator delete(*(v84 + 3416));
  }

  if (*(v84 + 3471) < 0)
  {
    operator delete(*(v84 + 3448));
  }

  if (*(v84 + 3495) < 0)
  {
    operator delete(*(v84 + 3472));
  }

  if (*(v84 + 3527) < 0)
  {
    operator delete(*(v84 + 3504));
  }

  if (*(v84 + 3551) < 0)
  {
    operator delete(*(v84 + 3528));
  }

  if (*(v84 + 3583) < 0)
  {
    operator delete(*(v84 + 3560));
  }

  if (*(v84 + 3607) < 0)
  {
    operator delete(*(v84 + 3584));
  }

  if (*(v84 + 3639) < 0)
  {
    operator delete(*(v84 + 3616));
  }

  if (*(v84 + 3663) < 0)
  {
    operator delete(*(v84 + 3640));
  }

  if (*(v84 + 3695) < 0)
  {
    operator delete(*(v84 + 3672));
  }

  if (*(v84 + 3719) < 0)
  {
    operator delete(*(v84 + 3696));
  }

  if (*(v84 + 3751) < 0)
  {
    operator delete(*(v84 + 3728));
  }

  if (*(v84 + 3775) < 0)
  {
    operator delete(*(v84 + 3752));
  }

  if (*(v84 + 3807) < 0)
  {
    operator delete(*(v84 + 3784));
  }

  if (*(v84 + 3831) < 0)
  {
    operator delete(*(v84 + 3808));
  }

  if (*(v84 + 3863) < 0)
  {
    operator delete(*(v84 + 3840));
  }

  if (*(v84 + 3887) < 0)
  {
    operator delete(*(v84 + 3864));
  }

  if (*(v84 + 3919) < 0)
  {
    operator delete(*(v84 + 3896));
  }

  if (*(v84 + 3943) < 0)
  {
    operator delete(*(v84 + 3920));
  }

  if (*(v84 + 3975) < 0)
  {
    operator delete(*(v84 + 3952));
  }

  if (*(v84 + 3999) < 0)
  {
    operator delete(*(v84 + 3976));
  }

  if (*(v84 + 4031) < 0)
  {
    operator delete(*(v84 + 4008));
  }

  if (*(v84 + 4055) < 0)
  {
    operator delete(*(v84 + 4032));
  }

  if (*(v84 + 4087) < 0)
  {
    operator delete(*(v84 + 4064));
  }

  if (*(v83 + 23) < 0)
  {
    operator delete(*v83);
  }

  if (*(v83 + 55) < 0)
  {
    operator delete(*(v83 + 32));
  }

  if (*(v83 + 79) < 0)
  {
    operator delete(*(v83 + 56));
  }

  if (*(v83 + 111) < 0)
  {
    operator delete(*(v83 + 88));
  }

  if (*(v83 + 135) < 0)
  {
    operator delete(*(v83 + 112));
  }

  if (*(v83 + 167) < 0)
  {
    operator delete(*(v83 + 144));
  }

  if (*(v83 + 191) < 0)
  {
    operator delete(*(v83 + 168));
  }

  if (*(v83 + 223) < 0)
  {
    operator delete(*(v83 + 200));
  }

  if (*(v83 + 247) < 0)
  {
    operator delete(*(v83 + 224));
  }

  if (*(v83 + 279) < 0)
  {
    operator delete(*(v83 + 256));
  }

  if (*(v83 + 303) < 0)
  {
    operator delete(*(v83 + 280));
  }

  if (*(v83 + 335) < 0)
  {
    operator delete(*(v83 + 312));
  }

  if (*(v83 + 359) < 0)
  {
    operator delete(*(v83 + 336));
  }

  if (*(v83 + 391) < 0)
  {
    operator delete(*(v83 + 368));
  }

  if (*(v83 + 415) < 0)
  {
    operator delete(*(v83 + 392));
  }

  if (*(v83 + 447) < 0)
  {
    operator delete(*(v83 + 424));
  }

  if (*(v83 + 471) < 0)
  {
    operator delete(*(v83 + 448));
  }

  if (*(v83 + 503) < 0)
  {
    operator delete(*(v83 + 480));
  }

  if (*(v83 + 527) < 0)
  {
    operator delete(*(v83 + 504));
  }

  if (*(v83 + 559) < 0)
  {
    operator delete(*(v83 + 536));
  }

  if (*(v83 + 583) < 0)
  {
    operator delete(*(v83 + 560));
  }

  if (*(v83 + 615) < 0)
  {
    operator delete(*(v83 + 592));
  }

  if (*(v83 + 639) < 0)
  {
    operator delete(*(v83 + 616));
  }

  if (*(v83 + 671) < 0)
  {
    operator delete(*(v83 + 648));
  }

  if (*(v83 + 695) < 0)
  {
    operator delete(*(v83 + 672));
  }

  if (*(v83 + 727) < 0)
  {
    operator delete(*(v83 + 704));
  }

  if (*(v83 + 751) < 0)
  {
    operator delete(*(v83 + 728));
  }

  if (*(v83 + 783) < 0)
  {
    operator delete(*(v83 + 760));
  }

  if (*(v83 + 807) < 0)
  {
    operator delete(*(v83 + 784));
  }

  if (*(v83 + 839) < 0)
  {
    operator delete(*(v83 + 816));
  }

  if (*(v83 + 863) < 0)
  {
    operator delete(*(v83 + 840));
  }

  if (*(v83 + 895) < 0)
  {
    operator delete(*(v83 + 872));
  }

  if (*(v83 + 919) < 0)
  {
    operator delete(*(v83 + 896));
  }

  if (*(v83 + 951) < 0)
  {
    operator delete(*(v83 + 928));
  }

  if (*(v83 + 975) < 0)
  {
    operator delete(*(v83 + 952));
  }

  if (*(v83 + 1007) < 0)
  {
    operator delete(*(v83 + 984));
  }

  if (*(v83 + 1031) < 0)
  {
    operator delete(*(v83 + 1008));
  }

  if (*(v83 + 1063) < 0)
  {
    operator delete(*(v83 + 1040));
  }

  if (*(v83 + 1087) < 0)
  {
    operator delete(*(v83 + 1064));
  }

  if (*(v83 + 1119) < 0)
  {
    operator delete(*(v83 + 1096));
  }

  if (*(v83 + 1143) < 0)
  {
    operator delete(*(v83 + 1120));
  }

  if (*(v83 + 1175) < 0)
  {
    operator delete(*(v83 + 1152));
  }

  if (*(v83 + 1199) < 0)
  {
    operator delete(*(v83 + 1176));
  }

  if (*(v83 + 1231) < 0)
  {
    operator delete(*(v83 + 1208));
  }

  if (*(v83 + 1255) < 0)
  {
    operator delete(*(v83 + 1232));
  }

  if (*(v83 + 1287) < 0)
  {
    operator delete(*(v83 + 1264));
  }

  if (*(v83 + 1311) < 0)
  {
    operator delete(*(v83 + 1288));
  }

  if (*(v83 + 1343) < 0)
  {
    operator delete(*(v83 + 1320));
  }

  if (*(v83 + 1367) < 0)
  {
    operator delete(*(v83 + 1344));
  }

  if (*(v83 + 1399) < 0)
  {
    operator delete(*(v83 + 1376));
  }

  if (*(v83 + 1423) < 0)
  {
    operator delete(*(v83 + 1400));
  }

  if (*(v83 + 1455) < 0)
  {
    operator delete(*(v83 + 1432));
  }

  if (*(v83 + 1479) < 0)
  {
    operator delete(*(v83 + 1456));
  }

  if (*(v83 + 1511) < 0)
  {
    operator delete(*(v83 + 1488));
  }

  if (*(v83 + 1535) < 0)
  {
    operator delete(*(v83 + 1512));
  }

  if (*(v83 + 1567) < 0)
  {
    operator delete(*(v83 + 1544));
  }

  if (*(v83 + 1591) < 0)
  {
    operator delete(*(v83 + 1568));
  }

  if (*(v83 + 1623) < 0)
  {
    operator delete(*(v83 + 1600));
  }

  if (*(v83 + 1647) < 0)
  {
    operator delete(*(v83 + 1624));
  }

  if (*(v83 + 1679) < 0)
  {
    operator delete(*(v83 + 1656));
  }

  if (*(v83 + 1703) < 0)
  {
    operator delete(*(v83 + 1680));
  }

  if (*(v83 + 1735) < 0)
  {
    operator delete(*(v83 + 1712));
  }

  if (*(v83 + 1759) < 0)
  {
    operator delete(*(v83 + 1736));
  }

  if (*(v83 + 1791) < 0)
  {
    operator delete(*(v83 + 1768));
  }

  if (*(v83 + 1815) < 0)
  {
    operator delete(*(v83 + 1792));
  }

  if (*(v83 + 1847) < 0)
  {
    operator delete(*(v83 + 1824));
  }

  if (*(v83 + 1871) < 0)
  {
    operator delete(*(v83 + 1848));
  }

  if (*(v83 + 1903) < 0)
  {
    operator delete(*(v83 + 1880));
  }

  if (*(v83 + 1927) < 0)
  {
    operator delete(*(v83 + 1904));
  }

  if (*(v83 + 1959) < 0)
  {
    operator delete(*(v83 + 1936));
  }

  if (*(v83 + 1983) < 0)
  {
    operator delete(*(v83 + 1960));
  }

  if (*(v83 + 2015) < 0)
  {
    operator delete(*(v83 + 1992));
  }

  if (*(v83 + 2039) < 0)
  {
    operator delete(*(v83 + 2016));
  }

  if (*(v83 + 2071) < 0)
  {
    operator delete(*(v83 + 2048));
  }

  if (*(v83 + 2095) < 0)
  {
    operator delete(*(v83 + 2072));
  }

  if (*(v83 + 2127) < 0)
  {
    operator delete(*(v83 + 2104));
  }

  if (*(v83 + 2151) < 0)
  {
    operator delete(*(v83 + 2128));
  }

  if (*(v83 + 2183) < 0)
  {
    operator delete(*(v83 + 2160));
  }

  if (*(v83 + 2207) < 0)
  {
    operator delete(*(v83 + 2184));
  }

  if (*(v83 + 2239) < 0)
  {
    operator delete(*(v83 + 2216));
  }

  if (*(v83 + 2263) < 0)
  {
    operator delete(*(v83 + 2240));
  }

  if (*(v83 + 2295) < 0)
  {
    operator delete(*(v83 + 2272));
  }

  if (*(v83 + 2319) < 0)
  {
    operator delete(*(v83 + 2296));
  }

  if (*(v83 + 2351) < 0)
  {
    operator delete(*(v83 + 2328));
  }

  if (*(v83 + 2375) < 0)
  {
    operator delete(*(v83 + 2352));
  }

  if (*(v83 + 2407) < 0)
  {
    operator delete(*(v83 + 2384));
  }

  if (*(v83 + 2431) < 0)
  {
    operator delete(*(v83 + 2408));
  }

  if (*(v83 + 2463) < 0)
  {
    operator delete(*(v83 + 2440));
  }

  if (*(v83 + 2487) < 0)
  {
    operator delete(*(v83 + 2464));
  }

  if (*(v83 + 2519) < 0)
  {
    operator delete(*(v83 + 2496));
  }

  if (*(v83 + 2543) < 0)
  {
    operator delete(*(v83 + 2520));
  }

  if (*(v83 + 2575) < 0)
  {
    operator delete(*(v83 + 2552));
  }

  if (*(v83 + 2599) < 0)
  {
    operator delete(*(v83 + 2576));
  }

  if (*(v83 + 2631) < 0)
  {
    operator delete(*(v83 + 2608));
  }

  if (*(v83 + 2655) < 0)
  {
    operator delete(*(v83 + 2632));
  }

  if (*(v83 + 2687) < 0)
  {
    operator delete(*(v83 + 2664));
  }

  if (*(v83 + 2711) < 0)
  {
    operator delete(*(v83 + 2688));
  }

  if (*(v83 + 2743) < 0)
  {
    operator delete(*(v83 + 2720));
  }

  if (*(v83 + 2767) < 0)
  {
    operator delete(*(v83 + 2744));
  }

  if (*(v83 + 2799) < 0)
  {
    operator delete(*(v83 + 2776));
  }

  if (*(v83 + 2823) < 0)
  {
    operator delete(*(v83 + 2800));
  }

  if (*(v83 + 2855) < 0)
  {
    operator delete(*(v83 + 2832));
  }

  if (*(v83 + 2879) < 0)
  {
    operator delete(*(v83 + 2856));
  }

  if (*(v83 + 2911) < 0)
  {
    operator delete(*(v83 + 2888));
  }

  if (*(v83 + 2935) < 0)
  {
    operator delete(*(v83 + 2912));
  }

  if (*(v83 + 2967) < 0)
  {
    operator delete(*(v83 + 2944));
  }

  if (*(v83 + 2991) < 0)
  {
    operator delete(*(v83 + 2968));
  }

  if (*(v83 + 3023) < 0)
  {
    operator delete(*(v83 + 3000));
  }

  if (*(v83 + 3047) < 0)
  {
    operator delete(*(v83 + 3024));
  }

  if (*(v83 + 3079) < 0)
  {
    operator delete(*(v83 + 3056));
  }

  if (*(v83 + 3103) < 0)
  {
    operator delete(*(v83 + 3080));
  }

  if (*(v83 + 3135) < 0)
  {
    operator delete(*(v83 + 3112));
  }

  if (*(v83 + 3159) < 0)
  {
    operator delete(*(v83 + 3136));
  }

  if (*(v83 + 3191) < 0)
  {
    operator delete(*(v83 + 3168));
  }

  if (*(v83 + 3215) < 0)
  {
    operator delete(*(v83 + 3192));
  }

  if (*(v83 + 3247) < 0)
  {
    operator delete(*(v83 + 3224));
  }

  if (*(v83 + 3271) < 0)
  {
    operator delete(*(v83 + 3248));
  }

  if (*(v83 + 3303) < 0)
  {
    operator delete(*(v83 + 3280));
  }

  if (*(v83 + 3327) < 0)
  {
    operator delete(*(v83 + 3304));
  }

  if (*(v83 + 3359) < 0)
  {
    operator delete(*(v83 + 3336));
  }

  if (*(v83 + 3383) < 0)
  {
    operator delete(*(v83 + 3360));
  }

  if (*(v83 + 3415) < 0)
  {
    operator delete(*(v83 + 3392));
  }

  if (*(v83 + 3439) < 0)
  {
    operator delete(*(v83 + 3416));
  }

  if (*(v83 + 3471) < 0)
  {
    operator delete(*(v83 + 3448));
  }

  if (*(v83 + 3495) < 0)
  {
    operator delete(*(v83 + 3472));
  }

  if (*(v83 + 3527) < 0)
  {
    operator delete(*(v83 + 3504));
  }

  if (*(v83 + 3551) < 0)
  {
    operator delete(*(v83 + 3528));
  }

  if (*(v83 + 3583) < 0)
  {
    operator delete(*(v83 + 3560));
  }

  if (*(v83 + 3607) < 0)
  {
    operator delete(*(v83 + 3584));
  }

  if (*(v83 + 3639) < 0)
  {
    operator delete(*(v83 + 3616));
  }

  if (*(v83 + 3663) < 0)
  {
    operator delete(*(v83 + 3640));
  }

  if (*(v83 + 3695) < 0)
  {
    operator delete(*(v83 + 3672));
  }

  if (*(v83 + 3719) < 0)
  {
    operator delete(*(v83 + 3696));
  }

  if (*(v83 + 3751) < 0)
  {
    operator delete(*(v83 + 3728));
  }

  if (*(v83 + 3775) < 0)
  {
    operator delete(*(v83 + 3752));
  }

  if (*(v83 + 3807) < 0)
  {
    operator delete(*(v83 + 3784));
  }

  if (*(v83 + 3831) < 0)
  {
    operator delete(*(v83 + 3808));
  }

  if (*(v83 + 3863) < 0)
  {
    operator delete(*(v83 + 3840));
  }

  if (*(v83 + 3887) < 0)
  {
    operator delete(*(v83 + 3864));
  }

  if (*(v83 + 3919) < 0)
  {
    operator delete(*(v83 + 3896));
  }

  if (*(v83 + 3943) < 0)
  {
    operator delete(*(v83 + 3920));
  }

  if (*(v83 + 3975) < 0)
  {
    operator delete(*(v83 + 3952));
  }

  if (*(v83 + 3999) < 0)
  {
    operator delete(*(v83 + 3976));
  }

  if (*(v83 + 4031) < 0)
  {
    operator delete(*(v83 + 4008));
  }

  if (*(v83 + 4055) < 0)
  {
    operator delete(*(v83 + 4032));
  }

  if (*(v83 + 4087) < 0)
  {
    operator delete(*(v83 + 4064));
  }

  if (*(v82 + 23) < 0)
  {
    operator delete(*v82);
  }

  if (*(v82 + 55) < 0)
  {
    operator delete(*(v82 + 32));
  }

  if (*(v82 + 79) < 0)
  {
    operator delete(*(v82 + 56));
  }

  if (*(v82 + 111) < 0)
  {
    operator delete(*(v82 + 88));
  }

  if (*(v82 + 135) < 0)
  {
    operator delete(*(v82 + 112));
  }

  if (*(v82 + 167) < 0)
  {
    operator delete(*(v82 + 144));
  }

  if (*(v82 + 191) < 0)
  {
    operator delete(*(v82 + 168));
  }

  if (*(v82 + 223) < 0)
  {
    operator delete(*(v82 + 200));
  }

  if (*(v82 + 247) < 0)
  {
    operator delete(*(v82 + 224));
  }

  if (*(v82 + 279) < 0)
  {
    operator delete(*(v82 + 256));
  }

  if (*(v82 + 303) < 0)
  {
    operator delete(*(v82 + 280));
  }

  if (*(v82 + 335) < 0)
  {
    operator delete(*(v82 + 312));
  }

  if (*(v82 + 359) < 0)
  {
    operator delete(*(v82 + 336));
  }

  if (*(v82 + 391) < 0)
  {
    operator delete(*(v82 + 368));
  }

  if (*(v82 + 415) < 0)
  {
    operator delete(*(v82 + 392));
  }

  if (*(v82 + 447) < 0)
  {
    operator delete(*(v82 + 424));
  }

  if (*(v82 + 471) < 0)
  {
    operator delete(*(v82 + 448));
  }

  if (*(v82 + 503) < 0)
  {
    operator delete(*(v82 + 480));
  }

  if (*(v82 + 527) < 0)
  {
    operator delete(*(v82 + 504));
  }

  if (*(v82 + 559) < 0)
  {
    operator delete(*(v82 + 536));
  }

  if (*(v82 + 583) < 0)
  {
    operator delete(*(v82 + 560));
  }

  if (*(v82 + 615) < 0)
  {
    operator delete(*(v82 + 592));
  }

  if (*(v82 + 639) < 0)
  {
    operator delete(*(v82 + 616));
  }

  if (*(v82 + 671) < 0)
  {
    operator delete(*(v82 + 648));
  }

  if (*(v82 + 695) < 0)
  {
    operator delete(*(v82 + 672));
  }

  if (*(v82 + 727) < 0)
  {
    operator delete(*(v82 + 704));
  }

  if (*(v82 + 751) < 0)
  {
    operator delete(*(v82 + 728));
  }

  if (*(v82 + 783) < 0)
  {
    operator delete(*(v82 + 760));
  }

  if (*(v82 + 807) < 0)
  {
    operator delete(*(v82 + 784));
  }

  if (*(v82 + 839) < 0)
  {
    operator delete(*(v82 + 816));
  }

  if (*(v82 + 863) < 0)
  {
    operator delete(*(v82 + 840));
  }

  if (*(v82 + 895) < 0)
  {
    operator delete(*(v82 + 872));
  }

  if (*(v82 + 919) < 0)
  {
    operator delete(*(v82 + 896));
  }

  if (*(v82 + 951) < 0)
  {
    operator delete(*(v82 + 928));
  }

  if (*(v82 + 975) < 0)
  {
    operator delete(*(v82 + 952));
  }

  if (*(v82 + 1007) < 0)
  {
    operator delete(*(v82 + 984));
  }

  if (*(v82 + 1031) < 0)
  {
    operator delete(*(v82 + 1008));
  }

  if (*(v82 + 1063) < 0)
  {
    operator delete(*(v82 + 1040));
  }

  if (*(v82 + 1087) < 0)
  {
    operator delete(*(v82 + 1064));
  }

  if (*(v82 + 1119) < 0)
  {
    operator delete(*(v82 + 1096));
  }

  if (*(v82 + 1143) < 0)
  {
    operator delete(*(v82 + 1120));
  }

  if (*(v82 + 1175) < 0)
  {
    operator delete(*(v82 + 1152));
  }

  if (*(v82 + 1199) < 0)
  {
    operator delete(*(v82 + 1176));
  }

  if (*(v82 + 1231) < 0)
  {
    operator delete(*(v82 + 1208));
  }

  if (*(v82 + 1255) < 0)
  {
    operator delete(*(v82 + 1232));
  }

  if (*(v82 + 1287) < 0)
  {
    operator delete(*(v82 + 1264));
  }

  if (*(v82 + 1311) < 0)
  {
    operator delete(*(v82 + 1288));
  }

  if (*(v82 + 1343) < 0)
  {
    operator delete(*(v82 + 1320));
  }

  if (*(v82 + 1367) < 0)
  {
    operator delete(*(v82 + 1344));
  }

  if (*(v82 + 1399) < 0)
  {
    operator delete(*(v82 + 1376));
  }

  if (*(v82 + 1423) < 0)
  {
    operator delete(*(v82 + 1400));
  }

  if (*(v82 + 1455) < 0)
  {
    operator delete(*(v82 + 1432));
  }

  if (*(v82 + 1479) < 0)
  {
    operator delete(*(v82 + 1456));
  }

  if (*(v82 + 1511) < 0)
  {
    operator delete(*(v82 + 1488));
  }

  if (*(v82 + 1535) < 0)
  {
    operator delete(*(v82 + 1512));
  }

  if (*(v82 + 1567) < 0)
  {
    operator delete(*(v82 + 1544));
  }

  _Unwind_Resume(a1);
}

void sub_1D41B04()
{
  if ((atomic_load_explicit(&qword_278C2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C2C8))
  {
    sub_3608D0(v1, "PRICE_RANGE_INEXPENSIVE");
    sub_3608D0(v2, "PRICE_RANGE_MODERATE");
    sub_3608D0(v3, "PRICE_RANGE_EXPENSIVE");
    sub_3608D0(v4, "PRICE_RANGE_VERY_EXPENSIVE");
    sub_1A5C918(&unk_278C2B0, v1, 4);
    for (i = 0; i != -96; i -= 24)
    {
      if (v4[i + 23] < 0)
      {
        operator delete(*&v4[i]);
      }
    }

    __cxa_guard_release(&qword_278C2C8);
  }
}

void sub_1D41C1C(_Unwind_Exception *a1)
{
  v3 = (v1 + 95);
  v4 = -96;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_278C2C8);
      _Unwind_Resume(a1);
    }
  }
}

void sub_1D41C8C()
{
  if ((atomic_load_explicit(&qword_278C2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C2E8))
  {
    sub_3608D0(v1, "EV_CONNECTOR_TYPE_CHADEMO");
    sub_3608D0(v2, "EV_CONNECTOR_TYPE_J1772");
    sub_3608D0(v3, "EV_CONNECTOR_TYPE_TESLA");
    sub_3608D0(v4, "EV_CONNECTOR_TYPE_CCS1");
    sub_3608D0(v5, "EV_CONNECTOR_TYPE_CCS2");
    sub_3608D0(v6, "EV_CONNECTOR_TYPE_GBT1");
    sub_3608D0(v7, "EV_CONNECTOR_TYPE_GBT2");
    sub_3608D0(v8, "EV_CONNECTOR_TYPE_MENNEKES");
    sub_3608D0(v9, "EV_CONNECTOR_TYPE_COMBO");
    sub_1A5C918(&unk_278C2D0, v1, 9);
    for (i = 0; i != -216; i -= 24)
    {
      if (v9[i + 23] < 0)
      {
        operator delete(*&v9[i]);
      }
    }

    __cxa_guard_release(&qword_278C2E8);
  }
}

void sub_1D41E14(_Unwind_Exception *a1)
{
  v3 = (v1 + 215);
  v4 = -216;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_278C2E8);
      _Unwind_Resume(a1);
    }
  }
}

void sub_1D41E84()
{
  if ((atomic_load_explicit(&qword_278C308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C308))
  {
    sub_3608D0(__p, "OPEN_NOW");
    sub_1A5C918(&unk_278C2F0, __p, 1);
    if (v1 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_guard_release(&qword_278C308);
  }
}

void sub_1D41F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_278C308);
  _Unwind_Resume(a1);
}

void sub_1D41F68()
{
  if ((atomic_load_explicit(&qword_278C328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C328))
  {
    sub_3608D0(__p, "TOP_RATED");
    sub_1A5C918(&unk_278C310, __p, 1);
    if (v1 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_guard_release(&qword_278C328);
  }
}

void sub_1D4201C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_278C328);
  _Unwind_Resume(a1);
}

void sub_1D4204C()
{
  if ((atomic_load_explicit(&qword_278C348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C348))
  {
    sub_19649A8(v1, &unk_278C2B0);
    sub_19649A8(v2, &unk_278C2D0);
    sub_19649A8(v3, &unk_278C2F0);
    sub_19649A8(v4, &unk_278C310);
    qword_278C330 = 0;
    *algn_278C338 = 0;
    qword_278C340 = 0;
    sub_1A8E130(&qword_278C330, v1, &v5, 4uLL);
    for (i = 0; i != -12; i -= 3)
    {
      sub_7E724(&v4[i], v4[i + 1]);
    }

    __cxa_guard_release(&qword_278C348);
  }
}

void sub_1D42168(_Unwind_Exception *a1)
{
  v3 = v1 + 72;
  v4 = -96;
  do
  {
    sub_7E724(v3, *(v3 + 8));
    v3 -= 24;
    v4 += 24;
  }

  while (v4);
  __cxa_guard_abort(&qword_278C348);
  _Unwind_Resume(a1);
}

void sub_1D421D0()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27EF3A8 = 0;
  unk_27EF3B0 = 0;
  qword_27EF3B8 = 0;
  sub_68678C(&qword_27EF3A8, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27EF3C0 = 0;
  *algn_27EF3C8 = 0;
  qword_27EF3D0 = 0;
  sub_68678C(&qword_27EF3C0, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27EF3D8 = 0;
  unk_27EF3E0 = 0;
  qword_27EF3E8 = 0;
  sub_68678C(&qword_27EF3D8, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1D37048();
}

void sub_1D422F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D4231C(uint64_t a1, int a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *(a1 + 88);
  v5 = sub_19592E8(&v15, v2);
  sub_13134D0(&v15, v5, (v4 + 8), v2, *v17 - v16);
  v6 = v16 + v2;
  LODWORD(v16) = v6;
  v7 = v17;
  if (*v17 < v6)
  {
    *v17 = v6;
  }

  if (v6)
  {
    v8 = (v7 + 2);
    v9 = 8 * v6;
    while (1)
    {
      sub_1309074(v18, *v8);
      v10 = v19;
      v11 = v20;
      sub_13090E8(v18);
      if (v10 <= a2 && v11 >= a2)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v14 = 2;
  }

  else
  {
LABEL_12:
    v14 = 4;
  }

  sub_1313004(&v15);
  return v14;
}

uint64_t sub_1D4242C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 904);
  v3 = *(a1 + 912);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = *(v4 + 8);
  }

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v6)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      v10 = v5 >= 0 ? v4 : *v4;
      if (!memcmp(v9, v10, v6))
      {
        break;
      }
    }

    v2 += 24;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1D424DC(std::string *__str@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = std::stoi(__str, 0, 10);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 40);
    v11 = sub_19592E8(&v39, *(a2 + 32));
    sub_13133B8(&v39, v11, (v10 + 8), v9, *v41 - v40);
    v12 = v40 + v9;
    LODWORD(v40) = v12;
    v13 = v41;
    if (*v41 < v12)
    {
      *v41 = v12;
    }

    if (v12 >= 1)
    {
      v15 = *(v13 + 1);
      v14 = (v13 + 2);
      v16 = *(v15 + 56);
      v17 = 8 * v12;
      v18 = 0x7FFFFFFF;
      v19 = v16;
      while (1)
      {
        sub_1307C2C(v37, *v14);
        v20 = v8 - v38;
        if (v8 == v38)
        {
          break;
        }

        if (v38 < v19)
        {
          v19 = v38;
        }

        if (v38 > v16)
        {
          v16 = v38;
        }

        if (v20 < 0)
        {
          v20 = v38 - v8;
        }

        if (v18 >= v20)
        {
          v18 = v20;
        }

        sub_1307CF0(v37);
        ++v14;
        v17 -= 8;
        if (!v17)
        {
          if (v8 < v19 - 1000 || v8 > v16 + 1000)
          {
            v22 = sub_1D4231C(a2, v8);
            if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
            {
              sub_325C(&v29, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
            }

            else
            {
              v29 = *&__str->__r_.__value_.__l.__data_;
              v30 = __str->__r_.__value_.__r.__words[2];
            }

            sub_1A2F6E4(a4, v22, 0x7FFFFFFF, &v29);
            if ((SHIBYTE(v30) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

            v24 = v29;
LABEL_27:
            operator delete(v24);
            goto LABEL_48;
          }

          if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_325C(&v31, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
          }

          else
          {
            v31 = *&__str->__r_.__value_.__l.__data_;
            v32 = __str->__r_.__value_.__r.__words[2];
          }

          sub_1A2F6E4(a4, 3, v18, &v31);
          if (SHIBYTE(v32) < 0)
          {
            v24 = v31;
            goto LABEL_27;
          }

          goto LABEL_48;
        }
      }

      v25 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      if (a3)
      {
        if (v25 < 0)
        {
          sub_325C(&v35, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
        }

        else
        {
          v35 = *&__str->__r_.__value_.__l.__data_;
          v36 = __str->__r_.__value_.__r.__words[2];
        }

        sub_1A2F6E4(a4, 1, 0, &v35);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = &v35;
      }

      else
      {
        if (v25 < 0)
        {
          sub_325C(&v33, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
        }

        else
        {
          v33 = *&__str->__r_.__value_.__l.__data_;
          v34 = __str->__r_.__value_.__r.__words[2];
        }

        sub_1A2F6E4(a4, 3, 0, &v33);
        if ((SHIBYTE(v34) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = &v33;
      }

      operator delete(*v26);
LABEL_42:
      sub_1307CF0(v37);
      goto LABEL_48;
    }
  }

  v23 = sub_1D4231C(a2, v8);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v28 = __str->__r_.__value_.__r.__words[2];
  }

  sub_1A2F6E4(a4, v23, 0x7FFFFFFF, __p);
  if (SHIBYTE(v28) < 0)
  {
    v24 = __p[0];
    goto LABEL_27;
  }

LABEL_48:
  sub_1312EFC(&v39);
}

void sub_1D427DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  sub_1307CF0(&a44);
  sub_1312EFC((v44 - 112));
  _Unwind_Resume(a1);
}

_BYTE *sub_1D42880@<X0>(_BYTE *result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(result + 14);
  v7 = v5 + 8 * v6;
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(*v5 + 48);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
      v13 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = *v12;
        v15 = v12[1];
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        v15 = v13;
        if (!v13)
        {
          goto LABEL_27;
        }
      }

      v16 = (v14 + v15);
      v17 = v14;
      v18 = v16;
      do
      {
        v19 = v17;
        v20 = v17;
        while (1)
        {
          v21 = *v20++;
          if (v21 == 47)
          {
            break;
          }

          v19 = v20;
          if (v20 == v16)
          {
            v19 = v18;
            goto LABEL_21;
          }
        }

        v17 = v19 + 1;
        v18 = v19;
      }

      while (v20 != v16);
LABEL_21:
      if (v19 != v16)
      {
        v22 = &v19[-v14];
        if (v22 != -1)
        {
          if ((v13 & 0x80000000) != 0)
          {
            if (v9 == -1 || (v13 = v12[1], v13 <= v22))
            {
LABEL_80:
              sub_49D4();
            }

            v12 = *v12;
          }

          else if (v22 >= v13 || v9 == -1)
          {
            goto LABEL_80;
          }

          v34 = v22 + 1;
          goto LABEL_64;
        }
      }

LABEL_27:
      if ((v13 & 0x80000000) != 0)
      {
        v23 = *v12;
        v24 = v12[1];
        if (!v24)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v23 = v12;
        v24 = v13;
        if (!v13)
        {
          goto LABEL_69;
        }
      }

      v25 = v23 + v24;
      v26 = v23;
      v27 = v25;
      do
      {
        v28 = v26;
        v29 = v26;
        while (1)
        {
          v30 = *v29++;
          if (v30 == 45)
          {
            break;
          }

          v28 = v29;
          if (v29 == v25)
          {
            v28 = v27;
            goto LABEL_37;
          }
        }

        v26 = v28 + 1;
        v27 = v28;
      }

      while (v29 != v25);
LABEL_37:
      if (v28 == v25)
      {
        goto LABEL_69;
      }

      v31 = v28 - v23;
      if (v28 - v23 == -1)
      {
        goto LABEL_69;
      }

      if ((v13 & 0x80000000) != 0)
      {
        if (v9 == -1)
        {
          goto LABEL_80;
        }

        v33 = *v12;
        if (v12[1] >= v31)
        {
          v32 = v28 - v23;
        }

        else
        {
          v32 = v12[1];
        }
      }

      else
      {
        if (v9 == -1)
        {
          goto LABEL_80;
        }

        if (v13 >= v31)
        {
          v32 = v28 - v23;
        }

        else
        {
          v32 = v13;
        }

        v33 = v12;
      }

      if (v32 >= v9)
      {
        v35 = v9;
      }

      else
      {
        v35 = v32;
      }

      result = memcmp(v33, v10, v35);
      if (!result && v32 == v9)
      {
        break;
      }

      if ((v13 & 0x80000000) != 0)
      {
        v13 = v12[1];
        if (v13 <= v31)
        {
          goto LABEL_80;
        }

        v12 = *v12;
      }

      else if (v31 >= v13)
      {
        goto LABEL_80;
      }

      v34 = (v31 + 1);
LABEL_64:
      v36 = v13 - v34;
      if (v36 >= v9)
      {
        v37 = v9;
      }

      else
      {
        v37 = v36;
      }

      result = memcmp(&v34[v12], v10, v37);
      if (!result && v36 == v9)
      {
        break;
      }

LABEL_69:
      v5 += 8;
      if (v5 == v7)
      {
        goto LABEL_74;
      }
    }
  }

  if (v5 == v7)
  {
LABEL_74:

    return sub_3608D0(a3, &unk_236FCD4);
  }

  else
  {
    v38 = *(*v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v38 + 23) < 0)
    {
      v40 = *v38;
      v41 = *(v38 + 8);

      return sub_325C(a3, v40, v41);
    }

    else
    {
      v39 = *v38;
      *(a3 + 16) = *(v38 + 16);
      *a3 = v39;
    }
  }

  return result;
}

void sub_1D42B68(std::string *__str@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = __str;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_5;
    }

    v44 = *__str;
LABEL_46:
    sub_1A2F6E4(a4, 0, 0, &v44);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = v44.__r_.__value_.__r.__words[0];
      goto LABEL_48;
    }

    return;
  }

  __str = __str->__r_.__value_.__r.__words[0];
  size = v5->__r_.__value_.__l.__size_;
  if (!size)
  {
    sub_325C(&v44, __str, 0);
    goto LABEL_46;
  }

  do
  {
LABEL_5:
    v9 = __str->__r_.__value_.__s.__data_[0];
    if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
    {
      v10 = sub_1CF7310(v5);
      v42 = 0uLL;
      v43 = 0;
      v11 = *(a2 + 56);
      if (v11)
      {
        v12 = *(a2 + 64);
        v13 = sub_19592E8(&v42, *(a2 + 56));
        sub_1313444(&v42, v13, (v12 + 8), v11, *v43 - DWORD2(v42));
        v14 = DWORD2(v42) + v11;
        DWORD2(v42) = v14;
        v15 = v43;
        if (*v43 < v14)
        {
          *v43 = v14;
        }

        if (v14)
        {
          v16 = (v15 + 2);
          for (i = 8 * v14; i; i -= 8)
          {
            v18 = sub_1308710(&__stra, *v16);
            v19 = v48 & 0xFFFFFFFFFFFFFFFELL;
            v20 = *((v48 & 0xFFFFFFFFFFFFFFFELL) + 23);
            if (v20 >= 0)
            {
              v21 = *(v19 + 23);
            }

            else
            {
              v21 = *(v19 + 8);
            }

            v22 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = v5->__r_.__value_.__l.__size_;
            }

            if (v21 == v22)
            {
              if (v20 >= 0)
              {
                v24 = (v48 & 0xFFFFFFFFFFFFFFFELL);
              }

              else
              {
                v24 = *v19;
              }

              if (v23 >= 0)
              {
                v25 = v5;
              }

              else
              {
                v25 = v5->__r_.__value_.__r.__words[0];
              }

              v26 = memcmp(v24, v25, v21);
              sub_13087E8(&__stra);
              if (!v26)
              {
                if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_325C(&v38, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
                }

                else
                {
                  v38 = *&v5->__r_.__value_.__l.__data_;
                  v39 = v5->__r_.__value_.__r.__words[2];
                }

                sub_1A2F6E4(a4, 1, 0, &v38);
                if (SHIBYTE(v39) < 0)
                {
                  v29 = v38;
                  goto LABEL_81;
                }

                goto LABEL_82;
              }
            }

            else
            {
              sub_13087E8(v18);
            }

            ++v16;
          }
        }
      }

      if (v10)
      {
        if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(&v36, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
        }

        else
        {
          v36 = *&v5->__r_.__value_.__l.__data_;
          v37 = v5->__r_.__value_.__r.__words[2];
        }

        sub_1A2F6E4(a4, 4, 0x7FFFFFFF, &v36);
        if (SHIBYTE(v37) < 0)
        {
          v29 = v36;
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      if (sub_1D4242C(a3, a2))
      {
        sub_1D42880(a2, &v5->__r_.__value_.__l.__data_, &__stra);
        if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__stra.__r_.__value_.__l.__size_)
          {
            sub_325C(&__p, __stra.__r_.__value_.__l.__data_, __stra.__r_.__value_.__l.__size_);
LABEL_56:
            sub_1A2F6E4(a4, 1, 0, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_79;
          }

          operator delete(__stra.__r_.__value_.__l.__data_);
        }

        else if (*(&__stra.__r_.__value_.__s + 23))
        {
          __p = __stra;
          goto LABEL_56;
        }
      }

      if ((*(a2 + 16) & 8) != 0)
      {
        v31 = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL;
        v32 = *(v31 + 23);
        if ((v32 & 0x80000000) == 0)
        {
          if (v32 != 2)
          {
            goto LABEL_78;
          }

LABEL_77:
          if (*v31 == 22356)
          {
            v33 = std::string::find(v5, 45, 0);
            if (v33 == -1)
            {
              if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
              {
                sub_325C(&v34, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
              }

              else
              {
                v34 = *v5;
              }
            }

            else
            {
              std::string::basic_string(&v34, v5, 0, v33, &v50);
            }

            sub_1CF7188(&v34, &__stra);
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            sub_1D424DC(&__stra, a2, 0, a4);
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        if (*(v31 + 8) == 2)
        {
          v31 = *v31;
          goto LABEL_77;
        }
      }

LABEL_78:
      sub_1CF7188(v5, &__stra);
      sub_1D424DC(&__stra, a2, 0, a4);
LABEL_79:
      if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
      {
        v29 = __stra.__r_.__value_.__r.__words[0];
LABEL_81:
        operator delete(v29);
      }

LABEL_82:
      sub_1312F80(&v42);
      return;
    }

    __str = (__str + 1);
    --size;
  }

  while (size);
  sub_1D424DC(v5, a2, 1, &__stra);
  if (LODWORD(__stra.__r_.__value_.__l.__data_) == 1 || !sub_1D4242C(a3, a2))
  {
    v27 = v46;
    *a4 = __stra;
    *(a4 + 24) = v27;
    *&__stra.__r_.__value_.__r.__words[1] = 0uLL;
    *(a4 + 32) = v47;
    *(a4 + 48) = v48;
    v46 = 0;
    v47 = 0uLL;
    v48 = 0;
    *(a4 + 56) = v49;
    goto LABEL_43;
  }

  sub_1D42880(a2, &v5->__r_.__value_.__l.__data_, &v42);
  if (SHIBYTE(v43) < 0)
  {
    if (*(&v42 + 1))
    {
      sub_325C(v40, v42, *(&v42 + 1));
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if (!HIBYTE(v43))
  {
LABEL_65:
    v30 = v46;
    *a4 = __stra;
    *(a4 + 24) = v30;
    *&__stra.__r_.__value_.__r.__words[1] = 0uLL;
    *(a4 + 32) = v47;
    *(a4 + 48) = v48;
    v46 = 0;
    v47 = 0uLL;
    v48 = 0;
    *(a4 + 56) = v49;
    goto LABEL_66;
  }

  *v40 = v42;
  v41 = v43;
LABEL_63:
  sub_1A2F6E4(a4, 1, 0, v40);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

LABEL_66:
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

LABEL_43:
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    return;
  }

  v28 = __stra.__r_.__value_.__l.__size_;
LABEL_48:
  operator delete(v28);
}

double sub_1D43258@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == *(a2 + 8))
  {
    sub_3608D0(&v57, &unk_236FCD4);
    sub_1A2F6E4(a4, 0, 0, &v57);
    if ((v58 & 0x80000000) == 0)
    {
      return result;
    }

    size = v57;
    goto LABEL_84;
  }

  if ((*(a1 + 16) & 8) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 2)
    {
      goto LABEL_12;
    }

    v8 = *v8;
  }

  else if (v9 != 2)
  {
    goto LABEL_12;
  }

  if (*v8 != 20554 || (v12 = sub_2116C44(a2), (v12 & 0x100000000) == 0))
  {
LABEL_12:
    v13 = *a2;
    v14 = *(a2 + 8);
    if (v14 == *a2)
    {
      sub_6FAB4();
    }

    if (*(v13 + 23) < 0)
    {
      sub_325C(__p, *v13, v13[1]);
      v13 = *a2;
      v14 = *(a2 + 8);
    }

    else
    {
      v15 = *v13;
      __p[0].__r_.__value_.__r.__words[2] = v13[2];
      *&__p[0].__r_.__value_.__l.__data_ = v15;
    }

    if (v14 == v13)
    {
      sub_6FAB4();
    }

    if (*(v13 + 23) < 0)
    {
      sub_325C(&__str, *v13, v13[1]);
    }

    else
    {
      v16 = *v13;
      __str.__r_.__value_.__r.__words[2] = v13[2];
      *&__str.__r_.__value_.__l.__data_ = v16;
    }

    if ((*(a1 + 16) & 8) != 0)
    {
      v17 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        if (*(v17 + 8) != 2)
        {
          goto LABEL_71;
        }

        v17 = *v17;
      }

      else if (v18 != 2)
      {
        goto LABEL_71;
      }

      if (*v17 == 22356)
      {
        v19 = *a2;
        if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) >= 3)
        {
          if (*(v19 + 23) >= 0)
          {
            v20 = *(v19 + 23);
          }

          else
          {
            v20 = v19[1];
          }

          v21 = &v50;
          sub_195A55C(&v50, v20 + 1);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v50.__r_.__value_.__r.__words[0];
          }

          if (v20)
          {
            if (*(v19 + 23) >= 0)
            {
              v22 = v19;
            }

            else
            {
              v22 = *v19;
            }

            memmove(v21, v22, v20);
          }

          *(&v21->__r_.__value_.__l.__data_ + v20) = 45;
          v23 = *a2;
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 2)
          {
            sub_6FAB4();
          }

          v26 = v23[6];
          v24 = v23 + 6;
          v25 = v26;
          v27 = *(v24 + 23);
          if (v27 >= 0)
          {
            v28 = v24;
          }

          else
          {
            v28 = v25;
          }

          if (v27 >= 0)
          {
            v29 = *(v24 + 23);
          }

          else
          {
            v29 = v24[1];
          }

          v30 = std::string::append(&v50, v28, v29);
          v31 = v30->__r_.__value_.__r.__words[0];
          v59[0] = v30->__r_.__value_.__l.__size_;
          *(v59 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
          v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          __p[0].__r_.__value_.__r.__words[0] = v31;
          __p[0].__r_.__value_.__l.__size_ = v59[0];
          *(&__p[0].__r_.__value_.__r.__words[1] + 7) = *(v59 + 7);
          *(&__p[0].__r_.__value_.__s + 23) = v32;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          v33 = *a2;
          if (*(a2 + 8) == *a2)
          {
            sub_6FAB4();
          }

          if (*(v33 + 23) >= 0)
          {
            v34 = *(v33 + 23);
          }

          else
          {
            v34 = v33[1];
          }

          v35 = &v50;
          sub_195A55C(&v50, v34 + 3);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v50.__r_.__value_.__r.__words[0];
          }

          if (v34)
          {
            if (*(v33 + 23) >= 0)
            {
              v36 = v33;
            }

            else
            {
              v36 = *v33;
            }

            memmove(v35, v36, v34);
          }

          *(&v35->__r_.__value_.__l.__data_ + v34) = 9157092;
          v37 = *a2;
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 2)
          {
            sub_6FAB4();
          }

          v40 = v37[6];
          v38 = v37 + 6;
          v39 = v40;
          v41 = *(v38 + 23);
          if (v41 >= 0)
          {
            v42 = v38;
          }

          else
          {
            v42 = v39;
          }

          if (v41 >= 0)
          {
            v43 = *(v38 + 23);
          }

          else
          {
            v43 = v38[1];
          }

          v44 = std::string::append(&v50, v42, v43);
          v45 = v44->__r_.__value_.__r.__words[0];
          v59[0] = v44->__r_.__value_.__l.__size_;
          *(v59 + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
          v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str.__r_.__value_.__r.__words[0] = v45;
          __str.__r_.__value_.__l.__size_ = v59[0];
          *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v59 + 7);
          *(&__str.__r_.__value_.__s + 23) = v46;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }
        }
      }
    }

LABEL_71:
    sub_1D42B68(__p, a1, a3 + 8, a4);
    v47 = (a4 + 32);
    std::string::operator=((a4 + 32), &__str);
    if (*a4 == 4 && (a3 + 1176) != sub_BC168(a3 + 1168, (a3 + 1664)))
    {
      *a4 = 3;
      *(a4 + 56) = 1;
      if (*(a4 + 31) < 0)
      {
        *(a4 + 16) = 0;
        v48 = *(a4 + 8);
      }

      else
      {
        v48 = (a4 + 8);
        *(a4 + 31) = 0;
      }

      *v48 = 0;
      if (*(a4 + 55) < 0)
      {
        *(a4 + 40) = 0;
        v47 = *(a4 + 32);
      }

      else
      {
        *(a4 + 55) = 0;
      }

      *v47 = 0;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      size = __p[0].__r_.__value_.__r.__words[0];
LABEL_84:
      operator delete(size);
      return result;
    }

    return result;
  }

  std::to_string(__p, v12);
  sub_1D424DC(__p, a1, 1, &__str);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  data = __str.__r_.__value_.__l.__data_;
  if (LODWORD(__str.__r_.__value_.__l.__data_) != 1)
  {
    if (*(a2 + 8) - *a2 == 72)
    {
      sub_1D43918(a1, a2, __p);
      if (v52 == 1 && LODWORD(__p[0].__r_.__value_.__l.__data_) == 1)
      {
        sub_1D44990(a4, __p);
        sub_1D43B28(__p);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        goto LABEL_99;
      }

      sub_1D43B28(__p);
      data = __str.__r_.__value_.__l.__data_;
    }

    if ((data & 0xFFFFFFFB) == 0)
    {
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__size_);
      }

      goto LABEL_12;
    }
  }

  v50.__r_.__value_.__r.__words[0] = &unk_236FCD4;
  v50.__r_.__value_.__l.__size_ = 0;
  sub_1CF6E20(__p, a2, &v50);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v55 = __p[0];
  *a4 = __str;
  *(a4 + 24) = v54;
  *&__str.__r_.__value_.__r.__words[1] = 0uLL;
  v54 = 0;
  result = *&v55.__r_.__value_.__l.__data_;
  *(a4 + 32) = v55;
  memset(&v55, 0, sizeof(v55));
  *(a4 + 56) = v56;
LABEL_99:
  if (SHIBYTE(v54) < 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    goto LABEL_84;
  }

  return result;
}

void sub_1D4386C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_1D43B28(&a16);
  sub_195FC1C(&__p);
  _Unwind_Resume(a1);
}

void sub_1D43918(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(a2 + 8) == *a2)
  {
    sub_6FAB4();
  }

  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(&__p, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = *&v4->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  v9 = 0;
  v10[0] = 0;
  v10[1] = 0;
  sub_68678C(&v9, &__p, &v16, 1uLL);
  v8 = sub_2116C44(&v9);
  v14 = &v9;
  sub_195E3E8(&v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v8 & 0x100000000) == 0)
    {
LABEL_18:
      *a3 = 0;
      *(a3 + 64) = 0;
      return;
    }
  }

  else if ((v8 & 0x100000000) == 0)
  {
    goto LABEL_18;
  }

  std::to_string(&__p, v8);
  sub_1D424DC(&__p, a1, 1, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9 & 0xFFFFFFFB) == 0)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    goto LABEL_18;
  }

  if (*(a2 + 8) == *a2)
  {
    sub_6FAB4();
  }

  std::string::operator=(&v12, *a2);
  *a3 = v9;
  *(a3 + 8) = *v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = 1;
}

void sub_1D43AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D43B28(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

_DWORD *sub_1D43B78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    goto LABEL_21;
  }

  v6 = 0;
  do
  {
    result = sub_1DED05C(v3);
    if (*result > 1u && *result != 3)
    {
      ++v6;
    }

    v3 = (v3 + 664);
  }

  while (v3 != v4);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!v6)
  {
LABEL_21:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    return sub_1961B64(a2, v3, v4, 0xA3784A062B2E43DBLL * ((v4 - v3) >> 3));
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    while (v3 != v4)
    {
      result = sub_1DED05C(v3);
      if (*result <= 3u && *result != 2)
      {
        v10 = a2[1];
        if (v10 >= a2[2])
        {
          result = sub_195E9F0(a2, v3);
        }

        else
        {
          sub_195EB38(a2[1], v3);
          result = (v10 + 664);
        }

        a2[1] = result;
      }

      v3 = (v3 + 664);
    }
  }

  return result;
}

void sub_1D43CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_1961C3C(&a10);
  _Unwind_Resume(a1);
}

void sub_1D43CCC(std::string *__str@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size)
    {
      v7 = __str->__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  if (!*(&__str->__r_.__value_.__s + 23))
  {
LABEL_27:
    *a3 = 0;
    a3[56] = 0;
    return;
  }

  v7 = __str;
LABEL_6:
  while (1)
  {
    v8 = v7->__r_.__value_.__s.__data_[0];
    if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
    {
      break;
    }

    v7 = (v7 + 1);
    if (!--size)
    {
      v9 = std::stoi(__str, 0, 10);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v10 = *(a2 + 32);
      if (v10)
      {
        v11 = v9;
        v12 = *(a2 + 40);
        v13 = sub_19592E8(&v60, v10);
        sub_13133B8(&v60, v13, (v12 + 8), v10, *v62 - v61);
        v14 = v61 + v10;
        LODWORD(v61) = v14;
        v15 = v62;
        if (*v62 < v14)
        {
          *v62 = v14;
        }

        v16 = (v15 + 2);
        if (v14 >= 2)
        {
          v17 = (v15 + 4);
          v18 = 8 * v14 - 8;
          do
          {
            v19 = *v16;
            sub_1307C2C(v67, *v17);
            sub_1307C2C(&v63, v19);
            if (v11 - v71 >= 0)
            {
              v20 = v11 - v71;
            }

            else
            {
              v20 = v71 - v11;
            }

            if (v11 - v66 >= 0)
            {
              v21 = v11 - v66;
            }

            else
            {
              v21 = v66 - v11;
            }

            sub_1307CF0(&v63);
            sub_1307CF0(v67);
            if (v20 < v21)
            {
              v16 = v17;
            }

            ++v17;
            v18 -= 8;
          }

          while (v18);
          v15 = v62;
          v14 = v61;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      if (v15)
      {
        v47 = v15 + 2;
      }

      else
      {
        v47 = 0;
      }

      if (v16 == &v47[2 * v14])
      {
        *a3 = 0;
        a3[56] = 0;
      }

      else
      {
        if (*(*v16 + 48))
        {
          v48 = *(*v16 + 48);
        }

        else
        {
          v48 = &off_277E630;
        }

        sub_16E5498(v67, v48);
        v49 = *v16;
        v50 = *(*v16 + 40);
        if (v50)
        {
          v51 = (v50 + 8);
        }

        else
        {
          v51 = 0;
        }

        v52 = *(v49 + 32);
        v68 = 0;
        v69 = 0;
        v70 = 0;
        if (v52 == -1 || (sub_1959254(&v68, v52), v52))
        {
          v53 = 8 * v52;
          do
          {
            v54 = *v51;
            if (v70 && v69 < *v70)
            {
              v55 = (v70 + 8 * v69);
              LODWORD(v69) = v69 + 1;
              v56 = *(v55 + 1);
            }

            else
            {
              v57 = sub_130F79C(v68);
              v56 = sub_19593CC(&v68, v57);
            }

            sub_13079F8(v56, v54);
            ++v51;
            v53 -= 8;
          }

          while (v53);
        }

        sub_1D442B8(a3, v67);
        sub_1312C68(&v68);
        sub_16E550C(v67);
      }

      sub_1312EFC(&v60);
      return;
    }
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  v22 = *(a2 + 56);
  if (v22)
  {
    v23 = *(a2 + 64);
    v24 = sub_19592E8(&v63, v22);
    sub_1313444(&v63, v24, (v23 + 8), v22, *v65 - v64);
    v25 = v64 + v22;
    LODWORD(v64) = v25;
    v26 = v65;
    if (*v65 < v25)
    {
      *v65 = v25;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v26)
  {
    v27 = (v26 + 2);
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v59 = __str->__r_.__value_.__r.__words[2];
  }

  if (v25)
  {
    v28 = v25;
    v29 = &v27[v28];
    do
    {
      sub_1308710(v67, *v27);
      v30 = *((v70 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if (v30 >= 0)
      {
        v31 = *((v70 & 0xFFFFFFFFFFFFFFFELL) + 23);
      }

      else
      {
        v31 = *((v70 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v32 = HIBYTE(v59);
      if (v59 < 0)
      {
        v32 = __p[1];
      }

      if (v31 == v32)
      {
        if (v30 >= 0)
        {
          v33 = (v70 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v33 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
        }

        if (v59 >= 0)
        {
          v34 = __p;
        }

        else
        {
          v34 = __p[0];
        }

        v35 = memcmp(v33, v34, v31);
        sub_13087E8(v67);
        if (!v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_13087E8(v67);
      }

      ++v27;
      --v28;
    }

    while (v28 * 8);
    v27 = v29;
  }

LABEL_54:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (v65)
  {
    v36 = v65 + 2;
  }

  else
  {
    v36 = 0;
  }

  if (v27 == &v36[2 * v64])
  {
    *a3 = 0;
    a3[56] = 0;
  }

  else
  {
    if (*(*v27 + 56))
    {
      v37 = *(*v27 + 56);
    }

    else
    {
      v37 = &off_277E630;
    }

    sub_16E5498(v67, v37);
    v38 = *v27;
    v39 = *(*v27 + 40);
    if (v39)
    {
      v40 = (v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v38 + 32);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    if (v41 == -1 || (sub_1959254(&v68, v41), v41))
    {
      v42 = 8 * v41;
      do
      {
        v43 = *v40;
        if (v70 && v69 < *v70)
        {
          v44 = (v70 + 8 * v69);
          LODWORD(v69) = v69 + 1;
          v45 = *(v44 + 1);
        }

        else
        {
          v46 = sub_130F79C(v68);
          v45 = sub_19593CC(&v68, v46);
        }

        sub_13079F8(v45, v43);
        ++v40;
        v42 -= 8;
      }

      while (v42);
    }

    sub_1D442B8(a3, v67);
    sub_1312C68(&v68);
    sub_16E550C(v67);
  }

  sub_1312F80(&v63);
}

void sub_1D441C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_16E550C(&a26);
  sub_1312EFC(&a15);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *v26 = 0;
    v26[56] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1D441ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D442B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D44A40(a1, a2);
  v4[1].__r_.__value_.__l.__size_ = 0;
  v4[1].__r_.__value_.__r.__words[2] = 0;
  p_size = &v4[1].__r_.__value_.__l.__size_;
  v4[2].__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 32))
  {
    if (a2 != a1)
    {
      v6 = *(a2 + 40);
      if (v6)
      {
        v7 = *(a2 + 48);
        v8 = sub_19592E8(&v4[1].__r_.__value_.__l.__size_, v6);
        sub_131310C(p_size, v8, (v7 + 8), v6, **(a1 + 48) - *(a1 + 40));
        v9 = *(a1 + 40) + v6;
        *(a1 + 40) = v9;
        v10 = *(a1 + 48);
        if (*v10 < v9)
        {
          *v10 = v9;
        }
      }
    }
  }

  else
  {
    *p_size = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v11 = *(a1 + 48);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = v11;
  }

  *(a1 + 56) = 1;
  return a1;
}

uint64_t sub_1D44394(uint64_t a1)
{
  sub_1312C68((a1 + 32));

  return sub_16E550C(a1);
}

void sub_1D443D4(unint64_t **a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v9 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v41 = *v5;
      sub_19E2788(v41, a2, v39);
      if (v40 == 1)
      {
        *v10 = v9;
        v37 = v9;
        sub_3608D0(v35, &unk_236FCD4);
        sub_1A2F6E4(v21, 0, 0, v35);
        v33 = 0;
        v34 = 0;
        memset(v12, 0, 24);
        LODWORD(v42[0]) = sub_1B840C0(a3);
        sub_1A2F780(v38, v39, v10, &v37, v21, &v33, v12, v42);
        v42[0] = v12;
        sub_195E3E8(v42);
        if (v34)
        {
          sub_1220A18(v34);
        }

        if ((v25[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if ((v23[7] & 0x80000000) != 0)
        {
          operator delete(v21[1]);
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        sub_1FCE02C(v21, a3);
        if ((v40 & 1) == 0)
        {
          sub_4F0F0C();
        }

        sub_3608D0(v10, &unk_236FCD4);
        sub_1FCE030(v21, v39, v10, v12);
        sub_1DED144(v38, v12);
        sub_195F5F0(v20, v20[1]);
        if (v19 < 0)
        {
          operator delete(v18);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        if (v13 < 0)
        {
          operator delete(v12[3]);
        }

        v37.i64[0] = v12;
        sub_195E3E8(&v37);
        if (v11 < 0)
        {
          operator delete(v10[0]);
        }

        sub_1D44AE0(a4, &v41);
        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        v12[0] = &v26;
        sub_195E3E8(v12);
        v12[0] = v25;
        sub_195E3E8(v12);
        v12[0] = v23;
        sub_195E3E8(v12);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        sub_196005C(v38);
        if (v40)
        {
          sub_130D8F4(v39);
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_1D44680(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_130D8F4(&STACK[0x448]);
  }

  sub_1D12974(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1D4470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::__shared_weak_count *a57)
{
  *(v57 - 96) = &a15;
  sub_195E3E8((v57 - 96));
  if (a57)
  {
    sub_1220A18(a57);
  }

  sub_195FC1C(&a35);
  JUMPOUT(0x1D44734);
}

uint64_t sub_1D44748@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(result + 112);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 104);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      result = sub_1A489AC(a2, (*(*v4 + 48) & 0xFFFFFFFFFFFFFFFELL));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_1D447BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_195E3E8(va);
  _Unwind_Resume(a1);
}

void sub_1D447D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 32);
      if (v8)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v9 = *(v7 + 40);
        if (v9)
        {
          v10 = (v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        if (v8 != -1)
        {
          sub_1959254(&v16, v8);
        }

        v11 = 8 * v8;
        do
        {
          v12 = *v10;
          if (v18 && v17 < *v18)
          {
            v13 = &v18[2 * v17];
            LODWORD(v17) = v17 + 1;
            v14 = *(v13 + 1);
          }

          else
          {
            v15 = sub_13840C4(v16);
            v14 = sub_19593CC(&v16, v15);
          }

          sub_1384060(v14, v12);
          ++v10;
          v11 -= 8;
        }

        while (v11);
        sub_1CACDAC(a2, &v16);
        sub_1312E78(&v16);
      }

      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_1D448E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1312E78(va);
  sub_1CAD3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D44910(uint64_t a1, uint64_t a2)
{
  sub_1D44748(a1, v6);
  v4 = sub_1AE9390(v6, a2, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL);
  v7 = v6;
  sub_195E3E8(&v7);
  return v4;
}

void sub_1D44978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_195E3E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D44990(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_1D44A24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D44A40(std::string *a1, uint64_t a2)
{
  sub_16E53BC(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
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

    if (size == v5)
    {
      sub_15DDDA8(a1, a2);
    }

    else
    {
      sub_16E5844(a1, a2);
    }
  }

  return a1;
}

void *sub_1D44AE0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1D44BA4();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1D44C28()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27EF450, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}