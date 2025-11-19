uint64_t sub_1000C9D08(uint64_t result, int a2, unsigned int a3, unsigned int a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 == 327685)
  {
    return (*(*result + 128))(result, 2, 327685, 0, a3, a4, 0, 0, 0, 0, v4, v5);
  }

  return result;
}

uint64_t sub_1000C9D98(uint64_t result)
{
  if ((*(result + 32) & 7) == 0)
  {
    return sub_100092CAC(*(result + 32), *(result + 40));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000C9DB4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C9E9C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

uint64_t sub_1000C9FD0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v12, 1u);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = off_100113858;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDDDC(v12, &v10);
  v2 = 1000 * v10;
  if ((v10 * 1000) >> 64 == (1000 * v10) >> 63)
  {
    v3 = __OFADD__(v2, v11 / 1000000);
    v4 = v2 + v11 / 1000000;
    if (!v3)
    {
      v5 = *(v1 + 520);
      v6 = *(v1 + 528);
      if (v5 == v6)
      {
        v7 = __CFADD__(v5, 60000);
        v8 = v5 + 60000;
        if (!v7)
        {
LABEL_7:
          v9 = v4 >= v8;
          v12[0] = off_100113858;
          sub_1000DDCF4(v12);
          return v9;
        }
      }

      else
      {
        v8 = v6 + 20000;
        if (v6 < 0xFFFFFFFFFFFFB1E0)
        {
          goto LABEL_7;
        }
      }
    }

    __break(0x5500u);
    goto LABEL_10;
  }

LABEL_11:
  __break(0x550Cu);
  return result;
}

uint64_t sub_1000CA0E0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return pthread_mutex_lock((result + 368));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA0F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return pthread_mutex_unlock((result + 368));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA110(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 48))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA144(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 56))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA178(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA1AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 72))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA1E0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 48))(result, a2, a3, a4);
  }

  __break(0x5516u);
  return result;
}

void sub_1000CA218()
{
  sub_1000CA360(0, 1, 0);
  qword_10012C4D8 = v0;
  sub_1000CA360(0, 1, 0);
  qword_10012C4D0 = v1;
  sub_1000CA360(0, 1, 1u);
  qword_10012C4C8 = v2;
}

void *sub_1000CA28C(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000187F0(result);
    return v1;
  }

  return result;
}

void sub_1000CA2C8()
{
  v0 = 0;
  while (dword_10012B6D8[v0] != -1)
  {
LABEL_6:
    if (++v0 == 4)
    {
      return;
    }
  }

  v1 = sub_10002BB1C();
  if (v1 && (v1 & 7) == 0)
  {
    dword_10012B6D8[v0] = (*(*v1 + 360))(v1, (&off_10012B6F8)[v0]);
    goto LABEL_6;
  }

  __break(0x5516u);
}

void sub_1000CA360(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    __break(0x550Au);
    __break(0x5516u);
  }

  else
  {
    if (a3 == 1)
    {
      operator new();
    }

    if (!a3)
    {
      operator new();
    }
  }
}

uint64_t sub_1000CA428(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  *result = off_100118088;
  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_16;
    }

    result = (*(*a2 + 208))(a2);
  }

  else
  {
    result = 5;
  }

  *(v5 + 8) = result;
  if (a3 >= 8)
  {
    goto LABEL_17;
  }

  *(v5 + 76) = a3;
  if (a4 > 3)
  {
    goto LABEL_17;
  }

  *(v5 + 80) = a4;
  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (!a2)
  {
    v10 = "system";
    goto LABEL_13;
  }

  if ((a2 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    __break(0x550Au);
    return result;
  }

  v10 = (*(*a2 + 200))(a2);
LABEL_13:
  snprintf((v5 + 12), 0x40uLL, "com.apple.iapd.stat.%s.%s", v10, a5);
  if (a4 <= 1)
  {
    sub_1000219A8(&qword_10012CE88);
  }

  return v5;
}

void *sub_1000CA58C(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100118088;
    v2 = result;
    sub_10005F290(&qword_10012CE88, &v2);
    return v1;
  }

  return result;
}

void sub_1000CA5F8(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000CA60C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000CA620(uint64_t result, int a2)
{
  if (result >= 8)
  {
    __break(0x550Au);
    goto LABEL_16;
  }

  v2 = result;
  if (result > 3)
  {
    return result;
  }

  if (!a2)
  {
    if (~dword_10012B6D8 >= 4 * result)
    {
      dword_10012B6D8[result] = 0;
      return result;
    }

    goto LABEL_16;
  }

  if (a2 >= 1)
  {
    if (~dword_10012B6D8 >= 4 * result)
    {
      dword_10012B6D8[result] = 1;
      return result;
    }

    goto LABEL_16;
  }

  result = sub_10002BB1C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  if (~&off_10012B6F8 < 8 * v2 || (result = (*(*result + 360))(result, (&off_10012B6F8)[v2]), ~dword_10012B6D8 < 4 * v2))
  {
LABEL_16:
    __break(0x5513u);
LABEL_17:
    __break(0x5516u);
    return result;
  }

  dword_10012B6D8[v2] = result;
  return result;
}

uint64_t sub_1000CA714()
{
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v5, 1u);
  v4 = 0;
  v5[0] = off_100113858;
  v3 = 0;
  result = sub_1000DDDDC(v5, &v3);
  v1 = 1000000 * v3;
  if ((v3 * 1000000) >> 64 == (1000000 * v3) >> 63)
  {
    v2 = v1 + v4 / 1000;
    if (!__OFADD__(v1, v4 / 1000))
    {
      v5[0] = off_100113858;
      sub_1000DDCF4(v5);
      return v2;
    }
  }

  else
  {
    __break(0x550Cu);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_1000CA7DC(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (a3 < 8)
  {
    sub_1000CA428(result, a2, a3, 0, a4);
    *v4 = off_100118118;
    *(v4 + 92) = 0;
    *(v4 + 84) = 0;
    *(v4 + 100) = 0;
    *(v4 + 108) = -1;
    pthread_mutex_init((v4 + 120), 0);
    return v4;
  }

  __break(0x550Au);
  return result;
}

void *sub_1000CA868(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CA58C(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000CA87C(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CA58C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA8C4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 84);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA8DC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 96);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA8F4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 88);
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000CA90C(unint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 96);
    if (v1)
    {
      return *(result + 88) / v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CA938(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 108);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA950(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 112);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA968(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 100);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA980(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 104);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CA998(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (!result)
  {
    goto LABEL_33;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_33;
  }

  v8 = *(result + 76);
  if (v8 >= 8)
  {
LABEL_34:
    __break(0x550Au);
    goto LABEL_35;
  }

  if (v8 >= 4)
  {
    goto LABEL_35;
  }

  if (~dword_10012B6D8 < 4 * v8)
  {
    goto LABEL_36;
  }

  v9 = *(result + 88);
  if (!dword_10012B6D8[v8])
  {
    return v9;
  }

  result = pthread_mutex_lock((result + 120));
  v16 = *(v7 + 76);
  if (v16 >= 8)
  {
    goto LABEL_34;
  }

  if (v16 > 3)
  {
LABEL_35:
    __break(0x5512u);
    goto LABEL_36;
  }

  if (~dword_10012B6D8 >= 4 * v16)
  {
    if (!dword_10012B6D8[v16])
    {
      goto LABEL_31;
    }

    v9 = *(v7 + 88);
    if (a2)
    {
      if ((a2 & 7) != 0)
      {
        goto LABEL_33;
      }

      *a2 = v9;
    }

    if (a3)
    {
      v17 = *(v7 + 96);
      if (v17)
      {
        v17 = *(v7 + 88) / v17;
      }

      if ((a3 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a3 = v17;
    }

    if (a4)
    {
      if ((a4 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a4 = *(v7 + 108);
    }

    if (a5)
    {
      if ((a5 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a5 = *(v7 + 112);
    }

    if (!a6)
    {
      goto LABEL_28;
    }

    if ((a6 & 3) == 0)
    {
      *a6 = *(v7 + 100);
LABEL_28:
      if (a7)
      {
        if ((a7 & 3) == 0)
        {
          *a7 = *(v7 + 104);
          goto LABEL_31;
        }

        goto LABEL_33;
      }

LABEL_31:
      pthread_mutex_unlock((v7 + 120));
      return v9;
    }

LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000CAB00(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (result && (result & 7) == 0)
  {
    if (!a3)
    {
      return (*(*result + 16))();
    }

    if ((a3 & 3) == 0)
    {
      *a3 = 0;
      return (*(*result + 16))();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAB44(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 120));
    *(v1 + 84) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = xmmword_1000EF0B0;
    *(v1 + 112) = 0;

    return pthread_mutex_unlock((v1 + 120));
  }

  return result;
}

uint64_t sub_1000CABA8(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = pthread_mutex_lock((result + 120));
  *(v2 + 84) = a2;
  v4 = *(v2 + 88);
  v5 = __CFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5 || (*(v2 + 88) = v6, v7 = *(v2 + 96), v5 = __CFADD__(v7, 1), v8 = v7 + 1, v5))
  {
    __break(0x5500u);
LABEL_13:
    __break(0x5516u);
    return result;
  }

  *(v2 + 96) = v8;
  if (*(v2 + 100) < a2)
  {
    *(v2 + 100) = a2;
    *(v2 + 104) = sub_100067278();
  }

  if (*(v2 + 108) > a2)
  {
    *(v2 + 108) = a2;
    *(v2 + 112) = sub_100067278();
  }

  return pthread_mutex_unlock((v2 + 120));
}

uint64_t sub_1000CAC50(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (a3 < 8)
  {
    sub_1000CA428(result, a2, a3, 1u, a4);
    *v4 = off_1001181B0;
    *(v4 + 280) = 0;
    *(v4 + 288) = 0;
    pthread_mutex_init((v4 + 296), 0);
    return v4;
  }

  __break(0x550Au);
  return result;
}

void *sub_1000CACCC(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CA58C(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000CACE0(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CA58C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAD28(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 292))
    {
      return 0xFFFFFFFFLL;
    }

    v1 = *(result + 280);
    if (v1 < 8)
    {
      if (!__CFADD__(result + 88, 4 * v1))
      {
        return *(result + 88 + 4 * v1);
      }

      goto LABEL_10;
    }
  }

  __break(0x5512u);
LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000CAD70(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 292);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAD88(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 16))(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CADD4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 16))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAE08(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 16))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAE3C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAE54(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 16))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAE88(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CAEA0(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (!result)
  {
    goto LABEL_33;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_33;
  }

  v8 = *(result + 76);
  if (v8 >= 8)
  {
LABEL_34:
    __break(0x550Au);
    goto LABEL_35;
  }

  if (v8 >= 4)
  {
    goto LABEL_35;
  }

  if (~dword_10012B6D8 < 4 * v8)
  {
    goto LABEL_36;
  }

  if (!dword_10012B6D8[v8])
  {
    return 0;
  }

  result = pthread_mutex_lock((result + 296));
  v15 = *(v7 + 76);
  if (v15 >= 8)
  {
    goto LABEL_34;
  }

  if (v15 > 3)
  {
LABEL_35:
    __break(0x5512u);
    goto LABEL_36;
  }

  if (~dword_10012B6D8 >= 4 * v15)
  {
    if (!dword_10012B6D8[v15])
    {
      LODWORD(result) = 0;
      goto LABEL_31;
    }

    result = (*(*v7 + 16))(v7);
    if (a2)
    {
      if ((a2 & 7) != 0)
      {
        goto LABEL_33;
      }

      *a2 = 0;
    }

    if (a3)
    {
      if ((a3 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a3 = 0;
    }

    if (a4)
    {
      if ((a4 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a4 = 0;
    }

    if (a5)
    {
      if ((a5 & 3) != 0)
      {
        goto LABEL_33;
      }

      *a5 = 0;
    }

    if (!a6)
    {
LABEL_26:
      if (!a7)
      {
LABEL_31:
        v16 = result;
        pthread_mutex_unlock((v7 + 296));
        return v16;
      }

      if ((a7 & 3) == 0)
      {
        *a7 = 0;
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if ((a6 & 3) == 0)
    {
      *a6 = 0;
      goto LABEL_26;
    }

LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000CB014(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  if (!result)
  {
    goto LABEL_36;
  }

  v6 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v7 = *(result + 76);
  if (v7 >= 8)
  {
    goto LABEL_34;
  }

  if (v7 >= 4)
  {
    goto LABEL_35;
  }

  if (~dword_10012B6D8 < 4 * v7)
  {
    goto LABEL_33;
  }

  if (!dword_10012B6D8[v7])
  {
    return 0;
  }

  result = pthread_mutex_lock((result + 296));
  v13 = *(v6 + 76);
  if (v13 >= 8)
  {
    goto LABEL_34;
  }

  if (v13 > 3)
  {
LABEL_35:
    __break(0x5512u);
    goto LABEL_36;
  }

  if (~dword_10012B6D8 < 4 * v13)
  {
    goto LABEL_33;
  }

  if (!dword_10012B6D8[v13] || *(v6 + 292) <= a2)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v14 = *(v6 + 280);
  v15 = __CFADD__(v14, a2);
  v16 = v14 + a2;
  if (!v15)
  {
    v17 = v16 & 7;
    v18 = v6 + 88;
    if (!__CFADD__(v6 + 88, 4 * v17))
    {
      v19 = *(v18 + 4 * v17);
      if (a3)
      {
        if (__CFADD__(v6 + 248, 4 * v17))
        {
          goto LABEL_33;
        }

        if ((a3 & 3) != 0)
        {
          goto LABEL_36;
        }

        *a3 = *(v6 + 248 + 4 * v17);
      }

      if (a4)
      {
        if ((a4 & 3) != 0)
        {
          goto LABEL_36;
        }

        *a4 = *(v18 + 4 * v17);
      }

      if (!a5)
      {
        goto LABEL_25;
      }

      if (!__CFADD__(v6 + 120, 8 * v17))
      {
        if ((a5 & 7) == 0)
        {
          *a5 = *(v6 + 120 + 8 * v17);
LABEL_25:
          if (!a6)
          {
LABEL_30:
            pthread_mutex_unlock((v6 + 296));
            return v19;
          }

          if (!__CFADD__(v6 + 184, 8 * v17))
          {
            if ((a6 & 7) == 0)
            {
              *a6 = *(v6 + 184 + 8 * v17);
              goto LABEL_30;
            }

            goto LABEL_36;
          }

          goto LABEL_33;
        }

LABEL_36:
        __break(0x5516u);
        goto LABEL_37;
      }
    }

LABEL_33:
    __break(0x5513u);
LABEL_34:
    __break(0x550Au);
    goto LABEL_35;
  }

LABEL_37:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000CB1A0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 296));
    *(v1 + 280) = 0;
    *(v1 + 288) = 0;

    return pthread_mutex_unlock((v1 + 296));
  }

  return result;
}

uint64_t sub_1000CB1F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = pthread_mutex_lock((result + 296));
  v8 = *(v4 + 288);
  *(v4 + 284) = v8;
  v9 = v8 + 1;
  if (v8 == -1)
  {
LABEL_21:
    __break(0x5500u);
    return result;
  }

  *(v4 + 288) = v9 & 7;
  if ((v9 & 7) == *(v4 + 280))
  {
    *(v4 + 280) = (v8 + 2) & 7;
  }

  if (v8 >= 8)
  {
    goto LABEL_19;
  }

  if (__CFADD__(v4 + 88, 4 * v8))
  {
LABEL_18:
    __break(0x5513u);
    goto LABEL_19;
  }

  *(v4 + 88 + 4 * v8) = a2;
  v10 = *(v4 + 284);
  if (v10 > 7)
  {
    goto LABEL_19;
  }

  if (__CFADD__(v4 + 120, 8 * v10))
  {
    goto LABEL_18;
  }

  *(v4 + 120 + 8 * v10) = a3;
  if (__CFADD__(v4 + 184, 8 * v10))
  {
    goto LABEL_18;
  }

  *(v4 + 184 + 8 * v10) = a4;
  result = sub_100067278();
  v11 = *(v4 + 284);
  if (v11 > 7)
  {
LABEL_19:
    __break(0x5512u);
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  if (__CFADD__(v4 + 248, 4 * v11))
  {
    goto LABEL_18;
  }

  *(v4 + 248 + 4 * v11) = result;
  v12 = *(v4 + 292);
  if (v12 < 8)
  {
    ++v12;
  }

  *(v4 + 292) = v12;

  return pthread_mutex_unlock((v4 + 296));
}

uint64_t sub_1000CB304()
{
  qword_10012CE88 = &qword_10012CE88;
  qword_10012CE90 = &qword_10012CE88;
  qword_10012CE98 = 0;
  return __cxa_atexit(sub_1000CA28C, &qword_10012CE88, &_mh_execute_header);
}

void *sub_1000CB330(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000187F0(result);
    return v1;
  }

  return result;
}

uint64_t sub_1000CB36C(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    *result = a2;
    *(result + 16) = 0;
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CB494(uint64_t a1, int a2, int a3)
{
  result = pthread_mutex_lock(&stru_10012B718);
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  v7 = *(a1 + 8);
  if (v7 >= 2)
  {
LABEL_22:
    __break(0x550Au);
    return result;
  }

  if ((v7 & 1) != 0 || a3)
  {
    if (*a1)
    {
      operator new();
    }

    __break(0x5518u);
    goto LABEL_21;
  }

  if (a2)
  {
    v8 = qword_10012CEA8;
    if (qword_10012CEA8 != &qword_10012CEA0)
    {
      while (v8 && (v8 & 7) == 0)
      {
        result = v8[2];
        if (result)
        {
          if ((result & 7) == 0)
          {
            operator delete();
          }

          goto LABEL_21;
        }

        v8 = v8[1];
        if (v8 == &qword_10012CEA0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_21;
    }

LABEL_16:
    sub_1000187F0(&qword_10012CEA0);
  }

  return pthread_mutex_unlock(&stru_10012B718);
}

uint64_t sub_1000CB608(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CB36C(result, a2);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000CB61C(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (result = pthread_mutex_lock(&stru_10012B718), (isa = v1[3].isa) == 0) || (isa & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(isa + 8) = 0;
    sub_1000219A8(&qword_10012CEA0);
    pthread_mutex_unlock(&stru_10012B718);
    result = v1[1].isa;
    if (result)
    {
      dispatch_release(result);
      return v1;
    }
  }

  __break(0x5510u);
  return result;
}

NSObject *sub_1000CB69C(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CB61C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CB6B0(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 16) = a2;
  }

  return result;
}

void sub_1000CB6C8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (pthread_mutex_lock(&stru_10012B718), (v2 = *(a1 + 24)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
LABEL_13:
    __break(0x5510u);
    return;
  }

  *(v2 + 8) = 1;
  pthread_mutex_unlock(&stru_10012B718);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = dispatch_time(0, 1000000 * v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  dispatch_source_set_timer(v5, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void sub_1000CB774(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (pthread_mutex_lock(&stru_10012B718), (v2 = *(a1 + 24)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  *(v2 + 8) = 0;
  pthread_mutex_unlock(&stru_10012B718);
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_10:
    __break(0x5510u);
    return;
  }

  dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_1000CB7F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CB494(*(result + 24), 0, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CB818()
{
  qword_10012CEA0 = &qword_10012CEA0;
  qword_10012CEA8 = &qword_10012CEA0;
  qword_10012CEB0 = 0;
  return __cxa_atexit(sub_1000CB330, &qword_10012CEA0, &_mh_execute_header);
}

const char *sub_1000CB844(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return sub_1000CB858(a1);
}

const char *sub_1000CB858(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if ((v2 == 46 || v2 == 47) && !a1[1])
  {
    return 0;
  }

  v3 = dirname(a1);
  v4 = v3;
  if (v3)
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v8.st_blksize = v5;
    *v8.st_qspare = v5;
    v8.st_birthtimespec = v5;
    *&v8.st_size = v5;
    v8.st_mtimespec = v5;
    v8.st_ctimespec = v5;
    *&v8.st_uid = v5;
    v8.st_atimespec = v5;
    *&v8.st_dev = v5;
    if (!stat(v3, &v8))
    {
      return mkdir(a1, 0x1FFu);
    }

    v6 = strdup(v4);
    v4 = sub_1000CB858();
    free(v6);
    if (!v4)
    {
      return mkdir(a1, 0x1FFu);
    }
  }

  return v4;
}

BOOL sub_1000CB91C(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

uint64_t sub_1000CB970(pthread_mutex_t *a1)
{
  v4.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v4.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  v2 = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  return v2;
}

uint64_t sub_1000CB9FC()
{
  if (qword_10012C4E8 != -1)
  {
    sub_1000E2674();
  }

  return qword_10012C4E0;
}

uint64_t sub_1000CBA78(uint64_t result)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_6;
  }

  sub_10001C4A0(result);
  *v1 = off_1001182A8;
  *(v1 + 96) = off_100118348;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 116) = -1;
  *(v1 + 120) = 0;
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v1 + 96, 8u, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000CBB20(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_1001182A8, *(result + 96) = off_100118348, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 8u);
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000CBBDC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CBB20(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CBBF0(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000CBB20(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CBC04(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CBB20(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CBC54(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 112);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CBC7C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (v2 = 0, result = sub_1000C4254(), (result & 7) != 0) || !result)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000949E0(result, *(v1 + 120), 0);
    if (result)
    {
      sub_100064AD4(&v2, result);
      return v2;
    }
  }

  return result;
}

unint64_t sub_1000CBCE8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v25[13] = v6;
  *v25 = v6;
  v24 = v6;
  v23 = v6;
  v22 = v6;
  v21 = v6;
  v20 = v6;
  v19 = v6;
  v18 = v6;
  v17 = v6;
  v16 = v6;
  v15 = v6;
  v14 = v6;
  v13 = v6;
  v12 = v6;
  v11 = v6;
  v9 = -2;
  __s = 0;
  v7 = sub_1000C4254();
  if ((v7 & 7) != 0 || !v7)
  {
    goto LABEL_10;
  }

  result = sub_1000949E0(v7, *(a1 + 120), 0);
  if (!result)
  {
LABEL_8:
    if (a3)
    {
      return sub_100025D20(a3, &__s);
    }

LABEL_10:
    __break(0x5516u);
  }

  if (a2 <= 0xFF)
  {
    sub_100064BA8(a2, &__s, &v9, result);
    goto LABEL_8;
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_1000CBE00(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (a2 < 0)
  {
    return result;
  }

  result = (*(*result + 96))(result);
  if (result <= a2)
  {
    return result;
  }

  *(v2 + 116) = a2;
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  result = sub_1000949E0(result, *(v2 + 120), 0);
  if (!result)
  {
    return result;
  }

  if (a2 >= 0x100)
  {
LABEL_14:
    __break(0x5507u);
    return result;
  }

  return sub_100064A30(a2, result);
}

uint64_t sub_1000CBEBC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (v2 = 0, result = sub_1000C4254(), (result & 7) != 0) || !result)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000949E0(result, *(v1 + 120), 0);
    if (result)
    {
      sub_100064958(&v2, result);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1000CBF28(uint64_t result, _DWORD *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (*a2 >= 0x20u)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (*a2 == 9)
  {
    *(result + 112) = 0;
    *(result + 116) = -1;
  }

  return result;
}

uint64_t sub_1000CBF60(uint64_t result, _DWORD *a2)
{
  if (((result - 96) & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  if (*a2 >= 0x20u)
  {
LABEL_7:
    __break(0x550Au);
    return result;
  }

  if (*a2 == 9)
  {
    *(result + 16) = 0;
    *(result + 20) = -1;
  }

  return result;
}

void sub_1000CBF98(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_15:
    __break(0x550Au);
    return;
  }

  if (a2 != 8 || a5 != 16)
  {
    sub_1000DDEEC(0, 4, "%s:%d wrong lingo (%d) or payload size (%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TAccessoryEQ.cpp", 137, a2, a5);
  }

  if (!a4 || (a4 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  if (*a4 == 16)
  {
    *(a1 + 112) = 1;
    *(a1 + 116) = -1;
    *(a1 + 120) = *(a4 + 8);
    v7 = *(*a1 + 32);

    v7(a1, 262145);
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d Incorrect cmdID\n.", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TAccessoryEQ.cpp", 153);
  }
}

void sub_1000CC0C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000CBF98(a1 - 96, a2, 0, a4, a5);
  }
}

uint64_t sub_1000CC0DC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000CC0F0(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = &off_1001183D8;
    *(result + 8) = a2;
    if (a3 == a3)
    {
      *(result + 12) = a3;
      *(result + 16) = a4;
      *(result + 20) = a5;
      *(result + 24) = 0;
      *(result + 32) = a6;
      *(result + 40) = a7;
      *(result + 48) = 0;
      *(result + 52) = 0x1900000000;
      *(result + 60) = 0;
      *(result + 64) = 0xB00000009;
      *(result + 80) = 0;
      *(result + 72) = result + 80;
      *(result + 112) = 0;
      *(result + 104) = 0;
      *(result + 88) = 0;
      *(result + 96) = result + 104;
      return result;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t *sub_1000CC17C(uint64_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    *result = &off_1001183D8;
    v2 = result[12];
    v4 = v2;
    v3 = result + 13;
    while (v2 != v3)
    {
      if (!v2 || (v2 & 7) != 0)
      {
        goto LABEL_12;
      }

      result = *(v2 + 40);
      if (result)
      {
        if ((result & 7) != 0)
        {
          goto LABEL_12;
        }

        (*(*result + 8))(result);
      }

      result = sub_100007D44(&v4);
      v2 = v4;
    }

    sub_1000089F8((v1 + 12));
    sub_1000089F8((v1 + 9));
    return v1;
  }

  return result;
}

uint64_t *sub_1000CC254(uint64_t *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CC17C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_1000CC268(uint64_t *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CC17C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void *sub_1000CC2B0(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result[1] = 0xFFFFFFFF00000000;
    result[2] = 0xFFFFFFFFLL;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[8] = 0xB00000009;
  }

  return result;
}

uint64_t sub_1000CC2E4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 20);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CC2FC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 12);
  if (result != result)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000CC320(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 16);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CC338(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CC350(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 24);
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000CC368(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 64);
    if (v1 < 0x20)
    {
      return v1 < 7;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CC394(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 64);
  if (result >= 0x20)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

BOOL sub_1000CC3B8(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 68);
    if (v1 < 0x20)
    {
      return v1 == 12;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CC3E4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 68);
  if (result >= 0x20)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000CC408(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 60);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CC430(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10007C9B4(*(result + 40));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CC448(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_100089E70(*(result + 40));
    if (!result)
    {
      return &unk_10012CEB8;
    }
  }

  return result;
}

uint64_t sub_1000CC484(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result += 72;
  }

  return result;
}

uint64_t sub_1000CC49C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 32);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CC4B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((result & 7) == 0)
    {
      result = sub_1000C4254();
      if (result)
      {
        if ((result & 7) == 0)
        {
          return sub_1000933B0(result, a2) == 56;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000CC504(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    v2 = *(a1 + 40);
    *(a1 + 24) = sub_10007D6FC(v2);
    sub_100007DB0(a1 + 72);
    sub_100089B1C(v2);
    v5 = v3 + 1;
    v4 = *v3;
    v10 = *v3;
    while (v4 != v5)
    {
      if (!v4 || (v4 & 7) != 0)
      {
        goto LABEL_9;
      }

      v6 = *(v4 + 40);
      v7 = sub_1000CC5B4(a1 + 72, (v4 + 32));
      v8 = *(v6 + 29);
      v9 = *(v6 + 16);
      *v7 = *v6;
      *(v7 + 16) = v9;
      *(v7 + 29) = v8;
      sub_100007D44(&v10);
      v4 = v10;
    }
  }
}

uint64_t sub_1000CC5B4(uint64_t result, unsigned __int8 *a2)
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
    result = sub_1000CE274(v2);
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

uint64_t sub_1000CC674(uint64_t result, unsigned int *a2)
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
  result = sub_1000CE2FC(result, &v6, a2);
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
    result = sub_1000CE3B0(v2);
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

uint64_t sub_1000CC734(uint64_t result, unsigned int a2)
{
  v3 = a2;
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  result = sub_1000CE438(result + 96, &v3);
  if (v2 + 104 != result)
  {
    if (result && (result & 7) == 0)
    {
      return *(result + 40);
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1000CC7A0()
{
  if (qword_10012C4F8 != -1)
  {
    sub_1000E2688();
  }

  result = qword_10012C4F0;
  if ((qword_10012C4F0 & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000CC828(uint64_t result)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_6;
  }

  sub_10001C4A0(result);
  *v1 = off_1001184E0;
  *(v1 + 96) = off_1001185A0;
  *(v1 + 104) = 0;
  sub_1000CC0F0(v1 + 112, 0, -1, -1, 0, 0, 0);
  *(v1 + 240) = 0;
  *(v1 + 248) = v1 + 256;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = v1 + 272;
  *(v1 + 280) = v1 + 272;
  *(v1 + 288) = 0;
  pthread_mutex_init((v1 + 296), 0);
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v1 + 96, 0, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000CC904(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_1001184E0, *(result + 96) = off_1001185A0, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
  }

  else
  {
    result = sub_100060370(result, v1 + 96, 0);
    v2 = *(v1 + 248);
    v4 = v2;
    while (v2 != v1 + 256)
    {
      if (!v2 || (v2 & 7) != 0)
      {
        goto LABEL_17;
      }

      result = *(v2 + 40);
      if (result != v1 + 112 && result != 0)
      {
        if ((result & 7) != 0)
        {
          goto LABEL_17;
        }

        (*(*result + 8))(result);
      }

      result = sub_100007D44(&v4);
      v2 = v4;
    }

    pthread_mutex_destroy((v1 + 296));
    sub_1000187F0((v1 + 272));
    sub_1000089F8(v1 + 248);
    sub_1000CC17C((v1 + 112));
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000CCA64(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CC904(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CCA78(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000CC904(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CCA8C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CC904(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CCADC(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock((result + 296));
  result = sub_1000CCD34(v7, a2);
  if (!result || (v14 = result, result == v7 + 112))
  {
    sub_1000CCDA0(v7);
    operator new();
  }

  if ((result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
  }

  else
  {
    if (*(result + 8) != a2)
    {
      sub_1000DDEEC(0, 4, "%s:%d (%hhx) connection ID mismatch (0x%08x != 0x%08x)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TAccessoryMgr.cpp", 311, a6, *(result + 8), a2);
LABEL_21:
      pthread_mutex_unlock((v7 + 296));
      return v14;
    }

    if (a3 == a3)
    {
      v15 = *(result + 12);
      if (v15 == v15)
      {
        if (v15 != a3)
        {
          sub_1000DDEEC(0, 4, "(0x%08x) accessory ID changed (%d != %d)\n", a2, *(result + 12), a3);
          *(v14 + 12) = a3;
        }

        if (*(v14 + 16) != a4)
        {
          sub_1000DDEEC(0, 4, "(0x%08x) device ID changed (%d != %d)\n", a2, *(v14 + 16), a4);
          *(v14 + 16) = a4;
        }

        if (*(v14 + 20) != a5)
        {
          sub_1000DDEEC(0, 4, "(0x%08x) device lingos changed (0x%08x != 0x%08x)\n", a2, *(v14 + 20), a5);
          *(v14 + 20) = a5;
        }

        if (*(v14 + 32) != a6)
        {
          sub_1000DDEEC(0, 4, "(0x%08x) port changed (%hhx != %hhx)\n", a2, *(v14 + 32), a6);
          *(v14 + 32) = a6;
        }

        if (*(v14 + 40) != a7)
        {
          sub_1000DDEEC(0, 4, "(0x%08x) connectionHandle changed (%hhx != %hhx)\n", a2, *(v14 + 40), a7);
          *(v14 + 40) = a7;
        }

        goto LABEL_21;
      }
    }
  }

  __break(0x550Au);
  __break(0x5500u);
  return result;
}

uint64_t sub_1000CCD34(uint64_t result, int a2)
{
  v3 = a2;
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  result = sub_100007E88(result + 248, &v3);
  if (v2 + 256 != result)
  {
    if (result && (result & 7) == 0)
    {
      return *(result + 40);
    }

    goto LABEL_9;
  }

  return 0;
}

void sub_1000CCDA0(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  if (*(a1 + 288) >= 0x10uLL)
  {
    while (1)
    {
      v2 = *(a1 + 280);
      if (!v2 || (*(a1 + 280) & 7) != 0)
      {
        goto LABEL_14;
      }

      v4 = *(v2 + 16);
      sub_10003C974(a1 + 272);
      if (v4)
      {
        if ((v4 & 7) != 0)
        {
          goto LABEL_14;
        }

        (*(*v4 + 8))(v4);
      }

      if (*(a1 + 288) <= 0xFuLL)
      {
        return;
      }
    }
  }
}

uint64_t sub_1000CCE3C(uint64_t result, unsigned int *a2)
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
  result = sub_100007FC8(result, &v6, a2);
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
    result = sub_1000CE538(v2);
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

uint64_t sub_1000CCEFC(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 296));
    v4 = sub_1000CCD34(v2, a2);
    pthread_mutex_unlock((v2 + 296));
    return v4;
  }

  return result;
}

uint64_t sub_1000CCF54(uint64_t result, int a2)
{
  v8 = a2;
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      pthread_mutex_lock((result + 296));
      result = sub_100007E88(v2 + 248, &v8);
      v3 = result;
      if (v2 + 256 == result)
      {
        goto LABEL_11;
      }

      if (result)
      {
        if ((result & 7) == 0)
        {
          v4 = (result + 40);
          result = *(result + 40);
          if (result)
          {
            if ((result & 7) == 0)
            {
              (*(*result + 176))(result);
              result = sub_1000219A8(v2 + 272);
              *v4 = v2 + 112;
              v5 = *(v2 + 240);
              v6 = v5 != 0;
              v7 = v5 - 1;
              if (!v6)
              {
                goto LABEL_13;
              }

              *(v2 + 240) = v7;
LABEL_11:
              pthread_mutex_unlock((v2 + 296));
              return v2 + 256 != v3;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_13:
  __break(0x5515u);
  return result;
}

uint64_t sub_1000CD03C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 240);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CD054(uint64_t a1, int a2)
{
  if (!a1 || (v2 = a1, (a1 & 7) != 0))
  {
LABEL_5:
    __break(0x5516u);
    return v2 + 112;
  }

  result = sub_1000CCEFC(a1, a2);
  if (result)
  {
    if ((result & 7) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  return v2 + 112;
}

uint64_t *sub_1000CD09C(uint64_t *result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = pthread_mutex_lock((result + 37));
  v4 = v2[31];
  for (i = v4; ; v4 = i)
  {
    if (v4 == v2 + 32)
    {
      pthread_mutex_unlock((v2 + 37));
      return v2 + 14;
    }

    if (!v4 || (v4 & 7) != 0)
    {
      goto LABEL_15;
    }

    v5 = *(v4 + 40);
    if (v5)
    {
      if ((v5 & 7) != 0)
      {
        goto LABEL_15;
      }

      if (*(v5 + 32) == a2)
      {
        break;
      }
    }

    result = sub_100007D44(&i);
  }

  result = pthread_mutex_unlock((v2 + 37));
  if (!i || (i & 7) != 0 || (result = *(i + 40), (result & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
  }

  return result;
}

uint64_t *sub_1000CD168@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      *a4 = a4;
      a4[1] = a4;
      a4[2] = 0;
      result = pthread_mutex_lock((result + 37));
      v8 = v4[31];
      v14 = v8;
      v9 = v4 + 32;
      if (a2 >= 0)
      {
        v10 = 1 << a2;
      }

      else
      {
        v10 = 0;
      }

      if (v8 == v9)
      {
        return pthread_mutex_unlock((v4 + 37));
      }

      v11 = a2 + 32;
      while (v8 && (v8 & 7) == 0)
      {
        v12 = *(v8 + 40);
        if (v12)
        {
          v13 = v12 == v4 + 14;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          if ((v12 & 7) != 0)
          {
            break;
          }

          if (*(v12 + 4) != -1)
          {
            if (v11 > 0x3F)
            {
              goto LABEL_24;
            }

            if ((*(v12 + 5) & v10) != 0 && (!a3 || v12[4] == a3))
            {
              sub_1000219A8(a4);
            }
          }
        }

        result = sub_100007D44(&v14);
        v8 = v14;
        if (v14 == v9)
        {
          return pthread_mutex_unlock((v4 + 37));
        }
      }
    }
  }

  __break(0x5516u);
LABEL_24:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000CD284(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = sub_1000CCEFC(result, a2);
      v4 = result;
      if (!result)
      {
        return v4 != 0;
      }

      if ((result & 7) == 0)
      {
        *(result + 60) = 1;
        (*(*v2 + 32))(v2, 65546, a2, 0);
        return v4 != 0;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CD320(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = sub_1000CCEFC(result, a2);
      v4 = result;
      if (!result)
      {
        return v4 != 0;
      }

      if ((result & 7) == 0)
      {
        *(result + 60) = 0;
        (*(*v2 + 32))(v2, 65547, a2, 0);
        return v4 != 0;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CD3B8(uint64_t result, unsigned int a2)
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

  result = sub_1000CCEFC(result, a2);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v4 = *(result + 60);
  if (v4 >= 2)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  *(result + 60) = 0;
  (*(*v2 + 32))(v2, 65548, a2, 0);
  return 1;
}

BOOL sub_1000CD45C(_BOOL8 result, int a2, char a3)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = sub_1000CD4A4(a2);
    return sub_10007B860(v4, a3) == 0;
  }

  return result;
}

uint64_t sub_1000CD4A4(int a1)
{
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    return sub_100094B48(result, a1);
  }

  return result;
}

uint64_t sub_1000CD4EC(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = sub_1000CD4A4(a2);

    return sub_100089210(v2);
  }

  return result;
}

uint64_t sub_1000CD528(uint64_t result, int a2, unsigned int a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  result = sub_1000CCEFC(result, a2);
  v6 = result;
  if (!result)
  {
    return v6 != 0;
  }

  if ((result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else if (a3 < 0x20)
  {
    v7 = a3;
    *sub_1000CC674(result + 96, &v7) = a4;
    return v6 != 0;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CD5A8(uint64_t result, int a2, unsigned int a3, _BYTE *a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_1000CCEFC(result, a2);
  if (!result)
  {
    *a4 = 0;
    return result;
  }

  *a4 = 1;
  if ((result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  if (a3 >= 0x20)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  return sub_1000CC734(result, a3);
}

void sub_1000CD624(uint64_t a1, int a2, int a3, unsigned int *a4, int a5)
{
  if (!a1)
  {
    goto LABEL_146;
  }

  v6 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_146;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_147;
  }

  if (a2)
  {
    return;
  }

  v7 = a4;
  if (a3 == 5)
  {
    if (a5 != 44)
    {
      return;
    }

    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v57[28] = v13;
    *v57 = v13;
    *&v57[16] = v13;
    if (!a4 || (a4 & 3) != 0)
    {
      goto LABEL_146;
    }

    v14 = a4[1];
    if (v14 > 7)
    {
      goto LABEL_147;
    }

    *&v57[4] = a4[1];
    if (v14 <= 1)
    {
      if (v14)
      {
        *&v57[8] = *(a4 + 2);
        *&v57[24] = *(a4 + 6);
        *&v57[40] = a4[10];
      }

      else
      {
        *&v57[8] = *(a4 + 1);
      }

      goto LABEL_38;
    }

    if (v14 == 2)
    {
      *&v57[8] = *(a4 + 1);
    }

    else if (v14 != 3)
    {
      goto LABEL_38;
    }

    if (a4[2] > 1)
    {
      goto LABEL_147;
    }

    *&v57[8] = a4[2];
LABEL_38:
    v19 = *a4;
    v11 = *(*a1 + 32);
    v12 = 65552;
    goto LABEL_39;
  }

  if (a3 || a5 != 48)
  {
    return;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_146;
  }

  v8 = a4[1];
  if (v8 >= 0x16 && v8 != 100)
  {
    return;
  }

  v9 = *a4;
  if (*a4 > 0x1F)
  {
    goto LABEL_147;
  }

  if (v9 == 20)
  {
    v10 = *(a4 + 1);
    *v57 = *(a4 + 4);
    *&v57[8] = v10;
    v11 = *(*a1 + 32);
    v12 = 65551;
LABEL_33:
    a1 = v6;
    v19 = 0;
LABEL_39:
    v11(a1, v12, v19, v57);
    return;
  }

  v15 = *(a4 + 3);
  if (!v15)
  {
    v16 = sub_1000C4254();
    if (!v16 || (v16 & 7) != 0)
    {
      goto LABEL_146;
    }

    v17 = sub_1000949E0(v16, *(v7 + 8), 0);
    v9 = *v7;
    if (*v7 > 0x1Fu)
    {
      goto LABEL_147;
    }

    v15 = v17;
  }

  if ((v9 - 21) < 4)
  {
    v18 = *(v7 + 8);
    *v57 = *(v7 + 40);
    *&v57[8] = v18;
    v12 = dword_1000F02A0[v9 - 21];
    v11 = *(*v6 + 32);
    goto LABEL_33;
  }

  if (v9 == 19)
  {
    v20 = *(v7 + 8);
    *v57 = *(v7 + 32);
    *&v57[8] = v20;
    (*(*v6 + 32))(v6, 65549, v15, v57);
    return;
  }

  if (!v15)
  {
    goto LABEL_134;
  }

  if ((v15 & 7) != 0)
  {
    goto LABEL_146;
  }

  v21 = sub_10005BAC4(v15);
  v22 = sub_1000CCADC(v6, v21, *(v7 + 4), *(v7 + 16), *(v7 + 20), *(v7 + 8), *(v7 + 24));
  if (!v22)
  {
LABEL_134:
    __break(0x5518u);
    goto LABEL_135;
  }

  v23 = *v7;
  if (*v7 > 0x1Fu)
  {
    goto LABEL_147;
  }

  v5 = v22;
  if (v23 <= 7)
  {
    if ((v23 - 1) < 6)
    {
      if ((v22 & 7) == 0)
      {
        sub_1000CC504(v22);
        v24 = *(v5 + 48);
        if (v24 <= 1)
        {
          v25 = *v7;
          if (v24)
          {
            if (v25 <= 0x1F)
            {
              v26 = *(v5 + 56);
              if (v26 <= 0x1F)
              {
                if (v25 == v26 && *(v7 + 20) == *(v5 + 52))
                {
                  return;
                }

                goto LABEL_67;
              }
            }
          }

          else if (v25 <= 0x1F)
          {
LABEL_67:
            *(v5 + 64) = v25;
            *(v5 + 52) = *(v7 + 20);
            *(v5 + 56) = v25;
            v29 = v6;
            v30 = v5;
            v31 = 65537;
LABEL_88:

            sub_1000CE030(v29, v30, v31);
            return;
          }
        }

LABEL_147:
        __break(0x550Au);
      }

LABEL_146:
      __break(0x5516u);
      goto LABEL_147;
    }

    if (!v23)
    {
      return;
    }

    goto LABEL_72;
  }

  if (v23 > 13)
  {
    if (v23 == 14)
    {
      v34 = sub_10007D6FC(v15);
      if ((v5 & 7) != 0)
      {
        goto LABEL_146;
      }

      *(v5 + 24) = v34;
      v31 = 65550;
      goto LABEL_87;
    }

    if (v23 == 18)
    {
      sub_1000DDEEC(0, 4, "%s:%d Wrong message type!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TAccessoryMgr.cpp", 712);
      return;
    }

    goto LABEL_72;
  }

  if (v23 == 8)
  {
    if ((v22 & 7) != 0)
    {
      goto LABEL_146;
    }

    *(v22 + 20) = 0;
    *(v22 + 48) = 1;
    *(v22 + 68) = 8;
    if ((*(*v22 + 96))(v22))
    {
      v32 = *(v5 + 8);
      v33 = *(*v6 + 136);

      v33(v6, v32);
    }
  }

  else
  {
    if (v23 != 9)
    {
LABEL_72:
      if ((v22 & 7) != 0)
      {
        goto LABEL_146;
      }

      *(v22 + 68) = v23;
      if (v23 <= 11)
      {
        if (v23 == 7)
        {
          *(v22 + 64) = 1;
          v31 = 65542;
          goto LABEL_87;
        }

        if (v23 != 11)
        {
          return;
        }

        v35 = sub_1000C4254();
        if (!v35)
        {
          goto LABEL_146;
        }

        if ((v35 & 7) != 0)
        {
          goto LABEL_146;
        }

        v36 = sub_1000945E0(v35, v15);
        v37 = sub_1000C4254();
        if (!v37 || (v37 & 7) != 0)
        {
          goto LABEL_146;
        }

        v38 = sub_100058F00(v37, v36);
        if (v38 < 0)
        {
          goto LABEL_147;
        }

        if (v36 && !v38)
        {
          length = 0;
          *v57 = 0;
          v39 = (*(*v6 + 104))(v6, v36);
          if (v39)
          {
            if ((v39 & 7) != 0)
            {
              goto LABEL_146;
            }

            v40 = (*(*v39 + 144))(v39, &length);
            if (v40 && length)
            {
              v41 = v40;
              v42 = CFDataCreate(0, v40, length);
              if (v42)
              {
                v43 = v42;
                v44 = AllocCapsFromAuthCert();
                CFRelease(v43);
              }

              else
              {
                v44 = 0;
              }
            }

            else
            {
              v44 = 0;
              v41 = 0;
              length = 0;
            }
          }

          else
          {
            v44 = 0;
            v41 = 0;
          }

          if ((v36 & 7) != 0)
          {
            goto LABEL_146;
          }

          (*(*v36 + 64))(v36, v44, v41, length);
          if (v44)
          {
            free(v44);
          }
        }

        v55 = 65539;
LABEL_145:
        sub_1000CE030(v6, v5, v55);
        return;
      }

      if (v23 != 12)
      {
        if (v23 != 13)
        {
          if (v23 == 17)
          {
            (*(*v22 + 136))(v22);

            sub_1000CE080(v6, v5, 65543);
          }

          return;
        }

        v53 = sub_1000C4254();
        if (!v53 || (v53 & 7) != 0)
        {
          goto LABEL_146;
        }

        v54 = sub_1000945E0(v53, v15);
        if (v54)
        {
          if ((v54 & 7) != 0)
          {
            goto LABEL_146;
          }

          (*(*v54 + 72))(v54);
        }

        v31 = 65541;
LABEL_87:
        v29 = v6;
        v30 = v5;
        goto LABEL_88;
      }

      v45 = sub_1000C4254();
      if (!v45)
      {
        goto LABEL_146;
      }

      if ((v45 & 7) != 0)
      {
        goto LABEL_146;
      }

      v7 = sub_1000945E0(v45, v15);
      v46 = sub_1000C4254();
      if (!v46 || (v46 & 7) != 0)
      {
        goto LABEL_146;
      }

      v47 = sub_100058F00(v46, v7);
      if (v47 < 0)
      {
        goto LABEL_147;
      }

      if (!v7 || !v47)
      {
LABEL_139:
        v55 = 65540;
        goto LABEL_145;
      }

      length = 0;
      *v57 = 0;
      v48 = (*(*v6 + 104))(v6, v7);
      if (!v48)
      {
        v52 = 0;
        v15 = 0;
        goto LABEL_136;
      }

      if ((v48 & 7) != 0)
      {
        goto LABEL_146;
      }

      v49 = (*(*v48 + 144))(v48, &length);
      if (!v49 || !length)
      {
        v52 = 0;
        v15 = 0;
        length = 0;
        goto LABEL_136;
      }

      v15 = v49;
      v50 = CFDataCreate(0, v49, length);
      if (v50)
      {
        v51 = v50;
        v52 = AllocCapsFromAuthCert();
        CFRelease(v51);
LABEL_136:
        if ((v7 & 7) != 0)
        {
          goto LABEL_146;
        }

        (*(*v7 + 64))(v7, v52, v15, length);
        if (v52)
        {
          free(v52);
        }

        goto LABEL_139;
      }

LABEL_135:
      v52 = 0;
      goto LABEL_136;
    }

    if ((v22 & 7) != 0)
    {
      goto LABEL_146;
    }

    *(v22 + 48) = 0;
    *(v22 + 52) = 0x1900000000;
    if ((*(*v22 + 96))(v22))
    {
      (*(*v6 + 136))(v6, *(v5 + 8));
    }

    if (*v7 > 0x1Fu)
    {
      goto LABEL_147;
    }

    *(v5 + 68) = *v7;
    sub_1000CE030(v6, v5, 65538);
    v27 = *(v7 + 24);
    if (v27)
    {
      if ((v27 & 7) != 0)
      {
        goto LABEL_146;
      }

      v28 = sub_10005BAC4(v27);
    }

    else
    {
      v28 = 0;
    }

    sub_1000CCF54(v6, v28);
  }
}

uint64_t sub_1000CE018(uint64_t result)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      return sub_10005BAC4(result);
    }
  }

  return result;
}

uint64_t sub_1000CE030(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0)
  {
    return (*(*result + 32))(result, a3, *(a2 + 8), *(a2 + 20));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE080(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0)
  {
    return (*(*result + 32))(result, a3, *(a2 + 8));
  }

  __break(0x5516u);
  return result;
}

void sub_1000CE0CC(uint64_t a1, int a2, int a3, unsigned int *a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000CD624(a1 - 96, a2, a3, a4, a5);
  }
}

uint64_t sub_1000CE0E4(int a1, unsigned int a2, uint64_t *a3)
{
  result = sub_1000CD4A4(a1);
  if (a2 >= 0x10)
  {
    __break(0x550Au);
  }

  else
  {

    return sub_100089C00(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000CE130(uint64_t result, unsigned int a2, char a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4[0] = 0xAAAAAAAAAAAAAAAALL;
    v4[1] = a4;
    LOBYTE(v4[0]) = a3;
    (*(*result + 32))(result, 65555, a2, v4);
    return 1;
  }

  return result;
}

uint64_t sub_1000CE1A0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000880C0(*(result + 32));
    if (result < 8)
    {
      return result == 5;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CE1E4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000880C0(*(result + 32));
    if (result < 8)
    {
      return (result & 6) == 4;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CE22C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 32);
    return sub_1000881F0();
  }

  return result;
}

uint64_t sub_1000CE244(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000880C0(*(result + 32));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE25C(uint64_t result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000881F8(*(result + 40), a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE274(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE2FC(uint64_t result, void *a2, unsigned int *a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = *(result + 8);
    result += 8;
    v3 = v4;
    if (!v4)
    {
      goto LABEL_17;
    }

    if ((v3 & 7) == 0)
    {
      v5 = *a3;
      while (1)
      {
        if (v5 >= 0x20 || (v6 = *(v3 + 32), v6 > 0x1F))
        {
          __break(0x550Au);
          return result;
        }

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
            goto LABEL_21;
          }

          v3 += 8;
        }

        else
        {
          v7 = *v3;
          if (!*v3)
          {
            result = v3;
            goto LABEL_21;
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
LABEL_17:
  v3 = result;
LABEL_21:
  *a2 = result;
  return v3;
}

uint64_t sub_1000CE3B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

uint64_t sub_1000CE438(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = result + 8;
  v2 = *(result + 8);
  if ((v2 & 7) != 0)
  {
    goto LABEL_12;
  }

  result = sub_1000CE4BC(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (*a2 < 0x20)
      {
        v5 = *(result + 32);
        if (v5 <= 0x1F)
        {
          if (*a2 >= v5)
          {
            return result;
          }

          return v3;
        }
      }

LABEL_13:
      __break(0x550Au);
      return result;
    }

LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  return v3;
}

uint64_t sub_1000CE4BC(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    return a4;
  }

  if ((a3 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return a3;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(a3 + 32);
    if (v5 > 0x1F || v4 >= 0x20)
    {
      break;
    }

    if (v5 >= v4)
    {
      v6 = *a3;
      if (!*a3)
      {
        return a3;
      }
    }

    else
    {
      v6 = *(a3 + 8);
      if (!v6)
      {
        return a4;
      }

      a3 = a4;
    }

    if ((v6 & 7) != 0)
    {
      goto LABEL_14;
    }

    a4 = a3;
    a3 = v6;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CE538(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE5B4()
{
  if (qword_10012C508 != -1)
  {
    sub_1000E269C();
  }

  return qword_10012C500;
}

uint64_t sub_1000CE630(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (sub_10001C4A0(result), *v1 = off_100118688, v1[12] = off_100118750, v1[13] = 0, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, (v1 + 12), 0xAu, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000CE6C8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100118688, *(result + 96) = off_100118750, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 0xAu);
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000CE784(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CE6C8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE798(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000CE6C8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE7AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CE6C8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE7FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A334(a3, a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE814(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A49C(a3, a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE82C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A564(a3, a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE844(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A070(a3, a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE85C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10006A6F8();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE874(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A62C(a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE88C(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_100069E2C(a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE8A4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006A864(a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CE8BC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return nullsub_9(a2);
  }

  __break(0x5516u);
  return result;
}

void sub_1000CE8D4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10006AD20(a2, a3);
  }
}

uint64_t sub_1000CE8F0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_10006AC5C(a2);
  }

  __break(0x5516u);
  return result;
}

void sub_1000CE908(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_19:
    __break(0x550Au);
    return;
  }

  if (a2 != 10 || a5 != 24)
  {
    sub_1000DDEEC(0, 4, "%s:%d wrong lingo (%d) or payload size (%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TDigitalAudio.cpp", 125, a2, a5);
  }

  if (!a4 || (a4 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v7 = *a4;
  if (*a4 > 3u)
  {
    goto LABEL_19;
  }

  if (v7 == 2)
  {
    v8 = *(a4 + 16);
    v9 = *(*a1 + 32);
    v11 = 786434;
    v10 = a1;
  }

  else
  {
    if (v7 != 1)
    {
      sub_1000DDEEC(0, 4, "%s:%d unknown digital audio lingo message %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TDigitalAudio.cpp", 142, *a4);
      return;
    }

    v8 = *(a4 + 16);
    v9 = *(*a1 + 32);
    v10 = a1;
    v11 = 786433;
  }

  v9(v10, v11, v8, 0);
}

void sub_1000CEA60(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000CE908(a1 - 96, a2, 0, a4, a5);
  }
}

uint64_t sub_1000CEA7C()
{
  if (qword_10012C518 != -1)
  {
    sub_1000E26B0();
  }

  return qword_10012C510;
}

uint64_t sub_1000CEAF8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100118810;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0;
    *(result + 8) = 0;
    std::string::assign((result + 16), "");
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 52) = 0;
    *(v1 + 54) = 0;
    sub_100025CA4(v1 + 56, *(v1 + 56));
    if ((*(*v1 + 200))(v1))
    {
      (*(*v1 + 48))(v1, *(v1 + 9));
    }

    return v1;
  }

  return result;
}

void *sub_1000CEBE4(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100118810;
    v2 = result + 7;
    sub_100025BF4(&v2);
    if (*(v1 + 39) < 0)
    {
      operator delete(v1[2]);
    }

    return v1;
  }

  return result;
}

void *sub_1000CEC5C(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000CEBE4(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000CEC70(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000CEBE4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CECB8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (!*(result + 8))
  {
    (*(*result + 32))(result);
    (*(*v1 + 48))(v1, 0);
    (*(*v1 + 168))(v1);
    v2 = *(*v1 + 192);

    return v2(v1);
  }

  return result;
}

uint64_t sub_1000CEDAC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x5513u);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
    (*(*result + 16))(result, &v9);
    std::string::append(&v9, "/preferences.xml");
    v2 = xmlNewDoc("1.0");
    v3 = v2;
    if (v2)
    {
      v4 = xmlNewTextWriterTree(v2, 0, 0);
      xmlTextWriterStartElement(v4, "GymSettings");
      xmlTextWriterWriteFormatElement(v4, "UserCount", "%u", *(v1 + 8));
      xmlTextWriterWriteFormatElement(v4, "CurrentUserIndex", "%u", *(v1 + 9));
      result = xmlTextWriterStartElement(v4, "GymUsers");
      v5 = *(v1 + 56);
      if ((v5 & 7) != 0 || (v6 = *(v1 + 64), (v6 & 7) != 0))
      {
LABEL_12:
        __break(0x5517u);
      }

      else
      {
        while (v5 != v6)
        {
          if (!v5)
          {
            goto LABEL_17;
          }

          v7 = v5;
          if (*(v5 + 23) < 0)
          {
            v7 = *v5;
          }

          result = xmlTextWriterWriteElement(v4, "ScreenName", v7);
          if (v5 >= 0xFFFFFFFFFFFFFFE8)
          {
            goto LABEL_18;
          }

          v5 += 24;
          v6 = *(v1 + 64);
          if ((v6 & 7) != 0)
          {
            goto LABEL_12;
          }
        }
      }

      xmlTextWriterEndElement(v4);
      xmlTextWriterEndElement(v4);
      xmlTextWriterEndDocument(v4);
      xmlFreeTextWriter(v4);
      RootElement = xmlDocGetRootElement(v3);
      sub_1000CEF74(RootElement, &v9);
      xmlFreeDoc(v3);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    return v3 != 0;
  }

  return result;
}

xmlOutputBuffer *sub_1000CEF74(xmlOutputBuffer *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = fopen(v3, "w");
    result = xmlOutputBufferCreateIO(sub_1000D02EC, sub_1000D0334, v4, 0);
    if (result)
    {
      if ((v2 & 7) != 0)
      {
        __break(0x5516u);
        return result;
      }

      v5 = result;
      xmlNodeDumpOutput(result, v2->doc, v2, 0, 0, 0);
      v6 = xmlOutputBufferClose(v5);
      v7 = fileno(v4);
      ftruncate(v7, v6);
    }

    return fclose(v4);
  }

  return result;
}

char *sub_1000CF058(char *result, char **a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v4 = __CFADD__(v3, v2);
  if ("TGym::DeserializeGymInformation failed to read userCount\n" != 0 && ".." >= 0xFFFFFFFFFFFFFFFDLL || v4)
  {
LABEL_26:
    __break(0x5513u);
LABEL_27:
    __break(0x5516u);
    return result;
  }

  v5 = &v3[v2];
  if (v2 >= 2)
  {
    v6 = v3;
    do
    {
      result = memchr(v6, 46, v2 - 1);
      if (!result)
      {
        break;
      }

      if (*result == 11822)
      {
        return (result == v5 || result - v3 == -1);
      }

      if (result == -1)
      {
        goto LABEL_26;
      }

      v6 = result + 1;
      v2 = v5 - v6;
    }

    while (v5 - v6 > 1);
  }

  result = v5;
  return (result == v5 || result - v3 == -1);
}

unint64_t sub_1000CF120(unint64_t result)
{
  if (!result)
  {
    goto LABEL_41;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  memset(&v17, 0, sizeof(v17));
  v15 = -1431655766;
  v16 = -1431655766;
  (*(*result + 16))(result, &v17);
  std::string::append(&v17, "/preferences.xml");
  if (sub_1000CB91C(&v17))
  {
    v2 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
    result = xmlParseFile(v2);
    if (result)
    {
      v3 = result;
      if ((result & 7) != 0)
      {
        goto LABEL_41;
      }

      v4 = *(result + 24);
      if (v4)
      {
        if ((v4 & 7) != 0)
        {
          goto LABEL_41;
        }

        if (!strcmp(*(v4 + 16), "GymSettings"))
        {
          if (sub_1000CF3CC(v4, "UserCount", &v16))
          {
            if (sub_1000CF3CC(v4, "CurrentUserIndex", &v15))
            {
              sub_100025CA4(v1 + 56, *(v1 + 56));
              v5 = sub_1000D713C(v4, "GymUsers");
              if (v5)
              {
                v6 = v5;
                memset(&v14, 170, sizeof(v14));
                sub_100025D20(&v14, "");
                result = sub_1000D713C(v6, "ScreenName");
                if (result)
                {
                  v7 = result;
                  if ((result & 7) == 0)
                  {
LABEL_17:
                    result = strcmp(*(v7 + 16), "ScreenName");
                    if (result)
                    {
LABEL_21:
                      v10 = v7;
                      while ((v10 & 7) == 0)
                      {
                        v11 = *(v10 + 8);
                        if (v11 >= 0x20)
                        {
                          goto LABEL_42;
                        }

                        if (v10 != v7 && v11 == 1)
                        {
                          v7 = v10;
                          goto LABEL_17;
                        }

                        v10 = *(v10 + 48);
                        if (!v10)
                        {
                          goto LABEL_36;
                        }
                      }

                      goto LABEL_41;
                    }

                    v8 = sub_1000D71C4(v7);
                    std::string::assign(&v14, v8);
                    result = sub_1000CF058(v1, &v14.__r_.__value_.__l.__data_);
                    if (result)
                    {
                      v9 = *(v1 + 64);
                      if ((v9 & 7) != 0)
                      {
LABEL_43:
                        __break(0x5517u);
                        return result;
                      }

                      result = sub_1000CF450((v1 + 56), v9, &v14);
                      goto LABEL_21;
                    }

                    syslog(4, "TGym::DeserializeGymInformation userName invalid\n");
                    xmlFreeDoc(v3);
                    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v14.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_32;
                  }

LABEL_41:
                  __break(0x5516u);
LABEL_42:
                  __break(0x550Au);
                  goto LABEL_43;
                }

LABEL_36:
                if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v14.__r_.__value_.__l.__data_);
                }
              }

              v13 = v15;
              *(v1 + 8) = v16;
              *(v1 + 9) = v13;
              xmlFreeDoc(v3);
              v12 = 1;
              goto LABEL_33;
            }

            syslog(4, "TGym::DeserializeGymInformation failed to read userIndex\n");
          }

          else
          {
            syslog(4, "TGym::DeserializeGymInformation failed to read userCount\n");
          }
        }
      }

      xmlFreeDoc(v3);
    }
  }

LABEL_32:
  v12 = 0;
LABEL_33:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v12;
}

uint64_t sub_1000CF3CC(uint64_t a1, xmlChar *a2, uint64_t a3)
{
  result = sub_1000D713C(a1, a2);
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_10;
    }

    v5 = *(result + 24);
    if (!v5)
    {
      return 0;
    }

    if ((v5 & 7) != 0)
    {
LABEL_10:
      __break(0x5516u);
    }

    else
    {
      v6 = *(v5 + 8);
      if (v6 < 0x20)
      {
        if (v6 == 3)
        {
          sscanf(*(v5 + 80), "%u", a3);
          return 1;
        }

        return 0;
      }
    }

    __break(0x550Au);
  }

  return result;
}

unint64_t sub_1000CF450(std::string *a1, const std::string *a2, std::string *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  v4 = a1->__r_.__value_.__r.__words[0];
  if ((a1->__r_.__value_.__r.__words[0] & 7) != 0)
  {
LABEL_31:
    __break(0x5517u);
    goto LABEL_32;
  }

  v5 = a2;
  v6 = __CFADD__(v4, a2 - v4);
  if ((a2 - v4) < 0 != v6)
  {
    goto LABEL_30;
  }

  size = a1->__r_.__value_.__l.__size_;
  v9 = a1->__r_.__value_.__r.__words[2];
  if (size < v9)
  {
    if (a2 == size)
    {
      sub_1000A91B0(a1, a3);
      return v5;
    }

    if (a2 > 0xFFFFFFFFFFFFFFE7)
    {
      goto LABEL_30;
    }

    sub_1000A931C(a1, a2, size, &a2[1]);
    if (v5 > a3 || a1->__r_.__value_.__l.__size_ <= a3)
    {
      goto LABEL_15;
    }

    if (a3 <= 0xFFFFFFFFFFFFFFE7)
    {
      ++a3;
LABEL_15:
      if ((a3 & 7) == 0 && v4 && (v5 & 7) == 0)
      {
        std::string::operator=(v5, a3);
        return v5;
      }

      goto LABEL_29;
    }

LABEL_30:
    __break(0x5513u);
    goto LABEL_31;
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
LABEL_32:
    __break(0x5500u);
LABEL_33:
    sub_1000E1E08();
  }

  if (v13 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_33;
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

std::string *sub_1000CF600(std::string *result, std::string *this)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    std::string::assign(this, qword_10012C670);

    return std::string::append(this, "/Trainer/Workouts/Empeds");
  }

  return result;
}

void sub_1000CF660(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_31;
  }

  memset(&v12, 0, sizeof(v12));
  memset(v11, 170, sizeof(v11));
  sub_100025D20(v11, "NewUser");
  (*(*a1 + 16))(a1, &v12);
  std::string::append(&v12, "/NewUser");
  if (sub_1000CB91C(&v12))
  {
    goto LABEL_22;
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  memset(__p, 170, sizeof(__p));
  if (size >= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_34;
  }

  v3 = __p;
  sub_1000B2A20(__p, size + 7);
  if (SHIBYTE(__p[2]) < 0)
  {
    v3 = __p[0];
  }

  if (size)
  {
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v12;
    }

    else
    {
      v4 = v12.__r_.__value_.__r.__words[0];
    }

    memmove(v3, v4, size);
  }

  if (__CFADD__(v3, size) || (v5 = v3 + size, *(v5 + 3) = 1953719668, *v5 = 1952541743, v3 + size > 0xFFFFFFFFFFFFFFF8) || (v5[7] = 0, v5 == -8))
  {
    __break(0x5513u);
LABEL_31:
    __break(0x5516u);
    goto LABEL_32;
  }

  v6 = sub_1000CB844(__p);
  v7 = v6;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_25;
    }
  }

  else if (v6)
  {
    goto LABEL_25;
  }

LABEL_22:
  v8 = *(a1 + 8);
  if (v8 == 255)
  {
LABEL_32:
    __break(0x5507u);
    goto LABEL_33;
  }

  *(a1 + 8) = v8 + 1;
  std::string::assign((a1 + 16), "NewUser");
  v9 = *(a1 + 56);
  if ((v9 & 7) != 0)
  {
LABEL_33:
    __break(0x5517u);
LABEL_34:
    __break(0x5500u);
    return;
  }

  sub_1000CF450((a1 + 56), v9, (a1 + 16));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 54) = 0;
  *(a1 + 9) = 0;
  (*(*a1 + 168))(a1);
LABEL_25:
  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1000CF884(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CF89C(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (*(result + 8) <= a2)
  {
    return 0;
  }

  else
  {
    *(result + 55) = *(result + 9);
    *(result + 9) = a2;
    v3 = sub_100023B20((result + 56), a2);
    std::string::operator=((v2 + 16), v3);
    result = (*(*v2 + 176))(v2);
    if (result)
    {
      (*(*v2 + 192))(v2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000CF95C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 9);
  }

  __break(0x5516u);
  return result;
}

void sub_1000CF974(uint64_t a1, std::string *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*a1 + 16))(a1);
    std::operator+<char>();
    if ((v6 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v6 & 0x80u) == 0)
    {
      v4 = v6;
    }

    else
    {
      v4 = __p[1];
    }

    std::string::append(a2, v3, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1000CFA24(uint64_t a1, std::string *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_29;
  }

  (*(*a1 + 16))(a1);
  std::operator+<char>();
  if ((v10 & 0x80u) == 0)
  {
    v3 = v10;
  }

  else
  {
    v3 = v9[1];
  }

  memset(__p, 170, sizeof(__p));
  if (v3 >= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_30;
  }

  v4 = __p;
  sub_1000B2A20(__p, v3 + 7);
  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[0];
  }

  if (v3)
  {
    if ((v10 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = v9[0];
    }

    memmove(v4, v5, v3);
  }

  if (__CFADD__(v4, v3) || (v6 = v4 + v3, *(v6 + 3) = 1953719668, *v6 = 1952541743, v4 + v3 > 0xFFFFFFFFFFFFFFF8) || (v6[7] = 0, v6 == -8))
  {
    __break(0x5513u);
LABEL_29:
    __break(0x5516u);
LABEL_30:
    __break(0x5500u);
    return;
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v8 = HIBYTE(__p[2]);
  }

  else
  {
    v8 = __p[1];
  }

  std::string::append(a2, v7, v8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

dirent *sub_1000CFB90(dirent *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    (*(result->d_ino + 72))(result, __p);
    if (sub_1000CB91C(__p))
    {
      if (v5 >= 0)
      {
        v1 = __p;
      }

      else
      {
        v1 = __p[0];
      }

      v2 = opendir(v1);
      do
      {
        result = readdir(v2);
        v3 = result != 0;
        if (!result)
        {
          break;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_16;
        }
      }

      while (result->d_type == 4);
      closedir(v2);
    }

    else
    {
      v3 = 0;
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    return v3;
  }

  return result;
}

std::string *sub_1000CFC68@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  if (result && (result & 7) == 0 && a2)
  {
    return std::string::basic_string(a2, &result->__r_.__value_.__r.__words[2]);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CFC88(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 44);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000CFCAC(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    *(result + 44) = a2;
    return (*(*result + 168))();
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CFCF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 40);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000CFD14(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    *(result + 40) = a2;
    return (*(*result + 168))();
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000CFD58(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 52);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CFD70(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(result + 52) != a2)
  {
    *(result + 52) = a2;
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_1000CFDB8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 54);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000CFDD0(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 54) = a2;
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_1000CFE08(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 48);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

xmlDoc *sub_1000CFE2C(xmlDoc *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_16;
  }

  memset(&v8, 0, sizeof(v8));
  (*(result->_private + 8))(result, &v8);
  if (!sub_1000CB91C(&v8))
  {
    v3 = 0;
    goto LABEL_12;
  }

  std::string::append(&v8, "/preferences.xml");
  v2 = xmlNewDoc("1.0");
  v3 = v2;
  if (v2)
  {
    v4 = xmlNewTextWriterTree(v2, 0, 0);
    xmlTextWriterStartElement(v4, "GymUserSettings");
    p_name = &v1->name;
    if (SHIBYTE(v1->last) < 0)
    {
      p_name = *p_name;
    }

    xmlTextWriterWriteElement(v4, "UserID", p_name);
    LOWORD(v6) = WORD2(v1->next);
    xmlTextWriterWriteFormatElement(v4, "Weight", "%.2f", (v6 * 0.1));
    result = xmlTextWriterWriteFormatElement(v4, "Age", "%u", BYTE6(v1->next));
    if (LODWORD(v1->parent) < 4)
    {
      result = xmlTextWriterWriteFormatElement(v4, "Gender", "%u", LODWORD(v1->parent));
      if (HIDWORD(v1->parent) <= 3)
      {
        result = xmlTextWriterWriteFormatElement(v4, "Units", "%u", HIDWORD(v1->parent));
        if (LODWORD(v1->next) <= 3)
        {
          xmlTextWriterWriteFormatElement(v4, "RecordingPref", "%u", LODWORD(v1->next));
          xmlTextWriterEndElement(v4);
          xmlTextWriterEndElement(v4);
          xmlTextWriterEndDocument(v4);
          xmlFreeTextWriter(v4);
          RootElement = xmlDocGetRootElement(v3);
          sub_1000CEF74(RootElement, &v8);
          xmlFreeDoc(v3);
          v3 = 1;
          goto LABEL_12;
        }
      }
    }

LABEL_16:
    __break(0x550Au);
    return result;
  }

LABEL_12:
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v3;
}

uint64_t sub_1000D0038(uint64_t result)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  memset(&v13, 0, sizeof(v13));
  v11 = -1431655766;
  v12 = NAN;
  (*(*result + 64))(result, &v13);
  std::string::append(&v13, "/preferences.xml");
  if (!sub_1000CB91C(&v13))
  {
    goto LABEL_12;
  }

  v2 = (v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v13 : v13.__r_.__value_.__r.__words[0];
  result = xmlParseFile(v2);
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  v4 = *(result + 24);
  if (v4)
  {
    if ((v4 & 7) == 0)
    {
      if (strcmp(*(v4 + 16), "GymUserSettings"))
      {
        goto LABEL_12;
      }

      v6 = sub_1000D713C(v4, "UserID");
      if (v6)
      {
        v7 = sub_1000D71C4(v6);
        std::string::assign((v1 + 16), v7);
        if ((sub_1000CF058(v1, (v1 + 16)) & 1) == 0)
        {
          syslog(4, "TGym::DeserializeCurrentGymUserInformation userID invalid\n");
          v5 = 0;
LABEL_37:
          xmlFreeDoc(v3);
          goto LABEL_13;
        }
      }

      result = sub_1000D713C(v4, "Weight");
      if (!result)
      {
        goto LABEL_27;
      }

      if ((result & 7) == 0)
      {
        v8 = *(result + 24);
        if (!v8)
        {
          goto LABEL_27;
        }

        if ((v8 & 7) == 0)
        {
          v9 = *(v8 + 8);
          if (v9 < 0x20)
          {
            if (v9 == 3)
            {
              result = sscanf(*(v8 + 80), "%f", &v12);
              v10 = v12 * 10.0;
              if (v10 > -1.0 && v10 < 65536.0)
              {
                *(v1 + 52) = v10;
                goto LABEL_27;
              }

LABEL_40:
              __break(0x5505u);
              return result;
            }

LABEL_27:
            if (sub_1000CF3CC(v4, "Age", &v11))
            {
              *(v1 + 54) = v11;
            }

            if (sub_1000CF3CC(v4, "Gender", &v11))
            {
              *(v1 + 40) = v11;
            }

            if (sub_1000CF3CC(v4, "Units", &v11))
            {
              *(v1 + 44) = v11;
            }

            if (sub_1000CF3CC(v4, "RecordingPref", &v11))
            {
              *(v1 + 48) = v11;
            }

            v5 = 1;
            goto LABEL_37;
          }

LABEL_39:
          __break(0x550Au);
          goto LABEL_40;
        }
      }
    }

LABEL_38:
    __break(0x5516u);
    goto LABEL_39;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1000D02A8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0 || (v1 = sub_1000154F0()) == 0 || (v1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    sub_100018318(v1);
  }
}

uint64_t sub_1000D02EC(FILE *__stream, void *__ptr, uint64_t a3)
{
  if (!__stream)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a3;
  if (fwrite(__ptr, 1uLL, a3, __stream) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t sub_1000D0334(FILE *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  fflush(a1);
  return 0;
}

uint64_t sub_1000D0360()
{
  if (qword_10012C528 != -1)
  {
    sub_1000E26C4();
  }

  return qword_10012C520;
}

uint64_t sub_1000D03DC(uint64_t result)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_6;
  }

  sub_10001C4A0(result);
  *v1 = off_100118958;
  *(v1 + 96) = off_100118B28;
  *(v1 + 104) = 0;
  *(v1 + 122) = 0;
  *(v1 + 124) = 0;
  *(v1 + 356) = 0;
  pthread_mutex_init((v1 + 360), 0);
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v1 + 96, 0, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000D048C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100118958, *(result + 96) = off_100118B28, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 0);
    pthread_mutex_destroy((v1 + 360));
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000D0550(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D048C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0564(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000D048C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0578(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D048C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000D05C8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = v1;
  v5 = v1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v1;
  v8 = v1;
  v6 = v1;
  v3 = *(a1 + 112);
  WORD1(v4) = 0;
  *(&v4 + 1) = 0x200000000;
  LODWORD(v5) = 1;
  return sub_1000858FC(&v3) == 0;
}

uint64_t sub_1000D0668(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v2 = *(v1 + 112);
    pthread_mutex_unlock((v1 + 360));
    return v2;
  }

  return result;
}

uint64_t sub_1000D06B0(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *a2 = *(v3 + 120);
    *a3 = *(v3 + 121);

    return pthread_mutex_unlock((v3 + 360));
  }

  return result;
}

BOOL sub_1000D071C(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    __break(0x550Au);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v2;
  v6 = v2;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v8 = v2;
  v9 = v2;
  v7 = v2;
  v4 = *(a1 + 112);
  WORD1(v5) = 0;
  *(&v5 + 1) = 0x500000000;
  if (a2 >= 8)
  {
    goto LABEL_6;
  }

  LODWORD(v6) = a2;
  return sub_1000858FC(&v4) == 0;
}

uint64_t sub_1000D07C4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0804(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v2 = *(v1 + 122);
    pthread_mutex_unlock((v1 + 360));
    return v2;
  }

  return result;
}

uint64_t sub_1000D084C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D088C(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *a2 = *(v3 + 125);
    *a3 = *(v3 + 126);

    return pthread_mutex_unlock((v3 + 360));
  }

  return result;
}

uint64_t sub_1000D08F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0938(uint64_t result, unsigned int *a2, _BYTE *a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 360));
  v6 = *(v3 + 128);
  if (v6 >= 8)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  *a2 = v6;
  *a3 = *(v3 + 132);

  return pthread_mutex_unlock((v3 + 360));
}

uint64_t sub_1000D09B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D09F0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v2 = *(v1 + 133);
    pthread_mutex_unlock((v1 + 360));
    return v2;
  }

  return result;
}

uint64_t sub_1000D0A38(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 4);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0A78(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (a2)
  {
    pthread_mutex_lock((result + 360));
    v4 = *(v2 + 212);
    *a2 = *(v2 + 196);
    a2[1] = v4;

    return pthread_mutex_unlock((v2 + 360));
  }

  return result;
}

uint64_t sub_1000D0AE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 5);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0B24(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (a2)
  {
    pthread_mutex_lock((result + 360));
    v4 = *(v2 + 244);
    v5 = *(v2 + 276);
    v6 = *(v2 + 228);
    a2[2] = *(v2 + 260);
    a2[3] = v5;
    *a2 = v6;
    a2[1] = v4;

    return pthread_mutex_unlock((v2 + 360));
  }

  return result;
}

uint64_t sub_1000D0B9C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 312))(result, 6);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D0BDC(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (a2)
  {
    pthread_mutex_lock((result + 360));
    v4 = *(v2 + 340);
    v6 = *(v2 + 292);
    v5 = *(v2 + 308);
    a2[2] = *(v2 + 324);
    a2[3] = v4;
    *a2 = v6;
    a2[1] = v5;

    return pthread_mutex_lock((v2 + 360));
  }

  return result;
}

uint64_t sub_1000D0C50(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v2 = *(v1 + 356);
    pthread_mutex_unlock((v1 + 360));
    return v2;
  }

  return result;
}

BOOL sub_1000D0C98(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v2;
  v6 = v2;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v8 = v2;
  v9 = v2;
  v7 = v2;
  v4 = *(a1 + 112);
  WORD1(v5) = 0;
  *(&v5 + 1) = 0x700000000;
  LODWORD(v6) = 7;
  BYTE11(v6) = a2;
  return sub_1000858FC(&v4) == 0;
}

uint64_t sub_1000D0D3C(uint64_t result, _BYTE *a2, _DWORD *a3, _WORD *a4, _BYTE *a5)
{
  if (!result || (v5 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *a2 = *(v5 + 134);
    *a4 = *(v5 + 140);
    *a5 = *(v5 + 142);
    *a3 = *(v5 + 136);

    return pthread_mutex_unlock((v5 + 360));
  }

  return result;
}

BOOL sub_1000D0DC8(uint64_t a1, char a2, int a3, __int16 a4, char a5, _OWORD *a6)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v6;
  *v10 = v6;
  *&v10[16] = v6;
  v11 = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  v8 = *(a1 + 112);
  WORD1(v9) = 0;
  *(&v9 + 1) = 0x900000000;
  v10[11] = a2;
  *&v10[8] = a4;
  v10[10] = a5;
  *v10 = 7;
  *&v10[4] = a3;
  *&v10[12] = *a6;
  return sub_1000858FC(&v8) == 0;
}

BOOL sub_1000D0E7C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = v1;
  v5 = v1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v1;
  v8 = v1;
  v6 = v1;
  v3 = *(a1 + 112);
  WORD1(v4) = 0;
  *(&v4 + 1) = 0xA00000000;
  LODWORD(v5) = 7;
  return sub_1000858FC(&v3) == 0;
}

uint64_t sub_1000D0F1C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v2 = *(v1 + 160);
    pthread_mutex_unlock((v1 + 360));
    return v2;
  }

  return result;
}

BOOL sub_1000D0F64(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v2;
  v6 = v2;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v8 = v2;
  v9 = v2;
  v7 = v2;
  v4 = *(a1 + 112);
  WORD1(v5) = 0;
  *(&v5 + 1) = 0xC00000000;
  LODWORD(v6) = 7;
  DWORD1(v6) = a2;
  return sub_1000858FC(&v4) == 0;
}

BOOL sub_1000D1004(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = v1;
  v5 = v1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v1;
  v8 = v1;
  v6 = v1;
  v3 = *(a1 + 112);
  WORD1(v4) = 0;
  *(&v4 + 1) = 0xD00000000;
  LODWORD(v5) = 7;
  return sub_1000858FC(&v3) == 0;
}

uint64_t sub_1000D10A4(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = a2;
    pthread_mutex_lock((result + 32));
    sub_10001C6E0((v2 + 8), &v3);
    pthread_mutex_unlock((v2 + 32));
    return 1;
  }

  return result;
}

BOOL sub_1000D1100(_BOOL8 result, uint64_t a2)
{
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2;
    pthread_mutex_lock((result + 32));
    v3 = sub_10001C900(v2 + 8, &v4);
    if (v2 + 16 != v3)
    {
      sub_1000083F0((v2 + 8), v3);
    }

    pthread_mutex_unlock((v2 + 32));
    return v2 + 16 != v3;
  }

  return result;
}

uint64_t sub_1000D1188(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D119C(uint64_t result)
{
  if (((result - 96) & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D11B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3 == 15)
  {
    if (a2 <= 0x1F)
    {
      return (*(*result + 32))(result, 655365, a2, 15);
    }
  }

  else if (a3)
  {
    if (a2 <= 0x1F)
    {
      return (*(*result + 32))(result, 655362, a2, a3);
    }
  }

  else if (a2 < 0x20)
  {
    return (*(*result + 32))(result, 655361, a2, 0);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D1290(uint64_t result, unsigned int a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 360));
  if (a2 >= 8)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  *(v3 + 128) = a2;
  *(v3 + 132) = a3;
  pthread_mutex_unlock((v3 + 360));
  v6 = *(*v3 + 48);

  return v6(v3, 655370, 0);
}

uint64_t sub_1000D1334(uint64_t result, char a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *(v2 + 133) = a2;
    pthread_mutex_unlock((v2 + 360));
    v4 = *(*v2 + 48);

    return v4(v2, 655371, 0);
  }

  return result;
}

uint64_t sub_1000D13BC(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v4 = a2[1];
    *(v2 + 196) = *a2;
    *(v2 + 212) = v4;
    pthread_mutex_unlock((v2 + 360));
    v5 = *(*v2 + 48);

    return v5(v2, 655375, 0);
  }

  return result;
}

uint64_t sub_1000D144C(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v4 = a2[2];
    v5 = a2[3];
    v6 = a2[1];
    *(v2 + 228) = *a2;
    *(v2 + 260) = v4;
    *(v2 + 276) = v5;
    *(v2 + 244) = v6;
    pthread_mutex_unlock((v2 + 360));
    v7 = *(*v2 + 48);

    return v7(v2, 655376, 0);
  }

  return result;
}

uint64_t sub_1000D14E8(uint64_t result, __int128 *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v4 = a2[3];
    v6 = *a2;
    v5 = a2[1];
    *(v2 + 324) = a2[2];
    *(v2 + 340) = v4;
    *(v2 + 292) = v6;
    *(v2 + 308) = v5;
    pthread_mutex_unlock((v2 + 360));
    v7 = *(*v2 + 48);

    return v7(v2, 655377, 0);
  }

  return result;
}

uint64_t sub_1000D1580(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v4;
  v8 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  v9 = v4;
  v6 = *(a1 + 112);
  WORD1(v7) = 0;
  *(&v7 + 1) = &_mh_execute_header;
  DWORD1(v8) = 17;
  BYTE8(v8) = 0;
  pthread_mutex_lock((a1 + 360));
  *(a1 + 356) = a2;
  pthread_mutex_unlock((a1 + 360));
  (*(*a1 + 48))(a1, 655378, 0);
  return sub_1000858FC(&v6);
}

void sub_1000D1674(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    return;
  }

  v3 = malloc_type_malloc(0x60uLL, 0x1020040B9ED3D04uLL);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if ((v3 & 7) != 0 || (*v3 = *(a1 + 112), *(v3 + 5) = 0, *(v3 + 2) = 0x1400000000, *(v3 + 7) = 0, (v5 = sub_100048620()) == 0) || (v5 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return;
  }

  v4[32] = (*(*v5 + 208))(v5);
  sub_1000858FC(v4);

  free(v4);
}

uint64_t sub_1000D174C(uint64_t result, char a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *(v3 + 120) = a2;
    *(v3 + 121) = a3;
    pthread_mutex_unlock((v3 + 360));
    v6 = *(*v3 + 48);

    return v6(v3, 655367, 0);
  }

  return result;
}

uint64_t sub_1000D17E4(uint64_t result, char a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *(v3 + 125) = a2;
    *(v3 + 126) = a3;
    pthread_mutex_unlock((v3 + 360));
    v6 = *(*v3 + 48);

    return v6(v3, 655369, 0);
  }

  return result;
}

uint64_t sub_1000D187C(uint64_t a1, __int16 a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v4;
  v8 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  v9 = v4;
  v6 = *(a1 + 112);
  WORD1(v7) = 0;
  *(&v7 + 1) = &_mh_execute_header;
  DWORD1(v8) = 4;
  BYTE8(v8) = 0;
  pthread_mutex_lock((a1 + 360));
  *(a1 + 122) = a2;
  pthread_mutex_unlock((a1 + 360));
  (*(*a1 + 48))(a1, 655368, 0);
  return sub_1000858FC(&v6);
}

uint64_t sub_1000D1970(uint64_t result, char a2, int a3, __int16 a4, char a5)
{
  if (!result || (v5 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *(v5 + 134) = a2;
    *(v5 + 136) = a3;
    *(v5 + 140) = a4;
    *(v5 + 142) = a5;
    pthread_mutex_unlock((v5 + 360));
    v10 = *(*v5 + 48);

    return v10(v5, 655372, 0);
  }

  return result;
}

uint64_t sub_1000D1A20(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    *(v2 + 160) = a2;
    pthread_mutex_unlock((v2 + 360));
    v4 = *(*v2 + 48);

    return v4(v2, 655373, 0);
  }

  return result;
}

uint64_t sub_1000D1AA8(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v4 = a2[1];
    *(v2 + 164) = *a2;
    *(v2 + 180) = v4;
    pthread_mutex_unlock((v2 + 360));
    v5 = *(*v2 + 48);

    return v5(v2, 655374, 0);
  }

  return result;
}

uint64_t sub_1000D1B38(uint64_t result, int a2, unsigned int a3, uint64_t a4, int a5)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_71;
  }

  if (a2)
  {
    return result;
  }

  if (!a3)
  {
    if (a5 != 48)
    {
      return result;
    }

    if (a4 && (a4 & 7) == 0)
    {
      if (*a4 <= 0x1Fu)
      {
        if (*a4 != 9)
        {
          return result;
        }

        v9 = *(result + 124);
        if (v9 <= 1)
        {
          if (v9)
          {
            goto LABEL_27;
          }

          return result;
        }
      }

      goto LABEL_71;
    }

LABEL_72:
    __break(0x5516u);
    return result;
  }

  if (a3 > 2 || (a5 & 0xFFFFFFBF) != 0x20)
  {
    return result;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_72;
  }

  *(result + 112) = *a4;
  v5 = *(a4 + 8);
  if (v5 != 44)
  {
    if (v5 != 49)
    {
      return result;
    }

    v6 = *(a4 + 16);
    if (v6 <= 1)
    {
      if (v6 || *(a4 + 24))
      {
        return result;
      }

      v7 = *(a4 + 20);
      if (v7 <= 7)
      {
        if (v7 <= 1)
        {
          if (v7)
          {
            *(result + 124) = 1;
            v8 = *(*result + 32);
            return v8();
          }

LABEL_27:
          *(result + 124) = 0;
          v10 = *(result + 122);
          v8 = *(*result + 32);
          return v8();
        }

        if (v7 == 2)
        {
          v8 = *(*result + 32);
          return v8();
        }

        if (v7 == 3)
        {
          v8 = *(*result + 32);
          return v8();
        }

        return result;
      }
    }

    goto LABEL_71;
  }

  v11 = *(a4 + 20);
  if (v11 > 0x1F)
  {
    goto LABEL_71;
  }

  if (v11 <= 7)
  {
    if (v11 <= 3)
    {
      if (v11)
      {
        if (v11 == 3)
        {
          return (*(*result + 328))(result, *(a4 + 28), *(a4 + 29));
        }

        return result;
      }

      if (*(a4 + 28) <= 0x1Fu)
      {
        v13 = *(a4 + 32);
        return (*(*result + 320))();
      }

      goto LABEL_71;
    }

    if (v11 == 4)
    {
      return (*(*result + 344))(result, *(a4 + 28));
    }

    if (v11 != 6)
    {
      return result;
    }

    v12 = *(a4 + 24);
    if (v12 > 7)
    {
      goto LABEL_71;
    }

    if (v12 > 2)
    {
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          return sub_1000D144C(result, (a4 + 28));
        }

        else if (v12 == 6)
        {
          return sub_1000D14E8(result, (a4 + 28));
        }
      }

      else if (v12 == 3)
      {
        return sub_1000D1334(result, *(a4 + 28));
      }

      else
      {
        return sub_1000D13BC(result, (a4 + 28));
      }

      return result;
    }

    if (!v12)
    {
      return (*(*result + 344))(result, *(a4 + 28));
    }

    if (v12 == 1)
    {
      return (*(*result + 336))(result, *(a4 + 28), *(a4 + 29));
    }

    v14 = *(a4 + 28);
    if (v14 <= 7)
    {
      return sub_1000D1290(result, v14, *(a4 + 32));
    }

LABEL_71:
    __break(0x550Au);
    goto LABEL_72;
  }

  if (v11 <= 14)
  {
    if (v11 == 8)
    {
      return (*(*result + 368))(result, *(a4 + 35), *(a4 + 28), *(a4 + 32), *(a4 + 34));
    }

    if (v11 == 11)
    {
      return (*(*result + 376))(result, *(a4 + 28));
    }

    return result;
  }

  switch(v11)
  {
    case 15:
      return (*(*result + 384))(result, a4 + 28);
    case 17:
      return (*(*result + 416))(result, *(a4 + 28));
    case 19:
      if (*(a4 + 28) <= 1u)
      {
        return (*(*result + 424))(result, *(a4 + 28));
      }

      goto LABEL_71;
  }

  return result;
}

uint64_t sub_1000D1FA4(uint64_t result, int a2, unsigned int a3, uint64_t a4, int a5)
{
  if ((a2 + 32) < 0x40)
  {
    return sub_1000D1B38(result - 96, a2, a3, a4, a5);
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000D1FBC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = v1;
  v5 = v1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v1;
  v8 = v1;
  v6 = v1;
  v3 = *(a1 + 112);
  WORD1(v4) = 0;
  *(&v4 + 1) = 0xE00000000;
  LODWORD(v5) = 7;
  return sub_1000858FC(&v3) == 0;
}

uint64_t sub_1000D205C(uint64_t result, _OWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 360));
    v4 = *(v2 + 180);
    *a2 = *(v2 + 164);
    a2[1] = v4;

    return pthread_mutex_unlock((v2 + 360));
  }

  return result;
}

BOOL sub_1000D20B8(uint64_t a1, _OWORD *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  *v8 = v2;
  *&v8[16] = v2;
  *&v8[32] = v2;
  v9 = v2;
  v7 = 0x1000000000;
  v3 = a2[1];
  *&v8[4] = *a2;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(a1 + 112);
  WORD1(v6) = 0;
  *v8 = 7;
  *&v8[20] = v3;
  return sub_1000858FC(&v5) == 0;
}

uint64_t sub_1000D2168(int a1, int a2)
{
  v7 = -86;
  result = sub_1000CC7A0();
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  result = sub_1000CD5A8(result, a1, 0xFu, &v7);
  if (result)
  {
    if ((result & 7) == 0)
    {
      v5 = **result;
    }

    goto LABEL_11;
  }

  if (v7 < 2u)
  {
    v6 = 0;
    if (v7)
    {
      if (a2)
      {
        operator new();
      }
    }

    return v6;
  }

LABEL_12:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000D22B8(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_8;
  }

  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  sub_10001C4A0(result);
  *v2 = off_100118BA8;
  *(v2 + 96) = off_100118D88;
  *(v2 + 104) = 0;
  *(v2 + 112) = a2;
  *(v2 + 116) = 0;
  *(v2 + 120) = 0;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 176) = 0;
  *(v2 + 192) = 0;
  *(v2 + 208) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v2 + 244) = 0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0;
  *(v2 + 296) = 0;
  *(v2 + 320) = 0;
  *(v2 + 324) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 340) = 0;
  *(v2 + 346) = 0;
  *(v2 + 352) = 0;
  *(v2 + 312) = 0;
  v4 = sub_1000CD4A4(a2);
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0 || (sub_100060128(result, v2 + 96, 0xEu, v4), (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v2 + 96, 0, v4);
    sub_1000D23FC(v2);
    return v2;
  }

  return result;
}

void sub_1000D23FC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_21;
  }

  v2 = sub_1000CD4A4(*(a1 + 112));
  *(a1 + 116) = 1;
  v3 = *(a1 + 120);
  if (v3 >= 2)
  {
    goto LABEL_20;
  }

  v4 = v2;
  if ((v3 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevCaps(System)\n", *(a1 + 112));
    v8 = v4;
    v9 = 0;
    goto LABEL_15;
  }

  v5 = *(a1 + 136);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 144);
    if (v6 <= 1)
    {
      if ((v6 & 1) == 0)
      {
        sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevCaps(NmeaGps)\n", *(a1 + 112));
        v8 = v4;
        v9 = 1;
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_20:
    __break(0x550Au);
LABEL_21:
    __break(0x5516u);
    return;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
LABEL_11:

    sub_1000D2870(a1);
    return;
  }

  v7 = *(a1 + 160);
  if (v7 > 1)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    goto LABEL_11;
  }

  sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevCaps(LocAssist)\n", *(a1 + 112));
  v8 = v4;
  v9 = 2;
LABEL_15:

  sub_10008EE04(v8, v9);
}

uint64_t sub_1000D2530(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100118BA8, *(result + 96) = off_100118D88, (result = sub_10005FC6C()) == 0) || (result & 7) != 0 || (sub_100060370(result, v1 + 96, 0), (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 0xEu);
    free(*(v1 + 232));
    free(*(v1 + 248));
    free(*(v1 + 312));
    free(*(v1 + 328));
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000D2624(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D2530(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D2638(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000D2530(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D264C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D2530(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000D269C(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(a1 + 116) = 0;
    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 176) = 0;
    *(a1 + 192) = 0;
    *(a1 + 208) = 0;
    *(a1 + 224) = 0;
    free(*(a1 + 232));
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 244) = 0;
    free(*(a1 + 248));
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 260) = 0;
    free(*(a1 + 312));
    *(a1 + 312) = 0;
    *(a1 + 296) = 0;
    *(a1 + 320) = 0;
    *(a1 + 324) = 0;
    free(*(a1 + 328));
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 340) = 0;
    *(a1 + 346) = 0;
    *(a1 + 352) = 0;
    if (a2)
    {

      sub_1000D23FC(a1);
    }
  }
}

_DWORD *sub_1000D2770(_DWORD *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result[60] = 132;
    v2 = malloc_type_malloc(0x84uLL, 0x100004077774924uLL);
    *(v1 + 29) = v2;
    if (!v2)
    {
      v1[60] = 0;
    }

    v1[64] = 132;
    result = malloc_type_malloc(0x84uLL, 0x100004077774924uLL);
    *(v1 + 31) = result;
    if (!result)
    {
      v1[64] = 0;
    }
  }

  return result;
}

_DWORD *sub_1000D27F4(_DWORD *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result[80] = 132;
    v2 = malloc_type_malloc(0x84uLL, 0x760FFDBFuLL);
    *(v1 + 39) = v2;
    if (!v2)
    {
      v1[80] = 0;
    }

    v1[84] = 132;
    result = malloc_type_malloc(0x84uLL, 0x100004077774924uLL);
    *(v1 + 41) = result;
    if (!result)
    {
      v1[84] = 0;
    }
  }

  return result;
}

void sub_1000D2870(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_29;
  }

  v2 = sub_1000CD4A4(*(a1 + 112));
  v3 = *(a1 + 120);
  if (v3 >= 2)
  {
    goto LABEL_28;
  }

  v4 = v2;
  if ((v3 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "%s:%d !fSystemCapsValid\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TLocationDevice_IAP.cpp", 235);
  }

  *(a1 + 116) = 2;
  v5 = *(a1 + 176);
  if (v5 > 1)
  {
    goto LABEL_28;
  }

  if ((v5 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevControl(System)\n", *(a1 + 112));
    v11 = v4;
    v12 = 0;
    goto LABEL_23;
  }

  v6 = *(a1 + 120);
  if (v6 >= 2)
  {
    goto LABEL_28;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 136);
  if ((v7 & 2) != 0)
  {
    v8 = *(a1 + 192);
    if (v8 > 1)
    {
      goto LABEL_28;
    }

    if ((v8 & 1) == 0)
    {
      sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevControl(NmeaGps)\n", *(a1 + 112));
      v11 = v4;
      v12 = 1;
      goto LABEL_23;
    }
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 160);
  if (v9 >= 2)
  {
LABEL_28:
    __break(0x550Au);
LABEL_29:
    __break(0x5516u);
    return;
  }

  if ((v9 & 1) == 0 || (*(a1 + 168) & 1) == 0)
  {
LABEL_19:

    sub_1000D2A00(a1);
    return;
  }

  v10 = *(a1 + 208);
  if (v10 > 1)
  {
    goto LABEL_28;
  }

  if (v10)
  {
    goto LABEL_19;
  }

  sub_1000DDEEC(0, 4, "(0x%08x) location accessory calling GetDevControl(LocAssist)\n", *(a1 + 112));
  v11 = v4;
  v12 = 2;
LABEL_23:

  sub_10008F0E4(v11, v12);
}

uint64_t sub_1000D2A00(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 116) = 3;
    sub_1000DDEEC(0, 4, "(0x%08x) location accessory ready\n", *(result + 112));
    v2 = v1[28];
    v3 = *(*v1 + 32);

    return v3(v1, 983041, v2, 0);
  }

  return result;
}

uint64_t sub_1000D2AA0(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v5 = a2;
  pthread_mutex_lock((result + 32));
  sub_10001C6E0((v2 + 8), &v5);
  result = pthread_mutex_unlock((v2 + 32));
  v4 = *(v2 + 116);
  if (v4 < 8)
  {
    if (v4 != 3)
    {
      return 1;
    }

    if (a2 && (a2 & 7) == 0)
    {
      (*(*a2 + 16))(a2, 983041, *(v2 + 112), 0);
      return 1;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000D2B5C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return *(result + 128) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000D2B94(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F0E4(v1, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D2BD0(uint64_t result, int *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  v2 = *(result + 176);
  if (v2 >= 2)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v2)
  {
    v3 = *(result + 184) & 3;
    if (v3 == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    *a2 = v5;
  }

  return v2 & 1;
}

uint64_t sub_1000D2C20(uint64_t result, unsigned int a2)
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

  v3 = *(result + 176);
  if (v3 >= 2)
  {
LABEL_9:
    __break(0x550Au);
LABEL_10:
    __break(0x5516u);
    return result;
  }

  if (v3)
  {
    if (a2 <= 3)
    {
      sub_1000D2CB0(result, a2);
      v4 = *(v2 + 184);
      v6[0] = 2863311530;
      v6[1] = v4;
      v5 = sub_1000CD4A4(*(v2 + 112));
      return sub_10008F31C(v5, 0, v6) == 0;
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1000D2CB0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v2 = *(result + 184);
  *(result + 184) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  if (a2 >= 4)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if (a2 == 2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if (a2 != 3)
    {
      return result;
    }

    v3 = v2 | 3;
  }

  *(result + 184) = v3;
  return result;
}

uint64_t sub_1000D2CFC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 128) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D2D34(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 128) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D2D6C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 128) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000D2DA4(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F0E4(v1, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D2DE0(uint64_t result, BOOL *a2, BOOL *a3)
{
  if (result && (result & 7) == 0)
  {
    v3 = *(result + 176);
    if (v3 < 2)
    {
      if ((v3 & 1) == 0)
      {
LABEL_7:
        LOBYTE(v5) = 0;
        return v5 & 1;
      }

      v4 = *(result + 184);
      *a2 = (v4 & 4) != 0;
      *a3 = (v4 & 8) != 0;
      v5 = *(result + 176);
      if (v5 <= 1)
      {
        return v5 & 1;
      }
    }

    __break(0x550Au);
    goto LABEL_7;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D2E30(uint64_t result, int a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_12;
  }

  v5 = *(result + 176);
  if (v5 >= 2)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v10[2] = v3;
  v10[3] = v4;
  v6 = 4;
  if (!a2)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!a3)
  {
    v7 = 0;
  }

  v8 = v7 | v6 | *(result + 184) & 0xFFFFFFFFFFFFFFF3;
  *(result + 184) = v8;
  v10[0] = 2863311530;
  v10[1] = v8;
  v9 = sub_1000CD4A4(*(result + 112));
  return sub_10008F31C(v9, 0, v10) == 0;
}

uint64_t sub_1000D2ED0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 136) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D2F08(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 144);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return *(result + 152) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000D2F40(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F0E4(v1, 1u) == 0;
  }

  return result;
}

uint64_t sub_1000D2F7C(uint64_t result, _BYTE *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 192);
    if (v2 < 2)
    {
      if ((v2 & 1) == 0)
      {
LABEL_7:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }

      *a2 = *(result + 200) & 1;
      v3 = *(result + 192);
      if (v3 <= 1)
      {
        return v3 & 1;
      }
    }

    __break(0x550Au);
    goto LABEL_7;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D2FC4(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v4 = *(result + 192);
  if (v4 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7[2] = v2;
  v7[3] = v3;
  v5 = *(result + 200) & 0xFFFFFFFFFFFFFFFELL | a2;
  *(result + 200) = v5;
  v7[0] = 0x1AAAAAAAALL;
  v7[1] = v5;
  v6 = sub_1000CD4A4(*(result + 112));
  return sub_10008F31C(v6, 1u, v7) == 0;
}

BOOL sub_1000D3050(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 1u, 0, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D3094(uint64_t result, char *a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = *(result + 224);
  if (v3 >= 2)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 232);
  if (strlen(v6) >= a3)
  {
    return 0;
  }

  strlcpy(a2, v6, a3);
  return 1;
}

BOOL sub_1000D3120(uint64_t a1, char *__s)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    __break(0x5500u);
  }

  *(a1 + 224) = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = -21846;
  *&v9[6] = v3;
  *&v15[13] = 0xAAAAAAAAAAAAAAAALL;
  v14 = v3;
  *v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = 1;
  *v9 = __s;
  v4 = strlen(__s);
  if (v4 == -1)
  {
    goto LABEL_6;
  }

  *&v9[8] = v4 + 1;
  v5 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v5, 1u, 0, &v7) == 0;
}

BOOL sub_1000D31EC(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 1u, 0x80u, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D3230(uint64_t result, char *a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = *(result + 244);
  if (v3 >= 2)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 248);
  if (strlen(v6) >= a3)
  {
    return 0;
  }

  strlcpy(a2, v6, a3);
  return 1;
}

BOOL sub_1000D32BC(uint64_t a1, char *__s)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_9:
    __break(0x5500u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v11[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v10[16] = v4;
  *v11 = v4;
  v9[4] = v4;
  *v10 = v4;
  v9[2] = v4;
  v9[3] = v4;
  v9[0] = v4;
  v9[1] = v4;
  *(v9 + 2) = 0x8000000001;
  v5 = strlen(__s);
  v6 = (v5 + 1);
  if (v5 == -1)
  {
    goto LABEL_9;
  }

  *&v10[13] = v5 + 1;
  if (v6 > 0x53)
  {
    return 0;
  }

  memcpy((v9 | 0xA), __s, v6);
  v8 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v8, 1u, 0x80u, v9) == 0;
}

uint64_t sub_1000D33A8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 120);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 136) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D33E0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 160);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return *(result + 168) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D3418(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 160);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 168) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D3450(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 160);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 168) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D3488(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 160);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 168) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D34C0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 160);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v1)
  {
    return (*(result + 168) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000D34F8(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F0E4(v1, 2u) == 0;
  }

  return result;
}

uint64_t sub_1000D3534(uint64_t result, int *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v2 = *(result + 208);
  if (v2 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v2)
  {
    *a2 = 0;
    *a2 = *(result + 216) & 1;
  }

  return v2 & 1;
}

uint64_t sub_1000D3570(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v4 = *(result + 208);
  if (v4 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7[2] = v2;
  v7[3] = v3;
  v5 = *(result + 216) & 0xFFFFFFFFFFFFFFFELL | a2 & 1;
  *(result + 216) = v5;
  v7[0] = 0x2AAAAAAAALL;
  v7[1] = v5;
  v6 = sub_1000CD4A4(*(result + 112));
  return sub_10008F31C(v6, 2u, v7) == 0;
}

BOOL sub_1000D35FC(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 2u, 0, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D3640(uint64_t result, _OWORD *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 260);
    if (v2 < 2)
    {
      if ((v2 & 1) == 0)
      {
LABEL_7:
        LOBYTE(v4) = 0;
        return v4 & 1;
      }

      v3 = *(result + 280);
      *a2 = *(result + 264);
      a2[1] = v3;
      v4 = *(result + 260);
      if (v4 <= 1)
      {
        return v4 & 1;
      }
    }

    __break(0x550Au);
    goto LABEL_7;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000D3688(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
  }

  *(a1 + 260) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[13] = 0xAAAAAAAAAAAAAAAALL;
  v15 = v2;
  *v16 = v2;
  v13 = v2;
  v14 = v2;
  v11 = v2;
  v12 = v2;
  v9 = v2;
  v10 = v2;
  *(&v9 + 2) = 2;
  WORD5(v9) = *a2;
  HIDWORD(v9) = *(a2 + 4);
  v3 = *(a2 + 8) * 1000000.0;
  v4 = v3 > -2147483650.0 && v3 < 2147483650.0;
  if (!v4 || ((LODWORD(v10) = v3, v5 = *(a2 + 16) * 1000000.0, v5 > -2147483650.0) ? (v6 = v5 < 2147483650.0) : (v6 = 0), !v6))
  {
    __break(0x5505u);
    goto LABEL_15;
  }

  DWORD1(v10) = v5;
  WORD4(v10) = *(a2 + 24);
  v7 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v7, 2u, 0, &v9) == 0;
}

BOOL sub_1000D37A0(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 2u, 1u, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D37E4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_9;
  }

  v2 = *(result + 296);
  if (v2 >= 2)
  {
LABEL_9:
    __break(0x550Au);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(result + 304);
  if (v3 > *a2)
  {
    return 0;
  }

  *a2 = v3;
  memcpy(*(a2 + 8), *(result + 312), *(result + 304));
  return 1;
}

BOOL sub_1000D3854(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *(a1 + 296) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v5 = v2;
  *&v5[16] = v2;
  *&v11[13] = 0xAAAAAAAAAAAAAAAALL;
  v10 = v2;
  *v11 = v2;
  v8 = v2;
  v9 = v2;
  v6 = v2;
  v7 = v2;
  *&v5[2] = 0x100000002;
  *&v5[18] = *a2;
  *&v5[10] = *(a2 + 8);
  v3 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v3, 2u, 1u, v5) == 0;
}

BOOL sub_1000D3908(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 2u, 2u, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D394C(uint64_t result, char *a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = *(result + 324);
  if (v3 >= 2)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 328);
  if (strlen(v6) >= a3)
  {
    return 0;
  }

  strlcpy(a2, v6, a3);
  return 1;
}

BOOL sub_1000D39D8(uint64_t a1, char *__s)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    __break(0x5500u);
  }

  *(a1 + 324) = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = -21846;
  *&v9[6] = v3;
  *&v15[13] = 0xAAAAAAAAAAAAAAAALL;
  v14 = v3;
  *v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = 0x200000002;
  *v9 = __s;
  v4 = strlen(__s);
  if (v4 == -1)
  {
    goto LABEL_6;
  }

  *&v9[8] = v4 + 1;
  v5 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v5, 2u, 2u, &v7) == 0;
}

BOOL sub_1000D3AA0(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 2u, 3u, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D3AE4(uint64_t result, _DWORD *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 340);
    if (v2 < 2)
    {
      if ((v2 & 1) == 0)
      {
LABEL_7:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }

      *a2 = *(result + 342);
      v3 = *(result + 340);
      if (v3 <= 1)
      {
        return v3 & 1;
      }
    }

    __break(0x550Au);
    goto LABEL_7;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000D3B2C(uint64_t a1, unsigned __int16 *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_8;
  }

  *(a1 + 340) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12[13] = 0xAAAAAAAAAAAAAAAALL;
  v11[6] = v2;
  *v12 = v2;
  v11[4] = v2;
  v11[5] = v2;
  v11[2] = v2;
  v11[3] = v2;
  v11[0] = v2;
  v11[1] = v2;
  *(v11 + 2) = 0x300000002;
  v3 = 3600000 * *a2;
  if (v3 != v3)
  {
    goto LABEL_9;
  }

  v4 = 60000 * *(a2 + 2);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5 || (v7 = 1000 * *(a2 + 3), v5 = __OFADD__(v6, v7), v8 = v6 + v7, v5))
  {
    __break(0x5500u);
LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x550Cu);
  }

  *(v11 + 10) = v8;
  v9 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v9, 2u, 3u, v11) == 0;
}

BOOL sub_1000D3C1C(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = sub_1000CD4A4(*(result + 112));
    return sub_10008F5C4(v1, 2u, 4u, 0) == 0;
  }

  return result;
}

uint64_t sub_1000D3C60(uint64_t result, _DWORD *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = *(result + 346);
    if (v2 < 2)
    {
      if ((v2 & 1) == 0)
      {
LABEL_7:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }

      *a2 = *(result + 348);
      v3 = *(result + 346);
      if (v3 <= 1)
      {
        return v3 & 1;
      }
    }

    __break(0x550Au);
    goto LABEL_7;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000D3CA4(uint64_t a1, unsigned __int16 *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_8;
  }

  *(a1 + 346) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12[13] = 0xAAAAAAAAAAAAAAAALL;
  v11[6] = v2;
  *v12 = v2;
  v11[4] = v2;
  v11[5] = v2;
  v11[2] = v2;
  v11[3] = v2;
  v11[0] = v2;
  v11[1] = v2;
  *(v11 + 2) = 0x400000002;
  v3 = 3600000 * *a2;
  if (v3 != v3)
  {
    goto LABEL_9;
  }

  v4 = 60000 * *(a2 + 2);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5 || (v7 = 1000 * *(a2 + 3), v5 = __OFADD__(v6, v7), v8 = v6 + v7, v5))
  {
    __break(0x5500u);
LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x550Cu);
  }

  *(v11 + 10) = v8;
  v9 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v9, 2u, 4u, v11) == 0;
}

BOOL sub_1000D3D94(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v6[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[6] = v2;
  *v6 = v2;
  v5[4] = v2;
  v5[5] = v2;
  v5[2] = v2;
  v5[3] = v2;
  v5[0] = v2;
  v5[1] = v2;
  *(v5 + 2) = 0x500000002;
  WORD5(v5[0]) = *a2;
  HIDWORD(v5[0]) = *(a2 + 4);
  v3 = sub_1000CD4A4(*(a1 + 112));
  return sub_10008F92C(v3, 2u, 5u, v5) == 0;
}

void sub_1000D3E44(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_117;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_116;
  }

  if (!a2)
  {
    if (!a4 || a3 || a5 != 48)
    {
      return;
    }

    if ((a4 & 7) != 0)
    {
      goto LABEL_117;
    }

    if (*a4 <= 0x1Fu)
    {
      v15 = *a4 - 1;
      if (v15 <= 0xC && ((0x153Fu >> v15) & 1) != 0)
      {

        sub_1000D269C(a1, (0xEC0u >> v15) & 1);
      }

      return;
    }

    goto LABEL_116;
  }

  if (a2 != 14 || a3 || a5 != 152)
  {
    return;
  }

  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_117;
  }

  if (*(a4 + 12) > 0xFFu)
  {
    goto LABEL_116;
  }

  v7 = *(a4 + 12);
  if (v7 <= 3)
  {
    if (*(a4 + 12))
    {
      if (v7 != 2)
      {
        return;
      }

      v16 = *(a4 + 20);
      if (v16 > 3)
      {
        goto LABEL_116;
      }

      if (v16 == 2)
      {
        *(a1 + 168) = *(a4 + 24);
        *(a1 + 160) = 1;
        sub_1000D27F4(a1);
      }

      else if (v16 == 1)
      {
        *(a1 + 152) = *(a4 + 24);
        *(a1 + 144) = 1;
        sub_1000D2770(a1);
      }

      else
      {
        if (v16)
        {
          return;
        }

        *(a1 + 128) = *(a4 + 32);
        *(a1 + 136) = *(a4 + 40);
        *(a1 + 120) = 1;
      }

LABEL_85:

      sub_1000D23FC(a1);
      return;
    }

    if (!*(a4 + 16))
    {
      v30 = *(a1 + 112);
      v14 = *(*a1 + 32);
      goto LABEL_113;
    }

    v20 = *(a1 + 116);
    if (v20 > 7)
    {
      goto LABEL_116;
    }

    if (v20 == 2)
    {
      if (*(a4 + 17) != 3)
      {
        goto LABEL_102;
      }

      v42 = *(a1 + 352);
      v22 = __CFADD__(v42, 1);
      v43 = v42 + 1;
      if (!v22)
      {
        *(a1 + 352) = v43;
        if (v43 <= 4)
        {

          sub_1000D2870(a1);
          return;
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (v20 != 1 || *(a4 + 17) != 1)
      {
        goto LABEL_102;
      }

      v21 = *(a1 + 352);
      v22 = __CFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(a1 + 352) = v23;
        if (v23 <= 4)
        {
          goto LABEL_85;
        }

LABEL_102:
        v44 = *(a1 + 112);
        v45 = *(a4 + 16);
        v14 = *(*a1 + 32);
        goto LABEL_113;
      }
    }

LABEL_118:
    __break(0x5500u);
    goto LABEL_119;
  }

  if (v7 == 4)
  {
    v17 = *(a4 + 20);
    if (v17 <= 3)
    {
      if (v17 == 2)
      {
        *(a1 + 216) = *(a4 + 24);
        *(a1 + 208) = 1;
        v34 = *(a1 + 116);
        if (v34 <= 7)
        {
          if (v34 == 2)
          {
            sub_1000D2870(a1);
          }

          v35 = *(a1 + 112);
          v14 = *(*a1 + 32);
          goto LABEL_113;
        }
      }

      else if (v17 == 1)
      {
        *(a1 + 200) = *(a4 + 24);
        *(a1 + 192) = 1;
        v32 = *(a1 + 116);
        if (v32 <= 7)
        {
          if (v32 == 2)
          {
            sub_1000D2870(a1);
          }

          v33 = *(a1 + 112);
          v14 = *(*a1 + 32);
          goto LABEL_113;
        }
      }

      else
      {
        if (v17)
        {
          return;
        }

        *(a1 + 184) = *(a4 + 24);
        *(a1 + 176) = 1;
        v18 = *(a1 + 116);
        if (v18 <= 7)
        {
          if (v18 == 2)
          {
            sub_1000D2870(a1);
          }

          (*(*a1 + 32))(a1, 983044, *(a1 + 112), 0);
          v19 = *(a1 + 112);
          v14 = *(*a1 + 32);
          goto LABEL_113;
        }
      }
    }

    goto LABEL_116;
  }

  if (v7 != 7 && v7 != 9)
  {
    return;
  }

  v8 = *(a4 + 18);
  if (v8 > 3)
  {
    goto LABEL_116;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      return;
    }

    if (*(a4 + 22) <= 0xFFu)
    {
      if (*(a4 + 22) != 128)
      {
        if (!*(a4 + 22))
        {
          v9 = *(a4 + 34);
          if (v9 > *(a1 + 240))
          {
            v10 = malloc_type_malloc(*(a4 + 34), 0x50F9DA35uLL);
            if (v10)
            {
              v11 = *(a1 + 232);
              *(a1 + 232) = v10;
              *(a1 + 240) = v9;
              free(v11);
            }
          }

          if (v9 <= *(a1 + 240))
          {
            v12 = *(a4 + 26);
            if (v12)
            {
              memcpy(*(a1 + 232), v12, v9);
              *(a1 + 224) = 1;
              v13 = *(a1 + 112);
              v14 = *(*a1 + 32);
LABEL_113:

              v14();
              return;
            }
          }
        }

        return;
      }

      v36 = *(a4 + 109);
      v37 = v36 + 1;
      if (v36 == -1)
      {
        goto LABEL_118;
      }

      if (v37 > *(a1 + 256))
      {
        v38 = malloc_type_malloc((v36 + 1), 0xC095C86uLL);
        if (v38)
        {
          v39 = *(a1 + 248);
          *(a1 + 248) = v38;
          *(a1 + 256) = v37;
          free(v39);
        }
      }

      if (v37 > *(a1 + 240))
      {
        return;
      }

      memcpy(*(a1 + 248), (a4 + 26), v36);
      v40 = *(a1 + 248);
      if (__CFADD__(v40, v36))
      {
LABEL_119:
        __break(0x5513u);
        return;
      }

      if (v40)
      {
        *(v40 + v36) = 0;
        *(a1 + 244) = 1;
        v41 = *(a1 + 112);
        v14 = *(*a1 + 32);
        goto LABEL_113;
      }

      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (*(a4 + 22) > 0xFFu)
  {
LABEL_116:
    __break(0x550Au);
LABEL_117:
    __break(0x5516u);
    goto LABEL_118;
  }

  v24 = *(a4 + 22);
  if (v24 > 2)
  {
    switch(v24)
    {
      case 3u:
        *(a1 + 342) = *(a4 + 26) / 0x36EE80u - 24 * ((2731 * (*(a4 + 26) / 0x36EE80u)) >> 16);
        *(a1 + 344) = *(a4 + 26) / 0xEA60u - 60 * ((71582789 * (*(a4 + 26) / 0xEA60u)) >> 32);
        *(a1 + 345) = *(a4 + 26) / 0x3E8u - 60 * ((71582789 * (*(a4 + 26) / 0x3E8u)) >> 32);
        *(a1 + 340) = 1;
        v47 = *(a1 + 112);
        v14 = *(*a1 + 32);
        break;
      case 4u:
        *(a1 + 348) = *(a4 + 26) / 0x36EE80u - 24 * ((2731 * (*(a4 + 26) / 0x36EE80u)) >> 16);
        *(a1 + 350) = *(a4 + 26) / 0xEA60u - 60 * ((71582789 * (*(a4 + 26) / 0xEA60u)) >> 32);
        *(a1 + 351) = *(a4 + 26) / 0x3E8u - 60 * ((71582789 * (*(a4 + 26) / 0x3E8u)) >> 32);
        *(a1 + 346) = 1;
        v52 = *(a1 + 112);
        v14 = *(*a1 + 32);
        break;
      case 5u:
        v31 = *(a1 + 112);
        v14 = *(*a1 + 32);
        break;
      default:
        return;
    }

    goto LABEL_113;
  }

  if (!*(a4 + 22))
  {
    *(a1 + 264) = *(a4 + 26);
    *(a1 + 268) = *(a4 + 28);
    *(a1 + 272) = *(a4 + 32) / 1000000.0;
    *(a1 + 280) = *(a4 + 36) / 1000000.0;
    *(a1 + 288) = *(a4 + 40);
    *(a1 + 260) = 1;
    v46 = *(a1 + 112);
    v14 = *(*a1 + 32);
    goto LABEL_113;
  }

  if (v24 == 1)
  {
    v48 = *(a4 + 34);
    if (v48 > *(a1 + 320))
    {
      v49 = malloc_type_malloc(*(a4 + 34), 0xBCDA8AC0uLL);
      if (v49)
      {
        v50 = *(a1 + 312);
        *(a1 + 312) = v49;
        *(a1 + 320) = v48;
        free(v50);
      }
    }

    if (v48 <= *(a1 + 320) && *(a4 + 26))
    {
      *(a1 + 304) = v48;
      memcpy(*(a1 + 312), *(a4 + 26), v48);
      *(a1 + 296) = 1;
      v51 = *(a1 + 112);
      v14 = *(*a1 + 32);
      goto LABEL_113;
    }
  }

  else
  {
    v25 = *(a4 + 34);
    if (v25 > *(a1 + 336))
    {
      v26 = malloc_type_malloc(*(a4 + 34), 0xD2597AE6uLL);
      if (v26)
      {
        v27 = *(a1 + 328);
        *(a1 + 328) = v26;
        *(a1 + 336) = v25;
        free(v27);
      }
    }

    if (v25 <= *(a1 + 336))
    {
      v28 = *(a4 + 26);
      if (v28)
      {
        memcpy(*(a1 + 328), v28, v25);
        *(a1 + 324) = 1;
        v29 = *(a1 + 112);
        v14 = *(*a1 + 32);
        goto LABEL_113;
      }
    }
  }
}

void sub_1000D473C(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000D3E44(a1 - 96, a2, a3, a4, a5);
  }
}

uint64_t sub_1000D4754()
{
  if (qword_10012C538 != -1)
  {
    sub_1000E26D8();
  }

  return qword_10012C530;
}

uint64_t sub_1000D47D0(uint64_t result)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_6;
  }

  sub_10001C4A0(result);
  *v1 = off_100118E30;
  *(v1 + 96) = off_100118F28;
  *(v1 + 104) = 0;
  *(v1 + 144) = 0;
  *(v1 + 136) = 0;
  *(v1 + 128) = v1 + 136;
  *(v1 + 152) = 0;
  pthread_mutex_init((v1 + 160), 0);
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v1 + 96, 1u, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000D4888(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100118E30, *(result + 96) = off_100118F28, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 1u);
    pthread_mutex_destroy((v1 + 160));
    sub_1000089F8(v1 + 128);
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000D4954(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D4888(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D4968(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000D4888(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D497C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D4888(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D49CC(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = a2;
    pthread_mutex_lock((result + 32));
    sub_10001C6E0((v2 + 8), &v3);
    pthread_mutex_unlock((v2 + 32));
    return 1;
  }

  return result;
}

BOOL sub_1000D4A28(_BOOL8 result, uint64_t a2)
{
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2;
    pthread_mutex_lock((result + 32));
    v3 = sub_10001C900(v2 + 8, &v4);
    if (v2 + 16 != v3)
    {
      sub_1000083F0((v2 + 8), v3);
    }

    pthread_mutex_unlock((v2 + 32));
    return v2 + 16 != v3;
  }

  return result;
}

uint64_t sub_1000D4AB0(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = 2;
    *(sub_1000D4BE4(result + 128, &v4) + 16) = -1;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 17) = -1;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 20) = 1;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 36) = 0;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 12) = 0;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 8) = 3;
    v4 = 2;
    *sub_1000D4BE4((v2 + 128), &v4) = 2;
    v4 = 2;
    *(sub_1000D4BE4((v2 + 128), &v4) + 4) = 0;
    v2[152] = 1;
    (*(*v2 + 32))(v2, 720897, 2, a2);
    return 1;
  }

  return result;
}

uint64_t sub_1000D4BE4(uint64_t result, unsigned int *a2)
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
  result = sub_1000D5C30(result, &v6, a2);
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
    result = sub_1000D5CE4(v2);
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
    return (v3 + 4);
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000D4CA4(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v7 = a3;
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      *(sub_1000D4BE4(result + 128, &v7) + 16) = -1;
      *(sub_1000D4BE4((v4 + 128), &v7) + 17) = -1;
      *(sub_1000D4BE4((v4 + 128), &v7) + 20) = 0;
      *(sub_1000D4BE4((v4 + 128), &v7) + 36) = 0;
      result = sub_1000D4BE4((v4 + 128), &v7);
      *(result + 12) = 0;
      if (a4 < 0x10)
      {
        result = sub_1000D4BE4((v4 + 128), &v7);
        *(result + 8) = 2 * (a4 - 3 < 2);
        v6 = v7;
        if (v7 <= 0xFF)
        {
          *sub_1000D4BE4((v4 + 128), &v7) = v6;
          result = sub_1000D4BE4((v4 + 128), &v7);
          *(result + 4) = a4;
          v4[152] = 1;
          if (v7 <= 0xFF)
          {
            (*(*v4 + 32))(v4, 720897);
            return 1;
          }
        }
      }

      __break(0x550Au);
    }
  }

  __break(0x5516u);
  return result;
}