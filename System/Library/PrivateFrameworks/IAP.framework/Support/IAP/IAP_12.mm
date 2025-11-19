void sub_1000A7F70(uint64_t a1, int a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_42;
  }

  v6 = 0;
  switch(a2)
  {
    case 524289:
    case 524290:
      v6 = 0x4000;
      goto LABEL_31;
    case 524291:
    case 524292:
      v6 = 12288;
      goto LABEL_31;
    case 524298:
    case 524311:
      v6 = 2308;
      goto LABEL_31;
    case 524299:
    case 524304:
      v6 = 4096;
      goto LABEL_31;
    case 524300:
      v6 = 224;
      goto LABEL_31;
    case 524301:
      v6 = 3;
      goto LABEL_31;
    case 524302:
      v6 = 2052;
      goto LABEL_31;
    case 524309:
      v6 = 1024;
      goto LABEL_31;
    case 524312:
      v6 = 4100;
      goto LABEL_31;
    case 524313:
      v6 = 0;
      if (!a4 || a5 < 8)
      {
        goto LABEL_31;
      }

      if ((a4 & 7) != 0)
      {
        goto LABEL_42;
      }

      v7 = *a4;
      v8 = *(a1 + 1200);
      v10 = (v8 & 7) == 0 && v8 != 0;
      if (a3)
      {
        if (v10)
        {
          if ((*(*v8 + 296))(v8, 1, *a4, 1))
          {
            sub_100069050(a1, 0, 1);
            v11 = a1;
            v12 = 0;
LABEL_29:
            sub_100069050(v11, v12, 0);
            goto LABEL_30;
          }

          goto LABEL_30;
        }

LABEL_42:
        __break(0x5516u);
        goto LABEL_43;
      }

      if (!v10)
      {
        goto LABEL_42;
      }

      if ((*(*v8 + 296))(v8, 0, *a4, 1))
      {
        sub_100069050(a1, 8u, 1);
        v11 = a1;
        v12 = 8;
        goto LABEL_29;
      }

LABEL_30:
      v6 = 0;
LABEL_31:
      pthread_mutex_lock(&stru_10012B4B8);
      dword_10012B4B0 |= v6;
      *(a1 + 1344) |= v6;
      pthread_mutex_unlock(&stru_10012B4B8);
      v13 = *(a1 + 1384);
      if (v13 >= 2)
      {
LABEL_43:
        __break(0x550Au);
        JUMPOUT(0x1000A81B8);
      }

      if ((v13 & 1) == 0 && (*(a1 + 1344) || *(a1 + 1380)))
      {
        sub_1000651C8(*(a1 + 8));
        if (v14)
        {
          *(a1 + 1384) = 1;
          sub_1000651C8(*(a1 + 8));
          if (v15 && (v15 & 7) == 0)
          {
            v16 = *(a1 + 1376);

            sub_10006292C(v15, v16);
            return;
          }

          goto LABEL_42;
        }
      }

      return;
    default:
      goto LABEL_31;
  }
}

uint64_t sub_1000A821C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 40))(result, a2, a3, 0, 0);
  }

  __break(0x5516u);
  return result;
}

void sub_1000A8258(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0 || (v4 = *(a2 + 32)) == 0 || (v4 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_33;
  }

  v5 = *(v4 + 126);
  v10 = 0;
  if (!sub_100097578(&v10, *(a1 + 8)))
  {
    if (v10 >= 2u)
    {
LABEL_33:
      __break(0x550Au);
      return;
    }

    if ((v10 & 1) != 0 && v5 <= 0x4F)
    {
      if (v5 > 63)
      {
        if (v5 == 66)
        {
          v6 = sub_1000A25F4(a1, v4, a2);
          if (v6 > 0x1F)
          {
            goto LABEL_33;
          }

          goto LABEL_29;
        }

        if (v5 == 64)
        {
          v6 = sub_1000A22E4(a1, v4, a2);
          goto LABEL_29;
        }
      }

      else
      {
        if (v5 == 60)
        {
          sub_1000A097C(a1, v4);
          goto LABEL_15;
        }

        if (v5 == 62)
        {
          sub_1000A0D64(a1, v4, a2);
LABEL_29:
          if (v6 == 6 || !v6)
          {
            v4 = 0;
          }

          goto LABEL_15;
        }
      }

      sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoRemoteUI::%s Unknown CmdID: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 10515, "ProcessEnhancedDBCmd", v5);
    }
  }

LABEL_15:
  v7 = *(a2 + 60);
  if (v7 >= 2)
  {
    goto LABEL_33;
  }

  if (v4 && (v7 & 1) == 0)
  {
    if (*(v4 + 126) == v5)
    {
      v8 = *(v4 + 8);
      v9 = *(v4 + 68);
      sub_1000B7854(v4);
    }

    sub_10009EB44(a1, v4, 0, 1u);
  }
}

uint64_t sub_1000A8450(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || !a3 || (a3 & 7) != 0 || (result = sub_10005EEB8(result, a2, 4, *(a3 + 126), *(a3 + 68), a3, 5, 0), *v3 = off_1001164B0, !a2) || (a2 & 7) != 0 || (result = sub_10005B694(a2, 4u), (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  *(v3 + 96) = result;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_13:
    __break(0x5513u);
    return result;
  }

  if (dword_10012B6E0)
  {
    *(v3 + 112) = sub_1000CA714();
  }

  return v3;
}

uint64_t sub_1000A8538(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000A8788(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A854C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000A8788(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000A8594(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_44;
  }

  v2 = *(a1 + 96);
  v4 = (v2 & 7) == 0 && v2 != 0;
  if (*(a1 + 104))
  {
    if (!v4)
    {
      goto LABEL_44;
    }

    v5 = sub_1000A7D60(v2, a1);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_44;
    }

    sub_1000A7B50(v2, a1);
  }

  if (v5 == 6)
  {
    v6 = *(a1 + 104);
    if (!v6)
    {
      return;
    }

    if ((v6 & 7) == 0)
    {
      if (!__CFADD__(v6[2], v6[3]) && !__CFADD__(v6[4], v6[5]))
      {
        return;
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_45:
    __break(0x5513u);
LABEL_46:
    __break(0x5500u);
    goto LABEL_47;
  }

  if (dword_10012B6E0)
  {
    pthread_once(&stru_10012B4F8, sub_1000A8814);
    v7 = sub_1000CA714();
    v8 = *(a1 + 112);
    if (v8)
    {
      v9 = *(a1 + 20);
      if (v9 > 0x17)
      {
        if (v9 == 24)
        {
          v10 = qword_10012BE90;
          if (!qword_10012BE90)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v9 != 26)
          {
            return;
          }

          v10 = qword_10012BE98;
          if (!qword_10012BE98)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v9 == 22)
      {
        v10 = qword_10012BE80;
        if (!qword_10012BE80)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v9 != 23)
        {
          return;
        }

        v10 = qword_10012BE88;
        if (!qword_10012BE88)
        {
          goto LABEL_44;
        }
      }

      if ((v10 & 7) == 0)
      {
        v11 = v7 - v8;
        if (v7 < v8)
        {
LABEL_47:
          __break(0x5515u);
          goto LABEL_48;
        }

        v12 = *(v10 + 76);
        if (v12 >= 8)
        {
LABEL_48:
          __break(0x550Au);
          goto LABEL_49;
        }

        if (v12 >= 4)
        {
LABEL_49:
          __break(0x5512u);
          return;
        }

        if (~dword_10012B6D8 < 4 * v12)
        {
          goto LABEL_45;
        }

        if (dword_10012B6D8[v12])
        {
          (*(*v10 + 104))(v10, v11, 0, 0);
        }

        return;
      }

LABEL_44:
      __break(0x5516u);
      goto LABEL_45;
    }
  }
}

uint64_t sub_1000A8788(uint64_t result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  *result = off_1001164B0;
  result = *(result + 104);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_1000A8F14(result);
      operator delete();
    }

LABEL_9:
    __break(0x5516u);
    return result;
  }

  return sub_10005F054(v1);
}

void sub_1000A8814()
{
  sub_1000CA360(0, 2, 0);
  qword_10012BE80 = v0;
  sub_1000CA360(0, 2, 0);
  qword_10012BE88 = v1;
  sub_1000CA360(0, 2, 0);
  qword_10012BE90 = v2;
  sub_1000CA360(0, 2, 0);
  qword_10012BE98 = v3;
  sub_1000CA360(0, 2, 0);
  qword_10012BEA0 = v4;
  sub_1000CA360(0, 2, 0);
  qword_10012BEA8 = v5;
  sub_1000CA360(0, 2, 0);
  qword_10012BEB0 = v6;
  sub_1000CA360(0, 2, 0);
  qword_10012BEB8 = v7;
}

uint64_t sub_1000A8928(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || !a3 || (a3 & 7) != 0 || (result = sub_10005EEB8(result, a2, 4, *(a3 + 126), *(a3 + 68), a3, 5, 0), *v3 = off_1001164F0, !a2) || (a2 & 7) != 0 || (result = sub_10005B694(a2, 4u), (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  *(v3 + 96) = result;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_13:
    __break(0x5513u);
    return result;
  }

  if (dword_10012B6E0)
  {
    *(v3 + 112) = sub_1000CA714();
  }

  return v3;
}

uint64_t sub_1000A8A10(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000A8C10(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A8A24(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000A8C10(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A8A6C(uint64_t result)
{
  if (!result)
  {
    goto LABEL_32;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_32;
  }

  result = *(result + 96);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_32;
  }

  sub_1000A8258(result, v1);
  v4 = v3;
  if (v3 == 6)
  {
    return v4 == 6;
  }

  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_33;
  }

  if (!dword_10012B6E0)
  {
    return v4 == 6;
  }

  pthread_once(&stru_10012B4F8, sub_1000A8814);
  result = sub_1000CA714();
  v5 = *(v1 + 112);
  if (!v5)
  {
    return v4 == 6;
  }

  v6 = *(v1 + 20);
  if (v6 <= 0x3F)
  {
    if (v6 == 60)
    {
      v7 = qword_10012BEA0;
      if (!qword_10012BEA0)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (v6 == 62)
    {
      v7 = qword_10012BEA8;
      if (!qword_10012BEA8)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    return v4 == 6;
  }

  if (v6 != 64)
  {
    if (v6 == 66)
    {
      v7 = qword_10012BEB8;
      if (!qword_10012BEB8)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    return v4 == 6;
  }

  v7 = qword_10012BEB0;
  if (!qword_10012BEB0)
  {
LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

LABEL_24:
  if ((v7 & 7) != 0)
  {
    goto LABEL_32;
  }

  v8 = result - v5;
  if (result < v5)
  {
LABEL_34:
    __break(0x5515u);
    goto LABEL_35;
  }

  v9 = *(v7 + 76);
  if (v9 >= 8)
  {
LABEL_35:
    __break(0x550Au);
    goto LABEL_36;
  }

  if (v9 < 4)
  {
    if (~dword_10012B6D8 >= 4 * v9)
    {
      if (dword_10012B6D8[v9])
      {
        (*(*v7 + 104))(v7, v8, 0, 0);
      }

      return v4 == 6;
    }

LABEL_33:
    __break(0x5513u);
    goto LABEL_34;
  }

LABEL_36:
  __break(0x5512u);
  return result;
}

uint64_t sub_1000A8C10(uint64_t result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  *result = off_1001164F0;
  result = *(result + 104);
  if (result)
  {
    if ((result & 7) == 0)
    {
      operator delete();
    }

LABEL_9:
    __break(0x5516u);
    return result;
  }

  return sub_10005F054(v1);
}

dispatch_semaphore_t sub_1000A8C98(dispatch_semaphore_t result, uint64_t a2, uint64_t a3, objc_class *a4)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  if ((result & 7) != 0 || !a3 || (a3 & 7) != 0)
  {
    goto LABEL_10;
  }

  v6 = *(a3 + 64);
  if ((v6 + 32) >= 0x40)
  {
    goto LABEL_11;
  }

  result = sub_10005EEB8(result, a2, v6, *(a3 + 126), *(a3 + 68), a3, 5, 0);
  v4->isa = off_100116530;
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v9 = *(a3 + 64);
  if (v9 + 32 < 0x40)
  {
    v4[12].isa = sub_10005B694(a2, v9);
    v4[14].isa = a4;
    return v4;
  }

LABEL_11:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000A8D64(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000A8E80(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A8D78(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000A8E80(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000A8DC0(uint64_t result)
{
  if (result && (v1 = result, (result & 7) == 0) && ((result = *(result + 96)) != 0 ? (v2 = (result & 7) == 0) : (v2 = 0), v2 && (result = sub_100067F34(result)) != 0 && (result & 7) == 0 && (result = (*(*result + 624))(result, *(v1 + 112)), (v3 = *(v1 + 96)) != 0) && (v3 & 7) == 0))
  {
    v4 = *(v1 + 16);
    if ((v4 + 32) < 0x40)
    {
      sub_100068F88(*(v1 + 96), v4, *(v1 + 20), *(v1 + 24), result ^ 1);
      return 0;
    }
  }

  else
  {
    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000A8E80(uint64_t result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  *result = off_100116530;
  result = *(result + 112);
  if (result)
  {
    if ((result & 7) == 0)
    {
      (*(*result + 8))(result);
      goto LABEL_6;
    }

LABEL_9:
    __break(0x5516u);
    return result;
  }

LABEL_6:

  return sub_10005F054(v1);
}

uint64_t sub_1000A8F14(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  v1 = *(result + 24);
  if (v1)
  {
    if ((v1 & 7) == 0)
    {
      v2 = *(result + 24);
      sub_100025BF4(&v2);
      operator delete();
    }

LABEL_7:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000A8F88(uint64_t __dst, void *__src, unint64_t a3)
{
  if (!__dst || (__dst & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  if (a3 <= 0x16)
  {
    *(__dst + 23) = a3;
    v3 = a3 + 1;

    return memmove(__dst, __src, v3);
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    sub_1000250EC();
  }

  if (((a3 + 8) & 0x7FFFFFFFFFFFFFF8) != 0)
  {
    operator new();
  }

  __break(0x5515u);
  return __dst;
}

void *sub_1000A9050(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = *result;
      if (!*v1)
      {
        return v1;
      }

      if ((result & 7) == 0)
      {
        (*(*result + 8))(result);
        return v1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_1000A90B8(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      result[3] = 0;
      result[4] = a4;
      if (a2)
      {
        sub_1000A916C(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if (!((a3 + 0x1000000000000000) >> 61))
      {
        v4[1] = 8 * a3;
        v4[2] = 8 * a3;
        v4[3] = 0;
        return v4;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000A916C(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (!(a2 >> 61))
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1E24();
}

std::string *sub_1000A91B0(std::string *result, const std::string *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_7:
    __break(0x5516u);
    goto LABEL_8;
  }

  result = result->__r_.__value_.__l.__size_;
  if (result < 0xFFFFFFFFFFFFFFE8)
  {
    if (result && (result & 7) == 0)
    {
      result = std::string::basic_string(result, a2);
      v2->__r_.__value_.__l.__size_ = &result[1];
      return result;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(0x5513u);
  return result;
}

std::string *sub_1000A9208(uint64_t *a1, const std::string *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  *v11 = v3;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 == -1)
  {
LABEL_15:
    __break(0x5500u);
LABEL_16:
    sub_1000E1E08();
  }

  if (v5 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_16;
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v5;
  sub_10002543C(&v10, v7, v4, a1);
  if (!v11[0] || (v11[0] & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  result = std::string::basic_string(v11[0], a2);
  if (v11[0] >= 0xFFFFFFFFFFFFFFE8)
  {
    __break(0x5513u);
  }

  else
  {
    ++v11[0];
    sub_10002534C(a1, &v10);
    v9 = a1[1];
    sub_100025550(&v10);
    return v9;
  }

  return result;
}

std::string *sub_1000A931C(std::string *result, const std::string *a2, unint64_t a3, uint64_t a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x5513u);
    return result;
  }

  size = result->__r_.__value_.__l.__size_;
  v7 = size - a4;
  if (size - a4 < 0 == size - a4 <= ~a2)
  {
    goto LABEL_18;
  }

  v9 = &v7[a2];
  if (__CFADD__(size, a3 - &v7[a2]))
  {
    goto LABEL_18;
  }

  result = result->__r_.__value_.__l.__size_;
  if (v9 < a3)
  {
    result = v4->__r_.__value_.__l.__size_;
    v10 = &v7[a2];
    while (v10 && (v9 & 7) == 0 && result && (size & 7) == 0)
    {
      result = std::string::basic_string(result, v10);
      if (v10 > 0xFFFFFFFFFFFFFFE7 || result > 0xFFFFFFFFFFFFFFE7)
      {
        goto LABEL_18;
      }

      ++v10;
      ++result;
      if (v10 >= a3)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  v4->__r_.__value_.__l.__size_ = result;

  return sub_1000A9718(a2, v9, size);
}

std::string *sub_1000A9418(std::string *result, std::string *__str)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = result->__r_.__value_.__r.__words[2];
  if (v4 != result[1].__r_.__value_.__l.__data_)
  {
    goto LABEL_20;
  }

  v5 = result->__r_.__value_.__r.__words[0];
  result = result->__r_.__value_.__l.__size_;
  v6 = result - v2->__r_.__value_.__r.__words[0];
  if (result > v2->__r_.__value_.__r.__words[0])
  {
    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = 2 * v7 - (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2;
    v9 = __CFADD__(result, 8 * v8);
    if ((((v6 < 24) ^ v9) & 1) == 0)
    {
      goto LABEL_26;
    }

    v10 = 8 * v8;
    v11 = v6 < 24;
    result = sub_1000A9844(result, v4, &result[v7]);
    v2->__r_.__value_.__r.__words[2] = v12;
    size = v2->__r_.__value_.__l.__size_;
    v14 = __CFADD__(size, v10);
    if (v11 == v14)
    {
      goto LABEL_26;
    }

    v2->__r_.__value_.__l.__size_ = size + 24 * v7;
    goto LABEL_20;
  }

  if (v4 - v5 >= 0)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v15;
    v23 = v15;
    v16 = v2[1].__r_.__value_.__l.__size_;
    if (v16)
    {
      if (v4 == v5)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0x5555555555555556 * ((v4 - v5) >> 3);
      }

      sub_10002543C(&v22, v17, v17 >> 2, v16);
      sub_1000A9974(&v22, v2->__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v2->__r_.__value_.__r.__words[2] - v2->__r_.__value_.__l.__size_) >> 3));
      v18 = v23;
      v19 = *&v2->__r_.__value_.__l.__data_;
      v20 = *&v2->__r_.__value_.__r.__words[2];
      *&v2->__r_.__value_.__l.__data_ = v22;
      *&v2->__r_.__value_.__r.__words[2] = v18;
      v22 = v19;
      v23 = v20;
      result = sub_100025550(&v22);
LABEL_20:
      if (v2[1].__r_.__value_.__l.__size_)
      {
        result = v2->__r_.__value_.__r.__words[2];
        if (result)
        {
          if ((result & 7) == 0)
          {
            result = std::string::basic_string(result, __str);
            v21 = v2->__r_.__value_.__r.__words[2];
            if (v21 <= 0xFFFFFFFFFFFFFFE7)
            {
              v2->__r_.__value_.__r.__words[2] = v21 + 24;
              return result;
            }

            goto LABEL_26;
          }
        }
      }
    }

LABEL_25:
    __break(0x5516u);
LABEL_26:
    __break(0x5513u);
  }

  __break(0x550Cu);
  return result;
}

uint64_t sub_1000A95B0(uint64_t result, uint64_t a2, char *__src)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v5 = *(result + 8) - __src;
  if (!is_mul_ok(0xAAAAAAAAAAAAAAABLL * (v5 >> 3), 0x18uLL))
  {
    goto LABEL_11;
  }

  if ((__src & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v7 = *(a2 + 8);
  result = memcpy(*(a2 + 16), __src, v5);
  v8 = *(v3 + 8) - __src;
  v9 = *(a2 + 16);
  if (v8 < 0 == v8 <= ~v9)
  {
    goto LABEL_12;
  }

  *(a2 + 16) = v9 + v8;
  *(v3 + 8) = __src;
  v10 = *(a2 + 8);
  v11 = *v3;
  v12 = &__src[-*v3];
  if (v12 > 0 == *v3 - __src <= ~v10)
  {
    goto LABEL_12;
  }

  if (is_mul_ok(0xAAAAAAAAAAAAAAABLL * (v12 >> 3), 0x18uLL))
  {
    if ((v11 & 7) == 0)
    {
      v13 = (v10 - 8 * (v12 >> 3));
      memcpy(v13, v11, v12);
      *(a2 + 8) = v13;
      v14 = *v3;
      *(v3 + 8) = *v3;
      *v3 = *(a2 + 8);
      *(a2 + 8) = v14;
      v15 = *(v3 + 8);
      *(v3 + 8) = *(a2 + 16);
      *(a2 + 16) = v15;
      v16 = *(v3 + 16);
      *(v3 + 16) = *(a2 + 24);
      *(a2 + 24) = v16;
      *a2 = *(a2 + 8);
      return v7;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(0x550Cu);
LABEL_12:
  __break(0x5513u);
  return result;
}

std::string *sub_1000A9718(const std::string *a1, const std::string *a2, std::string *a3)
{
  result = sub_1000A979C(&var11, a1, a2, a3);
  if (result - a1 < 0 == result - a1 <= ~a1 || v6 - a3 < 0 == v6 - a3 <= ~a3)
  {
    __break(0x5513u);
  }

  return result;
}

std::string *sub_1000A979C(std::string *result, const std::string *a2, const std::string *a3, std::string *a4)
{
  if (result)
  {
    v4 = a4;
    if (a3 == a2)
    {
      return a3;
    }

    v7 = a4 & 7;
    v8 = a4;
    v9 = a3;
    while (v9 > 0x17)
    {
      if ((a3 & 7) != 0)
      {
        goto LABEL_11;
      }

      if (v4-- < 0x18)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_11;
      }

      result = std::string::operator=(v4, --v9);
      --v8;
      if (v9 == a2)
      {
        return a3;
      }
    }
  }

  else
  {
LABEL_11:
    __break(0x5516u);
  }

  __break(0x5513u);
  return result;
}

std::string *sub_1000A9844(std::string *__str, std::string *a2, std::string *this)
{
  result = sub_1000A98C8(&var11, __str, a2, this);
  if (result - __str < 0 == result - __str <= ~__str || v6 - this < 0 == v6 - this <= ~this)
  {
    __break(0x5513u);
  }

  return result;
}

std::string *sub_1000A98C8(std::string *result, std::string *__str, std::string *a3, std::string *this)
{
  if (result)
  {
    v4 = this;
    v6 = __str;
    if (__str == a3)
    {
      return v6;
    }

    v7 = this & 7;
    v8 = __str & 7;
    v9 = this;
    while (v6 && !v8 && v4 && !v7)
    {
      result = std::string::operator=(v4, v6);
      if (v6 > 0xFFFFFFFFFFFFFFE7 || v4 >= 0xFFFFFFFFFFFFFFE8)
      {
        goto LABEL_14;
      }

      ++v6;
      ++v4;
      ++v9;
      if (v6 == a3)
      {
        return a3;
      }
    }
  }

  __break(0x5516u);
LABEL_14:
  __break(0x5513u);
  return result;
}

std::string *sub_1000A9974(std::string *result, const std::string *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      memset(v6, 170, sizeof(v6));
      sub_100063800(v6, &result->__r_.__value_.__r.__words[2], a3);
      result = v6[0];
      if (v6[0] == v6[1])
      {
LABEL_13:
        if (v6[2] && (v6[2] & 7) == 0)
        {
          *v6[2] = result;
          return result;
        }
      }

      else
      {
        v5 = a2 & 7;
        while (v3[1].__r_.__value_.__l.__size_ && a2 && !v5 && result && (result & 7) == 0)
        {
          result = std::string::basic_string(result, a2);
          if (v6[0] >= 0xFFFFFFFFFFFFFFE8)
          {
            goto LABEL_17;
          }

          result = (v6[0] + 24);
          v6[0] += 24;
          if (a2 >= 0xFFFFFFFFFFFFFFE8)
          {
            goto LABEL_17;
          }

          ++a2;
          if (result == v6[1])
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_17:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000A9A48()
{
  sub_100025D20(&qword_10012BE68, "com.apple.mobileslideshow");

  return __cxa_atexit(&std::string::~string, &qword_10012BE68, &_mh_execute_header);
}

void sub_1000A9AA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if ((a1 & 7) == 0)
    {
      sub_100064F7C(a1, a2, 5);
      *a1 = off_1001165D0;
      *(a1 + 1192) = -1;
      v4 = *(a1 + 8);
      if (v4)
      {
        if ((v4 & 7) == 0)
        {
          sub_10005B7F8(v4, 5u, 0);
          v5 = *(a1 + 8);
          if (v5)
          {
            if ((v5 & 7) == 0)
            {
              v6 = sub_10005B7AC(v5, 5u, 0);
              v7 = sub_100065198(v6);
              if (v7)
              {
                if ((v7 & 7) == 0)
                {
                  sub_1000929D4(v7, 5, 37, *(a1 + 8));
                  sub_1000651C8(a2);
                  if (v8)
                  {
                    if ((v8 & 7) == 0)
                    {
                      v9 = sub_10006274C(v8);
                      *(a1 + 1192) = v9;
                      if (v9 == -1)
                      {
                        __break(0x5518u);
                      }

                      else
                      {
                        sub_1000651C8(a2);
                        if (v10 && (v10 & 7) == 0)
                        {
                          sub_1000629DC(v10, *(a1 + 1192));
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

  __break(0x5516u);
}

void sub_1000A9BBC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000A9AA8(a1, a2);
  }
}

void sub_1000A9BD0(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0 && ((*a1 = off_1001165D0, sub_1000651C8(*(a1 + 8)), v2) ? (v3 = (v2 & 7) == 0) : (v3 = 0), v3 && (v4 = sub_100060C50(v2, *(a1 + 1192)), *(a1 + 1192) = -1, (v5 = sub_100065198(v4)) != 0) && (v5 & 7) == 0))
  {
    sub_1000929D4(v5, 5, 0, *(a1 + 8));

    sub_10006522C(a1);
  }

  else
  {
    __break(0x5516u);
  }
}

void sub_1000A9C78(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000A9BD0(a1);
  }
}

uint64_t sub_1000A9C8C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000A9BD0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000A9CD4(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    abort();
  }

  __break(0x5516u);
}

void sub_1000A9CF8(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_42;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_42;
  }

  v6 = sub_100065198(a1);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_42;
  }

  v7 = sub_1000928E0(v6, 5);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (a2 == 1)
  {
    v22 = sub_100065198(v7);
    if (!v22 || (v22 & 7) != 0)
    {
      goto LABEL_42;
    }

    v23 = sub_1000930CC(v22, v8);
    if (a3 == 5)
    {
      sub_1000651C8(*(a1 + 8));
      if (v27)
      {
        sub_1000651C8(*(a1 + 8));
        if (!v28 || (v28 & 7) != 0)
        {
          goto LABEL_42;
        }

        sub_1000629DC(v28, *(a1 + 1192));
      }

      v18 = a1;
      v19 = v8;
      v20 = v23;
      v17 = 0;
      v21 = 1;
      v26 = 3;
LABEL_40:
      sub_1000A9FC0(v18, v19, v20, v17, v21, v26);
      return;
    }

    if (a3 != 1)
    {
      return;
    }

    sub_1000651C8(*(a1 + 8));
    if (v24)
    {
      sub_1000651C8(*(a1 + 8));
      if (!v25 || (v25 & 7) != 0)
      {
        goto LABEL_42;
      }

      sub_1000629DC(v25, *(a1 + 1192));
    }

    v17 = sub_1000A9F5C(a1, v8, v23);
    v18 = a1;
    v19 = v8;
    v20 = v23;
    v21 = 0;
LABEL_34:
    v26 = 2;
    goto LABEL_40;
  }

  if (a2 == 32)
  {
    v13 = sub_1000388B8();
    if (*(a1 + 1192) != a3)
    {
      return;
    }

    if (!v13 || (v13 & 7) != 0)
    {
      goto LABEL_42;
    }

    v14 = (*(*v13 + 416))(v13);
    if (v14 != 1)
    {
      return;
    }

    v15 = sub_100065198(v14);
    if (!v15 || (v15 & 7) != 0)
    {
LABEL_42:
      __break(0x5516u);
      return;
    }

    v16 = sub_1000930CC(v15, v8);
    v17 = sub_1000A9F5C(a1, v8, v16);
    v18 = a1;
    v19 = v8;
    v20 = v16;
    v21 = 1;
    goto LABEL_34;
  }

  if (a2 != 4)
  {
    return;
  }

  v9 = sub_1000388B8();
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_42;
  }

  if ((*(*v9 + 416))(v9) == 1)
  {
    sub_1000651C8(*(a1 + 8));
    if (v10)
    {
      sub_1000651C8(*(a1 + 8));
      if (v11)
      {
        if ((v11 & 7) == 0)
        {
          sub_10006286C(v11, *(a1 + 1192), 500);
          sub_1000651C8(*(a1 + 8));
          if (v12)
          {
            if ((v12 & 7) == 0)
            {
              sub_10006292C(v12, *(a1 + 1192));
              return;
            }
          }
        }
      }

      goto LABEL_42;
    }
  }
}

uint64_t sub_1000A9F5C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0 || (result = sub_100065198(result)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = sub_100092F68(result, a2) & 0xC;
    if (v5 > 7)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 4)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

void sub_1000A9FC0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, unsigned int a6)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    __break(0x5518u);
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v10 = sub_100065198(a1);
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_10;
  }

  sub_100092FE4(v10, a2, 5, a3 | a4);
  if (a6 <= 7)
  {
    if ((a2 & 7) == 0)
    {
      (*(*a2 + 16))(a2, 0);
      sub_1000B748C();
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(0x550Au);
}

uint64_t sub_1000AA130(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 5;
    if (result != -1)
    {
      *(result + 1) = 0;
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

void *sub_1000AA160(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_21;
    }

    v2 = *result;
    if (!*result)
    {
      return result;
    }

    if ((v2 & 7) != 0)
    {
LABEL_21:
      __break(0x5516u);
      goto LABEL_22;
    }

    v3 = *v2;
    if (*v2 >= 8u)
    {
LABEL_22:
      __break(0x550Au);
      return result;
    }

    if (v3 >= 3)
    {
      if (v3 == 3)
      {
        result = v2[1];
        if (result)
        {
          if ((result & 3) == 0)
          {
            operator delete();
          }

          goto LABEL_21;
        }
      }

      else if (v3 == 4 && v2[1])
      {
LABEL_12:
        operator delete[]();
      }
    }

    else if (v2[1])
    {
      goto LABEL_12;
    }

    result = *v1;
    if (*v1)
    {
      if ((result & 7) == 0)
      {
        operator delete();
      }

      goto LABEL_21;
    }

    *v1 = 0;
  }

  return result;
}

void sub_1000AA244(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  sub_100064F7C(a1, a2, 2);
  *a1 = off_100116680;
  *(a1 + 4456) = 0;
  bzero((a1 + 1192), 0xCA8uLL);
  sub_1000651C8(a2);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v5 = sub_10006274C(v4);
  *(a1 + 4444) = v5;
  if (v5 == -1)
  {
    __break(0x5518u);
    goto LABEL_17;
  }

  sub_1000651C8(a2);
  if (!v6)
  {
    goto LABEL_17;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_17;
  }

  v7 = sub_1000629DC(v6, *(a1 + 4444));
  v8 = sub_100065198(v7);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_17;
  }

  sub_1000929D4(v8, 2, 1068, *(a1 + 8));
  v9 = sub_100026440();
  if (v9)
  {
    if ((v9 & 7) != 0)
    {
      goto LABEL_17;
    }

    (*(*v9 + 16))(v9, a1);
  }

  v10 = sub_10001A9C8();
  if (v10 && (v10 & 7) == 0)
  {
    (*(*v10 + 16))(v10, a1);
    *(a1 + 4432) = 0;
    *(a1 + 4440) = 0;
    *(a1 + 4442) = 0;
    *(a1 + 4504) = 0;
    *(a1 + 4456) = 0;
    *(a1 + 4528) = 0;
    *(a1 + 4464) = 0u;
    *(a1 + 4480) = 0u;
    *(a1 + 4496) = 0;
    return;
  }

LABEL_17:
  __break(0x5516u);
}

void sub_1000AA3CC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000AA244(a1, a2);
  }
}

void sub_1000AA3E0(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_30;
  }

  *a1 = off_100116680;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12 = -21846;
  v2 = sub_100065198(a1);
  if (!v2)
  {
    goto LABEL_30;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_30;
  }

  sub_1000929D4(v2, 2, 0, *(a1 + 8));
  sub_1000651C8(*(a1 + 8));
  if (!v3)
  {
    goto LABEL_30;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_30;
  }

  sub_1000629DC(v3, *(a1 + 4444));
  sub_1000651C8(*(a1 + 8));
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_30;
  }

  sub_100060C50(v4, *(a1 + 4444));
  *(a1 + 4444) = -1;
  v5 = sub_100026440();
  if (v5)
  {
    if ((v5 & 7) != 0)
    {
      goto LABEL_30;
    }

    (*(*v5 + 24))(v5, a1);
  }

  v6 = sub_10001A9C8();
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_30;
  }

  (*(*v6 + 24))(v6, a1);
  do
  {
    v12 = -1;
    v13 = 0;
    v7 = sub_10006733C(a1, -1, &v12, &v13, 0xFFFFu);
    if (!v7 && v13)
    {
      operator delete[]();
    }
  }

  while (!v7);
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_30;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_30;
  }

  v9 = sub_100018DC0(v8);
  v10 = *(a1 + 8);
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_30;
  }

  if (sub_10005BDCC(v10))
  {
    v11 = sub_100026440();
    if (v11 && (v11 & 7) == 0)
    {
      (*(*v11 + 104))(v11, v9);
      goto LABEL_27;
    }

LABEL_30:
    __break(0x5516u);
    return;
  }

LABEL_27:
  if (*(a1 + 4528))
  {
    operator delete[]();
  }

  sub_10006522C(a1);
}

void sub_1000AA5F4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000AA3E0(a1);
  }
}

uint64_t sub_1000AA608(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000AA3E0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000AA650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (!result)
  {
    __break(0x5518u);
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v6 = sub_10005BB24(result, 2u);
  result = sub_100065198(v6);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  v7 = 2;
  result = sub_100092790(result, v3, 2u);
  if (!result)
  {
LABEL_9:
    sub_10005BB6C(v3, 2u);
    return v7;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (a2 <= 0xFF)
  {
    sub_1000AA6F8(result, a2, a3);
    v7 = v8;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x550Au);
  return result;
}

void sub_1000AA6F8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_86;
  }

  v4 = *(a1 + 8);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_86;
  }

  v8 = sub_100018DC0(v4);
  if (!v8)
  {
    goto LABEL_85;
  }

  v9 = v8;
  v10 = sub_1000C4254();
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_86;
  }

  v11 = sub_1000933B0(v10, v9);
  if (a2 > 0xFF)
  {
LABEL_87:
    __break(0x550Au);
    goto LABEL_88;
  }

  if (a2 > 0x86)
  {
    return;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_86;
  }

  v12 = v11;
  v13 = (*(*v9 + 224))(v9);
  v14 = 0;
  v15 = -1;
  if (a2 <= 3u)
  {
    if (a2)
    {
      if (a2 == 2)
      {
        v14 = 1;
        v16 = 8;
        v15 = -256;
        v17 = 1;
      }

      else
      {
        v16 = 0;
        v17 = -1;
        if (a2 == 3)
        {
          v17 = 2;
          v16 = 13;
          v14 = 1;
          v15 = -8192;
        }
      }

      goto LABEL_34;
    }

    v17 = 0;
    if (v13)
    {
      v15 = -134216698;
    }

    else
    {
      v15 = -134217728;
    }

    v16 = 27;
LABEL_31:
    v14 = 1;
    goto LABEL_34;
  }

  if (a2 == 4)
  {
    if (v13)
    {
      v15 = -1047546;
    }

    else
    {
      v15 = -1048576;
    }

    v17 = 3;
    v16 = 20;
    goto LABEL_31;
  }

  if (a2 == 5)
  {
    v17 = 4;
    v14 = 1;
    v15 = -2;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v17 = -1;
    if (a2 == 13)
    {
      v17 = 6;
      v16 = 2;
      v14 = 1;
      v15 = -3;
    }
  }

LABEL_34:
  if ((v15 & a3) != 0)
  {
    return;
  }

  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v40, 1u);
  v40[0] = off_100113858;
  v18 = *(a1 + 8);
  if (!v18 || (v18 & 7) != 0)
  {
    goto LABEL_86;
  }

  v19 = sub_10005BE5C(v18);
  if (!a2 && (v19 & 0x2000) != 0)
  {
    v20 = sub_1000C4254();
    if (!v20 || (v20 & 7) != 0)
    {
      goto LABEL_86;
    }

    v21 = sub_100092790(v20, *(a1 + 8), 0);
    if (v21)
    {
      if ((v21 & 7) != 0)
      {
        goto LABEL_86;
      }

      if (sub_100081574(v21) == 2)
      {
        a3 &= 0x300319u;
      }

      goto LABEL_46;
    }

LABEL_85:
    __break(0x5518u);
    goto LABEL_86;
  }

LABEL_46:
  if (a2)
  {
    v22 = 0;
  }

  else
  {
    v22 = v12 == 1;
  }

  v23 = v22;
  if (v22)
  {
    v24 = *(a1 + 8);
    if (!v24 || (v24 & 7) != 0)
    {
      goto LABEL_86;
    }

    v25 = sub_10005B720(v24, 2u);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    if (__CFADD__(a1 + 1192, 24 * a2))
    {
LABEL_88:
      __break(0x5513u);
      return;
    }

    v27 = a2;
    v26 = 24 * a2;
    v25 = *(a1 + 1192 + v26 + 16);
  }

  if (__CFADD__(a1 + 1192, v26))
  {
    goto LABEL_88;
  }

  v28 = a1 + 1192 + 24 * v27;
  sub_1000DDDDC(v40, v28);
  if (a3 != v25)
  {
    *(v28 + 16) = a3;
    if (v23)
    {
      v29 = *(a1 + 8);
      if (!v29 || (v29 & 7) != 0)
      {
        goto LABEL_86;
      }

      sub_10005B41C(v29, 2u, a3);
    }

    if (v14)
    {
      v30 = 0;
      v31 = v25 ^ a3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      while (1)
      {
        if (v31)
        {
          v38 = 0xAAAAAAAAAAAAAAAALL;
          v39 = 0xAAAAAAAAAAAAAAAALL;
          v37[0] = v17;
          v37[1] = v30;
          LOBYTE(v38) = a3 & 1;
          v32 = *(a1 + 8);
          if (v32)
          {
            v33 = (*(a1 + 8) & 7) == 0;
          }

          else
          {
            v33 = 0;
          }

          if (!v33)
          {
            goto LABEL_86;
          }

          v39 = sub_100018DC0(v32);
          v34 = *(a1 + 8);
          if (!v34 || (v34 & 7) != 0)
          {
            goto LABEL_86;
          }

          sub_10005BCC8(v34, 2, 0, v37, 24);
        }

        if (v31 >= 2)
        {
          v31 >>= 1;
          a3 >>= 1;
          if (v16 != ++v30)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v40[0] = off_100113858;
  sub_1000DDCF4(v40);
  if (*(a1 + 4444) != -1)
  {
    sub_1000651C8(*(a1 + 8));
    if (v35)
    {
      sub_1000651C8(*(a1 + 8));
      if (v36 && (v36 & 7) == 0)
      {
        sub_10006292C(v36, *(a1 + 4444));
        return;
      }

LABEL_86:
      __break(0x5516u);
      goto LABEL_87;
    }
  }
}

uint64_t sub_1000AAAE4(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_213;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_213;
  }

  if (!*(result + 8))
  {
    return 89;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_213;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
    return 89;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_213;
  }

  result = sub_10005ACA0(result);
  if (result)
  {
    return 89;
  }

  if (!a2)
  {
    goto LABEL_213;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_213;
  }

  v5 = *(a2 + 126);
  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  v8 = *(a2 + 8);
  result = sub_1000D6570();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_213;
  }

  v9 = (*(*result + 88))(result);
  v40 = 135;
  result = sub_100046A8C();
  if (!v8)
  {
    __break(0x5518u);
    goto LABEL_213;
  }

  v10 = 4;
  v4 = 2;
  if (v5 <= 10)
  {
    if (v5 <= 5)
    {
      if ((v5 - 2) >= 4 && v5)
      {
        goto LABEL_190;
      }

LABEL_86:
      if (v6)
      {
        v23 = 0;
        if (v7 <= 2)
        {
          if (v7 == 1)
          {
LABEL_111:
            v24 = *v6;
            result = sub_100048620();
            if (result && (result & 7) == 0)
            {
              (*(*result + 160))(result, 3600000);
              sub_1000AA650(*(v2 + 8), v5, v23 | v24);
              if (!v5)
              {
                goto LABEL_114;
              }

              goto LABEL_167;
            }

            goto LABEL_213;
          }

          if (v7 != 2)
          {
            goto LABEL_190;
          }

LABEL_109:
          if (v6 != -1)
          {
            v23 |= v6[1] << 8;
            goto LABEL_111;
          }

LABEL_214:
          __break(0x5513u);
          goto LABEL_215;
        }

        if (v7 == 3)
        {
LABEL_107:
          if (v6 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_214;
          }

          v23 |= v6[2] << 16;
          goto LABEL_109;
        }

        if (v7 == 4)
        {
          if (v6 >= 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_214;
          }

          v23 = v6[3] << 24;
          goto LABEL_107;
        }
      }

LABEL_190:
      v30 = *(a2 + 68);
      sub_1000B7854(a2);
      sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
      return v4;
    }

    if (v5 <= 8)
    {
      if (v5 == 6)
      {
        if (!v7)
        {
          if (v9)
          {
            v25 = 0x1000000;
          }

          else
          {
            v25 = 0;
          }

          LODWORD(v35) = v25;
          sub_1000B7DB4(a2, v8, 0, 2, 7, *(a2 + 68), &v35, 4u);
          sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
          sub_1000AB718(*(v2 + 8));
          return 0;
        }

        goto LABEL_190;
      }

      if (v5 != 8)
      {
        goto LABEL_190;
      }

      v13 = v9 ^ 1;
      if (v7 != 4)
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_190;
      }

      if (v6)
      {
        v14 = *v6;
        result = sub_100048620();
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(*result + 160))(result, 3600000);
            if (sub_1000AB8A0(*(v2 + 8), 8u, bswap32(v14), 0) == 25)
            {
LABEL_114:
              sub_1000B9034(a2);
              return 0;
            }

            goto LABEL_167;
          }
        }
      }

      goto LABEL_213;
    }

    if (v5 != 9)
    {
      if ((v7 - 1) > 4)
      {
        goto LABEL_190;
      }

      if (!v6)
      {
        goto LABEL_213;
      }

      v17 = *v6;
      result = sub_100048620();
      if (!result || (result & 7) != 0)
      {
        goto LABEL_213;
      }

      result = (*(*result + 160))(result, 3600000);
      v18 = 0;
      if (v7 > 3)
      {
        if (v7 != 4)
        {
          if (v7 != 5)
          {
            goto LABEL_178;
          }

          if (v6 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_214;
          }

          v18 = v6[4] << 24;
        }

        if (v6 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_214;
        }

        v18 |= v6[3] << 16;
      }

      else
      {
        if (v7 == 2)
        {
LABEL_176:
          if (v6 == -1)
          {
            goto LABEL_214;
          }

          v4 = 0;
          v18 |= v6[1];
LABEL_178:
          sub_1000ABC64(*(v2 + 8), v17, v18, 0);
          goto LABEL_190;
        }

        if (v7 != 3)
        {
          goto LABEL_178;
        }
      }

      if (v6 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_214;
      }

      v18 |= v6[2] << 8;
      goto LABEL_176;
    }

    v27 = v9 ^ 1;
    if (v7)
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_190;
    }

    result = sub_100048620();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_213;
    }

    (*(*result + 160))(result, 3600000);
    sub_1000ABAF8(*(v2 + 8));
LABEL_167:
    v4 = 0;
    goto LABEL_190;
  }

  if (v5 <= 15)
  {
    if (v5 > 12)
    {
      if (v5 == 13)
      {
        goto LABEL_86;
      }

      if (v5 != 15)
      {
        goto LABEL_190;
      }

      result = *(v2 + 8);
      if (result && (result & 7) == 0)
      {
        result = sub_10005BDCC(result);
        if (!result)
        {
          goto LABEL_190;
        }

        v19 = v7 - 6;
        if (v7 < 6)
        {
          goto LABEL_190;
        }

        LODWORD(v35) = 0;
        if (v6 == -1)
        {
          goto LABEL_215;
        }

        v20 = *(v6 + 1);
        if (v6 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_215;
        }

        v21 = *(v6 + 3);
        if (v6 > 0xFFFFFFFFFFFFFFFALL)
        {
          goto LABEL_214;
        }

        if (v19 > 0xFF)
        {
          goto LABEL_217;
        }

        v22 = v6[5];
        result = sub_100026440();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_213;
        }

        if (v6 > 0xFFFFFFFFFFFFFFF9)
        {
          goto LABEL_214;
        }

        result = (*(*result + 88))(result, v8, *v6, bswap32(v20) >> 16, bswap32(v21) >> 16, v22, v6 + 6, v19, &v35);
        if (result)
        {
          result = *(v2 + 8);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_213;
          }

          sub_10005BD18(result, 2, 5u);
        }

        else if (v35 > 3)
        {
          goto LABEL_216;
        }

        v4 = 2;
        goto LABEL_190;
      }

LABEL_213:
      __break(0x5516u);
      goto LABEL_214;
    }

    if (v5 != 11)
    {
      memset(v37, 170, 24);
      if (v7 != 13)
      {
        goto LABEL_190;
      }

      if (!v6)
      {
        goto LABEL_213;
      }

      LODWORD(v35) = bswap32(*v6);
      if (v6 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_214;
      }

      HIDWORD(v35) = v6[4];
      if (v6 > 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_214;
      }

      LODWORD(v36) = v6[5];
      if (v6 > 0xFFFFFFFFFFFFFFF9)
      {
        goto LABEL_214;
      }

      HIDWORD(v36) = v6[6];
      if (v6 > 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_214;
      }

      v15 = v6[7];
      *v37 = v15;
      if (v15 <= 3)
      {
        if (v15 == 1)
        {
          if (v6 > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_214;
          }

          *&v37[4] = v6[8];
          if (v6 >= 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_215;
          }

          *&v37[8] = bswap32(*(v6 + 9)) >> 16;
          if (v6 >= 0xFFFFFFFFFFFFFFF5)
          {
            goto LABEL_215;
          }

          v16 = bswap32(*(v6 + 11)) >> 16;
        }

        else
        {
          LOWORD(v16) = 0;
          *&v37[4] = 2;
          *&v37[8] = 0;
        }

        *&v37[10] = v16;
        sub_1000ABF98(v2, &v35, 0);
        goto LABEL_190;
      }

      goto LABEL_216;
    }

    if ((v7 - 2) > 3)
    {
      goto LABEL_190;
    }

    if (!v6)
    {
      goto LABEL_213;
    }

    v26 = 0;
    if (v7 > 3)
    {
      if (v7 != 4)
      {
        if (v6 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_214;
        }

        v26 = v6[4] << 24;
      }

      if (v6 > 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_214;
      }

      v26 |= v6[3] << 16;
    }

    else if (v7 == 2)
    {
LABEL_165:
      if (v6 == -1)
      {
        goto LABEL_214;
      }

      sub_1000ABE48(v2, *v6, v26 | v6[1], 0);
      goto LABEL_167;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_214;
    }

    v26 |= v6[2] << 8;
    goto LABEL_165;
  }

  if (v5 <= 128)
  {
    if (v5 == 16)
    {
      result = *(v2 + 8);
      if (result && (result & 7) == 0)
      {
        if (!sub_10005BDCC(result) || v7 < 2)
        {
          goto LABEL_190;
        }

        result = sub_100048620();
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(*result + 160))(result, 3600000);
            result = sub_100026440();
            if (result)
            {
              if ((result & 7) == 0 && v6)
              {
                if (v6 > 0xFFFFFFFFFFFFFFFDLL)
                {
                  goto LABEL_214;
                }

                (*(*result + 112))(result, v8, *v6, v6[1], v6 + 2, (v7 - 2));
                goto LABEL_190;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v5 != 18)
      {
        goto LABEL_190;
      }

      result = *(v2 + 8);
      if (result && (result & 7) == 0)
      {
        if (!sub_10005BDCC(result) || v7 != 1)
        {
          goto LABEL_190;
        }

        result = sub_100026440();
        if (result)
        {
          if ((result & 7) == 0)
          {
            if (v6)
            {
              (*(*result + 96))(result, v8, *v6);
              result = *(v2 + 8);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  sub_10005BD4C(result, 2, 5u);
                  goto LABEL_190;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_213;
  }

  if (v5 != 129)
  {
    if (v5 != 131)
    {
      if (v5 != 133)
      {
        goto LABEL_190;
      }

      v11 = v9 ^ 1;
      if (v7 != 4)
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        goto LABEL_213;
      }

      *(v2 + 4439) = *v6 & 1;
      if (v6 == -1)
      {
        goto LABEL_214;
      }

      *(v2 + 4432) = v6[1];
      if (v6 < 0xFFFFFFFFFFFFFFFELL)
      {
        v4 = 0;
        *(v2 + 4435) = bswap32(*(v6 + 1)) >> 16;
        *(v2 + 4442) = 0;
        v10 = 25;
LABEL_34:
        v12 = 132;
        goto LABEL_186;
      }

LABEL_215:
      __break(0x5500u);
      goto LABEL_216;
    }

    if (v7 == 6)
    {
      *(v2 + 4437) = 1;
      if (!v6)
      {
        goto LABEL_213;
      }

      *(v2 + 4433) = *v6;
      if (v6 == -1)
      {
        goto LABEL_214;
      }

      *(v2 + 4434) = v6[1];
      if (v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_215;
      }

      if ((v9 & (bswap32(*v6) >> 16 < 0x104) & HIBYTE(*(v6 + 2))) == 1)
      {
        *(v2 + 4438) = 1;
        sub_1000AC0C0(*(v2 + 8));
      }

      else
      {
        *(v2 + 4438) = 0;
      }

      v4 = 0;
      *(v2 + 4440) = 0;
      v10 = 25;
    }

    v12 = 130;
LABEL_186:
    v40 = v12;
    sub_10006733C(v2, *(a2 + 68), &v40, 0, 0xFFFFu);
    if (v10 <= 0x18)
    {
      goto LABEL_190;
    }

LABEL_211:
    sub_1000B9034(a2);
    return v4;
  }

  if (v7 != 2)
  {
    goto LABEL_167;
  }

  if (!v6)
  {
    goto LABEL_213;
  }

  if (v6 == -1)
  {
    goto LABEL_214;
  }

  v28 = *v6;
  v29 = v6[1];
  v39 = v6[1];
  if (v29 > 131)
  {
    if (v29 != 134)
    {
      if (v29 == 132)
      {
        sub_10006733C(v2, *(a2 + 68), &v39, 0, 0xFFFFu);
        if (v28)
        {
          sub_1000AC0C0(*(v2 + 8));
        }

        goto LABEL_210;
      }

LABEL_193:
      sub_1000DDEEC(0, 4, "CIapLingoSimpleRemote::%s:%d ackedCmdID = %X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoSimpleRemote.cpp", 977, v29);
LABEL_210:
      v4 = 0;
      goto LABEL_211;
    }

    result = sub_10006733C(v2, *(a2 + 68), &v39, 0, 0xFFFFu);
    if (v28)
    {
      v33 = *(v2 + 4448);
      if (v33 <= 1)
      {
        sub_1000AC244(*(v2 + 8), *(v2 + 4452), v33 & 1);
        goto LABEL_210;
      }
    }

    else
    {
      *(v2 + 4441) = 0;
      v34 = *(v2 + 4448);
      if (v34 <= 1)
      {
        *(v2 + 4439) = v34;
        *(v2 + 4432) = *(v2 + 4449);
        goto LABEL_210;
      }
    }

LABEL_216:
    __break(0x550Au);
    goto LABEL_217;
  }

  if (v29 != 17)
  {
    if (v29 == 130)
    {
      sub_10006733C(v2, *(a2 + 68), &v39, 0, 0xFFFFu);
      if (v28)
      {
        sub_1000AB718(*(v2 + 8));
      }

      goto LABEL_210;
    }

    goto LABEL_193;
  }

  v38 = 0;
  if (sub_10006733C(v2, *(a2 + 68), &v39, &v38, 0xFFFFu))
  {
    goto LABEL_210;
  }

  result = v38;
  if (!v38)
  {
    goto LABEL_210;
  }

  if (v38)
  {
    goto LABEL_213;
  }

  v31 = *(v38 + 4);
  if (v31 != 255)
  {
    v32 = v31 + 1;
    *(v38 + 4) = v32;
    if (!v28 || v32 >= *(result + 5))
    {
      v36 = 0;
      memset(&v37[8], 0, 24);
      v35 = 0x12000100000001;
      *v37 = v8;
      *&v37[8] = *(result + 6);
      operator delete[]();
    }

    if ((v8 & 7) == 0)
    {
      result = (*(*v8 + 16))(v8, 0);
      if (v38)
      {
        if ((v38 & 1) == 0)
        {
          sub_1000B7DB4(a2, v8, 0, 2, 17, result, (v38 + 6), *(v38 + 2));
          sub_100067088(v2, a2, 300, 0, v38);
          return 0;
        }
      }
    }

    goto LABEL_213;
  }

LABEL_217:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000AB718(uint64_t result)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v1 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = sub_1000945E0(result, v1);
  if (result)
  {
    if ((v1 & 7) != 0)
    {
      goto LABEL_15;
    }

    v2 = result;
    v3 = sub_10005BB24(v1, 2u);
    result = sub_100065198(v3);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_15;
    }

    result = sub_100092790(result, v1, 2u);
    if (!result)
    {
      goto LABEL_13;
    }

    if ((result & 7) == 0)
    {
      v4 = *(result + 4440);
      if (v4 <= 2)
      {
        *(result + 4440) = v4 + 1;
        if ((v2 & 7) == 0)
        {
          (*(*v2 + 16))(v2, 0);
          sub_1000B748C();
        }

        goto LABEL_15;
      }

LABEL_13:
      sub_10005BB6C(v1, 2u);
      return 16;
    }
  }

  else
  {
LABEL_14:
    __break(0x5518u);
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000AB8A0(uint64_t a1, unsigned int a2, unsigned int a3, char a4)
{
  memset(v16, 170, sizeof(v16));
  result = sub_1000DDCB4(v16, 1u);
  v16[0] = off_100113858;
  if (!a1)
  {
    __break(0x5518u);
LABEL_30:
    __break(0x5516u);
    goto LABEL_31;
  }

  if (a3)
  {
    result = sub_1000ACB8C(a1, a3);
    v9 = result;
    if (result)
    {
      goto LABEL_28;
    }
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_30;
  }

  v10 = sub_10005BB24(a1, 2u);
  result = sub_100065198(v10);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_30;
  }

  result = sub_100092790(result, a1, 2u);
  if (!result)
  {
    v9 = 0;
LABEL_27:
    sub_10005BB6C(a1, 2u);
LABEL_28:
    v16[0] = off_100113858;
    sub_1000DDCF4(v16);
    return v9;
  }

  v11 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  if (a2 > 0xFF)
  {
LABEL_31:
    __break(0x550Au);
    goto LABEL_32;
  }

  if (a2 >= 0x87)
  {
LABEL_32:
    __break(0x5512u);
    goto LABEL_33;
  }

  if (!__CFADD__(result + 1192, 24 * a2))
  {
    v12 = result + 1192 + 24 * a2;
    v13 = *(v12 + 16);
    if (v13)
    {
      LODWORD(v16[2]) = 5;
      HIDWORD(v16[2]) = v13;
      LOBYTE(v16[3]) = 0;
      v16[4] = sub_100018DC0(a1);
      if (HIDWORD(v16[2]) < 3)
      {
        v9 = 25;
      }

      else
      {
        sub_10005BCC8(a1, 2, 0, &v16[2], 24);
        v9 = 0;
      }

      *(v12 + 16) = 0;
      if ((a4 & 1) == 0)
      {
        v15 = 136;
        sub_10006733C(v11, -1, &v15, 0, 0xFFFFu);
      }
    }

    else
    {
      v9 = 0;
    }

    if (a3)
    {
      v14 = sub_1000ACD28(a3);
      *(v12 + 16) = v14;
      LODWORD(v16[2]) = 5;
      HIDWORD(v16[2]) = v14;
      LOBYTE(v16[3]) = 1;
      v16[4] = sub_100018DC0(a1);
      sub_1000DDDDC(v16, v12);
      if (HIDWORD(v16[2]) < 3)
      {
        LODWORD(v9) = 25;
      }

      else
      {
        sub_10005BCC8(a1, 2, 0, &v16[2], 24);
      }

      if (sub_1000671A8(v11, -1, 136, 0, 400))
      {
        v9 = 2;
      }

      else
      {
        v9 = v9;
      }
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000ABAF8(uint64_t a1)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDCB4(v8, 1u);
  v8[0] = off_100113858;
  if (!a1)
  {
    __break(0x5518u);
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v3 = sub_10005BB24(a1, 2u);
  result = sub_100065198(v3);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = 2;
  result = sub_100092790(result, a1, 2u);
  if (!result)
  {
    goto LABEL_14;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  if ((result + 1192) < 0xFFFFFFFFFFFFFF40)
  {
    if (*(result + 1400))
    {
      sub_1000DDDDC(v8, (result + 1384));
      v7 = 136;
      if (sub_10006733C(v5, -1, &v7, 0, 0xFFFFu))
      {
        v6 = 1784;
      }

      else
      {
        if (!sub_1000671A8(v5, -1, 136, 0, 400))
        {
          v4 = 0;
          goto LABEL_14;
        }

        v6 = 1779;
      }

      sub_1000DDEEC(0, 4, "%s:%d 0 != status\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoSimpleRemote.cpp", v6);
    }

LABEL_14:
    sub_10005BB6C(a1, 2u);
    v8[0] = off_100113858;
    sub_1000DDCF4(v8);
    return v4;
  }

LABEL_18:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000ABC64(uint64_t result, int a2, unsigned int a3, char a4)
{
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_25;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v8 = sub_10005BB24(result, 2u);
  result = sub_100065198(v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_100092790(result, v4, 2u);
  if (!result)
  {
LABEL_22:
    v13 = 4;
LABEL_23:
    sub_10005BB6C(v4, 2u);
    return v13;
  }

  v9 = result;
  if ((result & 7) != 0 || (result = sub_10004B1AC()) == 0 || (result & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  result = (*(*result + 616))(result, 2);
  if (result != a2)
  {
    goto LABEL_22;
  }

  *(v9 + 4456) = a2;
  if (a3 > 0x1F)
  {
    goto LABEL_22;
  }

  if ((v9 + 1192) < 0xFFFFFFFFFFFFFF10)
  {
    v10 = *(v9 + 1448);
    if (v10 != a3)
    {
      v11 = 0;
      v12 = v10 ^ a3;
      *(v9 + 1448) = a3;
      do
      {
        if (v12)
        {
          v15 = 0xAAAAAAAAAAAAAAAALL;
          v16 = 0xAAAAAAAAAAAAAAAALL;
          v14[0] = 2;
          v14[1] = v11;
          LOBYTE(v15) = a3 & 1;
          v16 = sub_100018DC0(v4);
          sub_10005BCC8(v4, 2, 1, v14, 24);
        }

        if (v12 < 2)
        {
          break;
        }

        v12 >>= 1;
        a3 >>= 1;
        ++v11;
      }

      while (v11 != 5);
      if ((a4 & 1) == 0)
      {
        LOWORD(v14[0]) = 137;
        sub_10006733C(v9, -1, v14, 0, 0xFFFFu);
        if (*(v9 + 1448))
        {
          sub_1000671A8(v9, -1, 137, 0, 400);
        }
      }
    }

    v13 = 0;
    goto LABEL_23;
  }

LABEL_26:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000ABE48(uint64_t result, int a2, unsigned int a3, char a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_21:
    __break(0x5516u);
LABEL_22:
    __break(0x5513u);
    return result;
  }

  v5 = a3;
  *(result + 4457) = a2;
  if (a3 > 0x3F)
  {
    return 4;
  }

  if ((result + 1192) >= 0xFFFFFFFFFFFFFEF8)
  {
    goto LABEL_22;
  }

  v8 = *(result + 1472);
  if (v8 != a3)
  {
    v9 = 0;
    v10 = v8 ^ a3;
    *(result + 1472) = a3;
    while (1)
    {
      if (v10)
      {
        v13 = 0xAAAAAAAAAAAAAAAALL;
        v14 = 0xAAAAAAAAAAAAAAAALL;
        v12[0] = a2;
        v12[1] = v9;
        LOBYTE(v13) = v5 & 1;
        result = *(v4 + 8);
        if (result)
        {
          v11 = (*(v4 + 8) & 7) == 0;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          goto LABEL_21;
        }

        v14 = sub_100018DC0(result);
        sub_10005FBC8(2, 2, v12, 24, *(v4 + 8));
      }

      if (v10 >= 2)
      {
        v10 >>= 1;
        v5 >>= 1;
        if (++v9 != 6)
        {
          continue;
        }
      }

      break;
    }
  }

  if ((a4 & 1) == 0)
  {
    LOWORD(v12[0]) = 138;
    sub_10006733C(v4, -1, v12, 0, 0xFFFFu);
    if (*(v4 + 1472))
    {
      sub_1000671A8(v4, -1, 138, 0, 400);
    }
  }

  return 0;
}

uint64_t sub_1000ABF98(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_22;
  }

  v5 = *(a2 + 4);
  if (v5 >= 4)
  {
    goto LABEL_22;
  }

  if (v5 == 3)
  {
    return 4;
  }

  v6 = *(a2 + 8);
  if (v6 > 3)
  {
    goto LABEL_22;
  }

  if (v6 > 1)
  {
    return 4;
  }

  v7 = *(a2 + 12);
  if (v7 > 3)
  {
    goto LABEL_22;
  }

  if (v7 > 1)
  {
    return 4;
  }

  v8 = *(a2 + 16);
  if (v8 > 3)
  {
LABEL_22:
    __break(0x550Au);
    return result;
  }

  if (v8 != 3)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    *(result + 4496) = *(a2 + 32);
    *(result + 4480) = v11;
    *(result + 4464) = v10;
    sub_10005FBC8(2, 3, a2, 40, *(result + 8));
    if (a3)
    {
      return 0;
    }

    v13 = 139;
    result = sub_10006733C(v3, -1, &v13, 0, 0xFFFFu);
    v12 = *(a2 + 16);
    if (v12 <= 3)
    {
      if (v12)
      {
        sub_1000671A8(v3, -1, 139, 0, 400);
      }

      return 0;
    }

    goto LABEL_22;
  }

  return 4;
}

uint64_t sub_1000AC0C0(uint64_t result)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v1 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = sub_1000945E0(result, v1);
  if (result)
  {
    if ((v1 & 7) != 0)
    {
      goto LABEL_15;
    }

    v2 = result;
    v3 = sub_10005BB24(v1, 2u);
    result = sub_100065198(v3);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_15;
    }

    result = sub_100092790(result, v1, 2u);
    if (!result)
    {
      goto LABEL_13;
    }

    if ((result & 7) == 0)
    {
      v4 = *(result + 4442);
      if (v4 <= 2)
      {
        *(result + 4442) = v4 + 1;
        if ((v2 & 7) == 0)
        {
          (*(*v2 + 16))(v2, 0);
          sub_1000B748C();
        }

        goto LABEL_15;
      }

LABEL_13:
      sub_10005BB6C(v1, 2u);
      return 2;
    }
  }

  else
  {
LABEL_14:
    __break(0x5518u);
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000AC244(uint64_t result, int a2, char a3)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v5 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_1000945E0(result, v5);
  if (!result)
  {
LABEL_18:
    __break(0x5518u);
    goto LABEL_19;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_19;
  }

  v6 = result;
  v7 = sub_10005BB24(v5, 2u);
  result = sub_100065198(v7);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100092790(result, v5, 2u);
  if (!result)
  {
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  v8 = *(result + 4437);
  if (v8 <= 1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(result + 4438);
    if (v9 <= 1)
    {
      if (v9)
      {
        v10 = *(result + 4441);
        if (v10 <= 2)
        {
          *(result + 4441) = v10 + 1;
          *(result + 4452) = a2;
          *(result + 4448) = a3;
          *(result + 4449) = HIBYTE(a2);
          if ((v6 & 7) == 0)
          {
            (*(*v6 + 16))(v6, 0);
            sub_1000B748C();
          }

          goto LABEL_19;
        }
      }

LABEL_17:
      sub_10005BB6C(v5, 2u);
      return 2;
    }
  }

LABEL_20:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000AC3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a3 || (a3 & 7) != 0)
  {
    goto LABEL_18;
  }

  if (*(a3 + 4) != 1179649)
  {
    return 2;
  }

  v6 = sub_100026440();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__n[1] = v7;
  v14 = v7;
  LOWORD(v14) = 17;
  __n[4] = -1;
  *(a1 + 4504) = 0;
  result = sub_1000679FC(a1, &__n[1], sub_1000AD6DC, 0);
  if (*(a1 + 4504) < 2u)
  {
    v9 = 0;
    if (!a2 || !v6 || *(a1 + 4504))
    {
      return v9;
    }

    v10 = *(a3 + 24);
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[30] = v11;
    __src[31] = v11;
    __src[28] = v11;
    __src[29] = v11;
    __src[26] = v11;
    __src[27] = v11;
    __src[24] = v11;
    __src[25] = v11;
    __src[22] = v11;
    __src[23] = v11;
    __src[20] = v11;
    __src[21] = v11;
    __src[18] = v11;
    __src[19] = v11;
    __src[16] = v11;
    __src[17] = v11;
    __src[14] = v11;
    __src[15] = v11;
    __src[12] = v11;
    __src[13] = v11;
    __src[10] = v11;
    __src[11] = v11;
    __src[8] = v11;
    __src[9] = v11;
    __src[6] = v11;
    __src[7] = v11;
    __src[4] = v11;
    __src[5] = v11;
    __src[2] = v11;
    __src[3] = v11;
    __src[0] = v11;
    __src[1] = v11;
    if ((v6 & 7) == 0)
    {
      if ((*(*v6 + 120))(v6, a2, v10))
      {
        v12 = -1;
        __n[0] = 512;
        result = (*(*v6 + 128))(v6, a2, v10, &v12, __src, __n);
        if (result)
        {
          if (__n[0] <= 0xFFF7u)
          {
            operator new[]();
          }

          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_18:
    __break(0x5516u);
  }

  __break(0x550Au);
LABEL_20:
  __break(0x5507u);
  __break(0x5500u);
  __break(0x5513u);
  return result;
}

uint64_t sub_1000AC778(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_70;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_70;
  }

  v29 = 0;
  v6 = sub_1000C4254();
  if (!v6)
  {
    goto LABEL_70;
  }

  v7 = v6;
  if ((v6 & 7) != 0)
  {
    goto LABEL_70;
  }

  v8 = sub_1000945E0(v6, *(a1 + 8));
  v9 = v8;
  if (a2 <= 31)
  {
    if (a2 == 4)
    {
      v11 = sub_100048620();
      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_70;
      }

      (*(*v11 + 160))(v11, 600000);
      if (!v9)
      {
        goto LABEL_31;
      }

LABEL_19:
      LOWORD(v28[1]) = -21846;
      LODWORD(v30) = -1431655766;
      *(a1 + 4440) = 0;
      *(a1 + 4442) = 0;
      do
      {
        LOWORD(v28[1]) = -1;
      }

      while (!sub_10006733C(a1, -1, &v28[1], &v30, 0xFFFFu));
      v12 = sub_1000933B0(v7, v9) == 1;
      *(a1 + 4439) = 0;
      *(a1 + 4434) = 0;
      *(a1 + 4432) = 0;
      *(a1 + 4435) = 0;
      while (v12 <= 0x12)
      {
        if (((1 << v12) & 0x78202) == 0)
        {
          if (v12 == 8)
          {
            sub_1000AB8A0(*(a1 + 8), 8u, 0, 0);
          }

          else
          {
            if (v12 != 10)
            {
              break;
            }

            sub_1000ABC64(*(a1 + 8), *(a1 + 4456), 0, 0);
            *(a1 + 4456) = 0;
          }
        }

LABEL_24:
        if (++v12 == 27)
        {
          goto LABEL_31;
        }
      }

      sub_1000AA650(*(a1 + 8), v12, 0);
      goto LABEL_24;
    }

    if (a2 == 8)
    {
      if (!v8)
      {
LABEL_31:
        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (*(a1 + 8) & 7) == 0;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
LABEL_70:
          __break(0x5516u);
LABEL_71:
          __break(0x5513u);
LABEL_72:
          sub_1000E1DF4();
        }

        if (sub_10005BDCC(v13))
        {
          v15 = sub_100026440();
          if (!v15 || (v15 & 7) != 0)
          {
            goto LABEL_70;
          }

          (*(*v15 + 104))(v15, v9);
        }

        return 0;
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (a2 == 32)
  {
    if (*(a1 + 4444) == a3)
    {
      memset(v28, 170, sizeof(v28));
      sub_1000DDCB4(v28, 1u);
      *&v28[0] = off_100113858;
      sub_1000DDDDC(v28, &v28[1]);
      v16 = sub_1000933B0(v7, v9);
      v17 = 0;
      v18 = v16 == 1;
      v19 = (8 * v18) | (16 * v18);
      v20 = (v19 + a1 + 1208);
      do
      {
        if (v18 < 6 || v18 == 13)
        {
          if (v19 > ~(a1 + 1192))
          {
            goto LABEL_71;
          }

          if (*v20)
          {
            v27 = *(v20 - 1);
            v30 = v28[1];
            v21 = sub_100073CD8(&v30, &v27);
            if (*v21 > 0 || (v22 = 1, !*v21) && v21[1] >= 400000000)
            {
              sub_1000AA650(*(a1 + 8), v18, 0);
              v22 = v17;
            }

            v17 = v22;
          }
        }

        ++v18;
        v20 += 6;
        v19 += 24;
      }

      while (v18 != 27);
      sub_1000651C8(*(a1 + 8));
      if (v23)
      {
        sub_1000651C8(*(a1 + 8));
        v26 = (v24 & 7) == 0 && v24 != 0;
        if (v17)
        {
          if (!v26)
          {
            goto LABEL_70;
          }

          sub_10006292C(v24, *(a1 + 4444));
        }

        else
        {
          if (!v26)
          {
            goto LABEL_70;
          }

          sub_1000629DC(v24, *(a1 + 4444));
        }
      }

      *&v28[0] = off_100113858;
      sub_1000DDCF4(v28);
    }

    else
    {
      if (*(a1 + 1176) != a3)
      {
        goto LABEL_72;
      }

      sub_10006770C(a1, &v29);
    }

    return 0;
  }

  if (a2 != 1024 || !a3)
  {
    return 0;
  }

  return sub_1000AC3F8(a1, v8, a3);
}

uint64_t sub_1000ACB8C(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v3 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = sub_1000945E0(result, v3);
  if (!result)
  {
LABEL_35:
    __break(0x5518u);
LABEL_36:
    __break(0x5516u);
    goto LABEL_37;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_36;
  }

  v4 = sub_10005BB24(v3, 2u);
  result = sub_100065198(v4);
  if (!result)
  {
    goto LABEL_36;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = sub_100092790(result, v3, 2u);
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  if ((a2 & 0x1F) == 0)
  {
    if ((a2 & 0xFFE0) == 0x87E0)
    {
      v9 = a2 & 0xFE0000;
      if (v9 == 393216)
      {
        v5 = 0;
      }

      else
      {
        if (v9 == 0x40000)
        {
          v10 = v3;
          v11 = a2;
          v12 = 0;
        }

        else
        {
          if (v9 != 0x20000)
          {
            v5 = 1;
            goto LABEL_34;
          }

          v10 = v3;
          v11 = a2;
          v12 = 1;
        }

        v5 = 4 * (sub_1000AC244(v10, v11, v12) != 0);
      }
    }

    else
    {
      v5 = 5;
    }

LABEL_34:
    sub_10005BB6C(v3, 2u);
    return v5;
  }

  if (a2 == 34798)
  {
    v5 = 2;
  }

  else
  {
    v5 = 5;
  }

  if (a2 != 34798 || !result)
  {
    goto LABEL_34;
  }

  v6 = *(result + 4437);
  if (v6 <= 1)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    v7 = *(result + 4438);
    if (v7 > 1)
    {
      goto LABEL_37;
    }

    if ((v7 & 1) == 0)
    {
LABEL_22:
      v5 = sub_1000ACD28(a2) == 9;
      goto LABEL_34;
    }

    v8 = *(result + 4439);
    if (v8 <= 1)
    {
      if ((v8 & 1) != 0 && HIBYTE(a2) != *(result + 4432))
      {
        v5 = 2;
        goto LABEL_34;
      }

      goto LABEL_22;
    }
  }

LABEL_37:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000ACD28(int a1)
{
  if ((a1 & 0x1F) != 0)
  {
    if ((a1 & 0x1F) == 0xELL && (v1 = (a1 & 0xFE0000) - 0x20000, v1 < 0xC0000))
    {
      return *(&unk_1000EFDD0 + (v1 >> 15));
    }

    else
    {
      return 9;
    }
  }

  else
  {
    v3 = a1 & 0xFE0000;
    if (v3 == 0x40000)
    {
      v4 = 1;
    }

    else
    {
      v4 = 9;
    }

    if (v3 == 393216)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (v3 == 0x20000)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1000ACD94(_BOOL8 a1)
{
  v1 = a1;
  result = sub_100065198(a1);
  if (result && (result & 7) == 0)
  {
    result = sub_1000949E0(result, v1, 0);
    if (!result)
    {
      return 0;
    }

    v3 = result;
    if ((result & 7) == 0)
    {
      v4 = sub_10005BB24(result, 2u);
      result = sub_100065198(v4);
      if (result)
      {
        if ((result & 7) == 0)
        {
          result = sub_100092790(result, v3, 2u);
          if (!result)
          {
            v1 = 0;
            goto LABEL_15;
          }

          if ((result & 7) == 0)
          {
            if (!v1)
            {
LABEL_15:
              sub_10005BB6C(v3, 2u);
              return v1;
            }

            result = sub_100065198(result);
            if (result && (result & 7) == 0)
            {
              v1 = sub_100058FB0(result, v1);
              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000ACE58(uint64_t result, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_1000945E0(result, *(v5 + 8));
  *a5 = 2;
  if (a3 > 135)
  {
    if (a3 <= 137)
    {
      if (a3 == 136)
      {
        result = sub_1000ACD94(result);
        if (!result)
        {
          return result;
        }

        result = sub_1000AB8A0(*(v5 + 8), 8u, 0, 1);
      }

      else
      {
        result = sub_1000ACD94(result);
        if (!result)
        {
          return result;
        }

        result = sub_1000ABC64(*(v5 + 8), *(v5 + 4456), 0, 1);
      }

      goto LABEL_37;
    }

    if (a3 == 138)
    {
      result = sub_1000ACD94(result);
      if (!result)
      {
        return result;
      }

      result = sub_1000ABE48(v5, *(v5 + 4457), 0, 1);
      goto LABEL_37;
    }

    if (a3 == 139)
    {
      result = sub_1000ACD94(result);
      if (result)
      {
        *(v5 + 4480) = 0x200000000;
        *(v5 + 4488) = 0;
        result = sub_1000ABF98(v5, v5 + 4464, 1);
        goto LABEL_37;
      }
    }

    return result;
  }

  if (a3 > 131)
  {
    if (a3 == 132)
    {
      result = sub_1000ACD94(result);
      if (!result)
      {
        return result;
      }

      result = sub_1000AC0C0(*(v5 + 8));
      goto LABEL_37;
    }

    if (a3 != 134)
    {
      return result;
    }

    result = sub_1000ACD94(result);
    if (!result)
    {
      return result;
    }

    v9 = *(v5 + 4448);
    if (v9 < 2)
    {
      result = sub_1000AC244(*(v5 + 8), *(v5 + 4452), v9 & 1);
      goto LABEL_37;
    }

LABEL_42:
    __break(0x550Au);
    return result;
  }

  if (a3 == 17)
  {
    if (!a4)
    {
      return result;
    }

    if ((a4 & 1) == 0)
    {
      v10 = *(a4 + 4);
      if (v10 == 255)
      {
LABEL_41:
        __break(0x5507u);
        goto LABEL_42;
      }

      v11 = v10 + 1;
      *(a4 + 4) = v11;
      if (*(a4 + 5) <= v11)
      {
        v13 = *(a4 + 6);
        operator delete[]();
      }

      if (result && (result & 7) == 0)
      {
        (*(*result + 16))(result, 0);
        v12 = *(a4 + 2);
        sub_1000B748C();
      }
    }

LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

  if (a3 == 130)
  {
    result = sub_1000ACD94(result);
    if (result)
    {
      result = sub_1000AB718(*(v5 + 8));
LABEL_37:
      *a5 = 0;
    }
  }

  return result;
}

uint64_t sub_1000AD154(uint64_t result, uint64_t a2, int a3)
{
  if (!a2 || a3 != 9)
  {
    __break(0x5518u);
    goto LABEL_25;
  }

  v4 = result;
  v5 = sub_100046A8C();
  result = sub_100068B4C(9);
  if (result)
  {
    v6 = 55;
  }

  else
  {
    v6 = 39;
  }

  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_25;
  }

  if ((*(*v5 + 96))(v5))
  {
    v7 = (*(*v5 + 104))(v5);
    v8 = 1024;
    if (v7)
    {
      v8 = 3072;
    }

    v6 |= v8;
    if ((*(*v5 + 112))(v5))
    {
      v6 |= 0x1000uLL;
    }
  }

  result = sub_1000C4254();
  if (!result)
  {
    goto LABEL_25;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v9 = sub_1000949E0(result, v4, 0);
  result = sub_100026440();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*result + 136))(result);
  if (v9 && result)
  {
    if ((v9 & 7) == 0)
    {
      result = sub_10005BDCC(v9);
      if (result)
      {
        v6 |= 0x200uLL;
      }

      goto LABEL_22;
    }

LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

LABEL_22:
  *a2 = 2;
  if (a2 != -1)
  {
    *(a2 + 1) = bswap64(v6);
    return 0;
  }

LABEL_26:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000AD2FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

  switch(a2)
  {
    case 0x120001:
      v8 = 0;
      v9 = 1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_13;
    case 0x130002:
      if (a4)
      {
        operator new();
      }

      break;
    case 0x130001:
      if (a4)
      {
        operator new();
      }

      break;
    default:
      return result;
  }

  v8 = sub_1000AD644;
  v9 = 5;
  if (a3)
  {
LABEL_13:
    result = sub_1000C4254();
    if (result)
    {
      v10 = result;
      if ((result & 7) == 0)
      {
        result = *(v4 + 8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v11 = sub_100018DC0(result);
            return (*(*v10 + 128))(v10, v9, a2, 0, a3, a4, 0, v8, v11, *(v4 + 8));
          }
        }
      }
    }

LABEL_19:
    __break(0x5516u);
    __break(0x5513u);
    __break(0x550Au);
    __break(0x5500u);
  }

  return result;
}

void *sub_1000AD644(void *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 8)
  {
    goto LABEL_13;
  }

  if (result != 5)
  {
    __break(0x5518u);
LABEL_13:
    __break(0x550Au);
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (a2 == 1245185)
  {
    v7[1] = v5;
    v7[2] = v6;
    v7[0] = a5;
    return sub_1000AA160(v7);
  }

  else if (a2 == 1245186 && a5)
  {
    if ((a5 & 3) == 0)
    {

      operator delete();
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000AD6DC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*(a2 + 16) == 17)
    {
      if (*(a2 + 24))
      {
        *(result + 4504) = 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_1000ADA88(const __CFString *a1, _OWORD *a2)
{
  v3 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (v4)
  {
    v5 = v4;
    *token.val = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, a1, &token);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v7);
        v10 = Value != 0;
        CFRelease(v7);
        v11 = *token.val;
        if (!*token.val)
        {
LABEL_13:
          CFRelease(v5);
          return v10;
        }

        if (Value)
        {
          v10 = 1;
LABEL_11:
          CFRelease(v11);
          goto LABEL_13;
        }

LABEL_10:
        NSLog(@"Unable to get entitlement '%@', error: %@", a1, v11);
        v10 = 0;
        v11 = *token.val;
        goto LABEL_11;
      }

      CFRelease(v7);
    }

    v11 = *token.val;
    if (!*token.val)
    {
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  NSLog(@"Unable to create security task from audit token.");
  return 0;
}

void sub_1000ADB8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (((v2 + 88) & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*(v2 + 88))
  {
    if (((v2 + 8) & 3) != 0)
    {
      goto LABEL_11;
    }

    NSLog(@"releasing process assertion - %s:%s - %d clientID=%d pid=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "-[IAPEAClient initWithCapabilities:auditToken:xpcConnection:eaProtocols:andBundleId:]_block_invoke", 121, *(v2 + 8), [v2 _getProcessId]);
    v3 = (*(a1 + 32) + 88);
    if ((v3 & 7) != 0)
    {
      goto LABEL_11;
    }

    CFRelease(*v3);
    v4 = *(a1 + 32) + 88;
    if ((v4 & 7) != 0)
    {
      goto LABEL_11;
    }

    *v4 = 0;
    v2 = *(a1 + 32);
  }

  v5 = (v2 + 112);
  if (((v2 + 112) & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  if (*v5)
  {
    dispatch_source_set_timer(*v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(a1 + 32) + 104;
    if ((v6 & 7) == 0)
    {
      *v6 = 0;
      return;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x5510u);
}

void sub_1000ADE48(uint64_t a1)
{
  v1 = (*(a1 + 32) + 88);
  if ((v1 & 7) != 0)
  {
    goto LABEL_6;
  }

  if (!*v1)
  {
    return;
  }

  CFRelease(*v1);
  v3 = *(a1 + 32) + 88;
  if ((v3 & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
    return;
  }

  *v3 = 0;
}

void sub_1000ADFA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (((v2 + 88) & 7) != 0)
  {
    goto LABEL_24;
  }

  if (!*(v2 + 88))
  {
    goto LABEL_6;
  }

  v3 = time(0);
  v2 = *(a1 + 32);
  if (((v2 + 104) & 7) != 0)
  {
    goto LABEL_24;
  }

  v4 = *(v2 + 104);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (!v5)
  {
    if (v6 < 3)
    {
      NSLog(@"using ea process hysteresis");
      return;
    }

LABEL_6:
    if (((v2 + 88) & 7) == 0)
    {
      if (*(v2 + 88))
      {
        if (((v2 + 8) & 3) == 0)
        {
          NSLog(@"renewing process assertion - %s:%s - %d clientID=%d pid=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "-[IAPEAClient takeProcessAssertion:]_block_invoke", 212, *(v2 + 8), [v2 _getProcessId]);
          v7 = (*(a1 + 32) + 112);
          if ((v7 & 7) == 0)
          {
            if (!*v7)
            {
              goto LABEL_25;
            }

            dispatch_source_set_timer(*v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            v8 = *(a1 + 32) + 104;
            if ((v8 & 7) == 0)
            {
              *v8 = 0;
LABEL_17:
              v12 = *(a1 + 32);
              if (((v12 + 11) & 7) != 0)
              {
                goto LABEL_24;
              }

              if (!v12[11])
              {
                NSLog(@"ERROR - %s:%s - %d couldn't create assertion for process ID %d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "-[IAPEAClient takeProcessAssertion:]_block_invoke", 223, [v12 _getProcessId]);
                return;
              }

              v13 = v12 + 14;
              if (((v12 + 14) & 7) != 0)
              {
                goto LABEL_24;
              }

              v14 = *v13;
              if (*v13)
              {
                v15 = dispatch_time(0, 10000000000);
                dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
                v16 = time(0);
                v17 = *(a1 + 32) + 104;
                if ((v17 & 7) == 0)
                {
                  *v17 = v16;
                  return;
                }

                goto LABEL_24;
              }

LABEL_25:
              __break(0x5510u);
              goto LABEL_26;
            }
          }
        }
      }

      else if (((v2 + 8) & 3) == 0)
      {
        NSLog(@"creating process assertion - %s:%s - %d clientID=%d pid=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "-[IAPEAClient takeProcessAssertion:]_block_invoke", 207, *(v2 + 8), [v2 _getProcessId]);
        [*(a1 + 32) _getProcessId];
        v9 = *(a1 + 40);
        v10 = SBSProcessAssertionCreateForPID();
        v11 = *(a1 + 32) + 88;
        if ((v11 & 7) == 0)
        {
          *v11 = v10;
          goto LABEL_17;
        }
      }
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

LABEL_26:
  __break(0x5515u);
}

void sub_1000AE430(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = (*(a1 + 32) + 72);
  if ((v4 & 7) != 0)
  {
    goto LABEL_6;
  }

  v8 = *v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AE504;
  v9[3] = &unk_100116748;
  v9[4] = a2;
  if ([v8 indexOfObjectPassingTest:v9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  NSLog(@"protocol %@ found from accessory", a2);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (!a4)
  {
LABEL_6:
    __break(0x5516u);
    return;
  }

  *a4 = 1;
}

uint64_t sub_1000AED98(uint64_t result, uint64_t a2)
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

  sub_100064F7C(result, a2, 9);
  *v2 = off_1001167A0;
  *(v2 + 1192) = 0;
  sub_1000CB970((v2 + 1200));
  qword_10012BEC8 = v2;
  result = *(v2 + 8);
  if (!result || (result & 7) != 0 || (sub_10005B7F8(result, 9u, 0), (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (v3 = sub_10005B7AC(result, 9u, 0), *(v2 + 1268) = 0, (result = sub_100065198(v3)) == 0) || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 9, 109, *(v2 + 8));
    return v2;
  }

  return result;
}

void sub_1000AEE64(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_1001167A0, (v2 = sub_100065198(a1)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 9, 0, *(a1 + 8));
    *(a1 + 1192) = 0;
    *(a1 + 1271) = 0;
    qword_10012BEC8 = 0;
    pthread_mutex_destroy((a1 + 1200));

    sub_10006522C(a1);
  }
}

void sub_1000AEEFC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000AEE64(a1);
  }
}

uint64_t sub_1000AEF10(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000AEE64(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_1000AEF58(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_10012BED0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    result = qword_10012BEC8;
    if (qword_10012BEC8)
    {
      if (!a1)
      {
        return result;
      }
    }

    else
    {
      result = &qword_10012BED8;
      qword_10012BEC8 = &qword_10012BED8;
      if (!a1)
      {
        return result;
      }
    }

    if ((result & 7) == 0)
    {
      if (!result[1])
      {
        (*(*result + 56))(result, a1);
        result = qword_10012BEC8;
      }

      if (result && (result & 7) == 0)
      {
        break;
      }
    }

    __break(0x5516u);
LABEL_15:
    sub_1000E24E8(a1);
  }

  if (result[1] != a1)
  {
    return 0;
  }

  return result;
}

void sub_1000AF014()
{
  sub_1000AF1FC();
  if (v0)
  {
    v7 = -21846;
    v8 = -86;
    if (qword_10012BEC8)
    {
      v1 = (qword_10012BEC8 & 7) == 0;
    }

    else
    {
      v1 = 0;
    }

    if (!v1)
    {
      goto LABEL_28;
    }

    pthread_mutex_lock((qword_10012BEC8 + 1200));
    if (!qword_10012BEC8 || (qword_10012BEC8 & 7) != 0)
    {
      goto LABEL_28;
    }

    if (*(qword_10012BEC8 + 1271))
    {
      v7 = bswap32(*(qword_10012BEC8 + 1268)) >> 16;
      if (&v7 >= 0xFFFFFFFFFFFFFFFELL)
      {
LABEL_29:
        __break(0x5513u);
        return;
      }

      v8 = *(qword_10012BEC8 + 1270);
    }

    v3 = *(qword_10012BEC8 + 8);
    if (!v3 || (*(qword_10012BEC8 + 8) & 7) != 0)
    {
LABEL_28:
      __break(0x5516u);
      goto LABEL_29;
    }

    v5 = *(qword_10012BEC8 + 1192);
    if ((sub_10005ACF4(v3) & 1) == 0)
    {
      if (!qword_10012BEC8)
      {
        goto LABEL_28;
      }

      if ((qword_10012BEC8 & 7) != 0)
      {
        goto LABEL_28;
      }

      v6 = *(qword_10012BEC8 + 1192);
      if (!v6 || (v6 & 7) != 0)
      {
        goto LABEL_28;
      }

      (*(*v6 + 16))(v6, 0);
    }

    sub_1000B748C();
  }
}

void sub_1000AF1FC()
{
  v0 = qword_10012BEC8;
  if (!qword_10012BEC8)
  {
    sub_1000AEF58(0);
    v0 = qword_10012BEC8;
    if (!qword_10012BEC8)
    {
      return;
    }
  }

  if ((v0 & 7) != 0)
  {
    goto LABEL_22;
  }

  v1 = *(v0 + 8);
  if (v1)
  {
    if ((v1 & 7) != 0)
    {
      goto LABEL_22;
    }

    v1 = sub_10005ACF4(v1);
    if (v1)
    {
      return;
    }

    v0 = qword_10012BEC8;
  }

  if (v0)
  {
    v2 = (v0 & 7) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  if (*(v0 + 1192))
  {
    v3 = sub_100065198(v1);
    if (v3 && (v3 & 7) == 0 && qword_10012BEC8 && (qword_10012BEC8 & 7) == 0)
    {
      v4 = *(qword_10012BEC8 + 1192);

      sub_100058FB0(v3, v4);
      return;
    }

LABEL_22:
    __break(0x5516u);
  }
}

uint64_t sub_1000AF2C0(uint64_t result, char a2, int a3)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v5 = *(result + 126);
  v12 = v5;
  result = qword_10012BEC8;
  if (!qword_10012BEC8 || (qword_10012BEC8 & 7) != 0)
  {
    goto LABEL_25;
  }

  v8 = *(v3 + 68);
  result = sub_1000671A8(qword_10012BEC8, v8, v5, 0, a3);
  if (!result)
  {
    if (!qword_10012BEC8 || (qword_10012BEC8 & 7) != 0)
    {
      goto LABEL_25;
    }

    result = sub_1000B6DB4(*(qword_10012BEC8 + 8), v3, a2, 1u);
    if (result)
    {
      v11 = 0;
      result = qword_10012BEC8;
      if (qword_10012BEC8 && (qword_10012BEC8 & 7) == 0)
      {
        return sub_10006733C(qword_10012BEC8, v8, &v12, &v11, 0xFFFFu);
      }

      goto LABEL_25;
    }

    if (!qword_10012BEC8 || (qword_10012BEC8 & 7) != 0 || (result = *(qword_10012BEC8 + 8)) == 0 || (result & 7) != 0 || (result = sub_10005B7F8(result, 9u, 1), !qword_10012BEC8) || (qword_10012BEC8 & 7) != 0 || (v9 = *(qword_10012BEC8 + 8)) == 0 || (v9 & 7) != 0)
    {
LABEL_25:
      __break(0x5516u);
      return result;
    }

    v10 = sub_100067278();
    sub_10005B7AC(v9, 9u, v10);
    return 0;
  }

  return result;
}

uint64_t sub_1000AF3F4(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_163;
  }

  if (*(a1 + 8))
  {
    v5 = sub_100065198(a1);
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_163;
    }

    if (sub_100094BFC(v5, *(a1 + 8)))
    {
      v6 = *(a1 + 8);
      if (!v6 || (v6 & 7) != 0)
      {
        goto LABEL_163;
      }

      if (sub_10005ACA0(v6))
      {
        goto LABEL_10;
      }

      if (!a2 || (a2 & 7) != 0 || (v9 = *(a1 + 8)) == 0 || (v9 & 7) != 0)
      {
LABEL_163:
        __break(0x5516u);
      }

      v10 = *(a2 + 24);
      v11 = *(a2 + 126);
      v12 = *(a2 + 128);
      v13 = *(a2 + 8);
      v14 = sub_10005ACF4(v9);
      if (v14)
      {
        v15 = 474;
      }

      else
      {
        v16 = sub_100065198(v14);
        if (!v16 || (v16 & 7) != 0)
        {
          goto LABEL_163;
        }

        v15 = sub_1000932FC(v16, v13);
      }

      v17 = *(a1 + 8);
      if (!v17 || (v17 & 7) != 0)
      {
        goto LABEL_163;
      }

      v18 = sub_10005ACF4(v17);
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v20 = sub_100065198(v18);
        if (!v20 || (v20 & 7) != 0)
        {
          goto LABEL_163;
        }

        v19 = sub_100058F00(v20, v13);
      }

      if (!qword_10012BEC8 || v13 != *(a1 + 1192))
      {
        goto LABEL_135;
      }

      v2 = 0;
      v21 = 25;
      if (v15 != 70 && v15 != 474 && v15 != 53248)
      {
        if (v19 < 0)
        {
LABEL_165:
          __break(0x550Au);
          goto LABEL_166;
        }

        v2 = v19 != 0;
        if (v19)
        {
          v21 = 5;
        }

        else
        {
          v21 = 25;
        }
      }

      sub_1000AF1FC();
      if (v22 && v13 == *(a1 + 1192) && v10 && v21 > v11)
      {
        v46 = 25;
        bzero(v47 + 4, 0x7FCuLL);
        LODWORD(v47[0]) = v11;
        if (v11 == 4)
        {
          if (v12 != 3)
          {
            goto LABEL_41;
          }

          v32 = bswap32(*v10);
          v33 = HIWORD(v32);
          WORD2(v47[0]) = HIWORD(v32);
          if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = *(v10 + 2);
            BYTE6(v47[0]) = v34;
            if (v2)
            {
              v34 = 0;
              LOWORD(v33) = HIWORD(v32) & 0x200;
              WORD2(v47[0]) = HIWORD(v32) & 0x200;
              BYTE6(v47[0]) = 0;
            }

            v46 = 3;
            pthread_mutex_lock((a1 + 1200));
            *(a1 + 1268) = v33;
            *(a1 + 1270) = v34;
            *(a1 + 1271) = 1;
            pthread_mutex_unlock((a1 + 1200));
            goto LABEL_111;
          }
        }

        else
        {
          if (v11 != 2)
          {
            if (!v11)
            {
              if (v12 == 2)
              {
                v29 = 0;
LABEL_109:
                BYTE5(v47[0]) = *v10;
                if (v10 != -1)
                {
                  BYTE4(v47[0]) = *(v10 + 1);
                  DWORD2(v47[0]) = v29;
                  v46 = BYTE4(v47[0]);
                  if (BYTE4(v47[0]) > 0x18u)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_111;
                }

                goto LABEL_166;
              }

              if (v12 == 6 && *v10 == 6)
              {
                if (v10 < 0xFFFFFFFFFFFFFFFELL)
                {
                  v29 = bswap32(*(v10 + 1));
                  goto LABEL_109;
                }

LABEL_167:
                __break(0x5500u);
LABEL_168:
                sub_1000E1DF4();
              }
            }

LABEL_41:
            v7 = 2;
            goto LABEL_11;
          }

          if (v12 != 2)
          {
            goto LABEL_41;
          }

          BYTE4(v47[0]) = *v10;
          if (v10 != -1)
          {
            BYTE5(v47[0]) = *(v10 + 1);
            v46 = 1;
LABEL_111:
            __p[0] = 0;
            v37 = *(a2 + 68);
            if (!v37)
            {
              sub_1000DDEEC(0, 4, "%s:%d CIapLingoSports::ProcessCmd packet transID = 0!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoSports.cpp", 379);
              v37 = *(a2 + 68);
            }

            if (sub_10006733C(a1, v37, &v46, __p, 0xFFFFu))
            {
              sub_1000DDEEC(0, 4, "%s:%d CIapLingoSports::ProcessCmd timeoutStatus != 0!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoSports.cpp", 386);
            }

LABEL_115:
            v38 = *(a1 + 8);
            if (v38 && (v38 & 7) == 0)
            {
              sub_10005BCC8(v38, 9, 0, v47, 2048);
              v7 = 0;
              goto LABEL_11;
            }

            goto LABEL_163;
          }
        }

LABEL_166:
        __break(0x5513u);
        goto LABEL_167;
      }

      if ((v11 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      v15 = *(a2 + 8);
      v23 = sub_1000CEA7C();
      if (!v23)
      {
LABEL_135:
        __break(0x5518u);
LABEL_136:
        if (v12 == 2)
        {
          if (v10 == -1)
          {
            goto LABEL_166;
          }

          if (*(v10 + 1) <= 2u)
          {
            (*(*v2 + 104))(v2);
            goto LABEL_144;
          }
        }

        goto LABEL_106;
      }

      v2 = v23;
      v48 = -86;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47[6] = v24;
      v47[7] = v24;
      v47[4] = v24;
      v47[5] = v24;
      v47[2] = v24;
      v47[3] = v24;
      v47[0] = v24;
      v47[1] = v24;
      if ((v23 & 7) != 0)
      {
        goto LABEL_163;
      }

      v25 = (*(*v23 + 40))(v23);
      if (!v25)
      {
        sub_1000DDEEC(0, 4, "%s:%d userCount == 0\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoSports.cpp", 414);
      }

      sub_1000AF1FC();
      if (!v26 || v13 != *(a1 + 1192))
      {
LABEL_48:
        LOBYTE(v47[0]) = 4;
        if (v11 <= 0xFF)
        {
LABEL_49:
          BYTE1(v47[0]) = v11;
          v27 = 2;
          v28 = 128;
          goto LABEL_50;
        }

        goto LABEL_164;
      }

      if (v11 <= 134)
      {
        if (v11 != 131)
        {
          if (v11 != 133)
          {
            goto LABEL_48;
          }

          v30 = 4;
          if (!v12 && v25)
          {
            LOBYTE(v47[0]) = (*(*v2 + 56))(v2);
            v27 = 1;
            v28 = 134;
            goto LABEL_50;
          }

          goto LABEL_107;
        }

        if (!v12)
        {
          if (!v25)
          {
            (*(*v2 + 24))(v2);
            v25 = (*(*v2 + 40))(v2);
          }

          if (v25)
          {
            v39 = 768;
          }

          else
          {
            v39 = 256;
          }

          LOWORD(v47[0]) = v39;
          if ((v47 + 3) != 0 && v47 >= 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_166;
          }

          BYTE2(v47[0]) = v25;
          v27 = 3;
          v28 = 132;
LABEL_50:
          sub_1000B7DB4(a2, v15, 0, 9, v28, *(a2 + 68), v47, v27);
          return sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
        }

        goto LABEL_106;
      }

      if (v11 == 135)
      {
        v30 = 4;
        if (v12 == 1 && v25)
        {
          if (!v10)
          {
            goto LABEL_163;
          }

          if (*v10 < v25)
          {
            if ((*(*v2 + 48))(v2))
            {
              v30 = 0;
            }

            else
            {
              v30 = 4;
            }
          }
        }

        goto LABEL_107;
      }

      if (v11 != 136)
      {
        if (v11 != 138)
        {
          goto LABEL_48;
        }

        if (v12 >= 2)
        {
          if (!v10)
          {
            goto LABEL_163;
          }

          v30 = 4;
          if (!v25)
          {
            goto LABEL_107;
          }

          v31 = *v10;
          if (v31 > 5)
          {
            goto LABEL_107;
          }

          v30 = 2;
          if (*v10 > 2u)
          {
            if (v31 == 3)
            {
              if (v12 == 3)
              {
                if (v10 == -1)
                {
                  goto LABEL_167;
                }

                if (bswap32(*(v10 + 1)) >> 16 <= 0x1388)
                {
                  (*(*v2 + 136))(v2);
                  goto LABEL_144;
                }
              }
            }

            else
            {
              if (v31 != 4)
              {
                goto LABEL_107;
              }

              if (v12 == 2)
              {
                if (v10 == -1)
                {
                  goto LABEL_166;
                }

                if (*(v10 + 1) <= 0xC8u)
                {
                  (*(*v2 + 152))(v2);
                  goto LABEL_144;
                }
              }
            }

            goto LABEL_106;
          }

          if (*v10)
          {
            if (v31 == 2)
            {
              if (v12 == 2)
              {
                if (v10 == -1)
                {
                  goto LABEL_166;
                }

                if (*(v10 + 1) <= 2u)
                {
                  (*(*v2 + 120))(v2);
LABEL_144:
                  v30 = 0;
                  goto LABEL_107;
                }
              }

              goto LABEL_106;
            }

LABEL_107:
            LOBYTE(v47[0]) = v30;
            goto LABEL_49;
          }

          goto LABEL_136;
        }

LABEL_106:
        v30 = 4;
        goto LABEL_107;
      }

      if (v12 != 1)
      {
        goto LABEL_106;
      }

      if (!v10)
      {
        goto LABEL_163;
      }

      v30 = 4;
      if (!v25 || *v10 > 5u)
      {
        goto LABEL_107;
      }

      LOBYTE(v47[0]) = *v10;
      v35 = *v10;
      if (v35 > 2)
      {
        if (v35 == 3)
        {
          *(v47 + 1) = __rev16((*(*v2 + 128))(v2));
          v27 = 3;
          goto LABEL_162;
        }

        if (v35 == 4)
        {
          LOBYTE(v36) = (*(*v2 + 144))(v2);
LABEL_160:
          BYTE1(v47[0]) = v36;
          v27 = 2;
LABEL_162:
          v28 = 137;
          goto LABEL_50;
        }

        if (v35 != 5)
        {
          goto LABEL_168;
        }

        v36 = (*(*v2 + 160))(v2);
      }

      else if (*v10)
      {
        if (v35 == 1)
        {
          memset(__p, 170, sizeof(__p));
          (*(*v2 + 88))(__p, v2);
          v40 = HIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v40 = __p[1];
          }

          v41 = __CFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_167;
          }

          if (!(v42 >> 16))
          {
            if (v42 >= 0x80)
            {
              v43 = 128;
            }

            else
            {
              v43 = v42;
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            memcpy(v47 + 1, v44, v43);
            v27 = v43 + 1;
            sub_10006571C(a1, v47 + 1, v43);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_162;
          }

          goto LABEL_164;
        }

        if (v35 != 2)
        {
          goto LABEL_168;
        }

        v36 = (*(*v2 + 112))(v2);
      }

      else
      {
        v36 = (*(*v2 + 96))(v2);
      }

      if (v36 <= 0xFF)
      {
        goto LABEL_160;
      }

LABEL_164:
      __break(0x5507u);
      goto LABEL_165;
    }
  }

LABEL_10:
  v7 = 89;
LABEL_11:
  sub_1000B9034(a2);
  return v7;
}

uint64_t sub_1000AFD80(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      v4 = a3;
      if (a3 >= 0x19)
      {
        __break(0x5518u);
      }

      else
      {
        bzero(v5, 0x800uLL);
        v5[4] = v4;
        v5[5] = 15;
        result = *(v3 + 8);
        if (result && (result & 7) == 0)
        {
          return sub_10005BCC8(result, 9, 0, v5, 2048);
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000AFE10(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_48;
  }

  v15 = 0;
  if (a2 <= 7)
  {
    if (a2 == 1)
    {
      sub_1000DDEEC(0, 4, "%s:%d IAP_EVENT_CLASS_MODE_CHANGE with Event Type:%ld\n");
      return;
    }

    if (a2 != 4)
    {
      goto LABEL_49;
    }

    *(a1 + 1192) = a4;
    if (a4)
    {
      if (qword_10012BEC8)
      {
        if ((qword_10012BEC8 & 7) == 0)
        {
          pthread_mutex_lock((qword_10012BEC8 + 1200));
          *(a1 + 1271) = 0;
          if (qword_10012BEC8)
          {
            if ((qword_10012BEC8 & 7) == 0)
            {
              pthread_mutex_unlock((qword_10012BEC8 + 1200));
              return;
            }
          }
        }
      }
    }

    else
    {
      __break(0x5518u);
    }

    goto LABEL_48;
  }

  if (a2 == 8)
  {
    if (*(a1 + 1192) != a4)
    {
      sub_1000DDEEC(0, 4, "%s:%d devPort(%hhx) != m_pDevPortObj(%hhx)\n");
      return;
    }

    *(a1 + 1192) = 0;
    if (qword_10012BEC8)
    {
      if ((qword_10012BEC8 & 7) == 0)
      {
        pthread_mutex_lock((qword_10012BEC8 + 1200));
        *(a1 + 1271) = 0;
        if (qword_10012BEC8)
        {
          if ((qword_10012BEC8 & 7) == 0)
          {
            pthread_mutex_unlock((qword_10012BEC8 + 1200));
            do
            {
              v14 = -1;
              v13 = 0;
            }

            while (!sub_10006733C(a1, -1, &v14, &v13, 0xFFFFu));
            return;
          }
        }
      }
    }

    goto LABEL_48;
  }

  if (a2 == 32)
  {
    if (*(a1 + 1176) != a3)
    {
      goto LABEL_50;
    }

    sub_10006770C(a1, &v15);
    v7 = *(a1 + 8);
    if (v7 && (v7 & 7) == 0)
    {
      if (!sub_10005B890(v7, 9u))
      {
        return;
      }

      v8 = sub_100067278();
      v9 = *(a1 + 8);
      if (v9)
      {
        if ((v9 & 7) == 0)
        {
          v10 = sub_10005B844(v9, 9u);
          if (v8 < v10)
          {
            __break(0x5515u);
            goto LABEL_52;
          }

          if (v8 - v10 < 0x1F4)
          {
            return;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            if ((v11 & 7) == 0)
            {
              sub_10005B7F8(v11, 9u, 0);
              v12 = *(a1 + 8);
              if (v12)
              {
                if ((v12 & 7) == 0)
                {
                  sub_10005B7AC(v12, 9u, 0);
                  return;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_48;
  }

  if (a2 != 64)
  {
LABEL_49:
    syslog(3, "CIapLingoSports::NotifyEvent: ERROR: Unknown event: %d !\n", a2);
LABEL_50:
    sub_1000E1DF4();
  }

  if (*(a1 + 1271))
  {
    return;
  }

  v5 = sub_100065198(a1);
  if (!v5 || (v5 & 7) != 0)
  {
LABEL_48:
    __break(0x5516u);
    goto LABEL_49;
  }

  v6 = sub_100058EBC(v5, *(a1 + 1192));
  if ((v6 + 8) > 0xF)
  {
LABEL_52:
    __break(0x550Au);
    return;
  }

  if ((v6 | 2) == 6)
  {

    sub_1000AF014();
  }
}

void sub_1000B009C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 8);
  if (a2 && v4)
  {
    return;
  }

  if (!v4)
  {
    sub_100067B40(a1, a2);
    *(a1 + 1192) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      if ((v6 & 7) == 0)
      {
        sub_10005B7F8(v6, 9u, 0);
        v7 = *(a1 + 8);
        if (v7)
        {
          if ((v7 & 7) == 0)
          {
            v8 = sub_10005B7AC(v7, 9u, 0);
            *(a1 + 1268) = 0;
            v9 = sub_100065198(v8);
            if (v9)
            {
              if ((v9 & 7) == 0)
              {
                sub_1000929D4(v9, 9, 109, *(a1 + 8));
                return;
              }
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  v5 = sub_100065198(a1);
  if (!v5 || (v5 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    return;
  }

  sub_1000929D4(v5, 9, 0, *(a1 + 8));
  *(a1 + 1192) = 0;
  *(a1 + 1271) = 0;

  sub_100067B40(a1, a2);
}

uint64_t sub_1000B01A8(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
    goto LABEL_8;
  }

  v2 = result;
  result = sub_100068B4C(9);
  *v2 = 9;
  if (v2 == -1)
  {
LABEL_8:
    __break(0x5500u);
    return result;
  }

  v3 = 0x200000000000000;
  if (!result)
  {
    v3 = 0;
  }

  *(v2 + 1) = v3;
  return 0;
}

uint64_t sub_1000B0208(uint64_t result, uint64_t a2)
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

  sub_100064F7C(result, a2, 12);
  v4 = 0;
  *v2 = off_100116850;
  do
  {
    v5 = (v2 + v4 + 1240);
    *v5 = 0uLL;
    v5[1] = 0uLL;
    *(v2 + v4 + 1272) = 0uLL;
    v4 += 80;
  }

  while (v4 != 1280);
  result = sub_1000C4254();
  if (!result || (result & 7) != 0 || (result = sub_1000945E0(result, a2)) == 0 || (result & 7) != 0)
  {
LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  result = (*(*result + 176))(result, 12);
  if (result < 0x10000)
  {
    *(v2 + 1204) = result;
    result = *(v2 + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        sub_10005B7F8(result, 0xCu, 0);
        result = *(v2 + 8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            result = sub_10005B7AC(result, 0xCu, 0);
            v6 = 0;
            *(v2 + 1192) = 0;
            do
            {
              if (v6 > ~(v2 + 1208))
              {
                __break(0x5513u);
                goto LABEL_21;
              }

              *(v2 + v6 + 1208) = 0uLL;
              *(v2 + v6 + 1232) = 0;
              v6 += 80;
            }

            while (v6 != 1280);
            *(v2 + 2936) = 0;
            *(v2 + 2904) = 0u;
            *(v2 + 2920) = 0u;
            *(v2 + 2872) = 0u;
            *(v2 + 2888) = 0u;
            *(v2 + 2840) = 0u;
            *(v2 + 2856) = 0u;
            *(v2 + 2808) = 0u;
            *(v2 + 2824) = 0u;
            *(v2 + 2776) = 0u;
            *(v2 + 2792) = 0u;
            *(v2 + 2744) = 0u;
            *(v2 + 2760) = 0u;
            *(v2 + 2712) = 0u;
            *(v2 + 2728) = 0u;
            *(v2 + 2680) = 0u;
            *(v2 + 2696) = 0u;
            *(v2 + 2648) = 0u;
            *(v2 + 2664) = 0u;
            *(v2 + 2616) = 0u;
            *(v2 + 2632) = 0u;
            *(v2 + 2584) = 0u;
            *(v2 + 2600) = 0u;
            *(v2 + 2552) = 0u;
            *(v2 + 2568) = 0u;
            *(v2 + 2520) = 0u;
            *(v2 + 2536) = 0u;
            *(v2 + 2488) = 0u;
            *(v2 + 2504) = 0u;
            result = sub_1000C4254();
            if (result && (result & 7) == 0)
            {
              sub_1000929D4(result, 12, 45, a2);
              return v2;
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B03CC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B0208(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_1000B03E0(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_100116850, (v2 = sub_1000C4254()) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 12, 0, *(a1 + 8));
    v3 = 1280;
    do
    {
      v4 = a1 + v3;
      if (*(a1 + v3 + 1207) < 0)
      {
        operator delete(*(v4 + 1184));
      }

      if (*(v4 + 1183) < 0)
      {
        operator delete(*(a1 + v3 + 1160));
      }

      v3 -= 80;
    }

    while (v3);

    sub_10006522C(a1);
  }
}

void sub_1000B049C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000B03E0(a1);
  }
}

uint64_t sub_1000B04B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B03E0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000B04F8(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_82;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_10;
  }

  v4 = sub_100065198(a1);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_82;
  }

  if (!sub_100094BFC(v4, *(a1 + 8)))
  {
LABEL_10:
    v6 = 89;
LABEL_11:
    sub_1000B9034(a2);
    return v6;
  }

  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_82;
  }

  if (sub_10005ACA0(v5))
  {
    goto LABEL_10;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_82:
    __break(0x5516u);
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 126);
  v11 = *(a2 + 128);
  v30 = -1;
  if (!v9 && v11)
  {
    sub_1000E1DF4();
  }

  if (v8 != *(a1 + 1192) || (v10 & 0x7Fu) > 0x12)
  {
    goto LABEL_33;
  }

  result = sub_1000B09AC(a1);
  if ((result & 1) == 0)
  {
    v13 = sub_100065198(result);
    if (!v13 || (v13 & 7) != 0)
    {
      goto LABEL_82;
    }

    result = sub_100058FB0(v13, *(a1 + 1192));
    if (!result)
    {
LABEL_33:
      if ((v10 & 0x80) != 0)
      {
        v6 = 2;
        goto LABEL_11;
      }

      v15 = *(a2 + 8);
      v16 = *(a2 + 68);
      v17 = a2;
      goto LABEL_35;
    }
  }

  if (v10 <= 15)
  {
    switch(v10)
    {
      case 1:
        if (v11)
        {
          goto LABEL_80;
        }

        memset(&v31[1], 170, 14);
        sub_1000B0AE4();
        result = sub_1000B0A3C();
        v31[0] = bswap64(result);
        if (v31 >= 0xFFFFFFFFFFFFFFF8 || (LODWORD(v31[1]) = 64, v31 >= 0xFFFFFFFFFFFFFFF4) || (WORD2(v31[1]) = bswap32(*(a1 + 1204)) >> 16, v31 >= 0xFFFFFFFFFFFFFFF2) || (HIWORD(v31[1]) = 0, v31 >= 0xFFFFFFFFFFFFFFF0))
        {
LABEL_85:
          __break(0x5500u);
          goto LABEL_86;
        }

        LOWORD(v31[2]) = 4135;
        if (v31 < 0xFFFFFFFFFFFFFFEELL)
        {
          BYTE2(v31[2]) = -56;
          if (v31 <= 0xFFFFFFFFFFFFFFECLL)
          {
            BYTE3(v31[2]) = 0;
            if ((&v31[2] + 5) == 0 || v31 < 0xFFFFFFFFFFFFFFEBLL)
            {
              BYTE4(v31[2]) = 1;
              if (v31 <= 0xFFFFFFFFFFFFFFEALL)
              {
                BYTE5(v31[2]) = 2;
                v19 = *(a2 + 68);
                v20 = a2;
                v21 = v8;
                v22 = 2;
                v23 = 22;
                goto LABEL_61;
              }
            }
          }
        }

        break;
      case 7:
        if (v11 < 6)
        {
          goto LABEL_80;
        }

        if (v9 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v27 = v9[4];
          v30 = v9[4];
          if (!v9)
          {
            goto LABEL_82;
          }

          if ((v9 + 3) >= 2)
          {
            if ((v11 - 5) >> 16)
            {
              goto LABEL_86;
            }

            if (v9 <= 0xFFFFFFFFFFFFFFFALL)
            {
              sub_1000B0B84(a1, v12, v27, bswap32(*v9), (v11 - 5), v9 + 5);
              goto LABEL_80;
            }
          }
        }

        break;
      case 8:
        if (v11 != 1)
        {
          goto LABEL_80;
        }

        if (v9)
        {
          v30 = *v9;
          sub_1000B0D80(a1, v8, v30);
          goto LABEL_80;
        }

        goto LABEL_82;
      default:
        goto LABEL_57;
    }

LABEL_84:
    __break(0x5513u);
    goto LABEL_85;
  }

  if (v10 > 127)
  {
    if (v10 != 128)
    {
      if (v10 != 130)
      {
LABEL_57:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_66;
      }

      v18 = v11 != 22;
LABEL_65:
      v6 = (2 * v18);
LABEL_67:
      v24 = *(a1 + 8);
      if (v24)
      {
        if ((v24 & 7) == 0)
        {
          sub_10005B7F8(v24, 0xCu, 1);
          v25 = *(a1 + 8);
          if (v25)
          {
            if ((v25 & 7) == 0)
            {
              v26 = sub_100067278();
              sub_10005B7AC(v25, 0xCu, v26);
              goto LABEL_11;
            }
          }
        }
      }

      goto LABEL_82;
    }

    if (v11 != 3)
    {
LABEL_66:
      v6 = 2;
      goto LABEL_67;
    }

    if (v9 != -1)
    {
      v18 = v9[1] == 133;
      goto LABEL_65;
    }

    goto LABEL_84;
  }

  if (v10 == 16)
  {
    if (v11)
    {
      goto LABEL_80;
    }

    sub_1000B0AE4();
    v31[0] = bswap64(sub_1000B0E20());
    v19 = *(a2 + 68);
    v20 = a2;
    v21 = v8;
    v22 = 17;
    v23 = 8;
LABEL_61:
    sub_1000B7DB4(v20, v21, 0, 12, v22, v19, v31, v23);
    goto LABEL_80;
  }

  if (v10 != 18)
  {
    goto LABEL_57;
  }

  if (!v11)
  {
LABEL_80:
    if (*(a2 + 126) != v10)
    {
      return sub_1000B1BA0(*(a1 + 8), a2, 0);
    }

    v28 = *(a2 + 8);
    v29 = *(a2 + 68);
    v17 = a2;
LABEL_35:
    sub_1000B7854(v17);
    return sub_1000B1BA0(*(a1 + 8), a2, 0);
  }

  if (!v9)
  {
    goto LABEL_82;
  }

  if (*v9 > 2u)
  {
    goto LABEL_80;
  }

  if (v11 <= 0xFF)
  {
    sub_1000B0EC8(a1, v8, v9, v11, &v30);
    if (!v14)
    {
      sub_1000B7DB4(a2, v8, 0, 12, 4, *(a2 + 68), &v30, 1u);
    }

    goto LABEL_80;
  }

LABEL_86:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B09AC(uint64_t result)
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

  if (!*(result + 8))
  {
    __break(0x5518u);
    goto LABEL_15;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = *(result + 201);
  if (v2 >= 2)
  {
LABEL_16:
    __break(0x550Au);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  result = *(v1 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  return sub_10005ACF4(result);
}

uint64_t sub_1000B0A3C()
{
  memset(&v2, 170, sizeof(v2));
  if (byte_10012C3EF >= 0)
  {
    v0 = &qword_10012C3D8;
  }

  else
  {
    v0 = qword_10012C3D8;
  }

  result = statfs(v0, &v2);
  if (result)
  {
    return 0;
  }

  if (is_mul_ok(v2.f_blocks, v2.f_bsize))
  {
    return v2.f_blocks * v2.f_bsize;
  }

  __break(0x550Cu);
  return result;
}

void sub_1000B0AE4()
{
  if ((atomic_load_explicit(&qword_10012C3D0, memory_order_acquire) & 1) == 0)
  {
    sub_1000E2568();
  }

  v0 = qword_10012C3E0;
  if (byte_10012C3EF >= 0)
  {
    v0 = byte_10012C3EF;
  }

  if (!v0)
  {
    std::string::assign(&qword_10012C3D8, qword_10012C670);
    std::string::append(&qword_10012C3D8, "/Accessories");

    sub_1000CB844(&qword_10012C3D8);
  }
}

uint64_t sub_1000B0B84(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, char *a6)
{
  if (!result)
  {
    goto LABEL_34;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_34;
  }

  sub_1000B0AE4();
  result = sub_1000B0E20();
  if (a3 >= 0x10)
  {
    goto LABEL_11;
  }

  if (!__CFADD__(v6 + 1208, 80 * a3))
  {
    if (result >= 0x12C000)
    {
      v11 = v6 + 1208 + 80 * a3;
      if (*v11)
      {
        if (!a5 || *(v6 + 1204) < a5 || a5 + a4 > 0x40000000)
        {
          return 4;
        }

        fseek(*v11, a4, 0);
        v12 = a5;
        v13 = a6;
        while (1)
        {
          result = fwrite(v13, 1uLL, v12, *v11);
          v14 = v12 >= result;
          v12 -= result;
          if (!v14)
          {
            goto LABEL_33;
          }

          if (__CFADD__(v13, result))
          {
            goto LABEL_32;
          }

          v13 += result;
          if (!v12)
          {
            v15 = *(v11 + 16);
            if (v15 > 3)
            {
              goto LABEL_35;
            }

            if (__CFADD__(v6 + 2488, 152 * v15))
            {
              goto LABEL_32;
            }

            v16 = *(v6 + 2488 + 152 * v15);
            if (v16 > 0xFF)
            {
              goto LABEL_36;
            }

            if ((v16 & 8) != 0)
            {
              result = *(v11 + 8);
              if (!result)
              {
                __break(0x5518u);
                goto LABEL_32;
              }

              if ((result & 7) != 0)
              {
                goto LABEL_34;
              }

              v17 = sub_1000DC440(result, a6, a5);
              if (v17)
              {
                sub_1000DDEEC(0, 4, "%s:%d WriteiPodFileData XmlSig.Update: status: 0x%08X, size: 0x%08X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 616, v17, a5);
              }
            }

            if ((v16 & 0x10) != 0)
            {
              v18 = *(v11 + 24);
              if ((UpdateSigningContext() & 1) == 0)
              {
                sub_1000DDEEC(0, 4, "%s:%d Update: %d %hhx %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 626, 0, *(v11 + 24), a5);
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_11:
    if (result >= 0x12C000)
    {
      return 13;
    }

    else
    {
      return 3;
    }
  }

LABEL_32:
  __break(0x5513u);
LABEL_33:
  __break(0x5515u);
LABEL_34:
  __break(0x5516u);
LABEL_35:
  __break(0x550Au);
LABEL_36:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B0D80(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_16;
  }

  if (a3 > 0xF)
  {
    return 13;
  }

  if (__CFADD__(result + 1208, 80 * a3))
  {
LABEL_16:
    __break(0x5513u);
    goto LABEL_17;
  }

  v3 = result + 1208 + 80 * a3;
  v4 = *v3;
  if (!*v3)
  {
    return 13;
  }

  v5 = *(v3 + 16);
  if (v5 >= 4)
  {
LABEL_17:
    __break(0x550Au);
    return result;
  }

  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_1000B2034(result, a2, a3);
    v4 = *v3;
    if (!*v3)
    {
      return 0;
    }
  }

  fclose(v4);
  result = 0;
  *v3 = 0;
  return result;
}

uint64_t sub_1000B0E20()
{
  memset(&v2, 170, sizeof(v2));
  if (byte_10012C3EF >= 0)
  {
    v0 = &qword_10012C3D8;
  }

  else
  {
    v0 = qword_10012C3D8;
  }

  result = statfs(v0, &v2);
  if (result)
  {
    return 0;
  }

  if (is_mul_ok(v2.f_bavail, v2.f_bsize))
  {
    return v2.f_bavail * v2.f_bsize;
  }

  __break(0x550Cu);
  return result;
}

void sub_1000B0EC8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, _BYTE *a5)
{
  if (!a1)
  {
    goto LABEL_263;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_263;
  }

  sub_1000B0AE4();
  v9 = sub_1000B0E20();
  if (!a3)
  {
    goto LABEL_263;
  }

  v10 = *a3;
  if (v10 >= 4)
  {
    goto LABEL_265;
  }

  if (__CFADD__(a1 + 2488, 152 * *a3))
  {
    goto LABEL_261;
  }

  if (v9 >= 0x258000)
  {
    if (a4 < 5)
    {
      v15 = 0;
      v13 = *a3;
    }

    else
    {
      if (a3 == -1)
      {
LABEL_264:
        __break(0x5500u);
LABEL_265:
        __break(0x550Au);
      }

      v14 = bswap32(*(a3 + 1));
      v15 = v14;
      v13 = 3;
      v12 = 4;
      if ((v14 & 0xFFFFFFE4) != 0 || (v14 & 0x18) == 0x18)
      {
        goto LABEL_33;
      }

      if (a4 > 0x85 || a4 == 5)
      {
        v17 = 3;
      }

      else
      {
        v17 = *a3;
      }

      if (a4 == 5)
      {
        v18 = *a3;
      }

      else
      {
        v18 = 3;
      }

      if (v14)
      {
        v13 = v17;
      }

      else
      {
        v13 = v18;
      }

      if ((v14 & 0xA) == 8)
      {
        v12 = 4;
        v13 = 3;
LABEL_33:
        v11 = v15;
        goto LABEL_34;
      }
    }

    if (v13 == 2)
    {
      v19 = sub_100065198(v9);
      if (!v19 || (v19 & 7) != 0)
      {
        goto LABEL_263;
      }

      if ((sub_100092B58(v19, a2) & 0x200) != 0)
      {
        v11 = v15;
        if ((~v15 & 0xB) != 0)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v12 = 4;
        goto LABEL_34;
      }

      v13 = 3;
    }

    v12 = 4;
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 3;
  v13 = 3;
LABEL_34:
  v20 = 0;
  v21 = 0;
  v22 = a1 + 2488 + 152 * v10;
  v23 = a5;
  while (1)
  {
    if (v20 > ~(a1 + 1208))
    {
      goto LABEL_261;
    }

    v24 = a1 + v20;
    if (!*(a1 + v20 + 1208))
    {
      break;
    }

    ++v21;
    v20 += 80;
    if (v20 == 1280)
    {
      *a5 = 16;
      goto LABEL_41;
    }
  }

  *a5 = v21;
  if (*(v22 + 16))
  {
LABEL_41:
    v13 = 3;
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoStorage::OpeniPodFeatureFile invalid feature type: %d !", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 936, 3);
    v12 = 3;
LABEL_42:
    v25 = 255;
    *v23 = -1;
LABEL_43:
    syslog(4, "OpeniPodFeatureFile(feature = %d, options = 0x%x, handle = %u) == %d\n", v13, v11, v25, v12);
    return;
  }

  if (v21 >= 0x11)
  {
    __break(0x5512u);
    goto LABEL_267;
  }

  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v85 = v22;
      v86 = v11;
      v90.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v90.tm_mon = v26;
      *&v90.tm_isdst = v26;
      *&v90.tm_sec = v26;
      v89 = time(0);
      localtime_r(&v89, &v90);
      v27 = sub_1000CEA7C();
      memset(&v92, 0, sizeof(v92));
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v28;
      *&__str[16] = v28;
      if (!v27)
      {
LABEL_262:
        __break(0x5518u);
        goto LABEL_263;
      }

      if ((v27 & 7) != 0)
      {
        goto LABEL_263;
      }

      (*(*v27 + 72))(v27, &v92);
      sub_1000CB844(&v92);
      if (v90.tm_year >= 0xFFFFF894 || v90.tm_mon == -1)
      {
        goto LABEL_264;
      }

      snprintf(__str, 0x20uLL, "%04d-%02d-%02d %02d;%02d;%02d.xml", v90.tm_year + 1900, v90.tm_mon + 1, v90.tm_mday, v90.tm_hour, v90.tm_min, v90.tm_sec);
      v29 = (v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v92.__r_.__value_.__r.__words[2]) : v92.__r_.__value_.__l.__size_;
      memset(__p, 170, sizeof(__p));
      if (v29 == -1)
      {
        goto LABEL_264;
      }

      sub_1000B2A20(__p, v29 + 1);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      if (v29)
      {
        if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v92;
        }

        else
        {
          v31 = v92.__r_.__value_.__r.__words[0];
        }

        memmove(v30, v31, v29);
      }

      if (__CFADD__(v30, v29))
      {
        goto LABEL_261;
      }

      v32 = v30 + v29;
      *(v30 + v29) = 47;
      if ((v30 + v29) == -1)
      {
        goto LABEL_261;
      }

      v32[1] = 0;
      if (v32 == -2)
      {
        goto LABEL_261;
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v33 = HIBYTE(__p[2]);
      }

      else
      {
        v33 = __p[1];
      }

      v34 = strlen(__str);
      memset(&v91, 170, sizeof(v91));
      if (__CFADD__(v33, v34))
      {
        goto LABEL_264;
      }

      v35 = v34;
      sub_1000B2A20(&v91, v33 + v34);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v91;
      }

      else
      {
        v36 = v91.__r_.__value_.__r.__words[0];
      }

      if (v33)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        memmove(v36, v37, v33);
      }

      if (__CFADD__(v36, v33))
      {
        goto LABEL_261;
      }

      v38 = v36 + v33;
      if (v35)
      {
        memmove(v38, __str, v35);
      }

      if (__CFADD__(v38, v35))
      {
        goto LABEL_261;
      }

      if (!v36)
      {
        goto LABEL_263;
      }

      v38[v35] = 0;
      if (&v38[v35] != -1)
      {
        v39 = (a1 + v20 + 1240);
        std::string::operator=(v39, &v91);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(a1 + v20 + 1263) < 0)
        {
          v39 = v39->__r_.__value_.__r.__words[0];
        }

        v40 = fopen(v39, "w+");
        *(v24 + 1208) = v40;
        if (v40)
        {
          if ((v86 & 2) != 0)
          {
            *(v85 + 8) = v89;
          }

          if (a4 < 6 || (v86 & 1) == 0)
          {
            *(v85 + 17) = 0;
LABEL_198:
            operator new();
          }

          *(v85 + 17) = a4 - 5;
          if (a3 <= 0xFFFFFFFFFFFFFFFALL)
          {
            memcpy((v85 + 18), a3 + 5, a4 - 5);
            goto LABEL_198;
          }

          goto LABEL_261;
        }

        v12 = 3;
        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        v68 = a5;
        goto LABEL_202;
      }

LABEL_261:
      __break(0x5513u);
      goto LABEL_262;
    }

    sub_1000DDEEC(0, 4, "%s:%d CIapLingoStorage::OpeniPodFeatureFile invalid feature type: %d !", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 936, v13);
LABEL_250:
    if (*(a1 + v20 + 1232))
    {
      EraseSigningContext();
      *(a1 + v20 + 1232) = 0;
    }

    v82 = *(v24 + 1208);
    if (v82)
    {
      fclose(v82);
      *(v24 + 1208) = 0;
    }

    v83 = *(a1 + v20 + 1216);
    if (!v83)
    {
      goto LABEL_257;
    }

    if ((v83 & 7) == 0)
    {
      (*(*v83 + 8))(v83);
      *(a1 + v20 + 1216) = 0;
LABEL_257:
      v23 = a5;
      goto LABEL_42;
    }

LABEL_263:
    __break(0x5516u);
    goto LABEL_264;
  }

  if (a4 != 1)
  {
    goto LABEL_250;
  }

  v85 = v22;
  sub_1000B0AE4();
  if (byte_10012C3EF >= 0)
  {
    v41 = byte_10012C3EF;
  }

  else
  {
    v41 = qword_10012C3E0;
  }

  memset(&v90, 170, 24);
  if (v41 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_264;
  }

  sub_1000B2A20(&v90, v41 + 5);
  if (v90.tm_year >= 0)
  {
    v42 = &v90;
  }

  else
  {
    v42 = *&v90.tm_sec;
  }

  if (v41)
  {
    if (byte_10012C3EF >= 0)
    {
      v43 = &qword_10012C3D8;
    }

    else
    {
      v43 = qword_10012C3D8;
    }

    memmove(v42, v43, v41);
  }

  if (__CFADD__(v42, v41))
  {
    goto LABEL_261;
  }

  v44 = v42 + v41;
  v44[4] = 115;
  *v44 = 1734431791;
  if (v42 + v41 > 0xFFFFFFFFFFFFFFFALL)
  {
    goto LABEL_261;
  }

  v44[5] = 0;
  if (v44 == -6)
  {
    goto LABEL_261;
  }

  memset(__str, 170, 24);
  sub_1000CB844(&v90);
  v45 = sub_100067278();
  snprintf(__str, 0x18uLL, "%lu.plist", v45);
  if (v90.tm_year >= 0)
  {
    tm_year_high = HIBYTE(v90.tm_year);
  }

  else
  {
    tm_year_high = *&v90.tm_hour;
  }

  memset(&v91, 170, sizeof(v91));
  if (tm_year_high == -1)
  {
    goto LABEL_264;
  }

  sub_1000B2A20(&v91, tm_year_high + 1);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v91;
  }

  else
  {
    v47 = v91.__r_.__value_.__r.__words[0];
  }

  if (tm_year_high)
  {
    if (v90.tm_year >= 0)
    {
      v48 = &v90;
    }

    else
    {
      v48 = *&v90.tm_sec;
    }

    memmove(v47, v48, tm_year_high);
  }

  if (__CFADD__(v47, tm_year_high))
  {
    goto LABEL_261;
  }

  v49 = v47 + tm_year_high;
  v47->__r_.__value_.__s.__data_[tm_year_high] = 47;
  if ((v47 + tm_year_high) == -1)
  {
    goto LABEL_261;
  }

  v86 = v11;
  v49[1] = 0;
  if (v49 == -2)
  {
    goto LABEL_261;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  v51 = strlen(__str);
  memset(&v92, 170, sizeof(v92));
  if (__CFADD__(size, v51))
  {
    goto LABEL_264;
  }

  v52 = v51;
  sub_1000B2A20(&v92, size + v51);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = &v92;
  }

  else
  {
    v53 = v92.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v91;
    }

    else
    {
      v54 = v91.__r_.__value_.__r.__words[0];
    }

    memmove(v53, v54, size);
  }

  if (__CFADD__(v53, size))
  {
    goto LABEL_261;
  }

  v55 = v53 + size;
  if (v52)
  {
    memmove(v55, __str, v52);
  }

  if (__CFADD__(v55, v52))
  {
    goto LABEL_261;
  }

  if (!v53)
  {
    goto LABEL_263;
  }

  v55[v52] = 0;
  if (&v55[v52] == -1)
  {
    goto LABEL_261;
  }

  v56 = (a1 + v20 + 1240);
  std::string::operator=(v56, &v92);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (sub_1000CB91C((a1 + v20 + 1240)))
  {
    while (1)
    {
      v57 = v45 + 1;
      if (v45 == -1)
      {
        goto LABEL_264;
      }

      snprintf(__str, 0x18uLL, "%lu.plist", v45 + 1);
      v58 = v90.tm_year >= 0 ? HIBYTE(v90.tm_year) : *&v90.tm_hour;
      memset(&v91, 170, sizeof(v91));
      if (v58 == -1)
      {
        goto LABEL_264;
      }

      sub_1000B2A20(&v91, v58 + 1);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v91;
      }

      else
      {
        v59 = v91.__r_.__value_.__r.__words[0];
      }

      if (v58)
      {
        if (v90.tm_year >= 0)
        {
          v60 = &v90;
        }

        else
        {
          v60 = *&v90.tm_sec;
        }

        memmove(v59, v60, v58);
      }

      if (__CFADD__(v59, v58))
      {
        goto LABEL_261;
      }

      v61 = v59 + v58;
      v59->__r_.__value_.__s.__data_[v58] = 47;
      if ((v59 + v58) == -1)
      {
        goto LABEL_261;
      }

      v61[1] = 0;
      if (v61 == -2)
      {
        goto LABEL_261;
      }

      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = v91.__r_.__value_.__l.__size_;
      }

      v63 = strlen(__str);
      memset(&v92, 170, sizeof(v92));
      if (__CFADD__(v62, v63))
      {
        goto LABEL_264;
      }

      v64 = v63;
      sub_1000B2A20(&v92, v62 + v63);
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v92;
      }

      else
      {
        v65 = v92.__r_.__value_.__r.__words[0];
      }

      if (v62)
      {
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v91;
        }

        else
        {
          v66 = v91.__r_.__value_.__r.__words[0];
        }

        memmove(v65, v66, v62);
      }

      if (__CFADD__(v65, v62))
      {
        goto LABEL_261;
      }

      v67 = v65 + v62;
      if (v64)
      {
        memmove(v67, __str, v64);
      }

      if (__CFADD__(v67, v64))
      {
        goto LABEL_261;
      }

      if (!v65)
      {
        goto LABEL_263;
      }

      v67[v64] = 0;
      if (&v67[v64] == -1)
      {
        goto LABEL_261;
      }

      std::string::operator=((a1 + v20 + 1240), &v92);
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      ++v45;
      if (!sub_1000CB91C((a1 + v20 + 1240)))
      {
        goto LABEL_204;
      }
    }
  }

  v57 = v45;
LABEL_204:
  if (*(a1 + v20 + 1263) < 0)
  {
    v56 = v56->__r_.__value_.__r.__words[0];
  }

  v68 = a5;
  v70 = fopen(v56, "w+");
  *(v24 + 1208) = v70;
  if (v70 && (inited = InitSigningContext(), (*(a1 + v20 + 1232) = inited) != 0))
  {
    snprintf(__str, 0x18uLL, "%lu.p7", v57);
    if (v90.tm_year >= 0)
    {
      v72 = HIBYTE(v90.tm_year);
    }

    else
    {
      v72 = *&v90.tm_hour;
    }

    memset(&v91, 170, sizeof(v91));
    if (v72 == -1)
    {
      goto LABEL_264;
    }

    sub_1000B2A20(&v91, v72 + 1);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v91;
    }

    else
    {
      v73 = v91.__r_.__value_.__r.__words[0];
    }

    if (v72)
    {
      if (v90.tm_year >= 0)
      {
        v74 = &v90;
      }

      else
      {
        v74 = *&v90.tm_sec;
      }

      memmove(v73, v74, v72);
    }

    if (__CFADD__(v73, v72))
    {
      goto LABEL_261;
    }

    v75 = v73 + v72;
    v73->__r_.__value_.__s.__data_[v72] = 47;
    if ((v73 + v72) == -1)
    {
      goto LABEL_261;
    }

    v75[1] = 0;
    if (v75 == -2)
    {
      goto LABEL_261;
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v91.__r_.__value_.__l.__size_;
    }

    v77 = strlen(__str);
    memset(&v92, 170, sizeof(v92));
    if (__CFADD__(v76, v77))
    {
      goto LABEL_264;
    }

    v78 = v77;
    sub_1000B2A20(&v92, v76 + v77);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v92;
    }

    else
    {
      v79 = v92.__r_.__value_.__r.__words[0];
    }

    if (v76)
    {
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = &v91;
      }

      else
      {
        v80 = v91.__r_.__value_.__r.__words[0];
      }

      memmove(v79, v80, v76);
    }

    if (__CFADD__(v79, v76))
    {
      goto LABEL_261;
    }

    v81 = v79 + v76;
    if (v78)
    {
      memmove(v81, __str, v78);
    }

    if (__CFADD__(v81, v78))
    {
      goto LABEL_261;
    }

    if (!v79)
    {
      goto LABEL_263;
    }

    v81[v78] = 0;
    if (&v81[v78] == -1)
    {
      goto LABEL_261;
    }

    std::string::operator=((a1 + v20 + 1264), &v92);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    v12 = 0;
    v86 = 16;
  }

  else
  {
    v12 = 3;
  }

  v69 = v85;
  if ((SHIBYTE(v90.tm_year) & 0x80000000) == 0)
  {
    goto LABEL_248;
  }

  operator delete(*&v90.tm_sec);
LABEL_202:
  v69 = v85;
LABEL_248:
  if (v12)
  {
    v11 = v86;
    goto LABEL_250;
  }

  *(a1 + v20 + 1224) = v13;
  *v69 = v86;
  v84 = *(v69 + 16);
  if (v84 != 255)
  {
    v12 = 0;
    *(v69 + 16) = v84 + 1;
    v25 = *v68;
    v11 = v86;
    goto LABEL_43;
  }

LABEL_267:
  __break(0x5507u);
}

uint64_t sub_1000B1BA0(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    result = sub_100065198(0);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_15;
    }

    result = sub_100092814(result, 12);
    if (!result)
    {
      return 2;
    }
  }

  if ((result & 7) == 0)
  {
    result = sub_10005BD04(result);
    if (result)
    {
      v5 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 0xCu);
        result = sub_1000653EC(12, v5);
        if (!result)
        {
          sub_1000DDEEC(0, 4, "%s:%d StorageLingo object(%hhx) or handle(%hhx) is NULL! Cannot TransmitPacketDelaySleep\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1373, 0, v5);
          v7 = 2;
          goto LABEL_12;
        }

        if ((result & 7) == 0)
        {
          sub_10005B7F8(v5, 0xCu, 1);
          v6 = sub_100067278();
          sub_10005B7AC(v5, 0xCu, v6);
          v7 = sub_1000B6DB4(v5, a2, a3, 1u);
LABEL_12:
          sub_10005BB6C(v5, 0xCu);
          return v7;
        }
      }
    }
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000B1CC8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

void sub_1000B1CDC(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_53;
  }

  v27 = 0;
  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 != 32)
      {
        return;
      }

      v25 = 0;
      v26 = 0;
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      v24[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_1000DDCB4(v24, 1u);
      v24[0] = off_100113858;
      sub_1000DDDDC(v24, &v25);
      if (*(a1 + 1176) == a3)
      {
        sub_10006770C(a1, &v27);
        v27 = 0;
        v9 = *(a1 + 8);
        if (!v9 || (v9 & 7) != 0)
        {
          goto LABEL_53;
        }

        if (sub_10005B890(v9, 0xCu))
        {
          v10 = 1000 * v25;
          if ((v25 * 1000) >> 64 != (1000 * v25) >> 63)
          {
LABEL_54:
            __break(0x550Cu);
            goto LABEL_55;
          }

          v11 = v10 + v26 / 1000000;
          if (__OFADD__(v10, v26 / 1000000))
          {
LABEL_55:
            __break(0x5500u);
            goto LABEL_56;
          }

          v12 = *(a1 + 8);
          if (!v12 || (v12 & 7) != 0)
          {
LABEL_53:
            __break(0x5516u);
            goto LABEL_54;
          }

          v13 = sub_10005B844(v12, 0xCu);
          if (__OFSUB__(v11, v13))
          {
LABEL_56:
            __break(0x5515u);
            return;
          }

          if (v11 - v13 >= 0x1F4)
          {
            v14 = *(a1 + 8);
            if (!v14)
            {
              goto LABEL_53;
            }

            if ((v14 & 7) != 0)
            {
              goto LABEL_53;
            }

            sub_10005B7F8(v14, 0xCu, 0);
            v15 = *(a1 + 8);
            if (!v15 || (v15 & 7) != 0)
            {
              goto LABEL_53;
            }

            sub_10005B7AC(v15, 0xCu, 0);
          }
        }
      }

      v24[0] = off_100113858;
      sub_1000DDCF4(v24);
      return;
    }

    v18 = *(a1 + 8);
    if (!v18)
    {
      goto LABEL_53;
    }

    if ((v18 & 7) != 0)
    {
      goto LABEL_53;
    }

    sub_10005B7F8(v18, 0xCu, 0);
    v19 = *(a1 + 8);
    if (!v19 || (v19 & 7) != 0)
    {
      goto LABEL_53;
    }

    sub_10005B7AC(v19, 0xCu, 0);
    v20 = 0;
    v21 = a1 + 1128;
    while (1)
    {
      if (*(v21 + 80))
      {
        sub_1000B0D80(a1, a4, v20);
      }

      v21 += 80;
      if (v21 >= 0xFFFFFFFFFFFFFFB0)
      {
        break;
      }

      if (v20++ >= 0xF)
      {
        v23 = *(a1 + 1192);
        if (v23 == a4)
        {
          *(a1 + 1192) = 0;
          do
          {
            LOWORD(v24[0]) = -1;
            v25 = 0;
          }

          while (!sub_10006733C(a1, -1, v24, &v25, 0xFFFFu));
        }

        else
        {
          sub_1000DDEEC(0, 4, "%s:%d devPort(%hhx) != m_perPortInfo(%hhx)\n", "NotifyEvent", 474, a4, v23);
        }

        return;
      }
    }

LABEL_52:
    __break(0x5513u);
    goto LABEL_53;
  }

  if (a2 == 1)
  {
    if (a3 > 8 || ((1 << a3) & 0x1A0) == 0)
    {
      return;
    }

    v16 = 0;
    for (i = (a1 + 1208); ; i += 10)
    {
      if (*i)
      {
        sub_1000DDEEC(0, 4, "%s:%d NotifyEvent: handle: %03d, pCurFile: %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 530, v16, i);
      }

      if (i > 0xFFFFFFFFFFFFFFAFLL)
      {
        break;
      }

      if (++v16 == 16)
      {
        return;
      }
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    *(a1 + 1192) = a4;
    v7 = *(a1 + 8);
    if (v7)
    {
      if ((v7 & 7) == 0)
      {
        sub_10005B7F8(v7, 0xCu, 0);
        v8 = *(a1 + 8);
        if (v8)
        {
          if ((v8 & 7) == 0)
          {
            sub_10005B7AC(v8, 0xCu, 0);
            return;
          }
        }
      }
    }

    goto LABEL_53;
  }
}

uint64_t sub_1000B2034(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_113;
  }

  if (a3 >= 0x11)
  {
    goto LABEL_118;
  }

  if (__CFADD__(a1 + 1208, 80 * a3))
  {
    goto LABEL_114;
  }

  v3 = a1 + 1208 + 80 * a3;
  v4 = *(v3 + 16);
  if (v4 >= 4)
  {
    goto LABEL_115;
  }

  if (__CFADD__(a1 + 2488, 152 * v4))
  {
LABEL_114:
    __break(0x5513u);
    goto LABEL_115;
  }

  v5 = a1 + 2488 + 152 * v4;
  v6 = *v5;
  syslog(4, "CloseiPodFeatureFile(handle = %u)\n", a3);
  if (!*v3)
  {
    goto LABEL_112;
  }

  v7 = *(v3 + 16);
  if (v7 > 3)
  {
LABEL_115:
    __break(0x550Au);
LABEL_116:
    __break(0x5500u);
    goto LABEL_117;
  }

  if (v7 == 3)
  {
LABEL_112:
    __break(0x5518u);
    goto LABEL_113;
  }

  fseek(*v3, 0, 2);
  if ((v6 & 2) == 0)
  {
    goto LABEL_56;
  }

  memset(v49, 170, sizeof(v49));
  v8 = sub_10004B1AC();
  if (!v8)
  {
    goto LABEL_113;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_113;
  }

  (*(*v8 + 104))(v49);
  memset(__p, 170, sizeof(__p));
  v9 = sub_10004B1AC();
  if (!v9)
  {
    goto LABEL_113;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_113;
  }

  (*(*v9 + 96))(__p);
  v47.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v47.tm_mon = v10;
  *&v47.tm_isdst = v10;
  *&v47.tm_sec = v10;
  localtime_r((v5 + 8), &v47);
  v46.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v46.tm_mon = v11;
  *&v46.tm_isdst = v11;
  *&v46.tm_sec = v11;
  v45 = time(0);
  localtime_r(&v45, &v46);
  v44 = 0;
  v43 = 0;
  v42 = 0;
  memset(&v41, 0, sizeof(v41));
  v12.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v12.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *(v56 + 15) = v12;
  v55 = v12;
  v56[0] = v12;
  v53 = v12;
  v54 = v12;
  v51 = v12;
  v52 = v12;
  *&__str.st_blksize = v12;
  *__str.st_qspare = v12;
  __str.st_birthtimespec = v12;
  *&__str.st_size = v12;
  __str.st_mtimespec = v12;
  __str.st_ctimespec = v12;
  *&__str.st_uid = v12;
  __str.st_atimespec = v12;
  *&__str.st_dev = v12;
  v13 = sub_10004B1AC();
  if (!v13 || (v13 & 7) != 0)
  {
    goto LABEL_113;
  }

  (*(*v13 + 608))(v13, &v44, &v43 + 1);
  v14 = SHIBYTE(v43) + v44;
  if (v14 != (SHIBYTE(v43) + v44))
  {
    goto LABEL_117;
  }

  if (v14 < 0)
  {
    if (!((v14 + 0x7FFF) >> 16))
    {
      v14 = -v14;
      v15 = 45;
      goto LABEL_22;
    }

LABEL_117:
    __break(0x5507u);
LABEL_118:
    __break(0x5512u);
  }

  v15 = 43;
LABEL_22:
  if (__OFADD__(v47.tm_year, 1900) || __OFADD__(v47.tm_mon, 1) || __OFADD__(v46.tm_year, 1900) || __OFADD__(v46.tm_mon, 1))
  {
    goto LABEL_116;
  }

  snprintf(&__str, 0xFFuLL, "<ipodInfo><openTime>%04d-%02d-%02dT%02d:%02d:%02d%c%02d:%02d</openTime><closeTime>%04d-%02d-%02dT%02d:%02d:%02d%c%02d:%02d</closeTime>", v47.tm_year + 1900, v47.tm_mon + 1, v47.tm_mday, v47.tm_hour, v47.tm_min, v47.tm_sec, v15, v14 / 0x3Cu, v14 % 0x3Cu, v46.tm_year + 1900, v46.tm_mon + 1, v46.tm_mday, v46.tm_hour, v46.tm_min, v46.tm_sec, v15, v14 / 0x3Cu, v14 % 0x3Cu);
  std::string::assign(&v41, &__str);
  v16 = sub_10004B1AC();
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_113;
  }

  (*(*v16 + 160))(v16, &v43, &v42 + 1, &v42);
  v17 = v49;
  if (SHIBYTE(v49[2]) < 0)
  {
    v17 = v49[0];
  }

  v18 = __p;
  if (SHIBYTE(__p[2]) < 0)
  {
    v18 = __p[0];
  }

  snprintf(&__str, 0xFFuLL, "<model>%s</model><softwareVersion>%d.%d.%d</softwareVersion><serialNumber>%s</serialNumber></ipodInfo>", v17, v43, HIBYTE(v42), v42, v18);
  std::string::append(&v41, &__str);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v41.__r_.__value_.__l.__size_;
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v41;
  }

  else
  {
    v20 = v41.__r_.__value_.__r.__words[0];
  }

  if (fwrite(v20, 1uLL, size, *v3) != size)
  {
    sub_1000DDEEC(0, 4, "%s:%d writeLen != xmlBuffLen\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1111);
  }

  if ((v6 & 8) != 0)
  {
    v21 = *(v3 + 8);
    if (!v21)
    {
      goto LABEL_112;
    }

    if ((v21 & 7) != 0)
    {
      goto LABEL_113;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v41;
    }

    else
    {
      v22 = v41.__r_.__value_.__r.__words[0];
    }

    if (sub_1000DC440(v21, v22, size))
    {
      sub_1000DDEEC(0, 4, "%s:%d 0 != xmlStatus\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1123);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v23 = *(v3 + 24);
    if ((UpdateSigningContext() & 1) == 0)
    {
      sub_1000DDEEC(0, 4, "%s:%d !secStatus\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1132);
    }
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
  {
LABEL_56:
    if ((v6 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_57;
  }

  operator delete(v49[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_57:
  v24 = *(v5 + 17);
  if (!*(v5 + 17))
  {
    sub_1000DDEEC(0, 4, "%s:%d dataLen == 0\n");
    goto LABEL_70;
  }

  if (fwrite((v5 + 18), 1uLL, *(v5 + 17), *v3) != v24)
  {
    sub_1000DDEEC(0, 4, "%s:%d dataLen != writeLen\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1147);
  }

  if ((v6 & 8) == 0)
  {
    goto LABEL_65;
  }

  v25 = *(v3 + 8);
  if (!v25)
  {
    goto LABEL_112;
  }

  if ((v25 & 7) != 0)
  {
    goto LABEL_113;
  }

  if (sub_1000DC440(v25, (v5 + 18), v24))
  {
    sub_1000DDEEC(0, 4, "%s:%d 0 != xmlStatus\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1159);
  }

LABEL_65:
  if ((v6 & 0x10) != 0)
  {
    v26 = *(v3 + 24);
    if ((UpdateSigningContext() & 1) == 0)
    {
      sub_1000DDEEC(0, 4, "%s:%d !secStatus\n");
    }
  }

LABEL_70:
  fclose(*v3);
  *v3 = 0;
  v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__str.st_blksize = v27;
  *__str.st_qspare = v27;
  __str.st_birthtimespec = v27;
  *&__str.st_size = v27;
  __str.st_mtimespec = v27;
  __str.st_ctimespec = v27;
  *&__str.st_uid = v27;
  __str.st_atimespec = v27;
  *&__str.st_dev = v27;
  v28 = (v3 + 32);
  v29 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v29 = *v28;
  }

  if (stat(v29, &__str))
  {
    sub_1000DDEEC(0, 4, "%s:%d IPodFileError_NoError != status\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1195);
    v30 = 1;
  }

  else
  {
    v30 = __str.st_size == 0;
  }

  if ((v6 & 0x18) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 8) != 0)
  {
    memset(&v47, 170, 24);
    std::string::basic_string(&v47, (v3 + 32));
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        if ((v31 & 7) == 0)
        {
          sub_1000DC47C(v31);
        }

        goto LABEL_113;
      }

      goto LABEL_112;
    }

    v32 = *(v3 + 8);
    if (!v32)
    {
      sub_1000DDEEC(0, 4, "%s:%d NULL == pOpenFile->pXmlSig\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1226);
LABEL_85:
      if (SHIBYTE(v47.tm_year) < 0)
      {
        operator delete(*&v47.tm_sec);
      }

      goto LABEL_87;
    }

    if ((v32 & 7) == 0)
    {
      (*(*v32 + 8))(v32);
      *(v3 + 8) = 0;
      goto LABEL_85;
    }

LABEL_113:
    __break(0x5516u);
    goto LABEL_114;
  }

LABEL_87:
  if ((v6 & 0x10) != 0)
  {
    if (!v30)
    {
      *&v47.tm_sec = 0;
      *&v46.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      v33 = *(v3 + 24);
      if (FinalizeSigningContext())
      {
        v34 = (v3 + 56);
        if (*(v3 + 79) < 0)
        {
          v34 = *v34;
        }

        v35 = fopen(v34, "w+");
        fwrite(*&v47.tm_sec, 1uLL, *&v46.tm_sec, v35);
        fclose(v35);
        free(*&v47.tm_sec);
      }

      else
      {
        sub_1000DDEEC(0, 4, "%s:%d !secStatus\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1247);
      }
    }

    if (!*(v3 + 24))
    {
      sub_1000DDEEC(0, 4, "%s:%d NULL == pOpenFile->fData\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoStorage.cpp", 1260);
      if (!v30)
      {
        goto LABEL_102;
      }

      goto LABEL_97;
    }

    EraseSigningContext();
    *(v3 + 24) = 0;
  }

LABEL_96:
  if (!v30)
  {
    goto LABEL_102;
  }

LABEL_97:
  v36 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v36 = *v28;
  }

  syslog(4, "Deleting zero-length feature file %s\n", v36);
  if (*(v3 + 55) < 0)
  {
    v28 = *v28;
  }

  unlink(v28);
LABEL_102:
  *v5 = 0;
  v37 = *(v5 + 16) - 1;
  if (v37 > 0xFF)
  {
    goto LABEL_117;
  }

  *(v5 + 16) = v37;
  if (v4 == 2)
  {
    v38 = sub_1000CEA7C();
    if (!v38)
    {
      goto LABEL_113;
    }

    if ((v38 & 7) != 0)
    {
      goto LABEL_113;
    }

    (*(*v38 + 184))(v38);
    v39 = sub_10004B1AC();
    if (!v39 || (v39 & 7) != 0)
    {
      goto LABEL_113;
    }

    (*(*v39 + 720))(v39);
  }

  return 0;
}

BOOL sub_1000B2928(_BOOL8 result)
{
  if (result)
  {
    v1 = result & 7;
    if ((result & 7) == 0)
    {
      v2 = 0;
      v3 = 1;
      while (v1 <= ~(result + 2488))
      {
        if (!*(result + 2504 + v1))
        {
          v3 = v2 < 2;
          v1 += 152;
          if (++v2 != 3)
          {
            continue;
          }
        }

        return v3;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B2984(uint64_t result, int a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
    goto LABEL_8;
  }

  v2 = result;
  result = sub_100068B4C(9);
  *v2 = 12;
  if (v2 == -1)
  {
LABEL_8:
    __break(0x5500u);
    return result;
  }

  v3 = 0x100000000000000;
  if (result)
  {
    v3 = 0x300000000000000;
  }

  *(v2 + 1) = v3;
  return 0;
}

uint64_t sub_1000B29E8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000B29FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B2A20(uint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_10:
    sub_1000250EC();
  }

  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_10;
  }

  if (a2 > 0x16)
  {
    if (((a2 + 8) & 0x7FFFFFFFFFFFFFF8) != 0)
    {
      operator new();
    }

    __break(0x5515u);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 23) = a2;
  }

  return result;
}

uint64_t sub_1000B2AD0(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (sub_100064F7C(result, a2, 11), *v2 = off_100116930, v2[149] = 0, (result = sub_100065198(v4)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 11, 8236, a2);
    return v2;
  }

  return result;
}

uint64_t sub_1000B2B54(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B2AD0(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_1000B2B68(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (*a1 = off_100116930, *(a1 + 1192) = 0, (v2 = sub_100065198(a1)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 11, 0, *(a1 + 8));

    sub_10006522C(a1);
  }
}

void sub_1000B2BEC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000B2B68(a1);
  }
}

uint64_t sub_1000B2C00(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B2B68(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B2C48(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_313;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_313;
  }

  v4 = sub_10004B1AC();
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_313;
  }

  v5 = (*(*v4 + 760))(v4);
  if (!v5 || !*(a1 + 8))
  {
    return 89;
  }

  v6 = sub_100065198(v5);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_313;
  }

  if (!sub_100094BFC(v6, *(a1 + 8)))
  {
    return 89;
  }

  v7 = *(a1 + 8);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_313;
  }

  v8 = sub_10005ACA0(v7);
  if (v8)
  {
    return 89;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_313;
  }

  v11 = *(a2 + 126);
  if (v11 > 0x3D)
  {
    goto LABEL_285;
  }

  v12 = *(a2 + 24);
  v13 = *(a2 + 128);
  v14 = *(a2 + 8);
  v15 = sub_100065198(v8);
  if (!v15 || (v15 & 7) != 0)
  {
    goto LABEL_313;
  }

  v16 = sub_100058EBC(v15, v14);
  switch(v11)
  {
    case 1u:
      if ((v16 + 8) >= 0x10)
      {
        goto LABEL_317;
      }

      if (v16 != 6)
      {
        goto LABEL_285;
      }

      if (!v14 || (v14 & 7) != 0)
      {
        goto LABEL_313;
      }

      v63 = (*(*v14 + 208))(v14);
      if (v13 != 1 || v63 == 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12 == 1)
      {
        v120 = sub_10002BB1C();
        if (v120 && (v120 & 7) == 0)
        {
          v33 = *(*v120 + 112);
          goto LABEL_264;
        }

        goto LABEL_313;
      }

      if (!*v12)
      {
        v64 = sub_10002BB1C();
        if (v64 && (v64 & 7) == 0)
        {
          v33 = *(*v64 + 112);
          goto LABEL_264;
        }

        goto LABEL_313;
      }

LABEL_285:
      if (*(a2 + 126) == v11)
      {
        v112 = *(a2 + 8);
        v113 = *(a2 + 68);
        v123 = 0;
        *&v122[1] = 0;
        v121 = 0;
        sub_1000B7854(a2);
      }

      return sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
    case 2u:
      if ((v16 + 8) > 0xF)
      {
        goto LABEL_317;
      }

      if (v13 != 1 || v16 != 6)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12 == 1)
      {
        v119 = sub_10002BB1C();
        if (v119 && (v119 & 7) == 0)
        {
          v33 = *(*v119 + 120);
          goto LABEL_264;
        }
      }

      else
      {
        if (*v12)
        {
          goto LABEL_285;
        }

        v65 = sub_10002BB1C();
        if (v65 && (v65 & 7) == 0)
        {
          v33 = *(*v65 + 120);
          goto LABEL_264;
        }
      }

      goto LABEL_313;
    case 5u:
      if ((v16 + 8) > 0xF)
      {
        goto LABEL_317;
      }

      if (v13 != 1 || v16 != 6)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12 != 1)
      {
        if (!*v12)
        {
          v55 = sub_10002BB1C();
          if (v55 && (v55 & 7) == 0)
          {
            v33 = *(*v55 + 128);
LABEL_264:
            v33();
            goto LABEL_285;
          }

          goto LABEL_313;
        }

        goto LABEL_285;
      }

      v118 = sub_10002BB1C();
      if (v118 && (v118 & 7) == 0)
      {
        v33 = *(*v118 + 128);
        goto LABEL_264;
      }

      goto LABEL_313;
    case 6u:
      if (v13 != 2)
      {
        goto LABEL_285;
      }

      if (v12 == -1)
      {
        goto LABEL_314;
      }

      if (v12[1] == 1)
      {
        v115 = sub_10002BB1C();
        if (v115 && (v115 & 7) == 0 && v12)
        {
          v116 = *v12;
          v33 = *(*v115 + 136);
          goto LABEL_264;
        }
      }

      else
      {
        if (v12[1])
        {
          goto LABEL_285;
        }

        v77 = sub_10002BB1C();
        if (v77 && (v77 & 7) == 0 && v12)
        {
          v78 = *v12;
          v33 = *(*v77 + 136);
          goto LABEL_264;
        }
      }

      goto LABEL_313;
    case 7u:
      if ((v16 + 8) > 0xF)
      {
        goto LABEL_317;
      }

      if (v13 || v16 != 6)
      {
        goto LABEL_285;
      }

      v79 = sub_10002BB1C();
      if (!v79 || (v79 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v79 + 144))(v79);
      goto LABEL_285;
    case 8u:
      if (v13)
      {
        goto LABEL_285;
      }

      memset(v124, 170, sizeof(v124));
      v56 = sub_10004B1AC();
      if (!v56 || (v56 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v56 + 128))(v124);
      v57 = HIBYTE(v124[2]);
      if (SHIBYTE(v124[2]) >= 0)
      {
        v58 = v124;
      }

      else
      {
        v58 = v124[0];
      }

      if (SHIBYTE(v124[2]) < 0)
      {
        v57 = v124[1];
      }

      v59 = __CFADD__(v57, 1);
      v60 = (v57 + 1);
      if (v59)
      {
        goto LABEL_315;
      }

      if (v60 >> 16)
      {
        goto LABEL_316;
      }

      sub_1000B7DB4(a2, *(a2 + 8), 0, 11, 9, *(a2 + 68), v58, v60);
      if (SHIBYTE(v124[2]) < 0)
      {
        goto LABEL_284;
      }

      goto LABEL_285;
    case 0xAu:
      if (v13 != 8)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v66 = *v12;
      if (v12 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_315;
      }

      v67 = *(v12 + 1);
      v68 = sub_10002BB1C();
      if (!v68 || (v68 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v68 + 152))(v68, bswap32(v66), bswap32(v67));
      goto LABEL_285;
    case 0xBu:
      if (v13)
      {
        goto LABEL_285;
      }

      v69 = sub_10002BB1C();
      if (!v69 || (v69 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v69 + 160))(v69);
      goto LABEL_285;
    case 0xCu:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12 == 1)
      {
        v117 = sub_10002BB1C();
        if (v117 && (v117 & 7) == 0)
        {
          v33 = *(*v117 + 168);
          goto LABEL_264;
        }
      }

      else
      {
        if (*v12)
        {
          goto LABEL_285;
        }

        v85 = sub_10002BB1C();
        if (v85 && (v85 & 7) == 0)
        {
          v33 = *(*v85 + 168);
          goto LABEL_264;
        }
      }

      goto LABEL_313;
    case 0xDu:
      if (v13)
      {
        goto LABEL_285;
      }

      v84 = sub_10002BB1C();
      if (!v84 || (v84 & 7) != 0)
      {
        goto LABEL_313;
      }

      LODWORD(v124[0]) = bswap32((*(*v84 + 184))(v84));
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 14;
      goto LABEL_217;
    case 0xFu:
      if (v13 != 2)
      {
        goto LABEL_285;
      }

      if (v12 == -1)
      {
        goto LABEL_315;
      }

      if (!*(v12 + 1))
      {
        goto LABEL_285;
      }

      __break(0x550Du);
LABEL_78:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v43 = *v12;
      if (!*v12)
      {
        goto LABEL_285;
      }

      LOBYTE(v44) = 0;
      while (1)
      {
        v45 = sub_10002BB1C();
        if (!v45)
        {
          goto LABEL_313;
        }

        if ((v45 & 7) != 0)
        {
          goto LABEL_313;
        }

        (*(*v45 + 136))(v45, 76, 1);
        v46 = sub_10002BB1C();
        if (!v46 || (v46 & 7) != 0)
        {
          goto LABEL_313;
        }

        (*(*v46 + 136))(v46, 76, 0);
        v44 = (v44 + 1);
        if (v44 >= v43)
        {
          goto LABEL_285;
        }
      }

    case 0x12u:
      if (v13)
      {
        goto LABEL_285;
      }

      v30 = sub_10002BB1C();
      if (!v30 || (v30 & 7) != 0)
      {
        goto LABEL_313;
      }

      LODWORD(v124[0]) = bswap32((*(*v30 + 192))(v30));
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 19;
      goto LABEL_217;
    case 0x14u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12)
      {
        goto LABEL_285;
      }

      v70 = sub_10002BB1C();
      if (!v70 || (v70 & 7) != 0)
      {
        goto LABEL_313;
      }

      v71 = (*(*v70 + 200))(v70);
      *(v124 + 1) = -1431655766;
      LOBYTE(v124[0]) = *v12;
      if (&vars0 == 103)
      {
        goto LABEL_315;
      }

      *(v124 + 1) = bswap32(v71);
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 21;
      v72 = 5;
LABEL_243:
      sub_1000B7DB4(v27, v25, 0, 11, v28, v26, v124, v72);
      goto LABEL_285;
    case 0x17u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      if (*v12 == 1)
      {
        v114 = sub_10002BB1C();
        if (v114 && (v114 & 7) == 0)
        {
          v33 = *(*v114 + 232);
          goto LABEL_264;
        }
      }

      else
      {
        if (*v12)
        {
          goto LABEL_285;
        }

        v73 = sub_10002BB1C();
        if (v73 && (v73 & 7) == 0)
        {
          v33 = *(*v73 + 232);
          goto LABEL_264;
        }
      }

      goto LABEL_313;
    case 0x18u:
      if (v13)
      {
        goto LABEL_285;
      }

      v96 = sub_10002BB1C();
      if (!v96 || (v96 & 7) != 0)
      {
        goto LABEL_313;
      }

      LOBYTE(v124[0]) = (*(*v96 + 248))(v96);
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 25;
      goto LABEL_242;
    case 0x1Au:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      v86 = sub_10002BB1C();
      if (!v86 || (v86 & 7) != 0 || !v12)
      {
        goto LABEL_313;
      }

      (*(*v86 + 240))(v86, *v12);
      goto LABEL_285;
    case 0x1Bu:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      v24 = sub_10002BB1C();
      if (!v24 || (v24 & 7) != 0 || !v12)
      {
        goto LABEL_313;
      }

      LODWORD(v124[0]) = bswap32((*(*v24 + 256))(v24, *v12));
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 28;
LABEL_217:
      v72 = 4;
      goto LABEL_243;
    case 0x1Du:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      v48 = sub_10002BB1C();
      if (!v48 || (v48 & 7) != 0 || !v12)
      {
        goto LABEL_313;
      }

      LOBYTE(v124[0]) = (*(*v48 + 264))(v48, *v12);
      v25 = *(a2 + 8);
      v26 = *(a2 + 68);
      v27 = a2;
      v28 = 30;
LABEL_242:
      v72 = 1;
      goto LABEL_243;
    case 0x1Fu:
      if (v13 != 5)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v97 = *v12;
      if (v12 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v98 = 4 * v12[4];
        operator new[]();
      }

      goto LABEL_314;
    case 0x21u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      v29 = sub_10002BB1C();
      if (!v29 || (v29 & 7) != 0 || !v12)
      {
        goto LABEL_313;
      }

      (*(*v29 + 208))(v29, *v12 != 0);
      goto LABEL_285;
    case 0x22u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      v47 = sub_10002BB1C();
      if (!v47 || (v47 & 7) != 0 || !v12)
      {
        goto LABEL_313;
      }

      (*(*v47 + 216))(v47, *v12 != 0);
      goto LABEL_285;
    case 0x23u:
      if (v13)
      {
        goto LABEL_285;
      }

      v34 = sub_10002BB1C();
      if (!v34 || (v34 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v34 + 224))(v34);
      goto LABEL_285;
    case 0x24u:
      if (v13)
      {
        goto LABEL_285;
      }

      v61 = sub_10002BB1C();
      if (!v61)
      {
        goto LABEL_313;
      }

      if ((v61 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v61 + 136))(v61, 89, 1);
      v62 = sub_10002BB1C();
      if (!v62 || (v62 & 7) != 0)
      {
        goto LABEL_313;
      }

      v33 = *(*v62 + 136);
      goto LABEL_264;
    case 0x25u:
      if (v13)
      {
        goto LABEL_285;
      }

      v31 = sub_10002BB1C();
      if (!v31)
      {
        goto LABEL_313;
      }

      if ((v31 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v31 + 136))(v31, 90, 1);
      v32 = sub_10002BB1C();
      if (!v32 || (v32 & 7) != 0)
      {
        goto LABEL_313;
      }

      v33 = *(*v32 + 136);
      goto LABEL_264;
    case 0x26u:
      if (v13)
      {
        goto LABEL_285;
      }

      v103 = sub_10002BB1C();
      if (!v103)
      {
        goto LABEL_313;
      }

      if ((v103 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v103 + 136))(v103, 110, 1);
      v104 = sub_10002BB1C();
      if (!v104 || (v104 & 7) != 0)
      {
        goto LABEL_313;
      }

      v33 = *(*v104 + 136);
      goto LABEL_264;
    case 0x27u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v99 = *v12;
      if (!*v12)
      {
        goto LABEL_285;
      }

      LOBYTE(v100) = 0;
      while (1)
      {
        v101 = sub_10002BB1C();
        if (!v101)
        {
          goto LABEL_313;
        }

        if ((v101 & 7) != 0)
        {
          goto LABEL_313;
        }

        (*(*v101 + 136))(v101, 75, 1);
        v102 = sub_10002BB1C();
        if (!v102 || (v102 & 7) != 0)
        {
          goto LABEL_313;
        }

        (*(*v102 + 136))(v102, 75, 0);
        v100 = (v100 + 1);
        if (v100 >= v99)
        {
          goto LABEL_285;
        }
      }

    case 0x28u:
      goto LABEL_78;
    case 0x29u:
      if (v13 != 4)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v49 = *v12;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v50 = *(v12 + 1);
      v51 = sub_10002BB1C();
      if (!v51 || (v51 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v51 + 368))(v51, bswap32(v49) >> 16, __rev16(v50));
      goto LABEL_285;
    case 0x2Au:
      if (v13 != 4)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v74 = *v12;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v75 = *(v12 + 1);
      v76 = sub_10002BB1C();
      if (!v76 || (v76 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v76 + 376))(v76, bswap32(v74) >> 16, __rev16(v75));
      goto LABEL_285;
    case 0x2Bu:
      if (v13 != 4)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v52 = *v12;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v53 = *(v12 + 1);
      v54 = sub_10002BB1C();
      if (!v54 || (v54 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v54 + 384))(v54, bswap32(v52) >> 16, __rev16(v53));
      goto LABEL_285;
    case 0x2Cu:
      if (v13 != 6)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v108 = *v12;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v109 = *(v12 + 1);
      if ((v12 + 2) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v110 = *(v12 + 2);
      v111 = sub_10002BB1C();
      if (!v111 || (v111 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v111 + 392))(v111, bswap32(v108) >> 16, bswap32(v109) >> 16, __rev16(v110));
      goto LABEL_285;
    case 0x2Du:
      if (v13 != 14)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v35 = *v12;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v36 = *(v12 + 1);
      if ((v12 + 2) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v37 = *(v12 + 2);
      if ((v12 + 4) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v38 = *(v12 + 3);
      if ((v12 + 6) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v39 = bswap32(*(v12 + 4));
      if (HIWORD(v39) > 0xFFu)
      {
        goto LABEL_316;
      }

      if ((v12 + 8) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v40 = bswap32(*(v12 + 5));
      if (HIWORD(v40) > 0xFFu)
      {
        goto LABEL_316;
      }

      if ((v12 + 10) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_314;
      }

      v41 = bswap32(*(v12 + 6));
      if (HIWORD(v41) > 0xFFu)
      {
        goto LABEL_316;
      }

      v42 = sub_10002BB1C();
      if (!v42 || (v42 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v42 + 400))(v42, bswap32(v35) >> 16, bswap32(v36) >> 16, bswap32(v37) >> 16, bswap32(v38) >> 16, BYTE2(v39), BYTE2(v40), BYTE2(v41));
      goto LABEL_285;
    case 0x2Eu:
      v87 = sub_10002BB1C();
      if (!v87 || (v87 & 7) != 0)
      {
        goto LABEL_313;
      }

      v88 = (*(*v87 + 408))(v87);
      if (v88)
      {
        v89 = v88;
      }

      else
      {
        v89 = "";
      }

      v90 = *(a2 + 68);
      v91 = strlen(v89);
      if (v91 == -1)
      {
        goto LABEL_315;
      }

      if ((v91 + 1) >> 16)
      {
        goto LABEL_316;
      }

      v92 = (v91 + 1);
      v93 = a2;
      v94 = *(a2 + 8);
      v95 = 47;
      goto LABEL_274;
    case 0x30u:
      v105 = sub_10002BB1C();
      if (!v105 || (v105 & 7) != 0)
      {
        goto LABEL_313;
      }

      v106 = (*(*v105 + 416))(v105);
      if (v106)
      {
        v89 = v106;
      }

      else
      {
        v89 = "";
      }

      v90 = *(a2 + 68);
      v107 = strlen(v89);
      if (v107 == -1)
      {
        goto LABEL_315;
      }

      if ((v107 + 1) >> 16)
      {
        goto LABEL_316;
      }

      v92 = (v107 + 1);
      v93 = a2;
      v94 = *(a2 + 8);
      v95 = 49;
LABEL_274:
      sub_1000B7DB4(v93, v94, 0, 11, v95, v90, v89, v92);
      goto LABEL_285;
    case 0x38u:
      if (v13 != 1)
      {
        goto LABEL_285;
      }

      if (!v12)
      {
        goto LABEL_313;
      }

      v17 = *v12;
      if (v17 > 2)
      {
        goto LABEL_285;
      }

      LOWORD(v124[0]) = -21846;
      v18 = sub_10002BB1C();
      v20 = (v18 & 7) == 0 && v18 != 0;
      if (v17 == 2)
      {
        if (!v20)
        {
          goto LABEL_313;
        }

        v21 = (*(*v18 + 488))(v18, v124);
        if (!v21)
        {
          goto LABEL_285;
        }
      }

      else
      {
        if (v17 == 1)
        {
          if (v20)
          {
            v21 = (*(*v18 + 480))(v18, v124);
            if ((v21 & 1) == 0)
            {
              goto LABEL_285;
            }

            goto LABEL_34;
          }

LABEL_313:
          __break(0x5516u);
LABEL_314:
          __break(0x5513u);
          goto LABEL_315;
        }

        if (!v20)
        {
          goto LABEL_313;
        }

        v21 = (*(*v18 + 472))(v18, v124);
        if ((v21 & 1) == 0)
        {
          goto LABEL_285;
        }
      }

LABEL_34:
      v22 = *(a2 + 8);
      __chkstk_darwin(v21);
      *v122 = -21846;
      v121 = *v12;
      if (&v121 == -1)
      {
LABEL_315:
        __break(0x5500u);
LABEL_316:
        __break(0x5507u);
LABEL_317:
        __break(0x550Au);
        JUMPOUT(0x1000B4114);
      }

      *v122 = bswap32(LOWORD(v124[0])) >> 16;
      sub_1000B7DB4(a2, v23, 0, 11, 57, *(a2 + 68), &v121, 3u);
      goto LABEL_285;
    case 0x3Cu:
      memset(v124, 170, sizeof(v124));
      v80 = sub_10004B1AC();
      if (!v80 || (v80 & 7) != 0)
      {
        goto LABEL_313;
      }

      (*(*v80 + 120))(v124);
      v81 = HIBYTE(v124[2]);
      v82 = HIBYTE(v124[2]);
      if (SHIBYTE(v124[2]) < 0)
      {
        v81 = v124[1];
      }

      if (!v81)
      {
        goto LABEL_283;
      }

      if (SHIBYTE(v124[2]) >= 0)
      {
        v83 = v124;
      }

      else
      {
        v83 = v124[0];
      }

      if (v81 == -1)
      {
        goto LABEL_315;
      }

      if ((v81 + 1) >> 16)
      {
        goto LABEL_316;
      }

      sub_1000B7DB4(a2, *(a2 + 8), 0, 11, 61, *(a2 + 68), v83, (v81 + 1));
      v82 = HIBYTE(v124[2]);
LABEL_283:
      if (v82 < 0)
      {
LABEL_284:
        operator delete(v124[0]);
      }

      goto LABEL_285;
    default:
      goto LABEL_285;
  }
}