void sub_5642F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_5678AC(*a1 + 1576, a2, &v15);
  sub_67F320(&v15, __p);
  v5 = sub_58BBC(&v15);
  sub_65DED0(v4 + 3168, __p, v5, 0, a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v18;
  if (v18)
  {
    do
    {
      v7 = *v6;
      sub_55F7FC((v6 + 2));
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = v17;
  v17 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v15;
  if (v15)
  {
    v10 = v16;
    v11 = v15;
    if (v16 != v15)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v15;
    }

    v16 = v9;
    operator delete(v11);
  }
}

void sub_5643E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_5643F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_5674C8(_Unwind_Exception *a1)
{
  if (qword_27926F0)
  {
    qword_27926F8 = qword_27926F0;
    operator delete(qword_27926F0);
  }

  _Unwind_Resume(a1);
}

void sub_567860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_6E3B8((v18 + 1576));
  sub_528AB4(v18);
  _Unwind_Resume(a1);
}

void sub_5678AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_51BBA8(a2))
  {
    if (sub_659540(a2 + 32))
    {
      v6 = *(a2 + 1175);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 1160);
      }

      if (v6)
      {

        sub_567AE4(a2, a3);
      }
    }

    if (sub_659BD0(a2 + 1488))
    {

      sub_56A230(a2, a3);
    }

    else if (*(a2 + 1176) == *(a2 + 1184) && *(a2 + 1200) == *(a2 + 1208) && *(a2 + 1224) == *(a2 + 1232))
    {
      if (*(a2 + 1248) == 2)
      {
        if (*(a2 + 1304) == 13)
        {
          v7 = *(a2 + 1447);
          if ((v7 & 0x80u) != 0)
          {
            v7 = *(a2 + 1432);
          }

          if (v7)
          {

            sub_67E494(a3, (a2 + 1424));
          }

          else if (sub_53BB38(a2))
          {

            sub_568860(a2, a3);
          }

          else
          {

            sub_5689BC(a2, a3);
          }
        }

        else
        {

          sub_568458(a1, a2, a3);
        }
      }

      else
      {

        sub_5682FC(a2, a3);
      }
    }

    else
    {

      sub_567C60(a1, a2);
    }
  }

  else
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
  }
}

void sub_567AE4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  if (sub_6595D0(a1 + 32))
  {
    operator new();
  }

  operator new();
}

void sub_567C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A58C(v15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

void sub_567C60(uint64_t a1, void *a2)
{
  memset(v15, 0, sizeof(v15));
  v2 = a2[147];
  v3 = a2[148];
  v12 = v15;
  LOBYTE(v13) = 0;
  if (v3 != v2)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v3 - v2) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = a2[150];
  v5 = a2[151];
  v9 = &v12;
  LOBYTE(v10) = 0;
  if (v5 != v4)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = a2[153];
  v7 = a2[154];
  __p[0] = &v9;
  LOBYTE(__p[1]) = 0;
  if (v7 != v6)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v7 - v6) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  operator new();
}

void sub_568188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_51B6E0(&a22);
  sub_51B6E0(&a25);
  sub_51B6E0(&a28);
  _Unwind_Resume(a1);
}

void sub_568210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void *);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_52A6FC(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

void sub_56828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v13 = va_arg(va1, void **);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if (v9)
  {
    v11 = v8 - 168;
    v12 = -v9;
    do
    {
      v11 = sub_52A624(v11) - 168;
      v12 += 168;
    }

    while (v12);
  }

  sub_52A6FC(va);
  sub_51B6E0(va1);
  _Unwind_Resume(a1);
}

void sub_5682C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v12)
  {
    v14 = v11 - 168;
    v15 = -v12;
    do
    {
      v14 = sub_52A624(v14) - 168;
      v15 += 168;
    }

    while (v15);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

double sub_5682FC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1248);
  if (v3 == 1)
  {
    if (*(a1 + 1256) != *(a1 + 1264))
    {
      operator new();
    }
  }

  else if (!v3)
  {
    operator new();
  }

  result = 0.0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  return result;
}

void sub_568438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_568458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 1304);
  if (v4 <= 6)
  {
    if (v4 > 3)
    {
      if ((v4 - 4) < 2)
      {
        operator new();
      }
    }

    else
    {
      if ((v4 - 2) < 2)
      {
        operator new();
      }

      if (!v4)
      {
        operator new();
      }

      if (v4 == 1)
      {
        v5 = a2 + 1352;
        v6 = *(a2 + 1336);

        sub_5695F4(a1, v6, v5, a3);
        return result;
      }
    }

LABEL_29:
    result = 0.0;
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
    return result;
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      operator new();
    }

    if (v4 == 11)
    {
      operator new();
    }

    if (v4 != 12)
    {
      goto LABEL_29;
    }

    sub_67E494(a3, qword_27935D0);
  }

  else
  {
    if (v4 == 7)
    {
      operator new();
    }

    if (v4 == 8)
    {
      operator new();
    }

    v8 = (a2 + 1344);

    sub_569A40(v8, 1, a3);
  }

  return result;
}

void sub_56882C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_568860(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 1416) == 1 && *(a1 + 1408) == 1)
  {
    v5 = *(a1 + 1400);
    v4 = "Advisory_Based_On_Predicted_Traffic";
    v6 = v5 != 0x7FFFFFFF && *(a1 + 1404) < v5;
    if (v6 && *(a1 + 1412) != 0x7FFFFFFF)
    {
      v4 = "Advisory_Leave_By_Time";
    }
  }

  else
  {
    v4 = "Advisory_Based_On_Predicted_Traffic";
  }

  v7 = strlen(v4);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v10 = v7;
  if (v7)
  {
    memcpy(&__dst, v4, v7);
  }

  *(&__dst + v8) = 0;
  sub_67E494(a2, &__dst);
  if (v10 < 0)
  {
    operator delete(__dst);
  }
}

void sub_5689A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5689BC(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  memset(&__p, 0, sizeof(__p));
  v4 = "Advisory_CLOSED_SEASONAL";
  v5 = 24;
  switch(v3)
  {
    case 0:
      v4 = "Advisory_Could_not_avoid_tolls";
      v5 = 30;
      goto LABEL_52;
    case 1:
      v4 = "Advisory_Could_not_avoid_highways";
      v5 = 33;
      goto LABEL_52;
    case 2:
      v4 = "Advisory_Could_not_avoid_tolls_and_highways";
      v5 = 43;
      goto LABEL_52;
    case 3:
      v4 = "Advisory_Faster_alternate_with_tolls";
      v5 = 36;
      goto LABEL_52;
    case 4:
      v4 = "Advisory_Faster_alternate_with_highways";
      v5 = 39;
      goto LABEL_52;
    case 5:
      v4 = "Advisory_Faster_alternate_with_tolls_and_highways";
      v5 = 49;
      goto LABEL_52;
    case 6:
      v4 = "Advisory_Faster_alternate_with_hills";
      v5 = 36;
      goto LABEL_52;
    case 7:
      v4 = "Advisory_Faster_alternate_with_stairs";
      v5 = 37;
      goto LABEL_52;
    case 8:
      v4 = "Advisory_Faster_alternate_with_busy_roads";
      v5 = 41;
      goto LABEL_52;
    case 9:
      v4 = "Advisory_Faster_alternate_with_hills_and_stairs";
      v5 = 47;
      goto LABEL_52;
    case 10:
      v4 = "Advisory_Faster_alternate_with_hills_and_busy_roads";
      v5 = 51;
      goto LABEL_52;
    case 11:
      v4 = "Advisory_Faster_alternate_with_hills_stairs_and_busy_roads";
      v5 = 58;
      goto LABEL_52;
    case 12:
      v4 = "Advisory_Faster_alternate_with_stairs_and_busy_roads";
      v5 = 52;
      goto LABEL_52;
    case 13:
      v4 = "Advisory_Highways_required";
      v5 = 26;
      goto LABEL_52;
    case 14:
      v4 = "Advisory_Hills_Included";
      v5 = 23;
      goto LABEL_52;
    case 15:
      v4 = "Advisory_Busy_Roads_included";
      v5 = 28;
      goto LABEL_52;
    case 16:
      v4 = "Advisory_Stairs_Included";
      v5 = 24;
      goto LABEL_52;
    case 17:
      v4 = "Advisory_ROUTE_VIOLATES_TIME_BASED_RESTRICTION";
      v5 = 46;
      goto LABEL_52;
    case 18:
      v6 = "Advisory_CLOSED_WINTER";
      goto LABEL_59;
    case 19:
      v6 = "Advisory_CLOSED_SUMMER";
      goto LABEL_59;
    case 20:
      goto LABEL_52;
    case 21:
      *(&__p.__r_.__value_.__s + 23) = 4;
      strcpy(&__p, "TOLL");
      goto LABEL_53;
    case 22:
      v6 = "Advisory_INTERNATIONAL";
      goto LABEL_59;
    case 23:
      *(&__p.__r_.__value_.__s + 23) = 19;
      strcpy(&__p, "Advisory_RESTRICTED");
      goto LABEL_53;
    case 24:
      *(&__p.__r_.__value_.__s + 23) = 21;
      strcpy(&__p, "Advisory_4X4_REQUIRED");
      goto LABEL_53;
    case 25:
      *(&__p.__r_.__value_.__s + 23) = 16;
      strcpy(&__p, "Advisory_UNPAVED");
      goto LABEL_53;
    case 26:
      v4 = "Advisory_ROUTE_CLIPPED_ORIG";
      v5 = 27;
      goto LABEL_52;
    case 27:
      v4 = "Advisory_ROUTE_CLIPPED_DEST";
      v5 = 27;
      goto LABEL_52;
    case 28:
      v4 = "Advisory_ROUTE_CLIPPED_BOTH";
      v5 = 27;
      goto LABEL_52;
    case 29:
      v4 = "Advisory_STARTS_ON_CLOSEST_ROAD";
      goto LABEL_51;
    case 30:
      v4 = "Advisory_ENDS_ON_CLOSEST_ROAD";
      v5 = 29;
      goto LABEL_52;
    case 31:
      v4 = "Advisory_STARTS_AND_ENDS_ON_CLOSEST_ROAD";
      v5 = 40;
      goto LABEL_52;
    case 32:
      v6 = "Advisory_PARK_AND_WALK";
      goto LABEL_59;
    case 33:
      *(&__p.__r_.__value_.__s + 23) = 14;
      strcpy(&__p, "Advisory_FERRY");
      goto LABEL_53;
    case 34:
      v4 = "Advisory_RAILWAY_SHUTTLE";
      v5 = 24;
      goto LABEL_52;
    case 35:
      v4 = "Advisory_TBT_UNAVAILABLE";
      v5 = 24;
      goto LABEL_52;
    case 36:
      v4 = "Advisory_STAIRS_REQUIRED";
      v5 = 24;
      goto LABEL_52;
    case 37:
      v4 = "Advisory_WALKING_REQUIRED";
      v5 = 25;
      goto LABEL_52;
    case 38:
      v4 = "Advisory_PEDESTRIAN_SHARED_SPACE";
      v5 = 32;
      goto LABEL_52;
    case 39:
      v4 = "Advisory_Route_Crosses_Timezone";
      goto LABEL_51;
    case 40:
      v4 = "Annotation_Title_Escalator";
      v5 = 26;
      goto LABEL_52;
    case 41:
      v6 = "Annotation_Title_Ferry";
      goto LABEL_59;
    case 42:
      v4 = "Annotation_Title_RailwayShuttle";
      goto LABEL_51;
    case 43:
      *(&__p.__r_.__value_.__s + 23) = 5;
      strcpy(&__p, "HILLS");
      goto LABEL_53;
    case 44:
      v4 = "Annotation_Title_Stairs";
      v5 = 23;
      goto LABEL_52;
    case 45:
      v4 = "Advisory_Based_On_Predicted_Traffic";
      v5 = 35;
      goto LABEL_52;
    case 46:
      v4 = "Advisory_EV_Unavailable_Offline";
LABEL_51:
      v5 = 31;
      goto LABEL_52;
    case 47:
      v4 = "Regional_Advisory_EBike_Restrictions_Offline";
      v5 = 44;
      goto LABEL_52;
    case 48:
    case 49:
      v4 = "Advisory_Reduce_Environment_Impact";
      v5 = 34;
LABEL_52:
      sub_195A048(&__p, v4, v5);
      goto LABEL_53;
    case 50:
      v6 = "Advisory_FORD_CROSSING";
LABEL_59:
      *&__p.__r_.__value_.__l.__data_ = *v6;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = *(v6 + 14);
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 5632;
      goto LABEL_53;
    case 51:
      sub_2D4D58("Advisory_PREFERRED_ROUTE_UNAVAILABLE", "DEV:", &v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v7;
      goto LABEL_53;
    case 52:
      *(a2 + 64) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 56) = 1065353216;
      *(a2 + 64) = 1;
      return;
    default:
LABEL_53:
      sub_67E494(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
  }
}

void sub_568E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_568F30(unint64_t a1@<X0>, const void **a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = sub_2FEF94(a1);
  v10 = sub_6DEFC(v9, a3);
  if (a4)
  {
    v11 = "es";
  }

  else
  {
    v11 = "s";
  }

  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v37 = v12;
  memcpy(&__dst, v11, v12);
  *(&__dst | v12) = 0;
  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_48;
      }

      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = a2[1];
      }

      if (v16)
      {
        if (v16 + 4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v16 + 4 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v16 + 4;
        *&__p.__r_.__value_.__l.__data_ = 0x6F77545FuLL;
        if ((v15 & 0x80u) == 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        memmove(__p.__r_.__value_.__r.__words + 4, v32, v16);
        *(__p.__r_.__value_.__r.__words + v16 + 4) = 0;
        if ((v37 & 0x80u) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        if ((v37 & 0x80u) == 0)
        {
          v27 = v37;
        }

        else
        {
          v27 = v36;
        }

        goto LABEL_99;
      }

      *(a5 + 16) = 0x400000000000000;
      v24 = "_Two";
    }

    else
    {
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = *(a2 + 23);
      }

      else
      {
        v22 = a2[1];
      }

      if (v22)
      {
        v23 = v22 + 4;
        if (v22 + 4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *a5 = 0;
        *(a5 + 23) = v23;
        *a5 = 1701728095;
        v29 = (a5 + 4);
        if ((v21 & 0x80u) == 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        memmove(v29, v30, v22);
        *(v29 + v22) = 0;
        if (v37 < 0)
        {
          goto LABEL_103;
        }

        return;
      }

      *(a5 + 16) = 0x400000000000000;
      v24 = "_One";
    }

LABEL_56:
    *a5 = *v24;
    if ((v37 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_103;
  }

  if (v10 == 2)
  {
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    if (v18)
    {
      if (v18 + 4 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v18 + 4 >= 0x17)
      {
        operator new();
      }

      __p.__r_.__value_.__r.__words[2] = 0;
      *(&__p.__r_.__value_.__s + 23) = v18 + 4;
      *&__p.__r_.__value_.__l.__data_ = 0x7765465FuLL;
      if ((v17 & 0x80u) == 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }

      memmove(__p.__r_.__value_.__r.__words + 4, v25, v18);
      *(__p.__r_.__value_.__r.__words + v18 + 4) = 0;
      if ((v37 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v37 & 0x80u) == 0)
      {
        v27 = v37;
      }

      else
      {
        v27 = v36;
      }

      goto LABEL_99;
    }

    *(a5 + 16) = 0x400000000000000;
    v24 = "_Few";
    goto LABEL_56;
  }

  if (v10 == 3)
  {
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = a2[1];
    }

    if (!v20)
    {
      *a5 = *"_Many";
      *(a5 + 16) = 0x500000000000000;
      if ((v37 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_103;
    }

    if (v20 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 + 5 >= 0x17)
    {
      operator new();
    }

    HIDWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    __p.__r_.__value_.__r.__words[2] = 0;
    *(&__p.__r_.__value_.__s + 23) = v20 + 5;
    *(__p.__r_.__value_.__r.__words + 4) = 121;
    LODWORD(__p.__r_.__value_.__l.__data_) = 1851870559;
    if ((v19 & 0x80u) == 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(__p.__r_.__value_.__r.__words + 5, v28, v20);
    *(__p.__r_.__value_.__r.__words + v20 + 5) = 0;
    if ((v37 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v37 & 0x80u) == 0)
    {
      v27 = v37;
    }

    else
    {
      v27 = v36;
    }

    goto LABEL_99;
  }

  if (v10 != 4)
  {
LABEL_48:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v37 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_103;
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (!v14)
  {
    *(a5 + 16) = 0x600000000000000;
    v24 = "_Other";
    goto LABEL_56;
  }

  if (v14 + 6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 6 >= 0x17)
  {
    operator new();
  }

  __p.__r_.__value_.__r.__words[2] = 0;
  *(&__p.__r_.__value_.__s + 23) = v14 + 6;
  *&__p.__r_.__value_.__l.__data_ = 0x726568744F5FuLL;
  if ((v13 & 0x80u) == 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = *a2;
  }

  memmove(__p.__r_.__value_.__r.__words + 6, v31, v14);
  *(__p.__r_.__value_.__r.__words + v14 + 6) = 0;
  if ((v37 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v37 & 0x80u) == 0)
  {
    v27 = v37;
  }

  else
  {
    v27 = v36;
  }

LABEL_99:
  v33 = std::string::append(&__p, p_dst, v27);
  *a5 = *v33;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v37 & 0x80000000) == 0)
    {
      return;
    }

LABEL_103:
    operator delete(__dst);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v37 < 0)
  {
    goto LABEL_103;
  }
}

void sub_56958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_5695F4(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 56) = 1065353216;
  *(a4 + 64) = 1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  strcpy(&v19, "EV_CHARGE_STATION");
  WORD1(v19.__r_.__value_.__r.__words[2]) = unk_229927A;
  HIDWORD(v19.__r_.__value_.__r.__words[2]) = unk_229927C;
  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v6)
  {
    *(&__p.__r_.__value_.__s + 23) = 20;
    strcpy(&__p, "_NAMED_CITY_One_Stop");
    __p.__r_.__value_.__s.__data_[0] = __toupper(95);
    __p.__r_.__value_.__s.__data_[1] = __toupper(78);
    __p.__r_.__value_.__s.__data_[2] = __toupper(65);
    __p.__r_.__value_.__s.__data_[3] = __toupper(77);
    __p.__r_.__value_.__s.__data_[4] = __toupper(69);
    __p.__r_.__value_.__s.__data_[5] = __toupper(68);
    __p.__r_.__value_.__s.__data_[6] = __toupper(95);
    __p.__r_.__value_.__s.__data_[7] = __toupper(67);
    __p.__r_.__value_.__s.__data_[8] = __toupper(73);
    __p.__r_.__value_.__s.__data_[9] = __toupper(84);
    __p.__r_.__value_.__s.__data_[10] = __toupper(89);
    __p.__r_.__value_.__s.__data_[11] = __toupper(95);
    __p.__r_.__value_.__s.__data_[12] = __toupper(79);
    __p.__r_.__value_.__s.__data_[13] = __toupper(110);
    __p.__r_.__value_.__s.__data_[14] = __toupper(101);
    __p.__r_.__value_.__s.__data_[15] = __toupper(95);
    __p.__r_.__value_.__s.__data_[16] = __toupper(83);
    __p.__r_.__value_.__s.__data_[17] = __toupper(116);
    __p.__r_.__value_.__s.__data_[18] = __toupper(111);
    __p.__r_.__value_.__s.__data_[19] = __toupper(112);
    std::string::append(&v19, &__p, 0x14uLL);
    v8 = a3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = a3;
    }

    sub_67ECF8(a4, "{CityName}", v8);
  }

  else
  {
LABEL_8:
    v9 = v16;
    sub_568F30(a2, "_Stop", *(a1 + 968), 0, v16);
    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v9 = v16[0];
      v10 = v16[1];
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__p, v9, v10);
      __p.__r_.__value_.__s.__data_[v10] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      do
      {
        p_p->__r_.__value_.__s.__data_[0] = __toupper(*v9);
        p_p = (p_p + 1);
        v9 = (v9 + 1);
        --v10;
      }

      while (v10);
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
    }

    else
    {
      size = 0;
      v12 = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
    }

    if ((v12 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = size;
    }

    std::string::append(&v19, v14, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v16[0]);
  }

LABEL_29:
  sub_67E35C(a4, &v19);
  std::to_string(&__p, a2);
  sub_67ECF8(a4, "{StopsCount}", &__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v19.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }
}

void sub_5699BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_53A58C(v26);
  _Unwind_Resume(a1);
}

void sub_569A40(int *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 1;
  v4 = "Advisory_Details_EV_Stale_Battery_Info";
  if (a2)
  {
    v4 = "Advisory_Route_Planning_Title_EV_Stale_Battery_Info";
  }

  v5 = "Advisory_Details_EV_Stale_Battery_Info_At_Least";
  *a3 = 0uLL;
  *(a3 + 16) = 0uLL;
  if (a2)
  {
    v5 = "Advisory_Route_Planning_Title_EV_Stale_Battery_Info_At_Least";
  }

  if (*a1 <= 863999)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v10 = v7;
  if (v7)
  {
    memcpy(&__dst, v6, v7);
  }

  *(&__dst + v8) = 0;
  sub_67E35C(a3, &__dst);
  if (v10 < 0)
  {
    operator delete(__dst);
  }
}

void sub_569B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A58C(v15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

double sub_569BC8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1304);
  if (v3 > 6)
  {
    if (v3 <= 8)
    {
      if (v3 != 7)
      {
        operator new();
      }

      operator new();
    }

    if (v3 == 9)
    {
      operator new();
    }

    if (v3 == 10)
    {
      operator new();
    }
  }

  else
  {
    if ((v3 - 2) < 2)
    {
      operator new();
    }

    if ((v3 - 4) < 2)
    {
      operator new();
    }
  }

  result = 0.0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  return result;
}

void sub_569E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_569EC4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1304);
  if (v3 <= 6)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        operator new();
      }

      if (v3 == 5)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 2)
      {
        operator new();
      }

      if (v3 == 3)
      {
        operator new();
      }
    }

LABEL_21:
    result = 0.0;
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    return result;
  }

  if (v3 <= 8)
  {
    if (v3 != 7)
    {
      operator new();
    }

    operator new();
  }

  if (v3 != 9)
  {
    if (v3 == 10)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v4 = (a1 + 1344);

  sub_569A40(v4, 0, a2);
  return result;
}

void sub_56A1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_56A230(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_67E494(a2, qword_2793720);
  if (*(a1 + 1991) < 0)
  {
    sub_325C(__p, *(a1 + 1968), *(a1 + 1976));
  }

  else
  {
    *__p = *(a1 + 1968);
    v5 = *(a1 + 1984);
  }

  sub_67ECF8(a2, "{AreaIncident}", __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_56A2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v14);
  _Unwind_Resume(a1);
}

void sub_56A308(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  *(a6 + 56) = 1065353216;
  *(a6 + 64) = 1;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) < 2)
  {
    if (a4)
    {
      operator new();
    }

    operator new();
  }

  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  sub_568F30(a2, __p, *(a1 + 968), 0, v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 0x80u) == 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = v23[1];
  }

  if (v10 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 16 >= 0x17)
  {
    operator new();
  }

  v20.__r_.__value_.__r.__words[2] = 0;
  *(&v20.__r_.__value_.__s + 23) = v10 + 16;
  *&v20.__r_.__value_.__l.__data_ = *"Advisory_Grouped";
  if (v10)
  {
    if ((v24 & 0x80u) == 0)
    {
      v11 = v23;
    }

    else
    {
      v11 = v23[0];
    }

    memmove(&v20.__r_.__value_.__r.__words[2], v11, v10);
  }

  *(&v20.__r_.__value_.__r.__words[2] + v10) = 0;
  if (a5)
  {
    v12 = "_Area_Events";
  }

  else
  {
    v12 = "_Area_Incidents";
  }

  if (a5)
  {
    v13 = 12;
  }

  else
  {
    v13 = 15;
  }

  v14 = std::string::append(&v20, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v22 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_40;
    }
  }

  else if (!a4)
  {
    goto LABEL_40;
  }

  v16 = SHIBYTE(v22);
  if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
  {
    v16 = __p[1];
    v17 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 - __p[1] < 0xB)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v22 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v17 + 11)
      {
        sub_3244();
      }

LABEL_33:
      operator new();
    }

    v18 = __p[0];
  }

  else
  {
    if ((SHIBYTE(v22) - 12) < 0xB)
    {
      goto LABEL_33;
    }

    v18 = __p;
  }

  qmemcpy(v16 + v18, "_With_Other", 11);
  v19 = v16 + 11;
  if (SHIBYTE(v22) < 0)
  {
    __p[1] = v16 + 11;
  }

  else
  {
    HIBYTE(v22) = v19 & 0x7F;
  }

  v19[v18] = 0;
LABEL_40:
  sub_67E35C(a6, __p);
  std::to_string(&v20, a2);
  sub_67ECF8(a6, "{count}", &v20.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
LABEL_42:
      if ((v24 & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v23[0]);
      return;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(__p[0]);
  if (v24 < 0)
  {
    goto LABEL_46;
  }
}

void sub_56A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v27);
  _Unwind_Resume(a1);
}

double sub_56A8B0@<D0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    operator new();
  }

  return sub_5682FC(a1, a3);
}

void sub_56A96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_56A988(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v7 = a2[147];
  v8 = a2[148];
  __p = v29;
  LOBYTE(v27) = 0;
  if (v8 != v7)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v8 - v7) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  v9 = a2[153];
  v10 = a2[154];
  v24[0] = &__p;
  LOBYTE(v24[1]) = 0;
  if (v10 != v9)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v10 - v9) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  if (unk_2299267 < 0)
  {
    sub_325C(v31, *"_Limited_Traffic_Zone", *"_Traffic_Zone");
  }

  else
  {
    strcpy(v31, "_Limited_Traffic_Zone");
    HIWORD(v31[2]) = unk_2299266;
  }

  v11 = __p;
  if (__p)
  {
    v12 = v27;
    v13 = __p;
    if (v27 != __p)
    {
      do
      {
        v12 = sub_52A624(v12 - 168);
      }

      while (v12 != v11);
      v13 = __p;
    }

    v27 = v11;
    operator delete(v13);
  }

  v14 = v29[0];
  if (v29[0])
  {
    v15 = v29[1];
    v16 = v29[0];
    if (v29[1] != v29[0])
    {
      do
      {
        v15 = sub_52A624(v15 - 168);
      }

      while (v15 != v14);
      v16 = v29[0];
    }

    v29[1] = v14;
    operator delete(v16);
  }

  if (!a3)
  {
    sub_567C60(a1, a2);
    goto LABEL_46;
  }

  if (SHIBYTE(v31[2]) >= 0)
  {
    v17 = HIBYTE(v31[2]);
  }

  else
  {
    v17 = v31[1];
  }

  if (v17 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 16 >= 0x17)
  {
    operator new();
  }

  v25 = 0;
  HIBYTE(v25) = v17 + 16;
  *v24 = *"Advisory_Grouped";
  if (v17)
  {
    if (SHIBYTE(v31[2]) >= 0)
    {
      v18 = v31;
    }

    else
    {
      v18 = v31[0];
    }

    memmove(&v25, v18, v17);
  }

  *(&v25 + v17) = 0;
  v19 = SHIBYTE(v25);
  if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
  {
    v19 = v24[1];
    v20 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v20 - v24[1] < 0xB)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v25 & 0x7FFFFFFFFFFFFFFFLL)) < v24[1] - v20 + 11)
      {
        sub_3244();
      }

LABEL_38:
      operator new();
    }

    v21 = v24[0];
  }

  else
  {
    if ((SHIBYTE(v25) - 12) < 0xB)
    {
      goto LABEL_38;
    }

    v21 = v24;
  }

  qmemcpy(v19 + v21, "_With_Other", 11);
  v22 = v19 + 11;
  if (SHIBYTE(v25) < 0)
  {
    v24[1] = v19 + 11;
  }

  else
  {
    HIBYTE(v25) = v22 & 0x7F;
  }

  v22[v21] = 0;
  *v29 = *v24;
  v30 = v25;
  v24[1] = 0;
  v25 = 0;
  v24[0] = 0;
  sub_67E494(a4, v29);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
LABEL_46:
      if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v24[0]);
  if (SHIBYTE(v31[2]) < 0)
  {
LABEL_47:
    operator delete(v31[0]);
  }
}

void sub_56AEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a27);
  _Unwind_Resume(exception_object);
}

void sub_56AFC8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  sub_568F30(a2, &__p.__r_.__value_.__l.__data_, *(a1 + 968), 0, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 1;
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14[1];
  }

  if (v5 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v5 + 16 >= 0x17)
  {
    operator new();
  }

  v12[0] = 0;
  HIBYTE(v12[0]) = v5 + 16;
  *v11 = *"Advisory_Grouped";
  if (v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = v14[0];
    }

    memmove(v12, v6, v5);
  }

  *(v12 + v5) = 0;
  v7 = SHIBYTE(v12[0]);
  if ((SHIBYTE(v12[0]) & 0x8000000000000000) != 0)
  {
    v7 = v11[1];
    v8 = (v12[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v11[1] < 0xB)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v12[0] & 0x7FFFFFFFFFFFFFFFLL)) < v11[1] - v8 + 11)
      {
        sub_3244();
      }

LABEL_19:
      operator new();
    }

    v9 = v11[0];
  }

  else
  {
    if ((SHIBYTE(v12[0]) - 12) < 0xB)
    {
      goto LABEL_19;
    }

    v9 = v11;
  }

  qmemcpy(v7 + v9, "_Advisories", 11);
  v10 = v7 + 11;
  if (SHIBYTE(v12[0]) < 0)
  {
    v11[1] = v7 + 11;
  }

  else
  {
    HIBYTE(v12[0]) = v10 & 0x7F;
  }

  v10[v9] = 0;
  *&__p.__r_.__value_.__l.__data_ = *v11;
  __p.__r_.__value_.__r.__words[2] = v12[0];
  v11[1] = 0;
  v12[0] = 0;
  v11[0] = 0;
  sub_67E35C(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12[0]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v12[0]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v11[0]);
LABEL_27:
  std::to_string(&__p, a2);
  sub_67ECF8(a3, "{count}", &__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v14[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v15 < 0)
  {
    goto LABEL_33;
  }
}

void sub_56B324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v27);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_56B3A4(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  operator new();
}

void sub_56B4A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v3 = sub_658A28(a1 + 776, 0);
  v4 = *(a1 + 991);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 976);
  }

  if (v3)
  {
    if (v4)
    {
      operator new();
    }

    operator new();
  }

  if (v4)
  {
    operator new();
  }

  operator new();
}

void sub_56BCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1A104((v30 - 104));
  sub_53A58C(v29);
  _Unwind_Resume(a1);
}

BOOL sub_56BE38@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_659568(a2 + 32);
  if (result)
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
    if (*(a2 + 920) <= 0.0)
    {
      goto LABEL_16;
    }

    if (byte_27935CF >= 0)
    {
      v7 = byte_27935CF;
    }

    else
    {
      v7 = qword_27935C0;
    }

    if (v7 + 20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 + 20 >= 0x17)
    {
      operator new();
    }

    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    HIBYTE(v31) = v7 + 20;
    if (v7)
    {
      if (byte_27935CF >= 0)
      {
        v8 = &qword_27935B8;
      }

      else
      {
        v8 = qword_27935B8;
      }

      memmove(v30, v8, v7);
    }

    strcpy(v30 + v7, "PERCENTAGE_CONTAINED");
    sub_67E77C(a3, v30);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
      v9 = *(a2 + 916);
      if (!v9)
      {
LABEL_72:
        if (*(a2 + 924) != 0x7FFFFFFF)
        {
          if (byte_27935CF >= 0)
          {
            v22 = byte_27935CF;
          }

          else
          {
            v22 = qword_27935C0;
          }

          if (v22 + 26 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v22 + 26 > 0x16)
          {
            operator new();
          }

          v30[1] = 0;
          v31 = 0;
          v30[0] = 0;
          HIBYTE(v31) = v22 + 26;
          if (byte_27935CF >= 0)
          {
            v23 = &qword_27935B8;
          }

          else
          {
            v23 = qword_27935B8;
          }

          memmove(v30, v23, v22);
          strcpy(v30 + v22, "ESTIMATED_CONTAINMENT_TIME");
          sub_67E77C(a3, v30);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }
        }

        operator new();
      }
    }

    else
    {
LABEL_16:
      v9 = *(a2 + 916);
      if (!v9)
      {
        goto LABEL_72;
      }
    }

    if (*(a1 + 1064))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 * 2.471;
    }

    v11 = "{AreaAcre}";
    if (*(a1 + 1064))
    {
      v11 = "{AreaHectare}";
    }

    *v30 = *v11;
    v31 = *(v11 + 2);
    if (byte_27935CF >= 0)
    {
      v12 = byte_27935CF;
    }

    else
    {
      v12 = qword_27935C0;
    }

    if (v12 + 12 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v12 + 12 >= 0x17)
    {
      operator new();
    }

    memset(&v29, 0, sizeof(v29));
    *(&v29.__r_.__value_.__s + 23) = v12 + 12;
    if (v12)
    {
      if (byte_27935CF >= 0)
      {
        v13 = &qword_27935B8;
      }

      else
      {
        v13 = qword_27935B8;
      }

      memmove(&v29, v13, v12);
    }

    strcpy(&v29 + v12, "BURNING_AREA");
    v25 = 0;
    LOBYTE(v24) = 0;
    v14 = __p;
    sub_568F30(v10, &v24, *(a1 + 968), 0, __p);
    if ((v27 & 0x80u) == 0)
    {
      v15 = v27;
    }

    else
    {
      v14 = __p[0];
      v15 = __p[1];
    }

    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
      __dst.__r_.__value_.__s.__data_[v15] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      do
      {
        p_dst->__r_.__value_.__s.__data_[0] = __toupper(*v14);
        p_dst = (p_dst + 1);
        v14 = (v14 + 1);
        --v15;
      }

      while (v15);
      v17 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = 0;
      __dst.__r_.__value_.__s.__data_[0] = 0;
    }

    if ((v17 & 0x80u) == 0)
    {
      v18 = &__dst;
    }

    else
    {
      v18 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      size = v17;
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    std::string::append(&v29, v18, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((v27 & 0x80000000) == 0)
      {
LABEL_54:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

LABEL_67:
        operator delete(v24);
LABEL_55:
        if (*(a1 + 1064))
        {
          v20 = "_HECTARE";
        }

        else
        {
          v20 = "_ACRE";
        }

        if (*(a1 + 1064))
        {
          v21 = 8;
        }

        else
        {
          v21 = 5;
        }

        std::string::append(&v29, v20, v21);
        sub_67E77C(a3, &v29);
        std::to_string(&__dst, v10);
        sub_67ECF8(a3, v30, &__dst.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_63:
            if ((SHIBYTE(v31) & 0x80000000) == 0)
            {
              goto LABEL_72;
            }

LABEL_70:
            operator delete(v30[0]);
            goto LABEL_72;
          }
        }

        else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        operator delete(v29.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }
    }

    else if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    operator delete(__p[0]);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_67;
  }

  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 1;
  return result;
}

void sub_56C440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    sub_53A58C(v38);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_53A58C(v38);
  _Unwind_Resume(a1);
}

uint64_t sub_56C570@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v3 = *(a1 + 1112);
  v4 = *(v3 + 223);
  if (v4 < 0)
  {
    if (*(v3 + 208))
    {
      goto LABEL_8;
    }
  }

  else if (*(v3 + 223))
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 1015);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 1000);
  }

  if (v5)
  {
LABEL_8:
    if ((v4 & 0x80000000) != 0)
    {
      if (*(v3 + 208))
      {
LABEL_10:
        if ((*(v3 + 247) & 0x8000000000000000) != 0)
        {
          if (*(v3 + 232))
          {
LABEL_12:
            operator new();
          }
        }

        else if (*(v3 + 247))
        {
          goto LABEL_12;
        }

        operator new();
      }
    }

    else if (*(v3 + 223))
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 1039);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a1 + 1024);
    }

    if (v6)
    {
      operator new();
    }

    operator new();
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&__p);
    v8 = sub_4A5C(&__p, "Neither area weblink nor generic weblink were valid for area incident: ", 71);
    v11 = *(a1 + 80);
    v10 = a1 + 80;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    sub_4A5C(v8, v13, v14);
    if ((v30 & 0x10) != 0)
    {
      v16 = v29;
      if (v29 < v26)
      {
        v29 = v26;
        v16 = v26;
      }

      v17 = &v25;
    }

    else
    {
      if ((v30 & 8) == 0)
      {
        v15 = 0;
        v20 = 0;
LABEL_42:
        *(&v19 + v15) = 0;
        sub_7E854(&v19, 1u);
        if (v20 < 0)
        {
          operator delete(v19);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v17 = v24;
      v16 = v24[2];
    }

    v18 = *v17;
    v15 = v16 - *v17;
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v20 = v16 - *v17;
    if (v15)
    {
      memmove(&v19, v18, v15);
    }

    goto LABEL_42;
  }

  return result;
}

void sub_56C9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_53A58C(v20);
  _Unwind_Resume(a1);
}

void sub_56CAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_53A58C(v17);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v17);
  _Unwind_Resume(a1);
}

double sub_56CAE4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v3 = *(a1 + 1112);
  if (*(v3 + 124) != 0x7FFFFFFF)
  {
    operator new();
  }

  if (*(v3 + 120) != 0x7FFFFFFF)
  {
    operator new();
  }

  return result;
}

void sub_56CC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A58C(v15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

void sub_56CD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_56CD58(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_658A28(a1 + 2232, 1))
  {
    operator new();
  }

  sub_56A230(a1, a2);
}

void sub_56CE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

void sub_56CE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_56CEA8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v2 = *(a1 + 2471);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 2456);
  }

  if (v2)
  {
    v3 = *(a1 + 2495);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a1 + 2480);
    }

    if (v3)
    {
      operator new();
    }

    operator new();
  }
}

void sub_56CFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A58C(v15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

void sub_57006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_41:
                if (a72 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
LABEL_42:
                operator delete(a69);
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a68 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

uint64_t sub_5702E4(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = -1;
  *(a1 + 1168) = -1;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0x8000000080000000;
  sub_64B998(a1 + 1232);
  sub_64B998(a1 + 1392);
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1595) = -1;
  *(a1 + 1599) = 0;
  *(a1 + 1607) = 0u;
  *(a1 + 1623) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1788) = 0;
  *(a1 + 1761) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 1976) = 0u;
  return a1;
}

void sub_5703E8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1232);
  v4 = *(v1 + 1192);
  if (v4)
  {
    *(v1 + 1200) = v4;
    operator delete(v4);
    if (*(v1 + 1128) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 1128) != 1)
  {
    goto LABEL_3;
  }

  sub_3A9518(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_570440(uint64_t a1)
{
  v2 = *(a1 + 552);
  if (v2)
  {
    *(a1 + 560) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 528);
  if (v3)
  {
    *(a1 + 536) = v3;
    operator delete(v3);
  }

  if ((*(a1 + 519) & 0x80000000) == 0)
  {
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a1 + 464));
    v4 = *(a1 + 448);
    if (v4 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(*(a1 + 496));
  if (*(a1 + 487) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v4 = *(a1 + 448);
  if (v4 != -1)
  {
LABEL_11:
    (off_266B318[v4])(&v7, a1 + 416);
  }

LABEL_12:
  *(a1 + 448) = -1;
  sub_53A868(a1 + 256);
  sub_53A868(a1 + 96);
  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_570514(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  sub_52B7D8(a1 + 8, a4);
  *(a1 + 1128) = 1;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = -1;
  *(a1 + 1168) = -1;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0x8000000080000000;
  sub_64B998(a1 + 1232);
  sub_64B998(a1 + 1392);
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1595) = -1;
  *(a1 + 1607) = 0;
  *(a1 + 1615) = 0;
  *(a1 + 1599) = 0;
  *(a1 + 1623) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1788) = 0;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1761) = 0u;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  v6 = nullsub_1(a4 + 504);
  if (*(v6 + 23) < 0)
  {
    sub_325C((a1 + 1976), *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    *(a1 + 1992) = *(v6 + 16);
    *(a1 + 1976) = v7;
  }

  return a1;
}

void sub_57064C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1232);
  v3 = *(v1 + 1192);
  if (v3)
  {
    *(v1 + 1200) = v3;
    operator delete(v3);
    if (*(v1 + 1128) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 1128) != 1)
  {
    goto LABEL_3;
  }

  sub_3A9518(v1 + 8);
  _Unwind_Resume(a1);
}

void **sub_5706DC(void **a1)
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
        v3 = sub_3A9518(v3 - 1120);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_570738(uint64_t a1, int a2, int a3, uint64_t *a4, void *a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = -1;
  *(a1 + 1168) = -1;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0x8000000080000000;
  sub_64B998(a1 + 1232);
  sub_64B998(a1 + 1392);
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1595) = -1;
  *(a1 + 1607) = 0;
  *(a1 + 1615) = 0;
  *(a1 + 1599) = 0;
  *(a1 + 1623) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1768) = 0;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  v8 = *a4;
  *(a1 + 1784) = *(a4 + 2);
  *(a1 + 1776) = v8;
  *(a1 + 1788) = 1;
  *(a1 + 1792) = *a5;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 1984) = 0;
  return a1;
}

void sub_570854(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1232);
  v4 = *(v1 + 1192);
  if (v4)
  {
    *(v1 + 1200) = v4;
    operator delete(v4);
    if (*(v1 + 1128) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 1128) != 1)
  {
    goto LABEL_3;
  }

  sub_3A9518(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_5708AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = -1;
  *(a1 + 1168) = -1;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0x8000000080000000;
  sub_64B998(a1 + 1232);
  sub_64B998(a1 + 1392);
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1595) = -1;
  *(a1 + 1607) = 0;
  *(a1 + 1615) = 0;
  *(a1 + 1599) = 0;
  *(a1 + 1623) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1788) = 0;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1761) = 0u;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  sub_52A464(a1 + 1800, a4);
  *(a1 + 1968) = 1;
  *(a1 + 1976) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 1984) = 0;
  return a1;
}

void sub_5709BC(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1752));
  sub_570440(v1 + 1136);
  if (*(v1 + 1128) == 1)
  {
    sub_3A9518(v2);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_570A38(uint64_t a1, int a2, int a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = -1;
  *(a1 + 1168) = -1;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0x8000000080000000;
  sub_64B998(a1 + 1232);
  sub_64B998(a1 + 1392);
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1595) = -1;
  *(a1 + 1607) = 0;
  *(a1 + 1615) = 0;
  *(a1 + 1599) = 0;
  *(a1 + 1623) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1788) = 0;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1761) = 0u;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  v6 = (a1 + 1976);
  if (*(a4 + 23) < 0)
  {
    sub_325C(v6, *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 1992) = *(a4 + 2);
    *v6 = v7;
  }

  return a1;
}

void sub_570B6C(_Unwind_Exception *a1)
{
  if (*(v1 + 1968) == 1)
  {
    sub_52A624(v1 + 1800);
  }

  sub_5706DC((v1 + 1752));
  sub_570440(v1 + 1136);
  if (*(v1 + 1128) == 1)
  {
    sub_3A9518(v2);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_570CBC(uint64_t a1)
{
  result = 0;
  v3 = *a1;
  if (*a1 > 3)
  {
    if ((v3 - 6) < 4)
    {
      return result;
    }

    if (v3 == 4)
    {
      return *(a1 + 1144);
    }

    if (v3 == 5)
    {
      return *(a1 + 1832);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v3 - 2) < 2)
  {
    if ((*(a1 + 480) & 1) == 0)
    {
      sub_4F0F0C();
    }

    return *(a1 + 472);
  }

  if (!v3)
  {
    return *(a1 + 1792);
  }

  if (v3 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_570D48@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[1120] = 0;
  if (*(result + 1128) == 1)
  {
    result = sub_52B7D8(a2, result + 8);
    a2[1120] = 1;
  }

  return result;
}

void sub_570D90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1120) == 1)
  {
    sub_3A9518(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_570DBC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_5713F4(a2, *(a1 + 1752), *(a1 + 1760), 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 1760) - *(a1 + 1752)) >> 5));
}

uint64_t sub_570E00@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[168] = 0;
  if (*(result + 1968) == 1)
  {
    result = sub_52A464(a2, result + 1800);
    a2[168] = 1;
  }

  return result;
}

void sub_570E48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 168) == 1)
  {
    sub_52A624(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_570E98(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x100000004;
  *(a3 + 8) = 0;
  *(a3 + 1128) = 0;
  sub_571154(a3 + 1136, a1);
  *(a3 + 1768) = 0;
  *(a3 + 1752) = 0u;
  sub_5713F4(a3 + 1752, *a2, a2[1], 0xAF8AF8AF8AF8AF8BLL * ((a2[1] - *a2) >> 5));
  *(a3 + 1776) = 0;
  *(a3 + 1788) = 0;
  *(a3 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 1800) = 0;
  *(a3 + 1968) = 0;
  *(a3 + 1976) = 0;
  *(a3 + 1992) = 0;
  *(a3 + 1984) = 0;
}

void sub_570F40(_Unwind_Exception *a1)
{
  sub_570440(v1 + 1136);
  if (*(v1 + 1128) == 1)
  {
    sub_3A9518(v2);
  }

  _Unwind_Resume(a1);
}

void sub_570FF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_325C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  sub_570A38(a2, 0, 2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_571074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5710A0(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
    if ((*(a1 + 407) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 368);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 407) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 384));
  v3 = *(a1 + 368);
  if (v3 != -1)
  {
LABEL_9:
    (off_266B318[v3])(&v5, a1 + 336);
  }

LABEL_10:
  *(a1 + 368) = -1;
  sub_53A868(a1 + 176);
  sub_53A868(a1 + 16);
  return a1;
}

uint64_t sub_571154(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 0;
  *a1 = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5712DC(a1 + 80, a2 + 10);
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  v9 = *(a2 + 69);
  v10 = *(a2 + 70);
  if (v10 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = a2[36];
  v12 = a2[37];
  *(a1 + 608) = *(a2 + 76);
  *(a1 + 576) = v11;
  *(a1 + 592) = v12;
  return a1;
}

void sub_57129C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5712DC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  sub_55BD50(a1 + 16, (a2 + 2));
  sub_55BD50(a1 + 176, (a2 + 22));
  sub_55F1E8(a1 + 336, (a2 + 42));
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  v6 = a2[56];
  v5 = a2[57];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_571390(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 176);
  sub_53A868(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_5713C0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 448);
  if (v3)
  {
    *(v1 + 456) = v3;
    operator delete(v3);
  }

  sub_53E440(v1 + 336);
  sub_53A868(v1 + 176);
  sub_53A868(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_5713F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5714DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1120;
    v15 = -v12;
    do
    {
      v14 = sub_3A9518(v14) - 1120;
      v15 += 1120;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_571510(&a9);
  _Unwind_Resume(a1);
}

void ***sub_571510(void ***result)
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
          v4 = sub_3A9518(v4 - 1120);
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

void sub_571588()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2793790 = 0u;
  unk_27937A0 = 0u;
  dword_27937B0 = 1065353216;
  sub_3A9A34(&xmmword_2793790, v0);
  sub_3A9A34(&xmmword_2793790, v3);
  sub_3A9A34(&xmmword_2793790, __p);
  sub_3A9A34(&xmmword_2793790, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_571758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_2793790);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_5717D0(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = a2;
  v6 = sub_3AF6B4(a2);
  *(a1 + 16) = -1;
  *(a1 + 8) = v6;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_527724(a1 + 144, a3);
  v9[23] = 18;
  strcpy(v9, "ArrivalInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(a2, v9, v8);
  sub_41D598(v7, &v10);
  operator new();
}

void sub_571A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(v28 - 88);
  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4((v27 + 16));
  sub_584AC0(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_571AE0(uint64_t result, void *a2)
{
  if (*(result + 1720) == 1)
  {
    v2 = result;
    if (*(result + 1596) == 1)
    {
      result = sub_4D1DC0(a2);
      if (result)
      {
        result = sub_69AE3C(a2);
        if (*result != -1 || *(result + 4) != -1)
        {
          sub_571CD4(v2, a2);
          sub_572370(v2, a2);
          v5 = sub_4D1F60(a2);
          v6 = sub_572524(v2, *(v5 + 32) | (*(v5 + 36) << 32));
          if (sub_394BD0() && *sub_73F54(a2) != 0x7FFFFFFF)
          {
            v8 = *(v2 + 1792);
            v9 = sub_73F54(a2);
            v7 = sub_5733D0(v9, v8);
          }

          else
          {
            v7 = 0;
          }

          sub_573438(v2, v7, v6, (a2 + 1281));
          sub_573774(v2, a2, a2 + 1281);
          sub_573B7C(v2, v7, (a2 + 1281));
          sub_573D8C(v2, a2, a2 + 1281);
          sub_573F80(v2, a2, (a2 + 1281));
          sub_574260(v2, a2, a2 + 1281);
          sub_5744DC(v2, a2);
          if (*(v2 + 1752) == 0x7FFFFFFFFFFFFFFFLL || *(sub_69AE3C(a2) + 184) != 2)
          {
            v10 = (v2 + 1744);
          }

          else
          {
            v10 = (v2 + 1752);
          }

          v11 = *v10;
          v12 = a2[139];
          if (a2[138] != v12)
          {
            v13 = *(v12 - 1608);
            if (v13 < v11)
            {
              v11 = v13;
            }
          }

          a2[1281] = v11;

          return sub_5745FC(v2, a2, (a2 + 1281));
        }
      }
    }
  }

  return result;
}

BOOL sub_571CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_69AE3C(a2);
  if (sub_69B0E0(a2))
  {
    LOBYTE(v5) = 1;
    goto LABEL_36;
  }

  if (!*(a1 + 1280))
  {
    goto LABEL_35;
  }

  if ((sub_67AE78(a1 + 144) & 1) == 0)
  {
    v8 = *(a1 + 1280) - 1;
    v9 = *(a1 + 1272);
    v10 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
    goto LABEL_10;
  }

  v6 = *(a1 + 1706);
  v7 = sub_4D1DB0(a2);
  if (v6 == 1)
  {
    LODWORD(v8) = *v7;
    if (v8 != 0xFFFF)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v7;
    LOWORD(v8) = -1;
    if (v11 != 0xFFFF)
    {
      if (*(a1 + 1360) == 2)
      {
        LODWORD(v8) = *v7;
      }

      else
      {
        LOWORD(v8) = v11 - 1;
      }
    }

    LODWORD(v8) = v8;
    if (v8 != 0xFFFF)
    {
LABEL_7:
      if (*(a1 + 1280) > v8)
      {
        v9 = *(a1 + 1272);
        v10 = (v8 >> 3) & 0x1FF8;
LABEL_10:
        v5 = (*(v9 + v10) >> v8) & 1;
        goto LABEL_36;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(&__p[3]);
        v12 = sub_74700();
        sub_73F1C(v12);
        std::operator+<char>();
        if (SHIBYTE(__p[2]) >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v14 = HIBYTE(__p[2]);
        }

        else
        {
          v14 = __p[1];
        }

        sub_4A5C(&__p[3], v13, v14);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959680(&__p[3], __p);
        sub_7E854(__p, 3u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&__p[3]);
        LOBYTE(v5) = 0;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v5) = 0;
      goto LABEL_36;
    }
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_35;
  }

  sub_19594F8(&__p[3]);
  v15 = sub_74700();
  v16 = sub_73F1C(v15);
  if (*(v16 + 23) >= 0)
  {
    v17 = *(v16 + 23);
  }

  else
  {
    v17 = *(v16 + 8);
  }

  if (v17 + 63 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 63 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "ArrivalInfoBuilder encountered an invalid user waypoint index: ", 63);
  if (*(v16 + 23) >= 0)
  {
    v28 = v16;
  }

  else
  {
    v28 = *v16;
  }

  memmove(&__p[7] + 7, v28, v17);
  *(&__p[7] + v17 + 7) = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v30 = HIBYTE(__p[2]);
  }

  else
  {
    v30 = __p[1];
  }

  sub_4A5C(&__p[3], v29, v30);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = *(&v40 + 1);
    if (*(&v40 + 1) < v37)
    {
      *(&v40 + 1) = v37;
      v32 = v37;
    }

    v33 = &v36[1];
    goto LABEL_71;
  }

  if ((v41 & 8) != 0)
  {
    v33 = &__p[6];
    v32 = v36[0];
LABEL_71:
    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v32 - *v33;
    if (v31)
    {
      memmove(__p, v34, v31);
    }

    goto LABEL_77;
  }

  v31 = 0;
  HIBYTE(__p[2]) = 0;
LABEL_77:
  *(__p + v31) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39[0]);
  }

  std::locale::~locale(&__p[5]);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(v5) = 0;
LABEL_36:
  sub_57514C(&__p[3], v4, v5);
  v18 = *(a1 + 32);
  *(a1 + 16) = __p[3];
  *(a1 + 24) = __p[4];
  if (v18)
  {
    *(a1 + 40) = v18;
    operator delete(v18);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v19 = *(a1 + 56);
  *(a1 + 32) = *&__p[5];
  *(a1 + 48) = __p[7];
  memset(&__p[5], 0, 24);
  if (v19)
  {
    *(a1 + 64) = v19;
    operator delete(v19);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v20 = (a1 + 104);
  v21 = *(a1 + 104);
  *(a1 + 56) = *v36;
  *(a1 + 72) = v37;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  *(a1 + 80) = v38;
  *(a1 + 88) = *v39;
  if (v21)
  {
    v22 = *(a1 + 112);
    v23 = v21;
    if (v22 != v21)
    {
      v24 = *(a1 + 112);
      do
      {
        v26 = *(v24 - 3);
        v24 -= 24;
        v25 = v26;
        if (v26)
        {
          *(v22 - 2) = v25;
          operator delete(v25);
        }

        v22 = v24;
      }

      while (v24 != v21);
      v23 = *v20;
    }

    *(a1 + 112) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = v40;
  *(a1 + 120) = v41;
  v41 = 0;
  v40 = 0uLL;
  *(a1 + 128) = v42;
  *(a1 + 136) = v43;
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (__p[5])
  {
    __p[6] = __p[5];
    operator delete(__p[5]);
  }

  result = sub_69B0E0(a2);
  *(a1 + 80) = result;
  return result;
}

void sub_5722F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_572370(uint64_t a1, void *a2)
{
  if (a2[1266] == a2[1267])
  {
    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, &v12);
    sub_31BF20(&v12, &v15);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = sub_4D1DC0(a2);
    v5 = sub_69ADA0(a2, v4 - 1);
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v6 = v5[1];
    if (v6 != *v5)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v9 = sub_4D2140(a2);
  sub_2F4C8(&v15, 0, &v12, 0.0, v9 / 1000000000.0);
  v10 = v12;
  v11 = *(__p - 1);
  *(a1 + 2032) = *(__p - 12);
  *(a1 + 2040) = v11;
  if (v10)
  {
    __p = v10;
    operator delete(v10);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_5724E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_572524(uint64_t a1, uint64_t a2)
{
  v135[0] = a2;
  if ((*(a1 + 1864) & 1) == 0)
  {
    return *(a1 + 1992);
  }

  v4 = sub_2B51D8(*(a1 + 8), a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x2Fu || (v6 = v5[23]) == 0 || *(v4 + v6) != 47)
  {
    v7 = sub_2B51D8(*(a1 + 8), a2);
    v8 = (v7 - *v7);
    if (*v8 < 0x2Fu)
    {
      return *(a1 + 1992);
    }

    v9 = v8[23];
    if (!v9)
    {
      return *(a1 + 1992);
    }

    v10 = *(v7 + v9);
    v11 = v10 > 0x2D;
    v12 = (1 << v10) & 0x208040000000;
    if (v11 || v12 == 0)
    {
      return *(a1 + 1992);
    }
  }

  sub_2B79D0(*(a1 + 8), a2, v118);
  v133 = sub_31A76C(v118);
  v134 = v18;
  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  v19 = *(a1 + 1984);
  v20 = *(a1 + 1992);
  if (v19 != v20)
  {
    while ((sub_49AD8(v19, &v133, v14, v15, v16, v17) & 1) == 0)
    {
      v19 += 48;
      if (v19 == v20)
      {
        v19 = v20;
        break;
      }
    }

    v20 = *(a1 + 1992);
  }

  if (v19 == v20)
  {
    v131 = 0;
    v132 = 0;
    sub_585950(v118);
    *&v102 = sub_574AB0(a1, v135, &v133);
    sub_574864(v118, v135, &v102);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    if (v130)
    {
      do
      {
        v102 = *(v121 + *v126);
        v21 = v124;
        if (v124 >= v125)
        {
          v23 = __src;
          v24 = v124 - __src;
          v25 = (v124 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_1794();
          }

          v27 = v125 - __src;
          if ((v125 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (4 * v25);
          v30 = &v29[-((v124 - __src) >> 2)];
          *v29 = *v126;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          __src = v30;
          v124 = v22;
          v125 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v124 = *v126;
          v22 = v21 + 4;
        }

        v124 = v22;
        v31 = v126;
        *(v128 + *v126) = -1;
        v32 = --v130;
        if (v130)
        {
          v33 = &v31[2 * v32];
          *v31 = *v33;
          v31[1] = *(v33 + 1);
          v34 = v126;
          *(v128 + *v126) = 0;
          v35 = v130;
          if (v130 >= 2)
          {
            v36 = 0;
            v37 = 0;
            v38 = 1;
            do
            {
              v39 = v36 + 5;
              if (v39 >= v35)
              {
                v40 = v35;
              }

              else
              {
                v40 = v39;
              }

              if (v39 <= v38)
              {
                break;
              }

              v41 = v37;
              v42 = v34[2 * v37 + 1];
              v43 = &v34[2 * v38 + 1];
              v37 = -1;
              v44 = v42;
              do
              {
                v46 = *v43;
                v43 += 2;
                v45 = v46;
                if (v46 < v44)
                {
                  v44 = v45;
                  v37 = v38;
                }

                ++v38;
              }

              while (v38 < v40);
              if (v37 >= v35)
              {
                break;
              }

              v47 = 2 * v37;
              v48 = &v34[v47];
              v49 = 16 * v41;
              v50 = v34 + v49;
              v51 = *v48;
              *v48 = *v50;
              *v50 = v51;
              v52 = *(v48 + 1);
              *(v48 + 1) = v42;
              *(v50 + 1) = v52;
              v34 = v126;
              v53 = *(v126 + v47 * 8);
              v54 = v128;
              v55 = *(v126 + v49);
              LODWORD(v49) = *(v128 + v53);
              *(v128 + v53) = *(v128 + v55);
              v54[v55] = v49;
              v36 = 4 * v37;
              v38 = (4 * v37) | 1;
              v35 = v130;
            }

            while (v38 < v130);
          }
        }

        v127 -= 16;
        v112 = sub_2B4EDC(*(a1 + 8), v102, 0);
        v56 = sub_574CE0(a1, &v112, &v133, v118);
        __dst = sub_2B4EDC(*(a1 + 8), v102, 1);
        v57 = sub_574CE0(a1, &__dst, &v133, v118);
        sub_574E60(a1, &v102, v56 ^ 1, v57 ^ 1, &v115);
        v58 = sub_2B51D8(*(a1 + 8), v102);
        v59 = (v58 - *v58);
        if (*v59 >= 9u && (v60 = v59[4]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v62 = sub_2B51D8(*(a1 + 8), v102);
        v63 = (v62 - *v62);
        if (*v63 >= 0x2Fu)
        {
          v64 = v63[23];
          if (v64)
          {
            v65 = *(v62 + v64);
            v11 = v65 > 0x2D;
            v66 = (1 << v65) & 0x208040000000;
            if (!v11 && v66 != 0)
            {
              v132 += v61;
            }
          }
        }

        v131 += v61;
      }

      while (v130);
      v69 = v116;
      if (v115 != v116)
      {
        v70 = (v115 + 12);
        if (v115 + 12 != v116)
        {
          v71 = *v115;
          while (1)
          {
            v72 = v71;
            v71 = *v70;
            if (__PAIR64__(*(v70 - 2), v72) == *v70 && *(v70 - 1) == v70[2])
            {
              break;
            }

            v70 += 3;
            if (v70 == v116)
            {
              goto LABEL_76;
            }
          }

          v73 = v70 - 3;
          if (v70 - 3 != v116)
          {
            while (1)
            {
              v70 += 3;
              if (v70 == v69)
              {
                break;
              }

              if (*v73 != *v70 || v73[1] != v70[1] || v73[2] != v70[2])
              {
                v74 = v70[2];
                *(v73 + 3) = *v70;
                v73 += 3;
                v73[2] = v74;
              }
            }

            v69 = v73 + 3;
            if (v73 + 3 != v116)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_76:
    if (v69 != v116)
    {
LABEL_77:
      v116 = v69;
    }

LABEL_78:
    sub_49AD4(&v112, &v115, *(a1 + 1800));
    v75 = v112;
    if (v113 - v112 != 24 || *v112 == *(v112 + 1))
    {
      v19 = *(a1 + 1992);
      if (v112)
      {
LABEL_146:
        v95 = v113;
        v96 = v75;
        if (v113 != v75)
        {
          v97 = v113;
          do
          {
            v99 = *(v97 - 3);
            v97 -= 24;
            v98 = v99;
            if (v99)
            {
              *(v95 - 2) = v98;
              operator delete(v98);
            }

            v95 = v97;
          }

          while (v97 != v75);
          v96 = v112;
        }

        v113 = v75;
        operator delete(v96);
      }

LABEL_153:
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      if (__src)
      {
        v124 = __src;
        operator delete(__src);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      sub_360988(v118);
      return v19;
    }

    v76 = *(a1 + 1992);
    if (v76 >= *(a1 + 2000))
    {
      v79 = sub_584B58((a1 + 1984), &v112, &v132, &v131);
    }

    else
    {
      v78 = v131;
      v77 = v132;
      v76[1] = 0;
      v76[2] = 0;
      *v76 = 0;
      *&v102 = v76;
      BYTE8(v102) = 0;
      if (v113 != v112)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v76[3] = v114;
      v76[4] = v77;
      v76[5] = v78;
      v79 = (v76 + 6);
      *(a1 + 1992) = v76 + 6;
    }

    *(a1 + 1992) = v79;
    if (!sub_7E7E4(2u))
    {
LABEL_107:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_126;
      }

      sub_19594F8(&v102);
      sub_4A5C(&v102, "polygon vertices number: ", 25);
      std::ostream::operator<<();
      if ((v111 & 0x10) != 0)
      {
        v85 = v110;
        if (v110 < v107)
        {
          v110 = v107;
          v85 = v107;
        }

        v86 = &v106;
      }

      else
      {
        if ((v111 & 8) == 0)
        {
          v84 = 0;
          v101 = 0;
LABEL_121:
          *(&__dst + v84) = 0;
          sub_7E854(&__dst, 2u);
          if (v101 < 0)
          {
            operator delete(__dst);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          std::locale::~locale(&v103);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_126:
          if (!sub_7E7E4(2u))
          {
            goto LABEL_145;
          }

          sub_19594F8(&v102);
          v88 = sub_4A5C(&v102, " parking segment length: ", 25);
          v89 = sub_70FBC(v88, v132);
          v90 = sub_4A5C(v89, " drivable segment length: ", 26);
          sub_70FBC(v90, v131);
          if ((v111 & 0x10) != 0)
          {
            v92 = v110;
            if (v110 < v107)
            {
              v110 = v107;
              v92 = v107;
            }

            v93 = &v106;
          }

          else
          {
            if ((v111 & 8) == 0)
            {
              v91 = 0;
              v101 = 0;
LABEL_140:
              *(&__dst + v91) = 0;
              sub_7E854(&__dst, 2u);
              if (v101 < 0)
              {
                operator delete(__dst);
              }

              if (v109 < 0)
              {
                operator delete(v108);
              }

              std::locale::~locale(&v103);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_145:
              v19 = *(a1 + 1992) - 48;
              v75 = v112;
              if (v112)
              {
                goto LABEL_146;
              }

              goto LABEL_153;
            }

            v93 = v104;
            v92 = v105;
          }

          v94 = *v93;
          v91 = v92 - *v93;
          if (v91 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v91 >= 0x17)
          {
            operator new();
          }

          v101 = v92 - *v93;
          if (v91)
          {
            memmove(&__dst, v94, v91);
          }

          goto LABEL_140;
        }

        v86 = v104;
        v85 = v105;
      }

      v87 = *v86;
      v84 = v85 - *v86;
      if (v84 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v84 >= 0x17)
      {
        operator new();
      }

      v101 = v85 - *v86;
      if (v84)
      {
        memmove(&__dst, v87, v84);
      }

      goto LABEL_121;
    }

    sub_19594F8(&v102);
    sub_49B98(&v102, &v112);
    if ((v111 & 0x10) != 0)
    {
      v81 = v110;
      if (v110 < v107)
      {
        v110 = v107;
        v81 = v107;
      }

      v82 = &v106;
    }

    else
    {
      if ((v111 & 8) == 0)
      {
        v80 = 0;
        v101 = 0;
LABEL_102:
        *(&__dst + v80) = 0;
        sub_7E854(&__dst, 2u);
        if (v101 < 0)
        {
          operator delete(__dst);
        }

        if (v109 < 0)
        {
          operator delete(v108);
        }

        std::locale::~locale(&v103);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_107;
      }

      v82 = v104;
      v81 = v105;
    }

    v83 = *v82;
    v80 = v81 - *v82;
    if (v80 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v80 >= 0x17)
    {
      operator new();
    }

    v101 = v81 - *v82;
    if (v80)
    {
      memmove(&__dst, v83, v80);
    }

    goto LABEL_102;
  }

  return v19;
}

void sub_5732EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  *(v59 + 8) = v60;
  sub_35390(&a16);
  *(v58 + 1992) = v59;
  sub_34BE0(&a49);
  if (__p)
  {
    a54 = __p;
    operator delete(__p);
  }

  sub_584EC4(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_5733D0(int *a1, double a2)
{
  v2 = *a1 * a2;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      goto LABEL_6;
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
LABEL_6:
    v2 = (v3 >> 1);
  }

  return v2;
}

void sub_573438(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1721) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 == 4 || v7 == 1)
    {
      *(a4 + 64) = 1;
      v26 = 4;
      v9 = *(a4 + 48);
      if (v9 >= *(a4 + 56))
      {
        v12 = sub_584F38((a4 + 40), a1 + 88, &v26);
      }

      else
      {
        *v9 = *(a1 + 88);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        v10 = *(a1 + 104);
        v11 = *(a1 + 112);
        v22 = v9 + 16;
        v23 = 0;
        if (v11 != v10)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v9 + 40) = *(a1 + 128);
        *(v9 + 48) = 0x7FFFFFFF00000004;
        *(v9 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        v12 = v9 + 64;
        *(a4 + 48) = v9 + 64;
      }

      *(a4 + 48) = v12;
      *(v12 - 12) = *(a1 + 1780) + a2;
    }

    else
    {
      v13 = 1722;
      if (!*(a1 + 80))
      {
        v13 = 1723;
      }

      if (*(a1 + 32) != *(a1 + 40) || (*(a1 + v13)) && *(a1 + 1992) != a3)
      {
        sub_4B6858(&v22, a3, 8);
        if (*(a3 + 32) >= *(a1 + 1808) && *(a3 + 40) >= *(a1 + 1816))
        {
          if (*(a1 + 136) == 1)
          {
            *(a4 + 64) = 3;
            v26 = 2;
            sub_577870((a4 + 40), &v22, &v26);
          }

          else
          {
            *(a4 + 64) = 2;
            v26 = 4;
            sub_577870((a4 + 40), &v22, &v26);
            if (*(a3 + 32) >= *(a1 + 1824))
            {
              v21 = 1780;
              if (*(a3 + 40) < *(a1 + 1832))
              {
                v21 = 1776;
              }
            }

            else
            {
              v21 = 1776;
            }

            *(*(a4 + 48) - 12) = *(a1 + v21) + a2;
            v26 = 5;
            sub_577870((a4 + 40), &v22, &v26);
          }

          sub_575474(&v22);
        }

        else
        {
          v15 = __p;
          if (__p)
          {
            v16 = v25;
            v17 = __p;
            if (v25 != __p)
            {
              v18 = v25;
              do
              {
                v20 = *(v18 - 3);
                v18 -= 24;
                v19 = v20;
                if (v20)
                {
                  *(v16 - 2) = v19;
                  operator delete(v19);
                }

                v16 = v18;
              }

              while (v18 != v15);
              v17 = __p;
            }

            v25 = v15;
            operator delete(v17);
          }
        }
      }
    }
  }
}

void sub_573704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_573718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57372C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_573740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 24) = v3;
  sub_35390(va);
  *(v2 + 48) = v4;
  _Unwind_Resume(a1);
}

void sub_57375C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_35390(va);
  *(v2 + 48) = v3;
  _Unwind_Resume(a1);
}

void sub_573774(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 1760) == 1)
  {
    sub_5778D8(a1, a2, a3);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    if (v6 != v5)
    {
      v7 = a3[3];
      while (1)
      {
        while (1)
        {
          v10 = a3[4];
          if (v7 >= v10)
          {
            break;
          }

          v8 = *(a1 + 1768);
          v9 = *v6;
          *(v7 + 8) = *(v6 + 2);
          *v7 = v9;
          *(v7 + 16) = v8;
          v7 += 24;
          a3[3] = v7;
          v6 = (v6 + 12);
          if (v6 == v5)
          {
            return;
          }
        }

        v11 = a3[2];
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        v15 = v14 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v13;
        if (v15)
        {
          break;
        }

        v16 = v7;
        v17 = 8 * ((v7 - v11) >> 3);
        v18 = *(a1 + 1768);
        v19 = *(v6 + 2);
        *v17 = *v6;
        *(v17 + 8) = v19;
        *(v17 + 16) = v18;
        v7 = v17 + 24;
        v20 = 24 * v12 - (v16 - v11);
        memcpy((v17 - (v16 - v11)), v11, v16 - v11);
        a3[2] = v20;
        a3[3] = v7;
        a3[4] = 0;
        if (v11)
        {
          operator delete(v11);
        }

        a3[3] = v7;
        v6 = (v6 + 12);
        if (v6 == v5)
        {
          return;
        }
      }

      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_53;
    }

    if (*(a1 + 16) != -1 || *(a1 + 20) != -1)
    {
      v21 = a3[3];
      v22 = a3[4];
      if (v21 >= v22)
      {
        v26 = a3[2];
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v26) >> 3) + 1;
        if (v27 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_52:
          sub_1794();
        }

        v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v26) >> 3);
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (v29 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_53;
        }

        v30 = 8 * ((v21 - v26) >> 3);
        v31 = *(a1 + 1768);
        *v30 = *(a1 + 16);
        *(v30 + 8) = *(a1 + 24);
        *(v30 + 16) = v31;
        v25 = v30 + 24;
        v32 = (v30 - (v21 - v26));
        memcpy(v32, v26, v21 - v26);
        a3[2] = v32;
        a3[3] = v25;
        a3[4] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v23 = *(a1 + 1768);
        v24 = *(a1 + 16);
        *(v21 + 8) = *(a1 + 24);
        *v21 = v24;
        *(v21 + 16) = v23;
        v25 = v21 + 24;
      }

      a3[3] = v25;
    }

    v33 = *(a1 + 56);
    v34 = *(a1 + 64);
    if (v33 != v34)
    {
      v35 = a3[3];
      while (1)
      {
        while (1)
        {
          v38 = a3[4];
          if (v35 >= v38)
          {
            break;
          }

          v36 = *(a1 + 1768);
          v37 = *v33;
          *(v35 + 8) = *(v33 + 2);
          *v35 = v37;
          *(v35 + 16) = v36;
          v35 += 24;
          a3[3] = v35;
          v33 = (v33 + 12);
          if (v33 == v34)
          {
            return;
          }
        }

        v39 = a3[2];
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v39) >> 3);
        v41 = v40 + 1;
        if (v40 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v42 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3);
        if (2 * v42 > v41)
        {
          v41 = 2 * v42;
        }

        v43 = v42 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v41;
        if (v43)
        {
          break;
        }

        v44 = v35;
        v45 = 8 * ((v35 - v39) >> 3);
        v46 = *(a1 + 1768);
        v47 = *(v33 + 2);
        *v45 = *v33;
        *(v45 + 8) = v47;
        *(v45 + 16) = v46;
        v35 = v45 + 24;
        v48 = 24 * v40 - (v44 - v39);
        memcpy((v45 - (v44 - v39)), v39, v44 - v39);
        a3[2] = v48;
        a3[3] = v35;
        a3[4] = 0;
        if (v39)
        {
          operator delete(v39);
        }

        a3[3] = v35;
        v33 = (v33 + 12);
        if (v33 == v34)
        {
          return;
        }
      }

      if (v43 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_53:
      sub_1808();
    }
  }
}

void sub_573B7C(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 1721) == 1 && *(a1 + 1865) == 1 && !*(a3 + 64))
  {
    *(a3 + 64) = 4;
    v20.n128_u64[0] = sub_3514C((a1 + 16), (a1 + 1856));
    v20.n128_u64[1] = v6;
    sub_4B6970(&v16, &v20, 10);
    v15 = 4;
    v7 = *(a3 + 48);
    if (v7 >= *(a3 + 56))
    {
      v8 = sub_584F38((a3 + 40), &v16, &v15);
    }

    else
    {
      *v7 = v16;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v21 = v7 + 16;
      v22 = 0;
      if (v18 != __p)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      *(v7 + 40) = v19;
      *(v7 + 48) = 0x7FFFFFFF00000004;
      *(v7 + 56) = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v7 + 64;
      *(a3 + 48) = v7 + 64;
    }

    *(a3 + 48) = v8;
    *(v8 - 12) = *(a1 + 1784) + a2;
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
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
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
}

void sub_573D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  *(v5 + 24) = v4;
  sub_35390(va1);
  *(v3 + 48) = v5;
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_573D8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 1672) == 1 && *(a1 + 1866) == 1)
  {
    v6 = a3[5];
    v7 = a3[6];
    v8 = a3 + 5;
    if (v6 == v7)
    {
LABEL_6:
      if (*(a2 + 1104) != *(a2 + 1112) && !sub_69B330(a2))
      {
        sub_3AE3C((a1 + 2032), *(a1 + 1880), *(a1 + 1896), &v28);
        sub_4B68E4(v25, &v28, 8);
        v24 = 7;
        v9 = a3[6];
        if (v9 >= a3[7])
        {
          v10 = sub_584F38(v8, v25, &v24);
        }

        else
        {
          sub_5850C8(a3[6], v25, &v24);
          v10 = v9 + 64;
          a3[6] = v9 + 64;
        }

        a3[6] = v10;
        v11 = *(*(a2 + 1112) - 1608);
        if (v11 >= *(a1 + 1880))
        {
          v11 = *(a1 + 1880);
        }

        *(v10 - 8) = v11;
        v12 = __p;
        if (__p)
        {
          v13 = v27;
          v14 = __p;
          if (v27 != __p)
          {
            v15 = v27;
            do
            {
              v17 = *(v15 - 3);
              v15 -= 24;
              v16 = v17;
              if (v17)
              {
                *(v13 - 2) = v16;
                operator delete(v16);
              }

              v13 = v15;
            }

            while (v15 != v12);
            v14 = __p;
          }

          v27 = v12;
          operator delete(v14);
        }

        v18 = v28;
        if (v28)
        {
          v19 = v29;
          v20 = v28;
          if (v29 != v28)
          {
            v21 = v29;
            do
            {
              v23 = *(v21 - 3);
              v21 -= 24;
              v22 = v23;
              if (v23)
              {
                *(v19 - 2) = v22;
                operator delete(v22);
              }

              v19 = v21;
            }

            while (v21 != v18);
            v20 = v28;
          }

          v29 = v18;
          operator delete(v20);
        }
      }
    }

    else
    {
      while (*(v6 + 48) != 5)
      {
        v6 += 64;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void sub_573F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_573F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_573F80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1672) == 1)
  {
    v3 = *(a2 + 11268);
    if (v3 == 3)
    {
      if (*(result + 1870) != 1)
      {
        return result;
      }
    }

    else if (v3 == 2)
    {
      if (*(result + 1871) != 1)
      {
        return result;
      }
    }

    else if (v3 != 1 || *(result + 1872) != 1)
    {
      return result;
    }

    v4 = result;
    result = sub_69B010(a2);
    if ((result & 1) == 0 && *(a2 + 1104) != *(a2 + 1112))
    {
      result = sub_69B360(a2, 2);
      if (result)
      {
        v7 = *(a3 + 40);
        v8 = *(a3 + 48);
        if (v7 == v8)
        {
LABEL_16:
          result = sub_577B40(v4, a2);
          if (result)
          {
            v9 = a2;
            v10 = *(a2 + 1112);
            while (v10 != *(a2 + 1104))
            {
              v11 = v10 - 2616;
              v12 = *(v10 - 2456);
              v13 = v12 == 39 || v12 == 16;
              v10 = v11;
              if (v13)
              {
                v14 = *(v11 + 24);
                if (v14 > *(v11 + 40))
                {
                  while (1)
                  {
                    v15 = sub_4D1F50(v9, --v14);
                    v16 = (*v15 - **v15);
                    if (*v16 >= 0x2Fu)
                    {
                      v17 = v16[23];
                      if (v17)
                      {
                        v18 = *(*v15 + v17);
                        v19 = v18 > 0x2F;
                        v20 = (1 << v18) & 0xA08040000000;
                        if (!v19 && v20 != 0)
                        {
                          break;
                        }
                      }
                    }

                    v9 = a2;
                    if (v14 <= *(v11 + 40))
                    {
                      goto LABEL_35;
                    }
                  }

                  v22 = sub_572524(v4, *(v15 + 8) | (*(v15 + 18) << 32));
                  v9 = a2;
                  if (*(v4 + 1992) != v22)
                  {
                    sub_4B6858(v29, v22, 8);
                    LODWORD(v26[0]) = 8;
                    sub_577870((a3 + 40), v29, v26);
                    sub_575474(v29);
                    v9 = a2;
                  }
                }

LABEL_35:
                v23 = *(a3 + 48);
                result = v4;
                if (*(a3 + 40) == v23 || *(v23 - 16) != 8)
                {
                  result = sub_577FD0(v4, v9);
                  v27 = result;
                  v28 = v24;
                  if (result != -1 || result <= 0xFFFFFFFEFFFFFFFFLL)
                  {
                    sub_3AE3C(&v27, *(v4 + 1880), *(v4 + 1896), v26);
                    sub_4B68E4(v29, v26, 8);
                    v25 = 8;
                    sub_577870((a3 + 40), v29, &v25);
                    sub_575474(v29);
                    return sub_34BE0(v26);
                  }
                }

                return result;
              }
            }
          }
        }

        else
        {
          while (*(v7 + 48) != 5)
          {
            v7 += 64;
            if (v7 == v8)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_57421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_574230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_575474(va1);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_57424C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_574260(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 1672) == 1)
  {
    v4 = *(a2 + 11268);
    if (v4 == 3)
    {
      if (*(a1 + 1867) != 1)
      {
        return;
      }
    }

    else if (v4 == 2)
    {
      if (*(a1 + 1868) != 1)
      {
        return;
      }
    }

    else if (v4 != 1 || *(a1 + 1869) != 1)
    {
      return;
    }

    if ((sub_69B010(a2) & 1) == 0 && *(a2 + 1104) != *(a2 + 1112) && (!sub_69B330(a2) || sub_69B360(a2, 2)) && sub_577B40(a1, a2))
    {
      v29 = *(a1 + 2032);
      v30 = *(a1 + 2040);
      if (sub_69B330(a2))
      {
        v7 = sub_577FD0(a1, a2);
        if (v7 < 0xFFFFFFFF00000000 || v7 != 0xFFFFFFFFLL)
        {
          v29 = v7;
          v30 = v8;
        }
      }

      sub_3AE3C(&v29, *(a1 + 1888), *(a1 + 1896), &v27);
      sub_4B68E4(v24, &v27, 8);
      v23 = 6;
      v9 = a3[6];
      if (v9 >= a3[7])
      {
        v10 = sub_584F38(a3 + 5, v24, &v23);
      }

      else
      {
        sub_5850C8(a3[6], v24, &v23);
        v10 = v9 + 64;
        a3[6] = v9 + 64;
      }

      a3[6] = v10;
      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          v14 = v26;
          do
          {
            v16 = *(v14 - 3);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 2) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v17 = v27;
      if (v27)
      {
        v18 = v28;
        v19 = v27;
        if (v28 != v27)
        {
          v20 = v28;
          do
          {
            v22 = *(v20 - 3);
            v20 -= 24;
            v21 = v22;
            if (v22)
            {
              *(v18 - 2) = v21;
              operator delete(v21);
            }

            v18 = v20;
          }

          while (v20 != v17);
          v19 = v27;
        }

        v28 = v17;
        operator delete(v19);
      }
    }
  }
}

void sub_5744A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_5744C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_5744DC(unint64_t result, uint64_t a2)
{
  if (*(a2 + 10288) != *(a2 + 10296))
  {
    v12[9] = v2;
    v12[10] = v3;
    if ((*(a2 + 10312) & 0xFFFFFFFE) == 2 && *(a2 + 1104) != *(a2 + 1112))
    {
      v5 = result;
      result = sub_4D1DC0(a2);
      if (result)
      {
        v6 = 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
        if (v6 >= 1)
        {
          v7 = v6 & 0x7FFFFFFF;
          do
          {
            v8 = v7--;
            result = sub_578320((a2 + 1104), v7);
            v9 = result;
            v10 = *(result + 24);
            while (v10 > *(v9 + 40))
            {
              v11 = sub_4D1F50(a2, --v10);
              v12[0] = *(v11 + 32) | (*(v11 + 36) << 32);
              result = sub_577084(v5, v12);
              if ((result & 1) == 0)
              {
                return result;
              }
            }

            *(v9 + 2417) = 1;
          }

          while (v8 >= 2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_5745FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 1848);
  if ((*(a3 + 64) & 0xFFFFFFFE) != 2)
  {
    goto LABEL_23;
  }

  sub_4D1E00(a2, &v29);
  v7 = 0;
  while (1)
  {
    sub_4D1E24(a2, v26);
    v10 = v30;
    v12 = v27;
    v11 = v28;
    if (!v30)
    {
      break;
    }

    v13 = v31;
    v14 = sub_4D1DC0(v30);
    v15 = v14;
    if (v12)
    {
      v16 = sub_4D1DC0(v12);
      if (v13 >= v15 || v11 >= v16)
      {
        if (v13 < v15 == v11 < v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v18 = sub_4D1F50(v10, v13);
        if (v18 == sub_4D1F50(v12, v11))
        {
          goto LABEL_21;
        }
      }
    }

    else if (v13 >= v14)
    {
      goto LABEL_21;
    }

LABEL_19:
    v19 = sub_4D1F50(v30, v31 - 1);
    v25 = *(v19 + 32) | (*(v19 + 36) << 32);
    if ((sub_577084(a1, &v25) & 1) == 0 && !sub_5771AC(a1, &v25, a3))
    {
      goto LABEL_21;
    }

    v8 = sub_4D1DC0(a2);
    sub_4D1E00(a2, v26);
    v7 += sub_4D23F8(a2, v31 + v8 + ~v28, v9);
    --v31;
  }

  if (v27 && v11 < sub_4D1DC0(v27))
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v5 <= *(a1 + 1840) + v7)
  {
    v5 = *(a1 + 1840) + v7;
  }

LABEL_23:
  if (*a3 <= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = *a3;
  }

  result = sub_4D1DB8(a2);
  if (result >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = result;
  }

  *(a3 + 8) = v22;
  v23 = *(a3 + 40);
  for (i = *(a3 + 48); v23 != i; v23 += 64)
  {
    if (*(v23 + 48) == 5 && *(v23 + 56) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v23 + 56) = v22;
    }
  }

  return result;
}

uint64_t sub_57480C(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      result = sub_571AE0(a1, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_574864(uint64_t a1, void *a2, uint64_t *a3)
{
  ++*(a1 + 816);
  sub_585AE0(a1, a2, &v28);
  if (v28)
  {
    *(*(a1 + 768) + 16 * *(v29 + 8) + 8) = *a3;
    v6 = *(v29 + 8);
    v7 = *(a1 + 848);
    if (v6 < (*(a1 + 856) - v7) >> 2 && *(v7 + 4 * v6) != -1)
    {
      v8 = (a1 + 824);
LABEL_24:
      sub_40E27C(v8, v6, a3);
      return;
    }

    v9 = a1 + 824;
  }

  else
  {
    v10 = *(a1 + 776) - *(a1 + 768);
    sub_585C38(a1, a2, &v30);
    v11 = v30;
    if (v32 == 1)
    {
      v12 = *(v30 + 8) + 12 * v31;
      *v12 = *a2;
      *(v12 + 8) = 0;
    }

    *(*(v11 + 8) + 12 * v31 + 8) = v10 >> 4;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v16 = *(a1 + 768);
      v17 = v13 - v16;
      v18 = (v13 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        sub_1794();
      }

      v20 = v14 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v22 = v18;
      v23 = (16 * v18);
      v24 = *a3;
      *v23 = *a2;
      v23[1] = v24;
      v15 = 16 * v18 + 16;
      v25 = &v23[-2 * v22];
      memcpy(v25, v16, v17);
      *(a1 + 768) = v25;
      *(a1 + 776) = v15;
      *(a1 + 784) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v13 = *a2;
      *(v13 + 1) = *a3;
      v15 = (v13 + 16);
    }

    *(a1 + 776) = v15;
    v26 = (v10 >> 4);
    v27 = *(a1 + 848);
    if (v26 < (*(a1 + 856) - v27) >> 2 && *(v27 + 4 * v26) != -1)
    {
      v8 = (a1 + 824);
      v6 = v10 >> 4;
      goto LABEL_24;
    }

    v9 = a1 + 824;
    v6 = v10 >> 4;
  }

  sub_40E0E8(v9, v6, a3);
}

uint64_t sub_574AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2B79D0(*(a1 + 8), *a2, v30);
  v4 = sub_31A76C(v30);
  v28 = v4;
  v29 = v5;
  v26 = sub_31AA0C(v30);
  v27 = v6;
  v33 = -1;
  v34 = 0x7FFFFFFF;
  v7 = v26 - v4;
  v8 = HIDWORD(v26) - HIDWORD(v4);
  v9 = v7 * v7 + v8 * v8;
  if (v9 == 0.0)
  {
    goto LABEL_5;
  }

  v10 = -v9;
  if (v9 > 0.0)
  {
    v10 = v7 * v7 + v8 * v8;
  }

  HIDWORD(v11) = 1018167296;
  if (v10 < 2.22044605e-16)
  {
LABEL_5:
    v12 = 0.0;
  }

  else
  {
    LODWORD(v10) = *a3;
    LODWORD(v11) = *(a3 + 4);
    v12 = (v7 * (*&v10 - v4) + v8 * (v11 - HIDWORD(v4))) / v9;
  }

  v13 = 1.0;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  v33 = sub_6EFC0(&v28, &v26, v15);
  v34 = v16;
  sub_314EC(a3, &v33, v17);
  v19 = v18 * 100.0;
  if (v19 >= 0.0)
  {
    v20 = v19;
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) + 1;
  }

  else
  {
    v20 = v19;
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_16:
  if (v20 >= 9.22337204e18)
  {
    v23 = 0x7FFFFFFFFFFFFFFELL;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }

    goto LABEL_26;
  }

  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v22 >> 1);
LABEL_25:
  v23 = v19;
  v24 = __p;
  if (__p)
  {
LABEL_26:
    v32 = v24;
    operator delete(v24);
  }

  return v23;
}

void sub_574CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_574CE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_31C398(*(a1 + 8), *a2, &__p);
  v7 = __p;
  v8 = v21;
  if (__p != v21)
  {
    do
    {
      v9 = sub_577084(a1, v7++);
      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) != 0);
    v7 = __p;
    if (!v9)
    {
      v17 = 0;
      if (__p)
      {
        goto LABEL_25;
      }

      return v17;
    }

    v8 = v21;
  }

  if (v7 == v8)
  {
    v17 = 1;
    if (!v7)
    {
      return v17;
    }

    goto LABEL_25;
  }

  do
  {
    v11 = sub_2B51D8(*(a1 + 8), *v7);
    v12 = (v11 - *v11);
    v13 = *v12;
    if (v13 < 0x9B)
    {
      if (v13 < 0x39)
      {
        goto LABEL_21;
      }
    }

    else if (v12[77] && (*(v11 + v12[77]) & 3) != 0)
    {
      goto LABEL_21;
    }

    v14 = v12[28];
    if (!v14 || ((v15 = *(v11 + v14), (v15 & 0x23) == 0) ? (v16 = (v15 & 7) == 4) : (v16 = 1), !v16))
    {
LABEL_21:
      v19 = sub_574AB0(a1, v7, a3);
      sub_576E10(a4, v7, &v19);
    }

    ++v7;
  }

  while (v7 != v8);
  v17 = 1;
  v7 = __p;
  if (!__p)
  {
    return v17;
  }

LABEL_25:
  v21 = v7;
  operator delete(v7);
  return v17;
}

void sub_574E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_574E60(uint64_t a1, unint64_t *a2, int a3, int a4, uint64_t a5)
{
  v10 = sub_2B51D8(*(a1 + 8), *a2);
  v11 = (v10 - *v10);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && ((v13 = *(v10 + v12), v14 = v13 > 0x2D, v15 = (1 << v13) & 0x208040000000, !v14) ? (v16 = v15 == 0) : (v16 = 1), !v16) || (v17 = sub_2B51D8(*(a1 + 8), *a2), v18 = (v17 - *v17), *v18 >= 0x2Fu) && (v19 = v18[23]) != 0 && *(v17 + v19) == 47)
  {
    v20 = sub_2B51D8(*(a1 + 8), *a2);
    v21 = (v20 - *v20);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = *(v20 + v22);
    }

    else
    {
      v23 = 0;
    }

    sub_2B79D0(*(a1 + 8), *a2, &v28);
    sub_31BF20(&v28, &v31);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (a3 & a4)
    {
      goto LABEL_38;
    }

    v24 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 2);
    if (v24 < 2 || v23 == 0)
    {
      goto LABEL_38;
    }

    if (v32 != v31)
    {
      if (v24 < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v27 = 0;
    v26 = 0;
    if (a3)
    {
      sub_5773B8(a1, &v31, v23, 1, &v28);
      v26 = v28;
      v27 = __p;
      if (a4)
      {
        goto LABEL_30;
      }
    }

    else if (a4)
    {
LABEL_30:
      sub_5773B8(a1, &v31, v23, 0, &v28);
      if (v26)
      {
        operator delete(v26);
      }

      v26 = v28;
      v27 = __p;
      if (v28 == __p)
      {
        goto LABEL_36;
      }

LABEL_33:
      if (*(a1 + 1736) == 1)
      {
        sub_4798C(a5, *(a5 + 8), v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
      }

      else
      {
        sub_376F0(a5, v26);
        sub_376F0(a5, (v27 - 12));
      }

LABEL_36:
      if (v26)
      {
        operator delete(v26);
      }

LABEL_38:
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      return;
    }

    if (v26 == v27)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }
}

void sub_5750FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_57514C(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v3 = *(a2 + 24);
  *(a1 + 88) = 0;
  v4 = a1 + 40;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v6 = a2[50];
  v5 = a2[51];
  v28 = a1 + 16;
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 112) = *(a2 + 106);
  *(a1 + 120) = a3;
  v7 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v7;
  v8 = a2[39];
  v27 = a2[40];
  if (v8 == v27)
  {
    return a1;
  }

  while (2)
  {
    v9 = v8[9];
    v10 = v8[10];
    while (v9 != v10)
    {
      v13 = *v9;
      if (*v9 <= 5)
      {
        if (v13)
        {
          v14 = v4;
          if (v13 != 1)
          {
            goto LABEL_10;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v14 = v4;
      if (v13 != 7)
      {
        if (v13 != 6)
        {
          goto LABEL_10;
        }

LABEL_18:
        v14 = v28;
      }

LABEL_19:
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      if (v15 < v16)
      {
        v11 = *v8;
        *(v15 + 8) = *(v8 + 2);
        *v15 = v11;
        v12 = v15 + 12;
      }

      else
      {
        v17 = *v14;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v14) >> 2);
        v19 = v18 + 1;
        if (v18 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (v21 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v22 = 4 * ((v15 - *v14) >> 2);
        v23 = *v8;
        *(v22 + 8) = *(v8 + 2);
        *v22 = v23;
        v12 = 12 * v18 + 12;
        v24 = 12 * v18 - (v15 - v17);
        memcpy((v22 - (v15 - v17)), v17, v15 - v17);
        *v14 = v24;
        *(v14 + 8) = v12;
        *(v14 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      *(v14 + 8) = v12;
LABEL_10:
      ++v9;
    }

    v8 += 22;
    if (v8 != v27)
    {
      continue;
    }

    return a1;
  }
}

void sub_5753FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, ...)
{
  va_start(va, a5);
  v5[12] = v6;
  sub_35390(va);
  v9 = *v7;
  if (*v7)
  {
    v5[6] = v9;
    operator delete(v9);
    v10 = *a5;
    if (!*a5)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v10 = *a5;
    if (!*a5)
    {
      goto LABEL_3;
    }
  }

  v5[3] = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_575474(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      v5 = *(a1 + 24);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_575634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_576CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_576E10(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_585AE0(a1, a2, &v32);
  if (!v32)
  {
    ++*(a1 + 816);
    v12 = *(a1 + 776) - *(a1 + 768);
    sub_585C38(a1, a2, &v34);
    v13 = v34;
    if (v36 == 1)
    {
      v14 = *(v34 + 8) + 12 * v35;
      *v14 = *a2;
      *(v14 + 8) = 0;
    }

    *(*(v13 + 8) + 12 * v35 + 8) = v12 >> 4;
    v15 = *(a1 + 776);
    v16 = *(a1 + 784);
    if (v15 >= v16)
    {
      v20 = *(a1 + 768);
      v21 = v15 - v20;
      v22 = (v15 - v20) >> 4;
      v23 = v22 + 1;
      if ((v22 + 1) >> 60)
      {
        sub_1794();
      }

      v24 = v16 - v20;
      if (v24 >> 3 > v23)
      {
        v23 = v24 >> 3;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (!(v25 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v26 = v22;
      v27 = (16 * v22);
      v28 = *a3;
      *v27 = *a2;
      v27[1] = v28;
      v17 = 16 * v22 + 16;
      v29 = &v27[-2 * v26];
      memcpy(v29, v20, v21);
      *(a1 + 768) = v29;
      *(a1 + 776) = v17;
      *(a1 + 784) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v15 = *a2;
      *(v15 + 1) = *a3;
      v17 = (v15 + 16);
    }

    *(a1 + 776) = v17;
    v30 = (v12 >> 4);
    v31 = *(a1 + 848);
    if (v30 < (*(a1 + 856) - v31) >> 2 && *(v31 + 4 * v30) != -1)
    {
      v11 = (a1 + 824);
      v9 = v12 >> 4;
      goto LABEL_26;
    }

    v19 = a1 + 824;
    v9 = v12 >> 4;
LABEL_28:
    sub_40E0E8(v19, v9, a3);
    return 1;
  }

  v6 = *(a1 + 768) + 16 * *(v33 + 8);
  v8 = *(v6 + 8);
  v7 = (v6 + 8);
  if (*a3 >= v8)
  {
    return 0;
  }

  ++*(a1 + 816);
  *v7 = *a3;
  v9 = *(v33 + 8);
  v10 = *(a1 + 848);
  if (v9 >= (*(a1 + 856) - v10) >> 2 || *(v10 + 4 * v9) == -1)
  {
    v19 = a1 + 824;
    goto LABEL_28;
  }

  v11 = (a1 + 824);
LABEL_26:
  sub_40E27C(v11, v9, a3);
  return 1;
}

uint64_t sub_577084(uint64_t a1, unint64_t *a2)
{
  v4 = sub_2B51D8(*(a1 + 8), *a2);
  v5 = (v4 - *v4);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      if (*(v4 + v6) == 47)
      {
        return 1;
      }
    }
  }

  v7 = sub_2B51D8(*(a1 + 8), *a2);
  v8 = (v7 - *v7);
  if (*v8 >= 0x2Fu)
  {
    v9 = v8[23];
    if (v9)
    {
      v10 = *(v7 + v9);
      v11 = v10 > 0x2D;
      v12 = (1 << v10) & 0x208040000000;
      if (!v11 && v12 != 0)
      {
        return 1;
      }
    }
  }

  v14 = sub_2B51D8(*(a1 + 8), *a2);
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 0x9B)
  {
    if (v16 < 0x39)
    {
      return 0;
    }
  }

  else if (v15[77] && (*(v14 + v15[77]) & 3) != 0)
  {
    return 0;
  }

  v17 = v15[28];
  if (v17)
  {
    v18 = *(v14 + v17);
    if ((v18 & 3) == 0 && (v18 & 7) != 4)
    {
      return (v18 >> 5) & 1;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_5771AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  sub_2B79D0(*(a1 + 8), *a2, v28);
  if (*(v3 + 16) == *(v3 + 24))
  {
    goto LABEL_30;
  }

  if (__p == v30)
  {
    goto LABEL_30;
  }

  v4 = sub_31A76C(v28);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (v7 == v8)
  {
    goto LABEL_30;
  }

  v9 = 0;
  do
  {
    v10 = v7[1];
    v11 = (*v7 + 12);
    if (*v7 != v10 && v11 != v10)
    {
      do
      {
        v13 = *(v11 - 2);
        v14 = v11[1];
        if (v13 < HIDWORD(v4) != v14 < HIDWORD(v4))
        {
          LODWORD(v5) = *v11;
          LODWORD(v6) = *(v11 - 3);
          v6 = *&v6;
          v5 = (HIDWORD(v4) - v13) / (v14 - v13) * (*&v5 - v6) + v6;
          if (v5 < v4)
          {
            v9 ^= 1u;
          }
        }

        v11 += 3;
      }

      while (v11 != v10);
    }

    v7 += 3;
  }

  while (v7 != v8);
  if ((v9 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_33;
  }

  v15 = sub_31AA0C(v28);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  if (v18 == v19)
  {
LABEL_30:
    v20 = 0;
    v26 = __p;
    if (!__p)
    {
      return v20 & 1;
    }

    goto LABEL_34;
  }

  v20 = 0;
  do
  {
    v21 = v18[1];
    v22 = (*v18 + 12);
    if (*v18 != v21 && v22 != v21)
    {
      do
      {
        v24 = *(v22 - 2);
        v25 = v22[1];
        if (v24 < HIDWORD(v15) != v25 < HIDWORD(v15))
        {
          LODWORD(v16) = *v22;
          LODWORD(v17) = *(v22 - 3);
          v17 = *&v17;
          v16 = (HIDWORD(v15) - v24) / (v25 - v24) * (*&v16 - v17) + v17;
          if (v16 < v15)
          {
            v20 ^= 1u;
          }
        }

        v22 += 3;
      }

      while (v22 != v21);
    }

    v18 += 3;
  }

  while (v18 != v19);
LABEL_33:
  v26 = __p;
  if (__p)
  {
LABEL_34:
    v30 = v26;
    operator delete(v26);
  }

  return v20 & 1;
}

void sub_577398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5773B8(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v6 = *(a1 + 1728);
  if (v6 >= a3)
  {
    if (a4)
    {
      v11 = a2[1];
      v46[0] = *(v11 - 12);
      v12 = *(v11 - 1);
    }

    else
    {
      v13 = *a2;
      v46[0] = **a2;
      v12 = *(v13 + 2);
    }

    LODWORD(v46[1]) = v12;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    operator new();
  }

  if (v6)
  {
    v7 = v6 / a3;
    if (!a4)
    {
      v7 = 1.0 - v7;
    }

    v53 = 0;
    v9 = *a2;
    v10 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 2) > 1)
    {
      v39 = v7;
      v52 = 0;
      *v46 = 0u;
      *__p = 0u;
      v48 = 0u;
      v51 = 0;
      v15 = (v9 + 12);
      v16 = v9 == v10 || v15 == v10;
      v17 = v16;
      v18 = 0.0;
      if (!v16)
      {
        v43 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v41 = vdupq_n_s64(0xC066800000000000);
        v42 = vdupq_n_s64(0x4076800000000000uLL);
        v40 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v19) = 1096306543;
        do
        {
          LODWORD(v19) = *(v15 - 2);
          v20 = exp(3.14159265 - *&v19 * 6.28318531 / 4294967300.0);
          *&v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795;
          LODWORD(v22) = *(v15 - 3);
          HIDWORD(v22) = *v15;
          v44 = v22;
          v23 = *&v21 * 0.0174532925;
          LODWORD(v21) = *(v15 + 1);
          v24 = exp(3.14159265 - v21 * 6.28318531 / 4294967300.0);
          v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
          v26.i64[0] = v44;
          v26.i64[1] = HIDWORD(v44);
          v27 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v26), v42), v43), v41), v40);
          v45 = vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0];
          v28 = sin((v23 - v25) * 0.5);
          v29 = v28 * v28;
          v30 = cos(v23);
          v31 = v30 * cos(v25);
          v32 = sin(0.5 * v45);
          v33 = atan2(sqrt(v32 * v32 * v31 + v29), sqrt(1.0 - (v32 * v32 * v31 + v29)));
          v19 = (v33 + v33) * 6372797.56;
          v18 = v18 + v19;
          v15 = (v15 + 12);
        }

        while (v15 != v10);
      }

      v34 = v39 * v18;
      v50 = v39 * v18;
      v49[0] = &v51;
      v49[1] = v46;
      v49[2] = &v53;
      v49[3] = &v52;
      v49[4] = &v50;
      if ((v17 & 1) == 0)
      {
        do
        {
          sub_316F0(v49, v9, v9 + 3, v34);
          v35 = v9 + 3;
          v9 = (v9 + 12);
        }

        while (v35 != v10);
      }
    }

    else
    {
      sub_313A4(v46, a2, a2);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (a4)
    {
      v36 = __p[1];
    }

    else
    {
      v36 = v46[0];
    }

    v37 = &v48;
    if (!a4)
    {
      v37 = &v46[1];
    }

    v38 = *v37;
    if (v38 != v36)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v38 - v36) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    if (__p[1])
    {
      *&v48 = __p[1];
      operator delete(__p[1]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v14 = a2[1];
    if (v14 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

uint64_t sub_577870(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_584F38(a1, a2, a3);
    a1[1] = v6;
    return v6 - 64;
  }

  else
  {
    sub_5850C8(a1[1], a2, a3);
    a1[1] = v4 + 64;
    a1[1] = v4 + 64;
    return v4;
  }
}

void sub_5778D8(uint64_t a1, void *a2, void *a3)
{
  if (a2[138] != a2[139] && sub_4D1DC0(a2))
  {
    if (*(a2[139] - 1608) >= *(a1 + 1768))
    {
      v6 = *(a1 + 1768);
    }

    else
    {
      v6 = *(a2[139] - 1608);
    }

    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, &v23);
    sub_31BF20(&v23, v26);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v9 = sub_4D2140(a2);
    sub_2F4C8(v26, 0, &v23, 0.0, v9 / 1000000000.0);
    v10 = v23;
    if (v23 != __p)
    {
      v11 = (__p - 12);
      v12 = a3[3];
      v13 = a3[4];
      if (v12 >= v13)
      {
        v16 = a3[2];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3) + 1;
        if (v17 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v20 = 8 * ((v12 - v16) >> 3);
        v21 = *v11;
        *(v20 + 8) = *(__p - 1);
        *v20 = v21;
        *(v20 + 16) = v6;
        v15 = v20 + 24;
        v22 = (v20 - (v12 - v16));
        memcpy(v22, v16, v12 - v16);
        a3[2] = v22;
        a3[3] = v15;
        a3[4] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        v14 = *v11;
        *(v12 + 8) = *(__p - 1);
        *v12 = v14;
        *(v12 + 16) = v6;
        v15 = v12 + 24;
      }

      a3[3] = v15;
      v10 = v23;
    }

    if (v10)
    {
      __p = v10;
      operator delete(v10);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }
}

void sub_577AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_577B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 11272);
  if (v4 == 3)
  {
    if (*(a1 + 1977))
    {
LABEL_61:
      v25 = 1;
      return v25 & 1;
    }
  }

  else if (v4 == 4 && (*(a1 + 1976) & 1) != 0)
  {
    goto LABEL_61;
  }

  v5 = sub_4D1F60(a2);
  v6 = *v5;
  v7 = (*v5 - **v5);
  v8 = *v7;
  if (v8 >= 0x2F && v7[23])
  {
    v9 = v6[v7[23]];
    v10 = v9 > 0x1A;
    v11 = (1 << v9) & 0x4810001;
    if (!v10 && v11 != 0)
    {
      if (*(v5 + 38))
      {
        if (v8 < 0x39)
        {
          goto LABEL_48;
        }

        v13 = v7[28];
        if (!v13)
        {
          goto LABEL_48;
        }

        v14 = *&v6[v13];
        if ((v14 & 2) != 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        if ((v14 & 7) != 4 && (v14 & 0x23) != 0x20)
        {
          goto LABEL_48;
        }

        goto LABEL_22;
      }

      if (v8 < 0x39)
      {
        goto LABEL_48;
      }

      v15 = v7[28];
      if (!v15)
      {
        goto LABEL_48;
      }

      v14 = *&v6[v15];
      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  if ((*(a2 + 11268) - 1) > 1 || (v16 = *(a2 + 7496), *(a2 + 7488) == v16) || !*(a1 + 1960) || sub_138B0((a1 + 1936), v16 - 24))
  {
    if (*(a1 + 1900) != 1)
    {
      goto LABEL_53;
    }

    sub_64AEEC(&v54, 2);
    sub_11A9248(&v54, (a2 + 11400), 2, &__p);
    v17 = __p;
    v18 = v53;
    v55[0] = (a2 + 11088);
    v55[1] = a1;
    if (__p != v53)
    {
      while (!sub_5863D4(v55, v17))
      {
        v17 += 44;
        if (v17 == v18)
        {
          v17 = __p;
          v18 = v53;
          goto LABEL_31;
        }
      }

      v17 = __p;
      if (__p)
      {
        v21 = v53;
        if (__p == v53)
        {
          v22 = __p;
        }

        else
        {
          do
          {
            v23 = *(v21 - 3);
            if (v23)
            {
              operator delete(v23);
            }

            v24 = *(v21 - 13);
            if (v24)
            {
              *(v21 - 12) = v24;
              operator delete(v24);
            }

            v21 -= 44;
          }

          while (v21 != v17);
          v22 = __p;
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_31:
    if (v17 == v18)
    {
      v22 = v17;
      if (v17)
      {
LABEL_52:
        v53 = v17;
        operator delete(v22);
      }

LABEL_53:
      v26 = *(a2 + 11375);
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(a2 + 11360);
      }

      if (!v26)
      {
        goto LABEL_61;
      }

      v27 = sub_E67C38(a2 + 11088);
      v28 = v27;
      v29 = *(a1 + 2008);
      v30 = *(a1 + 2016);
      v31 = v29;
      if (v29 != v30)
      {
        v31 = *(a1 + 2008);
        while (*v31 != v27)
        {
          v31 += 16;
          if (v31 == v30)
          {
            goto LABEL_64;
          }
        }
      }

      if (v31 != v30)
      {
        v25 = v31[8];
        return v25 & 1;
      }

LABEL_64:
      v32 = *(a1 + 1912);
      v33 = *(a1 + 1920);
      if (v32 == v33)
      {
LABEL_97:
        v25 = 1;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
LABEL_88:
          v44 = v30 - v29;
          v45 = (v30 - v29) >> 4;
          v46 = v45 + 1;
          if ((v45 + 1) >> 60)
          {
            sub_1794();
          }

          v47 = v43 - v29;
          if (v47 >> 3 > v46)
          {
            v46 = v47 >> 3;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (!(v48 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v50 = 16 * v45;
          *v50 = v28;
          *(v50 + 8) = v25;
          v49 = 16 * v45 + 16;
          memcpy(0, v29, v44);
          *(a1 + 2008) = 0;
          *(a1 + 2016) = v49;
          *(a1 + 2024) = 0;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_101;
        }
      }

      else
      {
        v34 = *(a2 + 11375);
        if ((v34 & 0x8000000000000000) != 0)
        {
          v38 = *(a2 + 11352);
          v39 = *(a2 + 11360);
          while (1)
          {
            v40 = *(v32 + 23);
            v41 = v40 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v39 >= v41)
            {
              v42 = v40 >= 0 ? v32 : *v32;
              if (!memcmp(v38, v42, v41))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        else
        {
          while (1)
          {
            v35 = *(v32 + 23);
            v36 = v35 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v36 <= v34)
            {
              v37 = v35 >= 0 ? v32 : *v32;
              if (!memcmp((a2 + 11352), v37, v36))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        v25 = 0;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
          goto LABEL_88;
        }
      }

      *v30 = v28;
      v30[8] = v25;
      v49 = (v30 + 16);
LABEL_101:
      *(a1 + 2016) = v49;
      return v25 & 1;
    }

    if (v17)
    {
      do
      {
        v19 = *(v18 - 3);
        if (v19)
        {
          operator delete(v19);
        }

        v20 = *(v18 - 13);
        if (v20)
        {
          *(v18 - 12) = v20;
          operator delete(v20);
        }

        v18 -= 44;
      }

      while (v18 != v17);
      v53 = v17;
      operator delete(__p);
    }
  }

LABEL_48:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_577FD0(uint64_t a1, void *a2)
{
  v2 = a2[139];
  do
  {
    if (v2 == a2[138])
    {
      if (!sub_7E7E4(1u))
      {
        return -1;
      }

      sub_19594F8(&v17);
      sub_4A5C(&v17, "Could not resolve transport mode transition coordinate.", 55);
      if ((v27 & 0x10) != 0)
      {
        v13 = v26;
        if (v26 < v23)
        {
          v26 = v23;
          v13 = v23;
        }

        v14 = v22;
        v9 = v13 - v22;
        if (v13 - v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if ((v27 & 8) == 0)
        {
          v9 = 0;
          v16 = 0;
LABEL_22:
          *(&v15 + v9) = 0;
          sub_7E854(&v15, 1u);
          if (v16 < 0)
          {
            operator delete(v15);
          }

          if (v25 < 0)
          {
            operator delete(v24);
          }

          std::locale::~locale(&v19);
          std::ostream::~ostream();
          std::ios::~ios();
          return -1;
        }

        v14 = v20;
        v9 = v21 - v20;
        if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_30:
          sub_3244();
        }
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      v16 = v9;
      if (v9)
      {
        memmove(&v15, v14, v9);
      }

      goto LABEL_22;
    }

    v3 = v2 - 2616;
    v4 = *(v2 - 2232);
    v2 -= 2616;
  }

  while (v4 != 5);
  v5 = *(v3 + 24);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (a2[1266] != a2[1267])
  {
    return *(sub_69ADA0(a2, v7)[1] - 12);
  }

  v11 = sub_4D1F50(a2, v7);
  sub_2B7A20(*(a1 + 8), *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, &v17);
  result = sub_31AA0C(&v17);
  if (__p)
  {
    v19.__locale_ = __p;
    v12 = result;
    operator delete(__p);
    return v12;
  }

  return result;
}

void sub_5782D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_578320(void *a1, unint64_t a2)
{
  if (0x3795876FF3795877 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x3795876FF3795877 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 2616 * a2;
}

void sub_57845C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_57853C(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = a2;
  v6 = sub_3AF6B4(a2);
  *(a1 + 16) = -1;
  *(a1 + 8) = v6;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_527724(a1 + 144, a3);
  v9[23] = 18;
  strcpy(v9, "ArrivalInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(a2, v9, v8);
  sub_41D7AC(v7, &v10);
  operator new();
}

void sub_5787CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(v28 - 88);
  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4((v27 + 16));
  sub_584AC0(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_57884C(uint64_t result, void *a2)
{
  if (*(result + 1720) == 1)
  {
    v2 = result;
    if (*(result + 1596) == 1)
    {
      result = sub_4D1DC0(a2);
      if (result)
      {
        result = sub_69AE3C(a2);
        if (*result != -1 || *(result + 4) != -1)
        {
          sub_578A40(v2, a2);
          sub_5790DC(v2, a2);
          v5 = sub_4D1F60(a2);
          v6 = sub_579290(v2, *(v5 + 32) | (*(v5 + 36) << 32));
          if (sub_69CCC0(a2) && *sub_73F54(a2) != 0x7FFFFFFF)
          {
            v8 = *(v2 + 1792);
            v9 = sub_73F54(a2);
            v7 = sub_5733D0(v9, v8);
          }

          else
          {
            v7 = 0;
          }

          sub_57A13C(v2, v7, v6, (a2 + 1281));
          sub_57A478(v2, a2, a2 + 1281);
          sub_57A720(v2, v7, (a2 + 1281));
          sub_57A930(v2, a2, a2 + 1281);
          sub_57AB24(v2, a2, (a2 + 1281));
          sub_57AE04(v2, a2, a2 + 1281);
          sub_5744DC(v2, a2);
          if (*(v2 + 1752) == 0x7FFFFFFFFFFFFFFFLL || *(sub_69AE3C(a2) + 184) != 2)
          {
            v10 = (v2 + 1744);
          }

          else
          {
            v10 = (v2 + 1752);
          }

          v11 = *v10;
          v12 = a2[139];
          if (a2[138] != v12)
          {
            v13 = *(v12 - 1608);
            if (v13 < v11)
            {
              v11 = v13;
            }
          }

          a2[1281] = v11;

          return sub_57B080(v2, a2, (a2 + 1281));
        }
      }
    }
  }

  return result;
}

BOOL sub_578A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_69AE3C(a2);
  if (sub_69B0E0(a2))
  {
    LOBYTE(v5) = 1;
    goto LABEL_36;
  }

  if (!*(a1 + 1280))
  {
    goto LABEL_35;
  }

  if ((sub_67AE78(a1 + 144) & 1) == 0)
  {
    v8 = *(a1 + 1280) - 1;
    v9 = *(a1 + 1272);
    v10 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
    goto LABEL_10;
  }

  v6 = *(a1 + 1706);
  v7 = sub_4D1DB0(a2);
  if (v6 == 1)
  {
    LODWORD(v8) = *v7;
    if (v8 != 0xFFFF)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v7;
    LOWORD(v8) = -1;
    if (v11 != 0xFFFF)
    {
      if (*(a1 + 1360) == 2)
      {
        LODWORD(v8) = *v7;
      }

      else
      {
        LOWORD(v8) = v11 - 1;
      }
    }

    LODWORD(v8) = v8;
    if (v8 != 0xFFFF)
    {
LABEL_7:
      if (*(a1 + 1280) > v8)
      {
        v9 = *(a1 + 1272);
        v10 = (v8 >> 3) & 0x1FF8;
LABEL_10:
        v5 = (*(v9 + v10) >> v8) & 1;
        goto LABEL_36;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(&__p[3]);
        v12 = sub_74700();
        sub_73F1C(v12);
        std::operator+<char>();
        if (SHIBYTE(__p[2]) >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v14 = HIBYTE(__p[2]);
        }

        else
        {
          v14 = __p[1];
        }

        sub_4A5C(&__p[3], v13, v14);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959680(&__p[3], __p);
        sub_7E854(__p, 3u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&__p[3]);
        LOBYTE(v5) = 0;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v5) = 0;
      goto LABEL_36;
    }
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_35;
  }

  sub_19594F8(&__p[3]);
  v15 = sub_74700();
  v16 = sub_73F1C(v15);
  if (*(v16 + 23) >= 0)
  {
    v17 = *(v16 + 23);
  }

  else
  {
    v17 = *(v16 + 8);
  }

  if (v17 + 63 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 63 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "ArrivalInfoBuilder encountered an invalid user waypoint index: ", 63);
  if (*(v16 + 23) >= 0)
  {
    v28 = v16;
  }

  else
  {
    v28 = *v16;
  }

  memmove(&__p[7] + 7, v28, v17);
  *(&__p[7] + v17 + 7) = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v30 = HIBYTE(__p[2]);
  }

  else
  {
    v30 = __p[1];
  }

  sub_4A5C(&__p[3], v29, v30);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = *(&v40 + 1);
    if (*(&v40 + 1) < v37)
    {
      *(&v40 + 1) = v37;
      v32 = v37;
    }

    v33 = &v36[1];
    goto LABEL_71;
  }

  if ((v41 & 8) != 0)
  {
    v33 = &__p[6];
    v32 = v36[0];
LABEL_71:
    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v32 - *v33;
    if (v31)
    {
      memmove(__p, v34, v31);
    }

    goto LABEL_77;
  }

  v31 = 0;
  HIBYTE(__p[2]) = 0;
LABEL_77:
  *(__p + v31) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39[0]);
  }

  std::locale::~locale(&__p[5]);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(v5) = 0;
LABEL_36:
  sub_57B984(&__p[3], v4, v5);
  v18 = *(a1 + 32);
  *(a1 + 16) = __p[3];
  *(a1 + 24) = __p[4];
  if (v18)
  {
    *(a1 + 40) = v18;
    operator delete(v18);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v19 = *(a1 + 56);
  *(a1 + 32) = *&__p[5];
  *(a1 + 48) = __p[7];
  memset(&__p[5], 0, 24);
  if (v19)
  {
    *(a1 + 64) = v19;
    operator delete(v19);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v20 = (a1 + 104);
  v21 = *(a1 + 104);
  *(a1 + 56) = *v36;
  *(a1 + 72) = v37;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  *(a1 + 80) = v38;
  *(a1 + 88) = *v39;
  if (v21)
  {
    v22 = *(a1 + 112);
    v23 = v21;
    if (v22 != v21)
    {
      v24 = *(a1 + 112);
      do
      {
        v26 = *(v24 - 3);
        v24 -= 24;
        v25 = v26;
        if (v26)
        {
          *(v22 - 2) = v25;
          operator delete(v25);
        }

        v22 = v24;
      }

      while (v24 != v21);
      v23 = *v20;
    }

    *(a1 + 112) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = v40;
  *(a1 + 120) = v41;
  v41 = 0;
  v40 = 0uLL;
  *(a1 + 128) = v42;
  *(a1 + 136) = v43;
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (__p[5])
  {
    __p[6] = __p[5];
    operator delete(__p[5]);
  }

  result = sub_69B0E0(a2);
  *(a1 + 80) = result;
  return result;
}

void sub_57905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_5790DC(uint64_t a1, void *a2)
{
  if (a2[1266] == a2[1267])
  {
    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, &v12);
    sub_31BF20(&v12, &v15);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = sub_4D1DC0(a2);
    v5 = sub_69CB14(a2, v4 - 1);
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v6 = v5[1];
    if (v6 != *v5)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v9 = sub_4D2140(a2);
  sub_2F4C8(&v15, 0, &v12, 0.0, v9 / 1000000000.0);
  v10 = v12;
  v11 = *(__p - 1);
  *(a1 + 2032) = *(__p - 12);
  *(a1 + 2040) = v11;
  if (v10)
  {
    __p = v10;
    operator delete(v10);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_579250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_579290(uint64_t a1, uint64_t a2)
{
  v135[0] = a2;
  if ((*(a1 + 1864) & 1) == 0)
  {
    return *(a1 + 1992);
  }

  v4 = sub_2B51D8(*(a1 + 8), a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x2Fu || (v6 = v5[23]) == 0 || *(v4 + v6) != 47)
  {
    v7 = sub_2B51D8(*(a1 + 8), a2);
    v8 = (v7 - *v7);
    if (*v8 < 0x2Fu)
    {
      return *(a1 + 1992);
    }

    v9 = v8[23];
    if (!v9)
    {
      return *(a1 + 1992);
    }

    v10 = *(v7 + v9);
    v11 = v10 > 0x2D;
    v12 = (1 << v10) & 0x208040000000;
    if (v11 || v12 == 0)
    {
      return *(a1 + 1992);
    }
  }

  sub_2B79D0(*(a1 + 8), a2, v118);
  v133 = sub_31A76C(v118);
  v134 = v18;
  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  v19 = *(a1 + 1984);
  v20 = *(a1 + 1992);
  if (v19 != v20)
  {
    while ((sub_49AD8(v19, &v133, v14, v15, v16, v17) & 1) == 0)
    {
      v19 += 48;
      if (v19 == v20)
      {
        v19 = v20;
        break;
      }
    }

    v20 = *(a1 + 1992);
  }

  if (v19 == v20)
  {
    v131 = 0;
    v132 = 0;
    sub_586680(v118);
    *&v102 = sub_57B2E8(a1, v135, &v133);
    sub_574864(v118, v135, &v102);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    if (v130)
    {
      do
      {
        v102 = *(v121 + *v126);
        v21 = v124;
        if (v124 >= v125)
        {
          v23 = __src;
          v24 = v124 - __src;
          v25 = (v124 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_1794();
          }

          v27 = v125 - __src;
          if ((v125 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (4 * v25);
          v30 = &v29[-((v124 - __src) >> 2)];
          *v29 = *v126;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          __src = v30;
          v124 = v22;
          v125 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v124 = *v126;
          v22 = v21 + 4;
        }

        v124 = v22;
        v31 = v126;
        *(v128 + *v126) = -1;
        v32 = --v130;
        if (v130)
        {
          v33 = &v31[2 * v32];
          *v31 = *v33;
          v31[1] = *(v33 + 1);
          v34 = v126;
          *(v128 + *v126) = 0;
          v35 = v130;
          if (v130 >= 2)
          {
            v36 = 0;
            v37 = 0;
            v38 = 1;
            do
            {
              v39 = v36 + 5;
              if (v39 >= v35)
              {
                v40 = v35;
              }

              else
              {
                v40 = v39;
              }

              if (v39 <= v38)
              {
                break;
              }

              v41 = v37;
              v42 = v34[2 * v37 + 1];
              v43 = &v34[2 * v38 + 1];
              v37 = -1;
              v44 = v42;
              do
              {
                v46 = *v43;
                v43 += 2;
                v45 = v46;
                if (v46 < v44)
                {
                  v44 = v45;
                  v37 = v38;
                }

                ++v38;
              }

              while (v38 < v40);
              if (v37 >= v35)
              {
                break;
              }

              v47 = 2 * v37;
              v48 = &v34[v47];
              v49 = 16 * v41;
              v50 = v34 + v49;
              v51 = *v48;
              *v48 = *v50;
              *v50 = v51;
              v52 = *(v48 + 1);
              *(v48 + 1) = v42;
              *(v50 + 1) = v52;
              v34 = v126;
              v53 = *(v126 + v47 * 8);
              v54 = v128;
              v55 = *(v126 + v49);
              LODWORD(v49) = *(v128 + v53);
              *(v128 + v53) = *(v128 + v55);
              v54[v55] = v49;
              v36 = 4 * v37;
              v38 = (4 * v37) | 1;
              v35 = v130;
            }

            while (v38 < v130);
          }
        }

        v127 -= 16;
        v112 = sub_2B4EDC(*(a1 + 8), v102, 0);
        v56 = sub_57B518(a1, &v112, &v133, v118);
        __dst = sub_2B4EDC(*(a1 + 8), v102, 1);
        v57 = sub_57B518(a1, &__dst, &v133, v118);
        sub_57B698(a1, &v102, v56 ^ 1, v57 ^ 1, &v115);
        v58 = sub_2B51D8(*(a1 + 8), v102);
        v59 = (v58 - *v58);
        if (*v59 >= 9u && (v60 = v59[4]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v62 = sub_2B51D8(*(a1 + 8), v102);
        v63 = (v62 - *v62);
        if (*v63 >= 0x2Fu)
        {
          v64 = v63[23];
          if (v64)
          {
            v65 = *(v62 + v64);
            v11 = v65 > 0x2D;
            v66 = (1 << v65) & 0x208040000000;
            if (!v11 && v66 != 0)
            {
              v132 += v61;
            }
          }
        }

        v131 += v61;
      }

      while (v130);
      v69 = v116;
      if (v115 != v116)
      {
        v70 = (v115 + 12);
        if (v115 + 12 != v116)
        {
          v71 = *v115;
          while (1)
          {
            v72 = v71;
            v71 = *v70;
            if (__PAIR64__(*(v70 - 2), v72) == *v70 && *(v70 - 1) == v70[2])
            {
              break;
            }

            v70 += 3;
            if (v70 == v116)
            {
              goto LABEL_76;
            }
          }

          v73 = v70 - 3;
          if (v70 - 3 != v116)
          {
            while (1)
            {
              v70 += 3;
              if (v70 == v69)
              {
                break;
              }

              if (*v73 != *v70 || v73[1] != v70[1] || v73[2] != v70[2])
              {
                v74 = v70[2];
                *(v73 + 3) = *v70;
                v73 += 3;
                v73[2] = v74;
              }
            }

            v69 = v73 + 3;
            if (v73 + 3 != v116)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_76:
    if (v69 != v116)
    {
LABEL_77:
      v116 = v69;
    }

LABEL_78:
    sub_49AD4(&v112, &v115, *(a1 + 1800));
    v75 = v112;
    if (v113 - v112 != 24 || *v112 == *(v112 + 1))
    {
      v19 = *(a1 + 1992);
      if (v112)
      {
LABEL_146:
        v95 = v113;
        v96 = v75;
        if (v113 != v75)
        {
          v97 = v113;
          do
          {
            v99 = *(v97 - 3);
            v97 -= 24;
            v98 = v99;
            if (v99)
            {
              *(v95 - 2) = v98;
              operator delete(v98);
            }

            v95 = v97;
          }

          while (v97 != v75);
          v96 = v112;
        }

        v113 = v75;
        operator delete(v96);
      }

LABEL_153:
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      if (__src)
      {
        v124 = __src;
        operator delete(__src);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      sub_360988(v118);
      return v19;
    }

    v76 = *(a1 + 1992);
    if (v76 >= *(a1 + 2000))
    {
      v79 = sub_5853E0((a1 + 1984), &v112, &v132, &v131);
    }

    else
    {
      v78 = v131;
      v77 = v132;
      v76[1] = 0;
      v76[2] = 0;
      *v76 = 0;
      *&v102 = v76;
      BYTE8(v102) = 0;
      if (v113 != v112)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v76[3] = v114;
      v76[4] = v77;
      v76[5] = v78;
      v79 = (v76 + 6);
      *(a1 + 1992) = v76 + 6;
    }

    *(a1 + 1992) = v79;
    if (!sub_7E7E4(2u))
    {
LABEL_107:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_126;
      }

      sub_19594F8(&v102);
      sub_4A5C(&v102, "polygon vertices number: ", 25);
      std::ostream::operator<<();
      if ((v111 & 0x10) != 0)
      {
        v85 = v110;
        if (v110 < v107)
        {
          v110 = v107;
          v85 = v107;
        }

        v86 = &v106;
      }

      else
      {
        if ((v111 & 8) == 0)
        {
          v84 = 0;
          v101 = 0;
LABEL_121:
          *(&__dst + v84) = 0;
          sub_7E854(&__dst, 2u);
          if (v101 < 0)
          {
            operator delete(__dst);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          std::locale::~locale(&v103);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_126:
          if (!sub_7E7E4(2u))
          {
            goto LABEL_145;
          }

          sub_19594F8(&v102);
          v88 = sub_4A5C(&v102, " parking segment length: ", 25);
          v89 = sub_70FBC(v88, v132);
          v90 = sub_4A5C(v89, " drivable segment length: ", 26);
          sub_70FBC(v90, v131);
          if ((v111 & 0x10) != 0)
          {
            v92 = v110;
            if (v110 < v107)
            {
              v110 = v107;
              v92 = v107;
            }

            v93 = &v106;
          }

          else
          {
            if ((v111 & 8) == 0)
            {
              v91 = 0;
              v101 = 0;
LABEL_140:
              *(&__dst + v91) = 0;
              sub_7E854(&__dst, 2u);
              if (v101 < 0)
              {
                operator delete(__dst);
              }

              if (v109 < 0)
              {
                operator delete(v108);
              }

              std::locale::~locale(&v103);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_145:
              v19 = *(a1 + 1992) - 48;
              v75 = v112;
              if (v112)
              {
                goto LABEL_146;
              }

              goto LABEL_153;
            }

            v93 = v104;
            v92 = v105;
          }

          v94 = *v93;
          v91 = v92 - *v93;
          if (v91 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v91 >= 0x17)
          {
            operator new();
          }

          v101 = v92 - *v93;
          if (v91)
          {
            memmove(&__dst, v94, v91);
          }

          goto LABEL_140;
        }

        v86 = v104;
        v85 = v105;
      }

      v87 = *v86;
      v84 = v85 - *v86;
      if (v84 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v84 >= 0x17)
      {
        operator new();
      }

      v101 = v85 - *v86;
      if (v84)
      {
        memmove(&__dst, v87, v84);
      }

      goto LABEL_121;
    }

    sub_19594F8(&v102);
    sub_49B98(&v102, &v112);
    if ((v111 & 0x10) != 0)
    {
      v81 = v110;
      if (v110 < v107)
      {
        v110 = v107;
        v81 = v107;
      }

      v82 = &v106;
    }

    else
    {
      if ((v111 & 8) == 0)
      {
        v80 = 0;
        v101 = 0;
LABEL_102:
        *(&__dst + v80) = 0;
        sub_7E854(&__dst, 2u);
        if (v101 < 0)
        {
          operator delete(__dst);
        }

        if (v109 < 0)
        {
          operator delete(v108);
        }

        std::locale::~locale(&v103);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_107;
      }

      v82 = v104;
      v81 = v105;
    }

    v83 = *v82;
    v80 = v81 - *v82;
    if (v80 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v80 >= 0x17)
    {
      operator new();
    }

    v101 = v81 - *v82;
    if (v80)
    {
      memmove(&__dst, v83, v80);
    }

    goto LABEL_102;
  }

  return v19;
}

void sub_57A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  *(v59 + 8) = v60;
  sub_35390(&a16);
  *(v58 + 1992) = v59;
  sub_34BE0(&a49);
  if (__p)
  {
    a54 = __p;
    operator delete(__p);
  }

  sub_584EC4(&a56);
  _Unwind_Resume(a1);
}

void sub_57A13C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1721) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 == 4 || v7 == 1)
    {
      *(a4 + 64) = 1;
      v26 = 4;
      v9 = *(a4 + 48);
      if (v9 >= *(a4 + 56))
      {
        v12 = sub_584F38((a4 + 40), a1 + 88, &v26);
      }

      else
      {
        *v9 = *(a1 + 88);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        v10 = *(a1 + 104);
        v11 = *(a1 + 112);
        v22 = v9 + 16;
        v23 = 0;
        if (v11 != v10)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v9 + 40) = *(a1 + 128);
        *(v9 + 48) = 0x7FFFFFFF00000004;
        *(v9 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        v12 = v9 + 64;
        *(a4 + 48) = v9 + 64;
      }

      *(a4 + 48) = v12;
      *(v12 - 12) = *(a1 + 1780) + a2;
    }

    else
    {
      v13 = 1722;
      if (!*(a1 + 80))
      {
        v13 = 1723;
      }

      if (*(a1 + 32) != *(a1 + 40) || (*(a1 + v13)) && *(a1 + 1992) != a3)
      {
        sub_4B6858(&v22, a3, 8);
        if (*(a3 + 32) >= *(a1 + 1808) && *(a3 + 40) >= *(a1 + 1816))
        {
          if (*(a1 + 136) == 1)
          {
            *(a4 + 64) = 3;
            v26 = 2;
            sub_577870((a4 + 40), &v22, &v26);
          }

          else
          {
            *(a4 + 64) = 2;
            v26 = 4;
            sub_577870((a4 + 40), &v22, &v26);
            if (*(a3 + 32) >= *(a1 + 1824))
            {
              v21 = 1780;
              if (*(a3 + 40) < *(a1 + 1832))
              {
                v21 = 1776;
              }
            }

            else
            {
              v21 = 1776;
            }

            *(*(a4 + 48) - 12) = *(a1 + v21) + a2;
            v26 = 5;
            sub_577870((a4 + 40), &v22, &v26);
          }

          sub_575474(&v22);
        }

        else
        {
          v15 = __p;
          if (__p)
          {
            v16 = v25;
            v17 = __p;
            if (v25 != __p)
            {
              v18 = v25;
              do
              {
                v20 = *(v18 - 3);
                v18 -= 24;
                v19 = v20;
                if (v20)
                {
                  *(v16 - 2) = v19;
                  operator delete(v19);
                }

                v16 = v18;
              }

              while (v18 != v15);
              v17 = __p;
            }

            v25 = v15;
            operator delete(v17);
          }
        }
      }
    }
  }
}

void sub_57A408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A41C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 24) = v3;
  sub_35390(va);
  *(v2 + 48) = v4;
  _Unwind_Resume(a1);
}

void sub_57A460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_35390(va);
  *(v2 + 48) = v3;
  _Unwind_Resume(a1);
}

void sub_57A478(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 1760) == 1)
  {
    sub_57E458(a1, a2, a3);
    v5 = a3[3];
    v6 = a3[4];
    if (v5 >= v6)
    {
      v10 = a3[2];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v10) >> 3) + 1;
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_32:
        sub_1794();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_33;
      }

      v14 = 8 * ((v5 - v10) >> 3);
      v15 = *(a1 + 1768);
      *v14 = *(a1 + 16);
      *(v14 + 8) = *(a1 + 24);
      *(v14 + 16) = v15;
      v9 = v14 + 24;
      v16 = (v14 - (v5 - v10));
      memcpy(v16, v10, v5 - v10);
      a3[2] = v16;
      a3[3] = v9;
      a3[4] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v7 = *(a1 + 1768);
      v8 = *(a1 + 16);
      *(v5 + 8) = *(a1 + 24);
      *v5 = v8;
      *(v5 + 16) = v7;
      v9 = v5 + 24;
    }

    a3[3] = v9;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    if (v17 != v18)
    {
      while (1)
      {
        while (1)
        {
          v21 = a3[4];
          if (v9 >= v21)
          {
            break;
          }

          v19 = *(a1 + 1768);
          v20 = *v17;
          *(v9 + 8) = *(v17 + 2);
          *v9 = v20;
          *(v9 + 16) = v19;
          v9 += 24;
          a3[3] = v9;
          v17 = (v17 + 12);
          if (v17 == v18)
          {
            return;
          }
        }

        v22 = a3[2];
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v22) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_32;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        v26 = v25 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v24;
        if (v26)
        {
          break;
        }

        v27 = v9;
        v28 = 8 * ((v9 - v22) >> 3);
        v29 = *(a1 + 1768);
        v30 = *(v17 + 2);
        *v28 = *v17;
        *(v28 + 8) = v30;
        *(v28 + 16) = v29;
        v9 = v28 + 24;
        v31 = 24 * v23 - (v27 - v22);
        memcpy((v28 - (v27 - v22)), v22, v27 - v22);
        a3[2] = v31;
        a3[3] = v9;
        a3[4] = 0;
        if (v22)
        {
          operator delete(v22);
        }

        a3[3] = v9;
        v17 = (v17 + 12);
        if (v17 == v18)
        {
          return;
        }
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_33:
      sub_1808();
    }
  }
}