uint64_t sub_5D5884(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v16[7] = v3;
  v16[8] = v4;
  v8 = a1;
  do
  {
    v9 = sub_4D1DB0(v8);
    v10 = sub_68C454(a3, 0);
    v11 = sub_4D1DB0(v10);
    v12 = *(v9 + 144);
    v13 = *(v11 + 144);
    if (v12 != -1 && v13 == v12)
    {
      v16[0] = &v15;
      if ((off_266B970[v12])(v16, v9 + 136, v11 + 136))
      {
        return 1;
      }
    }

    else if (v13 == v12)
    {
      return 1;
    }

    v8 += 1096;
  }

  while (v8 != a2);
  return 0;
}

uint64_t sub_5D5958()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  result = sub_4D1F6C(v3);
  if ((result & 1) == 0)
  {
    result = sub_68D828(v4, 3);
    if ((result & 1) == 0)
    {
      result = sub_68D8A8(v4, 9);
      if ((result & 1) == 0)
      {
        result = sub_68D828(v4, 1);
        if ((result & 1) == 0)
        {
          result = sub_68D8A8(v4, 12);
          if (!result && (*(v2 + 8) & 1) != 0)
          {
            v11 = *v2;
            result = sub_4C49D0(v11);
            if (!result)
            {
              v12 = sub_68C454(v4, 0);
              result = sub_4D1DB8(v12);
              if (result >= *(v7 + 176))
              {
                if (sub_4C5074(v6, 2))
                {
                  if ((sub_4C5074(v11, 2) & 1) == 0)
                  {
                    v13 = sub_68C454(v4, 0);
                    v14 = sub_5D5BBC(*(v13 + 7416), *(v13 + 7424));
                    if (*(v13 + 7424) != v14)
                    {
                      v15 = v14;
                      if ((sub_614B18(*(v7 + 8), (v14 + 48)) & 1) == 0)
                      {
                        sub_570FB0(v15, v23);
                        sub_5CB234(v22, 32, v23);
                        sub_5D3308(v9, v22);
                        sub_59F87C(v22);
                        return sub_5C3A5C(v23);
                      }
                    }
                  }
                }

                v16 = sub_4E4B18(v11, 0, 0);
                v17 = sub_68C454(v4, 0);
                v18 = sub_4D26B4(v17, 0);
                v19 = sub_4C49C0(v11, 0);
                v20 = sub_4D26B4(v19, 0);
                v21 = sub_4C4AF8(v11);
                result = sub_68C5B4(v4);
                if (v21 == result)
                {
                  result = sub_68C850(v4);
                  if (v16 < result && v20 < v18)
                  {
                    sub_5CB20C(v22, 22);
                    sub_5D3308(v9, v22);
                    return sub_59F87C(v22);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *v9 = 0;
  v9[2096] = 0;
  return result;
}

void sub_5D5B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_59F87C(&a9);
  sub_5C3A5C(&STACK[0x830]);
  _Unwind_Resume(a1);
}

uint64_t sub_5D5BBC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    while (!sub_659540(v2) || sub_659568(v2))
    {
      v2 += 1120;
      if (v2 == a2)
      {
        return a2;
      }
    }
  }

  return v2;
}

void sub_5D64A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5D6510(uint64_t result, int *a2)
{
  switch(*a2)
  {
    case 1:
      ++*(result + 456);
      break;
    case 2:
      ++*(result + 464);
      break;
    case 3:
      ++*(result + 472);
      break;
    case 4:
      ++*(result + 528);
      break;
    case 5:
      ++*(result + 360);
      goto LABEL_12;
    case 6:
      ++*(result + 216);
LABEL_12:
      result = sub_5D68F8(result, a2);
      break;
    case 7:
      ++*(result + 440);
      break;
    case 8:
      ++*(result + 448);
      break;
    case 9:
      ++*(result + 432);
      break;
    case 10:
      ++*(result + 480);
      break;
    case 11:
      ++*(result + 488);
      break;
    case 12:
      ++*(result + 496);
      break;
    case 13:
      ++*(result + 568);
      break;
    case 14:
      ++*(result + 576);
      break;
    case 15:
      ++*(result + 584);
      break;
    case 16:
      ++*(result + 592);
      break;
    case 17:
      ++*(result + 600);
      break;
    case 18:
      ++*(result + 624);
      break;
    case 19:
      ++*(result + 616);
      break;
    case 20:
      ++*(result + 608);
      break;
    case 21:
      ++*(result + 648);
      break;
    case 22:
      ++*(result + 512);
      break;
    case 23:
      ++*(result + 632);
      break;
    case 24:
      ++*(result + 640);
      break;
    case 25:
      ++*(result + 520);
      break;
    case 26:
      ++*(result + 544);
      break;
    case 27:
      ++*(result + 552);
      break;
    case 28:
      ++*(result + 560);
      break;
    case 29:
      ++*(result + 696);
      break;
    case 30:
      ++*(result + 688);
      break;
    case 31:
      ++*(result + 704);
      break;
    case 32:
      ++*(result + 504);
      break;
    case 33:
      ++*(result + 656);
      break;
    case 34:
      ++*(result + 664);
      break;
    case 35:
      ++*(result + 672);
      break;
    case 36:
      ++*(result + 680);
      break;
    case 37:
      ++*(result + 536);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5D6824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2 + 2096 * a4;
  sub_5CB2AC(*a2 + 2096 * a3, v12);
  sub_5CB2AC(v5, v9);
  if (v14 != 1 || (v11 & 1) == 0)
  {
    sub_4F0F0C();
  }

  v6 = v13 - v10;
  if (v13 - v10 < 0)
  {
    v6 = v10 - v13;
  }

  v8 = v6;
  sub_2512DC(a1 + 712, &v8);
  sub_3A9518(v9);
  return sub_3A9518(v12);
}

void sub_5D68C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A9518(va);
  sub_3A9518(&STACK[0x470]);
  _Unwind_Resume(a1);
}

uint64_t sub_5D68F8(uint64_t result, int *a2)
{
  v2 = *a2;
  if ((*a2 - 5) <= 1)
  {
    v3 = result;
    sub_5CB2AC(a2, v40);
    v4 = 96;
    if (v41)
    {
      v4 = 228;
    }

    v5 = *&v40[v4];
    if (v5 > 4)
    {
      if (v5 > 12)
      {
        if (v5 == 13)
        {
          v6 = v2 == 6;
          v7 = 400;
          v8 = 256;
        }

        else
        {
          if (v5 != 15)
          {
            goto LABEL_25;
          }

          v6 = v2 == 6;
          v7 = 424;
          v8 = 280;
        }
      }

      else if (v5 == 5)
      {
        v6 = v2 == 6;
        v7 = 392;
        v8 = 248;
      }

      else
      {
        if (v5 != 7)
        {
          goto LABEL_25;
        }

        v6 = v2 == 6;
        v7 = 408;
        v8 = 264;
      }
    }

    else if (v5 > 2)
    {
      v6 = v2 == 6;
      if (v5 == 3)
      {
        v7 = 416;
        v8 = 272;
      }

      else
      {
        v7 = 376;
        v8 = 232;
      }
    }

    else if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_25;
      }

      v6 = v2 == 6;
      v7 = 384;
      v8 = 240;
    }

    else
    {
      v6 = v2 == 6;
      v7 = 368;
      v8 = 224;
    }

    if (v6)
    {
      v7 = v8;
    }

    ++*(v3 + v7);
LABEL_25:
    v9 = nullsub_1(*(v3 + 8));
    sub_57480(v40, &__s1);
    v10 = sub_4EDB38(v9, &__s1);
    if (SHIBYTE(v49.__locale_) < 0)
    {
      v11 = v10;
      operator delete(__s1);
      if (v11)
      {
        return sub_3A9518(v40);
      }
    }

    else if (v10)
    {
      return sub_3A9518(v40);
    }

    v29 = sub_74700();
    v12 = v42;
    v13 = v43;
    sub_19594F8(&__s1);
    if (v12 == v13)
    {
LABEL_92:
      if ((v57 & 0x10) != 0)
      {
        v24 = v56;
        if (v56 < v53)
        {
          v56 = v53;
          v24 = v53;
        }

        v25 = v52;
        v23 = v24 - v52;
        if (v24 - v52 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if ((v57 & 8) == 0)
        {
          v23 = 0;
          v39 = 0;
LABEL_103:
          *(__dst + v23) = 0;
          if (v55 < 0)
          {
            operator delete(v54);
          }

          std::locale::~locale(&v49);
          std::ostream::~ostream();
          std::ios::~ios();
          sub_73EEC(v29);
          v26 = 96;
          if (v41)
          {
            v26 = 228;
          }

          v27 = *&v40[v26];
          p_s1 = &v36;
          switch(v27)
          {
            case 0:
              break;
            case 1:
            case 2:
            case 5:
            case 6:
            case 11:
              p_s1 = &v34;
              break;
            case 3:
              p_s1 = &__s1;
              break;
            case 4:
              p_s1 = &v44;
              break;
            case 7:
              p_s1 = &v37;
              break;
            case 10:
              p_s1 = &v33;
              break;
            case 12:
              p_s1 = &v32;
              break;
            case 13:
              p_s1 = &v35;
              break;
            case 14:
              operator new();
            case 15:
              p_s1 = &v30;
              break;
            default:
              p_s1 = &v31;
              break;
          }

          *p_s1 = 0;
          if (v39 < 0)
          {
            operator delete(__dst[0]);
          }

          return sub_3A9518(v40);
        }

        v25 = v50;
        v23 = v51 - v50;
        if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_110:
          sub_3244();
        }
      }

      if (v23 >= 0x17)
      {
        operator new();
      }

      v39 = v23;
      if (v23)
      {
        memmove(__dst, v25, v23);
      }

      goto LABEL_103;
    }

    v14 = *v12;
    if (v14 <= 0xD)
    {
      if (*v12 <= 2u)
      {
        if (!*v12)
        {
          v15 = 7;
          v46 = 7;
          qmemcpy(&v44, "UNKNOWN", 7);
          v16 = &v44 + 7;
          goto LABEL_57;
        }

        if (v14 == 1)
        {
          v15 = 5;
          v46 = 5;
          qmemcpy(&v44, "APPLE", 5);
          v16 = &v44 + 5;
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (v14 == 3)
      {
        v15 = 6;
        v46 = 6;
        qmemcpy(&v44, "TOMTOM", 6);
        v16 = &v44 + 6;
        goto LABEL_57;
      }

      if (v14 != 6)
      {
        if (v14 == 12)
        {
          v15 = 13;
          v46 = 13;
          qmemcpy(&v44, "APPLE_WEATHER", 13);
          v16 = &v44 + 13;
          goto LABEL_57;
        }

LABEL_56:
        v15 = 16;
        v46 = 16;
        v44 = *"UNSUPPORTED_TYPE";
        v16 = v45;
        goto LABEL_57;
      }

      v15 = 9;
      v46 = 9;
      BYTE8(v44) = 67;
      v17 = "APPLE_UGC";
    }

    else
    {
      if (*v12 <= 0x16u)
      {
        switch(v14)
        {
          case 0xEu:
            operator new();
          case 0xFu:
            v15 = 15;
            v46 = 15;
            qmemcpy(&v44, "APPLE_CONFLATED", 15);
            v16 = &v44 + 15;
            goto LABEL_57;
          case 0x12u:
            v15 = 12;
            v46 = 12;
            DWORD2(v44) = 1397047887;
            *&v44 = *"APPLE_PROBES";
            v16 = &v44 + 12;
LABEL_57:
            *v16 = 0;
            sub_4A5C(&__s1, &v44, v15);
            if ((v46 & 0x80000000) == 0)
            {
              v18 = v12 + 8;
              if (v12 + 8 != v13)
              {
                goto LABEL_63;
              }

              goto LABEL_92;
            }

            operator delete(v44);
            v18 = v12 + 8;
            if (v12 + 8 == v13)
            {
              goto LABEL_92;
            }

            while (1)
            {
LABEL_63:
              sub_4A5C(&__s1, ",", 1);
              v19 = *v18;
              if (v19 <= 0xD)
              {
                if (*v18 <= 2u)
                {
                  if (*v18)
                  {
                    if (v19 != 1)
                    {
LABEL_89:
                      v46 = 16;
                      v44 = *"UNSUPPORTED_TYPE";
                      v20 = v45;
                      v21 = 16;
                      goto LABEL_90;
                    }

                    v46 = 5;
                    qmemcpy(&v44, "APPLE", 5);
                    v20 = &v44 + 5;
                    v21 = 5;
                  }

                  else
                  {
                    v46 = 7;
                    qmemcpy(&v44, "UNKNOWN", 7);
                    v20 = &v44 + 7;
                    v21 = 7;
                  }
                }

                else
                {
                  if (v19 == 3)
                  {
                    v46 = 6;
                    qmemcpy(&v44, "TOMTOM", 6);
                    v20 = &v44 + 6;
                    v21 = 6;
                    goto LABEL_90;
                  }

                  if (v19 == 6)
                  {
                    v46 = 9;
                    BYTE8(v44) = 67;
                    v22 = "APPLE_UGC";
LABEL_83:
                    *&v44 = *v22;
                    v20 = &v44 + 9;
                    v21 = 9;
                    goto LABEL_90;
                  }

                  if (v19 != 12)
                  {
                    goto LABEL_89;
                  }

                  v46 = 13;
                  qmemcpy(&v44, "APPLE_WEATHER", 13);
                  v20 = &v44 + 13;
                  v21 = 13;
                }
              }

              else
              {
                if (*v18 > 0x16u)
                {
                  if (v19 == 23)
                  {
                    v46 = 14;
                    qmemcpy(&v44, "APPLE_LIVEDATA", 14);
                    v20 = &v44 + 14;
                    v21 = 14;
                    goto LABEL_90;
                  }

                  if (v19 == 64)
                  {
                    v46 = 11;
                    *(&v44 + 7) = 1498698305;
                    *&v44 = *"THIRD_PARTY";
                    v20 = &v44 + 11;
                    v21 = 11;
                    goto LABEL_90;
                  }

                  if (v19 != 79)
                  {
                    goto LABEL_89;
                  }

                  v46 = 9;
                  BYTE8(v44) = 80;
                  v22 = "APPLE_RAP";
                  goto LABEL_83;
                }

                switch(v19)
                {
                  case 0xEu:
                    operator new();
                  case 0xFu:
                    v46 = 15;
                    qmemcpy(&v44, "APPLE_CONFLATED", 15);
                    v20 = &v44 + 15;
                    v21 = 15;
                    break;
                  case 0x12u:
                    v46 = 12;
                    DWORD2(v44) = 1397047887;
                    *&v44 = *"APPLE_PROBES";
                    v20 = &v44 + 12;
                    v21 = 12;
                    break;
                  default:
                    goto LABEL_89;
                }
              }

LABEL_90:
              *v20 = 0;
              sub_4A5C(&__s1, &v44, v21);
              if (v46 < 0)
              {
                operator delete(v44);
              }

              v18 += 8;
              if (v18 == v13)
              {
                goto LABEL_92;
              }
            }
        }

        goto LABEL_56;
      }

      if (v14 == 23)
      {
        v15 = 14;
        v46 = 14;
        qmemcpy(&v44, "APPLE_LIVEDATA", 14);
        v16 = &v44 + 14;
        goto LABEL_57;
      }

      if (v14 != 79)
      {
        if (v14 == 64)
        {
          v15 = 11;
          v46 = 11;
          *(&v44 + 7) = 1498698305;
          *&v44 = *"THIRD_PARTY";
          v16 = &v44 + 11;
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      v15 = 9;
      v46 = 9;
      BYTE8(v44) = 80;
      v17 = "APPLE_RAP";
    }

    *&v44 = *v17;
    v16 = &v44 + 9;
    goto LABEL_57;
  }

  return result;
}

void sub_5D7364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  std::ios::~ios();
  sub_3A9518(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_5D7498(uint64_t a1, uint64_t a2)
{
  v2 = 0x3E88CB3C9484E2BLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1F44659E4A4271)
  {
    sub_1794();
  }

  if (0x7D1196792909C56 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x7D1196792909C56 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x3E88CB3C9484E2BLL * ((*(a1 + 16) - *a1) >> 4)) >= 0xFA232CF252138)
  {
    v5 = 0x1F44659E4A4271;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1F44659E4A4271)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((*(a1 + 8) - *a1) >> 4);
  sub_5D75EC(v11, a2);
  v6 = 2096 * v2 + 2096;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_5D77B0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_5D75D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D773C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5D75EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 2008) = 0;
  if (*(a2 + 2008) == 1)
  {
    sub_5C3640(a1 + 8, a2 + 8);
    *(a1 + 2008) = 1;
  }

  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  sub_5C34A8(a1 + 2016, *(a2 + 2016), *(a2 + 2024), 0x1CAC083126E978D5 * ((*(a2 + 2024) - *(a2 + 2016)) >> 4));
  *(a1 + 2056) = 0;
  *(a1 + 2040) = 0u;
  sub_5C34A8(a1 + 2040, *(a2 + 2040), *(a2 + 2048), 0x1CAC083126E978D5 * ((*(a2 + 2048) - *(a2 + 2040)) >> 4));
  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  sub_5C34A8(a1 + 2064, *(a2 + 2064), *(a2 + 2072), 0x1CAC083126E978D5 * ((*(a2 + 2072) - *(a2 + 2064)) >> 4));
  *(a1 + 2088) = *(a2 + 2088);
  return a1;
}

void sub_5D76EC(_Unwind_Exception *exception_object)
{
  if (*(v2 + 2008) == 1)
  {
    sub_5C3A5C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5D773C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2096;
    sub_5C0BF4((i - 80));
    if (*(i - 88) == 1)
    {
      sub_5C3A5C(i - 2088);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_5D77B0(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    v8 = 0uLL;
    do
    {
      v9 = a4 + v7 * 8;
      v10 = &a2[v7];
      *v9 = a2[v7];
      *(a4 + v7 * 8 + 8) = 0;
      *(v9 + 2008) = 0;
      if (LOBYTE(a2[v7 + 251]) == 1)
      {
        sub_5D7978(a4 + v7 * 8 + 8, (v10 + 1));
        v8 = 0uLL;
        *(v9 + 2008) = 1;
      }

      *(v9 + 2032) = 0;
      *(v9 + 2016) = v8;
      *(v9 + 2016) = *(v10 + 126);
      *(v9 + 2032) = v10[254];
      v10[254] = 0;
      *(v10 + 126) = v8;
      *(v9 + 2056) = 0;
      *(v9 + 2040) = v8;
      *(v9 + 2040) = v10[255];
      *(v9 + 2048) = *(v10 + 128);
      v10[257] = 0;
      *(v10 + 255) = v8;
      *(v9 + 2080) = 0;
      *(v9 + 2064) = v8;
      *(v9 + 2064) = *(v10 + 129);
      *(v9 + 2080) = v10[260];
      v10[260] = 0;
      *(v10 + 129) = v8;
      *(v9 + 2088) = *(v10 + 522);
      v7 += 262;
    }

    while (v10 + 262 != a3);
    if (a2 != a3)
    {
      v11 = a2 + 252;
      do
      {
        sub_5C0BF4(v11);
        if (*(v11 - 8) == 1)
        {
          sub_5C3A5C((v11 - 251));
        }

        v12 = v11 + 10;
        v11 += 262;
      }

      while (v12 != a3);
    }
  }
}

uint64_t sub_5D7908(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      sub_5C0BF4((v3 - 80));
      if (*(v3 - 88) == 1)
      {
        sub_5C3A5C(v3 - 2088);
      }

      v3 -= 2096;
    }
  }

  return a1;
}

uint64_t sub_5D7978(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 1128) = 0;
  if (*(a2 + 1128) == 1)
  {
    sub_529850(v4, a2 + 8);
    *(a1 + 1128) = 1;
  }

  v5 = *(a2 + 1136);
  v6 = *(a2 + 1152);
  v7 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v7;
  *(a1 + 1152) = v6;
  *(a1 + 1136) = v5;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1200) = *(a2 + 1200);
  *(a2 + 1208) = 0;
  *(a2 + 1192) = 0u;
  sub_5D7BA0(a1 + 1216, (a2 + 1216));
  *(a1 + 1704) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1688) = *(a2 + 1688);
  *(a1 + 1696) = *(a2 + 1696);
  *(a2 + 1704) = 0;
  *(a2 + 1688) = 0u;
  v8 = *(a2 + 1712);
  v9 = *(a2 + 1728);
  *(a1 + 1744) = *(a2 + 1744);
  *(a1 + 1728) = v9;
  *(a1 + 1712) = v8;
  *(a1 + 1752) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1752) = *(a2 + 1752);
  *(a1 + 1760) = *(a2 + 1760);
  *(a2 + 1768) = 0;
  *(a2 + 1752) = 0u;
  v10 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v10;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  if (*(a2 + 1968) == 1)
  {
    *(a1 + 1800) = *(a2 + 1800);
    v11 = *(a2 + 1808);
    *(a1 + 1824) = *(a2 + 1824);
    *(a1 + 1808) = v11;
    *(a2 + 1816) = 0uLL;
    *(a2 + 1808) = 0;
    v12 = *(a2 + 1832);
    *(a1 + 1848) = *(a2 + 1848);
    *(a1 + 1832) = v12;
    v13 = *(a2 + 1856);
    *(a1 + 1872) = *(a2 + 1872);
    *(a1 + 1856) = v13;
    *(a2 + 1864) = 0uLL;
    *(a2 + 1856) = 0;
    v14 = *(a2 + 1880);
    *(a1 + 1896) = *(a2 + 1896);
    *(a1 + 1880) = v14;
    *(a2 + 1896) = 0;
    *(a2 + 1880) = 0uLL;
    *(a1 + 1920) = 0;
    *(a1 + 1904) = 0uLL;
    *(a1 + 1904) = *(a2 + 1904);
    *(a1 + 1920) = *(a2 + 1920);
    *(a2 + 1920) = 0;
    *(a2 + 1904) = 0uLL;
    *(a1 + 1928) = *(a2 + 1928);
    v15 = *(a2 + 1936);
    *(a1 + 1952) = *(a2 + 1952);
    *(a1 + 1936) = v15;
    *(a2 + 1952) = 0;
    *(a2 + 1944) = 0;
    *(a2 + 1936) = 0;
    *(a1 + 1960) = *(a2 + 1960);
    *(a1 + 1968) = 1;
  }

  v16 = *(a2 + 1976);
  *(a1 + 1992) = *(a2 + 1992);
  *(a1 + 1976) = v16;
  *(a2 + 1992) = 0;
  *(a2 + 1984) = 0;
  *(a2 + 1976) = 0;
  return a1;
}

__n128 sub_5D7BA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = a2[10];
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 11);
  v4 = a2[14];
  *(a1 + 104) = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = 0;
  a2[14] = 0;
  *(a1 + 112) = v4;
  LODWORD(v3) = *(a2 + 30);
  *(a1 + 124) = *(a2 + 62);
  *(a1 + 120) = v3;
  v5 = *(a2 + 8);
  *(a1 + 144) = a2[18];
  *(a1 + 128) = v5;
  a2[17] = 0;
  a2[18] = 0;
  a2[16] = 0;
  v6 = *(a2 + 19);
  *(a1 + 168) = a2[21];
  *(a1 + 152) = v6;
  a2[20] = 0;
  a2[21] = 0;
  a2[19] = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[22] = 0;
  a2[23] = 0;
  a2[24] = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 216) = a2[27];
  a2[25] = 0;
  a2[26] = 0;
  a2[27] = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = *(a2 + 14);
  *(a1 + 240) = a2[30];
  a2[28] = 0;
  a2[29] = 0;
  a2[30] = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = *(a2 + 31);
  v7 = a2[34];
  *(a1 + 264) = a2[33];
  a2[31] = 0;
  a2[32] = 0;
  a2[33] = 0;
  a2[34] = 0;
  *(a1 + 272) = v7;
  LODWORD(v3) = *(a2 + 70);
  *(a1 + 284) = *(a2 + 142);
  *(a1 + 280) = v3;
  v8 = *(a2 + 18);
  *(a1 + 304) = a2[38];
  *(a1 + 288) = v8;
  a2[37] = 0;
  a2[38] = 0;
  a2[36] = 0;
  v9 = *(a2 + 39);
  *(a1 + 328) = a2[41];
  *(a1 + 312) = v9;
  a2[40] = 0;
  a2[41] = 0;
  a2[39] = 0;
  *(a1 + 336) = 0;
  *(a1 + 368) = -1;
  v10 = *(a2 + 92);
  if (v10 != -1)
  {
    v11 = a1;
    v15 = a1 + 336;
    (off_266B920[v10])(&v15, a2 + 42);
    a1 = v11;
    *(v11 + 368) = v10;
  }

  *(a1 + 376) = a2[47];
  v12 = *(a2 + 24);
  *(a1 + 400) = a2[50];
  *(a1 + 384) = v12;
  a2[49] = 0;
  a2[50] = 0;
  a2[48] = 0;
  *(a1 + 408) = *(a2 + 408);
  v13 = *(a2 + 26);
  *(a1 + 432) = a2[54];
  *(a1 + 416) = v13;
  a2[53] = 0;
  a2[54] = 0;
  a2[52] = 0;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0;
  result = *(a2 + 28);
  *(a1 + 448) = result;
  *(a1 + 464) = a2[58];
  a2[56] = 0;
  a2[57] = 0;
  a2[58] = 0;
  return result;
}

void **sub_5D7E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (0x3E88CB3C9484E2BLL * ((v9 - v10) >> 4) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x3E88CB3C9484E2BLL * ((v10 - *a1) >> 4);
    if (v12 > 0x1F44659E4A4271)
    {
      sub_1794();
    }

    v13 = 0x3E88CB3C9484E2BLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0xFA232CF252138)
    {
      v14 = 0x1F44659E4A4271;
    }

    else
    {
      v14 = v12;
    }

    v36 = a1;
    if (v14)
    {
      if (v14 <= 0x1F44659E4A4271)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = 16 * ((a2 - v11) >> 4);
    v32 = 0;
    v33 = v22;
    v34 = v22;
    v35 = 0;
    v23 = 2096 * a5;
    v24 = v22 + 2096 * a5;
    do
    {
      sub_5D75EC(v22, v7);
      v22 += 2096;
      v7 += 2096;
      v23 -= 2096;
    }

    while (v23);
    v34 = v24;
    v25 = v33;
    sub_5D77B0(a1, v5, *(a1 + 8), v24);
    v26 = *a1;
    v27 = v33;
    v28 = v24 + *(a1 + 8) - v5;
    v34 = (v34 + *(a1 + 8) - v5);
    *(a1 + 8) = v5;
    v29 = v27 + v26 - v5;
    sub_5D77B0(a1, v26, v5, v29);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v28;
    *(a1 + 16) = v35;
    if (v30)
    {
      operator delete(v30);
    }

    return v25;
  }

  v15 = v10 - a2;
  if (0x3E88CB3C9484E2BLL * ((v10 - a2) >> 4) >= a5)
  {
    v21 = 2096 * a5;
    sub_5D80FC(a1, a2, *(a1 + 8), a2 + 2096 * a5);
    v20 = v21 + v7;
    v19 = v7;
    goto LABEL_19;
  }

  v37 = *(a1 + 8);
  v38 = v10;
  v32 = a1;
  v33 = &v37;
  v34 = &v38;
  v17 = v10;
  LOBYTE(v35) = 0;
  if (v15 + a3 != a4)
  {
    v17 = v10;
    v18 = v15 + a3;
    do
    {
      sub_5D75EC(v17, v18);
      v18 += 2096;
      v17 = v38 + 2096;
      v38 += 2096;
    }

    while (v18 != a4);
  }

  *(a1 + 8) = v17;
  if (v15 >= 1)
  {
    sub_5D80FC(a1, v5, v10, &v5[262 * a5]);
    v19 = v7;
    v20 = v15 + v7;
LABEL_19:
    sub_5D8710(&v32, v19, v20, v5);
  }

  return v5;
}

void sub_5D80B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D773C(va);
  _Unwind_Resume(a1);
}

void sub_5D80CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D7908(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_5D80E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D773C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5D80FC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    v11 = 0uLL;
    do
    {
      v12 = v7 + v10;
      v13 = v6 + v10;
      *v13 = *(v7 + v10);
      *(v6 + v10 + 8) = 0;
      result = v6 + v10 + 8;
      *(v13 + 2008) = 0;
      if (*(v7 + v10 + 2008) == 1)
      {
        result = sub_5D7978(result, v12 + 8);
        v11 = 0uLL;
        *(v13 + 2008) = 1;
      }

      *(v13 + 2032) = 0;
      *(v13 + 2016) = v11;
      *(v13 + 2016) = *(v12 + 2016);
      *(v13 + 2032) = *(v12 + 2032);
      *(v12 + 2032) = 0;
      *(v12 + 2016) = v11;
      *(v13 + 2056) = 0;
      *(v13 + 2040) = v11;
      *(v13 + 2040) = *(v12 + 2040);
      *(v13 + 2048) = *(v12 + 2048);
      *(v12 + 2056) = 0;
      *(v12 + 2040) = v11;
      *(v13 + 2080) = 0;
      *(v13 + 2064) = v11;
      *(v13 + 2064) = *(v12 + 2064);
      *(v13 + 2080) = *(v12 + 2080);
      *(v12 + 2080) = 0;
      *(v12 + 2064) = v11;
      *(v13 + 2088) = *(v12 + 2088);
      v10 += 2096;
    }

    while (v12 + 2096 < a3);
    v8 = v6 + v10;
  }

  *(v5 + 8) = v8;
  if (v6 != a4)
  {
    v14 = 0;
    v15 = a4 - v6;
    do
    {
      v16 = v6 + v14;
      *(v6 + v14 - 2096) = *(v7 + v14 - 2096);
      v17 = v6 + v14 - 2088;
      v18 = v7 + v14 - 2088;
      if (*(v6 + v14 - 88) == *(v7 + v14 - 88))
      {
        if (*(v6 + v14 - 88))
        {
          sub_5D82BC(v17, v18);
        }
      }

      else if (*(v6 + v14 - 88))
      {
        sub_5C3A5C(v17);
        *(v16 - 88) = 0;
      }

      else
      {
        sub_5D7978(v17, v18);
        *(v16 - 88) = 1;
      }

      result = sub_5D4030(v6 + v14 - 80, v7 + v14 - 80);
      v14 -= 2096;
    }

    while (v15 != v14);
  }

  return result;
}

uint64_t sub_5D82BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 1128);
  if (v4 == *(a2 + 1128))
  {
    if (*(a1 + 1128))
    {
      sub_52BE74(a1 + 8, a2 + 8);
    }
  }

  else
  {
    v5 = a1 + 8;
    if (v4)
    {
      sub_3A9518(v5);
      *(a1 + 1128) = 0;
    }

    else
    {
      sub_529850(v5, a2 + 8);
      *(a1 + 1128) = 1;
    }
  }

  v6 = *(a2 + 1136);
  v7 = *(a2 + 1152);
  v8 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v8;
  *(a1 + 1152) = v7;
  *(a1 + 1136) = v6;
  v9 = *(a1 + 1192);
  if (v9)
  {
    *(a1 + 1200) = v9;
    operator delete(v9);
    *(a1 + 1192) = 0;
    *(a1 + 1200) = 0;
    *(a1 + 1208) = 0;
  }

  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1200) = *(a2 + 1200);
  *(a2 + 1192) = 0;
  *(a2 + 1200) = 0;
  *(a2 + 1208) = 0;
  sub_5D85BC(a1 + 1216, (a2 + 1216));
  v10 = *(a1 + 1688);
  if (v10)
  {
    *(a1 + 1696) = v10;
    operator delete(v10);
    *(a1 + 1688) = 0;
    *(a1 + 1696) = 0;
    *(a1 + 1704) = 0;
  }

  *(a1 + 1688) = *(a2 + 1688);
  *(a1 + 1696) = *(a2 + 1696);
  *(a2 + 1704) = 0;
  *(a2 + 1688) = 0u;
  v11 = *(a2 + 1744);
  v12 = *(a2 + 1728);
  *(a1 + 1712) = *(a2 + 1712);
  *(a1 + 1728) = v12;
  *(a1 + 1744) = v11;
  v13 = *(a1 + 1752);
  if (v13)
  {
    v14 = (a1 + 1752);
    v15 = *(a1 + 1760);
    v16 = *(a1 + 1752);
    if (v15 != v13)
    {
      do
      {
        v15 = sub_3A9518(v15 - 1120);
      }

      while (v15 != v13);
      v16 = *v14;
    }

    *(a1 + 1760) = v13;
    operator delete(v16);
    *v14 = 0;
    *(a1 + 1760) = 0;
    *(a1 + 1768) = 0;
  }

  *(a1 + 1752) = *(a2 + 1752);
  *(a1 + 1760) = *(a2 + 1760);
  *(a2 + 1760) = 0;
  *(a2 + 1768) = 0;
  *(a2 + 1752) = 0;
  v17 = *(a2 + 1792);
  *(a1 + 1776) = *(a2 + 1776);
  *(a1 + 1792) = v17;
  if (*(a1 + 1968) == *(a2 + 1968))
  {
    if (*(a1 + 1968))
    {
      sub_530A44(a1 + 1800, a2 + 1800);
      v18 = a1 + 1976;
      if (*(a1 + 1999) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (!*(a1 + 1968))
    {
      *(a1 + 1800) = *(a2 + 1800);
      v21 = *(a2 + 1808);
      *(a1 + 1824) = *(a2 + 1824);
      *(a1 + 1808) = v21;
      *(a2 + 1816) = 0u;
      *(a2 + 1808) = 0;
      v22 = *(a2 + 1832);
      *(a1 + 1848) = *(a2 + 1848);
      *(a1 + 1832) = v22;
      v23 = *(a2 + 1856);
      *(a1 + 1872) = *(a2 + 1872);
      *(a1 + 1856) = v23;
      *(a2 + 1864) = 0u;
      *(a2 + 1856) = 0;
      v24 = *(a2 + 1880);
      *(a1 + 1896) = *(a2 + 1896);
      *(a1 + 1880) = v24;
      *(a2 + 1896) = 0;
      *(a2 + 1880) = 0u;
      *(a1 + 1920) = 0;
      *(a1 + 1904) = 0u;
      *(a1 + 1904) = *(a2 + 1904);
      *(a1 + 1920) = *(a2 + 1920);
      *(a2 + 1920) = 0;
      *(a2 + 1904) = 0u;
      *(a1 + 1928) = *(a2 + 1928);
      v25 = *(a2 + 1936);
      *(a1 + 1952) = *(a2 + 1952);
      *(a1 + 1936) = v25;
      *(a2 + 1952) = 0;
      *(a2 + 1944) = 0;
      *(a2 + 1936) = 0;
      *(a1 + 1960) = *(a2 + 1960);
      *(a1 + 1968) = 1;
      v18 = a1 + 1976;
      if ((*(a1 + 1999) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    sub_52A624(a1 + 1800);
    *(a1 + 1968) = 0;
  }

  v18 = a1 + 1976;
  if (*(a1 + 1999) < 0)
  {
LABEL_23:
    operator delete(*v18);
  }

LABEL_24:
  v19 = *(a2 + 1976);
  *(v18 + 16) = *(a2 + 1992);
  *v18 = v19;
  *(a2 + 1999) = 0;
  *(a2 + 1976) = 0;
  return a1;
}

uint64_t sub_5D85BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  sub_53D784(a1 + 16, (a2 + 2));
  sub_53D784(a1 + 176, (a2 + 22));
  v5 = *(a1 + 368);
  v6 = *(a2 + 92);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v6 == -1)
  {
    (off_266B8F8[v5])(&v12, a1 + 336);
    *(a1 + 368) = -1;
    goto LABEL_6;
  }

  v11 = a1 + 336;
  (off_266B948[v6])(&v11);
LABEL_6:
  *(a1 + 376) = a2[47];
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v7 = *(a2 + 24);
  *(a1 + 400) = a2[50];
  *(a1 + 384) = v7;
  *(a2 + 407) = 0;
  *(a2 + 384) = 0;
  *(a1 + 408) = *(a2 + 408);
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v8 = *(a2 + 26);
  *(a1 + 432) = a2[54];
  *(a1 + 416) = v8;
  *(a2 + 439) = 0;
  *(a2 + 416) = 0;
  *(a1 + 440) = *(a2 + 440);
  v9 = *(a1 + 448);
  if (v9)
  {
    *(a1 + 456) = v9;
    operator delete(v9);
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
  }

  *(a1 + 448) = *(a2 + 28);
  *(a1 + 464) = a2[58];
  a2[56] = 0;
  a2[57] = 0;
  a2[58] = 0;
  return a1;
}

uint64_t sub_5D8710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a3;
    for (i = 0; ; i += 2096)
    {
      v8 = a4 + i;
      v9 = a2 + i;
      *(a4 + i) = *(a2 + i);
      if (*(a4 + i + 2008) == *(a2 + i + 2008))
      {
        if (*(a4 + i + 2008))
        {
          sub_5D8878(v8 + 8, v9 + 8);
          if (v8 == v9)
          {
            goto LABEL_3;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v10 = v8 + 8;
        if (!*(a4 + i + 2008))
        {
          sub_5C3640(v10, v9 + 8);
          *(v8 + 2008) = 1;
          if (v8 == v9)
          {
            goto LABEL_3;
          }

LABEL_11:
          v11 = (a2 + i);
          sub_5D8F18((a4 + i + 2016), *(a2 + i + 2016), *(a2 + i + 2024), 0x1CAC083126E978D5 * ((*(a2 + i + 2024) - *(a2 + i + 2016)) >> 4));
          sub_5D8F18((a4 + i + 2040), v11[255], v11[256], 0x1CAC083126E978D5 * ((v11[256] - v11[255]) >> 4));
          sub_5D8F18((a4 + i + 2064), v11[258], v11[259], 0x1CAC083126E978D5 * ((v11[259] - v11[258]) >> 4));
          goto LABEL_3;
        }

        sub_5C3A5C(v10);
        *(v8 + 2008) = 0;
      }

      if (v8 != v9)
      {
        goto LABEL_11;
      }

LABEL_3:
      *(a4 + i + 2088) = *(v9 + 2088);
      if (v9 + 2096 == v6)
      {
        return v6;
      }
    }
  }

  return a2;
}

uint64_t sub_5D8878(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 1128);
  if (v4 == *(a2 + 1128))
  {
    if (*(a1 + 1128))
    {
      sub_52C990(a1 + 8, a2 + 8);
    }
  }

  else
  {
    v5 = a1 + 8;
    if (v4)
    {
      sub_3A9518(v5);
      *(a1 + 1128) = 0;
    }

    else
    {
      sub_52B7D8(v5, a2 + 8);
      *(a1 + 1128) = 1;
    }
  }

  v6 = *(a2 + 1136);
  v7 = *(a2 + 1152);
  v8 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v8;
  *(a1 + 1152) = v7;
  *(a1 + 1136) = v6;
  if (a1 != a2)
  {
    sub_31F64((a1 + 1192), *(a2 + 1192), *(a2 + 1200), (*(a2 + 1200) - *(a2 + 1192)) >> 3);
  }

  v9 = *(a2 + 1216);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1216) = v9;
  sub_594568(a1 + 1232, a2 + 1232);
  sub_594568(a1 + 1392, a2 + 1392);
  sub_5410A0(a1 + 1552, a2 + 1552);
  if (a1 == a2)
  {
    v12 = *(a2 + 1712);
    v13 = *(a2 + 1728);
    *(a1 + 1744) = *(a2 + 1744);
    *(a1 + 1728) = v13;
    *(a1 + 1712) = v12;
  }

  else
  {
    sub_31F64((a1 + 1664), *(a2 + 1664), *(a2 + 1672), (*(a2 + 1672) - *(a2 + 1664)) >> 3);
    sub_5D8AE8((a1 + 1688), *(a2 + 1688), *(a2 + 1696), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1696) - *(a2 + 1688)) >> 3));
    v10 = *(a2 + 1712);
    v11 = *(a2 + 1728);
    *(a1 + 1744) = *(a2 + 1744);
    *(a1 + 1728) = v11;
    *(a1 + 1712) = v10;
    sub_5D8C78((a1 + 1752), *(a2 + 1752), *(a2 + 1760), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1760) - *(a2 + 1752)) >> 5));
  }

  v14 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v14;
  if (*(a1 + 1968) == *(a2 + 1968))
  {
    if (*(a1 + 1968))
    {
      sub_52AE4C(a1 + 1800, (a2 + 1800));
      if (a1 == a2)
      {
        return a1;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = a1 + 1800;
    if (!*(a1 + 1968))
    {
      sub_52A464(v15, a2 + 1800);
      *(a1 + 1968) = 1;
      if (a1 == a2)
      {
        return a1;
      }

      goto LABEL_19;
    }

    sub_52A624(v15);
    *(a1 + 1968) = 0;
  }

  if (a1 == a2)
  {
    return a1;
  }

LABEL_19:
  v16 = (a1 + 1976);
  v17 = *(a2 + 1999);
  if (*(a1 + 1999) < 0)
  {
    if (v17 >= 0)
    {
      v20 = (a2 + 1976);
    }

    else
    {
      v20 = *(a2 + 1976);
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 1999);
    }

    else
    {
      v21 = *(a2 + 1984);
    }

    sub_13B38(v16, v20, v21);
    return a1;
  }

  else
  {
    if ((*(a2 + 1999) & 0x80) == 0)
    {
      v18 = *(a2 + 1976);
      *(a1 + 1992) = *(a2 + 1992);
      *v16 = v18;
      return a1;
    }

    sub_13A68(v16, *(a2 + 1976), *(a2 + 1984));
    return a1;
  }
}

char *sub_5D8AE8(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
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

uint64_t *sub_5D8C78(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAF8AF8AF8AF8AF8BLL * ((v7 - *result) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_3A9518(v10 - 1120);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3A83A83A83A83ALL)
    {
      v12 = 0xAF8AF8AF8AF8AF8BLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1D41D41D41D41DLL)
      {
        v14 = 0x3A83A83A83A83ALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3A83A83A83A83ALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xAF8AF8AF8AF8AF8BLL * ((v15 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_52C990(v8, v5);
        v5 += 1120;
        v8 += 1120;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1120;
      result = sub_3A9518(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_52C990(v8, v5);
        v5 += 1120;
        v8 += 1120;
        v16 -= 1120;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_52B7D8(v15 + v19, v17 + v19);
        v19 += 1120;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5D8EEC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 1120;
    v7 = -v4;
    do
    {
      v6 = sub_3A9518(v6) - 1120;
      v7 += 1120;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_5D8F18(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x1CAC083126E978D5 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5C3A5C(v10 - 2000);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x20C49BA5E353F7)
    {
      v12 = 0x1CAC083126E978D5 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x10624DD2F1A9FBLL)
      {
        v14 = 0x20C49BA5E353F7;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x20C49BA5E353F7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x1CAC083126E978D5 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5D8878(v8, v5);
        v5 += 2000;
        v8 += 2000;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 2000;
      result = sub_5C3A5C(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_5D8878(v8, v5);
        v5 += 2000;
        v8 += 2000;
        v16 -= 2000;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5C3640(v15 + v19, v17 + v19);
        v19 += 2000;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5D918C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 2000;
    v7 = -v4;
    do
    {
      v6 = sub_5C3A5C(v6) - 2000;
      v7 += 2000;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5D91B8(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0x3E88CB3C9484E2BLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1F44659E4A4271)
  {
    sub_1794();
  }

  if (0x7D1196792909C56 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x7D1196792909C56 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x3E88CB3C9484E2BLL * ((*(a1 + 16) - *a1) >> 4)) >= 0xFA232CF252138)
  {
    v6 = 0x1F44659E4A4271;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1F44659E4A4271)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((*(a1 + 8) - *a1) >> 4);
  sub_5CB234(v12, *a2, a3);
  v7 = 2096 * v3 + 2096;
  v8 = *(a1 + 8);
  v9 = 2096 * v3 + *a1 - v8;
  sub_5D77B0(a1, *a1, v8, v12 + *a1 - v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_5D9308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D773C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_5D931C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 7)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 7);
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

  return *a1 + (a2 << 7);
}

void sub_5D9438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_5D991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2796CF8)
  {
    qword_2796D00 = qword_2796CF8;
    operator delete(qword_2796CF8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_5D9A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  sub_5D233C(a1 + 3);
  sub_59F0E0(a1 + 95, a2, a3, a5);
  return a1;
}

void sub_5D9A6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 736);
  if (v3)
  {
    *(v1 + 744) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_5D9A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __p = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  v15 = 0xFFFFFFFFLL;
  v17 = 0;
  v18 = 0;
  sub_5D355C(a1 + 24, &v19);
  v6 = v19;
  if (v19 != v20)
  {
    sub_59F0F0(a1 + 760, a4, v9);
    sub_690FE0(a4, v9);
    sub_5C0F34(v9);
    v6 = v19;
  }

  if (v6)
  {
    v7 = v20;
    v8 = v6;
    if (v20 != v6)
    {
      do
      {
        v7 -= 2096;
        sub_5DA9A8(v7);
      }

      while (v7 != v6);
      v8 = v19;
    }

    v20 = v6;
    operator delete(v8);
  }
}

void sub_5D9BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5C0F34(&a9);
  sub_5D2EB8((v9 - 72));
  _Unwind_Resume(a1);
}

void sub_5D9C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_5D38B0(a1 + 24, a2, a4, a3, &v14);
  v6 = v14;
  if (v14 != v15)
  {
    sub_5D9DA8(a1, &v14, &v12);
    sub_68E83C(a4, &v12);
    v7 = v12;
    if (v12)
    {
      v8 = v13;
      v9 = v12;
      if (v13 != v12)
      {
        do
        {
          v8 = sub_5C0F34(v8 - 816);
        }

        while (v8 != v7);
        v9 = v12;
      }

      v13 = v7;
      operator delete(v9);
    }

    v6 = v14;
  }

  if (v6)
  {
    v10 = v15;
    v11 = v6;
    if (v15 != v6)
    {
      do
      {
        v10 -= 2096;
        sub_5DA9A8(v10);
      }

      while (v10 != v6);
      v11 = v14;
    }

    v15 = v6;
    operator delete(v11);
  }
}

void sub_5D9D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5D9FE8(va);
  sub_5D2EB8((v7 - 56));
  _Unwind_Resume(a1);
}

void sub_5D9D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DAA94(va);
  sub_5D2EB8((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_5D9DA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  if (*(v4 + 1524))
  {
    v16 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v5 = *a2;
    v6 = *(a2 + 8);
    if (*a2 == v6)
    {
      return result;
    }

    v7 = a3 + 1;
    v8 = a3 + 2;
    do
    {
LABEL_6:
      sub_5A05E0();
      v10 = *v7;
      if (*v7 >= *v8)
      {
        v11 = sub_5DABE4(a3, v15);
      }

      else
      {
        sub_5DAD70(*v7, v15);
        v11 = v10 + 816;
        *v7 = v10 + 816;
      }

      *v7 = v11;
      sub_5DA4E4(v3, v5, v16);
      result = sub_5C0F34(v15);
      v5 += 524;
    }

    while (v5 != v6);
    return result;
  }

  v9 = *(v4 + 1525);
  v16 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    return result;
  }

  v7 = a3 + 1;
  v8 = a3 + 2;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
    if (a3[1] - *a3 == 816)
    {
      break;
    }

    sub_5A05E0();
    v12 = *v7;
    if (*v7 >= *v8)
    {
      v13 = sub_5DABE4(a3, v15);
    }

    else
    {
      sub_5DAD70(*v7, v15);
      v13 = v12 + 816;
    }

    *v7 = v13;
    sub_5DA4E4(v3, v5, v16);
    result = sub_5C0F34(v15);
    v5 += 524;
  }

  while (v5 != v6);
  return result;
}

void sub_5D9F7C(_Unwind_Exception *a1, void **a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = v4;
  sub_5C0F34(va);
  sub_5D9FE8(a2);
  _Unwind_Resume(a1);
}

void **sub_5D9FE8(void **a1)
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
        v3 = sub_5C0F34(v3 - 816);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_5DA044(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 1576) == 1 && sub_E67BDC(v3 + 1632) && *a2 != a2[1])
  {
    v7 = sub_58BBC(a3);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      while (!sub_68D7D8(v8) || sub_68D80C(v8))
      {
        v8 += 7808;
        if (v8 == v9)
        {
          v8 = v9;
          break;
        }
      }

      v9 = v7[1];
    }

    if (v8 == v9 || (v10 = v8 - *v7, v10 == -7808))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v14 = sub_5B7F90(v7, 0x4FBCDA3AC10C9715 * (v10 >> 7));
      v13 = v14 & 0xFFFFFFFFFFFFFF00;
      v11 = v14 & 0xF8;
      v12 = 1;
    }

    v20 = v13 | v11;
    v21 = v12;
    sub_57478(a3);
    sub_5D9DA8(a1, a2, &v18);
    sub_5EBC34(a3, &v18);
    v15 = v18;
    if (v18)
    {
      v16 = v19;
      v17 = v18;
      if (v19 != v18)
      {
        do
        {
          v16 = sub_5C0F34(v16 - 816);
        }

        while (v16 != v15);
        v17 = v18;
      }

      v19 = v15;
      operator delete(v17);
    }
  }
}

void sub_5DA2A0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_5D47B8(a1 + 24, a2, v22);
  sub_5B790C(a1 + 760, v22, a2, a3);
  if (v47 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v46;
      v8 = __p;
      if (v46 != __p)
      {
        do
        {
          v7 -= 2000;
          sub_5C0D2C(v7);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v46 = v6;
      operator delete(v8);
    }

    v9 = v43;
    if (v43)
    {
      v10 = v44;
      v11 = v43;
      if (v44 != v43)
      {
        do
        {
          v10 -= 2000;
          sub_5C0D2C(v10);
        }

        while (v10 != v9);
        v11 = v43;
      }

      v44 = v9;
      operator delete(v11);
    }

    v12 = v41;
    if (v41)
    {
      v13 = v42;
      v14 = v41;
      if (v42 != v41)
      {
        do
        {
          v13 -= 2000;
          sub_5C0D2C(v13);
        }

        while (v13 != v12);
        v14 = v41;
      }

      v42 = v12;
      operator delete(v14);
    }

    if (v40 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 == 1)
      {
        if (v36 < 0)
        {
          operator delete(v35);
        }

        v15 = v33;
        if (v33)
        {
          v16 = v34;
          v17 = v33;
          if (v34 != v33)
          {
            do
            {
              v18 = *(v16 - 1);
              v16 -= 3;
              if (v18 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v15);
            v17 = v33;
          }

          v34 = v15;
          operator delete(v17);
        }

        if (v32 < 0)
        {
          operator delete(v31);
          if ((v30 & 0x80000000) == 0)
          {
LABEL_33:
            if ((v28 & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_44:
            operator delete(v27);
            v19 = v25;
            if (v25)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }
        }

        else if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        operator delete(v29);
        if (v28 < 0)
        {
          goto LABEL_44;
        }
      }

LABEL_34:
      v19 = v25;
      if (v25)
      {
LABEL_35:
        v20 = v26;
        v21 = v19;
        if (v26 != v19)
        {
          do
          {
            v20 = sub_3A9518(v20 - 1120);
          }

          while (v20 != v19);
          v21 = v25;
        }

        v26 = v19;
        operator delete(v21);
      }

LABEL_39:
      sub_570440(&v24);
      if (v23[1120] == 1)
      {
        sub_3A9518(v23);
      }
    }
  }
}

void sub_5DA4D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DAAFC(va);
  _Unwind_Resume(a1);
}

void sub_5DA4E4(uint64_t *a1, _DWORD *a2, char a3)
{
  v6 = a1[1];
  if (sub_44F320(a1[2]) && (sub_4F09F8(a1[1]) & 1) == 0)
  {
    v7 = *a1;
    v19 = 9;
    strcpy(__p, "EVRouting");
    memset(&__s1, 0, sizeof(__s1));
    sub_3AEC94(v7, __p, &__s1);
    v8 = __s1.__r_.__value_.__r.__words[0];
    if (__s1.__r_.__value_.__r.__words[0])
    {
      size = __s1.__r_.__value_.__l.__size_;
      v10 = __s1.__r_.__value_.__r.__words[0];
      if (__s1.__r_.__value_.__l.__size_ != __s1.__r_.__value_.__r.__words[0])
      {
        do
        {
          v11 = *(size - 1);
          size -= 3;
          if (v11 < 0)
          {
            operator delete(*size);
          }
        }

        while (size != v8);
        v10 = __s1.__r_.__value_.__r.__words[0];
      }

      __s1.__r_.__value_.__l.__size_ = v8;
      operator delete(v10);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    operator new();
  }

  if (sub_5CB284(a2))
  {
    v12 = sub_5CB28C(a2);
    if (!sub_570C5C(v12))
    {
      if (sub_570C9C(v12))
      {
        sub_4EC8E8(v6, 0);
        return;
      }

      if (sub_570CAC(v12))
      {
        sub_4EC8E8(v6, 1);
        return;
      }

      if (sub_570C7C(v12))
      {
        sub_4EC8F4(v6);
        return;
      }

      if (sub_570C8C(v12))
      {
        sub_4EC900(v6);
        return;
      }

      if (sub_570C4C(v12))
      {
        __p[0] = sub_570DF0(v12);
        LODWORD(__p[1]) = v13;
        BYTE4(__p[1]) = v14;
        sub_4EC4B4(v6, __p, v15);
        return;
      }

      if (sub_570C6C(v12))
      {
        sub_570E00(v12, __p);
        sub_4EC344(v6, &__p[1]);
        if (v20[120] == 1)
        {
          sub_52A624(__p);
        }
      }

      else if (sub_570C2C(v12))
      {
        sub_570DBC(v12, __p);
        v16 = __p[0];
        v17 = __p[1];
        while (v16 != v17)
        {
          sub_6591E0(v16, &__s1);
          sub_4EC344(v6, &__s1);
          if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s1.__r_.__value_.__l.__data_);
          }

          v16 += 1120;
        }

        sub_5706DC(__p);
      }

      else
      {
        if (!sub_570C1C(v12) || (a3 & 1) != 0)
        {
          if (!sub_570C3C(v12))
          {
            return;
          }

          sub_570D48(v12, __p);
          if (*a2 == 32)
          {
            sub_4EC5F0(v6, v20);
          }

          else
          {
            sub_4EC344(v6, v20);
          }
        }

        else
        {
          sub_570D48(v12, __p);
          sub_4EC344(v6, v20);
        }

        if (v20[1072] == 1)
        {
          sub_3A9518(__p);
        }
      }
    }
  }
}

void sub_5DA83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  if (LOBYTE(STACK[0x460]) == 1)
  {
    sub_3A9518(&__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ***sub_5DA8D8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 41);
        v3 -= 8;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5DA94C(void **a1)
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
        v3 = sub_53A868(v3 - 168);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5DA9A8(uint64_t a1)
{
  result = sub_5C0BF4((a1 + 2016));
  if (*(a1 + 2008) != 1)
  {
    return result;
  }

  if (*(a1 + 2007) < 0)
  {
    operator delete(*(a1 + 1984));
    if (*(a1 + 1976) != 1)
    {
LABEL_4:
      v3 = *(a1 + 1760);
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if (*(a1 + 1976) != 1)
  {
    goto LABEL_4;
  }

  sub_52A624(a1 + 1808);
  v3 = *(a1 + 1760);
  if (!v3)
  {
LABEL_5:
    result = sub_570440(a1 + 1144);
    if (*(a1 + 1136) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  v4 = *(a1 + 1768);
  v5 = v3;
  if (v4 != v3)
  {
    do
    {
      v4 = sub_3A9518(v4 - 1120);
    }

    while (v4 != v3);
    v5 = *(a1 + 1760);
  }

  *(a1 + 1768) = v3;
  operator delete(v5);
  result = sub_570440(a1 + 1144);
  if (*(a1 + 1136) == 1)
  {
LABEL_6:

    return sub_3A9518(a1 + 16);
  }

  return result;
}

void **sub_5DAA94(void **a1)
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
        v3 = sub_5C1158(v3 - 7808);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5DAAFC(uint64_t a1)
{
  if (*(a1 + 2096) != 1)
  {
    return a1;
  }

  sub_5C0BF4((a1 + 2016));
  if (*(a1 + 2008) != 1)
  {
    return a1;
  }

  if (*(a1 + 2007) < 0)
  {
    operator delete(*(a1 + 1984));
    if (*(a1 + 1976) != 1)
    {
LABEL_5:
      v2 = *(a1 + 1760);
      if (!v2)
      {
        goto LABEL_6;
      }

LABEL_11:
      v4 = *(a1 + 1768);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1760);
      }

      *(a1 + 1768) = v2;
      operator delete(v5);
      sub_570440(a1 + 1144);
      if (*(a1 + 1136) == 1)
      {
        goto LABEL_7;
      }

      return a1;
    }
  }

  else if (*(a1 + 1976) != 1)
  {
    goto LABEL_5;
  }

  sub_52A624(a1 + 1808);
  v2 = *(a1 + 1760);
  if (v2)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_570440(a1 + 1144);
  if (*(a1 + 1136) == 1)
  {
LABEL_7:
    sub_3A9518(a1 + 16);
  }

  return a1;
}

uint64_t sub_5DABE4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x50505050505050)
  {
    sub_1794();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 4);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 4) >= 0x28282828282828)
  {
    v5 = 0x50505050505050;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x50505050505050)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_5DAD70(v15, a2);
  v6 = 816 * v2 + 816;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      sub_5DB550(v12, v11);
      v11 += 816;
      v12 = v13 + 816;
    }

    while (v11 != v8);
    do
    {
      sub_5C0F34(v7);
      v7 += 816;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_5DAD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DB97C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5DAD70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  sub_5DB03C(a1 + 56, a2 + 56);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_5CEC4C(a1 + 120, *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 5));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_5CEC4C(a1 + 144, *(a2 + 144), *(a2 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 152) - *(a2 + 144)) >> 5));
  sub_55BD50(a1 + 168, a2 + 168);
  sub_55BD50(a1 + 328, a2 + 328);
  v6 = *(a2 + 488);
  v7 = *(a2 + 520);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 520) = v7;
  *(a1 + 488) = v6;
  v8 = *(a2 + 536);
  v9 = *(a2 + 552);
  v10 = *(a2 + 568);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 552) = v9;
  *(a1 + 568) = v10;
  *(a1 + 536) = v8;
  sub_55F1E8(a1 + 600, a2 + 600);
  sub_5DB1FC((a1 + 712), (a2 + 712));
  v11 = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 736) = v11;
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 768) = 0;
  sub_5DB420(a1 + 760, *(a2 + 760), *(a2 + 768), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 768) - *(a2 + 760)) >> 3));
  v12 = *(a2 + 784);
  *(a1 + 788) = *(a2 + 788);
  *(a1 + 784) = v12;
  v13 = (a1 + 792);
  if (*(a2 + 815) < 0)
  {
    sub_325C(v13, *(a2 + 792), *(a2 + 800));
  }

  else
  {
    v14 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *v13 = v14;
  }

  return a1;
}

void sub_5DAF58(_Unwind_Exception *a1)
{
  sub_5DA94C((v1 + 760));
  sub_5DA8D8((v1 + 712));
  sub_53E440(v1 + 600);
  sub_5A0410(v3);
  sub_5C0B98(v1 + 56);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if ((*(v1 + 31) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_5DB03C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_5280AC(a1, i + 4);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_5DB1C4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

void *sub_5DB1FC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_5DB31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_5DB33C(&a11);
  *(v11 + 8) = v12;
  sub_5DB39C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5DB33C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 41);
      v3 -= 8;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_5DB39C(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 41);
          v4 -= 8;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_5DB420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5DB51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 168;
    v15 = -v12;
    do
    {
      v14 = sub_53A868(v14) - 168;
      v15 += 168;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_55CC48(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_5DB550(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0;
  v5 = *(a2 + 72);
  *(a2 + 40) = 0;
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a2 + 64) = 0;
  *(a1 + 72) = v5;
  v8 = *(a2 + 80);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  if (v8)
  {
    v9 = *(v5 + 8);
    v10 = *(a1 + 64);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v9 %= v10;
      }
    }

    else
    {
      v9 &= v10 - 1;
    }

    *(v6 + 8 * v9) = a1 + 72;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  v11 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a1 + 264) = v11;
  v12 = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 272) = v12;
  v13 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 280) = v13;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 280) = 0;
  v14 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v14;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 400);
  v15 = *(a2 + 424);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a1 + 424) = v15;
  v16 = *(a2 + 432);
  *(a1 + 436) = *(a2 + 436);
  *(a1 + 432) = v16;
  v17 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 440) = v17;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 440) = 0;
  v18 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v18;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a2 + 464) = 0;
  v19 = *(a2 + 488);
  v20 = *(a2 + 520);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 520) = v20;
  *(a1 + 488) = v19;
  v21 = *(a2 + 536);
  v22 = *(a2 + 552);
  v23 = *(a2 + 568);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 552) = v22;
  *(a1 + 568) = v23;
  *(a1 + 536) = v21;
  *(a1 + 600) = 0;
  *(a1 + 632) = -1;
  v24 = *(a2 + 632);
  if (v24 != -1)
  {
    v25 = a1;
    v31 = a1 + 600;
    (off_266B988[v24])(&v31, a2 + 600);
    a1 = v25;
    *(v25 + 632) = v24;
  }

  *(a1 + 640) = *(a2 + 640);
  v26 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 648) = v26;
  *(a2 + 656) = 0u;
  *(a2 + 648) = 0;
  *(a1 + 672) = *(a2 + 672);
  v27 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 680) = v27;
  *(a2 + 688) = 0u;
  *(a2 + 680) = 0;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  v28 = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 736) = v28;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  v29 = *(a2 + 784);
  *(a1 + 788) = *(a2 + 788);
  *(a1 + 784) = v29;
  result = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = result;
  *(a2 + 808) = 0;
  *(a2 + 800) = 0;
  *(a2 + 792) = 0;
  return result;
}

uint64_t sub_5DB97C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 816;
    sub_5C0F34(i - 816);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_5DB9D0()
{
  byte_2796EAF = 3;
  LODWORD(qword_2796E98) = 5136193;
  byte_2796EC7 = 3;
  LODWORD(qword_2796EB0) = 5136194;
  byte_2796EDF = 3;
  LODWORD(qword_2796EC8) = 5136195;
  byte_2796EF7 = 15;
  strcpy(&qword_2796EE0, "vehicle_mass_kg");
  byte_2796F0F = 21;
  strcpy(&xmmword_2796EF8, "vehicle_cargo_mass_kg");
  byte_2796F27 = 19;
  strcpy(&qword_2796F10, "vehicle_aux_power_w");
  byte_2796F3F = 15;
  strcpy(&qword_2796F28, "dcdc_efficiency");
  strcpy(&qword_2796F40, "drive_train_efficiency");
  HIBYTE(word_2796F56) = 22;
  operator new();
}

void sub_5DBDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2796E58)
  {
    qword_2796E60 = qword_2796E58;
    operator delete(qword_2796E58);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5DBECC(void *a1, unint64_t a2)
{
  if (0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 360 * a2;
}

void sub_5DC008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_5DC0E8(void *a1, void *a2)
{
  v4 = sub_4A5C(a1, "/* DOT Generated from route */", 30);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v80, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v80);
  std::ostream::put();
  std::ostream::flush();
  v6 = a2[139];
  v7 = a2[138];
  v8 = v6 - v7 + 2616;
  while (v6 != v7)
  {
    v9 = *(v6 - 2232);
    v8 -= 2616;
    v6 -= 2616;
    if (v9 == 5)
    {
      v10 = sub_4A5C(a1, "digraph {", 9);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v12 = sub_4A5C(a1, "  rankdir=LR;", 15);
      std::ios_base::getloc((v12 + *(*v12 - 24)));
      v13 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v14 = sub_4A5C(a1, "  compound=true;", 16);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v16 = sub_4A5C(a1, "  splines=true;", 15);
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v17 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v18 = sub_4A5C(a1, "  overlap=scalexy;", 18);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v20 = sub_4A5C(a1, "graph [ordering=out];", 23);
      std::ios_base::getloc((v20 + *(*v20 - 24)));
      v21 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v21->__vftable[2].~facet_0)(v21, 10);
      v79 = 0x3795876FF3795877 * (v8 >> 3);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v22 = 0;
      v81 = 0u;
      v82 = 0u;
      v83 = 1065353216;
      do
      {
        v23 = sub_50EA30(a2 + 138, v22);
        v24 = v23;
        if (*(v23 + 2008) != *(v23 + 2016))
        {
          v25 = v23;
          if (v22 < v79 - 1)
          {
            v25 = sub_50EA30(a2 + 138, v22 + 1);
          }

          v26 = v24[5];
          v27 = v24[3];
          if (v26 <= v27)
          {
            v28 = v24[3];
          }

          else
          {
            v28 = v24[5];
          }

          if (v26 < v27)
          {
            do
            {
              v30 = sub_5DBECC(v24 + 251, v26 - v24[5]);
              v80.__locale_ = sub_6C6B4C(v30);
              sub_5DED70(&v81, &v80);
              if (v26 >= sub_4D1DC0(a2) - 1)
              {
                v29 = v26 + 1;
              }

              else
              {
                v29 = v26 + 1;
                if (v26 == v24[8])
                {
                  v31 = v24[9];
                }

                else
                {
                  v31 = v26 + 1;
                }

                v32 = v31 - v24[5];
                if (v32 >= 0x4FA4FA4FA4FA4FA5 * ((v24[252] - v24[251]) >> 3))
                {
                  v34 = v31 - v25[5];
                  if (v34 >= 0x4FA4FA4FA4FA4FA5 * ((v25[252] - v25[251]) >> 3))
                  {
                    sub_6C6A34(&v80);
                    sub_5DD14C(a1, v30, &v80);
                    sub_5C3168(&v80);
                  }

                  else
                  {
                    v35 = sub_5DBECC(v25 + 251, v34);
                    v80.__locale_ = sub_6C6B4C(v35);
                    sub_5DED70(&v81, &v80);
                    sub_5DD14C(a1, v30, v35);
                  }
                }

                else
                {
                  v33 = sub_5DBECC(v24 + 251, v32);
                  v80.__locale_ = sub_6C6B4C(v33);
                  sub_5DED70(&v81, &v80);
                  sub_5DD14C(a1, v30, v33);
                }
              }

              v26 = v29;
            }

            while (v29 != v28);
          }
        }

        ++v22;
      }

      while (v22 != v79);
      v36 = 0;
      do
      {
        v37 = sub_50EA30(a2 + 138, v36);
        v38 = *(v37 + 2008);
        v39 = *(v37 + 2016);
        while (v38 != v39)
        {
          v40 = sub_6C6B4C(v38);
          if (*(&v81 + 1))
          {
            v41 = vcnt_s8(*(&v81 + 8));
            v41.i16[0] = vaddlv_u8(v41);
            if (v41.u32[0] > 1uLL)
            {
              v42 = v40;
              if (v40 >= *(&v81 + 1))
              {
                v42 = v40 % *(&v81 + 1);
              }
            }

            else
            {
              v42 = (*(&v81 + 1) - 1) & v40;
            }

            v43 = *(v81 + 8 * v42);
            if (v43)
            {
              v44 = *v43;
              if (v44)
              {
                if (v41.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v46 = v44[1];
                    if (v46 == v40)
                    {
                      if (v44[2] == v40)
                      {
                        goto LABEL_51;
                      }
                    }

                    else if ((v46 & (*(&v81 + 1) - 1)) != v42)
                    {
                      goto LABEL_28;
                    }

                    v44 = *v44;
                    if (!v44)
                    {
                      goto LABEL_28;
                    }
                  }
                }

                do
                {
                  v45 = v44[1];
                  if (v45 == v40)
                  {
                    if (v44[2] == v40)
                    {
LABEL_51:
                      sub_4A5C(a1, "\tsubgraph cluster_", 18);
                      sub_6C6B4C(v38);
                      v47 = std::ostream::operator<<();
                      v48 = sub_4A5C(v47, " {", 2);
                      std::ios_base::getloc((v48 + *(*v48 - 24)));
                      v49 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                      (v49->__vftable[2].~facet_0)(v49, 10);
                      std::locale::~locale(&v80);
                      std::ostream::put();
                      std::ostream::flush();
                      if (sub_6C7D24(v38))
                      {
                        sub_4A5C(a1, "\t\tlabel=Lane Info #", 20);
                        sub_6C6B4C(v38);
                        v50 = std::ostream::operator<<();
                        v51 = sub_4A5C(v50, " (", 2);
                        v52 = sub_731E84(v51, *(v37 + 160));
                        v53 = sub_4A5C(v52, ")", 2);
                        std::ios_base::getloc((v53 + *(*v53 - 24)));
                        v54 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                        (v54->__vftable[2].~facet_0)(v54, 10);
                        std::locale::~locale(&v80);
                        std::ostream::put();
                        std::ostream::flush();
                        v55 = sub_4A5C(a1, "\t\tcolor=blue", 12);
                        std::ios_base::getloc((v55 + *(*v55 - 24)));
                        v56 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                        (v56->__vftable[2].~facet_0)(v56, 10);
                        std::locale::~locale(&v80);
                        std::ostream::put();
                        std::ostream::flush();
                        v57 = sub_4A5C(a1, "\t\tnode [style=filled, color=lightgrey];", 39);
                      }

                      else
                      {
                        sub_4A5C(a1, "\t\tlabel=Lane Info #", 20);
                        sub_6C6B4C(v38);
                        v58 = std::ostream::operator<<();
                        LOBYTE(v80.__locale_) = 34;
                        v57 = sub_4A5C(v58, &v80, 1);
                      }

                      std::ios_base::getloc((v57 + *(*v57 - 24)));
                      v59 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                      (v59->__vftable[2].~facet_0)(v59, 10);
                      std::locale::~locale(&v80);
                      std::ostream::put();
                      std::ostream::flush();
                      if (sub_6C6B88(v38))
                      {
                        sub_4A5C(a1, "\t\t{rank=same; ", 14);
                        v60 = sub_6C6B88(v38);
                        if (v60)
                        {
                          v61 = v60 + 1;
                          do
                          {
                            sub_6C6B4C(v38);
                            v62 = std::ostream::operator<<();
                            LOBYTE(v80.__locale_) = 46;
                            sub_4A5C(v62, &v80, 1);
                            v63 = std::ostream::operator<<();
                            LOBYTE(v80.__locale_) = 32;
                            sub_4A5C(v63, &v80, 1);
                            --v61;
                          }

                          while (v61 > 1);
                        }

                        v64 = sub_4A5C(a1, "}", 1);
                        std::ios_base::getloc((v64 + *(*v64 - 24)));
                        v65 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                        (v65->__vftable[2].~facet_0)(v65, 10);
                        std::locale::~locale(&v80);
                        std::ostream::put();
                        std::ostream::flush();
                      }

                      sub_4A5C(a1, "\t\tinfo_for_", 11);
                      sub_6C6B4C(v38);
                      v66 = std::ostream::operator<<();
                      v67 = sub_4A5C(v66, " [label=", 9);
                      v68 = sub_6C905C(v38);
                      v69 = sub_30E900(v67, v68 & 0xFFFFFFFFFFFFFFLL);
                      sub_4A5C(v69, ", shape=note, fontsize=8];", 27);
                      std::ios_base::getloc((a1 + *(*a1 - 24)));
                      v70 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                      (v70->__vftable[2].~facet_0)(v70, 10);
                      std::locale::~locale(&v80);
                      std::ostream::put();
                      std::ostream::flush();
                      v71 = sub_4A5C(a1, "\t}", 2);
                      std::ios_base::getloc((v71 + *(*v71 - 24)));
                      v72 = std::locale::use_facet(&v80, &std::ctype<char>::id);
                      (v72->__vftable[2].~facet_0)(v72, 10);
                      std::locale::~locale(&v80);
                      std::ostream::put();
                      std::ostream::flush();
                      break;
                    }
                  }

                  else
                  {
                    if (v45 >= *(&v81 + 1))
                    {
                      v45 %= *(&v81 + 1);
                    }

                    if (v45 != v42)
                    {
                      break;
                    }
                  }

                  v44 = *v44;
                }

                while (v44);
              }
            }
          }

LABEL_28:
          v38 += 360;
        }

        ++v36;
      }

      while (v36 != v79);
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v73 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v73->__vftable[2].~facet_0)(v73, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      LOBYTE(v80.__locale_) = 125;
      v74 = sub_4A5C(a1, &v80, 1);
      std::ios_base::getloc((v74 + *(*v74 - 24)));
      v75 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v75->__vftable[2].~facet_0)(v75, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      v76 = v82;
      if (v82)
      {
        do
        {
          v77 = *v76;
          operator delete(v76);
          v76 = v77;
        }

        while (v77);
      }

      v78 = v81;
      *&v81 = 0;
      if (v78)
      {
        operator delete(v78);
      }

      return;
    }
  }
}

void sub_5DCF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  std::locale::~locale(&a12);
  sub_11BD8(v12 - 144);
  _Unwind_Resume(a1);
}

void sub_5DD14C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (sub_6C6B88(a2) && sub_6C6B88(a3))
  {
    v6 = sub_6C6B88(v4);
    if (v6)
    {
      v45 = 0;
      v42 = a3;
      v43 = v6;
      v40 = a1;
      v41 = v4;
      while (!sub_6CA9B0(v4))
      {
        sub_4A5C(a1, "\tinfo_for_", 10);
        sub_6C6B4C(v4);
        v9 = std::ostream::operator<<();
        sub_4A5C(v9, " -> info_for_", 13);
        sub_6C6B4C(a3);
        v10 = std::ostream::operator<<();
        sub_4A5C(v10, "[style=dashed,color=grey,ltail=cluster_", 39);
        sub_6C6B4C(v4);
        v11 = std::ostream::operator<<();
        sub_4A5C(v11, " lhead=cluster_", 15);
        sub_6C6B4C(a3);
        v12 = std::ostream::operator<<();
        v13 = sub_4A5C(v12, "];", 2);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v50, &std::ctype<char>::id);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v50);
        std::ostream::put();
        std::ostream::flush();
LABEL_5:
        if (++v45 == v43)
        {
          return;
        }
      }

      v7 = sub_6CA868(v4, v45);
      v8 = v7[1];
      if (v8 != *v7)
      {
        if (((v8 - *v7) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v50.__locale_ = 0;
      v51 = 0;
      v52 = 0;
      v15 = sub_6C8244(v4, v45);
      v16 = *v15;
      v44 = v15[1];
      if (*v15 == v44)
      {
LABEL_12:
        if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
        {
          --v51;
          v4 = v41;
          a3 = v42;
          a1 = v40;
          *(v50.__locale_ + v51) = 0;
        }

        else
        {
          v17 = SHIBYTE(v52) - 1;
          HIBYTE(v52) = v17 & 0x7F;
          v4 = v41;
          a3 = v42;
          a1 = v40;
          *(&v50.__locale_ + v17) = 0;
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v50.__locale_);
        }

        goto LABEL_5;
      }

      while (1)
      {
        v18 = *v16;
        v19 = "";
        if (v18 <= 0x12)
        {
          v19 = off_266B9B0[v18];
        }

        v20 = strlen(v19);
        if (v20 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v21 = v20;
        if (v20 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v47) = v20;
        if (v20)
        {
          memmove(&__dst, v19, v20);
          *(&__dst + v21) = 0;
          v22 = HIBYTE(v47);
          if (SHIBYTE(v47) < 0)
          {
LABEL_26:
            v23 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (*(&__dst + 1) == v23)
            {
              if ((v47 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

LABEL_28:
              operator new();
            }

            v24 = *(&__dst + 1);
            p_dst = __dst;
            ++*(&__dst + 1);
            goto LABEL_31;
          }
        }

        else
        {
          LOBYTE(__dst) = 0;
          v22 = HIBYTE(v47);
          if (SHIBYTE(v47) < 0)
          {
            goto LABEL_26;
          }
        }

        if (v22 == 22)
        {
          goto LABEL_28;
        }

        v24 = v22;
        HIBYTE(v47) = (v22 + 1) & 0x7F;
        p_dst = &__dst;
LABEL_31:
        *(p_dst + v24) = 44;
        v49 = v47;
        *&v48[0].__locale_ = __dst;
        v47 = 0;
        __dst = 0uLL;
        v26 = SHIBYTE(v49);
        locale = v48[0].__locale_;
        if (v49 >= 0)
        {
          v28 = v48;
        }

        else
        {
          v28 = v48[0].__locale_;
        }

        if (v49 >= 0)
        {
          v29 = HIBYTE(v49);
        }

        else
        {
          v29 = v48[1].__locale_;
        }

        if (v52 >= 0)
        {
          v30 = 22;
        }

        else
        {
          v30 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v52 >= 0)
        {
          v31 = HIBYTE(v52);
        }

        else
        {
          v31 = v51;
        }

        if (v30 - v31 < v29)
        {
          if (0x7FFFFFFFFFFFFFF6 - v30 >= v29 + v31 - v30)
          {
            operator new();
          }

          sub_3244();
        }

        if (v29)
        {
          if (v52 >= 0)
          {
            v32 = &v50;
          }

          else
          {
            v32 = v50.__locale_;
          }

          memmove(&v31[v32], v28, v29);
          v33 = v29 + v31;
          if (SHIBYTE(v52) < 0)
          {
            v51 = v29 + v31;
          }

          else
          {
            HIBYTE(v52) = v33 & 0x7F;
          }

          v33[v32] = 0;
        }

        if (v26 < 0)
        {
          operator delete(locale);
          if ((SHIBYTE(v47) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_56:
          operator delete(__dst);
          if (++v16 == v44)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (SHIBYTE(v47) < 0)
          {
            goto LABEL_56;
          }

LABEL_15:
          if (++v16 == v44)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  else
  {
    sub_4A5C(a1, "\tinfo_for_", 10);
    sub_6C6B4C(v4);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, " -> info_for_", 13);
    sub_6C6B4C(a3);
    v35 = std::ostream::operator<<();
    sub_4A5C(v35, "[style=dashed,color=grey,ltail=cluster_", 39);
    sub_6C6B4C(v4);
    v36 = std::ostream::operator<<();
    sub_4A5C(v36, " lhead=cluster_", 15);
    sub_6C6B4C(a3);
    v37 = std::ostream::operator<<();
    v38 = sub_4A5C(v37, "];", 2);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v50, &std::ctype<char>::id);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v50);
    std::ostream::put();
    std::ostream::flush();
  }
}

void sub_5DDC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::locale a24)
{
  if (*(v25 - 81) < 0)
  {
    operator delete(*(v25 - 104));
    if (!v24)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(v24);
  _Unwind_Resume(a1);
}

unint64_t sub_5DDCF0(unint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (a2 - v10 > 2)
    {
      break;
    }

    if ((a2 - v10) < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v79 = *v10;
      v80 = *(a2 - 1);
      if (v79 > v80)
      {
        *v10 = v80;
        *(a2 - 1) = v79;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v91 = v10 + 1;
      v93 = v10 == a2 || v91 == a2;
      if (a5)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v10;
          do
          {
            v97 = *v95;
            v98 = v95[1];
            v95 = v91;
            if (v97 > v98)
            {
              v99 = v94;
              do
              {
                v10[v99 + 1] = v97;
                if (!v99)
                {
                  v96 = v10;
                  goto LABEL_128;
                }

                v97 = v10[--v99];
              }

              while (v97 > v98);
              v96 = &v10[v99 + 1];
LABEL_128:
              *v96 = v98;
            }

            v91 = v95 + 1;
            ++v94;
          }

          while (v95 + 1 != a2);
        }
      }

      else if (!v93)
      {
        do
        {
          v104 = *v9;
          v105 = v9[1];
          v9 = v91;
          if (v104 > v105)
          {
            do
            {
              *v91 = v104;
              v104 = *(v91 - 2);
              --v91;
            }

            while (v104 > v105);
            *v91 = v105;
          }

          v91 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_5DEA30(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v13;
      v18 = *v10;
      if (v17 > v18)
      {
        if (v18 > v14)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v18;
        *v10 = v17;
        v31 = *(a2 - 1);
        if (v17 > v31)
        {
          *v10 = v31;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v18 <= v14)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v18;
      v21 = *v13;
      v22 = *v10;
      if (v21 <= v22)
      {
        goto LABEL_38;
      }

      *v13 = v22;
      *v10 = v21;
      --a4;
      v23 = v21;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v23 > *(v10 - 1))
      {
        goto LABEL_62;
      }

      if (*(a2 - 1) <= v23)
      {
        v62 = v10 + 1;
        do
        {
          v10 = v62;
          if (v62 >= a2)
          {
            break;
          }

          ++v62;
        }

        while (*v10 <= v23);
      }

      else
      {
        do
        {
          v61 = *++v10;
        }

        while (v61 <= v23);
      }

      v63 = a2;
      if (v10 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *--v63;
        }

        while (v64 > v23);
      }

      if (v10 < v63)
      {
        v65 = *v10;
        v66 = *v63;
        do
        {
          *v10 = v66;
          *v63 = v65;
          do
          {
            v67 = *++v10;
            v65 = v67;
          }

          while (v67 <= v23);
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v68 > v23);
        }

        while (v10 < v63);
      }

      v69 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v69;
      }

      a5 = 0;
      *v69 = v23;
    }

    else
    {
      v15 = *v10;
      v16 = *v13;
      if (v15 <= v16)
      {
        if (v16 > v14)
        {
          *v13 = v14;
          *(a2 - 1) = v16;
          v19 = *v10;
          v20 = *v13;
          if (v19 > v20)
          {
            *v10 = v20;
            *v13 = v19;
          }
        }
      }

      else
      {
        if (v16 <= v14)
        {
          *v10 = v16;
          *v13 = v15;
          v24 = *(a2 - 1);
          if (v15 <= v24)
          {
            goto LABEL_29;
          }

          *v13 = v24;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v25 = &v10[v12 - 1];
      v26 = *v25;
      v27 = v10[1];
      v28 = *(a2 - 2);
      if (v27 <= v26)
      {
        if (v26 > v28)
        {
          *v25 = v28;
          *(a2 - 2) = v26;
          v29 = v10[1];
          v30 = *v25;
          if (v29 > v30)
          {
            v10[1] = v30;
            *v25 = v29;
          }
        }
      }

      else
      {
        if (v26 <= v28)
        {
          v10[1] = v26;
          *v25 = v27;
          v32 = *(a2 - 2);
          if (v27 <= v32)
          {
            goto LABEL_43;
          }

          *v25 = v32;
        }

        else
        {
          v10[1] = v28;
        }

        *(a2 - 2) = v27;
      }

LABEL_43:
      v33 = &v10[v12];
      v36 = v33[1];
      v34 = v33 + 1;
      v35 = v36;
      v37 = v10[2];
      v38 = *(a2 - 3);
      if (v37 <= v36)
      {
        if (v35 > v38)
        {
          *v34 = v38;
          *(a2 - 3) = v35;
          v39 = v10[2];
          v40 = *v34;
          if (v39 > v40)
          {
            v10[2] = v40;
            *v34 = v39;
          }
        }
      }

      else
      {
        if (v35 <= v38)
        {
          v10[2] = v35;
          *v34 = v37;
          v41 = *(a2 - 3);
          if (v37 <= v41)
          {
            goto LABEL_52;
          }

          *v34 = v41;
        }

        else
        {
          v10[2] = v38;
        }

        *(a2 - 3) = v37;
      }

LABEL_52:
      v42 = *v25;
      v43 = *v13;
      v44 = *v34;
      if (v42 <= v43)
      {
        if (v43 <= v44)
        {
          goto LABEL_60;
        }

        *v13 = v44;
        *v34 = v43;
        v34 = v13;
        LOBYTE(v43) = v42;
        if (v42 > v44)
        {
LABEL_59:
          *v25 = v44;
          *v34 = v42;
LABEL_60:
          v46 = *v10;
          *v10 = v43;
          *v13 = v46;
          --a4;
          v23 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v60 = *v10;
        *v10 = v44;
        *v13 = v60;
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v43 > v44)
      {
        goto LABEL_59;
      }

      *v25 = v43;
      *v13 = v42;
      v25 = v13;
      LOBYTE(v43) = v44;
      if (v42 > v44)
      {
        goto LABEL_59;
      }

      v45 = *v10;
      *v10 = v42;
      *v13 = v45;
      --a4;
      v23 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v47 = 0;
      do
      {
        v48 = v10[++v47];
      }

      while (v23 > v48);
      v49 = &v10[v47];
      v50 = a2;
      if (v47 == 1)
      {
        v50 = a2;
        do
        {
          if (v49 >= v50)
          {
            break;
          }

          v52 = *--v50;
        }

        while (v23 <= v52);
      }

      else
      {
        do
        {
          v51 = *--v50;
        }

        while (v23 <= v51);
      }

      if (v49 >= v50)
      {
        v58 = v49 - 1;
        if (v49 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v58;
        goto LABEL_80;
      }

      v53 = *v50;
      v54 = &v10[v47];
      v55 = v50;
      do
      {
        *v54 = v53;
        *v55 = v48;
        do
        {
          v56 = *++v54;
          LOBYTE(v48) = v56;
        }

        while (v23 > v56);
        do
        {
          v57 = *--v55;
          v53 = v57;
        }

        while (v23 <= v57);
      }

      while (v54 < v55);
      v58 = v54 - 1;
      if (v54 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v58 = v23;
      if (v49 < v50)
      {
        goto LABEL_83;
      }

      v59 = sub_5DE610(v10, v58);
      v10 = v58 + 1;
      result = sub_5DE610(v58 + 1, a2);
      if (result)
      {
        a2 = v58;
        if (!v59)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v59)
      {
LABEL_83:
        result = sub_5DDCF0(v9, v58, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v58 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v84 = v10 + 1;
      v85 = v10[1];
      v86 = v10 + 2;
      v87 = v10[2];
      v88 = *v10;
      if (v88 <= v85)
      {
        if (v85 > v87)
        {
          *v84 = v87;
          *v86 = v85;
          v89 = v10;
          v90 = v10 + 1;
          result = v85;
          if (v88 > v87)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v85) = v87;
        v103 = *(a2 - 1);
        if (v85 <= v103)
        {
          return result;
        }
      }

      else
      {
        v89 = v10;
        v90 = v10 + 2;
        result = *v10;
        if (v85 <= v87)
        {
          *v10 = v85;
          v10[1] = v88;
          v89 = v10 + 1;
          v90 = v10 + 2;
          result = v88;
          if (v88 <= v87)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v89 = v87;
        *v90 = v88;
        LODWORD(v85) = result;
LABEL_149:
        v103 = *(a2 - 1);
        if (v85 <= v103)
        {
          return result;
        }
      }

      *v86 = v103;
      *(a2 - 1) = v85;
      v106 = *v84;
      v107 = *v86;
      if (v106 <= v107)
      {
        return result;
      }

      v10[1] = v107;
      v10[2] = v106;
      v108 = *v10;
      if (v108 <= v107)
      {
        return result;
      }

      goto LABEL_172;
    }

    if (v11 == 5)
    {
      v70 = v10 + 1;
      v71 = v10[1];
      v73 = v10 + 2;
      v72 = v10[2];
      v74 = *v10;
      if (v74 <= v71)
      {
        if (v71 <= v72)
        {
          v77 = *v10;
          LODWORD(v74) = v10[1];
          v100 = v10[3];
          if (v72 <= v100)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v75 = v10;
          v76 = v10 + 1;
          *v70 = v72;
          *v73 = v71;
          v77 = v72;
          result = v74;
          v78 = v71;
          if (v74 > v72)
          {
            goto LABEL_162;
          }

          v77 = v74;
          LODWORD(v74) = v72;
          LODWORD(v72) = v71;
          v100 = v10[3];
          if (v72 <= v100)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v71 > v72)
        {
          v75 = v10;
          v76 = v10 + 2;
          v77 = v10[2];
          result = v10[1];
          v78 = *v10;
          goto LABEL_162;
        }

        v75 = v10 + 1;
        v76 = v10 + 2;
        *v10 = v71;
        v10[1] = v74;
        v77 = v71;
        result = v72;
        v78 = v74;
        if (v74 > v72)
        {
LABEL_162:
          *v75 = v72;
          *v76 = v74;
          LODWORD(v74) = result;
          LODWORD(v72) = v78;
          v100 = v10[3];
          if (v78 > v100)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v72) = v100;
LABEL_168:
          v109 = *(a2 - 1);
          if (v72 <= v109)
          {
            return result;
          }

          v10[3] = v109;
          *(a2 - 1) = v72;
          v110 = v10[2];
          v107 = v10[3];
          if (v110 <= v107)
          {
            return result;
          }

          v10[2] = v107;
          v10[3] = v110;
          v111 = v10[1];
          if (v111 <= v107)
          {
            return result;
          }

          v10[1] = v107;
          v10[2] = v111;
          v108 = *v10;
          if (v108 <= v107)
          {
            return result;
          }

LABEL_172:
          *v10 = v107;
          v10[1] = v108;
          return result;
        }

        v77 = v71;
        v100 = v10[3];
        if (v72 <= v100)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v100;
      v10[3] = v72;
      if (v74 > v100)
      {
        *v70 = v100;
        *v73 = v74;
        if (v77 > v100)
        {
          *v10 = v100;
          v10[1] = v77;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v81 = *v10;
  v82 = v10[1];
  v83 = *(a2 - 1);
  if (v81 > v82)
  {
    if (v82 <= v83)
    {
      *v10 = v82;
      v10[1] = v81;
      v112 = *(a2 - 1);
      if (v81 <= v112)
      {
        return result;
      }

      v10[1] = v112;
    }

    else
    {
      *v10 = v83;
    }

    *(a2 - 1) = v81;
    return result;
  }

  if (v82 > v83)
  {
    v10[1] = v83;
    *(a2 - 1) = v82;
    v101 = *v10;
    v102 = v10[1];
    if (v101 > v102)
    {
      *v10 = v102;
      v10[1] = v101;
    }
  }

  return result;
}

BOOL sub_5DE610(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v16 <= v17)
      {
        if (v17 <= v18)
        {
          return 1;
        }

        a1[1] = v18;
        *(a2 - 1) = v17;
        v33 = *a1;
        v34 = a1[1];
        if (v33 <= v34)
        {
          return 1;
        }

        *a1 = v34;
        a1[1] = v33;
        return 1;
      }

      else if (v17 <= v18)
      {
        *a1 = v17;
        a1[1] = v16;
        v46 = *(a2 - 1);
        if (v16 <= v46)
        {
          return 1;
        }

        a1[1] = v46;
        *(a2 - 1) = v16;
        return 1;
      }

      else
      {
        *a1 = v18;
        *(a2 - 1) = v16;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v8 <= v5)
      {
        if (v5 <= v6)
        {
          v11 = *a1;
          v8 = a1[1];
          v41 = a1[3];
          if (v6 > v41)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v8 <= v6)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v41 = a1[3];
          if (v6 > v41)
          {
LABEL_57:
            a1[2] = v41;
            a1[3] = v6;
            if (v8 > v41)
            {
              *v4 = v41;
              *v7 = v8;
              if (v11 > v41)
              {
                *a1 = v41;
                a1[1] = v11;
              }
            }

LABEL_62:
            v47 = *(a2 - 1);
            if (v6 <= v47)
            {
              return 1;
            }

            a1[3] = v47;
            *(a2 - 1) = v6;
            v48 = a1[2];
            v44 = a1[3];
            if (v48 <= v44)
            {
              return 1;
            }

            a1[2] = v44;
            a1[3] = v48;
            v49 = a1[1];
            if (v49 <= v44)
            {
              return 1;
            }

            a1[1] = v44;
            a1[2] = v49;
            v45 = *a1;
            if (v45 <= v44)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v41;
          goto LABEL_62;
        }
      }

      else if (v5 <= v6)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v8 <= v6)
        {
          v11 = v5;
          v41 = a1[3];
          if (v6 > v41)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v41 = a1[3];
      if (v13 > v41)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v29 <= v26)
    {
      if (v26 <= v28)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v29 <= v28)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v26 <= v42)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v26 <= v28)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v29 <= v28)
        {
LABEL_49:
          v26 = v28;
          v42 = *(a2 - 1);
          if (v26 <= v42)
          {
            return 1;
          }

LABEL_50:
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v25;
          v44 = *v27;
          if (v43 <= v44)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v43;
          v45 = *a1;
          if (v45 <= v44)
          {
            return 1;
          }

LABEL_66:
          *a1 = v44;
          a1[1] = v45;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v22 <= v21)
    {
      if (v21 <= v19)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v21 > v19)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v22 > v19)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    v37 = 0;
    while (1)
    {
      v38 = *v20;
      v39 = *v35;
      if (v38 > v39)
      {
        break;
      }

LABEL_33:
      v20 = v35;
      ++v36;
      if (++v35 == a2)
      {
        return 1;
      }
    }

    v40 = v36;
    do
    {
      a1[v40 + 3] = v38;
      if (v40 == -2)
      {
        *a1 = v39;
        if (++v37 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v38 = a1[v40-- + 1];
    }

    while (v38 > v39);
    a1[v40 + 3] = v39;
    if (++v37 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *a1;
  v15 = *(a2 - 1);
  if (v14 <= v15)
  {
    return 1;
  }

  *a1 = v15;
  *(a2 - 1) = v14;
  return 1;
}

unsigned __int8 *sub_5DEA30(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (a2 - a1 >= 2)
    {
      v4 = (a2 - a1 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v6 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v7 = &a1[v6];
          if (2 * v5 + 2 >= v3)
          {
            v8 = *v7;
            v9 = &a1[v5];
            v10 = a1[v5];
            if (v10 <= v8)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v8 = v7[1];
            if (v8 > *v7)
            {
              ++v7;
              v6 = 2 * v5 + 2;
            }

            else
            {
              v8 = *v7;
            }

            v9 = &a1[v5];
            v10 = a1[v5];
            if (v10 <= v8)
            {
LABEL_19:
              while (1)
              {
                *v9 = v8;
                v9 = v7;
                if (v4 < v6)
                {
                  break;
                }

                v11 = (2 * v6) | 1;
                v7 = &a1[v11];
                v6 = 2 * v6 + 2;
                if (v6 < v3)
                {
                  v8 = v7[1];
                  if (v8 > *v7)
                  {
                    ++v7;
                  }

                  else
                  {
                    v8 = *v7;
                    v6 = v11;
                  }

                  if (v10 > v8)
                  {
                    break;
                  }
                }

                else
                {
                  v8 = *v7;
                  v6 = v11;
                  if (v10 > v8)
                  {
                    break;
                  }
                }
              }

              *v9 = v10;
            }
          }
        }

        v22 = v5-- <= 0;
      }

      while (!v22);
    }

    v12 = a2;
    if (a2 == a3)
    {
LABEL_52:
      if (v3 < 2)
      {
        return v12;
      }

      while (1)
      {
        v26 = 0;
        LOBYTE(v27) = *a1;
        v28 = (v3 - 2) >> 1;
        v29 = a1;
        do
        {
          while (1)
          {
            v34 = &v29[v26];
            v33 = &v29[v26 + 1];
            v35 = (2 * v26) | 1;
            v26 = 2 * v26 + 2;
            if (v26 < v3)
            {
              break;
            }

            v26 = v35;
            *v29 = *v33;
            v29 = v33;
            if (v35 > v28)
            {
              goto LABEL_64;
            }
          }

          v32 = v34[2];
          v31 = v34 + 2;
          v30 = v32;
          if (v32 > *(v31 - 1))
          {
            v33 = v31;
          }

          else
          {
            v30 = *(v31 - 1);
            v26 = v35;
          }

          *v29 = v30;
          v29 = v33;
        }

        while (v26 <= v28);
LABEL_64:
        if (v33 != --a2)
        {
          *v33 = *a2;
          *a2 = v27;
          v36 = v33 - a1 - 1;
          if (v33 - a1 + 1 < 2)
          {
            goto LABEL_56;
          }

          v37 = v36 >> 1;
          v38 = &a1[v36 >> 1];
          v27 = *v33;
          v39 = *v38;
          if (v27 <= v39)
          {
            goto LABEL_56;
          }

          do
          {
            *v33 = v39;
            v33 = v38;
            if (!v37)
            {
              break;
            }

            v37 = (v37 - 1) >> 1;
            v38 = &a1[v37];
            v39 = a1[v37];
          }

          while (v27 > v39);
        }

        *v33 = v27;
LABEL_56:
        v22 = v3-- <= 2;
        if (v22)
        {
          return v12;
        }
      }
    }

    if (v3 < 2)
    {
      v13 = *a1;
      v12 = a2;
      do
      {
        v14 = *v12;
        if (v13 > v14)
        {
          *v12 = v13;
          *a1 = v14;
          v13 = v14;
        }

        ++v12;
      }

      while (v12 != a3);
      goto LABEL_52;
    }

    v15 = a1 + 1;
    v12 = a2;
    while (1)
    {
      v16 = *a1;
      v17 = *v12;
      if (v16 > v17)
      {
        *v12 = v16;
        *a1 = v17;
        if (v3 == 2)
        {
          v18 = *v15;
          v19 = a1 + 1;
          v20 = 1;
          if (v17 <= v18)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v21 = a1[2];
          v18 = *v15;
          v22 = v21 > v18;
          if (v21 <= v18)
          {
            v19 = a1 + 1;
          }

          else
          {
            v18 = a1[2];
            v19 = a1 + 2;
          }

          if (v22)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          if (v17 <= v18)
          {
LABEL_43:
            v23 = a1;
            while (1)
            {
              *v23 = v18;
              v23 = v19;
              if (((v3 - 2) >> 1) < v20)
              {
                break;
              }

              v24 = (2 * v20) | 1;
              v19 = &a1[v24];
              v20 = 2 * v20 + 2;
              if (v20 < v3)
              {
                v18 = v19[1];
                if (v18 > *v19)
                {
                  ++v19;
                }

                else
                {
                  v18 = *v19;
                  v20 = v24;
                }

                if (v17 > v18)
                {
                  break;
                }
              }

              else
              {
                v18 = *v19;
                v20 = v24;
                if (v17 > v18)
                {
                  break;
                }
              }
            }

            *v23 = v17;
          }
        }
      }

      if (++v12 == a3)
      {
        goto LABEL_52;
      }
    }
  }

  return a3;
}

void *sub_5DED70(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_5DF0A4()
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
  xmmword_2796FA0 = 0u;
  *algn_2796FB0 = 0u;
  dword_2796FC0 = 1065353216;
  sub_3A9A34(&xmmword_2796FA0, v0);
  sub_3A9A34(&xmmword_2796FA0, v3);
  sub_3A9A34(&xmmword_2796FA0, __p);
  sub_3A9A34(&xmmword_2796FA0, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2796F78 = 0;
    qword_2796F80 = 0;
    qword_2796F70 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_5DF2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2796F88)
  {
    qword_2796F90 = qword_2796F88;
    operator delete(qword_2796F88);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF398(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && *(*(nullsub_1(a2) + 8) - 1132) == 1 && sub_5E12AC(a1, a2))
  {
    v7 = *(nullsub_1(a2) + 8);
    v8 = (v7 - 1376);
    v9 = *(v7 - 1568);
    v12 = *(v7 - 1560);
    v11 = v9;
    if (*(v7 - 1353) < 0)
    {
      sub_325C(&__p, *v8, *(v7 - 1368));
    }

    else
    {
      v10 = *v8;
      v14 = *(v7 - 1360);
      __p = v10;
    }

    sub_5E0DD0(a3, &v11);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF518(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && *(*(nullsub_1(a2) + 8) - 1132) == 1 && sub_5E12AC(a1, a2))
  {
    v7 = *(nullsub_1(a2) + 8);
    v8 = (v7 - 1376);
    v9 = *(v7 - 1568);
    v12 = *(v7 - 1560);
    v11 = v9;
    if (*(v7 - 1353) < 0)
    {
      sub_325C(&__p, *v8, *(v7 - 1368));
    }

    else
    {
      v10 = *v8;
      v14 = *(v7 - 1360);
      __p = v10;
    }

    sub_5E0DD0(a3, &v11);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF698(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && *(*(nullsub_1(a2) + 8) - 1132) == 1 && sub_5E12AC(a1, a2))
  {
    v7 = *(nullsub_1(a2) + 8);
    v8 = (v7 - 1376);
    v9 = *(v7 - 1568);
    v12 = *(v7 - 1560);
    v11 = v9;
    if (*(v7 - 1353) < 0)
    {
      sub_325C(&__p, *v8, *(v7 - 1368));
    }

    else
    {
      v10 = *v8;
      v14 = *(v7 - 1360);
      __p = v10;
    }

    sub_5E0DD0(a3, &v11);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a4;
  sub_21E2C18(a3, 0, *(a4 + 968));
}

void sub_5DF958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1F1A8(v17 + 16);
  _Unwind_Resume(a1);
}

void sub_5DF984(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_5DF818(a1, a2, v6, a3);
}

void sub_5DF9E0(uint64_t a1, void *a2)
{
  v11 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v11 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  strcpy(__p, "route_min_length_miles");
  v11 = 22;
  v6 = sub_63D34(a2, __p) * 160934.4;
  if (v6 >= 0.0)
  {
    v7 = v6;
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_9;
    }

    v8 = (v6 + v6) + 1;
  }

  else
  {
    v7 = v6;
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_9;
    }

    v8 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v7 = (v8 >> 1);
LABEL_9:
  if (v7 >= 9.22337204e18)
  {
    *(a1 + 8) = 0x7FFFFFFFFFFFFFFELL;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    operator delete(*__p);
LABEL_20:
    operator new();
  }

  if (v6 >= 0.0)
  {
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_18;
    }

    v9 = (v6 + v6) + 1;
  }

  else
  {
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_18;
    }

    v9 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v6 = (v9 >> 1);
LABEL_18:
  *(a1 + 8) = v6;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_5DFECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_5DFEFC(void **a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_3AF6B4(*a1);
  sub_2B3C60(v4, (a2 + 2856), *(v3 + 16), &__p);
  v5 = __p;
  v6 = v28;
  v7 = 0.0;
  if (__p == v28)
  {
    goto LABEL_26;
  }

  v26 = v3;
  v8 = 0;
  v9 = 0;
  do
  {
    v11 = v5[2];
    v12 = *(v5 + 6);
    v13 = v11 | (v12 << 32);
    v14 = sub_2B51D8(v4, v13);
    if (*(v4 + 7772) == 1)
    {
      v15 = sub_30C50C(v4 + 3896, v11, 0);
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

      v18 = (v17 + 4 * v12 + 4 + *(v17 + 4 * v12 + 4));
    }

    else
    {
      v18 = 0;
    }

    sub_31D7E8(v4, v13, 1);
    v19 = (v14 - *v14);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = (v18 - *v18);
      if (*v22 < 0x11u)
      {
        goto LABEL_5;
      }

LABEL_19:
      v23 = v22[8];
      if (v23 && (*(v18 + v23) & 8) != 0)
      {
        if (v20 < 9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v19[4];
          if (v10)
          {
            v10 = *(v14 + v10);
          }
        }

        v8 += v10;
      }

      goto LABEL_5;
    }

    v21 = v19[4];
    if (v19[4])
    {
      v21 = *(v14 + v21);
    }

    v22 = (v18 - *v18);
    if (*v22 >= 0x11u)
    {
      goto LABEL_19;
    }

LABEL_5:
    v9 += v21;
    v5 += 12;
  }

  while (v5 != v6);
  v3 = v26;
  if (v9)
  {
    v7 = v8 / v9;
  }

LABEL_26:
  v24 = *(v3 + 9);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v7 > v24;
}

void sub_5E00E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5E00FC(uint64_t a1@<X8>)
{
  sub_64B998(a1);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_64B998(a1 + 192);
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 395) = -1;
  *(a1 + 407) = 0;
  *(a1 + 415) = 0;
  *(a1 + 399) = 0;
  *(a1 + 423) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 160) = 1;
  operator new();
}

void sub_5E06DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  *(v51 + 176) = v52;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_5E11FC(&a46);
  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  sub_55A8B4(v51);
  _Unwind_Resume(a1);
}

void sub_5E09EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_5E0A1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4[1449] == 1 && v4[1463] == 1 && v4[1415] == 1 && sub_9BD118(a2) > *(a1 + 40) && *(a2 + 3292) == 1 && sub_5DFEFC(a1, a2))
    {

      sub_5E00FC(a3);
    }
  }

  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  result = 0.0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 399) = 0;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 423) = 0;
  *(a3 + 432) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 456) = 0;
  *(a3 + 480) = 0u;
  return result;
}

void sub_5E0B44(_Unwind_Exception *a1)
{
  sub_5E0B60(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void **sub_5E0B60(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 800;
        v10 = *(v3 - 8);
        if (v10 != -1)
        {
          (off_266BAA0[v10])(&v12, v3 - 800);
        }

        *(v3 - 8) = -1;
        v3 -= 800;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5E0C58(uint64_t a1)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1448) = -1;
  *(a1 + 1456) = 0x7FFFFFFF;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529078(a1 + 1488);
  return a1;
}

void sub_5E0D40(_Unwind_Exception *a1)
{
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v5);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_55F440(v1 + 32);
        if (*(v1 + 31) < 0)
        {
          operator delete(*v2);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v3);
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_5E0DD0(uint64_t a1, uint64_t *a2)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  v4 = *a2;
  *(a1 + 1456) = *(a2 + 2);
  *(a1 + 1448) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 1464), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 1480) = a2[4];
    *(a1 + 1464) = v5;
  }

  sub_529078(a1 + 1488);
  return a1;
}

void sub_5E0EDC(_Unwind_Exception *a1)
{
  if (*(v1 + 1447) < 0)
  {
    operator delete(*(v1 + 1424));
    sub_528FAC((v1 + 1376));
    if ((*(v1 + 1375) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_528FAC((v1 + 1376));
    if ((*(v1 + 1375) & 0x80000000) == 0)
    {
LABEL_4:
      sub_51B73C(v1 + 1248);
      sub_5294D8((v1 + 1176));
      sub_55F440(v1 + 32);
      if (*(v1 + 31) < 0)
      {
        operator delete(*v2);
      }

      _Unwind_Resume(a1);
    }
  }

  operator delete(*v3);
  goto LABEL_4;
}

uint64_t sub_5E0F80(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 5) >= 0x28F5C28F5C28F5)
  {
    v5 = 0x51EB851EB851EBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 32 * ((a1[1] - *a1) >> 5);
  v6 = sub_55BC9C(v12, a2);
  *(v6 + 768) = 2;
  *(v6 + 776) = 0;
  *(v6 + 792) = 0;
  *(v6 + 784) = 0;
  v7 = 800 * v2 + 800;
  v8 = a1[1];
  v9 = v12 + *a1 - v8;
  sub_55B144(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_5E10D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E10E8(va);
  _Unwind_Resume(a1);
}

void **sub_5E10E8(void **a1)
{
  sub_5E111C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_5E111C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 800;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    v8 = *(i - 32);
    if (v8 != -1)
    {
      (off_266BAA0[v8])(&v9, i - 800);
    }

    *(i - 32) = -1;
  }
}

uint64_t sub_5E11FC(uint64_t a1)
{
  sub_53A868(a1 + 592);
  sub_53A868(a1 + 432);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 352);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 368));
  v2 = *(a1 + 352);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BA50[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

BOOL sub_5E12AC(uint64_t a1, uint64_t a2)
{
  v3 = *(nullsub_1(a2) + 8);
  sub_4D1E00((v3 - 12656), &v22);
  v4 = 0;
  sub_4D1E24(v3 - 12656, v19);
  v5 = v23;
  v7 = v20;
  v6 = v21;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_2:
  v8 = v24;
  v9 = sub_4D1DC0(v5);
  v10 = v9;
  if (v7)
  {
    v11 = sub_4D1DC0(v7);
    if (v8 >= v10 || v6 >= v11)
    {
      if (v8 < v10 != v6 < v11)
      {
        do
        {
LABEL_16:
          v14 = *(sub_4D1F50(v23, v24 - 1) + 8);
          v16 = (v14 - *v14);
          if (*v16 < 0x11u)
          {
            break;
          }

          v17 = v16[8];
          if (!v17 || (*(v14 + v17) & 8) == 0)
          {
            break;
          }

          v4 += sub_4D23F8(v23, --v24, v15);
          sub_4D1E24(v3 - 12656, v19);
          v5 = v23;
          v7 = v20;
          v6 = v21;
          if (v23)
          {
            goto LABEL_2;
          }

LABEL_10:
          ;
        }

        while (v7 && v6 < sub_4D1DC0(v7));
      }
    }

    else
    {
      v13 = sub_4D1F50(v5, v8);
      if (v13 != sub_4D1F50(v7, v6))
      {
        goto LABEL_16;
      }
    }
  }

  else if (v8 < v9)
  {
    goto LABEL_16;
  }

  return v4 >= *(a1 + 48);
}

void sub_5E44E0(_Unwind_Exception *a1)
{
  if (qword_2798018)
  {
    qword_2798020 = qword_2798018;
    operator delete(qword_2798018);
  }

  _Unwind_Resume(a1);
}

void sub_5E47E0(_Unwind_Exception *a1)
{
  sub_5E58CC(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E4820(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_9274F4(a1, &qword_27988B0);
  if (*(v5 + 23) < 0)
  {
    sub_325C(&v22, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v22.__r_.__value_.__r.__words[2] = v5[2];
    *&v22.__r_.__value_.__l.__data_ = v6;
  }

  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (byte_279887F >= 0)
  {
    v9 = &qword_2798868;
  }

  else
  {
    v9 = qword_2798868;
  }

  if (byte_279887F >= 0)
  {
    v10 = byte_279887F;
  }

  else
  {
    v10 = unk_2798870;
  }

  if (v10)
  {
    if (size < v10)
    {
      goto LABEL_31;
    }

    v11 = v8 + size;
    v12 = *v9;
    v13 = v8;
    while (1)
    {
      v14 = size - v10;
      if (v14 == -1)
      {
        goto LABEL_31;
      }

      v15 = memchr(v13, v12, v14 + 1);
      if (!v15)
      {
        goto LABEL_31;
      }

      v16 = v15;
      if (!memcmp(v15, v9, v10))
      {
        break;
      }

      v13 = (v16 + 1);
      size = v11 - (v16 + 1);
      if (size < v10)
      {
        goto LABEL_31;
      }
    }

    if (v16 == v11 || (v17 = v16 - v8, v16 - v8 == -1))
    {
LABEL_31:
      sub_64BC20(a3, &v22);
      sub_649C24(v21, "{ClientDest}");
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  std::string::replace(&v22, v17, v10, v19, v20);
  goto LABEL_31;
}

void sub_5E4A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_53F320(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v16);
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_5E4A4C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1] - *a2;
  v6 = 273;
  if (v5 == 24)
  {
    v6 = 270;
  }

  v7 = &qword_27988E0;
  if (v5 == 24)
  {
    v7 = &qword_27988C8;
  }

  v8 = &unk_27988F7;
  if (v5 == 24)
  {
    v8 = &algn_27988D0[15];
  }

  if (*v8 < 0)
  {
    if (v5 == 24)
    {
      v9 = algn_27988D0;
    }

    else
    {
      v9 = &unk_27988E8;
    }

    v10 = a1;
    sub_325C(v43, qword_2798058[v6], *v9);
    a1 = v10;
  }

  else
  {
    *v43 = *v7;
    v44 = v7[2];
  }

  v11 = sub_9274F4(a1, v43);
  if (*(v11 + 23) < 0)
  {
    sub_325C(&__p, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    __p.__r_.__value_.__r.__words[2] = v11[2];
    *&__p.__r_.__value_.__l.__data_ = v12;
  }

  v13 = *a2;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (byte_2798897 >= 0)
  {
    v16 = &qword_2798880;
  }

  else
  {
    v16 = qword_2798880;
  }

  if (byte_2798897 >= 0)
  {
    v17 = byte_2798897;
  }

  else
  {
    v17 = unk_2798888;
  }

  if (v17)
  {
    if (size >= v17)
    {
      v18 = p_p + size;
      v19 = *v16;
      v20 = p_p;
      do
      {
        v21 = size - v17;
        if (v21 == -1)
        {
          break;
        }

        v22 = memchr(v20, v19, v21 + 1);
        if (!v22)
        {
          break;
        }

        v23 = v22;
        if (!memcmp(v22, v16, v17))
        {
          if (v23 != v18)
          {
            v24 = v23 - p_p;
            if (v23 - p_p != -1)
            {
              goto LABEL_36;
            }
          }

          break;
        }

        v20 = (v23 + 1);
        size = v18 - (v23 + 1);
      }

      while (size >= v17);
    }
  }

  else
  {
    v24 = 0;
LABEL_36:
    v25 = *(v13 + 23);
    if (v25 >= 0)
    {
      v26 = v13;
    }

    else
    {
      v26 = *v13;
    }

    if (v25 >= 0)
    {
      v27 = *(v13 + 23);
    }

    else
    {
      v27 = *(v13 + 8);
    }

    std::string::replace(&__p, v24, v17, v26, v27);
    v13 = *a2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - v13) >> 3) >= 2)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    if (byte_27988AF >= 0)
    {
      v30 = &qword_2798898;
    }

    else
    {
      v30 = qword_2798898;
    }

    if (byte_27988AF >= 0)
    {
      v31 = byte_27988AF;
    }

    else
    {
      v31 = unk_27988A0;
    }

    if (v31)
    {
      if (v28 >= v31)
      {
        v32 = v29 + v28;
        v33 = *v30;
        v34 = v29;
        do
        {
          v35 = v28 - v31;
          if (v35 == -1)
          {
            break;
          }

          v36 = memchr(v34, v33, v35 + 1);
          if (!v36)
          {
            break;
          }

          v37 = v36;
          if (!memcmp(v36, v30, v31))
          {
            if (v37 != v32)
            {
              v38 = v37 - v29;
              if (v37 - v29 != -1)
              {
                goto LABEL_64;
              }
            }

            break;
          }

          v34 = (v37 + 1);
          v28 = v32 - (v37 + 1);
        }

        while (v28 >= v31);
      }
    }

    else
    {
      v38 = 0;
LABEL_64:
      v39 = *(v13 + 47);
      if (v39 >= 0)
      {
        v40 = (v13 + 24);
      }

      else
      {
        v40 = *(v13 + 24);
      }

      if (v39 >= 0)
      {
        v41 = *(v13 + 47);
      }

      else
      {
        v41 = *(v13 + 32);
      }

      std::string::replace(&__p, v38, v31, v40, v41);
    }
  }

  sub_64BC20(a3, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      return;
    }

LABEL_75:
    operator delete(v43[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_75;
  }
}

void sub_5E4D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_5E4DA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5E5940(a3);
  v6 = sub_9274F4(a1, &qword_27988F8);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v59, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v59.__r_.__value_.__r.__words[2] = v6[2];
    *&v59.__r_.__value_.__l.__data_ = v7;
  }

  size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v59;
  }

  else
  {
    v9 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  if (byte_279887F >= 0)
  {
    v10 = &qword_2798868;
  }

  else
  {
    v10 = qword_2798868;
  }

  if (byte_279887F >= 0)
  {
    v11 = byte_279887F;
  }

  else
  {
    v11 = unk_2798870;
  }

  if (v11)
  {
    if (size < v11)
    {
      goto LABEL_31;
    }

    v12 = v9 + size;
    v13 = *v10;
    v14 = v9;
    while (1)
    {
      v15 = size - v11;
      if (v15 == -1)
      {
        goto LABEL_31;
      }

      v16 = memchr(v14, v13, v15 + 1);
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = v16;
      if (!memcmp(v16, v10, v11))
      {
        break;
      }

      v14 = (v17 + 1);
      size = v12 - (v17 + 1);
      if (size < v11)
      {
        goto LABEL_31;
      }
    }

    if (v17 == v12 || (v18 = v17 - v9, v17 - v9 == -1))
    {
LABEL_31:
      sub_64C184(a3, &v59);
      v22 = sub_9274F4(a1, &qword_2798910);
      if (*(v22 + 23) < 0)
      {
        sub_325C(&v58, *v22, v22[1]);
      }

      else
      {
        v23 = *v22;
        v58.__r_.__value_.__r.__words[2] = v22[2];
        *&v58.__r_.__value_.__l.__data_ = v23;
      }

      v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v58;
      }

      else
      {
        v25 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v58.__r_.__value_.__l.__size_;
      }

      if (byte_279887F >= 0)
      {
        v26 = &qword_2798868;
      }

      else
      {
        v26 = qword_2798868;
      }

      if (byte_279887F >= 0)
      {
        v27 = byte_279887F;
      }

      else
      {
        v27 = unk_2798870;
      }

      if (v27)
      {
        if (v24 < v27)
        {
          goto LABEL_61;
        }

        v28 = v25 + v24;
        v29 = *v26;
        v30 = v25;
        while (1)
        {
          v31 = v24 - v27;
          if (v31 == -1)
          {
            goto LABEL_61;
          }

          v32 = memchr(v30, v29, v31 + 1);
          if (!v32)
          {
            goto LABEL_61;
          }

          v33 = v32;
          if (!memcmp(v32, v26, v27))
          {
            break;
          }

          v30 = (v33 + 1);
          v24 = v28 - (v33 + 1);
          if (v24 < v27)
          {
            goto LABEL_61;
          }
        }

        if (v33 == v28 || (v34 = v33 - v25, v33 - v25 == -1))
        {
LABEL_61:
          sub_64C184(a3 + 160, &v58);
          v38 = sub_9274F4(a1, &qword_2798928);
          if (*(v38 + 23) < 0)
          {
            sub_325C(&v57, *v38, v38[1]);
          }

          else
          {
            v39 = *v38;
            v57.__r_.__value_.__r.__words[2] = v38[2];
            *&v57.__r_.__value_.__l.__data_ = v39;
          }

          v40 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v57;
          }

          else
          {
            v41 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v57.__r_.__value_.__l.__size_;
          }

          if (byte_279887F >= 0)
          {
            v42 = &qword_2798868;
          }

          else
          {
            v42 = qword_2798868;
          }

          if (byte_279887F >= 0)
          {
            v43 = byte_279887F;
          }

          else
          {
            v43 = unk_2798870;
          }

          if (v43)
          {
            if (v40 < v43)
            {
              goto LABEL_91;
            }

            v44 = v41 + v40;
            v45 = *v42;
            v46 = v41;
            while (1)
            {
              v47 = v40 - v43;
              if (v47 == -1)
              {
                goto LABEL_91;
              }

              v48 = memchr(v46, v45, v47 + 1);
              if (!v48)
              {
                goto LABEL_91;
              }

              v49 = v48;
              if (!memcmp(v48, v42, v43))
              {
                break;
              }

              v46 = (v49 + 1);
              v40 = v44 - (v49 + 1);
              if (v40 < v43)
              {
                goto LABEL_91;
              }
            }

            if (v49 == v44 || (v50 = v49 - v41, v49 - v41 == -1))
            {
LABEL_91:
              sub_64C184(a3 + 1280, &v57);
              v55 = 11;
              strcpy(__p, "destination");
              sub_649C24(v56, "{Name}");
            }
          }

          else
          {
            v50 = 0;
          }

          v51 = *(a2 + 23);
          if (v51 >= 0)
          {
            v52 = a2;
          }

          else
          {
            v52 = *a2;
          }

          if (v51 >= 0)
          {
            v53 = *(a2 + 23);
          }

          else
          {
            v53 = *(a2 + 8);
          }

          std::string::replace(&v57, v50, v43, v52, v53);
          goto LABEL_91;
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = *(a2 + 23);
      if (v35 >= 0)
      {
        v36 = a2;
      }

      else
      {
        v36 = *a2;
      }

      if (v35 >= 0)
      {
        v37 = *(a2 + 23);
      }

      else
      {
        v37 = *(a2 + 8);
      }

      std::string::replace(&v58, v34, v27, v36, v37);
      goto LABEL_61;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  std::string::replace(&v59, v18, v11, v20, v21);
  goto LABEL_31;
}

void sub_5E5378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  sub_53F320(&a23);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 169) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v24 - 169) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v24 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v24 - 192));
  if ((*(v24 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v24 - 105) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v24 - 160));
  if ((*(v24 - 105) & 0x80000000) == 0)
  {
LABEL_6:
    sub_5E58CC(v23);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v24 - 128));
  sub_5E58CC(v23);
  _Unwind_Resume(a1);
}

void sub_5E54C8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  if (*a2 == v4)
  {

    sub_5E5940(a3);
    return;
  }

  v6 = v4 - *a2;
  v7 = 273;
  if (v6 == 24)
  {
    v7 = 270;
  }

  v8 = &qword_27988E0;
  if (v6 == 24)
  {
    v8 = &qword_27988C8;
  }

  v9 = &unk_27988F7;
  if (v6 == 24)
  {
    v9 = &algn_27988D0[15];
  }

  if (*v9 < 0)
  {
    if (v6 == 24)
    {
      v10 = algn_27988D0;
    }

    else
    {
      v10 = &unk_27988E8;
    }

    v11 = a1;
    sub_325C(v46, qword_2798058[v7], *v10);
    a1 = v11;
  }

  else
  {
    *v46 = *v8;
    v47 = v8[2];
  }

  v12 = sub_9274F4(a1, v46);
  if (*(v12 + 23) < 0)
  {
    sub_325C(&__p, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    __p.__r_.__value_.__r.__words[2] = v12[2];
    *&__p.__r_.__value_.__l.__data_ = v13;
  }

  v14 = *a2;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (byte_2798897 >= 0)
  {
    v17 = &qword_2798880;
  }

  else
  {
    v17 = qword_2798880;
  }

  if (byte_2798897 >= 0)
  {
    v18 = byte_2798897;
  }

  else
  {
    v18 = unk_2798888;
  }

  if (v18)
  {
    if (size >= v18)
    {
      v19 = p_p + size;
      v20 = *v17;
      v21 = p_p;
      do
      {
        v22 = size - v18;
        if (v22 == -1)
        {
          break;
        }

        v23 = memchr(v21, v20, v22 + 1);
        if (!v23)
        {
          break;
        }

        v24 = v23;
        if (!memcmp(v23, v17, v18))
        {
          if (v24 != v19)
          {
            v25 = v24 - p_p;
            if (v24 - p_p != -1)
            {
              goto LABEL_40;
            }
          }

          break;
        }

        v21 = (v24 + 1);
        size = v19 - (v24 + 1);
      }

      while (size >= v18);
    }
  }

  else
  {
    v25 = 0;
LABEL_40:
    v26 = *(v14 + 23);
    if (v26 >= 0)
    {
      v27 = v14;
    }

    else
    {
      v27 = *v14;
    }

    if (v26 >= 0)
    {
      v28 = *(v14 + 23);
    }

    else
    {
      v28 = *(v14 + 8);
    }

    std::string::replace(&__p, v25, v18, v27, v28);
    v14 = *a2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - v14) >> 3) >= 2)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__l.__size_;
    }

    if (byte_27988AF >= 0)
    {
      v31 = &qword_2798898;
    }

    else
    {
      v31 = qword_2798898;
    }

    if (byte_27988AF >= 0)
    {
      v32 = byte_27988AF;
    }

    else
    {
      v32 = unk_27988A0;
    }

    if (v32)
    {
      if (v29 >= v32)
      {
        v33 = v30 + v29;
        v34 = *v31;
        v35 = v30;
        do
        {
          v36 = v29 - v32;
          if (v36 == -1)
          {
            break;
          }

          v37 = memchr(v35, v34, v36 + 1);
          if (!v37)
          {
            break;
          }

          v38 = v37;
          if (!memcmp(v37, v31, v32))
          {
            if (v38 != v33)
            {
              v39 = v38 - v30;
              if (v38 - v30 != -1)
              {
                goto LABEL_68;
              }
            }

            break;
          }

          v35 = (v38 + 1);
          v29 = v33 - (v38 + 1);
        }

        while (v29 >= v32);
      }
    }

    else
    {
      v39 = 0;
LABEL_68:
      v40 = *(v14 + 47);
      if (v40 >= 0)
      {
        v41 = (v14 + 24);
      }

      else
      {
        v41 = *(v14 + 24);
      }

      if (v40 >= 0)
      {
        v42 = *(v14 + 47);
      }

      else
      {
        v42 = *(v14 + 32);
      }

      std::string::replace(&__p, v39, v32, v41, v42);
    }
  }

  sub_5E5940(a3);
  v43 = *(a3 + 1128);
  if (v43 >= *(a3 + 1136))
  {
    *(a3 + 1128) = sub_5C416C(a3 + 1120, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(*(a3 + 1128), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = *&__p.__r_.__value_.__l.__data_;
      *(v43 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v43 = v44;
    }

    *(a3 + 1128) = v43 + 24;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_83:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v47) < 0)
      {
        goto LABEL_84;
      }

      return;
    }
  }

  if (SHIBYTE(v47) < 0)
  {
LABEL_84:
    operator delete(v46[0]);
  }
}

void sub_5E5864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 1128) = v22;
  sub_5E58CC(v21);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

uint64_t sub_5E58CC(uint64_t a1)
{
  sub_53A868(a1 + 1280);
  sub_53A868(a1 + 1120);
  sub_53A868(a1 + 960);
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

uint64_t sub_5E5940(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_64B998(a1 + 480);
  sub_64B998(a1 + 640);
  sub_64B998(a1 + 800);
  sub_64B998(a1 + 960);
  sub_64B998(a1 + 1120);
  sub_64B998(a1 + 1280);
  return a1;
}

void sub_5E59A8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1120);
  sub_53A868(v1 + 960);
  sub_53A868(v1 + 800);
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E5A1C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E88F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
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
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_5E8B10(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 7416);
  v6 = *(a2 + 7424);
  if (v5 != v6)
  {
    while (!sub_38F51C(v5, 0) || *(v5 + 96) != 2)
    {
      v5 += 1120;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = *(a2 + 7424);
  }

  if (v6 == v5)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v8 = sub_3AF6B4(a1);
  sub_38F018(v5, &v67);
  sub_38F270(v5, &v62);
  v9 = v71 - v70 - 1;
  if (v71 == v70 || v65 == v66)
  {
    if ((v70 == v71) != (v65 == v66))
    {
      v13 = v67;
      v12 = v68;
      if (!*v67)
      {
        v14 = *(&v67 + 1);
        do
        {
          v13 += 2;
          *&v67 = v13;
          if (v14 < v9)
          {
            while (v13 == v70[v14])
            {
              *(&v67 + 1) = v14 + 1;
              v13 = v68[v14 + 1];
              *&v67 = v13;
              if (v9 == ++v14)
              {
                v14 = v71 - v70 - 1;
                break;
              }
            }
          }
        }

        while (!*v13);
      }
    }

    else
    {
      v12 = v68;
    }
  }

  else
  {
    v11 = *(&v67 + 1);
    v10 = v67;
    v12 = v68;
    if (v67 != v62)
    {
      do
      {
        if (*v10)
        {
          break;
        }

        v10 += 2;
        *&v67 = v10;
        if (v11 < v9)
        {
          while (v10 == v70[v11])
          {
            *(&v67 + 1) = v11 + 1;
            v10 = v68[v11 + 1];
            *&v67 = v10;
            if (v9 == ++v11)
            {
              v11 = v71 - v70 - 1;
              break;
            }
          }
        }
      }

      while (__PAIR128__(v11, v10) != v62);
    }
  }

  v73 = v67;
  v75 = v69;
  v68 = 0;
  v69 = 0uLL;
  v74 = v12;
  v76 = v70;
  v77 = v71;
  v78 = v72;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    *&v69 = v68;
    operator delete(v68);
  }

  sub_38F270(v5, v48);
  if (v76 == v77 || v52 == v53)
  {
    v15 = (v76 == v77) == (v52 == v53);
    if (!v52)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (*(&v73 + 1) == v48[1])
  {
    v15 = v73 == v48[0];
    if (!v52)
    {
      goto LABEL_45;
    }

LABEL_44:
    v53 = v52;
    operator delete(v52);
    goto LABEL_45;
  }

  v15 = 0;
  if (v52)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v15)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_81:
      if ((*(v5 + 127) & 0x80000000) == 0)
      {
        v34 = *(v5 + 104);
        *(a3 + 16) = *(v5 + 120);
        *a3 = v34;
        v35 = v76;
        if (!v76)
        {
          goto LABEL_121;
        }

LABEL_120:
        operator delete(v35);
        goto LABEL_121;
      }

      sub_325C(a3, *(v5 + 104), *(v5 + 112));
LABEL_119:
      v35 = v76;
      if (!v76)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    sub_19594F8(v48);
    sub_4A5C(v48, "found incident with no valid geo id", 35);
    if ((v58 & 0x10) != 0)
    {
      v32 = v57;
      if (v57 < v54)
      {
        v57 = v54;
        v32 = v54;
      }

      v33 = v53;
      v16 = (v32 - v53);
      if ((v32 - v53) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_125;
      }
    }

    else
    {
      if ((v58 & 8) == 0)
      {
        v16 = 0;
        v43 = 0;
LABEL_76:
        *(&__dst + v16) = 0;
        sub_7E854(&__dst, 1u);
        if (v43 < 0)
        {
          operator delete(__dst);
        }

        if (v56 < 0)
        {
          operator delete(v55);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_81;
      }

      v33 = v50;
      v16 = (v52 - v50);
      if ((v52 - v50) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_125:
        sub_3244();
      }
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v43 = v16;
    if (v16)
    {
      memmove(&__dst, v33, v16);
    }

    goto LABEL_76;
  }

  v17 = *v73;
  v18 = sub_2B51D8(v8, *v73 & 0xFFFFFFFFFFFFLL);
  v19 = (v18 - *v18);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = 4 * *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2AF704(v8 + 3896, 1u, 0);
  v23 = &v22[-*v22];
  if (*v23 < 0xBu)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 + 5);
    if (v24)
    {
      v24 += &v22[*&v22[v24]];
    }
  }

  v25 = (v24 + v21 + 4 + *(v24 + v21 + 4));
  v26 = (v25 - *v25);
  if (*v26 >= 5u && (v27 = v26[2]) != 0)
  {
    v28 = (v25 + v27);
    v29 = *v28;
    v30 = *(v28 + v29);
    if (v30 >= 0x17)
    {
      operator new();
    }

    v47 = *(v28 + v29);
    if (v30)
    {
      memcpy(&v46, v28 + v29 + 4, v30);
    }

    v31 = (&v46 + v30);
  }

  else
  {
    v47 = 0;
    v31 = &v46;
  }

  *v31 = 0;
  sub_5E94A4(v8, v17, 1, &v44);
  HIBYTE(v49) = 0;
  LOBYTE(v48[0]) = 0;
  sub_64AC90(&__dst, v48, 0);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  sub_5EB5B8(&__dst, &v46);
  sub_738918(&v44, v48);
  if (SHIBYTE(v49) < 0)
  {
    v37 = v48[1];
    if (v48[1])
    {
      v36 = v48;
      goto LABEL_98;
    }
  }

  else if (HIBYTE(v49))
  {
    v36 = v48;
LABEL_96:
    v38 = *v36;
    *(a3 + 16) = v36[2];
    *a3 = v38;
    goto LABEL_99;
  }

  v36 = (v5 + 104);
  if ((*(v5 + 127) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  v37 = *(v5 + 112);
LABEL_98:
  sub_325C(a3, *v36, v37);
LABEL_99:
  if (v61 < 0)
  {
    operator delete(v60);
    if ((v59 & 0x80000000) == 0)
    {
LABEL_101:
      if ((v56 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_114;
    }
  }

  else if ((v59 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

  operator delete(v57);
  if ((v56 & 0x80000000) == 0)
  {
LABEL_102:
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v55);
  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v51);
  if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
LABEL_104:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v48[0]);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_105:
    v39 = v44;
    if (v44)
    {
      goto LABEL_106;
    }

LABEL_118:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_110;
  }

LABEL_117:
  operator delete(__dst);
  v39 = v44;
  if (!v44)
  {
    goto LABEL_118;
  }

LABEL_106:
  v40 = v45;
  v41 = v39;
  if (v45 != v39)
  {
    do
    {
      v40 = sub_310F30(v40 - 144);
    }

    while (v40 != v39);
    v41 = v44;
  }

  v45 = v39;
  operator delete(v41);
  if ((v47 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_110:
  operator delete(v46);
  v35 = v76;
  if (v76)
  {
    goto LABEL_120;
  }

LABEL_121:
  if (v74)
  {
    operator delete(v74);
  }
}

void sub_5E937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_3E5388(&a28);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5E9738(&a19);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_334D18((v33 - 144));
  _Unwind_Resume(a1);
}

void sub_5E94A4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void **a4@<X8>)
{
  v8 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  if (*v9 < 0x1Fu || (v10 = v9[15]) == 0 || (v11 = *(v8 + v10), v11 == -1))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v12 = sub_31DF78(a1, a2);
    sub_5E9E60(a1, v12, v11, a3, a4);
    if (*a4 != a4[1])
    {
      return;
    }
  }

  v13 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v14 = (v13 - *v13);
  if (*v14 >= 0x2Fu)
  {
    v15 = v14[23];
    if (v15)
    {
      if (*(v13 + v15) == 44)
      {
        v16 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
        v17 = (v16 - *v16);
        v18 = *v17;
        if (v18 < 0x5F)
        {
          LODWORD(v19) = 0;
          LODWORD(v20) = 0;
        }

        else
        {
          v19 = v17[47];
          if (v17[47])
          {
            LODWORD(v19) = *(v16 + v19 + *(v16 + v19));
          }

          if (v18 < 0x61)
          {
            if (!v19)
            {
              return;
            }

LABEL_19:
            sub_31E068(a1, a2 & 0xFFFFFFFFFFFFLL, 8, &v28);
            if ((a2 & 0xFF000000000000) != 0)
            {
              sub_5E9D10(a1, v29, v28, 1, &v26);
              v21 = *a4;
              if (!*a4)
              {
                goto LABEL_31;
              }

              v22 = a4[1];
              v23 = *a4;
              if (v22 == v21)
              {
                goto LABEL_30;
              }

              do
              {
                v22 = sub_310F30(v22 - 144);
              }

              while (v22 != v21);
            }

            else
            {
              sub_5E9BBC(a1, v28, v29, 1, &v26);
              v21 = *a4;
              if (!*a4)
              {
                goto LABEL_31;
              }

              v24 = a4[1];
              v23 = *a4;
              if (v24 == v21)
              {
LABEL_30:
                a4[1] = v21;
                operator delete(v23);
                a4[1] = 0;
LABEL_31:
                *a4 = v26;
                v25 = v28;
                a4[2] = v27;
                if (v25)
                {
                  v29 = v25;
                  operator delete(v25);
                }

                return;
              }

              do
              {
                v24 = sub_310F30(v24 - 144);
              }

              while (v24 != v21);
            }

            v23 = *a4;
            goto LABEL_30;
          }

          v20 = v17[48];
          if (v20)
          {
            if (!(*(v16 + v20 + *(v16 + v20)) + v19))
            {
              return;
            }

            goto LABEL_19;
          }
        }

        if (!(v20 + v19))
        {
          return;
        }

        goto LABEL_19;
      }
    }
  }
}