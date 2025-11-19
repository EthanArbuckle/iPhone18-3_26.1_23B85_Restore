uint64_t sub_1000D4DE8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = 2;
    sub_1000D5D74(result + 128, &v4);
    *(v2 + 152) = *(v2 + 144) != 0;
    (*(*v2 + 32))(v2, 720901, 2, a2);
    return 1;
  }

  return result;
}

uint64_t sub_1000D4E84(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000D5D74(result + 128, &v4);
    *(v3 + 152) = *(v3 + 144) != 0;
    if (v4 < 0x100)
    {
      (*(*v3 + 32))(v3, 720901);
      return 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D4F28(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 152))(result);
    (*(*v2 + 32))(v2, 720898, a2, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000D4FC0(uint64_t result, uint64_t a2)
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

  v4 = 2;
  if (!*(sub_1000D4BE4(result + 128, &v4) + 12))
  {
    (*(*v2 + 152))(v2, a2);
  }

  (*(*v2 + 32))(v2, 720899, a2, 0);
  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    if ((*(*result + 424))(result))
    {
      (*(*v2 + 200))(v2, a2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000D50F8(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 32))(result, 720900, a2, 0);
    return 1;
  }

  return result;
}

uint64_t sub_1000D5154(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a3 >= 0x100)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  *(result + 112) = a3;
  *(result + 120) = a2;
  if (a3 != 255)
  {
    v6 = (*(*result + 160))(result);
    *(sub_1000D4BE4((v3 + 32), v3 + 28) + 20) = v6;
  }

  (*(*v3 + 32))(v3, 720902, a3, a2);
  return 1;
}

uint64_t sub_1000D524C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (*(result + 112) >= 0x100u)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  v3 = *(result + 112);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      return 0;
    }

    (*(*result + 48))(result, 720911, a2);
    return 1;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v4 = sub_1000949E0(result, a2, 0);
  if (!v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d NULL connectionHandle\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TMicrophoneShared.cpp", 238);
  }

  return sub_10009231C(200, v4) == 0;
}

uint64_t sub_1000D5340(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(result + 144))
  {
    return *(sub_1000D4BE4(result + 128, (result + 112)) + 12) & 1;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D5390(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(result + 144) && *(result + 120) == a2)
  {
    return (*(sub_1000D4BE4(result + 128, (result + 112)) + 12) >> 4) & 1;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D53EC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(result + 144) && *(result + 120) == a2)
  {
    return (*(sub_1000D4BE4(result + 128, (result + 112)) + 12) >> 5) & 1;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D5448(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!*(result + 144) || *(result + 120) != a2)
  {
    return result;
  }

  v2 = *(result + 112);
  if (v2 >= 0x100)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v3 = *(*result + 48);

  return v3();
}

uint64_t sub_1000D5500(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!*(result + 144) || *(result + 120) != a2)
  {
    return result;
  }

  v2 = *(result + 112);
  if (v2 >= 0x100)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v3 = *(*result + 48);

  return v3();
}

uint64_t sub_1000D55B8(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!*(result + 144) || *(result + 120) != a2)
  {
    return result;
  }

  v2 = *(result + 112);
  if (v2 >= 0x100)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v3 = *(*result + 48);

  return v3();
}

uint64_t sub_1000D5670(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!*(result + 144) || *(result + 120) != a2)
  {
    return result;
  }

  v2 = *(result + 112);
  if (v2 >= 0x100)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v3 = *(*result + 48);

  return v3();
}

uint64_t sub_1000D5728(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D573C(uint64_t result)
{
  if (((result - 96) & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D5750(uint64_t result, int a2, int a3, void *a4, int a5)
{
  if (!result)
  {
    goto LABEL_38;
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_38;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_39:
    __break(0x550Au);
    return result;
  }

  if (a2 != 1 || a3 || a5 != 16)
  {
    return result;
  }

  if (!a4 || (a4 & 7) != 0)
  {
LABEL_38:
    __break(0x5516u);
    goto LABEL_39;
  }

  v7 = *(a4 + 4);
  switch(v7)
  {
    case 10:
      v12 = *(a4 + 12);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          pthread_mutex_lock((result + 160));
          v20 = *(a4 + 13);
          v25 = 2;
          *(sub_1000D4BE4(v5 + 128, &v25) + 17) = v20;
          pthread_mutex_unlock((v5 + 160));
          v9 = *a4;
          v10 = *(*v5 + 48);
          v11 = 720914;
        }

        else
        {
          if (v12 != 5)
          {
            return result;
          }

          pthread_mutex_lock((result + 160));
          v14 = *(a4 + 13);
          v25 = 2;
          *(sub_1000D4BE4(v5 + 128, &v25) + 18) = v14;
          pthread_mutex_unlock((v5 + 160));
          v9 = *a4;
          v10 = *(*v5 + 48);
          v11 = 720915;
        }
      }

      else
      {
        if (v12 == 1)
        {
          pthread_mutex_lock((result + 160));
          v19 = *(a4 + 13);
          v25 = 2;
          *(sub_1000D4BE4(v5 + 128, &v25) + 20) = v19;
          pthread_mutex_unlock((v5 + 160));
          return (*(*v5 + 48))(v5, 720912, *a4);
        }

        if (v12 != 2)
        {
          return result;
        }

        pthread_mutex_lock((result + 160));
        v13 = *(a4 + 13);
        v25 = 2;
        *(sub_1000D4BE4(v5 + 128, &v25) + 16) = v13;
        pthread_mutex_unlock((v5 + 160));
        v9 = *a4;
        v10 = *(*v5 + 48);
        v11 = 720913;
      }

      return v10(v5, v11, v9);
    case 8:
      pthread_mutex_lock((result + 160));
      v8 = *(a4 + 3);
      v25 = 2;
      *(sub_1000D4BE4(v5 + 128, &v25) + 12) = v8;
      pthread_mutex_unlock((v5 + 160));
      sub_1000DDEEC(0, 4, "%s:%d Sending device caps\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TMicrophoneShared.cpp", 456);
      v9 = *a4;
      v10 = *(*v5 + 48);
      v11 = 720911;
      return v10(v5, v11, v9);
    case 4:
      if (*(a4 + 13))
      {
        LOBYTE(v25) = *(a4 + 13);
        BYTE1(v25) = *(a4 + 12);
        return (*(*result + 32))(result, 720904, &v25, *a4);
      }

      v15 = 720912;
      LOBYTE(v25) = 0;
      BYTE1(v25) = *(a4 + 12);
      result = (*(*result + 32))(result, 720903, &v25, *a4);
      if (*(a4 + 12) == 11)
      {
        v25 = 2;
        v16 = *(sub_1000D4BE4(v5 + 128, &v25) + 32);
        if ((v16 & 2) == 0)
        {
          if ((v16 & 4) != 0)
          {
            v17 = (v5 + 160);
            pthread_mutex_lock((v5 + 160));
            v25 = 2;
            v22 = *(sub_1000D4BE4(v5 + 128, &v25) + 24);
            v24 = 2;
            *(sub_1000D4BE4(v5 + 128, &v24) + 16) = v22;
            v15 = 720913;
          }

          else if ((v16 & 8) != 0)
          {
            v17 = (v5 + 160);
            pthread_mutex_lock((v5 + 160));
            v25 = 2;
            v23 = *(sub_1000D4BE4(v5 + 128, &v25) + 25);
            v24 = 2;
            *(sub_1000D4BE4(v5 + 128, &v24) + 17) = v23;
            v15 = 720914;
          }

          else
          {
            if ((v16 & 0x20) == 0)
            {
LABEL_37:
              v25 = 2;
              result = sub_1000D4BE4(v5 + 128, &v25);
              *(result + 32) = v16;
              return result;
            }

            v17 = (v5 + 160);
            pthread_mutex_lock((v5 + 160));
            v25 = 2;
            v18 = *(sub_1000D4BE4(v5 + 128, &v25) + 26);
            v24 = 2;
            *(sub_1000D4BE4(v5 + 128, &v24) + 18) = v18;
            v15 = 720915;
          }

LABEL_36:
          pthread_mutex_unlock(v17);
          (*(*v5 + 48))(v5, v15, *a4);
          v16 = 0;
          goto LABEL_37;
        }

        v17 = (v5 + 160);
        pthread_mutex_lock((v5 + 160));
        v25 = 2;
        result = sub_1000D4BE4(v5 + 128, &v25);
        v21 = *(result + 28);
        if (v21 <= 0xFF)
        {
          v24 = 2;
          *(sub_1000D4BE4(v5 + 128, &v24) + 20) = v21;
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      break;
  }

  return result;
}

uint64_t sub_1000D5C18(uint64_t result, int a2, int a3, void *a4, int a5)
{
  if ((a2 + 32) < 0x40)
  {
    return sub_1000D5750(result - 96, a2, a3, a4, a5);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D5C30(uint64_t result, void *a2, unsigned int *a3)
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
        if (v5 >= 0x100 || (v6 = *(v3 + 28), v6 > 0xFF))
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

uint64_t sub_1000D5CE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

uint64_t sub_1000D5D74(uint64_t result, unsigned int *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = sub_1000D5DD0(result, a2);
    if (v2 + 1 == v3)
    {
      return 0;
    }

    else
    {
      sub_1000083F0(v2, v3);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D5DD0(uint64_t result, unsigned int *a2)
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

  result = sub_1000D5E54(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (*a2 < 0x100)
      {
        v5 = *(result + 28);
        if (v5 <= 0xFF)
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

uint64_t sub_1000D5E54(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4)
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
    v5 = *(a3 + 28);
    if (v5 > 0xFF || v4 >= 0x100)
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

uint64_t sub_1000D5ED0()
{
  if (qword_10012C548 != -1)
  {
    sub_1000E26EC();
  }

  return qword_10012C540;
}

uint64_t sub_1000D5F4C(uint64_t result)
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
  *v1 = off_100118FE8;
  *(v1 + 96) = off_1001190B8;
  *(v1 + 104) = 0;
  *(v1 + 116) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  result = sub_10005FC6C();
  if (!result || (result & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, v1 + 96, 0xDu, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000D5FF0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100118FE8, *(result + 96) = off_1001190B8, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 0xDu);
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000D60AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D5FF0(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D60C0(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000D5FF0(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D60D4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D5FF0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6124(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return 1;
  }

  __break(0x550Au);
  return result;
}

BOOL sub_1000D6148(_BOOL8 result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 112);
    if (v1 < 4)
    {
      return v1 != 0;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D6174(uint64_t result, unsigned int a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 56))(result, 196613, a2, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D61BC(uint64_t result)
{
  if (!result || (result & 7) != 0 || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if ((*(*result + 216))(result))
  {
    return 1983;
  }

  else
  {
    return 1977;
  }

  return result;
}

uint64_t sub_1000D6224(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 136))(result) & 0xFFFFF877;
  }

  __break(0x5516u);
  return result;
}

void sub_1000D6274(_DWORD *a1, int a2, int a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_26;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_25:
    __break(0x550Au);
LABEL_26:
    __break(0x5516u);
    return;
  }

  if (a2 == 13 && a5 == 16)
  {
    if (a3)
    {
      return;
    }
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d wrong lingo (%d) or payload size (%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TPushUI.cpp", 123, a2, a5);
    if (a3)
    {
      return;
    }
  }

  if (!a4)
  {
    __break(0x5518u);
    goto LABEL_25;
  }

  v8 = sub_1000CE018(*(a4 + 4));
  v9 = *a4;
  if (*a4 > 3u)
  {
    goto LABEL_25;
  }

  v10 = v8;
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      (*(*a1 + 176))(a1, *(a4 + 12));
      v13 = v10;
      v12 = *(a4 + 12);
      v14 = *(*a1 + 32);
      v16 = 196612;
    }

    else
    {
      (*(*a1 + 168))(a1, *(a4 + 12));
      v13 = v10;
      v12 = *(a4 + 12);
      v14 = *(*a1 + 32);
      v16 = 196611;
    }

    v15 = a1;
    goto LABEL_21;
  }

  if (v9)
  {
    a1[28] = 0;
    v13 = v8;
    v14 = *(*a1 + 32);
    v16 = 196610;
    v15 = a1;
    v12 = 0;
    goto LABEL_21;
  }

  v11 = *(a4 + 12);
  if (v11 > 3)
  {
    goto LABEL_25;
  }

  a1[28] = v11;
  v12 = *(a4 + 12);
  if (v12 > 3)
  {
    goto LABEL_25;
  }

  v13 = v8;
  v14 = *(*a1 + 32);
  v15 = a1;
  v16 = 196609;
LABEL_21:

  v14(v15, v16, v13, v12);
}

void sub_1000D64A4(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000D6274((a1 - 96), a2, a3, a4, a5);
  }
}

uint64_t sub_1000D64BC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D64D4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D64EC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 112);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000D6510(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 116);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6528(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 120);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6540(uint64_t result, __int16 a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 116) = a2;
  }

  return result;
}

uint64_t sub_1000D6558(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t sub_1000D6570()
{
  if (qword_10012C558 != -1)
  {
    sub_1000E2700();
  }

  return qword_10012C550;
}

uint64_t sub_1000D65EC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (sub_10001C4A0(result), *v1 = off_100119178, v1[12] = off_1001191F0, v1[13] = 0, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060128(result, (v1 + 12), 2u, 0);
    return v1;
  }

  return result;
}

uint64_t sub_1000D6684(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (*result = off_100119178, *(result + 96) = off_1001191F0, (result = sub_10005FC6C()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100060370(result, v1 + 96, 2u);
    *v1 = off_100112210;
    pthread_mutex_destroy((v1 + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000D6740(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D6684(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6754(uint64_t a1)
{
  result = a1 - 96;
  if ((result & 7) == 0)
  {
    return sub_1000D6684(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6768(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D6684(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000D67B8(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_45;
  }

  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_44;
  }

  if (a2 != 2)
  {
    sub_1000DDEEC(0, 4, "%s:%d lingo != kIapLingoSimpleRemote\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 65);
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a5 != 24)
        {
          sub_1000DDEEC(0, 4, "%s:%d payloadSize != sizeof(IapSimpleRemoteMikeyData_t)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 96);
        }

        v18 = 10;
        if (!a4 || (a4 & 7) != 0)
        {
          goto LABEL_45;
        }

        v19 = *(a4 + 4);
        v20 = *(a4 + 16);
        v9 = *(a4 + 8);
        if (v9 <= 1)
        {
          v10 = (v9 & 1) == 0;
          v11 = 2;
LABEL_40:
          if (!v10)
          {
            ++v11;
          }

          (*(*a1 + 40))(a1, (v11 + 131073), &v18, 16);
          return;
        }

        goto LABEL_44;
      }

LABEL_22:
      sub_1000DDEEC(0, 4, "%s:%d Simple Remote Msg %d not handled\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 151, a3);
      return;
    }

    if (a5 != 24)
    {
      sub_1000DDEEC(0, 4, "%s:%d payloadSize != sizeof(IapSimpleRemoteData_t)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 75);
    }

    if (!a4 || (a4 & 7) != 0)
    {
      goto LABEL_45;
    }

    if ((*a4 + 16) <= 0x1F)
    {
      v13 = *(a4 + 4);
      v18 = *a4;
      v19 = v13;
      v20 = *(a4 + 16);
      v14 = *(a4 + 8);
      if (v14 <= 1)
      {
        if (v14)
        {
          v15 = 131074;
        }

        else
        {
          v15 = 131073;
        }

        (*(*a1 + 40))(a1, v15, &v18, 16);
        return;
      }
    }

LABEL_44:
    __break(0x550Au);
LABEL_45:
    __break(0x5516u);
    return;
  }

  if (a3 == 2)
  {
    if (a5 != 24)
    {
      sub_1000DDEEC(0, 4, "%s:%d payloadSize != sizeof(IapSimpleRemoteCarData_t)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 117);
    }

    if (!a4 || (a4 & 7) != 0)
    {
      goto LABEL_45;
    }

    if (*a4 <= 3u)
    {
      v16 = *(a4 + 4);
      v18 = *a4;
      v19 = v16;
      v20 = *(a4 + 16);
      v17 = *(a4 + 8);
      if (v17 <= 1)
      {
        v10 = (v17 & 1) == 0;
        v11 = 4;
        goto LABEL_40;
      }
    }

    goto LABEL_44;
  }

  if (a3 != 3)
  {
    goto LABEL_22;
  }

  if (a5 != 40)
  {
    sub_1000DDEEC(0, 4, "%s:%d payloadSize != sizeof(IapSimpleRemoteRotationButtonStatus_t)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/IAP/TSimpleRemote.cpp", 139);
  }

  v12 = *(*a1 + 32);

  v12(a1, 131079, a4, 40);
}

void sub_1000D6ACC(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if ((a2 + 32) >= 0x40)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000D67B8(a1 - 96, a2, a3, a4, a5);
  }
}

uint64_t sub_1000D6AE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6AFC(uint64_t a1)
{
  memset(v7, 170, sizeof(v7));
  v2 = sub_10000C0EC();
  result = sub_10005D2EC(v7, v2);
  v4 = v7[1];
  if (v7[1] == v7)
  {
    v6 = 0;
LABEL_8:
    sub_1000187F0(v7);
    return v6;
  }

  else
  {
    while (v4 && (v4 & 7) == 0)
    {
      v5 = v4[2];
      v6 = v5 == a1;
      if (v5 != a1)
      {
        v4 = v4[1];
        if (v4 != v7)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D6B98(uint64_t a1)
{
  pthread_mutex_lock(&stru_10012B758);
  v2 = sub_1000D6AFC(a1);
  pthread_mutex_unlock(&stru_10012B758);
  return v2;
}

uint64_t sub_1000D6BE0(uint64_t result, char a2)
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

uint64_t sub_1000D6BF8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 16);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D6C20(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D6C34(uint64_t a1, int a2)
{
  pthread_mutex_lock(&stru_10012B758);
  result = sub_1000D6AFC(a1);
  if (!result)
  {
    goto LABEL_13;
  }

  if ((a2 + 32) < 0x40)
  {
    if (a1 && (a1 & 7) == 0)
    {
      v5 = a2 == 4 ? -3 : -2;
      v6 = *(a1 + 8);
      result = sub_1000C4254();
      if (result)
      {
        if ((result & 7) == 0)
        {
          v7 = (v5 + v6);
          if (!sub_100094598(result, a1))
          {
            goto LABEL_14;
          }

          v8 = v7 >= 2;
          v7 = (v7 - 2);
          if (v8)
          {
            goto LABEL_14;
          }

          __break(0x5515u);
LABEL_13:
          v7 = 0;
LABEL_14:
          pthread_mutex_unlock(&stru_10012B758);
          return v7;
        }
      }
    }

    __break(0x5516u);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000D6CE8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6D00(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (a2 > 0x80)
    {
      if (a2 == 0xFFFF)
      {
        *(result + 8) = -1;
        v2 = -7;
      }

      else
      {
        *(result + 8) = a2;
        v2 = a2 - 6;
      }
    }

    else
    {
      *(result + 8) = 128;
      v2 = 122;
    }

    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_1000D6D50(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = *(result + 8);
    if (v2 >= 0x100)
    {
      v3 = 6;
    }

    else
    {
      v3 = 4;
    }

    v4 = v3 + v2;
    result = (*(*result + 208))(result);
    if (result)
    {
      result = (*(*v1 + 208))(v1);
      v4 -= result != 3;
    }

    if (v4 < 0x10000)
    {
      return v4;
    }
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_1000D6E08(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0xFFFFLL;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D6E20(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = (*(*result + 152))(result);
    if ((result - 6) < 0x10000)
    {
      return (result - 6);
    }
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_1000D6E80(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if ((*(*result + 208))(result))
  {
    return 65529;
  }

  else
  {
    return 506;
  }

  return result;
}

uint64_t sub_1000D6ED8(uint64_t result, int a2)
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

  result = (*(*result + 152))(result);
  if ((a2 + 32) < 0x40)
  {
    if (a2 == 4)
    {
      v4 = (result - 9);
      if (result < 9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = (result - 8);
      if (result < 8)
      {
LABEL_15:
        __break(0x5515u);
        goto LABEL_16;
      }
    }

    result = sub_1000C4254();
    if (result && (result & 7) == 0)
    {
      result = sub_100094598(result, v2);
      if (!result)
      {
        return v4;
      }

      v5 = v4 >= 2;
      v4 = (v4 - 2);
      if (v5)
      {
        return v4;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

LABEL_16:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000D6F8C(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = sub_1000C4254()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_14:
    __break(0x5500u);
    return result;
  }

  result = sub_100094598(result, v2);
  if ((result & 1) == 0 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v2 + 12);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    goto LABEL_14;
  }

  if (HIWORD(v6))
  {
    result = 0;
  }

  else
  {
    result = v6;
  }

  *(v2 + 12) = result;
  return result;
}

uint64_t sub_1000D7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(&stru_10012B758);
  result = sub_1000D6AFC(a1);
  if (result)
  {
    if (!a1 || (a1 & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v7 = *(*a1 + 120);

      return v7(a1, a2, a3);
    }
  }

  else
  {
    pthread_mutex_unlock(&stru_10012B758);
    return 0;
  }

  return result;
}

void sub_1000D70BC(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000D70D0(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000D70E4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D70F8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000D710C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7124(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D713C(uint64_t result, xmlChar *str2)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) == 0)
  {
    v2 = *(result + 24);
    if (v2)
    {
      while ((v2 & 7) == 0)
      {
        v4 = *(v2 + 8);
        if (v4 >= 0x20)
        {
          goto LABEL_15;
        }

        if (v4 != 1 || str2 && *str2 && (result = xmlStrcmp(*(v2 + 16), str2), result))
        {
          v2 = *(v2 + 48);
          if (v2)
          {
            continue;
          }
        }

        return v2;
      }

      goto LABEL_14;
    }

    return v2;
  }

LABEL_14:
  __break(0x5516u);
LABEL_15:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000D71C4(uint64_t result)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_10;
    }

    v1 = *(result + 24);
    if (!v1)
    {
      return 0;
    }

    if ((v1 & 7) != 0)
    {
LABEL_10:
      __break(0x5516u);
    }

    else
    {
      v2 = *(v1 + 8);
      if (v2 < 0x20)
      {
        if (v2 == 3)
        {
          return *(v1 + 80);
        }

        return 0;
      }
    }

    __break(0x550Au);
  }

  return result;
}

uint64_t sub_1000D720C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = &off_1001193F0;
    *(result + 8) = 0;
    *(result + 16) = a2;
    *(result + 24) &= 0xFCu;
  }

  return result;
}

uint64_t sub_1000D724C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    result = *(result + 16);
    if (result && (result & 7) == 0)
    {
      return (*(*result + 16))();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7294(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 24) |= 1u;
    return 1;
  }

  return result;
}

uint64_t sub_1000D72B8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 24) |= 2u;
    return 1;
  }

  return result;
}

void sub_1000D72DC(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000D72F0(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000D7304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      sub_1000D720C(result, a2);
      *v4 = &off_100119440;
      v4[5] = a4;
      operator new();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D73A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D7304(result, a2, a3, a4);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000D73BC(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *result = &off_100119440;
  v1 = result[4];
  if (v1)
  {
    if ((v1 & 7) == 0)
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      operator delete();
    }

    goto LABEL_9;
  }

  return result;
}

void *sub_1000D7444(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D73BC(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000D7458(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D73BC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D74A0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D724C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D74B4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000D7514(result, 1);
    if (result)
    {

      return sub_1000D7294(v1);
    }
  }

  return result;
}

uint64_t sub_1000D7514(uint64_t result, int a2)
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

  if (a2)
  {
    result = sub_1000D724C(result);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1000D724C(result);
    if (!result)
    {
      return 0;
    }
  }

  v4 = *(v2 + 32);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
  }

  else
  {
    if ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *v4;
      v6 = *(*(v2 + 32) + 8);
    }

    v7 = sub_1000D724C(v2);
    if (v7 && a2 && *(v2 + 40))
    {
      v8 = *(v2 + 40);
      sub_1000E22D8();
    }

    if (!v7)
    {
      return 0;
    }

    return sub_1000D724C(v2);
  }

  return result;
}

uint64_t sub_1000D75F0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000D7514(result, 0);
    if (result)
    {

      return sub_1000D72B8(v1);
    }
  }

  return result;
}

uint64_t sub_1000D7650(uint64_t result, std::string *this, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (!a3 ? (v6 = "</") : (v6 = "<"), (result = std::string::assign(this, v6), (v7 = *(v3 + 32)) == 0) || (v7 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_100023AF4(this, v7);
    if (a3)
    {
      if (*(v3 + 40))
      {
        sub_1000E22D8();
      }
    }

    std::string::append(this, ">");
    return 1;
  }

  return result;
}

void *sub_1000D76EC(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119498;
    result[2] = 0;
  }

  return result;
}

BOOL sub_1000D7720(_BOOL8 result, uint64_t a2)
{
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = fopen(v3, "r");
    *(v2 + 16) = v4;
    return v4 != 0;
  }

  return result;
}

void *sub_1000D7778(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119498;
    v2 = result[2];
    if (v2)
    {
      fclose(v2);
      v1[2] = 0;
    }

    return v1;
  }

  return result;
}

void *sub_1000D77D8(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D7778(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000D77EC(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D7778(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7834(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 24))(result);
    return *(v1 + 8);
  }

  return result;
}

void sub_1000D7890(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_10:
    __break(0x5507u);
    return;
  }

  if (!feof(*(a1 + 16)))
  {
    v2 = fgetc(*(a1 + 16));
    if (v2 != -1)
    {
      if (v2 < 0x100)
      {
        *(a1 + 8) = v2;
        return;
      }

      goto LABEL_10;
    }

    sub_1000DDEEC(0, 4, "%s:%d 1 != bytesRead\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLParse/iMAXMLFileSrcStream.cpp", 84);
  }
}

size_t sub_1000D791C(size_t result, void *a2, int *a3, _DWORD *a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      if (feof(*(result + 16)))
      {
        *a4 = 0;
        return 1;
      }

      if (!a2 || *a3 < 1 || (v8 = *a4, v8 < 1) || *a3 < v8)
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      result = fread(a2, 1uLL, v8, *(v4 + 16));
      *a4 = result;
      if (result)
      {
        if (!__CFADD__(a2, result - 1))
        {
          *(v4 + 8) = *(a2 + result - 1);
          return 1;
        }

        goto LABEL_16;
      }

      __break(0x5518u);
    }
  }

  __break(0x5516u);
LABEL_16:
  __break(0x5513u);
  return result;
}

void *sub_1000D79DC(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119500;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_1000D7A10(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = fwrite(*(result + 16), 1uLL, *(result + 24), *(result + 8)) == *(result + 24);
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000D7A60(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119500;
    if (*(result + 24))
    {
      sub_1000D7A10(result);
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      free(v2);
    }

    fclose(*(v1 + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1000D7AD4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D7A60(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7AE8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D7A60(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

FILE *sub_1000D7B30(FILE *result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    result = fopen(v3, "w");
    if (result)
    {
      *&v2->_r = result;
      HIDWORD(v2->_bf._base) = 1024;
      v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      *&v2->_flags = v4;
      return (v4 != 0);
    }
  }

  return result;
}

uint64_t sub_1000D7BB0(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_28:
    __break(0x5516u);
    return result;
  }

  if (a3 >= 1)
  {
    v6 = 0;
    v7 = ~a2;
    while (1)
    {
      v8 = *(v3 + 24);
      v9 = *(v3 + 28);
      v10 = v9 >= v8;
      v11 = v9 - v8;
      if (!v10)
      {
        break;
      }

      v12 = a3 - v6;
      if (a3 < v6)
      {
        break;
      }

      if (v11 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = *(v3 + 16);
      if (__CFADD__(v14, v8) || v7 < v6)
      {
        goto LABEL_26;
      }

      result = memcpy((v14 + v8), (a2 + v6), v13);
      v10 = __CFADD__(v6, v13);
      v6 += v13;
      if (v10)
      {
        goto LABEL_27;
      }

      if ((v6 & 0x80000000) != 0)
      {
        sub_1000E23C4();
      }

      v15 = *(v3 + 24);
      v10 = __CFADD__(v15, v13);
      v16 = v15 + v13;
      if (v10)
      {
        goto LABEL_27;
      }

      *(v3 + 24) = v16;
      if (v16 >= *(v3 + 28))
      {
        result = sub_1000D7A10(v3);
      }

      else
      {
        result = 1;
      }

      if (v6 >= a3 || (result & 1) == 0)
      {
        return result;
      }
    }

    __break(0x5515u);
LABEL_26:
    __break(0x5513u);
LABEL_27:
    __break(0x5500u);
    goto LABEL_28;
  }

  return 1;
}

void *sub_1000D7CAC(void *result)
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

  *result = off_100119550;
  result = result[1];
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    (*(*result + 8))(result);
LABEL_10:
    while (1)
    {
      result = v1[2];
      if (!result)
      {
        return v1;
      }

      if ((result & 7) != 0)
      {
        goto LABEL_12;
      }

      v2 = result[1];
      v1[2] = v2;
      if (!v2)
      {
        v1[3] = 0;
      }

      (*(*result + 16))(result);
    }
  }

  return result;
}

void *sub_1000D7D78(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D7CAC(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000D7D8C(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000D7CAC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7DD4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(a2 + 8) = 0;
    v2 = (result + 16);
    v3 = *(result + 16);
    if (v3)
    {
      *(a2 + 8) = v3;
    }

    else
    {
      *(result + 16) = a2;
      v2 = (result + 24);
    }

    *v2 = a2;
  }

  return result;
}

uint64_t sub_1000D7E18(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  result = *(result + 16);
  if (!result)
  {
    sub_1000DDEEC(result, 4, "iMAXMLOutStreamCntlr::BeginInnermostElemSerializer null mInnermostElem", v1, v2);
    return 0;
  }

  if ((result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t sub_1000D7E90(uint64_t result, void *a2)
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

  result = *(result + 16);
  if (!result)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = (*(*result + 40))(result);
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_10:
    *a2 = v4;
    return result;
  }

  if ((v4 & 7) == 0)
  {
    v5 = *(v4 + 8);
    *(v2 + 16) = v5;
    if (!v5)
    {
      *(v2 + 24) = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7F24(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7FA0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    result = *(result + 16);
    if (!result)
    {
      return 1;
    }

    if ((result & 7) == 0)
    {
      return (*(*result + 24))();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D7FEC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1000D8010(uint64_t result, unint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
    return result;
  }

  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      v4 = 0;
      for (i = a2; ; i += 32)
      {
        if (*(i + 8) == -1)
        {
          *(result + 8) = v4;
          sub_1000D80B8(result + 16, v4);
          *v2 = a2;
          return a2 != 0;
        }

        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (i >= 0xFFFFFFFFFFFFFFE0)
        {
          goto LABEL_14;
        }

        ++v4;
      }

      __break(0x5500u);
LABEL_14:
      __break(0x5513u);
    }

    goto LABEL_15;
  }

  sub_1000DDEEC(0, 4, "iMAXMLParseCntxLookup::CheckSetTableLength: null table ptr!");
  return a2 != 0;
}

unint64_t sub_1000D80B8(unint64_t result, unint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_11:
    __break(0x5513u);
    return result;
  }

  v2 = *result;
  v3 = (*(result + 8) - *result) >> 3;
  if (a2 > v3)
  {
    return sub_1000D84E8(result, a2 - v3);
  }

  if (a2 < v3)
  {
    if (!((a2 + 0x1000000000000000) >> 61) && 8 * a2 <= ~v2)
    {
      return sub_1000D8944(result, v2 + 8 * a2);
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000D811C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      result = sub_1000D8010(result, a2);
      if (!result)
      {
        return 22;
      }

      if (!*(v3 + 8))
      {
        return 0;
      }

      v6 = 0;
      v7 = 0;
      if (a2)
      {
        v8 = (a2 & 7) == 0;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      while (v6 <= ~a2)
      {
        if (!v9)
        {
          goto LABEL_22;
        }

        v10 = (a2 + v6);
        if ((*(a2 + v6 + 10) & 1) == 0)
        {
          v11 = (*v10)(v7, a3);
          if (!v11)
          {
            sub_1000DDEEC(0, 4, "iMAXMLParseCntxLookup::Init failed to create parse context");
            return 22;
          }

          v12 = v11;
          result = sub_10008BC84((v3 + 16), v7);
          *result = v12;
        }

        if (v10 > 0xFFFFFFFFFFFFFFDFLL)
        {
          break;
        }

        ++v7;
        v6 += 32;
        if (v7 >= *(v3 + 8))
        {
          return 0;
        }
      }

      __break(0x5513u);
    }
  }

LABEL_22:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000D8224(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v2 = *result;
  if (!*result || *(result + 8) <= a2)
  {
    return 0;
  }

  if (!__CFADD__(v2, 32 * a2))
  {
    v3 = v2 + 32 * a2;
    if ((v3 & 7) == 0)
    {
      return *(v3 + 10);
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D8274(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v2 = *result;
  if (!*result || *(result + 8) <= a2)
  {
    return 0;
  }

  if (!__CFADD__(v2, 32 * a2))
  {
    v3 = v2 + 32 * a2;
    if ((v3 & 7) == 0)
    {
      return *(v3 + 8);
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D82C4(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v2 = *result;
  if (!*result || *(result + 8) <= a2)
  {
    return 0;
  }

  if (!__CFADD__(v2, 32 * a2))
  {
    v3 = v2 + 32 * a2;
    if ((v3 & 7) == 0)
    {
      return v3 + 11;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D8314(uint64_t result, std::string *this, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
LABEL_21:
    __break(0x5516u);
LABEL_22:
    __break(0x5513u);
    return result;
  }

  if (*(result + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = this & 7;
    while (1)
    {
      v9 = *v3;
      if (__CFADD__(*v3, v6))
      {
        goto LABEL_22;
      }

      if (v9)
      {
        v10 = ((v6 + v9) & 7) == 0;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = *(v9 + v6 + 10);
      if ((v11 & 8) != 0)
      {
        return v7;
      }

      if (this)
      {
        if (v8)
        {
          goto LABEL_21;
        }

        result = std::string::compare(this, (v9 + v6 + 11));
        if (!result)
        {
          return v7;
        }
      }

      else if (a3 && (v11 & a3) == a3)
      {
        return v7;
      }

      ++v7;
      v6 += 32;
      if (v7 >= *(v3 + 8))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000D83EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = *result;
  if (!*result || *(result + 8) <= a2)
  {
    return 0;
  }

  if (__CFADD__(v4, 32 * a2))
  {
    goto LABEL_14;
  }

  v5 = v4 + 32 * a2;
  if ((v5 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
LABEL_14:
    __break(0x5513u);
    return result;
  }

  if ((*(v5 + 10) & 1) == 0)
  {
    return *sub_10008BC84((result + 16), a2);
  }

  v6 = *v5;

  return v6(a2, a3);
}

void *sub_1000D8480(void *result)
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

void *sub_1000D84E8(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v5) >> 3)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[0] = v6;
    v12[1] = v6;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (!__CFADD__(a2, v7 >> 3))
    {
      if (!(v8 >> 61))
      {
        v9 = v4 - *a1;
        if (v9 >> 2 > v8)
        {
          v8 = v9 >> 2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        sub_100060620(v12, v10, v7 >> 3, a1);
        sub_1000D8650(v12, a2);
        sub_1000D86F8(a1, v12);
        return sub_1000D8878(v12);
      }

LABEL_17:
      sub_1000E1E08();
    }

LABEL_16:
    __break(0x5500u);
    goto LABEL_17;
  }

  return sub_1000D85E0(a1, a2);
}

uint64_t sub_1000D85E0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if ((a2 + 0x1000000000000000) >> 61)
    {
      goto LABEL_14;
    }

    v2 = *(result + 8);
    v3 = 8 * a2;
    if (8 * a2 > ~v2)
    {
      goto LABEL_14;
    }

    if (!a2)
    {
LABEL_12:
      *(result + 8) = v2;
      return result;
    }

    v4 = v2 + 8 * a2;
    v5 = *(result + 8) & 7;
    while (v2 && !v5)
    {
      *v2 = 0;
      if (v2 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_14;
      }

      v2 += 8;
      v3 -= 8;
      if (!v3)
      {
        v2 = v4;
        goto LABEL_12;
      }
    }
  }

  __break(0x5516u);
LABEL_14:
  __break(0x5513u);
  return result;
}

uint64_t *sub_1000D8650(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      memset(v6, 170, sizeof(v6));
      result = sub_10005E67C(v6, result + 2, a2);
      v3 = v6[0];
      v4 = v6[1];
      if (v6[0] == v6[1])
      {
LABEL_10:
        if (v6[2] && (v6[2] & 7) == 0)
        {
          *v6[2] = v3;
          return result;
        }
      }

      else if (v2[4])
      {
        v5 = v6[0] & 7;
        while (v3 && !v5)
        {
          *v3 = 0;
          if (v3 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_14;
          }

          v6[0] = ++v3;
          if (v3 == v4)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_14:
  __break(0x5513u);
  return result;
}

void sub_1000D86F8(uint64_t a1, void *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2[1];
    v5 = *(a1 + 8);
    v6 = v5 - *a1;
    v7 = -(v6 >> 3);
    v8 = (v6 >> 3) + 0xFFFFFFFFFFFFFFFLL;
    v9 = -8 * (v6 >> 3);
    v10 = v9 <= ~v4;
    v11 = v9 < 0;
    if (!(v8 >> 61) && ((v11 ^ v10) & 1) != 0)
    {
      v12 = v4 + 8 * v7;
      sub_1000D87C8(a1, *a1, v5, v12);
      a2[1] = v12;
      v13 = *a1;
      *(a1 + 8) = *a1;
      *a1 = a2[1];
      a2[1] = v13;
      v14 = *(a1 + 8);
      *(a1 + 8) = a2[2];
      a2[2] = v14;
      v15 = *(a1 + 16);
      *(a1 + 16) = a2[3];
      a2[3] = v15;
      *a2 = a2[1];
      return;
    }
  }

  __break(0x5513u);
}

void sub_1000D87C8(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  if (a2 == a3)
  {
LABEL_10:
    sub_1000D8820(a1, a2, a3);
  }

  else
  {
    v4 = a4 & 7;
    v5 = a2;
    while (v5 && (a2 & 7) == 0 && a4 && !v4)
    {
      *a4 = *v5;
      if (v5 > 0xFFFFFFFFFFFFFFF7 || a4 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_12;
      }

      ++v5;
      a4 += 8;
      if (v5 == a3)
      {
        goto LABEL_10;
      }
    }

    __break(0x5516u);
LABEL_12:
    __break(0x5513u);
  }
}

void sub_1000D8820(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = a2 & 7;
    while (v4 && !v5)
    {
      v6 = sub_1000D8480(v4);
      if (v6 >= 0xFFFFFFFFFFFFFFF8)
      {
        __break(0x5513u);
        break;
      }

      v4 = v6 + 1;
      if (v4 == a3)
      {
        return;
      }
    }

    __break(0x5516u);
  }
}

void *sub_1000D8878(void *result)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_8;
  }

  sub_1000D88D8(result);
  result = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (v1[4])
  {
    if ((v1[3] - result) >= 0)
    {
      operator delete(result);
      return v1;
    }
  }

  else
  {
LABEL_8:
    __break(0x5516u);
  }

  __break(0x550Cu);
  return result;
}

void *sub_1000D88D8(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_10:
    __break(0x5516u);
LABEL_11:
    __break(0x5513u);
  }

  else
  {
    v2 = result[1];
    while (1)
    {
      v3 = v1[2];
      if (v3 == v2)
      {
        break;
      }

      if (!v1[4])
      {
        goto LABEL_10;
      }

      if (v3 <= 7)
      {
        goto LABEL_11;
      }

      result = (v3 - 8);
      v1[2] = v3 - 8;
      if (((v3 - 8) & 7) != 0)
      {
        goto LABEL_10;
      }

      result = sub_1000D8480(result);
    }
  }

  return result;
}

unint64_t sub_1000D8944(unint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    result = *(result + 8);
    if (result == a2)
    {
LABEL_8:
      *(v2 + 8) = a2;
      return result;
    }

    v4 = result & 7;
    while (result > 7)
    {
      if (v4)
      {
        goto LABEL_9;
      }

      result = sub_1000D8480((result - 8));
      if (result == a2)
      {
        goto LABEL_8;
      }
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1000D89B4(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000D903C(result, a2, a3);
    *result = off_100119598;
  }

  return result;
}

uint64_t sub_1000D89F8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *v2;
  v4 = **v2;
  {
    goto LABEL_11;
  }

  v5 = *v3;
  if ((v6 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
LABEL_11:
    sub_1000E1D34();
  }

  v7 = *(a1 + 16);
  v8 = v6 + 56;

  return sub_1000D8224(v8, v7);
}

uint64_t sub_1000D8AD0(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *v2;
  v4 = **v2;
  {
    goto LABEL_11;
  }

  v5 = *v3;
  if ((v6 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
LABEL_11:
    sub_1000E1D34();
  }

  v7 = *(a1 + 16);
  v8 = v6 + 56;

  return sub_1000D8274(v8, v7);
}

uint64_t sub_1000D8BA8(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = sub_1000D9298(a1);
  if (!v4)
  {
    v5 = *(a1 + 24);
    if (!v5)
    {
      goto LABEL_19;
    }

    if ((v5 & 7) == 0)
    {
      v6 = **v5;
      {
        operator new();
      }

LABEL_19:
      sub_1000E1D34();
    }

LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v7 = (*(*a2 + 32))(a2, v4, 0);
  if (v4 != sub_1000D9298(a1))
  {
    if ((v4 & 7) == 0)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      operator delete();
    }

    goto LABEL_18;
  }

  if (v7)
  {
    sub_1000D7DD4(a2, v7);
    return 0;
  }

  else
  {
    sub_1000DDEEC(0, 4, "iMAXMLParseContext::CreateTagOutputSerializer iMAXMLOutStreamCntlr->CreateElementSerializer failed");
    return 16;
  }
}

uint64_t sub_1000D8D90(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    goto LABEL_11;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_10;
  }

  v2 = *v1;
  v3 = **v1;
  {
    goto LABEL_11;
  }

  v4 = *v2;
  if ((v5 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
LABEL_11:
    sub_1000E1D34();
  }

  v6 = v5 + 8;

  return sub_1000D9848(v6);
}

void sub_1000D8E58(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000D8E6C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000D8E80(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D903C(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119680;
    *(result + 8) = 0;
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_1000D907C(uint64_t result)
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

  *result = off_100119680;
  result = *(result + 48);
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_12;
    }

    result = (*(*result + 8))(result);
  }

  v2 = *(v1 + 40);
  if (!v2)
  {
    return v1;
  }

  if ((v2 & 7) == 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

LABEL_12:
  __break(0x5516u);
  return result;
}

void sub_1000D9138(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000D914C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_1000D917C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = *(result + 48);
      if (!result)
      {
LABEL_6:
        *(v2 + 48) = a2;
        return result;
      }

      if ((result & 7) == 0)
      {
        result = (*(*result + 8))(result);
        goto LABEL_6;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D91E8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 16);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D9200(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 40);
    if (!v1)
    {
      operator new();
    }

    if ((v1 & 7) == 0)
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      operator delete();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D9298(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 40))
  {
    v1 = *(a1 + 24);
    if (!v1)
    {
      goto LABEL_10;
    }

    if ((v1 & 7) == 0)
    {
      v2 = **v1;
      {
        operator new();
      }

LABEL_10:
      sub_1000E1D34();
    }

LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  return *(a1 + 40);
}

uint64_t sub_1000D937C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D9394(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 45;
  }

  __break(0x5516u);
  return result;
}

void sub_1000D93AC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000D93F8(a1);

    sub_10005E988(a1);
  }
}

uint64_t sub_1000D93F8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    while (*(v1 + 40))
    {
      result = sub_1000D94A0(v1);
      if (!result)
      {
        goto LABEL_9;
      }

      v2 = result;
      if ((result & 7) != 0)
      {
        goto LABEL_9;
      }

      result = (*(*result + 48))(result);
      if (result)
      {
        result = (*(*v2 + 8))(v2);
      }
    }
  }

  return result;
}

uint64_t sub_1000D94A0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!*(result + 40))
  {
    return 0;
  }

  v1 = *(result + 8);
  v2 = (*(result + 32) >> 6) & 0x3FFFFFFFFFFFFF8;
  if (!__CFADD__(v1, v2))
  {
    if (v1)
    {
      v3 = (v1 + v2);
      if ((v3 & 7) == 0)
      {
        v4 = *v3;
        v5 = 8 * (*(result + 32) & 0x1FFLL);
        if (!__CFADD__(v4, v5))
        {
          v6 = (v4 + v5);
          if (v4)
          {
            v7 = (v6 & 7) == 0;
          }

          else
          {
            v7 = 0;
          }

          if (!v7)
          {
            goto LABEL_16;
          }

          v8 = *v6;
          sub_10005EDB0(result);
          return v8;
        }

        goto LABEL_17;
      }
    }

LABEL_16:
    __break(0x5516u);
  }

LABEL_17:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D9538(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = sub_1000D9644(result);
  if (!a2)
  {
    sub_1000DDEEC(0, 4, "iMAXMLParseContextManager::AddContext nil Context param");
    return 22;
  }

  if (result && a4)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_13;
    }

    v8 = (*(*result + 16))(result, a2);
    if (v8)
    {
      return v8;
    }
  }

  v9 = a2;
  result = sub_1000D9894(v4, &v9);
  if ((a2 & 7) == 0)
  {
    v8 = (*(*a2 + 40))(a2, a3);
    if (v8)
    {
      sub_1000D94A0(v4);
    }

    return v8;
  }

LABEL_13:
  __break(0x5516u);
  return result;
}

void *sub_1000D9644(void *result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!result[5])
  {
    return 0;
  }

  v1 = result[1];
  v2 = (result[4] >> 6) & 0x3FFFFFFFFFFFFF8;
  if (__CFADD__(v1, v2))
  {
    goto LABEL_16;
  }

  if (!v1 || (v3 = (v1 + v2), (v3 & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v4 = *v3;
  v5 = 8 * (result[4] & 0x1FFLL);
  if (!__CFADD__(v4, v5))
  {
    v6 = v4 + v5;
    if (v4)
    {
      v7 = (v6 & 7) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return *v6;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D96BC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!*(result + 40))
  {
    return 2;
  }

  result = sub_1000D9644(result);
  if (!result || (result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    v1 = *(*result + 24);

    return v1();
  }

  return result;
}

uint64_t sub_1000D976C(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!*(result + 40))
    {
      return 0;
    }

    result = sub_1000D94A0(result);
    if (result)
    {
      v3 = result;
      if ((result & 7) == 0)
      {
        v4 = (*(*result + 32))(result, a2);
        if ((*(*v3 + 48))(v3))
        {
          (*(*v3 + 8))(v3);
        }

        return v4;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000D9848(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  result = sub_1000D9644(result);
  if (!result)
  {
    return 0xFFFFFFFFLL;
  }

  if ((result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {

    return sub_1000D91E8(result);
  }

  return result;
}

unint64_t sub_1000D9894(unint64_t result, void *a2)
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

  if (!*(result + 32))
  {
    sub_1000D9938(result);
  }

  v12[0] = sub_10005EB10(v2);
  v12[1] = v4;
  result = sub_1000D9B78(v12);
  v5 = *(result + 8);
  if (!v5 || (*(result + 8) & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
LABEL_15:
    __break(0x5515u);
    goto LABEL_16;
  }

  *v5 = *a2;
  v7 = v2[4];
  v8 = v7 != 0;
  v9 = v7 - 1;
  if (!v8)
  {
    goto LABEL_15;
  }

  v2[4] = v9;
  v10 = v2[5];
  v8 = __CFADD__(v10, 1);
  v11 = v10 + 1;
  if (!v8)
  {
    v2[5] = v11;
    return result;
  }

LABEL_16:
  __break(0x5500u);
  return result;
}

unint64_t sub_1000D9938(unint64_t result)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = sub_10005DC0C(result);
  if (result < 0x200)
  {
    v7 = v1[3];
    v8 = *v1;
    v9 = v1[1];
    v10 = v7 - *v1;
    if (v1[2] - v9 < v10)
    {
      if (v9 != v8)
      {
        operator new();
      }

      operator new();
    }

    v15 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14[0] = v11;
    v14[1] = v11;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v12 = v10 >> 2;
      if (v7 == v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_10005E7D8(v14, v13, 0, v1);
      operator new();
    }

    goto LABEL_20;
  }

  v2 = v1[4];
  v3 = __CFADD__(v2, 512);
  v4 = v2 + 512;
  if (!v3)
  {
    v1[4] = v4;
    v5 = v1[2];
    if (v5 <= 7)
    {
LABEL_18:
      __break(0x5513u);
      goto LABEL_19;
    }

    v6 = (v5 - 8);
    if ((v6 & 7) == 0)
    {
      *&v14[0] = *v6;
      v1[2] = v6;
      return sub_10005E098(v1, v14);
    }

LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

LABEL_19:
  __break(0x5500u);
LABEL_20:
  __break(0x550Cu);
  return result;
}

void *sub_1000D9B78(void *result)
{
  if (result && (result & 7) == 0 && ((v1 = *result) != 0 ? (v2 = (*result & 7) == 0, *result) : (v2 = 0), v2))
  {
    v3 = result[1];
    if (v3 == *v1)
    {
      if (v1 <= 7)
      {
        goto LABEL_15;
      }

      *result = v1 - 1;
      v4 = *(v1 - 1);
      if (v4 > 0xFFFFFFFFFFFFEFFFLL)
      {
        goto LABEL_15;
      }

      v3 = v4 + 4096;
      result[1] = v4 + 4096;
    }

    if (v3 >= 8)
    {
      result[1] = v3 - 8;
      return result;
    }
  }

  else
  {
    __break(0x5516u);
  }

LABEL_15:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000D9BE8(uint64_t result, unint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000D811C(result + 56, a2, result);
  }

  __break(0x5516u);
  return result;
}

void sub_1000D9C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
  }

  else
  {
    ioctx[0] = a4;
    ioctx[1] = a2;
    v8 = xmlReaderForIO(sub_1000D9E08, 0, ioctx, 0, 0, 0);
    if (v8)
    {
      v9 = v8;
      v18 = 0;
      while (1)
      {
        v10 = *(a1 + 96);
        if (v10 >= 2)
        {
          __break(0x550Au);
          goto LABEL_30;
        }

        if ((v10 & 1) != 0 || xmlTextReaderRead(v9) != 1)
        {
LABEL_28:
          xmlFreeTextReader(v9);
          sub_1000D93F8(a1 + 8);
          return;
        }

        v18 &= ~0x10u;
        v11 = xmlTextReaderNodeType(v9);
        v12 = 0;
        if (v11 > 3)
        {
          if (v11 == 4)
          {
            v17 = 0;
            v15 = xmlTextReaderConstValue(v9);
            if (a5)
            {
              memset(&__p, 0, sizeof(__p));
              if (sub_1000DA2AC(a1, v15, &__p))
              {
                v12 = sub_1000D96BC(a1 + 8);
              }

              else
              {
                v12 = 0;
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_22;
            }

            v13 = a1 + 8;
            goto LABEL_20;
          }

          if (v11 == 15)
          {
            v14 = sub_1000D976C(a1 + 8, a3);
LABEL_21:
            v12 = v14;
          }
        }

        else
        {
          if (v11 == 1)
          {
            v14 = sub_1000D9EF8(a1, v9, a3, &v18);
            goto LABEL_21;
          }

          if (v11 == 3)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            xmlTextReaderConstValue(v9);
            v13 = a1 + 8;
LABEL_20:
            v14 = sub_1000D96BC(v13);
            goto LABEL_21;
          }
        }

LABEL_22:
        if (v12)
        {
          goto LABEL_28;
        }
      }
    }

    sub_1000DDEEC(0, 4, "iMAXMLParseCtlr::ParseLoopEx: Failed to create xmltextreader object\n");
  }
}

uint64_t sub_1000D9E08(uint64_t result, uint64_t a2, int a3)
{
  v8 = a3;
  if (!result)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = *(result + 8);
  v5 = 0xFFFFFFFFLL;
  v7 = -1;
  if (result)
  {
    if (a3 >= 128)
    {
      v6 = 128;
    }

    else
    {
      v6 = a3;
    }

    v7 = v6;
    if ((result & 7) != 0)
    {
      goto LABEL_16;
    }

    if ((*(*result + 32))(result, a2, &v8, &v7))
    {
      v5 = v7;
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  result = *v3;
  if (!*v3 || !v5)
  {
    return v5;
  }

  if ((result & 7) == 0)
  {
    (*(*result + 24))(result, a2, v5);
    return v7;
  }

LABEL_16:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000D9EF8(uint64_t result, xmlTextReaderPtr reader, uint64_t a3, _DWORD *a4)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  if (!reader || xmlTextReaderNodeType(reader) != 1)
  {
    return 2;
  }

  memset(&v15, 170, sizeof(v15));
  v8 = xmlTextReaderConstName(reader);
  sub_100025D20(&v15, v8);
  if (xmlTextReaderIsEmptyElement(reader))
  {
    v9 = 16;
  }

  else
  {
    v9 = 4;
  }

  *a4 |= v9;
  v10 = sub_1000D8314(v4 + 56, &v15, 0);
  if (v10 == -1)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = sub_1000D83EC(v4 + 56, v10, v4);
  if (!v12)
  {
    v14 = 2;
    goto LABEL_24;
  }

  v13 = v12;
  if (xmlTextReaderHasAttributes(reader))
  {
    operator new();
  }

  result = sub_1000D8224(v4 + 56, v11);
  if ((result & 8) != 0)
  {
    if ((v13 & 7) != 0)
    {
      goto LABEL_27;
    }

    sub_1000D9200(v13);
  }

  result = sub_1000D9538(v4 + 8, v13, a3, 1);
  v14 = result;
  if (!result)
  {
    goto LABEL_18;
  }

  if ((v13 & 7) == 0)
  {
    if (((*(*v13 + 48))(v13) & 1) == 0)
    {
LABEL_18:
      if ((*a4 & 0x10) != 0)
      {
        v14 = sub_1000D976C(v4 + 8, a3);
        *a4 &= ~0x10u;
      }

      goto LABEL_24;
    }

    (*(*v13 + 8))(v13);
LABEL_24:
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v14;
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

BOOL sub_1000DA2AC(_BOOL8 result, uint64_t a2, std::string *this)
{
  if (!result || result & 7)
  {
    goto LABEL_25;
  }

  if (!a2)
  {
    return 0;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__r.__words[0])
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
      goto LABEL_9;
    }

LABEL_25:
    __break(0x5516u);
    return result;
  }

  this->__r_.__value_.__s.__data_[0] = 0;
  *(&this->__r_.__value_.__s + 23) = 0;
LABEL_9:
  v4 = a2 - 1;
  do
  {
    v5 = *(v4 + 1);
    if (v5 <= 0x3B)
    {
      if (v5 == 38)
      {
        v6 = this;
        v7 = "&amp;";
        goto LABEL_17;
      }

      if (!*(v4 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 == 60)
      {
        v6 = this;
        v7 = "&lt;";
        goto LABEL_17;
      }

      if (v5 == 62)
      {
        v6 = this;
        v7 = "&gt;";
LABEL_17:
        std::string::append(v6, v7);
        goto LABEL_20;
      }
    }

    std::string::push_back(this, v5);
LABEL_20:
    ++v4;
  }

  while (v4 != -1);
  __break(0x5513u);
LABEL_22:
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  return size != 0;
}

void *sub_1000DA3C0(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *result = off_1001196E8;
  v1 = result[1];
  if (v1)
  {
    if ((v1 & 7) == 0)
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      operator delete();
    }

    goto LABEL_9;
  }

  return result;
}

void sub_1000DA448(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_1000DA45C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void *sub_1000DA470(void *result)
{
  if (result && (result & 7) == 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = off_100119710;
    operator new();
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DA514(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DA470(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DA528(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return result;
  }

  *result = off_100119710;
  v1 = result[2];
  if (v1)
  {
    if ((v1 & 7) == 0)
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      operator delete();
    }

    goto LABEL_11;
  }

  return sub_1000DA3C0(result);
}

void *sub_1000DA5C0(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DA528(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DA5D4(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DA528(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_1000DA61C(void *a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
  }

  else
  {
    *a1 = off_100119738;
    while (a1[3])
    {
      v2 = a1[2];
      if (v2)
      {
        v3 = (a1[2] & 7) == 0;
      }

      else
      {
        v3 = 0;
      }

      if (!v3)
      {
        goto LABEL_15;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        if ((v4 & 7) != 0)
        {
          goto LABEL_15;
        }

        (*(*v4 + 8))(v4);
      }

      sub_10003C974((a1 + 1));
    }

    sub_1000187F0(a1 + 1);
  }
}

void sub_1000DA6D0(void *a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DA61C(a1);
  }
}

void *sub_1000DA6E4(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DA61C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DA72C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DA75C(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || (a3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = sub_1000D89B4(result, a2, a3);
    *result = off_1001197E0;
    *(result + 56) &= 0xF0u;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_1000DA81C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DA834(uint64_t result, const char *a2, int a3, char **lpsrc)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!*(result + 24))
  {
    sub_1000E1D34();
  }

  v5 = **lpsrc;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  v7 = result;
  v8 = *(result + 272);
  if (v8 >= 2)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  if (v8)
  {
    if (!a2)
    {
LABEL_19:
      __break(0x5516u);
      goto LABEL_20;
    }

    if (sub_1000D9160(*a2))
    {
      return 0;
    }

    else
    {
      return 536883205;
    }
  }

  else
  {
    v9 = strlen(a2);

    return sub_1000DAD30(v7, a2, v9);
  }
}

uint64_t sub_1000DA928(uint64_t result, char **lpsrc)
{
  if (!result)
  {
    goto LABEL_29;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_29;
  }

  v3 = **lpsrc;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  v5 = result;
  v6 = *(result + 272);
  if (v6 < 2)
  {
    v7 = 536883205;
    if ((v6 & 1) == 0)
    {
      if (v2[56])
      {
        return 536883206;
      }

      else
      {
        v2[56] |= 1u;
        v8 = sub_1000DD7BC(result);
        result = (*(*v2 + 64))(v2, v8);
        v7 = result;
        if (!result)
        {
          if (!v8 || (v8 & 7) != 0 || (result = sub_10005B04C(v8), __p = 0, v12 = 0, v13 = 0, !result) || (result & 7) != 0)
          {
LABEL_29:
            __break(0x5516u);
            goto LABEL_30;
          }

          if ((**result)(result, &__p, 1))
          {
            if (v13 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v13 >= 0)
            {
              v10 = HIBYTE(v13);
            }

            else
            {
              v10 = v12;
            }

            v7 = sub_1000DD7D4(v5, p_p, v10);
            (*(*v8 + 16))(v8);
          }

          else
          {
            v7 = 0;
          }

          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }

    return v7;
  }

LABEL_30:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000DAB00(uint64_t result, char **lpsrc)
{
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  v3 = **lpsrc;
  if (!result)
  {
    sub_1000E1D34();
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  result = sub_1000DD7BC(result);
  if (!result)
  {
    sub_1000E1D34();
  }

  v5 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  result = sub_10005B04C(result);
  if (!result)
  {
    sub_1000E1D34();
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  if ((result & 7) != 0)
  {
    goto LABEL_31;
  }

  if (!(**result)(result, &__p, 0))
  {
    sub_1000DDEEC(0, 4, "%s:%d: workoutDataXMLrootTagParseCntx::CompleteParseProc currElem->GetCompleteTagString() failed", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLSignature/workoutDataXMLGenericTagParseCntx.cpp", 224);
    v9 = 16;
    goto LABEL_25;
  }

  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 >= 0)
  {
    v7 = HIBYTE(v13);
  }

  else
  {
    v7 = v12;
  }

  v8 = sub_1000DD7D4(v4, p_p, v7);
  if (!v8)
  {
    if (sub_1000D8D90(v2) == -1)
    {
      sub_1000DDA2C(v4);
      goto LABEL_24;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v5 + 24))(v5, &v10);
    result = v10;
    if (!v10)
    {
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    if ((v10 & 7) == 0)
    {
      (*(*v10 + 16))();
      goto LABEL_24;
    }

LABEL_31:
    __break(0x5516u);
    return result;
  }

  v9 = v8;
  sub_1000DDEEC(0, 4, "%s:%d: workoutDataXMLrootTagParseCntx::CompleteParseProc sigData->AccumulateC14N() failed", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLSignature/workoutDataXMLGenericTagParseCntx.cpp", 219);
LABEL_25:
  *(v2 + 56) &= ~1u;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return v9;
}

uint64_t sub_1000DAD30(uint64_t result, const void *a2, CC_LONG a3)
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

  v4 = sub_1000DD7D4(result, a2, a3);
  result = sub_1000DD7BC(v3);
  if (v4 || !result)
  {
    sub_1000DDEEC(0, 4, "%s:%d: workoutDataXMLGenericTagParseCntx::SendDataToConsumers SigData->GetOutStreamCntlr() failed", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLSignature/workoutDataXMLGenericTagParseCntx.cpp", 289);
    return 2;
  }

  if ((result & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else if (sub_1000D7FA0(result))
  {
    return 0;
  }

  else
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000DADE0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DAE3C(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DADF4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DAE3C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DAE3C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_1001197E0;
    v2 = result + 64;
    sub_10008E050(&v2);
    return sub_1000D907C(v1);
  }

  return result;
}

void sub_1000DB964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000D9C04(a1, a2, a3, a3 + 8, 1);
  }
}

uint64_t sub_1000DB980(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DB9DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DB994(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DB9DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DB9DC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = (result + 72);
    sub_1000DBA30(&v2);
    sub_1000D93AC(v1 + 8);
    return v1;
  }

  return result;
}

void sub_1000DBA30(uint64_t **a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_16;
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = (*a1 & 7) == 0;
    *a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if (*v2)
  {
    sub_1000D8944(v2, *v2);
    v4 = *a1;
    if (!*a1 || (v4 & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      goto LABEL_17;
    }

    v5 = *v4;
    if (v4[2] - *v4 < 0)
    {
LABEL_17:
      __break(0x550Cu);
      return;
    }

    operator delete(v5);
  }
}

uint64_t sub_1000DBAC0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    inited = InitSigningContext();
    if (!inited)
    {
      return 0;
    }

    v2 = inited;
    if (UpdateSigningContext())
    {
      v3 = FinalizeSigningContext();
    }

    else
    {
      v3 = 0;
    }

    free(v2);
    return v3;
  }

  return result;
}

uint64_t sub_1000DBB90(const char *a1, int a2, void **a3, void *a4)
{
  v8 = xmlBufferCreate();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = xmlNewTextWriterMemory(v8, 0);
  if (!v10)
  {
    v16 = 0;
LABEL_19:
    xmlBufferFree(v9);
    return v16;
  }

  v11 = v10;
  if (xmlTextWriterWriteBase64(v10, a1, 0, a2) == -1)
  {
    goto LABEL_11;
  }

  xmlTextWriterFlush(v11);
  v12 = xmlBufferContent(v9);
  result = xmlBufferLength(v9);
  if (!a3 || (a3 & 7) != 0)
  {
    goto LABEL_22;
  }

  v14 = result;
  v15 = *a3;
  if (*a3)
  {
    if (a4 && (a4 & 7) == 0)
    {
      if ((*a4 & 0x80000000) != 0)
      {
        sub_1000E22D8();
      }

      if (result >= *a4)
      {
        goto LABEL_11;
      }

LABEL_16:
      result = memcpy(v15, v12, v14);
      if (v14 < 0 != ~v15 >= v14)
      {
        *(v15 + v14) = 0;
        v16 = 1;
        goto LABEL_18;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(0x5516u);
LABEL_23:
    __break(0x5513u);
    goto LABEL_24;
  }

  if (!__OFADD__(result, 1))
  {
    v15 = malloc_type_malloc(result + 1, 0x100004077774924uLL);
    *a3 = v15;
    if (!v15)
    {
LABEL_11:
      v16 = 0;
LABEL_18:
      xmlFreeTextWriter(v11);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_24:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000DBCFC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if ((byte_10012C568 & 1) == 0)
    {
      v2 = 0xAAAAAAAAAAAAAAAALL;
      v1 = sub_1000DA750();
      sub_1000DBB90(v1, 1215, &qword_10012C560, &v2);
      byte_10012C568 = 1;
    }

    return qword_10012C560;
  }

  return result;
}

uint64_t sub_1000DBD74(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if ((byte_10012C578 & 1) == 0)
    {
      v2 = 0xAAAAAAAAAAAAAAAALL;
      v1 = sub_1000DA744();
      sub_1000DBB90(v1, 1013, &qword_10012C570, &v2);
      byte_10012C578 = 1;
    }

    return qword_10012C570;
  }

  return result;
}

uint64_t sub_1000DBDEC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = 0xAAAAAAAAAAAAAAAALL;
    if ((byte_10012C579 & 1) == 0)
    {
      if (IapAuthGetAppCert())
      {
        sub_1000DBB90(0, -1431655766, &qword_10012C580, &v1);
        byte_10012C579 = 1;
      }
    }

    return qword_10012C580;
  }

  return result;
}

xmlNode *sub_1000DBE7C(uint64_t a1, xmlNode *a2, const char *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  content[2] = v6;
  content[3] = v6;
  content[0] = v6;
  content[1] = v6;
  v22 = content;
  v21 = 64;
  memset(__b, 170, sizeof(__b));
  doc_txt_ptr[1] = 2048;
  doc_txt_ptr[2] = __b;
  if ((sub_1000DBB90(a3, 20, &v22, &v21) & 1) == 0)
  {
LABEL_13:
    __break(0x5518u);
    goto LABEL_14;
  }

  v7 = xmlNewDoc("1.0");
  v8 = xmlNewTextWriterTree(v7, 0, 0);
  xmlTextWriterStartElement(v8, "SignedInfo");
  xmlTextWriterWriteAttribute(v8, "xmlns", "http://www.w3.org/2000/09/xmldsig#");
  xmlTextWriterStartElement(v8, "CanonicalizationMethod");
  xmlTextWriterWriteAttribute(v8, "Algorithm", "http://www.w3.org/2001/10/xml-exc-c14n#");
  xmlTextWriterEndElement(v8);
  xmlTextWriterStartElement(v8, "SignatureMethod");
  xmlTextWriterWriteAttribute(v8, "Algorithm", "http://www.w3.org/2000/09/xmldsig#rsa-sha1");
  xmlTextWriterEndElement(v8);
  xmlTextWriterStartElement(v8, "Reference");
  xmlTextWriterWriteAttribute(v8, "URI", "");
  xmlTextWriterStartElement(v8, "Transforms");
  xmlTextWriterStartElement(v8, "Transform");
  xmlTextWriterWriteAttribute(v8, "Algorithm", "http://www.w3.org/2000/09/xmldsig#enveloped-signature");
  xmlTextWriterEndElement(v8);
  xmlTextWriterEndElement(v8);
  xmlTextWriterStartElement(v8, "DigestMethod");
  xmlTextWriterWriteAttribute(v8, "Algorithm", "http://www.w3.org/2000/09/xmldsig#sha1");
  xmlTextWriterEndElement(v8);
  xmlTextWriterWriteElement(v8, "DigestValue", content);
  xmlTextWriterEndElement(v8);
  xmlTextWriterEndElement(v8);
  xmlTextWriterEndDocument(v8);
  xmlFreeTextWriter(v8);
  RootElement = xmlDocGetRootElement(v7);
  v10 = xmlCopyNodeList(RootElement);
  xmlFreeDoc(v7);
  doc_txt_ptr[0] = 0;
  if (sub_1000DC250(v10, doc_txt_ptr) >= 1 && doc_txt_ptr[0])
  {
    if (sub_1000DBAC0(a1))
    {
      free(doc_txt_ptr[0]);
      doc_txt_ptr[0] = 0;
      xmlSetProp(a2, "xmlns", "http://www.w3.org/2000/09/xmldsig#");
      xmlAddChild(a2, v10);
      result = xmlNewNode(0, "SignatureValue");
      if (result)
      {
        v12 = result;
        xmlNodeAddContent(result, __b);
        xmlAddChild(a2, v12);
        v13 = xmlNewDoc("1.0");
        v14 = xmlNewTextWriterTree(v13, 0, 0);
        xmlTextWriterStartElement(v14, "KeyInfo");
        xmlTextWriterStartElement(v14, "X509Data");
        v15 = sub_1000DBDEC(a1);
        xmlTextWriterWriteElement(v14, "X509Certificate", v15);
        v16 = sub_1000DBD74(a1);
        xmlTextWriterWriteElement(v14, "X509Certificate", v16);
        v17 = sub_1000DBCFC(a1);
        xmlTextWriterWriteElement(v14, "X509Certificate", v17);
        xmlTextWriterEndElement(v14);
        xmlTextWriterEndElement(v14);
        xmlTextWriterEndDocument(v14);
        xmlFreeTextWriter(v14);
        v18 = xmlDocGetRootElement(v13);
        v19 = xmlCopyNodeList(v18);
        xmlFreeDoc(v13);
        xmlAddChild(a2, v19);
        return 1;
      }

      return result;
    }

    goto LABEL_13;
  }

  if (doc_txt_ptr[0])
  {
    free(doc_txt_ptr[0]);
  }

  return 0;
}

uint64_t sub_1000DC250(uint64_t result, xmlChar **doc_txt_ptr)
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

  result = *(result + 64);
  if (!result)
  {
    goto LABEL_6;
  }

  if ((result & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*(result + 24) == v2)
  {

    return xmlC14NDocDumpMemory(result, 0, 1, 0, 0, doc_txt_ptr);
  }

LABEL_6:
  xmlInitParser();
  v4 = xmlNewDoc("1.0");
  if (v4)
  {
    v5 = v4;
    v6 = xmlCopyNode(v2, 1);
    if (v6)
    {
      xmlDocSetRootElement(v5, v6);
      v7 = xmlC14NDocDumpMemory(v5, 0, 1, 0, 0, doc_txt_ptr);
      xmlFreeDoc(v5);
      xmlCleanupParser();
      return v7;
    }

    xmlFreeDoc(v5);
  }

  xmlCleanupParser();
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DC354(uint64_t result, xmlChar **a2, const char *a3)
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

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a3)
    {
      result = xmlNewNode(0, "Signature");
      if (result)
      {
        v6 = result;
        sub_1000DBE7C(v3, result, a3);
        doc_txt_ptr = 0;
        v7 = sub_1000DC250(v6, &doc_txt_ptr);
        xmlFreeNode(v6);
        result = 0xFFFFFFFFLL;
        if (v7 >= 1)
        {
          if (doc_txt_ptr)
          {
            if ((a2 & 7) == 0)
            {
              *a2 = doc_txt_ptr;
              return v7;
            }

LABEL_11:
            __break(0x5516u);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DC410(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    CC_SHA1_Init((result + 8));
    return 0;
  }

  return result;
}

uint64_t sub_1000DC440(uint64_t result, const void *a2, unint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (!HIDWORD(a3))
  {
    CC_SHA1_Update((result + 8), a2, a3);
    return 0;
  }

  __break(0x5507u);
  return result;
}

void sub_1000DC47C(uint64_t a1)
{
  if (a1)
  {
    if ((a1 & 7) == 0)
    {
      memset(md, 170, sizeof(md));
      sub_1000DB8A4();
    }
  }

  __break(0x5516u);
  __break(0x5513u);
  __break(0x5500u);
}

uint64_t sub_1000DCB5C(uint64_t a1)
{
  qword_10012C588 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000DD518(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119898;
    *(result + 8) = off_1001198C8;
    *(result + 232) = 0;
    *(result + 240) = 0;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 248) = 0;
    *(result + 272) = 0;
    CC_SHA1_Init((result + 36));
    CC_SHA1_Init((v1 + 132));
    return v1;
  }

  return result;
}

uint64_t sub_1000DD5A8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DD518(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DD5BC(void *result)
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

  *result = off_100119898;
  result[1] = off_1001198C8;
  result = result[33];
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
  if (*(v1 + 255) < 0)
  {
    operator delete(v1[29]);
  }

  return v1;
}

void *sub_1000DD670(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000DD5BC(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DD684(uint64_t a1)
{
  result = (a1 - 8);
  if ((result & 7) == 0)
  {
    return sub_1000DD5BC(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000DD698(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000DD5BC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

char *sub_1000DD6E8(char *result, const void *a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    return memcpy(result + 16, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DD704(uint64_t result, const std::string *a2)
{
  if (result && (result & 7) == 0)
  {
    std::string::operator=((result + 232), a2);
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DD7BC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 264);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DD7D4(uint64_t result, const void *a2, CC_LONG a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    CC_SHA1_Update((result + 36), a2, a3);
    return 0;
  }

  return result;
}

uint64_t sub_1000DD804(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  memset(v17, 170, 20);
  v15 = 0;
  memset(md, 170, 20);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v2;
  v14 = v2;
  v11 = v2;
  v12 = v2;
  v9 = v2;
  v10 = v2;
  v8 = off_100116900;
  sub_1000DC410(&v8);
  CC_SHA1_Final(md, (a1 + 132));
  CC_SHA1_Final(v17, (a1 + 36));
  if (*md != *(a1 + 16) || *&md[8] != *(a1 + 24) || *&md[16] != *(a1 + 32))
  {
    sub_1000DDEEC(0, 4, "%s:%d: XmlSigData::WriteSignature File verification failed skipping signature", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLSignature/xmlSigData.cpp", 95);
    return 1;
  }

  v6 = sub_1000DC354(&v8, &v15, v17);
  result = 0;
  if (v6 && v15)
  {
    v7 = *(a1 + 256);
    if (v7 && (v7 & 7) == 0)
    {
      (*(*v7 + 16))(v7);
      free(v15);
      return 0;
    }

LABEL_17:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000DD980(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    data = (*(*a2 + 16))(a2);
    return CC_SHA1_Update((v2 + 132), &data, 1u);
  }

  return result;
}

uint64_t sub_1000DD9FC(uint64_t result, const void *a2, CC_LONG a3)
{
  if (result && (result & 7) == 0)
  {
    return CC_SHA1_Update((result + 132), a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DDA14(uint64_t result, const void *a2, CC_LONG a3)
{
  if (((result - 8) & 7) == 0)
  {
    return CC_SHA1_Update((result + 124), a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DDA2C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 272) = 1;
  }

  return result;
}

unsigned __int8 *sub_1000DDA48(unsigned __int8 *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  v2 = result[272];
  if (v2 < 2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = 536883205;
      goto LABEL_8;
    }

    if (sub_1000DD804(result))
    {
      v3 = 1;
LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d: XmlSigData::CompleteSignedFile WriteSignature() failed or root tag not ready for signature", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/iSL/Source/XMLSignature/xmlSigData.cpp", 131);
      return v3;
    }

    v4 = 0xAAAAAAAAAAAAAAAALL;
    result = *(v1 + 33);
    if (result && (result & 7) == 0)
    {
      (*(*result + 24))(result, &v4);
      result = v4;
      if (!v4)
      {
        return 0;
      }

      if ((v4 & 7) == 0)
      {
        (*(*v4 + 16))();
        return 0;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(0x550Au);
  return result;
}

uint64_t sub_1000DDB54(uint64_t result, _OWORD *a2)
{
  if (result >= 8)
  {
    __break(0x550Au);
  }

  else if (result > 1)
  {
    return 22;
  }

  else
  {
    return sub_1000DDBBC(a2);
  }

  return result;
}

uint64_t sub_1000DDB78(uint64_t result, __darwin_time_t *a2)
{
  if (result >= 8)
  {
    __break(0x550Au);
  }

  else if (result > 1)
  {
    return 22;
  }

  else
  {
    return sub_1000DDBD0(a2);
  }

  return result;
}

int *sub_1000DDB9C(int *result, __darwin_time_t *a2)
{
  if (result >= 8)
  {
    __break(0x550Au);
  }

  else if (result)
  {
    return 22;
  }

  else
  {
    return sub_1000DDC38(a2);
  }

  return result;
}

uint64_t sub_1000DDBD0(__darwin_time_t *a1)
{
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v4.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  result = gettimeofday(&v4, 0);
  if (!result)
  {
    *a1 = v4.tv_sec;
    v3 = 1000 * v4.tv_usec;
    if (v3 == v3)
    {
      a1[1] = v3;
    }

    else
    {
      __break(0x550Cu);
    }
  }

  return result;
}

int *sub_1000DDC38(__darwin_time_t *a1)
{
  v1 = a1[1];
  v3.tv_sec = *a1;
  *(&v3.tv_usec + 1) = -1431655766;
  v3.tv_usec = v1 / 1000;
  if ((settimeofday(&v3, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  result = __error();
  if (result && (result & 3) == 0)
  {
    return *result;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DDCB4(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119940;
    if (a2 < 8)
    {
      *(result + 8) = a2;
      return result;
    }
  }

  __break(0x550Au);
  return result;
}

void *sub_1000DDCF4(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119940;
  }

  return result;
}

void *sub_1000DDD24(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100119940;
  }

  return result;
}

void *sub_1000DDD54(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100119940;
    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000DDD94(uint64_t result)
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

uint64_t sub_1000DDDB8(uint64_t result, _OWORD *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = *(result + 8);
    if (result < 8)
    {
      return sub_1000DDB54(result, a2);
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000DDDDC(uint64_t result, __darwin_time_t *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = *(result + 8);
    if (result < 8)
    {
      return sub_1000DDB78(result, a2);
    }
  }

  __break(0x550Au);
  return result;
}

int *sub_1000DDE00(int *result, __darwin_time_t *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = result[2];
    if (result < 8)
    {
      return sub_1000DDB9C(result, a2);
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t start()
{
  v0 = objc_alloc_init(NSAutoreleasePool);
  [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

  return 0;
}

BOOL sub_1000DDE68(_BOOL8 result)
{
  if (result < 0x10)
  {
    return (qword_10012C598 & (1 << result)) != 0;
  }

  __break(0x550Au);
  return result;
}

void sub_1000DDE90(unsigned int a1, NSString *format, ...)
{
  va_start(va, format);
  if (a1 >= 0x10)
  {
    __break(0x550Au);
  }

  else if ((qword_10012C598 & (1 << a1)) != 0)
  {
    NSLogv(format, va);
  }
}

void sub_1000DDEEC(unsigned int a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (a1 >= 0x10)
  {
    __break(0x550Au);
  }

  else if ((qword_10012C598 & (1 << a1)) != 0)
  {
    vsyslog(a2, a3, va);
  }
}

void sub_1000DDF4C()
{
  NSLog(@"Loading logging preferences... (IAPLogging)");
  qword_10012C598 = 0;
  v0 = &off_100119990;
  v1 = 14;
  do
  {
    if (CFPreferencesGetAppBooleanValue(*(v0 - 1), *v0, 0))
    {
      v2 = *(v0 - 4);
      if (v2 >= 0x10)
      {
        __break(0x550Au);
        return;
      }

      qword_10012C598 |= 1 << v2;
    }

    v0 += 3;
    --v1;
  }

  while (v1);
  if (MGGetBoolAnswer())
  {
    NSLog(@"Internal build, enable Verbose Logging");
    qword_10012C598 |= 1uLL;
    v3 = "Enabled";
  }

  else if (qword_10012C598)
  {
    v3 = "Enabled";
  }

  else
  {
    v3 = "Disabled";
  }

  NSLog(@"Verbose Logging %s", v3);
}

void sub_1000DE1DC(void *a1, int a2, int a3)
{
  if (!a2)
  {
    NSLog(@"ERROR - %s:%s - %d service is NULL", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "__accessoryPortManagerInterest", 40);
    return;
  }

  switch(a3)
  {
    case -469794794:
      v13 = sub_100026FA0([objc_msgSend(a1 "portNumber")]);
      if (!v13)
      {
        v13 = sub_100027034([objc_msgSend(a1 "portNumber")]);
        if (!v13)
        {
          NSLog(@"ERROR - kIOAccessoryManagerMessageUSBBatteryPackChange Still no podTransport for manager %d", [objc_msgSend(a1 "portNumber")]);
          return;
        }
      }

      v14 = v13;
      v6 = sub_100048620();
      if (!v6 || (v6 & 7) != 0)
      {
        goto LABEL_41;
      }

      sub_10004A430(v6, v14, 0);
      break;
    case -469794795:
      v8 = sub_100026FA0([objc_msgSend(a1 "portNumber")]);
      if (!v8)
      {
        v8 = sub_100027034([objc_msgSend(a1 "portNumber")]);
        if (!v8)
        {
          NSLog(@"ERROR - kIOAccessoryManagerMessageUSBCurrentLimitChange Still no podTransport for manager %d", [objc_msgSend(a1 "portNumber")]);
          return;
        }
      }

      v9 = v8;
      v10 = [a1 sendReserveCurrentNotification];
      v6 = sub_100048620();
      v12 = (v6 & 7) == 0 && v6 != 0;
      if (v10)
      {
        if (v12)
        {
          sub_10004A3E8(v6, v9, 0);
          v6 = a1;
          v7 = 0;

          goto _objc_msgSend$setSendReserveCurrentNotification_;
        }

LABEL_41:
        __break(0x5516u);
_objc_msgSend$setSendReserveCurrentNotification_:
        [v6 setSendReserveCurrentNotification:v7];
        return;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      sub_10004A3A0(v6, v9, 0);
      break;
    case -469794796:
      v4 = sub_100026FA0([objc_msgSend(a1 "portNumber")]);
      if (!v4)
      {
        v4 = sub_100027034([objc_msgSend(a1 "portNumber")]);
        if (!v4)
        {
          NSLog(@"ERROR - kIOAccessoryManagerMessageUSBConnectChange Still no podTransport for manager %d", [objc_msgSend(a1 "portNumber")]);
          return;
        }
      }

      v5 = v4;
      v6 = sub_10004B1AC();
      if (v6 && (v6 & 7) == 0)
      {

        sub_10004FBD4(v6, v5);
        return;
      }

      goto LABEL_41;
    default:
      return;
  }
}

void *sub_1000DF2DC(const char *a1, uint64_t a2)
{
  result = sub_1000DF328(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *sub_1000DF328(uint64_t a1)
{
  pthread_mutex_lock(&stru_10012B858);
  Mutable = qword_10012C5B0;
  if (!qword_10012C5B0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    qword_10012C5B0 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v4 = CPSystemRootDirectory();
          v10 = @"VisualVoicemail";
          v5 = @"VisualVoicemail.framework";
        }

        else
        {
          if (a1 != 6)
          {
            goto LABEL_24;
          }

          v4 = CPSystemRootDirectory();
          v10 = @"AccessoryAudio";
          v5 = @"AccessoryAudio.framework";
        }
      }

      else
      {
        v4 = CPSystemRootDirectory();
        if (a1 == 3)
        {
          v10 = @"FrontBoardServices";
          v5 = @"FrontBoardServices.framework";
        }

        else
        {
          v10 = @"CarKit";
          v5 = @"CarKit.framework";
        }
      }

LABEL_18:
      v6 = @"PrivateFrameworks";
LABEL_21:
      v7 = [NSString pathWithComponents:[NSArray arrayWithObjects:v4, @"System", @"Library", v6, v5, v10, 0]];
      if (v7)
      {
        v8 = dlopen([(NSString *)v7 UTF8String], 1);
        if (v8)
        {
          Value = v8;
          CFDictionarySetValue(qword_10012C5B0, a1, v8);
          goto LABEL_25;
        }
      }

LABEL_24:
      NSLog(@"Could not load source: %ld", a1);
      Value = 0;
      goto LABEL_25;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_24;
        }

        v4 = CPSystemRootDirectory();
        v10 = @"SpringBoardServices";
        v5 = @"SpringBoardServices.framework";
        goto LABEL_18;
      }

      v4 = CPSystemRootDirectory();
      v10 = @"MobileCoreServices";
      v5 = @"MobileCoreServices.framework";
    }

    else
    {
      v4 = CPSystemRootDirectory();
      v10 = @"UIKit";
      v5 = @"UIKit.framework";
    }

    v6 = @"Frameworks";
    goto LABEL_21;
  }

LABEL_25:
  pthread_mutex_unlock(&stru_10012B858);
  return Value;
}

Class sub_1000DF5B0(NSString *a1, uint64_t a2)
{
  result = sub_1000DF328(a2);
  if (result)
  {

    return NSClassFromString(a1);
  }

  return result;
}

id sub_1000DF860(uint64_t a1)
{
  result = [*(a1 + 40) length];
  v3 = *(a1 + 32) + 40;
  if ((v3 & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
    goto LABEL_7;
  }

  if (!__CFADD__(*v3, result))
  {
    *v3 += result;
    v4 = (*(a1 + 32) + 8);
    if ((v4 & 7) == 0)
    {
      result = [*v4 addObject:*(a1 + 40)];
      v5 = *(a1 + 32) + 40;
      if ((v5 & 7) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = *v5 >> 10 > 4uLL;
        return result;
      }
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(0x5500u);
  return result;
}

id sub_1000DFB04(uint64_t a1)
{
  result = [*(a1 + 32) _log:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1000DFC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_1000DFC9C(uint64_t a1)
{
  result = [*(a1 + 48) _log:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@<", *(a1 + 32), *(a1 + 40))}];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 24);
  if (v4 < 2)
  {
    *(v3 + 24) = v4 | result;
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = [v5 bytes];
      result = [*(a1 + 56) length];
      if (result)
      {
        v7 = result;
        while (v6)
        {
          result = [*(a1 + 48) _log:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%02x ", *v6)}];
          v8 = *(*(a1 + 64) + 8);
          v9 = *(v8 + 24);
          if (v9 > 1)
          {
            goto LABEL_11;
          }

          *(v8 + 24) = v9 | result;
          if (v6 == -1)
          {
            goto LABEL_13;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_12;
      }
    }

LABEL_9:
    result = [*(a1 + 48) _log:@">\n"];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 24);
    if (v11 <= 1)
    {
      *(v10 + 24) = v11 | result;
      return result;
    }
  }

LABEL_11:
  __break(0x550Au);
LABEL_12:
  __break(0x5516u);
LABEL_13:
  __break(0x5513u);
  return result;
}

void sub_1000DFF60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSFileManager defaultManager];
  v4 = *(a1 + 32);
  if (((v4 + 3) & 7) != 0)
  {
    goto LABEL_20;
  }

  if (v4[3])
  {
    if ([(NSFileManager *)v3 fileExistsAtPath:?])
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 32);
  }

  [v4 createFilePath];
  v5 = (*(a1 + 32) + 24);
  if ((v5 & 7) != 0)
  {
    goto LABEL_20;
  }

  v6 = fopen([*v5 fileSystemRepresentation], "a");
  if (v6)
  {
    fclose(v6);
  }

LABEL_8:
  v7 = *(a1 + 32) + 24;
  if ((v7 & 7) != 0)
  {
    goto LABEL_20;
  }

  v8 = [NSFileHandle fileHandleForWritingAtPath:*v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = (*(a1 + 32) + 8);
  if ((v9 & 7) != 0)
  {
    goto LABEL_20;
  }

  v10 = v8;
  v11 = *v9;
  v12 = [*v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [(NSFileHandle *)v10 seekToEndOfFile];
        [(NSFileHandle *)v10 writeData:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = (*(a1 + 32) + 8);
  if ((v17 & 7) != 0 || ([*v17 removeAllObjects], v18 = *(a1 + 32) + 40, (v18 & 7) != 0))
  {
LABEL_20:
    __break(0x5516u);
  }

  *v18 = 0;
  objc_autoreleasePoolPop(v2);
}

void sub_1000E0208(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 + 48) & 7) != 0)
  {
    goto LABEL_8;
  }

  if (*(v1 + 48))
  {
    return;
  }

  v3 = [NSTimer timerWithTimeInterval:"timerWithTimeInterval:target:selector:userInfo:repeats:" target:3.0 selector:? userInfo:? repeats:?];
  v4 = *(a1 + 32) + 48;
  if ((v4 & 7) != 0 || (*v4 = v3, Main = CFRunLoopGetMain(), v6 = (*(a1 + 32) + 48), (v6 & 7) != 0))
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    v7 = *v6;

    CFRunLoopAddTimer(Main, v7, kCFRunLoopCommonModes);
  }
}

void sub_1000E0348(uint64_t a1)
{
  v1 = *(a1 + 32) + 48;
  if ((v1 & 7) != 0)
  {
    goto LABEL_8;
  }

  if (!*v1)
  {
    return;
  }

  Main = CFRunLoopGetMain();
  v4 = (*(a1 + 32) + 48);
  if ((v4 & 7) != 0 || (CFRunLoopRemoveTimer(Main, *v4, kCFRunLoopCommonModes), v5 = (*(a1 + 32) + 48), (v5 & 7) != 0) || (*v5, v6 = *(a1 + 32) + 48, (v6 & 7) != 0))
  {
LABEL_8:
    __break(0x5516u);
    return;
  }

  *v6 = 0;
}

void sub_1000E0480(uint64_t a1)
{
  v1 = (*(a1 + 40) + 48);
  if ((v1 & 7) != 0)
  {
    goto LABEL_6;
  }

  v3 = *v1;
  if (*(a1 + 32) != v3)
  {
    return;
  }

  v4 = *(a1 + 40) + 48;
  if ((v4 & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
    return;
  }

  *v4 = 0;
}

void sub_1000E07FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E0830(void *result)
{
  v1 = (result[4] + 24);
  if ((v1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = result;
    result = *v1;
    *(*(v2[5] + 8) + 40) = result;
  }

  return result;
}

void sub_1000E096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E0984(void *result)
{
  v1 = (result[4] + 40);
  if ((v1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = result;
    result = *v1;
    *(*(v2[5] + 8) + 40) = result;
  }

  return result;
}

void sub_1000E0AD4(uint64_t a1)
{
  v1 = *(a1 + 32) + 32;
  if ((v1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_7:
    __break(0x5510u);
    return;
  }

  v2 = *v1;
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 40) = v2;
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      dispatch_retain(v3);
      return;
    }

    goto LABEL_7;
  }
}

void *sub_1000E0CDC(void *result)
{
  v1 = (result[4] + 24);
  if ((v1 & 7) != 0)
  {
    goto LABEL_8;
  }

  v2 = result;
  v3 = *v1;
  if (v3 == result[5])
  {
    return result;
  }

  result = [v2[5] copy];
  v4 = v2[4] + 24;
  if ((v4 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return result;
  }

  *v4 = result;
  v5 = v2[4];

  return [v5 _reloadEventHandler];
}

void *sub_1000E0DEC(void *result)
{
  v1 = (result[4] + 40);
  if ((v1 & 7) != 0)
  {
    goto LABEL_8;
  }

  v2 = result;
  v3 = *v1;
  if (v3 == result[5])
  {
    return result;
  }

  result = [v2[5] copy];
  v4 = v2[4] + 40;
  if ((v4 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return result;
  }

  *v4 = result;
  v5 = v2[4];

  return [v5 _reloadEventHandler];
}

void sub_1000E0EFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 + 32) & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  if (v3 == *(a1 + 40))
  {
    return;
  }

  if (v3)
  {
    dispatch_release(v3);
    v1 = *(a1 + 32);
  }

  v4 = (v1 + 32);
  if ((v4 & 7) != 0 || (*v4 = *(a1 + 40), v5 = (*(a1 + 32) + 32), (v5 & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    return;
  }

  v6 = *v5;
  if (*v5)
  {

    dispatch_retain(v6);
  }
}

void sub_1000E1138(void *a1, _xpc_connection_s *object)
{
  if (object == &_xpc_error_connection_invalid)
  {
    *(a1[4] + 48) = 0;
    goto LABEL_12;
  }

  if (object == &_xpc_error_connection_interrupted)
  {
LABEL_12:
    v8 = *(a1[4] + 49);
    if (v8 < 2)
    {
      if (v8)
      {
        v9 = a1[5];
        if (v9)
        {
          v10 = *(v9 + 16);

          v10();
        }
      }

      return;
    }

    __break(0x550Au);
LABEL_21:
    __break(0x5510u);
    goto LABEL_22;
  }

  if (!object)
  {
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E12C0;
    v12[3] = &unk_100119BA8;
    v11 = a1[4];
    v13 = *(a1 + 5);
    v12[4] = v11;
    v12[5] = object;
    xpc_connection_set_event_handler(object, v12);
    xpc_connection_resume(object);
    return;
  }

  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v4 = a1[6];
    if (v4)
    {
      v5 = a1[4] + 8;
      if ((v5 & 7) == 0)
      {
        v6 = *v5;
        v7 = *(v4 + 16);

        v7();
        return;
      }

LABEL_22:
      __break(0x5516u);
    }
  }
}

uint64_t sub_1000E12C0(uint64_t result, void *a2)
{
  if (a2 == &_xpc_error_connection_invalid)
  {
    *(*(result + 32) + 48) = 0;
  }

  else if (a2 != &_xpc_error_connection_interrupted)
  {
    v2 = *(result + 56);
    if (v2)
    {
      v3 = *(result + 40);
      return (*(v2 + 16))(*(result + 56));
    }

    return result;
  }

  v4 = *(*(result + 32) + 49);
  if (v4 >= 2)
  {
    __break(0x550Au);
  }

  else if (v4)
  {
    result = *(result + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000E1334()
{
  if (qword_10012C5C0 != -1)
  {
    sub_1000E2728();
  }

  v0 = dword_10012C5B8 + 1;
  if (dword_10012C5B8 != -1)
  {
    if ((v0 & 0xFFFFFF) == 0)
    {
      v0 = dword_10012C5B8 + 2;
    }

    dword_10012C5B8 = v0;
    v1 = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    if ([(NSString *)v1 caseInsensitiveCompare:@"com.apple.iapd"])
    {
      if ([(NSString *)v1 caseInsensitiveCompare:@"com.apple.iap2d"])
      {
        NSLog(@"%s:%s unknown daemon %@ creating connectionID", "/Library/Caches/com.apple.xbs/Sources/iapd/common/SharedFunctions.m", "Generate32BitConnectionID", v1);
        v2 = dword_10012C5B8 | 0xFF000000;
LABEL_12:
        dword_10012C5B8 = v2;
        return;
      }

      v3 = dword_10012C5B8;
      v4 = 0x2000000;
    }

    else
    {
      v3 = dword_10012C5B8;
      v4 = 0x1000000;
    }

    v2 = v4 & 0xFF000000 | v3 & 0xFFFFFF;
    goto LABEL_12;
  }

  __break(0x5500u);
}

id sub_1000E1434(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  v2 = sub_1000DF5B0(@"LSApplicationProxy", 1);
  v3 = sub_1000DF5B0(@"LSApplicationWorkspace", 1);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  result = [-[objc_class defaultWorkspace](v3 "defaultWorkspace")];
  if (result)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E1574;
    v6[3] = &unk_100119C18;
    v6[4] = [(objc_class *)v2 applicationProxyForIdentifier:v1];
    v6[5] = &v7;
    result = [-[objc_class defaultWorkspace](v3 "defaultWorkspace")];
  }

  v5 = *(v8 + 24);
  if (v5 >= 2)
  {
    __break(0x550Au);
  }

  else
  {
    _Block_object_dispose(&v7, 8);
    return (v5 & 1);
  }

  return result;
}

void sub_1000E1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E1574(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqual:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 >= 2)
  {
    __break(0x550Au);
    goto LABEL_7;
  }

  if ((v6 & 1) == 0)
  {
    return result;
  }

  if (!a3)
  {
LABEL_7:
    __break(0x5516u);
    return result;
  }

  *a3 = 1;
  return result;
}

BOOL sub_1000E15DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithCString:a1 encoding:4];
  v4 = 0;
  do
  {
    v5 = [(NSString *)v3 caseInsensitiveCompare:*(&off_100119C38 + v4)];
    if (v4 > 0xF)
    {
      break;
    }

    ++v4;
  }

  while (v5);
  v6 = v5 == NSOrderedSame;
  objc_autoreleasePoolPop(v2);
  return v6;
}

void sub_1000E1774(id a1)
{
  qword_10012C5C8 = asl_open(0, "IAP", 2u);
  if (qword_10012C5C8)
  {
    qword_10012C5D0 = asl_new(0);
  }

  else
  {
    syslog(3, "Couldn't open Event Log file");
  }
}

void sub_1000E19C8(const char *a1, uint64_t a2, char a3)
{
  if (!_AXSVoiceOverTouchEnabled())
  {
    NSLog(@"%s:%s-%d ERROR - trying to talk to VOT without enabling it first!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 98);
    return;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_string(v7, "requestType", "VoiceOver");
    if (a1)
    {
      xpc_dictionary_set_string(v8, "VoiceOver", a1);
      v9 = [IAPAppEAClientXPC UTF8String];
      if (v9)
      {
        mach_service = xpc_connection_create_mach_service(v9, 0, 0);
        if (!mach_service)
        {
          NSLog(@"%s:%s-%d ERROR - No connection made!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 90);
LABEL_28:
          xpc_release(v8);
          objc_autoreleasePoolPop(v6);
          return;
        }

        v11 = mach_service;
        xpc_connection_set_event_handler(mach_service, &stru_100119CF8);
        xpc_connection_resume(v11);
        v19 = 0;
        v12 = [NSPropertyListSerialization dataWithPropertyList:a2 format:200 options:0 error:&v19];
        if (!v12)
        {
          if (v19)
          {
            v15 = [v19 description];
          }

          else
          {
            v15 = &stru_100119FF8;
          }

          NSLog(@"%s:%s-%d ERROR - bogus userInfo with the following error: %@ ", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 83, v15);
LABEL_27:
          xpc_release(v11);
          goto LABEL_28;
        }

        v13 = v12;
        v14 = [(NSData *)v12 bytes];
        if (v14)
        {
          xpc_dictionary_set_data(v8, "userInfo", v14, [(NSData *)v13 length]);
          if (a3)
          {
            xpc_connection_send_message(v11, v8);
          }

          else
          {
            v16 = IAPAppSendXPCMessageWithTimeout();
            if (v16)
            {
              v17 = v16;
              type = xpc_get_type(v16);
              if (type != &_xpc_type_dictionary)
              {
                if (v17 == &_xpc_error_connection_invalid && type == &_xpc_type_error)
                {
                  NSLog(@"%s:%s-%d ERROR - received an XPC_ERROR_CONNECTION_INVALID error.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 58);
                }

                else if (v17 == &_xpc_error_connection_interrupted && type == &_xpc_type_error)
                {
                  NSLog(@"%s:%s-%d ERROR - received an XPC_ERROR_CONNECTION_INTERRUPTED error.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 62);
                }

                else
                {
                  NSLog(@"%s:%s-%d ERROR - received an unknown error.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 66);
                }
              }

              xpc_release(v17);
            }

            else
            {
              NSLog(@"%s:%s-%d ERROR - NULL reply dictionary.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPVoiceOver.m", "VoiceOver", 72);
            }
          }

          goto LABEL_27;
        }
      }
    }
  }

  __break(0x5510u);
}

void sub_1000E1D34()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000E22D8()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000E22F0()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000E230C()
{
  if (__cxa_guard_acquire(&qword_10012BC40))
  {
    if (qword_10012BC50 != -1)
    {
      dispatch_once(&qword_10012BC50, &stru_100115B50);
    }

    qword_10012BC38 = qword_10012BC48;

    __cxa_guard_release(&qword_10012BC40);
  }
}

void sub_1000E23C4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000E2420()
{
  if (__cxa_guard_acquire(&qword_10012BE48))
  {
    qword_10012BE60 = 0;
    qword_10012BE58 = 0;
    qword_10012BE50 = &qword_10012BE58;
    __cxa_atexit(sub_100089BEC, &qword_10012BE50, &_mh_execute_header);

    __cxa_guard_release(&qword_10012BE48);
  }
}

void sub_1000E24E8(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_10012BED0))
  {
    sub_1000AED98(&qword_10012BED8, a1);
    __cxa_atexit(sub_1000AEEFC, &qword_10012BED8, &_mh_execute_header);

    __cxa_guard_release(&qword_10012BED0);
  }
}

void sub_1000E2568()
{
  if (__cxa_guard_acquire(&qword_10012C3D0))
  {
    qword_10012C3E0 = 0;
    unk_10012C3E8 = 0;
    qword_10012C3D8 = 0;
    __cxa_atexit(&std::string::~string, &qword_10012C3D8, &_mh_execute_header);

    __cxa_guard_release(&qword_10012C3D0);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}