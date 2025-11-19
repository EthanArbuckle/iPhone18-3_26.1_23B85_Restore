uint64_t sub_10006D1F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 4;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006D210(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = (*(*result + 392))(result);
  if (result >= 0x100)
  {
LABEL_11:
    __break(0x5507u);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = *a2;
  if (!__CFADD__(a2 + 1, v3))
  {
    a2[v3 + 1] = result;
    if (v3 != 255)
    {
      *a2 = v3 + 1;
      return 0;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x5513u);
  return result;
}

uint64_t sub_10006D2B8(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0 || (result = sub_10004B1AC()) == 0 || (result & 7) != 0 || (result = (*(*result + 168))(result), !a2))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  v3 = *a2;
  if (__CFADD__(a2 + 1, v3))
  {
LABEL_10:
    __break(0x5513u);
    goto LABEL_11;
  }

  a2[v3 + 1] = result;
  if (v3 != 255)
  {
    *a2 = v3 + 1;
    return 0;
  }

LABEL_11:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D350(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 1192)) != 0 ? (v2 = (result & 7) == 0) : (v2 = 0), !v2 || (result = (*(*result + 264))(result), !a2)))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  v4 = *a2;
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_13:
    __break(0x5513u);
    goto LABEL_14;
  }

  a2[v4 + 1] = result;
  if (v4 != 255)
  {
    *a2 = v4 + 1;
    return 0;
  }

LABEL_14:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D3F4(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 184))(result);
  if (result >= 0x100)
  {
LABEL_14:
    __break(0x550Au);
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v4 = *a2;
  if (__CFADD__(a2 + 1, v4))
  {
LABEL_15:
    __break(0x5513u);
    goto LABEL_16;
  }

  a2[v4 + 1] = result;
  if (v4 != 255)
  {
    *a2 = v4 + 1;
    return 0;
  }

LABEL_16:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D49C(uint64_t result, _BYTE *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v2 = *(result + 2768);
  if (v2 >> 19 >= 0x7D)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = v2 / 0x3E8;
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_12:
    __break(0x5516u);
LABEL_13:
    __break(0x5507u);
    goto LABEL_14;
  }

  v4 = *a2;
  v5 = &a2[v4 + 1];
  if (!__CFADD__(a2 + 1, v4))
  {
    if (v5)
    {
      *v5 = bswap32(v3) >> 16;
      if (v4 <= 0xFD)
      {
        *a2 = v4 + 2;
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(0x5500u);
  return result;
}

uint64_t sub_10006D51C(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_1000945E0(result, *(v2 + 8));
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  v4 = result;
  result = sub_100045A94();
  if (!result)
  {
    goto LABEL_35;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  v6 = (*(*result + 120))(result, v4);
  v7 = sub_10007D6FC(*(v2 + 8));
  v8 = v7;
  result = sub_100065198(v7);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_1000933B0(result, v4);
  if (result == 56)
  {
    v9 = *(v2 + 2756);
    if (v9 > 1)
    {
      goto LABEL_38;
    }

    if (v8 & 0x800) == 0 && (v9)
    {
      return 2;
    }
  }

  v10 = *(v2 + 2756);
  if (v10 <= 1)
  {
    if (result != 56 && (v10 & 1) != 0)
    {
      result = *(v2 + 8);
      if (!result)
      {
        goto LABEL_35;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_35;
      }

      result = sub_10005BC54(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_35;
      }

      sub_1000C1FF4(result + 1008, 1);
    }

    if (v6)
    {
      v11 = 0;
      result = 0;
    }

    else
    {
      v12 = (*(*v5 + 104))(v5, v4);
      v11 = sub_100073130(v2, v12, 1);
      result = sub_100073130(v2, v12, 0);
    }

    if (a2)
    {
      v13 = a2 + 1;
      v14 = *a2;
      v15 = ~(a2 + 1);
      if (v15 >= v14)
      {
        v13[v14] = v6;
        if (v14 == 255)
        {
          goto LABEL_37;
        }

        v16 = v14 + 1;
        v17 = (v14 + 1);
        *a2 = v16;
        if (v17 <= v15)
        {
          v13[v17] = result;
          if (v16 != 0xFF)
          {
            v18 = v17 + 1;
            v19 = (v17 + 1);
            *a2 = v18;
            if (v19 <= v15)
            {
              v13[v19] = v11;
              if (v18 != 255)
              {
                result = 0;
                *a2 = v18 + 1;
                return result;
              }

              goto LABEL_37;
            }

            goto LABEL_36;
          }

LABEL_37:
          __break(0x5507u);
          goto LABEL_38;
        }
      }

LABEL_36:
      __break(0x5513u);
      goto LABEL_37;
    }

LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

LABEL_38:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006D73C(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if ((*(*result + 464))(result))
  {
    result = 0;
  }

  else
  {
    result = *(v2 + 1192);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_19;
    }

    result = (*(*result + 392))(result);
    if (result)
    {
      v5 = *(v2 + 2764);
      result = sub_1000732B0(v2);
    }
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = *a2;
  v7 = &a2[v6 + 1];
  if (__CFADD__(a2 + 1, v6))
  {
LABEL_20:
    __break(0x5500u);
    goto LABEL_21;
  }

  if (!v7)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  *v7 = bswap32(result);
  if (v6 < 0xFC)
  {
    *a2 = v6 + 4;
    return 0;
  }

LABEL_21:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006D844(uint64_t result, unsigned __int8 *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  if ((result + 1280) >= 0xFFFFFFFFFFFFFE50)
  {
LABEL_30:
    __break(0x5513u);
    goto LABEL_31;
  }

  v2 = *(result + 1720);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *v2;
  v4 = __CFADD__(v2, 4);
  v5 = (v2 + 1);
  if (v4)
  {
    goto LABEL_28;
  }

  v6 = *v5;
  v7 = *(result + 2760);
  if (v7 < 8)
  {
    if (v7)
    {
      result = *(result + 1192);
      if (!result)
      {
        goto LABEL_27;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_27;
      }

      v9 = bswap32(v3);
      result = (*(*result + 392))(result);
      v10 = v9 != result;
      if (!a2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      result = 0;
      if (!a2)
      {
        goto LABEL_27;
      }
    }

    v12 = a2 + 1;
    v11 = *a2;
    v13 = &a2[v11 + 1];
    if (!__CFADD__(a2 + 1, v11))
    {
      if (!v13)
      {
        goto LABEL_27;
      }

      *v13 = bswap32(result);
      if (v11 >= 0xFC)
      {
LABEL_29:
        __break(0x5507u);
        goto LABEL_30;
      }

      v14 = v11 + 4;
      *a2 = v14;
      v4 = __CFADD__(v12, v14);
      v15 = &v12[v14];
      v16 = v4;
      if (v10)
      {
        if (!v16)
        {
          if (v15)
          {
            v6 ^= 0x400u;
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }

      else if (!v16)
      {
        if (v15)
        {
LABEL_25:
          *v15 = v6;
          if (v14 <= 0xFBu)
          {
            *a2 = v14 + 4;
            return 0;
          }

          goto LABEL_29;
        }

LABEL_27:
        __break(0x5516u);
      }
    }

LABEL_28:
    __break(0x5500u);
    goto LABEL_29;
  }

LABEL_31:
  __break(0x550Au);
  return result;
}

uint64_t sub_10006D98C(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_41;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  result = *(result + 1192);
  v4 = result && (result & 7) == 0;
  v5 = !v4 || a2 == 0;
  if (v5 || (a2 & 7) != 0)
  {
    goto LABEL_41;
  }

  result = (*(*result + 400))(result, *a2);
  v20 = result;
  if (!result)
  {
    goto LABEL_20;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  if (!(*(*result + 16))(result))
  {
LABEL_20:
    v10 = 2;
LABEL_40:
    sub_1000698F8(&v20);
    return v10;
  }

  v8 = (*(*v7 + 128))(v7);
  v9 = (*(*v7 + 368))(v7);
  if (v8 == -1)
  {
    if (dword_10012B490)
    {
      v8 = 0;
    }

    else if (dword_10012B494)
    {
      v8 = 0x7FFFFFFF;
    }

    else if (dword_10012B498)
    {
      v8 = 300000;
    }

    else if (dword_10012B49C)
    {
      v8 = 86400000;
    }

    else if (dword_10012B4A0)
    {
      v8 = 3600000;
    }

    else
    {
      v8 = -1;
    }
  }

  v11 = *a2;
  result = sub_1000732B0(v2);
  v12 = a2 + 7;
  v13 = *(a2 + 6);
  v14 = (a2 + v13 + 7);
  if (__CFADD__(a2 + 7, v13))
  {
    goto LABEL_42;
  }

  if (!v14)
  {
    goto LABEL_41;
  }

  *v14 = bswap32(result);
  if (v13 >= 0xFC)
  {
    goto LABEL_43;
  }

  v15 = v13 + 4;
  *(a2 + 6) = v15;
  v16 = &v12[v15];
  if (__CFADD__(v12, v15))
  {
LABEL_42:
    __break(0x5500u);
    goto LABEL_43;
  }

  if (!v16)
  {
LABEL_41:
    __break(0x5516u);
    goto LABEL_42;
  }

  *v16 = bswap32(v8);
  if (v15 > 0xFBu)
  {
    goto LABEL_43;
  }

  v17 = v15 + 4;
  *(a2 + 6) = v17;
  v18 = __CFADD__(v12, v17);
  v19 = &v12[v17];
  if (v18)
  {
    goto LABEL_42;
  }

  if (!v19)
  {
    goto LABEL_41;
  }

  *v19 = bswap32(v9) >> 16;
  if (v17 <= 0xFDu)
  {
    v10 = 0;
    *(a2 + 6) = v17 + 2;
    goto LABEL_40;
  }

LABEL_43:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006DBFC(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_30;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_30;
  }

  result = (*(*result + 400))(result, *a2);
  v12 = result;
  if (!result)
  {
    goto LABEL_24;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (!(*(*result + 16))(result) || (*(*v6 + 368))(v6) <= *(a2 + 2))
  {
LABEL_24:
    v10 = 4;
    goto LABEL_25;
  }

  result = (*(*v6 + 376))(v6);
  v7 = a2 + 7;
  v8 = *(a2 + 6);
  v9 = (a2 + v8 + 7);
  if (__CFADD__(a2 + 7, v8))
  {
LABEL_31:
    __break(0x5500u);
    goto LABEL_32;
  }

  if (!v9)
  {
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  *v9 = bswap32(result);
  if (v8 >= 0xFC)
  {
LABEL_32:
    __break(0x5507u);
    goto LABEL_33;
  }

  *(a2 + 6) = v8 + 4;
  result = (*(*v6 + 384))(v6, *(a2 + 2), a2 + 10);
  if ((*(a2 + 63) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 6))
    {
      goto LABEL_23;
    }
  }

  else if (*(a2 + 63))
  {
LABEL_23:
    v10 = 0;
LABEL_25:
    sub_1000698F8(&v12);
    return v10;
  }

  v11 = *(a2 + 6);
  if (v11 >= 0x21)
  {
LABEL_33:
    __break(0x5512u);
    goto LABEL_34;
  }

  if (!__CFADD__(v7, v11))
  {
    v10 = 0;
    v7[v11] = 0;
    *(a2 + 6) = v11 + 1;
    goto LABEL_25;
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

uint64_t sub_10006DE00(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 48))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006DF0C(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 40))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E018(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 56))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E124(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 32))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E230(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = *(result + 1192);
  v3 = result && (result & 7) == 0;
  v4 = !v3 || a2 == 0;
  if (v4 || (a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  result = (*(*result + 400))(result, *a2);
  v8 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  v6 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      (*(*v6 + 64))(v6, a2 + 10);
      v7 = 0;
LABEL_19:
      sub_1000698F8(&v8);
      return v7;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_19;
  }

LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_10006E33C(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_34;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_34;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_34;
  }

  v5 = (*(*result + 376))(result);
  result = *(v2 + 1192);
  if (!result)
  {
    goto LABEL_34;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_34;
  }

  v6 = (*(*result + 392))(result);
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_34;
  }

  result = (*(*result + 400))(result, *a2);
  v16 = result;
  if (!result)
  {
LABEL_28:
    v15 = 2;
    goto LABEL_29;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
LABEL_34:
    __break(0x5516u);
    goto LABEL_35;
  }

  result = (*(*result + 16))(result);
  if (!result)
  {
    goto LABEL_28;
  }

  v8 = *a2;
  if (*a2 >= v6)
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 6);
  if (v9 == 255)
  {
    goto LABEL_37;
  }

  v10 = v9 + 1;
  *(a2 + 6) = v9 + 1;
  if (v9 >= 0x21)
  {
    goto LABEL_35;
  }

  v11 = a2 + 7;
  v12 = ~(a2 + 7);
  if (v12 < v9)
  {
LABEL_36:
    __break(0x5513u);
    goto LABEL_37;
  }

  v11[v9] = 0;
  v13 = v9 + 2;
  *(a2 + 6) = v9 + 2;
  if (v9 == 32)
  {
LABEL_35:
    __break(0x5512u);
    goto LABEL_36;
  }

  if (v12 < v10)
  {
    goto LABEL_36;
  }

  v11[v10] = 0;
  v14 = v9 + 3;
  *(a2 + 6) = v9 + 3;
  if (v9 > 0x1E)
  {
    goto LABEL_35;
  }

  if (v12 < v13)
  {
    goto LABEL_36;
  }

  v11[v13] = 0;
  if (v5 != v8)
  {
    goto LABEL_31;
  }

  result = (*(*v7 + 256))(v7);
  if (result)
  {
    (*(*v7 + 96))(v7, a2 + 10);
    v15 = 0;
LABEL_29:
    sub_1000698F8(&v16);
    return v15;
  }

  v14 = *(a2 + 6);
  if (v14 != 255)
  {
LABEL_31:
    *(a2 + 6) = v14 + 1;
    if (v14 <= 0x20)
    {
      if (v12 >= v14)
      {
        v15 = 0;
        v11[v14] = 0;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(0x5507u);
  return result;
}

uint64_t sub_10006E5C8(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = *(result + 1192);
  v4 = result && (result & 7) == 0;
  v5 = !v4 || a2 == 0;
  if (v5 || (a2 & 7) != 0)
  {
    goto LABEL_21;
  }

  result = (*(*result + 400))(result, *a2);
  v10 = result;
  if (!result)
  {
    goto LABEL_19;
  }

  v7 = result;
  if ((result & 7) == 0)
  {
    if ((*(*result + 16))(result))
    {
      sub_100066D40(v2, v7, a2 + 7, 0x21u, a2 + 6);
      v9 = v8;
      if (v8 < 0x20)
      {
LABEL_20:
        sub_1000698F8(&v10);
        return v9;
      }

      __break(0x550Au);
    }

LABEL_19:
    v9 = 4;
    goto LABEL_20;
  }

LABEL_21:
  __break(0x5516u);
  return result;
}

void sub_10006E6D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10006B7E4(a1, a2);
  }
}

void sub_10006E6E8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  *a1 = off_100115E78;
  v2 = sub_10004B1AC();
  if (!v2)
  {
    goto LABEL_32;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_32;
  }

  (*(*v2 + 24))(v2, a1);
  v3 = sub_100045A94();
  if (!v3)
  {
    goto LABEL_32;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_32;
  }

  (*(*v3 + 24))(v3, a1);
  v4 = *(a1 + 1192);
  if (!v4 || (v4 & 7) != 0 || ((*(*v4 + 24))(v4, a1), sub_1000651C8(*(a1 + 8)), !v5) || (v5 & 7) != 0 || (sub_1000629DC(v5, *(a1 + 2744)), sub_1000651C8(*(a1 + 8)), !v6) || (v6 & 7) != 0 || (v7 = sub_100060C50(v6, *(a1 + 2744)), *(a1 + 2744) = -1, (v8 = sub_100065198(v7)) == 0) || (v8 & 7) != 0)
  {
LABEL_32:
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v8, 3, 0, *(a1 + 8));
    v9 = 0;
    *(a1 + 2216) = 0u;
    *(a1 + 2232) = 0u;
    *(a1 + 2184) = 0u;
    *(a1 + 2200) = 0u;
    *(a1 + 2152) = 0u;
    *(a1 + 2168) = 0u;
    *(a1 + 2120) = 0u;
    *(a1 + 2136) = 0u;
    *(a1 + 2088) = 0u;
    *(a1 + 2104) = 0u;
    *(a1 + 2056) = 0u;
    *(a1 + 2072) = 0u;
    *(a1 + 2024) = 0u;
    *(a1 + 2040) = 0u;
    *(a1 + 1992) = 0u;
    *(a1 + 2008) = 0u;
    *(a1 + 1960) = 0u;
    *(a1 + 1976) = 0u;
    *(a1 + 1928) = 0u;
    *(a1 + 1944) = 0u;
    *(a1 + 1896) = 0u;
    *(a1 + 1912) = 0u;
    *(a1 + 1864) = 0u;
    *(a1 + 1880) = 0u;
    *(a1 + 1832) = 0u;
    *(a1 + 1848) = 0u;
    *(a1 + 1800) = 0u;
    *(a1 + 1816) = 0u;
    *(a1 + 2248) = 0;
    do
    {
      if (v9 > ~(a1 + 1800))
      {
        __break(0x5513u);
        goto LABEL_32;
      }

      *(a1 + v9 + 1808) = 0;
      v9 += 24;
    }

    while (v9 != 456);
    if (*(a1 + 2903) < 0)
    {
      operator delete(*(a1 + 2880));
    }

    if (*(a1 + 2879) < 0)
    {
      operator delete(*(a1 + 2856));
    }

    if (*(a1 + 2855) < 0)
    {
      operator delete(*(a1 + 2832));
    }

    if (*(a1 + 2831) < 0)
    {
      operator delete(*(a1 + 2808));
    }

    if (*(a1 + 2807) < 0)
    {
      operator delete(*(a1 + 2784));
    }

    sub_10006522C(a1);
  }
}

void sub_10006E90C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10006E6E8(a1);
  }
}

uint64_t sub_10006E920(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10006E6E8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10006E968(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_160;
  }

  if (*(a1 + 8))
  {
    v4 = sub_100065198(a1);
    if (!v4 || (v4 & 7) != 0)
    {
      goto LABEL_160;
    }

    if (sub_100094BFC(v4, *(a1 + 8)))
    {
      v5 = *(a1 + 8);
      if (!v5 || (v5 & 7) != 0)
      {
        goto LABEL_160;
      }

      if (sub_10005ACA0(v5))
      {
        return 89;
      }

      if (!a2 || (a2 & 7) != 0)
      {
        goto LABEL_160;
      }

      v7 = *(a2 + 8);
      v8 = *(a2 + 126);
      v9 = *(a2 + 128);
      v10 = *(a2 + 24);
      memset(v70, 170, 21);
      if (!v7)
      {
        sub_1000E1D34();
      }

      if (v9 && !v10)
      {
LABEL_164:
        sub_1000E1D34();
      }

      if (*(a1 + 2748) >= 2u)
      {
        goto LABEL_162;
      }

      if (!*(a1 + 2748))
      {
        v11 = *(a1 + 2752);
        if (v11 > 0xF)
        {
          goto LABEL_162;
        }

        if (v11 == 6)
        {
          *(a1 + 2748) = 1;
          sub_1000651C8(*(a1 + 8));
          if (v12)
          {
            sub_1000651C8(*(a1 + 8));
            if (!v13 || (v13 & 7) != 0)
            {
              goto LABEL_160;
            }

            sub_10006292C(v13, *(a1 + 2744));
          }
        }
      }

      if (sub_1000D6C34(v7, 3) >= 0x10000)
      {
LABEL_163:
        __break(0x5507u);
        goto LABEL_164;
      }

      switch(v8)
      {
        case 1:
        case 3:
        case 4:
        case 6:
          LODWORD(v66) = -1431655766;
          v15 = *(a1 + 1192);
          if (!v15)
          {
            goto LABEL_160;
          }

          if ((v15 & 7) != 0)
          {
            goto LABEL_160;
          }

          v16 = (*(*v15 + 240))(v15);
          v17 = *(a1 + 1192);
          if (!v17 || (v17 & 7) != 0)
          {
            goto LABEL_160;
          }

          v18 = (*(*v17 + 544))(v17);
          if (v8 == 1 && !v9)
          {
            LODWORD(v66) = bswap32(v16);
            v19 = *(a2 + 68);
            v20 = 4;
            v21 = &v66;
            v22 = a2;
            v23 = v7;
            v24 = 2;
LABEL_35:
            v25 = 4;
LABEL_36:
            sub_1000B7DB4(v22, v23, 0, 3, v24, v19, v21, v25);
            goto LABEL_119;
          }

          if (v8 != 3 || v9 != 5)
          {
            if (v8 != 4 || v9)
            {
              v20 = 4;
              if (v8 == 6 && v9 == 4)
              {
                if (!v10)
                {
                  goto LABEL_160;
                }

                if (bswap32(*v10) < v18)
                {
                  v68 = 0uLL;
                  v69 = 0;
                  v65 = *(a1 + 1192);
                  if (!v65 || (v65 & 7) != 0)
                  {
                    goto LABEL_160;
                  }

                  (*(*v65 + 552))(v65);
                  if ((SHIBYTE(v69) & 0x80000000) == 0)
                  {
                    operator new[]();
                  }

                  operator delete(0);
                }

                v20 = 2;
              }

              goto LABEL_119;
            }

            LODWORD(v66) = bswap32(v18);
            v19 = *(a2 + 68);
            v20 = 4;
            v21 = &v66;
            v22 = a2;
            v23 = v7;
            v24 = 5;
            goto LABEL_35;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          v26 = bswap32(*v10);
          if (v26 >= v18)
          {
LABEL_118:
            v20 = 4;
LABEL_119:
            if (*(a2 + 126) != v8)
            {
LABEL_122:
              v62 = *(a1 + 8);
              if (v62 && *(a2 + 8))
              {
                return sub_1000B6DB4(v62, a2, 0, 1u);
              }

              v63 = *(a2 + 8);
              if (v63 && (v63 & 7) == 0)
              {
                v64 = (*(*v63 + 200))(v63);
                if ((*(a2 + 64) + 32) < 0x40)
                {
                  sub_1000DDEEC(0, 4, "%s:%d handle=%hhx devPort=%s lingo=%d cmd=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDisplayRemote.cpp", 904, v62, v64, *(a2 + 64), *(a2 + 126));
                  v62 = *(a1 + 8);
                  return sub_1000B6DB4(v62, a2, 0, 1u);
                }

                goto LABEL_162;
              }

LABEL_160:
              __break(0x5516u);
            }

            if (v20 <= 0x1F)
            {
              v61 = *(a2 + 68);
              sub_1000B7854(a2);
              goto LABEL_122;
            }

LABEL_162:
            __break(0x550Au);
            goto LABEL_163;
          }

          if (v26 == v16)
          {
            goto LABEL_159;
          }

          if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_166;
          }

          sub_10006F618(a1, v26, *(v10 + 4), v7);
          goto LABEL_159;
        case 8:
          if (v9 != 4)
          {
            goto LABEL_118;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          v41 = bswap32(*v10);
          *(a1 + 2756) = 1;
          sub_10006F784(a1, v7, v41);
          *(a1 + 2756) = 0;
          v20 = 4 * (v42 != 0);
          goto LABEL_119;
        case 10:
          if (v9)
          {
            goto LABEL_118;
          }

          LODWORD(v68) = -1431655766;
          sub_10006F8F0(a1, ~*(a1 + 1208) & 0x7FFFF, 0);
          v33 = *(a1 + 1212);
          LODWORD(v68) = bswap32(v33);
          v20 = 4;
          sub_1000B7DB4(a2, v7, 0, 3, 11, *(a2 + 68), &v68, 4u);
          *(a1 + 1212) &= ~v33;
          goto LABEL_119;
        case 12:
          if (v9 != 1)
          {
            goto LABEL_118;
          }

          *(a1 + 2756) = 1;
          v20 = sub_10006FE00(a1, a2);
          *(a1 + 2756) = 0;
          goto LABEL_119;
        case 14:
          if (v9 < 2)
          {
            goto LABEL_118;
          }

          v27 = sub_100070108(a1, a2, v14);
          goto LABEL_84;
        case 15:
          if (v9)
          {
            goto LABEL_118;
          }

          *(&v68 + 5) = 0xAAAAAAAAAAAAAAAALL;
          v67 = 0;
          *&v68 = 0xAAAAAAAAAAAAAAAALL;
          v43 = sub_10006547C(&v67 + 1, &v67);
          if (v43 > 0x1F)
          {
            goto LABEL_162;
          }

          if (v43)
          {
            __break(0x5518u);
            goto LABEL_162;
          }

          if (v67 > 7)
          {
            goto LABEL_162;
          }

          LOBYTE(v68) = v67;
          if (!v67)
          {
            v45 = -1;
            v50 = -1;
            v47 = -1;
LABEL_156:
            *(&v68 + 1) = bswap32(v45);
            *(&v68 + 5) = bswap32(v50);
            if (&v68 >= 0xFFFFFFFFFFFFFFF7)
            {
LABEL_165:
              __break(0x5500u);
LABEL_166:
              __break(0x5513u);
              JUMPOUT(0x10006F590);
            }

            *(&v68 + 9) = bswap32(v47);
            v35 = *(a2 + 68);
            v37 = &v68;
            v38 = a2;
            v39 = v7;
            v40 = 16;
            v36 = 13;
LABEL_158:
            sub_1000B7DB4(v38, v39, 0, 3, v40, v35, v37, v36);
LABEL_159:
            v20 = 0;
            goto LABEL_119;
          }

          v44 = *(a1 + 1192);
          if (!v44)
          {
            goto LABEL_160;
          }

          if ((v44 & 7) != 0)
          {
            goto LABEL_160;
          }

          v45 = (*(*v44 + 376))(v44);
          v46 = *(a1 + 1192);
          if (!v46)
          {
            goto LABEL_160;
          }

          if ((v46 & 7) != 0)
          {
            goto LABEL_160;
          }

          v47 = (*(*v46 + 408))(v46);
          v66 = 0xAAAAAAAAAAAAAAAALL;
          v48 = *(a1 + 1192);
          if (!v48 || (v48 & 7) != 0)
          {
            goto LABEL_160;
          }

          v49 = (*(*v48 + 384))(v48);
          v66 = v49;
          if (!v49)
          {
            goto LABEL_140;
          }

          if ((v49 & 7) != 0)
          {
            goto LABEL_160;
          }

          if ((*(*v49 + 16))(v49))
          {
            if (!v66 || (v66 & 7) != 0)
            {
              goto LABEL_160;
            }

            v50 = (*(*v66 + 128))();
            if (v50 != -1)
            {
              goto LABEL_155;
            }
          }

          else
          {
LABEL_140:
            LODWORD(v67) = 0;
            v45 = -1;
          }

          if (dword_10012B490)
          {
            v50 = 0;
          }

          else if (dword_10012B494)
          {
            v50 = 0x7FFFFFFF;
          }

          else if (dword_10012B498)
          {
            v50 = 300000;
          }

          else if (dword_10012B49C)
          {
            v50 = 86400000;
          }

          else if (dword_10012B4A0)
          {
            v50 = 3600000;
          }

          else
          {
            v50 = -1;
          }

LABEL_155:
          sub_1000698F8(&v66);
          goto LABEL_156;
        case 17:
          if (v9 != 4)
          {
            goto LABEL_118;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          v27 = sub_100070770(a1, bswap32(*v10));
LABEL_84:
          v20 = v27;
          goto LABEL_119;
        case 18:
          if (v9 != 7)
          {
            goto LABEL_118;
          }

          v27 = sub_100070B60(a1, a2);
          if (*(a2 + 8))
          {
            goto LABEL_84;
          }

          sub_1000B9034(a2);
          return 2;
        case 20:
          if (v9)
          {
            goto LABEL_118;
          }

          LODWORD(v68) = -1431655766;
          v34 = *(a1 + 1192);
          if (!v34 || (v34 & 7) != 0)
          {
            goto LABEL_160;
          }

          LODWORD(v68) = bswap32((*(*v34 + 392))(v34));
          v19 = *(a2 + 68);
          v20 = 4;
          v21 = &v68;
          v22 = a2;
          v23 = v7;
          v24 = 21;
          goto LABEL_35;
        case 22:
          if (v9)
          {
            goto LABEL_118;
          }

          v27 = sub_100065838(a1);
          goto LABEL_84;
        case 24:
          if (v9 != 10)
          {
            goto LABEL_118;
          }

          v28 = *(a1 + 1192);
          if (!v28 || (v28 & 7) != 0)
          {
            goto LABEL_160;
          }

          if ((*(*v28 + 464))(v28))
          {
            goto LABEL_118;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          v29 = *v10;
          if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_165;
          }

          v30 = *(v10 + 2);
          if (v10 >= 0xFFFFFFFFFFFFFFFALL)
          {
            goto LABEL_165;
          }

          v31 = *(v10 + 6);
          v32 = sub_100066C08(a1);
          if (v32 > 0x1F)
          {
            goto LABEL_162;
          }

          v20 = v32;
          result = 2;
          if (v20 && v20 != 6)
          {
            goto LABEL_119;
          }

          return result;
        case 26:
          if (v9)
          {
            goto LABEL_118;
          }

          LOBYTE(v70[0]) = 0;
          v20 = sub_10006CC34(a1, v70);
          if (v20)
          {
            goto LABEL_119;
          }

          v19 = *(a2 + 68);
          v25 = LOBYTE(v70[0]);
          v21 = (v70 + 1);
          v22 = a2;
          v23 = v7;
          v24 = 27;
          goto LABEL_36;
        case 28:
          if (v9)
          {
            goto LABEL_118;
          }

          LOBYTE(v70[0]) = 0;
          sub_10006D350(a1, v70);
          v35 = *(a2 + 68);
          v36 = LOBYTE(v70[0]);
          v37 = v70 + 1;
          v38 = a2;
          v39 = v7;
          v40 = 29;
          goto LABEL_158;
        case 30:
          if (v9 != 2)
          {
            goto LABEL_118;
          }

          if (v10 == -1)
          {
            goto LABEL_166;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          sub_1000712C0(a1, *v10, *(v10 + 1), v7);
          goto LABEL_159;
        case 31:
          if (v9 != 10)
          {
            goto LABEL_118;
          }

          v51 = *(a1 + 1192);
          if (!v51 || (v51 & 7) != 0)
          {
            goto LABEL_160;
          }

          if ((*(*v51 + 464))(v51))
          {
            goto LABEL_118;
          }

          if (!v10)
          {
            goto LABEL_160;
          }

          v52 = *v10;
          if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_165;
          }

          v53 = *(v10 + 2);
          if (v10 >= 0xFFFFFFFFFFFFFFFALL)
          {
            goto LABEL_165;
          }

          v54 = *(v10 + 3);
          if (v10 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_165;
          }

          v55 = *(v10 + 4);
          *&v68 = 0xAAAAAAAAAAAAAAAALL;
          v56 = *(a1 + 1192);
          if (!v56 || (v56 & 7) != 0)
          {
            goto LABEL_160;
          }

          v57 = bswap32(v52);
          v58 = bswap32(v53) >> 16;
          v59 = bswap32(v54) >> 16;
          v60 = __rev16(v55);
          *&v68 = (*(*v56 + 400))(v56, v57);
          v20 = sub_100065B04(a1, a2, 1u, v57, v68, v58, v59, v60);
          sub_1000698F8(&v68);
          goto LABEL_119;
        case 33:
          v27 = sub_100067CD8(a1, a2);
          goto LABEL_84;
        case 34:
          v27 = sub_100067F74(a1, a2);
          goto LABEL_84;
        default:
          v20 = 4;
          sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoDisplayRemote::ProcessCmd invalid cmd: 0x%08X !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoDisplayRemote.cpp", 877, v8);
          goto LABEL_119;
      }
    }
  }

  return 89;
}

uint64_t sub_10006F618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if ((*(*result + 544))(result) <= a2)
  {
    return 4;
  }

  result = *(v4 + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = (*(*result + 240))(result);
  if (!a3)
  {
    if ((v4 + 1800) >= 0xFFFFFFFFFFFFFF70)
    {
      goto LABEL_26;
    }

    *&v9 = 0;
    *(v4 + 1952) = v9;
    *(v4 + 1944) = 0;
LABEL_20:
    if (result == a2)
    {
      return 0;
    }

    result = *(v4 + 1192);
    if (result && (result & 7) == 0)
    {
      (*(*result + 232))(result, a2);
      return 0;
    }

    goto LABEL_25;
  }

  if (!a4)
  {
    goto LABEL_20;
  }

  if ((v4 + 1800) >= 0xFFFFFFFFFFFFFF70)
  {
LABEL_26:
    __break(0x5513u);
    goto LABEL_27;
  }

  if (*(v4 + 1944) <= 1u)
  {
    if (!*(v4 + 1944))
    {
      *(v4 + 1952) = a4;
      *(v4 + 1960) = result;
      *(v4 + 1964) = 0;
      *(v4 + 1944) = 1;
    }

    goto LABEL_20;
  }

LABEL_27:
  __break(0x550Au);
  return result;
}

void sub_10006F784(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_29;
  }

  v6 = sub_10007D6FC(*(a1 + 8));
  v7 = v6;
  v8 = sub_100065198(v6);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_29;
  }

  v9 = sub_1000933B0(v8, a2);
  if (v9 == 56)
  {
    v10 = *(a1 + 2756);
    if (v10 >= 2)
    {
      goto LABEL_30;
    }

    v11 = !(((v7 & 0x800) == 0) & ((a3 & 0x10010) != 0) & v10);
  }

  else
  {
    v11 = 1;
  }

  if (a3 >> 19 || !a2 || !v11)
  {
    return;
  }

  *(a1 + 1208) = a3;
  *(a1 + 1212) = a3;
  v12 = *(a1 + 2756);
  if (v12 > 1)
  {
LABEL_30:
    __break(0x550Au);
    return;
  }

  if (a3 & 0x10010) != 0 && v9 != 56 && (v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      if ((v13 & 7) == 0)
      {
        v14 = sub_10005BC54(v13);
        if (v14)
        {
          if ((v14 & 7) == 0)
          {
            sub_1000C1FF4(v14 + 1008, 1);
            goto LABEL_22;
          }
        }
      }
    }

LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  if (!a3)
  {
    return;
  }

LABEL_22:
  v15 = *(a1 + 2748);
  if (v15 > 1)
  {
    goto LABEL_30;
  }

  if ((v15 & 1) == 0)
  {
    *(a1 + 2748) = 1;
    sub_1000651C8(*(a1 + 8));
    if (v16)
    {
      sub_1000651C8(*(a1 + 8));
      if (v17 && (v17 & 7) == 0)
      {
        sub_10006292C(v17, *(a1 + 2744));
        return;
      }

      goto LABEL_29;
    }
  }
}

uint64_t sub_10006F8F0(uint64_t a1, int a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_74;
  }

  v4 = *(a1 + 1200);
  if (v4 >= 2)
  {
    goto LABEL_72;
  }

  v35 = *(a1 + 1212);
  if ((v4 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_15;
  }

  pthread_mutex_lock(&stru_10012B440);
  v6 = dword_10012B438;
  v7 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  v8 = *(a1 + 2760);
  if (v8 > 7)
  {
LABEL_72:
    __break(0x550Au);
LABEL_73:
    __break(0x5513u);
    goto LABEL_74;
  }

  v9 = ~v6 & 8;
  if ((a2 & 0x28007) == 0)
  {
    v9 = 0;
  }

  v10 = v9 | a2;
  if (!v8)
  {
    v10 &= 0xFFFD7FF8;
  }

  v11 = *(a1 + 1780);
  v12 = v11 & v10 | v7;
  if ((*(a1 + 1208) & 0x10010) != 0 && *(a1 + 1788) != *(a1 + 1792))
  {
    v12 |= a2 & 0x10010;
  }

  *(a1 + 1792) = *(a1 + 1788);
  a2 = BYTE2(v12) & ~v6 & 2 | ((v12 << 29) >> 31) & ~v6 & 0xB | (v12 >> 15) & ~v6 & 1 | v12;
  *(a1 + 1780) = v11 & ~(a2 & v6);
  pthread_mutex_unlock(&stru_10012B440);
LABEL_15:
  *(a1 + 2757) = 0;
  if ((v7 & 2) == 0)
  {
    goto LABEL_22;
  }

  *(a1 + 2757) = 1;
  v13 = sub_1000D5ED0();
  if (!v13 || (v13 & 7) != 0)
  {
LABEL_74:
    __break(0x5516u);
  }

  if ((*(*v13 + 112))(v13))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v37 = v14;
    *&v37[16] = v14;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    memset(&__p, 0, sizeof(__p));
    memset(&v36[1], 170, 20);
    v36[0] = 0;
    sub_10006C3D4(a1, v36);
    if (*(a1 + 2764) != -1)
    {
      *v37 = *(a1 + 2764);
      sub_10006E018(a1, v37);
      std::string::operator=((a1 + 2832), &__p);
      sub_10006DE00(a1, v37);
      std::string::operator=((a1 + 2784), &__p);
      sub_10006E124(a1, v37);
      std::string::operator=((a1 + 2856), &__p);
      sub_10006DF0C(a1, v37);
      std::string::operator=((a1 + 2808), &__p);
      sub_10006E230(a1, v37);
      std::string::operator=((a1 + 2880), &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (a2)
      {
        goto LABEL_23;
      }

      goto LABEL_66;
    }
  }

LABEL_22:
  if (a2)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v33 = 0;
    memset(v37, 170, 21);
    v17 = 2296;
    while (1)
    {
      if ((a2 & (1 << v16)) == 0 && (v15 != 24 || (a2 & 0x20000) == 0))
      {
        goto LABEL_58;
      }

      if (v17 - 2296 > ~(a1 + 2296))
      {
        goto LABEL_73;
      }

      v18 = *(a1 + v17);
      v19 = *(a1 + v17 + 8);
      v37[1] = v16;
      v37[0] = 1;
      if (v15 != 216)
      {
        break;
      }

      HIDWORD(v20) = -1775253149 * *(a1 + 1204);
      LODWORD(v20) = HIDWORD(v20);
      if ((v20 >> 1) < 0x1B4E81C || a3 == 0)
      {
        break;
      }

      v22 = *(a1 + 1200);
      if (v22 > 1)
      {
        goto LABEL_72;
      }

      if ((v22 & 1) == 0)
      {
        break;
      }

LABEL_62:
      ++v16;
      v15 += 24;
      v17 += 16;
      if (v15 == 456)
      {
        goto LABEL_66;
      }
    }

    v23 = (a1 + (v19 >> 1));
    if (v19)
    {
      v18 = *(*v23 + v18);
    }

    v24 = v18(v23, v37);
    if (v24 > 0x1F)
    {
      goto LABEL_72;
    }

    if (v24)
    {
LABEL_58:
      if (v15 == 24)
      {
        v31 = *(a1 + 2757);
        if (v31 > 1)
        {
          goto LABEL_72;
        }

        if (!(((v7 & 0x20002) != 0) | v31 & 1))
        {
          a2 &= ~0x20000u;
        }
      }

      goto LABEL_62;
    }

    if (v15 > ~(a1 + 1280))
    {
      goto LABEL_73;
    }

    v25 = a1 + v15;
    v26 = *(a1 + v15 + 1296);
    if (v37[0] - 1 != v26)
    {
      __break(0x5518u);
      goto LABEL_72;
    }

    if ((v33 & (v15 == 408)) != 0)
    {
      if (&v37[1] == -1)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (&v37[1] == -1)
      {
        goto LABEL_73;
      }

      if (!memcmp(*(v25 + 1288), &v37[2], *(a1 + v15 + 1296)))
      {
        v28 = v35;
LABEL_51:
        if (((1 << v16) & v7) == 0 || v15 == 72)
        {
          v30 = 0;
        }

        else
        {
          v30 = 1 << v16;
        }

        v35 = v28 | v30;
        goto LABEL_58;
      }

      v33 |= v15 == 24;
    }

    memcpy(*(v25 + 1288), &v37[2], v26);
    if ((a2 & (1 << v16)) != 0)
    {
      v27 = 1 << v16;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27 | v35;
    goto LABEL_51;
  }

LABEL_66:
  if (!v35)
  {
    return 0;
  }

  if (a3)
  {
    return sub_100072BB4(a1, v35);
  }

  result = 0;
  *(a1 + 1212) |= v35;
  return result;
}

uint64_t sub_10006FE00(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 24);
  memset(v24, 170, 21);
  if (!v5 || v4 != 1)
  {
LABEL_38:
    __break(0x5518u);
LABEL_39:
    sub_1000E1D34();
  }

  if (!*(a2 + 8))
  {
    goto LABEL_39;
  }

  v6 = *v5;
  if (v6 > 0x11)
  {
    return 4;
  }

  v7 = *(result + 1208);
  if ((v7 & 0x8005) == 0 && (v6 == 15 || v6 == 2))
  {
    v8 = *(result + 2296);
    v9 = *(result + 2304);
    memset(v23, 170, sizeof(v23));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 1;
    v10 = (result + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    result = v8(v10, &v21);
    v7 = *(v2 + 1208);
  }

  if ((v7 & 0x20006) == 0 && (v6 == 17 || v6 == 2))
  {
    if ((v2 + 2296) >= 0xFFFFFFFFFFFFFFF0)
    {
      goto LABEL_41;
    }

    v11 = *(v2 + 2312);
    v12 = *(v2 + 2320);
    memset(v23, 170, sizeof(v23));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 257;
    v13 = (v2 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    result = v11(v13, &v21);
    v7 = *(v2 + 1208);
  }

  if (v6 != 2 || (v7 & 0x20006) != 0)
  {
    goto LABEL_30;
  }

  if ((v2 + 2296) > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_41:
    __break(0x5513u);
LABEL_42:
    __break(0x550Au);
    return result;
  }

  v14 = *(v2 + 2344);
  v15 = *(v2 + 2352);
  memset(v23, 170, sizeof(v23));
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 769;
  v16 = (v2 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  result = v14(v16, &v21);
LABEL_30:
  if (__CFADD__(v2 + 2296, 16 * v6))
  {
    goto LABEL_41;
  }

  v17 = v2 + 2296 + 16 * v6;
  v18 = *v17;
  v19 = *(v17 + 8);
  BYTE1(v24[0]) = v6;
  LOBYTE(v24[0]) = 1;
  v20 = (v2 + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  result = v18(v20, v24);
  if (result > 0x1F)
  {
    goto LABEL_42;
  }

  if (result)
  {
    return result;
  }

  if (LOBYTE(v24[0]) - 2 > 0x11)
  {
    goto LABEL_38;
  }

  sub_1000B7DB4(a2, *(a2 + 8), 0, 3, 13, *(a2 + 68), v24 + 1, LOBYTE(v24[0]));
  return 0;
}

uint64_t sub_100070108(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
LABEL_104:
    __break(0x5516u);
    goto LABEL_105;
  }

  v4 = *(a2 + 24);
  if (!v4 || (v5 = *(a2 + 128), v23 = v5 != 0, v6 = v5 - 1, v6 == 0 || !v23))
  {
    __break(0x5518u);
LABEL_103:
    sub_1000E1D34();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_103;
  }

  if (v4 == -1)
  {
LABEL_105:
    __break(0x5513u);
LABEL_106:
    __break(0x5507u);
LABEL_107:
    __break(0x550Au);
    JUMPOUT(0x10007072CLL);
  }

  result = 4;
  v9 = (v4 + 1);
  switch(*v4)
  {
    case 0:
      if (v6 != 4)
      {
        return result;
      }

      v10 = bswap32(*v9);
      goto LABEL_28;
    case 1:
      if (v6 == 4)
      {
        v17 = bswap32(*v9);

        return sub_100070770(a1, v17);
      }

      return result;
    case 2:
      if (v6 == 2)
      {
        v16 = bswap32(*v9) >> 16;

        return sub_100071CB0(a1, v16);
      }

      return result;
    case 3:
      if (v6 == 1)
      {
        v15 = *v9;

        return sub_100071FAC(a1, v15);
      }

      return result;
    case 4:
      if (v6 != 3)
      {
        return result;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_104;
      }

      if ((*(*v7 + 224))(*(a2 + 8)))
      {
        return 4;
      }

      v27 = *(a1 + 2748);
      if (v27 > 1)
      {
        goto LABEL_107;
      }

      if (v27)
      {
        goto LABEL_86;
      }

      v28 = sub_10004B1AC();
      if (!v28 || (v28 & 7) != 0)
      {
        goto LABEL_104;
      }

      (*(*v28 + 448))(v28);
      *(a1 + 2288) = 1;
LABEL_86:
      v34[0] = 0xAAAAAAAAAAAAAAAALL;
      v34[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDCB4(v34, 1u);
      *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34[0] = off_100113858;
      *&v33 = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDDDC(v34, &v33);
      v35 = v33;
      v29 = sub_100073CD8(&v35, (a1 + 2256));
      if (*v29 < 1 || *v29 == 1 && v29[1] < 1)
      {
        goto LABEL_98;
      }

      sub_1000DDDDC(v34, &v33);
      v30 = *(a1 + 2288);
      if (v30 > 1)
      {
        goto LABEL_107;
      }

      if ((v30 & 1) == 0)
      {
        v35 = v33;
        v32 = sub_100073CD8(&v35, (a1 + 2272));
        if (*v32 < 1 || *v32 == 1 && v32[1] < 1)
        {
          goto LABEL_97;
        }
      }

      v31 = sub_10004B1AC();
      if (!v31 || (v31 & 7) != 0)
      {
        goto LABEL_104;
      }

      (*(*v31 + 448))(v31);
      sub_1000DDDDC(v34, (a1 + 2256));
LABEL_97:
      *(a1 + 2288) = 1;
LABEL_98:
      if (v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_105;
      }

      sub_100072224(a1, *v9, v4[2], v4[3], v7);
      v34[0] = off_100113858;
      sub_1000DDCF4(v34);
      return 0;
    case 6:
      if (v6 != 5)
      {
        return result;
      }

      if (v9 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_105;
      }

      v11 = bswap32(*v9);
      v12 = v4[5];

      return sub_10006F618(a1, v11, v12, v7);
    case 7:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v18 = v4[1];
      v19 = v4[2];

      return sub_100072438(a1, v18, v19, v7, a3);
    case 8:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v20 = v4[1];
      v21 = v4[2];

      return sub_10007256C(a1, v20, v21, v7, a3);
    case 9:
      if (v6 != 6)
      {
        return result;
      }

      if (v9 > 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_105;
      }

      v22 = ((bswap32(*v9) >> 16) - 2000);
      v23 = v4[6] >= 0x3Cu || v4[5] >= 0x18u;
      if (v23 || v4[4] - 1 >= 0x1F || v4[3] - 1 >= 0xC || v22 >= 0x64)
      {
        return 4;
      }

      else
      {
        return 0;
      }

    case 0xB:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      sub_10007269C(a1, *v9, 0, v7);
      return 0;
    case 0xD:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      sub_1000712C0(a1, v4[1], v4[2], v7);
      return 0;
    case 0xE:
      if (v6 != 2)
      {
        return result;
      }

      if (v4 == -2)
      {
        goto LABEL_105;
      }

      v13 = v4[1];
      v14 = v4[2];

      return sub_1000727A0(a1, v13, v14, v7);
    case 0xF:
      if (v6 != 2)
      {
        return result;
      }

      if (bswap32(*v9) >> 16 > 0x41)
      {
        goto LABEL_106;
      }

LABEL_28:
      sub_100071C48(a1);
      return 0;
    case 0x10:
      if (v6 != 4)
      {
        return result;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_104;
      }

      if ((*(*v7 + 224))(*(a2 + 8)))
      {
        return 4;
      }

      if (v4 == -2 || (v4 + 4) < 2)
      {
        goto LABEL_105;
      }

      sub_100072914(a1, *v9, v4[2], v4[3], v4[4], v7);
      return 0;
    default:
      return result;
  }
}

uint64_t sub_100070770(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_60;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v5 = (*(*result + 392))(result);
  result = sub_10004B1AC();
  if (!result)
  {
    goto LABEL_60;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  (*(*result + 448))(result);
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v6 = (*(*result + 512))(result);
  result = *(v2 + 1192);
  v8 = (result & 7) == 0 && result != 0;
  if (v6)
  {
    if (v8)
    {
      (*(*result + 664))(result, a2, 0);
LABEL_21:
      sub_1000691A0(v2);
      return 0;
    }

    goto LABEL_60;
  }

  if (!v8)
  {
    goto LABEL_60;
  }

  if (!(*(*result + 592))(result))
  {
    result = *(v2 + 1192);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v11 = (*(*result + 376))(result);
        result = *(v2 + 1192);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v12 = (*(*result + 392))(result);
            result = *(v2 + 1192);
            if (result)
            {
              if ((result & 7) == 0)
              {
                (*(*result + 672))(result, a2);
                result = *(v2 + 1192);
                if (result)
                {
                  if ((result & 7) == 0)
                  {
                    if ((*(*result + 608))(result))
                    {
                      if (v12 < 3)
                      {
                        goto LABEL_21;
                      }

LABEL_51:
                      v14 = v12 - 1;
                      if (!a2 || v11 != v14)
                      {
                        if (v11 >= a2)
                        {
                          if (v11 >= v14)
                          {
                            goto LABEL_21;
                          }
                        }

                        else if (v11 || v14 != a2)
                        {
                          goto LABEL_21;
                        }
                      }

                      sub_100069268(v2);
                      return 0;
                    }

                    result = *(v2 + 1192);
                    if (result && (result & 7) == 0)
                    {
                      v13 = (*(*result + 616))(result);
                      if (v12 < 3 || (v13 & 1) == 0)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_51;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_60:
    __break(0x5516u);
    return result;
  }

  if (v5 <= a2)
  {
    return 2;
  }

  result = *(v2 + 1192);
  if (!result)
  {
    goto LABEL_60;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_60;
  }

  result = (*(*result + 672))(result, a2);
  v9 = *(v2 + 1192);
  if (!v9)
  {
    goto LABEL_60;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_60;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_60;
  }

  v10 = sub_1000945E0(result, *(v2 + 8));
  if ((*(*v9 + 304))(v9, a2, 0, 0, 0, v10, 0xFFFFFFFFLL, 1))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100070B60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_54;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_54;
  }

  if (!a2)
  {
    goto LABEL_54;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_54;
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 24);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__n = v6;
  v21 = v6;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  memset(&__p, 0, sizeof(__p));
  v7 = *(a1 + 1192);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_54;
  }

  result = (*(*v7 + 392))(v7);
  if (!v5)
  {
    goto LABEL_52;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_53;
  }

  if (v4 != 7)
  {
LABEL_52:
    __break(0x5518u);
LABEL_53:
    sub_1000E1D34();
  }

  v9 = *v5;
  if (v9 > 8)
  {
    goto LABEL_41;
  }

  if (__CFADD__(a1 + 2600, 16 * v9))
  {
    __break(0x5513u);
LABEL_57:
    __break(0x5507u);
LABEL_58:
    __break(0x550Au);
    return result;
  }

  if (v5 == -1 || (v10 = a1 + 2600 + 16 * v9, v12 = *v10, v11 = *(v10 + 8), v13 = bswap32(*(v5 + 1)), LODWORD(__n[0]) = v13, v5 >= 0xFFFFFFFFFFFFFFFBLL))
  {
LABEL_55:
    __break(0x5500u);
  }

  WORD2(__n[0]) = bswap32(*(v5 + 5)) >> 16;
  HIBYTE(__n[0]) = v9;
  BYTE6(__n[0]) = 1;
  v14 = sub_1000D5ED0();
  if (!v14 || (v14 & 7) != 0)
  {
LABEL_54:
    __break(0x5516u);
    goto LABEL_55;
  }

  if (!(*(*v14 + 112))(v14) || *(a1 + 2764) != v13)
  {
    goto LABEL_36;
  }

  if (v9 <= 3)
  {
    if (v9 == 2)
    {
      v15 = (a1 + 2784);
      v16 = *(a1 + 2807);
      if (v16 < 0)
      {
        v16 = *(a1 + 2792);
      }
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_36;
      }

      v15 = (a1 + 2808);
      v16 = *(a1 + 2831);
      if (v16 < 0)
      {
        v16 = *(a1 + 2816);
      }
    }
  }

  else
  {
    switch(v9)
    {
      case 4:
        v15 = (a1 + 2832);
        v16 = *(a1 + 2855);
        if (v16 < 0)
        {
          v16 = *(a1 + 2840);
        }

        break;
      case 5:
        v15 = (a1 + 2856);
        v16 = *(a1 + 2879);
        if (v16 < 0)
        {
          v16 = *(a1 + 2864);
        }

        break;
      case 6:
        v15 = (a1 + 2880);
        v16 = *(a1 + 2903);
        if (v16 < 0)
        {
          v16 = *(a1 + 2888);
        }

        break;
      default:
LABEL_36:
        v17 = *(a1 + 1192);
        if (v17 && (v17 & 7) == 0)
        {
          if (v13 < (*(*v17 + 392))(v17))
          {
            v18 = (a1 + (v11 >> 1));
            if (v11)
            {
              v12 = *(*v18 + v12);
            }

            result = v12(v18, __n);
            if (result > 0x1F)
            {
              goto LABEL_58;
            }

            v19 = result;
            if (result)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }

LABEL_41:
          v19 = 4;
          goto LABEL_42;
        }

        goto LABEL_54;
    }
  }

  if (!v16)
  {
    goto LABEL_36;
  }

  std::string::operator=(&__p, v15);
LABEL_48:
  if (*(a2 + 8))
  {
    result = sub_1000D6C34(*(a2 + 8), 3);
    if (!WORD1(result))
    {
      operator new[]();
    }

    goto LABEL_57;
  }

  v19 = 2;
LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v19;
}

uint64_t sub_1000712C0(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  result = (*(*result + 264))(result);
  if (!a3)
  {
    if ((v4 + 1800) < 0xFFFFFFFFFFFFFEC8)
    {
      *&v9 = 0;
      *(v4 + 2120) = v9;
      *(v4 + 2112) = 0;
      goto LABEL_16;
    }

LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  if ((v4 + 1800) >= 0xFFFFFFFFFFFFFEC8)
  {
    goto LABEL_22;
  }

  if (*(v4 + 2112) <= 1u)
  {
    if (!*(v4 + 2112))
    {
      *(v4 + 2120) = a4;
      *(v4 + 2128) = result;
      *(v4 + 2132) = 0;
      *(v4 + 2112) = 1;
    }

LABEL_16:
    if ((a2 != 0) != result)
    {
      result = *(v4 + 1192);
      if (!result || (result & 7) != 0)
      {
LABEL_21:
        __break(0x5516u);
        goto LABEL_22;
      }

      (*(*result + 256))(result, a2 != 0);
    }

    return 0;
  }

LABEL_23:
  __break(0x550Au);
  return result;
}

void sub_100071400(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_79;
  }

  if (a2 > 31)
  {
    if (a2 == 32)
    {
      if (*(a1 + 1200) <= 1u)
      {
        v16 = *(a1 + 1208);
        if (*(a1 + 1200))
        {
          if ((-858993459 * *(a1 + 1204)) <= 0x33333333)
          {
            sub_10006F8F0(a1, *(a1 + 1208), 1);
          }

          else if ((v16 & 0x10010) != 0 && (*(a1 + 1788) != *(a1 + 1792) || (*(a1 + 1780) & 0x10010) != 0))
          {
            sub_100071A70(a1);
          }
        }

        else
        {
          *(a1 + 1204) = 0;
          sub_10006F8F0(a1, 0x7FFFF, 1);
          *(a1 + 1212) = 0;
          *(a1 + 1200) = 1;
        }

        v28 = *(a1 + 1204);
        v29 = __CFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_81;
        }

        *(a1 + 1204) = v30;
        if ((*(a1 + 1780) & v16) == 0)
        {
          *(a1 + 2748) = 0;
          return;
        }

LABEL_70:
        *(a1 + 2748) = 1;
        sub_1000651C8(*(a1 + 8));
        if (v31)
        {
          sub_1000651C8(*(a1 + 8));
          if (v32 && (v32 & 7) == 0)
          {
            sub_10006292C(v32, *(a1 + 2744));
            return;
          }

          goto LABEL_79;
        }

        return;
      }

LABEL_80:
      __break(0x550Au);
      goto LABEL_81;
    }

    if (a2 != 64)
    {
      if (a2 != 512)
      {
        return;
      }

      v11 = *(a1 + 1788);
      v12 = v11 + 1;
      if (v11 == -1)
      {
LABEL_81:
        __break(0x5500u);
        return;
      }

      v13 = *(a1 + 1208);
      *(a1 + 1788) = v12;
      v14 = *(a1 + 2748);
      if (v14 <= 1)
      {
        if ((v14 & 1) != 0 || (v13 & 0x10010) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      goto LABEL_80;
    }

    if ((a3 + 8) > 0xF)
    {
      goto LABEL_80;
    }

    if (a3 < 0xFFFFFFFE)
    {
      if (a3)
      {
        if (a3 == 6)
        {
          v33[0] = 0xAAAAAAAAAAAAAAAALL;
          v33[1] = 0xAAAAAAAAAAAAAAAALL;
          sub_1000DDCB4(v33, 1u);
          v33[0] = off_100113858;
          sub_1000DDDDC(v33, (a1 + 2272));
          v33[0] = off_100113858;
          sub_1000DDCF4(v33);
        }
      }

      else
      {
        *(a1 + 2288) = 0;
        *(a1 + 2756) = 0;
      }

      return;
    }

LABEL_61:
    v26 = *(a1 + 8);
    if (v26)
    {
      if ((v26 & 7) == 0)
      {
        v27 = sub_10005BC54(v26);
        if (v27)
        {
          if ((v27 & 7) == 0)
          {
            sub_1000C1FF4(v27 + 1008, 0);
            return;
          }
        }
      }
    }

    goto LABEL_79;
  }

  switch(a2)
  {
    case 1:
      if ((a3 - 7) >= 2 && a3 != 5)
      {
        if (a3 != 6)
        {
          return;
        }

        *(a1 + 2752) = 6;
        v15 = *(a1 + 2748);
        if (v15 <= 1)
        {
          if (v15)
          {
            return;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      *(a1 + 2752) = a3;
      *(a1 + 2748) = 0;
      sub_1000651C8(*(a1 + 8));
      if (v24)
      {
        sub_1000651C8(*(a1 + 8));
        if (!v25 || (v25 & 7) != 0)
        {
          goto LABEL_79;
        }

        sub_1000629DC(v25, *(a1 + 2744));
      }

      *(a1 + 2288) = 0;
      *(a1 + 2756) = 0;
      goto LABEL_61;
    case 4:
      if (!a4)
      {
        sub_1000E1D34();
      }

      *(a1 + 1208) = 0;
      *(a1 + 1788) = 0;
      *(a1 + 2288) = 0;
      v17 = sub_100065198(a1);
      if (v17 && (v17 & 7) == 0)
      {
        v18 = sub_1000932FC(v17, a4);
        *(a1 + 2756) = 0;
        v19 = v18 - 15;
        v20 = *(a1 + 8);
        if ((v20 & 7) == 0 && v20 != 0)
        {
          v23 = sub_10005BC54(v20);
          if (v23)
          {
            if ((v23 & 7) == 0)
            {
              sub_1000C1FF4(v23 + 1008, v19 < 2);
              *(a1 + 1204) = 0;
              return;
            }
          }
        }
      }

      goto LABEL_79;
    case 8:
      if (!a4)
      {
        sub_1000E1D34();
      }

      *(a1 + 2748) = 0;
      sub_1000651C8(*(a1 + 8));
      if (!v7)
      {
LABEL_12:
        sub_1000717D4(a1, a4, v6);
        *(a1 + 1208) = 0;
        *(a1 + 2288) = 0;
        *(a1 + 2756) = 0;
        v9 = *(a1 + 8);
        if (v9)
        {
          if ((v9 & 7) == 0)
          {
            v10 = sub_10005BC54(v9);
            if (v10)
            {
              if ((v10 & 7) == 0)
              {
                sub_1000C1FF4(v10 + 1008, 0);
                *(a1 + 1788) = 0;
                return;
              }
            }
          }
        }

        goto LABEL_79;
      }

      sub_1000651C8(*(a1 + 8));
      if (v8 && (v8 & 7) == 0)
      {
        sub_1000629DC(v8, *(a1 + 2744));
        goto LABEL_12;
      }

LABEL_79:
      __break(0x5516u);
      goto LABEL_80;
  }
}

uint64_t sub_1000717D4(uint64_t result, unint64_t a2, __n128 a3)
{
  if (!result)
  {
    goto LABEL_53;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_53;
  }

  if (!a2)
  {
    return 22;
  }

  v5 = 0;
  for (i = (result + 1800); ; i += 24)
  {
    if (*(i + 1) != a2)
    {
      goto LABEL_46;
    }

    v7 = *i;
    if (v7 >= 2)
    {
      goto LABEL_52;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v5 <= 9)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          result = sub_100072438(v3, *(i + 4), 0, a2, a3);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        if (v5 == 8)
        {
          result = sub_10007256C(v3, *(i + 4), 0, a2, a3);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v5 == 4)
        {
          result = sub_100046A8C();
          if (!result || (result & 7) != 0)
          {
            goto LABEL_53;
          }

          result = (*(*result + 48))(result);
          if (!result)
          {
LABEL_45:
            *i = 0;
            goto LABEL_46;
          }

          if (*(i + 4) >= 0x100u || *(i + 5) > 0xFFu)
          {
            goto LABEL_54;
          }

          result = sub_100072224(v3, *(i + 4), *(i + 5), 0, a2);
          goto LABEL_46;
        }

        if (v5 == 6)
        {
          result = sub_10006F618(v3, *(i + 4), 0, a2);
          if (result)
          {
            goto LABEL_50;
          }

          goto LABEL_46;
        }
      }

LABEL_43:
      result = sub_100072B3C(v3, v5, a3);
      if (result)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (v5 <= 12)
    {
      if (v5 == 10)
      {
        goto LABEL_46;
      }

      if (v5 == 11)
      {
        result = sub_10007269C(v3, i[16], 0, a2);
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v5 == 13)
    {
      result = sub_1000712C0(v3, *(i + 4) != 0, 0, a2);
      goto LABEL_46;
    }

    if (v5 == 14)
    {
      break;
    }

    if (v5 != 16)
    {
      goto LABEL_43;
    }

    result = sub_100046A8C();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_53;
    }

    result = (*(*result + 48))(result);
    if (!result)
    {
      goto LABEL_45;
    }

    if (*(i + 4) > 0xFFu || *(i + 5) > 0xFFu)
    {
      goto LABEL_54;
    }

    result = sub_100072914(v3, *(i + 4), 0, *(i + 5), 0, a2);
LABEL_46:
    if (i >= 0xFFFFFFFFFFFFFFE8)
    {
      goto LABEL_51;
    }

    if (++v5 == 19)
    {
      return 0;
    }
  }

  v8 = *(i + 4);
  if (v8 > 0xFF)
  {
    goto LABEL_52;
  }

  result = sub_1000727A0(v3, v8, 0, a2);
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_50:
  __break(0x5518u);
LABEL_51:
  __break(0x5513u);
LABEL_52:
  __break(0x550Au);
LABEL_53:
  __break(0x5516u);
LABEL_54:
  __break(0x5507u);
  return result;
}

uint64_t sub_100071A70(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_21;
  }

  v2 = 0;
  memset(v19, 170, 21);
  v3 = ~(a1 + 2296);
  *(a1 + 1792) = *(a1 + 1788);
  v17 = a1 + 1280;
  v18 = ~(a1 + 1280);
  v4 = 4;
  v5 = 1;
  do
  {
    if (v3 < 16 * v4)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = v4;
    v8 = a1 + 2296 + 16 * v4;
    v9 = *v8;
    v10 = *(v8 + 8);
    BYTE1(v19[0]) = v7;
    LOBYTE(v19[0]) = 1;
    v11 = (a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v12 = v9(v11, v19);
    if (v12 > 0x1F)
    {
      goto LABEL_20;
    }

    if (!v12)
    {
      if (24 * v7 > v18)
      {
        goto LABEL_19;
      }

      v13 = v17 + 24 * v7;
      v14 = *(v13 + 16);
      if (LOBYTE(v19[0]) - 1 != v14)
      {
        __break(0x5518u);
LABEL_19:
        __break(0x5513u);
LABEL_20:
        __break(0x550Au);
LABEL_21:
        __break(0x5516u);
      }

      if ((v19 + 1) == -1)
      {
        goto LABEL_19;
      }

      v15 = *(v13 + 8);
      if (memcmp(v15, v19 + 2, *(v13 + 16)))
      {
        memcpy(v15, v19 + 2, v14);
        v2 |= 1 << v7;
      }
    }

    v5 = 0;
    v4 = 16;
  }

  while ((v6 & 1) != 0);
  if (v2)
  {
    return sub_100072E58(a1, v2);
  }

  else
  {
    return 0;
  }
}

void *sub_100071C48(void *result)
{
  if (result && (result & 7) == 0 && ((result = result[149]) != 0 ? (v1 = (result & 7) == 0) : (v1 = 0), v1))
  {
    (*(*result + 344))(result);
    return 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100071CB0(uint64_t result, unsigned int a2)
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

  v10 = 0;
  result = sub_10006547C(&v10 + 1, &v10);
  if (result >= 0x20)
  {
    goto LABEL_37;
  }

  if (result)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  if (v10 > 7)
  {
LABEL_37:
    __break(0x550Au);
    goto LABEL_38;
  }

  if (!v10)
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = *(v2 + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = (*(*result + 384))(result);
  v9 = result;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  v5 = result;
  if (((*(*result + 16))(result) & 1) == 0)
  {
LABEL_35:
    sub_1000E1D34();
  }

  v6 = (*(*v5 + 368))(v5);
  if (v6)
  {
    if (v6 > a2)
    {
      result = *(v2 + 1192);
      if (!result)
      {
        goto LABEL_36;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_36;
      }

      (*(*result + 408))(result);
      result = v9;
      if (!v9 || (v9 & 7) != 0)
      {
        goto LABEL_36;
      }

      if ((*(*v9 + 392))() != a2)
      {
        result = sub_10004B1AC();
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(*result + 448))(result);
            result = v9;
            if ((v9 & 7) == 0)
            {
              v7 = (*(*v9 + 376))();
              result = *(v2 + 1192);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  if (v7 >= 0xFFFFFC18)
                  {
LABEL_38:
                    __break(0x5500u);
                    return result;
                  }

                  (*(*result + 344))(result, v7 + 1000);
                  v8[0] = 0xAAAAAAAAAAAAAAAALL;
                  v8[1] = 0xAAAAAAAAAAAAAAAALL;
                  sub_1000DDCB4(v8, 0);
                  v8[0] = off_100115F28;
                  sub_1000DDDDC(v8, (v2 + 1760));
                  *(v2 + 1756) = 1;
                  v8[0] = off_100115F28;
                  sub_1000DDCF4(v8);
                  goto LABEL_30;
                }
              }
            }
          }
        }

LABEL_36:
        __break(0x5516u);
        goto LABEL_37;
      }
    }

LABEL_30:
    sub_1000698F8(&v9);
    return 0;
  }

  sub_1000698F8(&v9);
  return 2;
}

uint64_t sub_100071FAC(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  if (a2 >= 8)
  {
    goto LABEL_40;
  }

  if (a2 > 5)
  {
    return 4;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  v4 = (*(*result + 416))(result);
  if (a2 > 2)
  {
    result = sub_10004B1AC();
    if (result && (result & 7) == 0)
    {
      result = (*(*result + 448))(result);
      if (v4 <= 3)
      {
        if (v4)
        {
          if (a2 == 4)
          {
            v5 = v2;
            v6 = 21;
          }

          else
          {
            if (a2 != 3)
            {
              sub_100069050(v2, 0x14u, 0);
              v5 = v2;
              v6 = 21;
              goto LABEL_36;
            }

            v5 = v2;
            v6 = 20;
          }

          v7 = 1;
LABEL_37:
          sub_100069050(v5, v6, v7);
          return 0;
        }

        return 0;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      result = sub_10004B1AC();
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 448))(result);
        if (v4 <= 3)
        {
          if (v4 != 1)
          {
            sub_100069050(v2, 8u, 1);
            v5 = v2;
            v6 = 8;
LABEL_36:
            v7 = 0;
            goto LABEL_37;
          }

          return 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      result = sub_10004B1AC();
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 448))(result);
        if (v4 <= 3)
        {
          if (v4 == 1)
          {
            sub_100069050(v2, 9u, 1);
            v5 = v2;
            v6 = 9;
            goto LABEL_36;
          }

          return 0;
        }

        goto LABEL_40;
      }
    }

LABEL_39:
    __break(0x5516u);
    goto LABEL_40;
  }

  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  result = (*(*result + 448))(result);
  if (v4 <= 3)
  {
    if (v4)
    {
      sub_100069050(v2, 7u, 1);
      v5 = v2;
      v6 = 7;
      goto LABEL_36;
    }

    return 0;
  }

LABEL_40:
  __break(0x550Au);
  return result;
}

uint64_t sub_100072224(uint64_t result, int a2, unsigned int a3, int a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = sub_100045A94();
  if (!result)
  {
    goto LABEL_26;
  }

  v10 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  v11 = (*(*result + 104))(result, a5);
  v12 = (*(*v10 + 120))(v10, a5);
  v13 = v12;
  result = sub_100065198(v12);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = sub_1000933B0(result, a5);
  if (result == 56)
  {
    goto LABEL_13;
  }

  result = *(v5 + 8);
  if (!result || (result & 7) != 0 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
    goto LABEL_27;
  }

  result = sub_1000C1FF4(result + 1008, 1);
LABEL_13:
  if (a4)
  {
    result = sub_100073130(v5, v11, 0);
    if (a5)
    {
      if ((v5 + 1800) < 0xFFFFFFFFFFFFFFA0)
      {
        if (*(v5 + 1896) <= 1u)
        {
          if (!*(v5 + 1896))
          {
            *(v5 + 1904) = a5;
            *(v5 + 1912) = v13;
            *(v5 + 1916) = result;
            *(v5 + 1896) = 1;
          }

          goto LABEL_21;
        }

LABEL_28:
        __break(0x550Au);
        return result;
      }

LABEL_27:
      __break(0x5513u);
      goto LABEL_28;
    }
  }

  else
  {
    if ((v5 + 1800) >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_27;
    }

    *&v14 = 0;
    *(v5 + 1904) = v14;
    *(v5 + 1896) = 0;
  }

LABEL_21:
  if ((a2 != 0) != v13)
  {
    (*(*v10 + 112))(v10, a5);
  }

  if (!a2)
  {
    sub_10006C29C(v5);
    v15 = sub_1000731DC(v5, a3, 0);
    (*(*v10 + 96))(v10, a5, v15);
  }

  return 0;
}

uint64_t sub_100072438(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (a2 >= 4)
  {
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    return 4;
  }

  if (!a3)
  {
    if ((result + 1800) < 0xFFFFFFFFFFFFFF58)
    {
      a5.n128_u64[0] = 0;
      *(result + 1976) = a5;
      *(result + 1968) = 0;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  result = (*(*result + 152))(result);
  if (result > 3)
  {
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  if ((v5 + 1800) < 0xFFFFFFFFFFFFFF58)
  {
    if (*(v5 + 1968) <= 1u)
    {
      if (!*(v5 + 1968))
      {
        *(v5 + 1976) = a4;
        *(v5 + 1984) = result;
        *(v5 + 1988) = 0;
        *(v5 + 1968) = 1;
      }

LABEL_17:
      result = *(v5 + 1192);
      if (result && (result & 7) == 0)
      {
        (*(*result + 144))(result, a2);
        return 0;
      }

      goto LABEL_20;
    }

LABEL_21:
    __break(0x550Au);
  }

LABEL_22:
  __break(0x5513u);
  return result;
}

uint64_t sub_10007256C(uint64_t result, uint64_t a2, int a3, unint64_t a4, __n128 a5)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (a2 >= 4)
  {
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    return 4;
  }

  if (!a3)
  {
    if ((result + 1800) < 0xFFFFFFFFFFFFFF40)
    {
      a5.n128_u64[0] = 0;
      *(result + 2000) = a5;
      *(result + 1992) = 0;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  result = (*(*result + 136))(result);
  if (result > 3)
  {
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  if (&v5[112].n128_u64[1] < 0xFFFFFFFFFFFFFF40)
  {
    if (v5[124].n128_u8[8] <= 1u)
    {
      if (!v5[124].n128_u8[8])
      {
        v5[125].n128_u64[0] = a4;
        v5[125].n128_u32[2] = result;
        v5[125].n128_u32[3] = 0;
        v5[124].n128_u8[8] = 1;
      }

LABEL_17:
      result = v5[74].n128_i64[1];
      if (result && (result & 7) == 0)
      {
        (*(*result + 128))(result, a2);
        return 0;
      }

      goto LABEL_20;
    }

LABEL_21:
    __break(0x550Au);
  }

LABEL_22:
  __break(0x5513u);
  return result;
}

uint64_t sub_10007269C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (v4 = result, (result & 7) != 0) || (result = sub_10004B1AC()) == 0 || (v7 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  result = (*(*result + 392))(result);
  if (a4)
  {
    if ((v4 + 1800) < 0xFFFFFFFFFFFFFEF8)
    {
      if (*(v4 + 2064) <= 1u)
      {
        if (!*(v4 + 2064))
        {
          *(v4 + 2072) = a4;
          *(v4 + 2080) = result;
          *(v4 + 2084) = 0;
          *(v4 + 2064) = 1;
        }

        goto LABEL_10;
      }

LABEL_15:
      __break(0x550Au);
      return result;
    }

LABEL_14:
    __break(0x5513u);
    goto LABEL_15;
  }

LABEL_10:
  if (result != a2)
  {
    (*(*v7 + 384))(v7, a2);
  }

  return 0;
}

uint64_t sub_1000727A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v5 = a2;
  if (a2 >= 0x100)
  {
    goto LABEL_26;
  }

  if ((a2 - 253) > 0xFFFFFF06)
  {
    return 4;
  }

  if (a2 + 3) <= 6u && ((0x63u >> (a2 + 3)))
  {
    v5 = dword_1000EF17C[(a2 + 3)];
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = (*(*result + 184))(result);
  if (!a3)
  {
    if ((v4 + 1800) >= 0xFFFFFFFFFFFFFEB0)
    {
      goto LABEL_27;
    }

    *&v8 = 0;
    *(v4 + 2144) = v8;
    *(v4 + 2136) = 0;
    if (result > 0xFF)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (result == v5)
    {
      return 0;
    }

    result = *(v4 + 1192);
    if (result && (result & 7) == 0)
    {
      (*(*result + 176))(result, v5);
      return 0;
    }

    goto LABEL_25;
  }

  if (result > 0xFF)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_20;
  }

  if ((v4 + 1800) < 0xFFFFFFFFFFFFFEB0)
  {
    if (*(v4 + 2136) <= 1u)
    {
      if (!*(v4 + 2136))
      {
        *(v4 + 2144) = a4;
        *(v4 + 2152) = result;
        *(v4 + 2156) = 0;
        *(v4 + 2136) = 1;
      }

      goto LABEL_20;
    }

LABEL_26:
    __break(0x550Au);
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

uint64_t sub_100072914(uint64_t result, int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_29;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_100045A94();
  if (!result)
  {
    goto LABEL_29;
  }

  v12 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v13 = (*(*result + 104))(result, a6);
  v14 = (*(*v12 + 120))(v12, a6);
  v15 = v14;
  result = sub_100065198(v14);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_1000933B0(result, a6);
  if (result == 56)
  {
    goto LABEL_13;
  }

  result = *(v6 + 8);
  if (!result || (result & 7) != 0 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  result = sub_1000C1FF4(result + 1008, 1);
LABEL_13:
  if (a5)
  {
    result = sub_100073130(v6, v13, 0);
    if (a6)
    {
      if ((v6 + 1800) < 0xFFFFFFFFFFFFFE80)
      {
        if (*(v6 + 2184) <= 1u)
        {
          if (!*(v6 + 2184))
          {
            *(v6 + 2192) = a6;
            *(v6 + 2200) = v15;
            *(v6 + 2204) = result;
            *(v6 + 2184) = 1;
          }

          goto LABEL_21;
        }

LABEL_31:
        __break(0x550Au);
        return result;
      }

LABEL_30:
      __break(0x5513u);
      goto LABEL_31;
    }
  }

  else
  {
    if ((v6 + 1800) >= 0xFFFFFFFFFFFFFE80)
    {
      goto LABEL_30;
    }

    *&v16 = 0;
    *(v6 + 2192) = v16;
    *(v6 + 2184) = 0;
  }

LABEL_21:
  if ((a2 != 0) != v15)
  {
    (*(*v12 + 112))(v12, a6);
  }

  if (!a2)
  {
    if (a3)
    {
      v17 = a3;
      v18 = 0;
    }

    else
    {
      v17 = a4;
      v18 = 1;
    }

    v19 = sub_1000731DC(v6, v17, v18);
    (*(*v12 + 96))(v12, a6, v19);
  }

  return 0;
}

uint64_t sub_100072B3C(uint64_t result, unsigned int a2, __n128 a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  if (a2 > 18)
  {
    return 22;
  }

  if (a2 < 0x14)
  {
    v3 = result + 1800;
    if (!__CFADD__(result + 1800, 24 * a2))
    {
      a3.n128_u64[0] = 0;
      result = 0;
      v4 = v3 + 24 * a2;
      *(v4 + 8) = a3;
      *v4 = 0;
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(0x5512u);
LABEL_12:
  __break(0x5513u);
  return result;
}

uint64_t sub_100072BB4(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = sub_100065198(a1);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = sub_1000945E0(v4, *(a1 + 8));
  v6 = 0;
  v7 = 0;
  do
  {
    result = 0;
    if (v5)
    {
      v9 = 1 << v7;
      if (((1 << v7) & a2) != 0)
      {
        if ((*(a1 + 1208) & v9) != 0)
        {
          memset(v12, 170, 21);
          BYTE1(v12[0]) = v7;
          if ((v12 + 1) == -1 || v6 > ~(a1 + 1280))
          {
LABEL_20:
            __break(0x5513u);
            __break(0x550Au);
          }

          v10 = *(a1 + v6 + 1297);
          memcpy(v12 + 2, *(a1 + v6 + 1288), *(a1 + v6 + 1297));
          if (v10 == 255)
          {
LABEL_19:
            __break(0x5507u);
            goto LABEL_20;
          }

          LOBYTE(v12[0]) = v10 + 1;
          if ((v5 & 7) == 0)
          {
            (*(*v5 + 16))(v5, 0);
            sub_1000B748C();
          }

LABEL_18:
          __break(0x5516u);
          goto LABEL_19;
        }

        result = 0;
        *(a1 + 1212) |= v9;
      }
    }

    v6 += 24;
  }

  while (v7++ < 0x12);
  return result;
}

uint64_t sub_100072E58(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0 || (v4 = sub_100065198(a1)) == 0 || (v4 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  result = sub_1000945E0(v4, *(a1 + 8));
  if (result)
  {
    v6 = result;
    result = 0;
    v7 = 4;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = 1 << v7;
      if (((1 << v7) & a2) != 0)
      {
        if ((*(a1 + 1208) & v10) != 0)
        {
          memset(v13, 170, 21);
          BYTE1(v13[0]) = v7;
          if ((v13 + 1) != -1 && 24 * v7 <= ~(a1 + 1280))
          {
            v11 = a1 + 1280 + 24 * v7;
            v12 = *(v11 + 16);
            memcpy(v13 + 2, *(v11 + 8), *(v11 + 16));
            if (v12 != 255)
            {
              LOBYTE(v13[0]) = v12 + 1;
              if ((v6 & 7) == 0)
              {
                (*(*v6 + 16))(v6, 0);
                sub_1000B748C();
              }

              goto LABEL_17;
            }

LABEL_19:
            __break(0x5507u);
            __break(0x550Au);
          }

LABEL_18:
          __break(0x5513u);
          goto LABEL_19;
        }

        *(a1 + 1212) |= v10;
      }

      v8 = 0;
      v7 = 16;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

void *sub_100073100(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115F28;
    return sub_1000DDCF4(result);
  }

  return result;
}

uint64_t sub_100073130(uint64_t result, unsigned int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
LABEL_18:
    __break(0x5507u);
    goto LABEL_19;
  }

  result = sub_10006C29C(result);
  v6 = *(v3 + 1736);
  if (v6 == 255 || a3 != 0)
  {
    v8 = *(v3 + 1740);
    v9 = a2 >= v8;
    v6 = a2 - v8;
    if (v6 == 0 || !v9)
    {
LABEL_15:
      if (a2 < 0x100)
      {
        return a2;
      }

      goto LABEL_18;
    }

    a2 = v6;
    if (v6 < 0x100)
    {
      return a2;
    }

    __break(0x5518u);
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (((255 * a2) & 0xFFFFFFFF00000000) != 0)
  {
LABEL_19:
    __break(0x550Cu);
    goto LABEL_20;
  }

  if (!__CFADD__(255 * a2, v6 >> 1))
  {
    a2 = (255 * a2 + (v6 >> 1)) / v6;
    goto LABEL_15;
  }

LABEL_20:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000731DC(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_10006C29C(result);
  v6 = *(v3 + 1736);
  if (v6 != 255 && a3 == 0)
  {
    v10 = a2 * v6;
    if ((v10 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_19:
      __break(0x550Cu);
      goto LABEL_20;
    }

    v11 = __CFADD__(v10, 127);
    v12 = v10 + 127;
    if (v11)
    {
LABEL_20:
      __break(0x5500u);
      return result;
    }

    v9 = v12 / 0xFF;
  }

  else
  {
    v8 = *(v3 + 1740);
    if (v8 > a2)
    {
      v8 = 0;
    }

    v9 = v8 + a2;
  }

  result = sub_100045A94();
  if (!result || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  LODWORD(result) = (*(*result + 136))(result);
  if (v9 >= result)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000732B0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_42;
  }

  result = *(result + 1192);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_42;
  }

  result = (*(*result + 400))(result);
  v2 = result;
  v17 = result;
  if (!result)
  {
LABEL_41:
    sub_1000698F8(&v17);
    return v2;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_42;
  }

  if (!(*(*result + 16))(result))
  {
    v2 = 0;
    goto LABEL_41;
  }

  v3 = (*(*v2 + 264))(v2);
  v4 = (*(*v2 + 368))(v2);
  v5 = (*(*v2 + 232))(v2);
  v6 = (*(*v2 + 256))(v2);
  v7 = (*(*v2 + 272))(v2);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v8 = (*(*v2 + 224))(v2, &v16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v9 = v3 | 2;
  if (!v4)
  {
    v9 = v3;
  }

  if (v5)
  {
    v9 |= 4u;
  }

  if (v6)
  {
    v9 |= 8u;
  }

  if (v7)
  {
    v9 |= 0x10u;
  }

  if (v8)
  {
    v10 = v9 | 0x20;
  }

  else
  {
    v10 = v9;
  }

  (*(*v2 + 72))(v2, &__p);
  v11 = HIBYTE(v15);
  if (v15 < 0)
  {
    v11 = v14;
  }

  if (v11)
  {
    v10 |= 0x40u;
  }

  if (!(*(*v2 + 288))(v2))
  {
    goto LABEL_33;
  }

  result = sub_100046A8C();
  if (result && (result & 7) == 0)
  {
    if ((*(*result + 176))(result))
    {
      v12 = 384;
    }

    else
    {
      v12 = 128;
    }

    v10 |= v12;
LABEL_33:
    if ((*(*v2 + 360))(v2))
    {
      v10 |= 0x2000u;
    }

    if ((*(*v2 + 280))(v2))
    {
      v2 = v10 | 0x4000;
    }

    else
    {
      v2 = v10;
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_41;
  }

LABEL_42:
  __break(0x5516u);
  return result;
}

uint64_t sub_100073670(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v2 = result;
  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = (*(*result + 144))(result);
  *v2 = 3;
  if (v2 == -1)
  {
LABEL_11:
    __break(0x5500u);
    return result;
  }

  v3 = 0x100000000000000;
  if (result)
  {
    v3 = 0x500000000000000;
  }

  *(v2 + 1) = v3;
  return 0;
}

void sub_100073704(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_49;
  }

  v3 = *(a1 + 1776);
  if (v3 >= 2)
  {
    goto LABEL_48;
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  pthread_mutex_lock(&stru_10012B440);
  v5 = 0;
  if (a2 <= 0x80000)
  {
    switch(a2)
    {
      case 327689:
        v5 = 4096;
        break;
      case 327706:
        v5 = 2048;
        break;
      case 458753:
        v6 = *(a1 + 1788);
        v7 = __CFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
LABEL_50:
          __break(0x5500u);
LABEL_51:
          __break(0x5513u);
          JUMPOUT(0x1000739D4);
        }

        *(a1 + 1788) = v8;
        v5 = 65552;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 524289:
      case 524290:
      case 524305:
        v5 = 256;
        break;
      case 524291:
        *(a1 + 1784) |= 0x40000u;
        if ((a1 + 1280) < 0xFFFFFFFFFFFFFE50)
        {
          goto LABEL_32;
        }

        goto LABEL_51;
      case 524292:
      case 524304:
        *(a1 + 1784) |= 0x40000u;
        if ((a1 + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

LABEL_32:
        v13 = *(a1 + 1720);
        v7 = __CFADD__(v13, 4);
        v14 = (v13 + 4);
        if (v7)
        {
          goto LABEL_50;
        }

        *v14 ^= 0x80000000;
        v5 = 128;
        break;
      case 524293:
        v5 = 0x4000;
        break;
      case 524294:
        v5 = 64;
        break;
      case 524295:
        v5 = 0x2000;
        break;
      case 524296:
      case 524303:
      case 524306:
      case 524310:
        break;
      case 524297:
        v5 = 32769;
        break;
      case 524298:
      case 524311:
        v5 = 131074;
        *(a1 + 1784) |= 2u;
        break;
      case 524299:
        *(a1 + 1784) |= 0x40000u;
        if ((a1 + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

        v11 = *(a1 + 1720);
        v7 = __CFADD__(v11, 4);
        v12 = (v11 + 4);
        if (v7)
        {
          goto LABEL_50;
        }

        *v12 ^= 0x2000000u;
        v5 = 2;
        break;
      case 524300:
      case 524308:
        v5 = 4;
        break;
      case 524301:
        *(a1 + 1784) |= 8u;
        v5 = 8;
        break;
      case 524302:
        *(a1 + 1784) |= 0x20002u;
        goto LABEL_25;
      case 524307:
      case 524309:
LABEL_25:
        v5 = 0x20000;
        break;
      case 524312:
        *(a1 + 1784) |= 0x40002u;
        if ((a1 + 1280) > 0xFFFFFFFFFFFFFE4FLL)
        {
          goto LABEL_51;
        }

        v9 = *(a1 + 1720);
        v10 = (v9 + 4);
        if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_50;
        }

        v5 = 0;
        *v10 ^= 0x400u;
        break;
      default:
        if (a2 == 1048579)
        {
          v5 = 32;
        }

        else
        {
          v5 = 0;
        }

        break;
    }
  }

  dword_10012B438 |= v5;
  *(a1 + 1780) |= v5;
  pthread_mutex_unlock(&stru_10012B440);
  v15 = *(a1 + 2748);
  if (v15 > 1)
  {
LABEL_48:
    __break(0x550Au);
LABEL_49:
    __break(0x5516u);
    goto LABEL_50;
  }

  if (v15)
  {
    return;
  }

  if ((*(a1 + 1780) & *(a1 + 1208)) == 0)
  {
    return;
  }

  *(a1 + 2748) = 1;
  sub_1000651C8(*(a1 + 8));
  if (!v16)
  {
    return;
  }

  sub_1000651C8(*(a1 + 8));
  if (!v17 || (v17 & 7) != 0)
  {
    goto LABEL_49;
  }

  v18 = *(a1 + 2744);

  sub_10006292C(v17, v18);
}

uint64_t sub_100073A34(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 40))(result, a2, a3, 0, 0);
  }

  __break(0x5516u);
  return result;
}

void sub_100073A70(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  pthread_mutex_lock(&stru_10012B440);
  v4 = a2 >> 1 == 524291;
  dword_10012B438 |= 32 * v4;
  *(a1 + 1780) |= 32 * v4;
  pthread_mutex_unlock(&stru_10012B440);
  v5 = *(a1 + 2748);
  if (v5 >= 2)
  {
LABEL_14:
    __break(0x550Au);
    return;
  }

  if (v5)
  {
    return;
  }

  if ((*(a1 + 1780) & *(a1 + 1208)) == 0)
  {
    return;
  }

  *(a1 + 2748) = 1;
  sub_1000651C8(*(a1 + 8));
  if (!v6)
  {
    return;
  }

  sub_1000651C8(*(a1 + 8));
  if (!v7 || (v7 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v8 = *(a1 + 2744);

  sub_10006292C(v7, v8);
}

void sub_100073B60(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v4[0] = v3;
    v4[1] = v3;
    v5 = 0xAAAAAAAAAAAAAAAALL;
    memset(&__p, 0, sizeof(__p));
    if (*(a1 + 2764) != -1)
    {
      LODWORD(v4[0]) = *(a1 + 2764);
      sub_10006E018(a1, v4);
      std::string::operator=((a1 + 2832), &__p);
      sub_10006DE00(a1, v4);
      std::string::operator=((a1 + 2784), &__p);
      sub_10006E124(a1, v4);
      std::string::operator=((a1 + 2856), &__p);
      sub_10006DF0C(a1, v4);
      std::string::operator=((a1 + 2808), &__p);
      sub_10006E230(a1, v4);
      std::string::operator=((a1 + 2880), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_100073C78(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || (*(a1 + 1208) = 0, *(a1 + 2748) = 0, sub_1000651C8(a2), !v3) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = *(a1 + 2744);

    sub_1000629DC(v3, v4);
  }
}

void *sub_100073CD8(void *result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *result - *a2;
    if (!__OFSUB__(*result, *a2))
    {
      *result = v2;
      v3 = result[1];
      v4 = a2[1];
      v5 = __OFSUB__(v3, v4);
      v6 = v3 - v4;
      if (!v5)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
LABEL_8:
          result[1] = v6;
          return result;
        }

        while (1)
        {
          v5 = __OFSUB__(v2--, 1);
          if (v5)
          {
            break;
          }

          *result = v2;
          v6 += 1000000000;
          if (v6 - 1000000000 >= -1000000000)
          {
            goto LABEL_8;
          }
        }

        result[1] = v6;
      }
    }

    __break(0x5515u);
  }

  __break(0x5516u);
  return result;
}

void *sub_100073D4C(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100115F28;
    sub_1000DDCF4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void *sub_100073DB0(void *result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *result + *a2;
    if (!__OFADD__(*result, *a2))
    {
      *result = v2;
      v3 = result[1];
      v4 = a2[1];
      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (!v5)
      {
        if (v6 <= 999999999)
        {
LABEL_8:
          result[1] = v6;
          return result;
        }

        while (!__OFADD__(v2, 1))
        {
          *result = v2 + 1;
          v6 -= 1000000000;
          ++v2;
          if (v6 + 1000000000 <= 1999999999)
          {
            goto LABEL_8;
          }
        }

        result[1] = v6;
      }
    }

    __break(0x5500u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100073E38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_8;
    }

    result = (*(*result + 272))(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          *(v2 + 57) = 1;
          return result;
        }

LABEL_8:
        __break(0x5516u);
      }
    }
  }

  return result;
}

uint64_t sub_100073EB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_8;
    }

    result = (*(*result + 272))(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          *(v2 + 57) = 0;
          return result;
        }

LABEL_8:
        __break(0x5516u);
      }
    }
  }

  return result;
}

void sub_100073F2C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_44;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_44;
  }

  sub_100064F7C(a1, a2, 0);
  *a1 = off_100115F80;
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = a1 + 1208;
  *(a1 + 1524) = 2;
  sub_10008C130(a1 + 1992);
  *(a1 + 2212) = 0;
  *(a1 + 2232) = a1 + 2232;
  *(a1 + 2240) = a1 + 2232;
  *(a1 + 2248) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2372) = 0;
  *(a1 + 2384) = 0u;
  *(a1 + 2376) = a1 + 2384;
  sub_1000CB970((a1 + 2256));
  *(a1 + 1520) = 0;
  v4 = sub_10002BB1C();
  if (!v4)
  {
    goto LABEL_44;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_44;
  }

  *(a1 + 2368) = (*(*v4 + 360))(v4, "_IapAllowNonClassZeroForVPort");
  v5 = sub_10002BB1C();
  if (!v5)
  {
    goto LABEL_44;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_44;
  }

  *(a1 + 2369) = (*(*v5 + 360))(v5, "_IapAllowFakeAuthV1ForVPort");
  *(a1 + 2204) = 0;
  *(a1 + 2208) = -1;
  *(a1 + 2200) = 0;
  *(a1 + 2214) = 0;
  *(a1 + 1272) = 0;
  if (!a2)
  {
    goto LABEL_44;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_44;
  }

  v6 = sub_100018DC0(a2);
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0;
  pthread_mutex_init((a1 + 1280), 0);
  pthread_mutex_init((a1 + 1344), 0);
  v7 = pthread_mutex_init((a1 + 1448), 0);
  v8 = sub_100065198(v7);
  if (!v8)
  {
    goto LABEL_44;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_44;
  }

  v9 = sub_1000929D4(v8, 0, 19885, a2);
  v10 = sub_100065198(v9);
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_44;
  }

  *(a1 + 1516) = dword_10012CE80;
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_44;
    }

    if ((*(*v6 + 272))(v6))
    {
      *(a1 + 1516) &= *(v6 + 204);
    }
  }

  sub_1000651C8(a2);
  if (!v11)
  {
    goto LABEL_44;
  }

  v12 = v11;
  if ((v11 & 7) != 0)
  {
    goto LABEL_44;
  }

  v13 = sub_10006274C(v11);
  *(a1 + 1980) = v13;
  if (v13 == -1)
  {
    __break(0x5518u);
    goto LABEL_44;
  }

  sub_1000629DC(v12, v13);
  sub_1000743E4(a1, 0);
  *(a1 + 1272) = 0;
  sub_100074588(a1);
  sub_100074630(a1, 0, 1, 1);
  *&v14 = 0;
  *(a1 + 1536) = 0x6400000019;
  *(a1 + 1544) = v14;
  *(a1 + 1560) = *(a1 + 8);
  *(a1 + 1584) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1532) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1192) = 0;
  sub_10007478C(a1 + 1992);
  if (*(a1 + 2343) < 0)
  {
    v15 = *(a1 + 2320);
    if (!v15)
    {
      goto LABEL_44;
    }

    *v15 = 0;
    *(a1 + 2328) = 0;
  }

  else
  {
    *(a1 + 2320) = 0;
    *(a1 + 2343) = 0;
  }

  if (*(a1 + 2367) < 0)
  {
    v16 = *(a1 + 2344);
    if (!v16)
    {
      goto LABEL_44;
    }

    *v16 = 0;
    *(a1 + 2352) = 0;
  }

  else
  {
    *(a1 + 2344) = 0;
    *(a1 + 2367) = 0;
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    if ((v17 & 7) == 0)
    {
      *(v17 + 1992) = 0;
      v18 = sub_100052234();
      if (v18)
      {
        if ((v18 & 7) == 0)
        {
          (*(*v18 + 16))(v18, a1);
          v19 = sub_100048620();
          if (v19)
          {
            if ((v19 & 7) == 0)
            {
              (*(*v19 + 16))(v19, a1);
              v20 = sub_10004B1AC();
              if (v20)
              {
                if ((v20 & 7) == 0)
                {
                  (*(*v20 + 16))(v20, a1);
                  v21 = sub_10004AB10();
                  if (v21)
                  {
                    if ((v21 & 7) == 0)
                    {
                      (*(*v21 + 16))(v21, a1);
                      v22 = sub_1000D5ED0();
                      if (v22)
                      {
                        if ((v22 & 7) == 0)
                        {
                          (*(*v22 + 16))(v22, a1);
                          v23 = sub_10002DDA4();
                          if (v23)
                          {
                            if ((v23 & 7) == 0)
                            {
                              (*(*v23 + 16))(v23, a1);
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
        }
      }
    }
  }

LABEL_44:
  __break(0x5516u);
}

void sub_1000743E4(uint64_t a1, int a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    *(a1 + 1968) = 0;
    *(a1 + 1976) = 0;
    *(a1 + 1978) = 0;
    *(a1 + 1984) = 0;
    sub_1000651C8(*(a1 + 8));
    if (v4)
    {
      if ((v4 & 7) != 0)
      {
        goto LABEL_27;
      }

      sub_1000629DC(v4, *(a1 + 1980));
    }

    v5 = 0;
    *(a1 + 1662) = -1;
    *(a1 + 1664) = -1;
    do
    {
      if (v5 > ~(a1 + 1666))
      {
        __break(0x5513u);
        goto LABEL_27;
      }

      *(a1 + v5 + 1666) = -1;
      v5 += 2;
    }

    while (v5 != 30);
    *(a1 + 1656) = -1;
    *(a1 + 1660) = -1;
    *(a1 + 1592) = 0;
    *(a1 + 1696) = 0;
    *(a1 + 1760) = 0;
    *(a1 + 1824) = 0;
    *(a1 + 1888) = 0;
    *(a1 + 1952) = &_mh_execute_header;
    *(a1 + 1964) = 0;
    *(a1 + 1960) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      if ((v6 & 7) == 0)
      {
        sub_10005BF5C(v6, (a1 + 1592));
        v7 = *(a1 + 8);
        if (v7)
        {
          if ((v7 & 7) == 0)
          {
            v8 = sub_100018DC0(v7);
            if (!v8)
            {
              return;
            }

            v9 = v8;
            if ((v8 & 7) == 0)
            {
              (*(*v8 + 144))(v8, 1024);
              if (!a2)
              {
                return;
              }

              v10 = *(a1 + 8);
              if (v10)
              {
                if ((v10 & 7) == 0)
                {
                  v11 = sub_10005BDFC(v10);
                  if (v11 != v11)
                  {
                    goto LABEL_28;
                  }

                  if (v11 == -1)
                  {
                    v12 = 16;
                  }

                  else
                  {
                    v12 = v11;
                  }

                  sub_100065778(a1, v9, 7u, v12);
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  __break(0x5516u);
LABEL_28:
  __break(0x550Au);
}

void sub_100074588(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    v2 = *(a1 + 1200);
    v5 = v2;
    v3 = a1 + 1208;
    if (v2 == a1 + 1208)
    {
LABEL_10:
      sub_100007DB0(a1 + 1200);
      return;
    }

    while (v2 && (v2 & 7) == 0)
    {
      v4 = *(v2 + 40);
      if (v4)
      {
        if ((v4 & 7) == 0)
        {
          sub_100089F40(v4);
          operator delete();
        }

        break;
      }

      sub_100007D44(&v5);
      v2 = v5;
      if (v5 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  __break(0x5516u);
}

void sub_100074630(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a1 && (a1 & 7) == 0)
  {
    pthread_mutex_lock((a1 + 1448));
    if (*(a1 + 1408) && a3)
    {
      *(a1 + 1440) = 0;
      *(a1 + 1408) = 0u;
      *(a1 + 1424) = 0u;
    }

    pthread_mutex_unlock((a1 + 1448));
    v12 = 20;
      ;
    }

    v12 = 23;
    do
    {
      v8 = sub_10006733C(a1, -1, &v12, 0, 0xFFFFu);
    }

    while (!v8);
    if (!a2)
    {
      goto LABEL_19;
    }

    v9 = sub_100065198(v8);
    if (v9)
    {
      if ((v9 & 7) == 0)
      {
        v10 = sub_100058EBC(v9, a2);
        if (v10 == -2)
        {
          *(a1 + 1416) = -2;
LABEL_19:
          sub_100074AEC(a1, 0, 0);
          return;
        }

        if (!a4)
        {
          goto LABEL_19;
        }

        v11 = sub_100065198(v10);
        if (v11 && (v11 & 7) == 0)
        {
          sub_100058CA0(v11, a2, 0);
          goto LABEL_19;
        }
      }
    }
  }

  __break(0x5516u);
}

uint64_t sub_100074750(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 1533) = 0;
    *(result + 1536) = 0x6400000019;
    *(result + 1544) = a2;
    *(result + 1552) = 0;
    *(result + 1560) = *(result + 8);
    *(result + 1584) = 0;
  }

  return result;
}

uint64_t sub_10007478C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10008C6A8(result);
    result = sub_10008C80C(v1);
    v2 = *(v1 + 168);
    if (*(v1 + 176) >= v2)
    {
      *(v1 + 176) = v2;
      *(v1 + 192) = xmmword_1000EF1C0;
      *(v1 + 64) = 0;
      *(v1 + 120) = 0;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

void sub_1000747F4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100073F2C(a1, a2);
  }
}

void sub_100074808(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  *a1 = off_100115F80;
  v2 = sub_100052234();
  if (!v2)
  {
    goto LABEL_24;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_24;
  }

  (*(*v2 + 24))(v2, a1);
  v3 = sub_100048620();
  if (!v3)
  {
    goto LABEL_24;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_24;
  }

  (*(*v3 + 24))(v3, a1);
  v4 = sub_10004B1AC();
  if (!v4)
  {
    goto LABEL_24;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_24;
  }

  (*(*v4 + 24))(v4, a1);
  v5 = sub_10004AB10();
  if (!v5)
  {
    goto LABEL_24;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_24;
  }

  (*(*v5 + 24))(v5, a1);
  v6 = sub_1000D5ED0();
  if (!v6)
  {
    goto LABEL_24;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_24;
  }

  (*(*v6 + 24))(v6, a1);
  v7 = sub_10002DDA4();
  if (!v7)
  {
    goto LABEL_24;
  }

  if ((v7 & 7) != 0)
  {
    goto LABEL_24;
  }

  v8 = (*(*v7 + 24))(v7, a1);
  v9 = sub_100065198(v8);
  if (!v9)
  {
    goto LABEL_24;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_24;
  }

  sub_1000929D4(v9, 0, 0, *(a1 + 8));
  sub_100074AEC(a1, 0, 1);
  sub_100074C54(a1, 0xFFFFu);
  pthread_mutex_destroy((a1 + 1448));
  pthread_mutex_destroy((a1 + 1344));
  pthread_mutex_destroy((a1 + 1280));
  sub_1000651C8(*(a1 + 8));
  if (!v10 || (v11 = v10, (v10 & 7) != 0))
  {
LABEL_24:
    __break(0x5516u);
  }

  else
  {
    sub_1000629DC(v10, *(a1 + 1980));
    sub_100060C50(v11, *(a1 + 1980));
    *(a1 + 1980) = -1;
    sub_100074630(a1, 0, 1, 1);
    *(a1 + 1528) = 0;
    *(a1 + 1532) = 0;
    pthread_mutex_destroy((a1 + 2256));
    sub_1000089F8(a1 + 2376);
    if (*(a1 + 2367) < 0)
    {
      operator delete(*(a1 + 2344));
    }

    if (*(a1 + 2343) < 0)
    {
      operator delete(*(a1 + 2320));
    }

    sub_1000187F0((a1 + 2232));
    v12 = a1 + 2160;
    sub_10008E050(&v12);
    sub_1000089F8(a1 + 2128);
    sub_1000089F8(a1 + 2088);
    v12 = a1 + 2064;
    sub_100007F60(&v12);
    v12 = a1 + 2016;
    sub_100007F60(&v12);
    v12 = a1 + 1992;
    sub_100007F60(&v12);
    sub_1000089F8(a1 + 1200);
    sub_10006522C(a1);
  }
}

void sub_100074AEC(uint64_t a1, int a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_42;
  }

  v6 = pthread_mutex_lock((a1 + 2256));
  while (*(a1 + 2248))
  {
    v7 = *(a1 + 2240);
    if (v7)
    {
      v8 = (*(a1 + 2240) & 7) == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_42;
    }

    v9 = *(v7 + 16);
    if (a2)
    {
      v10 = sub_100065198(v6);
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_42;
      }

      if (!v9 || (v9 & 7) != 0)
      {
        goto LABEL_42;
      }

      v12 = *(v9 + 16);
      if ((v12 & 7) != 0)
      {
        goto LABEL_42;
      }

      v13 = sub_1000949E0(v10, v12, 0);
      v14 = sub_100065198(v13);
      if (!v14)
      {
        goto LABEL_42;
      }

      if ((v14 & 7) != 0)
      {
        goto LABEL_42;
      }

      v15 = *(v9 + 16);
      if ((v15 & 7) != 0)
      {
        goto LABEL_42;
      }

      v16 = sub_1000933B0(v14, v15);
      if (v13)
      {
        if (v16 == 56 || v16 == 19)
        {
          if ((v13 & 7) != 0)
          {
            goto LABEL_42;
          }

          if ((sub_10005BF90(v13) & 1) == 0)
          {
            sub_10008505C(v13);
          }
        }
      }

      v18 = *(v9 + 16);
      if (!v18 || (v18 & 7) != 0)
      {
        goto LABEL_42;
      }

      sub_1000BA010(v18, 0);
    }

    sub_10008D204(a1, v9);
  }

  pthread_mutex_unlock((a1 + 2256));
  if (a3)
  {
    v19 = *(a1 + 8);
    if (v19 && (v19 & 7) == 0)
    {

      sub_10005B0F0(v19);
      return;
    }

LABEL_42:
    __break(0x5516u);
  }
}

uint64_t sub_100074C54(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    do
    {
      v9 = -1;
      v10 = 0;
      result = sub_10006733C(v2, -1, &v9, &v10, a2);
      v4 = result;
      if (!result)
      {
        result = v10;
        if (v10)
        {
          v5 = v9 - 93;
          v6 = v5 > 0x19;
          v7 = (1 << v5) & 0x3000001;
          if (!v6 && v7 != 0)
          {
            operator delete[]();
          }
        }
      }
    }

    while (!v4);
  }

  return result;
}

void sub_100074D20(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100074808(a1);
  }
}

uint64_t sub_100074D34(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100074808(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100074D7C(uint64_t result, unsigned __int8 a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = a2 >> 4;
  if (v2 == 2)
  {
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v3 = 1;
      goto LABEL_11;
    }

LABEL_15:
    __break(0x5516u);
    return result;
  }

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v3 = 0;
LABEL_11:

  return sub_100094CA0(result, v3);
}

void sub_100074DFC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_192;
  }

  v4 = *(a2 + 128);
  if (!*(a2 + 128))
  {
    return;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_192;
  }

  v6 = *v5;
  if (v6 >= 0x20)
  {
    goto LABEL_193;
  }

  v7 = *(a2 + 8);
  v8 = sub_100065198(a1);
  if (!v8)
  {
    goto LABEL_192;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_192;
  }

  v9 = sub_100092B58(v8, v7);
  v10 = v9;
  v11 = sub_100065198(v9);
  if (!v11)
  {
    goto LABEL_192;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_192;
  }

  v12 = sub_1000933B0(v11, v7);
  v13 = v12;
  v14 = sub_100065198(v12);
  if (!v14 || (v14 & 7) != 0)
  {
    goto LABEL_192;
  }

  v15 = sub_1000592F0(v14, v7);
  v92 = -21846;
  v16 = *(a1 + 1588);
  v84 = __CFADD__(v16, 1);
  v17 = v16 + 1;
  if (v84)
  {
LABEL_194:
    __break(0x5500u);
    goto LABEL_195;
  }

  v18 = v15;
  *(a1 + 1588) = v17;
  pthread_mutex_lock((a1 + 1280));
  if (sub_10006825C(v7))
  {
    v92 = 112;
    sub_10006733C(a1, -1, &v92, 0, 0xFFFFu);
  }

  v92 = 115;
  sub_10006733C(a1, -1, &v92, 0, 0xFFFFu);
  pthread_mutex_unlock((a1 + 1280));
  *(a1 + 2200) = 0;
  sub_10007478C(a1 + 1992);
  sub_1000743E4(a1, 1);
  *(a1 + 1272) = 0;
  sub_100074588(a1);
  v19 = *(a1 + 8);
  if (!v19)
  {
    goto LABEL_192;
  }

  if ((v19 & 7) != 0)
  {
    goto LABEL_192;
  }

  sub_10005BD80(v19);
  v20 = sub_1000CC7A0();
  if (!v20)
  {
    goto LABEL_192;
  }

  v21 = v20;
  if ((v20 & 7) != 0)
  {
    goto LABEL_192;
  }

  v22 = sub_1000CE018(*(a1 + 8));
  (*(*v21 + 136))(v21, v22);
  v92 = 116;
  sub_10006733C(a1, -1, &v92, 0, 0xFFFFu);
  sub_100075A08(a1);
  v92 = 0;
  sub_10006733C(a1, -1, &v92, 0, 0xFFFFu);
  v23 = sub_100075A48(a1, 0, 0);
  v24 = sub_100065198(v23);
  if (!v24 || (v24 & 7) != 0)
  {
    goto LABEL_192;
  }

  sub_100059100(v24, v7);
  sub_100074630(a1, *(a2 + 8), 1, 1);
  *(a1 + 1416) = -1;
  sub_100075B90(a1, v7, -1);
  v26 = sub_10007692C(a1, v25, 1);
  if (v18)
  {
    v27 = sub_100065198(v26);
    if (!v27)
    {
      goto LABEL_192;
    }

    if ((v27 & 7) != 0)
    {
      goto LABEL_192;
    }

    v28 = sub_100092B58(v27, v18);
    v29 = v28;
    v30 = sub_100065198(v28);
    if (!v30)
    {
      goto LABEL_192;
    }

    if ((v30 & 7) != 0)
    {
      goto LABEL_192;
    }

    v31 = sub_100092C44(v30, v18);
    v32 = sub_100065198(v31);
    if (!v32 || (v32 & 7) != 0)
    {
      goto LABEL_192;
    }

    sub_100059100(v32, v18);
    v26 = sub_1000769C0(a1, *(a1 + 8), -1);
    if (v29)
    {
      LOWORD(v88) = 120;
      sub_10006733C(a1, -1, &v88, 0, 0xFFFFu);
      v26 = sub_100076A8C(a1, *(a1 + 8), v18, v29);
    }
  }

  v33 = sub_100065198(v26);
  if (!v33 || (v33 & 7) != 0)
  {
LABEL_192:
    __break(0x5516u);
    goto LABEL_193;
  }

  sub_100093338(v33, v7, 1);
  if (sub_100068364(v7))
  {
    v34 = 5;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(a1 + 2368);
  if (v35 > 1)
  {
    goto LABEL_193;
  }

  v36 = (1 << v6);
  if ((v35 & 1) == 0)
  {
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_192;
    }

    if ((*(*v7 + 272))(v7))
    {
      if ((v6 | 2) != 2)
      {
        v55 = *(a1 + 8);
        if (!v55 || (v55 & 7) != 0)
        {
          goto LABEL_192;
        }

        if ((sub_10005BFD0(v55) & 1) == 0)
        {
          v56 = **v7;
          if (!v57 || (v57 & 7) != 0)
          {
            goto LABEL_192;
          }

          v58 = *(a1 + 8);
          v59 = (*(*v57 + 392))(v57);
          sub_100076B84(1, v58, v7, v59);
        }

        sub_100076C34(*(a1 + 8), v7, 0);
        return;
      }

      v6 = 0;
      v36 = 1;
    }
  }

  v37 = *(a1 + 2212);
  if (v37 > 1)
  {
    goto LABEL_193;
  }

  if ((v37 & 1) == 0)
  {
    v38 = *(a1 + 8);
    if (!v38 || (v38 & 7) != 0)
    {
      goto LABEL_192;
    }

    if (sub_10005BDFC(v38) == 10)
    {
      goto LABEL_49;
    }

    v40 = *(a1 + 2368);
    if (v40 > 1)
    {
      goto LABEL_193;
    }

    if ((v40 & 1) == 0)
    {
      v41 = *(a1 + 8);
      if (!v41 || (v41 & 7) != 0)
      {
        goto LABEL_192;
      }

      if (sub_10005BCA0(v41) && (v6 | 2) != 2)
      {
        v71 = *(a1 + 8);
        if (!v71 || (v71 & 7) != 0)
        {
          goto LABEL_192;
        }

        if (sub_10005BDFC(v71) <= 31)
        {
          v72 = *(a1 + 8);
          if (!v72 || (v72 & 7) != 0)
          {
            goto LABEL_192;
          }

          if ((sub_10005BDFC(v72) & 0x80000000) == 0)
          {
            v73 = *(a1 + 8);
            if (!v73 || (v73 & 7) != 0)
            {
              goto LABEL_192;
            }

            v74 = sub_10005BDFC(v73);
            if (v74 > 0x1F)
            {
LABEL_195:
              __break(0x5514u);
              goto LABEL_196;
            }

            if (((1 << v74) & 0xC1) != 0)
            {
LABEL_49:
              sub_100076E70(a1, v39, 1);
            }
          }
        }
      }
    }
  }

  v91 = 0;
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_192;
  }

  v42 = 1;
  if (((*(*v7 + 224))(v7) & 1) == 0 && v6 <= v34 && (*(a1 + 1516) & v36) != 0)
  {
    if (sub_100076EE4(a1, v7, v36, &v91))
    {
      *&v43 = 0xAAAAAAAAAAAAAAAALL;
      *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v89 = v43;
      v90 = v43;
      v88 = v43;
      v44 = ~v36 | 0x2010;
      if (v13 != 1)
      {
        v44 = -1;
      }

      sub_10007702C(a1, v7, v44 & v10);
      v45 = v36 | 1;
      v46 = sub_100068364(v7);
      if (!v46)
      {
        goto LABEL_106;
      }

      v47 = *(a1 + 2368);
      if (v47 <= 1)
      {
        if ((v47 & 1) != 0 || (v46 = (*(*v7 + 272))(v7), (v46 & 1) == 0))
        {
          v45 = v36 | 5;
          if (v6 == 4)
          {
            v48 = sub_100065198(v46);
            if (!v48 || (v48 & 7) != 0)
            {
              goto LABEL_192;
            }

            v46 = sub_1000928E0(v48, 3);
            if (v46)
            {
              v49 = v46 == v7;
            }

            else
            {
              v49 = 1;
            }

            if (v49)
            {
              v45 = v36 | 0xD;
            }

            else
            {
              v45 = v45;
            }

            if (v49)
            {
              v36 = v36 | 0xC;
            }

            else
            {
              v36 = v36 | 4;
            }
          }

          else
          {
            v36 = v36 | 4;
          }
        }

LABEL_106:
        v60 = sub_100065198(v46);
        if (!v60 || (v60 & 7) != 0)
        {
          goto LABEL_192;
        }

        v61 = (*(*v60 + 144))(v60, *(a1 + 8), v36);
        if (v61 != v36)
        {
          sub_1000DDEEC(0, 4, "%s:%d setActiveLingoMaskReturn != lingoMask\n");
          return;
        }

        v62 = sub_100065198(v61);
        if (!v62 || (v62 & 7) != 0)
        {
          goto LABEL_192;
        }

        if ((*(*v62 + 160))(v62, *(a1 + 8), v45) != v45)
        {
          sub_1000DDEEC(0, 4, "%s:%d setAllowedLingoMaskReturn != lingoAllow\n");
          return;
        }

        v63 = *(a1 + 8);
        if (!v63)
        {
          goto LABEL_192;
        }

        if ((v63 & 7) != 0)
        {
          goto LABEL_192;
        }

        v64 = sub_10005BB24(v63, v6);
        v65 = sub_100065198(v64);
        if (!v65 || (v65 & 7) != 0)
        {
          goto LABEL_192;
        }

        v66 = sub_100092790(v65, *(a1 + 8), v6);
        if (!v66)
        {
          __break(0x5518u);
          goto LABEL_192;
        }

        v67 = v66;
        if (v6 <= 2)
        {
          v42 = 0;
          v68 = 2;
          v69 = 1;
          v70 = 0;
          if (v6 == 1)
          {
            v69 = 0;
            v68 = 4;
            v42 = 1;
            v70 = 4;
          }

LABEL_141:
          v75 = sub_100065198(v66);
          if (v75 && (v75 & 7) == 0)
          {
            sub_100092EE8(v75, v7, v70);
            if (!qword_10012C6E0)
            {
LABEL_146:
              if ((v67 & 7) == 0)
              {
                (*(*v67 + 80))(v67, 4, 0, v7);
                pthread_mutex_lock((a1 + 1280));
                v76 = *(a1 + 8);
                if (v76)
                {
                  if ((v76 & 7) == 0)
                  {
                    v77 = sub_10005BDFC(v76);
                    *(a1 + 1533) = 0;
                    *(a1 + 1536) = 0x6400000019;
                    *(a1 + 1544) = v7;
                    *(a1 + 1552) = 0;
                    *(a1 + 1560) = *(a1 + 8);
                    *(a1 + 1584) = 0;
                    if (v77 != v77)
                    {
                      goto LABEL_193;
                    }

                    v78 = v77;
                    if (v77 == -1)
                    {
                      v79 = 16;
                    }

                    else
                    {
                      v79 = v77;
                    }

                    if (sub_10006825C(v7) && (v78 == 100 || v78 == -1))
                    {
                      *(a1 + 1533) = 1;
                      if (sub_1000671A8(a1, -1, 115, 0, 2000))
                      {
                        sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1138);
                      }
                    }

                    LODWORD(v88) = 1;
                    DWORD1(v88) = v79;
                    *(&v88 + 1) = v7;
                    LODWORD(v89) = 0;
                    DWORD1(v89) = v36;
                    v81 = *(a1 + 8);
                    *(&v89 + 1) = v81;
                    v82 = *(a1 + 1533);
                    if (v82 > 1)
                    {
                      goto LABEL_193;
                    }

                    if (v82)
                    {
                      *(a1 + 1536) = 0x6400000001;
                      *(a1 + 1544) = v7;
                      *(a1 + 1552) = 0;
                      *(a1 + 1556) = v36;
                      *(a1 + 1560) = v81;
                    }

                    else
                    {
                      sub_100077384(a1, 0, 0, &v88, 48);
                    }

                    v83 = *(a1 + 1528);
                    if (v83 > 7)
                    {
                      goto LABEL_193;
                    }

                    v84 = v68 < v83 || v83 >= 4;
                    if (v84)
                    {
                      v85 = v69;
                    }

                    else
                    {
                      v85 = 1;
                    }

                    if (v85 == 1)
                    {
                      if (v83 <= 3)
                      {
                        *(a1 + 1528) = v68;
                        v83 = v68;
                      }

                      if (v42)
                      {
                        if (v83 == 4)
                        {
                          *(a1 + 1532) = 1;
                        }

                        if (v78 > 15 || v78 == -1)
                        {
                          *(a1 + 1584) = 1;
                        }

                        else if ((v78 & 0x80000000) == 0 && ((1 << v78) & 0xE400) != 0)
                        {
                          sub_100076E70(a1, v80, 1);
                        }

                        LODWORD(v88) = 17;
                        DWORD1(v88) = v79;
                        sub_100077384(a1, 0, 0, &v88, 48);
                      }

                      else if (v69)
                      {
                        v86 = *(a1 + 1588) > 0xCu ? 1 : 800;
                        if (sub_1000671A8(a1, -1, 113, 0, v86))
                        {
                          sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1236);
                        }
                      }
                    }

                    v87 = *(a1 + 8);
                    if (v87 && (v87 & 7) == 0)
                    {
                      sub_10005BB6C(v87, v6);
                      pthread_mutex_unlock((a1 + 1280));
                      return;
                    }
                  }
                }
              }

              goto LABEL_192;
            }

            if ((qword_10012C6E0 & 7) == 0)
            {
              (*(*qword_10012C6E0 + 8))();
              qword_10012C6E0 = 0;
              goto LABEL_146;
            }
          }

          goto LABEL_192;
        }

        if (v6 != 3)
        {
          if (v6 == 4)
          {
            v66 = sub_10007717C(a1, 1u);
          }

          else if (v4 >= 4)
          {
            if (v5 >= 0xFFFFFFFFFFFFFFFDLL)
            {
LABEL_196:
              __break(0x5513u);
              return;
            }

            v69 = 0;
            v70 = 4 * (v5[3] & 1);
            goto LABEL_140;
          }
        }

        v69 = 0;
        v70 = 0;
LABEL_140:
        v68 = 4;
        goto LABEL_141;
      }

LABEL_193:
      __break(0x550Au);
      goto LABEL_194;
    }

    LOBYTE(v42) = 0;
  }

  sub_100076C34(*(a1 + 8), v7, v10);
  if (v91)
  {
    v50 = sub_100068BB4(v6);
    sub_10008DD60(1, v7, v50);
    return;
  }

  *(a1 + 2372) = 0;
  *&v90 = 0xAAAAAAAAAAAAAAAALL;
  *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v88) = 5;
  if (v42)
  {
    if ((v6 > 0xE || (*(a1 + 1516) & v36) != 0) && !(*(*v7 + 224))(v7))
    {
      goto LABEL_90;
    }

    v51 = 4;
  }

  else
  {
    v51 = 6;
  }

  LODWORD(v88) = v51;
LABEL_90:
  v52 = *(a1 + 8);
  if (!v52 || (v52 & 7) != 0)
  {
    goto LABEL_192;
  }

  v53 = sub_10005BDFC(v52);
  if (v53 != v53)
  {
    goto LABEL_193;
  }

  if (v53 == -1)
  {
    v54 = 16;
  }

  else
  {
    v54 = v53;
  }

  DWORD1(v88) = v54;
  *(&v88 + 1) = v7;
  LODWORD(v89) = 0;
  DWORD1(v89) = v36;
  *(&v89 + 1) = *(a1 + 8);
  sub_100077384(a1, 0, 0, &v88, 48);
  sub_1000DDEEC(0, 4, "%s:%d Unsupported Lingo received retVal=%xh\n");
}

void sub_100075A08(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(a1 + 2201);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return;
  }

  if (v1)
  {
    *(a1 + 2201) = 0;
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &stru_100116090);
  }
}

uint64_t sub_100075A48(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  v7 = sub_10005BC54(result);
  result = *(v3 + 8);
  if (!result)
  {
    goto LABEL_22;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = sub_100018DC0(result);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_22;
  }

  v8 = result;
  result = sub_1000C05AC(v7 + 624, a2, 0);
  if (!v8 || (a3 & 1) != 0)
  {
    return result;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_22;
  }

  result = (*(*v8 + 34))(v8);
  if (!result)
  {
    return result;
  }

  v9 = **v8;
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    return result;
  }

  return sub_1000B9F4C(result, a2);
}

uint64_t sub_100075B90(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_237;
  }

  v4 = a2;
  if (!a2)
  {
    sub_1000E1D34();
  }

  v6 = sub_100065198(a1);
  if (!v6)
  {
    goto LABEL_237;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_237;
  }

  v7 = sub_1000932FC(v6, v4);
  v8 = v7;
  v9 = sub_100065198(v7);
  if (!v9)
  {
    goto LABEL_237;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_237;
  }

  v83 = sub_100092B58(v9, v4);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86 = v10;
  v87 = v10;
  v85 = v10;
  v11 = *(a1 + 8);
  if (!v11)
  {
    goto LABEL_237;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_237;
  }

  v12 = sub_10005BC54(v11);
  v13 = sub_100067278();
  v14 = *(a1 + 8);
  if (!v14 || (v14 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = sub_10005BDFC(v14);
  LODWORD(v85) = 25;
  if (v15 != v15)
  {
    goto LABEL_238;
  }

  v16 = v15;
  v17 = v15 == -1 ? 16 : v15;
  DWORD1(v85) = v17;
  *(&v85 + 1) = v4;
  *&v86 = __PAIR64__(v83, v8);
  *(&v86 + 1) = *(a1 + 8);
  v18 = *(a1 + 1416);
  if (((v18 + 8) | (a3 + 8)) > 0xF)
  {
    goto LABEL_238;
  }

  if (v18 != a3)
  {
    *(a1 + 1447) = 0;
  }

  if (a3 && v18 > 0xFFFFFFFD)
  {
LABEL_21:
    v19 = 7;
    goto LABEL_120;
  }

  *(a1 + 1416) = a3;
  if (a3 <= 2)
  {
    if (!a3)
    {
      if (v18 - 6 <= 0xFFFFFFFC)
      {
        pthread_mutex_lock((a1 + 1448));
        v27 = *(a1 + 1408);
        if (v27)
        {
          if ((v27 & 3) == 0)
          {
            sub_100059F4C(v27);
            operator delete();
          }

          goto LABEL_237;
        }

        v15 = pthread_mutex_unlock((a1 + 1448));
        v21 = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v19 = 0;
        a3 = 0;
        *(a1 + 1438) = 0;
        *(a1 + 1424) = 0;
        *(a1 + 1442) = 0;
        goto LABEL_173;
      }

      a3 = 0;
      goto LABEL_21;
    }

    if (a3 == 2)
    {
      v21 = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      v19 = 7;
      goto LABEL_173;
    }

    goto LABEL_43;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 == 6)
      {
        LODWORD(v85) = 12;
        v20 = sub_100065198(v15);
        if (!v20 || (v20 & 7) != 0)
        {
          goto LABEL_237;
        }

        v15 = sub_100092F68(v20, v4);
        v21 = 0;
        LOBYTE(v22) = (~v15 & 0xC) == 0;
        v23 = 1;
        *(a1 + 1532) = 1;
        v19 = 6;
        goto LABEL_173;
      }

LABEL_43:
      v19 = 7;
      if ((a3 - 3) > 2)
      {
        goto LABEL_120;
      }

      v22 = 0;
      a3 = 5;
      goto LABEL_112;
    }

    v26 = *(a1 + 1447);
    if (v26 > 1)
    {
      goto LABEL_238;
    }

    if (v26)
    {
      v19 = 7;
    }

    else
    {
      LODWORD(v85) = 11;
      v19 = 4;
    }

    v84 = 0x7FFFFFFF;
    v29 = *(a1 + 1408);
    if (v29)
    {
      if ((v29 & 3) != 0)
      {
        goto LABEL_237;
      }

      v29 = sub_10005A2E0(v29, &v84);
    }

    v30 = *(a1 + 2212);
    if (v30 > 1)
    {
      goto LABEL_238;
    }

    if (v30)
    {
      goto LABEL_69;
    }

    v31 = sub_100065198(v29);
    if (!v31 || (v31 & 7) != 0)
    {
      goto LABEL_237;
    }

    v32 = sub_1000932FC(v31, v4);
    if (!sub_100078FD4(v32, v83))
    {
      goto LABEL_69;
    }

    if ((v84 & 0x80000000) != 0)
    {
      goto LABEL_238;
    }

    if (v84)
    {
      v33 = *(a1 + 8);
      if (!v33 || (v33 & 7) != 0)
      {
        goto LABEL_237;
      }

      if (sub_10005BCA0(v33))
      {
        v34 = *(a1 + 2368);
        if (v34 > 1)
        {
          goto LABEL_238;
        }

        if (v34)
        {
          v35 = 58561;
        }

        else
        {
          if ((v84 & 0x80000000) != 0)
          {
            goto LABEL_238;
          }

          if (v84)
          {
            v35 = 0;
          }

          else
          {
            v35 = 58561;
          }
        }
      }

      else
      {
        v35 = 58368;
      }
    }

    else
    {
LABEL_69:
      v35 = 0;
    }

    v36 = *(a1 + 8);
    if (!v36 || (v36 & 7) != 0)
    {
      goto LABEL_237;
    }

    if (sub_10005BDFC(v36) > 31)
    {
      goto LABEL_80;
    }

    v38 = *(a1 + 8);
    if (!v38 || (v38 & 7) != 0)
    {
      goto LABEL_237;
    }

    if ((sub_10005BDFC(v38) & 0x80000000) != 0)
    {
LABEL_80:
      v41 = 0;
    }

    else
    {
      v39 = *(a1 + 8);
      if (!v39 || (v39 & 7) != 0)
      {
        goto LABEL_237;
      }

      result = sub_10005BDFC(v39);
      if (result > 0x1F)
      {
        __break(0x5514u);
        return result;
      }

      v41 = 1 << result;
    }

    if ((v41 & v35) != 0)
    {
      sub_100076E70(a1, v37, 1);
    }

    v42 = sub_100046A8C();
    if (!v42 || (v42 & 7) != 0)
    {
      goto LABEL_237;
    }

    v15 = (*(*v42 + 176))(v42);
    if (v15)
    {
      v43 = sub_100065198(v15);
      if (!v43 || (v43 & 7) != 0)
      {
        goto LABEL_237;
      }

      v15 = sub_1000932FC(v43, v4);
      if (v15 != 3)
      {
        v44 = v15;
        if (v15 != 15 && v15 != 70)
        {
          v45 = sub_100065198(v15);
          if (!v45 || (v45 & 7) != 0)
          {
            goto LABEL_237;
          }

          v46 = sub_1000933B0(v45, v4);
          if (v46 != 56)
          {
            goto LABEL_99;
          }

          v47 = sub_100065198(v46);
          if (!v47 || (v47 & 7) != 0)
          {
            goto LABEL_237;
          }

          if (sub_1000933B0(v47, v4) == 56 && (*(a1 + 2197) & 0x401) == 0)
          {
LABEL_99:
            if (!v12 || (v12 & 7) != 0)
            {
              goto LABEL_237;
            }

            sub_1000BF8B8(v12 + 16, 1, 0);
          }

          if (!v12 || (v12 & 7) != 0)
          {
            goto LABEL_237;
          }

          v15 = sub_1000BF4B0(v12 + 16, 1);
          if (v44 == 16)
          {
            v15 = sub_1000BF518(v12 + 16, 1u, 1);
          }
        }
      }
    }

    if ((*(a1 + 1273) & 0x10) != 0)
    {
      if (!v12)
      {
        goto LABEL_237;
      }

      if ((v12 & 7) != 0)
      {
        goto LABEL_237;
      }

      v48 = *(v12 + 872);
      if (!v48 || (v48 & 7) != 0)
      {
        goto LABEL_237;
      }

      v49 = *(v48 + 16);
      v15 = sub_10007D8C0(*(a1 + 8));
    }

    v22 = 0;
    a3 = 4;
LABEL_112:
    v50 = *(a1 + 1420);
    v51 = v13 >= v50;
    v52 = v13 - v50;
    if (!v51)
    {
      goto LABEL_239;
    }

    if (*(a1 + 1438) <= *(a1 + 1439) && v52 < *(a1 + 1424))
    {
      v21 = 0;
      if (v22)
      {
        v19 = 3;
      }

      v23 = v22;
      goto LABEL_173;
    }

    goto LABEL_119;
  }

  v24 = *(a1 + 1438);
  if (v24 == 255)
  {
LABEL_240:
    __break(0x5507u);
    goto LABEL_241;
  }

  v25 = v24 + 1;
  *(a1 + 1438) = v25;
  if (*(a1 + 1439) >= v25)
  {
    if (!*(a1 + 1424))
    {
      *(a1 + 1420) = v13;
      if (*(a1 + 1440) == 1)
      {
        v28 = 34000;
      }

      else
      {
        v28 = 270000;
      }

      *(a1 + 1424) = v28;
    }

    *(a1 + 1443) = 0;
    *(a1 + 1445) = 0;
    v22 = 1;
    v19 = 7;
    a3 = 3;
    goto LABEL_112;
  }

  v19 = 7;
LABEL_119:
  a3 = -2;
LABEL_120:
  v53 = sub_100046A8C();
  if (!v53 || (v53 & 7) != 0)
  {
    goto LABEL_237;
  }

  if ((*(*v53 + 176))(v53))
  {
    if (!v12 || (v12 & 7) != 0)
    {
      goto LABEL_237;
    }

    sub_1000BF4B0(v12 + 16, 0);
  }

  pthread_mutex_lock((a1 + 1448));
  v54 = *(a1 + 1408);
  if (v54)
  {
    if ((v54 & 3) == 0)
    {
      sub_100059F4C(v54);
      operator delete();
    }

    goto LABEL_237;
  }

  pthread_mutex_unlock((a1 + 1448));
  sub_100075A48(a1, 0, 0);
  if (!v12)
  {
    goto LABEL_237;
  }

  if ((v12 & 7) != 0)
  {
    goto LABEL_237;
  }

  sub_1000C05AC(v12 + 720, 0, 0);
  v55 = sub_10004B1AC();
  if (!v55 || (v55 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v55 + 744))(v55);
  if (v15)
  {
    goto LABEL_134;
  }

  v56 = sub_10004B1AC();
  if (!v56 || (v56 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v56 + 752))(v56);
  if (!v15)
  {
    goto LABEL_141;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_237;
  }

  v15 = (*(*v4 + 208))(v4);
  if (v15 == 1)
  {
LABEL_134:
    LOBYTE(v22) = 0;
    if (v18 == 6)
    {
      a3 = 6;
      v23 = 1;
      v21 = 2;
    }

    else
    {
      LODWORD(v85) = 12;
      v19 = 6;
      v23 = 1;
      v21 = 2;
      a3 = 6;
    }
  }

  else
  {
LABEL_141:
    if (a3 == -2)
    {
      v58 = -2;
    }

    else
    {
      v58 = -1;
    }

    if (v18 + 2 <= 8 && (v23 = 1, ((1 << (v18 + 2)) & 0x103) != 0))
    {
      LOBYTE(v22) = 0;
    }

    else
    {
      if (a3 == -2)
      {
        *(a1 + 1420) = v13;
        v84 = 0;
        v59 = IapAuthRandomNumber();
        if (v84)
        {
LABEL_241:
          syslog(3, "%s:%d IapAuthRandomNumber returned %d, abort");
LABEL_242:
          sub_1000E1DF4();
        }

        *(a1 + 1424) = v59 % 0x1D4C0 + 180000;
        v60 = *(a1 + 2368);
        if (v60 > 1)
        {
          goto LABEL_238;
        }

        if ((v60 & 1) == 0)
        {
          if ((v4 & 7) != 0)
          {
            goto LABEL_237;
          }

          if ((*(*v4 + 272))(v4))
          {
            v61 = *(a1 + 8);
            if (!v61 || (v61 & 7) != 0)
            {
              goto LABEL_237;
            }

            if ((sub_10005BFD0(v61) & 1) == 0)
            {
              v62 = **v4;
              if (!v63 || (v63 & 7) != 0)
              {
                goto LABEL_237;
              }

              v64 = *(a1 + 8);
              v65 = (*(*v63 + 392))(v63);
              sub_100076B84(1, v64, v4, v65);
            }
          }
        }
      }

      v66 = sub_10007692C(a1, v57, 1);
      if (*(a1 + 1512) > 1u)
      {
        goto LABEL_238;
      }

      if (!*(a1 + 1512) || *(a1 + 1515) >= 0x40u)
      {
        v67 = *(a1 + 1528);
        if (v67 > 7)
        {
          goto LABEL_238;
        }

        if (v67 == 5 || v67 == 3)
        {
          *(a1 + 1528) = 4;
          v68 = *(a1 + 1532);
          if (v68 > 1)
          {
            goto LABEL_238;
          }

          if ((v68 & 1) == 0)
          {
            LODWORD(v85) = 17;
            v66 = sub_100077384(a1, 0, 0, &v85, 48);
            *(a1 + 1532) = 1;
          }
        }
      }

      LODWORD(v85) = 13;
      v69 = sub_100065198(v66);
      if (!v69 || (v69 & 7) != 0)
      {
        goto LABEL_237;
      }

      v15 = sub_100093438(v69, v4);
      LOBYTE(v22) = 0;
      v19 = -1;
      v23 = 1;
    }

    v21 = 2;
    a3 = v58;
  }

LABEL_173:
  *(a1 + 1416) = a3;
  v70 = sub_100065198(v15);
  if (!v70 || (v70 & 7) != 0)
  {
    goto LABEL_237;
  }

  v71 = sub_100058CA0(v70, v4, a3);
  if (v23)
  {
    v72 = sub_100065198(v71);
    if (!v72 || (v72 & 7) != 0)
    {
      goto LABEL_237;
    }

    sub_100092FE4(v72, v4, 0, v22);
  }

  if (v19 != 7)
  {
    v73 = sub_100065198(v71);
    if (!v73 || (v73 & 7) != 0)
    {
      goto LABEL_237;
    }

    (*(*v73 + 176))(v73, 64, v19, v4, *(a1 + 8), 0);
    if ((v83 & 0x400) != 0)
    {
      sub_10006B678(64, v19, *(a1 + 8));
    }
  }

  if (v85 > 0x1F)
  {
    goto LABEL_238;
  }

  if (v85 != 25)
  {
    sub_100077384(a1, 0, 0, &v85, 48);
    pthread_mutex_lock((a1 + 1448));
    *(a1 + 1447) = 1;
    if (v85 <= 0x1F)
    {
      if (v85 != 11)
      {
        goto LABEL_194;
      }

      v74 = *(a1 + 1528);
      if (v74 > 7)
      {
        goto LABEL_238;
      }

      if (v74 > 3 || (v75 = *(a1 + 1440), !*(a1 + 1440)))
      {
LABEL_194:
        pthread_mutex_unlock((a1 + 1448));
        goto LABEL_195;
      }

      if (v75 != 2)
      {
        if (v75 != 1)
        {
          v82 = *(a1 + 1440);
          syslog(3, "CIapLingoGeneral::SetAuthenticationPhase invalid authen major version: %d\n");
          goto LABEL_242;
        }

        goto LABEL_221;
      }

      v76 = *(a1 + 1408);
      if (!v76)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::SetAuthenticationPhase m_PortAuthenState.pAuthenCert==NULL\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9504);
        v21 = 2;
        goto LABEL_215;
      }

      v84 = 0x7FFFFFFF;
      if ((v76 & 3) != 0)
      {
        goto LABEL_237;
      }

      v77 = sub_10005A2E0(v76, &v84);
      v21 = v77;
      v78 = v84;
      if (v77)
      {
        if ((v84 & 0x80000000) != 0)
        {
          goto LABEL_238;
        }
      }

      else
      {
        if ((v84 & 0x80000000) != 0)
        {
          goto LABEL_238;
        }

        if (v84 <= 0xA)
        {
LABEL_219:
          if (v78 <= 0xA && ((1 << v78) & 0x671) != 0)
          {
LABEL_221:
            pthread_mutex_unlock((a1 + 1448));
            *(a1 + 1528) = 5;
            goto LABEL_222;
          }

          if (v16 < 0x20 && ((1 << v16) & 0xE400) != 0)
          {
            if ((v4 & 7) == 0)
            {
              v79 = (*(*v4 + 224))(v4);
              if ((v79 & 1) == 0)
              {
                v80 = sub_100065198(v79);
                if (!v80 || (v80 & 7) != 0)
                {
                  goto LABEL_237;
                }

                if (sub_1000933B0(v80, v4) != 56)
                {
                  sub_100076E70(a1, v81, 1);
                }
              }

              goto LABEL_215;
            }

LABEL_237:
            __break(0x5516u);
            goto LABEL_238;
          }

LABEL_215:
          pthread_mutex_unlock((a1 + 1448));
          *(a1 + 1528) = 4;
          *(a1 + 1532) = 1;
LABEL_222:
          LODWORD(v85) = 17;
          sub_100077384(a1, 0, 0, &v85, 48);
LABEL_195:
          if (a3 == -2)
          {
            LOWORD(v84) = 20;
              ;
            }

            LOWORD(v84) = 23;
              ;
            }

            LODWORD(v85) = 4;
            sub_100077384(a1, 0, 0, &v85, 48);
            if ((v4 & 7) != 0)
            {
              goto LABEL_237;
            }

            if ((*(*v4 + 272))(v4))
            {
              v4 = *(v4 + 40);
              if (!v4 || (v4 & 7) != 0)
              {
                goto LABEL_237;
              }
            }

            (*(*v4 + 112))(v4);
          }

          goto LABEL_205;
        }
      }

      sub_1000DDEEC(0, 4, "%s:%d Status = %u, certClass = %x.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9456, v77, v84);
      v78 = v84;
      if ((v84 & 0x80000000) == 0)
      {
        goto LABEL_219;
      }
    }

LABEL_238:
    __break(0x550Au);
LABEL_239:
    __break(0x5515u);
    goto LABEL_240;
  }

LABEL_205:
  if (v18 == 6 && a3 != 6)
  {
    sub_100074AEC(a1, 0, 0);
  }

  return v21;
}

uint64_t sub_10007692C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = *(result + 8);
  v4 = result && (result & 7) == 0;
  if (v4 && (result = sub_10005BC54(result)) != 0 && (v6 = result, (result & 7) == 0) && ((result = sub_1000BA7B4(result, a3), (v7 = *(v6 + 488)) != 0) ? (v8 = (*(v6 + 488) & 7) == 0) : (v8 = 0), v8))
  {
    *(v3 + 2203) = *(v7 + 16) != 0;
  }

  else
  {
LABEL_16:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000769C0(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return 0;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v6 = sub_10005BB24(result, 0);
  result = sub_100065198(v6);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_100092790(result, v5, 0);
  v7 = result != 0;
  if (!result)
  {
LABEL_13:
    sub_10005BB6C(v5, 0);
    return v7;
  }

  if ((result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
  }

  else if ((a3 + 8) < 0x10)
  {
    *(result + 1416) = a3;
    goto LABEL_13;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_100076A8C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_17;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ((result & 7) != 0 || (v8 = sub_10005BB24(result, 0), (result = sub_100065198(v8)) == 0) || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    return result;
  }

  result = sub_100092790(result, v7, 0);
  if (result)
  {
    v9 = result;
    if ((result & 7) == 0)
    {
      if ((a4 & 0xFFFF8000) == 0)
      {
        v10 = 120;
        sub_10006733C(result, -1, &v10, 0, 0xFFFFu);
        sub_10007702C(v9, a3, a4);
        return sub_10005BB6C(v7, 0);
      }

LABEL_17:
      sub_1000E23C4();
    }

    goto LABEL_18;
  }

  return sub_10005BB6C(v7, 0);
}

uint64_t sub_100076B84(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = result;
  if (a2)
  {
    if ((a2 & 7) != 0 || (sub_10005BFB8(a2, result), (result = sub_10005BC54(a2)) == 0) || (result & 7) != 0)
    {
      __break(0x5516u);
      return result;
    }

    sub_1000BD2E0(result + 112, 0);
  }

  if (v7)
  {
    v8 = 21;
  }

  else
  {
    v8 = 22;
  }

  return sub_10008DEC4(v8, a2, a3, a4);
}

uint64_t sub_100076C34(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  result = sub_100065198(a1);
  v7 = result;
  if (v5)
  {
    goto LABEL_5;
  }

  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = sub_1000949E0(result, a2, 0);
  v5 = result;
  if (result)
  {
LABEL_5:
    if ((v5 & 7) == 0)
    {
      sub_10005BB24(v5, 0);
      result = sub_1000653EC(0, v5);
      if (result)
      {
        v8 = result;
        if ((result & 7) != 0)
        {
          goto LABEL_20;
        }

        sub_10007702C(result, a2, a3);
        sub_100075B90(v8, a2, -1);
      }

      else
      {
        sub_1000DDEEC(0, 4, "%s:%d Cannot get GeneralLingo object pointer. Cannot SetPortIdentifyFail. handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9671, v5);
      }

      result = sub_10005BB6C(v5, 0);
      v9 = 0;
      v10 = (v7 & 7) != 0;
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_20:
    __break(0x5516u);
    return result;
  }

  v10 = 0;
  v9 = 1;
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_20;
  }

  sub_100092EE8(v7, a2, 0);
  sub_100093438(v7, a2);
  sub_100092FE4(v7, a2, 0, 0);
  v11 = *v7;
  if (v9)
  {
    (*(v11 + 16))(v7, a2, 1);
    v12 = *(*v7 + 32);
    v13 = v7;
    v14 = a2;
  }

  else
  {
    (*(v11 + 144))(v7, v5, 1);
    v12 = *(*v7 + 160);
    v13 = v7;
    v14 = v5;
  }

  return v12(v13, v14, 1);
}

uint64_t sub_100076E70(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 8)) != 0 ? (v3 = (result & 7) == 0) : (v3 = 0), !v3 || (result = sub_10005BC54(result)) == 0 || (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  result = sub_1000BD2E0(result + 112, a3);
  if (result > 0x1F)
  {
LABEL_13:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100076EE4(uint64_t result, uint64_t a2, int a3, _DWORD *a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_28;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        if (((1 << v8) & a3) != 0)
        {
          result = sub_100065198(result);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_29;
          }

          result = sub_1000928E0(result, v8);
          if (result)
          {
            if (result != a2)
            {
              result = *(v4 + 8);
              if (!result)
              {
                goto LABEL_29;
              }

              if ((result & 7) != 0)
              {
                goto LABEL_29;
              }

              v10 = sub_10005BB24(result, v8);
              result = sub_100065198(v10);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_29;
              }

              result = sub_1000926CC(result, v8);
              if (!result)
              {
                __break(0x5518u);
LABEL_28:
                sub_1000E1D34();
              }

              if ((result & 7) != 0)
              {
                goto LABEL_29;
              }

              v11 = (*(*result + 96))(result);
              result = *(v4 + 8);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_29;
              }

              if (v11)
              {
                v12 = 0;
              }

              else
              {
                v12 = 1 << v8;
              }

              v9 |= v12;
              result = sub_10005BB6C(result, v8);
            }
          }
        }

        ++v8;
      }

      while (v8 != 15);
      if (!a4)
      {
        return v9 == 0;
      }

      if ((a4 & 3) == 0)
      {
        *a4 = v9;
        return v9 == 0;
      }
    }
  }

LABEL_29:
  __break(0x5516u);
  return result;
}

void sub_10007702C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
  }

  else
  {
    if ((a3 & 0xFFFF8000) != 0)
    {
      sub_1000E23C4();
    }

    if (a3)
    {
      if (*(a1 + 8))
      {
        v6 = 1;
        while (1)
        {
          if ((a3 >> v6))
          {
            v7 = *(a1 + 8);
            if (v7)
            {
              v8 = (*(a1 + 8) & 7) == 0;
            }

            else
            {
              v8 = 0;
            }

            if (!v8)
            {
              goto LABEL_28;
            }

            v9 = sub_10005BB24(v7, v6);
            v10 = sub_100065198(v9);
            if (!v10 || (v10 & 7) != 0)
            {
              goto LABEL_28;
            }

            v11 = sub_100092790(v10, *(a1 + 8), v6);
            if (v11)
            {
              if ((v11 & 7) != 0)
              {
                goto LABEL_28;
              }

              (*(*v11 + 80))(v11, 8, 0, a2);
            }

            v12 = *(a1 + 8);
            if (!v12 || (v12 & 7) != 0)
            {
              goto LABEL_28;
            }

            sub_10005BB6C(v12, v6);
          }

          if (++v6 == 15)
          {
            goto LABEL_24;
          }
        }
      }

      sub_1000DDEEC(0, 4, "%s:%d null handle, lingoesToDetachMask=%xh", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 9825, a3);
    }

LABEL_24:

    sub_100085118(a1, a2, 0xAu, a3);
  }
}

uint64_t sub_10007717C(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_51;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  v4 = sub_100081574(result);
  v5 = v4;
  result = sub_100065198(v4);
  if (!result)
  {
    goto LABEL_51;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_51;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_51;
  }

  v7 = sub_100018DC0(result);
  v8 = sub_100092B58(v6, v7);
  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_51;
  }

  result = sub_10005BDFC(result);
  if (a2 >= 8)
  {
    goto LABEL_52;
  }

  if (v5 == a2)
  {
    return 0;
  }

  if (a2 > 3)
  {
    return 1;
  }

  v9 = result;
  if (a2 == 1 && (v8 & 0x10) == 0 || (a2 & 6) == 2 && (v8 & 0x2000) == 0)
  {
    return 16;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_51;
  }

  v10 = sub_100018DC0(result);
  result = sub_10006825C(v10);
  if (result)
  {
    if (v9 == v9)
    {
      result = 17;
      if (v9 == -1 || v9 == 100)
      {
        return result;
      }

      goto LABEL_26;
    }

LABEL_52:
    __break(0x550Au);
    return result;
  }

LABEL_26:
  if ((v5 - 2) >= 2)
  {
    if (v5)
    {
      sub_100097394(*(v2 + 8), 1);
      goto LABEL_36;
    }
  }

  else
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_51;
    }

    result = sub_100092790(result, *(v2 + 8), 0xDu);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v11 = sub_100095860(result);
        goto LABEL_36;
      }

LABEL_51:
      __break(0x5516u);
      goto LABEL_52;
    }

    sub_1000DDEEC(0, 4, "%s:%d NULL pLingoPushUI\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 19678);
  }

  v11 = 22;
LABEL_36:
  if (a2 - 2 >= 2)
  {
    if (!a2)
    {
      return 0;
    }

    if ((v8 & 0x10) != 0)
    {
      sub_1000976B8(*(v2 + 8));
    }

    goto LABEL_49;
  }

  if ((v8 & 0x2000) != 0)
  {
    result = sub_100065198(v11);
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = sub_100092790(result, *(v2 + 8), 0xDu);
        if (result)
        {
          if ((result & 7) == 0)
          {
            if (a2 == 3)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            sub_100095A24(result, v12);
            goto LABEL_49;
          }
        }
      }
    }

    goto LABEL_51;
  }

LABEL_49:
  if (!v11)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_100077384(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_30;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_31;
  }

  if (a2 || a3)
  {
    goto LABEL_25;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_30;
  }

  result = sub_10005BCA0(result);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_30;
  }

  v10 = *a4;
  if (*a4 > 0x1Fu)
  {
LABEL_31:
    __break(0x550Au);
    return result;
  }

  if ((v10 - 2) >= 5)
  {
    if (v10 == 17)
    {
      result = *(v5 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_30;
      }

      result = sub_10005BFD0(result);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    result = *(v5 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_30;
    }

    if ((sub_10005BFD0(result) & 1) == 0)
    {
      result = *(v5 + 8);
      if (!result)
      {
        goto LABEL_30;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_30;
      }

      result = sub_10005B04C(result);
      if (!result)
      {
        goto LABEL_30;
      }

      v11 = result;
      if ((result & 7) != 0)
      {
        goto LABEL_30;
      }

      v12 = *(v5 + 8);
      v13 = (*(*result + 392))(result);
      sub_100076B84(1, v12, v11, v13);
    }
  }

LABEL_25:
  result = *(v5 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  return sub_10005BCC8(result, a2, a3, a4, a5);
}

void sub_100077528(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_372;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_372;
  }

  if (!a2)
  {
    goto LABEL_372;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_372;
  }

  v4 = *(a2 + 8);
  v5 = sub_100065198(a1);
  if (!v5)
  {
    goto LABEL_372;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_372;
  }

  v6 = sub_100092B58(v5, v4);
  v181 = v6;
  v7 = sub_100065198(v6);
  if (!v7)
  {
    goto LABEL_372;
  }

  if ((v7 & 7) != 0)
  {
    goto LABEL_372;
  }

  v8 = sub_1000933B0(v7, v4);
  v178 = v8;
  v9 = sub_100065198(v8);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_372;
  }

  v10 = sub_1000592F0(v9, v4);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v194 = v11;
  v195 = v11;
  v193 = v11;
  v192 = -21846;
  v191 = 0;
  v12 = *(a1 + 1588);
  v13 = __CFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_374;
  }

  v15 = v10;
  *(a1 + 1588) = v14;
  v16 = *(a1 + 8);
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_372;
  }

  AccessoryID = sub_10005BDFC(v16);
  if (AccessoryID != AccessoryID)
  {
    goto LABEL_373;
  }

  v17 = AccessoryID;
  if (AccessoryID != -1)
  {
    goto LABEL_16;
  }

  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_372;
  }

  if ((*(*v4 + 224))(v4))
  {
    goto LABEL_24;
  }

  (*(*v4 + 56))(v4);
  if (!IOAccessoryManagerGetServiceWithPrimaryPort())
  {
    goto LABEL_24;
  }

  AccessoryID = IOAccessoryManagerGetAccessoryID();
  if (AccessoryID != AccessoryID)
  {
    goto LABEL_373;
  }

  v17 = AccessoryID;
  if (AccessoryID < 0x10 || AccessoryID == 100)
  {
LABEL_16:
    LODWORD(v193) = 1;
    v18 = v17;
  }

  else
  {
LABEL_24:
    LODWORD(v193) = 1;
    v18 = 16;
    AccessoryID = -1;
  }

  DWORD1(v193) = v18;
  *(&v193 + 1) = v4;
  *&v194 = 0;
  *(&v194 + 1) = *(a1 + 8);
  pthread_mutex_lock((a1 + 1280));
  v192 = 112;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  v192 = 113;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  v192 = 115;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  pthread_mutex_unlock((a1 + 1280));
  v192 = 20;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  v192 = 23;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  v192 = 116;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  sub_100075A08(a1);
  v192 = 0;
  sub_10006733C(a1, -1, &v192, 0, 0xFFFFu);
  v19 = sub_1000CC7A0();
  if (!v19)
  {
    goto LABEL_372;
  }

  v20 = v19;
  if ((v19 & 7) != 0)
  {
    goto LABEL_372;
  }

  v21 = sub_1000CE018(*(a1 + 8));
  v22 = (*(*v20 + 136))(v20, v21);
  v23 = sub_100065198(v22);
  if (!v23 || (v23 & 7) != 0)
  {
    goto LABEL_372;
  }

  v24 = sub_100059100(v23, v4);
  if (v15)
  {
    v25 = sub_100065198(v24);
    if (!v25)
    {
      goto LABEL_372;
    }

    if ((v25 & 7) != 0)
    {
      goto LABEL_372;
    }

    v26 = sub_100092B58(v25, v15);
    v27 = v26;
    v28 = sub_100065198(v26);
    if (!v28)
    {
      goto LABEL_372;
    }

    if ((v28 & 7) != 0)
    {
      goto LABEL_372;
    }

    v29 = sub_100059100(v28, v15);
    v30 = sub_100065198(v29);
    if (!v30)
    {
      goto LABEL_372;
    }

    if ((v30 & 7) != 0)
    {
      goto LABEL_372;
    }

    sub_100092C44(v30, v15);
    v31 = sub_1000769C0(a1, *(a1 + 8), -1);
    v32 = sub_100065198(v31);
    if (!v32 || (v32 & 7) != 0)
    {
      goto LABEL_372;
    }

    sub_100058CA0(v32, v15, -1);
    if (v27)
    {
      LOWORD(v190) = 120;
      sub_10006733C(a1, -1, &v190, 0, 0xFFFFu);
      sub_100076A8C(a1, *(a1 + 8), v15, v27);
    }
  }

  v33 = *(a1 + 2212);
  if (v33 > 1)
  {
    goto LABEL_373;
  }

  if ((v33 & 1) == 0)
  {
    v34 = *(a1 + 8);
    if (!v34 || (v34 & 7) != 0)
    {
      goto LABEL_372;
    }

    if (sub_10005BDFC(v34) == 10)
    {
      sub_100076E70(a1, v35, 1);
    }
  }

  v36 = sub_100075A48(a1, 0, 0);
  v37 = *(a2 + 128);
  v186 = v37 == 12;
  if (v37 == 12)
  {
    v38 = *(a2 + 24);
    if (v38 < 0xFFFFFFFFFFFFFFF8)
    {
      v39 = v38[2];
      v43 = bswap32(v39);
      v40 = (!v39 || v43 >= 0x200) && (v43 & 0xF000) != 53248;
      if (!v38)
      {
        goto LABEL_372;
      }

      LODWORD(v41) = bswap32(*v38);
      v44 = v38[1];
      v45 = (v41 & 0x40) == 0 || v40;
      if (v45)
      {
        goto LABEL_61;
      }

      v36 = sub_10002BB1C();
      if (!v36)
      {
        goto LABEL_63;
      }

      if ((v36 & 7) != 0)
      {
        goto LABEL_372;
      }

      v36 = (*(*v36 + 344))(v36);
      if (v36)
      {
LABEL_61:
        v46 = 0;
        if (!v4)
        {
          goto LABEL_372;
        }
      }

      else
      {
LABEL_63:
        v46 = 1;
        if (!v4)
        {
          goto LABEL_372;
        }
      }

      if ((v4 & 7) != 0)
      {
        goto LABEL_372;
      }

      if ((v41 & 0x40) != 0)
      {
        v47 = *(v4 + 40);
        if (!v47 || (v47 & 7) != 0)
        {
          goto LABEL_372;
        }

        v36 = (*(*v47 + 208))(v47);
        if (v36)
        {
          v46 = 1;
        }
      }

      if (v39 == 1174405120)
      {
        v48 = sub_100065198(v36);
        if (!v48 || (v48 & 7) != 0)
        {
          goto LABEL_372;
        }

        if ((dword_10012CE80 & 0x200) != 0)
        {
          LODWORD(v41) = v41 & 1;
        }
      }

      v49 = bswap32(v44);
      v187 = sub_100074D7C(a1, v49);
      v50 = *(a1 + 2368);
      if (v50 > 1)
      {
        goto LABEL_373;
      }

      v185 = v43 & 0xFFFFFF00;
      if (v50)
      {
        v183 = 0;
        goto LABEL_90;
      }

      v51 = (*(*v4 + 272))(v4);
      v52 = 0;
      if ((v43 & 0xFFFFFF00) != 0x200 && v51)
      {
        if (v39 | v44 | v41 & 0xFFFFFFFA)
        {
          v53 = *(a1 + 8);
          if (!v53 || (v53 & 7) != 0)
          {
            goto LABEL_372;
          }

          if ((sub_10005BFD0(v53) & 1) == 0)
          {
            v54 = **v4;
            if (!v55 || (v55 & 7) != 0)
            {
              goto LABEL_372;
            }

            v56 = *(a1 + 8);
            v57 = (*(*v55 + 392))(v55);
            sub_100076B84(1, v56, v4, v57);
          }

          sub_100076C34(*(a1 + 8), v4, 0);
          v183 = 0;
          v46 = 1;
LABEL_90:
          v188 = v49 & 3;
          v58 = sub_100068364(v4);
          if (v58)
          {
            v59 = 30658;
          }

          else
          {
            v59 = 32766;
          }

          if (v187)
          {
            if (v187 == v4)
            {
LABEL_98:
              v176 = 0;
              v46 = 1;
LABEL_102:
              v179 = 1;
              v175 = 1;
              v177 = v49;
              goto LABEL_103;
            }

            if (v185 != 512 || v188 != 2)
            {
              if (v188 | v43)
              {
                goto LABEL_98;
              }

              v133 = sub_100065198(v58);
              if (!v133)
              {
                goto LABEL_372;
              }

              if ((v133 & 7) != 0)
              {
                goto LABEL_372;
              }

              v134 = sub_100058EBC(v133, v187);
              v135 = v134;
              v136 = sub_100065198(v134);
              if (!v136 || (v136 & 7) != 0)
              {
                goto LABEL_372;
              }

              v137 = sub_1000592F0(v136, v187);
              if (v137 != v4)
              {
                goto LABEL_271;
              }

              if ((v135 + 8) > 0xF)
              {
                goto LABEL_373;
              }

              if (v135 == 6)
              {
                v138 = sub_100065198(v137);
                if (!v138 || (v138 & 7) != 0)
                {
                  goto LABEL_372;
                }

                v139 = sub_1000593E8(v138, v187);
                v140 = v139;
                if (v41)
                {
                  v141 = *(a1 + 1516);
                  v142 = sub_100065198(v139);
                  if (!v142 || (v142 & 7) != 0)
                  {
                    goto LABEL_372;
                  }

                  v59 = v141 & ~v140;
                  v43 = sub_1000932FC(v142, v187);
                  v179 = 1;
                  v176 = 1;
                }

                else
                {
                  v172 = sub_100078C34(v187);
                  if (v172)
                  {
                    v173 = sub_100065198(v172);
                    if (!v173 || (v173 & 7) != 0)
                    {
                      goto LABEL_372;
                    }

                    sub_100059100(v173, v187);
                    sub_100078E94(a1, *(a1 + 8), v187, 0);
                    v43 = 0;
                    v176 = 0;
                    v177 = 0;
                    v179 = 1;
                    LODWORD(v41) = 1;
                    goto LABEL_279;
                  }

                  v179 = 1;
                  v43 = 0;
                  v176 = 0;
                  LODWORD(v41) = 0;
                }
              }

              else
              {
LABEL_271:
                v43 = 0;
                v176 = 0;
                v140 = 0;
                if (v137)
                {
                  v143 = v137 == v4;
                }

                else
                {
                  v143 = 1;
                }

                v144 = !v143;
                v179 = v144;
                v46 = 1;
              }

              v177 = v49;
LABEL_279:
              v175 = v140 == 0;
LABEL_103:
              *(a1 + 2200) = 0;
              sub_10007478C(a1 + 1992);
              sub_1000743E4(a1, 1);
              *(a1 + 1272) = 0;
              sub_100074588(a1);
              v60 = *(a1 + 8);
              if (v60)
              {
                if ((v60 & 7) == 0)
                {
                  v61 = sub_10005BD80(v60);
                  v62 = sub_100065198(v61);
                  if (v62)
                  {
                    if ((v62 & 7) == 0)
                    {
                      v63 = sub_100093438(v62, v4);
                      v64 = sub_100065198(v63);
                      if (v64)
                      {
                        if ((v64 & 7) == 0)
                        {
                          sub_100092FE4(v64, v4, 0, 0);
                          pthread_mutex_lock((a1 + 1448));
                          v65 = *(a1 + 1408);
                          if (v65)
                          {
                            if ((v65 & 3) == 0)
                            {
                              sub_100059F4C(v65);
                              operator delete();
                            }

                            goto LABEL_372;
                          }

                          v66 = pthread_mutex_unlock((a1 + 1448));
                          *&v194 = __PAIR64__(v41, v43);
                          v67 = *(a1 + 1512);
                          if (v67 > 1)
                          {
                            goto LABEL_373;
                          }

                          if (v67)
                          {
                            v68 = *(a1 + 1515);
                            if (v68 == 255)
                            {
LABEL_375:
                              __break(0x5507u);
                              return;
                            }

                            *(a1 + 1515) = v68 + 1;
                          }

                          else if (v43 == 134 || v43 == 131)
                          {
                            *(a1 + 1512) = 1;
                          }

                          v69 = sub_100065198(v66);
                          if (v69)
                          {
                            if ((v69 & 7) == 0)
                            {
                              sub_100093338(v69, v4, 19);
                              v70 = sub_100076EE4(a1, v4, v41, &v191);
                              v174 = v70;
                              v71 = sub_100065198(v70);
                              if (v71)
                              {
                                if ((v71 & 7) == 0)
                                {
                                  v72 = sub_100058A3C(v71, v4, v43);
                                  v180 = v72;
                                  if (v43 == 474)
                                  {
                                    v73 = sub_100065198(v72);
                                    if (!v73 || (v73 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    if ((dword_10012CE80 & 0x200) == 0)
                                    {
                                      v46 = 1;
                                    }
                                  }

                                  if ((v41 & 1) == 0)
                                  {
                                    sub_1000DDEEC(0, 4, "%s:%d General lingo missing from mask.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1772);
                                  }

                                  v74 = v49 & 0xC;
                                  v75 = (*(*v4 + 224))(v4);
                                  if (v75)
                                  {
                                    v46 |= (v41 & 0xFFFF8DE2 | v74) != 0;
                                  }

                                  v76 = !(v41 & 1);
                                  v77 = v46 & 1;
                                  v78 = v49 & 3;
                                  v79 = v177 > 0xFF || v188 == 3;
                                  if (v79)
                                  {
                                    v76 = 1;
                                  }

                                  v80 = v76 | (v41 >> 14) & 1 | v77;
                                  if (v191)
                                  {
                                    v81 = 1;
                                  }

                                  else
                                  {
                                    v81 = v80;
                                  }

                                  if (*(a1 + 2372))
                                  {
                                    if ((v49 & 3) != 0)
                                    {
                                      goto LABEL_143;
                                    }
                                  }

                                  else
                                  {
                                    *(a1 + 2372) = v191;
                                    if ((v49 & 3) != 0)
                                    {
LABEL_143:
                                      if (!v43)
                                      {
                                        LOBYTE(v81) = 1;
                                      }

                                      if ((v41 & 2) == 0)
                                      {
                                        goto LABEL_154;
                                      }

                                      goto LABEL_149;
                                    }
                                  }

                                  sub_100074630(a1, v4, 1, 1);
                                  LOBYTE(v81) = (v81 | v41 & v59) != 0;
                                  if ((v41 & 2) == 0)
                                  {
                                    goto LABEL_154;
                                  }

LABEL_149:
                                  v82 = sub_100046A8C();
                                  if (!v82)
                                  {
                                    goto LABEL_372;
                                  }

                                  v83 = v82;
                                  if ((v82 & 7) != 0)
                                  {
                                    goto LABEL_372;
                                  }

                                  v84 = (*(*v82 + 200))(v82);
                                  v85 = (*(*v4 + 240))(v4);
                                  v75 = (*(*v83 + 184))(v83);
                                  if ((v75 & 1) == 0)
                                  {
                                    LOBYTE(v81) = v84 & v85 ^ 1 | v81;
                                  }

                                  v78 = v188;
LABEL_154:
                                  v86 = v180;
                                  v87 = v185;
                                  if ((v41 & 0x400) != 0)
                                  {
                                    v75 = (*(*v4 + 248))(v4);
                                    LOBYTE(v81) = v75 ^ 1 | v81;
                                  }

                                  v88 = !v175;
                                  if (v78 == 2)
                                  {
                                    v88 = 1;
                                  }

                                  if ((v88 & 1) == 0)
                                  {
                                    v90 = (v41 & 0x17C2) != 0 || v74 > 4;
                                    LOBYTE(v81) = (v185 == 512 || v90) | v81;
                                  }

                                  if (v180 && (v81 & 1) == 0 && ((v174 ^ 1) & 1) == 0 && (v41 & *(a1 + 1516) & v180) == v41)
                                  {
                                    *(a1 + 2372) = 0;
                                    v91 = v181;
                                    if (v178 == 56 || v178 == 19)
                                    {
                                      v91 = (~v41 | 0x2010) & v181;
                                    }

                                    sub_10007702C(a1, v4, v91);
                                    if (!v78 && !v187)
                                    {
                                      v92 = sub_10007692C(a1, v93, 1);
                                    }

                                    v94 = sub_100065198(v92);
                                    if (!v94 || (v94 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    v95 = sub_100058A0C(v94, v43, (a1 + 1440), (a1 + 1441));
                                    if (v95)
                                    {
                                      sub_1000E22F0();
                                    }

                                    v96 = *(a1 + 1440);
                                    if (v96 == 1)
                                    {
                                      v97 = 70;
                                      v98 = 4;
                                      v99 = 7500;
                                      v100 = 1000;
                                    }

                                    else if (v96 == 2)
                                    {
                                      v97 = 255;
                                      v98 = 3;
                                      v99 = 75000;
                                      v100 = 15000;
                                    }

                                    else
                                    {
                                      v100 = 0;
                                      v99 = 0;
                                      v98 = 0;
                                      v97 = 0;
                                    }

                                    *(a1 + 1428) = v100;
                                    *(a1 + 1432) = v99;
                                    *(a1 + 1439) = v98;
                                    *(a1 + 1436) = v97;
                                    v106 = sub_100065198(v95);
                                    if (!v106)
                                    {
                                      goto LABEL_372;
                                    }

                                    if ((v106 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    sub_100093264(v106, v4, v43);
                                    v108 = sub_100065198(v107);
                                    if (!v108)
                                    {
                                      goto LABEL_372;
                                    }

                                    if ((v108 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    sub_100092EE8(v108, v4, v177);
                                    v110 = sub_100065198(v109);
                                    if (!v110)
                                    {
                                      goto LABEL_372;
                                    }

                                    if ((v110 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    sub_100092FE4(v110, v4, 0, v74 == 12);
                                    v112 = sub_100065198(v111);
                                    if (!v112 || (v112 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    v41 &= 0x7FFFu;
                                    v113 = (*(*v112 + 144))(v112, *(a1 + 8), v41);
                                    v114 = v113;
                                    if (v113 != v41)
                                    {
                                      sub_1000DDEEC(0, 4, "%s:%d Failed SetActiveLingoMask mask=%xh return=%xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1973, v41, v113);
                                    }

                                    v115 = sub_100065198(v113);
                                    if (!v115 || (v115 & 7) != 0)
                                    {
                                      goto LABEL_372;
                                    }

                                    v116 = (*(*v115 + 160))(v115, *(a1 + 8), v41);
                                    v117 = v116;
                                    if (v116 != v41)
                                    {
                                      sub_1000DDEEC(0, 4, "%s:%d Failed SetAllowedLingoMask mask=%xh return=%xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 1984, v41, v116);
                                    }

                                    v118 = qword_10012C6E0;
                                    if (qword_10012C6E0)
                                    {
                                      if ((qword_10012C6E0 & 7) != 0)
                                      {
                                        goto LABEL_372;
                                      }

                                      v118 = (*(*qword_10012C6E0 + 8))();
                                      qword_10012C6E0 = 0;
                                    }

                                    for (i = 0; i != 15; ++i)
                                    {
                                      if ((v41 >> i))
                                      {
                                        v120 = *(a1 + 8);
                                        if (v120)
                                        {
                                          v121 = (*(a1 + 8) & 7) == 0;
                                        }

                                        else
                                        {
                                          v121 = 0;
                                        }

                                        if (!v121)
                                        {
                                          goto LABEL_372;
                                        }

                                        v122 = sub_10005BB24(v120, i);
                                        v123 = sub_100065198(v122);
                                        if (!v123 || (v123 & 7) != 0)
                                        {
                                          goto LABEL_372;
                                        }

                                        v124 = sub_100092790(v123, *(a1 + 8), i);
                                        if (v124)
                                        {
                                          if ((v124 & 7) != 0)
                                          {
                                            goto LABEL_372;
                                          }

                                          (*(*v124 + 80))(v124, 4, 0, v4);
                                        }

                                        else
                                        {
                                          sub_1000DDEEC(0, 4, "%s:%d No lingo object! lingo=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 2012, i);
                                        }

                                        v125 = *(a1 + 8);
                                        if (!v125 || (v125 & 7) != 0)
                                        {
                                          goto LABEL_372;
                                        }

                                        v118 = sub_10005BB6C(v125, i);
                                      }
                                    }

                                    if (v43 == 3)
                                    {
                                      LODWORD(v193) = 4;
                                      if (v114 == v41)
                                      {
                                        v79 = v117 == v41;
                                        v87 = v185;
                                        v86 = v180;
                                        if (v79)
                                        {
                                          v182 = v185 != 512;
                                          v184 = v176 ^ 1;
                                          v43 = 3;
                                          v42 = 3;
                                          goto LABEL_287;
                                        }

LABEL_284:
                                        v182 = v87 != 512;
                                        v184 = v176 ^ 1;
                                        if (v86)
                                        {
                                          v42 = v43;
                                        }

                                        else
                                        {
                                          v42 = 0;
                                        }

                                        goto LABEL_287;
                                      }
                                    }

                                    else
                                    {
                                      if (v176)
                                      {
                                        v126 = sub_100065198(v118);
                                        if (!v126 || (v126 & 7) != 0)
                                        {
                                          goto LABEL_372;
                                        }

                                        sub_100059168(v126, v187, v4);
                                        if (!v127)
                                        {
                                          v128 = sub_100065198(v127);
                                          if (!v128)
                                          {
                                            goto LABEL_372;
                                          }

                                          if ((v128 & 7) != 0)
                                          {
                                            goto LABEL_372;
                                          }

                                          v129 = sub_1000932FC(v128, v187);
                                          v130 = v129;
                                          v131 = sub_100065198(v129);
                                          if (!v131 || (v131 & 7) != 0)
                                          {
                                            goto LABEL_372;
                                          }

                                          sub_100093264(v131, v4, v130);
                                        }
                                      }

                                      if (v114 == v41)
                                      {
                                        v79 = v117 == v41;
                                        v87 = v185;
                                        v86 = v180;
                                        if (v79)
                                        {
                                          v182 = v185 != 512;
                                          v132 = 1;
                                          v42 = v43;
                                          v184 = v176 ^ 1;
                                          v186 = 1;
                                          goto LABEL_288;
                                        }

                                        goto LABEL_284;
                                      }
                                    }

LABEL_197:
                                    v87 = v185;
                                    v86 = v180;
                                    goto LABEL_284;
                                  }

                                  if (v81)
                                  {
                                    v101 = v191;
                                    if (v191)
                                    {
                                      *(a1 + 2372) = v191;
                                      goto LABEL_187;
                                    }

                                    v101 = *(a1 + 2372);
                                    if (v101)
                                    {
                                      v191 = *(a1 + 2372);
LABEL_187:
                                      v102 = 0;
                                      LODWORD(v103) = -1;
                                      do
                                      {
                                        if ((v101 >> v102))
                                        {
                                          v103 = v102;
                                        }

                                        else
                                        {
                                          v103 = v103;
                                        }

                                        ++v102;
                                      }

                                      while (v102 != 15);
                                      v104 = sub_100068BB4(v103);
                                      sub_10008DD60(1, v4, v104);
                                      goto LABEL_283;
                                    }
                                  }

                                  v105 = sub_100065198(v75);
                                  if (!v105 || (v105 & 7) != 0)
                                  {
                                    goto LABEL_372;
                                  }

                                  sub_100059100(v105, v4);
                                  sub_10007702C(a1, v4, v181);
                                  if ((*(*v4 + 224))(v4))
                                  {
                                    LODWORD(v193) = 4;
                                    v43 = -1;
                                    goto LABEL_197;
                                  }

                                  v87 = v185;
                                  v86 = v180;
                                  if (v174)
                                  {
                                    LODWORD(v193) = 5;
                                    if ((v41 & 0x7FFF) != 0)
                                    {
                                      LODWORD(v41) = *(a1 + 1516) & v41 & 0x7FFF;
                                      if (!v41)
                                      {
                                        LODWORD(v194) = 100;
                                        LODWORD(v193) = 4;
                                        goto LABEL_283;
                                      }

                                      LODWORD(v193) = 3;
                                      if (v43 != 70)
                                      {
                                        goto LABEL_283;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v41) = 0;
                                    }

                                    LODWORD(v194) = 100;
                                  }

                                  else
                                  {
                                    LODWORD(v193) = 6;
                                  }

LABEL_283:
                                  v43 = -1;
                                  goto LABEL_284;
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

LABEL_372:
              __break(0x5516u);
              goto LABEL_373;
            }
          }

          else if ((*(*v4 + 224))(v4))
          {
            v176 = 0;
            v46 |= (v39 != 0) ^ (v185 == 512);
            goto LABEL_102;
          }

          v176 = 0;
          goto LABEL_102;
        }

        v52 = 1;
      }

      v183 = v52;
      goto LABEL_90;
    }

LABEL_374:
    __break(0x5500u);
    goto LABEL_375;
  }

  LODWORD(v41) = 0;
  v188 = 0;
  v187 = 0;
  v42 = 0;
  v183 = 0;
  v184 = 1;
  v43 = -1;
  v179 = 1;
  v182 = 1;
LABEL_287:
  sub_100074630(a1, v4, 1, 1);
  sub_10007692C(a1, v145, 1);
  v132 = 0;
LABEL_288:
  v146 = *(a2 + 68);
  sub_1000B7854(a2);
  sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
  pthread_mutex_lock((a1 + 1280));
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_372;
  }

  if ((*(*v4 + 224))(v4))
  {
    v147 = 15;
  }

  else
  {
    v147 = AccessoryID;
  }

  *(a1 + 1533) = 0;
  *(a1 + 1536) = 0x6400000019;
  *(a1 + 1544) = v4;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = *(a1 + 8);
  *(a1 + 1584) = 0;
  if (v147 == -1)
  {
    v148 = 16;
  }

  else
  {
    v148 = v147;
  }

  DWORD1(v193) = v148;
  v149 = sub_10006825C(v4);
  if (v149 && (v147 == 100 || v147 == -1))
  {
    *(a1 + 1533) = 1;
    v149 = sub_1000671A8(a1, -1, 115, 0, 2000);
    if (v149)
    {
      sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 2188);
    }
  }

  if (v186)
  {
    v150 = *(a1 + 1533);
    if (v150 > 1)
    {
      goto LABEL_373;
    }

    if (v150)
    {
      if (v193 > 0x1F)
      {
        goto LABEL_373;
      }

      *(a1 + 1536) = v193;
      *(a1 + 1540) = 100;
      *(a1 + 1544) = *(&v193 + 1);
      *(a1 + 1552) = v194;
    }

    else if (v179)
    {
      v149 = sub_100077384(a1, 0, 0, &v193, 48);
    }
  }

  if (!v132)
  {
    v164 = pthread_mutex_unlock((a1 + 1280));
    v165 = sub_100065198(v164);
    if (v165 && (v165 & 7) == 0)
    {
      sub_100093264(v165, v4, v42);
      sub_100076C34(*(a1 + 8), v4, 0);
      return;
    }

    goto LABEL_372;
  }

  if (v187)
  {
    v151 = sub_100065198(v149);
    if (!v151 || (v151 & 7) != 0)
    {
      goto LABEL_372;
    }

    v152 = sub_1000949E0(v151, v187, 0);
    if (v152)
    {
      v153 = v152;
      v154 = sub_100065198(v152);
      if (!v154)
      {
        goto LABEL_372;
      }

      if ((v154 & 7) != 0)
      {
        goto LABEL_372;
      }

      v155 = sub_10009467C(v154, *(a1 + 8), v153);
      v156 = sub_100065198(v155);
      if (!v156 || (v156 & 7) != 0)
      {
        goto LABEL_372;
      }

      v152 = sub_10009467C(v156, v153, *(a1 + 8));
    }

    if (v188 == 2)
    {
      v157 = sub_100065198(v152);
      if (v157 && (v157 & 7) == 0)
      {
        sub_100059364(v157, v4, v187);
        goto LABEL_322;
      }

      goto LABEL_372;
    }
  }

LABEL_322:
  v158 = *(a1 + 1528);
  if (v158 > 7)
  {
    goto LABEL_373;
  }

  if (((v158 > 3) & ~v183) != 0)
  {
    goto LABEL_357;
  }

  v159 = v43 | v41 & 0xFFFFFFFA;
  if (!v159)
  {
    v163 = 0;
    v162 = 2;
    goto LABEL_335;
  }

  v160 = sub_100078F78(a1, v43);
  v161 = *(a1 + 1528);
  if (v161 > 7)
  {
LABEL_373:
    __break(0x550Au);
    goto LABEL_374;
  }

  if (v160)
  {
    v162 = 3;
  }

  else
  {
    v162 = 4;
  }

  if (v162 < v161)
  {
    goto LABEL_357;
  }

  v163 = v160 ^ 1;
LABEL_335:
  v192 = 113;
  v190 = 0xAAAAAAAAAAAAAAAALL;
  if (v147 > 15 || v147 == -1)
  {
    if (v147 == 100 || v147 == -1)
    {
      *(a1 + 1584) = 1;
    }

LABEL_347:
    *(a1 + 1528) = v162;
    if (!v159)
    {
      if (*(a1 + 1588) > 0xCu)
      {
        v170 = 1;
      }

      else
      {
        v170 = 800;
      }

      sub_1000671A8(a1, -1, v192, 0, v170);
      goto LABEL_357;
    }

    goto LABEL_348;
  }

  if (!v159 || v147 < 0 || ((1 << v147) & 0xE400) == 0)
  {
    goto LABEL_347;
  }

  v166 = sub_100078FD4(v43, v41);
  if (v182)
  {
    v167 = v166;
    if (((*(*v4 + 224))(v4) & 1) == 0)
    {
      sub_100076E70(a1, v168, v167);
    }
  }

  *(a1 + 1528) = v162;
LABEL_348:
  sub_10006733C(a1, -1, &v192, &v190, 0xFFFFu);
  if (v163)
  {
    v169 = *(a1 + 1528);
    if (v169 <= 7)
    {
      if (v169 == 4)
      {
        *(a1 + 1532) = 1;
      }

      LODWORD(v193) = 17;
      DWORD1(v193) = v148;
      sub_100077384(a1, 0, 0, &v193, 48);
      goto LABEL_357;
    }

    goto LABEL_373;
  }

LABEL_357:
  pthread_mutex_unlock((a1 + 1280));
  if (v188 == 2)
  {
    sub_100079038(a1, v4);
  }

  else
  {
    if (v184)
    {
      if (v188 == 1)
      {
        v171 = 2;
      }

      else
      {
        v171 = -1;
      }

      sub_100075B90(a1, v4, v171);
    }

    else
    {
      *(a1 + 1440) = 0;
      sub_100075B90(a1, v4, 0);
      sub_100075B90(a1, v4, 3);
      sub_100075B90(a1, v4, 4);
      sub_1000671A8(a1, -1, 120, 0, 500);
    }

    sub_100079318(a1);
  }
}