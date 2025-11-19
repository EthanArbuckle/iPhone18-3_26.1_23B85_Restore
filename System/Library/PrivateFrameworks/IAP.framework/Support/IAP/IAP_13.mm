uint64_t sub_1000B4204(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = sub_100065198(result);
      if (result)
      {
        if ((result & 7) == 0)
        {
          sub_1000945E0(result, *(v1 + 8));
          sub_1000B7768();
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B42C4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  v3 = *(result + 1192);
  if (!v3)
  {
    return 37;
  }

  if ((v3 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    result = (*(*v3 + 16))(*(result + 1192), 0);
    if (!HIWORD(a3))
    {
      sub_1000B748C();
    }
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_1000B4390(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  if (a2 <= 31)
  {
    if (a2 == 4)
    {
      *(result + 1192) = a4;
      if (!a4)
      {
        sub_1000E1D34();
      }
    }

    else if (a2 == 8)
    {
      *(result + 1192) = 0;
    }

    return 0;
  }

  if (a2 == 32)
  {
    v4 = -1431655766;
    sub_10006770C(result, &v4);
    return 0;
  }

  if (a2 != 0x2000)
  {
    return 0;
  }

  if ((a3 & 7) == 0 && a3)
  {
    if (!*(a3 + 4))
    {
      sub_1000B42C4(result, *(a3 + 8), *(a3 + 16));
    }

    return 0;
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000B4438(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  sub_100064F7C(result, a2, 6);
  *v2 = off_1001169E0;
  *(v2 + 1264) = 0;
  *(v2 + 1268) = 0;
  pthread_mutex_init((v2 + 1192), 0);
  v4 = sub_1000C4254();
  result = sub_10004B1AC();
  *(v2 + 1256) = result;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  (*(*result + 16))(result, v2);
  result = sub_10002BB1C();
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_23;
    }

    result = (*(*result + 344))(result);
    *(v2 + 1265) = result;
  }

  if (v4 && (v4 & 7) == 0)
  {
    v5 = sub_1000945E0(v4, a2);
    if (v5)
    {
      v5 = sub_1000932FC(v4, v5);
      if ((v5 - 1) < 0x1FF || (v5 & 0xF000) == 0xD000)
      {
        *(v2 + 1266) = 1;
      }

      else if ((v5 & 0xFFFFFF00) == 0x200)
      {
        *(v2 + 1267) = 1;
      }
    }

    result = sub_100065198(v5);
    if (result)
    {
      if ((result & 7) == 0)
      {
        sub_1000929D4(result, 6, 109, a2);
        result = *(v2 + 8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            sub_10005B7F8(result, 6u, 0);
            result = *(v2 + 8);
            if (result)
            {
              if ((result & 7) == 0)
              {
                sub_10005B7AC(result, 6u, 0);
                return v2;
              }
            }
          }
        }
      }
    }
  }

LABEL_23:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000B45F0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B4438(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_1000B4604(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  *a1 = off_1001169E0;
  v2 = sub_1000C4254();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  if ((v2 & 7) != 0)
  {
    goto LABEL_15;
  }

  v4 = sub_1000945E0(v2, *(a1 + 8));
  sub_1000929D4(v3, 6, 0, *(a1 + 8));
  do
  {
    v9 = -1;
  }

  while (!sub_10006733C(a1, -1, &v9, 0, 0xFFFFu));
  v5 = sub_10004B1AC();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  if ((v5 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
  }

  else
  {
    (*(*v5 + 24))(v5, a1);
    (*(*v6 + 280))(v6, v4, 1, 0);
    *(a1 + 1268) = 0;
    v7 = *(a1 + 1265);
    if (v7 < 2)
    {
      if ((v7 & 1) == 0)
      {
LABEL_14:
        sub_100092FE4(v3, v4, 6, 0);
        pthread_mutex_destroy((a1 + 1192));
        sub_10006522C(a1);
        return;
      }

      v8 = *(a1 + 1266);
      if (v8 <= 1)
      {
        if (v8)
        {
          sub_1000B4790(*(a1 + 8));
        }

        goto LABEL_14;
      }
    }
  }

  __break(0x550Au);
}

uint64_t sub_1000B4790(uint64_t result)
{
  if (!result)
  {
    return 2;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_10005BD04(result);
  if (!result)
  {
    goto LABEL_18;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  sub_10005BB24(result, 6u);
  result = sub_1000B49F8(v1);
  if (!result)
  {
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v2 = *(result + 1265);
  if (v2 >= 2)
  {
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
LABEL_16:
    sub_10005BB6C(v1, 6u);
    return 2;
  }

  v3 = *(result + 1266);
  if (v3 <= 1)
  {
    if (v3)
    {
      result = sub_100065198(result);
      if (result)
      {
        if ((result & 7) == 0)
        {
          result = sub_1000945E0(result, v1);
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

      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(0x550Au);
  return result;
}

void sub_1000B499C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000B4604(a1);
  }
}

uint64_t sub_1000B49B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B4604(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B49F8(uint64_t a1)
{
  result = sub_1000C4254();
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!sub_100095458(result, a1))
  {
    return 0;
  }

  result = sub_100092790(v3, a1, 6u);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
LABEL_12:
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

uint64_t sub_1000B4A94(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_64;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!*(result + 8))
  {
    goto LABEL_23;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
    goto LABEL_23;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_64;
  }

  result = sub_10005ACA0(result);
  if (result)
  {
    goto LABEL_23;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_64;
  }

  v4 = *(a2 + 24);
  if (!sub_1000B49F8(*(v2 + 8)))
  {
LABEL_23:
    v9 = 89;
    goto LABEL_24;
  }

  v5 = *(a2 + 126);
  v6 = *(a2 + 128);
  v19 = 5;
  result = sub_1000C4254();
  v7 = *(a2 + 8);
  v18 = v5;
  if (v5 > 128)
  {
    if (v5 == 129)
    {
      if (!v6)
      {
        v17 = sub_1000B4E50(v2);
        sub_1000B7DB4(a2, v7, 0, 6, 130, *(a2 + 68), &v17, 1u);
        v9 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      if (v5 != 131)
      {
LABEL_34:
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoUsbHostControl::ProcessCmd bad cmd: 0x%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoUsbHostControl.cpp", 450, v5);
        v9 = 2;
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_51;
      }

      if (v6 == 1)
      {
        if (!v4)
        {
          goto LABEL_64;
        }

        v10 = *v4;
        if ((v10 - 1) <= 2)
        {
          result = *(v2 + 1256);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_64;
          }

          if ((*(*result + 280))(result, v7, v10, v10 == 2))
          {
            v9 = 0;
            *(v2 + 1268) = *v4 == 2;
          }

          else
          {
            v9 = 14;
          }

LABEL_51:
          if (v5 == *(a2 + 126))
          {
            v14 = *(a2 + 68);
            sub_1000B7854(a2);
          }

          sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
          a2 = 0;
          goto LABEL_24;
        }
      }
    }

    v9 = 2;
    goto LABEL_51;
  }

  if (v5)
  {
    if (v5 == 2)
    {
      v8 = *(v2 + 1265);
      if (v8 > 1)
      {
        goto LABEL_65;
      }

      v9 = 2;
      if (v6 != 1 || (v8 & 1) == 0)
      {
        goto LABEL_24;
      }

      v19 = 1;
      if (v4)
      {
        BYTE4(v18) = *v4;
LABEL_21:
        result = sub_10006733C(v2, *(a2 + 68), &v19, 0, 0xFFFFu);
        if (result)
        {
          v9 = result;
LABEL_24:
          sub_1000B9034(a2);
          return v9;
        }

        v15 = *(v2 + 1265);
        if (v15 > 1)
        {
          goto LABEL_65;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_62;
        }

        v16 = *(v2 + 1266);
        if (v16 <= 1)
        {
          if (v16)
          {
            pthread_mutex_lock((v2 + 1192));
            result = *(v2 + 8);
            if (result && (result & 7) == 0)
            {
              sub_10005BCC8(result, 6, 0, &v18, 8);
              pthread_mutex_unlock((v2 + 1192));
              goto LABEL_62;
            }

            goto LABEL_64;
          }

LABEL_62:
          v9 = 0;
          goto LABEL_24;
        }

LABEL_65:
        __break(0x550Au);
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    goto LABEL_34;
  }

  if (v6 != 2)
  {
    v9 = 2;
    goto LABEL_24;
  }

  if (v4 != -1)
  {
    v11 = v4[1];
    v19 = v4[1];
    if (v4)
    {
      BYTE5(v18) = *v4;
      BYTE4(v18) = v11;
      v12 = *(v2 + 1265);
      if (v12 >= 2)
      {
        goto LABEL_65;
      }

      if ((v12 & 1) == 0 || v11 != 3)
      {
        if (v11 > 4)
        {
          goto LABEL_62;
        }

        goto LABEL_21;
      }

      v13 = *(v2 + 1264);
      if (v13 > 1)
      {
        goto LABEL_65;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (result && (result & 7) == 0)
      {
        sub_100092FE4(result, v7, 6, 0);
        *(v2 + 1264) = 0;
        goto LABEL_21;
      }
    }

LABEL_64:
    __break(0x5516u);
    goto LABEL_65;
  }

LABEL_66:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000B4E50(uint64_t result)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 1256)) != 0 ? (v1 = (result & 7) == 0) : (v1 = 0), !v1))
  {
    __break(0x5516u);
    goto LABEL_13;
  }

  result = (*(*result + 272))(result);
  if (result >= 8)
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  if (result == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000B4ED0(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
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

  v6 = *(result + 1265);
  if (v6 >= 2)
  {
    goto LABEL_19;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(result + 1266);
  if (v8 > 1)
  {
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
LABEL_18:
    *a5 = 0;
    return result;
  }

  if (a3 == 3)
  {
    v9 = *(result + 1264);
    if (v9 <= 1)
    {
      if ((v9 & 1) == 0)
      {
LABEL_13:
        v12 = 0;
        LOBYTE(a3) = 3;
LABEL_15:
        BYTE4(v12) = a3;
        BYTE5(v12) = 15;
        pthread_mutex_lock((v5 + 1192));
        result = *(v5 + 8);
        if (result && (result & 7) == 0)
        {
          sub_10005BCC8(result, 6, 0, &v12, 8);
          result = pthread_mutex_unlock((v5 + 1192));
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      result = sub_1000C4254();
      if (result)
      {
        v10 = result;
        if ((result & 7) == 0)
        {
          v11 = sub_1000945E0(result, *(v5 + 8));
          sub_100092FE4(v10, v11, 6, 0);
          *(v5 + 1264) = 0;
          goto LABEL_13;
        }
      }

LABEL_20:
      __break(0x5516u);
      goto LABEL_21;
    }

LABEL_19:
    __break(0x550Au);
    goto LABEL_20;
  }

  v12 = 0;
  if (a3 < 0x100)
  {
    goto LABEL_15;
  }

LABEL_21:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B4FEC(uint64_t result, int a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v6 = *(result + 1267);
  if (v6 >= 2)
  {
LABEL_23:
    __break(0x550Au);
    return result;
  }

  v8 = 0;
  if (a5 >= 8 && a4 && (v6 & 1) != 0)
  {
    if ((a4 & 7) == 0)
    {
      v8 = *a4;
      goto LABEL_9;
    }

LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

LABEL_9:
  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    sub_1000E1D34();
  }

  v9 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  if (!v8)
  {
    return result;
  }

  if (v8 == *(result + 40))
  {
    if (a2 != 327705)
    {
      return result;
    }

LABEL_19:
    sub_1000B4E50(v5);
    (*(*v9 + 16))(v9, 0);
    sub_1000B748C();
  }

  if (a2 == 327705 && v8 == result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000B5180(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_62;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_62;
  }

  v14 = 0;
  result = sub_1000C4254();
  if (a2 <= 7)
  {
    if (a2 == 1)
    {
      v11 = *(v4 + 1265);
      if (v11 < 2)
      {
        if (a3 != 5 || (v11 & 1) == 0)
        {
          return v14;
        }

        if (result && (result & 7) == 0)
        {
          if (sub_1000930CC(result, a4))
          {
            sub_1000B4790(*(v4 + 8));
          }

          return v14;
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (a2 == 4)
    {
      result = *(v4 + 1256);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_62;
      }

      if ((*(*result + 272))(result, a4) != 2)
      {
        return v14;
      }

      goto LABEL_26;
    }

LABEL_48:
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoUsbHostControl::NotifyEvent bad event: 0x%02X\n");
    return v14;
  }

  if (a2 == 8)
  {
    return v14;
  }

  if (a2 != 32)
  {
    if (a2 == 64)
    {
      if (!result || (result & 7) != 0)
      {
        goto LABEL_62;
      }

      result = sub_100058FB0(result, a4);
      if (result)
      {
        if (a3 != 4)
        {
          return v14;
        }

        v8 = *(v4 + 1266);
        if (v8 <= 1)
        {
          if (v8)
          {
            v9 = *(v4 + 1265);
            if (v9 > 1)
            {
              goto LABEL_63;
            }

            if (v9)
            {
              result = sub_10004B1AC();
              if (result)
              {
                if ((result & 7) == 0)
                {
                  if ((*(*result + 280))(result, a4, 2, 1))
                  {
                    *(v4 + 1268) = 1;
                  }

                  v14 = sub_1000B4790(*(v4 + 8));
                  if (v14)
                  {
                    sub_1000DDEEC(0, 4, "%s:%d 0 != status\n");
                  }

                  return v14;
                }

                goto LABEL_62;
              }

              return v14;
            }
          }

          v13 = *(v4 + 1267);
          if (v13 <= 1)
          {
            if ((v13 & 1) == 0)
            {
              return v14;
            }

            result = sub_1000B4E50(v4);
            if (a4 && (a4 & 7) == 0)
            {
              (*(*a4 + 16))(a4, 0);
              sub_1000B748C();
            }

            goto LABEL_62;
          }
        }

LABEL_63:
        __break(0x550Au);
        goto LABEL_64;
      }

      if ((~a3 & 0xFFFFFFFE) != 0)
      {
        return v14;
      }

      result = *(v4 + 1256);
      if (!result || (result & 7) != 0)
      {
LABEL_62:
        __break(0x5516u);
        goto LABEL_63;
      }

      result = (*(*result + 272))(result, a4);
      if (result != 2)
      {
        return v14;
      }

      v12 = *(v4 + 1268);
      if (v12 > 1)
      {
        goto LABEL_63;
      }

      if ((v12 & 1) == 0)
      {
        return v14;
      }

      syslog(3, "%s setting USB Device Mode on auth failure/lockout", "NotifyEvent");
LABEL_26:
      result = *(v4 + 1256);
      if (result && (result & 7) == 0)
      {
        (*(*result + 280))(result, a4, 1, 0);
        *(v4 + 1268) = 0;
        return v14;
      }

      goto LABEL_62;
    }

    goto LABEL_48;
  }

  sub_10006770C(v4, &v14);
  result = *(v4 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_62;
  }

  if (!sub_10005B890(result, 6u))
  {
    return v14;
  }

  v10 = sub_100067278();
  result = *(v4 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_62;
  }

  result = sub_10005B844(result, 6u);
  if (v10 >= result)
  {
    if (v10 - result < 0x1F4)
    {
      return v14;
    }

    result = *(v4 + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        sub_10005B7F8(result, 6u, 0);
        result = *(v4 + 8);
        if (result)
        {
          if ((result & 7) == 0)
          {
            sub_10005B7AC(result, 6u, 0);
            return v14;
          }
        }
      }
    }

    goto LABEL_62;
  }

LABEL_64:
  __break(0x5515u);
  return result;
}

uint64_t sub_1000B55D4(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 6;
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

void *sub_1000B5608(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116A90;
  }

  return result;
}

void *sub_1000B5638(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100116A90;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5678(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 8);
  if (result >= 8)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000B569C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B56B4(uint64_t result, int a2, const void *a3, size_t size)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116AB0;
    *(result + 8) = a2;
    *(result + 16) = size;
    if (size)
    {
      v6 = malloc_type_malloc(size, 0x25F81CD6uLL);
      *(v4 + 24) = v6;
      if (v6)
      {
        memcpy(v6, a3, *(v4 + 16));
      }

      else
      {
        sub_1000DDEEC(0, 4, "%s:%d NULL mData\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapMessage.cpp", 134);
      }
    }

    else
    {
      *(result + 24) = 0;
    }

    return v4;
  }

  return result;
}

void *sub_1000B576C(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116AB0;
    v2 = result[3];
    if (v2)
    {
      free(v2);
      v1[3] = 0;
    }

    return v1;
  }

  return result;
}

void *sub_1000B57CC(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B576C(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000B57E0(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B576C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5828(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5840(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_100116AD0;
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B58E0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B5840(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000B58F4(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      *result = off_100116AD0;
      result = result[3];
      if (!result)
      {
LABEL_6:
        *v1 = off_100116A90;
        return v1;
      }

      if ((result & 7) == 0)
      {
        (*(*result + 8))(result);
        goto LABEL_6;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_1000B5994(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B58F4(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000B59A8(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B58F4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B59F0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 8) = 1;
    *(result + 16) = 0;
    *(result + 24) = a2;
    *result = off_100116AF0;
  }

  return result;
}

void *sub_1000B5A2C(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116A90;
  }

  return result;
}

void *sub_1000B5A5C(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100116A90;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5A9C(uint64_t result)
{
  if (!result || (result & 7) != 0 || ((result = *(result + 24)) != 0 ? (v1 = (result & 7) == 0) : (v1 = 0), !v1))
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000B5AC4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 8) = 2;
    *(result + 16) = 0;
    *(result + 24) = a2;
    *result = off_100116B10;
  }

  return result;
}

void *sub_1000B5B00(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116A90;
  }

  return result;
}

void *sub_1000B5B30(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100116A90;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5B70(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 8) = 3;
    *(result + 16) = 0;
    *result = off_100116B30;
  }

  return result;
}

void *sub_1000B5BAC(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116A90;
  }

  return result;
}

void *sub_1000B5BDC(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100116A90;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B5C1C(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 8) = 4;
    *(result + 16) = 0;
    *result = off_100116B50;
    *(result + 24) = a2;
    *(result + 32) = a3;
    *(result + 40) = a4;
    *(result + 48) = a5;
  }

  return result;
}

void *sub_1000B5C64(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116A90;
  }

  return result;
}

void *sub_1000B5C94(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100116A90;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000B5D44()
{
  dispatch_semaphore_create(0);
  memset(__p, 170, sizeof(__p));
  sub_100025D20(__p, "CIapOutgoingProcessThread");
  sub_1000B5E28();
}

pthread_mutex_t *sub_1000B5EF0(pthread_mutex_t *result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock(result + 1);
    qword_10012C770 = a3;
    *&v3->__opaque[48] = a2;
    pthread_mutex_unlock(v3 + 1);
    return 1;
  }

  return result;
}

uint64_t sub_1000B5F50(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      sub_10005D360(result);
      *v2 = off_100116C08;
      *(v2 + 48) = a2;
      *(v2 + 56) = 0;
      *(v2 + 344) = 0;
      result = pthread_mutex_init((v2 + 64), 0);
      v4 = 0;
      v5 = 0;
      v6 = 320;
      while (v4 <= ~(v2 + 128))
      {
        pthread_mutex_init((v2 + v4 + 128), 0);
        result = dispatch_semaphore_create(0);
        if (v6 - 320 > ~(v2 + 320))
        {
          break;
        }

        *(v2 + v6) = result;
        if (v5 > ~(v2 + 348))
        {
          break;
        }

        *(v2 + v5 + 348) = *"(";
        v5 += 4;
        v6 += 8;
        v4 += 64;
        if (v5 == 12)
        {
          sub_10005D3C0(v2, 3u);
          return v2;
        }
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000B6078(pthread_mutex_t *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    v2 = 0;
    a1->__sig = off_100116C08;
    a1[5].__opaque[16] = 1;
    v3 = ~&a1[2];
    v4 = a1 + 5;
    v5 = ~&a1[5];
    v6 = 0x3FFFFFFFFFFFFFDLL;
    while (v6 * 64 + 192 <= v3)
    {
      pthread_mutex_destroy(&v4[v6]);
      if (v2 > v5)
      {
        break;
      }

      v7 = *(&v4->__sig + v2);
      if (!v7)
      {
        goto LABEL_10;
      }

      dispatch_release(v7);
      v2 += 8;
      if (!(++v6 * 64))
      {
        pthread_mutex_destroy(a1 + 1);
        sub_10005D4D8(a1);
        return;
      }
    }

    __break(0x5513u);
LABEL_10:
    __break(0x5510u);
  }

  __break(0x5516u);
}

void sub_1000B6140(pthread_mutex_t *a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000B6078(a1);
  }
}

pthread_mutex_t *sub_1000B6154(pthread_mutex_t *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B6078(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000B619C(pthread_mutex_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  v6 = sub_1000B5678(a2);
  pthread_mutex_lock(a1 + 1);
  if (v6 >= 8)
  {
    goto LABEL_31;
  }

  if (v6)
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapOutgoingProcess::HandleMessage: unknown type 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapOutgoingProcess.cpp", 341, v6);
    goto LABEL_9;
  }

  v7 = sub_10005B2B8(a2);
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  if ((v7 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (!sub_1000B5828(v7))
  {
    v15 = sub_10005B2B8(v8);
    if (!v15 || (v15 & 7) != 0)
    {
      goto LABEL_32;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = a1[5].__opaque[16];
      if (v17 > 1)
      {
        goto LABEL_31;
      }

      if (v17)
      {
        sub_1000B9034(*v15);
        goto LABEL_9;
      }

      if (a3 > 3)
      {
        goto LABEL_31;
      }

      if (a3)
      {
LABEL_28:
        sub_1000B6368(a1, v16);
        goto LABEL_10;
      }

      if ((v16 & 7) == 0)
      {
        *(v16 + 132) |= 1u;
        goto LABEL_28;
      }

LABEL_32:
      __break(0x5516u);
      goto LABEL_33;
    }
  }

LABEL_9:
  if (a3 > 3)
  {
LABEL_31:
    __break(0x550Au);
    goto LABEL_32;
  }

LABEL_10:
  if (__CFADD__(&a1[2], a3 << 6))
  {
    goto LABEL_30;
  }

  v9 = &a1[a3 + 2];
  pthread_mutex_lock(v9);
  v10 = &a1[5].__opaque[20];
  if (__CFADD__(&a1[5].__opaque[20], 4 * a3))
  {
    goto LABEL_30;
  }

  v11 = *&v10[4 * a3];
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_33:
    __break(0x5500u);
    goto LABEL_34;
  }

  *&v10[4 * a3] = v13;
  if (v13 > *"(")
  {
LABEL_29:
    __break(0x5518u);
LABEL_30:
    __break(0x5513u);
    goto LABEL_31;
  }

  pthread_mutex_unlock(v9);
  if (a3 == 3)
  {
LABEL_34:
    __break(0x5512u);
    goto LABEL_35;
  }

  if (__CFADD__(&a1[5], 8 * a3))
  {
    goto LABEL_30;
  }

  v14 = *(&a1[5].__sig + a3);
  if (v14)
  {
    dispatch_semaphore_signal(v14);
    pthread_mutex_unlock(a1 + 1);
    return;
  }

LABEL_35:
  __break(0x5510u);
}

uint64_t sub_1000B6368(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_87;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_87;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (!dword_10012B6D8[0])
  {
    goto LABEL_69;
  }

  if ((a2 & 7) != 0 || (v4 = *(a2 + 8)) == 0 || (v4 & 7) != 0)
  {
LABEL_87:
    __break(0x5516u);
    goto LABEL_88;
  }

  result = (*(*v4 + 208))(*(a2 + 8));
  if (result >= 5)
  {
    goto LABEL_88;
  }

  if (~qword_10012C3F0 < 8 * result)
  {
    goto LABEL_89;
  }

  if (!qword_10012C3F0[result])
  {
    pthread_mutex_lock(&stru_10012B508);
    result = (*(*v4 + 208))(v4);
    if (result > 4)
    {
      goto LABEL_88;
    }

    if (~qword_10012C3F0 < 8 * result)
    {
      goto LABEL_89;
    }

    if (!qword_10012C3F0[result])
    {
      sub_1000CA360(v4, 0, 0);
      v6 = v5;
      result = (*(*v4 + 208))(v4);
      if (result > 4)
      {
        goto LABEL_88;
      }

      if (~qword_10012C3F0 < 8 * result)
      {
        goto LABEL_89;
      }

      qword_10012C3F0[result] = v6;
    }

    pthread_mutex_unlock(&stru_10012B508);
  }

  result = (*(*v4 + 208))(v4);
  if (result > 4)
  {
    goto LABEL_88;
  }

  if (~qword_10012C418 < 8 * result)
  {
    goto LABEL_89;
  }

  if (!qword_10012C418[result])
  {
    pthread_mutex_lock(&stru_10012B548);
    result = (*(*v4 + 208))(v4);
    if (result > 4)
    {
      goto LABEL_88;
    }

    if (~qword_10012C418 < 8 * result)
    {
      goto LABEL_89;
    }

    if (!qword_10012C418[result])
    {
      sub_1000CA360(v4, 0, 0);
      v8 = v7;
      result = (*(*v4 + 208))(v4);
      if (result > 4)
      {
        goto LABEL_88;
      }

      if (~qword_10012C418 < 8 * result)
      {
        goto LABEL_89;
      }

      qword_10012C418[result] = v8;
    }

    pthread_mutex_unlock(&stru_10012B548);
  }

  result = (*(*v4 + 208))(v4);
  if (result > 4)
  {
    goto LABEL_88;
  }

  if (~qword_10012C440 < 8 * result)
  {
    goto LABEL_89;
  }

  if (!qword_10012C440[result])
  {
    pthread_mutex_lock(&stru_10012B588);
    result = (*(*v4 + 208))(v4);
    if (result > 4)
    {
      goto LABEL_88;
    }

    if (~qword_10012C440 < 8 * result)
    {
      goto LABEL_89;
    }

    if (!qword_10012C440[result])
    {
      sub_1000CA360(v4, 0, 0);
      v10 = v9;
      result = (*(*v4 + 208))(v4);
      if (result > 4)
      {
        goto LABEL_88;
      }

      if (~qword_10012C440 < 8 * result)
      {
        goto LABEL_89;
      }

      qword_10012C440[result] = v10;
    }

    pthread_mutex_unlock(&stru_10012B588);
  }

  v11 = sub_1000CA714();
  if (!*(a2 + 148))
  {
    goto LABEL_49;
  }

  result = (*(*v4 + 208))(v4);
  if (result >= 5)
  {
    goto LABEL_88;
  }

  if (~qword_10012C3F0 < 8 * result)
  {
    goto LABEL_89;
  }

  result = qword_10012C3F0[result];
  if (!result || (result & 7) != 0)
  {
    goto LABEL_87;
  }

  v12 = *(a2 + 148);
  v13 = v11 - v12;
  if (v11 < v12)
  {
    goto LABEL_91;
  }

  v14 = *(result + 76);
  if (v14 >= 8)
  {
LABEL_90:
    __break(0x550Au);
    goto LABEL_91;
  }

  if (v14 >= 4)
  {
LABEL_88:
    __break(0x5512u);
    goto LABEL_89;
  }

  if (~dword_10012B6D8 < 4 * v14)
  {
LABEL_89:
    __break(0x5513u);
    goto LABEL_90;
  }

  if (dword_10012B6D8[v14])
  {
    (*(*result + 104))(result, v13, 0, 0);
  }

LABEL_49:
  if (!*(a2 + 144))
  {
    goto LABEL_60;
  }

  result = (*(*v4 + 208))(v4);
  if (result > 4)
  {
    goto LABEL_88;
  }

  if (~qword_10012C418 < 8 * result)
  {
    goto LABEL_89;
  }

  result = qword_10012C418[result];
  if (!result || (result & 7) != 0)
  {
    goto LABEL_87;
  }

  v15 = *(a2 + 144);
  v16 = v11 - v15;
  if (v11 < v15)
  {
LABEL_91:
    __break(0x5515u);
    return result;
  }

  v17 = *(result + 76);
  if (v17 >= 8)
  {
    goto LABEL_90;
  }

  if (v17 >= 4)
  {
    goto LABEL_88;
  }

  if (~dword_10012B6D8 < 4 * v17)
  {
    goto LABEL_89;
  }

  if (dword_10012B6D8[v17])
  {
    (*(*result + 104))(result, v16, 0, 0);
  }

LABEL_60:
  result = (*(*v4 + 208))(v4);
  if (result > 4)
  {
    goto LABEL_88;
  }

  if (~qword_10012C440 < 8 * result)
  {
    goto LABEL_89;
  }

  result = qword_10012C440[result];
  if (!result || (result & 7) != 0)
  {
    goto LABEL_87;
  }

  v18 = *(result + 76);
  if (v18 >= 8)
  {
    goto LABEL_90;
  }

  if (v18 >= 4)
  {
    goto LABEL_88;
  }

  if (~dword_10012B6D8 < 4 * v18)
  {
    goto LABEL_89;
  }

  if (dword_10012B6D8[v18])
  {
    (*(*result + 104))(result, *(a2 + 128), 0, 0);
  }

LABEL_69:
  result = *(v2 + 56);
  if (!result || (result & 7) != 0 || (a2 & 7) != 0)
  {
    goto LABEL_87;
  }

  if (sub_10005C79C(result, *(a2 + 68)))
  {
    goto LABEL_83;
  }

  v19 = *(a2 + 8);
  if (!v19 || !sub_1000D6B98(*(a2 + 8)))
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapOutgoingProcess::ProcessOutgoingPacket: devPort not assigned for packet !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapOutgoingProcess.cpp", 423);
    goto LABEL_83;
  }

  result = sub_10002BB1C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_87;
  }

  if ((*(a2 + 64) + 32) >= 0x40)
  {
    goto LABEL_90;
  }

  v20 = *(a2 + 126);
  v21 = *(a2 + 68);
  v22 = *(a2 + 8);
  v23 = *(a2 + 24);
  v24 = *(a2 + 128);
  (*(*result + 280))(result);
  if (sub_1000B80CC(a2))
  {
    v25 = (*(*a2 + 32))(a2);

    return sub_1000D7008(v19, a2, v25);
  }

LABEL_83:

  return sub_1000B9034(a2);
}

uint64_t sub_1000B6A78(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  __break(0x5513u);
  __break(0x5500u);
  return result;
}

uint64_t sub_1000B6BF0(uint64_t result, uint64_t a2, unsigned int a3, char a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        sub_1000E1D34();
      }

      result = *(result + 56);
      if (result)
      {
        if (((result | a2) & 7) == 0)
        {
          if (sub_10005C79C(result, *(a2 + 68)))
          {
            return 22;
          }

          *(a2 + 132) = *(a2 + 132) & 0xFE | a4;
          while (1)
          {
            pthread_once(&stru_10012B6E8, sub_1000CA2C8);
            if (dword_10012B6D8[0])
            {
              v9 = sub_1000CA714();
              result = a2;
              if (a2)
              {
                v10 = (a2 & 7) == 0;
              }

              else
              {
                v10 = 0;
              }

              if (!v10)
              {
                goto LABEL_32;
              }

              *(a2 + 148) = v9;
            }

            else
            {
              result = a2;
            }

            if (result)
            {
              v11 = (result & 7) == 0;
            }

            else
            {
              v11 = 0;
            }

            if (!v11)
            {
              goto LABEL_32;
            }

            result = (*(*result + 32))(result);
            if (a3 > 3)
            {
              break;
            }

            result = sub_1000B6A78(v4);
            v8 = result;
            if (!result)
            {
              return v8;
            }

            if (a3 == 3)
            {
              goto LABEL_33;
            }

            if (8 * a3 > ~(v4 + 320))
            {
              goto LABEL_35;
            }

            v12 = *(v4 + 320 + 8 * a3);
            if (!v12)
            {
              goto LABEL_34;
            }

            v13 = dispatch_time(0, 10000000);
            result = dispatch_semaphore_wait(v12, v13);
            v14 = *(v4 + 344);
            if (v14 > 1)
            {
              break;
            }

            if (v14)
            {
              return v8;
            }
          }

          __break(0x550Au);
        }
      }
    }
  }

LABEL_32:
  __break(0x5516u);
LABEL_33:
  __break(0x5512u);
LABEL_34:
  __break(0x5510u);
LABEL_35:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000B6DB4(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (!a1)
  {
    sub_1000DDEEC(0, 4, "%s:%d No handle, cannot TransmitPacket!\n");
    goto LABEL_12;
  }

  result = qword_10012C770;
  if (!qword_10012C770)
  {
    result = sub_1000C4254();
    qword_10012C770 = result;
    if (!result)
    {
      __break(0x5518u);
LABEL_19:
      __break(0x5516u);
      goto LABEL_20;
    }
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100095310(result, a1);
  if (!result)
  {
    sub_1000DDEEC(0, 4, "%s:%d No outgoing process, cannot TransmitPacket!\n");
    goto LABEL_12;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v9 = *(result + 344);
  if (v9 <= 1)
  {
    if (v9)
    {
      sub_1000DDEEC(0, 4, "%s:%d OutgoingProcess shutting down, do not TransmitPacket!\n");
LABEL_12:
      v10 = 2;
LABEL_13:
      sub_1000B9034(a2);
      return v10;
    }

    if (a4 < 4)
    {
      v10 = sub_1000B6BF0(result, a2, a4, a3);
      if (!v10)
      {
        return v10;
      }

      goto LABEL_13;
    }
  }

LABEL_20:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000B6EDC(uint64_t result)
{
  if (result)
  {
    v1 = result & 7;
    if ((result & 7) == 0)
    {
      v2 = 0;
      while (v2 <= ~(result + 348))
      {
        v3 = *(result + 348 + v2);
        v4 = __CFADD__(v1, v3);
        v1 += v3;
        if (v4)
        {
          goto LABEL_15;
        }

        v2 += 4;
        if (v2 == 12)
        {
          v5 = 3 * *"(";
          if ((v5 & 0xFFFFFFFF00000000) == 0)
          {
            if (v1 == v5)
            {
              return 0;
            }

            v4 = v5 >= v1;
            v6 = v5 - v1;
            if (!v4)
            {
              goto LABEL_18;
            }

            result = 10 * v6;
            if ((result & 0xFFFFFFFF00000000) == 0)
            {
              return result;
            }
          }

LABEL_16:
          __break(0x550Cu);
          goto LABEL_17;
        }
      }

      __break(0x5513u);
LABEL_15:
      __break(0x5500u);
      goto LABEL_16;
    }
  }

LABEL_17:
  __break(0x5516u);
LABEL_18:
  __break(0x5515u);
  return result;
}

uint64_t sub_1000B6F6C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v1 = *(result + 344);
  if (v1 >= 2)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if ((v1 & 1) == 0)
  {
    *(result + 344) = 1;
  }

  return result;
}

uint64_t sub_1000B6F9C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 344);
    if (v1 < 2)
    {
      if ((v1 & 1) == 0)
      {
        *(result + 344) = 1;
      }

      operator new();
    }
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000B706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_16:
    __break(0x550Au);
  }

  v7 = *(a1 + 8);
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 24));
  *(a1 + 16) = a4;
  *a1 = a2;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v19.__opaque[24] = v12;
  *&v19.__opaque[40] = v12;
  *&v19.__sig = v12;
  *&v19.__opaque[8] = v12;
  pthread_attr_init(&v19);
  v13 = pthread_attr_setinheritsched(&v19, 2);
  if (v13)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 213, v13);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  pthread_attr_getschedparam(&v19, &v18);
  v18.sched_priority = a6;
  v14 = pthread_attr_setschedparam(&v19, &v18);
  if (v14)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 222, v14);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v15 = pthread_create(&v17, &v19, sub_1000B7224, a1);
  v8 = v15 == 0;
  if (v15)
  {
    sub_1000DDEEC(0, 4, "%s:%d status == %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapSimpleThread.h", 236, v15);
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = 1;
    pthread_cond_wait((a1 + 88), (a1 + 24));
    pthread_detach(v17);
  }

  pthread_mutex_unlock((a1 + 24));
  return v8;
}

uint64_t sub_1000B7224(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      sub_1000B7284(result);
      pthread_mutex_destroy((v1 + 24));
      operator delete();
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B7284(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      pthread_mutex_lock((result + 24));
      if (!*v1)
      {
        v2 = *(v1 + 16);
        sub_1000B5CD4();
      }

      *(v1 + 16) = 0;
      pthread_cond_broadcast((v1 + 88));
      pthread_mutex_unlock((v1 + 24));
      result = *v1;
      if (*v1)
      {
        if ((result & 7) == 0)
        {
          sub_10005D784(result);
          result = *v1;
          if (!*v1)
          {
LABEL_10:
            *(v1 + 8) = 0;
            return result;
          }

          if ((result & 7) == 0)
          {
            result = (*(*result + 8))(result);
            goto LABEL_10;
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B7334(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 132) & 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B7350(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  *result = off_100116C48;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  *(result + 64) = -1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0xFFFF000000000000;
  *(result + 128) = 0;
  *(result + 131) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DDCB4(v7, 1u);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = off_100113858;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1000DDDDC(v7, &v5);
  v2 = 1000 * v5;
  if ((v5 * 1000) >> 64 != (1000 * v5) >> 63)
  {
LABEL_7:
    __break(0x550Cu);
    goto LABEL_8;
  }

  v3 = __OFADD__(v2, v6 / 1000000);
  v4 = v2 + v6 / 1000000;
  if (!v3)
  {
    *(v1 + 72) = v4;
    v7[0] = off_100113858;
    sub_1000DDCF4(v7);
    return v1;
  }

LABEL_8:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000B7570(uint64_t result, uint64_t a2, int a3, uint64_t a4, __int16 a5, int a6, const void *a7, unsigned int a8)
{
  if (!result)
  {
    goto LABEL_28;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_28;
  }

  *(result + 130) = 0;
  result = sub_1000B8050(result);
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  *(v8 + 68) = a6;
  if ((a4 + 32) >= 0x40)
  {
LABEL_29:
    __break(0x550Au);
    goto LABEL_30;
  }

  *(v8 + 64) = a4;
  *(v8 + 126) = a5;
  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8[0])
  {
    result = sub_1000B7B44(*(v8 + 8));
    if (!*(v8 + 144))
    {
LABEL_21:
      *(v8 + 144) = sub_1000CA714();
      goto LABEL_23;
    }

    if (a2 && (a2 & 7) == 0)
    {
      result = (*(*a2 + 208))(a2);
      if (result < 5)
      {
        if (~qword_10012C468 < 8 * result)
        {
          goto LABEL_31;
        }

        v16 = qword_10012C468[result];
        if (v16)
        {
          v17 = (qword_10012C468[result] & 7) == 0;
        }

        else
        {
          v17 = 0;
        }

        if (!v17)
        {
          goto LABEL_28;
        }

        result = sub_1000CA714();
        v18 = *(v8 + 144);
        v19 = result - v18;
        if (result < v18)
        {
LABEL_32:
          __break(0x5515u);
          return result;
        }

        v20 = v16[19];
        if (v20 >= 8)
        {
          goto LABEL_29;
        }

        if (v20 < 4)
        {
          if (~dword_10012B6D8 >= 4 * v20)
          {
            if (dword_10012B6D8[v20])
            {
              (*(*v16 + 104))(v16, v19, 0, 0);
            }

            goto LABEL_21;
          }

LABEL_31:
          __break(0x5513u);
          goto LABEL_32;
        }
      }

LABEL_30:
      __break(0x5512u);
      goto LABEL_31;
    }

LABEL_28:
    __break(0x5516u);
    goto LABEL_29;
  }

  *(v8 + 144) = 0;
LABEL_23:
  *(v8 + 148) = 0;
  if (a8)
  {
    sub_1000B7C60(v8, a8, a4, 0, 0);
    result = *(v8 + 24);
    if (!result)
    {
      return result;
    }

    *(v8 + 128) = a8;
    memcpy(result, a7, a8);
  }

  return 1;
}

uint64_t sub_1000B7854(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    if ((*(result + 132) & 4) == 0)
    {
      operator new[]();
    }

    sub_1000E1D34();
  }

  __break(0x5516u);
  __break(0x550Au);
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B7B44(uint64_t result)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 208))(result);
  if (result >= 5)
  {
    goto LABEL_11;
  }

  if (~qword_10012C468 < 8 * result)
  {
LABEL_12:
    __break(0x5513u);
LABEL_13:
    __break(0x5516u);
    return result;
  }

  if (qword_10012C468[result])
  {
    return result;
  }

  pthread_mutex_lock(&stru_10012B5C8);
  sub_1000CA360(v1, 0, 0);
  v3 = v2;
  result = (*(*v1 + 208))(v1);
  if (result > 4)
  {
LABEL_11:
    __break(0x5512u);
    goto LABEL_12;
  }

  if (~qword_10012C468 < 8 * result)
  {
    goto LABEL_12;
  }

  qword_10012C468[result] = v3;

  return pthread_mutex_unlock(&stru_10012B5C8);
}

uint64_t sub_1000B7C60(uint64_t result, int a2, uint64_t a3, int a4, char a5)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v7 = a2;
  *(result + 60) = a4;
  if (a5)
  {
    *(result + 52) = a4;
    v8 = a2 + a4;
    if (!__CFADD__(a2, a4))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    result = *(result + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_19;
    }

    result = (*(*result + 136))(result);
    v7 = result;
  }

  if ((a3 + 32) > 0x3F)
  {
LABEL_20:
    __break(0x550Au);
    goto LABEL_21;
  }

  if (__CFADD__(v7, a4))
  {
LABEL_18:
    __break(0x5500u);
LABEL_19:
    __break(0x5516u);
    __break(0x5513u);
    goto LABEL_20;
  }

  if ((v7 + a4) < 0x10000)
  {
    result = (*(*v5 + 48))(v5, a3, (v7 + a4));
    v10 = a4 + result;
    if (!__CFADD__(a4, result))
    {
      v5[13] = v10;
      v11 = __CFADD__(v10, v7);
      v12 = v10 + v7;
      if (!v11)
      {
        v11 = __CFADD__(v12, 1);
        v8 = v12 + 1;
        if (!v11)
        {
LABEL_17:
          v5[12] = v8;
          operator new[]();
        }
      }
    }

    goto LABEL_18;
  }

LABEL_21:
  __break(0x5507u);
  return result;
}

unint64_t sub_1000B7DB4(unint64_t result, uint64_t a2, int a3, uint64_t a4, __int16 a5, int a6, const void *a7, unsigned int a8)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if ((*(result + 132) & 4) != 0)
  {
    sub_1000E1D34();
  }

  if ((a4 + 32) > 0x3F)
  {
    goto LABEL_17;
  }

  result = sub_1000B7570(result, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(v8 + 136);
  if (!v9)
  {
    return result;
  }

  if ((v9 & 7) != 0 || ((result = atomic_load((v9 + 48)), (result & 7) == 0) ? (v10 = result == 0) : (v10 = 1), v10))
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    __break(0x550Au);
    return result;
  }

  return sub_10005FB2C(result, v8);
}

uint64_t sub_1000B7E50(uint64_t result)
{
  if (!result)
  {
    goto LABEL_28;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_28;
  }

  *result = off_100116C48;
  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (!dword_10012B6D8[0] || !*(v1 + 144))
  {
    goto LABEL_20;
  }

  result = *(v1 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_28;
  }

  result = (*(*result + 208))(result);
  if (result >= 5)
  {
    goto LABEL_29;
  }

  if (~qword_10012C468 < 8 * result)
  {
    goto LABEL_30;
  }

  v2 = qword_10012C468[result];
  if (v2)
  {
    v3 = (qword_10012C468[result] & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_28;
  }

  result = sub_1000CA714();
  v4 = *(v1 + 144);
  v5 = result - v4;
  if (result < v4)
  {
LABEL_31:
    __break(0x5515u);
    goto LABEL_32;
  }

  v6 = v2[19];
  if (v6 < 8)
  {
    if (v6 < 4)
    {
      if (~dword_10012B6D8 >= 4 * v6)
      {
        if (dword_10012B6D8[v6])
        {
          (*(*v2 + 104))(v2, v5, 0, 0);
        }

LABEL_20:
        *(v1 + 130) = 0;
        result = sub_1000B8050(v1);
        v7 = *(v1 + 136);
        if (!v7)
        {
          return v1;
        }

        if ((v7 & 7) == 0)
        {
          result = atomic_load((v7 + 48));
          if ((result & 7) == 0 && result != 0)
          {
            sub_10005FB2C(result, v1);
            return v1;
          }
        }

LABEL_28:
        __break(0x5516u);
        goto LABEL_29;
      }

LABEL_30:
      __break(0x5513u);
      goto LABEL_31;
    }

LABEL_29:
    __break(0x5512u);
    goto LABEL_30;
  }

LABEL_32:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000B7FF4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B7E50(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B8008(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B7E50(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B8050(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if ((*(result + 132) & 8) != 0)
    {
      bzero(*(result + 40), *(result + 48));
    }

    result = *(v1 + 40);
    if (result)
    {
      operator delete[]();
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 24) = 0u;
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 124) = 0;
  }

  return result;
}

uint64_t sub_1000B80CC(uint64_t result)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v2 = *(result + 64);
  if ((v2 + 32) >= 0x40)
  {
    goto LABEL_23;
  }

  if (v2 >= 15)
  {
    goto LABEL_21;
  }

  if (v2)
  {
    v3 = *(result + 128);
    if (sub_1000D6C34(*(result + 8), v2) < v3)
    {
      return 0;
    }
  }

  if ((*(v1 + 132) & 2) == 0)
  {
    result = sub_1000C4254();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_22;
    }

    if (sub_100094598(result, *(v1 + 8)))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(v1 + 132) = *(v1 + 132) & 0xFD | v4;
  }

  result = (*(*v1 + 56))(v1);
  if (!result)
  {
LABEL_21:
    __break(0x5518u);
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  v5 = result;
  if (*(v1 + 32))
  {
    goto LABEL_19;
  }

  v6 = *(v1 + 64);
  if ((v6 + 32) >= 0x40)
  {
LABEL_23:
    __break(0x550Au);
    goto LABEL_24;
  }

  result = sub_1000B7C60(v1, result, v6, 0, 1);
  if (!*(v1 + 32))
  {
    goto LABEL_21;
  }

LABEL_19:
  if (!HIWORD(v5))
  {
    *(v1 + 124) = v5;
    return (*(*v1 + 64))(v1) == *(v1 + 124);
  }

LABEL_24:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000B8224(uint64_t result, int a2, int a3)
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

  result = sub_100068364(*(result + 8));
  if ((a2 + 32) >= 0x40)
  {
LABEL_23:
    __break(0x550Au);
    return result;
  }

  v6 = result;
  if ((*(v3 + 132) & 2) != 0)
  {
    goto LABEL_8;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  if (!sub_100094598(result, *(v3 + 8)))
  {
    v7 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2;
LABEL_10:
  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (a2 == 4)
  {
    v9 = 252;
  }

  else
  {
    v9 = 253;
  }

  v10 = v7 + a3;
  if (a2 == 4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = v11 + v7 + v8;
  if (v10 <= v9)
  {
    return (v12 + 1);
  }

  else
  {
    return (v12 + 3);
  }
}

uint64_t sub_1000B82E8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((*(result + 64) + 32) >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  v2 = *(result + 128);
  result = (*(*result + 48))(result);
  v3 = *(v1 + 128);
  v4 = __CFADD__(result, v3);
  v5 = result + v3;
  if (v4 || (result = (v5 + 1), v5 == -1))
  {
    __break(0x5500u);
LABEL_7:
    __break(0x5516u);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1000B8370(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_62;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_62;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  if (*(result + 32) != *(result + 24))
  {
    return *(result + 124);
  }

  v3 = *(result + 64);
  if ((v3 + 32) > 0x3F)
  {
    goto LABEL_63;
  }

  v4 = *(result + 132) & 2;
  if (v3 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + v4;
  v7 = v5 + v4 + *(result + 128);
  if (HIWORD(v7))
  {
    goto LABEL_64;
  }

  result = sub_100068364(*(result + 8));
  v8 = result;
  if (result)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = v6 + 3;
  if (v7 < 0x100)
  {
    v10 = v6 + 1;
  }

  v11 = v10 + v9;
  v12 = *(v2 + 56);
  if (!v12 || v11 == v12)
  {
    v13 = *(v2 + 56);
    if (*(v2 + 48) >= *(v2 + 124))
    {
LABEL_22:
      v14 = *(v2 + 32);
      if (v12 && v14 - v12 >= v14)
      {
        goto LABEL_61;
      }

      v15 = v12;
      v16 = (v14 - v12);
      *(v2 + 32) = v16;
      v17 = v13 >= v15;
      v18 = v13 - v15;
      if (!v17)
      {
        goto LABEL_65;
      }

      *(v2 + 56) = v18;
      v19 = *(v2 + 40);
      if (v16 == v19)
      {
        goto LABEL_29;
      }

      if (v19 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_61;
      }

      if (v16 == (v19 + 2))
      {
LABEL_29:
        if (v8)
        {
          if (v16 == -1)
          {
            goto LABEL_61;
          }

          if (!v14)
          {
            goto LABEL_62;
          }

          *v16++ = -1;
        }

        if (v16 == -1)
        {
          goto LABEL_61;
        }

        if (v16)
        {
          v20 = v16 + 1;
          *v16 = 85;
          if (v7 > 0xFF)
          {
            if (v16 == -2)
            {
              goto LABEL_61;
            }

            v16[1] = 0;
            if (v16 == -3)
            {
              goto LABEL_61;
            }

            v22 = v16 + 3;
            v16[2] = BYTE1(v7);
            if (v16 == -4)
            {
              goto LABEL_61;
            }

            v21 = 4;
          }

          else
          {
            if (v16 == -2)
            {
              goto LABEL_61;
            }

            v21 = 2;
            v22 = v16 + 1;
          }

          *v22 = v7;
          v23 = *(v2 + 64);
          if (v23 + 32 > 0x3F)
          {
LABEL_63:
            __break(0x550Au);
            goto LABEL_64;
          }

          if (v23 > 0xFF)
          {
LABEL_64:
            __break(0x5507u);
LABEL_65:
            __break(0x5515u);
            return result;
          }

          v24 = &v16[v21];
          if (v24 == -1)
          {
            goto LABEL_61;
          }

          v25 = v24 + 1;
          *v24 = v23;
          if (v3 == 4)
          {
            if (v24 == -2)
            {
              goto LABEL_61;
            }

            v25 = v24 + 2;
            v24[1] = *(v2 + 127);
          }

          if (v25 != -1)
          {
            v26 = v25 + 1;
            *v25 = *(v2 + 126);
            if (!v4)
            {
              goto LABEL_53;
            }

            if (v25 != -2)
            {
              *v26 = BYTE1(*(v2 + 68));
              if (v25 != -3)
              {
                v26 = v25 + 3;
                v25[2] = *(v2 + 68);
LABEL_53:
                v27 = *(v2 + 128);
                if (!__CFADD__(v26, v27))
                {
                  v28 = 0;
                  v29 = &v26[v27];
                  while (v20 != -1)
                  {
                    v30 = *v20++;
                    v28 += v30;
                    if (v20 >= v29)
                    {
                      if (v29 == -1)
                      {
                        break;
                      }

                      *v29 = -v28;
                      v31 = v29 + 1;
                      result = &v31[-*(v2 + 32)];
                      if (result >= 0x10000)
                      {
                        syslog(3, "%s:%s-%d packetlen too large)", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPacket.cpp", "GenerateRawPktData", 852);
                        return &v31[-*(v2 + 32)];
                      }

                      return result;
                    }
                  }
                }
              }
            }
          }

LABEL_61:
          __break(0x5513u);
        }

LABEL_62:
        __break(0x5516u);
        goto LABEL_63;
      }

LABEL_60:
      __break(0x5518u);
      goto LABEL_61;
    }
  }

  result = sub_1000B8660(v2, v11);
  if (result)
  {
    v13 = *(v2 + 56);
    v12 = v11;
    if (v11 > v13)
    {
      goto LABEL_60;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000B8660(uint64_t result, unsigned int a2)
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

  if (*(result + 56) == a2)
  {
    return *(v2 + 24);
  }

  v4 = *(result + 32);
  if (v4 != *(result + 24))
  {
    __break(0x5518u);
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  v5 = *(result + 64);
  if ((v5 + 32) > 0x3F)
  {
LABEL_17:
    __break(0x550Au);
LABEL_18:
    __break(0x5500u);
    goto LABEL_19;
  }

  v6 = *(result + 128);
  result = sub_1000D6C34(*(result + 8), v5);
  if (result < v6)
  {
    syslog(4, "CIapPacket::%s:%d Not enough space available... failed to realign.\n", "RealignPacketBuffer", 1425);
    return 0;
  }

  v7 = *(v2 + 128);
  v8 = __CFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    goto LABEL_18;
  }

  result = (v9 + 1);
  if (v9 == -1)
  {
    goto LABEL_18;
  }

  if (*(v2 + 48) < result)
  {
    *(v2 + 48) = result;
    v10 = *(v2 + 40);
    operator new[]();
  }

  *(v2 + 56) = a2;
  v11 = *(v2 + 40);
  if (!__CFADD__(v11, a2))
  {
    v12 = (v11 + a2);
    *(v2 + 24) = v12;
    *(v2 + 32) = v12;
    *(v2 + 96) = v12;
    *(v2 + 104) = v12;
    memmove(v12, v4, *(v2 + 128));
    return *(v2 + 24);
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000B87AC(uint64_t a1, unint64_t a2, _BYTE *a3, unint64_t a4, void *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_157:
    __break(0x5516u);
LABEL_158:
    __break(0x5507u);
LABEL_159:
    __break(0x550Au);
LABEL_160:
    __break(0x5500u);
LABEL_161:
    sub_1000E1DF4();
  }

  if ((*(a1 + 132) & 4) != 0)
  {
    sub_1000E1D34();
  }

  if (*(a1 + 130) - 1 >= 0xB)
  {
    v10 = 102;
    v11 = a3;
    v12 = a5;
LABEL_153:
    *v12 = v11 - a3;
    return v10;
  }

  v8 = sub_1000C4254();
  if (*(a1 + 130) == 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = *(a1 + 88);
    if (v9)
    {
      v13 = *(a1 + 80);
      v14 = a2 >= v13;
      v15 = a2 - v13;
      if (!v14)
      {
LABEL_156:
        __break(0x5515u);
        goto LABEL_157;
      }

      LODWORD(v9) = v15 > v9;
    }
  }

  *(a1 + 80) = a2;
  v17 = (v8 & 7) != 0 || v8 == 0;
  v61 = v17;
  v18 = 1;
  if (!a4 && !v9)
  {
    v10 = 0;
    v11 = a3;
LABEL_149:
    v12 = a5;
    if (v18)
    {
      if (*(a1 + 130) >= 0xCu)
      {
        v10 = 0;
      }

      else
      {
        v10 = 36;
      }
    }

    goto LABEL_153;
  }

  v19 = 0;
  v10 = 0;
  v60 = v8;
  v20 = a4;
  v11 = a3;
  while (1)
  {
    if (v9)
    {
      v11 = a3;
      v20 = a4;
      if (v19)
      {
        v20 = a4 - (v19 - a3);
        if (a4 < v19 - a3)
        {
          goto LABEL_156;
        }

        v11 = v19;
      }

      sub_1000B8050(a1);
      v19 = 0;
      LOBYTE(v9) = 0;
      *(a1 + 122) = 0;
      *(a1 + 64) = 15;
      *(a1 + 126) = 0;
      *(a1 + 130) = 1;
      goto LABEL_132;
    }

    if (!v11)
    {
      goto LABEL_157;
    }

    if (v11 == -1)
    {
      goto LABEL_155;
    }

    v14 = v20-- != 0;
    if (!v14)
    {
      goto LABEL_156;
    }

    v21 = v11 + 1;
    v22 = *v11;
    v23 = *(a1 + 130);
    if (v23 > 5)
    {
      break;
    }

    if (*(a1 + 130) > 2u)
    {
      switch(v23)
      {
        case 3u:
          LOBYTE(v9) = 0;
          *(a1 + 131) += v22;
          *(a1 + 122) = v22 << 8;
          v44 = 4;
          goto LABEL_121;
        case 4u:
          *(a1 + 24) = 0;
          *(a1 + 131) += v22;
          v51 = *(a1 + 122) + v22;
          if (v51 >= 0x10000)
          {
            goto LABEL_158;
          }

          v52 = (*(a1 + 122) + v22);
          *(a1 + 122) = v51;
          if (v51 < 2u || v52 > *(a1 + 120))
          {
            goto LABEL_124;
          }

          sub_1000B7C60(a1, v52, 0xFFFFFFFFLL, 0, 1);
          v38 = *(a1 + 96);
          if (!v38)
          {
            goto LABEL_130;
          }

          LOBYTE(v9) = 0;
          *(a1 + 130) = 5;
LABEL_107:
          *(a1 + 104) = v38;
          break;
        case 5u:
          if (v22 > 0xE)
          {
            goto LABEL_124;
          }

          *(a1 + 131) += v22;
          v26 = *(a1 + 104);
          if (!v26)
          {
            goto LABEL_157;
          }

          *v26 = v22;
          v27 = *(a1 + 104);
          if (v27 == -1)
          {
            goto LABEL_155;
          }

          *(a1 + 104) = v27 + 1;
          *(a1 + 64) = v22;
          *(a1 + 126) = 0;
          v28 = *(a1 + 122);
          if ((v28 - 2) >> 16)
          {
            goto LABEL_158;
          }

          *(a1 + 128) = v28 - 2;
          *(a1 + 122) = v28 - 1;
          if (v22 != 4)
          {
            LOBYTE(v9) = 0;
            v44 = 7;
            goto LABEL_121;
          }

          if ((v28 - 1) < 2)
          {
            goto LABEL_124;
          }

          LOBYTE(v9) = 0;
          *(a1 + 130) = 6;
          *(a1 + 128) = v28 - 3;
          break;
        default:
          goto LABEL_161;
      }

      goto LABEL_131;
    }

    if (v23 != 1)
    {
      if (v23 != 2)
      {
        goto LABEL_161;
      }

      if (v22 >= 2)
      {
        *(a1 + 24) = 0;
        sub_1000B7C60(a1, v22, 0xFFFFFFFFLL, 0, 1);
        v38 = *(a1 + 96);
        if (v38)
        {
          LOBYTE(v9) = 0;
          *(a1 + 130) = 5;
          *(a1 + 122) = v22;
          *(a1 + 131) += v22;
          goto LABEL_107;
        }

LABEL_130:
        LOBYTE(v9) = 0;
        *(a1 + 130) = 1;
        v10 = 12;
        goto LABEL_131;
      }

      if (*v11)
      {
LABEL_124:
        LOBYTE(v9) = 1;
        goto LABEL_131;
      }

      LOBYTE(v9) = 0;
      v44 = 3;
LABEL_121:
      *(a1 + 130) = v44;
LABEL_131:
      ++v11;
      goto LABEL_132;
    }

    if (v22 != 85)
    {
      LOBYTE(v9) = 0;
      goto LABEL_131;
    }

    LOBYTE(v9) = 0;
    *(a1 + 130) = 2;
    ++v11;
    v19 = v21;
LABEL_132:
    if (v10)
    {
      v58 = 1;
    }

    else
    {
      v58 = v20 == 0;
    }

    if (v58 && (v9 & 1) == 0)
    {
      if (v10)
      {
        v59 = 0;
      }

      else
      {
        v59 = v20 == 0;
      }

      v18 = v59;
      goto LABEL_149;
    }
  }

  if (*(a1 + 130) <= 8u)
  {
    if (v23 == 6)
    {
      *(a1 + 126) = v22 << 8;
      *(a1 + 131) += v22;
      v53 = *(a1 + 104);
      if (!v53)
      {
        goto LABEL_157;
      }

      *v53 = v22;
      v54 = *(a1 + 104);
      if (v54 == -1)
      {
        goto LABEL_155;
      }

      *(a1 + 104) = v54 + 1;
      *(a1 + 130) = 7;
      goto LABEL_113;
    }

    if (v23 != 7)
    {
      if (v23 != 8)
      {
        goto LABEL_161;
      }

      *(a1 + 131) += v22;
      v24 = *(a1 + 104);
      if (!v24)
      {
        goto LABEL_157;
      }

      *v24 = v22;
      v25 = *(a1 + 104);
      if (v25 == -1)
      {
        goto LABEL_155;
      }

      *(a1 + 104) = v25 + 1;
      *(a1 + 130) = 9;
      *(a1 + 68) = v22 << 8;
LABEL_113:
      v55 = *(a1 + 122) - 1;
      LODWORD(v9) = HIWORD(v55);
      if (HIWORD(v55))
      {
        goto LABEL_158;
      }

      *(a1 + 122) = v55;
      goto LABEL_131;
    }

    *(a1 + 126) |= v22;
    *(a1 + 131) += v22;
    v39 = *(a1 + 104);
    if (!v39)
    {
      goto LABEL_157;
    }

    *v39 = v22;
    v40 = *(a1 + 104);
    if (v40 == -1)
    {
      goto LABEL_155;
    }

    *(a1 + 104) = v40 + 1;
    v41 = *(a1 + 122) - 1;
    if (HIWORD(v41))
    {
      goto LABEL_158;
    }

    *(a1 + 122) = v41;
    if (v61)
    {
      goto LABEL_157;
    }

    v42 = *(a1 + 64);
    if ((v42 + 32) > 0x3F)
    {
      goto LABEL_159;
    }

    sub_1000944D4(v60, *(a1 + 8), v42, *(a1 + 126));
    if (sub_100094598(v60, *(a1 + 8)))
    {
      if (*(a1 + 122) < 2u)
      {
        goto LABEL_124;
      }

      *(a1 + 68) = 0;
      v43 = *(a1 + 128) - 2;
      LODWORD(v9) = HIWORD(v43);
      if (HIWORD(v43))
      {
        goto LABEL_158;
      }

      *(a1 + 128) = v43;
      v44 = 8;
      goto LABEL_121;
    }

    *(a1 + 68) = -1;
    LOWORD(v9) = *(a1 + 128);
    if (v9)
    {
      LOBYTE(v9) = 0;
      *(a1 + 130) = 10;
      v57 = *(a1 + 104);
      goto LABEL_127;
    }

    goto LABEL_128;
  }

  if (v23 == 9)
  {
    *(a1 + 131) += v22;
    v56 = *(a1 + 104);
    if (!v56)
    {
      goto LABEL_157;
    }

    *v56 = v22;
    v9 = *(a1 + 104);
    if (v9 == -1)
    {
      goto LABEL_155;
    }

    v57 = v9 + 1;
    *(a1 + 104) = v9 + 1;
    *(a1 + 68) |= v22;
    LODWORD(v9) = *(a1 + 122) - 1;
    if (WORD1(v9))
    {
      goto LABEL_158;
    }

    *(a1 + 122) = v9;
    LOWORD(v9) = *(a1 + 128);
    if (v9)
    {
      LOBYTE(v9) = 0;
      *(a1 + 130) = 10;
LABEL_127:
      *(a1 + 24) = v57;
      goto LABEL_131;
    }

LABEL_128:
    *(a1 + 130) = 11;
    *(a1 + 24) = 0;
    goto LABEL_131;
  }

  if (v23 == 10)
  {
    v45 = v20 + 1;
    if (v20 == -1)
    {
      goto LABEL_160;
    }

    v46 = *(a1 + 122);
    if (v45 >= v46)
    {
      v47 = *(a1 + 122);
    }

    else
    {
      v47 = v20 + 1;
    }

    v20 = v45 - v47;
    if (v45 < v47)
    {
      goto LABEL_156;
    }

    v14 = v46 >= v47;
    v48 = v46 - v47;
    if (!v14)
    {
      goto LABEL_156;
    }

    if (v48 >> 16)
    {
      goto LABEL_158;
    }

    *(a1 + 122) = v48;
    if (__CFADD__(v11, v47))
    {
      goto LABEL_155;
    }

    memcpy(*(a1 + 104), v11, v47);
    if (!v47)
    {
LABEL_99:
      v9 = *(a1 + 104);
      if (__CFADD__(v9, v47))
      {
        goto LABEL_155;
      }

      *(a1 + 104) = v9 + v47;
      LOWORD(v9) = *(a1 + 122);
      if (v9)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        *(a1 + 130) = 11;
      }

      goto LABEL_132;
    }

    v49 = *(a1 + 131);
    v50 = v47;
    while (1)
    {
      v49 += *v11;
      *(a1 + 131) = v49;
      if (v11 == -1)
      {
        break;
      }

      ++v11;
      if (!--v50)
      {
        goto LABEL_99;
      }
    }

LABEL_155:
    __break(0x5513u);
    goto LABEL_156;
  }

  if (v23 != 11)
  {
    goto LABEL_161;
  }

  v29 = *(a1 + 131) + v22;
  *(a1 + 131) = v29;
  if (v29)
  {
    goto LABEL_124;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (!dword_10012B6D8[0])
  {
    v37 = 0;
    goto LABEL_142;
  }

  sub_1000B7B44(*(a1 + 8));
  if (!*(a1 + 144))
  {
    goto LABEL_71;
  }

  v30 = *(a1 + 8);
  if (!v30 || (v30 & 7) != 0)
  {
    goto LABEL_157;
  }

  result = (*(*v30 + 208))(v30);
  if (result >= 5)
  {
    goto LABEL_162;
  }

  if (~qword_10012C468 < 8 * result)
  {
    goto LABEL_155;
  }

  v32 = qword_10012C468[result];
  if (v32)
  {
    v33 = (qword_10012C468[result] & 7) == 0;
  }

  else
  {
    v33 = 0;
  }

  if (!v33)
  {
    goto LABEL_157;
  }

  result = sub_1000CA714();
  v34 = *(a1 + 144);
  v35 = result - v34;
  if (result < v34)
  {
    goto LABEL_156;
  }

  v36 = v32[19];
  if (v36 >= 8)
  {
    goto LABEL_159;
  }

  if (v36 < 4)
  {
    if (~dword_10012B6D8 < 4 * v36)
    {
      goto LABEL_155;
    }

    if (dword_10012B6D8[v36])
    {
      (*(*v32 + 104))(v32, v35, 0, 0);
    }

LABEL_71:
    v37 = sub_1000CA714();
LABEL_142:
    v19 = 0;
    v20 = 0;
    LOBYTE(v9) = 0;
    *(a1 + 144) = v37;
    *(a1 + 148) = 0;
    *(a1 + 130) = 12;
    *(a1 + 72) = a2;
    v11 = v21;
    *(a1 + 104) = 0;
    goto LABEL_132;
  }

LABEL_162:
  __break(0x5512u);
  return result;
}

uint64_t sub_1000B8FA0(uint64_t result, const void *a2, size_t __n)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if (__n)
  {
    v3 = *(result + 56);
    if (v3 <= __n)
    {
      __break(0x5518u);
    }

    else
    {
      v4 = *(result + 32);
      if (__n <= v4)
      {
        v5 = (v4 - __n);
        *(result + 32) = v5;
        v6 = *(result + 24);
        if (__n <= v6)
        {
          *(result + 24) = v6 - __n;
          v7 = *(result + 128) + __n;
          if (v7 < 0x10000)
          {
            *(result + 128) = v7;
            v8 = v3 >= __n;
            v9 = v3 - __n;
            if (v8)
            {
              *(result + 56) = v9;
              return memcpy(v5, a2, __n);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(0x5507u);
LABEL_16:
          __break(0x5515u);
          return result;
        }
      }
    }

    __break(0x5513u);
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000B9034(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_35;
  }

  if (*(result + 134))
  {
    --*(result + 134);
    return result;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8[0] && *(v1 + 144))
  {
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_35;
    }

    result = (*(*result + 208))(result);
    if (result >= 5)
    {
LABEL_36:
      __break(0x5512u);
      goto LABEL_37;
    }

    if (~qword_10012C468 < 8 * result)
    {
      goto LABEL_37;
    }

    v2 = qword_10012C468[result];
    if (v2)
    {
      v3 = (qword_10012C468[result] & 7) == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_35;
    }

    result = sub_1000CA714();
    v4 = *(v1 + 144);
    v5 = result - v4;
    if (result < v4)
    {
LABEL_38:
      __break(0x5515u);
      goto LABEL_39;
    }

    v6 = v2[19];
    if (v6 >= 8)
    {
LABEL_39:
      __break(0x550Au);
      return result;
    }

    if (v6 >= 4)
    {
      goto LABEL_36;
    }

    if (~dword_10012B6D8 < 4 * v6)
    {
LABEL_37:
      __break(0x5513u);
      goto LABEL_38;
    }

    if (dword_10012B6D8[v6])
    {
      (*(*v2 + 104))(v2, v5, 0, 0);
    }

    *(v1 + 144) = 0;
  }

  v7 = *v1;
  if ((*(v1 + 132) & 4) == 0)
  {
    v8 = *(v7 + 1);

    return v8(v1);
  }

  v9 = *v7;
  result = sub_10004AB10();
  if (!result || (result & 7) != 0 || !v10 || (v10 & 7) != 0)
  {
LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

  v11 = v10[38];
  v12 = *(v10 + 78);
  v13 = *(*result + 104);

  return v13();
}

uint64_t sub_1000B927C(uint64_t result, int a2, __int16 a3)
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

  sub_1000B7350(result);
  *v3 = off_100116CB8;
  *(v3 + 152) = a2;
  *(v3 + 156) = a3;
  *(v3 + 132) |= 4u;
  result = sub_1000CD4A4(a2);
  if (!result)
  {
    sub_1000E1D34();
  }

  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  v6 = sub_100018DC0(result);
  if (!v6)
  {
    sub_1000E1D34();
  }

  sub_1000B7570(v3, v6, 0, 0xFFFFFFFFLL, 0, -1, 0, 0);
  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 136))(result);
    if (!WORD1(result))
    {
      sub_1000B7C60(v3, result - 2, 0, 2, 0);
      return v3;
    }
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_1000B939C(uint64_t result, int a2, __int16 a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B927C(result, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B93B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B7E50(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B93C4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B7E50(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B940C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 128);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B9424(uint64_t result)
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

  v2 = *(result + 64);
  if ((v2 + 32) >= 0x40)
  {
LABEL_17:
    __break(0x550Au);
    return result;
  }

  result = sub_1000D6C34(*(result + 8), v2);
  v3 = *(v1 + 60);
  v4 = result >= v3;
  v5 = result - v3;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = *(v1 + 128);
  v4 = v5 >= v6;
  v7 = v5 - v6;
  if (!v4)
  {
    goto LABEL_14;
  }

  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (__CFADD__(v8, v9))
  {
    goto LABEL_15;
  }

  v10 = *(v1 + 24);
  if (__CFADD__(v10, v6))
  {
    goto LABEL_15;
  }

  v11 = v8 + v9 - v10 - v6;
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
LABEL_14:
    __break(0x5515u);
LABEL_15:
    __break(0x5513u);
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  if (v13 >= v7)
  {
    return v7;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1000B94C8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  v1 = *(result + 40);
  if (!v1)
  {
    __break(0x5518u);
LABEL_7:
    __break(0x5516u);
    goto LABEL_8;
  }

  v2 = *(result + 52);
  *(result + 56) = v2;
  if (!__CFADD__(v1, v2))
  {
    v3 = v1 + v2;
    *(result + 124) = 0;
    *(result + 24) = v3;
    *(result + 32) = v3;
    *(result + 128) = 0;
    *(result + 96) = v3;
    *(result + 104) = v3;
    return result;
  }

LABEL_8:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000B9510(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 32);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B9528(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 124);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B9540(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 133);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B9558(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5, char a6, unsigned int a7, uint64_t a8)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (a4 >= 8 || (result = sub_1000270E0(result, a2, a3, a4, a5, 0, 0), *v8 = off_100116D28, *(v8 + 160) = 0, *(v8 + 168) = 0, *(v8 + 152) = a8, *(v8 + 178) = a6, a7 > 3))
  {
    __break(0x550Au);
LABEL_13:
    __break(0x5516u);
    return result;
  }

  *(v8 + 180) = a7;
  *(v8 + 190) = 0;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0x7FFF00000000;
  result = pthread_mutex_init((v8 + 216), 0);
  *(v8 + 8) = 1024;
  *(v8 + 12) = 0;
  if (!a8 || (a8 & 7) != 0)
  {
    goto LABEL_13;
  }

  *(v8 + 40) = sub_10005AC88(a8);
  v12 = sub_1000C4254();
  *(v8 + 144) = v12;
  if (!v12)
  {
    sub_1000DDEEC(0, 4, "%s:%d NULL == m_pProtocolMgr\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPortVport.cpp", 74);
  }

  if (!*(v8 + 152))
  {
    sub_1000DDEEC(0, 4, "%s:%d NULL == m_sourceConnection\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPortVport.cpp", 79);
  }

  return v8;
}

uint64_t sub_1000B968C(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5, char a6, unsigned int a7, uint64_t a8)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a4 <= 7 && a7 < 4)
  {
    return sub_1000B9558(result, a2, a3, a4, a5, a6, a7, a8);
  }

  __break(0x550Au);
  return result;
}

NSObject *sub_1000B96B8(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result->isa = off_100116D28;
    sub_1000B9034(result[21].isa);
    v1[21].isa = 0;
    pthread_mutex_destroy(&v1[27]);

    return sub_10002740C(v1);
  }

  return result;
}

NSObject *sub_1000B972C(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000B96B8(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000B9740(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000B96B8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000B9788(uint64_t a1, char **lpsrc)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_31;
  }

  if (lpsrc)
  {
    v4 = *(a1 + 152);
    if (v4)
    {
      if ((v4 & 7) == 0)
      {
        v5 = sub_100018DC0(v4);
        if (!v5)
        {
          sub_1000E1D34();
        }

        if ((lpsrc & 7) == 0)
        {
          v6 = v5;
          v7 = (*(*lpsrc + 3))(lpsrc);
          v8 = sub_1000D6C34(v6, 0);
          v9 = (*(*lpsrc + 2))(lpsrc);
          v10 = *(a1 + 152);
          v11 = *(a1 + 178);
          pthread_mutex_unlock(&stru_10012B758);
          if (!v7)
          {
LABEL_28:
            v19 = **lpsrc;
            sub_1000B9034(v20);
            return;
          }

          while (1)
          {
            v12 = v7 >= v8 ? v8 : v7;
            v13 = sub_10008C920(v10, v11, v9, v12);
            v14 = v7 >= v12;
            v7 -= v12;
            if (!v14)
            {
              break;
            }

            if (__CFADD__(v9, v12))
            {
              goto LABEL_30;
            }

            v9 += v12;
            if (v7)
            {
              v15 = v13;
            }

            else
            {
              v15 = 0;
            }

            if ((v15 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          __break(0x5515u);
LABEL_30:
          __break(0x5513u);
        }
      }

      goto LABEL_31;
    }
  }

  v16 = *(a1 + 190);
  if (v16 < 2)
  {
    if ((v16 & 1) == 0)
    {
      syslog(4, "CIapPortVPort::_PortTransmitPacket: Interface not valid or iAP packet not initialized\n");
    }

    if (!lpsrc)
    {
      v18 = 0;
      goto LABEL_27;
    }

    if ((lpsrc & 7) == 0)
    {
      v17 = **lpsrc;
LABEL_27:
      sub_1000B9034(v18);
      pthread_mutex_unlock(&stru_10012B758);
      return;
    }

LABEL_31:
    __break(0x5516u);
  }

  __break(0x550Au);
}

uint64_t sub_1000B99C0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  if (a2)
  {
    result = *(result + 152);
    if (result)
    {
      if ((result & 7) == 0)
      {
        v6 = sub_100018DC0(result);
        if (!v6)
        {
          sub_1000E1D34();
        }

        v7 = sub_1000D6C34(v6, 0);
        if (!a3)
        {
LABEL_26:
          operator delete();
        }

        v8 = v7;
        v9 = a2;
        while (1)
        {
          v10 = a3 >= v8 ? v8 : a3;
          result = sub_10008C920(*(v3 + 152), *(v3 + 178), v9, v10);
          v11 = a3 >= v10;
          a3 -= v10;
          if (!v11)
          {
            break;
          }

          if (__CFADD__(v9, v10))
          {
            goto LABEL_28;
          }

          v9 += v10;
          if (a3)
          {
            v12 = result;
          }

          else
          {
            v12 = 0;
          }

          if ((v12 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        __break(0x5515u);
LABEL_28:
        __break(0x5513u);
      }

      goto LABEL_29;
    }
  }

  v13 = *(v3 + 190);
  if (v13 >= 2)
  {
LABEL_30:
    __break(0x550Au);
    return result;
  }

  if ((v13 & 1) == 0)
  {
    syslog(4, "CIapPortVPort::PortTransmitData: Interface not valid or iAP packet not initialized\n");
  }

  if (a2)
  {
    operator delete();
  }

  return 6;
}

uint64_t sub_1000B9B08(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v1 = *(result + 152);
  if (v1)
  {
    if ((v1 & 7) == 0)
    {
      result = sub_100018DC0(*(result + 152));
      if (!result)
      {
        return result;
      }

      if ((result & 7) == 0)
      {
        v2 = *(*result + 32);

        return v2();
      }
    }

    goto LABEL_15;
  }

  v3 = *(result + 190);
  if (v3 >= 2)
  {
LABEL_16:
    __break(0x550Au);
    return result;
  }

  if ((v3 & 1) == 0)
  {
    syslog(4, "CIapPortVPort::PortWaitSendDone: Interface not valid\n");
  }

  return 6;
}

uint64_t sub_1000B9BC4(uint64_t result, _BYTE *a2, unsigned int a3)
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

  if (a2)
  {
    v13[0] = 0xAAAAAAAAAAAAAAAALL;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_1000DDCB4(v13, 1u);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13[0] = off_100113858;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_1000DDDDC(v13, &v11);
    v6 = 1000 * v11;
    if ((v11 * 1000) >> 64 != (1000 * v11) >> 63)
    {
LABEL_27:
      __break(0x550Cu);
      goto LABEL_28;
    }

    v7 = v6 + v12 / 1000000;
    if (__OFADD__(v6, v12 / 1000000))
    {
LABEL_28:
      __break(0x5500u);
      return result;
    }

    v8 = a3;
    v9 = a2;
    while (1)
    {
      v14 = 0;
      result = *(v3 + 168);
      if (!result)
      {
        sub_1000B7AA0();
      }

      if ((result & 7) != 0)
      {
        break;
      }

      result = sub_1000B87AC(result, v7, v9, v8, &v14);
      if (result == 102)
      {
        result = sub_1000B9034(*(v3 + 168));
        *(v3 + 168) = 0;
        v14 = 0;
      }

      else if (!result)
      {
        result = *(v3 + 144);
        if (!result || (result & 7) != 0)
        {
          break;
        }

        result = sub_1000C4BBC(result, *(v3 + 168));
        *(v3 + 168) = 0;
      }

      if (__CFADD__(v9, v14))
      {
        goto LABEL_26;
      }

      v10 = v8 - v14;
      if (v8 < v14)
      {
        goto LABEL_25;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_24;
      }

      v9 += v14;
      v8 = v10;
      if (!v10)
      {
        v13[0] = off_100113858;
        sub_1000DDCF4(v13);
        return a2 != 0;
      }
    }

LABEL_23:
    __break(0x5516u);
LABEL_24:
    __break(0x5507u);
LABEL_25:
    __break(0x5515u);
LABEL_26:
    __break(0x5513u);
    goto LABEL_27;
  }

  syslog(4, "CIapPortVPort::HandleReceiveBuffer: null buffer!\n");
  return a2 != 0;
}

uint64_t sub_1000B9D88(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000B9D9C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000B9DB0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 144);
      if (result && (result & 7) == 0)
      {
        return (*(*result + 48))(result, a2, a3, v3, 0);
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000B9E04(uint64_t result, __int16 a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  if (!*(result + 152))
  {
    return result;
  }

  v3 = *(result + 180);
  if (v3 >= 4)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if (v3 == 1)
  {
    pthread_mutex_lock((result + 216));
    v5 = *(v2 + 194) & 0xFFFE | a2;
    *(v2 + 194) = v5;
    pthread_mutex_unlock((v2 + 216));
    v6 = *(v2 + 152);
    v7 = *(v2 + 178);
    v8 = *(v2 + 192);

    return sub_10008CAE8(v6, v2, v7, v8, v5);
  }

  return result;
}

uint64_t sub_1000B9EA8(uint64_t result, __int16 a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  if (!*(result + 152))
  {
    return result;
  }

  v3 = *(result + 180);
  if (v3 >= 4)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if (v3 == 1)
  {
    pthread_mutex_lock((result + 216));
    v5 = *(v2 + 192) & 0xFFFE | a2;
    *(v2 + 192) = v5;
    pthread_mutex_unlock((v2 + 216));
    v6 = *(v2 + 152);
    v7 = *(v2 + 178);
    v8 = *(v2 + 194);

    return sub_10008CAE8(v6, v2, v7, v5, v8);
  }

  return result;
}

uint64_t sub_1000B9F4C(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  if (!*(result + 152))
  {
    return result;
  }

  v3 = *(result + 180);
  if (v3 >= 4)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(result + 192);
    v6 = *(result + 194);
    pthread_mutex_lock((result + 216));
    pthread_mutex_unlock((v2 + 216));
    if (a2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(v2 + 192) = v5 & 0xFFFD | v7;
    *(v2 + 194) = v6;
    v8 = *(v2 + 152);
    v9 = *(v2 + 178);

    return sub_10008CAE8(v8, v2, v9, v5 & 0xFFFDu | v7, v6);
  }

  return result;
}

uint64_t sub_1000BA010(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  if (!*(result + 152))
  {
    return result;
  }

  v3 = *(result + 180);
  if (v3 >= 4)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(result + 192);
    v6 = *(result + 194);
    pthread_mutex_lock((result + 216));
    pthread_mutex_unlock((v2 + 216));
    if (a2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    *(v2 + 192) = v5 & 0xFFFC | v7;
    *(v2 + 194) = v6;
    v8 = *(v2 + 152);
    v9 = *(v2 + 178);

    return sub_10008CAE8(v8, v2, v9, v5 & 0xFFFCu | v7, v6);
  }

  return result;
}

BOOL sub_1000BA0D4(_BOOL8 result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (a2 >= 8 || (v2 = *(result + 180), v2 > 3))
  {
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  return v2 == 1 && ((1 << a2) & *(result + 186)) != 0;
}

BOOL sub_1000BA120(_BOOL8 result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (a2 >= 2 || (v2 = *(result + 180), v2 > 3))
  {
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  return v2 == 1 && ((1 << a2) & *(result + 184)) != 0;
}

const char *sub_1000BA16C(const char *result)
{
  if (result && (result & 7) == 0)
  {
    return "VPort";
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA188(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 3;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA1A0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA1B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA1D0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA1E8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 100;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA200(uint64_t result)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_14;
  }

  v2 = (*(*result + 280))(result);
  result = (*(*v1 + 392))(v1);
  if (v2 >= 4)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  if (v2 == 1 || result == 0)
  {
    return 512;
  }

  if ((result & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v4 = *(*result + 152);

  return v4();
}

uint64_t sub_1000BA2F4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if ((*(result + 186) & 0x40) == 0)
  {
    return 0;
  }

  result = *(result + 152);
  if (!result || (result & 7) != 0 || (result = sub_100018DC0(result)) == 0 || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    v1 = *(*result + 240);

    return v1();
  }

  return result;
}

uint64_t sub_1000BA37C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if ((*(result + 186) & 0x40) == 0)
  {
    return 0;
  }

  result = *(result + 152);
  if (!result || (result & 7) != 0 || (result = sub_100018DC0(result)) == 0 || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    v1 = *(*result + 248);

    return v1();
  }

  return result;
}

uint64_t sub_1000BA404(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2 || !*(result + 152))
    {
      *(result + 152) = a2;
      return result;
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA42C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 152);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA444(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    return result;
  }

  result = *(result + 152);
  if (result)
  {
    if ((result & 7) == 0)
    {
      return sub_100018DC0(result);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000BA46C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 180);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000BA490(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2 || (v2 = *(result + 160)) == 0 || v2 == a2)
    {
      *(result + 160) = a2;
      return result;
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA4C0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 160);
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000BA4D8(_BOOL8 result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      return *(result + 84) == *(a2 + 84);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA510(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000089F8(result);
  }

  __break(0x5516u);
  return result;
}

pthread_mutex_t *sub_1000BA524(pthread_mutex_t *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000C36E0(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA538(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BA54C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BA560(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BA574(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116EF0;
    *(result + 8) = a2;
    sub_1000BDFE0(result + 16, a2, result);
    sub_1000BD050((v2 + 14), a2, v2);
    sub_1000BDB90((v2 + 26), a2, v2);
    sub_1000BFC70((v2 + 42), a2, v2);
    sub_1000C0280((v2 + 54), a2, v2);
    sub_1000C05F0((v2 + 66), a2, v2);
    sub_1000C0914((v2 + 78), a2, v2);
    sub_1000C0FB4((v2 + 90), a2, v2);
    sub_1000C1554((v2 + 102), a2, v2);
    sub_1000BC43C((v2 + 114), a2, v2);
    sub_1000C1A20((v2 + 126), a2, v2);
    sub_1000C2038((v2 + 138), a2, v2);
    sub_1000C25B0((v2 + 150), a2, v2);
    sub_1000BCCC0((v2 + 162), a2, v2);
    v2[174] = off_100116F10;
    v2[175] = v2;
    v2[176] = a2;
    v2[177] = 0;
    return v2;
  }

  return result;
}

uint64_t sub_1000BA6D0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BA574(result, a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA6E4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116EF0;
    sub_1000BA7B4(result, 0);
    sub_1000BC5DC(v1 + 1296);
    sub_1000BC5DC(v1 + 1200);
    sub_1000BC5DC(v1 + 1104);
    sub_1000BC5DC(v1 + 1008);
    sub_1000BC5DC(v1 + 912);
    sub_1000BC5DC(v1 + 816);
    sub_1000BC5DC(v1 + 720);
    sub_1000BC5DC(v1 + 624);
    sub_1000BC5DC(v1 + 528);
    sub_1000BC5DC(v1 + 432);
    sub_1000BC5DC(v1 + 336);
    sub_1000BC5DC(v1 + 208);
    sub_1000BC5DC(v1 + 112);
    sub_1000BC5DC(v1 + 16);
    return v1;
  }

  return result;
}

uint64_t sub_1000BA7B4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if ((*(*result + 176))(result))
  {
    sub_1000BADF8(v2 + 16, a2);
  }

  sub_1000BB094(v2 + 112, a2);
  sub_1000BB2E0(v2 + 208, a2);
  sub_1000BB430(v2 + 336, a2);
  sub_1000BB430(v2 + 432, a2);
  sub_1000BB430(v2 + 528, a2);
  sub_1000BB430(v2 + 624, a2);
  sub_1000BB430(v2 + 720, a2);
  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    if ((*(*result + 176))(result))
    {
      sub_1000BB430(v2 + 816, a2);
    }

    sub_1000BB430(v2 + 912, a2);
    sub_1000BB430(v2 + 1008, a2);
    sub_1000BB430(v2 + 1104, a2);
    sub_1000BB430(v2 + 1200, a2);

    return sub_1000BB430(v2 + 1296, a2);
  }

  return result;
}

uint64_t sub_1000BA90C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BA920(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA934(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA948(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA95C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA970(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA984(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA998(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA9AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA9C0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA9D4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA9E8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BA9FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAA10(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAA24(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAA38(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BA6E4(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAA4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BA6E4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAA94(uint64_t result)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  result = sub_100018DC0(result);
  if (result)
  {
    if ((result & 7) != 0)
    {
LABEL_22:
      __break(0x5516u);
      return result;
    }

    result = *(result + 40);
  }

  else
  {
    result = v1[1];
    if (!result || (result & 7) != 0)
    {
      goto LABEL_22;
    }

    result = sub_10005AC88(result);
  }

  v1[177] = result;
  if (!v1[10])
  {
    goto LABEL_21;
  }

  sub_1000BC6F8((v1 + 2));
  result = sub_1000BC6F8((v1 + 14));
  if (!v1[34] || (result = sub_1000BC6F8((v1 + 26)), !v1[50]) || (sub_1000BC6F8((v1 + 42)), sub_1000BAC1C((v1 + 54)), sub_1000BAC4C((v1 + 66)), sub_1000BC6F8((v1 + 78)), result = sub_1000BC6F8((v1 + 90)), !v1[110]))
  {
LABEL_21:
    __break(0x5518u);
    goto LABEL_22;
  }

  sub_1000BC6F8((v1 + 102));
  sub_1000BACC4((v1 + 114));
  sub_1000BC6F8((v1 + 126));
  sub_1000BC6F8((v1 + 138));
  sub_1000BC6F8((v1 + 150));

  return sub_1000BAD74((v1 + 162));
}

uint64_t sub_1000BABA8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    if (*(result + 64))
    {
      return sub_1000BC6F8(result);
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BABC8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BABDC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    if (*(result + 64))
    {
      return sub_1000BC6F8(result);
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BABFC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    if (*(result + 64))
    {
      return sub_1000BC6F8(result);
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAC1C(uint64_t result)
{
  if (result && (result & 7) == 0 && ((v1 = *(result + 56)) != 0 ? (v2 = (*(result + 56) & 7) == 0) : (v2 = 0), v2))
  {
    *(v1 + 16) = 0;
    *(v1 + 9) = 0;
    return sub_1000BC6F8(result);
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BAC4C(uint64_t result)
{
  if (result && (result & 7) == 0 && ((v1 = *(result + 56)) != 0 ? (v2 = (*(result + 56) & 7) == 0) : (v2 = 0), v2))
  {
    *(v1 + 16) = 0;
    *(v1 + 9) = 0;
    return sub_1000BC6F8(result);
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BAC7C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAC90(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BACA4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    if (*(result + 64))
    {
      return sub_1000BC6F8(result);
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BACC4(uint64_t result)
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

  if (!*(result + 64))
  {
    __break(0x5518u);
LABEL_10:
    __break(0x5516u);
    return result;
  }

  result = _AXSVoiceOverTouchEnabled();
  v2 = *(v1 + 56);
  if (!v2 || (v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  *(v2 + 16) = result != 0;
  *(v2 + 9) = 0;

  return sub_1000BC6F8(v1);
}

uint64_t sub_1000BAD38(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAD4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAD60(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BC6F8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BAD74(uint64_t result)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!*(result + 64))
  {
    __break(0x5518u);
LABEL_13:
    __break(0x5516u);
    return result;
  }

  result = _AXSAssistiveTouchHardwareEnabled();
  if (result)
  {
    v2 = 1;
  }

  else
  {
    result = _AXSAssistiveTouchEnabled();
    v2 = result != 0;
  }

  v3 = *(v1 + 56);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_13;
  }

  *(v3 + 16) = v2;
  *(v3 + 9) = 0;

  return sub_1000BC6F8(v1);
}

uint64_t sub_1000BADF8(uint64_t result, uint64_t a2)
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

  if (a2)
  {
    sub_1000BF998(result);
    return sub_1000BB430(v2, a2);
  }

  sub_1000BF518(result, 0, 1);
  if (!(*(*v2 + 152))(v2))
  {
    return sub_1000BB430(v2, a2);
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  if (!(*(*result + 176))(result))
  {
    return sub_1000BB430(v2, a2);
  }

  result = v2[2];
  if (!result)
  {
    goto LABEL_36;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v4 = sub_100018DC0(result);
  result = v2[2];
  if (!result)
  {
    goto LABEL_36;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  v5 = sub_10005AC88(result);
  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (*(*result + 592))(result, v6);
  v11 = 0;
  result = sub_10006547C(&v11 + 1, &v11);
  if (result > 0x1F)
  {
    goto LABEL_37;
  }

  if (result)
  {
    return sub_1000BB430(v2, a2);
  }

  if (HIDWORD(v11) > 3)
  {
    goto LABEL_37;
  }

  if (HIDWORD(v11) != 1)
  {
    return sub_1000BB430(v2, a2);
  }

  if (v11 > 7)
  {
    goto LABEL_37;
  }

  if (!v11)
  {
    return sub_1000BB430(v2, a2);
  }

  result = sub_1000388B8();
  if (!result)
  {
    __break(0x5518u);
LABEL_36:
    __break(0x5516u);
    goto LABEL_37;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  result = (*(*result + 384))(result);
  v10 = result;
  if (!result)
  {
LABEL_33:
    sub_1000698F8(&v10);
    return sub_1000BB430(v2, a2);
  }

  v9 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_36;
  }

  if (!(*(*result + 288))(result))
  {
    goto LABEL_33;
  }

  result = (*(*v9 + 352))(v9);
  if (result)
  {
    goto LABEL_33;
  }

  if (v7 <= 3)
  {
    if (v7)
    {
      (*(*v8 + 312))(v8);
    }

    goto LABEL_33;
  }

LABEL_37:
  __break(0x550Au);
  return result;
}

void sub_1000BB094(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_42;
  }

  if (!(*(*a1 + 152))(a1))
  {
    return;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_42;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_42;
  }

  v5 = sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_42;
  }

  v7 = sub_10005AC88(v6);
  if (!v5)
  {
    v5 = v7;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_42;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_42;
  }

  v9 = sub_10005BDFC(v8);
  v10 = *(a1 + 56);
  if (!v10 || (v10 & 7) != 0)
  {
    goto LABEL_42;
  }

  v11 = v9;
  v12 = *v10;
  if (!v12)
  {
    goto LABEL_20;
  }

  if ((v12 & 7) != 0)
  {
LABEL_42:
    __break(0x5516u);
    goto LABEL_43;
  }

  v13 = *(v12 + 8);
  if (v13 >= 2)
  {
LABEL_43:
    __break(0x550Au);
    return;
  }

  if ((v13 & 1) != 0 && *(v12 + 12))
  {
    sub_1000DDEEC(0, 4, "%s:%d unexpected line out on saved !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1706);
  }

LABEL_20:
  if (!v5 || !sub_10006852C(v5))
  {
    return;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_42;
  }

  if ((v14 & 7) != 0)
  {
    goto LABEL_42;
  }

  v15 = sub_10005BC54(v14);
  if (!v15 || (v15 & 7) != 0)
  {
    goto LABEL_42;
  }

  v16 = **(v15 + 432);
  if (v11 != v11)
  {
    goto LABEL_43;
  }

  if (v11 == 14)
  {
    goto LABEL_31;
  }

  if ((v17 & 7) != 0 || !v17)
  {
    goto LABEL_42;
  }

  if (!(*(*v17 + 80))(v17, 0))
  {
    if (a2)
    {
      return;
    }

    v18 = a1;
    v19 = 0;
    goto LABEL_39;
  }

LABEL_31:
  v18 = a1;
  if (a2)
  {
    v19 = 1;
LABEL_39:

    sub_1000BD71C(v18, v19, 0, 1);
    return;
  }

  sub_1000BD8A0(a1, v5, 0);
}

void sub_1000BB2E0(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_21;
  }

  if (!(*(*a1 + 152))(a1))
  {
    return;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0 || (v5 = sub_100018DC0(v4), (v6 = *(a1 + 56)) == 0) || (v6 & 7) != 0 || (v7 = *v6) == 0 || (v7 & 7) != 0)
  {
LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  v8 = *(v7 + 8);
  if (v8 >= 2)
  {
LABEL_22:
    __break(0x550Au);
    return;
  }

  v9 = v5;
  if ((v8 & 1) != 0 && *(v7 + 12))
  {
    sub_1000DDEEC(0, 4, "%s:%d unexpected line in on saved !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 2122);
  }

  if (v9 && sub_100068624(v9) && (*(*a1 + 152))(a1))
  {

    sub_1000BB430(a1, a2);
  }
}

uint64_t sub_1000BB430(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *result;
    if (*(result + 88))
    {
      v5 = 0;
      do
      {
        (*(v3 + 24))(v2, v5, a2, 0);
        v5 = (v5 + 1);
        v3 = *v2;
      }

      while (v5 < v2[22]);
    }

    result = (*(v3 + 152))(v2);
    if (result)
    {
      if ((*(*v2 + 160))(v2))
      {
        (*(*v2 + 40))(v2, 0);
      }

      v6 = *(*v2 + 184);

      return v6(v2);
    }
  }

  return result;
}

uint64_t sub_1000BB5AC(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_21;
  }

  if (a2 >= 0x10)
  {
LABEL_21:
    __break(0x550Au);
    JUMPOUT(0x1000BB66CLL);
  }

  switch(a2)
  {
    case 0u:
      result = a1 + 112;
      break;
    case 1u:
      result = a1 + 208;
      break;
    case 2u:
      result = a1 + 16;
      break;
    case 3u:
      result = a1 + 336;
      break;
    case 4u:
      result = a1 + 624;
      break;
    case 5u:
      result = a1 + 432;
      break;
    case 6u:
      result = a1 + 720;
      break;
    case 7u:
      result = a1 + 816;
      break;
    case 8u:
      result = a1 + 528;
      break;
    case 9u:
      result = a1 + 912;
      break;
    case 0xAu:
      result = a1 + 1008;
      break;
    case 0xBu:
      result = a1 + 1104;
      break;
    case 0xCu:
      result = a1 + 1200;
      break;
    case 0xDu:
      result = a1 + 1296;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1000BB6A4(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 >= 0x10)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (a2 > 0xD)
  {
    return 0;
  }

  else
  {
    return dword_1000F0104[a2];
  }
}

uint64_t sub_1000BB6E0(uint64_t result, int a2, unint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if ((a2 == 0x4000 || a2 == 2048) && a3 <= 0xD)
    {
      sub_1000BB73C((result + qword_1000F0140[a3]), 1);
    }

    return 0;
  }

  return result;
}

void sub_1000BB73C(unsigned __int8 *a1, int a2)
{
  if (!a1 || (v3 = a1, (a1 & 7) != 0))
  {
LABEL_72:
    __break(0x5516u);
LABEL_73:
    __break(0x5513u);
LABEL_74:
    if (*(v3 + 6) <= 0xFu)
    {
      syslog(3, "Unknown settings type(%d) for preference(%d) id(%d)\n", v2, *(v3 + 6), v4);
      abort();
    }

    goto LABEL_76;
  }

  v5 = a1[36];
  if (v5 >= 2)
  {
LABEL_76:
    __break(0x550Au);
    return;
  }

  if ((v5 & 1) != 0 || (a2) && (*(*a1 + 176))(a1) && (!(*(*v3 + 48))(v3) || (*(*v3 + 160))(v3)))
  {
    if (*(v3 + 22))
    {
      v4 = 0;
      do
      {
        v7 = v3[7];
        if (__CFADD__(v7, 24 * v4))
        {
          goto LABEL_73;
        }

        v2 = v7 + 24 * v4;
        if (v7)
        {
          v8 = (v2 & 7) == 0;
        }

        else
        {
          v8 = 0;
        }

        if (!v8)
        {
          goto LABEL_72;
        }

        v9 = *(v2 + 8);
        if (v9 > 1)
        {
          goto LABEL_76;
        }

        if ((v9 & 1) != 0 || a2)
        {
          if (v9)
          {
            *(v2 + 9) = 1;
          }

          *(v2 + 8) = 0;
          v2 = v3[10];
          if (__CFADD__(v2, 4 * v4))
          {
            goto LABEL_73;
          }

          if (!v2)
          {
            goto LABEL_72;
          }

          v2 += 4 * v4;
          if ((v2 & 3) != 0)
          {
            goto LABEL_72;
          }

          LODWORD(v2) = *v2;
          if ((v2 + 4) > 7)
          {
            goto LABEL_76;
          }

          v10 = 24 * v4;
          if (v2)
          {
            if (v2 != 1)
            {
              goto LABEL_74;
            }

            v11 = (*(*v3 + 120))(v3, v4);
            v12 = v3[7];
            if (__CFADD__(v12, v10))
            {
              goto LABEL_73;
            }

            if (!v12)
            {
              goto LABEL_72;
            }

            v13 = v12 + 24 * v4;
            LODWORD(v2) = v13 & 7;
            if ((v13 & 7) != 0)
            {
              goto LABEL_72;
            }

            LODWORD(v2) = *(v13 + 10);
            if (v2 > 1)
            {
              goto LABEL_76;
            }

            if ((v2 & 1) == 0)
            {
              *(v13 + 16) = v11;
              *(v13 + 10) = 1;
            }

            if (*(v13 + 16) != v11)
            {
              goto LABEL_38;
            }

            if (a2)
            {
              v14 = *(v13 + 9);
              if (v14 > 1)
              {
                goto LABEL_76;
              }

              if (v14)
              {
LABEL_38:
                (*(*v3 + 144))(v3, v4);
              }
            }
          }

          else
          {
            v15 = (*(*v3 + 112))(v3, v4);
            v16 = v3[7];
            if (__CFADD__(v16, v10))
            {
              goto LABEL_73;
            }

            if (!v16)
            {
              goto LABEL_72;
            }

            v17 = v16 + 24 * v4;
            LODWORD(v2) = v17 & 7;
            if ((v17 & 7) != 0)
            {
              goto LABEL_72;
            }

            v18 = *(v17 + 10);
            if (v18 > 1)
            {
              goto LABEL_76;
            }

            v19 = v15;
            if ((v18 & 1) == 0)
            {
              *(v17 + 16) = v15;
              *(v17 + 10) = 1;
            }

            v28 = 0;
            if (v15 != (*(*v3 + 104))(v3, v4, &v28, 1))
            {
              goto LABEL_46;
            }

            if (a2)
            {
              v20 = v3[7];
              if (__CFADD__(v20, v10))
              {
                goto LABEL_73;
              }

              if (!v20)
              {
                goto LABEL_72;
              }

              v21 = v20 + 24 * v4;
              LODWORD(v2) = v21 & 7;
              if ((v21 & 7) != 0)
              {
                goto LABEL_72;
              }

              v22 = *(v21 + 9);
              if (v22 > 1)
              {
                goto LABEL_76;
              }

              if (v22)
              {
LABEL_46:
                (*(*v3 + 136))(v3, v4);
              }
            }

            v23 = *(v3 + 7);
            if (v23 > 3)
            {
              goto LABEL_76;
            }

            if (v23 == 1 && (v9 & 1) != 0)
            {
              if (v28 > 1u)
              {
                goto LABEL_76;
              }

              if (!v19 || (v28 & 1) != 0)
              {
                v24 = *(v3 + 6);
                if (v24 > 0xF)
                {
                  goto LABEL_76;
                }

                v25 = *(v3 + 8);
                if (v25 > 3)
                {
                  goto LABEL_76;
                }

                if (v25 == 1)
                {
                  v26 = v3[2];
                  if (!v26 || (v26 & 7) != 0)
                  {
                    goto LABEL_72;
                  }

                  v27 = sub_100018DC0(v26);
                }

                else
                {
                  v27 = 0;
                }

                block[0] = _NSConcreteStackBlock;
                block[1] = 0x40000000;
                block[2] = sub_1000C39E8;
                block[3] = &unk_100117D30;
                v30 = v24;
                block[4] = v27;
                dispatch_async(&_dispatch_main_q, block);
              }
            }
          }
        }
      }

      while (++v4 < *(v3 + 22));
    }

    *(v3 + 36) = 0;
  }

  if ((*(*v3 + 48))(v3))
  {
    (*(*v3 + 184))(v3);
  }
}

unint64_t sub_1000BBC00(uint64_t a1, int a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0 || ((v4 = *(a1 + 8)) != 0 ? (v5 = (v4 & 7) == 0) : (v5 = 0), !v5 || (v8 = sub_100018DC0(v4), (v9 = *(a1 + 8)) == 0) || (v9 & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_23;
  }

  v10 = sub_10005AC88(v9);
  v11 = __chkstk_darwin(v10);
  memset(v13, 170, 9);
  if (v8)
  {
    v11 = v8;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_23:
    __break(0x550Au);
  }

  if (a2 != 2)
  {
    if (a2)
    {
      sub_1000E25E0(a2);
    }

    result = sub_1000811F4(v11, v13, 9);
    if (!result)
    {
      goto LABEL_16;
    }

    return 0;
  }

  result = sub_1000AD154(v11, v13, 9);
  if (result)
  {
    return 0;
  }

LABEL_16:
  if (v13 == -1)
  {
    __break(0x5500u);
  }

  else if (a3 < 0x40)
  {
    return (bswap64(*&v13[1]) >> a3) & 1;
  }

  __break(0x5514u);
  return result;
}

uint64_t sub_1000BBD4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BBD70(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 40);
    pthread_mutex_lock(&stru_10012B608);
    if (sub_10001C900(&qword_10012C778, &v1) == &qword_10012C780)
    {
      operator new();
    }

    return pthread_mutex_unlock(&stru_10012B608);
  }

  return result;
}

uint64_t sub_1000BBE20(uint64_t result, unint64_t *a2)
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
  result = sub_10001C7E8(result, &v6, a2);
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
    result = sub_1000C3A5C(v2);
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

uint64_t sub_1000BBEE0(uint64_t result)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = (*(*result + 272))(result);
  if (result)
  {
    return result;
  }

  v3 = *(v1 + 40);
  pthread_mutex_lock(&stru_10012B608);
  result = sub_10001C900(&qword_10012C778, &v3);
  if (result != &qword_10012C780)
  {
    if (!result || (result & 7) != 0)
    {
      goto LABEL_12;
    }

    v2 = *(result + 40);
    result = sub_1000083F0(&qword_10012C778, result);
    if (v2)
    {
      if ((v2 & 7) == 0)
      {
        (*(*v2 + 8))(v2);
        return pthread_mutex_unlock(&stru_10012B608);
      }

LABEL_12:
      __break(0x5516u);
      return result;
    }
  }

  return pthread_mutex_unlock(&stru_10012B608);
}

uint64_t sub_1000BBFE0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = *(result + 24);
  if (!v2 || (*(result + 24) & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = *(v2 + 40);
  if (a2 >= 0x10)
  {
LABEL_18:
    __break(0x550Au);
    goto LABEL_19;
  }

  if (a2 >= 0xE)
  {
    __break(0x5518u);
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  pthread_mutex_lock(&stru_10012B608);
  result = sub_10001C900(&qword_10012C778, &v8);
  if (!result)
  {
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v5 = *(result + 40);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = v5 + 8;
  if (!__CFADD__(v6, 96 * a2))
  {
    v7 = v6 + 96 * a2;
    pthread_mutex_unlock(&stru_10012B608);
    return v7;
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000BC0B8(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(result + 24);
  if (!v2 || (*(result + 24) & 7) != 0)
  {
    goto LABEL_19;
  }

  v7 = *(v2 + 40);
  if (a2 >= 0x10)
  {
LABEL_20:
    __break(0x550Au);
    goto LABEL_21;
  }

  if (a2 >= 0xE)
  {
    __break(0x5518u);
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  pthread_mutex_lock(&stru_10012B608);
  result = sub_10001C900(&qword_10012C778, &v7);
  if (!result)
  {
    goto LABEL_19;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = *(result + 40);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_19;
  }

  if (__CFADD__(v5 + 1352, 8 * a2))
  {
LABEL_21:
    __break(0x5513u);
    return result;
  }

  v6 = *(v5 + 1352 + 8 * a2);
  if (!v6)
  {
    operator new();
  }

  pthread_mutex_unlock(&stru_10012B608);
  return v6;
}

uint64_t sub_1000BC1BC(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v2 = *(result + 24);
  if (!v2 || (*(result + 24) & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = *(v2 + 40);
  if (a2 >= 0x10)
  {
LABEL_20:
    __break(0x550Au);
    goto LABEL_21;
  }

  if (a2 >= 0xE)
  {
    __break(0x5518u);
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  pthread_mutex_lock(&stru_10012B608);
  result = sub_10001C900(&qword_10012C778, &v8);
  if (!result)
  {
    goto LABEL_19;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = *(result + 40);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_19;
  }

  v6 = v5 + 1464;
  if (__CFADD__(v5 + 1464, 8 * a2))
  {
LABEL_21:
    __break(0x5513u);
    return result;
  }

  v7 = *(v6 + 8 * a2);
  if (!v7)
  {
    v7 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
    pthread_mutex_init(v7, 0);
    *(v6 + 8 * a2) = v7;
  }

  pthread_mutex_unlock(&stru_10012B608);
  return v7;
}

uint64_t sub_1000BC2B8(uint64_t result, unsigned int a2, unsigned int a3)
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

  v4 = *(result + 24);
  if (!v4 || (*(result + 24) & 7) != 0)
  {
    goto LABEL_22;
  }

  v11 = *(v4 + 40);
  if (a2 < 0x10)
  {
    if (a2 >= 0xE)
    {
      __break(0x5518u);
    }

    else
    {
      pthread_mutex_lock(&stru_10012B608);
      result = sub_10001C900(&qword_10012C778, &v11);
      if (result)
      {
        if ((result & 7) == 0)
        {
          v8 = *(result + 40);
          if (v8)
          {
            if ((v8 & 7) == 0)
            {
              if (__CFADD__(v8 + 1576, 8 * a2))
              {
LABEL_23:
                __break(0x5513u);
                goto LABEL_24;
              }

              v9 = *(v8 + 1576 + 8 * a2);
              if (v9)
              {
                if (!__CFADD__(v9, 16 * a3))
                {
                  v10 = v9 + 16 * a3;
                  pthread_mutex_unlock(&stru_10012B608);
                  return v10;
                }

                goto LABEL_23;
              }

              result = *(v3 + 8);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  sub_1000BB6A4(result, a2);
                  operator new[]();
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

LABEL_24:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000BC43C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 9u, 0, 2u, 0, 0, &stru_10012CAF0, &unk_10012CE68, 1), *result = off_100116F30, *(result + 92) = 0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CE00;
    byte_10012CE08 = 0;
    dword_10012CE0C = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000BC4F0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100117A90;
    *(result + 8) = a2;
    *(result + 16) = a3;
    if (a4 < 0x10)
    {
      *(result + 24) = a4;
      if (a5 <= 3)
      {
        *(result + 28) = a5;
        if (a6 <= 3)
        {
          *(result + 32) = a6;
          *(result + 40) = a7;
          *(result + 48) = a8;
          *(result + 64) = a9;
          *(result + 72) = 0;
          *(result + 80) = a10;
          *(result + 88) = a11;
          if (a3 && a4 <= 0xD && a5 != 3 && a6 != 3 && a10 && a11)
          {
            operator new[]();
          }

          __break(0x5518u);
        }
      }
    }

    __break(0x550Au);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BC5DC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  *result = off_100117A90;
  v2 = *(result + 28);
  if (v2 >= 4)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  if (v2 == 1 && *(result + 40))
  {
    result = *(result + 48);
    if (result)
    {
      pthread_mutex_lock(result);
      result = *(v1 + 40);
      if (result && (result & 7) == 0)
      {
        v3 = v1;
        sub_10005F290(result, &v3);
        pthread_mutex_unlock(*(v1 + 48));
        goto LABEL_10;
      }
    }

    else
    {
      __break(0x5518u);
    }

    goto LABEL_14;
  }

LABEL_10:
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (*(v1 + 56))
  {
    operator delete[]();
  }

  *(v1 + 56) = 0;
  return v1;
}

uint64_t sub_1000BC6B0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BC6F8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_88;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_88;
  }

  if (!*(result + 64))
  {
    v2 = *(result + 32);
    if (v2 >= 4)
    {
      goto LABEL_90;
    }

    if (v2 == 1)
    {
      v3 = *(result + 8);
      if (!v3)
      {
        goto LABEL_85;
      }

      if ((v3 & 7) != 0)
      {
        goto LABEL_88;
      }

      v4 = *(result + 24);
      if (v4 >= 0x10)
      {
        goto LABEL_90;
      }

      result = sub_1000BBFE0(v3 + 1392, v4);
      v5 = *(v1 + 8);
      if (!v5 || (v5 & 7) != 0)
      {
        goto LABEL_88;
      }

      v6 = *(v1 + 24);
      if (v6 > 0xF)
      {
        goto LABEL_90;
      }

      result = sub_1000BBFE0(v5 + 1392, v6);
      *(v1 + 64) = result;
    }
  }

  if (!*(v1 + 40))
  {
    v7 = *(v1 + 28);
    if (v7 > 3)
    {
      goto LABEL_90;
    }

    if (v7 == 1)
    {
      v8 = *(v1 + 32);
      if (v8 > 3)
      {
        goto LABEL_90;
      }

      if (v8 == 1)
      {
        v9 = *(v1 + 8);
        if (!v9)
        {
          sub_1000E1D34();
        }

        if ((v9 & 7) != 0)
        {
          goto LABEL_88;
        }

        v10 = *(v1 + 24);
        if (v10 >= 0x10)
        {
          goto LABEL_90;
        }

        result = sub_1000BC0B8(v9 + 1392, v10);
        v11 = *(v1 + 8);
        if (!v11 || (v11 & 7) != 0)
        {
          goto LABEL_88;
        }

        v12 = *(v1 + 24);
        if (v12 > 0xF)
        {
          goto LABEL_90;
        }

        *(v1 + 40) = sub_1000BC0B8(v11 + 1392, v12);
      }
    }
  }

  result = *(v1 + 48);
  if (result)
  {
    goto LABEL_39;
  }

  v13 = *(v1 + 28);
  if (v13 > 3)
  {
    goto LABEL_90;
  }

  if (v13 != 1)
  {
    goto LABEL_38;
  }

  v14 = *(v1 + 32);
  if (v14 > 3)
  {
    goto LABEL_90;
  }

  if (v14 != 1)
  {
LABEL_38:
    result = 0;
    goto LABEL_39;
  }

  v15 = *(v1 + 8);
  if (!v15)
  {
LABEL_87:
    sub_1000E1D34();
  }

  if ((v15 & 7) != 0)
  {
LABEL_88:
    __break(0x5516u);
LABEL_89:
    __break(0x5513u);
    goto LABEL_90;
  }

  v16 = *(v1 + 24);
  if (v16 > 0xF)
  {
    goto LABEL_90;
  }

  result = sub_1000BC1BC(v15 + 1392, v16);
  if (!result)
  {
    goto LABEL_87;
  }

  v17 = *(v1 + 8);
  if (!v17 || (v17 & 7) != 0)
  {
    goto LABEL_88;
  }

  v18 = *(v1 + 24);
  if (v18 > 0xF)
  {
    goto LABEL_90;
  }

  result = sub_1000BC1BC(v17 + 1392, v18);
  *(v1 + 48) = result;
LABEL_39:
  if (!*(v1 + 64))
  {
    v19 = *(v1 + 32);
    if (v19 > 3)
    {
      goto LABEL_90;
    }

    if (v19)
    {
LABEL_84:
      __break(0x5518u);
LABEL_85:
      sub_1000E1D34();
    }
  }

  v20 = *(v1 + 72);
  if (v20 > 1)
  {
    goto LABEL_90;
  }

  if (v20)
  {
    return result;
  }

  *(v1 + 72) = 1;
  v21 = *(v1 + 28);
  if (v21 > 3)
  {
LABEL_90:
    __break(0x550Au);
    return result;
  }

  if (v21 != 1)
  {
    goto LABEL_50;
  }

  if (!result)
  {
    goto LABEL_84;
  }

  pthread_mutex_lock(result);
  result = *(v1 + 40);
  if (!result)
  {
    goto LABEL_84;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_88;
  }

  sub_1000219A8(result);
  result = pthread_mutex_unlock(*(v1 + 48));
LABEL_50:
  if (*(v1 + 88))
  {
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = *(v1 + 56);
      v25 = ~v24;
      if (v22 > ~v24)
      {
        goto LABEL_89;
      }

      if (v24)
      {
        v26 = ((v22 + v24) & 7) == 0;
      }

      else
      {
        v26 = 0;
      }

      if (!v26)
      {
        goto LABEL_88;
      }

      if (!*(v24 + v22))
      {
        v27 = *(v1 + 8);
        if (!v27 || (v27 & 7) != 0)
        {
          goto LABEL_88;
        }

        v28 = *(v1 + 24);
        if (v28 > 0xF)
        {
          goto LABEL_90;
        }

        result = sub_1000BC2B8(v27 + 1392, v28, v23);
        v24 = *(v1 + 56);
        v25 = ~v24;
        if (v22 > ~v24)
        {
          goto LABEL_89;
        }

        if (!v24 || ((v22 + v24) & 7) != 0)
        {
          goto LABEL_88;
        }

        *(v24 + v22) = result;
      }

      if (v22 > v25)
      {
        goto LABEL_89;
      }

      if (((v22 + v24) & 7) != 0)
      {
        goto LABEL_88;
      }

      v29 = v24 + v22;
      *(v29 + 9) = 0;
      *(v29 + 11) = 0;
      v30 = *(v1 + 24);
      if (v30 > 0xF)
      {
        goto LABEL_90;
      }

      if (v30 == 2)
      {
        result = sub_100046A8C();
        if (!result || (result & 7) != 0)
        {
          goto LABEL_88;
        }

        result = (*(*result + 176))(result);
        v24 = *(v1 + 56);
        if (result && (v23 - 1) < 7)
        {
          v25 = ~v24;
          if (v22 > ~v24)
          {
            goto LABEL_89;
          }

          if (!v24 || ((v22 + v24) & 7) != 0)
          {
            goto LABEL_88;
          }

          *(v24 + v22 + 11) = 1;
        }

        else
        {
          v25 = ~v24;
        }
      }

      if (v22 > v25)
      {
        goto LABEL_89;
      }

      if (!v24 || ((v22 + v24) & 7) != 0)
      {
        goto LABEL_88;
      }

      *(v24 + v22 + 16) = 0;
      ++v23;
      v22 += 24;
      if (v23 >= *(v1 + 88))
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1000BCA94(unint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    syslog(4, "Unknown id(%d)\n", a2);
    return 0;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {

    return sub_1000BBC00(result, 2, 0xAu);
  }

  return result;
}

uint64_t sub_1000BCB04(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 112))(result, 0) ^ 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BCB54(uint64_t result, int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  if (a2)
  {
    v5 = 4;
    syslog(4, "Unknown id(%d) value=%d\n", a2, a3);
    return v5;
  }

  v6 = *(result + 92);
  if (v6 < 2)
  {
    if (v6)
    {
      result = _AXSVoiceOverTouchEnabled();
      if (result != a3)
      {
        result = _AXSVoiceOverTouchSetEnabledThroughAccessory();
        if (a3)
        {
          result = _AXSVoiceOverTouchSetEnabled();
        }
      }
    }

    v7 = *(v3 + 56);
    if (v7 && (v7 & 7) == 0)
    {
      v5 = 0;
      *(v7 + 16) = a3;
      return v5;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(0x550Au);
  return result;
}

BOOL sub_1000BCC00(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    sub_1000E260C(a2);
  }

  if (a2)
  {
    goto LABEL_6;
  }

  return _AXSVoiceOverTouchEnabled() != 0;
}

uint64_t sub_1000BCC3C(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 136))(result, a2, a3 != 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BCC78(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 112))(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BCCC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 0xDu, 0, 2u, 0, 0, &stru_10012CC70, &unk_10012CE78, 1), *result = off_100117000, *(result + 92) = 0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CE40;
    byte_10012CE48 = 0;
    dword_10012CE4C = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000BCD74(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_1000BCDBC(unint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    syslog(4, "Unknown id(%d)\n", a2);
    return 0;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {

    return sub_1000BBC00(result, 2, 0xCu);
  }

  return result;
}

uint64_t sub_1000BCE2C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 112))(result, 0) ^ 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BCE7C(uint64_t result, int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  if (a2)
  {
    v5 = 4;
    syslog(4, "Unknown id(%d) value=%d\n", a2, a3);
    return v5;
  }

  v6 = *(result + 92);
  if (v6 < 2)
  {
    if (v6)
    {
      result = _AXSAssistiveTouchHardwareEnabled();
      if (result)
      {
        v7 = 1;
      }

      else
      {
        result = _AXSAssistiveTouchEnabled();
        v7 = result != 0;
      }

      if (v7 != a3)
      {
        result = _AXSAssistiveTouchSetHardwareEnabled();
      }
    }

    v8 = *(v3 + 56);
    if (v8 && (v8 & 7) == 0)
    {
      v5 = 0;
      *(v8 + 16) = a3;
      return v5;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(0x550Au);
  return result;
}

BOOL sub_1000BCF34(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_9:
    sub_1000E260C(a2);
  }

  if (a2)
  {
    goto LABEL_9;
  }

  return _AXSAssistiveTouchHardwareEnabled() || _AXSAssistiveTouchEnabled() != 0;
}

uint64_t sub_1000BCF80(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 136))(result, a2, a3 != 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BCFBC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 112))(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD004(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 92) = a4;
    return (*(*result + 72))(result, 0, a2, a3, 0);
  }

  return result;
}

uint64_t sub_1000BD050(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 0, 1u, 1u, 0, 0, 0, &unk_10012CE50, 1), *result = off_1001170D0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000BD0E8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD130(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_26;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_26;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v5 = sub_100018DC0(result);
  result = v2[2];
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  v6 = sub_10005AC88(result);
  if (a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1439, a2);
    return 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  if (sub_10006852C(v6))
  {
    result = v2[1];
    if (!result || (result & 7) != 0)
    {
      goto LABEL_26;
    }

    if (sub_1000BBC00(result, 0, 0))
    {
      return 1;
    }
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
    return result;
  }

  result = (*(*result + 160))(result);
  if (result)
  {
    v7 = *(*v2 + 152);

    return v7(v2);
  }

  return result;
}

BOOL sub_1000BD28C(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 56);
    if (v1 && (*(result + 56) & 7) == 0)
    {
      return *(v1 + 16) == 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD2C0(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BD2E0(result, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD2E0(uint64_t result, int a2)
{
  if (result && (v2 = result, (result & 7) == 0) && ((result = *(result + 16)) != 0 ? (v3 = (result & 7) == 0) : (v3 = 0), v3 && (v5 = sub_100018DC0(result), (result = *(v2 + 16)) != 0) && (result & 7) == 0))
  {
    v6 = sub_10005AC88(result);
    if (v5)
    {
      v6 = v5;
    }

    if (v6 && sub_10006852C(v6))
    {
      byte_10012CE7C = 0;
      sub_1000BD71C(v2, a2, 0, 1);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000BD388(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000BD2E0(result, a3 == 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD3AC(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            result = sub_100045A94();
            if (v7)
            {
              v9 = v7;
            }

            else
            {
              v9 = v8;
            }

            if (a2)
            {
              v11 = a3;
              v10 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1532, a2, v11);
              return v10;
            }

            if (result && (result & 7) == 0)
            {
              (*(*result + 176))(result, v9, a3);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD4A4(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = a2;
  sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_16;
  }

  sub_10005AC88(v6);
  v7 = sub_100045A94();
  if (v2)
  {
    goto LABEL_17;
  }

  if (!v7 || (v7 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  v8 = *(*v7 + 184);

  return v8();
}

uint64_t sub_1000BD568(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            result = sub_100045A94();
            if (v7)
            {
              v9 = v7;
            }

            else
            {
              v9 = v8;
            }

            if (a2)
            {
              v11 = a3;
              v10 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1599, a2, v11);
              return v10;
            }

            if (result && (result & 7) == 0)
            {
              (*(*result + 176))(result, v9, a3 == 1);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BD664(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = a2;
  v6 = sub_100018DC0(v4);
  v7 = *(a1 + 16);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_17;
  }

  v8 = sub_10005AC88(v7);
  v9 = sub_100045A94();
  if (v2)
  {
    goto LABEL_18;
  }

  if (!v9 || (v9 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    sub_1000E260C(v2);
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  return (*(*v9 + 184))(v9, v10);
}

uint64_t sub_1000BD71C(uint64_t result, int a2, uint64_t a3, char a4)
{
  if (!result)
  {
    goto LABEL_29;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  v8 = sub_100018DC0(result);
  result = *(v4 + 16);
  if (!result)
  {
    goto LABEL_29;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  result = sub_10005B04C(result);
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v9 = result;
  result = *(v4 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  v10 = sub_10005AC88(result);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!v8)
  {
    v8 = v11;
  }

  if ((a4 & 1) != 0 || (result = sub_10006852C(v8), result))
  {
    result = sub_1000BD9A8(v4, 0, a2, 0, 0);
    if (v8)
    {
      if ((v8 & 7) == 0)
      {
        result = (*(*v8 + 208))(v8);
        if (result != 3)
        {
          return result;
        }

        v12 = **v8;
        if (result)
        {
          if ((result & 7) == 0)
          {

            return sub_1000B9E04(result, a2);
          }
        }
      }

LABEL_29:
      __break(0x5516u);
    }
  }

  return result;
}

uint64_t sub_1000BD8A0(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_12;
  }

  if (byte_10012CE7C >= 2u)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  if ((byte_10012CE7C & 1) == 0)
  {
    if ((a3 & 1) != 0 || (result = sub_10006852C(a2), result))
    {
      if (((*(*v3 + 112))(v3, 0) & 1) == 0)
      {
        (*(*v3 + 136))(v3, 0, 1);
      }

      (*(*v3 + 136))(v3, 0, 0);
      result = sub_1000BD9A8(v3, 0, 0, 0, 0);
      byte_10012CE7C = 1;
    }
  }

  return result;
}

uint64_t sub_1000BD9A8(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (!result)
  {
    goto LABEL_32;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_32;
  }

  v6 = *(result + 24);
  if (v6 >= 0x10)
  {
    goto LABEL_33;
  }

  if (v6 != 2)
  {
    result = (*(*result + 128))(result, a2);
    if (!result)
    {
      return 4;
    }
  }

  v11 = *(v5 + 80);
  if (!__CFADD__(v11, 4 * a2))
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = (v11 + 4 * a2);
    if ((v12 & 3) != 0)
    {
      goto LABEL_32;
    }

    v13 = *v12;
    if ((v13 + 4) > 7)
    {
      goto LABEL_33;
    }

    if (v13)
    {
      __break(0x5518u);
      goto LABEL_32;
    }

    v14 = *(v5 + 56);
    if (!__CFADD__(v14, 24 * a2))
    {
      if (v14)
      {
        v15 = v14 + 24 * a2;
        if ((v15 & 7) == 0)
        {
          *(v15 + 16) = a3;
          *(v15 + 8) = 1;
          *(v5 + 36) = 1;
          v16 = *(v15 + 10);
          if (v16 > 1)
          {
            goto LABEL_33;
          }

          if ((v16 & 1) == 0)
          {
            *(v15 + 10) = 1;
          }

          if (!a4)
          {
            goto LABEL_29;
          }

          if (a5)
          {
            goto LABEL_29;
          }

          v17 = *v15;
          if (!v17)
          {
            goto LABEL_29;
          }

          if ((v17 & 7) == 0)
          {
            if (*(v17 + 8) <= 1u)
            {
              if (*(v17 + 8))
              {
LABEL_29:
                (*(*v5 + 40))(v5, 0);
                return 0;
              }

              *(v17 + 8) = 1;
              result = (*(*v5 + 120))(v5, a2);
              v18 = *(v5 + 56);
              if (__CFADD__(v18, 24 * a2))
              {
                goto LABEL_34;
              }

              if (v18)
              {
                v19 = (v18 + 24 * a2);
                if ((v19 & 7) == 0)
                {
                  v20 = *v19;
                  if (v20)
                  {
                    if ((v20 & 7) == 0)
                    {
                      *(v20 + 12) = result;
                      goto LABEL_29;
                    }
                  }
                }
              }

              goto LABEL_32;
            }

LABEL_33:
            __break(0x550Au);
            goto LABEL_34;
          }
        }
      }

LABEL_32:
      __break(0x5516u);
      goto LABEL_33;
    }
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000BDB90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (result = sub_1000BC4F0(result, a3, a2, 1u, 2u, 2u, 0, 0, &stru_10012C850, &unk_10012B648, 1), *result = off_1001171A0, (v3 = *(result + 56)) == 0) || (v3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *v3 = &qword_10012CD90;
    *(v3 + 8) = 0;
    *(result + 120) = 0;
  }

  return result;
}

uint64_t sub_1000BDC3C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BDC84(uint64_t result, int a2)
{
  if (result && (v2 = result, (result & 7) == 0) && ((result = *(result + 16)) != 0 ? (v3 = (result & 7) == 0) : (v3 = 0), v3 && (v5 = sub_100018DC0(result), (result = *(v2 + 16)) != 0) && (result & 7) == 0))
  {
    v6 = sub_10005AC88(result);
    if (a2)
    {
      sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1901, a2);
      return 0;
    }

    else
    {
      if (v5)
      {
        v6 = v5;
      }

      return sub_100068624(v6);
    }
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

BOOL sub_1000BDD54(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 120);
    if (v1 < 4)
    {
      return v1 == 0;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000BDD80(uint64_t result, int a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 1944, a2, a3);
    return 4;
  }

  return result;
}

void sub_1000BDDD8(uint64_t a1, int a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    syslog(3, "Unknown or invalid id(%d)\n", a2);
    abort();
  }

  __break(0x5516u);
}

uint64_t sub_1000BDE14(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 16);
      if (result && (result & 7) == 0)
      {
        v7 = sub_100018DC0(result);
        result = *(v3 + 16);
        if (result)
        {
          if ((result & 7) == 0)
          {
            v8 = sub_10005AC88(result);
            if (v7)
            {
              v9 = v7;
            }

            else
            {
              v9 = v8;
            }

            result = sub_10004B1AC();
            if (a2)
            {
              v11 = a3;
              v10 = 4;
              sub_1000DDEEC(0, 4, "%s:%d Unknown or invalid id(%d) value=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 2004, a2, v11);
              return v10;
            }

            if (result && (result & 7) == 0)
            {
              (*(*result + 288))(result, v9, a3);
              return 0;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BDF14(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = a2;
  sub_100018DC0(v4);
  v6 = *(a1 + 16);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_16;
  }

  sub_10005AC88(v6);
  v7 = sub_10004B1AC();
  if (v2)
  {
    goto LABEL_17;
  }

  if (!v7 || (v7 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    sub_1000E260C(v2);
  }

  v8 = *(*v7 + 296);

  return v8();
}

uint64_t sub_1000BDFE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_32;
  }

  result = sub_1000BC4F0(result, a3, a2, 2u, 2u, 2u, 0, 0, &stru_10012C7F0, &unk_10012B64C, 10);
  *result = off_100117270;
  v3 = *(result + 56);
  if (v3 >= 0xFFFFFFFFFFFFFFE8)
  {
    goto LABEL_33;
  }

  if (((v3 + 24) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 24) = &qword_10012CD30;
  if (((v3 + 32) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 32) = 0;
  if (v3 > 0xFFFFFFFFFFFFFFCFLL)
  {
    goto LABEL_33;
  }

  if (((v3 + 48) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 48) = &qword_10012CD40;
  if (((v3 + 56) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 56) = 0;
  if (v3 > 0xFFFFFFFFFFFFFFB7)
  {
    goto LABEL_33;
  }

  if (((v3 + 72) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 72) = &qword_10012CD50;
  if (((v3 + 80) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 80) = 0;
  if (v3 > 0xFFFFFFFFFFFFFF9FLL)
  {
    goto LABEL_33;
  }

  if (((v3 + 96) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 96) = 0;
  if (((v3 + 104) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 104) = 0;
  if (v3 > 0xFFFFFFFFFFFFFF87)
  {
    goto LABEL_33;
  }

  if (((v3 + 120) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 120) = &qword_10012CD60;
  if (((v3 + 0x80) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 128) = 0;
  if (v3 > 0xFFFFFFFFFFFFFF6FLL)
  {
    goto LABEL_33;
  }

  if (((v3 + 144) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 144) = &qword_10012CD70;
  if (((v3 - 104) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 152) = 0;
  if (v3 > 0xFFFFFFFFFFFFFF57)
  {
    goto LABEL_33;
  }

  if (((v3 + 168) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 168) = &qword_10012CD80;
  if (((v3 - 80) & 7) != 0)
  {
    goto LABEL_32;
  }

  *(v3 + 176) = 0;
  if (v3 > 0xFFFFFFFFFFFFFF3FLL)
  {
    goto LABEL_33;
  }

  if (((v3 + 192) & 7) != 0 || (*(v3 + 192) = &qword_10012CD00, ((v3 - 56) & 7) != 0))
  {
LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  *(v3 + 200) = 0;
  if (v3 <= 0xFFFFFFFFFFFFFF27)
  {
    if (((v3 + 216) & 7) == 0)
    {
      *(v3 + 216) = &qword_10012CD10;
      if (((v3 - 32) & 7) == 0)
      {
        *(v3 + 224) = 0;
        if ((v3 & 7) == 0)
        {
          *v3 = &qword_10012CD20;
          *(v3 + 8) = 0;
          return result;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000BE230(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000BC5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000BE278(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_65;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_65;
  }

  result = *(result + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_65;
  }

  v5 = sub_100018DC0(result);
  result = *(v2 + 16);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_65;
  }

  v6 = sub_10005AC88(result);
  if (v5)
  {
    v6 = v5;
  }

  if (!sub_100068718(v6))
  {
    goto LABEL_19;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_65;
  }

  if ((*(*result + 176))(result))
  {
    result = *(v2 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_65;
    }

    v7 = sub_1000BBC00(result, 0, 1u);
  }

  else
  {
LABEL_19:
    v7 = 0;
  }

  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = *(v2 + 8);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_65;
        }

        if ((sub_1000BBC00(result, 0, 2u) & 1) == 0)
        {
          result = *(v2 + 8);
          if (result && (result & 7) == 0)
          {
            v8 = 3;
            goto LABEL_62;
          }

          goto LABEL_65;
        }

        goto LABEL_52;
      }

      if (a2 != 3)
      {
        result = *(v2 + 8);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_65;
        }

        if ((sub_1000BBC00(result, 0, 4u) & 1) == 0)
        {
          result = *(v2 + 8);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_65;
          }

          if ((sub_1000BBC00(result, 0, 5u) & 1) == 0)
          {
            result = *(v2 + 8);
            if (result && (result & 7) == 0)
            {
              v8 = 6;
LABEL_62:
              v9 = sub_1000BBC00(result, 0, v8);
              return v7 & v9;
            }

            goto LABEL_65;
          }
        }

LABEL_52:
        v9 = 1;
        return v7 & v9;
      }

      return v7;
    }

    if (!a2)
    {
      return v7;
    }

    if (a2 == 1)
    {
      result = *(v2 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_65;
      }

      if ((sub_1000BBC00(result, 0, 9u) & 1) == 0)
      {
        result = *(v2 + 8);
        if (result && (result & 7) == 0)
        {
          v8 = 8;
          goto LABEL_62;
        }

        goto LABEL_65;
      }

      goto LABEL_52;
    }

LABEL_48:
    sub_1000DDEEC(0, 4, "%s:%d Unknown id(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapPrefsMgr.cpp", 2306, a2);
    return 0;
  }

  if (a2 > 7)
  {
    if ((a2 - 8) < 2)
    {
      return v7;
    }

    goto LABEL_48;
  }

  if (a2 == 5)
  {
    result = *(v2 + 8);
    if (result && (result & 7) == 0)
    {
      v8 = 7;
      goto LABEL_62;
    }
  }

  else if (a2 == 6)
  {
    result = *(v2 + 8);
    if (result && (result & 7) == 0)
    {
      v8 = 10;
      goto LABEL_62;
    }
  }

  else
  {
    result = *(v2 + 8);
    if (result && (result & 7) == 0)
    {
      v8 = 11;
      goto LABEL_62;
    }
  }

LABEL_65:
  __break(0x5516u);
  return result;
}