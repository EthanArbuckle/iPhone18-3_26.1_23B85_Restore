uint64_t sub_10008505C(uint64_t result)
{
  if (result)
  {
    if ((result & 7) == 0)
    {
      result = sub_100018DC0(result);
      if (result)
      {
        if ((result & 7) == 0)
        {
          (*(*result + 16))(result, 0);
          sub_1000B748C();
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100085118(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_79;
  }

  v8 = *(a1 + 8);
  v9 = sub_100065198(a1);
  v10 = v9;
  if (!v8 || !a2 || !v9)
  {
    sub_1000DDEEC(0, 4, "%s:%d One or more of handle(%d), pProtoMgr(%d), devPort(%d) is NULL!\n", "HandlePortDetach", 10890, v8 == 0, v9 == 0, a2 != 0);
    return;
  }

  sub_100007DB0(a1 + 2376);
  if ((a2 & 7) != 0)
  {
    goto LABEL_79;
  }

  sub_100007DB0(a2 + 48);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v11;
  v36 = v11;
  v34 = v11;
  if (a3 >= 0x20)
  {
    goto LABEL_80;
  }

  if (a3 == 9)
  {
    LOBYTE(v33) = -86;
    if ((v8 & 7) != 0)
    {
      goto LABEL_79;
    }

    if (sub_10005B694(v8, 4u) && !sub_100097578(&v33, v8))
    {
      if (v33 > 1u)
      {
        goto LABEL_80;
      }

      if (v33)
      {
        sub_100097394(v8, 0);
      }
    }

    sub_100074AEC(a1, 0, 1);
    *(a1 + 1512) = 0;
    *(a1 + 2200) = 0;
    sub_10007478C(a1 + 1992);
    *(a1 + 1272) = 0;
    sub_100074588(a1);
    v12 = *(a1 + 8);
    if (!v12 || (v12 & 7) != 0)
    {
      goto LABEL_79;
    }

    sub_10005BD80(v12);
    if (*(a1 + 2343) < 0)
    {
      v13 = *(a1 + 2320);
      if (!v13)
      {
        goto LABEL_79;
      }

      *v13 = 0;
      *(a1 + 2328) = 0;
    }

    else
    {
      *(a1 + 2320) = 0;
      *(a1 + 2343) = 0;
    }

    sub_100075A48(a1, 0, 1);
    pthread_mutex_lock((a1 + 1448));
    v14 = *(a1 + 1408);
    if (v14)
    {
      if ((v14 & 3) == 0)
      {
        sub_100059F4C(v14);
        operator delete();
      }

      goto LABEL_79;
    }

    pthread_mutex_unlock((a1 + 1448));
    sub_10007692C(a1, v15, 0);
    *(a1 + 1528) = 0;
    *(a1 + 1532) = 0;
    *(a1 + 1588) = 0;
    if ((v10 & 7) != 0)
    {
LABEL_79:
      __break(0x5516u);
      goto LABEL_80;
    }

    sub_100059100(v10, a2);
    sub_100094564(v10, a2, 0);
    *(a1 + 1533) = 0;
    *(a1 + 1536) = 0x6400000019;
    *(a1 + 1544) = a2;
    *(a1 + 1552) = 0;
    *(a1 + 1560) = *(a1 + 8);
    *(a1 + 1584) = 0;
    v16 = *(a1 + 2204);
    if (v16 > 1)
    {
      goto LABEL_80;
    }

    if (v16)
    {
      v17 = sub_100048620();
      if (!v17 || (v17 & 7) != 0)
      {
        goto LABEL_79;
      }

      (*(*v17 + 304))(v17, a2, 0);
    }
  }

  else if ((v8 & 7) != 0)
  {
    goto LABEL_79;
  }

  sub_10005C860(v8);
  v18 = *(a1 + 8);
  if (!v18 || (v18 & 7) != 0)
  {
    goto LABEL_79;
  }

  if (sub_10005ACF4(v18))
  {
    goto LABEL_39;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_79;
  }

  if (sub_1000933B0(v10, a2) == 19 || sub_1000933B0(v10, a2) == 56)
  {
LABEL_39:
    sub_1000DDEEC(0, 4, "%s:%d CIapGeneralLingo::NotifyEvent kAccessoryEventDeviceLeft port: %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10986, a2);
    sub_1000743E4(a1, 0);
  }

  v19 = *(a1 + 8);
  if (!v19 || (v19 & 7) != 0)
  {
    goto LABEL_79;
  }

  v20 = sub_10005BDFC(v19);
  if (v20 != v20)
  {
LABEL_80:
    __break(0x550Au);
    return;
  }

  if (v20 == -1)
  {
    v21 = 16;
  }

  else
  {
    v21 = v20;
  }

  DWORD1(v34) = v21;
  if (a3 != 10)
  {
    goto LABEL_50;
  }

  v22 = sub_100065198(v20);
  if (!v22 || (v22 & 7) != 0)
  {
    goto LABEL_79;
  }

  if (sub_1000933EC(v22, a2) != -1)
  {
LABEL_50:
    *&v34 = __PAIR64__(v21, a3);
    *(&v34 + 1) = a2;
    if ((v10 & 7) != 0)
    {
      goto LABEL_79;
    }

    LODWORD(v35) = sub_1000932FC(v10, a2);
    DWORD1(v35) = a4;
    *(&v35 + 1) = *(a1 + 8);
    sub_100077384(a1, 0, 0, &v34, 48);
  }

  if (a3 == 9)
  {
    v23 = 0xFFFF;
  }

  else
  {
    v23 = 111;
  }

  sub_100074C54(a1, v23);
  if (*(a1 + 1192) == a2)
  {
    *(a1 + 1192) = 0;
    if (DWORD1(v34) != 11)
    {
      v24 = sub_100048620();
      if (!v24 || (v24 & 7) != 0)
      {
        goto LABEL_79;
      }

      (*(*v24 + 256))(v24, 1);
    }
  }

  v25 = *(a1 + 8);
  if (!v25 || (v25 & 7) != 0)
  {
    goto LABEL_79;
  }

  if ((sub_10005ACF4(v25) & 1) != 0 || (a3 | 2) == 0xA)
  {
    goto LABEL_67;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_79;
  }

  v26 = sub_100058EBC(v10, a2);
  if ((v26 + 8) > 0xF)
  {
    goto LABEL_80;
  }

  sub_100074630(a1, a2, 1, v26 != -2);
LABEL_67:
  sub_10005C860(v8);
  if ((v10 & 7) != 0)
  {
    goto LABEL_79;
  }

  v27 = sub_100092B58(v10, a2);
  v28 = v27;
  if (a3 != 9)
  {
    (*(*v10 + 144))(v10, *(a1 + 8), v27 & ~a4);
  }

  (*(*v10 + 160))(v10, *(a1 + 8), v28 & ~a4);
  sub_100093438(v10, a2);
  sub_100092FE4(v10, a2, 0, 0);
  v32 = -1;
  v33 = -1;
  v30 = sub_100065198(v29);
  if (!v30 || (v30 & 7) != 0)
  {
    goto LABEL_79;
  }

  sub_1000C7FA0(v30, &v33, &v32);
  if ((v33 + 8) > 0xF)
  {
    goto LABEL_80;
  }

  if ((v33 - 1) >= 2 && sub_100068718(a2))
  {
    v31 = sub_1000C4254();
    if (!v31 || (v31 & 7) != 0)
    {
      goto LABEL_79;
    }

    sub_1000C686C(v31);
  }
}

uint64_t sub_1000856D8(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (!result)
  {
    goto LABEL_19;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = sub_10005BB24(result, 0);
  result = sub_100065198(v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100092790(result, v7, 0);
  if (!result)
  {
    sub_100018DC0(v7);
    goto LABEL_16;
  }

  v9 = result;
  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  result = sub_100018DC0(v7);
  if (result)
  {
    if (a3 < 0x20)
    {
      sub_100085118(v9, result, a3, a4);
      goto LABEL_16;
    }

LABEL_20:
    __break(0x550Au);
    return result;
  }

LABEL_16:

  return sub_10005BB6C(v7, 0);
}

void *sub_1000857D8(int a1, uint64_t a2)
{
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v11, 1u);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = off_100113858;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDDDC(v11, &v9);
  v5 = 1000 * v9;
  if ((v9 * 1000) >> 64 != (1000 * v9) >> 63)
  {
    __break(0x550Cu);
    goto LABEL_10;
  }

  if (__OFADD__(v5, v10 / 1000000))
  {
LABEL_10:
    __break(0x5500u);
    goto LABEL_11;
  }

  v6 = byte_10012BE40;
  if (byte_10012BE40 >= 0x10u)
  {
LABEL_11:
    __break(0x5512u);
    goto LABEL_12;
  }

  if (24 * byte_10012BE40 > ~&unk_10012BCC0)
  {
LABEL_12:
    __break(0x5513u);
    return result;
  }

  v7 = &unk_10012BCC0 + 24 * byte_10012BE40;
  *v7 = v5 + v10 / 1000000;
  *(v7 + 2) = a1;
  *(v7 + 2) = a2;
  if (v6 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 + 1;
  }

  byte_10012BE40 = v8;
  v11[0] = off_100113858;
  return sub_1000DDCF4(v11);
}

uint64_t sub_1000858FC(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (!*a1)
  {
    goto LABEL_31;
  }

  v2 = *(a1 + 20);
  if (v2 > 0x1F)
  {
    goto LABEL_33;
  }

  if (v2 >= 0x15)
  {
    sub_1000DDEEC(0, 4, "%s:%d kItpHeadsetCmdCount < pHeadsetData->cmdID\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 11229);
  }

  v3 = sub_100065198(a1);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_32;
  }

  v4 = sub_1000949E0(v3, *a1, 0);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  if ((v4 & 7) != 0)
  {
    goto LABEL_32;
  }

  sub_10005BB24(v4, 0);
  v6 = sub_1000653EC(0, v5);
  if (!v6)
  {
    sub_1000DDEEC(0, 4, "%s:%d Cannot get GeneralLingo object pointer. Cannot TxdTunnelDataToDev.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 11317);
    goto LABEL_20;
  }

  v7 = v6;
  if ((v6 & 7) != 0)
  {
LABEL_32:
    __break(0x5516u);
LABEL_33:
    __break(0x550Au);
  }

  if (!sub_10007C398(*a1))
  {
LABEL_20:
    v12 = 2;
LABEL_28:
    sub_10005BB6C(v5, 0);
    return v12;
  }

  v20 = -86;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[14] = v8;
  v19[15] = v8;
  v19[12] = v8;
  v19[13] = v8;
  v19[10] = v8;
  v19[11] = v8;
  v19[8] = v8;
  v19[9] = v8;
  v19[6] = v8;
  v19[7] = v8;
  v19[4] = v8;
  v19[5] = v8;
  v19[2] = v8;
  v19[3] = v8;
  v19[0] = v8;
  v19[1] = v8;
  v18 = 257;
  v9 = *a1;
  v10 = sub_1000C4254();
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (sub_100094598(v10, *a1))
  {
    v11 = 0;
  }

  else
  {
    v13 = *(v7 + 1520);
    LOWORD(v19[0]) = bswap32(v13) >> 16;
    v18 = 255;
    *(a1 + 10) = v13;
    v11 = 2;
  }

  v14 = v11;
  sub_100086310(v7, a1, v19 | v11, &v18);
  v12 = v15;
  if (v15)
  {
    goto LABEL_28;
  }

  if (!v9 || !v18)
  {
LABEL_30:
    __break(0x5518u);
LABEL_31:
    sub_1000E1D34();
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_32;
  }

  v16 = v14 + v18;
  result = (*(*v9 + 16))(v9, 0);
  if (!HIWORD(v16))
  {
    sub_1000B748C();
  }

  __break(0x5507u);
  return result;
}

size_t sub_100085C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a3 || (a3 & 7) != 0)
  {
    goto LABEL_87;
  }

  v5 = *a3;
  if (*a3 >= 8u)
  {
    goto LABEL_88;
  }

  result = 2;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 != 6)
      {
        return result;
      }

      if (*(a3 + 4) != 196613)
      {
        return 0;
      }

      if (*(a3 + 8) != *(a3 + 8))
      {
        goto LABEL_89;
      }

      LOBYTE(v32) = *(a3 + 8);
      v8 = sub_100088544(*(a1 + 8), 0xFu, &v32, 1u, 1u, 0, -1);
      v9 = sub_100065198(v8);
      if (v9 && (v9 & 7) == 0)
      {
        v10 = sub_100092790(v9, *(a1 + 8), 3u);
        if (!v10)
        {
          return 0;
        }

        if ((v10 & 7) == 0)
        {
          sub_100073B60(v10, v32 != 0);
          return 0;
        }
      }

      goto LABEL_87;
    }

    if (*(a3 + 4) != 524310)
    {
      return 22;
    }

    v16 = *(a1 + 8);
    if (v16 && (v16 & 7) == 0)
    {
      if ((*(v16 + 1993) & 2) == 0)
      {
        return 0;
      }

      sub_1000DDEEC(0, 4, "%s:%d Received iPod Database Changed notification.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 14504);
      result = sub_10007C83C(a1);
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 8);
      v18 = 9;
      v19 = 0;
      v20 = 0;
      goto LABEL_63;
    }

    goto LABEL_87;
  }

  if (v5 == 2)
  {
    if (!a2)
    {
      return 0;
    }

    result = 0;
    v12 = *(a3 + 4);
    if (v12 <= 327687)
    {
      if (v12 == 327685)
      {
        v29 = *(a1 + 8);
        if (v29 && (v29 & 7) == 0)
        {
          if ((*(v29 + 1993) & 4) != 0)
          {
            sub_10007E414(a1, 0, a2);
            v29 = *(a1 + 8);
          }

          if (v29 && (v29 & 7) == 0)
          {
            if ((*(v29 + 1994) & 8) != 0)
            {
              sub_10007E798(a1, 0, a2);
            }

            return 0;
          }
        }

        goto LABEL_87;
      }

      if (v12 != 327687)
      {
        return result;
      }

      v35 = -1431655936;
      v32 = 3;
      v36 = 0xAAAAAAAA00000000;
      v33 = 0u;
      v34 = 0u;
      __s = 0;
      if (*(a3 + 16))
      {
        v13 = sub_10004B1AC();
        if (!v13 || (v13 & 7) != 0)
        {
          goto LABEL_87;
        }

        (*(*v13 + 144))(v13, &v32);
        if (v32 > 3)
        {
          goto LABEL_88;
        }

        if (!v32)
        {
          if (!__s)
          {
            goto LABEL_79;
          }

          result = strlen(__s);
          v14 = result + 1;
          if (result != -1)
          {
            if (v14 > 0xFF)
            {
              goto LABEL_89;
            }

            v15 = result + 1;
            if (v14 <= 0xDD)
            {
LABEL_79:
              operator new[]();
            }

            sub_1000DDEEC(0, 4, "%s:%d lengthOfSSIDString + lengthOfPassphraseString are too large\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 14375);
            if (__s)
            {
              bzero(__s, v15);
              if (__s)
              {
                operator delete[]();
              }
            }

            if ((a2 & 7) == 0)
            {
              (*(*a2 + 16))(a2, 0);
              sub_1000B748C();
            }

LABEL_87:
            __break(0x5516u);
LABEL_88:
            __break(0x550Au);
          }

LABEL_90:
          __break(0x5500u);
          __break(0x5513u);
          return result;
        }
      }

      else
      {
        v32 = 2;
      }

      operator new[]();
    }

    if (v12 == 327688)
    {
      sub_10007E6D4(a1);
      return 0;
    }

    if (v12 != 327708)
    {
      return result;
    }

    v21 = *(a3 + 16);
    v22 = *v21;
    LOWORD(v33) = *(v21 + 4);
    v32 = v22;
    if ((a2 & 7) != 0)
    {
      goto LABEL_87;
    }

    v30 = v32;
    v31 = v33;
    v23 = a2 + 56;
    result = sub_10008E098(a2 + 48, &v30);
    if (v23 == result)
    {
      return 0;
    }

    if (v21 < 0xFFFFFFFFFFFFFFFALL)
    {
      v24 = bswap64(*(v21 + 6));
      v25 = sub_10008E370(a1 + 2376, &v32);
      if (a1 + 2384 == v25)
      {
        result = sub_100089F94(a1 + 2376, &v32);
        *result = v24;
      }

      else
      {
        if (!v25 || (v25 & 7) != 0)
        {
          goto LABEL_87;
        }

        v26 = *(v25 + 40);
        result = sub_100089F94(a1 + 2376, &v32);
        *result = v24;
        if (v26 == v24)
        {
          return 0;
        }
      }

      if (!(*(a3 + 24) >> 16))
      {
        v19 = *(a3 + 16);
        v17 = *(a1 + 8);
        v20 = *(a3 + 24);
        v18 = 17;
        v28 = 2;
        goto LABEL_64;
      }

      goto LABEL_89;
    }

    goto LABEL_90;
  }

  if (v5 != 3)
  {
    return result;
  }

  result = 0;
  v7 = *(a3 + 4);
  if (v7 > 1310722)
  {
    if (v7 != 1310723)
    {
      if (v7 != 1310724)
      {
        return result;
      }

      if (!(*(a3 + 24) >> 16))
      {
        sub_100089740(a1, *(a3 + 24));
        return 0;
      }

      goto LABEL_89;
    }

    if (!(*(a3 + 24) >> 16))
    {
      LOWORD(v32) = *(a3 + 24);
      v17 = *(a1 + 8);
      v19 = &v32;
      v18 = 11;
      v20 = 2;
LABEL_63:
      v28 = 1;
LABEL_64:
      sub_100088544(v17, v18, v19, v20, v28, 0, -1);
      return 0;
    }

LABEL_89:
    __break(0x5507u);
    goto LABEL_90;
  }

  if (v7 == 1310721)
  {
    v27 = *(a3 + 24);
    if ((v27 & 1) == 0 && v27)
    {
      sub_100087710(a1, *(v27 + 2), *v27, -1);
      return 0;
    }

    goto LABEL_87;
  }

  if (v7 != 1310722)
  {
    return result;
  }

  if (*(a3 + 24) >> 16)
  {
    goto LABEL_89;
  }

  sub_100087A14(a1, *(a3 + 24), -1);
  return 0;
}

void sub_100086310(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!a2 || !a3 || !a4)
  {
    goto LABEL_62;
  }

  if (a4)
  {
    goto LABEL_64;
  }

  if (!*a4)
  {
    goto LABEL_62;
  }

  if ((a2 & 7) != 0)
  {
LABEL_64:
    __break(0x5516u);
    goto LABEL_65;
  }

  v7 = *(a2 + 20);
  if (v7 > 0x1F)
  {
    goto LABEL_63;
  }

  if (v7 >= 0x15)
  {
    goto LABEL_62;
  }

  *a3 = 0;
  v8 = *(a2 + 20);
  if (v8 > 0x1F)
  {
LABEL_63:
    __break(0x550Au);
    goto LABEL_64;
  }

  if (a3 == -1)
  {
    goto LABEL_65;
  }

  *(a3 + 1) = v8;
  v9 = *(a2 + 20);
  if (v9 > 0x1F)
  {
    goto LABEL_63;
  }

  v10 = 2;
  if (v9 <= 11)
  {
    if (v9 > 6)
    {
      if (v9 != 7)
      {
        if (v9 == 9)
        {
          if (a3 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_65;
          }

          *(a3 + 2) = *(a2 + 35);
          if (a3 >= 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_66;
          }

          *(a3 + 3) = bswap32(*(a2 + 32)) >> 16;
          if (a3 >= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_66;
          }

          *(a3 + 5) = bswap32(*(a2 + 28));
          *(a3 + 5) = *(a2 + 34);
          if (a3 > 0xFFFFFFFFFFFFFFF6)
          {
            goto LABEL_65;
          }

          *(a3 + 9) = *(a2 + 36);
          v10 = 25;
          goto LABEL_60;
        }

        if (v9 != 10)
        {
          goto LABEL_55;
        }

LABEL_60:
        if (v10 <= *a4)
        {
          *a4 = v10;
          return;
        }

        goto LABEL_62;
      }

      if (a3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        LOBYTE(v11) = *(a2 + 35);
LABEL_44:
        *(a3 + 2) = v11;
        v10 = 3;
        goto LABEL_60;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          goto LABEL_60;
        }

        if (v9 == 5)
        {
          v11 = *(a2 + 24);
          if (v11 <= 7)
          {
            if (v11 != 7)
            {
              if (a3 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_65;
              }

              goto LABEL_44;
            }

LABEL_62:
            __break(0x5518u);
            goto LABEL_63;
          }

          goto LABEL_63;
        }

LABEL_55:
        sub_1000DDEEC(0, 4, "%s:%d Unrecognized/unsupported iTP headset command !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10133);
        return;
      }

      if (a3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(a3 + 2) = *(a2 + 32);
        v13 = *(a2 + 28);
        if (v13 > 0x1F)
        {
          goto LABEL_63;
        }

        if (a3 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_65;
        }

LABEL_59:
        *(a3 + 3) = v13;
        v10 = 4;
        goto LABEL_60;
      }
    }

LABEL_65:
    __break(0x5513u);
    goto LABEL_66;
  }

  if (v9 <= 15)
  {
    if ((v9 - 13) < 2)
    {
      goto LABEL_60;
    }

    if (v9 != 12)
    {
      goto LABEL_55;
    }

    if (a3 < 0xFFFFFFFFFFFFFFFELL)
    {
      *(a3 + 2) = bswap32(*(a2 + 28));
      v10 = 6;
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  if (v9 != 16)
  {
    if (v9 != 18 && v9 != 20)
    {
      goto LABEL_55;
    }

    v12 = *(a2 + 28);
    if (v12 > 1)
    {
      goto LABEL_63;
    }

    if (v12)
    {
      sub_1000DDEEC(0, 4, "%s:%d invalid event %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10125, 1);
      v10 = 2;
      goto LABEL_60;
    }

    if (a3 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_65;
    }

    *(a3 + 2) = 0;
    if (a3 > 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_65;
    }

    LOBYTE(v13) = *(a2 + 32);
    goto LABEL_59;
  }

  v14 = strlen((a2 + 28));
  v15 = v14 + 1;
  if (v14 == -1)
  {
LABEL_66:
    __break(0x5500u);
    goto LABEL_67;
  }

  if (v15 <= 0xFF)
  {
    if (v15 > 0x20)
    {
      goto LABEL_62;
    }

    if (a3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      memcpy((a3 + 2), (a2 + 28), (v14 + 1));
      v10 = v15 + 2;
      goto LABEL_60;
    }

    goto LABEL_65;
  }

LABEL_67:
  __break(0x5507u);
}

void sub_100086604(id a1)
{
  v1 = sub_100065198(a1);
  if (!v1 || (v1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    sub_100094920(v1, sub_100086654, 0, 0);
  }
}

uint64_t sub_100086654(uint64_t a1)
{
  result = sub_100065198(a1);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_100092790(result, a1, 0);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v3 = **result;
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v4 = *(result + 2201);
  if (v4 >= 2)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  if (v4)
  {
    *(result + 2201) = 0;
  }

  return result;
}

void sub_100086704(uint64_t a1, unsigned int a2, int a3, unint64_t a4)
{
  if (!a1)
  {
    goto LABEL_192;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_192;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v5;
  v63 = v5;
  v64[4] = v5;
  v64[5] = v5;
  v64[2] = v5;
  v64[3] = v5;
  v64[0] = v5;
  v64[1] = v5;
  v60 = v5;
  v61 = v5;
  v59 = v5;
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_192;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_192;
  }

  v10 = sub_100018DC0(v6);
  v11 = *(a1 + 8);
  if (!v11 || (v11 & 7) != 0)
  {
    goto LABEL_192;
  }

  v12 = sub_10005BDFC(v11);
  LODWORD(v59) = 17;
  if (v12 != v12)
  {
    goto LABEL_193;
  }

  v13 = v12;
  v14 = v12 == -1 ? 16 : v12;
  DWORD1(v59) = v14;
  *(&v59 + 1) = v10;
  v15 = sub_100065198(v12);
  if (!v15)
  {
    goto LABEL_192;
  }

  if ((v15 & 7) != 0)
  {
    goto LABEL_192;
  }

  v16 = sub_1000932FC(v15, v10);
  LODWORD(v60) = v16;
  v17 = sub_100065198(v16);
  if (!v17 || (v17 & 7) != 0)
  {
    goto LABEL_192;
  }

  v19 = sub_100092B58(v17, v10);
  DWORD1(v60) = v19;
  v20 = *(a1 + 8);
  *(&v60 + 1) = v20;
  if (a3 <= 112)
  {
    if (a3 > 47)
    {
      if (a3 > 95)
      {
        if (a3 == 96)
        {
          return;
        }

        if (a3 != 112)
        {
          goto LABEL_139;
        }

        v30 = *(a1 + 1528);
        if (v30 <= 7)
        {
          if (v30 != 1)
          {
            return;
          }

          v31 = *(a1 + 2368);
          if (v31 <= 1)
          {
            if ((v31 & 1) == 0)
            {
              if (!v20 || (v20 & 7) != 0)
              {
                goto LABEL_192;
              }

              if (sub_10005BCA0(v20))
              {
                if (!v10)
                {
                  v32 = *(a1 + 8);
                  if (!v32)
                  {
                    goto LABEL_192;
                  }

                  if ((v32 & 7) != 0)
                  {
                    goto LABEL_192;
                  }

                  v33 = sub_10005B04C(v32);
                  v10 = v33;
                  if (v33)
                  {
                    if ((v33 & 7) != 0)
                    {
                      goto LABEL_192;
                    }
                  }
                }

                if (v13 != 12)
                {
                  v34 = *(a1 + 8);
                  if (!v34 || (v34 & 7) != 0)
                  {
                    goto LABEL_192;
                  }

                  if ((sub_10005BFD0(v34) & 1) == 0)
                  {
                    if (!v10 || (v10 & 7) != 0)
                    {
                      goto LABEL_192;
                    }

LABEL_94:
                    v38 = **v10;
                    if (v39 && (v39 & 7) == 0)
                    {
                      v40 = *(a1 + 8);
                      v41 = (*(*v39 + 392))(v39);
                      sub_100076B84(1, v40, v10, v41);
                      goto LABEL_97;
                    }

LABEL_192:
                    __break(0x5516u);
                    goto LABEL_193;
                  }
                }

LABEL_97:
                v42 = *(a1 + 8);

                sub_100076C34(v42, v10, 0);
                return;
              }
            }

            LODWORD(v59) = 1;
            DWORD1(v59) = v13;
            if (!v10)
            {
              v54 = *(a1 + 8);
              if (!v54 || (v54 & 7) != 0)
              {
                goto LABEL_192;
              }

              v10 = sub_10005AC88(v54);
            }

            *(&v59 + 1) = v10;
            *&v60 = 0;
            sub_100077384(a1, 0, 0, &v59, 48);
            if (v13 <= 15 && v13 != -1 && (v13 & 0x80000000) == 0 && ((1 << v13) & 0xE400) != 0)
            {
              sub_100076E70(a1, v55, 1);
            }

            if (a4 != v13)
            {
              sub_1000DDEEC(0, 4, "%s:%d cmdData != accResistorID\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10553);
            }

            if (a4 >= 0x10)
            {
              sub_1000DDEEC(0, 4, "%s:%d kIapAccIDSerialBase <= cmdData\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10557);
            }

            LODWORD(v59) = 17;
            v56 = sub_100048620();
            if (!v56 || (v56 & 7) != 0)
            {
              goto LABEL_192;
            }

            v57 = (*(*v56 + 224))(v56);
            if (v13 == 12 || v13 == 6)
            {
              *(a1 + 1528) = 5;
              goto LABEL_180;
            }

            if (v57)
            {
              v58 = 5;
            }

            else
            {
              v58 = 4;
            }

            *(a1 + 1528) = v58;
            if (v57)
            {
              goto LABEL_180;
            }

LABEL_161:
            *(a1 + 1532) = 1;
LABEL_180:
            v26 = &v59;
            v27 = a1;
            v28 = 0;
            v29 = 48;
            goto LABEL_181;
          }
        }

LABEL_193:
        __break(0x550Au);
      }

      if (a3 != 48)
      {
        if (a3 != 93)
        {
          goto LABEL_139;
        }

        if (a4 && (a4 & 7) == 0)
        {
          v23 = *(a4 + 28);
          v24 = *a4;
          if (v23 > 2)
          {
            sub_100088018(v20, v24);
          }

          else
          {
            sub_100087D30(v20, v24, *(a4 + 8), *(a4 + 12), a4 + 16, *(a4 + 24), 0, v23);
          }

          operator delete();
        }

        goto LABEL_192;
      }

      if (!sub_10007C398(v10))
      {
        return;
      }

      *(&v62 + 1) = 0;
      v63 = a4;
      if (!a4)
      {
        DWORD1(v63) = 3;
        BYTE8(v63) = 15;
      }

      *&v62 = v10;
      if (HIWORD(a2))
      {
LABEL_194:
        __break(0x5507u);
        goto LABEL_195;
      }

      WORD5(v62) = a2;
      WORD4(v62) = 49;
      v26 = &v62;
      v27 = a1;
      v28 = 2;
      v29 = 32;
    }

    else
    {
      if (a3 <= 22)
      {
        if (!a3)
        {
          if (!v10)
          {
            return;
          }

          v50 = sub_100065198(v20);
          if (v50 && (v50 & 7) == 0)
          {
            v51 = *(*v50 + 48);

            v51();
            return;
          }

          goto LABEL_192;
        }

        if (a3 != 20)
        {
          goto LABEL_139;
        }

LABEL_81:

        sub_100079038(a1, v10);
        return;
      }

      if (a3 == 23)
      {
        goto LABEL_81;
      }

      if (a3 != 46)
      {
        goto LABEL_139;
      }

      if (!sub_10007C398(v10))
      {
        return;
      }

      memset(v64 + 8, 0, 88);
      HIDWORD(v64[1]) = a4;
      LOBYTE(v64[2]) = 15;
      *&v64[0] = v10;
      if (HIWORD(a2))
      {
        goto LABEL_194;
      }

      WORD5(v64[0]) = a2;
      strcpy(v64 + 8, ",");
      v26 = v64;
      v27 = a1;
      v28 = 1;
      v29 = 96;
    }

LABEL_181:
    sub_100077384(v27, 0, v28, v26, v29);
    return;
  }

  if (a3 <= 116)
  {
    if (a3 <= 114)
    {
      if (a3 != 113)
      {
        v21 = *(a1 + 2201);
        if (v21 > 1)
        {
          goto LABEL_193;
        }

        if (v21)
        {
          v22 = *(a1 + 1528);
          if (v22 > 7)
          {
            goto LABEL_193;
          }

          if (v22 <= 3)
          {
            *(a1 + 1528) = 4;
            *(a1 + 1532) = 1;
            sub_100077384(a1, 0, 0, &v59, 48);
          }
        }

        *(a1 + 2201) = 0;
        return;
      }

      v35 = *(a1 + 1528);
      if (v35 <= 7)
      {
        if (v35 >= 4)
        {
          v52 = *(a1 + 2368);
          if (v52 > 1)
          {
            goto LABEL_193;
          }

          if (v52)
          {
            return;
          }

          if (!v10 || (v10 & 7) != 0)
          {
            goto LABEL_192;
          }

          if (!(*(*v10 + 272))(v10))
          {
            return;
          }
        }

        v36 = *(a1 + 2368);
        if (v36 > 1)
        {
          goto LABEL_193;
        }

        if ((v36 & 1) == 0)
        {
          if (!v10 || (v10 & 7) != 0)
          {
            goto LABEL_192;
          }

          if ((*(*v10 + 272))(v10))
          {
            v37 = *(a1 + 8);
            if (!v37 || (v37 & 7) != 0)
            {
              goto LABEL_192;
            }

            if ((sub_10005BFD0(v37) & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_97;
          }
        }

        if (v13 <= 15 && v13 != -1 && (v13 & 0x80000000) == 0 && ((1 << v13) & 0xE400) != 0)
        {
          v53 = *(a1 + 2212);
          if (v53 > 1)
          {
            goto LABEL_193;
          }

          if ((v53 & 1) == 0)
          {
            if (!v10)
            {
              goto LABEL_159;
            }

            if ((v10 & 7) != 0)
            {
              goto LABEL_192;
            }

            if (((*(*v10 + 224))(v10) & 1) == 0)
            {
LABEL_159:
              sub_100076E70(a1, v18, 1);
            }
          }
        }

        *(a1 + 1528) = 4;
        goto LABEL_161;
      }

      goto LABEL_193;
    }

    if (a3 == 115)
    {
      if (!v10)
      {
        sub_1000DDEEC(0, 4, "%s:%d NULL pPortObj!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10688);
      }

      pthread_mutex_lock((a1 + 1280));
      v43 = *(a1 + 1533);
      if (v43 <= 1)
      {
        if (v10 && (v43 & 1) != 0 && (!sub_1000B4430() || v19 != 2049))
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_192;
          }

          if ((*(*v10 + 256))(v10))
          {
            *(a1 + 1536) = 4;
            v44 = *(a1 + 8);
            if (!v44)
            {
              goto LABEL_192;
            }

            if ((v44 & 7) != 0)
            {
              goto LABEL_192;
            }

            sub_10005BF78(v44, 1);
            v45 = *(a1 + 8);
            if (!v45 || (v45 & 7) != 0)
            {
              goto LABEL_192;
            }

            if ((sub_10005BFD0(v45) & 1) == 0 && (*(*v10 + 272))(v10))
            {
              v46 = **v10;
              if (!v47 || (v47 & 7) != 0)
              {
                goto LABEL_192;
              }

              v48 = *(a1 + 8);
              v49 = (*(*v47 + 392))(v47);
              sub_100076B84(1, v48, v10, v49);
            }

            sub_100077384(a1, 0, 0, a1 + 1536, 48);
            sub_100074750(a1, v10);
            sub_100076C34(*(a1 + 8), v10, 0);
            sub_1000743E4(a1, 1);
            *(a1 + 1272) = 0;
          }

          else
          {
            sub_100074750(a1, v10);
          }
        }

        pthread_mutex_unlock((a1 + 1280));
        return;
      }

      goto LABEL_193;
    }

    pthread_mutex_lock((a1 + 1344));
    v25 = *(a1 + 2202);
    if (v25 != 255)
    {
      *(a1 + 2202) = v25 + 1;
      pthread_mutex_unlock((a1 + 1344));
      *(a1 + 2200) = 0;

      sub_100087400(a1, 1);
      return;
    }

    goto LABEL_194;
  }

  if (a3 <= 118)
  {
    if (a3 != 117)
    {
      if (!a4)
      {
        return;
      }

      sub_100087A14(a1, bswap32(*a4) >> 16, a2);
LABEL_136:

      operator delete[]();
    }

    if (!a4)
    {
      return;
    }

    if (a4 < 0xFFFFFFFFFFFFFFFELL)
    {
      sub_100087710(a1, __rev16(*a4), *(a4 + 2), a2);
      goto LABEL_136;
    }

LABEL_195:
    __break(0x5513u);
    return;
  }

  if (a3 == 119)
  {
    return;
  }

  if (a3 != 120)
  {
    if (a3 == 121)
    {
      if (v10 && (v10 & 7) == 0)
      {
        if ((*(*v10 + 208))(v10))
        {

          sub_100078C34(v10);
        }

        return;
      }

      goto LABEL_192;
    }

LABEL_139:
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::HandleCmdTimeout invalid timeout cmd ID: 0x%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 10854, a3);
    return;
  }

  sub_100075B90(a1, v10, 6);
}

uint64_t sub_100087400(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_36;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v4 = sub_100065198(result);
  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_35;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = sub_100018DC0(result);
  if (!v4)
  {
    goto LABEL_36;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_36;
  }

  v5 = result;
  v6 = (*(*v4 + 152))(v4, *(v2 + 8));
  v7 = (*(*v4 + 168))(v4, *(v2 + 8));
  sub_10007702C(v2, v5, v7 | v6);
  sub_100074630(v2, v5, 1, 1);
  sub_10007692C(v2, v8, 1);
  result = sub_1000CC7A0();
  if (!result)
  {
    goto LABEL_36;
  }

  v9 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v10 = sub_1000CE018(*(v2 + 8));
  (*(*v9 + 136))(v9, v10);
  v21 = 117;
  v20 = 0;
  while (!sub_10006733C(v2, -1, &v21, &v20, 0xFFFFu))
  {
    if (v20)
    {
      operator delete[]();
    }
  }

  v21 = 118;
  while (!sub_10006733C(v2, -1, &v21, &v20, 0xFFFFu))
  {
    if (v20)
    {
      operator delete[]();
    }
  }

  result = sub_100075A48(v2, 0, 0);
  v11 = *(v2 + 2372);
  if (!v11)
  {
    if (!a2)
    {
      goto LABEL_32;
    }

    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v15;
    v19 = v15;
    v17 = v15;
    if (v5)
    {
      if ((v5 & 7) != 0)
      {
        goto LABEL_36;
      }

      v16 = *(v5 + 32);
      if (v16)
      {
        LODWORD(v17) = 4;
        result = *(v2 + 8);
        if (!result)
        {
          goto LABEL_36;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_36;
        }

        result = sub_10005BDFC(result);
        DWORD1(v17) = result;
        *(&v18 + 1) = *(v2 + 8);
        *(&v17 + 1) = v5;
        if ((v16 & 7) != 0)
        {
          goto LABEL_36;
        }

        *&v18 = *(v16 + 36);
        sub_100077384(v2, 0, 0, &v17, 48);
        goto LABEL_32;
      }
    }

LABEL_35:
    __break(0x5518u);
    goto LABEL_36;
  }

  v12 = 0;
  LODWORD(v13) = -1;
  do
  {
    if ((v11 >> v12))
    {
      v13 = v12;
    }

    else
    {
      v13 = v13;
    }

    ++v12;
  }

  while (v12 != 15);
  v14 = sub_100068BB4(v13);
  sub_10008DD60(1, v5, v14);
LABEL_32:
  sub_10007478C(v2 + 1992);
  sub_100074588(v2);
  sub_1000743E4(v2, 1);
  *(v2 + 1272) = 0;
  result = *(v2 + 8);
  if (result && (result & 7) == 0)
  {
    return sub_10005BD80(result);
  }

LABEL_36:
  __break(0x5516u);
  return result;
}

uint64_t sub_100087710(uint64_t result, unsigned __int16 a2, unsigned __int8 a3, int a4)
{
  v10 = a2;
  v9 = a3;
  if (!result)
  {
    goto LABEL_29;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_29;
  }

  if (!sub_10007C398(result))
  {
    return 45;
  }

  result = sub_100013610(v4 + 1200, &v10);
  if (v4 + 1208 == result)
  {
    if (a4 != -1)
    {
      return 0;
    }

    if (*sub_1000894D0(v4 + 2088, &v9))
    {
      operator new();
    }

LABEL_27:
    operator new[]();
  }

  if (!result || (result & 7) != 0 || (v7 = *(result + 40)) == 0 || (v7 & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  v8 = *(v7 + 32);
  if (v8 < 2)
  {
    if ((v8 & 1) != 0 || a4 == -1 || *(v7 + 33) == 10)
    {
      if (*(v7 + 33) == 10)
      {
        result = 0;
        *(v7 + 33) = 0;
        return result;
      }

      return 0;
    }

    goto LABEL_27;
  }

LABEL_30:
  __break(0x550Au);
  __break(0x5513u);
  __break(0x5507u);
  return result;
}

uint64_t sub_100087A14(uint64_t result, unsigned __int16 a2, int a3)
{
  v12 = a2;
  if (!result)
  {
    goto LABEL_29;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  v6 = sub_100018DC0(result);
  result = sub_10004AB10();
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_29;
  }

  result = sub_100013610(v3 + 1200, &v12);
  if (v3 + 1208 == result)
  {
    v7 = 0;
    goto LABEL_18;
  }

  if (!result || (result & 7) != 0 || (v7 = *(result + 40)) == 0 || (v7 & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  v8 = *(v7 + 56);
  if (v8 >= 2)
  {
    goto LABEL_30;
  }

  if (v8)
  {
    sub_100089910(v3, v7);
LABEL_18:
    v9 = 0;
    goto LABEL_23;
  }

  if (a3 != -1)
  {
    v9 = 1;
    goto LABEL_23;
  }

  v10 = *(v7 + 53);
  if (v10 > 1)
  {
LABEL_30:
    __break(0x550Au);
    __break(0x5507u);
    return result;
  }

  v9 = v10 == 0;
LABEL_23:
  v11 = sub_10007C398(v6);
  if (v9 && v7)
  {
    if (v11)
    {
      sub_100089AA4(*(v3 + 8));
      operator new[]();
    }
  }

  return 0;
}

uint64_t sub_100087D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  result = sub_1000C4254();
  if (result && (result & 7) == 0)
  {
    result = sub_100095458(result, a1);
    if (!a5 || (a6 - 1) > 0xFFFD || a8 > 2 || !result)
    {
      sub_1000DDEEC(0, 4, "%s:%d Invalid connection(%hhx)(bValidHandle:%d), data(%hhx)=NULL, size(%d), or resentCount:%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18403, a1, result, a5, a6, a8);
      return 0;
    }

    if (a1)
    {
      if ((a1 & 7) == 0)
      {
        sub_100018DC0(a1);
        operator new[]();
      }
    }
  }

  __break(0x5516u);
  __break(0x5513u);
  return result;
}

uint64_t sub_100088018(uint64_t a1, uint64_t a2)
{
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  result = sub_100095458(result, a1);
  if (a2 && result)
  {
    if ((a2 & 7) == 0)
    {
      *(a2 + 196) = *(a2 + 200);
      return result;
    }

LABEL_8:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100088070(uint64_t a1)
{
  result = sub_100065198(a1);
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = sub_1000949E0(result, a1, 0);

    return sub_10007C9B4(v3);
  }

  return result;
}

uint64_t sub_1000880C0(uint64_t result)
{
  v1 = result;
  if (!result)
  {
    goto LABEL_15;
  }

  result = sub_100065198(result);
  if (result && (result & 7) == 0)
  {
    result = sub_1000949E0(result, v1, 0);
    if (!result)
    {
      result = sub_100065198(0);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_20;
      }

      result = sub_100094EBC(result, v1);
      if (!result)
      {
        return 0;
      }
    }

    if ((result & 7) == 0)
    {
      result = sub_10005BD04(result);
      if (result)
      {
        v2 = result;
        if ((result & 7) == 0)
        {
          sub_10005BB24(result, 0);
          result = sub_1000653EC(0, v2);
          if (!result)
          {
            sub_1000DDEEC(0, 4, "%s:%d Cannot get GeneralLingo object pointer. Cannot GetDeviceWWiState. port=%hhx handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 11481, v1, v2);
            v1 = 0;
            goto LABEL_17;
          }

          if ((result & 7) == 0)
          {
            v1 = *(result + 1528);
            if (v1 >= 8)
            {
              __break(0x550Au);
LABEL_15:
              sub_1000DDEEC(result, 4, "%s:%d NULL devPort\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 11494);
              return v1;
            }

LABEL_17:
            sub_10005BB6C(v2, 0);
            return v1;
          }
        }
      }
    }
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000881F8(uint64_t result, void *a2)
{
  v5 = 0;
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_18;
    }

    result = sub_10005BD04(result);
    if (!result)
    {
      goto LABEL_18;
    }

    v3 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_18;
    }

    sub_10005BB24(result, 0);
    result = sub_1000653EC(0, v3);
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_18;
      }

      result = *(result + 1408);
      if (result)
      {
        if ((result & 3) != 0)
        {
          goto LABEL_18;
        }

        v4 = sub_10005A15C(result, &v5);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000DDEEC(0, 4, "%s:%d Cannot get GeneralLingo object pointer. handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 11547, v3);
    }

    v4 = 0;
LABEL_14:
    result = sub_10005BB6C(v3, 0);
    if (!a2)
    {
      return v4;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if (!a2)
  {
    return v4;
  }

LABEL_15:
  if ((a2 & 7) == 0)
  {
    *a2 = v5;
    return v4;
  }

LABEL_18:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000882FC(uint64_t result, int a2, uint64_t *a3)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    syslog(3, "%s:%s-%d sizeof(uintptr_t) = %ld bytes, pHintData=%hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "SendChargingInfoNotification", 11822, 8, 0);
    v5 = 0;
  }

  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  result = sub_100018DC0(result);
  if (result == v5)
  {
    goto LABEL_18;
  }

  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  v6 = sub_10005BCA0(result);
  result = 2;
  if (v5 && v6)
  {
    if ((v5 & 7) != 0)
    {
      goto LABEL_39;
    }

    result = *(v3 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_39;
    }

    v7 = *(v5 + 40);
    result = sub_10005AC88(result);
    if (v7 != result)
    {
      return 2;
    }

LABEL_18:
    if (a2 >= 4)
    {
LABEL_40:
      __break(0x550Au);
      goto LABEL_41;
    }

    result = sub_100048620();
    v9 = (result & 7) == 0 && result != 0;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (v9)
        {
          result = (*(*result + 344))(result, v5);
          goto LABEL_36;
        }
      }

      else if (v9)
      {
        result = (*(*result + 360))(result, v5);
LABEL_36:
        v11 = -21846;
        v10 = a2;
        if (&vars0 != 34)
        {
          v11 = __rev16(result);
          return sub_100088544(*(v3 + 8), 5u, &v10, 3u, 2u, 0, -1);
        }

LABEL_41:
        __break(0x5500u);
        return result;
      }
    }

    else
    {
      if (!a2)
      {
        if (v9)
        {
          result = (*(*result + 296))(result, v5);
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      if (v9)
      {
        result = (*(*result + 328))(result, v5);
        goto LABEL_36;
      }
    }

LABEL_39:
    __break(0x5516u);
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_100088544(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, unsigned int a5, unint64_t a6, int a7)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_66;
  }

  v12 = sub_100018DC0(a1);
  if (!v12)
  {
    return 4;
  }

  if (a2 >= 0x20)
  {
    goto LABEL_71;
  }

  v13 = v12;
  if ((*(a1 + 1992) & (1 << a2)) == 0)
  {
    v14 = sub_1000C4254();
    if (!v14 || (v14 & 7) != 0)
    {
      goto LABEL_66;
    }

    v15 = 45;
    if (!sub_100094598(v14, v13) || ((1 << a2) & 0x84) == 0)
    {
      return v15;
    }
  }

  v16 = malloc_type_calloc(a4 + 1, 1uLL, 0x100004077774924uLL);
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  *v16 = a2;
  v15 = 2;
  switch(a2)
  {
    case 0u:
    case 0xEu:
      if (a4 < 4)
      {
        goto LABEL_48;
      }

      if (!a3)
      {
        goto LABEL_66;
      }

      v18 = v16 + 1;
      if (v16 == -1)
      {
        goto LABEL_74;
      }

      v19 = *a3;
      goto LABEL_29;
    case 1u:
      if (a4 < 8)
      {
        goto LABEL_48;
      }

      if (!a3)
      {
        goto LABEL_66;
      }

      if (v16 == -1)
      {
        goto LABEL_74;
      }

      *(v16 + 1) = bswap32(*a3);
      if (a3 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_73;
      }

      v18 = v16 + 5;
      if (v16 >= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_74;
      }

      v19 = a3[4];
LABEL_29:
      *v18 = bswap32(v19);
      goto LABEL_43;
    case 2u:
      if (a4 >= 6)
      {
        if (!a3)
        {
          goto LABEL_66;
        }

        if (v16 != -1)
        {
          *(v16 + 1) = bswap32(*a3);
          if (a3 > 0xFFFFFFFFFFFFFFFBLL)
          {
LABEL_73:
            __break(0x5513u);
            goto LABEL_74;
          }

          v20 = a3[4];
          if ((v20 & 0xFFFF0000) != 0)
          {
LABEL_72:
            __break(0x5507u);
            goto LABEL_73;
          }

          if (v16 < 0xFFFFFFFFFFFFFFFBLL)
          {
            *(v16 + 5) = bswap32(v20) >> 16;
LABEL_43:
            if (a6)
            {
              if ((a6 & 7) == 0)
              {
                goto LABEL_45;
              }

LABEL_66:
              __break(0x5516u);
              return 12;
            }

            v22 = a7;
LABEL_52:
            if (v22 == -1)
            {
              if ((v13 & 7) != 0)
              {
                goto LABEL_66;
              }

              (*(*v13 + 16))(v13, 0);
            }

            if (a4 != 0xFFFF)
            {
              sub_1000B748C();
            }

            goto LABEL_72;
          }
        }

        goto LABEL_74;
      }

      free(v16);
      v23 = malloc_type_calloc(7uLL, 1uLL, 0x100004077774924uLL);
      if (!v23)
      {
        return 12;
      }

      v17 = v23;
      *v23 = a2;
      if (v23 == -1)
      {
        goto LABEL_74;
      }

      *(v23 + 1) = 1677721600;
      v22 = a7;
      if (!a6)
      {
        syslog(3, "%s:%d No pRxdPacket!\n", "SendiPodNotificationForHandle", 12012);
        if (v17 < 0xFFFFFFFFFFFFFFFBLL)
        {
          *(v17 + 5) = 0;
          goto LABEL_52;
        }

LABEL_74:
        __break(0x5500u);
        JUMPOUT(0x1000889B4);
      }

      if ((a6 & 7) != 0)
      {
        goto LABEL_66;
      }

      if (v23 >= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_74;
      }

      *(v23 + 5) = bswap32(*(a6 + 68)) >> 16;
LABEL_45:
      if ((v13 & 7) != 0)
      {
        goto LABEL_66;
      }

      v21 = (*(*v13 + 16))(v13, 0);
      if (a4 == 0xFFFF)
      {
        goto LABEL_72;
      }

      sub_1000B7DB4(a6, v13, 0, 0, 74, v21, v17, (a4 + 1));
      if (a5 > 3)
      {
LABEL_71:
        __break(0x550Au);
        goto LABEL_72;
      }

      v15 = sub_1000B6DB4(a1, a6, 0, a5);
LABEL_59:
      free(v17);
      return v15;
    case 3u:
    case 7u:
    case 0xCu:
    case 0xFu:
    case 0x14u:
      if (!a4)
      {
        goto LABEL_48;
      }

      if (!a3)
      {
        goto LABEL_66;
      }

      if (v16 == -1)
      {
        goto LABEL_73;
      }

      v16[1] = *a3;
      goto LABEL_43;
    case 5u:
    case 0xAu:
    case 0xDu:
    case 0x10u:
    case 0x11u:
    case 0x13u:
      if (v16 == -1)
      {
        goto LABEL_73;
      }

      memcpy(v16 + 1, a3, a4);
      goto LABEL_43;
    case 9u:
      if (!a4)
      {
        goto LABEL_43;
      }

      sub_1000DDEEC(0, 4, "%s:%d incorrect dataLen!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 12080);
LABEL_48:
      v15 = 22;
LABEL_49:
      if (a5 > 3)
      {
        goto LABEL_71;
      }

      syslog(3, "%s:%d error encountered %x, for notificationType %d, dataLen %d, msgPriority %d, transID 0x%x", "SendiPodNotificationForHandle", 12225, v15, a2, a4, a5, a7);
      goto LABEL_59;
    case 0xBu:
      if (a4 < 2)
      {
        goto LABEL_48;
      }

      if (!a3)
      {
        goto LABEL_66;
      }

      if (v16 == -1)
      {
        goto LABEL_74;
      }

      *(v16 + 1) = bswap32(*a3) >> 16;
      goto LABEL_43;
    default:
      goto LABEL_49;
  }
}

uint64_t sub_100088A08(uint64_t result, int a2, unint64_t a3, char *a4, unsigned int a5)
{
  if (!result)
  {
    goto LABEL_59;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_59;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_59;
  }

  result = sub_100018DC0(result);
  if (result)
  {
    v11 = result;
    if (a2 <= 0x100000)
    {
      if (a2 > 917504)
      {
        switch(a2)
        {
          case 917505:
            if (a5 >= 0x10000)
            {
              goto LABEL_60;
            }

            v14 = *(v5 + 8);
            v15 = a5;
            v16 = 0;
            break;
          case 917506:
            if (HIWORD(a5))
            {
              goto LABEL_60;
            }

            v14 = *(v5 + 8);
            v15 = a5;
            v16 = 14;
            break;
          case 917507:
            if (HIWORD(a5))
            {
              goto LABEL_60;
            }

            v14 = *(v5 + 8);
            v15 = a5;
            v16 = 1;
            break;
          default:
            return result;
        }

LABEL_51:

        return sub_100088544(v14, v16, a4, v15, 2u, 0, -1);
      }

      if (a2 == 196613)
      {
        if (HIDWORD(a3))
        {
          syslog(3, "%s:%s-%d losing integer precision for index value 0x08%lx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "SendISLPropertyChangeWithHints", 12305, a3);
        }

        result = sub_1000C4254();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_59;
        }

        v21 = *(v5 + 8);
        return (*(*result + 128))(result, 6);
      }

      else if (a2 == 327708 && a5 == 14)
      {
        operator new[]();
      }
    }

    else
    {
      if (a2 <= 1048579)
      {
        if (a2 == 1048577)
        {
          v17 = v5;
          v18 = 0;
        }

        else
        {
          if (a2 != 1048578)
          {
            result = sub_1000882FC(v5, 2, a4);
            v12 = *(v5 + 2208);
            if ((v12 & 0x80000000) != 0)
            {
              return result;
            }

            if (!HIWORD(v12))
            {
              sub_1000839D4(v5, v11, *(v5 + 2208));
              result = sub_100048620();
              if (result && (result & 7) == 0)
              {
                v13 = *(*result + 288);

                return v13();
              }

LABEL_59:
              __break(0x5516u);
            }

LABEL_60:
            __break(0x5507u);
            return result;
          }

          v17 = v5;
          v18 = 1;
        }

        goto LABEL_56;
      }

      if (a2 == 1048580)
      {
        v17 = v5;
        v18 = 3;
LABEL_56:

        return sub_1000882FC(v17, v18, a4);
      }

      if (a2 != 1048583)
      {
        if (a2 != 1376277)
        {
          return result;
        }

        if (HIWORD(a5))
        {
          goto LABEL_60;
        }

        v14 = *(v5 + 8);
        v15 = a5;
        v16 = 16;
        goto LABEL_51;
      }

      result = sub_100048620();
      if (!result || (result & 7) != 0)
      {
        goto LABEL_59;
      }

      v19 = *(v5 + 2208);
      v20 = *(*result + 312);

      return v20();
    }
  }

  return result;
}

uint64_t sub_100088E68(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result >= 8)
  {
    goto LABEL_8;
  }

  if (result != 2 || a2 != 327708)
  {
    __break(0x5518u);
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (a4)
  {
    operator delete[]();
  }

  return result;
}

void sub_100088EB0(uint64_t a1, int a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_36;
  }

  v4 = *(a1 + 8);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_36;
  }

  sub_100018DC0(v4);
  if (a2 <= 1310720)
  {
    if (a2 == 327687)
    {
      v8 = sub_1000C4254();
      if (!v8 || (v8 & 7) != 0)
      {
        goto LABEL_36;
      }

      v11 = *(a1 + 8);
      v10 = *(*v8 + 128);
    }

    else
    {
      if (a2 != 327688)
      {
        return;
      }

      v8 = sub_1000C4254();
      if (!v8 || (v8 & 7) != 0)
      {
        goto LABEL_36;
      }

      v9 = *(a1 + 8);
      v10 = *(*v8 + 128);
    }

    v10(v8, 2);
    return;
  }

  if ((a2 - 1310721) >= 2)
  {
    if (a2 != 1310723)
    {
      if (a2 != 1310724)
      {
        return;
      }

      goto LABEL_25;
    }

    v12 = *(a1 + 8);
    if (v12 && (v12 & 7) == 0)
    {
      if ((*(v12 + 1993) & 8) == 0)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_36:
    __break(0x5516u);
    return;
  }

LABEL_25:
  v13 = sub_1000CD4A4(a3);
  if (!v13 || (v14 = v13, (sub_10005A9E0(v13) & 1) == 0))
  {
    sub_1000DDEEC(0, 4, "%s:%d INVALID HANDLE in GeneralLingo::SendISLNotification\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 12445);
    return;
  }

  if (a2 == 1310721)
  {
    operator new();
  }

  if ((v14 & 7) != 0)
  {
    goto LABEL_36;
  }

  if (*(a1 + 8) == sub_10005BD04(v14))
  {
    v15 = sub_1000C4254();
    if (v15 && (v15 & 7) == 0)
    {
      v16 = *(a1 + 8);
      (*(*v15 + 128))(v15, 3);
      return;
    }

    goto LABEL_36;
  }
}

uint64_t sub_100089154(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 8)
  {
    goto LABEL_9;
  }

  if (result != 3 || a2 != 1310721)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x550Au);
LABEL_10:
    __break(0x5516u);
    return result;
  }

  if (a5)
  {
    if ((a5 & 1) == 0)
    {
      operator delete();
    }

    goto LABEL_10;
  }

  return result;
}

BOOL sub_1000891A4(_BOOL8 result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = *(result + 54);
    if (v4 == a2)
    {
      *(result + 54) = 0;
      v5 = *(result + 45);
      if (v5)
      {
        sub_1000B9034(v5);
        *(v2 + 45) = 0;
      }

      *(v2 + 53) = 0;
      *(v2 + 44) = 0;
    }

    return v4 == a2;
  }

  return result;
}

uint64_t sub_100089210(uint64_t result)
{
  if (result)
  {
    if ((result & 7) == 0)
    {
      result = sub_10005BD04(result);
      if (result)
      {
        v1 = result;
        if ((result & 7) == 0)
        {
          if (!sub_100018DC0(result))
          {
            return 0;
          }

          sub_10005BB24(v1, 0);
          result = sub_1000653EC(0, v1);
          if (!result)
          {
            v2 = 0;
            goto LABEL_11;
          }

          if ((result & 7) == 0)
          {
            v2 = *(result + 1952);
LABEL_11:
            sub_10005BB6C(v1, 0);
            return v2;
          }
        }
      }
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000892B8(uint64_t result)
{
  if (result && (result & 7) == 0 && ((v1 = *(result + 8)) != 0 ? (v2 = (*(result + 8) & 7) == 0) : (v2 = 0), v2))
  {
    *(v1 + 1992) = 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000892E4(uint64_t result, char a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  v7 = *(result + 126);
  v16 = v7;
  if (!a5)
  {
    goto LABEL_12;
  }

  if ((a5 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return result;
  }

  v11 = *(result + 68);
  sub_10005BB24(a5, 0);
  result = sub_1000653EC(0, a5);
  if (!result)
  {
LABEL_12:
    __break(0x5518u);
    goto LABEL_13;
  }

  v12 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  v13 = sub_1000671A8(result, v5[17], v7, a4, a3);
  if (v13)
  {
    v14 = v13;
    (*(*v5 + 8))(v5);
  }

  else
  {
    sub_10005B7F8(a5, 0, 1);
    v15 = sub_100067278();
    sub_10005B7AC(a5, 0, v15);
    v14 = sub_1000B6DB4(a5, v5, a2, 1u);
    if (v14)
    {
      sub_10006733C(v12, v11, &v16, 0, 0xFFFFu);
    }
  }

  sub_10005BB6C(a5, 0);
  return v14;
}

uint64_t sub_10008943C(uint64_t result, int a2, _WORD *a3, void *a4)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_7;
  }

  sub_10005BB24(result, 0);
  result = sub_1000653EC(0, v4);
  if (!result)
  {
LABEL_6:
    __break(0x5518u);
    goto LABEL_7;
  }

  if ((result & 7) == 0)
  {
    v8 = sub_10006733C(result, a2, a3, a4, 0xFFFFu);
    sub_10005BB6C(v4, 0);
    return v8;
  }

LABEL_7:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000894D0(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10008E1D8(result, &v6, a2);
  v3 = *result;
  if (*result)
  {
    if ((v3 & 7) != 0 || !v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = result;
    memset(v5, 170, sizeof(v5));
    result = sub_10008E278(v2);
    if ((v5[0] & 7) != 0)
    {
      goto LABEL_11;
    }

    result = sub_1000080E4(v2, v6, v4, v5[0]);
    v3 = v5[0];
    if (!v5[0])
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 7) == 0)
  {
    return (v3 + 5);
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

uint64_t sub_100089590(uint64_t result, unsigned __int16 *a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000136E8(result, &v6, a2);
  v3 = *result;
  if (*result)
  {
    if ((v3 & 7) != 0 || !v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = result;
    memset(v5, 170, sizeof(v5));
    result = sub_10008E2F4(v2);
    if ((v5[0] & 7) != 0)
    {
      goto LABEL_11;
    }

    result = sub_1000080E4(v2, v6, v4, v5[0]);
    v3 = v5[0];
    if (!v5[0])
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 7) == 0)
  {
    return (v3 + 5);
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

void sub_100089650(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  std::string::basic_string(&v11, (a2 + 8));
  v4 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
  v5 = v11.__r_.__value_.__r.__words[0];
  v6 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
  v7 = strcmp(v6, off_10012B480);
  v8 = v7;
  if (v4 < 0)
  {
    operator delete(v5);
    if (v8)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v9 = sub_100065198(v7);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_18;
  }

  v10 = sub_100092790(v9, *(a1 + 8), 0xDu);
  if (!v10)
  {
    return;
  }

  if ((v10 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    return;
  }

  (*(*v10 + 112))(v10, a2);
}

uint64_t sub_100089740(uint64_t result, unsigned __int16 a2)
{
  v6 = a2;
  if (!result)
  {
    goto LABEL_21;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_21;
  }

  v4 = result;
  result = sub_100013610(v2 + 1200, &v6);
  if (v2 + 1208 != result)
  {
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = *(result + 40);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if (*(result + 56) < 2u)
            {
              sub_100089F40(result);
              operator delete();
            }

            goto LABEL_22;
          }
        }
      }
    }

LABEL_21:
    __break(0x5516u);
LABEL_22:
    __break(0x550Au);
    return result;
  }

  if (sub_10007C398(v4))
  {
    operator new[]();
  }

  return 2;
}

void sub_100089910(uint64_t a1, unsigned __int16 *a2)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = sub_10004AB10();
  v5 = sub_1000CE018(*(a1 + 8));
  if (!a2 || (a2 & 7) != 0 || !v4 || (v4 & 7) != 0)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *a2;
  if ((*(*v4 + 88))(v4, v5, v7))
  {
    v8 = (*(*v4 + 96))(v4, v6, v7);
    v9 = v8;
    if (v8 && (v8 & 7) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = 0;
  }

  std::string::basic_string(&v17, (a2 + 4));
  v10 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v11 = v17.__r_.__value_.__r.__words[0];
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v17;
  }

  else
  {
    v12 = v17.__r_.__value_.__r.__words[0];
  }

  v13 = strcmp(v12, off_10012B480);
  v14 = v13;
  if (v10 < 0)
  {
    operator delete(v11);
    if (v14)
    {
      return;
    }
  }

  else if (v13)
  {
    return;
  }

  v15 = sub_100065198(v13);
  if (!v15 || (v15 & 7) != 0)
  {
    goto LABEL_25;
  }

  v16 = sub_100092790(v15, *(a1 + 8), 0xDu);
  if (!v16)
  {
    return;
  }

  if ((v16 & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    return;
  }

  (*(*v16 + 144))(v16, a2, v9);
}

uint64_t sub_100089AA4(uint64_t result)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
LABEL_10:
    __break(0x5518u);
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  result = sub_1000D6C34(result, 0);
  if (result >= 0x10000)
  {
LABEL_12:
    __break(0x5507u);
    return result;
  }

  v1 = result - 2;
  if (result <= 2)
  {
    return result;
  }

  return v1;
}

void sub_100089B1C(uint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_10012BE48, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (a1)
  {
    do
    {
      if ((v1 & 7) == 0)
      {
        v2 = sub_10005BD04(v1);
        if (v2)
        {
          v1 = v2;
          if ((v2 & 7) == 0)
          {
            v3 = sub_10005BB24(v2, 0);
            v4 = sub_100065198(v3);
            if (v4)
            {
              if ((v4 & 7) == 0)
              {
                v5 = sub_100092790(v4, v1, 0);
                if (v5)
                {
                  if ((v5 & 7) != 0)
                  {
                    goto LABEL_14;
                  }

                  LOBYTE(v6) = v5 + 40;
                }

                else
                {
                  v6 = &qword_10012BE50;
                }

                if ((v6 & 7) == 0)
                {
                  sub_10005BB6C(v1, 0);
                  return;
                }
              }
            }
          }
        }
      }

LABEL_14:
      __break(0x5516u);
LABEL_15:
      sub_1000E2420();
    }

    while (v1);
  }

  __break(0x5518u);
}

uint64_t sub_100089BEC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000089F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100089C00(uint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!result)
  {
    goto LABEL_28;
  }

  if ((result & 7) != 0 || (result = sub_10005BD04(result)) == 0 || (v5 = result, (result & 7) != 0) || (v6 = sub_10005BB24(result, 0), (result = sub_100065198(v6)) == 0) || (result & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
LABEL_30:
    __break(0x550Au);
    goto LABEL_31;
  }

  result = sub_100092790(result, v5, 0);
  if (!result)
  {
LABEL_28:
    __break(0x5518u);
    goto LABEL_29;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v8 = *(result + 1992);
  if ((v8 & 7) == 0)
  {
    while (1)
    {
      v9 = *(v7 + 2000);
      if ((v9 & 7) != 0)
      {
        break;
      }

      if (v8 == v9)
      {
        sub_10005BB6C(v5, 0);
        return 1;
      }

      if (!v8)
      {
        goto LABEL_29;
      }

      v10 = *v8;
      v14 = v10;
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_29;
      }

      if (a2 > 0xF)
      {
        goto LABEL_30;
      }

      if (*v10 == a2)
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          if ((v12 & 7) != 0)
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8);
          if (v13 > 0xF)
          {
            goto LABEL_30;
          }

          if (!v13)
          {
            result = sub_100089D54(a3, &v14);
          }
        }
      }

      if (v8 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_32;
      }

      v8 += 8;
    }
  }

LABEL_31:
  __break(0x5517u);
LABEL_32:
  __break(0x5513u);
  return result;
}

uint64_t sub_100089D54(uint64_t *a1, void *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v8;
    v15 = v8;
    v9 = (v5 - *a1) >> 3;
    v10 = v9 + 1;
    if (v9 == -1)
    {
LABEL_20:
      __break(0x5500u);
LABEL_21:
      sub_1000E1E08();
    }

    if (v10 >> 61)
    {
      goto LABEL_21;
    }

    v11 = v4 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v10)
    {
      v12 = v9 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    sub_100025A58(&v14, v13, v9, a1);
    if (v15 && (v15 & 7) == 0)
    {
      *v15 = *a2;
      if (v15 < 0xFFFFFFFFFFFFFFF8)
      {
        *&v15 = v15 + 8;
        sub_10002597C(a1, &v14);
        v7 = a1[1];
        result = sub_100025B50(&v14);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = sub_1000605D8(a1, a2);
  if (v5 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  v7 = v5 + 8;
LABEL_17:
  a1[1] = v7;
  return result;
}

uint64_t sub_100089E70(uint64_t result)
{
  if (result)
  {
    if ((result & 7) == 0)
    {
      result = sub_10005BD04(result);
      if (result)
      {
        v1 = result;
        if ((result & 7) == 0)
        {
          v2 = sub_10005BB24(result, 0);
          result = sub_100065198(v2);
          if (result)
          {
            if ((result & 7) == 0)
            {
              result = sub_100092790(result, v1, 0);
              if (!result)
              {
                sub_1000DDEEC(0, 4, "%s:%d GetPreferredBundleSeedID handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 14040, v1);
                v3 = 0;
                goto LABEL_11;
              }

              if ((result & 7) == 0)
              {
                v3 = *(result + 2112);
LABEL_11:
                sub_10005BB6C(v1, 0);
                return v3;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100089F40(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = *(result + 45);
    if (v2)
    {
      sub_1000B9034(v2);
      *(v1 + 45) = 0;
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    return v1;
  }

  return result;
}

uint64_t sub_100089F94(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10008E478(result, &v6, a2);
  v3 = *result;
  if (*result)
  {
    if ((v3 & 7) != 0 || !v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = result;
    memset(v5, 170, sizeof(v5));
    result = sub_10008E550(v2);
    if ((v5[0] & 7) != 0)
    {
      goto LABEL_11;
    }

    result = sub_1000080E4(v2, v6, v4, v5[0]);
    v3 = v5[0];
    if (!v5[0])
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 7) == 0)
  {
    return (v3 + 5);
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

uint64_t sub_10008A054(uint64_t result, uint64_t *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (result != a2)
    {
      sub_100007DB0(result);
      sub_10008E5D4(v2, *a2, (a2 + 1));
    }

    return v2;
  }

  return result;
}

void sub_10008A0AC(uint64_t a1, _DWORD *a2, uint64_t a3, char a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_173;
  }

  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_173;
  }

  v9 = sub_100018DC0(v5);
  v103 = 0;
  v10 = sub_100065198(v9);
  if (!v10)
  {
    goto LABEL_173;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_173;
  }

  v11 = sub_100092B58(v10, v9);
  v101 = v11;
  v12 = sub_100065198(v11);
  if (!v12 || (v12 & 7) != 0)
  {
    goto LABEL_173;
  }

  v13 = sub_1000933B0(v12, v9);
  if ((*(a1 + 2185) & 1) != 0 && (*(a1 + 2193) & 1) != 0 && (a4 & 1) == 0)
  {
    return;
  }

  v97 = v13;
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_173;
  }

  if (*a2)
  {
    v14 = 0;
    v15 = 2;
    v16 = 5;
    goto LABEL_155;
  }

  v17 = a2[7];
  *(a1 + 1224) = 1;
  v18 = *(a1 + 2369);
  if (v18 > 1)
  {
    goto LABEL_176;
  }

  v20 = a2[5];
  v19 = a2[6];
  v21 = v18 & (v17 == 53248);
  if ((v17 & 0xFFFFFF00) == 0x200)
  {
    v21 = 1;
  }

  v98 = v21;
  v22 = sub_100074D7C(a1, v19);
  v23 = v19 >> 4;
  v24 = v23 == 2 ? 1 : 5;
  v16 = v23 == 1 ? 0 : v24;
  v25 = *(a1 + 2368);
  if (v25 > 1)
  {
    goto LABEL_176;
  }

  v14 = v22;
  v95 = v19;
  v99 = v19 & 3;
  v100 = v17;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_173;
    }

    v27 = (*(*v9 + 272))(v9);
    v26 = 0;
    v28 = v98;
    if (!v99)
    {
      v28 = 0;
    }

    if (v27 && (v28 & 1) == 0)
    {
      v29 = *(a1 + 8);
      if (!v29 || (v29 & 7) != 0)
      {
        goto LABEL_173;
      }

      if ((sub_10005BFD0(v29) & 1) == 0)
      {
        v30 = **v9;
        if (!v31 || (v31 & 7) != 0)
        {
          goto LABEL_173;
        }

        v32 = *(a1 + 8);
        v33 = (*(*v31 + 392))(v31);
        sub_100076B84(1, v32, v9, v33);
      }

      sub_100076C34(*(a1 + 8), v9, 0);
      v26 = 1;
    }
  }

  v34 = v9 != 0;
  if ((v9 & 7) != 0)
  {
    v34 = 0;
  }

  if (v16 != 5 || v14)
  {
    if (!v34)
    {
      goto LABEL_173;
    }

    if (v16 == (*(*v9 + 208))(v9))
    {
      v38 = 1;
      goto LABEL_61;
    }

    v39 = a4;
    if (v99 == 2)
    {
      v39 = 1;
    }

    v37 = v98 & v39 ^ 1;
  }

  else
  {
    if (!v34)
    {
      goto LABEL_173;
    }

    v35 = (*(*v9 + 224))(v9);
    if (v17)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36 & (v98 ^ 1);
  }

  v38 = v26 | v37;
LABEL_61:
  pthread_mutex_lock((a1 + 1448));
  v40 = *(a1 + 1408);
  if (v40)
  {
    if ((v40 & 3) == 0)
    {
      sub_100059F4C(v40);
      operator delete();
    }

    goto LABEL_173;
  }

  pthread_mutex_unlock((a1 + 1448));
  *(a1 + 1240) = v17;
  *(a1 + 1244) = v20;
  v41 = sub_100076EE4(a1, v9, v20, &v103);
  v96 = v41;
  v42 = sub_100065198(v41);
  if (!v42 || (v42 & 7) != 0)
  {
    goto LABEL_173;
  }

  v94 = sub_100058A3C(v42, v9, v17);
  if ((v20 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "%s:%d General lingo missing from mask!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16593);
  }

  if ((v9 & 7) != 0)
  {
LABEL_173:
    __break(0x5516u);
LABEL_174:
    __break(0x5507u);
LABEL_175:
    __break(0x5500u);
    __break(0x5513u);
    goto LABEL_176;
  }

  v43 = (*(*v9 + 224))(v9);
  if (v43)
  {
    v38 |= (v95 & 0xC | v20 & 0xFFFF8DE2) != 0;
  }

  v44 = (v99 == 3) | (v95 > 0xFF) | v38 | v20 ^ 1;
  if ((v20 & 2) != 0)
  {
    v45 = sub_100046A8C();
    if (!v45)
    {
      goto LABEL_173;
    }

    v46 = v45;
    if ((v45 & 7) != 0)
    {
      goto LABEL_173;
    }

    v47 = (*(*v45 + 200))(v45);
    v48 = (*(*v9 + 240))(v9);
    v43 = (*(*v46 + 184))(v46);
    if ((v43 & 1) == 0)
    {
      v44 |= v47 & v48 ^ 1;
    }
  }

  if ((v20 & 0x400) != 0)
  {
    v43 = (*(*v9 + 248))(v9);
    v44 |= v43 ^ 1;
  }

  if ((v20 & 0x40) != 0)
  {
    v49 = *(v9 + 40);
    if (!v49 || (v49 & 7) != 0)
    {
      goto LABEL_173;
    }

    v43 = (*(*v49 + 208))(v49);
    v44 |= v43 != 0;
  }

  v50 = v44 | ~a4;
  if (v99 == 2)
  {
    v50 = v44;
  }

  if ((v50 & 1) == 0 && ((v96 ^ 1) & 1) == 0 && ((v94 != 0) & v98) != 0 && (v20 & *(a1 + 1516) & v94) == v20)
  {
    v51 = v101;
    if (v97 == 56 || v97 == 19)
    {
      v51 = (~v20 | 0x2010) & v101;
    }

    sub_10007702C(a1, v9, v51);
    v53 = sub_100065198(v52);
    if (!v53 || (v53 & 7) != 0)
    {
      goto LABEL_173;
    }

    v54 = sub_100058A0C(v53, v100, (a1 + 1440), (a1 + 1441));
    if (v54)
    {
      sub_1000E22F0();
    }

    v55 = *(a1 + 1440);
    if (v55 == 1)
    {
      v65 = *(a1 + 2369);
      if (v65 > 1)
      {
LABEL_176:
        __break(0x550Au);
        return;
      }

      if (v65)
      {
        v56 = 70;
        v57 = 4;
        v58 = 7500;
        v59 = 1000;
        goto LABEL_120;
      }
    }

    else if (v55 == 2)
    {
      v56 = 255;
      v57 = 3;
      v58 = 75000;
      v59 = 15000;
      goto LABEL_120;
    }

    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
LABEL_120:
    *(a1 + 1428) = v59;
    *(a1 + 1432) = v58;
    *(a1 + 1439) = v57;
    *(a1 + 1436) = v56;
    v66 = sub_100065198(v54);
    if (v66)
    {
      if ((v66 & 7) == 0)
      {
        sub_100093264(v66, v9, v100);
        v68 = sub_100065198(v67);
        if (v68)
        {
          if ((v68 & 7) == 0)
          {
            sub_100092EE8(v68, v9, v95);
            v70 = sub_100065198(v69);
            if (v70)
            {
              if ((v70 & 7) == 0)
              {
                sub_100092FE4(v70, v9, 0, (v95 & 0xC) == 12);
                v72 = sub_100065198(v71);
                if (v72)
                {
                  if ((v72 & 7) == 0)
                  {
                    v73 = v20 & 0x7FFF;
                    v74 = (*(*v72 + 144))(v72, *(a1 + 8), v73);
                    if (v74 == v73)
                    {
                      v15 = 0;
                    }

                    else
                    {
                      sub_1000DDEEC(0, 4, "%s:%d setActiveLingoMaskReturn != devLingoes\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16760);
                      v15 = 2;
                    }

                    v75 = sub_100065198(v74);
                    if (v75)
                    {
                      if ((v75 & 7) == 0)
                      {
                        if ((*(*v75 + 160))(v75, *(a1 + 8), v73) != v73)
                        {
                          sub_1000DDEEC(0, 4, "%s:%d setAllowedLingoMaskReturn != devLingoes\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16770);
                          v15 = 2;
                        }

                        v13 = qword_10012C6E0;
                        if (qword_10012C6E0)
                        {
                          if ((qword_10012C6E0 & 7) != 0)
                          {
                            goto LABEL_173;
                          }

                          v13 = (*(*qword_10012C6E0 + 8))();
                          qword_10012C6E0 = 0;
                        }

                        v76 = 0;
                        while (1)
                        {
                          if ((v73 >> v76))
                          {
                            v77 = *(a1 + 8);
                            if (v77)
                            {
                              v78 = (*(a1 + 8) & 7) == 0;
                            }

                            else
                            {
                              v78 = 0;
                            }

                            if (!v78)
                            {
                              goto LABEL_173;
                            }

                            v79 = sub_10005BB24(v77, v76);
                            v80 = sub_100065198(v79);
                            if (!v80 || (v80 & 7) != 0)
                            {
                              goto LABEL_173;
                            }

                            v81 = sub_100092790(v80, *(a1 + 8), v76);
                            if (v81)
                            {
                              if ((v81 & 7) != 0)
                              {
                                goto LABEL_173;
                              }

                              (*(*v81 + 80))(v81, 4, 0, v9);
                            }

                            else
                            {
                              sub_1000DDEEC(0, 4, "%s:%d No lingo object! lingo=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16800, v76);
                            }

                            v82 = *(a1 + 8);
                            if (!v82 || (v82 & 7) != 0)
                            {
                              goto LABEL_173;
                            }

                            v13 = sub_10005BB6C(v82, v76);
                          }

                          if (++v76 == 15)
                          {
                            goto LABEL_155;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_173;
  }

  v60 = sub_100065198(v43);
  if (!v60 || (v60 & 7) != 0)
  {
    goto LABEL_173;
  }

  sub_100059100(v60, v9);
  sub_10007702C(a1, v9, v101);
  v13 = (*(*v9 + 224))(v9);
  if (v13)
  {
    v61 = 4;
  }

  else
  {
    if ((v96 & 1) == 0)
    {
      v62 = 0;
      v63 = 0;
      *(a1 + 1224) = 6;
      while (((v103 >> v62) & 1) == 0 || !__CFADD__(v63++, 1))
      {
        if (++v62 == 15)
        {
          if (v63 > 0xFF)
          {
            goto LABEL_174;
          }

          if (a3 && (a3 & 7) == 0)
          {
            *(a3 + 24) = v63;
            operator new[]();
          }

          goto LABEL_173;
        }
      }

      goto LABEL_175;
    }

    *(a1 + 1224) = 5;
    if ((v20 & 0x7FFF) == 0)
    {
      goto LABEL_107;
    }

    if ((*(a1 + 1516) & v20 & 0x7FFF) != 0)
    {
      v61 = 3;
    }

    else
    {
      v61 = 4;
    }
  }

  *(a1 + 1224) = v61;
LABEL_107:
  v15 = 2;
LABEL_155:
  *(a1 + 2372) = 0;
  if (v15)
  {
    sub_100074630(a1, v9, 1, 1);
    sub_10007692C(a1, v83, 1);
    return;
  }

  if (v16 != 5 || v14)
  {
    v84 = sub_100065198(v13);
    if (v84)
    {
      if ((v84 & 7) == 0)
      {
        v85 = sub_100059364(v84, v9, v14);
        v86 = sub_100065198(v85);
        if (v86)
        {
          if ((v86 & 7) == 0)
          {
            v87 = sub_10005939C(v86, v9, v16);
            v88 = sub_100065198(v87);
            if (v88)
            {
              if ((v88 & 7) == 0)
              {
                v89 = sub_1000949E0(v88, v14, 0);
                if (!v89)
                {
                  return;
                }

                v90 = v89;
                v91 = sub_100065198(v89);
                if (v91)
                {
                  if ((v91 & 7) == 0)
                  {
                    v92 = sub_10009467C(v91, *(a1 + 8), v90);
                    v93 = sub_100065198(v92);
                    if (v93)
                    {
                      if ((v93 & 7) == 0)
                      {
                        sub_10009467C(v93, v90, *(a1 + 8));
                        return;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_173;
  }
}

uint64_t sub_10008ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_101;
  }

  v4 = *(a1 + 8);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_101;
  }

  v8 = sub_100018DC0(v4);
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_101;
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 17);
  switch(*(a2 + 16))
  {
    case 0:
      if (v10 != 4)
      {
        goto LABEL_83;
      }

      v26 = *(a2 + 24);
      if (!v26)
      {
        goto LABEL_101;
      }

      v27 = bswap32(*v26);
      if ((v27 & 1) == 0)
      {
        v13 = 0;
        *(a1 + 1968) = 0;
        goto LABEL_84;
      }

      v15 = 0;
      v13 = 0;
      *(a1 + 1968) = v27;
      break;
    case 1:
    case 6:
    case 7:
    case 8:
    case 0xE:
      if ((v10 - 1) > 0x3F)
      {
        goto LABEL_24;
      }

      v11 = 1;
      do
      {
        if (v10 <= v11)
        {
          goto LABEL_24;
        }

        v12 = *(a2 + 24);
        if (__CFADD__(v12, v11))
        {
          goto LABEL_102;
        }

        if (!v12)
        {
          goto LABEL_101;
        }

        if (!*(v12 + v11))
        {
          break;
        }

        v11 = (v11 + 1);
      }

      while (v11 <= v10);
      if (v11 >= v10)
      {
LABEL_24:
        v13 = 0;
        if (v9 == 8)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        break;
      }

      v13 = 0;
      if (*(a2 + 16) <= 6u)
      {
        if (v9 == 1)
        {
          v13 = 4;
          v14 = 1592;
        }

        else
        {
          if (v9 != 6)
          {
            goto LABEL_98;
          }

          v13 = 32;
          v14 = 1696;
        }
      }

      else
      {
        switch(v9)
        {
          case 7:
            v13 = 64;
            v14 = 1760;
            break;
          case 8:
            v13 = 0;
            v14 = 1824;
            break;
          case 14:
            v13 = 0;
            v14 = 1888;
            break;
          default:
            goto LABEL_98;
        }
      }

      memcpy((a1 + v14), *(a2 + 24), v10);
LABEL_98:
      v37 = *(a1 + 8);
      if (!v37 || (v37 & 7) != 0)
      {
        goto LABEL_101;
      }

      sub_10005BF5C(v37, (a1 + 1592));
      v15 = 0;
      break;
    case 2:
      if (v10 != 7)
      {
        goto LABEL_83;
      }

      v19 = *(a2 + 24);
      if (!v19)
      {
        goto LABEL_101;
      }

      v20 = *v19;
      v21 = sub_10004B1AC();
      if (!v21 || (v21 & 7) != 0)
      {
        goto LABEL_101;
      }

      if (bswap32(v20) != (*(*v21 + 112))(v21))
      {
        goto LABEL_81;
      }

      v22 = *(a2 + 24);
      if (v22 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_102;
      }

      *(a1 + 1662) = v22[4];
      if (v22 > 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_102;
      }

      *(a1 + 1663) = v22[5];
      if (v22 > 0xFFFFFFFFFFFFFFF9)
      {
        goto LABEL_102;
      }

      *(a1 + 1664) = v22[6];
      goto LABEL_73;
    case 3:
      if (v10 != 3)
      {
        goto LABEL_83;
      }

      v30 = *(a2 + 24);
      if (!v30)
      {
        goto LABEL_101;
      }

      v31 = *v30;
      if (v31 > 0xE)
      {
LABEL_83:
        v13 = 0;
LABEL_84:
        v15 = 2;
      }

      else
      {
        if (v30 >= 0xFFFFFFFFFFFFFFFELL || __CFADD__(a1 + 1666, 2 * v31))
        {
LABEL_102:
          __break(0x5513u);
          JUMPOUT(0x10008B090);
        }

        *(a1 + 1666 + 2 * v31) = bswap32(*(v30 + 1)) >> 16;
LABEL_73:
        v33 = *(a1 + 8);
        if (!v33 || (v33 & 7) != 0)
        {
          goto LABEL_101;
        }

        sub_10005BF5C(v33, (a1 + 1592));
LABEL_81:
        v15 = 0;
LABEL_82:
        v13 = 0;
      }

      break;
    case 4:
      if (v10 != 3)
      {
        goto LABEL_63;
      }

      v17 = *(a2 + 24);
      if (!v17)
      {
        goto LABEL_101;
      }

      *(a1 + 1656) = *v17;
      if (v17 == -1)
      {
        goto LABEL_102;
      }

      *(a1 + 1657) = v17[1];
      if (v17 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_102;
      }

      *(a1 + 1658) = v17[2];
      v18 = *(a1 + 8);
      if (!v18 || (v18 & 7) != 0)
      {
        goto LABEL_101;
      }

      sub_10005BF5C(v18, (a1 + 1592));
      v15 = 0;
      v13 = 8;
      break;
    case 5:
      if (v10 != 3)
      {
LABEL_63:
        v13 = 0;
        v15 = 1;
        break;
      }

      v28 = *(a2 + 24);
      if (!v28)
      {
LABEL_101:
        __break(0x5516u);
        goto LABEL_102;
      }

      *(a1 + 1659) = *v28;
      if (v28 == -1)
      {
        goto LABEL_102;
      }

      *(a1 + 1660) = v28[1];
      if (v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_102;
      }

      *(a1 + 1661) = v28[2];
      v29 = *(a1 + 8);
      if (!v29 || (v29 & 7) != 0)
      {
        goto LABEL_101;
      }

      sub_10005BF5C(v29, (a1 + 1592));
      v15 = 0;
      v13 = 16;
      break;
    case 9:
      if (v10 != 2)
      {
        goto LABEL_83;
      }

      v34 = *(a2 + 24);
      if (!v34)
      {
        goto LABEL_101;
      }

      v35 = *v34;
      if (!v8 || (v8 & 7) != 0)
      {
        goto LABEL_101;
      }

      (*(*v8 + 144))(v8, __rev16(v35));
      goto LABEL_81;
    case 0xA:
      v13 = 0;
      v15 = 2 * (v10 != 1);
      break;
    case 0xB:
      if (v10 != 4)
      {
        goto LABEL_83;
      }

      v23 = *(a2 + 24);
      if (!v23)
      {
        goto LABEL_101;
      }

      v24 = bswap32(*v23);
      *(a1 + 1952) = v24;
      v25 = *(a1 + 8);
      if (!v25 || (v25 & 7) != 0)
      {
        goto LABEL_101;
      }

      v15 = 2 * ((v24 & 0xF) == 0);
      sub_10005BF5C(v25, (a1 + 1592));
      goto LABEL_82;
    case 0xC:
      if (v10 != 4)
      {
        goto LABEL_83;
      }

      v32 = *(a2 + 24);
      if (!v32)
      {
        goto LABEL_101;
      }

      *(a1 + 1956) = bswap32(*v32);
      *(a1 + 1964) = 1;
      goto LABEL_73;
    case 0xD:
      if (v10 != 4)
      {
        goto LABEL_83;
      }

      v16 = *(a2 + 24);
      if (!v16)
      {
        goto LABEL_101;
      }

      *(a1 + 1960) = bswap32(*v16);
      *(a1 + 1965) = 1;
      goto LABEL_73;
    default:
      goto LABEL_83;
  }

  if (!a3 || (a3 & 7) != 0)
  {
    goto LABEL_101;
  }

  *(a3 + 12) = 1;
  *(a3 + 13) = v9;
  if (!v15)
  {
    *(a1 + 1976) = 1;
    *(a1 + 2184) |= v13;
  }

  return v15;
}

uint64_t sub_10008B0CC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = -21846;
  v5 = -86;
  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v2 = result;
  result = sub_100018DC0(a2);
  if (!result)
  {
LABEL_9:
    __break(0x5518u);
    goto LABEL_10;
  }

  if (!v2 || (v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v4) = v2[16];
  if (&v3 != -14)
  {
    HIBYTE(v4) = v2[17];
    if (&v4 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v2[18];
      sub_1000B748C();
    }
  }

LABEL_11:
  __break(0x5513u);
  return result;
}

uint64_t sub_10008B17C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_66;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_66;
  }

  if (!a2)
  {
    goto LABEL_66;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_66;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_66;
  }

  v5 = *(a2 + 20);
  v4 = *(a2 + 24);
  result = sub_100018DC0(result);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_66;
  }

  v6 = result;
  if (*(v2 + 2184) & 1) != 0 && (*(v2 + 2192))
  {
    return 6;
  }

  v7 = v4 >> 4;
  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 5;
  }

  v9 = v7 - 1;
  if (v7 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v27 = 116;
  result = sub_10006733C(v2, -1, &v27, 0, 0xFFFFu);
  if ((v6 & 7) != 0)
  {
    goto LABEL_66;
  }

  result = (*(*v6 + 208))(v6);
  if (v10 == result)
  {
    goto LABEL_18;
  }

  v11 = 1;
  if (v9 > 1 || (v4 & 3) != 0)
  {
LABEL_19:
    result = sub_100065198(result);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v12 = (*(*result + 144))(result, *(v2 + 8), 1);
        result = sub_100065198(v12);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v13 = (*(*result + 160))(result, *(v2 + 8), 1);
            result = sub_100065198(v13);
            if (result)
            {
              if ((result & 7) == 0)
              {
                sub_100059100(result, v6);
                return v11;
              }
            }
          }
        }
      }
    }

    goto LABEL_66;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_66;
  }

  result = sub_100094CA0(result, v10);
  if (!result)
  {
    goto LABEL_19;
  }

  v14 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0 || (v15 = sub_100058EBC(result, v14), v16 = v15, (result = sub_100065198(v15)) == 0) || (result & 7) != 0)
  {
LABEL_66:
    __break(0x5516u);
    goto LABEL_67;
  }

  result = sub_100059324(result, v14);
  if (result <= 7)
  {
    v17 = result;
    result = (*(*v6 + 208))(v6);
    if (v17 == result)
    {
      result = sub_100065198(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_66;
      }

      result = sub_1000949E0(result, v14, 0);
      if (result)
      {
        v18 = result;
        result = sub_100065198(result);
        if (!result)
        {
          goto LABEL_66;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_66;
        }

        v19 = sub_10009467C(result, *(v2 + 8), v18);
        result = sub_100065198(v19);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_66;
        }

        result = sub_10009467C(result, v18, *(v2 + 8));
      }
    }

    if (!v5)
    {
      goto LABEL_18;
    }

    result = (*(*v6 + 208))(v6);
    if (v17 != result)
    {
      goto LABEL_18;
    }

    if ((v16 + 8) <= 0xF)
    {
      if (v16 != 6)
      {
        goto LABEL_18;
      }

      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v20;
      v26 = v20;
      v24[0] = v20;
      v24[1] = v20;
      LODWORD(v25) = 0;
      DWORD1(v24[0]) = 0;
      LOBYTE(v26) = *(a2 + 16);
      DWORD1(v26) = *(a2 + 20);
      result = sub_100065198(result);
      if (result && (result & 7) == 0)
      {
        DWORD2(v26) = v4 & 0xC | 2;
        HIDWORD(v26) = sub_1000932FC(result, v14);
        sub_10008A0AC(v2, &v25, v24, 1);
        v11 = result;
        if (result)
        {
          goto LABEL_19;
        }

        result = sub_100065198(result);
        if (result)
        {
          if ((result & 7) == 0)
          {
            sub_100059168(result, v14, v6);
            if (!result)
            {
              result = sub_100065198(result);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v21 = sub_1000932FC(result, v14);
                  v22 = v21;
                  result = sub_100065198(v21);
                  if (result)
                  {
                    if ((result & 7) == 0)
                    {
                      sub_100093264(result, v6, v22);
                      if ((*(*v6 + 208))(v6) == 2)
                      {
                        v23 = 10100;
                      }

                      else
                      {
                        v23 = 3100;
                      }

                      sub_1000671A8(v2, -1, 116, 0, v23);
                      return 0;
                    }
                  }
                }
              }

              goto LABEL_66;
            }

LABEL_18:
            v11 = 1;
            goto LABEL_19;
          }
        }
      }

      goto LABEL_66;
    }
  }

LABEL_67:
  __break(0x550Au);
  return result;
}

void sub_10008B584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (!a2 || !a3)
  {
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_32;
  }

  *(a2 + 8) = a3;
  if (*a2 == 6)
  {
    if ((a3 & 7) == 0)
    {
      v8 = *(a3 + 4);
      if (v8 > 0x1FF)
      {
        goto LABEL_33;
      }

      if (v8 != 6)
      {
        goto LABEL_26;
      }

      v9 = *(a3 + 8);
      if (v9 > 0xF)
      {
        goto LABEL_33;
      }

      if (v9 != 6)
      {
        v10 = *(a1 + 192) & 0xFFFFFEFE;
        *(a1 + 192) = v10 | 0x100;
        if (!v9 && (*(a2 + 20) & 2) != 0)
        {
          v7 = v10 | 0x180;
LABEL_24:
          *(a1 + 192) = v7;
          goto LABEL_26;
        }
      }

      goto LABEL_26;
    }

LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  if (*a2)
  {
    if ((a3 & 7) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_32;
  }

  v5 = *(a3 + 4);
  if (v5 >= 0x200)
  {
    goto LABEL_33;
  }

  if (!v5 && (*(a2 + 20) & 2) != 0)
  {
    v6 = *(a3 + 8);
    if (v6 <= 0xF)
    {
      if (v6)
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 192) | 0x80;
      goto LABEL_24;
    }

LABEL_33:
    __break(0x550Au);
    return;
  }

LABEL_26:
  v11 = *(a3 + 8);
  if (v11 > 0xF)
  {
    goto LABEL_33;
  }

  if (!v11)
  {
    sub_10008C1A4(a1, a2);
  }

  sub_10008C334(a1, a3);
}

void *sub_10008B6B4(void *result, char a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = result[22];
  v4 = result[23];
  if (v5 >= v4)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v7;
    v13 = v7;
    v8 = result[21];
    v9 = &v5[-v8 + 1];
    if (&v5[-v8] == -1)
    {
LABEL_20:
      __break(0x5500u);
LABEL_21:
      sub_1000E1E08();
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    v10 = v4 - v8;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    sub_10008EA94(&v12, v11, &v5[-v8], (result + 21));
    if (v13)
    {
      *v13 = a2;
      if (v13 != -1)
      {
        *&v13 = v13 + 1;
        sub_10008E9DC(v2 + 21, &v12);
        v6 = v2[22];
        result = sub_10008EB2C(&v12);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v5)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  if (v5 == -1)
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  *v5 = a2;
  v6 = v5 + 1;
LABEL_17:
  v2[22] = v6;
  return result;
}

uint64_t sub_10008B7B4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    __break(0x5513u);
  }

  else
  {
    v2 = (*(result + 2024) - *(result + 2016)) >> 3;
    result = sub_10008BBC4(result + 1992);
    v3 = v2 - result;
    if (v2 < result)
    {
      goto LABEL_18;
    }

    if (result >= v2)
    {
LABEL_12:
      if (v3)
      {
        operator new[]();
      }

      operator new[]();
    }

    v4 = 0;
    if (result <= 0x10000)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = result;
    }

    v6 = result;
    while (v5 != v6)
    {
      result = sub_10008BC3C((v1 + 1992), v6);
      v7 = __CFADD__(v4, result + 2);
      v4 += result + 2;
      if (v7)
      {
        goto LABEL_17;
      }

      if (v2 == ++v6)
      {
        goto LABEL_12;
      }
    }
  }

  __break(0x5507u);
  __break(0x550Au);
LABEL_17:
  __break(0x5500u);
LABEL_18:
  __break(0x5515u);
  return result;
}

uint64_t sub_10008BBC4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
LABEL_16:
    __break(0x5513u);
    goto LABEL_17;
  }

  v1 = *(result + 168);
  v2 = *(result + 176) - v1 - 1;
  if (*(result + 176) - v1 == 1)
  {
    return 0;
  }

  if (*(result + 176) != v1)
  {
    if (*(result + 176) - v1 != 1)
    {
      v3 = 0;
      result = 0;
      while (v3 <= ~v1)
      {
        if (!v1)
        {
          goto LABEL_15;
        }

        v4 = *(v1 + v3);
        v5 = __CFADD__(result, v4);
        result = (result + v4);
        if (v5 || (v6 = v3 + 1, v3 == -1))
        {
          __break(0x5500u);
          goto LABEL_15;
        }

        ++v3;
        if (v2 <= v6)
        {
          return result;
        }
      }

      goto LABEL_16;
    }

    return 0;
  }

LABEL_17:
  __break(0x5515u);
  return result;
}

uint64_t *sub_10008BC3C(uint64_t *result, unsigned int a2)
{
  if (result && (result & 7) == 0)
  {
    result = sub_10008BC84(result + 3, a2);
    if (*result)
    {
      v2 = (*result & 7) == 0;
      *result;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      return **result;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_10008BC84(uint64_t *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 + 0x1000000000000000) >> 61)
  {
    goto LABEL_8;
  }

  v2 = *result;
  if (8 * a2 > ~*result)
  {
    goto LABEL_8;
  }

  if (!v2 || (result = (v2 + 8 * a2), (result & 7) != 0))
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    __break(0x5513u);
  }

  return result;
}

uint64_t sub_10008BCD0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_83;
  }

  v1 = *(result + 192);
  v2 = *(result + 196);
  if ((v1 & ~v2) != 0)
  {
    v5 = *(result + 200);
    if (v5 == v2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if ((v1 & ~v5) != 0)
    {
      return v6;
    }

    else
    {
      return 1;
    }
  }

  v3 = *(result + 204);
  if ((v3 & 8) != 0)
  {
    v7 = *(result + 56);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_83;
    }

    if (*(v7 + 16))
    {
      v4 = 8;
    }

    else
    {
      v4 = 7;
    }
  }

  else
  {
    v4 = 8;
  }

  if ((v3 & 0x507) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(result + 56);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_83;
  }

  if ((*(v8 + 16) & 0x1004) == 0)
  {
    if ((*(v8 + 24) & 0x1004) == 0)
    {
      v4 = 7;
    }

    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_21:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_31;
    }
  }

  v9 = *(result + 56);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_83;
  }

  if ((*(v9 + 17) & 0x10) == 0 && (*(v9 + 25) & 0x10) == 0)
  {
    v4 = 7;
  }

LABEL_31:
  if ((v3 & 0x80000) != 0)
  {
    v10 = *(result + 56);
    if (!v10 || (v10 & 7) != 0)
    {
      goto LABEL_83;
    }

    if ((~*(v10 + 16) & 0x10800) != 0 && (~*(v10 + 24) & 0x10800) != 0)
    {
      v4 = 7;
    }
  }

  if (*(result + 80) != *(result + 72) || *(result + 120))
  {
    v11 = *(result + 56);
    if (!v11 || (v11 & 7) != 0)
    {
      goto LABEL_83;
    }

    if ((*(v11 + 17) & 6) == 0 && (*(v11 + 25) & 6) == 0)
    {
      v4 = 7;
    }
  }

  v12 = v1 & v2;
  if ((v12 & 1) != 0 && (v13 = *(result + 48)) != 0 || (v12 & 0x100) != 0 && (v13 = *(result + 128)) != 0)
  {
    if ((v13 & 7) != 0)
    {
      goto LABEL_83;
    }

    v14 = *(v13 + 20);
    if ((v14 & 0x400) != 0)
    {
      v15 = *(result + 56);
      if (!v15 || (v15 & 7) != 0)
      {
        goto LABEL_83;
      }

      if ((*(v15 + 16) & 0x10) == 0 && (*(v15 + 24) & 0x10) == 0)
      {
        v4 = 7;
      }
    }

    if ((v14 & 2) != 0)
    {
      v16 = *(result + 56);
      if (!v16 || (v16 & 7) != 0)
      {
        goto LABEL_83;
      }

      if ((*(v16 + 16) & 2) == 0 && (*(v16 + 24) & 2) == 0)
      {
        v4 = 7;
      }
    }

    if ((v14 & 8) == 0)
    {
      v17 = *(result + 56);
      if (!v17 || (v17 & 7) != 0)
      {
        goto LABEL_83;
      }

      if ((*(v17 + 17) & 8) != 0)
      {
        v4 = 7;
      }
    }
  }

  if ((v3 & 0x100000) != 0)
  {
    v18 = *(result + 56);
    if (!v18 || (v18 & 7) != 0)
    {
      goto LABEL_83;
    }

    if ((*(v18 + 18) & 2) == 0)
    {
      v4 = 7;
    }
  }

  if ((v3 & 0x400000) != 0)
  {
    v19 = *(result + 56);
    if (!v19 || (v19 & 7) != 0)
    {
      goto LABEL_83;
    }

    if ((*(v19 + 18) & 0x80) == 0)
    {
      v4 = 7;
    }
  }

  v20 = *(result + 56);
  if (!v20 || (v20 & 7) != 0)
  {
LABEL_83:
    __break(0x5516u);
    return result;
  }

  if ((*(v20 + 17) & 6) != 0)
  {
    sub_10008C5B8(result);
  }

  if (v4 == 8)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10008BF60(uint64_t result)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  v6 = 0;
  if (*(result + 2104))
  {
    v5 = (result + 2096);
    result = sub_10008E894(&v5);
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_15;
    }

    v2 = *(v5 + 32);
    if (v2 == 255)
    {
LABEL_16:
      __break(0x5507u);
      return result;
    }

    v6 = v2 + 1;
  }

  result = sub_100065198(result);
  if (!result || (v3 = result, (result & 7) != 0) || (result = *(v1 + 8)) == 0 || (result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v4 = sub_100018DC0(result);
  result = sub_100092B58(v3, v4);
  if ((result & 0x2000) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10008C0A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = sub_10005BB24(result, 0);
      result = sub_100065198(v2);
      if (result)
      {
        if ((result & 7) == 0)
        {
          result = sub_100092790(result, v1, 0);
          if (!result)
          {
            goto LABEL_9;
          }

          if ((result & 7) == 0)
          {
            v3 = *(result + 2200);
            if (v3 <= 1)
            {
LABEL_10:
              sub_10005BB6C(v1, 0);
              return v3 & 1;
            }

            __break(0x550Au);
LABEL_9:
            LOBYTE(v3) = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008C130(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0;
    *(result + 96) = result + 104;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = result + 144;
    *(result + 168) = 0;
    *(result + 176) = 0;
    *(result + 184) = 0;
    sub_10007478C(result);
    return v1;
  }

  return result;
}

void sub_10008C1A4(uint64_t *a1, uint64_t a2)
{
  v11 = a2;
  if (!a1)
  {
    goto LABEL_34;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_34;
  }

  sub_100089D54(a1, &v11);
  v3 = v11;
  if (!v11 || (v11 & 7) != 0)
  {
    goto LABEL_34;
  }

  v4 = *v11;
  if (*v11 <= 4)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        a1[6] = v11;
        return;
      }

      if (v4 == 1)
      {
        v6 = *(v11 + 16);
        a1[7] = v11;
        a1[8] = v6;
        return;
      }
    }

    else
    {
      if ((v4 - 2) < 2)
      {
        return;
      }

      if (v4 == 4)
      {
        sub_100089D54(a1 + 9, &v11);
        v3 = v11;
        if (v11 && (v11 & 7) == 0)
        {
          v10 = *(v11 + 16);
          v5 = sub_1000894D0((a1 + 12), &v10);
LABEL_30:
          *v5 = v3;
          return;
        }

        goto LABEL_34;
      }
    }

    goto LABEL_31;
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        a1[16] = v11;
        return;
      }

      goto LABEL_31;
    }

    v7 = *(v11 + 8);
    if (!v7)
    {
LABEL_28:
      a1[15] = 0;
      return;
    }

    if ((v7 & 7) == 0)
    {
      v8 = *(v7 + 8);
      if (v8 >= 0x10)
      {
LABEL_35:
        __break(0x550Au);
        return;
      }

      if (!v8)
      {
        a1[15] = *(v11 + 16);
        return;
      }

      goto LABEL_28;
    }

LABEL_34:
    __break(0x5516u);
    goto LABEL_35;
  }

  switch(v4)
  {
    case 7:
      return;
    case 8:
      v9 = *(v11 + 16);
      v5 = sub_1000894D0((a1 + 17), &v9);
      goto LABEL_30;
    case 16:
      a1[20] = v11;
      return;
  }

LABEL_31:
  sub_1000DDEEC(0, 4, "%s:%d Unknown ACK type %X in AddFIDTokenValue\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 17712, *v11);
}

void sub_10008C334(uint64_t a1, unsigned __int8 *a2)
{
  v22 = a2;
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_50;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 >= v3)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v6;
    v24 = v6;
    v7 = *(a1 + 24);
    v8 = (v4 - v7) >> 3;
    v9 = v8 + 1;
    if (v8 == -1)
    {
LABEL_53:
      __break(0x5500u);
LABEL_54:
      sub_1000E1E08();
    }

    if (v9 >> 61)
    {
      goto LABEL_54;
    }

    v10 = v3 - v7;
    v11 = v10 >> 2;
    if (v10 >> 2 <= v9)
    {
      v11 = v8 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    sub_100025A58(&v23, v12, v8, a1 + 24);
    if (!v24 || (v24 & 7) != 0)
    {
      goto LABEL_50;
    }

    *v24 = v22;
    if (v24 < 0xFFFFFFFFFFFFFFF8)
    {
      *&v24 = v24 + 8;
      sub_10002597C((a1 + 24), &v23);
      v5 = *(a1 + 32);
      sub_100025B50(&v23);
      goto LABEL_17;
    }

LABEL_52:
    __break(0x5513u);
    goto LABEL_53;
  }

  sub_1000605D8(a1 + 24, &v22);
  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_52;
  }

  v5 = v4 + 8;
LABEL_17:
  *(a1 + 32) = v5;
  v13 = v22;
  if (!v22 || (v22 & 7) != 0)
  {
LABEL_50:
    __break(0x5516u);
    goto LABEL_51;
  }

  v14 = v22[12];
  if (v14 >= 2)
  {
    goto LABEL_51;
  }

  v15 = (v14 & 1) != 0 ? 4 : 3;
  *v22 = v15;
  v16 = *(v13 + 1);
  if (v16 > 0x1FF)
  {
    goto LABEL_51;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      goto LABEL_45;
    }

    v18 = *(v13 + 2);
    if (v18 <= 0xF)
    {
      if (v18 == 4)
      {
        v19 = v13[24] + v15;
        if (v19 > 0xFF)
        {
          __break(0x5507u);
          return;
        }

        LOBYTE(v16) = 0;
        *v13 = v19;
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      goto LABEL_45;
    }

LABEL_51:
    __break(0x550Au);
    goto LABEL_52;
  }

  if (v16 > 8)
  {
    goto LABEL_32;
  }

  if (((1 << v16) & 0x1B8) != 0)
  {
    return;
  }

  if (v16 == 2)
  {
    if ((v14 & 1) == 0)
    {
      return;
    }

    v17 = v13[13] - 1;
    if (v17 >= 7 || ((0x79u >> v17) & 1) == 0)
    {
      return;
    }

    v16 = dword_1000EF21C[(v13[13] - 1)];
LABEL_45:
    v20 = 1 << v16;
    *(a1 + 200) |= v20;
    v21 = *(v13 + 2);
    if (v21 <= 0xF)
    {
      if (v21)
      {
        *(a1 + 196) = 0;
      }

      else
      {
        *(a1 + 196) |= v20;
      }

      return;
    }

    goto LABEL_51;
  }

  if (v16 == 6)
  {
    LOBYTE(v16) = 8;
    goto LABEL_45;
  }

LABEL_32:
  if (v16 != 256)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown ACK type %X in AddFIDTokenAck\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 17828, *(v13 + 1));
    return;
  }

  if ((*(a1 + 192) & 0x80) != 0)
  {
    LOBYTE(v16) = 7;
    goto LABEL_45;
  }
}

uint64_t sub_10008C5B8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v11 = -86;
      v2 = *(result + 136);
      v10 = v2;
      v3 = result + 144;
      if (v2 == result + 144)
      {
        return result;
      }

      v4 = result + 104;
      while (v2 && (v2 & 7) == 0)
      {
        v11 = *(v2 + 32);
        v5 = *(v2 + 40);
        if (!v5 || (v5 & 7) != 0)
        {
          break;
        }

        v7 = *(v5 + 20);
        if (v7 >= 8)
        {
          goto LABEL_23;
        }

        v8 = *(v5 + 24);
        result = sub_10008E904(v1 + 96, &v11);
        if (v4 != result && !v8)
        {
          if (!result)
          {
            break;
          }

          if ((result & 7) != 0)
          {
            break;
          }

          v9 = *(result + 40);
          if (!v9 || (v9 & 7) != 0)
          {
            break;
          }

          *(v9 + 32) = v7;
        }

        result = sub_100007D44(&v10);
        v2 = v10;
        if (v10 == v3)
        {
          return result;
        }
      }
    }
  }

  __break(0x5516u);
LABEL_23:
  __break(0x550Au);
  return result;
}

void sub_10008C6A8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_33:
    __break(0x5516u);
LABEL_34:
    __break(0x5513u);
LABEL_35:
    __break(0x5517u);
    return;
  }

  v2 = *a1;
  if ((*a1 & 7) != 0)
  {
    goto LABEL_35;
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    goto LABEL_35;
  }

  while (v2 != v3)
  {
    if (!v2)
    {
      goto LABEL_33;
    }

    v4 = *v2;
    if (*v2)
    {
      v5 = (*v2 & 7) == 0;
      *v2;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_33;
    }

    v6 = *v4;
    if (*v4 == 5)
    {
      if (*(v4 + 2))
      {
        goto LABEL_16;
      }
    }

    else if ((v6 == 4 || v6 == 2) && *(v4 + 3))
    {
LABEL_16:
      operator delete[]();
    }

    if (*v2)
    {
      if ((*v2 & 7) == 0)
      {
        operator delete();
      }

      goto LABEL_33;
    }

    if (v2 >= 0xFFFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }

    ++v2;
    v3 = *(a1 + 8);
    if ((v3 & 7) != 0)
    {
      goto LABEL_35;
    }
  }

  v7 = *a1;
  if (v2 != *a1)
  {
    while (v3 > 7)
    {
      v3 -= 8;
      if (v3 == v7)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_34;
  }

LABEL_28:
  *(a1 + 8) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v8 = *(a1 + 72);
  for (i = *(a1 + 80); i != v8; i -= 8)
  {
    if (i <= 7)
    {
      goto LABEL_34;
    }
  }

  *(a1 + 80) = v8;
  sub_100007DB0(a1 + 96);
  sub_100007DB0(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
}

uint64_t sub_10008C80C(uint64_t result)
{
  if (!result || (v1 = result, v2 = result & 7, (result & 7) != 0))
  {
LABEL_26:
    __break(0x5516u);
  }

  else
  {
    v3 = *(result + 24);
    if ((v3 & 7) != 0 || (v2 = *(result + 32), (v2 & 7) != 0))
    {
LABEL_21:
      __break(0x5517u);
    }

    else
    {
      while (v3 != v2)
      {
        if (!v3)
        {
          goto LABEL_26;
        }

        v4 = *v3;
        if (*v3)
        {
          v5 = (*v3 & 7) == 0;
          *v3;
        }

        else
        {
          v5 = 0;
        }

        if (!v5)
        {
          goto LABEL_26;
        }

        v6 = *(v4 + 8);
        if (v6 >= 0x10)
        {
          goto LABEL_28;
        }

        if (v6 == 4 && *(v4 + 16))
        {
          operator delete[]();
        }

        result = *v3;
        if (*v3)
        {
          if ((result & 7) == 0)
          {
            operator delete();
          }

          goto LABEL_26;
        }

        if (v3 >= 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_27;
        }

        v3 += 8;
        v2 = *(v1 + 32);
        if ((v2 & 7) != 0)
        {
          goto LABEL_21;
        }
      }
    }

    v7 = *(v1 + 24);
    if (v3 == v7)
    {
LABEL_25:
      *(v1 + 32) = v7;
      return result;
    }

    while (v2 > 7)
    {
      v2 -= 8;
      if (v2 == v7)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  __break(0x5513u);
LABEL_28:
  __break(0x550Au);
  return result;
}

uint64_t sub_10008C920(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1000C4254();
  if (result && (result & 7) == 0)
  {
    result = sub_100095458(result, a1);
    if (a4 && a3 && result)
    {
      if (a1 && (a1 & 7) == 0)
      {
        result = sub_100018DC0(a1);
        if (a4 != -1)
        {
          operator new[]();
        }

        goto LABEL_14;
      }
    }

    else
    {
      result = sub_1000C4254();
      if (result && (result & 7) == 0)
      {
        v8 = sub_100095458(result, a1);
        sub_1000DDEEC(0, 4, "%s:%d invalid connection(%hhx)(%d) or data(%hhx)=NULL or size(%d)<=0", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18496, a1, v8, a3, a4);
        return 0;
      }
    }
  }

  __break(0x5516u);
LABEL_14:
  __break(0x5500u);
  __break(0x5513u);
  __break(0x5507u);
  return result;
}

uint64_t sub_10008CAE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 a5)
{
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v11 = sub_100095458(result, a1);
  result = 0;
  if (a2 && v11)
  {
    if ((a2 & 7) == 0)
    {
      v12 = (*(a2 + 184) & a5);
      if (*(a2 + 196) == a4 && v12 == *(a2 + 198))
      {
        return 0;
      }

      result = sub_10008CBF0(a1, a2, 0, a4, v12);
      v14 = -21846;
      v13 = __rev16(a4);
      if (&v13 < 0xFFFFFFFFFFFFFFFELL)
      {
        v14 = __rev16(v12);
        return sub_100087D30(a1, a2, a3, 1, &v13, 4, 0, 0);
      }

LABEL_13:
      __break(0x5500u);
      return result;
    }

LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10008CBF0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  result = sub_100095458(result, a1);
  if (a2 && result)
  {
    if ((a2 & 7) == 0)
    {
      *(a2 + 200) = *(a2 + 196);
      *(a2 + 196) = a4;
      *(a2 + 198) = a5;
      return result;
    }

LABEL_8:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10008CC60(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = sub_10008D110(result, a2);
  if (!result)
  {
LABEL_11:
    sub_1000DDEEC(0, 4, "%s:%d No VPort for DETACH Id=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18682, a2);
    return 4;
  }

  if ((result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v4 = *(result + 12);
  if (v4 >= 4)
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  if (!v4 || !*(result + 16))
  {
    goto LABEL_11;
  }

  return sub_10008D1A8(v2, result);
}

uint64_t sub_10008CD3C(uint64_t result, int a2, unsigned __int8 *a3, int a4)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_30;
  }

  v7 = *a3;
  result = sub_10008D110(result, a2);
  v11 = result;
  if (!result)
  {
    if (v7 <= 3)
    {
      if (v7 != 1)
      {
        return 4;
      }

      result = *(v4 + 8);
      if (result && (result & 7) == 0)
      {
        sub_100018DC0(result);
        operator new();
      }

      goto LABEL_30;
    }

LABEL_31:
    __break(0x550Au);
    goto LABEL_32;
  }

  if ((result & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  v8 = *(result + 12);
  if (v8 > 3)
  {
    goto LABEL_31;
  }

  if (v8 != 1 || !*(result + 16))
  {
    return 4;
  }

  if (v7 > 3)
  {
    goto LABEL_31;
  }

  if (v7 == 1)
  {
    if (a3 == -1)
    {
      goto LABEL_32;
    }

    if (!a4)
    {
      goto LABEL_33;
    }

    result = sub_10008DABC(v4, result, (a3 + 1), a4 - 1);
    if (v11)
    {
      if ((v11 & 7) == 0)
      {
        v10 = result;
        result = *(v11 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            sub_1000B9EA8(result, 1);
            return v10;
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (v7)
  {
    return 4;
  }

  if (a3 == -1)
  {
LABEL_32:
    __break(0x5513u);
    goto LABEL_33;
  }

  if (a4)
  {
    sub_10008D600(v4, result, a3 + 1, a4 - 1);
    return v9;
  }

LABEL_33:
  __break(0x5515u);
  return result;
}

uint64_t sub_10008D110(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 2256));
    for (i = *(v2 + 2240); i != v2 + 2232; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_16;
      }

      v5 = *(i + 16);
      if (!v5 || (*(i + 16) & 7) != 0)
      {
        goto LABEL_16;
      }

      if (*(v5 + 8) == a2)
      {
        goto LABEL_15;
      }
    }

    v5 = 0;
LABEL_15:
    pthread_mutex_unlock((v2 + 2256));
    return v5;
  }

  return result;
}

uint64_t sub_10008D1A8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2256));
    sub_10008D204(v2, a2);
    v5 = v4;
    pthread_mutex_unlock((v2 + 2256));
    return v5;
  }

  return result;
}

void sub_10008D204(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_68;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_68;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
LABEL_69:
    __break(0x550Au);
    return;
  }

  if (!v4 || !*(a2 + 16))
  {
LABEL_19:
    sub_1000DDEEC(0, 4, "%s:%d Invalid VPort(%hhx) for VPort DETACH\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18791, a2);
    return;
  }

  v5 = sub_100065198(a1);
  if (!v5)
  {
    goto LABEL_68;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_68;
  }

  v6 = *(a2 + 16);
  if ((v6 & 7) != 0)
  {
    goto LABEL_68;
  }

  v7 = sub_1000949E0(v5, v6, 0);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v13 = sub_100065198(0);
    if (!v13)
    {
      goto LABEL_68;
    }

    if ((v13 & 7) != 0)
    {
      goto LABEL_68;
    }

    v14 = *(a2 + 16);
    if ((v14 & 7) != 0)
    {
      goto LABEL_68;
    }

    if (sub_1000C7D80(v13, v14))
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_29;
    }

    v15 = *(a2 + 16);
    if (!v15 || (v15 & 7) != 0)
    {
      goto LABEL_68;
    }

    v8 = (*(*v15 + 408))(v15);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_29;
    }
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_68;
  }

  v9 = sub_10005BBCC(v8);
  if (sub_10005BFD0(v8))
  {
    v10 = *(a2 + 16);
    if ((v10 & 7) != 0)
    {
      goto LABEL_68;
    }

    v11 = *(a1 + 8);
    if (!v11 || (v11 & 7) != 0)
    {
      goto LABEL_68;
    }

    v12 = sub_100018DC0(v11);
    sub_100076B84(0, v8, v10, v12);
  }

LABEL_29:
  if ((*(a2 + 24) & 4) != 0)
  {
    v16 = *(a1 + 8);
    if (!v16)
    {
      goto LABEL_68;
    }

    if ((v16 & 7) != 0)
    {
      goto LABEL_68;
    }

    v17 = *(a2 + 8);
    v18 = sub_100018DC0(v16);
    if (!v18)
    {
      goto LABEL_68;
    }

    if ((v18 & 7) != 0)
    {
      goto LABEL_68;
    }

    v19 = (*(*v18 + 200))(v18);
    sub_1000DDEEC(0, 4, "%s:%d Load fault %s for VPort ID %d on port %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18738, "cleared", v17, v19);
    v20 = *(a2 + 16);
    if ((v20 & 7) != 0)
    {
      goto LABEL_68;
    }

    v21 = *(a1 + 8);
    if (!v21 || (v21 & 7) != 0)
    {
      goto LABEL_68;
    }

    v22 = sub_100018DC0(v21);
    sub_10008DEC4(24, v8, v20, v22);
  }

  v23 = *(a2 + 16);
  if (!v23 || (v23 & 7) != 0)
  {
LABEL_68:
    __break(0x5516u);
    goto LABEL_69;
  }

  *(v23 + 190) = 1;
  sub_10005F290(a1 + 2232, &v30);
  if (v9)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      if ((v24 & 7) == 0)
      {
        if (v30)
        {
          if ((v30 & 7) == 0)
          {
            v25 = v30[2];
            sub_10005B150(v24);
            if ((v9 & 7) == 0 && v30 && (v30 & 7) == 0 && (v30[2] & 7) == 0)
            {
              sub_100062CA8(v9, 8);
              goto LABEL_63;
            }
          }
        }
      }
    }

    goto LABEL_68;
  }

  v26 = sub_1000C4254();
  if (!v26)
  {
    goto LABEL_68;
  }

  if ((v26 & 7) != 0)
  {
    goto LABEL_68;
  }

  if (!v30)
  {
    goto LABEL_68;
  }

  if ((v30 & 7) != 0)
  {
    goto LABEL_68;
  }

  if ((v30[2] & 7) != 0)
  {
    goto LABEL_68;
  }

  (*(*v26 + 104))(v26);
  v27 = v30;
  if (!v30 || (v30 & 7) != 0)
  {
    goto LABEL_68;
  }

  v28 = v30[2];
  if (v28)
  {
    if ((v28 & 7) != 0)
    {
      goto LABEL_68;
    }

    (*(*v28 + 8))(v30[2]);
    v27 = v30;
  }

  if (!v27 || (v27 & 7) != 0)
  {
    goto LABEL_68;
  }

  v27[2] = 0;
  (*(*v27 + 8))(v27);
LABEL_63:
  v30 = 0;
  if (*(a1 + 2248))
  {
    return;
  }

  v29 = *(a1 + 8);
  if (!v29 || (v29 & 7) != 0)
  {
    goto LABEL_68;
  }

  sub_10005BD4C(v29, 0, 4u);
}

void sub_10008D600(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_91;
  }

  if (!a3)
  {
    goto LABEL_90;
  }

  if (!a2)
  {
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_91;
  }

  v7 = *(a2 + 12);
  if (v7 > 3)
  {
LABEL_92:
    __break(0x550Au);
    goto LABEL_93;
  }

  if (!v7)
  {
LABEL_90:
    __break(0x5518u);
    goto LABEL_91;
  }

  if (!a4 || v7 != 1 || !*(a2 + 16))
  {
    return;
  }

  v9 = *a3;
  v10 = *(a2 + 24) ^ v9;
  if ((v10 & 4) != 0)
  {
    if ((v9 & 4) != 0)
    {
      v11 = "detected";
    }

    else
    {
      v11 = "cleared";
    }

    v12 = *(a1 + 8);
    if (!v12)
    {
      goto LABEL_91;
    }

    if ((v12 & 7) != 0)
    {
      goto LABEL_91;
    }

    v13 = *(a2 + 8);
    v14 = sub_100018DC0(v12);
    if (!v14)
    {
      goto LABEL_91;
    }

    if ((v14 & 7) != 0)
    {
      goto LABEL_91;
    }

    v15 = (*(*v14 + 200))(v14);
    sub_1000DDEEC(0, 4, "%s:%d Load fault %s for VPort ID %d on port %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18925, v11, v13, v15);
    v16 = *(a2 + 16);
    if ((v16 & 7) != 0)
    {
      goto LABEL_91;
    }

    v17 = *(a1 + 8);
    if (!v17 || (v17 & 7) != 0)
    {
      goto LABEL_91;
    }

    v18 = sub_100018DC0(v17);
    if ((v9 & 4) != 0)
    {
      v19 = 23;
    }

    else
    {
      v19 = 24;
    }

    sub_10008DEC4(v19, 0, v16, v18);
  }

  v20 = -1;
  if (a4 != 1 && (v9 & 2) != 0)
  {
    if (a3 == -1)
    {
LABEL_93:
      __break(0x5513u);
      return;
    }

    v21 = a3[1];
    if (v21 == 255)
    {
      v20 = 100;
    }

    else
    {
      v20 = v21 >> 4;
    }
  }

  if ((v9 & 1) == 0)
  {
    v22 = *(a2 + 16);
    if (!v22 || (v22 & 7) != 0)
    {
      goto LABEL_91;
    }

    if (!(*(*v22 + 384))(v22))
    {
      v23 = *(a2 + 16);
      if (!v23 || (v23 & 7) != 0)
      {
        goto LABEL_91;
      }

      (*(*v23 + 376))(v23, *(a1 + 8));
    }
  }

  if (v20 == *(a2 + 28))
  {
LABEL_56:
    if (v10)
    {
      goto LABEL_72;
    }

LABEL_57:
    if (v20 == -1)
    {
      goto LABEL_79;
    }

    v28 = *(a2 + 28);
    if (v20 == v28 || v28 == 100 || v28 == 255)
    {
      goto LABEL_76;
    }

    v29 = *(a2 + 16);
    if (v29 && (v29 & 7) == 0)
    {
      sub_1000B9DB0(v29, 8, 0);
      goto LABEL_76;
    }

    goto LABEL_91;
  }

  switch(v20)
  {
    case 0xBu:
      v27 = sub_100048620();
      if (!v27 || (v27 & 7) != 0 || (*(a2 + 16) & 7) != 0)
      {
        goto LABEL_91;
      }

      (*(*v27 + 336))(v27);
      goto LABEL_56;
    case 0xAu:
      v26 = sub_10004B1AC();
      if (!v26 || (v26 & 7) != 0 || (*(a2 + 16) & 7) != 0)
      {
        goto LABEL_91;
      }

      v25 = *(*v26 + 280);
      break;
    case 3u:
      v24 = sub_10004B1AC();
      if (!v24 || (v24 & 7) != 0 || (*(a2 + 16) & 7) != 0)
      {
        goto LABEL_91;
      }

      v25 = *(*v24 + 280);
      break;
    default:
      v30 = sub_100048620();
      if (!v30)
      {
        goto LABEL_91;
      }

      if ((v30 & 7) != 0)
      {
        goto LABEL_91;
      }

      if ((*(a2 + 16) & 7) != 0)
      {
        goto LABEL_91;
      }

      (*(*v30 + 336))(v30);
      v31 = sub_10004B1AC();
      if (!v31 || (v31 & 7) != 0 || (*(a2 + 16) & 7) != 0)
      {
        goto LABEL_91;
      }

      v25 = *(*v31 + 280);
      break;
  }

  v25();
  if ((v10 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_72:
  if ((v9 & 1) == 0)
  {
    if (v20 == 100)
    {
      v20 = 15;
    }

    if (v20 != -1)
    {
LABEL_76:
      v32 = *(a2 + 16);
      if (v32 && (v32 & 7) == 0)
      {
        sub_1000B9DB0(v32, 128, v20);
        *(a2 + 24) = v9;
LABEL_87:
        *(a2 + 28) = v20;
        return;
      }

      goto LABEL_91;
    }

LABEL_79:
    *(a2 + 24) = v9;
    return;
  }

  v33 = *(a2 + 16);
  if (v20 != -1)
  {
    if (!v33 || (v33 & 7) != 0)
    {
      goto LABEL_91;
    }

    sub_1000B9DB0(v33, 128, v20);
    v33 = *(a2 + 16);
  }

  if (!v33 || (v33 & 7) != 0)
  {
LABEL_91:
    __break(0x5516u);
    goto LABEL_92;
  }

  sub_1000B9DB0(v33, 8, 0);
  *(a2 + 24) = v9;
  if (v20 != -1)
  {
    goto LABEL_87;
  }
}

uint64_t sub_10008DABC(uint64_t result, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return 4;
  }

  if ((a2 & 7) != 0)
  {
LABEL_39:
    __break(0x5516u);
    goto LABEL_40;
  }

  v4 = *(a2 + 12);
  if (v4 > 3)
  {
LABEL_40:
    __break(0x550Au);
    goto LABEL_41;
  }

  if (v4 != 1)
  {
    if (!v4)
    {
LABEL_9:
      __break(0x5518u);
      goto LABEL_10;
    }

    return 4;
  }

LABEL_10:
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 4;
  }

  if (a4 < 2)
  {
    LOWORD(v7) = 0;
    LOWORD(v6) = 0;
  }

  else
  {
    v6 = bswap32(*a3) >> 16;
    if (a4 < 4)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      if (a3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_41;
      }

      v7 = bswap32(a3[1]) >> 16;
      if (a4 >= 6)
      {
        if (a3 < 0xFFFFFFFFFFFFFFFCLL)
        {
          v8 = bswap32(a3[2]) >> 16;
          goto LABEL_21;
        }

LABEL_41:
        __break(0x5500u);
        return result;
      }
    }
  }

  LOWORD(v8) = -1;
LABEL_21:
  if ((v5 & 7) != 0)
  {
    goto LABEL_39;
  }

  v9 = (*(*v5 + 392))(*(a2 + 16));
  if ((sub_10006852C(v9) & 1) == 0 && (sub_100068438(v9) & 1) == 0)
  {
    LOWORD(v7) = v7 & 0xFFFE;
    LOWORD(v6) = v6 & 0xFFFE;
  }

  if (!sub_100068624(v9))
  {
    LOWORD(v6) = v6 & 0xFFFD;
  }

  if (!sub_100068718(v9))
  {
    LOWORD(v6) = v6 & 0xFFEF;
  }

  if (!sub_100068860(v9))
  {
    LOWORD(v6) = v6 & 0xFFF7;
  }

  if (!sub_100068964(v9))
  {
    LOWORD(v6) = v6 & 0xFFDF;
  }

  v10 = sub_100068A58(v9);
  result = 0;
  v11 = v10 == 0;
  v12 = v6 & 0xFFBF;
  if (!v11)
  {
    v12 = v6;
  }

  *(v5 + 184) = v7;
  *(v5 + 186) = v12;
  *(v5 + 188) = v8;
  v13 = v12 & 2;
  if ((v12 & 0x40) != 0)
  {
    v14 = 32765;
  }

  else
  {
    v14 = 31677;
  }

  *(v5 + 204) = v14 | v13;
  return result;
}

uint64_t sub_10008DC94(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = *(result + 208);
      result = (*(*result + 384))(result);
      if (!v2)
      {
        sub_1000E1D34();
      }

      if (!result)
      {
        sub_1000E1D34();
      }

      if ((result & 7) == 0)
      {
        result = sub_10005B1A8(result, v1);
        v3 = result;
        if (!result)
        {
          return v3;
        }

        *(v1 + 208) = 0;
        if ((v2 & 7) == 0)
        {
          (*(*v2 + 8))(v2);
          return v3;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008DD60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_28;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    return result;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_28;
  }

  v6 = result;
  v7 = *(v4 + 40);
  if (!v7)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    if (result)
    {
      v9 = 19;
    }

    else
    {
      v9 = 20;
    }

    v11[0] = v9;
    v10 = *(v4 + 52);
    if (v10 != v10)
    {
      goto LABEL_29;
    }

    if (v10 == -1)
    {
      result = 16;
    }

    else
    {
      result = v10;
    }

    goto LABEL_23;
  }

  if (!result)
  {
    if ((v7 & 7) == 0)
    {
      result = sub_10005C010(*(v4 + 40));
      if ((result & 1) == 0)
      {
        return result;
      }

      v8 = 20;
      goto LABEL_20;
    }

LABEL_28:
    __break(0x5516u);
LABEL_29:
    __break(0x550Au);
    return result;
  }

  if ((v7 & 7) != 0)
  {
    goto LABEL_28;
  }

  result = sub_10005C010(*(v4 + 40));
  if (result)
  {
    return result;
  }

  v8 = 19;
LABEL_20:
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v8;
  if (sub_10005BDFC(v7) == -1)
  {
    result = 16;
  }

  else
  {
    result = sub_10005BDFC(v7);
  }

LABEL_23:
  v11[1] = result;
  v12 = a2;
  v13 = *(v4 + 36);
  v14 = 0;
  v15 = 0;
  v16 = a3;
  if (v7)
  {
    if ((v7 & 7) == 0)
    {
      sub_10005BCC8(v7, 0, 0, v11, 48);
      return sub_10005BFF8(v7, v6);
    }

    goto LABEL_28;
  }

  return sub_10005FBC8(0, 0, v11, 48, 0);
}

uint64_t sub_10008DEC4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_28;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_29;
  }

  v7 = result;
  result = (*(*a3 + 272))(a3);
  if ((result & 1) == 0)
  {
LABEL_28:
    sub_1000E1D34();
  }

  v8 = a3[4];
  if (!a2)
  {
    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_29;
    }

    a2 = *(v8 + 40);
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (v7 > 0x1F)
  {
    goto LABEL_30;
  }

  v10[0] = v7;
  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      if (sub_10005BDFC(a2) == -1)
      {
        result = 16;
      }

      else
      {
        result = sub_10005BDFC(a2);
      }

      goto LABEL_20;
    }

LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_29;
  }

  v9 = *(v8 + 52);
  if (v9 != v9)
  {
LABEL_30:
    __break(0x550Au);
    return result;
  }

  if (v9 == -1)
  {
    result = 16;
  }

  else
  {
    result = v9;
  }

LABEL_20:
  v10[1] = result;
  v11 = a3;
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_29;
  }

  v12 = *(v8 + 36);
  v13 = 0;
  v14 = a2;
  v16 = a4;
  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      return sub_10005BCC8(a2, 0, 0, v10, 48);
    }

    goto LABEL_29;
  }

  return sub_10005FBC8(0, 0, v10, 48, 0);
}

void sub_10008E050(uint64_t *a1)
{
  if (!a1 || (a1 & 7) != 0 || ((v1 = *a1) != 0 ? (v2 = (*a1 & 7) == 0, *a1) : (v2 = 0), !v2))
  {
    __break(0x5516u);
LABEL_13:
    __break(0x5513u);
    return;
  }

  v3 = *v1;
  if (*v1)
  {
    if (*(v1 + 8) >= v3)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_10008E098(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = result + 8;
  v2 = *(result + 8);
  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10008E120(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (bswap64(*a2 | (*(a2 + 2) << 32)) >= bswap64(*(result + 25) | (*(result + 29) << 32)))
      {
        return result;
      }

      return v3;
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  return v3;
}

uint64_t sub_10008E120(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (!a3)
    {
      return a4;
    }

    if ((a3 & 7) == 0)
    {
      v4 = bswap64(*a2 | (*(a2 + 2) << 32));
      while (1)
      {
        if (bswap64(*(a3 + 25) | (*(a3 + 29) << 32)) >= v4)
        {
          v5 = *a3;
          if (!*a3)
          {
            return a3;
          }
        }

        else
        {
          v5 = *(a3 + 8);
          if (!v5)
          {
            return a4;
          }

          a3 = a4;
        }

        if ((v5 & 7) != 0)
        {
          break;
        }

        a4 = a3;
        a3 = v5;
      }
    }
  }

  __break(0x5516u);
  return a3;
}

uint64_t sub_10008E1A0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10008E1B4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008E1D8(uint64_t result, void *a2, unsigned __int8 *a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = *(result + 8);
    result += 8;
    v3 = v4;
    if (!v4)
    {
      goto LABEL_15;
    }

    if ((v3 & 7) == 0)
    {
      v5 = *a3;
      while (1)
      {
        v6 = *(v3 + 32);
        if (v5 >= v6)
        {
          if (v6 >= v5)
          {
            *a2 = v3;
            if ((result & 7) != 0)
            {
              break;
            }

            return result;
          }

          v7 = *(v3 + 8);
          if (!v7)
          {
            result = v3;
            v3 += 8;
            goto LABEL_19;
          }

          v3 += 8;
        }

        else
        {
          v7 = *v3;
          if (!*v3)
          {
            result = v3;
            goto LABEL_19;
          }
        }

        if ((v7 & 7) != 0)
        {
          break;
        }

        result = v3;
        v3 = v7;
      }
    }
  }

  __break(0x5516u);
LABEL_15:
  v3 = result;
LABEL_19:
  *a2 = result;
  return v3;
}

uint64_t sub_10008E278(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008E2F4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008E370(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = result + 8;
  v2 = *(result + 8);
  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10008E3F8(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (bswap64(*a2 | (*(a2 + 2) << 32)) >= bswap64(*(result + 32) | (*(result + 36) << 32)))
      {
        return result;
      }

      return v3;
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  return v3;
}

uint64_t sub_10008E3F8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (!a3)
    {
      return a4;
    }

    if ((a3 & 7) == 0)
    {
      v4 = bswap64(*a2 | (*(a2 + 2) << 32));
      while (1)
      {
        if (bswap64(*(a3 + 32) | (*(a3 + 36) << 32)) >= v4)
        {
          v5 = *a3;
          if (!*a3)
          {
            return a3;
          }
        }

        else
        {
          v5 = *(a3 + 8);
          if (!v5)
          {
            return a4;
          }

          a3 = a4;
        }

        if ((v5 & 7) != 0)
        {
          break;
        }

        a4 = a3;
        a3 = v5;
      }
    }
  }

  __break(0x5516u);
  return a3;
}

uint64_t sub_10008E478(uint64_t result, void *a2, unsigned int *a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = *(result + 8);
    result += 8;
    v3 = v4;
    if (!v4)
    {
      goto LABEL_15;
    }

    if ((v3 & 7) == 0)
    {
      v5 = bswap64(*a3 | (*(a3 + 2) << 32));
      while (1)
      {
        if (v5 >= bswap64(*(v3 + 32) | (*(v3 + 36) << 32)))
        {
          if (bswap64(*(v3 + 32) | (*(v3 + 36) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
          {
            *a2 = v3;
            if ((result & 7) != 0)
            {
              break;
            }

            return result;
          }

          v6 = *(v3 + 8);
          if (!v6)
          {
            result = v3;
            v3 += 8;
            goto LABEL_19;
          }

          v3 += 8;
        }

        else
        {
          v6 = *v3;
          if (!*v3)
          {
            result = v3;
            goto LABEL_19;
          }
        }

        if ((v6 & 7) != 0)
        {
          break;
        }

        result = v3;
        v3 = v6;
      }
    }
  }

  __break(0x5516u);
LABEL_15:
  v3 = result;
LABEL_19:
  *a2 = result;
  return v3;
}

uint64_t sub_10008E550(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_10008E5D4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    for (i = a2; i != a3; i = v6)
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_9;
      }

      sub_10008E650(v3, v3 + 8, (i + 32));
      result = sub_100007D44(&v6);
    }
  }

  return result;
}

uint64_t sub_10008E650(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (result && (result & 7) == 0)
  {
    v3 = 0xAAAAAAAAAAAAAAAALL;
    v4 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_10008E71C(result, a2, &v4, &v3, a3);
    if (!*result)
    {
      operator new();
    }

    if ((*result & 7) == 0)
    {
      return *result;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008E71C(void *a1, uint64_t a2, void *a3, void *a4, unsigned __int8 *a5)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  v7 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_25;
  }

  v6 = a5;
  v5 = a3;
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v10 = *a5;
  v11 = *(a2 + 32);
  if (v10 < v11)
  {
LABEL_7:
    v15 = a2;
    if (*a1 == a2)
    {
      goto LABEL_11;
    }

    v12 = *sub_10008E894(&v15);
    if (v12 && (v12 & 7) == 0)
    {
      if (*(v12 + 32) < *v6)
      {
LABEL_11:
        if (a2 && (a2 & 7) == 0)
        {
          if (!*a2)
          {
            *v5 = a2;
            return a2;
          }

          v13 = v15;
          *v5 = v15;
          if (v13)
          {
            if ((v13 & 7) == 0)
            {
              return (v13 + 1);
            }
          }
        }

        goto LABEL_25;
      }

      return sub_10008E1D8(v7, v5, v6);
    }

LABEL_25:
    __break(0x5516u);
    return sub_10008E1D8(v7, v5, v6);
  }

  if (v11 >= v10)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v15 = a2;
  sub_100007D44(&v15);
  a4 = v15;
  if (v15 != v9)
  {
    if (!v15 || (v15 & 7) != 0)
    {
      goto LABEL_25;
    }

    if (*v6 >= *(v15 + 32))
    {
      return sub_10008E1D8(v7, v5, v6);
    }
  }

  if (!*(a2 + 8))
  {
    *v5 = a2;
    return a2 + 8;
  }

  *v5 = v15;
  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_25;
  }

  return a4;
}

void **sub_10008E894(void **result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *result;
    if (*result)
    {
      v2 = (*result & 7) == 0;
      *result;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v3 = *v1;
      if (*v1)
      {
        while ((v3 & 7) == 0)
        {
          v4 = v3;
          v3 = v3[1];
          if (!v3)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        while (1)
        {
          v4 = v1[2];
          if (!v4 || (v1[2] & 7) != 0)
          {
            break;
          }

          v2 = *v4 == v1;
          v1 = v1[2];
          if (!v2)
          {
LABEL_18:
            *result = v4;
            return result;
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008E904(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = result + 8;
  v2 = *(result + 8);
  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10008E974(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (*a2 >= *(result + 32))
      {
        return result;
      }

      return v3;
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  return v3;
}

uint64_t sub_10008E974(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (!a3)
    {
      return a4;
    }

    if ((a3 & 7) == 0)
    {
      while (1)
      {
        if (*(a3 + 32) >= *a2)
        {
          v4 = *a3;
          if (!*a3)
          {
            return a3;
          }
        }

        else
        {
          v4 = *(a3 + 8);
          if (!v4)
          {
            return a4;
          }

          a3 = a4;
        }

        if ((v4 & 7) != 0)
        {
          break;
        }

        a4 = a3;
        a3 = v4;
      }
    }
  }

  __break(0x5516u);
  return a3;
}

uint64_t *sub_10008E9DC(uint64_t *result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2[1];
    v5 = result[1];
    v6 = *result - v5;
    if (v6 < 0 != v6 <= ~v4)
    {
      v7 = v4 + v6;
      result = memcpy((v4 + v6), *result, v5 - *result);
      a2[1] = v7;
      v8 = *v2;
      v2[1] = *v2;
      *v2 = a2[1];
      a2[1] = v8;
      v9 = v2[1];
      v2[1] = a2[2];
      a2[2] = v9;
      v10 = v2[2];
      v2[2] = a2[3];
      a2[3] = v10;
      *a2 = a2[1];
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

void *sub_10008EA94(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result[3] = 0;
    result[4] = a4;
    if (a2)
    {
      operator new();
    }

    *result = 0;
    result[1] = a3;
    result[2] = a3;
    result[3] = 0;
  }

  return result;
}

void *sub_10008EB2C(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      sub_10008EB7C(result);
      result = *v1;
      if (!*v1)
      {
        return v1;
      }

      if (v1[4])
      {
        operator delete(result);
        return v1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_10008EB7C(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result[1];
  v2 = result[2];
  if (v2 != v1)
  {
    if (result[4])
    {
      while (v2)
      {
        result[2] = --v2;
        if (v2 == v1)
        {
          return result;
        }
      }

      __break(0x5513u);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10008EBBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      sub_100064F7C(result, a2, 14);
      *v2 = off_100116108;
      *(v2 + 1208) = 0;
      v4 = sub_10002E514();
      *(v2 + 1192) = v4;
      if (!v4)
      {
        return v2;
      }

      v5 = sub_1000CE018(a2);
      v6 = sub_1000D2164(v5, 1);
      *(v2 + 1200) = v6;
      result = sub_100065198(v6);
      if (result && (result & 7) == 0)
      {
        sub_1000929D4(result, 14, 32, a2);
        return v2;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008EC60(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_10008EBBC(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_10008EC74(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_100116108, (v2 = sub_100065198(a1)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 14, 0, *(a1 + 8));
    sub_10008ED00(a1);
    *(a1 + 1192) = 0;

    sub_10006522C(a1);
  }
}

uint64_t sub_10008ED00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      while (1)
      {
        v3 = -1;
        v4 = 0;
        result = sub_10006733C(v1, -1, &v3, &v4, 0xFFFFu);
        v2 = result;
        if (!result)
        {
          if (v4)
          {
            sub_10009159C(v1, v4);
            result = v4;
            if (v4)
            {
              break;
            }
          }
        }

        if (v2)
        {
          return result;
        }
      }

      if ((v4 & 7) == 0)
      {
        operator delete();
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10008EDA8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10008EC74(a1);
  }
}

uint64_t sub_10008EDBC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10008EC74(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10008EE04(uint64_t result, unsigned int a2)
{
  v2 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_100095458(result, v2);
  if (!result)
  {
LABEL_13:
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v7 = sub_100095458(result, v2);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 185, v2, v7);
      return 2;
    }

    goto LABEL_29;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_10005BD04(v2);
  if (!result)
  {
    goto LABEL_29;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  sub_10005BB24(result, 0xEu);
  result = sub_10008F03C(v4);
  if (!result)
  {
    v6 = 2;
    goto LABEL_27;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_1000681E4(result, v4);
  if (a2 >= 4)
  {
LABEL_30:
    __break(0x550Au);
LABEL_31:
    __break(0x5513u);
    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v6 = 22;
LABEL_27:
    sub_10005BB6C(v4, 0xEu);
    return v6;
  }

  v8 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0 || (result = sub_1000945E0(result, v4)) == 0 || (result & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  result = (*(*result + 16))(result, 0);
  v13 = -21846;
  v14 = -86;
  if (v8)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v10 = *(v5 + 1208);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    *(v5 + 1208) = v12;
    v13 = bswap32(v12) >> 16;
    v9 = 2;
LABEL_25:
    if (!__CFADD__(&v13, v9))
    {
      *(&v13 + v9) = a2;
      sub_1000B748C();
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(0x5500u);
  return result;
}

uint64_t sub_10008F03C(uint64_t a1)
{
  result = sub_1000C4254();
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!sub_100095458(result, a1))
  {
    return 0;
  }

  result = sub_100092790(v3, a1, 0xEu);
  if (!result)
  {
    sub_1000945E0(v3, a1);
    return 0;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return result;
  }

  result = sub_1000945E0(v3, a1);
  if (result)
  {
    if (sub_100058FB0(v3, result))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008F0E4(uint64_t result, unsigned int a2)
{
  v2 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_100095458(result, v2);
  if (!result)
  {
LABEL_13:
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v7 = sub_100095458(result, v2);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 268, v2, v7);
      return 2;
    }

    goto LABEL_29;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_10005BD04(v2);
  if (!result)
  {
    goto LABEL_29;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  sub_10005BB24(result, 0xEu);
  result = sub_10008F03C(v4);
  if (!result)
  {
    v6 = 2;
    goto LABEL_27;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_1000681E4(result, v4);
  if (a2 >= 4)
  {
LABEL_30:
    __break(0x550Au);
LABEL_31:
    __break(0x5513u);
    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v6 = 22;
LABEL_27:
    sub_10005BB6C(v4, 0xEu);
    return v6;
  }

  v8 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0 || (result = sub_1000945E0(result, v4)) == 0 || (result & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  result = (*(*result + 16))(result, 0);
  v13 = -21846;
  v14 = -86;
  if (v8)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v10 = *(v5 + 1208);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    *(v5 + 1208) = v12;
    v13 = bswap32(v12) >> 16;
    v9 = 2;
LABEL_25:
    if (!__CFADD__(&v13, v9))
    {
      *(&v13 + v9) = a2;
      sub_1000B748C();
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(0x5500u);
  return result;
}

uint64_t sub_10008F31C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_13;
  }

  v6 = sub_100065198(a1);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_35;
  }

  a1 = sub_100095458(v6, v3);
  if (!a1)
  {
LABEL_13:
    v13 = sub_100065198(a1);
    if (v13 && (v13 & 7) == 0)
    {
      v14 = sub_100095458(v13, v3);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 382, v3, v14);
      return 2;
    }

    goto LABEL_35;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_35;
  }

  v7 = sub_10005BD04(v3);
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  if ((v7 & 7) != 0)
  {
    goto LABEL_35;
  }

  sub_10005BB24(v7, 0xEu);
  v9 = sub_10008F03C(v8);
  if (!v9)
  {
    v12 = 2;
    goto LABEL_33;
  }

  v10 = v9;
  if ((v9 & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_1000681E4(v9, v8);
  if (a2 >= 4)
  {
    __break(0x550Au);
    goto LABEL_37;
  }

  if (a2 == 3)
  {
    v12 = 22;
LABEL_33:
    sub_10005BB6C(v8, 0xEu);
    return v12;
  }

  v15 = result;
  v16 = sub_100065198(result);
  if (!v16 || (v16 & 7) != 0 || (v17 = sub_1000945E0(v16, v8)) == 0 || (v17 & 7) != 0)
  {
LABEL_35:
    __break(0x5516u);
  }

  result = (*(*v17 + 16))(v17, 0);
  memset(v24, 170, 19);
  if (v15)
  {
    v18 = 0;
LABEL_25:
    *(v24 | v18) = a2;
    if ((a3 & 7) == 0 && a3 != 0)
    {
      *(v24 | v18 | 1) = bswap64(*(a3 + 8));
      sub_1000B748C();
    }

    goto LABEL_35;
  }

  v19 = *(v10 + 1208);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v10 + 1208) = v21;
    LOWORD(v24[0]) = bswap32(v21) >> 16;
    v18 = 2;
    goto LABEL_25;
  }

LABEL_37:
  __break(0x5500u);
  __break(0x5513u);
  return result;
}

uint64_t sub_10008F5C4(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  v4 = a1;
  if (!a1)
  {
    goto LABEL_15;
  }

  v8 = sub_100065198(a1);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_50;
  }

  a1 = sub_100095458(v8, v4);
  if (!a1)
  {
LABEL_15:
    v16 = sub_100065198(a1);
    if (v16 && (v16 & 7) == 0)
    {
      v17 = sub_100095458(v16, v4);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 531, v4, v17);
      return 2;
    }

    goto LABEL_50;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_50;
  }

  v9 = sub_10005BD04(v4);
  if (!v9)
  {
    goto LABEL_50;
  }

  v10 = v9;
  if ((v9 & 7) != 0)
  {
    goto LABEL_50;
  }

  sub_10005BB24(v9, 0xEu);
  v11 = sub_10008F03C(v10);
  if (!v11)
  {
    v18 = 2;
LABEL_43:
    sub_10005BB6C(v10, 0xEu);
    return v18;
  }

  v12 = v11;
  if ((v11 & 7) != 0)
  {
LABEL_50:
    __break(0x5516u);
  }

  result = sub_1000681E4(v11, v10);
  if (a2 >= 4)
  {
    goto LABEL_51;
  }

  v14 = result;
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v15 = 6;
    }

    else
    {
      if (a2 == 3)
      {
        goto LABEL_42;
      }

      v15 = 0;
    }

    if (a3 <= 0xFF)
    {
      v19 = 0;
      goto LABEL_22;
    }

LABEL_51:
    __break(0x550Au);
    goto LABEL_52;
  }

  if (a3 > 0xFF)
  {
    goto LABEL_51;
  }

  v19 = a3;
  if (!a3)
  {
    v15 = 1;
LABEL_22:
    if (v15 > a3)
    {
      v20 = sub_100065198(result);
      if (v20)
      {
        if ((v20 & 7) == 0)
        {
          v21 = sub_1000945E0(v20, v10);
          if (v21)
          {
            if ((v21 & 7) == 0)
            {
              result = (*(*v21 + 16))(v21, 0);
              *&v31[15] = -1431655766;
              *&v22 = 0xAAAAAAAAAAAAAAAALL;
              *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v30[3] = v22;
              *v31 = v22;
              v30[1] = v22;
              v30[2] = v22;
              v30[0] = v22;
              if (v14)
              {
                v23 = 0;
              }

              else
              {
                v24 = *(v12 + 1208);
                v25 = __CFADD__(v24, 1);
                v26 = v24 + 1;
                if (v25)
                {
LABEL_53:
                  __break(0x5500u);
                  goto LABEL_54;
                }

                *(v12 + 1208) = v26;
                LOWORD(v30[0]) = bswap32(v26) >> 16;
                v23 = 2;
              }

              v27 = ~v30;
              if (~v30 >= v23)
              {
                *(v30 | v23) = a2;
                v28 = v23 | 1;
                if (v27 >= v28)
                {
                  *(v30 | v28) = a3;
                  if (81 - v23 < v19)
                  {
                    goto LABEL_42;
                  }

                  v29 = v23 + 2;
                  if (!a4)
                  {
LABEL_48:
                    sub_1000B748C();
                  }

                  if (v27 >= v29)
                  {
                    memcpy((v30 | v29), a4, v19);
                    goto LABEL_48;
                  }
                }
              }

LABEL_52:
              __break(0x5513u);
              goto LABEL_53;
            }
          }
        }
      }

      goto LABEL_50;
    }

LABEL_42:
    v18 = 22;
    goto LABEL_43;
  }

  if (a3 != 128)
  {
    goto LABEL_42;
  }

  if (!a4)
  {
    a4 = "";
  }

  result = strlen(a4);
  if (result == -1)
  {
    goto LABEL_53;
  }

  if ((result + 1) <= 0xFF)
  {
    v19 = (result + 1);
    v15 = 129;
    goto LABEL_22;
  }

LABEL_54:
  __break(0x5507u);
  return result;
}