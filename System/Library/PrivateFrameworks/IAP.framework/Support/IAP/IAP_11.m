uint64_t sub_100099DA0(uint64_t result, int a2)
{
  if (result && (v2 = result, (result & 7) == 0) && (qword_10012C768 ? (v3 = (qword_10012C768 & 7) == 0) : (v3 = 0), v3 && (pthread_mutex_lock((qword_10012C768 + 1224)), result = sub_1000989C8(v2, a2), qword_10012C768) && (qword_10012C768 & 7) == 0))
  {
    v5 = result;
    pthread_mutex_unlock((qword_10012C768 + 1224));
    return v5;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100099E28(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_74;
  }

  if (*(a1 + 8))
  {
    v4 = sub_100065198(a1);
    if (!v4 || (v4 & 7) != 0)
    {
      goto LABEL_74;
    }

    if (sub_100094BFC(v4, *(a1 + 8)))
    {
      v5 = *(a1 + 8);
      if (v5 && (v5 & 7) == 0)
      {
        if (sub_10005ACA0(v5))
        {
          return 89;
        }

        if (a2 && (a2 & 7) == 0)
        {
          v7 = *(a2 + 126);
          v14 = 0;
          if (sub_100097578(&v14, *(a1 + 8)))
          {
            goto LABEL_24;
          }

          if (v14 >= 2u)
          {
            goto LABEL_75;
          }

          if ((v14 & 1) == 0)
          {
            goto LABEL_24;
          }

          v7 = *(a2 + 126);
          v8 = sub_100048620();
          if (v8)
          {
            if ((v8 & 7) == 0)
            {
              (*(*v8 + 160))(v8, 3600000);
              v9 = sub_100048620();
              if (v9)
              {
                if ((v9 & 7) == 0)
                {
                  (*(*v9 + 168))(v9);
                  if (v7 <= 0x4F)
                  {
                    switch(v7)
                    {
                      case 2u:
                        v10 = sub_10009A59C(a1, a2);
                        v7 = 2;
                        goto LABEL_25;
                      case 4u:
                        v10 = sub_10009A77C(a1, a2);
                        v7 = 4;
                        goto LABEL_25;
                      case 5u:
                        v10 = sub_10009A984(a1, a2);
                        v7 = 5;
                        goto LABEL_25;
                      case 7u:
                        v10 = sub_10009AC98(a1, a2);
                        v7 = 7;
                        goto LABEL_25;
                      case 9u:
                        v10 = sub_10009AF18(a1, a2);
                        v7 = 9;
                        goto LABEL_25;
                      case 0xBu:
                        v10 = sub_10009AFDC(a1, a2);
                        v7 = 11;
                        goto LABEL_25;
                      case 0xCu:
                        sub_10009B118(a1, a2);
                        if (!*(a2 + 8))
                        {
                          sub_1000B9034(a2);
                          return 2;
                        }

                        v10 = v13;
                        v7 = 12;
                        break;
                      case 0xEu:
                        v10 = sub_100065838(a1);
                        v7 = 14;
                        goto LABEL_25;
                      case 0x10u:
                        v10 = sub_10009BD68(a1, a2);
                        result = 2;
                        if (!v10 || v10 == 6)
                        {
                          return result;
                        }

                        v7 = 16;
                        goto LABEL_25;
                      case 0x12u:
                        v10 = sub_10009BE54(a1, a2);
                        v7 = 18;
                        goto LABEL_25;
                      case 0x14u:
                        v10 = sub_10009BEF4(a1, a2);
                        v7 = 20;
                        goto LABEL_25;
                      case 0x16u:
                      case 0x17u:
                      case 0x18u:
                      case 0x1Au:
                      case 0x38u:
                      case 0x3Bu:
                        operator new();
                      case 0x1Cu:
                        v10 = sub_10009C010(a1, a2);
                        v7 = 28;
                        goto LABEL_25;
                      case 0x1Eu:
                        v10 = sub_10009C2C4(a1, a2);
                        v7 = 30;
                        goto LABEL_25;
                      case 0x20u:
                        v10 = sub_10009C384(a1, a2);
                        v7 = 32;
                        goto LABEL_25;
                      case 0x22u:
                        v10 = sub_10009C5F8(a1, a2);
                        v7 = 34;
                        goto LABEL_25;
                      case 0x24u:
                        v10 = sub_10009C86C(a1, a2);
                        v7 = 36;
                        goto LABEL_25;
                      case 0x26u:
                        v10 = sub_10009CAE0(a1, a2);
                        v7 = 38;
                        goto LABEL_25;
                      case 0x28u:
                        v10 = sub_10009CBB4(a1, a2);
                        v7 = 40;
                        goto LABEL_25;
                      case 0x29u:
                        v10 = sub_10009CC54(a1, a2);
                        v7 = 41;
                        goto LABEL_25;
                      case 0x2Au:
                        v10 = sub_10009D36C(a1, a2);
                        v7 = 42;
                        goto LABEL_25;
                      case 0x2Cu:
                        v10 = sub_10009D528(a1, a2);
                        v7 = 44;
                        goto LABEL_25;
                      case 0x2Eu:
                        v10 = sub_10009D5EC(a1, a2);
                        v7 = 46;
                        goto LABEL_25;
                      case 0x2Fu:
                        v10 = sub_10009D720(a1, a2);
                        v7 = 47;
                        goto LABEL_25;
                      case 0x31u:
                        v10 = sub_10009D7E4(a1, a2);
                        v7 = 49;
                        goto LABEL_25;
                      case 0x32u:
                        v10 = sub_10009D918(a1, a2);
                        v7 = 50;
                        goto LABEL_25;
                      case 0x33u:
                        v10 = sub_10009DB40(a1, a2);
                        v7 = 51;
                        goto LABEL_25;
                      case 0x35u:
                        v10 = sub_10009DC74(a1, a2);
                        v7 = 53;
                        goto LABEL_25;
                      case 0x37u:
                        v10 = sub_10009DD38(a1, a2);
                        v7 = 55;
                        goto LABEL_25;
                      case 0x39u:
                        v10 = sub_10009E104(a1, a2);
                        v7 = 57;
                        goto LABEL_25;
                      case 0x3Cu:
                      case 0x3Eu:
                      case 0x40u:
                      case 0x42u:
                        operator new();
                      case 0x44u:
                        v10 = sub_100067CD8(a1, a2);
                        v7 = 68;
                        goto LABEL_25;
                      case 0x45u:
                        v10 = sub_1000A29BC(a1, a2);
                        v7 = 69;
                        goto LABEL_25;
                      case 0x47u:
                        v10 = sub_100067F74(a1, a2);
                        v7 = 71;
                        goto LABEL_25;
                      case 0x48u:
                        v10 = sub_1000A2BEC(a1, a2);
                        v7 = 72;
                        goto LABEL_25;
                      case 0x4Au:
                        v10 = sub_10009E26C(a1, a2);
                        v7 = 74;
                        goto LABEL_25;
                      case 0x4Bu:
                        v10 = sub_10009E63C(a1, a2);
                        v7 = 75;
                        goto LABEL_25;
                      case 0x4Cu:
                        v10 = sub_10009E8A4(a1, a2);
                        v7 = 76;
                        goto LABEL_25;
                      case 0x4Eu:
                        v10 = sub_10009EA30(a1, a2);
                        result = 2;
                        if (!v10 || v10 == 6)
                        {
                          return result;
                        }

                        v7 = 78;
                        goto LABEL_25;
                      default:
                        v10 = 4;
                        sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoRemoteUI::ProcessCmd Unknown CmdID: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 1436, v7);
                        goto LABEL_25;
                    }

                    goto LABEL_25;
                  }

LABEL_24:
                  v10 = 4;
LABEL_25:
                  if (*(a2 + 126) != v7)
                  {
                    return sub_10009EB44(a1, a2, 0, 1u);
                  }

                  if (v10 <= 0x1F)
                  {
                    v11 = *(a2 + 8);
                    v12 = *(a2 + 68);
                    sub_1000B7854(a2);
                    return sub_10009EB44(a1, a2, 0, 1u);
                  }

LABEL_75:
                  __break(0x550Au);
                  JUMPOUT(0x10009A468);
                }
              }
            }
          }
        }
      }

LABEL_74:
      __break(0x5516u);
      goto LABEL_75;
    }
  }

  return 89;
}

uint64_t sub_10009A59C(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  v5 = *(a1 + 1200);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_22;
  }

  v6 = (*(*v5 + 384))(v5);
  v12 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  if ((v6 & 7) != 0)
  {
    goto LABEL_22;
  }

  if (!(*(*v6 + 16))(v6))
  {
LABEL_16:
    v4 = 2;
LABEL_20:
    sub_1000698F8(&v12);
    return v4;
  }

  v8 = (*(*v7 + 368))(v7);
  if (v8)
  {
    v9 = *(a1 + 1200);
    if (v9 && (v9 & 7) == 0)
    {
      result = (*(*v9 + 208))(v9);
      goto LABEL_18;
    }

LABEL_22:
    __break(0x5516u);
  }

  result = 0xFFFFFFFFLL;
LABEL_18:
  v11 = *(a2 + 8);
  v14 = -1431655766;
  v13 = bswap32(result);
  if (&v13 < 0xFFFFFFFFFFFFFFFCLL)
  {
    v14 = bswap32(v8);
    sub_1000B7DB4(a2, v11, 0, 4, 3, *(a2 + 68), &v13, 8u);
    v4 = 0;
    goto LABEL_20;
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10009A77C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_26;
  }

  if (*(a2 + 128) != 4)
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  if ((*(*result + 464))(result))
  {
    return 2;
  }

  result = *(v2 + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = (*(*result + 384))(result);
  v8 = result;
  if (!result)
  {
    goto LABEL_23;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (!(*(*result + 16))(result))
  {
    goto LABEL_23;
  }

  result = (*(*v5 + 368))(v5);
  if (!result)
  {
    goto LABEL_23;
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
LABEL_26:
    __break(0x5516u);
    goto LABEL_27;
  }

  if (bswap32(*v6) >= result)
  {
LABEL_23:
    v4 = 2;
    goto LABEL_24;
  }

  v7 = (*(*v5 + 376))(v5);
  result = *(v2 + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (v7 < 0xFFFFFC18)
  {
    (*(*result + 344))(result, v7 + 1000);
    v4 = 0;
LABEL_24:
    sub_1000698F8(&v8);
    return v4;
  }

LABEL_27:
  __break(0x5500u);
  return result;
}

uint64_t sub_10009A984(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_37;
  }

  if (*(a2 + 128) != 4)
  {
    return 4;
  }

  v4 = *(a1 + 1200);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_37;
  }

  if ((*(*v4 + 464))(v4))
  {
    return 2;
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_37;
  }

  v7 = *v6;
  v8 = *(a1 + 1200);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_37;
  }

  v9 = (*(*v8 + 384))(v8);
  v23 = v9;
  if (!v9)
  {
LABEL_22:
    v5 = 2;
LABEL_23:
    sub_1000698F8(&v23);
    return v5;
  }

  v10 = v9;
  if ((v9 & 7) != 0)
  {
    goto LABEL_37;
  }

  if (!(*(*v9 + 16))(v9))
  {
    goto LABEL_22;
  }

  v11 = bswap32(v7);
  v12 = (*(*v10 + 368))(v10);
  if (v11 >= v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = (*(*v10 + 376))(v10, v11);
  v15 = *v10;
  v16 = v11 + 1 >= v13 ? (*(v15 + 128))(v10) : (*(v15 + 376))(v10);
  v17 = v16;
  if (v14 > v16)
  {
    goto LABEL_22;
  }

  v19 = *(a1 + 1200);
  if (!v19 || (v19 & 7) != 0)
  {
LABEL_37:
    __break(0x5516u);
  }

  result = (*(*v19 + 408))(v19);
  v20 = result - v14;
  if (result > v17 || result < v14)
  {
    v20 = 0;
  }

  v25 = -1431655766;
  if (v17 < v14)
  {
    __break(0x5515u);
  }

  else
  {
    v24 = bswap32(v17 - v14);
    if (&v24 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v25 = bswap32(v20);
      v22 = *(a2 + 8);
      if (v22)
      {
        sub_1000B7DB4(a2, v22, 0, 4, 6, *(a2 + 68), &v24, 8u);
        v5 = 0;
        goto LABEL_23;
      }

      __break(0x5518u);
      goto LABEL_37;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10009AC98(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_24;
  }

  if (*(a2 + 128) != 4)
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a2 + 8);
  result = (*(*result + 384))(result);
  v10 = result;
  if (!result)
  {
    v5 = 2;
    goto LABEL_22;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_24;
  }

  result = (*(*result + 16))(result);
  v5 = 2;
  if (!v3 || !result)
  {
LABEL_22:
    sub_1000698F8(&v10);
    return v5;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = bswap32(*v6);
    if (v7 >= (*(*v4 + 368))(v4))
    {
      v5 = 4;
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v9 = 0;
      if ((*(*v4 + 384))(v4, v7, __p))
      {
        result = sub_1000D6C34(v3, 4);
        if (result < 0x10000)
        {
          operator new[]();
        }

        goto LABEL_25;
      }

      v5 = 2;
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_22;
  }

LABEL_24:
  __break(0x5516u);
LABEL_25:
  __break(0x5507u);
  __break(0x5500u);
  return result;
}

uint64_t sub_10009AF18(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v3 = *(a2 + 8);
  result = (*(*result + 200))(result);
  if (result >= 0x100)
  {
LABEL_13:
    __break(0x5507u);
    return result;
  }

  v4 = result;
  sub_1000B7DB4(a2, v3, 0, 4, 10, *(a2 + 68), &v4, 1u);
  return 0;
}

uint64_t sub_10009AFDC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_24;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a2 + 128);
  v4 = *(a2 + 24);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      return 4;
    }

    if (v4)
    {
      if (*v4 - 255 <= 0xFFFFFF02)
      {
        result = *(result + 1200);
        if (result && (result & 7) == 0)
        {
          v5 = *(*result + 192);
LABEL_21:
          v5();
          return 0;
        }

        goto LABEL_24;
      }

      return 4;
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  if (!v4)
  {
    goto LABEL_24;
  }

  v6 = *v4;
  if ((v6 - 255) > 0xFFFFFF02)
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_24;
  }

  result = (*(*result + 200))(result);
  *(v2 + 1393) = 0;
  if (result < 0x100)
  {
    if (result == v6)
    {
      return 0;
    }

    result = *(v2 + 1200);
    if (result && (result & 7) == 0)
    {
      v5 = *(*result + 192);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_25:
  __break(0x550Au);
  return result;
}

void sub_10009B118(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_116;
  }

  if (*(a2 + 128) != 7)
  {
    return;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_116;
  }

  if (v3 == -1)
  {
    goto LABEL_117;
  }

  v4 = *(a2 + 8);
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(a1 + 1200);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_116;
  }

  v8 = (*(*v7 + 392))(v7);
  if (v5 > 8)
  {
    return;
  }

  v9 = bswap32(v6);
  if (v9 >= v8)
  {
    return;
  }

  v10 = *(a1 + 1200);
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_116;
  }

  v11 = (*(*v10 + 464))(v10);
  if (!v4 || (v11 & 1) != 0)
  {
    return;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__n = v12;
  v52 = v12;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  __p = 0;
  v55 = 0;
  v56 = 0;
  v13 = *(a1 + 1200);
  if (!v13 || (v13 & 7) != 0)
  {
    goto LABEL_116;
  }

  v14 = (*(*v13 + 400))(v13, v9);
  v50 = v14;
  if (!v14)
  {
    goto LABEL_114;
  }

  v15 = v14;
  if ((v14 & 7) != 0)
  {
    goto LABEL_116;
  }

  if (!(*(*v14 + 16))(v14))
  {
    goto LABEL_114;
  }

  HIBYTE(__n[0]) = v5;
  BYTE6(__n[0]) = 1;
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        (*(*v15 + 64))(v15, &__p);
        goto LABEL_63;
      }

      if (v5 == 7)
      {
        sub_100066D40(a1, v15, __n + 7, 0x21u, __n + 6);
        if (v16 >= 0x20)
        {
LABEL_121:
          __break(0x550Au);
          return;
        }

        if (!v16)
        {
          goto LABEL_112;
        }

        goto LABEL_114;
      }

      if ((*(*v15 + 280))(v15))
      {
        goto LABEL_61;
      }

      goto LABEL_114;
    }

    if (v5 != 4)
    {
      (*(*v15 + 56))(v15, &__p);
LABEL_63:
      v31 = HIBYTE(v56);
      if (v56 < 0)
      {
        v31 = v55;
      }

      if (v31)
      {
        goto LABEL_112;
      }

      v32 = BYTE6(__n[0]);
      if (BYTE6(__n[0]) != 255)
      {
        ++BYTE6(__n[0]);
        if (!__CFADD__(__n + 7, v32))
        {
          *(__n + v32 + 7) = 0;
          goto LABEL_112;
        }

LABEL_119:
        __break(0x5513u);
        goto LABEL_120;
      }

      goto LABEL_118;
    }

    v23 = *(a1 + 1200);
    if (v23 && (v23 & 7) == 0)
    {
      v24 = (*(*v23 + 376))(v23);
      BYTE6(__n[0]) = 2;
      if ((__n + 7) == -1)
      {
        goto LABEL_119;
      }

      LOWORD(__n[1]) = 0;
      BYTE6(__n[0]) = 4;
      BYTE2(__n[1]) = 0;
      if (v24 == v9)
      {
        if ((*(*v15 + 256))(v15))
        {
          (*(*v15 + 96))(v15, &__p);
          goto LABEL_112;
        }

        v42 = BYTE6(__n[0]);
        if (BYTE6(__n[0]) == 255)
        {
          goto LABEL_118;
        }

        ++BYTE6(__n[0]);
      }

      else
      {
        BYTE6(__n[0]) = 5;
        v42 = 4;
      }

      if (~(__n + 7) < v42)
      {
        goto LABEL_119;
      }

      *(__n + v42 + 7) = 0;
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        LOBYTE(__p) = 0;
        HIBYTE(v56) = 0;
        goto LABEL_112;
      }

      if (__p)
      {
        *__p = 0;
        v55 = 0;
        goto LABEL_112;
      }
    }

LABEL_116:
    __break(0x5516u);
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      (*(*v15 + 72))(v15, &__p);
      v25 = BYTE6(__n[0]);
      if (BYTE6(__n[0]) != 255)
      {
        v26 = BYTE6(__n[0]) + 1;
        ++BYTE6(__n[0]);
        v27 = ~(__n + 7);
        if (~(__n + 7) < v25)
        {
          goto LABEL_119;
        }

        *(__n + v25 + 7) = 0;
        v28 = v25 + 2;
        BYTE6(__n[0]) = v25 + 2;
        if (v27 < v26)
        {
          goto LABEL_119;
        }

        *(__n + v26 + 7) = 0;
        v29 = v25 + 3;
        BYTE6(__n[0]) = v25 + 3;
        if (v27 < v28)
        {
          goto LABEL_119;
        }

        *(__n + v28 + 7) = 0;
        v30 = HIBYTE(v56);
        if (v56 < 0)
        {
          v30 = v55;
        }

        if (v30)
        {
          goto LABEL_112;
        }

        BYTE6(__n[0]) = v25 + 4;
        if (v27 >= v29)
        {
          *(__n + v29 + 7) = 0;
          goto LABEL_112;
        }

        goto LABEL_119;
      }

LABEL_118:
      __break(0x5507u);
      goto LABEL_119;
    }

    v49 = 0xAAAAAAAAAAAAAAAALL;
    v48.tm_zone = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v48.tm_mon = v19;
    *&v48.tm_isdst = v19;
    *&v48.tm_sec = v19;
    if ((*(*v15 + 224))(v15, &v49))
    {
      localtime_r(&v49, &v48);
      v20 = LOBYTE(v48.tm_mon) + 1;
      if (__OFADD__(v48.tm_mon, 1))
      {
        goto LABEL_117;
      }

      ++v48.tm_mon;
      v21 = v48.tm_year + 1900;
      if (__OFADD__(v48.tm_year, 1900))
      {
        goto LABEL_117;
      }

      v48.tm_year += 1900;
      tm_wday = v48.tm_wday;
      if (!v48.tm_wday)
      {
        tm_wday = 7;
        v48.tm_wday = 7;
      }
    }

    else
    {
      tm_wday = 0;
      v21 = 0;
      v20 = 0;
      memset(&v48, 0, sizeof(v48));
    }

    v33 = BYTE6(__n[0]);
    if (BYTE6(__n[0]) == 255)
    {
      goto LABEL_118;
    }

    v34 = BYTE6(__n[0]) + 1;
    ++BYTE6(__n[0]);
    if (v33 <= 0x20)
    {
      v35 = ~(__n + 7);
      if (~(__n + 7) < v33)
      {
        goto LABEL_119;
      }

      *(__n + v33 + 7) = v48.tm_sec;
      v36 = v33 + 2;
      BYTE6(__n[0]) = v33 + 2;
      if (v33 != 32)
      {
        if (v35 < v34)
        {
          goto LABEL_119;
        }

        *(__n + v34 + 7) = v48.tm_min;
        v37 = v33 + 3;
        BYTE6(__n[0]) = v33 + 3;
        if (v33 <= 0x1E)
        {
          if (v35 < v36)
          {
            goto LABEL_119;
          }

          *(__n + v36 + 7) = v48.tm_hour;
          v38 = v33 + 4;
          BYTE6(__n[0]) = v33 + 4;
          if (v33 != 30)
          {
            if (v35 < v37)
            {
              goto LABEL_119;
            }

            *(__n + v37 + 7) = v48.tm_mday;
            v39 = v33 + 5;
            BYTE6(__n[0]) = v33 + 5;
            if (v33 <= 0x1C)
            {
              if (v35 < v38)
              {
                goto LABEL_119;
              }

              *(__n + v38 + 7) = v20;
              if (HIWORD(v21))
              {
                goto LABEL_118;
              }

              v40 = (__n + v39 + 7);
              if (__CFADD__(__n + 7, v39))
              {
                goto LABEL_117;
              }

              if (!v40)
              {
                goto LABEL_116;
              }

              *v40 = bswap32(v21) >> 16;
              v41 = v33 + 7;
              BYTE6(__n[0]) = v33 + 7;
              if (tm_wday > 0xFF)
              {
                goto LABEL_118;
              }

              BYTE6(__n[0]) = v33 + 8;
              if (v33 <= 0x19)
              {
                if (v41 > v35)
                {
                  goto LABEL_119;
                }

                *(__n + v41 + 7) = tm_wday;
                goto LABEL_112;
              }
            }
          }
        }
      }
    }

LABEL_120:
    __break(0x5512u);
    goto LABEL_121;
  }

  if (!v5)
  {
    v17 = sub_10009EC60(a1, 0xCu, v15);
    if ((__n + 7) != -1)
    {
      LODWORD(__n[1]) = bswap32(v17);
      BYTE6(__n[0]) = 5;
      v18 = (*(*v15 + 128))(v15);
      if (v18 == -1)
      {
        if (dword_10012B490)
        {
          v18 = 0;
        }

        else if (dword_10012B494)
        {
          v18 = 0x7FFFFFFF;
        }

        else if (dword_10012B498)
        {
          v18 = 300000;
        }

        else if (dword_10012B49C)
        {
          v18 = 86400000;
        }

        else if (dword_10012B4A0)
        {
          v18 = 3600000;
        }

        else
        {
          v18 = -1;
        }
      }

      v43 = BYTE6(__n[0]);
      v44 = (__n + BYTE6(__n[0]) + 7);
      if (!__CFADD__(__n + 7, BYTE6(__n[0])))
      {
        if (!v44)
        {
          goto LABEL_116;
        }

        *v44 = bswap32(v18);
        BYTE6(__n[0]) = v43 + 4;
        v45 = (*(*v15 + 368))(v15);
        if (HIWORD(v45))
        {
          goto LABEL_118;
        }

        v46 = BYTE6(__n[0]);
        v47 = (__n + BYTE6(__n[0]) + 7);
        if (!__CFADD__(__n + 7, BYTE6(__n[0])))
        {
          if (!v47)
          {
            goto LABEL_116;
          }

          *v47 = bswap32(v45) >> 16;
          if (v46 > 0xFD)
          {
            goto LABEL_118;
          }

          BYTE6(__n[0]) = v46 + 2;
LABEL_112:
          if (!(sub_1000D6C34(v4, 4) >> 16))
          {
            operator new[]();
          }

          goto LABEL_118;
        }
      }
    }

LABEL_117:
    __break(0x5500u);
    goto LABEL_118;
  }

  if ((*(*v15 + 272))(v15))
  {
LABEL_61:
    (*(*v15 + 40))(v15, &__p);
    goto LABEL_63;
  }

LABEL_114:
  sub_1000698F8(&v50);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_10009BD68(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_15;
  }

  if (*(a2 + 128) != 10)
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v3 = *(a2 + 24);
  result = (*(*result + 464))(result);
  if (result)
  {
    return 4;
  }

  if (!v3)
  {
LABEL_15:
    __break(0x5516u);
LABEL_16:
    __break(0x5500u);
    goto LABEL_17;
  }

  v4 = *v3;
  if (v3 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 2);
  if (v3 >= 0xFFFFFFFFFFFFFFFALL)
  {
    goto LABEL_16;
  }

  v6 = *(v3 + 6);
  result = sub_100066C08(v2);
  if (result >= 0x20)
  {
LABEL_17:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_10009BE54(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v2 = 3585;
  if (dword_10012B4A4)
  {
    if (&vars0 == 1)
    {
LABEL_13:
      __break(0x5513u);
      return result;
    }

    HIBYTE(v2) = 12;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  sub_1000B7DB4(a2, *(a2 + 8), 0, 4, 19, *(a2 + 68), &v2, 2u);
  return 0;
}

uint64_t sub_10009BEF4(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  memset(__p, 170, sizeof(__p));
  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
LABEL_23:
    __break(0x5500u);
    goto LABEL_24;
  }

  result = (*(*result + 88))(__p);
  v4 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    v3 = 2;
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v4 == -1)
  {
    goto LABEL_23;
  }

  if (!((v4 + 1) >> 16))
  {
    sub_1000B7DB4(a2, *(a2 + 8), 0, 4, 21, *(a2 + 68), v5, (v4 + 1));
    v3 = 0;
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      return v3;
    }

LABEL_18:
    operator delete(__p[0]);
    return v3;
  }

LABEL_24:
  __break(0x5507u);
  return result;
}

uint64_t sub_10009C010(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_36;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  v5 = *(a1 + 1200);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_36;
  }

  result = (*(*v5 + 416))(v5);
  if (result >= 4)
  {
    __break(0x550Au);
    goto LABEL_38;
  }

  v6 = result;
  if (result)
  {
    v7 = *(a1 + 1200);
    if (v7)
    {
      if ((v7 & 7) == 0)
      {
        v8 = (*(*v7 + 408))(v7);
        v9 = *(a1 + 1200);
        if (v9)
        {
          if ((v9 & 7) == 0)
          {
            v10 = (*(*v9 + 384))(v9);
            v11 = v10;
            v13 = v10;
            if (!v10)
            {
              goto LABEL_21;
            }

            if ((v10 & 7) == 0)
            {
              if (!(*(*v10 + 16))(v10))
              {
LABEL_20:
                LODWORD(v11) = 0;
                goto LABEL_21;
              }

              LODWORD(v11) = (*(*v11 + 128))(v11);
              if (v11 == -1)
              {
                if (!dword_10012B490)
                {
                  if (dword_10012B494)
                  {
                    LODWORD(v11) = 0x7FFFFFFF;
                  }

                  else if (dword_10012B498)
                  {
                    LODWORD(v11) = 300000;
                  }

                  else if (dword_10012B49C)
                  {
                    LODWORD(v11) = 86400000;
                  }

                  else if (dword_10012B4A0)
                  {
                    LODWORD(v11) = 3600000;
                  }

                  else
                  {
                    LODWORD(v11) = -1;
                  }

                  goto LABEL_21;
                }

                goto LABEL_20;
              }

LABEL_21:
              result = sub_1000698F8(&v13);
              goto LABEL_23;
            }
          }
        }
      }
    }

LABEL_36:
    __break(0x5516u);
  }

  v8 = 0;
  LODWORD(v11) = 0;
LABEL_23:
  v12 = *(a2 + 8);
  v14 = -86;
  v13 = bswap32(v11) | 0xAAAAAAAA00000000;
  if (&v13 >= 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_38:
    __break(0x5500u);
    goto LABEL_39;
  }

  HIDWORD(v13) = bswap32(v8);
  if (&v13 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_39:
    __break(0x5513u);
    return result;
  }

  v14 = v6;
  sub_1000B7DB4(a2, v12, 0, 4, 29, *(a2 + 68), &v13, 9u);
  return 0;
}

uint64_t sub_10009C2C4(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    v3 = (*(*result + 376))(result);
    v4 = *(a2 + 8);
    v5 = bswap32(v3);
    sub_1000B7DB4(a2, v4, 0, 4, 31, *(a2 + 68), &v5, 4u);
    return 0;
  }

  return result;
}

uint64_t sub_10009C384(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0 && a2 && (a2 & 7) == 0)
    {
      if (*(a2 + 128) != 4)
      {
        return 4;
      }

      v3 = *(a2 + 24);
      if (v3)
      {
        v4 = *v3;
        v5 = *(a2 + 8);
        if (!v5)
        {
          sub_1000E1D34();
        }

        result = *(result + 1200);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if ((*(*result + 464))(result))
            {
              return 4;
            }

            result = *(v2 + 1200);
            if (result)
            {
              if ((result & 7) == 0)
              {
                result = (*(*result + 400))(result, bswap32(v4));
                v6 = result;
                if (!result)
                {
LABEL_19:
                  sub_1000698F8(&v6);
                  return 4;
                }

                if ((result & 7) == 0)
                {
                  if ((*(*result + 16))(result))
                  {
                    result = sub_1000D6C34(v5, 4);
                    if (result < 0x10000)
                    {
                      operator new[]();
                    }

                    goto LABEL_23;
                  }

                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_23:
  __break(0x5507u);
  __break(0x5500u);
  return result;
}

uint64_t sub_10009C5F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0 && a2 && (a2 & 7) == 0)
    {
      if (*(a2 + 128) != 4)
      {
        return 4;
      }

      v3 = *(a2 + 24);
      if (v3)
      {
        v4 = *v3;
        v5 = *(a2 + 8);
        if (!v5)
        {
          sub_1000E1D34();
        }

        result = *(result + 1200);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if ((*(*result + 464))(result))
            {
              return 4;
            }

            result = *(v2 + 1200);
            if (result)
            {
              if ((result & 7) == 0)
              {
                result = (*(*result + 400))(result, bswap32(v4));
                v6 = result;
                if (!result)
                {
LABEL_19:
                  sub_1000698F8(&v6);
                  return 4;
                }

                if ((result & 7) == 0)
                {
                  if ((*(*result + 16))(result))
                  {
                    result = sub_1000D6C34(v5, 4);
                    if (result < 0x10000)
                    {
                      operator new[]();
                    }

                    goto LABEL_23;
                  }

                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_23:
  __break(0x5507u);
  __break(0x5500u);
  return result;
}

uint64_t sub_10009C86C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0 && a2 && (a2 & 7) == 0)
    {
      if (*(a2 + 128) != 4)
      {
        return 4;
      }

      v3 = *(a2 + 24);
      if (v3)
      {
        v4 = *v3;
        v5 = *(a2 + 8);
        if (!v5)
        {
          sub_1000E1D34();
        }

        result = *(result + 1200);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if ((*(*result + 464))(result))
            {
              return 4;
            }

            result = *(v2 + 1200);
            if (result)
            {
              if ((result & 7) == 0)
              {
                result = (*(*result + 400))(result, bswap32(v4));
                v6 = result;
                if (!result)
                {
LABEL_19:
                  sub_1000698F8(&v6);
                  return 4;
                }

                if ((result & 7) == 0)
                {
                  if ((*(*result + 16))(result))
                  {
                    result = sub_1000D6C34(v5, 4);
                    if (result < 0x10000)
                    {
                      operator new[]();
                    }

                    goto LABEL_23;
                  }

                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_23:
  __break(0x5507u);
  __break(0x5500u);
  return result;
}

uint64_t sub_10009CAE0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v3 = *(a2 + 128);
  if (v3 != 4 && v3 != 1)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (v3 == 1)
  {
    if (v4)
    {
      if (*v4)
      {
        v5 = 45;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_14;
    }

LABEL_18:
    __break(0x5516u);
    return result;
  }

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = bswap32(*v4);
  if (v5 >> 15)
  {
    return 4;
  }

LABEL_14:
  v6 = *(result + 1380);
  if (v5 == v6)
  {
    return 0;
  }

  *(result + 1380) = v5;
  v7 = v5 & ~v6;
  *(result + 1344) |= v7;
  sub_100099DA0(result, 0);
  result = 0;
  *(v2 + 1344) |= v7;
  return result;
}

uint64_t sub_10009CBB4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a2 + 128);
  result = sub_100067F34(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (v4 != 4)
  {
    return 4;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = sub_1000A0610(v2, v5, bswap32(*v6));
    if (v7 == 22)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_16:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10009CC54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_82;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_82;
  }

  if (!a2)
  {
    goto LABEL_82;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_82;
  }

  v4 = *(a1 + 1200);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_82;
  }

  v5 = *(a2 + 128);
  v6 = (*(*v4 + 384))(v4);
  v33 = v6;
  if (v5 != 1)
  {
    v15 = 4;
    goto LABEL_70;
  }

  v7 = v6;
  v8 = *(a1 + 1200);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_82;
  }

  v9 = (*(*v8 + 416))(v8);
  v10 = *(a2 + 24);
  if (!v10)
  {
    __break(0x5518u);
LABEL_82:
    __break(0x5516u);
    goto LABEL_83;
  }

  v11 = *v10;
  if (v11 > 0xF)
  {
LABEL_83:
    __break(0x550Au);
LABEL_84:
    __break(0x5515u);
    JUMPOUT(0x10009D334);
  }

  switch(*v10)
  {
    case 1:
      v12 = *(a1 + 1200);
      if (!v12 || (v12 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v12 + 296))(v12, 1, *(a2 + 8), 0))
      {
        goto LABEL_68;
      }

      sub_100069050(a1, 0, 1);
      v13 = a1;
      v14 = 0;
      goto LABEL_66;
    case 2:
      sub_100069050(a1, 7u, 1);
      v13 = a1;
      v14 = 7;
      goto LABEL_66;
    case 3:
      goto LABEL_65;
    case 4:
      goto LABEL_55;
    case 5:
      if (v9 > 3)
      {
        goto LABEL_83;
      }

      if (!v9)
      {
        goto LABEL_72;
      }

      if (*(a1 + 1412) == 5)
      {
        goto LABEL_68;
      }

      v13 = a1;
      v14 = 20;
      goto LABEL_32;
    case 6:
      if (v9 > 3)
      {
        goto LABEL_83;
      }

      if (!v9)
      {
LABEL_72:
        v15 = 4;
        goto LABEL_69;
      }

      if (*(a1 + 1412) != 6)
      {
        v13 = a1;
        v14 = 21;
LABEL_32:
        v17 = 1;
LABEL_67:
        sub_100069050(v13, v14, v17);
      }

      goto LABEL_68;
    case 7:
      sub_100069050(a1, 0x14u, 0);
      v13 = a1;
      v14 = 21;
      goto LABEL_66;
    case 8:
      if (!v7)
      {
        goto LABEL_65;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v7 + 16))(v7) || !(*(*v7 + 368))(v7))
      {
        goto LABEL_65;
      }

      v23 = *(a1 + 1200);
      if (!v23 || (v23 & 7) != 0)
      {
        goto LABEL_82;
      }

      v24 = (*(*v23 + 208))(v23);
      v25 = (*(*v7 + 368))(v7);
      if (!v25)
      {
        goto LABEL_84;
      }

      if (v24 >= v25 - 1)
      {
LABEL_65:
        sub_100069050(a1, 3u, 1);
        v13 = a1;
        v14 = 3;
      }

      else
      {
LABEL_64:
        sub_100069050(a1, 0xBu, 1);
        v13 = a1;
        v14 = 11;
      }

LABEL_66:
      v17 = 0;
      goto LABEL_67;
    case 9:
      if (!v7)
      {
        goto LABEL_55;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v7 + 16))(v7) || !(*(*v7 + 368))(v7))
      {
        goto LABEL_55;
      }

      v22 = *(a1 + 1200);
      if (!v22 || (v22 & 7) != 0)
      {
        goto LABEL_82;
      }

      if ((*(*v22 + 208))(v22))
      {
LABEL_54:
        sub_100069050(a1, 0xCu, 1);
        v13 = a1;
        v14 = 12;
      }

      else
      {
LABEL_55:
        sub_100069050(a1, 4u, 1);
        v13 = a1;
        v14 = 4;
      }

      goto LABEL_66;
    case 0xA:
      v16 = *(a1 + 1200);
      if (!v16 || (v16 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v16 + 296))(v16, 0, *(a2 + 8), 0))
      {
        goto LABEL_68;
      }

      sub_100069050(a1, 8u, 1);
      v13 = a1;
      v14 = 8;
      goto LABEL_66;
    case 0xB:
      sub_100069050(a1, 9u, 1);
      v13 = a1;
      v14 = 9;
      goto LABEL_66;
    case 0xC:
      goto LABEL_64;
    case 0xD:
      goto LABEL_54;
    case 0xE:
      v18 = *(a1 + 1200);
      if (!v18 || (v18 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v18 + 296))(v18, 0, *(a2 + 8), 0))
      {
        goto LABEL_68;
      }

      memset(&v32, 0, sizeof(v32));
      v19 = sub_10004B1AC();
      if (!v19 || (v19 & 7) != 0)
      {
        goto LABEL_82;
      }

      (*(*v19 + 304))(v19, &v32);
      if (!std::string::compare(&v32, "com.apple.podcasts") || !std::string::compare(&v32, "com.apple.iBooks"))
      {
        sub_100069050(a1, 8u, 1);
        sub_100069050(a1, 8u, 0);
        v27 = (*(*a1 + 48))(a1);
        if (v27)
        {
          v28 = v27;
          if ((v27 & 7) == 0)
          {
            sub_10005C078(v27, 1);
            v29 = sub_1000653EC(0, v28);
            if (v29)
            {
              v30 = v29;
              if ((v29 & 7) == 0)
              {
                v31 = sub_100018DC0(v28);
                sub_10007E414(v30, 1, v31);
                goto LABEL_78;
              }
            }
          }
        }

        goto LABEL_82;
      }

      v20 = *(a1 + 1200);
      if (!v20 || (v20 & 7) != 0)
      {
        goto LABEL_82;
      }

      if (!(*(*v20 + 584))(v20))
      {
        sub_1000A069C(a1, 0xFFFFFFFFLL);
        goto LABEL_78;
      }

      v21 = *(a1 + 1200);
      if (!v21 || (v21 & 7) != 0)
      {
        goto LABEL_82;
      }

      (*(*v21 + 560))(v21);
LABEL_78:
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

LABEL_68:
      v15 = 0;
LABEL_69:
      *(a1 + 1412) = v11;
LABEL_70:
      sub_1000698F8(&v33);
      return v15;
    default:
      v15 = 4;
      sub_1000DDEEC(0, 4, "%s:%d ERROR: Cmd0x0029_PlayControl invalid play control: 0x%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 3519, v11);
      goto LABEL_69;
  }
}

uint64_t sub_10009D36C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_23;
  }

  if (*(a2 + 128) != 10)
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = (*(*result + 464))(result);
  if (result)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *v4;
    if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_24;
    }

    v6 = *(v4 + 4);
    if (v4 >= 0xFFFFFFFFFFFFFFFALL)
    {
      goto LABEL_24;
    }

    v7 = *(v4 + 6);
    v8 = __CFADD__(v4, 8);
    v9 = (v4 + 8);
    if (v8)
    {
      goto LABEL_24;
    }

    v10 = *v9;
    result = *(v2 + 1200);
    if (result && (result & 7) == 0)
    {
      v11 = bswap32(v5);
      result = (*(*result + 400))(result, v11);
      v14 = result;
      if (!result)
      {
LABEL_20:
        sub_1000698F8(&v14);
        return 4;
      }

      v12 = result;
      if ((result & 7) == 0)
      {
        if ((*(*result + 16))(result))
        {
          v13 = sub_100065B04(v2, a2, 1u, v11, v12, bswap32(v6) >> 16, bswap32(v7) >> 16, bswap32(v10) >> 16);
          sub_1000698F8(&v14);
          if (v13 < 0x20)
          {
            return v13;
          }

          __break(0x550Au);
        }

        goto LABEL_20;
      }
    }
  }

LABEL_23:
  __break(0x5516u);
LABEL_24:
  __break(0x5500u);
  return result;
}

uint64_t sub_10009D528(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v3 = *(a2 + 8);
  result = (*(*result + 168))(result);
  if (result >= 0x100)
  {
LABEL_13:
    __break(0x5507u);
    return result;
  }

  v4 = result;
  sub_1000B7DB4(a2, v3, 0, 4, 45, *(a2 + 68), &v4, 1u);
  return 0;
}

uint64_t sub_10009D5EC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  v3 = *(a2 + 128);
  if ((v3 - 1) > 1)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *v4;
  if (v5 >= 3)
  {
    return 4;
  }

  if (v3 != 2)
  {
    LOWORD(result) = 0;
    v6 = 0;
    goto LABEL_19;
  }

  if (v4 == -1)
  {
LABEL_23:
    __break(0x5513u);
    goto LABEL_24;
  }

  v6 = v4[1];
  if (!v6)
  {
    LOWORD(result) = 0;
    goto LABEL_19;
  }

  if (*(result + 1395))
  {
    LOWORD(result) = *(result + 1396);
LABEL_19:
    *(v2 + 1396) = result;
    *(v2 + 1395) = v6;
    result = *(v2 + 1200);
    if (result && (result & 7) == 0)
    {
      (*(*result + 160))(result, v5);
      return 0;
    }

    goto LABEL_22;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  result = (*(*result + 168))(result);
  if (result == result)
  {
    goto LABEL_19;
  }

LABEL_24:
  __break(0x5507u);
  return result;
}

uint64_t sub_10009D720(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v3 = *(a2 + 8);
  result = (*(*result + 136))(result);
  if (result >= 0x100)
  {
LABEL_13:
    __break(0x5507u);
    return result;
  }

  v4 = result;
  sub_1000B7DB4(a2, v3, 0, 4, 48, *(a2 + 68), &v4, 1u);
  return 0;
}

uint64_t sub_10009D7E4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  v3 = *(a2 + 128);
  if ((v3 - 1) > 1)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *v4;
  if (v5 >= 3)
  {
    return 4;
  }

  if (v3 != 2)
  {
    LOWORD(result) = 0;
    v6 = 0;
    goto LABEL_19;
  }

  if (v4 == -1)
  {
LABEL_23:
    __break(0x5513u);
    goto LABEL_24;
  }

  v6 = v4[1];
  if (!v6)
  {
    LOWORD(result) = 0;
    goto LABEL_19;
  }

  if (*(result + 1398))
  {
    LOWORD(result) = *(result + 1400);
LABEL_19:
    *(v2 + 1400) = result;
    *(v2 + 1398) = v6;
    result = *(v2 + 1200);
    if (result && (result & 7) == 0)
    {
      (*(*result + 128))(result, v5);
      return 0;
    }

    goto LABEL_22;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  result = (*(*result + 136))(result);
  if (result == result)
  {
    goto LABEL_19;
  }

LABEL_24:
  __break(0x5507u);
  return result;
}

uint64_t sub_10009D918(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_41;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_41;
  }

  v3 = *(a2 + 128);
  if (v3 < 3)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_41:
    __break(0x5516u);
    goto LABEL_42;
  }

  if (v3 < 0xB || *v4)
  {
    if (*(result + 1368) < *(result + 1372))
    {

      return sub_1000A08AC(result, v3 - 2);
    }

    return 4;
  }

  if (v4 >= 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_43:
    __break(0x5513u);
    goto LABEL_44;
  }

  if (v4 >= 0xFFFFFFFFFFFFFFFDLL || (v5 = *(v4 + 2), v6 = *(v4 + 3), v4 >= 0xFFFFFFFFFFFFFFFBLL) || (v7 = *(v4 + 5), v8 = __CFADD__(v4, 7), v9 = (v4 + 7), v8))
  {
LABEL_42:
    __break(0x5500u);
    goto LABEL_43;
  }

  v10 = *v9;
  if (v5 == 3)
  {
    v12 = *(result + 1392);
    if (v12 <= 1)
    {
      goto LABEL_24;
    }

LABEL_28:
    __break(0x550Au);
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v11 = 2;
      LOBYTE(v12) = 1;
      goto LABEL_30;
    }

LABEL_29:
    LOBYTE(v12) = 0;
    v11 = 0;
    goto LABEL_30;
  }

  v12 = *(result + 1392);
  if (v12 >= 2)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v12)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:
  v17 = -1431655766;
  v18 = -1431655766;
  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_41;
  }

  (*(*result + 104))(result, &v18, &v17);
  result = 4;
  if (v7)
  {
    if (((v6 != 0) & v12) != 0)
    {
      v13 = __rev16(v6);
      if (v18 >= v13)
      {
        v14 = __rev16(v7);
        if (v17 >= v14)
        {
          v15 = bswap32(v10);
          if (v15 == (((v11 * v13 + 31) >> 3) & 0x7FFFC))
          {
            *(v2 + 1368) = 0;
            v16 = v15 * v14;
            if ((v16 & 0xFFFFFFFF00000000) == 0)
            {
              *(v2 + 1372) = v16;
              if (v3 < 0xC)
              {
                return 0;
              }

              else
              {
                return sub_1000A08AC(v2, v3 - 11);
              }
            }

LABEL_44:
            __break(0x550Cu);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009DB40(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  memset(v7, 170, 20);
  v5 = -1431655766;
  v6 = -1431655766;
  v4 = *(a1 + 1192);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
  }

  result = (*(*v4 + 104))(v4, &v6, &v5);
  if (HIWORD(v6) || (LOWORD(v7[0]) = bswap32(v6) >> 16, HIWORD(v5)))
  {
    __break(0x5507u);
  }

  else
  {
    WORD1(v7[0]) = bswap32(v5) >> 16;
    BYTE4(v7[0]) = 1;
    sub_1000B7DB4(a2, *(a2 + 8), 0, 4, 52, *(a2 + 68), v7, 5u);
    return 0;
  }

  return result;
}

uint64_t sub_10009DC74(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*(a2 + 128))
  {
    return 4;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = bswap32((*(*result + 392))(result));
    sub_1000B7DB4(a2, v3, 0, 4, 54, *(a2 + 68), &v4, 4u);
    return 0;
  }

  return result;
}

uint64_t sub_10009DD38(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_58;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_58;
  }

  if (*(a2 + 128) != 4)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_58;
  }

  v5 = *v4;
  result = *(result + 1200);
  if (!result)
  {
    goto LABEL_58;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_58;
  }

  v6 = (*(*result + 392))(result);
  result = *(v2 + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_58;
  }

  v7 = bswap32(v5);
  v8 = (*(*result + 512))(result);
  result = *(v2 + 1200);
  v10 = (result & 7) == 0 && result != 0;
  if (v8)
  {
    if (v10)
    {
      (*(*result + 664))(result, v7, 0);
LABEL_20:
      sub_1000691A0(v2);
      return 0;
    }

    goto LABEL_58;
  }

  if (!v10)
  {
    goto LABEL_58;
  }

  if (!(*(*result + 592))(result))
  {
    result = *(v2 + 1200);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v11 = (*(*result + 376))(result);
        result = *(v2 + 1200);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v12 = (*(*result + 392))(result);
            result = *(v2 + 1200);
            if (result)
            {
              if ((result & 7) == 0)
              {
                (*(*result + 672))(result, v7);
                result = *(v2 + 1200);
                if (result)
                {
                  if ((result & 7) == 0)
                  {
                    if ((*(*result + 608))(result))
                    {
                      if (v12 < 3)
                      {
                        goto LABEL_20;
                      }

LABEL_49:
                      v14 = v12 - 1;
                      if (!v5 || v11 != v14)
                      {
                        if (v7 <= v11)
                        {
                          if (v11 >= v14)
                          {
                            goto LABEL_20;
                          }
                        }

                        else if (v11 || v7 != v14)
                        {
                          goto LABEL_20;
                        }
                      }

                      sub_100069268(v2);
                      return 0;
                    }

                    result = *(v2 + 1200);
                    if (result && (result & 7) == 0)
                    {
                      v13 = (*(*result + 616))(result);
                      if (v12 < 3 || (v13 & 1) == 0)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_49;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_58:
    __break(0x5516u);
    return result;
  }

  if (v7 >= v6)
  {
    return 2;
  }

  result = *(v2 + 1200);
  if (!result)
  {
    goto LABEL_58;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_58;
  }

  (*(*result + 672))(result, v7);
  result = *(v2 + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_58;
  }

  if ((*(*result + 304))(result, v7, 0, 0, 0, *(a2 + 8), 0xFFFFFFFFLL, 1))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10009E104(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 128))
  {
    v3 = *(result + 1392);
    if (v3 >= 2)
    {
      __break(0x550Au);
      goto LABEL_18;
    }

    if (v3)
    {
      memset(v9, 170, 20);
      v7 = -1431655766;
      v8 = -1431655766;
      v4 = *(result + 1192);
      if (v4 && (v4 & 7) == 0)
      {
        result = (*(*v4 + 104))(v4, &v8, &v7);
        if (!HIWORD(v8))
        {
          v5 = bswap32(v8) >> 16;
          LOWORD(v9[0]) = v5;
          if (!HIWORD(v7))
          {
            v6 = bswap32(v7) >> 16;
            WORD1(v9[0]) = v6;
            BYTE4(v9[0]) = 2;
            if (v9 < 0xFFFFFFFFFFFFFFFBLL)
            {
              *(v9 + 5) = v5;
              *(v9 + 7) = v6;
              BYTE1(v9[1]) = 3;
              sub_1000B7DB4(a2, *(a2 + 8), 0, 4, 58, *(a2 + 68), v9, 0xAu);
              return 0;
            }

            goto LABEL_19;
          }
        }

LABEL_18:
        __break(0x5507u);
LABEL_19:
        __break(0x5513u);
        return result;
      }

LABEL_16:
      __break(0x5516u);
    }
  }

  return 4;
}

uint64_t sub_10009E26C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_70;
  }

  v3 = *(a2 + 128);
  if (v3 < 4 || ((v3 - 4) & 7) != 0)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_70;
  }

  v5 = *v4;
  if (v4 >= 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_72:
    __break(0x5500u);
    goto LABEL_73;
  }

  v30 = v4[1];
  if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_71:
    __break(0x5513u);
    goto LABEL_72;
  }

  v6 = __rev16(v5);
  v7 = __rev16(v30);
  if (v6 > v7)
  {
    return 4;
  }

  if (*v4)
  {
    v10 = 0;
    v8 = 4;
  }

  else
  {
    v11 = *(a1 + 1424);
    if (v11)
    {
      if ((v11 & 7) == 0)
      {
        *&v32 = v11 + 8;
        sub_100007F60(&v32);
        operator delete();
      }

      goto LABEL_70;
    }

    if (v3 != 4)
    {
      operator new();
    }

    v8 = 0;
    v10 = 1;
  }

  v12 = *(a1 + 1424);
  if (v12)
  {
    if ((v12 & 7) == 0)
    {
      if (v6 != *v12 || v7 != v12[1] || *(a2 + 68) != *(v12 + 1))
      {
        if ((v10 & 1) == 0)
        {
          *&v32 = v12 + 4;
          sub_100007F60(&v32);
          operator delete();
        }

        return 0;
      }

      if (v3 != 4)
      {
        v13 = (v4 + 2);
        v14 = v3 - 12;
        do
        {
          v15 = *(a1 + 1424);
          if (!v15 || (*(a1 + 1424) & 7) != 0)
          {
            goto LABEL_70;
          }

          v31 = bswap64(*v13);
          v17 = v15[2];
          if (v17 >= v15[3])
          {
            v34 = 0xAAAAAAAAAAAAAAAALL;
            *&v19 = 0xAAAAAAAAAAAAAAAALL;
            *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v32 = v19;
            v33 = v19;
            v20 = v15[1];
            v21 = (v15[2] - v20) >> 3;
            v22 = v21 + 1;
            if (v21 == -1)
            {
              goto LABEL_72;
            }

            if (v22 >> 61)
            {
              goto LABEL_74;
            }

            v23 = v15[3] - v20;
            if (v23 >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            sub_1000A90B8(&v32, v24, v21, (v15 + 1));
            v25 = v33;
            if (!v33 || (v33 & 7) != 0)
            {
              goto LABEL_70;
            }

            *v33 = v31;
            if (v25 >= 0xFFFFFFFFFFFFFFF8)
            {
              goto LABEL_71;
            }

            *&v33 = v25 + 8;
            sub_10002597C(v15 + 1, &v32);
            v18 = v15[2];
            sub_100025B50(&v32);
          }

          else
          {
            sub_1000605D8((v15 + 1), &v31);
            if (v17 >= 0xFFFFFFFFFFFFFFF8)
            {
              goto LABEL_71;
            }

            v18 = v17 + 8;
          }

          v15[2] = v18;
          if (HIWORD(v14))
          {
            goto LABEL_73;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_71;
          }

          ++v13;
          v14 -= 8;
        }

        while (v14 != -8);
      }

      if (v5 != v30)
      {
        if (v5 == 0xFFFF)
        {
LABEL_73:
          __break(0x5507u);
LABEL_74:
          sub_1000E1E08();
        }

        v29 = *(a1 + 1424);
        if (v29 && (v29 & 7) == 0)
        {
          *v29 = v6 + 1;
          return 19;
        }

        goto LABEL_70;
      }

      v26 = sub_100067F34(a1);
      if (v26)
      {
        if ((v26 & 7) == 0)
        {
          v27 = *(a1 + 1424);
          if (v27)
          {
            if ((v27 & 7) == 0)
            {
              if (((*(*v26 + 672))(v26, v27 + 8) & 1) == 0)
              {
                v28 = *(a1 + 1424);
                if (!v28)
                {
                  *(a1 + 1424) = 0;
                  return v8;
                }

                if ((v28 & 7) == 0)
                {
                  *&v32 = v28 + 8;
                  sub_100007F60(&v32);
                  operator delete();
                }

                goto LABEL_70;
              }

              return 0;
            }
          }
        }
      }
    }

LABEL_70:
    __break(0x5516u);
    goto LABEL_71;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10009E63C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_38;
  }

  if (*(a2 + 128) != 9)
  {
    return 4;
  }

  v3 = *(result + 1424);
  if (!v3)
  {
    return 2;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_38;
  }

  if (v4 != -1)
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(result + 1200);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_38;
    }

    if (v5 >= 2)
    {
      goto LABEL_39;
    }

    if ((v3 & 7) != 0)
    {
      goto LABEL_38;
    }

    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_38;
    }

    v8 = sub_1000945E0(result, *(v2 + 8));
    if ((*(*v7 + 104))(v7, v5, v3 + 8, bswap64(v6), v8))
    {
      result = sub_100046A8C();
      if (!result || (result & 7) != 0)
      {
        goto LABEL_38;
      }

      result = (*(*result + 80))(result);
      if (!result)
      {
        goto LABEL_30;
      }

      v9 = *(v2 + 1216);
      if (v9 <= 3)
      {
        if (v9 == 2)
        {
          result = *(v2 + 1200);
          if (result)
          {
            if ((result & 7) == 0)
            {
              (*(*result + 112))(result, 1);
              result = *(v2 + 8);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  result = sub_10005BC54(result);
                  if (result)
                  {
                    if ((result & 7) == 0)
                    {
                      result = sub_1000BF678(result + 16);
LABEL_33:
                      v10 = *(v2 + 1200);
                      if (v10)
                      {
                        if ((v10 & 7) == 0)
                        {
                          result = sub_100065198(result);
                          if (result)
                          {
                            if ((result & 7) == 0)
                            {
                              v11 = sub_1000945E0(result, *(v2 + 8));
                              (*(*v10 + 304))(v10, 0xFFFFFFFFLL, 0, 0, 0, v11, 0xFFFFFFFFLL, 0);
                              return 0;
                            }
                          }
                        }
                      }

                      goto LABEL_38;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_38;
        }

LABEL_30:
        result = *(v2 + 1200);
        if (result && (result & 7) == 0)
        {
          result = (*(*result + 112))(result, 0);
          goto LABEL_33;
        }

LABEL_38:
        __break(0x5516u);
      }

LABEL_39:
      __break(0x550Au);
      goto LABEL_40;
    }

    return 4;
  }

LABEL_40:
  __break(0x5500u);
  return result;
}

uint64_t sub_10009E8A4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = *(a2 + 128);
  v5 = 4;
  if (v4 < 2)
  {
    return v5;
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    return v5;
  }

  v7 = *v6;
  if (v7 >= 4)
  {
LABEL_22:
    __break(0x550Au);
    return 2;
  }

  if ((v4 != 11 || !*v6) && (v4 != 15 || *v6))
  {
    return v5;
  }

  v16 = 0;
  if (v6 != -1)
  {
    v8 = v6 + 1;
    result = sub_100068C04(result, v7, (v6 + 1), &v16);
    v9 = result;
    v10 = (v6 + 1);
    v11 = v7 ? bswap32(*v10) : bswap64(*v10);
    if (!__CFADD__(v8, v16))
    {
      if (!result)
      {
        return 2;
      }

      v12 = &v8[v16];
      if (v12 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_26;
      }

      v13 = *(v12 + 2);
      v14 = __CFADD__(v12, 4);
      v15 = (v12 + 4);
      if (v14)
      {
        goto LABEL_26;
      }

      result = sub_100065B04(v2, a2, v7, v11, result, bswap32(*&v8[v16]) >> 16, __rev16(v13), bswap32(*v15) >> 16);
      if ((v9 & 7) == 0)
      {
        v5 = result;
        (*(*v9 + 8))(v9);
        if (v5 <= 0x1F)
        {
          return v5;
        }

        goto LABEL_22;
      }

LABEL_25:
      __break(0x5516u);
LABEL_26:
      __break(0x5500u);
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10009EA30(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_20;
  }

  v3 = *(a2 + 128);
  result = 4;
  if (v3 >= 2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *v4;
      if (v5 >= 4)
      {
        goto LABEL_21;
      }

      if (v3 == 11 && *v4 || v3 == 15 && !*v4)
      {
        v12 = 0;
        if (v4 != -1)
        {
          v6 = v4 + 1;
          result = sub_100068E84(v2, v5, (v4 + 1), &v12);
          if (!__CFADD__(v6, v12))
          {
            if (result == 0xFFFFFFFFLL)
            {
              return 2;
            }

            v7 = &v6[v12];
            v8 = *v7;
            v9 = __CFADD__(v7, 2);
            v10 = (v7 + 2);
            if (v9)
            {
              goto LABEL_22;
            }

            v11 = *v10;
            result = sub_100066C08(v2);
            if (result <= 0x1F)
            {
              return result;
            }

LABEL_21:
            __break(0x550Au);
LABEL_22:
            __break(0x5500u);
            return result;
          }
        }

LABEL_20:
        __break(0x5513u);
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t sub_10009EB44(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  if (!result || (v4 = result, (result & 7) != 0) || ((result = *(result + 8)) != 0 ? (v5 = (result & 7) == 0) : (v5 = 0), !v5 || (result = sub_10005B7F8(result, 4u, 1), (v9 = *(v4 + 8)) == 0) || (v9 & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_15;
  }

  v10 = sub_100067278();
  result = sub_10005B7AC(v9, 4u, v10);
  if (a4 >= 4)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  v11 = *(v4 + 8);

  return sub_1000B6DB4(v11, a2, a3, a4);
}

void sub_10009EC00(_DWORD *a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || (a1[345] = 0, a1[336] = 0, sub_1000651C8(a2), !v3) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a1[344];

    sub_1000629DC(v3, v4);
  }
}

uint64_t sub_10009EC60(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_36;
  }

  if ((a3 & 7) != 0)
  {
LABEL_36:
    __break(0x5516u);
    goto LABEL_37;
  }

  v5 = (*(*a3 + 264))(a3);
  if ((*(*a3 + 368))(a3))
  {
    v5 |= 2u;
  }

  if ((*(*a3 + 232))(a3))
  {
    v5 |= 4u;
  }

  if ((*(*a3 + 256))(a3))
  {
    v5 |= 8u;
  }

  if ((*(*a3 + 272))(a3))
  {
    v5 |= 0x10u;
  }

  if ((*(*a3 + 224))(a3, &v15))
  {
    v5 |= 0x20u;
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  (*(*a3 + 72))(a3, &__p);
  v6 = HIBYTE(v14);
  if (v14 < 0)
  {
    v6 = v13;
  }

  if (v6)
  {
    v7 = v5 | 0x40;
  }

  else
  {
    v7 = v5;
  }

  result = (*(*a3 + 288))(a3);
  v8 = v7;
  if (!result)
  {
    goto LABEL_28;
  }

  if (a2 > 0x7F)
  {
LABEL_37:
    __break(0x550Au);
    return result;
  }

  v8 = v7 | 0x80;
  if (a2 == 66 || a2 == 12)
  {
    result = sub_100046A8C();
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 176))(result))
      {
        v8 = v7 | 0x180;
      }

      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_28:
  v9 = (*(*a3 + 360))(a3);
  v10 = (*(*a3 + 280))(a3);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  v11 = v8 | 0x2000;
  if (!v9)
  {
    v11 = v8;
  }

  if (v10)
  {
    return v11 | 0x4000;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_10009EFB0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(a2 + 128))
  {
    return 4;
  }

  else
  {
    sub_10009F000(result, 1u);
    return 0;
  }

  return result;
}

uint64_t sub_10009F000(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_28;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_28;
  }

  *(result + 1221) = 1;
  result = sub_100067F34(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_28;
  }

  result = (*(*result + 104))(result);
  if (a2 >= 4)
  {
    goto LABEL_29;
  }

  *(v2 + 1216) = a2;
  if (a2 != 1)
  {
    result = sub_100046A8C();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_28;
    }

    v5 = (*(*result + 80))(result);
    result = sub_100067F34(v2);
    v7 = (result & 7) == 0 && result != 0;
    if (v5)
    {
      if (v7)
      {
        v8 = *(*result + 208);
LABEL_26:
        v8();
        goto LABEL_27;
      }
    }

    else if (v7)
    {
      v8 = *(*result + 208);
      goto LABEL_26;
    }

LABEL_28:
    __break(0x5516u);
    goto LABEL_29;
  }

  result = sub_100067F34(v2);
  if (!result)
  {
    goto LABEL_28;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_28;
  }

  (*(*result + 208))(result, 2097501, 0);
  result = sub_100067F34(v2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_28;
  }

  v4 = *(v2 + 1216);
  if (v4 <= 3)
  {
    (*(*result + 112))(result, 0, v4 == 2);
LABEL_27:
    *(v2 + 1404) = 0xFFFFFFFFLL;
    return 0;
  }

LABEL_29:
  __break(0x550Au);
  return result;
}

uint64_t sub_10009F1E8(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0)
  {
    if (*(a2 + 128) != 1)
    {
      return 4;
    }

    v2 = *(a2 + 24);
    if (v2)
    {
      v3 = *v2;
      if (v3 == 2 || v3 == 1)
      {
        sub_10009F000(result, v3);
        return 0;
      }

      return 4;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10009F254(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  if (*(a2 + 128) != 5)
  {
    return 4;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 != -1)
    {
      return sub_10009F2AC(result, *v2, 255, bswap32(*(v2 + 1)));
    }
  }

  else
  {
LABEL_10:
    __break(0x5516u);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_10009F2AC(uint64_t result, signed int a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_110;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_110;
  }

  if ((a2 - 1) > 0xA)
  {
    return 4;
  }

  LODWORD(v7) = a3;
  if (!sub_1000A2E04(result, a2) || (v7 + 1) > 0xAu)
  {
    return 4;
  }

  result = sub_100067F34(v4);
  if (!result)
  {
    goto LABEL_110;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_110;
  }

  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (v7 == 255)
        {
          LOBYTE(v7) = 3;
        }

        v9 = sub_1000A3C58;
        goto LABEL_86;
      }

      if (a2 == 7)
      {
        if (v7 == 255)
        {
          LOBYTE(v7) = 5;
        }

        v9 = sub_1000A3D70;
        goto LABEL_86;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = 6;
      }

      v18 = *(v4 + 1216);
      if (v18 <= 3)
      {
        v9 = sub_1000A3F2C;
        if (v18 == 2)
        {
          *(v4 + 1404) = 3;
          result = sub_100046A8C();
          if (result && (result & 7) == 0)
          {
            v19 = (*(*result + 80))(result);
            v9 = sub_1000A3F2C;
            if (v19)
            {
              (*(*v8 + 240))(v8);
              v9 = sub_1000A3F2C;
            }

            goto LABEL_86;
          }

          goto LABEL_110;
        }

LABEL_86:
        v15 = v9;
LABEL_87:
        result = v15(v4, v8, a4);
        goto LABEL_88;
      }

      goto LABEL_111;
    }

    if (a2 != 9)
    {
      if (a2 == 10)
      {
        if (v7 == 255)
        {
          LOBYTE(v7) = 5;
        }

        v9 = sub_1000A4214;
        goto LABEL_86;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = 6;
      }

      v20 = *(v4 + 1216);
      if (v20 > 3)
      {
        goto LABEL_111;
      }

      v9 = sub_1000A4380;
      if (v20 != 2)
      {
        goto LABEL_86;
      }

      *(v4 + 1404) = 5;
      result = sub_100046A8C();
      if (result && (result & 7) == 0)
      {
        v21 = (*(*result + 80))(result);
        v9 = sub_1000A4380;
        if (v21)
        {
          (*(*v8 + 248))(v8);
          v9 = sub_1000A4380;
        }

        goto LABEL_86;
      }

LABEL_110:
      __break(0x5516u);
      goto LABEL_111;
    }

    result = sub_100046A8C();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_110;
    }

    if ((*(*result + 56))(result))
    {
      if (v7 == 255)
      {
        LOBYTE(v7) = 5;
      }

      v9 = sub_1000A40F4;
      goto LABEL_86;
    }

    return 4;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a4 == -1)
      {
        a4 = 0;
      }

      else
      {
        a4 = a4;
      }

      if (a4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = v11;
      }

      v9 = sub_1000A2F3C;
      goto LABEL_86;
    }

    v9 = sub_1000A31C4;
    if (v7 != 255)
    {
      goto LABEL_86;
    }

    v16 = *(v4 + 1216);
    if (v16 >= 4)
    {
      goto LABEL_111;
    }

    v13 = sub_1000A31C4;
    if (v16 == 2)
    {
      v17 = *(v4 + 1404);
      v15 = sub_1000A31C4;
      LOBYTE(v7) = -1;
      if (v17 > 2)
      {
        if (v17 == 3 || v17 == 5)
        {
          v23 = sub_1000A31C4;
          goto LABEL_106;
        }

        if (v17 != 4)
        {
          goto LABEL_87;
        }
      }

      else if (v17)
      {
        if (v17 != 1)
        {
          if (v17 == 2)
          {
            LOBYTE(v7) = 8;
            result = sub_1000A31C4(v4, result, a4);
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        v24 = sub_1000A31C4;
LABEL_109:
        LOBYTE(v7) = 1;
        result = v24(v4, result, a4);
        goto LABEL_88;
      }

      v22 = sub_1000A31C4;
      goto LABEL_103;
    }

LABEL_92:
    LOBYTE(v7) = 3;
    result = v13(v4, result, a4);
    goto LABEL_88;
  }

  if (a2 == 3)
  {
    v9 = sub_1000A3578;
    if (v7 != 255)
    {
      goto LABEL_86;
    }

    v12 = *(v4 + 1216);
    if (v12 > 3)
    {
      goto LABEL_111;
    }

    v13 = sub_1000A3578;
    if (v12 == 2)
    {
      v14 = *(v4 + 1404);
      v15 = sub_1000A3578;
      LOBYTE(v7) = -1;
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              LOBYTE(v7) = 9;
              result = sub_1000A3578(v4, result, a4);
              goto LABEL_88;
            }

            goto LABEL_87;
          }

          v24 = sub_1000A3578;
          goto LABEL_109;
        }

        goto LABEL_97;
      }

      if (v14 != 3 && v14 != 5)
      {
        if (v14 != 4)
        {
          goto LABEL_87;
        }

LABEL_97:
        v22 = sub_1000A3578;
LABEL_103:
        LOBYTE(v7) = 4;
        result = v22(v4, result, a4);
        goto LABEL_88;
      }

      v23 = sub_1000A3578;
LABEL_106:
      LOBYTE(v7) = 6;
      result = v23(v4, result, a4);
      goto LABEL_88;
    }

    goto LABEL_92;
  }

  if (a2 != 4)
  {
    v9 = sub_1000A3BB0;
    if (v7 == 255)
    {
      v25 = 1;
      v26 = 1;
      (*(*result + 264))(result, &v26, &v25);
      if ((v26 & 0x200004) != 0)
      {
        LOBYTE(v7) = 6;
      }

      else
      {
        LOBYTE(v7) = 4;
      }

      v9 = sub_1000A3BB0;
    }

    goto LABEL_86;
  }

  v9 = sub_1000A383C;
  if (v7 != 255)
  {
    goto LABEL_86;
  }

  v10 = *(v4 + 1216);
  if (v10 > 3)
  {
LABEL_111:
    __break(0x550Au);
    return result;
  }

  if (v10 == 2)
  {
    if (a4 < 6)
    {
      v7 = 0x60404070104uLL >> (8 * a4);
      v9 = sub_1000A383C;
      goto LABEL_86;
    }

    LOBYTE(v7) = -1;
    result = sub_1000A383C(v4, result, a4);
  }

  else
  {
    LOBYTE(v7) = 0;
    result = sub_1000A383C(v4, result, a4);
  }

LABEL_88:
  if (result)
  {
    return 2;
  }

  *(v4 + 1221) = 0;
  if ((a2 & 0xD) != 5)
  {
    sub_1000A4488(v4, v8, v7);
    return 0;
  }

  return result;
}

uint64_t sub_10009F950(uint64_t result, unint64_t a2)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0)
  {
    if (*(a2 + 128) != 1)
    {
      return 4;
    }

    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = *v3;
      v8 = 0;
      v5 = sub_10009F9FC(result, v4, &v8);
      if (!v5)
      {
        v6 = *(a2 + 8);
        v7 = bswap32(v8);
        sub_1000B7DB4(a2, v6, 0, 4, 25, *(a2 + 68), &v7, 4u);
      }

      return v5;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10009F9FC(uint64_t result, int a2, _DWORD *a3)
{
  if (!result)
  {
    goto LABEL_88;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_88;
  }

  result = sub_100067F34(result);
  if (!result)
  {
    goto LABEL_88;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_88;
  }

  v7 = 1;
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v12 = *(v3 + 1221);
        if (v12 <= 1)
        {
          if (v12)
          {
            (*(*result + 296))(result);
          }

          result = sub_1000A4F34(v3, v6);
          if (!a3)
          {
            goto LABEL_88;
          }

          goto LABEL_85;
        }
      }

      else if (a2 == 7)
      {
        v16 = *(v3 + 1221);
        if (v16 <= 1)
        {
          if (v16)
          {
            (*(*result + 320))(result);
          }

          result = sub_1000A5074(v3, v6);
          if (!a3)
          {
            goto LABEL_88;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v9 = *(v3 + 1221);
        if (v9 <= 1)
        {
          if (v9)
          {
            (*(*result + 344))(result);
          }

          result = sub_1000A51C0(v3, v6);
          if (!a3)
          {
            goto LABEL_88;
          }

          goto LABEL_85;
        }
      }

      goto LABEL_89;
    }

    switch(a2)
    {
      case 9:
        result = sub_100046A8C();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_88;
        }

        result = (*(*result + 56))(result);
        if (result)
        {
          v14 = *(v3 + 1221);
          if (v14 <= 1)
          {
            if (v14)
            {
              (*(*v6 + 320))(v6);
            }

            result = (*(*v6 + 576))(v6);
            if (!a3)
            {
              goto LABEL_88;
            }

            goto LABEL_85;
          }

          goto LABEL_89;
        }

        break;
      case 10:
        result = sub_100046A8C();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_88;
        }

        result = (*(*result + 64))(result);
        if (result)
        {
          v18 = *(v3 + 1221);
          if (v18 <= 1)
          {
            if (v18)
            {
              (*(*v6 + 320))(v6);
            }

            result = sub_1000A52C8(v3, v6);
            if (!a3)
            {
              goto LABEL_88;
            }

            goto LABEL_85;
          }

          goto LABEL_89;
        }

        break;
      case 11:
        result = sub_100046A8C();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_88;
        }

        result = (*(*result + 72))(result);
        if (result)
        {
          v11 = *(v3 + 1221);
          if (v11 <= 1)
          {
            if (v11)
            {
              (*(*v6 + 344))(v6);
            }

            result = sub_1000A5328(v3, v6);
            if (!a3)
            {
              goto LABEL_88;
            }

            goto LABEL_85;
          }

          goto LABEL_89;
        }

        break;
      default:
        return v7;
    }

    return 4;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v13 = *(v3 + 1221);
      if (v13 <= 1)
      {
        if (v13)
        {
          (*(*result + 280))(result);
        }

        result = sub_1000A4C08(v3, v6);
        if (!a3)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }
    }

    else if (a2 == 4)
    {
      v17 = *(v3 + 1221);
      if (v17 <= 1)
      {
        if (v17)
        {
          (*(*result + 288))(result);
        }

        result = sub_1000A4DFC(v3, v6);
        if (!a3)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v10 = *(v3 + 1221);
      if (v10 <= 1)
      {
        if (v10)
        {
          (*(*result + 312))(result);
        }

        result = (*(*v6 + 352))(v6);
        if (!a3)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }
    }

    goto LABEL_89;
  }

  if (!a2)
  {
    if (a3 && (a3 & 3) == 0)
    {
      LODWORD(result) = 12;
LABEL_86:
      v7 = 0;
      *a3 = result;
      return v7;
    }

LABEL_88:
    __break(0x5516u);
    goto LABEL_89;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v8 = *(v3 + 1221);
      if (v8 <= 1)
      {
        if (v8)
        {
          (*(*result + 272))(result);
        }

        result = sub_1000A49A4(v3, v6);
        if (!a3)
        {
          goto LABEL_88;
        }

LABEL_85:
        if ((a3 & 3) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_88;
      }

      goto LABEL_89;
    }

    return v7;
  }

  v15 = *(v3 + 1221);
  if (v15 < 2)
  {
    if (v15)
    {
      (*(*result + 320))(result);
    }

    result = sub_1000A47A8(v3, v6);
    if (!a3)
    {
      goto LABEL_88;
    }

    goto LABEL_85;
  }

LABEL_89:
  __break(0x550Au);
  return result;
}

uint64_t sub_10009FF94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v3 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_30;
  }

  if (*(a2 + 128) != 9)
  {
    return 4;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_30;
  }

  if (v4 == -1)
  {
    goto LABEL_31;
  }

  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = __CFADD__(v4, 5);
  v8 = (v4 + 5);
  if (v7)
  {
    goto LABEL_31;
  }

  v10 = *v8;
  v16 = 0;
  result = sub_10009F9FC(result, v5, &v16);
  if (result)
  {
    return result;
  }

  v11 = bswap32(v6);
  v12 = bswap32(v10);
  v13 = v16 - v11;
  if (v16 <= v11)
  {
    v13 = -1;
  }

  v14 = v10 == -1 ? v13 : v12;
  if (__CFADD__(v11, v14))
  {
LABEL_31:
    __break(0x5500u);
    return result;
  }

  result = 4;
  if (v16 > v11 && v14 && v11 + v14 <= v16 && v5 <= 0xB)
  {
    if (v5 != 9)
    {
LABEL_26:
      result = sub_1000A00EC(v3, a3, v11, v5, v14, 0, 0, 0);
      if (result <= 0x1F)
      {
        return result;
      }

      __break(0x550Au);
      return 4;
    }

    result = sub_100046A8C();
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 56))(result))
      {
        goto LABEL_26;
      }

      return 4;
    }

LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000A00EC(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t *a8)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  v8 = a8;
  v11 = a7;
  v12 = a6;
  v15 = *(a2 + 24);
  v33 = (sub_10007D6FC(*(result + 8)) & 0x80000) == 0;
  if (!*(a2 + 104))
  {
    operator new();
  }

  if (!v8)
  {
    operator new();
  }

  result = *(v13 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    while (1)
    {
      while (1)
      {
        __break(0x5516u);
        if (a4 >= 0xC)
        {
          goto LABEL_64;
        }

        if (!a5)
        {
          goto LABEL_62;
        }

        v17 = a5 >= 0x64 ? 100 : a5;
        v32 = v17;
        if (!v11)
        {
          break;
        }

        if (__CFADD__(v12, v11))
        {
          goto LABEL_65;
        }

        if (v12 + v11 <= a3)
        {
          break;
        }

LABEL_24:
        v20 = a3 - v12;
        if (a3 < v12)
        {
          goto LABEL_66;
        }

        if (v20 >= v11)
        {
          goto LABEL_62;
        }

        memset(&v38, 170, sizeof(v38));
        if ((v8 & 7) == 0)
        {
          v21 = sub_1000A7E90(v8, v20);
          result = std::string::basic_string(&v38, v21);
          if (!a4)
          {
            goto LABEL_42;
          }

          v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          v23 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          size = v38.__r_.__value_.__l.__size_;
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v38.__r_.__value_.__l.__size_;
          }

          if (v25)
          {
            goto LABEL_39;
          }

          result = sub_10002DDA4();
          if (result)
          {
            if ((result & 7) == 0)
            {
              result = (*(*result + 88))(result, 1376257, &v38);
              v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              v23 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              size = v38.__r_.__value_.__l.__size_;
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v26 = v38.__r_.__value_.__l.__size_;
              }

              if (!v26)
              {
                result = std::string::assign(&v38, "Unknown");
                v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
                size = v38.__r_.__value_.__l.__size_;
                v23 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              }

LABEL_39:
              if (v23 < 0)
              {
                v22 = size;
              }

              if (!v22)
              {
                if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v38.__r_.__value_.__l.__data_);
                }

LABEL_62:
                operator delete[]();
              }

LABEL_42:
              *v34 = bswap32(a3);
              v27 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v27 = v38.__r_.__value_.__l.__size_;
              }

              v28 = __CFADD__(v27, 1);
              v29 = v27 + 1;
              if (v28)
              {
                goto LABEL_65;
              }

              v30 = v9 - 4;
              if (v9 < 4u)
              {
                goto LABEL_66;
              }

              if (v29 <= v30)
              {
                if (v29 >> 16)
                {
                  goto LABEL_63;
                }

                LOWORD(v30) = v29;
              }

              else if (HIWORD(v30))
              {
                goto LABEL_63;
              }

              if (v34 < 0xFFFFFFFFFFFFFFFCLL)
              {
                if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v31 = &v38;
                }

                else
                {
                  v31 = v38.__r_.__value_.__r.__words[0];
                }

                memcpy(v34 + 1, v31, v30);
                result = sub_10006571C(v13, (v34 + 1), v30);
                if (v30 <= 0xFFFBu)
                {
                  sub_1000B748C();
                }

                goto LABEL_63;
              }

              goto LABEL_67;
            }
          }
        }
      }

      if ((v8 & 7) == 0)
      {
        v18 = off_100116560[a4];
        sub_100025CA4(v8, *v8);
        v19 = v10;
        v10 = a3;
        v11 = v32;
        result = (v18)(v13, v19, a3, v32, v8);
        if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3) != v32)
        {
          goto LABEL_62;
        }

        v12 = a3;
        goto LABEL_24;
      }
    }
  }

  v16 = sub_100018DC0(result);
  result = sub_1000D6C34(v16, 4);
  if (result < 0x10000)
  {
    operator new[]();
  }

LABEL_63:
  __break(0x5507u);
LABEL_64:
  __break(0x5518u);
LABEL_65:
  __break(0x5500u);
LABEL_66:
  __break(0x5515u);
LABEL_67:
  __break(0x5513u);
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A0610(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (v3 = result, (result & 7) == 0) && ((result = *(result + 1200)) != 0 ? (v4 = (result & 7) == 0) : (v4 = 0), v4))
  {
    (*(*result + 312))(result);

    return sub_1000A069C(v3, a3);
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000A069C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_32;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_32;
  }

  v3 = *(result + 1200);
  if (!v3 || (*(result + 1200) & 7) != 0)
  {
    goto LABEL_32;
  }

  v6 = *(result + 1404) == 4;
  v7 = sub_100067F34(result);
  result = (*(*v3 + 88))(v3, a2, v6, 3, 3, v7);
  if (!result)
  {
    result = sub_100046A8C();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_32;
    }

    result = (*(*result + 80))(result);
    if (!result)
    {
      goto LABEL_21;
    }

    v8 = *(v2 + 1216);
    if (v8 > 3)
    {
LABEL_33:
      __break(0x550Au);
      return result;
    }

    if (v8 == 2)
    {
      result = *(v2 + 1200);
      if (!result)
      {
        goto LABEL_32;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_32;
      }

      (*(*result + 112))(result, 1);
      result = *(v2 + 8);
      if (!result)
      {
        goto LABEL_32;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_32;
      }

      result = sub_10005BC54(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_32;
      }

      result = sub_1000BF678(result + 16);
    }

    else
    {
LABEL_21:
      result = *(v2 + 1200);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_32;
      }

      result = (*(*result + 112))(result, 0);
    }

    v9 = *(v2 + 1200);
    if (v9)
    {
      if ((v9 & 7) == 0)
      {
        result = sub_100065198(result);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v10 = sub_1000945E0(result, *(v2 + 8));
            if ((*(*v9 + 304))(v9, 0xFFFFFFFFLL, 0, 0, 0, v10, a2, 0))
            {
              return 0;
            }

            else
            {
              return 2;
            }
          }
        }
      }
    }

LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1000A08AC(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_12;
  }

  v2 = *(result + 1372);
  v3 = *(result + 1368);
  if (v2 < v3)
  {
LABEL_12:
    __break(0x5515u);
    goto LABEL_13;
  }

  if (a2 - 1 >= v2 - v3)
  {
    return 4;
  }

  v4 = __CFADD__(v3, a2);
  v5 = v3 + a2;
  if (!v4)
  {
    *(result + 1368) = v5;
    if (v5 < v2)
    {
      return 0;
    }

    v6 = 0;
    *(result + 1368) = 0;
    return v6;
  }

LABEL_13:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000A0918(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*(a2 + 128) != 6)
  {
    return 4;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 != -1)
    {
      if (v2 < 0xFFFFFFFFFFFFFFFBLL)
      {
        return sub_10009F2AC(result, *v2, v2[5], bswap32(*(v2 + 1)));
      }

      goto LABEL_13;
    }
  }

  else
  {
LABEL_11:
    __break(0x5516u);
  }

  __break(0x5500u);
LABEL_13:
  __break(0x5513u);
  return result;
}

tm *sub_1000A097C(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_55;
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 128);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!v3)
  {
    v5 = 4;
    sub_1000DDEEC(0, 4, "%s:%d No data!\n");
    return v5;
  }

  v5 = 4;
  if (v4 != 1 || dword_10012B4A4 || *v3 > 5u)
  {
    return v5;
  }

  v6 = sub_100067F34(a1);
  LOBYTE(v16) = *v3;
  if (v16 > 2u)
  {
    if (v16 == 3)
    {
      if (v6 && (v6 & 7) == 0)
      {
        v7 = (*(*v6 + 600))(v6);
        goto LABEL_39;
      }

LABEL_55:
      __break(0x5516u);
    }

    if (v16 == 4)
    {
      if (v6 && (v6 & 7) == 0)
      {
        v7 = (*(*v6 + 408))(v6);
        goto LABEL_39;
      }

      goto LABEL_55;
    }

    if (v16 == 5)
    {
      *(&v16 + 1) = 0;
LABEL_40:
      v8 = 5;
      goto LABEL_41;
    }

LABEL_28:
    sub_1000DDEEC(0, 4, "%s:%d ERROR: Cmd0x003C_GetDBiTunesInfo Unknown DB info type: 0x%02X\n");
    return v5;
  }

  if (!v16)
  {
    if (v6 && (v6 & 7) == 0)
    {
      *(&v16 + 1) = bswap64((*(*v6 + 88))(v6));
      v8 = 9;
LABEL_41:
      sub_1000B7DB4(a2, *(a2 + 8), 0, 4, 61, *(a2 + 68), &v16, v8);
      return 0;
    }

    goto LABEL_55;
  }

  if (v16 != 1)
  {
    if (v16 == 2)
    {
      if (v6 && (v6 & 7) == 0)
      {
        v7 = (*(*v6 + 592))(v6);
LABEL_39:
        *(&v16 + 1) = bswap32(v7);
        goto LABEL_40;
      }

      goto LABEL_55;
    }

    goto LABEL_28;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v14.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14.tm_mon = v9;
  *&v14.tm_isdst = v9;
  *&v14.tm_sec = v9;
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_55;
  }

  result = (*(*v6 + 96))(v6, &v15);
  if (result)
  {
    result = localtime_r(&v15, &v14);
    v11 = v14.tm_mon + 1;
    if (__OFADD__(v14.tm_mon, 1) || (++v14.tm_mon, v12 = v14.tm_year + 1900, __OFADD__(v14.tm_year, 1900)))
    {
      __break(0x5500u);
      goto LABEL_57;
    }

    v14.tm_year += 1900;
    tm_sec = v14.tm_sec;
    if (v14.tm_sec > 0xFFu)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    tm_sec = 0;
    memset(&v14, 0, sizeof(v14));
  }

  if (&vars0 == 55)
  {
    goto LABEL_58;
  }

  BYTE1(v16) = tm_sec;
  if (v14.tm_min > 0xFFu)
  {
    goto LABEL_57;
  }

  if (&v16 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_58;
  }

  BYTE2(v16) = v14.tm_min;
  if (v14.tm_hour > 0xFFu)
  {
    goto LABEL_57;
  }

  if (&v16 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_58;
  }

  BYTE3(v16) = v14.tm_hour;
  if (v14.tm_mday > 0xFFu)
  {
    goto LABEL_57;
  }

  if (&v16 > 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_58;
  }

  BYTE4(v16) = v14.tm_mday;
  if (v11 > 0xFF)
  {
LABEL_57:
    __break(0x5507u);
    goto LABEL_58;
  }

  if (&v16 <= 0xFFFFFFFFFFFFFFFALL)
  {
    BYTE5(v16) = v11;
    if (!HIWORD(v12))
    {
      WORD3(v16) = bswap32(v12) >> 16;
      v8 = 8;
      goto LABEL_41;
    }

    goto LABEL_57;
  }

LABEL_58:
  __break(0x5513u);
  return result;
}

void sub_1000A0D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_32;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 128);
  if (!v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No data!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 4461);
  }

  if ((v6 - 9) <= 3 && v5 && !dword_10012B4A4)
  {
    v7 = 0;
    v8 = *v5;
    if (v6 > 10)
    {
      if (v6 != 11)
      {
        if (v5 > 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_33;
        }

        v7 = *(v5 + 11) << 24;
      }

      if (v5 > 0xFFFFFFFFFFFFFFF5)
      {
        goto LABEL_33;
      }

      v7 |= *(v5 + 10) << 16;
    }

    else if (v6 == 9)
    {
LABEL_20:
      if (v5 <= 0xFFFFFFFFFFFFFFF7)
      {
        if ((v7 & 0xE0000000) == 0)
        {
          v9 = v7 | *(v5 + 8);
          if (v9)
          {
            v10 = bswap64(v8);
            v11 = sub_10006617C(a1, 0, v10);
            v14 = v11;
            if (!v11)
            {
              goto LABEL_29;
            }

            v12 = v11;
            if ((v11 & 7) == 0)
            {
              if ((*(*v11 + 16))(v11))
              {
                if (a3 && (a3 & 7) == 0)
                {
                  v13 = *(a3 + 24);
                  sub_1000A0F44(a1, v12, 0x3Fu, 0, v9);
LABEL_30:
                  sub_1000698F8(&v14);
                  return;
                }

                goto LABEL_32;
              }

LABEL_29:
              sub_1000DDEEC(0, 4, "%s:%d Invalid TrackAccessor uid=%08x%08x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 4539, HIDWORD(v10), v10);
              goto LABEL_30;
            }

LABEL_32:
            __break(0x5516u);
            goto LABEL_33;
          }
        }

        return;
      }

LABEL_33:
      __break(0x5513u);
      return;
    }

    if (v5 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_33;
    }

    v7 |= *(v5 + 9) << 8;
    goto LABEL_20;
  }
}

void sub_1000A0F44(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (a3 > 0x7F)
  {
    __break(0x550Au);
    __break(0x5505u);
    __break(0x5503u);
    JUMPOUT(0x1000A2270);
  }

  if (a3 <= 0x4F && a5)
  {
    if ((a5 & 0xE0000000) == 0)
    {
      v5 = sub_100065198(0);
      if (v5 && (v5 & 7) == 0)
      {
        v6 = sub_1000945E0(v5, *(a1 + 8));
        if (sub_1000D6C34(v6, 4) < 0x10000)
        {
          operator new[]();
        }

        __break(0x5507u);
      }

LABEL_15:
      __break(0x5516u);
      __break(0x5500u);
      __break(0x5515u);
      sub_1000E1DF4();
    }
  }

  else
  {
LABEL_12:
    __break(0x5518u);
  }

  sub_1000E22D8();
}

uint64_t sub_1000A22E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_52;
  }

  v3 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_52;
  }

  if (!a3)
  {
    sub_1000E1D34();
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 128);
  if (!v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No data!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 4579);
  }

  v7 = 4;
  if ((v6 - 9) > 3 || !v5 || dword_10012B4A4)
  {
    return v7;
  }

  result = sub_100067F34(v3);
  if (!result || (result & 7) != 0 || (result = (*(*result + 352))(result), (a3 & 7) != 0))
  {
LABEL_52:
    __break(0x5516u);
    goto LABEL_53;
  }

  v8 = *(a3 + 104);
  if (v8)
  {
    if ((v8 & 7) == 0)
    {
      v14 = *(v8 + 4);
      if (v14 == -1)
      {
        goto LABEL_53;
      }

      v15 = *(v8 + 16);
      *(v8 + 4) = v14 + 1;
      v16 = *(v8 + 12);
      if (v16)
      {
        v17 = v14 + 1;
      }

      else
      {
        v17 = v14;
      }

      v7 = 4;
      if (v15 && (v15 & 0xE0000000) == 0 && v17 <= result && v16)
      {
        while (1)
        {
          v20 = 0xAAAAAAAAAAAAAAAALL;
          result = sub_100067F34(v3);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_52;
          }

          result = (*(*result + 448))(result, v14);
          v20 = result;
          if (!result)
          {
            goto LABEL_43;
          }

          if ((result & 7) != 0)
          {
            goto LABEL_52;
          }

          if ((*(*result + 16))(result))
          {
            v18 = *(a3 + 24);
            sub_1000A0F44(v3, v20, 0x41u, v14, v15);
            v7 = v19;
          }

          else
          {
LABEL_43:
            v7 = 2;
          }

          sub_1000698F8(&v20);
          v14 = (v14 + 1);
          if (v14 >= v17 || v7)
          {
            if (!v7)
            {
              if (*(v8 + 4) >= *(v8 + 8))
              {
                return 0;
              }

              else
              {
                return 6;
              }
            }

            return v7;
          }
        }
      }

      return v7;
    }

    goto LABEL_52;
  }

  if (v5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_53:
    __break(0x5500u);
    goto LABEL_54;
  }

  v9 = 0;
  v10 = bswap32(*v5);
  v11 = bswap32(*(v5 + 4));
  if (v6 > 10)
  {
    if (v6 != 11)
    {
      if (v5 > 0xFFFFFFFFFFFFFFF4)
      {
        goto LABEL_54;
      }

      v9 = *(v5 + 11) << 24;
    }

    if (v5 > 0xFFFFFFFFFFFFFFF5)
    {
      goto LABEL_54;
    }

    v9 |= *(v5 + 10) << 16;
  }

  else if (v6 == 9)
  {
LABEL_26:
    if (v5 <= 0xFFFFFFFFFFFFFFF7)
    {
      v13 = *(v5 + 8);
      operator new();
    }

    goto LABEL_54;
  }

  if (v5 <= 0xFFFFFFFFFFFFFFF6)
  {
    v12 = v9 | (*(v5 + 9) << 8);
    goto LABEL_26;
  }

LABEL_54:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000A25F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_70;
  }

  if (*(a2 + 24))
  {
    v5 = 4;
    if (!dword_10012B4A4 && *(a2 + 128) - 9 <= 3)
    {
      v6 = *(a1 + 1200);
      if (!v6)
      {
        goto LABEL_70;
      }

      if ((v6 & 7) != 0)
      {
        goto LABEL_70;
      }

      v8 = (*(*v6 + 392))(v6);
      if (!a3 || (a3 & 7) != 0)
      {
        goto LABEL_70;
      }

      v9 = *(a3 + 104);
      if (!v9)
      {
        v10 = *(a2 + 24);
        if (v10)
        {
          v11 = *(a2 + 128);
          if (v10 < 0xFFFFFFFFFFFFFFFCLL)
          {
            v12 = 0;
            v13 = bswap32(*v10);
            v14 = bswap32(*(v10 + 4));
            if (*(a2 + 128) <= 0xCu)
            {
              if (*(a2 + 128) <= 0xAu)
              {
                if (v11 == 9)
                {
                  goto LABEL_42;
                }

                if (v11 != 10)
                {
LABEL_73:
                  sub_1000E1DF4();
                }

LABEL_40:
                if (v10 <= 0xFFFFFFFFFFFFFFF6)
                {
                  v15 = v12 | (*(v10 + 9) << 8);
LABEL_42:
                  if (v10 <= 0xFFFFFFFFFFFFFFF7)
                  {
                    v16 = *(v10 + 8);
                    operator new();
                  }
                }

LABEL_72:
                __break(0x5513u);
                goto LABEL_73;
              }

              if (v11 == 11)
              {
LABEL_38:
                if (v10 > 0xFFFFFFFFFFFFFFF5)
                {
                  goto LABEL_72;
                }

                v12 |= *(v10 + 10) << 16;
                goto LABEL_40;
              }

LABEL_36:
              if (v10 > 0xFFFFFFFFFFFFFFF4)
              {
                goto LABEL_72;
              }

              v12 |= *(v10 + 11) << 24;
              goto LABEL_38;
            }

            if (*(a2 + 128) > 0xEu)
            {
              if (v11 != 15)
              {
                if (v11 != 16)
                {
                  goto LABEL_73;
                }

                if (v10 >= 0xFFFFFFFFFFFFFFF1)
                {
                  goto LABEL_72;
                }

                v12 = *(v10 + 15) << 56;
              }

              if (v10 > 0xFFFFFFFFFFFFFFF1)
              {
                goto LABEL_72;
              }

              v12 |= *(v10 + 14) << 48;
            }

            else if (v11 == 13)
            {
LABEL_34:
              if (v10 > 0xFFFFFFFFFFFFFFF3)
              {
                goto LABEL_72;
              }

              v12 |= *(v10 + 12) << 32;
              goto LABEL_36;
            }

            if (v10 > 0xFFFFFFFFFFFFFFF2)
            {
              goto LABEL_72;
            }

            v12 |= *(v10 + 13) << 40;
            goto LABEL_34;
          }

LABEL_71:
          __break(0x5500u);
          goto LABEL_72;
        }

LABEL_70:
        __break(0x5516u);
        goto LABEL_71;
      }

      if ((v9 & 7) != 0)
      {
        goto LABEL_70;
      }

      v17 = *(v9 + 4);
      if (v17 == -1)
      {
        goto LABEL_71;
      }

      v18 = *(v9 + 16);
      *(v9 + 4) = v17 + 1;
      v19 = *(v9 + 12);
      if (v19)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = v17;
      }

      v5 = 4;
      if (v18 && (v18 & 0xE0000000) == 0 && v20 <= v8 && v19)
      {
        do
        {
          v27 = 0xAAAAAAAAAAAAAAAALL;
          v21 = *(a1 + 1200);
          if (v21)
          {
            v22 = (*(a1 + 1200) & 7) == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            goto LABEL_70;
          }

          v23 = (*(*v21 + 400))(v21, v17);
          v27 = v23;
          if (!v23)
          {
            goto LABEL_62;
          }

          if ((v23 & 7) != 0)
          {
            goto LABEL_70;
          }

          if ((*(*v23 + 16))(v23))
          {
            v24 = *(a2 + 68);
            sub_1000A0F44(a1, v27, 0x43u, v17, v18);
            v5 = v25;
          }

          else
          {
LABEL_62:
            v5 = 2;
          }

          sub_1000698F8(&v27);
          v17 = (v17 + 1);
        }

        while (v17 < v20 && !v5);
        if (!v5)
        {
          if (*(v9 + 4) >= *(v9 + 8))
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  else
  {
    v5 = 4;
    sub_1000DDEEC(0, 4, "%s:%d No data!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 4741);
  }

  return v5;
}

uint64_t sub_1000A29BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0 && a2 && (a2 & 7) == 0)
    {
      if (*(a2 + 128) != 4)
      {
        return 4;
      }

      v3 = *(a2 + 24);
      if (v3)
      {
        v4 = *v3;
        if (!*v3)
        {
          return 18;
        }

        result = sub_100067F34(result);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if (sub_1000A2B68(v2, result, bswap32(v4)) != -1)
            {
              sub_100048120();
            }

            return 4;
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A2B68(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_10:
    __break(0x5500u);
    return result;
  }

  if (a3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*a2 + 568))(a2);
  if (result == -1)
  {
    goto LABEL_10;
  }

  if (result + 1 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a3 - 1);
  }
}

uint64_t sub_1000A2BEC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  if (*(a2 + 128) != 5)
  {
    return 4;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (v3 == -1)
  {
    goto LABEL_23;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = sub_100067F34(a1);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_22;
  }

  v7 = (*(*v6 + 568))(v6);
  v8 = v7 + 1;
  if (v7 == -1)
  {
    goto LABEL_23;
  }

  result = 4;
  if (!v4)
  {
    v10 = bswap32(v5);
    if ((v10 & 0x80000000) == 0 && v10 < v8)
    {
      v11 = sub_100067F34(a1);
      if (v11 && (v11 & 7) == 0)
      {
        v12 = sub_1000A2B68(a1, v11, v10);
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15 = v13;
        *&__n[1] = v13;
        HIBYTE(__n[0]) = 0;
        if (v12 != -1)
        {
          sub_100048120();
        }

        if ((__n + 1) != -1)
        {
          *&__n[1] = 0;
          operator new[]();
        }

LABEL_23:
        __break(0x5500u);
      }

LABEL_22:
      __break(0x5516u);
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t sub_1000A2E04(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  if (a2 < 0x10)
  {
    if (a2 - 1 < 8)
    {
      return 1;
    }

    switch(a2)
    {
      case 9u:
        result = sub_100046A8C();
        if (result && (result & 7) == 0)
        {
          v2 = *(*result + 56);

          return v2();
        }

        break;
      case 0xAu:
        result = sub_100046A8C();
        if (result && (result & 7) == 0)
        {
          v2 = *(*result + 64);

          return v2();
        }

        break;
      case 0xBu:
        result = sub_100046A8C();
        if (result && (result & 7) == 0)
        {
          v2 = *(*result + 72);

          return v2();
        }

        break;
      default:
        return 0;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A2F3C(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  if (a3 == -1)
  {
    goto LABEL_16;
  }

  v6 = *(result + 1216);
  if (v6 >= 4)
  {
    goto LABEL_36;
  }

  if (v6 == 2)
  {
    result = sub_100046A8C();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_35;
    }

    result = (*(*result + 80))(result);
    if (!result)
    {
      v7 = 1;
      goto LABEL_15;
    }

    result = (*(*a2 + 584))(a2);
  }

  else
  {
    result = (*(*a2 + 568))(a2);
  }

  v7 = result + 1;
  if (result == -1)
  {
LABEL_37:
    __break(0x5500u);
    return result;
  }

  if (v7 < 0)
  {
    sub_1000E23C4();
  }

LABEL_15:
  if (v7 <= a3)
  {
    return 22;
  }

LABEL_16:
  v8 = v3[304];
  if (v8 > 3)
  {
    goto LABEL_36;
  }

  if (v8 != 2)
  {
    if (!a3)
    {
      (*(*a2 + 104))(a2);
      result = sub_100067F34(v3);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_35;
      }

      v11 = v3[304];
      if (v11 <= 3)
      {
        (*(*result + 112))(result, 0, v11 == 2);
        return 0;
      }

LABEL_36:
      __break(0x550Au);
      goto LABEL_37;
    }

    result = sub_1000A2B68(v3, a2, a3);
    if (result != -1)
    {
      v9 = v3[304];
      if (v9 <= 3)
      {
        v10 = result;
        sub_10009F000(v3, v9);
        (*(*a2 + 128))(a2, v10);
        return 0;
      }

      goto LABEL_36;
    }

    return 22;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

  result = (*(*result + 80))(result);
  if (result)
  {
    if ((a3 + 1) > 1)
    {
      result = 22;
    }

    else
    {
      sub_10009F000(v3, 2u);
      result = 0;
    }
  }

  v3[351] = -1;
  v3[352] = a3;
  return result;
}

uint64_t sub_1000A31C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
LABEL_51:
    __break(0x5516u);
    goto LABEL_52;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = *(v3 + 1216);
  if (v6 >= 4)
  {
    goto LABEL_52;
  }

  if (v6 != 2)
  {
LABEL_16:
    v9 = *(v3 + 1216);
    if (v9 <= 3)
    {
      if (v9 == 2)
      {
        return 0;
      }

      v10 = (*(*a2 + 360))(a2);
      if (v10 < 0)
      {
        sub_1000E23C4();
      }

      if (a3 != -1 && v10 <= a3)
      {
        return 22;
      }

      result = sub_100067F34(v3);
      if (result && (result & 7) == 0)
      {
        v11 = *(v3 + 1216);
        if (v11 <= 3)
        {
          (*(*result + 112))(result, 1, v11 == 2);
          goto LABEL_26;
        }

        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_52:
    __break(0x550Au);
    return result;
  }

  v7 = *(v3 + 1404);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v12 = (*(*a2 + 432))(a2);
      if (v12 < 0)
      {
        sub_1000E23C4();
      }

      if (a3 == -1 || v12 > a3)
      {
        (*(*a2 + 184))(a2, a3);
        return 0;
      }

      return 22;
    }

    if (v7 == 5)
    {
      v14 = (*(*a2 + 440))(a2);
      if (a3 == -1 || v14 > a3)
      {
        (*(*a2 + 192))(a2, a3);
        return 0;
      }

      return 22;
    }

    if (v7 != 4)
    {
      goto LABEL_38;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v13 = (*(*a2 + 360))(a2);
      if (v13 < 0)
      {
        sub_1000E23C4();
      }

LABEL_41:
      if (a3 != -1 && v13 <= a3)
      {
        return 22;
      }

LABEL_26:
      (*(*a2 + 144))(a2, a3);
      return 0;
    }

    if (v7 == 2)
    {
      v8 = (*(*a2 + 392))(a2);
      if (v8 < 0)
      {
        sub_1000E23C4();
      }

      if (a3 == -1 || v8 > a3)
      {
        (*(*a2 + 176))(a2, a3);
        return 0;
      }

      return 22;
    }

LABEL_38:
    v13 = (*(*a2 + 360))(a2);
    if (v13 < 0)
    {
      sub_1000E23C4();
    }

    goto LABEL_41;
  }

  if (a3 <= 0)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000A3578(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_38;
  }

  result = (*(*result + 80))(result);
  if (result)
  {
    v6 = *(v3 + 1216);
    if (v6 >= 4)
    {
      goto LABEL_39;
    }

    if (v6 == 2)
    {
      v7 = *(v3 + 1404);
      if (v7 > 2)
      {
        if (v7 != 5 && v7 != 4 && v7 != 3)
        {
          goto LABEL_31;
        }
      }

      else if (v7 >= 2)
      {
        if (v7 == 2)
        {
          v8 = (*(*a2 + 400))(a2);
          if (v8 < 0)
          {
            sub_1000E23C4();
          }

          if (a3 == -1 || v8 > a3)
          {
            (*(*a2 + 200))(a2, a3);
            return 0;
          }

          return 22;
        }

LABEL_31:
        v12 = (*(*a2 + 368))(a2);
        if (v12 < 0)
        {
          sub_1000E23C4();
        }

        if (a3 != -1 && v12 <= a3)
        {
          return 22;
        }

LABEL_24:
        (*(*a2 + 152))(a2, a3);
        return 0;
      }

      if (a3 == -1 || ((*(*a2 + 352))(a2) != 0) > a3)
      {
        return 0;
      }

      return 22;
    }
  }

  v9 = *(v3 + 1216);
  if (v9 > 3)
  {
    goto LABEL_39;
  }

  if (v9 == 2)
  {
    return 0;
  }

  v10 = (*(*a2 + 368))(a2);
  if (v10 < 0)
  {
    sub_1000E23C4();
  }

  if (a3 != -1 && v10 <= a3)
  {
    return 22;
  }

  result = sub_100067F34(v3);
  if (!result || (result & 7) != 0)
  {
LABEL_38:
    __break(0x5516u);
    goto LABEL_39;
  }

  v11 = *(v3 + 1216);
  if (v11 <= 3)
  {
    (*(*result + 112))(result, 1, v11 == 2);
    goto LABEL_24;
  }

LABEL_39:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A383C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
LABEL_42:
    __break(0x5516u);
    goto LABEL_43;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = v3[304];
  if (v6 >= 4)
  {
    goto LABEL_43;
  }

  if (v6 != 2)
  {
LABEL_12:
    v8 = v3[304];
    if (v8 <= 3)
    {
      if (v8 == 2)
      {
        result = 0;
        v3[351] = a3;
        return result;
      }

      v9 = (*(*a2 + 376))(a2);
      if (v9 < 0)
      {
        sub_1000E23C4();
      }

      if (a3 != -1 && v9 <= a3)
      {
        return 22;
      }

      result = sub_100067F34(v3);
      if (result && (result & 7) == 0)
      {
        v10 = v3[304];
        if (v10 <= 3)
        {
          (*(*result + 112))(result, 1, v10 == 2);
          (*(*a2 + 160))(a2, a3);
          return 0;
        }

        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_43:
    __break(0x550Au);
    return result;
  }

  result = 22;
  if (a3 > 1)
  {
    if (a3 <= 3)
    {
      if (a3 == 2)
      {
        (*(*a2 + 232))(a2);
        result = 0;
        v7 = 2;
      }

      else
      {
        (*(*a2 + 240))(a2);
        result = 0;
        v7 = 3;
      }

      goto LABEL_38;
    }

    if (a3 == 4)
    {
      (*(*a2 + 224))(a2);
      result = 0;
      v7 = 4;
      goto LABEL_38;
    }

    if (a3 != 5)
    {
      return result;
    }

    result = sub_100046A8C();
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 72))(result))
      {
        (*(*a2 + 248))(a2);
        result = 0;
        v7 = 5;
        goto LABEL_38;
      }

      return 22;
    }

    goto LABEL_42;
  }

  switch(a3)
  {
    case 0xFFFFFFFF:
      v11 = v3[352];

      return sub_1000A2F3C(v3, a2, v11);
    case 0:
      (*(*a2 + 216))(a2);
      result = 0;
      v3[351] = 0;
      return result;
    case 1:
      (*(*a2 + 256))(a2);
      result = 0;
      v7 = 1;
LABEL_38:
      v3[351] = v7;
      break;
  }

  return result;
}

uint64_t sub_1000A3BB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v5 = (*(*a2 + 352))(a2);
    if (v5 < 0)
    {
      sub_1000E23C4();
    }

    if (a3 == -1 || v5 <= a3)
    {
      return 22;
    }

    else
    {

      return sub_1000A0610(v3, v6, a3);
    }
  }

  return result;
}

uint64_t sub_1000A3C58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  v6 = (*(*a2 + 384))(a2);
  if (v6 < 0)
  {
    sub_1000E23C4();
  }

  if (a3 != -1 && v6 <= a3)
  {
    return 22;
  }

  result = sub_100067F34(v3);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    v7 = *(v3 + 1216);
    if (v7 < 4)
    {
      (*(*result + 112))(result, 1, v7 == 2);
      (*(*a2 + 168))(a2, a3);
      return 0;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000A3D70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  if (a3 == -1)
  {
    return 22;
  }

  v5 = *(result + 1216);
  if (v5 >= 4)
  {
    goto LABEL_24;
  }

  if (v5 == 2)
  {
    return 22;
  }

  result = (*(*a2 + 408))(a2);
  if ((result & 0x80000000) != 0)
  {
    sub_1000E23C4();
  }

  if (result <= a3)
  {
    return 22;
  }

  v6 = *(v3 + 1216);
  if (v6 > 3)
  {
    goto LABEL_24;
  }

  sub_10009F000(v3, v6);
  result = sub_100067F34(v3);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  v7 = *(v3 + 1216);
  if (v7 > 3)
  {
LABEL_24:
    __break(0x550Au);
    return result;
  }

  (*(*result + 112))(result, 1, v7 == 2);
  result = *(v3 + 1200);
  if (!result || (result & 7) != 0 || (result = (*(*result + 96))(result, a3), (v8 = *(v3 + 1200)) == 0) || (v8 & 7) != 0 || (result = sub_100065198(result)) == 0 || (result & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  v9 = sub_1000945E0(result, *(v3 + 8));
  if ((*(*v8 + 304))(v8, 0xFFFFFFFFLL, 0, 0, 0, v9, 0xFFFFFFFFLL, 0))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000A3F2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  if (a3 == -1)
  {
    goto LABEL_16;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = *(v3 + 1216);
  if (v6 >= 4)
  {
    goto LABEL_24;
  }

  if (v6 == 2)
  {
    result = (*(*a2 + 432))(a2);
  }

  else
  {
LABEL_10:
    v7 = *(v3 + 1216);
    if (v7 > 3)
    {
      goto LABEL_24;
    }

    if (v7 == 2)
    {
      result = 0;
      goto LABEL_15;
    }

    result = (*(*a2 + 416))(a2);
  }

  if ((result & 0x80000000) != 0)
  {
    sub_1000E23C4();
  }

LABEL_15:
  if (result <= a3)
  {
    return 22;
  }

LABEL_16:
  v8 = *(v3 + 1216);
  if (v8 <= 3)
  {
    sub_10009F000(v3, v8);
    result = sub_100067F34(v3);
    if (result && (result & 7) == 0)
    {
      v9 = *(v3 + 1216);
      if (v9 <= 3)
      {
        (*(*result + 112))(result, 1, v9 == 2);
        (*(*a2 + 184))(a2, a3);
        return 0;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A40F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v4 = *(result + 1216);
  if (v4 < 4)
  {
    if (v4 != 1 || a3 != -1 && (*(*a2 + 576))(a2) <= a3)
    {
      return 22;
    }

    result = sub_100067F34(v3);
    if (result && (result & 7) == 0)
    {
      v7 = *(v3 + 1216);
      if (v7 <= 3)
      {
        (*(*result + 112))(result, 1, v7 == 2);
        (*(*a2 + 136))(a2, a3);
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A4214(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (a3 == -1)
  {
    return 22;
  }

  v5 = *(result + 1216);
  if (v5 >= 4)
  {
    goto LABEL_20;
  }

  if (v5 == 2)
  {
    return 22;
  }

  result = (*(*a2 + 632))(a2);
  if ((result & 0x80000000) != 0)
  {
    sub_1000E23C4();
  }

  if (result <= a3)
  {
    return 22;
  }

  v7 = *(v3 + 1216);
  if (v7 > 3)
  {
    goto LABEL_20;
  }

  sub_10009F000(v3, v7);
  result = sub_100067F34(v3);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = *(v3 + 1216);
  if (v8 > 3)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  v9 = (*(*result + 112))(result, 1, v8 == 2);
  result = sub_100065198(v9);
  if (!result || (result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  v10 = sub_1000945E0(result, *(v3 + 8));
  if ((*(*a2 + 640))(a2, a3, v10))
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000A4380(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  if (a3 != -1)
  {
    result = sub_1000A5328(result, a2);
    if ((result & 0x80000000) != 0)
    {
      sub_1000E23C4();
    }

    if (result <= a3)
    {
      return 22;
    }
  }

  v6 = *(v3 + 1216);
  if (v6 < 4)
  {
    sub_10009F000(v3, v6);
    result = sub_100067F34(v3);
    if (result && (result & 7) == 0)
    {
      v7 = *(v3 + 1216);
      if (v7 <= 3)
      {
        (*(*result + 112))(result, 1, v7 == 2);
        (*(*a2 + 192))(a2, a3);
        return 0;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(0x550Au);
  return result;
}

void sub_1000A4488(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_49;
  }

  if (a3 >= 0x100)
  {
LABEL_49:
    __break(0x550Au);
    return;
  }

  if (a3 > 4u)
  {
    if (a3 <= 6u)
    {
      if (a3 == 5)
      {
        v4 = *(*a2 + 320);
        v5 = a2;

        goto LABEL_46;
      }

      if (a3 == 6)
      {
        v4 = *(*a2 + 344);
        v5 = a2;

        goto LABEL_46;
      }
    }

    else
    {
      switch(a3)
      {
        case 7u:
          v4 = *(*a2 + 336);
          v5 = a2;

          goto LABEL_46;
        case 8u:
          v4 = *(*a2 + 328);
          v5 = a2;

          goto LABEL_46;
        case 9u:
          v4 = *(*a2 + 304);
          v5 = a2;

          goto LABEL_46;
      }
    }
  }

  else if (a3 <= 1u)
  {
    if (!a3)
    {
      v4 = *(*a2 + 288);
      v5 = a2;

      goto LABEL_46;
    }

    if (a3 == 1)
    {
      v4 = *(*a2 + 272);
      v5 = a2;

      goto LABEL_46;
    }
  }

  else
  {
    switch(a3)
    {
      case 2u:
        v4 = *(*a2 + 296);
        v5 = a2;

        goto LABEL_46;
      case 3u:
        v4 = *(*a2 + 280);
        v5 = a2;

        goto LABEL_46;
      case 4u:
        v4 = *(*a2 + 312);
        v5 = a2;

LABEL_46:
        v4(v5);
        return;
    }
  }

  sub_1000DDEEC(0, 4, "%s:%d ERROR: Unknown sort type: 0x%08X !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 9246, a3);
}

uint64_t sub_1000A47A8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  result = (*(*result + 80))(result);
  if (result)
  {
    v4 = *(v2 + 1216);
    if (v4 >= 4)
    {
LABEL_23:
      __break(0x550Au);
      goto LABEL_24;
    }

    if (v4 == 2)
    {
      result = (*(*a2 + 584))(a2);
      v5 = (result + 1);
      if (result == -1)
      {
        goto LABEL_24;
      }

      return v5;
    }
  }

  v6 = *(v2 + 1216);
  if (v6 > 3)
  {
    goto LABEL_23;
  }

  if (v6 == 2)
  {
    return 1;
  }

  result = sub_100067F34(v2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = (*(*result + 120))(result);
  v7 = *(v2 + 1216);
  if (v7 > 3)
  {
    goto LABEL_23;
  }

  v8 = result;
  (*(*a2 + 112))(a2, 1, v7 == 2);
  result = (*(*a2 + 568))(a2);
  v5 = (result + 1);
  if (result != -1)
  {
    result = sub_100067F34(v2);
    if (result && (result & 7) == 0)
    {
      v9 = *(v2 + 1216);
      if (v9 <= 3)
      {
        (*(*result + 112))(result, v8, v9 == 2);
        return v5;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000A49A4(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
LABEL_37:
    __break(0x5516u);
    goto LABEL_38;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v4 = *(v2 + 1216);
  if (v4 >= 4)
  {
    goto LABEL_38;
  }

  if (v4 != 2)
  {
LABEL_14:
    v8 = *(v2 + 1216);
    if (v8 <= 3)
    {
      if (v8 == 2)
      {
        return (*(v2 + 1404) & 0xFFFFFFFB) == 0;
      }

      result = *(v2 + 1200);
      if (result && (result & 7) == 0)
      {
        if ((*(*result + 472))(result))
        {
          return 0;
        }

        result = *(v2 + 1200);
        if (result && (result & 7) == 0)
        {
          if (((*(*result + 480))(result) & 1) == 0)
          {
LABEL_31:

            return sub_1000A71B4(v2, a2);
          }

          return 0;
        }
      }

      goto LABEL_37;
    }

LABEL_38:
    __break(0x550Au);
    return result;
  }

  v5 = *(v2 + 1404);
  result = 1;
  if (v5 <= 2)
  {
    if (!v5)
    {
      return result;
    }

    if (v5 == 2)
    {
      v6 = *(*a2 + 392);
      v7 = a2;

      return v6(v7);
    }

    goto LABEL_31;
  }

  if (v5 == 3)
  {
    v6 = *(*a2 + 432);
    v7 = a2;

    return v6(v7);
  }

  if (v5 != 4)
  {
    if (v5 == 5)
    {
      v6 = *(*a2 + 440);
      v7 = a2;

      return v6(v7);
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000A4C08(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
    goto LABEL_29;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_11;
  }

  v4 = *(v2 + 1216);
  if (v4 >= 4)
  {
    goto LABEL_29;
  }

  if (v4 != 2)
  {
LABEL_11:
    v6 = *(v2 + 1216);
    if (v6 <= 3)
    {
      if (v6 == 2)
      {
        v7 = *(v2 + 1404);
        if (v7 < 6)
        {
          return dword_1000EFD60[v7];
        }

        return 0;
      }

      result = *(v2 + 1200);
      if (result && (result & 7) == 0)
      {
        if ((*(*result + 472))(result))
        {
          return 0;
        }

        result = *(v2 + 1200);
        if (result && (result & 7) == 0)
        {
          if (((*(*result + 480))(result) & 1) == 0)
          {
            goto LABEL_22;
          }

          return 0;
        }
      }

      goto LABEL_28;
    }

LABEL_29:
    __break(0x550Au);
    return result;
  }

  v5 = *(v2 + 1404);
  if (v5 <= 5)
  {
    if (v5 != 2)
    {
      return (*(*a2 + 352))(a2) != 0;
    }

    v8 = *(*a2 + 400);

    return v8(a2);
  }

LABEL_22:

  return sub_1000A72E4(v2, a2);
}

uint64_t sub_1000A4DFC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  v3 = *(result + 1216);
  if (v3 >= 4)
  {
LABEL_21:
    __break(0x550Au);
    return result;
  }

  if (v3 == 2)
  {
    result = sub_100046A8C();
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 72))(result))
      {
        return 6;
      }

      else
      {
        return 5;
      }
    }

    goto LABEL_20;
  }

  result = *(result + 1200);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  if ((*(*result + 472))(result))
  {
    return 0;
  }

  result = *(v2 + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  if ((*(*result + 480))(result))
  {
    return 0;
  }

  return sub_1000A7414(v2, a2);
}

uint64_t sub_1000A4F34(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 80))(result);
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = *(v2 + 1216);
  if (v4 >= 4)
  {
    goto LABEL_21;
  }

  if (v4 != 2)
  {
LABEL_8:
    v5 = *(v2 + 1216);
    if (v5 <= 3)
    {
      if (v5 == 2)
      {
        return 0;
      }

      result = *(v2 + 1200);
      if (result && (result & 7) == 0)
      {
        if (((*(*result + 472))(result) & 1) == 0)
        {
          result = *(v2 + 1200);
          if (result && (result & 7) == 0)
          {
            if ((*(*result + 480))(result))
            {
              return 0;
            }

            goto LABEL_17;
          }

          goto LABEL_20;
        }

        return 0;
      }

LABEL_20:
      __break(0x5516u);
    }

LABEL_21:
    __break(0x550Au);
    return result;
  }

LABEL_17:

  return sub_1000A7544(v2, a2);
}

uint64_t sub_1000A5074(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v3 = *(result + 1216);
      if (v3 < 4)
      {
        if (v3 == 2)
        {
          return 0;
        }

        result = (*(*a2 + 120))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, 1, v6 == 2);
          result = (*(*a2 + 408))(a2);
          v8 = *(v2 + 1216);
          if (v8 <= 3)
          {
            v4 = result;
            (*(*a2 + 112))(a2, v7, v8 == 2);
            return v4;
          }
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A51C0(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_18;
  }

  result = (*(*result + 80))(result);
  if (result)
  {
    v4 = *(v2 + 1216);
    if (v4 >= 4)
    {
LABEL_18:
      __break(0x550Au);
      return result;
    }

    if (v4 == 2)
    {
      v5 = *(*a2 + 432);

      return v5(a2);
    }
  }

  v6 = *(v2 + 1216);
  if (v6 > 3)
  {
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    return 0;
  }

  return sub_1000A7674(v2, a2);
}

uint64_t sub_1000A52C8(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v2 = *(result + 1216);
  if (v2 >= 4)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v2 == 2)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 632))(a2);
  }
}

uint64_t sub_1000A5328(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_18;
  }

  result = (*(*result + 80))(result);
  if (result)
  {
    v4 = *(v2 + 1216);
    if (v4 >= 4)
    {
LABEL_18:
      __break(0x550Au);
      return result;
    }

    if (v4 == 2)
    {
      v5 = *(*a2 + 440);

      return v5(a2);
    }
  }

  v6 = *(v2 + 1216);
  if (v6 > 3)
  {
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    return 0;
  }

  return sub_1000A77A4(v2, a2);
}

void sub_1000A5430(uint64_t a1, uint64_t a2, int a3, int a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_86:
    __break(0x5516u);
    return;
  }

  v9 = sub_10002DDA4();
  memset(&v28, 0, sizeof(v28));
  if (a4 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v13 = (v9 & 7) == 0 && v9 != 0;
    while (1)
    {
      v14 = a3 + v11;
      if (__OFADD__(a3, v11))
      {
        __break(0x5500u);
        goto LABEL_86;
      }

      if (v14 > 11)
      {
        goto LABEL_81;
      }

      v15 = sub_1000A2E04(a1, a3 + v11);
      v16 = "";
      if (v15)
      {
        if (v14 <= 5)
        {
          if (v14 <= 2)
          {
            if (v14 == 1)
            {
              if (!v13)
              {
                goto LABEL_86;
              }

              (*(*v10 + 88))(v10, 1376267, &v28);
              size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
              if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v28.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                goto LABEL_80;
              }

              v16 = "Playlists";
            }

            else
            {
              v16 = "";
              if (v14 == 2)
              {
                if (!v13)
                {
                  goto LABEL_86;
                }

                (*(*v10 + 88))(v10, 1376268, &v28);
                v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
                if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v20 = v28.__r_.__value_.__l.__size_;
                }

                if (v20)
                {
                  goto LABEL_80;
                }

                v16 = "Artists";
              }
            }
          }

          else if (v14 == 3)
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376269, &v28);
            v25 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = v28.__r_.__value_.__l.__size_;
            }

            if (v25)
            {
              goto LABEL_80;
            }

            v16 = "Albums";
          }

          else if (v14 == 4)
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376271, &v28);
            v22 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = v28.__r_.__value_.__l.__size_;
            }

            if (v22)
            {
              goto LABEL_80;
            }

            v16 = "Genres";
          }

          else
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376270, &v28);
            v18 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v18 = v28.__r_.__value_.__l.__size_;
            }

            if (v18)
            {
              goto LABEL_80;
            }

            v16 = "Songs";
          }
        }

        else if (v14 > 8)
        {
          if (v14 == 9)
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376275, &v28);
            v27 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v27 = v28.__r_.__value_.__l.__size_;
            }

            if (v27)
            {
              goto LABEL_80;
            }

            v16 = "Nested Playlists";
          }

          else if (v14 == 10)
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376266, &v28);
            v24 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v28.__r_.__value_.__l.__size_;
            }

            if (v24)
            {
              goto LABEL_80;
            }

            v16 = "Genius Mix";
          }

          else
          {
            if (!v13)
            {
              goto LABEL_86;
            }

            (*(*v10 + 88))(v10, 1376276, &v28);
            v19 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v19 = v28.__r_.__value_.__l.__size_;
            }

            if (v19)
            {
              goto LABEL_80;
            }

            v16 = "iTunesU";
          }
        }

        else if (v14 == 6)
        {
          if (!v13)
          {
            goto LABEL_86;
          }

          (*(*v10 + 88))(v10, 1376272, &v28);
          v26 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v28.__r_.__value_.__l.__size_;
          }

          if (v26)
          {
            goto LABEL_80;
          }

          v16 = "Composers";
        }

        else if (v14 == 7)
        {
          if (!v13)
          {
            goto LABEL_86;
          }

          (*(*v10 + 88))(v10, 1376273, &v28);
          v23 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = v28.__r_.__value_.__l.__size_;
          }

          if (v23)
          {
            goto LABEL_80;
          }

          v16 = "Audiobooks";
        }

        else
        {
          if (!v13)
          {
            goto LABEL_86;
          }

          (*(*v10 + 88))(v10, 1376274, &v28);
          v17 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = v28.__r_.__value_.__l.__size_;
          }

          if (v17)
          {
            goto LABEL_80;
          }

          v16 = "Podcasts";
        }
      }

      std::string::assign(&v28, v16);
LABEL_80:
      sub_1000A596C(a5, &v28);
LABEL_81:
      if (a4 == ++v11)
      {
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        return;
      }
    }
  }
}

std::string *sub_1000A596C(std::string *result, const std::string *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    size = result->__r_.__value_.__l.__size_;
    if (size >= result->__r_.__value_.__r.__words[2])
    {
      result = sub_1000A9208(result, a2);
      goto LABEL_7;
    }

    result = sub_1000A91B0(result, a2);
    if (size < 0xFFFFFFFFFFFFFFE8)
    {
      result = (size + 24);
LABEL_7:
      v2->__r_.__value_.__l.__size_ = result;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

void sub_1000A59CC(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v5 = *(a1 + 1216);
  if (v5 >= 4)
  {
LABEL_29:
    __break(0x550Au);
    return;
  }

  if (v5 == 1)
  {

    sub_1000A5B6C(a1, a2, a3, a4, a5);
    return;
  }

  v9 = sub_100046A8C();
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
    goto LABEL_29;
  }

  if ((*(*v9 + 80))(v9))
  {
    if (a4 < 1)
    {
      return;
    }

    v10 = 0;
    while (!__OFADD__(a3, v10))
    {
      if (!(a3 + v10))
      {
        v11 = sub_10004B1AC();
        if (!v11 || (v11 & 7) != 0)
        {
          goto LABEL_28;
        }

        (*(*v11 + 88))(&__p);
        sub_1000349A8(a5, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (a4 == ++v10)
      {
        return;
      }
    }

    __break(0x5500u);
    goto LABEL_28;
  }

  if (a3)
  {
    return;
  }

  v12 = sub_10004B1AC();
  if (!v12 || (v12 & 7) != 0)
  {
    goto LABEL_28;
  }

  (*(*v12 + 88))(&__p);
  sub_1000349A8(a5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000A5B6C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  if ((a3 & 0x80000000) != 0 || !a4)
  {
    sub_1000DDEEC(0, 4, "%s:%d Invalid startIndex(%d) or count(%d)!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 9568, a3, a4);
    return;
  }

  v8 = (__PAIR64__(a4, a3) - 1) >> 32;
  sub_100025CA4(a5, a5->__r_.__value_.__r.__words[0]);
  if (v8)
  {
    if (a3)
    {
      v9 = a3 - 1;
    }

    else
    {
      v9 = 0;
    }

    (*(*a2 + 472))(a2, v9, v8, a5);
  }

  if (!a3)
  {
    v10 = a5->__r_.__value_.__r.__words[0];
    if ((a5->__r_.__value_.__r.__words[0] & 7) != 0)
    {
LABEL_19:
      __break(0x5517u);
      return;
    }

    v11 = sub_10004B1AC();
    if (v11 && (v11 & 7) == 0)
    {
      (*(*v11 + 88))(&__p);
      sub_1000A79C8(a5, v10, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }
}

void sub_1000A5CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v5 = *(a1 + 1216);
  if (v5 >= 4)
  {
LABEL_8:
    __break(0x550Au);
    return;
  }

  if (v5 == 1)
  {
    sub_1000A5CE0(a1, a2, a3, a4, a5);
  }
}

void sub_1000A5CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100025CA4(a5, *a5);
    if ((a3 & 0x80000000) != 0 || !a4)
    {
      sub_1000DDEEC(0, 4, "%s:%d Invalid startIndex(%d) or count(%d)!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 9605, a3, a4);
    }

    else
    {
      v9 = *(*a2 + 480);

      v9(a2, a3, a4, a5);
    }
  }
}

void sub_1000A5DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_37;
  }

  v6 = *(a1 + 1216);
  if (v6 >= 4)
  {
    goto LABEL_36;
  }

  if (v6 == 1)
  {
    v11 = (*(*a2 + 120))(a2);
    v12 = *(a1 + 1216);
    if (v12 <= 3)
    {
      v13 = v11;
      (*(*a2 + 112))(a2, 1, v12 == 2);
      (*(*a2 + 496))(a2, a3, a4, a5);
      v14 = *(a1 + 1216);
      if (v14 <= 3)
      {
        v15 = *(*a2 + 112);

        v15(a2, v13, v14 == 2);
        return;
      }
    }

LABEL_36:
    __break(0x550Au);
LABEL_37:
    __break(0x5516u);
    return;
  }

  v16 = sub_100046A8C();
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_37;
  }

  v17 = (*(*v16 + 80))(v16);
  v21 = *(a1 + 1404);
  if (!v17)
  {
    if ((v21 | 4) != 4)
    {
      return;
    }

LABEL_20:

    sub_1000A6110(a1, v18, v19, v20, a5);
    return;
  }

  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(*a2 + 528);
        v23 = a2;
        v24 = a3;
        v25 = a4;
        v26 = a5;

LABEL_18:
        v22(v23, v24, v25, v26);
        return;
      }

LABEL_26:
      v22 = *(*a2 + 496);
      v23 = a2;
      v24 = a3;
      v25 = a4;
      v26 = a5;

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  switch(v21)
  {
    case 3:

      sub_1000A61D4(a1, a2, a3, a4, a5);
      break;
    case 5:

      sub_1000A6328(a1, a2, a3, a4, a5);
      break;
    case 4:
      goto LABEL_20;
    default:
      goto LABEL_26;
  }
}

void sub_1000A6110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0 || (v6 = sub_10002DDA4(), memset(&v8, 0, sizeof(v8)), !v6) || (v6 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*v6 + 88))(v6, 1376258, &v8);
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      std::string::assign(&v8, "All");
    }

    sub_1000A596C(a5, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t sub_1000A61D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  result = (*(*a2 + 120))(a2);
  v10 = *(v5 + 1216);
  if (v10 >= 4 || (v11 = result, (*(*a2 + 112))(a2, 1, v10 == 2), result = (*(*a2 + 544))(a2, a3, a4, a5), v12 = *(v5 + 1216), v12 > 3))
  {
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v13 = *(*a2 + 112);

  return v13(a2, v11, v12 == 2);
}

uint64_t sub_1000A6328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (v5 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  result = (*(*result + 72))(result);
  if (!result)
  {
    return result;
  }

  result = (*(*a2 + 120))(a2);
  v10 = *(v5 + 1216);
  if (v10 >= 4 || (v11 = result, (*(*a2 + 112))(a2, 1, v10 == 2), result = (*(*a2 + 552))(a2, a3, a4, a5), v12 = *(v5 + 1216), v12 > 3))
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  v13 = *(*a2 + 112);

  return v13(a2, v11, v12 == 2);
}

void sub_1000A64C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_42;
  }

  v6 = *(a1 + 1216);
  if (v6 >= 4)
  {
LABEL_41:
    __break(0x550Au);
    goto LABEL_42;
  }

  if (v6 == 1)
  {
    v11 = (*(*a2 + 120))(a2);
    v12 = *(a1 + 1216);
    if (v12 <= 3)
    {
      v13 = v11;
      (*(*a2 + 112))(a2, 1, v12 == 2);
      (*(*a2 + 504))(a2, a3, a4, a5);
      v14 = *(a1 + 1216);
      if (v14 <= 3)
      {
        v15 = *(*a2 + 112);

        v15(a2, v13, v14 == 2);
        return;
      }
    }

    goto LABEL_41;
  }

  v16 = sub_100046A8C();
  if (!v16 || (v16 & 7) != 0)
  {
LABEL_42:
    __break(0x5516u);
  }

  v17 = (*(*v16 + 80))(v16);
  v21 = *(a1 + 1404);
  if (!v17)
  {
    if (v21 > 5 || v21 == 2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v21 > 5)
  {
    v26 = *(*a2 + 504);

    v26(a2, a3, a4, a5);
    return;
  }

  if (v21 != 2)
  {
LABEL_34:

    sub_1000A6110(a1, v18, v19, v20, a5);
    return;
  }

  memset(&v28, 0, sizeof(v28));
  v22 = sub_10002DDA4();
  if (!v22 || (v22 & 7) != 0)
  {
    goto LABEL_42;
  }

  (*(*v22 + 88))(v22, 1376265, &v28);
  size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::assign(&v28, "Season");
  }

  if (a4 < 1)
  {
LABEL_30:
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v24 = 0;
    while (1)
    {
      memset(__str, 170, 20);
      memset(&__dst, 170, sizeof(__dst));
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000A8F88(&__dst, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = v28;
      }

      if (__OFADD__(a3, v24))
      {
        break;
      }

      v25 = (*(*a2 + 464))(a2, (a3 + v24));
      snprintf(__str, 0x14uLL, " %d", v25);
      std::string::append(&__dst, __str);
      sub_1000A596C(a5, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (a4 == ++v24)
      {
        goto LABEL_30;
      }
    }

    __break(0x5500u);
  }
}

void sub_1000A6918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_67:
    __break(0x5516u);
LABEL_68:
    __break(0x5500u);
    goto LABEL_69;
  }

  v6 = *(a1 + 1216);
  if (v6 >= 4)
  {
LABEL_69:
    __break(0x550Au);
    return;
  }

  if (v6 != 1)
  {
    v16 = sub_10002DDA4();
    if (a4 < 1)
    {
      return;
    }

    v17 = v16;
    v18 = 0;
    v20 = (v16 & 7) == 0 && v16 != 0;
    while (1)
    {
      memset(&v32, 0, sizeof(v32));
      v21 = a3 + v18;
      if (__OFADD__(a3, v18))
      {
        goto LABEL_68;
      }

      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            if (!v20)
            {
              goto LABEL_67;
            }

            (*(*v17 + 88))(v17, 1376262, &v32);
            size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              goto LABEL_59;
            }

            v23 = "Video Podcasts";
            break;
          case 4:
            if (!v20)
            {
              goto LABEL_67;
            }

            (*(*v17 + 88))(v17, 1376264, &v32);
            v29 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = v32.__r_.__value_.__l.__size_;
            }

            if (v29)
            {
              goto LABEL_59;
            }

            v23 = "Rentals";
            break;
          case 5:
            v24 = sub_100046A8C();
            if (!v24 || (v24 & 7) != 0)
            {
              goto LABEL_67;
            }

            if (!(*(*v24 + 72))(v24))
            {
              goto LABEL_59;
            }

            if (!v20)
            {
              goto LABEL_67;
            }

            (*(*v17 + 88))(v17, 1376263, &v32);
            v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = v32.__r_.__value_.__l.__size_;
            }

            if (v25)
            {
              goto LABEL_59;
            }

            v23 = "Video ITunesU";
            break;
          default:
            goto LABEL_59;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          if (!v20)
          {
            goto LABEL_67;
          }

          (*(*v17 + 88))(v17, 1376261, &v32);
          v28 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = v32.__r_.__value_.__l.__size_;
          }

          if (v28)
          {
            goto LABEL_59;
          }

          v23 = "Music Videos";
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_59;
          }

          if (!v20)
          {
            goto LABEL_67;
          }

          (*(*v17 + 88))(v17, 1376260, &v32);
          v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v32.__r_.__value_.__l.__size_;
          }

          if (v22)
          {
            goto LABEL_59;
          }

          v23 = "TV Shows";
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_67;
        }

        (*(*v17 + 88))(v17, 1376259, &v32);
        v26 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = v32.__r_.__value_.__l.__size_;
        }

        if (v26)
        {
          goto LABEL_59;
        }

        v23 = "Movies";
      }

      std::string::assign(&v32, v23);
LABEL_59:
      v30 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      v31 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v32.__r_.__value_.__l.__size_;
      }

      if (v30)
      {
        sub_1000A596C(a5, &v32);
        v31 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      if (v31 < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (a4 == ++v18)
      {
        return;
      }
    }
  }

  v11 = (*(*a2 + 120))(a2);
  v12 = *(a1 + 1216);
  if (v12 > 3)
  {
    goto LABEL_69;
  }

  v13 = v11;
  (*(*a2 + 112))(a2, 1, v12 == 2);
  (*(*a2 + 512))(a2, a3, a4, a5);
  v14 = *(a1 + 1216);
  if (v14 > 3)
  {
    goto LABEL_69;
  }

  v15 = *(*a2 + 112);

  v15(a2, v13, v14 == 2);
}

uint64_t sub_1000A6DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result && (result & 7) == 0)
  {
    return (*(*a2 + 488))(a2, a3, a4, a5);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A6E10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  result = (*(*a2 + 120))(a2);
  v10 = *(v5 + 1216);
  if (v10 >= 4 || (v11 = result, (*(*a2 + 112))(a2, 1, v10 == 2), result = (*(*a2 + 520))(a2, a3, a4, a5), v12 = *(v5 + 1216), v12 > 3))
  {
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v13 = *(*a2 + 112);

  return v13(a2, v11, v12 == 2);
}

uint64_t sub_1000A6F64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  result = (*(*a2 + 120))(a2);
  v10 = *(v5 + 1216);
  if (v10 >= 4 || (v11 = result, (*(*a2 + 112))(a2, 1, v10 == 2), result = (*(*a2 + 536))(a2, a3, a4, a5), v12 = *(v5 + 1216), v12 > 3))
  {
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v13 = *(*a2 + 112);

  return v13(a2, v11, v12 == 2);
}

uint64_t sub_1000A70B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (v5 = result, (result & 7) != 0) || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  result = (*(*result + 64))(result);
  if (!result)
  {
    return result;
  }

  v10 = *(v5 + 1216);
  if (v10 >= 4)
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  if (v10 == 1)
  {
    v11 = *(*a2 + 560);

    return v11(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1000A71B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 360))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A72E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 368))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A7414(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 376))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A7544(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 384))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A7674(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 416))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A77A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = (*(*a2 + 120))(a2);
      v4 = *(v2 + 1216);
      if (v4 < 4)
      {
        v5 = result;
        (*(*a2 + 112))(a2, 1, v4 == 2);
        result = (*(*a2 + 424))(a2);
        v6 = *(v2 + 1216);
        if (v6 <= 3)
        {
          v7 = result;
          (*(*a2 + 112))(a2, v5, v6 == 2);
          return v7;
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A78D4(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  v2 = result;
  result = sub_100046A8C();
  if (!result)
  {
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v3 = (*(*result + 80))(result);
  v4 = dword_10012B4A4;
  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = (*(*result + 144))(result);
  *v2 = 4;
  if (v2 == -1)
  {
LABEL_17:
    __break(0x5500u);
    return result;
  }

  v5 = 0x100000000000000;
  if (!v3)
  {
    v5 = 0;
  }

  if (!v4)
  {
    v5 |= 0x600000000000000uLL;
  }

  if (result)
  {
    v5 |= 0x800000000000000uLL;
  }

  *(v2 + 1) = v5 | 0xE000000000000000;
  return 0;
}

uint64_t sub_1000A79C8(std::string *a1, const std::string *a2, std::string *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  v4 = a1->__r_.__value_.__r.__words[0];
  if ((a1->__r_.__value_.__r.__words[0] & 7) != 0)
  {
LABEL_26:
    __break(0x5517u);
    goto LABEL_27;
  }

  v5 = a2;
  v6 = __CFADD__(v4, a2 - v4);
  if ((a2 - v4) < 0 != v6)
  {
LABEL_25:
    __break(0x5513u);
    goto LABEL_26;
  }

  size = a1->__r_.__value_.__l.__size_;
  v9 = a1->__r_.__value_.__r.__words[2];
  if (size < v9)
  {
    if (a2 == size)
    {
      sub_1000251BC(a1, a3);
      return v5;
    }

    if (a2 > 0xFFFFFFFFFFFFFFE7)
    {
      goto LABEL_25;
    }

    sub_1000A931C(a1, a2, size, &a2[1]);
    if (v4 && (v5 & 7) == 0)
    {
      std::string::operator=(v5, a3);
      return v5;
    }

    goto LABEL_24;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((size - v4) >> 3);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v11;
  v19[1] = v11;
  v12 = __CFADD__(v10, 1);
  v13 = v10 + 1;
  if (v12)
  {
LABEL_27:
    __break(0x5500u);
LABEL_28:
    sub_1000E1E08();
  }

  if (v13 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_28;
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v4) >> 3);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3);
  v16 = 0x5555555555555556 * ((v9 - v4) >> 3);
  if (v16 <= v13)
  {
    v16 = v13;
  }

  if (v15 >= 0x555555555555555)
  {
    v17 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v17 = v16;
  }

  sub_10002543C(v19, v17, v14, a1);
  sub_1000A9418(v19, a3);
  v5 = sub_1000A95B0(a1, v19, v5);
  sub_100025550(v19);
  return v5;
}

void sub_1000A7B50(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0 || (v4 = *(a2 + 32)) == 0 || (v4 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_36;
  }

  v5 = *(v4 + 126);
  v10 = 0;
  if (!sub_100097578(&v10, *(a1 + 8)))
  {
    if (v10 >= 2u)
    {
LABEL_36:
      __break(0x550Au);
      return;
    }

    if ((v10 & 1) != 0 && v5 <= 0x4F)
    {
      if (v5 > 25)
      {
        switch(v5)
        {
          case 26:
            v9 = sub_10009FF94(a1, v4, a2);
            if (v9 == 6 || !v9)
            {
              v4 = 0;
            }

            break;
          case 56:
            sub_1000A0918(a1, v4);
            break;
          case 59:
            sub_10009F1E8(a1, v4);
            break;
          default:
            goto LABEL_32;
        }
      }

      else
      {
        if (v5 == 22)
        {
          sub_10009EFB0(a1, v4);
          goto LABEL_16;
        }

        if (v5 != 23)
        {
          if (v5 == 24)
          {
            sub_10009F950(a1, v4);
            goto LABEL_16;
          }

LABEL_32:
          sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoRemoteUI::StartProcessRemoteUICmd Unknown CmdID: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 9711, v5);
          goto LABEL_16;
        }

        sub_10009F254(a1, v4);
      }
    }
  }

LABEL_16:
  v6 = *(a2 + 60);
  if (v6 >= 2)
  {
    goto LABEL_36;
  }

  if (v4 && (v6 & 1) == 0)
  {
    if (*(v4 + 126) == v5)
    {
      v7 = *(v4 + 8);
      v8 = *(v4 + 68);
      sub_1000B7854(v4);
    }

    sub_10009EB44(a1, v4, 0, 1u);
  }
}

uint64_t sub_1000A7D60(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  if (*(a2 + 20) != 26)
  {
    v5 = 2;
    goto LABEL_13;
  }

  v4 = *(a2 + 104);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  result = sub_1000A00EC(result, a2, *(v4 + 8), *(v4 + 4), *(v4 + 12), *(v4 + 16), *(v4 + 20), *(v4 + 24));
  if (result >= 0x20)
  {
    goto LABEL_21;
  }

  v5 = result;
  if (!result || result == 6)
  {
    return v5;
  }

LABEL_13:
  v6 = *(a2 + 60);
  if (v6 < 2)
  {
    if (v6)
    {
      return v5;
    }

    v7 = *(a2 + 32);
    if (!v7)
    {
      return v5;
    }

    if ((v7 & 7) == 0)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 68);
      v10 = *(v7 + 126);
      sub_1000B7854(v7);
      if (sub_10009EB44(v2, v7, 0, 1u))
      {
        sub_1000B9034(v7);
      }

      return v5;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(0x550Au);
  return result;
}

uint64_t *sub_1000A7E90(uint64_t *result, unint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  v2 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    goto LABEL_12;
  }

  v3 = __CFADD__(v2, 24 * a2);
  if ((a2 * 24) >> 64 != (24 * a2) >> 63 || v3)
  {
    __break(0x5513u);
  }

  else if (!v2 || (result = (v2 + 24 * a2), (result & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
LABEL_12:
    sub_1000E1E08();
  }

  return result;
}

uint64_t sub_1000A7F14(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (a2)
    {
      if ((a2 & 7) == 0)
      {
        return (*(*a2 + 64))(a2);
      }
    }

    else
    {
      __break(0x5518u);
    }
  }

  __break(0x5516u);
  return result;
}