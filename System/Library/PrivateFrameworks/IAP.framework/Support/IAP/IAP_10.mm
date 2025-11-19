uint64_t sub_10008F92C(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = result;
  if (!result)
  {
    goto LABEL_16;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_32;
  }

  result = sub_100095458(result, v4);
  if (!result)
  {
LABEL_16:
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v10 = sub_100095458(result, v4);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 697, v4, v10);
      return 2;
    }

    goto LABEL_32;
  }

  if ((v4 & 7) != 0 || (result = sub_10005BD04(v4)) == 0 || (v8 = result, (result & 7) != 0))
  {
LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  sub_10005BB24(result, 0xEu);
  result = sub_10008F03C(v8);
  if (!result)
  {
    v11 = 2;
LABEL_29:
    sub_10005BB6C(v8, 0xEu);
    return v11;
  }

  if (!a4)
  {
LABEL_28:
    v11 = 22;
    goto LABEL_29;
  }

  if (a2 >= 4)
  {
    goto LABEL_33;
  }

  v9 = result;
  if (a2 == 2)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_33;
    }

    if (!a3 || a3 == 5)
    {
LABEL_31:
      operator new();
    }

    if (a3 != 1)
    {
      goto LABEL_28;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v12;
    v14 = v12;
    LOWORD(v14) = 8;
    HIDWORD(v13) = -1;
    if ((result & 7) == 0)
    {
      *(result + 1212) = 0;
      result = sub_1000679FC(result, &v13, sub_10008FC48, 0);
      if (*(v9 + 1212) <= 1u)
      {
        if (!*(v9 + 1212))
        {
          goto LABEL_31;
        }

        sub_10005BB6C(v8, 0xEu);
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a2 != 1)
  {
    goto LABEL_28;
  }

  if (a3 <= 0xFF)
  {
    if ((a3 & 0x7F) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_33:
  __break(0x550Au);
  __break(0x5500u);
  return result;
}

uint64_t sub_10008FC48(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 16) != 8)
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v3 = *(v2 + 18);
  if (v3 >= 4)
  {
    goto LABEL_15;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v4 = *(v2 + 22);
  if (v4 <= 0xFF)
  {
    if (v4 == 1)
    {
      *(result + 1212) = 1;
      return 37;
    }

    return 0;
  }

LABEL_15:
  __break(0x550Au);
  return result;
}

void sub_10008FCC0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_114;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_114;
  }

  if (!a2)
  {
    goto LABEL_114;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_114;
  }

  v4 = sub_1000681E4(a1, *a2);
  v5 = v4;
  v6 = sub_100065198(v4);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_114;
  }

  v55 = sub_1000945E0(v6, *(a1 + 8));
  v7 = sub_1000D6C34(v55, 14);
  v8 = *(a2 + 18);
  if (v8 >= 4)
  {
    goto LABEL_115;
  }

  v9 = *(a2 + 22);
  if (v9 > 0xFF)
  {
    goto LABEL_115;
  }

  v10 = *(a2 + 113);
  if (v5)
  {
    v11 = 6;
  }

  else
  {
    v11 = 8;
  }

  if (v5)
  {
    v12 = 10;
  }

  else
  {
    v12 = 12;
  }

  if (!*(a2 + 113))
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        v22 = 1986;
        goto LABEL_84;
      }

      if (*(a2 + 22))
      {
        if (*(a2 + 22) == 128)
        {
          v18 = a2 + 26;
          v19 = (a2 + 109);
          goto LABEL_26;
        }

        v22 = 1928;
LABEL_84:
        sub_1000DDEEC(0, 4, "%s:%d Unsupported type!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v22);
        return;
      }

LABEL_25:
      v19 = (a2 + 34);
      v18 = *(a2 + 26);
LABEL_26:
      v20 = *v19;
      v21 = *v19;
      if (!*v19)
      {
        return;
      }

LABEL_36:
      v23 = v21 + v12;
      if (!__CFADD__(v21, v12))
      {
        if (v23 <= v7)
        {
          LOWORD(v26) = 0;
        }

        else
        {
          if (v21 >= 0xFFFFFFFC)
          {
            goto LABEL_119;
          }

          v24 = v7 >= v11;
          v25 = v7 - v11;
          if (!v24)
          {
            goto LABEL_118;
          }

          if (!v25)
          {
LABEL_120:
            __break(0x5503u);
            return;
          }

          v26 = (v21 + 4) / v25;
          if (HIWORD(v26))
          {
            goto LABEL_117;
          }

          v23 = v7;
        }

        *(a2 + 113) = 0;
        *(a2 + 115) = v26;
        *(a2 + 137) = v23;
        *(a2 + 117) = v18;
        *(a2 + 125) = 0;
        *(a2 + 129) = v20;
        *(a2 + 133) = v21;
        operator new[]();
      }

LABEL_119:
      __break(0x5500u);
      goto LABEL_120;
    }

    v20 = *(a2 + 22);
    if (v20 > 2)
    {
      if (v20 - 3 < 2)
      {
        v20 = 0;
        v18 = 0;
        v21 = 4;
        goto LABEL_36;
      }

      if (v20 == 5)
      {
        v20 = 0;
        v18 = 0;
        v21 = 6;
        goto LABEL_36;
      }
    }

    else
    {
      if (v20 - 1 < 2)
      {
        goto LABEL_25;
      }

      if (!*(a2 + 22))
      {
        v18 = 0;
        v21 = 16;
        goto LABEL_36;
      }
    }

    v22 = 1977;
    goto LABEL_84;
  }

  if (*(a2 + 133))
  {
    v13 = *(a2 + 115);
    v14 = *(a2 + 137);
    v15 = *(a2 + 117);
    v16 = *(a2 + 125);
    v17 = *(a2 + 129);
    v27 = *(a2 + 141);
    if (v27)
    {
      if (__CFADD__(v27, v14))
      {
        goto LABEL_116;
      }

      v28 = *(a2 + 141);
      if ((v5 & 1) == 0)
      {
        v29 = *(a2 + 8);
        if (HIWORD(v29))
        {
          goto LABEL_117;
        }

        *v27 = bswap32(v29) >> 16;
        if (v27 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_116;
        }

        v28 = (v27 + 2);
      }

      *v28 = v8;
      if (v28 == -1)
      {
        goto LABEL_116;
      }

      *(v28 + 1) = v9;
      if (v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      *(v28 + 2) = __rev16(v10);
      if (v28 + 2 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      *(v28 + 4) = bswap32(v13) >> 16;
      if (v28 + 4 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      v30 = (v28 + 6);
      v31 = v17 - v16;
      if (v17 < v16)
      {
LABEL_118:
        __break(0x5515u);
        goto LABEL_119;
      }

      v32 = &v27[v14] - v30;
      if (v8 != 2)
      {
        if (v8 == 1)
        {
LABEL_100:
          if (!v15 || !v31)
          {
LABEL_109:
            if (*(a2 + 12) <= 0xFFu)
            {
              if (!((v30 - v27) >> 16))
              {
                v52 = *(a2 + 8);
                v53 = *(a2 + 12);
                sub_1000B748C();
              }

              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (v32 >= v31)
          {
            v50 = v31;
          }

          else
          {
            v50 = v32;
          }

          if (__CFADD__(v15, v16))
          {
            goto LABEL_116;
          }

          v51 = v16;
          memcpy(v30, (v15 + v16), v50);
          if (__CFADD__(v30, v50))
          {
            goto LABEL_116;
          }

          if (!((v50 + v51) >> 32))
          {
            v30 = (v30 + v50);
            *(a2 + 125) = v50 + v51;
            goto LABEL_109;
          }

LABEL_117:
          __break(0x5507u);
          goto LABEL_118;
        }

        v54 = 2302;
        v33 = "%s:%d Should never reach unhandled case!\n";
LABEL_66:
        v34 = v15;
        v35 = v16;
        sub_1000DDEEC(0, 4, v33, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v54);
        v16 = v35;
        v15 = v34;
        goto LABEL_100;
      }

      if (v9 <= 2u)
      {
        if (v9)
        {
          if (v9 == 1 || v9 == 2)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (v10 != v13)
        {
          v44 = v15;
          v45 = v16;
          sub_1000DDEEC(0, 4, "%s:%d sectCur != sectMax\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2129);
          v16 = v45;
          v15 = v44;
        }

        if (*(a2 + 26) >= 0x2000u)
        {
          v46 = v15;
          v47 = v16;
          sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.locPoint.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2134);
          v16 = v47;
          v15 = v46;
        }

        if (*(a2 + 28) > 0x240C83FFu)
        {
          v48 = v15;
          v49 = v16;
          sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.locPoint.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2139);
          v16 = v49;
          v15 = v48;
        }

        if (v32 > 0xF)
        {
          *v30 = bswap32(*(a2 + 26)) >> 16;
          if (v30 >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_119;
          }

          *(v30 + 1) = bswap32(*(a2 + 28));
          if (v30 >= 0xFFFFFFFFFFFFFFFALL)
          {
            goto LABEL_119;
          }

          *(v30 + 3) = bswap32(*(a2 + 32));
          if (v30 >= 0xFFFFFFFFFFFFFFF6)
          {
            goto LABEL_119;
          }

          *(v30 + 5) = bswap32(*(a2 + 36));
          if (v30 >= 0xFFFFFFFFFFFFFFF2)
          {
            goto LABEL_119;
          }

          v30[7] = bswap32(*(a2 + 40)) >> 16;
          if (v30 > 0xFFFFFFFFFFFFFFEFLL)
          {
            goto LABEL_116;
          }

          v30 += 8;
          goto LABEL_100;
        }

LABEL_113:
        __break(0x5518u);
LABEL_114:
        __break(0x5516u);
LABEL_115:
        __break(0x550Au);
        goto LABEL_116;
      }

      if (v9 - 3 < 2)
      {
        if (v32 <= 3)
        {
          v36 = v15;
          v37 = v16;
          sub_1000DDEEC(0, 4, "%s:%d buffLen < sizeof (pLocMsg->msg.locData.data.ephRefresh)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2247);
          v16 = v37;
          v15 = v36;
        }

        *v30 = bswap32(*(a2 + 26));
        if (v30 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_116;
        }

        v30 += 2;
        goto LABEL_100;
      }

      if (v9 != 5)
      {
LABEL_99:
        v54 = 2294;
        v33 = "%s:%d Should never have unhandled case!\n";
        goto LABEL_66;
      }

      if (v10 != v13)
      {
        v38 = v15;
        v39 = v16;
        sub_1000DDEEC(0, 4, "%s:%d sectCur != sectMax\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2263);
        v16 = v39;
        v15 = v38;
      }

      if (*(a2 + 26) >= 0x2000u)
      {
        v40 = v15;
        v41 = v16;
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.gpsWeekTime.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2268);
        v16 = v41;
        v15 = v40;
      }

      if (*(a2 + 28) > 0x240C83FFu)
      {
        v42 = v15;
        v43 = v16;
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.gpsWeekTime.gpsWeekTimeMs > IAP_LOCATION_MAX_WEEKTIME\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2273);
        v16 = v43;
        v15 = v42;
      }

      if (v32 < 6)
      {
        goto LABEL_113;
      }

      *v30 = bswap32(*(a2 + 26)) >> 16;
      if (v30 < 0xFFFFFFFFFFFFFFFELL)
      {
        *(v30 + 1) = bswap32(*(a2 + 28));
        if (v30 <= 0xFFFFFFFFFFFFFFF9)
        {
          v30 += 3;
          goto LABEL_100;
        }

LABEL_116:
        __break(0x5513u);
        goto LABEL_117;
      }

      goto LABEL_119;
    }
  }
}

uint64_t sub_1000904EC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_46;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_46;
  }

  if (!*(result + 8))
  {
    return 89;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
LABEL_46:
    __break(0x5516u);
    goto LABEL_47;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
    return 89;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_46;
  }

  if (sub_10005ACA0(result))
  {
    return 89;
  }

  result = sub_10008F03C(*(v2 + 8));
  if (!result)
  {
    return 22;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_46;
  }

  v4 = *(a2 + 126);
  if (v4 >= 0x100)
  {
LABEL_47:
    __break(0x5507u);
    goto LABEL_48;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 128);
  if (sub_1000681E4(v2, *(v2 + 8)))
  {
    v7 = *(a2 + 68);
  }

  else
  {
    result = 22;
    if (!v5)
    {
      return result;
    }

    v8 = v6 >= 2;
    v6 -= 2;
    if (!v8)
    {
      return result;
    }

    v9 = *v5;
    if (v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_48;
    }

    ++v5;
    v7 = __rev16(v9);
  }

  result = 22;
  if (!v5 || !v6)
  {
    return result;
  }

  if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  v11 = 0;
  if (v4 <= 3u)
  {
    if (v4)
    {
      if (v4 != 2)
      {
        return result;
      }

      v10 = 1;
      goto LABEL_41;
    }

    if (v6 < 2)
    {
      return result;
    }

    if (v5 != -1)
    {
      v10 = *(v5 + 1);
      goto LABEL_41;
    }

LABEL_48:
    __break(0x5513u);
    return result;
  }

  switch(v4)
  {
    case 4u:
      v10 = 3;
      break;
    case 7u:
      v10 = 6;
      break;
    case 9u:
      v12 = v4;
      goto LABEL_42;
    default:
      return result;
  }

LABEL_41:
  v12 = v10;
LABEL_42:
  result = sub_10006733C(v2, v7, &v12, &v11, 0xFFFFu);
  if (v4 == 9 || !result)
  {
    return sub_1000906AC(v2, a2, v11);
  }

  return result;
}

uint64_t sub_1000906AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_130;
  }

  v3 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_130;
  }

  v4 = a3;
  v7 = *(a2 + 126);
  v9 = *(a2 + 24);
  v10 = *(a2 + 128);
  result = sub_1000681E4(result, *(result + 8));
  LOBYTE(v6) = result;
  if (result)
  {
    LODWORD(v5) = *(a2 + 68);
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
  LODWORD(v5) = -1;
  if (!v9 || v10 < 2)
  {
LABEL_7:
    if (!v9)
    {
      return 22;
    }

    goto LABEL_13;
  }

  v12 = *v9;
  if (v9 >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_207;
  }

  ++v9;
  LODWORD(v5) = __rev16(v12);
  v11 = v10 - 2;
LABEL_13:
  v13 = *v9;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v14 = *(v3 + 8);
  v59 = 0xAAAAAAAAAAAAAAAALL;
  v60 = v14;
  v61 = v5;
  v62 = v7;
  if (v7 <= 3)
  {
    if (!v7)
    {
      v29 = *v9;
      if (v29 == 19)
      {
        v5 = 22;
        if (!v4 || v11 < 4)
        {
          goto LABEL_104;
        }

        if (v9 == -1)
        {
          goto LABEL_207;
        }

        if (v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_209;
        }

        v30 = v9[1];
        if ((v4 & 7) != 0)
        {
          goto LABEL_130;
        }

        v31 = *(v4 + 12);
        if (v31 > 0xFF)
        {
          goto LABEL_208;
        }

        if (v31 != *(v9 + 1))
        {
          goto LABEL_105;
        }

        v32 = __rev16(v30);
        if (v32 != *(v4 + 113))
        {
          goto LABEL_105;
        }

        if (v30 == 0xFFFF)
        {
          goto LABEL_210;
        }

        *(v4 + 113) = v32 + 1;
        if (*(v4 + 115) < (v32 + 1))
        {
          goto LABEL_105;
        }

        sub_10008FCC0(v3, v4);
        v5 = v33;
        if (!v33)
        {
          v4 = 0;
        }
      }

      else
      {
        if (v11 < 2)
        {
          goto LABEL_83;
        }

        v37 = &v60;
        if (v4)
        {
          v38 = v4;
        }

        else
        {
          v38 = &v60;
        }

        if ((v38 & 7) != 0)
        {
          goto LABEL_130;
        }

        if (v4)
        {
          v37 = v4;
        }

        *(v37 + 16) = v29;
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        v5 = 0;
        v39 = &v60;
        if (v4)
        {
          v39 = v4;
        }

        *(v39 + 17) = *(v9 + 1);
        v4 = v38;
      }

LABEL_98:
      if (!v5)
      {
        result = *(v3 + 8);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_130;
        }

        if (!v4)
        {
          v4 = &v60;
        }

        sub_10005BCC8(result, 0xE, 0, v4, 152);
        v5 = 0;
        goto LABEL_105;
      }

LABEL_104:
      if (!v4)
      {
LABEL_108:
        sub_1000B9034(a2);
        return v5;
      }

LABEL_105:
      result = sub_10009159C(v3, v4);
      if (v4 != &v60)
      {
        if ((v4 & 7) == 0)
        {
          operator delete();
        }

        goto LABEL_130;
      }

      goto LABEL_108;
    }

    if (v7 != 2)
    {
LABEL_82:
      sub_1000DDEEC(0, 4, "%s:%d Unsupported cmdID!\n");
      goto LABEL_83;
    }

    if (v13 > 3)
    {
      goto LABEL_208;
    }

    DWORD1(v63) = v13;
    if (v13 != 2 && v13 != 1)
    {
      if (v13)
      {
        sub_1000DDEEC(0, 4, "%s:%d Invalid Location type!\n");
        goto LABEL_83;
      }

      if (v11 >= 0x13)
      {
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        BYTE8(v63) = *(v9 + 1);
        if (v9 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_207;
        }

        BYTE9(v63) = *(v9 + 2);
        if (v9 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_207;
        }

        v59 = *(v9 + 3);
        *&v64 = bswap64(v59);
        if (v9 > 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_207;
        }

        v5 = 0;
        v59 = *(v9 + 11);
        *(&v64 + 1) = bswap64(v59);
        goto LABEL_67;
      }

LABEL_83:
      v5 = 22;
      goto LABEL_104;
    }

LABEL_64:
    if (v11 >= 9)
    {
      if (v9 == -1)
      {
        goto LABEL_207;
      }

      v5 = 0;
      v59 = *(v9 + 1);
      *(&v63 + 1) = bswap64(v59);
LABEL_67:
      v4 = &v60;
      goto LABEL_98;
    }

    goto LABEL_83;
  }

  if (v7 == 4)
  {
    if (v13 > 3)
    {
      goto LABEL_208;
    }

    DWORD1(v63) = v13;
    if (v13 > 2)
    {
      sub_1000DDEEC(0, 4, "%s:%d Unsupported type!\n");
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  if (v7 == 7)
  {
    goto LABEL_24;
  }

  if (v7 != 9)
  {
    goto LABEL_82;
  }

  if (v11 < 2)
  {
    goto LABEL_56;
  }

  result = *(v3 + 1200);
  if (!result)
  {
LABEL_24:
    v16 = v11 - 6;
    if (v11 >= 6)
    {
      if (v13 <= 3)
      {
        *(&v63 + 2) = v13;
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        if (v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_209;
        }

        v17 = *(v9 + 1);
        v18 = v9[1];
        if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_209;
        }

        v19 = v9[2];
        if (v9 > 0xFFFFFFFFFFFFFFF9)
        {
          goto LABEL_207;
        }

        v20 = __rev16(v18);
        v55 = __rev16(v19);
        if (v20 > v55)
        {
          goto LABEL_57;
        }

        v21 = v9 + 3;
        if (!v9[1])
        {
          if (v16 < 4)
          {
            goto LABEL_131;
          }

          if (v21 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_207;
          }

          if (v4)
          {
            result = sub_10009159C(v3, v4);
            if ((v4 & 7) == 0)
            {
              operator delete();
            }

            goto LABEL_130;
          }

          v26 = bswap32(*(v9 + 3));
          v16 = v11 - 10;
          if (v9[2])
          {
            operator new();
          }

          if (v26 != v16)
          {
            v20 = 0;
            v4 = 0;
            goto LABEL_57;
          }

          v4 = &v60;
          v21 = v9 + 5;
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v60 = *(v3 + 8);
          v61 = v5;
          v62 = v7;
          *(&v63 + 2) = v13;
          *(&v63 + 6) = v17;
          *(&v69 + 1) = v20;
          v25 = v55;
          *(&v69 + 3) = v55;
          *(&v70 + 5) = v26;
          goto LABEL_143;
        }

        if (!v4)
        {
          goto LABEL_57;
        }

        if ((v4 & 7) != 0)
        {
          goto LABEL_130;
        }

        v22 = *(v4 + 12);
        if (v22 <= 0xFF)
        {
          if (v22 != v7 || v5 != *(v4 + 8))
          {
            goto LABEL_57;
          }

          v23 = *(v4 + 18);
          if (v23 <= 3)
          {
            if (v23 != v13)
            {
              goto LABEL_57;
            }

            v24 = *(v4 + 22);
            if (v24 <= 0xFF)
            {
              if (v24 != v17)
              {
                goto LABEL_57;
              }

              if (v20 != *(v4 + 113))
              {
                goto LABEL_57;
              }

              v25 = v55;
              if (v55 != *(v4 + 115))
              {
                goto LABEL_57;
              }

              v26 = *(v4 + 133);
LABEL_143:
              if (v13 != 2)
              {
                if (v13 != 1)
                {
                  v54 = 1691;
                  v42 = "%s:%d Unsupported location type!\n";
LABEL_188:
                  v27 = 4;
                  sub_1000DDEEC(0, 4, v42, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v54);
                  goto LABEL_58;
                }

                if (v17 != 128)
                {
                  if (!v17)
                  {
                    if (!v18 && v26 - 1 < 0x10000)
                    {
                      operator new[]();
                    }

                    if ((v4 & 7) != 0)
                    {
                      goto LABEL_130;
                    }

LABEL_196:
                    v43 = *(v4 + 26);
                    goto LABEL_197;
                  }

                  v45 = 1539;
                  goto LABEL_187;
                }

                v44 = (v4 & 7) == 0;
                if (!v18 && v26 - 1 <= 0x52)
                {
                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  *(v4 + 109) = v26;
                  *(v4 + 129) = v26;
                  v44 = 1;
                }

                if (!v44)
                {
                  goto LABEL_130;
                }

                v43 = v4 + 26;
                goto LABEL_197;
              }

              if (v17 > 2)
              {
                if ((v17 - 3) >= 2)
                {
                  if (v17 != 5)
                  {
                    v45 = 1682;
LABEL_187:
                    v54 = v45;
                    v42 = "%s:%d Unsupported data!\n";
                    goto LABEL_188;
                  }

                  if (v7 != 9)
                  {
                    goto LABEL_57;
                  }

                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  v43 = 0;
                  *(v4 + 26) = 0;
                  *(v4 + 28) = 0;
                }

                else
                {
                  v27 = 4;
                  if (v25 | v20 || v16 < 4 || v26 < 4)
                  {
                    goto LABEL_58;
                  }

                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  v43 = 0;
                  *(v4 + 26) = bswap32(*v21);
                }

LABEL_197:
                v46 = *(v4 + 125);
                v47 = *(v4 + 129);
                v48 = v47 >= v46;
                v49 = v47 - v46;
                if (!v48)
                {
                  v49 = 0;
                }

                if (!v43 || v16 > v49)
                {
                  goto LABEL_204;
                }

                if (!__CFADD__(v43, v46))
                {
                  v50 = v19;
                  v51 = v18;
                  v52 = v16;
                  result = memcpy((v43 + v46), v21, v16);
                  v53 = *(v4 + 125);
                  LODWORD(v46) = v53 + v52;
                  if (!__CFADD__(v53, v52))
                  {
                    *(v4 + 125) = v46;
                    v18 = v51;
                    v19 = v50;
LABEL_204:
                    if (v18 == v19)
                    {
                      v27 = 2 * (v46 != *(v4 + 129));
                    }

                    else
                    {
                      v27 = 19;
                    }

                    goto LABEL_58;
                  }

                  goto LABEL_209;
                }

LABEL_207:
                __break(0x5513u);
              }

              if (v17)
              {
                if (v17 == 1)
                {
                  v41 = v4 & 7;
                  if (v18 || (v26 - 1) >> 21)
                  {
LABEL_195:
                    if (v41)
                    {
                      goto LABEL_130;
                    }

                    goto LABEL_196;
                  }
                }

                else
                {
                  v41 = v4 & 7;
                  if (v18 || (v26 - 1) >> 17)
                  {
                    goto LABEL_195;
                  }
                }

                if (!v41)
                {
                  if (*(v4 + 26))
                  {
                    operator delete[]();
                  }

                  operator new[]();
                }

                goto LABEL_130;
              }

              v27 = 4;
              if (v25 | v20 || v16 < 0x10 || v26 < 0x10)
              {
                goto LABEL_58;
              }

              if ((v4 & 7) != 0)
              {
                goto LABEL_130;
              }

              *(v4 + 26) = __rev16(*v21);
              if (v21 < 0xFFFFFFFFFFFFFFFELL)
              {
                *(v4 + 28) = bswap32(*(v21 + 1));
                if (v21 < 0xFFFFFFFFFFFFFFFALL)
                {
                  *(v4 + 32) = bswap32(*(v21 + 3));
                  if (v21 < 0xFFFFFFFFFFFFFFF6)
                  {
                    *(v4 + 36) = bswap32(*(v21 + 5));
                    if (v21 < 0xFFFFFFFFFFFFFFF2)
                    {
                      v43 = 0;
                      *(v4 + 40) = bswap32(v21[7]) >> 16;
                      goto LABEL_197;
                    }
                  }
                }
              }

LABEL_209:
              __break(0x5500u);
              goto LABEL_210;
            }
          }
        }
      }

LABEL_208:
      __break(0x550Au);
      goto LABEL_209;
    }

LABEL_56:
    v20 = 0;
    goto LABEL_57;
  }

  v58 = 0;
  if (v9 == -1)
  {
    goto LABEL_207;
  }

  if ((result & 7) != 0)
  {
    while (1)
    {
      do
      {
LABEL_130:
        __break(0x5516u);
LABEL_131:
        v20 = 0;
LABEL_57:
        v27 = 4;
LABEL_58:
        result = sub_100065198(result);
      }

      while (!result || (result & 7) != 0);
      result = sub_1000945E0(result, *(v3 + 8));
      v57 = -21846;
      v56 = -1431655766;
      if (v6)
      {
        v28 = 0;
      }

      else
      {
        if (WORD1(v5))
        {
          goto LABEL_210;
        }

        LOWORD(v56) = bswap32(v5) >> 16;
        v28 = 2;
      }

      if (~&v56 < v28)
      {
        goto LABEL_207;
      }

      *(&v56 | v28) = v27;
      v34 = v28 | 1;
      if (~&v56 < v34)
      {
        goto LABEL_207;
      }

      *(&v56 | v34) = v7;
      v6 = v28 + 2;
      if (v27 != 19)
      {
        goto LABEL_97;
      }

      v35 = (&v56 + v6);
      if (__CFADD__(&v56, v6))
      {
        goto LABEL_209;
      }

      if (v35)
      {
        *v35 = __rev16(v20);
        if (v4)
        {
          if ((v4 & 7) == 0)
          {
            break;
          }
        }
      }
    }

    v36 = *(v4 + 113);
    if (v36 != 0xFFFF)
    {
      *(v4 + 113) = v36 + 1;
      if (!sub_1000671A8(v3, v5, 6, v4, 500) && v4 == &v60)
      {
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg == &locMsg\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 1772);
      }

LABEL_97:
      sub_1000B748C();
    }

    goto LABEL_210;
  }

  v15 = *(v9 + 1);
  result = (*(*result + 152))(result, &v58 + 1, &v58);
  if (result)
  {
    if (HIBYTE(v58) > 1u)
    {
      goto LABEL_208;
    }

    if (!HIBYTE(v58))
    {
      if (v13 > 3)
      {
        goto LABEL_208;
      }

      if (v13 != 2 || v15 != 2 && v15 != 5)
      {
        goto LABEL_136;
      }
    }

    goto LABEL_24;
  }

LABEL_136:
  v56 = -1431655766;
  result = *(a2 + 8);
  if (v6)
  {
    v40 = 0;
    goto LABEL_140;
  }

  if (!WORD1(v5))
  {
    LOWORD(v56) = bswap32(v5) >> 16;
    v40 = 2;
LABEL_140:
    *(&v56 | v40) = 2306;
    sub_1000B748C();
  }

LABEL_210:
  __break(0x5507u);
  return result;
}

uint64_t sub_100091290(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = 0;
    if (a2 != 4)
    {
      if (a2 == 8)
      {
        sub_10008ED00(result);
      }

      else
      {
        if (a2 == 32)
        {
          sub_10006770C(result, &v2);
          return v2;
        }

        sub_1000DDEEC(0, 4, "%s:%d CIapLingoLocation::NotifyEvent unknown event class: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 892, a2);
      }
    }

    return 0;
  }

  return result;
}

void sub_10009131C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v25 = 0;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = *(a1 + 8);
  *&v16 = *(a1 + 8);
  *(&v16 + 1) = a2 | 0xA00000000;
  LOBYTE(v17) = 15;
  if (a3 >= 0x100)
  {
    goto LABEL_29;
  }

  BYTE1(v17) = a3;
  if (a3 > 9u)
  {
    goto LABEL_20;
  }

  v11 = 1;
  if (((1 << a3) & 0x16A) != 0)
  {
    HIDWORD(v16) = 0;
    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

  if (a3 != 7)
  {
    if (a3 == 9)
    {
      if (a4)
      {
LABEL_16:
        v12 = sub_100065198(v8);
        if (v12 && (v12 & 7) == 0)
        {
          sub_1000945E0(v12, *(a1 + 8));
          v15 = -1431655766;
          if (sub_1000681E4(a1, *(a1 + 8)))
          {
            v13 = 0;
          }

          else
          {
            if (HIWORD(a2))
            {
              goto LABEL_29;
            }

            LOWORD(v15) = bswap32(a2) >> 16;
            v13 = 2;
          }

          v14 = (&v15 | v13);
          *v14 = 2;
          v14[1] = v6;
          sub_1000B748C();
        }

        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_20:
    sub_1000DDEEC(0, 4, "%s:%d Invalid command!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 1002);
    goto LABEL_9;
  }

  v11 = 0;
  HIDWORD(v16) = 0;
  if (a4)
  {
    goto LABEL_16;
  }

LABEL_22:
  sub_1000DDEEC(0, 4, "%s:%d NULL pLocMsg\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 996);
  if ((v11 & 1) == 0)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_28;
    }

LABEL_7:
    if ((v8 & 7) == 0)
    {
      sub_10005BCC8(v8, 0xE, 0, &v16, 152);
      goto LABEL_9;
    }

LABEL_28:
    __break(0x5516u);
LABEL_29:
    __break(0x5507u);
  }

LABEL_9:
  if (a4)
  {
    sub_10009159C(a1, a4);
    if ((a4 & 7) == 0)
    {
      operator delete();
    }

    goto LABEL_28;
  }

  *a5 = 0;
}

uint64_t sub_10009159C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_22;
  }

  if ((a2 & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  if (*(a2 + 12) > 0xFFu)
  {
    goto LABEL_23;
  }

  if (*(a2 + 12) - 6 > 3)
  {
    return result;
  }

  v2 = *(a2 + 18);
  if (v2 > 3 || (v3 = *(a2 + 22), v3 > 0xFF))
  {
LABEL_23:
    __break(0x550Au);
    return result;
  }

  if (v2 == 2)
  {
    v4 = *(a2 + 22);
    if (v4 == 2 || v4 == 1)
    {
      goto LABEL_15;
    }
  }

  else if (v2 == 1 && !v3)
  {
LABEL_15:
    if (*(a2 + 26))
    {
      operator delete[]();
    }

    *(a2 + 26) = 0;
  }

  result = *(a2 + 141);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100091684(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 14;
    if (result != -1)
    {
      *(result + 1) = 0x300000000000000;
      return 0;
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_1000916B8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  sub_100064F7C(result, a2, 1);
  *v2 = off_1001161B8;
  *(v2 + 1264) = 0x400000004;
  pthread_mutex_init((v2 + 1200), 0);
  *(v2 + 1192) = 0;
  result = *(v2 + 8);
  if (!result || (result & 7) != 0 || (sub_10005B7F8(result, 1u, 0), (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (v4 = sub_10005B7AC(result, 1u, 0), (result = sub_100065198(v4)) == 0) || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 1, 109, a2);
    return v2;
  }

  return result;
}

uint64_t sub_100091788(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000916B8(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_10009179C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_1001161B8, (v2 = sub_100065198(a1)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 1, 0, *(a1 + 8));
    *(a1 + 1192) = 0;
    pthread_mutex_destroy((a1 + 1200));

    sub_10006522C(a1);
  }
}

void sub_100091828(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10009179C(a1);
  }
}

uint64_t sub_10009183C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10009179C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100091884(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!*(result + 8))
  {
    goto LABEL_10;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
LABEL_10:
    v4 = 89;
LABEL_11:
    sub_1000B9034(a2);
    return v4;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_10005ACA0(result);
  if (result)
  {
    goto LABEL_10;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_40;
  }

  v5 = *(a2 + 126);
  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  v8 = *(a2 + 8);
  v12 = *(a2 + 126);
  v11 = 0;
  v14 = 0;
  if (*(v2 + 1192) != v8)
  {
    goto LABEL_38;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

  result = sub_100058FB0(result, *(v2 + 1192));
  if (!result)
  {
    goto LABEL_38;
  }

  if (!v6)
  {
    __break(0x5518u);
    goto LABEL_40;
  }

  LOWORD(v14) = v5;
  v13 = v8;
  if (v5 != 10)
  {
    if (v5 != 8)
    {
      if (v5 == 4 && v7 == 2)
      {
        if (v6 != -1)
        {
          v12 = *(v6 + 1);
          BYTE5(v14) = *v6;
          BYTE4(v14) = v12;
LABEL_34:
          v4 = sub_10006733C(v2, *(a2 + 68), &v12, &v11, 0xFFFFu);
          if (v4)
          {
            goto LABEL_11;
          }

          pthread_mutex_lock((v2 + 1200));
          result = *(v2 + 8);
          if (result && (result & 7) == 0)
          {
            sub_10005BCC8(result, 1, 0, &v13, 16);
            pthread_mutex_unlock((v2 + 1200));
            v4 = 0;
            goto LABEL_11;
          }

          goto LABEL_40;
        }

        goto LABEL_41;
      }

LABEL_38:
      v4 = 2;
      goto LABEL_11;
    }

    if (v7 != 4)
    {
      goto LABEL_38;
    }

    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v9 = sub_1000932FC(result, *(v2 + 1192));
      v12 = 7;
      v10 = bswap32(*v6);
      HIDWORD(v14) = v10;
      if ((v9 - 29) <= 1 && (v10 & 0x10) == 0)
      {
        HIDWORD(v14) = v10 | 0x10;
      }

      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (v7 != 2)
  {
    goto LABEL_38;
  }

  v12 = 9;
  BYTE4(v14) = *v6;
  if (v6 != -1)
  {
    BYTE5(v14) = *(v6 + 1);
    goto LABEL_34;
  }

LABEL_41:
  __break(0x5513u);
  return result;
}

uint64_t sub_100091AA0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (a3 == 6)
  {
    return result;
  }

  v6 = 4;
  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_100018DC0(result);
  v5 = result;
  if (a3 > 0xFF)
  {
LABEL_12:
    __break(0x5507u);
    return result;
  }

  BYTE4(v6) = a3;
  BYTE5(v6) = 15;
  pthread_mutex_lock((v3 + 1200));
  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  sub_10005BCC8(result, 1, 0, &v5, 16);
  return pthread_mutex_unlock((v3 + 1200));
}

void sub_100091B58(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_92;
  }

  v39 = 0;
  if (a2 <= 7)
  {
    if (a2 != 1)
    {
      if (a2 != 4)
      {
        return;
      }

      *(a1 + 1192) = a4;
      if (!a4)
      {
        sub_1000E1D34();
      }

      v7 = sub_100065198(a1);
      if (v7 && (v7 & 7) == 0)
      {
        if (sub_1000933B0(v7, *(a1 + 1192)) == 1)
        {
          v38[4] = 0xAAAAAAAAAAAAAAAALL;
          v38[5] = 0xAAAAAAAAAAAAAAAALL;
          v38[0] = 0x1100000004;
          v38[1] = *(a1 + 1192);
          v38[2] = 0x300000000;
          v8 = *(a1 + 8);
          v38[3] = v8;
          if (!v8 || (v8 & 7) != 0)
          {
            goto LABEL_92;
          }

          sub_10005BCC8(v8, 0, 0, v38, 48);
          *(a1 + 1192) = 0;
        }

        v9 = sub_1000D4754();
        if (v9)
        {
          if ((v9 & 7) == 0)
          {
            (*(*v9 + 88))(v9, *(a1 + 1192));
            v10 = sub_1000D4754();
            if (v10)
            {
              if ((v10 & 7) == 0)
              {
                (*(*v10 + 144))(v10, *(a1 + 1192), 2);
                return;
              }
            }
          }
        }
      }

LABEL_92:
      __break(0x5516u);
      goto LABEL_93;
    }

    if (!*(a1 + 1192))
    {
      return;
    }

    LOBYTE(v38[0]) = 4;
    v18 = sub_100092110(*(a1 + 8));
    v19 = v18;
    v20 = sub_100065198(v18);
    if (!v20)
    {
      goto LABEL_92;
    }

    if ((v20 & 7) != 0)
    {
      goto LABEL_92;
    }

    v21 = sub_100092F68(v20, *(a1 + 1192));
    v22 = v21;
    v23 = sub_100065198(v21);
    if (!v23 || (v23 & 7) != 0)
    {
      goto LABEL_92;
    }

    v24 = v22 & 0xC;
    v25 = sub_1000930CC(v23, *(a1 + 1192));
    v26 = v25;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        LOBYTE(v38[0]) = 0;
        v34 = *(a1 + 1268);
        if (v34 <= 7)
        {
          if (!v34)
          {
            return;
          }

          *(a1 + 1268) = 0;
          if (v24 == 4)
          {
            v30 = 1;
          }

          else
          {
            v30 = v25;
          }

          v28 = 1;
          goto LABEL_81;
        }
      }

      else
      {
        if (a3 != 4)
        {
          return;
        }

        LOBYTE(v38[0]) = 1;
        v29 = *(a1 + 1268);
        if (v29 <= 7)
        {
          if (v29 == 1)
          {
            return;
          }

          v28 = 0;
          *(a1 + 1268) = 1;
          goto LABEL_61;
        }
      }
    }

    else if (a3 == 1)
    {
      LOBYTE(v38[0]) = 2;
      v33 = *(a1 + 1264);
      if (v33 <= 7)
      {
        if (v33 == 2)
        {
          return;
        }

        v28 = 0;
        *(a1 + 1264) = 2;
        if (v24 == 4)
        {
          v30 = 1;
        }

        else
        {
          v30 = v25;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      LOBYTE(v38[0]) = 3;
      v27 = *(a1 + 1264);
      if (v27 <= 7)
      {
        if (v27 == 3)
        {
          return;
        }

        v28 = 0;
        *(a1 + 1264) = 3;
LABEL_61:
        if (v24 == 4)
        {
          v30 = 0;
        }

        else
        {
          v30 = v25;
        }

LABEL_81:
        if (!v19)
        {
          return;
        }

        v35 = sub_100065198(v25);
        if (v35 && (v35 & 7) == 0)
        {
          sub_100092FE4(v35, *(a1 + 1192), 1, v26 | v30);
          if (v28)
          {
            usleep(0x3D090u);
          }

          v36 = *(a1 + 1192);
          if (v36 && (v36 & 7) == 0)
          {
            (*(*v36 + 16))(*(a1 + 1192), 0);
            sub_1000B748C();
          }
        }

        goto LABEL_92;
      }
    }

LABEL_94:
    __break(0x550Au);
    return;
  }

  switch(a2)
  {
    case 8:
      if (*(a1 + 1192) != a4)
      {
        return;
      }

      v11 = sub_1000D4754();
      if (v11 && (v11 & 7) == 0)
      {
        (*(*v11 + 104))(v11, *(a1 + 1192));
        *(a1 + 1192) = 0;
        do
        {
          v37 = -1;
          v38[0] = 0;
        }

        while (!sub_10006733C(a1, -1, &v37, v38, 0xFFFFu));
        v39 = 0;
        return;
      }

      goto LABEL_92;
    case 32:
      sub_10006770C(a1, &v39);
      v39 = 0;
      v12 = *(a1 + 8);
      if (v12 && (v12 & 7) == 0)
      {
        if (!sub_10005B890(v12, 1u))
        {
          return;
        }

        v13 = sub_100067278();
        v14 = *(a1 + 8);
        if (v14)
        {
          if ((v14 & 7) == 0)
          {
            v15 = sub_10005B844(v14, 1u);
            if (v13 < v15)
            {
LABEL_93:
              __break(0x5515u);
              goto LABEL_94;
            }

            if (v13 - v15 >= 0x1F4)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                if ((v16 & 7) == 0)
                {
                  sub_10005B7F8(v16, 1u, 0);
                  v17 = *(a1 + 8);
                  if (v17)
                  {
                    if ((v17 & 7) == 0)
                    {
                      sub_10005B7AC(v17, 1u, 0);
                      return;
                    }
                  }
                }
              }

              goto LABEL_92;
            }

            return;
          }
        }
      }

      goto LABEL_92;
    case 64:
      switch(a3)
      {
        case -1:
          v32 = sub_1000D4754();
          if (v32 && (v32 & 7) == 0)
          {
            (*(*v32 + 136))(v32, *(a1 + 1192));
            return;
          }

          goto LABEL_92;
        case 6:
          v31 = sub_1000D4754();
          if (v31 && (v31 & 7) == 0)
          {
            (*(*v31 + 128))(v31, *(a1 + 1192));
            return;
          }

          goto LABEL_92;
        case 4:
          v6 = sub_1000D4754();
          if (v6 && (v6 & 7) == 0)
          {
            (*(*v6 + 120))(v6, *(a1 + 1192));
            return;
          }

          goto LABEL_92;
      }

      break;
  }
}

uint64_t sub_100092110(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) == 0)
  {
    result = sub_10005BD04(result);
    if (result)
    {
      v1 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 1u);
        result = sub_1000653EC(1, v1);
        v2 = result;
        if (!result)
        {
          goto LABEL_12;
        }

        if ((result & 7) == 0)
        {
          if (!*(result + 1192))
          {
            goto LABEL_12;
          }

          result = sub_100065198(result);
          if (result)
          {
            if ((result & 7) == 0)
            {
              if (sub_100058FB0(result, *(v2 + 1192)))
              {
                v3 = 1;
LABEL_13:
                sub_10005BB6C(v1, 1u);
                return v3;
              }

LABEL_12:
              sub_1000DDEEC(0, 4, "%s:%d LingoMicrophone:DeviceHandle devValid=%d handle=%hhx pMicLingo=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoMicrophone.cpp", 1084, 0, v1, v2);
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100092204(uint64_t result, char a2, uint64_t a3, int a4)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v4 = a3;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = *(result + 126);
  v7 = *(result + 68);
  result = sub_1000B6DB4(a3, result, a2, 1u);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (!v4)
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_100092814(result, 1);
    v4 = result;
    if (!result)
    {
      return 0;
    }
  }

  if ((v4 & 7) == 0)
  {
    sub_10005BB24(v4, 1u);
    result = sub_1000653EC(1, v4);
    if (!result)
    {
      v8 = 0;
LABEL_14:
      sub_10005BB6C(v4, 1u);
      return v8;
    }

    if ((result & 7) == 0)
    {
      v8 = sub_1000671A8(result, v7, v6, 0, a4);
      if (!v8)
      {
        sub_10005B7F8(v4, 1u, 1);
        v9 = sub_100067278();
        sub_10005B7AC(v4, 1u, v9);
      }

      goto LABEL_14;
    }
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_10009231C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = sub_100092110(a2);
  if (!result)
  {
    return 19;
  }

  if (!v2)
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_100092814(result, 1);
    v2 = result;
    if (!result)
    {
      return 19;
    }
  }

  if ((v2 & 7) == 0)
  {
    result = sub_10005BD04(v2);
    if (result)
    {
      v4 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 1u);
        result = sub_1000653EC(1, v4);
        if (result)
        {
          v5 = result;
          if ((result & 7) == 0)
          {
            result = pthread_mutex_lock((result + 1200));
            v6 = *(v5 + 1192);
            if (v6)
            {
              if ((v6 & 7) == 0)
              {
                (*(*v6 + 16))(*(v5 + 1192), 0);
                sub_1000B748C();
              }
            }
          }

          goto LABEL_17;
        }

        sub_1000DDEEC(0, 4, "%s:%d No Object Pointer, cannot GetDevCapabilities\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoMicrophone.cpp", 720);
        sub_10005BB6C(v4, 1u);
        return 19;
      }
    }
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000924A8(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v2 = result;
  result = sub_100046A8C();
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  v4 = (*(*result + 184))(result);
  result = (*(*v3 + 200))(v3);
  *v2 = 1;
  if (v2 == -1)
  {
LABEL_13:
    __break(0x5500u);
    return result;
  }

  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0x900000000000000;
  }

  if (result)
  {
    v5 |= 0x1000000000000000uLL;
  }

  *(v2 + 1) = v5;
  return 0;
}

uint64_t sub_100092584(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116268;
    *(result + 8) = result + 8;
    *(result + 16) = result + 8;
    *(result + 24) = 0;
    *(result + 168) = 0;
    pthread_mutex_init((result + 32), 0);
    pthread_mutex_init((v1 + 96), 0);
    sub_1000187F0((v1 + 8));
    *(v1 + 160) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_100092604(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116268;
    pthread_mutex_destroy((result + 32));
    pthread_mutex_destroy((v1 + 96));
    sub_1000187F0((v1 + 8));
    return v1;
  }

  return result;
}

uint64_t sub_100092670(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100092604(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100092684(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100092604(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000926CC(uint64_t result, signed int a2)
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

  if ((a2 + 32) >= 0x40)
  {
LABEL_19:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  result = pthread_mutex_lock((result + 32));
  if (*(v2 + 24))
  {
    v4 = (v2 + 16);
    while (1)
    {
      v5 = *v4;
      if (*v4 == v2 + 8)
      {
        break;
      }

      if (v5)
      {
        v6 = (*v4 & 7) == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      result = sub_100092790(v2, *(v5 + 16), a2);
      v4 = (v5 + 8);
      if (result)
      {
        v7 = result;
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_16:
  pthread_mutex_unlock((v2 + 32));
  return v7;
}

uint64_t sub_100092790(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_10005A9E0(a2);
  if (!a2 || !result)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  if (a3 + 32 >= 0x40)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  return sub_10005B694(a2, a3);
}

uint64_t sub_100092814(uint64_t result, signed int a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_18:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  result = pthread_mutex_lock((result + 32));
  if (*(v2 + 24))
  {
    v4 = *(v2 + 16);
    if (v4 != v2 + 8)
    {
      v5 = 0;
      while (v4 && (v4 & 7) == 0)
      {
        result = sub_100092790(v2, *(v4 + 16), a2);
        if (result)
        {
          v5 = *(v4 + 16);
          goto LABEL_15;
        }

        v4 = *(v4 + 8);
        if (v4 == v2 + 8)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }
  }

  v5 = 0;
LABEL_15:
  pthread_mutex_unlock((v2 + 32));
  return v5;
}

uint64_t sub_1000928E0(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
LABEL_27:
    __break(0x5514u);
    goto LABEL_28;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_28:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
    goto LABEL_26;
  }

  v3 = sub_10000C0EC();
  result = pthread_mutex_lock(&stru_10012B758);
  v4 = *(v3 + 8);
  if (v4 != v3)
  {
    while (v4 && (v4 & 7) == 0)
    {
      v5 = *(v4 + 16);
      if (!v5 || (*(v4 + 16) & 7) != 0)
      {
        break;
      }

      v7 = *(v5 + 32);
      if (v7)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_26;
        }

        if (a2 >= 0x20)
        {
          goto LABEL_27;
        }

        if ((*(v7 + 8) & (1 << a2)) != 0)
        {
          v8 = *(v4 + 16);
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v4 = *(v4 + 8);
      if (v4 == v3 || v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  v8 = 0;
LABEL_24:
  pthread_mutex_unlock(&stru_10012B758);
  return v8;
}

uint64_t sub_1000929D4(uint64_t result, signed int a2, int a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_17:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15 || a2 != 7 && a2 != 9 && !a4)
  {
    __break(0x5518u);
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  result = sub_10005A9E0(a4);
  if (!a4 || !result)
  {
    return result;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_16;
  }

  return sub_10005B4BC(a4, a2, a3);
}

uint64_t sub_100092A88(uint64_t result, signed int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  result = sub_10005A9E0(a3);
  if (!a3 || !result)
  {
    return 0;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_13;
  }

  return sub_10005B608(a3, a2);
}

uint64_t sub_100092B18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 7) == 0)
  {
    *(v3 + 8) = a3;
    return a3;
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092B58(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 8);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092B94(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_100092BC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 7) == 0)
  {
    *(v3 + 12) = a3;
    return a3;
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092C08(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 12);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092C44(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    if ((v3 & 7) == 0)
    {
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 28) = 0xFFFFFFFFLL;
      *(v3 + 36) = 0;
      *(v3 + 48) = 0;
      *(v3 + 24) = -1;
      goto LABEL_8;
    }

LABEL_12:
    __break(0x5516u);
    return result;
  }

LABEL_8:

  return sub_100092CAC(result, a2);
}

uint64_t sub_100092CAC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_47;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_47;
  }

  v14 = -1431655766;
  v15 = 4;
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_47;
  }

  sub_1000C7FA0(result, &v14, &v15);
  v4 = sub_10000C0EC();
  result = pthread_mutex_lock(&stru_10012B758);
  if ((v15 + 8) >= 0x10)
  {
    goto LABEL_43;
  }

  v2 = v15 - 3;
  v6 = (a2 & 7) == 0 && a2 != 0;
  v7 = *(v4 + 8);
  if (v2 < 0xFFFFFFFE)
  {
    while (v7 != v4)
    {
      if (!v6)
      {
        goto LABEL_47;
      }

      if (!v7)
      {
        goto LABEL_47;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_47;
      }

      result = (*(*a2 + 96))(a2, *(v7 + 16));
      if (result)
      {
        v8 = *(v7 + 16);
        if (!v8 || (v8 & 7) != 0 || (*(v8 + 32) & 7) != 0)
        {
          goto LABEL_47;
        }
      }

      v7 = *(v7 + 8);
    }

    while (1)
    {
      pthread_mutex_unlock(&stru_10012B758);
      v13 = v14;
      if ((v14 + 8) < 0x10)
      {
        break;
      }

LABEL_43:
      __break(0x550Au);
    }

    return sub_10009346C(a2, v2 < 0xFFFFFFFE, (v13 - 1) < 2);
  }

  while (v7 != v4)
  {
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_47;
    }

    v9 = *(v7 + 16);
    if (!v9 || (*(v7 + 16) & 7) != 0)
    {
      goto LABEL_47;
    }

    if (*(v9 + 32))
    {
      if (!v6)
      {
        goto LABEL_47;
      }

      result = (*(*a2 + 96))(a2);
      if (result)
      {
        v11 = *(v7 + 16);
        if (v11)
        {
          if ((v11 & 7) != 0)
          {
            goto LABEL_47;
          }

          v12 = *(v11 + 32);
          if (v12)
          {
            if ((v12 & 7) != 0)
            {
              goto LABEL_47;
            }

            *(v12 + 32) = 0;
          }
        }
      }
    }

    v7 = *(v7 + 8);
  }

  pthread_mutex_unlock(&stru_10012B758);
  result = sub_100048620();
  if (!result || (result & 7) != 0)
  {
LABEL_47:
    __break(0x5516u);
    return result;
  }

  result = (*(*result + 200))(result, a2);
  if (result)
  {
    return result;
  }

  v13 = v14;
  if ((v14 + 8) > 0xF)
  {
    goto LABEL_43;
  }

  return sub_10009346C(a2, v2 < 0xFFFFFFFE, (v13 - 1) < 2);
}

void sub_100092EE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (a3 >= 0x100)
    {
      __break(0x5518u);
    }

    else
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      if ((a2 & 7) == 0)
      {
        v3 = *(a2 + 32);
        if (v3)
        {
          if ((v3 & 7) == 0)
          {
            *(v3 + 20) = a3;
            return;
          }

          goto LABEL_11;
        }

LABEL_9:
        sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 675);
        return;
      }
    }
  }

LABEL_11:
  __break(0x5516u);
}

uint64_t sub_100092F68(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 20);
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 706);
      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

void sub_100092FE4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
LABEL_12:
    sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 753);
    return;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_23;
  }

  v6 = *(v5 + 16);
  *(v5 + 16) = v6 & 0xFFFFFFFE;
  v7 = a3 + 32;
  if (a4)
  {
    if (v7 <= 0x3F)
    {
      v8 = 1 << a3;
      if (a3 < 0)
      {
        v8 = 0;
      }

      v9 = *(v5 + 32) | v8;
      goto LABEL_18;
    }

LABEL_24:
    __break(0x550Au);
    return;
  }

  if (v7 > 0x3F)
  {
    goto LABEL_24;
  }

  if (a3 >= 0)
  {
    v10 = ~(1 << a3);
  }

  else
  {
    v10 = -1;
  }

  v9 = *(v5 + 32) & v10;
LABEL_18:
  *(v5 + 32) = v9;
  if (v9)
  {
    *(v5 + 16) = v6 | 1;
  }

  sub_100092CAC(a1, a2);
}

uint64_t sub_1000930CC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return v2 & 1;
      }

      if ((v2 & 7) == 0)
      {
        LODWORD(v2) = *(v2 + 16);
        return v2 & 1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093114(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  if (a3)
  {
    if ((v3 & 7) == 0)
    {
      v4 = *(v3 + 16);
      if ((v4 & 2) != 0)
      {
        return result;
      }

      *(v3 + 16) = v4 | 2;
      v5 = *(result + 168);
      if (v5 != 255)
      {
        v6 = v5 + 1;
LABEL_15:
        *(result + 168) = v6;
        return result;
      }

LABEL_19:
      __break(0x5507u);
      return result;
    }

LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_18;
  }

  v7 = *(v3 + 16);
  if ((v7 & 2) != 0)
  {
    *(v3 + 16) = v7 & 0xFFFFFFFD;
    if (*(result + 168))
    {
      v6 = *(result + 168) - 1;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1000931A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = sub_10000C0EC();
      result = pthread_mutex_lock(&stru_10012B758);
      v3 = 0;
      if (!*(v1 + 168) || (v4 = *(v2 + 8), v4 == v2))
      {
LABEL_18:
        pthread_mutex_unlock(&stru_10012B758);
        return v3;
      }

      v3 = 0;
      while (v4 && (v4 & 7) == 0)
      {
        v5 = *(v4 + 16);
        if (!v5 || (*(v4 + 16) & 7) != 0)
        {
          break;
        }

        v7 = *(v5 + 32);
        if (v7)
        {
          if ((v7 & 7) != 0)
          {
            break;
          }

          if ((*(v7 + 16) & 2) != 0)
          {
            v3 = *(v4 + 16);
          }
        }

        v4 = *(v4 + 8);
        if (v4 == v2)
        {
          goto LABEL_18;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100093264(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
LABEL_12:
    sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 926);
    return;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_14;
  }

  *(v4 + 36) = a3;
  v5 = *(v4 + 40);
  if (!v5)
  {
    return;
  }

  if ((v5 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  sub_10005BE74(v5, a3);
}

uint64_t sub_1000932FC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 36);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

void sub_100093338(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          *(v3 + 24) = *(v3 + 28);
          *(v3 + 28) = a3;
          return;
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 984);
      return;
    }
  }

LABEL_9:
  __break(0x5516u);
}

uint64_t sub_1000933B0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0xFFFFFFFFLL;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 28);
        }

        goto LABEL_9;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000933EC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v2 & 7) == 0)
      {
        return *(v2 + 24);
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093438(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_10009346C(uint64_t result, int a2, char a3)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  if ((*(*result + 208))(result) == 3)
  {
    if (a3)
    {
      return 0;
    }

    if (a2)
    {
      v6 = (*(v3 + 196) & 1) == 0;
    }

    else
    {
      v6 = 0;
    }

    sub_1000B9EA8(v3, a2);
    return v6;
  }

  if (a2)
  {
    result = sub_100048620();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_27;
    }

    v6 = (*(*result + 152))(result, v3) != 2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_100048620();
  if (result)
  {
    if ((result & 7) == 0)
    {
      v7 = (*(*result + 152))(result, v3);
      result = sub_100048620();
      if (result)
      {
        if ((result & 7) == 0)
        {
          if (v7 == 3)
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }

          if (a2)
          {
            v9 = v8;
          }

          else
          {
            v9 = 1;
          }

          (*(*result + 144))(result, v3, v9);
          return v6;
        }
      }
    }
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000935E8(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      operator new();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093650(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  result = *(a2 + 32);
  *(a2 + 32) = 0;
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return result;
  }

  v3 = *(*result + 8);

  return v3();
}

uint64_t sub_1000936C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    sub_1000E1D34();
  }

  if ((v3 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    *(v3 + 64) = a3;
  }

  return result;
}

void sub_100093710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  if ((a2 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    return;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_20:
    __break(0x5518u);
LABEL_21:
    sub_1000E1D34();
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 40);
  if (v7)
  {
    if (v7 != a3)
    {
      sub_1000E1D34();
    }

    return;
  }

  if (!sub_10005A9E0(a3))
  {
    goto LABEL_20;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_23;
  }

  v8 = sub_100018DC0(a3);
  if (v8)
  {
    sub_1000937F8(a1, v8, a3);
  }

  v9 = *(a2 + 32);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_23;
  }

  *(v9 + 40) = a3;

  sub_10005AD74(a3, a2);
}

void sub_1000937F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_35;
  }

  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  v6 = sub_10005A9E0(a3);
  v7 = v6;
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_35;
  }

  v9 = sub_100018DC0(a3);
  if (v9)
  {
    v10 = v9;
    if (v9 != a2)
    {
      if ((v9 & 7) != 0)
      {
        goto LABEL_35;
      }

      v11 = (*(*v9 + 200))(v9);
      if (!a2)
      {
        v12 = "Unknown";
LABEL_18:
        sub_1000DDEEC(0, 4, "%s:%d Port do not match! handle=%hhx port:%hhx(%s) != %hhx(%s)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1358, v8, v10, v11, a2, v12);
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
    sub_1000DDEEC(0, 4, "%s:%d Handle not associated with a portObj! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1352, v8);
    v10 = 0;
    if (a2)
    {
      v11 = "Unknown";
LABEL_16:
      if ((a2 & 7) == 0)
      {
        v12 = (*(*a2 + 200))(a2);
        goto LABEL_18;
      }

LABEL_35:
      __break(0x5516u);
      return;
    }
  }

  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_35;
    }

    v13 = v10[4];
    if (v13)
    {
      if ((v13 & 7) != 0)
      {
        goto LABEL_35;
      }

      *(v13 + 5) = 0;
      v14 = v7 ^ 1;
      if ((v8 & 7) != 0)
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_35;
      }

      sub_10005AEDC(v8);
      if ((*(*v10 + 34))(v10))
      {
        v15 = **v10;
        if (!v16 || (v16 & 7) != 0)
        {
          goto LABEL_35;
        }

        (*(*v16 + 400))(v16, 0);
      }

      sub_100092C44(a1, a2);
    }
  }
}

uint64_t sub_100093A7C(uint64_t result, signed int a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  result = sub_10005A9E0(a4);
  if ((a2 + 32) > 0x3F)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  v7 = result ^ 1;
  if (a2 > 14)
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_17:
    __break(0x5518u);
    goto LABEL_18;
  }

  if ((a4 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  if (sub_10005B694(a4, a2) && sub_10005B694(a4, a2) != a3)
  {
    sub_10005A888(a4, a2);
  }

  if (sub_10005B694(a4, a2) && sub_10005B694(a4, a2) != a3)
  {
LABEL_18:
    sub_1000E1D34();
  }

  return sub_10005B370(a4, a2, a3);
}

uint64_t sub_100093B68(uint64_t result, signed int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15 || (result = sub_10005A9E0(a3), !a3) || !result)
  {
    __break(0x5518u);
    goto LABEL_14;
  }

  if ((a3 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  result = sub_10005B694(a3, a2);
  if (result)
  {
    sub_10005A888(a3, a2);

    return sub_10005B2D0(a3, a2, 0);
  }

  return result;
}

void sub_100093C14(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3)
  {

    sub_100093CB8(a1, a2);
  }

  else
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100093CAC;
    v5[3] = &unk_100116290;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_100093CB8(uint64_t a1, uint64_t a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    v4 = sub_10005A9E0(a2);
    if (!a2 || !v4)
    {
      sub_1000DDEEC(0, 4, "%s:%d No Handle! Cannot delete registered Objects!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1552);
      return;
    }

    v5 = sub_1000C4254();
    if (v5)
    {
      if ((v5 & 7) == 0)
      {
        sub_1000CA0E0(v5);
        if ((a2 & 7) == 0)
        {
          if (sub_10005BBCC(a2))
          {
            v6 = sub_10005BBCC(a2);
            if (!v6 || (v6 & 7) != 0)
            {
              goto LABEL_26;
            }

            sub_100062B9C(v6);
          }

          if (!sub_10005BC1C(a2))
          {
            goto LABEL_16;
          }

          v7 = sub_10005BC1C(a2);
          if (v7 && (v7 & 7) == 0)
          {
            sub_1000B6F6C(v7);
LABEL_16:
            for (i = 0; i != 15; ++i)
            {
              sub_100093B68(a1, i, a2);
            }

            v9 = sub_100018DC0(a2);
            if (v9)
            {
              sub_1000937F8(a1, v9, a2);
            }

            sub_10005B064(a2);
            v10 = sub_10005B2B8(a2);
            if (!v10)
            {
LABEL_24:
              sub_100094014(a1, a2);
              sub_1000940BC(a1, a2);
              sub_10005A9CC(a2);
              operator delete();
            }

            v11 = v10;
            if ((v10 & 7) == 0)
            {
              if (sub_10005B2B8(v10) == a2)
              {
                sub_10005B2A0(v11, 0);
                sub_10005B2A0(a2, 0);
              }

              goto LABEL_24;
            }
          }
        }
      }
    }
  }

LABEL_26:
  __break(0x5516u);
  __break(0x550Au);
}

void sub_100094014(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  v3 = sub_10005A9E0(a2);
  if (!a2 || !v3)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot delete IncomingProcess\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1718);
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_10005BBE4(a2);
  if (!v4)
  {
    return;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  sub_100062E00(v4);
}

void sub_1000940BC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  v3 = sub_10005A9E0(a2);
  if (!a2 || !v3)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot delete OugoingProcess\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1757);
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_10005BC34(a2);
  if (!v4)
  {
    return;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  sub_1000B6F9C(v4);
}

void sub_100094164(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((a1 + 32));
    while (*(a1 + 24))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        v3 = (*(a1 + 16) & 7) == 0;
      }

      else
      {
        v3 = 0;
      }

      if (!v3)
      {
        goto LABEL_14;
      }

      sub_1000941DC(a1, *(v2 + 16));
    }

    pthread_mutex_unlock((a1 + 32));
  }
}

void sub_1000941DC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

  pthread_mutex_lock((a1 + 32));
  if (*(a1 + 24))
  {
    for (i = *(a1 + 16); i != (a1 + 8); i = i[1])
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_32;
      }

      if (i[2] == a2)
      {
        if (*(a1 + 160) == a2)
        {
          *(a1 + 160) = 0;
        }

        if ((a2 & 7) == 0)
        {
          sub_10005AD1C(a2);
          sub_100021528(a1 + 8, i);
          break;
        }

        goto LABEL_32;
      }
    }
  }

  pthread_mutex_unlock((a1 + 32));
  if ((a2 & 7) != 0)
  {
    goto LABEL_32;
  }

  v5 = sub_10005BBCC(a2);
  v6 = sub_10005BC1C(a2);
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_32;
    }

    sub_1000B6F6C(v6);
  }

  if (v5)
  {
    if ((v5 & 7) == 0)
    {
      sub_100062B9C(v5);

      sub_100062EF4(v5);
      return;
    }

LABEL_32:
    __break(0x5516u);
    return;
  }

  v7 = sub_100018DC0(a2);
  if (v7)
  {
    if ((v7 & 7) != 0)
    {
      goto LABEL_32;
    }

    v8 = (*(*v7 + 272))(v7);
  }

  else
  {
    v8 = 0;
  }

  sub_100093C14(a1, a2, v8);
}

void sub_10009436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = sub_10005A9E0(a2);
  if (!a2 || !v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot register IncomingProcess, obj=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1616, a3);
    return;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    if (sub_10005BBCC(a2))
    {
      sub_1000E22D8();
    }

    sub_10005BBB4(a2, a3);
  }
}

void sub_100094420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = sub_10005A9E0(a2);
  if (!a2 || !v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot register OugoingProcess, obj=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1680, a3);
    return;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    if (sub_10005BC1C(a2))
    {
      sub_1000E22D8();
    }

    sub_10005BC04(a2, a3);
  }
}

uint64_t sub_1000944D4(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  if ((a3 + 32) >= 0x40)
  {
LABEL_22:
    __break(0x550Au);
    return result;
  }

  if (a3 || a4 != 56)
  {
    if (a3 || a4 != 1 && a4 != 19 || !a2)
    {
      return result;
    }

    if ((a2 & 7) == 0)
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        if ((v4 & 7) == 0)
        {
          v5 = 0;
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      return result;
    }

LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_21;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    if ((v4 & 7) == 0)
    {
      v5 = 1;
LABEL_11:
      *(v4 + 48) = v5;
      return result;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100094564(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  if ((v3 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v3 + 48) = a3;
  return result;
}

uint64_t sub_100094598(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
LABEL_9:
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return v2 & 1;
      }

      if ((v2 & 7) == 0)
      {
        LODWORD(v2) = *(v2 + 48);
        if (v2 >= 2)
        {
          __break(0x550Au);
          goto LABEL_9;
        }

        return v2 & 1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000945E0(uint64_t a1, uint64_t a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    v2 = a2;
    v3 = sub_10005A9E0(a2);
    result = 0;
    if (!v2 || !v3)
    {
      return result;
    }

    if ((v2 & 7) == 0)
    {
      result = sub_100018DC0(v2);
      if (result)
      {
        return result;
      }

      if (!sub_10005BCA0(v2))
      {
        goto LABEL_12;
      }

      result = sub_10005B04C(v2);
      if (!result)
      {
        goto LABEL_12;
      }

      if ((result & 7) == 0)
      {
        return result;
      }
    }
  }

  __break(0x5516u);
LABEL_12:

  return sub_10005AC88(v2);
}

uint64_t sub_10009467C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10005A9E0(a2);
  if (!result)
  {
    return result;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  return sub_10005B2A0(a2, a3);
}

uint64_t sub_1000946EC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = sub_10005A9E0(a2);
  if (!result)
  {
    return 0;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    if (!sub_10005B2B8(a2))
    {
      sub_1000DDEEC(0, 4, "%s:%d No ctaHandle handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2065, a2);
    }

    return sub_10005B2B8(a2);
  }

  return result;
}

uint64_t sub_100094794(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    pthread_mutex_lock((result + 32));
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100094828(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 32));
    v2 = *(v1 + 24);
    pthread_mutex_unlock((v1 + 32));
    return v2;
  }

  return result;
}

void sub_100094870(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_100018DC0(a2);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  v5 = (*(*v4 + 272))(v4);
LABEL_10:

  sub_100093C14(a1, a2, v5);
}

uint64_t sub_100094920(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, _DWORD *a4)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_19;
  }

  result = pthread_mutex_lock((result + 32));
  if (a4)
  {
    if ((a4 & 3) == 0)
    {
      *a4 = *(v4 + 24);
      goto LABEL_7;
    }

LABEL_19:
    __break(0x5516u);
    return result;
  }

LABEL_7:
  if (*(v4 + 24))
  {
    for (i = *(v4 + 16); i != v4 + 8; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_19;
      }

      result = *(i + 16);
      if (result)
      {
        result = a2(result, a3);
      }
    }
  }

  return pthread_mutex_unlock((v4 + 32));
}

uint64_t sub_1000949E0(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          return *(v3 + 40);
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d devPort=NULL, index=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2296, a3);
      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094A60(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_20:
    __break(0x5516u);
LABEL_21:
    __break(0x550Au);
  }

  else
  {
    result = pthread_mutex_lock((result + 32));
    if (*(v2 + 24))
    {
      for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
      {
        if (!i || (i & 7) != 0)
        {
          goto LABEL_20;
        }

        v5 = *(i + 16);
        if (!v5 || (*(i + 16) & 7) != 0)
        {
          goto LABEL_20;
        }

        result = sub_100018DC0(*(i + 16));
        if (result)
        {
          if ((result & 7) != 0)
          {
            goto LABEL_20;
          }

          result = (*(*result + 208))(result);
          if (a2 >= 8)
          {
            goto LABEL_21;
          }

          if (result == a2)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v5 = 0;
LABEL_19:
    pthread_mutex_unlock((v2 + 32));
    return v5;
  }

  return result;
}

uint64_t sub_100094B48(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 32));
    if (*(v2 + 24))
    {
      for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
      {
        if (!i || (i & 7) != 0)
        {
          goto LABEL_15;
        }

        v5 = *(i + 16);
        result = sub_10005A9E0(v5);
        if (result)
        {
          if (!v5 || (v5 & 7) != 0)
          {
            goto LABEL_15;
          }

          result = sub_10005BAC4(v5);
          if (result == a2)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v5 = 0;
LABEL_14:
    pthread_mutex_unlock((v2 + 32));
    return v5;
  }

  return result;
}

uint64_t sub_100094BFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      result = pthread_mutex_lock((result + 32));
      if (*(v2 + 24))
      {
        v4 = *(v2 + 16);
        if (v4 != v2 + 8)
        {
          while (v4 && (v4 & 7) == 0)
          {
            v5 = *(v4 + 16);
            v6 = v5 == a2;
            if (v5 != a2)
            {
              v4 = *(v4 + 8);
              if (v4 != v2 + 8)
              {
                continue;
              }
            }

            goto LABEL_12;
          }

          goto LABEL_15;
        }
      }

      v6 = 0;
LABEL_12:
      pthread_mutex_unlock((v2 + 32));
      return v6;
    }
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094CA0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x550Au);
  }

  else
  {
    v3 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    for (i = *(v3 + 8); ; i = *(i + 8))
    {
      if (i == v3)
      {
        pthread_mutex_unlock(&stru_10012B758);
        return 0;
      }

      if (!i || (i & 7) != 0)
      {
        goto LABEL_18;
      }

      result = *(i + 16);
      if (!result || (*(i + 16) & 7) != 0)
      {
        goto LABEL_18;
      }

      if (*(result + 32))
      {
        result = (*(*result + 208))(result);
        if (a2 >= 8)
        {
          goto LABEL_19;
        }

        if (result == a2)
        {
          break;
        }
      }
    }

    pthread_mutex_unlock(&stru_10012B758);
    return *(i + 16);
  }

  return result;
}

uint64_t sub_100094D84(uint64_t result, uint64_t a2, void *a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005AB58(a2);
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = sub_10005AC88(a2);
  result = sub_10005B04C(a2);
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!v5)
  {
    return 1;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_19;
  }

  v6 = result;
  result = 1;
  if (v6 == a3)
  {
    return result;
  }

  v7 = a3[5];
  if (v5 == v7)
  {
    return result;
  }

  if ((v5 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  v8 = (*(*v5 + 208))(v5);
  v9 = (*(*a3 + 208))(a3);
  result = (v8 == 1) == (v9 != 1);
  if (v8 == 1 && v9 != 1)
  {
    sub_10005AB80(a2, v7);
    return 1;
  }

  return result;
}

uint64_t sub_100094EBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      if ((a2 & 7) == 0)
      {
        if (!sub_10000FE6C(a2))
        {
          return 0;
        }

LABEL_6:
        result = pthread_mutex_lock((v2 + 32));
        if (*(v2 + 24))
        {
          v4 = *(v2 + 16);
          if (v4 != v2 + 8)
          {
            while (v4 && (v4 & 7) == 0)
            {
              v5 = *(v4 + 16);
              if (!v5 || (*(v4 + 16) & 7) != 0)
              {
                break;
              }

              v7 = sub_100018DC0(*(v4 + 16));
              result = sub_10005AB58(v5);
              v8 = 0;
              if (result && !v7)
              {
                result = sub_100094D84(v2, v5, a2);
                if (result)
                {
                  v8 = v5;
                }

                else
                {
                  v8 = 0;
                }
              }

              if (!v8)
              {
                v4 = *(v4 + 8);
                if (v4 != v2 + 8)
                {
                  continue;
                }
              }

              goto LABEL_24;
            }

            goto LABEL_27;
          }
        }

        v8 = 0;
LABEL_24:
        pthread_mutex_unlock((v2 + 32));
        return v8;
      }
    }
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094FC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      if ((a2 & 7) == 0)
      {
        if (!sub_10000FE6C(a2))
        {
          return 0;
        }

LABEL_6:
        result = pthread_mutex_lock((v2 + 32));
        if (*(v2 + 24))
        {
          v4 = *(v2 + 16);
          if (v4 != v2 + 8)
          {
            while (v4 && (v4 & 7) == 0)
            {
              v5 = *(v4 + 16);
              if (!v5 || (*(v4 + 16) & 7) != 0)
              {
                break;
              }

              v7 = sub_100018DC0(*(v4 + 16));
              result = sub_10005AB58(v5);
              if (!result)
              {
                goto LABEL_19;
              }

              if (!v7)
              {
                goto LABEL_20;
              }

              if ((v7 & 7) != 0)
              {
                goto LABEL_29;
              }

              result = sub_1000D6BF8(v7);
              if (result)
              {
LABEL_19:
                v5 = 0;
              }

              else
              {
LABEL_20:
                result = sub_100094D84(v2, v5, a2);
                if (!result)
                {
                  v5 = 0;
                }

                if (v5)
                {
                  goto LABEL_26;
                }
              }

              v4 = *(v4 + 8);
              if (v4 == v2 + 8)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_29;
          }
        }

        v5 = 0;
LABEL_26:
        pthread_mutex_unlock((v2 + 32));
        return v5;
      }
    }
  }

LABEL_29:
  __break(0x5516u);
  return result;
}

void sub_1000950E0(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v4 = sub_10005A9E0(a2);
  if (!a2 || !v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pIncomingProcess object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2833, 0);
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pPort object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2850, 0);
    return;
  }

  pthread_mutex_lock((a1 + 96));
  if ((a2 & 7) != 0)
  {
    goto LABEL_24;
  }

  v5 = sub_10005BBCC(a2);
  if (!v5)
  {
    sub_1000C4254();
    sub_10006078C();
  }

  pthread_mutex_unlock((a1 + 96));
  v6 = sub_100018DC0(a2);
  if (v6 || (v6 = sub_10005AC88(a2)) != 0)
  {
    v7 = v6;
    if (!sub_1000D6B98(v6))
    {
      return;
    }

    if ((v7 & 7) != 0)
    {
LABEL_24:
      __break(0x5516u);
      return;
    }

    if ((*(*v7 + 232))(v7) && ((*(*v7 + 272))(v7) & 1) == 0 && (*(*v7 + 208))(v7) != 1)
    {
      v8 = sub_100048620();
      if (!v8 || (v8 & 7) != 0)
      {
        goto LABEL_24;
      }

      if ((*(*v8 + 152))(v8, v7) < 2)
      {
        return;
      }
    }
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pPort object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2850, a2);
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_24;
  }

  sub_100062B24(v5);
}

uint64_t sub_100095310(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v4 = sub_10005A9E0(a2);
      if (!a2 || !v4)
      {
        sub_1000DDEEC(0, 4, "%s:%d Failed to get pOutgoingProcess object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2920, 0);
        return 0;
      }

      result = pthread_mutex_lock((v2 + 96));
      if ((a2 & 7) == 0)
      {
        v5 = sub_10005BC1C(a2);
        if (!v5)
        {
          sub_1000B5D44();
        }

        pthread_mutex_unlock((v2 + 96));
        return v5;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000953E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  sub_10005AB40(a2, a3);

  return sub_10005AB80(a2, a4);
}

uint64_t sub_100095458(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    if (a2)
    {
      result = pthread_mutex_lock((result + 32));
      if (*(v2 + 24))
      {
        for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
        {
          if (!i || (i & 7) != 0)
          {
            goto LABEL_16;
          }

          if (*(i + 16) == a2)
          {
            pthread_mutex_unlock((v2 + 32));

            return sub_10005A9E0(a2);
          }
        }
      }

      pthread_mutex_unlock((v2 + 32));
    }

    sub_1000DDEEC(0, 4, "%s:%d Invalid handle(%hhx)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 3006, a2);
    return 0;
  }

  return result;
}

dispatch_source_t sub_100095538(dispatch_source_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result->isa = &off_1001162D0;
      *&result[1].isa = 0u;
      *&result[3].isa = 0u;
      *(&result[4].isa + 1) = 0u;
      result[8].isa = 0;
      LODWORD(result[10].isa) = 0;
      *(&result[6].isa + 4) = 0xFFFFFFFFLL;
      global_queue = dispatch_get_global_queue(2, 0);
      result = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
      v1[9].isa = result;
      if (result)
      {
        dispatch_source_set_event_handler(result, &stru_100116300);
        result = v1[9].isa;
        if (result)
        {
          dispatch_source_set_timer(result, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          result = v1[9].isa;
          if (result)
          {
            dispatch_resume(result);
            return v1;
          }
        }
      }

      __break(0x5510u);
    }
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_10009560C(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100095668(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_100095620(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    sub_100095668(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_100095668(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result->isa = &off_1001162D0;
    result = result[9].isa;
    if (result)
    {
      dispatch_release(result);
      return v1;
    }
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_1000956C8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_6;
  }

  v4 = (result + 1202);
  sub_100064F7C(result, a2, 13);
  *v2 = off_100116340;
  *(v2 + 1234) = 0;
  *(v2 + 1200) = 0;
  *(v2 + 1192) = 0;
  *(v2 + 1240) = 0;
  *(v2 + 1248) = 0;
  *v4 = xmmword_1000EF2A0;
  *(v2 + 1218) = 0u;
  *(v2 + 1218) = 480;
  result = sub_100065198(v5);
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 13, 44, a2);
    return v2;
  }

  return result;
}

uint64_t sub_100095780(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000956C8(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_100095794(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_100116340, (v2 = sub_100065198(a1)) == 0) || (v2 & 7) != 0 || (sub_1000929D4(v2, 13, 0, *(a1 + 8)), sub_100095860(a1), (v3 = sub_1000D5ED0()) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    dword_10012C764 = (*(*v3 + 144))(v3);
    *(a1 + 1240) = 0;
    *(a1 + 1248) = 0;

    sub_10006522C(a1);
  }
}

uint64_t sub_100095860(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v4 = 0uLL;
  *(&v4 + 4) = *(result + 8);
  result = sub_1000D5ED0();
  v2 = *(v1 + 1192);
  if (v2 < 4)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = result;
    *(v1 + 1192) = 0;
    *(v1 + 1200) = 0;
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 128))(result))
      {
        LODWORD(v4) = 3;
        HIDWORD(v4) = 0;
        sub_10005FBC8(0xD, 0, &v4, 16, *(v1 + 8));
      }

      LODWORD(v4) = 1;
      sub_10005FBC8(0xD, 0, &v4, 16, *(v1 + 8));
      if ((*(*v3 + 120))(v3) != 1000)
      {
        LODWORD(v4) = 2;
        WORD6(v4) = 1000;
        sub_10005FBC8(0xD, 0, &v4, 16, *(v1 + 8));
      }

      return 0;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

void sub_1000959A4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100095794(a1);
  }
}

uint64_t sub_1000959B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100095794(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100095A00(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 1192);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

void sub_100095A24(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v3 = *(a1 + 8);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_28;
  }

  v6 = sub_10005BC54(v3);
  if (a2 < 4)
  {
    v7 = v6;
    if (a2 == 1)
    {
      v9 = *(a1 + 1248);
      if (v9 > 1)
      {
        goto LABEL_29;
      }

      if ((v9 & 1) == 0)
      {
        *(a1 + 1202) = xmmword_1000EF2A0;
        *(a1 + 1218) = xmmword_1000EF2B0;
        *(a1 + 1234) = 0;
      }
    }

    else if (a2 == 2 && sub_100095BAC(a1))
    {
      v8 = *(a1 + 1248);
      if (v8 > 1)
      {
        goto LABEL_29;
      }

      if ((v8 & 1) == 0)
      {
        *(a1 + 1222) = xmmword_1000EF2C0;
        syslog(4, "%s:%d Sending Actionsafe parameters!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 260);
      }
    }

    if (*(a1 + 1214) != 640 || !v7 || *(a1 + 1218) != 480)
    {
      goto LABEL_27;
    }

    if ((v7 & 7) != 0)
    {
LABEL_28:
      __break(0x5516u);
      goto LABEL_29;
    }

    v10 = sub_1000BF3D0(v7 + 16);
    v11 = sub_1000BF328(v7 + 16);
    if (v11 <= 1)
    {
      if (!v11)
      {
LABEL_27:
        v14 = *(a1 + 8);
        v12 = v14;
        *(a1 + 1192) = a2;
        v13 = 0;
        v15 = a2;
        sub_10005FBC8(0xD, 0, &v13, 16, v12);
        return;
      }

      if (v10 <= 7)
      {
        if (v10 - 1 <= 2)
        {
          sub_1000BF768(v7 + 16, 0, 1);
        }

        goto LABEL_27;
      }
    }
  }

LABEL_29:
  __break(0x550Au);
}

BOOL sub_100095BAC(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    return *(result + 1202) == 5 && *(result + 1206) == 107 && *(result + 1210) == 80 && *(result + 1214) == 640 && *(result + 1218) == 480 && !*(result + 1222) && !*(result + 1226) && !*(result + 1230) && *(result + 1234) == 0;
  }

  return result;
}

uint64_t sub_100095C2C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (a2)
    {
      v2 = 0;
      *(result + 1202) = *a2;
      *(result + 1218) = *(a2 + 16);
      *(result + 1234) = *(a2 + 32);
      *(result + 1248) = 1;
    }

    else
    {
      v2 = 4;
      sub_1000DDEEC(0, 4, "%s:%d NULL videoScreenInfo\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 401);
    }

    return v2;
  }

  return result;
}

uint64_t sub_100095CBC(uint64_t result)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!*(result + 1240))
  {
    return result;
  }

  v2 = *(result + 1202);
  v3 = vrev64q_s32(*(result + 1218));
  v3.i64[0] = *(result + 1218);
  v6[0] = xmmword_1000EF2D0;
  v6[1] = v2;
  v6[2] = v3;
  v7 = *(result + 1234);
  v8 = 1515870810;
  result = sub_10004AB10();
  if (!result || (v4 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v1 + 8)), (v5 = *(v1 + 1240)) == 0) || (v5 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  return (*(*v4 + 120))(v4, result, *v5, 56, v6);
}

uint64_t sub_100095D90(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return result;
  }

  v3 = 0;
  if (a2 != 32)
  {
    if (a2 == 8)
    {
      *(result + 1202) = xmmword_1000EF2A0;
      *(result + 1218) = xmmword_1000EF2B0;
      *(result + 1234) = 0;
      *(result + 1248) = 0;
      sub_100095860(result);
    }

    else if (a2 != 4)
    {
      sub_1000E24A0();
    }

    result = sub_1000D5ED0();
    if (result && (result & 7) == 0)
    {
      v2 = (*(*result + 144))(result);
      result = 0;
      dword_10012C764 = v2;
      return result;
    }

    goto LABEL_13;
  }

  sub_10006770C(result, &v3);
  return v3;
}

uint64_t sub_100095E54(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_97;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_97;
  }

  if (*(result + 8))
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_97;
    }

    if (sub_100094BFC(result, *(v2 + 8)))
    {
      result = *(v2 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_97;
      }

      result = sub_10005ACA0(result);
      if (result)
      {
        goto LABEL_10;
      }

      if (!a2 || (a2 & 7) != 0)
      {
        goto LABEL_97;
      }

      v4 = *(a2 + 68);
      if (v4 >= 0x10000)
      {
        goto LABEL_98;
      }

      v5 = *(a2 + 24);
      v6 = *(a2 + 128);
      v7 = *(a2 + 126);
      result = sub_100065198(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_97;
      }

      v8 = sub_1000945E0(result, *(v2 + 8));
      result = sub_1000D5ED0();
      v42 = 0uLL;
      v9 = *(v2 + 8);
      *(&v42 + 4) = v9;
      if (v7 > 0xF)
      {
        goto LABEL_40;
      }

      if (v7 <= 6)
      {
        if (v7 > 3)
        {
          if (v7 == 4)
          {
            if (v6 != 1)
            {
              goto LABEL_40;
            }

            if (v5)
            {
              v33 = *v5;
              if (v33 <= 5)
              {
                syslog(4, "%s:%s-%d pData[0] == 0x%x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", "ProcessCmd", 573, v33);
                sub_100096690(v2, *v5);
              }

              goto LABEL_40;
            }
          }

          else
          {
            if (v7 != 5 || v6 != 2)
            {
              goto LABEL_40;
            }

            if (v5)
            {
              v26 = bswap32(*v5) >> 16;
              if (v26 <= 0x7CF)
              {
                *(v2 + 1200) = v26;
                WORD6(v42) = v26;
                LODWORD(v42) = 2;
                sub_10005FBC8(0xD, 0, &v42, 16, v9);
              }

              goto LABEL_40;
            }
          }

          goto LABEL_97;
        }

        if (v7 == 1)
        {
          if (v6 != 1)
          {
            goto LABEL_40;
          }

          if (v5)
          {
            sub_1000964B8(v2, a2, *v5);
            goto LABEL_40;
          }

          goto LABEL_97;
        }

        if (v7 == 3)
        {
          if (v6 - 1 <= 3)
          {
            sub_1000965CC(v2, a2);
          }

          goto LABEL_40;
        }

        goto LABEL_63;
      }

      if (v7 > 12)
      {
        if (v7 == 13)
        {
          if (v6 == 1)
          {
            sub_100096758(v2, a2);
          }

          goto LABEL_40;
        }

        if (v7 != 14)
        {
          if (v6 == 36)
          {
            if (!v5)
            {
              goto LABEL_97;
            }

            if (v5 >= 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_99;
            }

            v18 = *(v5 + 2);
            if (v5 >= 0xFFFFFFFFFFFFFFFALL)
            {
              goto LABEL_99;
            }

            v19 = *(v5 + 6);
            if (v5 >= 0xFFFFFFFFFFFFFFF6)
            {
              goto LABEL_99;
            }

            v20 = *(v5 + 10);
            if (v5 >= 0xFFFFFFFFFFFFFFF2)
            {
              goto LABEL_99;
            }

            v21 = *(v5 + 14);
            if (v5 >= 0xFFFFFFFFFFFFFFEELL)
            {
              goto LABEL_99;
            }

            v22 = *(v5 + 18);
            if (v5 >= 0xFFFFFFFFFFFFFFEALL)
            {
              goto LABEL_99;
            }

            v23 = *(v5 + 22);
            if (v5 >= 0xFFFFFFFFFFFFFFE6)
            {
              goto LABEL_99;
            }

            v24 = *(v5 + 26);
            if (v5 >= 0xFFFFFFFFFFFFFFE2)
            {
              goto LABEL_99;
            }

            v25 = *(v5 + 30);
            *(v2 + 1202) = bswap32(*v5) >> 16;
            *(v2 + 1206) = bswap32(v18);
            *(v2 + 1210) = bswap32(v19);
            *(v2 + 1214) = bswap32(v20);
            *(v2 + 1218) = bswap32(v21);
            *(v2 + 1222) = bswap32(v22);
            *(v2 + 1226) = bswap32(v23);
            *(v2 + 1230) = bswap32(v24);
            *(v2 + 1234) = bswap32(v25);
            *(v2 + 1248) = 1;
            sub_100095CBC(v2);
          }

          goto LABEL_63;
        }

        if (v6 != 1)
        {
          goto LABEL_40;
        }

        if (!v5 || !result || (result & 7) != 0)
        {
          goto LABEL_97;
        }

        if (*v5 > 1u)
        {
LABEL_101:
          __break(0x550Au);
          goto LABEL_102;
        }

        v32 = *(*result + 152);
      }

      else
      {
        if (v7 != 7)
        {
          if (v7 != 9)
          {
            if (v7 == 11)
            {
              if (v6 < 2)
              {
                goto LABEL_40;
              }

              if (v5)
              {
                if (*v5)
                {
                  goto LABEL_40;
                }

                if (v5 != -1)
                {
                  v10 = v5[1];
                  result = sub_1000D6C34(v8, 13);
                  v11 = result - 3;
                  if (result >= 3)
                  {
                    if (HIWORD(v11))
                    {
                      goto LABEL_98;
                    }

                    v12 = (result - 3);
                    if (result != 3)
                    {
                      if (v12 >= 0xA)
                      {
                        v13 = 0x9A8u / (result - 3);
                        v14 = (v13 + 1);
                        if (v14 > v10)
                        {
                          v15 = v12 * v10;
                          if (!WORD1(v15))
                          {
                            if (v15 > 0x9A8)
                            {
LABEL_104:
                              __break(0x5512u);
                              return result;
                            }

                            if (v15 <= ~&unk_1000EF310)
                            {
                              v16 = (2472 - v13 * v11);
                              if (v14 - 1 == v10)
                              {
                                v17 = v16;
                              }

                              else
                              {
                                v17 = result - 3;
                              }

                              v40 = (v17 + 3);
                              operator new[]();
                            }

                            goto LABEL_100;
                          }

                          goto LABEL_98;
                        }

LABEL_40:
                        if (*(a2 + 126) == v7)
                        {
                          v39 = 0;
                          v38 = 0;
                          v37 = 0;
                          v36 = 0;
                          v35 = -1;
                          v34 = 0;
                          sub_1000B7854(a2);
                        }

                        return sub_10009686C(v2, a2, 0);
                      }

LABEL_98:
                      __break(0x5507u);
LABEL_99:
                      __break(0x5500u);
                      goto LABEL_100;
                    }

LABEL_103:
                    __break(0x5503u);
                    goto LABEL_104;
                  }

LABEL_102:
                  __break(0x5515u);
                  goto LABEL_103;
                }

                goto LABEL_100;
              }

LABEL_97:
              __break(0x5516u);
              goto LABEL_98;
            }

LABEL_63:
            sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoPushUI::ProcessCmd Unknown CmdID: 0x%02X", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 754, v7);
            goto LABEL_40;
          }

          if (!v6)
          {
            goto LABEL_40;
          }

          if (!v5)
          {
            goto LABEL_97;
          }

          if (*v5)
          {
            goto LABEL_40;
          }

          result = sub_1000D6C34(v8, 13);
          if (result < 3)
          {
            goto LABEL_102;
          }

          if ((result - 3) >> 16)
          {
            goto LABEL_98;
          }

          if (result == 3)
          {
            goto LABEL_103;
          }

          if ((result - 3) < 0xAu)
          {
            goto LABEL_98;
          }

          LOWORD(v41) = -22016;
          if (&v34 == -45)
          {
LABEL_100:
            __break(0x5513u);
            goto LABEL_101;
          }

          BYTE1(v41) = 0x9A8u / (result - 3);
          v27 = v4;
          v28 = a2;
          v29 = v8;
          v30 = 10;
          v31 = 2;
LABEL_94:
          sub_1000B7DB4(v28, v29, 0, 13, v30, v27, &v41, v31);
          goto LABEL_40;
        }

        if (!result || (result & 7) != 0)
        {
          goto LABEL_97;
        }

        v32 = *(*result + 152);
      }

      v41 = bswap32(v32());
      v27 = v4;
      v28 = a2;
      v29 = v8;
      v30 = 8;
      v31 = 4;
      goto LABEL_94;
    }
  }

LABEL_10:
  if (a2)
  {
    return sub_10009686C(v2, a2, 0);
  }

  return 89;
}

uint64_t sub_1000964B8(uint64_t result, unint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v9 = -1431655766;
  result = sub_100065198(result);
  if (!result)
  {
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = sub_1000945E0(result, *(v3 + 8));
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = result;
  v7 = *(a2 + 68);
  result = sub_1000D5ED0();
  v8 = a3;
  if (a3 == 1)
  {
    result = dword_10012C764;
LABEL_13:
    if (&v8 != -1)
    {
      v9 = bswap32(result);
      sub_1000B7DB4(a2, v6, 0, 13, 2, v7, &v8, 5u);
      return 0;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    if (result && (result & 7) == 0)
    {
      result = (*(*result + 136))(result);
      goto LABEL_13;
    }

LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x5500u);
    return result;
  }

  return 4;
}

uint64_t sub_1000965CC(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0 || (v3 = *(a2 + 24), v4 = *(a2 + 128), (result = sub_1000D5ED0()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = (*(*result + 136))(result);
    result = 4;
    if (v3 && v4 == 4)
    {
      v6 = bswap32(*v3);
      if (v6 & ~v5) == 0 && (v6)
      {
        dword_10012C764 = v6;
        sub_100096924(v2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100096690(uint64_t result, unsigned int a2)
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

  if (!*(result + 1240))
  {
    return result;
  }

  v5 = xmmword_1000EF2E0;
  if (a2 >= 8)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  v6 = a2;
  v7 = 1515870810;
  result = sub_10004AB10();
  if (!result || (v3 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v2 + 8)), (v4 = *(v2 + 1240)) == 0) || (v4 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  return (*(*v3 + 120))(v3, result, *v4, 24, &v5);
}

uint64_t sub_100096758(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0 && (v2 = *(a2 + 24), v16 = -1431655766, v3 = *(result + 8), v15 = v3, v14 = 3, v2))
  {
    v4 = 0;
    v5 = 0;
    v6 = *v2;
    v7 = v6 >> 5;
    v8 = (8 * v6) & 0x700;
    v9 = 2 * (v6 & 0x1F);
    do
    {
      if (((((v7 & 7) << 8) | 0x1000) >> v4))
      {
        if (v5 == 0xFFFF)
        {
LABEL_22:
          __break(0x5507u);
          goto LABEL_23;
        }

        ++v5;
      }

      ++v4;
    }

    while (v4 != 32);
    v10 = 0;
    v11 = 0;
    do
    {
      if (((v9 | 0x40u) >> v10))
      {
        if (v11 == 0xFFFF)
        {
          goto LABEL_22;
        }

        ++v11;
      }

      ++v10;
    }

    while (v10 != 32);
    if (v5)
    {
      v12 = 4160;
    }

    else
    {
      v12 = 36928;
    }

    v13 = v9 | v8 | v12;
    if ((v11 & 1) == 0)
    {
      v13 |= 0x80u;
    }

    v16 = v13;
    sub_10005FBC8(0xD, 0, &v14, 16, v3);
    return 0;
  }

  else
  {
LABEL_23:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10009686C(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_100067278();
    v6 = *(v3 + 8);

    return sub_1000B6DB4(v6, a2, a3, 1u);
  }

  return result;
}

void sub_1000968D0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoPushUI::HandleCmdTimeout invalid timeout cmd ID: 0x%02X", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 843, a3);
  }
}

uint64_t sub_100096924(uint64_t result)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!*(result + 1240))
  {
    return result;
  }

  v7 = xmmword_1000EF2F0;
  v2 = *&vshl_u16((*&vdup_n_s16(dword_10012C764) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v8 = vuzp1_s8(v2, v2).u32[0];
  v9 = (dword_10012C764 & 0x20) != 0;
  v10 = (dword_10012C764 & 0x40) != 0;
  v11 = (dword_10012C764 & 0x80) != 0;
  v12 = BYTE1(dword_10012C764) & 1;
  v3 = (dword_10012C764 & 0x400) != 0 ? 2 : 1;
  v4 = (dword_10012C764 & 0x200) != 0 ? 0 : v3;
  v14 = 1515870810;
  v13 = v4;
  result = sub_10004AB10();
  if (!result || (v5 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v1 + 8)), (v6 = *(v1 + 1240)) == 0) || (v6 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    return result;
  }

  return (*(*v5 + 120))(v5, result, *v6, 32, &v7);
}

void sub_100096A40(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  std::string::basic_string(&v9, (a2 + 8));
  v4 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
  v5 = v9.__r_.__value_.__r.__words[0];
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  v7 = strcmp(v6, off_10012B480);
  v8 = v7;
  if ((v4 & 0x80000000) == 0)
  {
    if (v7)
    {
      return;
    }

LABEL_12:
    *(a1 + 1240) = a2;
    return;
  }

  operator delete(v5);
  if (!v8)
  {
    goto LABEL_12;
  }
}

void sub_100096AE8(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  std::string::basic_string(&v8, (a2 + 8));
  v3 = SHIBYTE(v8.__r_.__value_.__r.__words[2]);
  v4 = v8.__r_.__value_.__r.__words[0];
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6 = strcmp(v5, off_10012B480);
  v7 = v6;
  if ((v3 & 0x80000000) == 0)
  {
    if (v6)
    {
      return;
    }

LABEL_12:
    *(a1 + 1240) = 0;
    return;
  }

  operator delete(v4);
  if (!v7)
  {
    goto LABEL_12;
  }
}

uint64_t sub_100096B84(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v2 = result;
  result = sub_1000D5ED0();
  if (!result)
  {
    goto LABEL_14;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_14;
  }

  v3 = (*(*result + 88))(result);
  result = sub_1000D5ED0();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = (*(*result + 96))(result);
  *v2 = 13;
  if (v2 == -1)
  {
LABEL_15:
    __break(0x5500u);
    return result;
  }

  v4 = 0x100000000000000;
  if (!v3)
  {
    v4 = 0;
  }

  if (result)
  {
    v4 |= 0x200000000000000uLL;
  }

  *(v2 + 1) = v4 | 0x3800000000000000;
  return 0;
}

uint64_t sub_100096C5C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100096C70(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (*(result + 1240) == a2)
  {
    sub_100096924(result);

    return sub_100095CBC(v2);
  }

  return result;
}

uint64_t sub_100096CD4(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  if (result && (result & 7) == 0 && a2 && (*a2 = 1, a3))
  {
    *a3 = 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

void sub_100096CFC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_50;
  }

  sub_100064F7C(a1, a2, 4);
  *a1 = off_100116400;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 1;
  *(a1 + 1220) = 256;
  *(a1 + 1288) = -1;
  *(a1 + 1296) = 0x200000000;
  *(a1 + 1304) = -1;
  *(a1 + 1312) = -1;
  *(a1 + 1320) = -1;
  *(a1 + 1328) = -1;
  *(a1 + 1332) = 0;
  *(a1 + 1334) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1343) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1380) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1395) = 0;
  *(a1 + 1398) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = 0u;
  pthread_mutex_init((a1 + 1224), 0);
  if (dword_10012B490 == -1)
  {
    v4 = sub_10002BB1C();
    if (!v4 || (v4 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B490 = (*(*v4 + 360))(v4, "SetDurationToZeroOnInvalid");
  }

  if (dword_10012B494 == -1)
  {
    v5 = sub_10002BB1C();
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B494 = (*(*v5 + 360))(v5, "SetDurationToLargeOnInvalid");
  }

  if (dword_10012B498 == -1)
  {
    v6 = sub_10002BB1C();
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B498 = (*(*v6 + 360))(v6, "SetDurationTo5MinOnInvalid");
  }

  if (dword_10012B49C == -1)
  {
    v7 = sub_10002BB1C();
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B49C = (*(*v7 + 360))(v7, "SetDurationTo24HrsOnInvalid");
  }

  if (dword_10012B4A0 == -1)
  {
    v8 = sub_10002BB1C();
    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B4A0 = (*(*v8 + 360))(v8, "SetDurationTo1HrOnInvalid");
  }

  if (dword_10012B4A4 == -1)
  {
    v9 = sub_10002BB1C();
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_50;
    }

    dword_10012B4A4 = (*(*v9 + 360))(v9, off_10012B4A8);
  }

  v10 = sub_1000388B8();
  *(a1 + 1200) = v10;
  if (!v10)
  {
LABEL_49:
    sub_1000E1D34();
  }

  *(a1 + 1404) = 0xFFFFFFFFLL;
  *(a1 + 1412) = 0;
  v11 = sub_100025E90();
  *(a1 + 1192) = v11;
  if (!v11)
  {
    goto LABEL_48;
  }

  sub_1000651C8(a2);
  if (!v12 || (v12 & 7) != 0)
  {
    goto LABEL_50;
  }

  v13 = sub_10006274C(v12);
  *(a1 + 1376) = v13;
  if (v13 == -1)
  {
LABEL_48:
    __break(0x5518u);
    goto LABEL_49;
  }

  sub_1000651C8(a2);
  if (!v14 || (v14 & 7) != 0 || (sub_1000629DC(v14, *(a1 + 1376)), (v15 = *(a1 + 1192)) == 0) || (v15 & 7) != 0)
  {
LABEL_50:
    __break(0x5516u);
    goto LABEL_51;
  }

  v16 = (*(*v15 + 112))(v15);
  if (v16 <= 7)
  {
    if ((v16 & 6) == 2)
    {
      *(a1 + 1392) = 1;
    }

    v17 = sub_100065198(v16);
    if (v17)
    {
      if ((v17 & 7) == 0)
      {
        sub_1000929D4(v17, 4, 365, *(a1 + 8));
        v18 = *(a1 + 1200);
        if (v18)
        {
          if ((v18 & 7) == 0)
          {
            (*(*v18 + 16))(v18, a1);
            v19 = *(a1 + 8);
            if (v19)
            {
              if ((v19 & 7) == 0)
              {
                sub_10005B7F8(v19, 4u, 0);
                v20 = *(a1 + 8);
                if (v20)
                {
                  if ((v20 & 7) == 0)
                  {
                    sub_10005B7AC(v20, 4u, 0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_50;
  }

LABEL_51:
  __break(0x550Au);
}

void sub_100097160(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  *a1 = off_100116400;
  v2 = *(a1 + 1200);
  if (!v2 || (v2 & 7) != 0)
  {
    goto LABEL_17;
  }

  (*(*v2 + 24))(v2, a1);
  sub_1000651C8(*(a1 + 8));
  if (!v4)
  {
    goto LABEL_17;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v5 = sub_1000629DC(v4, *(a1 + 1376));
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  v6 = sub_100065198(v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  if ((v6 & 7) == 0 && (sub_1000929D4(v6, 4, 0, *(a1 + 8)), sub_100097294(a1), sub_100097394(*(a1 + 8), 0), sub_1000651C8(*(a1 + 8)), v7) && (v7 & 7) == 0)
  {
    sub_100060C50(v7, *(a1 + 1376));
    *(a1 + 1376) = -1;
    *(a1 + 1192) = 0;
    qword_10012C768 = 0;
    pthread_mutex_destroy((a1 + 1224));
    sub_1000A9050((a1 + 1416));

    sub_10006522C(a1);
  }

  else
  {
LABEL_17:
    __break(0x5516u);
  }
}

uint64_t sub_100097294(uint64_t result)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (*(result + 1395))
  {
    result = *(result + 1200);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_16;
    }

    result = (*(*result + 160))(result, *(v1 + 1396));
    *(v1 + 1395) = 0;
  }

  if (*(v1 + 1398))
  {
    result = *(v1 + 1200);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_16;
    }

    result = (*(*result + 128))(result, *(v1 + 1400));
    *(v1 + 1398) = 0;
  }

  if (!*(v1 + 1393))
  {
    return result;
  }

  result = *(v1 + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    return result;
  }

  result = (*(*result + 192))(result, *(v1 + 1394));
  *(v1 + 1393) = 0;
  return result;
}

void sub_100097394(uint64_t a1, int a2)
{
  if (!a1)
  {
    __break(0x5518u);
    goto LABEL_17;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = sub_10005BB24(a1, 4u);
  v5 = sub_100065198(v4);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = sub_100092790(v5, a1, 4u);
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_17;
    }

    v7 = qword_10012C768;
    if (!qword_10012C768)
    {
      qword_10012C768 = v6;
      v7 = v6;
    }
  }

  else
  {
    v7 = qword_10012C768;
    if (!qword_10012C768)
    {
      sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot get RemoteUI mode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 894);
      goto LABEL_14;
    }
  }

  if ((v7 & 7) == 0)
  {
    pthread_mutex_lock((v7 + 1224));
    sub_100098028(a1, a2);
    if (qword_10012C768)
    {
      if ((qword_10012C768 & 7) == 0)
      {
        pthread_mutex_unlock((qword_10012C768 + 1224));
LABEL_14:
        sub_10005BB6C(a1, 4u);
        return;
      }
    }
  }

LABEL_17:
  __break(0x5516u);
}

void sub_1000974A4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100097160(a1);
  }
}

uint64_t sub_1000974B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100097160(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100097500(uint64_t result)
{
  if (!result)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result;
  result = qword_10012C768;
  if (!qword_10012C768)
  {
    operator new();
  }

  if ((qword_10012C768 & 7) != 0)
  {
    goto LABEL_9;
  }

  if (*(qword_10012C768 + 8) != v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100097578(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  *result = 0;
  result = sub_100065198(result);
  if (!result)
  {
    goto LABEL_18;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = (*(*result + 152))(result, a2);
  v5 = v4;
  result = sub_100065198(v4);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_100092790(result, a2, 4u);
  if (!result)
  {
    if ((v5 & 0x10) != 0)
    {
      sub_1000DDEEC(0, 4, "No RemoteUI Object but device identified for RemoteUI, cannot handle GetRemoteUIMode!\n");
    }

    return 2;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (result != qword_10012C768)
  {
    if ((v5 & 0x10) != 0)
    {
      sub_1000DDEEC(0, 4, "RemoteUI Object does not match but device identified for RemoteUI, cannot handle GetRemoteUIMode!\n");
    }

    return 2;
  }

  result = sub_100025E90();
  if (!result)
  {
    sub_1000DDEEC(0, 4, "%s:%d No ExtendedModeMgr handle, cannot get ExtendedMode state!\n");
    return 2;
  }

  if ((result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
  }

  else
  {
    v6 = (*(*result + 96))(result);
    result = 0;
    *v3 = v6;
  }

  return result;
}

void sub_1000976B8(uint64_t a1)
{
  if (!a1)
  {
    __break(0x5518u);
    goto LABEL_72;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_73;
  }

  v2 = sub_10005BB24(a1, 4u);
  v3 = sub_100065198(v2);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_73;
  }

  v4 = sub_100092790(v3, a1, 4u);
  v5 = v4;
  if (!v4)
  {
    v6 = qword_10012C768;
    if (!qword_10012C768)
    {
      sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot handle EnterRemoteUIMode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 680);
      v6 = qword_10012C768;
    }

LABEL_11:
    if (v6 != v5)
    {
      sub_1000DDEEC(0, 4, "%s:%d RemoteUI Object does not match, cannot handle EnterRemoteUIMode! %hhx != %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 685, v6, v5);
      v6 = qword_10012C768;
    }

    v5 = v6;
    if (!v6)
    {
      goto LABEL_70;
    }

    goto LABEL_14;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_73;
  }

  v6 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

  qword_10012C768 = v4;
LABEL_14:
  if ((v5 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (*(v5 + 8) != a1)
  {
    goto LABEL_70;
  }

  v7 = pthread_mutex_lock((v5 + 1224));
  v8 = qword_10012C768;
  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (!*(qword_10012C768 + 1192))
  {
LABEL_67:
    if (qword_10012C768 && (qword_10012C768 & 7) == 0)
    {
      pthread_mutex_unlock((qword_10012C768 + 1224));
LABEL_70:
      sub_10005BB6C(a1, 4u);
      return;
    }

    goto LABEL_73;
  }

  if (!*(qword_10012C768 + 1208))
  {
    v9 = sub_100065198(v7);
    if (!v9)
    {
      goto LABEL_73;
    }

    if ((v9 & 7) != 0)
    {
      goto LABEL_73;
    }

    v10 = sub_1000928E0(v9, 4);
    v8 = qword_10012C768;
    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    *(qword_10012C768 + 1208) = v10;
    if (!v10)
    {
LABEL_72:
      sub_1000E1D34();
    }
  }

  v11 = *(v8 + 1192);
  if (!v11 || (v11 & 7) != 0)
  {
    goto LABEL_73;
  }

  if ((*(*v11 + 96))(v11))
  {
    goto LABEL_67;
  }

  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_73;
  }

  *(qword_10012C768 + 1380) = 0;
  sub_1000651C8(a1);
  if (v12)
  {
    sub_1000651C8(a1);
    if (!v13)
    {
      goto LABEL_73;
    }

    if ((v13 & 7) != 0)
    {
      goto LABEL_73;
    }

    if (!qword_10012C768)
    {
      goto LABEL_73;
    }

    if ((qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    sub_1000629DC(v13, *(qword_10012C768 + 1376));
    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    *(qword_10012C768 + 1384) = 0;
  }

  v14 = sub_100067278();
  if (qword_10012C768)
  {
    if ((qword_10012C768 & 7) == 0)
    {
      *(qword_10012C768 + 1388) = v14;
      sub_10005B7F8(a1, 4u, 0);
      sub_10005B7AC(a1, 4u, 0);
      if (qword_10012C768)
      {
        if ((qword_10012C768 & 7) == 0)
        {
          sub_100097AB8(qword_10012C768 + 1416, 0);
          if (qword_10012C768)
          {
            if ((qword_10012C768 & 7) == 0)
            {
              *(qword_10012C768 + 1220) = 1;
              v15 = sub_1000388B8();
              if (v15)
              {
                if ((v15 & 7) == 0)
                {
                  (*(*v15 + 632))(v15, 1);
                  if (qword_10012C768)
                  {
                    if ((qword_10012C768 & 7) == 0)
                    {
                      v16 = *(qword_10012C768 + 1192);
                      if (v16)
                      {
                        if ((v16 & 7) == 0)
                        {
                          (*(*v16 + 88))(v16, 1);
                          sub_100097B2C(1, a1, 1);
                          if (qword_10012C768)
                          {
                            if ((qword_10012C768 & 7) == 0)
                            {
                              *(qword_10012C768 + 1221) = 1;
                              v17 = sub_100046A8C();
                              if (v17)
                              {
                                if ((v17 & 7) == 0)
                                {
                                  v18 = (*(*v17 + 80))(v17);
                                  if (v18)
                                  {
                                    v19 = sub_100065198(v18);
                                    if (!v19 || (v19 & 7) != 0 || !qword_10012C768 || (qword_10012C768 & 7) != 0)
                                    {
                                      goto LABEL_73;
                                    }

                                    if (sub_1000933B0(v19, *(qword_10012C768 + 1208)) != 56)
                                    {
                                      v20 = sub_10005BC54(a1);
                                      if (!v20 || (v20 & 7) != 0)
                                      {
                                        goto LABEL_73;
                                      }

                                      if (sub_1000BE5C0(v20 + 16))
                                      {
                                        v21 = sub_10005BC54(a1);
                                        if (!v21 || (v21 & 7) != 0)
                                        {
                                          goto LABEL_73;
                                        }

                                        sub_1000BF678(v21 + 16);
                                      }
                                    }
                                  }

                                  goto LABEL_67;
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
        }
      }
    }
  }

LABEL_73:
  __break(0x5516u);
}

uint64_t sub_100097AB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = *result;
      if (*v2 == a2 || result == 0)
      {
        goto LABEL_9;
      }

      if ((result & 7) == 0)
      {
        result = (*(*result + 8))(result);
LABEL_9:
        *v2 = a2;
        return result;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100097B2C(char a1, uint64_t a2, int a3)
{
  v6 = sub_1000388B8();
  __p = 0;
  v31 = 0;
  v32 = 0;
  if (a1)
  {
    v7 = sub_10004B1AC();
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_64;
    }

    if ((*(*v7 + 304))(v7, &__p))
    {
      v8 = byte_10012BE7F >= 0 ? &qword_10012BE68 : qword_10012BE68;
      v9 = byte_10012BE7F >= 0 ? byte_10012BE7F : unk_10012BE70;
      v10 = v32 >= 0 ? HIBYTE(v32) : v31;
      v11 = v32 >= 0 ? &__p : __p;
      v12 = v9 >= v10 ? v10 : v9;
      if (!memcmp(v11, v8, v12) && v9 == v10)
      {
        v14 = sub_1000388B8();
        if (!v14 || (v14 & 7) != 0)
        {
          goto LABEL_64;
        }

        if ((*(*v14 + 416))(v14))
        {
          v15 = sub_1000653EC(4, a2);
          if (v15)
          {
            v16 = v15;
            if ((v15 & 7) == 0)
            {
              sub_100069050(v15, 7u, 1);
              sub_100069050(v16, 7u, 0);
              goto LABEL_45;
            }
          }

LABEL_64:
          __break(0x5516u);
          return;
        }
      }
    }
  }

  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_64;
  }

  if ((*(*v6 + 456))(v6))
  {
    (*(*v6 + 336))(v6);
  }

  v17 = (*(*v6 + 384))(v6);
  v29 = v17;
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = v17;
  if ((v17 & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!(*(*v17 + 16))(v17))
  {
LABEL_42:
    v26 = 9333;
    v19 = "%s:%d no trackAccessor! ignore doing pause";
    goto LABEL_43;
  }

  if ((*(*v18 + 288))(v18) && (*(*v6 + 528))(v6) == 1)
  {
    if (((*(*v6 + 464))(v6) & 1) == 0)
    {
      (*(*v6 + 312))(v6);
    }

    goto LABEL_44;
  }

  if (!(*(*v6 + 424))(v6))
  {
    sub_1000DDEEC(0, 4, "%s:%d not playing! ignore doing pause");
    goto LABEL_44;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_64;
  }

  v20 = sub_100018DC0(a2);
  v21 = v20;
  if (!a3)
  {
    if (!v20 || (v20 & 7) != 0)
    {
      goto LABEL_64;
    }

    if ((*(*v20 + 208))(v20) != 2)
    {
      v22 = 1;
      if (!v21)
      {
        goto LABEL_64;
      }

      goto LABEL_60;
    }

    v27 = 0;
    v28 = (*(*v21 + 208))(v21);
    v26 = 9321;
    v19 = "%s:%d ignore doing Pause for fromCommand=%d portType=%d";
LABEL_43:
    sub_1000DDEEC(0, 4, v19, "HandleMediaOnRemoteUIAttachedOrRemoved", v26, v27, v28, v29);
    goto LABEL_44;
  }

  v22 = (v20 & 7) == 0;
  if (!v20)
  {
    goto LABEL_64;
  }

LABEL_60:
  if (!v22)
  {
    goto LABEL_64;
  }

  v23 = (*(*v21 + 208))(v21);
  sub_1000DDEEC(0, 4, "%s:%d Pause for fromCommand=%d portType=%d", "HandleMediaOnRemoteUIAttachedOrRemoved", 9312, a3, v23);
  v24 = sub_1000653EC(4, a2);
  if (!v24)
  {
    goto LABEL_64;
  }

  v25 = v24;
  if ((v24 & 7) != 0)
  {
    goto LABEL_64;
  }

  sub_100069050(v24, 9u, 1);
  sub_100069050(v25, 9u, 0);
LABEL_44:
  sub_1000698F8(&v29);
LABEL_45:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }
}

void sub_100098028(uint64_t a1, int a2)
{
  if (!a1)
  {
    __break(0x5518u);
    goto LABEL_57;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_57;
  }

  v4 = sub_10005BB24(a1, 4u);
  v5 = sub_100065198(v4);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_57;
  }

  v6 = sub_100092790(v5, a1, 4u);
  v7 = v6;
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_57;
    }

    v8 = qword_10012C768;
    if (!qword_10012C768)
    {
      qword_10012C768 = v6;
      v8 = v6;
    }

LABEL_11:
    if ((v8 & 7) != 0)
    {
      goto LABEL_57;
    }

    if (*(v8 + 8) == a1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

  sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot handle EnterRemoteUIMode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 790);
  v8 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

LABEL_13:
  sub_1000DDEEC(0, 4, "%s:%d RemoteUI Object does not match, cannot handle EnterRemoteUIMode! %hhx != %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 795, v8, v7);
  v8 = qword_10012C768;
  if (!qword_10012C768)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((v8 & 7) == 0)
  {
    if (*(v8 + 8) != a1)
    {
      goto LABEL_16;
    }

    v9 = *(v8 + 1192);
    if (!v9)
    {
      goto LABEL_16;
    }

    if ((v9 & 7) == 0)
    {
      if (!(*(*v9 + 96))(v9))
      {
        goto LABEL_16;
      }

      sub_1000651C8(a1);
      if (v10)
      {
        sub_1000651C8(a1);
        if (!v11)
        {
          goto LABEL_57;
        }

        if ((v11 & 7) != 0)
        {
          goto LABEL_57;
        }

        if (!qword_10012C768)
        {
          goto LABEL_57;
        }

        if ((qword_10012C768 & 7) != 0)
        {
          goto LABEL_57;
        }

        sub_1000629DC(v11, *(qword_10012C768 + 1376));
        v12 = qword_10012C768;
        if (!qword_10012C768)
        {
          goto LABEL_57;
        }

        if ((qword_10012C768 & 7) != 0)
        {
          goto LABEL_57;
        }

        *(qword_10012C768 + 1384) = 0;
        if (!v12)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v12 = qword_10012C768;
        if (!qword_10012C768)
        {
          goto LABEL_57;
        }
      }

      if ((v12 & 7) != 0)
      {
        goto LABEL_57;
      }

      *(v12 + 1380) = 0;
      *(v12 + 1388) = 0;
      sub_10005B7F8(a1, 4u, 0);
      sub_10005B7AC(a1, 4u, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      sub_100097AB8(qword_10012C768 + 1416, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      *(qword_10012C768 + 1220) = 0;
      v13 = sub_1000388B8();
      if (!v13)
      {
        goto LABEL_57;
      }

      if ((v13 & 7) != 0)
      {
        goto LABEL_57;
      }

      (*(*v13 + 632))(v13, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      v14 = *(qword_10012C768 + 1192);
      if (!v14)
      {
        goto LABEL_57;
      }

      if ((v14 & 7) != 0)
      {
        goto LABEL_57;
      }

      (*(*v14 + 88))(v14, 0);
      sub_100097B2C(0, a1, a2);
      v15 = sub_100046A8C();
      if (!v15 || (v15 & 7) != 0)
      {
        goto LABEL_57;
      }

      if ((*(*v15 + 80))(v15))
      {
        v16 = sub_10005BC54(a1);
        if (!v16 || (v16 & 7) != 0)
        {
          goto LABEL_57;
        }

        sub_1000BFB94(v16 + 16);
      }

      if (qword_10012C768 && (qword_10012C768 & 7) == 0)
      {
        v17 = *(qword_10012C768 + 1424);
        if (v17)
        {
          if ((v17 & 7) == 0)
          {
            v19 = v17 + 8;
            sub_100007F60(&v19);
            operator delete();
          }

          goto LABEL_57;
        }

        v18 = sub_10004B1AC();
        if (!v18 || (v18 & 7) != 0)
        {
          goto LABEL_57;
        }

        (*(*v18 + 600))(v18, 0, 0);
LABEL_16:
        sub_10005BB6C(a1, 4u);
        return;
      }
    }
  }

LABEL_57:
  __break(0x5516u);
}

uint64_t sub_1000983E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_114;
  }

  v5 = a3;
  if (a2 <= 31)
  {
    if (a2 != 1)
    {
      if (a2 != 4)
      {
        if (a2 != 8)
        {
          goto LABEL_117;
        }

        if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
        {
          goto LABEL_114;
        }

        pthread_mutex_lock((qword_10012C768 + 1224));
        *(a1 + 1380) = 0;
        sub_1000651C8(*(a1 + 8));
        if (!v6)
        {
          goto LABEL_13;
        }

        sub_1000651C8(*(a1 + 8));
        if (v7 && (v7 & 7) == 0)
        {
          sub_1000629DC(v7, *(a1 + 1376));
          *(a1 + 1384) = 0;
LABEL_13:
          *(a1 + 1388) = 0;
          v8 = *(a1 + 8);
          if (v8)
          {
            if ((v8 & 7) == 0)
            {
              sub_10005B7F8(v8, 4u, 0);
              v9 = *(a1 + 8);
              if (v9)
              {
                if ((v9 & 7) == 0)
                {
                  sub_10005B7AC(v9, 4u, 0);
                  *(a1 + 1412) = 0;
                  sub_100097294(a1);
                  sub_100098028(*(a1 + 8), 0);
                  *(a1 + 1208) = 0;
                  v11 = qword_10012C768;
                  if (qword_10012C768)
                  {
                    if ((qword_10012C768 & 7) == 0)
                    {
                      v12 = v10;
LABEL_20:
                      pthread_mutex_unlock((v11 + 1224));
                      return v12;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_114;
        }

        goto LABEL_114;
      }

      if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
      {
        goto LABEL_114;
      }

      pthread_mutex_lock((qword_10012C768 + 1224));
      *(a1 + 1380) = 0;
      sub_1000651C8(*(a1 + 8));
      if (v17)
      {
        sub_1000651C8(*(a1 + 8));
        if (!v18 || (v18 & 7) != 0)
        {
          goto LABEL_114;
        }

        sub_1000629DC(v18, *(a1 + 1376));
        *(a1 + 1384) = 0;
      }

      v19 = *(a1 + 8);
      if (v19)
      {
        if ((v19 & 7) == 0)
        {
          sub_10005B7F8(v19, 4u, 0);
          v20 = *(a1 + 8);
          if (v20)
          {
            if ((v20 & 7) == 0)
            {
              sub_10005B7AC(v20, 4u, 0);
              *(a1 + 1412) = 0;
              *(a1 + 1216) = 1;
              *(a1 + 1208) = a4;
              if (qword_10012C768)
              {
                if ((qword_10012C768 & 7) == 0)
                {
                  pthread_mutex_unlock((qword_10012C768 + 1224));
                  v21 = sub_100048620();
                  if (v21)
                  {
                    if ((v21 & 7) == 0)
                    {
                      (*(*v21 + 160))(v21, 3600000);
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_114:
      __break(0x5516u);
      goto LABEL_115;
    }

    if ((a3 - 7) >= 2)
    {
      if (a3 == 6)
      {
        if (qword_10012C768)
        {
          if ((qword_10012C768 & 7) == 0)
          {
            pthread_mutex_lock((qword_10012C768 + 1224));
            v41 = *(a1 + 1192);
            if (v41)
            {
              if ((v41 & 7) == 0)
              {
                if ((*(*v41 + 96))(v41))
                {
                  v12 = sub_1000989C8(a1, 0);
                  *(a1 + 1388) = sub_100067278();
                }

                else
                {
                  v12 = 0;
                }

                v11 = qword_10012C768;
                if (qword_10012C768)
                {
                  if ((qword_10012C768 & 7) == 0)
                  {
                    goto LABEL_20;
                  }
                }
              }
            }
          }
        }

        goto LABEL_114;
      }

      if (a3 != 5)
      {
        return 0;
      }
    }

    if (!qword_10012C768)
    {
      goto LABEL_114;
    }

    if ((qword_10012C768 & 7) != 0)
    {
      goto LABEL_114;
    }

    pthread_mutex_lock((qword_10012C768 + 1224));
    v37 = *(a1 + 1192);
    if (!v37 || (v37 & 7) != 0)
    {
      goto LABEL_114;
    }

    if ((*(*v37 + 96))(v37))
    {
      sub_1000651C8(*(a1 + 8));
      if (v38)
      {
        sub_1000651C8(*(a1 + 8));
        if (!v39 || (v39 & 7) != 0)
        {
          goto LABEL_114;
        }

        sub_1000629DC(v39, *(a1 + 1376));
        *(a1 + 1384) = 0;
      }

      *(a1 + 1388) = 0;
    }

    goto LABEL_97;
  }

  if (a2 != 32)
  {
    if (a2 != 64)
    {
      if (a2 != 256)
      {
        goto LABEL_117;
      }

      if (a3 <= 3)
      {
        if (a3 >= 2)
        {
LABEL_115:
          __break(0x5518u);
          goto LABEL_116;
        }

        if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
        {
          goto LABEL_114;
        }

        pthread_mutex_lock((qword_10012C768 + 1224));
        if (v5)
        {
          goto LABEL_97;
        }

        v13 = *(a1 + 1220);
        if (v13 <= 1)
        {
          if (v13)
          {
            v14 = sub_100048620();
            if (!v14)
            {
              goto LABEL_114;
            }

            if ((v14 & 7) != 0)
            {
              goto LABEL_114;
            }

            (*(*v14 + 160))(v14, 3600000);
            v15 = sub_100048620();
            if (!v15 || (v15 & 7) != 0)
            {
              goto LABEL_114;
            }

            (*(*v15 + 168))(v15);
          }

LABEL_97:
          v36 = qword_10012C768;
          if (!qword_10012C768)
          {
            goto LABEL_114;
          }

          goto LABEL_98;
        }
      }

LABEL_116:
      __break(0x550Au);
LABEL_117:
      sub_1000E24C4();
    }

    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_114;
    }

    v22 = pthread_mutex_lock((qword_10012C768 + 1224));
    if (*(a1 + 1208))
    {
      v23 = sub_100065198(v22);
      if (!v23 || (v23 & 7) != 0)
      {
        goto LABEL_114;
      }

      v24 = sub_100058EBC(v23, *(a1 + 1208));
      if ((v24 + 8) >= 0x10)
      {
        goto LABEL_116;
      }

      v25 = v24;
      if (v24 >= 0xFFFFFFFE)
      {
        v26 = sub_100065198(v24);
        if (!v26 || (v26 & 7) != 0)
        {
          goto LABEL_114;
        }

        if ((sub_100092F68(v26, *(a1 + 1208)) & 3) != 0)
        {
          sub_100098028(*(a1 + 8), 0);
        }
      }

      v27 = sub_100046A8C();
      if (!v27 || (v27 & 7) != 0)
      {
        goto LABEL_114;
      }

      v28 = (*(*v27 + 80))(v27);
      if (v25 >= 4 && v28)
      {
        v29 = *(a1 + 1192);
        if (!v29 || (v29 & 7) != 0)
        {
          goto LABEL_114;
        }

        v30 = (*(*v29 + 96))(v29);
        if (v30)
        {
          v31 = sub_100065198(v30);
          if (!v31 || (v31 & 7) != 0 || !qword_10012C768 || (qword_10012C768 & 7) != 0)
          {
            goto LABEL_114;
          }

          if (sub_1000933B0(v31, *(qword_10012C768 + 1208)) != 56)
          {
            v32 = *(a1 + 8);
            if (!v32)
            {
              goto LABEL_114;
            }

            if ((v32 & 7) != 0)
            {
              goto LABEL_114;
            }

            v33 = sub_10005BC54(v32);
            if (!v33)
            {
              goto LABEL_114;
            }

            v34 = v33;
            if ((v33 & 7) != 0)
            {
              goto LABEL_114;
            }

            v35 = sub_1000BE5F8(v33 + 16);
            if (sub_1000BE5C0(v34 + 16))
            {
              if (v35 > 3)
              {
                goto LABEL_116;
              }

              if (!v35)
              {
                sub_1000BF678(v34 + 16);
              }
            }
          }
        }
      }
    }

    v36 = qword_10012C768;
    if (!qword_10012C768)
    {
      goto LABEL_114;
    }

LABEL_98:
    if ((v36 & 7) != 0)
    {
      goto LABEL_114;
    }

    pthread_mutex_unlock((v36 + 1224));
    return 0;
  }

  return sub_100099DA0(a1, 1);
}

uint64_t sub_1000989C8(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_220;
  }

  sub_1000651C8(*(a1 + 8));
  if (v4)
  {
    sub_1000651C8(*(a1 + 8));
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_220;
    }

    sub_1000629DC(v5, *(a1 + 1376));
    *(a1 + 1384) = 0;
  }

  v6 = &unk_10012C000;
  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_220;
  }

  v7 = *(qword_10012C768 + 1380);
  pthread_mutex_lock(&stru_10012B4B8);
  v8 = *(a1 + 1344);
  *(a1 + 1344) = 0;
  v9 = v7 & ~dword_10012B4B0 | v8;
  pthread_mutex_unlock(&stru_10012B4B8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 1296);
  if (v10 >= 8)
  {
    goto LABEL_221;
  }

  v69 = (a1 + 1300);
  v63 = *(a1 + 1300);
  if (v63 > 3)
  {
    goto LABEL_221;
  }

  v65 = *(a1 + 1332);
  if (v65 > 1)
  {
    goto LABEL_221;
  }

  v60 = *(a1 + 1333);
  if (v60 > 1)
  {
    goto LABEL_221;
  }

  v62 = *(a1 + 1334);
  if (v62 > 1)
  {
    goto LABEL_221;
  }

  v64 = *(a1 + 1288);
  v11 = (a1 + 1296);
  v68 = *(a1 + 1308);
  v66 = *(a1 + 1320);
  v58 = *(a1 + 1324);
  v59 = *(a1 + 1336);
  v56 = *(a1 + 1312);
  v57 = *(a1 + 1328);
  v61 = *(a1 + 1340);
  v12 = *(a1 + 1348);
  v13 = *(a1 + 1349);
  result = sub_10006547C(v69, (a1 + 1296));
  if (result > 0x1F)
  {
LABEL_221:
    __break(0x550Au);
  }

  if (result)
  {
    goto LABEL_219;
  }

  if (*v11 > 7)
  {
    goto LABEL_221;
  }

  v67 = v8 & 0x104;
  if (!*v11)
  {
    *(a1 + 1288) = -1;
    *v69 = xmmword_1000EFCE0;
    *(a1 + 1320) = -1;
    *(a1 + 1328) = -1;
    *(a1 + 1332) = 0;
    *(a1 + 1334) = 0;
    *(a1 + 1350) = 0;
    *(a1 + 1336) = 0;
    goto LABEL_58;
  }

  if ((v9 & 0xDE4) != 0)
  {
    v15 = *(a1 + 1200);
    if (!v15 || (v15 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v15 + 376))(v15);
    *(a1 + 1304) = result;
    v9 |= 0x100u;
  }

  if ((v9 & 0x1000) != 0)
  {
    v16 = *(a1 + 1200);
    if (!v16 || (v16 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v16 + 392))(v16);
    *(a1 + 1340) = result;
  }

  if ((v9 & 0xF8) != 0)
  {
    v17 = *(a1 + 1200);
    if (!v17 || (v17 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v17 + 408))(v17);
    *(a1 + 1308) = result;
    v18 = v68;
    if (v68 != result)
    {
      sub_1000DDEEC(6u, 4, "%s:%s-%d oldTrackTimeMs=%d, m_TrackTimeMs=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", "PlayStatusUpdateNoLock", 5951, v68, result);
      v18 = *(a1 + 1308);
    }

    *(a1 + 1312) = v18 / 0x3E8;
  }

  if ((v9 & 3) != 0)
  {
    v19 = *(a1 + 1200);
    if (!v19)
    {
      goto LABEL_220;
    }

    if ((v19 & 7) != 0)
    {
      goto LABEL_220;
    }

    *(a1 + 1332) = (*(*v19 + 440))(v19);
    v20 = *(a1 + 1200);
    if (!v20 || (v20 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v20 + 448))(v20);
    *(a1 + 1333) = result;
  }

  if ((v9 & 0xDE0) == 0)
  {
LABEL_58:
    if ((v9 & 0x2000) != 0)
    {
LABEL_71:
      v33 = *(a1 + 1200);
      if (!v33 || (v33 & 7) != 0)
      {
        goto LABEL_220;
      }

      result = (*(*v33 + 168))(v33);
      if (result >= 0x100)
      {
        goto LABEL_222;
      }

      *(a1 + 1348) = result;
      if ((v9 & 0x4000) != 0)
      {
LABEL_75:
        v34 = *(a1 + 1200);
        if (!v34 || (v34 & 7) != 0)
        {
          goto LABEL_220;
        }

        result = (*(*v34 + 136))(v34);
        if (result <= 0xFF)
        {
          *(a1 + 1349) = result;
          if (!a2)
          {
            goto LABEL_212;
          }

          goto LABEL_61;
        }

LABEL_222:
        __break(0x5507u);
        __break(0x5500u);
        goto LABEL_223;
      }

LABEL_60:
      if (!a2)
      {
        goto LABEL_212;
      }

LABEL_61:
      memset(v70, 170, 9);
      v30 = sub_100065198(result);
      if (!v30 || (v30 & 7) != 0)
      {
        goto LABEL_220;
      }

      result = sub_1000945E0(v30, *(a1 + 8));
      if (result)
      {
        v31 = v6[237];
        if (!v31 || (v31 & 7) != 0)
        {
          goto LABEL_220;
        }

        if ((*(v31 + 1380) & 1) == 0)
        {
          goto LABEL_95;
        }

        LOBYTE(v70[0]) = 17;
        if (*v11 > 7)
        {
          goto LABEL_221;
        }

        if (*v11)
        {
          if (*(a1 + 1332) > 1u)
          {
            goto LABEL_221;
          }

          if (v65 && !*(a1 + 1332))
          {
            v35 = 2;
LABEL_92:
            LOBYTE(v70[0]) = v35;
LABEL_93:
            if ((result & 7) == 0)
            {
              (*(*result + 16))(result, 0);
              sub_1000B748C();
            }

            goto LABEL_220;
          }

          if (*(a1 + 1333) > 1u)
          {
            goto LABEL_221;
          }

          if (v60 && !*(a1 + 1333))
          {
            v35 = 3;
            goto LABEL_92;
          }
        }

        else if (v10)
        {
          LOBYTE(v70[0]) = 0;
          goto LABEL_93;
        }

LABEL_95:
        if ((v31 & 7) != 0)
        {
          goto LABEL_220;
        }

        v36 = *v11;
        if ((*(v31 + 1380) & 2) != 0)
        {
          if (v36 > 7)
          {
            goto LABEL_221;
          }

          if (v36 != v10)
          {
            if (&vars0 != 103)
            {
              BYTE1(v70[0]) = 17;
              if (v36 <= 2)
              {
                if (v36)
                {
                  if (v36 == 1)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = 11;
                  }
                }

                else
                {
                  v37 = 2;
                }

                goto LABEL_123;
              }

              switch(v36)
              {
                case 3:
                  v37 = 5;
                  break;
                case 4:
                  v37 = 6;
                  break;
                case 5:
                  LOWORD(v70[0]) = 1798;
                  goto LABEL_133;
                default:
                  goto LABEL_137;
              }

LABEL_123:
              BYTE1(v70[0]) = v37;
              LOBYTE(v70[0]) = 6;
              v39 = *(a1 + 1332);
              if (v39 > 1)
              {
                goto LABEL_221;
              }

              if (v39)
              {
                if (*(a1 + 1333) > 1u)
                {
                  goto LABEL_221;
                }

                if (*(a1 + 1333) || ((v65 | v60) & 1) == 0)
                {
                  goto LABEL_133;
                }

LABEL_131:
                if ((result & 7) == 0)
                {
                  (*(*result + 16))(result, 0);
                  sub_1000B748C();
                }

                goto LABEL_220;
              }

              if (v65 & 1) != 0 || (v60)
              {
                goto LABEL_131;
              }

LABEL_133:
              if ((result & 7) == 0)
              {
                (*(*result + 16))(result, 0);
                sub_1000B748C();
              }

              goto LABEL_220;
            }

LABEL_223:
            __break(0x5513u);
            goto LABEL_224;
          }
        }

        else
        {
          v10 = *v11;
          if (v36 > 7)
          {
            goto LABEL_221;
          }
        }

        if (v10)
        {
LABEL_137:
          v40 = v6[237];
          if (!v40 || (v40 & 7) != 0)
          {
            goto LABEL_220;
          }

          if ((*(v40 + 1380) & 4) != 0 && (v8 & 0x104) != 0)
          {
            LOBYTE(v70[0]) = 1;
            *(v70 + 1) = bswap32(*(a1 + 1304));
            if ((result & 7) == 0)
            {
              (*(*result + 16))(result, 0);
              sub_1000B748C();
            }

            goto LABEL_220;
          }

          v41 = *(a1 + 1308);
          if (v41 != v68)
          {
            if ((v40 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v40 + 1380) & 8) != 0)
            {
              LOBYTE(v70[0]) = 4;
              *(v70 + 1) = bswap32(v41);
              if ((result & 7) == 0)
              {
                (*(*result + 16))(result, 0);
                sub_1000B748C();
              }

              goto LABEL_220;
            }

            if ((v40 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v40 + 1380) & 0x10) != 0)
            {
              v42 = *(a1 + 1312);
              if (v42 != v56)
              {
                LOBYTE(v70[0]) = 7;
                *(v70 + 1) = bswap32(v42);
                if ((result & 7) == 0)
                {
                  (*(*result + 16))(result, 0);
                  sub_1000B748C();
                }

                goto LABEL_220;
              }
            }
          }

          v43 = *(a1 + 1320);
          if (v43 != -1)
          {
            if ((v40 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v40 + 1380) & 0x20) != 0 && v43 != v66)
            {
              LOBYTE(v70[0]) = 5;
              *(v70 + 1) = bswap32(v43);
              if ((result & 7) == 0)
              {
                (*(*result + 16))(result, 0);
                sub_1000B748C();
              }

              goto LABEL_220;
            }

            if ((v40 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v40 + 1380) & 0x40) != 0)
            {
              v44 = *(a1 + 1324);
              if (v44 != v58)
              {
                LOBYTE(v70[0]) = 8;
                *(v70 + 1) = bswap32(v44);
                if ((result & 7) == 0)
                {
                  (*(*result + 16))(result, 0);
                  sub_1000B748C();
                }

                goto LABEL_220;
              }
            }

            if ((v40 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v40 + 1380) & 0x80) != 0)
            {
              v45 = *(a1 + 1328);
              if (v45 != v57)
              {
                LOBYTE(v70[0]) = 9;
                *(v70 + 1) = bswap32(v45);
                if ((result & 7) == 0)
                {
                  (*(*result + 16))(result, 0);
                  sub_1000B748C();
                }

                goto LABEL_220;
              }
            }
          }

          if ((v40 & 7) == 0)
          {
            if (*(v40 + 1381))
            {
              v46 = *(a1 + 1288);
              if (v46 != v64)
              {
                LOBYTE(v70[0]) = 10;
                *(v70 + 1) = bswap64(v46);
                if ((result & 7) == 0)
                {
                  (*(*result + 16))(result, 0);
                  sub_1000B748C();
                }

                goto LABEL_220;
              }
            }

            if ((v40 & 7) == 0)
            {
              if ((*(v40 + 1381) & 2) != 0)
              {
                v47 = *v69;
                if (*v69 > 3u)
                {
                  goto LABEL_221;
                }

                if (v47 != v63)
                {
                  LOBYTE(v70[0]) = 11;
                  if (&vars0 != 103)
                  {
                    BYTE1(v70[0]) = v47;
                    if ((result & 7) == 0)
                    {
                      (*(*result + 16))(result, 0);
                      sub_1000B748C();
                    }

                    goto LABEL_220;
                  }

                  goto LABEL_223;
                }
              }

              if ((v40 & 7) == 0)
              {
                if ((*(v40 + 1381) & 4) != 0)
                {
                  v48 = *(a1 + 1334);
                  if (v48 > 1)
                  {
                    goto LABEL_221;
                  }

                  if (v62 != 1 && (v48 & 1) != 0)
                  {
                    LOBYTE(v70[0]) = 12;
                    if ((result & 7) == 0)
                    {
                      (*(*result + 16))(result, 0);
                      sub_1000B748C();
                    }

                    goto LABEL_220;
                  }
                }

                if ((v40 & 7) == 0)
                {
                  if ((*(v40 + 1381) & 8) != 0)
                  {
                    v49 = *(a1 + 1336);
                    if ((v8 & 0x104) != 0 || v49 != v59)
                    {
                      LOBYTE(v70[0]) = 13;
                      *(v70 + 1) = bswap32(v49);
                      if ((result & 7) == 0)
                      {
                        (*(*result + 16))(result, 0);
                        sub_1000B748C();
                      }

                      goto LABEL_220;
                    }
                  }

                  if ((v40 & 7) == 0)
                  {
                    if ((*(v40 + 1381) & 0x10) != 0)
                    {
                      v50 = *(a1 + 1340);
                      if (v50 != v61 || (v8 & 0x1000) != 0)
                      {
                        LOBYTE(v70[0]) = 14;
                        *(v70 + 1) = bswap32(v50);
                        if ((result & 7) == 0)
                        {
                          (*(*result + 16))(result, 0);
                          sub_1000B748C();
                        }

                        goto LABEL_220;
                      }
                    }

                    if ((v40 & 7) == 0)
                    {
                      if ((*(v40 + 1381) & 0x20) != 0)
                      {
                        v51 = *(a1 + 1348);
                        if (v51 != v12)
                        {
                          LOBYTE(v70[0]) = 15;
                          if (&vars0 != 103)
                          {
                            BYTE1(v70[0]) = v51;
                            if ((result & 7) == 0)
                            {
                              (*(*result + 16))(result, 0);
                              sub_1000B748C();
                            }

                            goto LABEL_220;
                          }

                          goto LABEL_223;
                        }
                      }

                      if ((v40 & 7) == 0)
                      {
                        if ((*(v40 + 1381) & 0x40) == 0)
                        {
                          goto LABEL_212;
                        }

                        v52 = *(a1 + 1349);
                        if (v52 == v13)
                        {
                          goto LABEL_212;
                        }

                        LOBYTE(v70[0]) = 16;
                        if (&vars0 != 103)
                        {
                          BYTE1(v70[0]) = v52;
                          if ((result & 7) == 0)
                          {
                            (*(*result + 16))(result, 0);
                            sub_1000B748C();
                          }

                          goto LABEL_220;
                        }

                        goto LABEL_223;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_220:
          __break(0x5516u);
          goto LABEL_221;
        }

LABEL_212:
        v53 = *(a1 + 1384);
        if (v53 > 1)
        {
          goto LABEL_221;
        }

        if (v53)
        {
          return 0;
        }

        sub_1000651C8(*(a1 + 8));
        if (!v54)
        {
          return 0;
        }

        *(a1 + 1384) = 1;
        sub_1000651C8(*(a1 + 8));
        if (v55 && (v55 & 7) == 0)
        {
          sub_10006292C(v55, *(a1 + 1376));
          return 0;
        }

        goto LABEL_220;
      }

LABEL_219:
      __break(0x5518u);
      goto LABEL_220;
    }

LABEL_59:
    if ((v9 & 0x4000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_60;
  }

  v70[0] = 0xAAAAAAAAAAAAAAAALL;
  v21 = *(a1 + 1200);
  if (!v21 || (v21 & 7) != 0)
  {
    goto LABEL_220;
  }

  v22 = (*(*v21 + 384))(v21);
  v70[0] = v22;
  if (!v22)
  {
    goto LABEL_68;
  }

  v23 = v22;
  if ((v22 & 7) != 0)
  {
    goto LABEL_220;
  }

  if (!(*(*v22 + 16))(v22))
  {
LABEL_68:
    v32 = sub_10006547C(v69, (a1 + 1296));
    if (v32 > 0x1F)
    {
      goto LABEL_221;
    }

    if (v32)
    {
      goto LABEL_219;
    }

LABEL_70:
    result = sub_1000698F8(v70);
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_59;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 1288) = (*(*v23 + 24))(v23);
  }

  if ((v9 & 0xE0) == 0)
  {
LABEL_110:
    v38 = *(a1 + 1334);
    if (v38 > 1)
    {
      goto LABEL_221;
    }

    if ((v9 & 0x400) != 0 && (v38 & (v67 == 0)) == 0)
    {
      if ((v8 & 0x104) != 0)
      {
        *(a1 + 1334) = 0;
      }

      *(a1 + 1334) = (*(*v23 + 256))(v23);
    }

    if (((v67 != 0) & (v9 >> 11)) != 0 || (v8 & 0x800) != 0)
    {
      *(a1 + 1336) = sub_10009EC60(a1, 0x27u, v23);
    }

    goto LABEL_70;
  }

  if ((v8 & 0x104) != 0 || (v24 = *(a1 + 1316), v24 == -1))
  {
    v24 = (*(*v23 + 368))(v23);
  }

  if (!v24)
  {
    *(a1 + 1316) = 0xFFFFFFFF00000000;
    v29 = -1;
    *(a1 + 1324) = -1;
    goto LABEL_109;
  }

  *(a1 + 1316) = v24;
  v25 = *(a1 + 1200);
  if (!v25 || (v25 & 7) != 0)
  {
    goto LABEL_220;
  }

  v26 = (*(*v25 + 208))(v25);
  *(a1 + 1320) = v26;
  v27 = *(a1 + 1308);
  result = (*(*v23 + 376))(v23, v26);
  v28 = v27 - result;
  if (v27 >= result)
  {
    *(a1 + 1324) = v28;
    v29 = v28 / 0x3E8;
    v6 = &unk_10012C000;
LABEL_109:
    *(a1 + 1328) = v29;
    goto LABEL_110;
  }

LABEL_224:
  __break(0x5515u);
  return result;
}