uint64_t CommandCounter.withNext<A>(_:)(uint64_t (*a1)(void))
{
  v3 = *v1;
  *v1 = (*v1 + 1) & 0xFFFFFF;
  result = a1();
  if (v2)
  {
    *v1 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001AFA54(char a1, uint64_t a2)
{

  v5 = sub_1001FB7F8(v4, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = sub_1001EC78C(*(v5 + 16), 0);
  v9 = sub_1001390AC(&v32, v8 + 8, v7, v6);

  sub_100020D08();
  if (v9 == v7)
  {
LABEL_5:
    v32 = v8;
    sub_1001B2DE0(&v32);

    v10 = v32;
    v11 = *(v32 + 2);
    if (v11)
    {
      v32 = _swiftEmptyArrayStorage;
      sub_1001D602C(0, v11, 0);
      v12 = v32;
      v13 = *(v32 + 2);
      v14 = 8 * v13;
      v15 = 32;
      do
      {
        v16 = *&v10[v15];
        v32 = v12;
        v17 = *(v12 + 3);
        v18 = v13 + 1;
        if (v13 >= v17 >> 1)
        {
          sub_1001D602C((v17 > 1), v13 + 1, 1);
          v12 = v32;
        }

        *(v12 + 2) = v18;
        v19 = &v12[v14];
        v19[32] = a1;
        *(v19 + 9) = v16;
        v14 += 8;
        v15 += 4;
        v13 = v18;
        --v11;
      }

      while (v11);

      v20 = *(v12 + 2);
      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
      v20 = _swiftEmptyArrayStorage[2];
      if (v20)
      {
LABEL_11:
        v32 = _swiftEmptyArrayStorage;
        sub_100091A08(0, v20, 0);
        v21 = v32;
        v22 = (v12 + 36);
        do
        {
          v23 = Tag.debugDescription.getter(*(v22 - 4) | (*v22 << 32));
          v32 = v21;
          v26 = *(v21 + 2);
          v25 = *(v21 + 3);
          if (v26 >= v25 >> 1)
          {
            v28 = v23;
            v29 = v24;
            sub_100091A08((v25 > 1), v26 + 1, 1);
            v24 = v29;
            v23 = v28;
            v21 = v32;
          }

          v22 += 2;
          *(v21 + 2) = v26 + 1;
          v27 = &v21[16 * v26];
          *(v27 + 4) = v23;
          *(v27 + 5) = v24;
          --v20;
        }

        while (v20);

        goto LABEL_18;
      }
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_18:
    v32 = v21;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v30 = sub_1004A5614();

    return v30;
  }

  __break(1u);

  __break(1u);
  return result;
}

void CommandID.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  sub_1004A6EE4(a2);
  sub_1004A6EE4(v2);
}

Swift::Int CommandID.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_1001AFE00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

void sub_1001AFE5C()
{
  v1 = v0[1];
  sub_1004A6EE4(*v0);
  sub_1004A6EE4(v1);
}

Swift::Int sub_1001AFE98()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

BOOL sub_1001AFF4C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_1001AFF7C(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_1001AFFAC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_1001AFFDC(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

uint64_t ContentDisposition.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(int a1, Swift::Int a2, Swift::Int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (sub_100083308(a2, a5))
  {
    v8 = sub_100083308(a3, a6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1001B00A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 32 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = *(v2 + 40);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v34 = v16;
    if (v17 == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EF4(v16 >> 14);
    }

    v19 = sub_1004A6F14();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v22 = ~v20;
    v23 = *(a2 + 48);
    while (1)
    {
      v25 = v23 + 32 * v21;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *v25 == v15 && *(v25 + 8) == v14;
      if (!v28 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_22;
      }

      if ((v27 & 1) == 0)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_30;
      }

LABEL_22:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (((v26 ^ v34) & 0xFFFFFFFFFFFFC000) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = v17;
    }

    if (v24)
    {
      goto LABEL_22;
    }

LABEL_30:

    v4 = v30;
    result = v31;
    v7 = v32;
    v2 = a2;
    v8 = v29;
  }

  while (v32);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B02D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v17 = sub_1004A6F14();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v23 = 0xE800000000000000;
        v22 = 0x6574616E6F646572;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6369646F69726570;
        }

        else
        {
          v22 = 1752397168;
        }

        if (v21 == 3)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v24 = 0x6369646F69726570;
      if (v15 != 3)
      {
        v24 = 1752397168;
      }

      v25 = 0xE400000000000000;
      if (v15 == 3)
      {
        v25 = 0xE800000000000000;
      }

      if (v15 == 2)
      {
        v26 = 0x6574616E6F646572;
      }

      else
      {
        v26 = v24;
      }

      if (v15 == 2)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = v25;
      }

      if (v22 == v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      v28 = sub_1004A6D34();

      if (v28)
      {
        goto LABEL_54;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19))
    {
      v22 = 0x6C69662D6B636162;
    }

    else
    {
      v22 = 0x72657865646E69;
    }

    if (*(*(a2 + 48) + v19))
    {
      v23 = 0xE90000000000006CLL;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v27 = 0xE700000000000000;
      if (v22 == 0x72657865646E69)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v27 = 0xE90000000000006CLL;
    if (v22 != 0x6C69662D6B636162)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v23 != v27)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B067C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v28 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v29 = v7;
  v30 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a2 + 40);
    sub_1004A6E94();
    if (v13)
    {
      sub_1004A6EB4(0);
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

    v16 = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if (!v20[1])
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      v21 = *v20;
      v22 = sub_1004A5834();
      v24 = v23;
      if (v22 == sub_1004A5834() && v24 == v25)
      {
        break;
      }

      v27 = sub_1004A6D34();

      if (v27)
      {
        goto LABEL_29;
      }

LABEL_19:
      v18 = (v18 + 1) & v19;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_29:

LABEL_30:
    v7 = v29;
    result = v30;
    v6 = v31;
  }

  while (v31);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v28 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B08EC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v226 = a2 + 56;
    v222 = a1 + 56;
    v223 = a1;
    v221 = v8;
    if (v7)
    {
LABEL_7:
      v9 = __clz(__rbit64(v7));
      v224 = (v7 - 1) & v7;
      goto LABEL_13;
    }

LABEL_8:
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v224 = (v11 - 1) & v11;
LABEL_13:
    v12 = (*(a1 + 48) + 80 * (v9 | (v3 << 6)));
    v240 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    v243 = v12[3];
    v244 = v13;
    v241 = v15;
    v242 = v14;
    v16 = *(v2 + 40);
    sub_1004A6E94();
    if ((*(&v243 + 1) & 0x1000000000000000) != 0)
    {
      v245 = v240;
      v246 = v241;
      v247 = v242;
      v248 = v243;
      v249 = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v250 = v244;
      sub_1004A6EB4(1uLL);
      v237 = v242;
      *&v238 = v243;
      v239 = v244;
      v235 = v240;
      v236 = v241;
      *(&v238 + 1) = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v235, &v229);
      sub_1001EEF30();
    }

    else
    {
      sub_1004A6EB4(0);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    v17 = sub_1004A6F14();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v226;
    if ((*(v226 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v21 = ~v18;
      v225 = ~v18;
      do
      {
        v22 = (*(v2 + 48) + 80 * v19);
        v235 = *v22;
        v24 = v22[3];
        v23 = v22[4];
        v25 = v22[2];
        v236 = v22[1];
        v237 = v25;
        v238 = v24;
        v239 = v23;
        v26 = *(&v236 + 1);
        v27 = v236;
        v28 = *(&v24 + 1);
        if ((*(&v24 + 1) & 0x1000000000000000) != 0)
        {
          v30 = *(&v243 + 1);
          if ((*(&v243 + 1) & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v31 = *(&v239 + 1);
          v33 = *(&v241 + 1);
          v32 = v241;
          v34 = *(&v244 + 1);
          v35 = (*(&v239 + 1) >> 59) & 6 | ((*(&v238 + 1) & 0x2000000000000000) != 0);
          if (v35 <= 2)
          {
            if (v35)
            {
              if (v35 == 1)
              {
                if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 1)
                {
                  v214 = *(&v237 + 1);
                  v215 = v237;
                  v208 = v239;
                  v209 = v238;
                  v213 = v242;
                  v36 = *(&v235 + 1) >> 62;
                  if (*(&v235 + 1) >> 62 == 3)
                  {
                    v37 = 0;
                    if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                    {
                      v37 = 0;
                      if (v240 == __PAIR128__(0xC000000000000000, 0))
                      {
                        goto LABEL_119;
                      }
                    }
                  }

                  else if (v36 > 1)
                  {
                    if (v36 == 2)
                    {
                      v50 = *(v235 + 16);
                      v49 = *(v235 + 24);
                      v51 = __OFSUB__(v49, v50);
                      v37 = v49 - v50;
                      if (v51)
                      {
                        goto LABEL_421;
                      }
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  else if (v36)
                  {
                    LODWORD(v37) = DWORD1(v235) - v235;
                    if (__OFSUB__(DWORD1(v235), v235))
                    {
                      goto LABEL_418;
                    }

                    v37 = v37;
                  }

                  else
                  {
                    v37 = BYTE14(v235);
                  }

                  v58 = *(&v240 + 1) >> 62;
                  if ((*(&v240 + 1) >> 62) > 1)
                  {
                    if (v58 == 2)
                    {
                      v60 = *(v240 + 16);
                      v59 = *(v240 + 24);
                      v51 = __OFSUB__(v59, v60);
                      v61 = v59 - v60;
                      if (v51)
                      {
                        goto LABEL_412;
                      }

                      if (v37 == v61)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (!v37)
                    {
                      goto LABEL_119;
                    }
                  }

                  else if (v58)
                  {
                    if (__OFSUB__(DWORD1(v240), v240))
                    {
                      goto LABEL_411;
                    }

                    if (v37 == DWORD1(v240) - v240)
                    {
LABEL_114:
                      if (v37 < 1)
                      {
LABEL_119:
                        v204 = v244;
                        v205 = v243;
                        v232 = v238;
                        v234 = v239;
                        v230 = v236;
                        v231 = v237;
                        v229 = v235;
                        v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                        v217 = *(&v241 + 1);
                        v63 = v241;
                        sub_1001915E8(&v229, v228);
                        v64 = v217;
                        goto LABEL_120;
                      }

                      v216 = *(&v241 + 1);
                      v210 = v241;
                      v206 = v240;
                      v204 = v244;
                      v205 = v243;
                      if (v36 > 1)
                      {
                        if (v36 == 2)
                        {
                          v197 = *(v235 + 24);
                          v199 = *(v235 + 16);
                          v201 = *(&v235 + 1);
                          v95 = v240;
                          sub_100014CEC(v240, *(&v240 + 1));
                          sub_100014CEC(v95, *(&v206 + 1));
                          sub_10019782C(&v235, &v229);
                          sub_100014CEC(v95, *(&v206 + 1));
                          v202 = sub_10003A0DC(v199, v197, v201 & 0x3FFFFFFFFFFFFFFFLL, v206, *(&v206 + 1));
                          sub_100014D40(v206, *(&v206 + 1));
                          v97 = *(&v206 + 1);
                          v96 = v206;
                          goto LABEL_255;
                        }

                        *&v228[6] = 0;
                        *v228 = 0;
                        v62 = v240;
                        sub_100014CEC(v240, *(&v240 + 1));
                        sub_10019782C(&v235, &v229);
                        sub_100014CEC(v62, *(&v206 + 1));
LABEL_258:
                        sub_100066884(v228, v62, *(&v206 + 1), &v229);
                        sub_100014D40(v206, *(&v206 + 1));
                        sub_100014D40(v206, *(&v206 + 1));
                        v64 = v216;
                        v63 = v210;
                        if (v229)
                        {
                          goto LABEL_120;
                        }

LABEL_398:
                        sub_100193BF0(&v235);
                        v2 = a2;
                      }

                      else
                      {
                        if (!v36)
                        {
                          *v228 = v235;
                          *&v228[8] = WORD4(v235);
                          *&v228[10] = *(&v235 + 10);
                          v62 = v240;
                          sub_100014CEC(v240, *(&v240 + 1));
                          sub_10019782C(&v235, &v229);
                          sub_100014CEC(v62, *(&v206 + 1));
                          goto LABEL_258;
                        }

                        v200 = v235 >> 32;
                        v203 = *(&v235 + 1);
                        v198 = v235;
                        if (v235 >> 32 < v235)
                        {
                          goto LABEL_437;
                        }

                        v141 = v240;
                        sub_100014CEC(v240, *(&v240 + 1));
                        sub_100014CEC(v141, *(&v206 + 1));
                        sub_10019782C(&v235, &v229);
                        sub_100014CEC(v206, *(&v206 + 1));
                        v202 = sub_10003A0DC(v198, v200, v203 & 0x3FFFFFFFFFFFFFFFLL, v206, *(&v206 + 1));
                        v97 = *(&v206 + 1);
                        sub_100014D40(v206, *(&v206 + 1));
                        v96 = v206;
LABEL_255:
                        sub_100014D40(v96, v97);
                        sub_100014D40(v206, v97);
                        v64 = v216;
                        v63 = v210;
                        if ((v202 & 1) == 0)
                        {
                          goto LABEL_398;
                        }

LABEL_120:
                        v65 = v26 >> 62;
                        if (v26 >> 62 == 3)
                        {
                          v66 = 0;
                          if (v27)
                          {
                            goto LABEL_228;
                          }

                          if (v26 != 0xC000000000000000)
                          {
                            goto LABEL_228;
                          }

                          if (v64 >> 62 != 3)
                          {
                            goto LABEL_228;
                          }

                          v66 = 0;
                          if (v63 || v64 != 0xC000000000000000)
                          {
                            goto LABEL_228;
                          }
                        }

                        else
                        {
                          if (v65 == 2)
                          {
                            v131 = *(v27 + 16);
                            v130 = *(v27 + 24);
                            v51 = __OFSUB__(v130, v131);
                            v66 = v130 - v131;
                            if (v51)
                            {
                              goto LABEL_432;
                            }
                          }

                          else if (v65 == 1)
                          {
                            LODWORD(v66) = HIDWORD(v27) - v27;
                            if (__OFSUB__(HIDWORD(v27), v27))
                            {
                              goto LABEL_433;
                            }

                            v66 = v66;
                          }

                          else
                          {
                            v66 = BYTE6(v26);
                          }

LABEL_228:
                          v134 = v64 >> 62;
                          if ((v64 >> 62) > 1)
                          {
                            if (v134 != 2)
                            {
                              if (v66)
                              {
                                goto LABEL_398;
                              }

                              goto LABEL_242;
                            }

                            v137 = *(v63 + 16);
                            v136 = *(v63 + 24);
                            v51 = __OFSUB__(v136, v137);
                            v135 = v136 - v137;
                            if (v51)
                            {
                              goto LABEL_426;
                            }
                          }

                          else if (v134)
                          {
                            LODWORD(v135) = HIDWORD(v63) - v63;
                            if (__OFSUB__(HIDWORD(v63), v63))
                            {
                              goto LABEL_425;
                            }

                            v135 = v135;
                          }

                          else
                          {
                            v135 = BYTE6(v64);
                          }

                          if (v66 != v135)
                          {
                            goto LABEL_398;
                          }

                          if (v66 >= 1)
                          {
                            v220 = v64;
                            sub_100014CEC(v63, v64);
                            if ((sub_100039F4C(v27, v26, v63, v220) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

LABEL_242:
                        v138 = v214 >> 62;
                        v139 = *(&v213 + 1) >> 62;
                        if (v214 >> 62 == 3)
                        {
                          v140 = 0;
                          if (!v215 && v214 == 0xC000000000000000 && *(&v213 + 1) >> 62 == 3)
                          {
                            v140 = 0;
                            if (v213 == __PAIR128__(0xC000000000000000, 0))
                            {
                              goto LABEL_317;
                            }
                          }
                        }

                        else if (v138 == 2)
                        {
                          v162 = *(v215 + 16);
                          v161 = *(v215 + 24);
                          v51 = __OFSUB__(v161, v162);
                          v140 = v161 - v162;
                          if (v51)
                          {
                            goto LABEL_444;
                          }
                        }

                        else if (v138 == 1)
                        {
                          LODWORD(v140) = HIDWORD(v215) - v215;
                          if (__OFSUB__(HIDWORD(v215), v215))
                          {
                            goto LABEL_443;
                          }

                          v140 = v140;
                        }

                        else
                        {
                          v140 = BYTE6(v214);
                        }

                        if (v139 <= 1)
                        {
                          if (v139)
                          {
                            LODWORD(v163) = DWORD1(v213) - v213;
                            if (__OFSUB__(DWORD1(v213), v213))
                            {
                              goto LABEL_439;
                            }

                            v163 = v163;
                          }

                          else
                          {
                            v163 = BYTE14(v213);
                          }

                          goto LABEL_312;
                        }

                        if (v139 == 2)
                        {
                          v165 = *(v213 + 16);
                          v164 = *(v213 + 24);
                          v51 = __OFSUB__(v164, v165);
                          v163 = v164 - v165;
                          if (v51)
                          {
                            goto LABEL_438;
                          }

LABEL_312:
                          if (v140 != v163)
                          {
                            goto LABEL_398;
                          }

                          if (v140 >= 1)
                          {
                            sub_100014CEC(v213, *(&v213 + 1));
                            if ((sub_100039F4C(v215, v214, v213, *(&v213 + 1)) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

                        else if (v140)
                        {
                          goto LABEL_398;
                        }

LABEL_317:
                        v166 = v28 & 0xCFFFFFFFFFFFFFFFLL;
                        v167 = v30 & 0xCFFFFFFFFFFFFFFFLL;
                        v168 = v28 >> 62;
                        v169 = v30 >> 62;
                        if (v28 >> 62 == 3)
                        {
                          v170 = 0;
                          v171 = v209;
                          if (v209)
                          {
                            goto LABEL_355;
                          }

                          if (v166 != 0xC000000000000000)
                          {
                            goto LABEL_355;
                          }

                          if (v30 >> 62 != 3)
                          {
                            goto LABEL_355;
                          }

                          v170 = 0;
                          if (v205 || v167 != 0xC000000000000000)
                          {
                            goto LABEL_355;
                          }
                        }

                        else
                        {
                          if (v168 == 2)
                          {
                            v171 = v209;
                            v179 = *(v209 + 16);
                            v178 = *(v209 + 24);
                            v51 = __OFSUB__(v178, v179);
                            v170 = v178 - v179;
                            if (v51)
                            {
                              goto LABEL_450;
                            }
                          }

                          else if (v168 == 1)
                          {
                            v171 = v209;
                            LODWORD(v170) = HIDWORD(v209) - v209;
                            if (__OFSUB__(HIDWORD(v209), v209))
                            {
                              __break(1u);
LABEL_450:
                              __break(1u);
LABEL_451:
                              __break(1u);
LABEL_452:
                              __break(1u);
LABEL_453:
                              __break(1u);
LABEL_454:
                              __break(1u);
                              sub_100193BF0(&v240);
                              sub_100193BF0(&v240);
                              v232 = v243;
                              v234 = v244;
                              v230 = v241;
                              v231 = v242;
                              v229 = v240;
                              v233 = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                              sub_1001B4100(&v229);

                              __break(1u);
                              return result;
                            }

                            v170 = v170;
                          }

                          else
                          {
                            v170 = BYTE6(v28);
                            v171 = v209;
                          }

LABEL_355:
                          if (v169 > 1)
                          {
                            if (v169 != 2)
                            {
                              if (v170)
                              {
                                goto LABEL_398;
                              }

                              goto LABEL_369;
                            }

                            v182 = *(v205 + 16);
                            v181 = *(v205 + 24);
                            v51 = __OFSUB__(v181, v182);
                            v180 = v181 - v182;
                            if (v51)
                            {
                              goto LABEL_447;
                            }
                          }

                          else if (v169)
                          {
                            LODWORD(v180) = HIDWORD(v205) - v205;
                            if (__OFSUB__(HIDWORD(v205), v205))
                            {
                              goto LABEL_448;
                            }

                            v180 = v180;
                          }

                          else
                          {
                            v180 = BYTE6(v30);
                          }

                          if (v170 != v180)
                          {
                            goto LABEL_398;
                          }

                          if (v170 >= 1)
                          {
                            sub_100014CEC(v205, v30 & 0xCFFFFFFFFFFFFFFFLL);
                            if ((sub_100039F4C(v171, v166, v205, v167) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

LABEL_369:
                        v183 = v31 & 0xCFFFFFFFFFFFFFFFLL;
                        v184 = v34 & 0xCFFFFFFFFFFFFFFFLL;
                        v185 = v31 >> 62;
                        v186 = v34 >> 62;
                        if (v31 >> 62 == 3)
                        {
                          v187 = 0;
                          v188 = v208;
                          if (!v208 && v183 == 0xC000000000000000 && v34 >> 62 == 3)
                          {
                            v187 = 0;
                            if (!v204 && v184 == 0xC000000000000000)
                            {
LABEL_404:
                              sub_100193BF0(&v240);
                              sub_100193BF0(&v235);
                              a1 = v223;
                              v2 = a2;
                              goto LABEL_401;
                            }
                          }
                        }

                        else if (v185 == 2)
                        {
                          v188 = v208;
                          v190 = *(v208 + 16);
                          v189 = *(v208 + 24);
                          v51 = __OFSUB__(v189, v190);
                          v187 = v189 - v190;
                          if (v51)
                          {
                            goto LABEL_454;
                          }
                        }

                        else if (v185 == 1)
                        {
                          v188 = v208;
                          LODWORD(v187) = HIDWORD(v208) - v208;
                          if (__OFSUB__(HIDWORD(v208), v208))
                          {
                            goto LABEL_453;
                          }

                          v187 = v187;
                        }

                        else
                        {
                          v187 = BYTE6(v31);
                          v188 = v208;
                        }

                        if (v186 > 1)
                        {
                          if (v186 != 2)
                          {
                            if (!v187)
                            {
                              goto LABEL_404;
                            }

                            goto LABEL_398;
                          }

                          v193 = *(v204 + 16);
                          v192 = *(v204 + 24);
                          v51 = __OFSUB__(v192, v193);
                          v191 = v192 - v193;
                          if (v51)
                          {
                            goto LABEL_451;
                          }
                        }

                        else if (v186)
                        {
                          LODWORD(v191) = HIDWORD(v204) - v204;
                          if (__OFSUB__(HIDWORD(v204), v204))
                          {
                            goto LABEL_452;
                          }

                          v191 = v191;
                        }

                        else
                        {
                          v191 = BYTE6(v34);
                        }

                        if (v187 != v191)
                        {
                          goto LABEL_398;
                        }

                        if (v187 < 1)
                        {
                          goto LABEL_404;
                        }

                        sub_100014CEC(v204, v34 & 0xCFFFFFFFFFFFFFFFLL);
                        v194 = sub_100039F4C(v188, v183, v204, v184);
                        sub_100193BF0(&v235);
                        v2 = a2;
                        if (v194)
                        {
LABEL_399:
                          v195 = &v240;
                          goto LABEL_400;
                        }
                      }

LABEL_27:
                      v20 = v226;
LABEL_47:
                      v21 = v225;
                      goto LABEL_20;
                    }
                  }

                  else if (v37 == BYTE14(v240))
                  {
                    goto LABEL_114;
                  }
                }

LABEL_19:
                v2 = a2;
                goto LABEL_20;
              }

              if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) != 2)
              {
                goto LABEL_19;
              }

              v40 = *(&v235 + 1) >> 62;
              v2 = a2;
              if (*(&v235 + 1) >> 62 == 3)
              {
                v41 = 0;
                if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                {
                  v41 = 0;
                  if (v240 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_399;
                  }
                }
              }

              else if (v40 > 1)
              {
                if (v40 == 2)
                {
                  v53 = *(v235 + 16);
                  v52 = *(v235 + 24);
                  v51 = __OFSUB__(v52, v53);
                  v41 = v52 - v53;
                  if (v51)
                  {
                    goto LABEL_422;
                  }
                }

                else
                {
                  v41 = 0;
                }
              }

              else if (v40)
              {
                LODWORD(v41) = DWORD1(v235) - v235;
                if (__OFSUB__(DWORD1(v235), v235))
                {
                  goto LABEL_419;
                }

                v41 = v41;
              }

              else
              {
                v41 = BYTE14(v235);
              }

              v67 = *(&v240 + 1) >> 62;
              if ((*(&v240 + 1) >> 62) > 1)
              {
                if (v67 != 2)
                {
                  if (!v41)
                  {
                    goto LABEL_399;
                  }

                  goto LABEL_20;
                }

                v70 = *(v240 + 16);
                v69 = *(v240 + 24);
                v51 = __OFSUB__(v69, v70);
                v68 = v69 - v70;
                if (v51)
                {
                  goto LABEL_410;
                }
              }

              else if (v67)
              {
                LODWORD(v68) = DWORD1(v240) - v240;
                if (__OFSUB__(DWORD1(v240), v240))
                {
                  goto LABEL_409;
                }

                v68 = v68;
              }

              else
              {
                v68 = BYTE14(v240);
              }

              if (v41 != v68)
              {
                goto LABEL_20;
              }

              if (v41 < 1)
              {
                goto LABEL_399;
              }

              if (v40 <= 1)
              {
                if (!v40)
                {
                  *v228 = v235;
                  *&v228[8] = WORD4(v235);
                  *&v228[10] = *(&v235 + 10);
                  v71 = *(&v240 + 1);
                  v72 = v240;
                  sub_10019782C(&v240, &v229);
                  sub_10019782C(&v240, &v229);
                  sub_10019782C(&v235, &v229);
                  sub_100066884(v228, v72, v71, &v229);
                  sub_100193BF0(&v235);
                  sub_100193BF0(&v240);
                  sub_100193BF0(&v240);
                  v73 = v229;
                  goto LABEL_284;
                }

                v117 = v235;
                v118 = v235 >> 32;
                if (v235 >> 32 < v235)
                {
                  goto LABEL_429;
                }

                v119 = v240;
                v120 = *(&v235 + 1);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v235, &v229);
                v78 = v120 & 0x3FFFFFFFFFFFFFFFLL;
                v79 = v117;
                v80 = v118;
                v82 = *(&v119 + 1);
                v81 = v119;
LABEL_212:
                v121 = sub_10003A0DC(v79, v80, v78, v81, v82);
                sub_100193BF0(&v240);
                sub_100193BF0(&v235);
                sub_100193BF0(&v240);
                sub_100193BF0(&v240);
LABEL_330:
                v21 = v225;
                v20 = v226;
                if (v121)
                {
                  goto LABEL_399;
                }

                goto LABEL_20;
              }

              v74 = v240;
              if (v40 == 2)
              {
                v75 = *(v235 + 16);
                v76 = *(v235 + 24);
                v77 = *(&v235 + 1);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v240, &v229);
                sub_10019782C(&v235, &v229);
                v78 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                v79 = v75;
                v80 = v76;
                v82 = *(&v74 + 1);
                v81 = v74;
                goto LABEL_212;
              }

              *&v228[6] = 0;
              *v228 = 0;
              sub_10019782C(&v240, &v229);
              sub_10019782C(&v240, &v229);
              sub_10019782C(&v235, &v229);
              sub_100066884(v228, v74, *(&v74 + 1), &v229);
              sub_100193BF0(&v235);
              sub_100193BF0(&v240);
              sub_100193BF0(&v240);
              v122 = v229;
LABEL_333:
              v21 = v225;
              v20 = v226;
              if (v122 == 1)
              {
                goto LABEL_399;
              }

              goto LABEL_20;
            }

            if ((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0))
            {
              goto LABEL_19;
            }

            v47 = *(&v235 + 1) >> 62;
            if (*(&v235 + 1) >> 62 == 3)
            {
              v48 = 0;
              if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
              {
                v48 = 0;
                if (v240 == __PAIR128__(0xC000000000000000, 0))
                {
                  goto LABEL_199;
                }
              }
            }

            else if (v47 > 1)
            {
              if (v47 == 2)
              {
                v57 = *(v235 + 16);
                v56 = *(v235 + 24);
                v51 = __OFSUB__(v56, v57);
                v48 = v56 - v57;
                if (v51)
                {
                  goto LABEL_427;
                }
              }

              else
              {
                v48 = 0;
              }
            }

            else if (v47)
            {
              LODWORD(v48) = DWORD1(v235) - v235;
              if (__OFSUB__(DWORD1(v235), v235))
              {
                goto LABEL_428;
              }

              v48 = v48;
            }

            else
            {
              v48 = BYTE14(v235);
            }

            v105 = *(&v240 + 1) >> 62;
            if ((*(&v240 + 1) >> 62) > 1)
            {
              v2 = a2;
              if (v105 == 2)
              {
                v108 = *(v240 + 16);
                v107 = *(v240 + 24);
                v51 = __OFSUB__(v107, v108);
                v106 = v107 - v108;
                if (v51)
                {
                  goto LABEL_416;
                }

                goto LABEL_193;
              }

              if (v48)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v2 = a2;
              if (v105)
              {
                LODWORD(v106) = DWORD1(v240) - v240;
                if (__OFSUB__(DWORD1(v240), v240))
                {
                  goto LABEL_415;
                }

                v106 = v106;
              }

              else
              {
                v106 = BYTE14(v240);
              }

LABEL_193:
              if (v48 != v106)
              {
                goto LABEL_20;
              }

              if (v48 >= 1)
              {
                v212 = v241;
                if (v47 > 1)
                {
                  v219 = *(&v241 + 1);
                  if (v47 == 2)
                  {
                    v125 = *(v235 + 16);
                    v126 = *(v235 + 24);
                    v127 = *(&v235 + 1);
                    v128 = *(&v240 + 1);
                    v129 = v240;
                    sub_100014CEC(v240, *(&v240 + 1));
                    sub_10019782C(&v235, &v229);
                    sub_100014CEC(v129, v128);
                    LOBYTE(v125) = sub_10003A0DC(v125, v126, v127 & 0x3FFFFFFFFFFFFFFFLL, v129, v128);
                    sub_100014D40(v129, v128);
                    sub_100014D40(v129, v128);
                    v109 = v219;
                    v114 = v212;
                    if ((v125 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_200;
                  }

                  *&v228[6] = 0;
                  *v228 = 0;
                  v159 = *(&v240 + 1);
                  v160 = v240;
                  sub_10019782C(&v235, &v229);
                  sub_100014CEC(v160, v159);
                  v158 = v228;
                }

                else
                {
                  if (!v47)
                  {
                    v109 = *(&v241 + 1);
                    *v228 = v235;
                    *&v228[8] = WORD4(v235);
                    *&v228[10] = *(&v235 + 10);
                    v110 = *(&v240 + 1);
                    v111 = v240;
                    sub_10019782C(&v235, &v229);
                    sub_100014CEC(v111, v110);
                    sub_100066884(v228, v111, v110, &v229);
                    sub_100014D40(v111, v110);
                    v112 = v229;
LABEL_297:
                    v114 = v212;
                    if ((v112 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

LABEL_200:
                    v115 = v26 >> 62;
                    if (v26 >> 62 == 3)
                    {
                      v116 = 0;
                      v2 = a2;
                      if (!v27 && v26 == 0xC000000000000000 && v109 >> 62 == 3)
                      {
                        v116 = 0;
                        if (!v114 && v109 == 0xC000000000000000)
                        {
LABEL_403:
                          sub_100193BF0(&v240);
                          v195 = &v235;
LABEL_400:
                          sub_100193BF0(v195);
                          a1 = v223;
LABEL_401:
                          v8 = v221;
                          v4 = v222;
                          v7 = v224;
                          if (v224)
                          {
                            goto LABEL_7;
                          }

                          goto LABEL_8;
                        }
                      }
                    }

                    else if (v115 > 1)
                    {
                      v2 = a2;
                      if (v115 == 2)
                      {
                        v124 = *(v27 + 16);
                        v123 = *(v27 + 24);
                        v51 = __OFSUB__(v123, v124);
                        v116 = v123 - v124;
                        if (v51)
                        {
                          goto LABEL_441;
                        }
                      }

                      else
                      {
                        v116 = 0;
                      }
                    }

                    else
                    {
                      v2 = a2;
                      if (v115)
                      {
                        LODWORD(v116) = HIDWORD(v27) - v27;
                        if (__OFSUB__(HIDWORD(v27), v27))
                        {
                          goto LABEL_440;
                        }

                        v116 = v116;
                      }

                      else
                      {
                        v116 = BYTE6(v26);
                      }
                    }

                    v148 = v109 >> 62;
                    if ((v109 >> 62) > 1)
                    {
                      if (v148 != 2)
                      {
                        if (!v116)
                        {
                          goto LABEL_403;
                        }

                        goto LABEL_398;
                      }

                      v151 = *(v114 + 16);
                      v150 = *(v114 + 24);
                      v51 = __OFSUB__(v150, v151);
                      v149 = v150 - v151;
                      if (v51)
                      {
                        goto LABEL_430;
                      }
                    }

                    else if (v148)
                    {
                      LODWORD(v149) = HIDWORD(v114) - v114;
                      if (__OFSUB__(HIDWORD(v114), v114))
                      {
                        goto LABEL_431;
                      }

                      v149 = v149;
                    }

                    else
                    {
                      v149 = BYTE6(v109);
                    }

                    if (v116 != v149)
                    {
                      goto LABEL_398;
                    }

                    if (v116 < 1)
                    {
                      goto LABEL_403;
                    }

                    if (v115 <= 1)
                    {
                      if (!v115)
                      {
                        *&v229 = v27;
                        WORD4(v229) = v26;
                        BYTE10(v229) = BYTE2(v26);
                        BYTE11(v229) = BYTE3(v26);
                        BYTE12(v229) = BYTE4(v26);
                        BYTE13(v229) = BYTE5(v26);
                        v152 = v114;
                        sub_100014CEC(v114, v109);
                        sub_100014CEC(v152, v109);
                        sub_100066884(&v229, v152, v109, v228);
                        sub_100193BF0(&v235);
                        sub_100014D40(v152, v109);
                        sub_100014D40(v152, v109);
                        v73 = v228[0];
LABEL_284:
                        v21 = v225;
                        v20 = v226;
                        if (v73)
                        {
                          goto LABEL_399;
                        }

                        goto LABEL_20;
                      }

                      v153 = v27;
                      v154 = v27 >> 32;
                      if (v154 < v153)
                      {
                        goto LABEL_445;
                      }

                      goto LABEL_329;
                    }

                    if (v115 == 2)
                    {
                      v153 = *(v27 + 16);
                      v154 = *(v27 + 24);
LABEL_329:
                      v172 = v114;
                      sub_100014CEC(v114, v109);
                      sub_100014CEC(v172, v109);
                      sub_100014CEC(v172, v109);
                      v121 = sub_10003A0DC(v153, v154, v26 & 0x3FFFFFFFFFFFFFFFLL, v172, v109);
                      sub_100014D40(v172, v109);
                      sub_100193BF0(&v235);
                      sub_100014D40(v172, v109);
                      sub_100014D40(v172, v109);
                      goto LABEL_330;
                    }

                    *(&v229 + 6) = 0;
                    *&v229 = 0;
                    v173 = v114;
                    sub_100014CEC(v114, v109);
                    sub_100014CEC(v173, v109);
                    sub_100066884(&v229, v173, v109, v228);
                    sub_100193BF0(&v235);
                    sub_100014D40(v173, v109);
                    sub_100014D40(v173, v109);
                    v122 = v228[0];
                    goto LABEL_333;
                  }

                  v207 = v240;
                  v219 = *(&v241 + 1);
                  v155 = v235;
                  if (v235 >> 32 < v235)
                  {
                    goto LABEL_442;
                  }

                  sub_10019782C(&v235, &v229);
                  sub_100014CEC(v207, *(&v207 + 1));
                  v156 = sub_1004A40D4();
                  if (v156)
                  {
                    v157 = sub_1004A4104();
                    if (__OFSUB__(v155, v157))
                    {
                      goto LABEL_446;
                    }

                    v156 += v155 - v157;
                  }

                  sub_1004A40F4();
                  v158 = v156;
                  v159 = *(&v207 + 1);
                  v160 = v207;
                }

                sub_100066884(v158, v160, v159, &v229);
                sub_100014D40(v160, v159);
                v112 = v229;
                v109 = v219;
                goto LABEL_297;
              }
            }

LABEL_199:
            v232 = v238;
            v234 = v239;
            v230 = v236;
            v231 = v237;
            v229 = v235;
            v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            v109 = *(&v241 + 1);
            v113 = v241;
            sub_1001915E8(&v229, v228);
            v114 = v113;
            goto LABEL_200;
          }

          if (v35 <= 4)
          {
            if (v35 == 3)
            {
              if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 3)
              {
                v2 = a2;
                if (v235 == v240)
                {
                  goto LABEL_62;
                }

                goto LABEL_63;
              }
            }

            else if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 4)
            {
              v42 = *(&v235 + 1) >> 62;
              v43 = *(&v240 + 1) >> 62;
              if (*(&v235 + 1) >> 62 == 3)
              {
                v44 = 0;
                if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                {
                  v44 = 0;
                  if (v240 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_166;
                  }
                }
              }

              else if (v42 > 1)
              {
                if (v42 == 2)
                {
                  v55 = *(v235 + 16);
                  v54 = *(v235 + 24);
                  v51 = __OFSUB__(v54, v55);
                  v44 = v54 - v55;
                  if (v51)
                  {
                    goto LABEL_420;
                  }
                }

                else
                {
                  v44 = 0;
                }
              }

              else if (v42)
              {
                LODWORD(v44) = DWORD1(v235) - v235;
                if (__OFSUB__(DWORD1(v235), v235))
                {
                  goto LABEL_417;
                }

                v44 = v44;
              }

              else
              {
                v44 = BYTE14(v235);
              }

              if (v43 > 1)
              {
                v2 = a2;
                if (v43 == 2)
                {
                  v85 = *(v240 + 16);
                  v84 = *(v240 + 24);
                  v51 = __OFSUB__(v84, v85);
                  v83 = v84 - v85;
                  if (v51)
                  {
                    goto LABEL_414;
                  }

                  goto LABEL_160;
                }

                if (v44)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v2 = a2;
                if (v43)
                {
                  LODWORD(v83) = DWORD1(v240) - v240;
                  if (__OFSUB__(DWORD1(v240), v240))
                  {
                    goto LABEL_413;
                  }

                  v83 = v83;
                }

                else
                {
                  v83 = BYTE14(v240);
                }

LABEL_160:
                if (v44 != v83)
                {
                  goto LABEL_20;
                }

                if (v44 >= 1)
                {
                  v211 = v241;
                  if (v42 > 1)
                  {
                    v218 = *(&v241 + 1);
                    if (v42 != 2)
                    {
                      *&v228[6] = 0;
                      *v228 = 0;
                      v146 = *(&v240 + 1);
                      v147 = v240;
                      sub_100014CEC(v240, *(&v240 + 1));
                      sub_10019782C(&v235, &v229);
                      sub_100014CEC(v147, v146);
                      sub_100066884(v228, v147, v146, &v229);
                      sub_100014D40(v147, v146);
                      sub_100014D40(v147, v146);
                      v89 = v229;
                      v86 = v218;
                      goto LABEL_265;
                    }

                    v98 = *(v235 + 16);
                    v99 = *(v235 + 24);
                    v100 = *(&v235 + 1);
                    v101 = *(&v240 + 1);
                    v102 = v240;
                    sub_100014CEC(v240, *(&v240 + 1));
                    sub_100014CEC(v102, v101);
                    sub_10019782C(&v235, &v229);
                    sub_100014CEC(v102, v101);
                    v103 = sub_10003A0DC(v98, v99, v100 & 0x3FFFFFFFFFFFFFFFLL, v102, v101);
                    sub_100014D40(v102, v101);
                    sub_100014D40(v102, v101);
                    v104 = v102;
                  }

                  else
                  {
                    if (!v42)
                    {
                      v86 = *(&v241 + 1);
                      *v228 = v235;
                      *&v228[8] = WORD4(v235);
                      *&v228[10] = *(&v235 + 10);
                      v87 = *(&v240 + 1);
                      v88 = v240;
                      sub_100014CEC(v240, *(&v240 + 1));
                      sub_10019782C(&v235, &v229);
                      sub_100014CEC(v88, v87);
                      sub_100066884(v228, v88, v87, &v229);
                      sub_100014D40(v88, v87);
                      sub_100014D40(v88, v87);
                      v89 = v229;
LABEL_265:
                      v91 = v211;
                      if ((v89 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

LABEL_167:
                      v92 = v26 >> 62;
                      v93 = v86 >> 62;
                      if (v26 >> 62 == 3)
                      {
                        v94 = 0;
                        if (v27)
                        {
                          v2 = a2;
                        }

                        else
                        {
                          v2 = a2;
                          if (v26 == 0xC000000000000000 && v86 >> 62 == 3)
                          {
                            v94 = 0;
                            if (!v91 && v86 == 0xC000000000000000)
                            {
                              goto LABEL_403;
                            }
                          }
                        }
                      }

                      else if (v92 == 2)
                      {
                        v133 = *(v27 + 16);
                        v132 = *(v27 + 24);
                        v51 = __OFSUB__(v132, v133);
                        v94 = v132 - v133;
                        v2 = a2;
                        if (v51)
                        {
                          goto LABEL_434;
                        }
                      }

                      else
                      {
                        v2 = a2;
                        if (v92 == 1)
                        {
                          LODWORD(v94) = HIDWORD(v27) - v27;
                          if (__OFSUB__(HIDWORD(v27), v27))
                          {
                            goto LABEL_435;
                          }

                          v94 = v94;
                        }

                        else
                        {
                          v94 = BYTE6(v26);
                        }
                      }

                      if (v93 > 1)
                      {
                        if (v93 != 2)
                        {
                          if (!v94)
                          {
                            goto LABEL_403;
                          }

                          goto LABEL_398;
                        }

                        v176 = *(v91 + 16);
                        v175 = *(v91 + 24);
                        v51 = __OFSUB__(v175, v176);
                        v174 = v175 - v176;
                        if (v51)
                        {
                          goto LABEL_424;
                        }
                      }

                      else if (v93)
                      {
                        LODWORD(v174) = HIDWORD(v91) - v91;
                        if (__OFSUB__(HIDWORD(v91), v91))
                        {
                          goto LABEL_423;
                        }

                        v174 = v174;
                      }

                      else
                      {
                        v174 = BYTE6(v86);
                      }

                      if (v94 != v174)
                      {
                        goto LABEL_398;
                      }

                      if (v94 < 1)
                      {
                        goto LABEL_403;
                      }

                      v177 = v91;
                      sub_100014CEC(v91, v86);
                      LOBYTE(v177) = sub_100039F4C(v27, v26, v177, v86);
                      sub_100193BF0(&v235);
                      if (v177)
                      {
                        goto LABEL_399;
                      }

                      goto LABEL_27;
                    }

                    v218 = *(&v241 + 1);
                    v142 = v235;
                    v143 = v235 >> 32;
                    if (v235 >> 32 < v235)
                    {
                      goto LABEL_436;
                    }

                    v144 = *(&v235 + 1);
                    v101 = *(&v240 + 1);
                    v145 = v240;
                    sub_100014CEC(v240, *(&v240 + 1));
                    sub_100014CEC(v145, v101);
                    sub_10019782C(&v235, &v229);
                    sub_100014CEC(v145, v101);
                    v103 = sub_10003A0DC(v142, v143, v144 & 0x3FFFFFFFFFFFFFFFLL, v145, v101);
                    sub_100014D40(v145, v101);
                    sub_100014D40(v145, v101);
                    v104 = v145;
                  }

                  sub_100014D40(v104, v101);
                  v86 = v218;
                  v91 = v211;
                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_398;
                  }

                  goto LABEL_167;
                }
              }

LABEL_166:
              v232 = v238;
              v234 = v239;
              v230 = v236;
              v231 = v237;
              v229 = v235;
              v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              v86 = *(&v241 + 1);
              v90 = v241;
              sub_1001915E8(&v229, v228);
              v91 = v90;
              goto LABEL_167;
            }

            goto LABEL_19;
          }

          v38 = (*(&v243 + 1) >> 61) & 1;
          v39 = *(&v244 + 1) >> 59;
          if (v35 != 5)
          {
            v2 = a2;
            if ((v39 & 6 | v38) != 6)
            {
              goto LABEL_20;
            }

LABEL_61:
            if (v235 == v240)
            {
LABEL_62:
              if (*(&v235 + 1) != *(&v240 + 1))
              {
                goto LABEL_63;
              }

LABEL_64:
              if (v27 == v32 && v26 == v33)
              {
                goto LABEL_399;
              }

LABEL_26:
              if (sub_1004A6D34())
              {
                goto LABEL_399;
              }

              goto LABEL_27;
            }

LABEL_63:
            v45 = v241;
            v46 = sub_1004A6D34();
            v33 = *(&v45 + 1);
            v32 = v45;
            v21 = v225;
            v20 = v226;
            if ((v46 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v2 = a2;
          if ((v39 & 6 | v38) == 5)
          {
            goto LABEL_61;
          }
        }

        else if ((HIBYTE(v243) & 0x10) == 0)
        {
          v29 = v241;
          if (v235 != v240 && (sub_1004A6D34() & 1) == 0)
          {
            v20 = v226;
            goto LABEL_47;
          }

          if (__PAIR128__(v26, v27) == v29)
          {
            goto LABEL_399;
          }

          goto LABEL_26;
        }

LABEL_20:
        v19 = (v19 + 1) & v21;
      }

      while (((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
    }

    sub_100193BF0(&v240);
  }

  return 0;
}

uint64_t sub_1001B260C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v27 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v28 = v8;
  v29 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v14;
    v32 = v14[1];
    v16 = v14[2];
    v17 = *(a2 + 40);
    sub_1004A6E94();
    v30 = v11;
    v31 = v15;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        sub_1004A6EB4(3uLL);
        goto LABEL_26;
      }

      if (v16 == 3)
      {
        sub_1004A6EB4(4uLL);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v16)
      {
        sub_1004A6EB4(1uLL);
        goto LABEL_26;
      }

      if (v16 == 1)
      {
        sub_1004A6EB4(2uLL);
        goto LABEL_26;
      }
    }

    sub_1004A6EB4(0);
    if ((~v15 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      sub_1000110B0(v15);

      ResponseTextCode.hash(into:)(v33, v15);
    }

    else
    {
      sub_1004A6EC4(0);
      sub_1000110B0(v15);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_26:
    v18 = sub_1004A6F14();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_46:
      sub_100191E44(v31, v32, v16);
      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if (v25 > 1)
      {
        break;
      }

      if (v25)
      {
        if (v25 != 1)
        {
          goto LABEL_39;
        }

        if (v16 == 1)
        {
          goto LABEL_43;
        }
      }

      else if (!v16)
      {
        goto LABEL_43;
      }

LABEL_29:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (v25 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v25 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_39:
    if (v16 < 4)
    {
      goto LABEL_29;
    }

    sub_1000110B0(*v22);

    v26 = static ResponseText.__derived_struct_equals(_:_:)(v23, v24);
    sub_100191E44(v23, v24, v25);
    if ((v26 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_100191E44(v31, v32, v16);
LABEL_43:
    v8 = v28;
    result = v29;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v27 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B2930(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (sub_100083308(*(a1 + 8), *(a2 + 8)))
  {
    v4 = sub_100083308(v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Int ConnectionCommandIDSet.isDisjoint(with:)(int a1, Swift::Int a2, uint64_t a3, int a4, Swift::Int a5)
{
  if (a1 == a4)
  {
    return sub_10012DDBC(a5, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t ConnectionCommandIDSet.normalCommandCount.getter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) <= a2[2] >> 3)
  {

    sub_1001B2F14(a3);
    v5 = a2;
  }

  else
  {

    v5 = sub_1001B300C(a3, a2);
  }

  v6 = v5[2];

  return v6;
}

uint64_t ConnectionCommandIDSet.makeIterator()(int a1, uint64_t a2, uint64_t a3)
{
  v6 = -1 << *(a2 + 32);
  v7 = a2 + 56;
  v8 = ~v6;
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a2 + 56);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = 0;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  sub_10000C9C0(&qword_1005D3610, &qword_1004DD200);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001B351C;
  *(v14 + 24) = v13;
  swift_bridgeObjectRetain_n();

  return v14;
}

uint64_t sub_1001B2B64@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  if (v8)
  {
    v9 = a1[5];
LABEL_10:
    v13 = 0;
    v14 = *(*(a1[2] + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v8)))));
    a1[5] = v9;
    a1[6] = (v8 - 1) & v8;
    v15 = a2 | (v14 << 32);
LABEL_11:
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    v10 = (a1[4] + 64) >> 6;
    if (v10 <= v7 + 1)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = (a1[4] + 64) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        v15 = 0;
        a1[5] = v12;
        a1[6] = 0;
        v13 = 1;
        goto LABEL_11;
      }

      v8 = *(a1[3] + 8 * v9);
      ++v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001B2C48@<X0>(uint64_t *a1@<X8>)
{
  v3 = ConnectionCommandIDSet.makeIterator()(*v1, *(v1 + 8), *(v1 + 16));

  *a1 = v3;
  return result;
}

uint64_t sub_1001B2CA8()
{
  v1 = sub_1001B3B44(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1001B2D04(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = ConnectionCommandIDSet.makeIterator()(a4, a5, a6);

  v11 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v9;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1004A6AA4();
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v13;
      while (1)
      {
        *a2 = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        sub_1004A6AA4();
        v12 = v13;
        ++v11;
        ++a2;
        if (v14)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1001B2DE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EE024(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100141044(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1001B2F14(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1001B3650(*(*(v2 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1001B300C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v49 << 8) | (4 * v18)));
        v19 = v6[5];
        sub_1004A6E94();
        sub_1004A6EE4(v5);
        v20 = sub_1004A6F14();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v22 = v6[6];
      if (*(v22 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v22 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v47;
    v53 = v49;
    v54 = v11;
    v51[0] = v48;
    v51[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, v6 + 7, v5);
      v42 = sub_1001B3764(v41, v14, v6, v2, v51);

      v47 = v52;
      v49 = v53;
      v6 = v42;
      goto LABEL_43;
    }

LABEL_18:
    v44 = v14;
    v45 = &v43;
    __chkstk_darwin(v23);
    v14 = &v43 - v24;
    memcpy(&v43 - v24, v6 + 7, v5);
    v25 = v6[2];
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v49 << 8) | (4 * v30)));
      v31 = v6[5];
      sub_1004A6E94();
      v2 = &v50;
      sub_1004A6EE4(v5);
      v32 = sub_1004A6F14();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & v13[v34 >> 6]) != 0)
      {
        v37 = v6[6];
        if (*(v37 + 4 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = _swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v13[v34 >> 6]) == 0)
            {
              break;
            }

            if (*(v37 + 4 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v39 = v49 + 1;
    }

    else
    {
      v39 = v12;
    }

    v49 = v39 - 1;
    v6 = sub_1001B393C(v14, v44, v46, v6);
LABEL_43:
    sub_100020D08();
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v6;
}

uint64_t sub_1001B3494()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_100020D08();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B34D4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B351C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1001B2B64(*(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_1001B3530()
{
  result = qword_1005D3618;
  if (!qword_1005D3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3618);
  }

  return result;
}

unint64_t sub_1001B3588()
{
  result = qword_1005D3620;
  if (!qword_1005D3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3620);
  }

  return result;
}

unint64_t sub_1001B3650(Swift::UInt32 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  v5 = sub_1004A6F14();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + 4 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002057C8();
      v13 = v15;
    }

    v9 = *(*(v13 + 48) + 4 * v7);
    sub_10013EA50(v7);
    v10 = 0;
    *v1 = v15;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 32);
}

Swift::Int sub_1001B3764(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 4 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return _swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 4 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1001B393C(v7, a2, v9, a3);
}

uint64_t sub_1001B393C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D3638, &unk_1004DD4E0);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = v9[5];
    sub_1004A6E94();
    sub_1004A6EE4(v16);
    result = sub_1004A6F14();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 4 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001B3B44(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = 2 * (v9 >> 3);
    v7[2] = v6;
    v7[3] = v10;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage[3];
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  ConnectionCommandIDSet.makeIterator()(a1, a2, a3);
  if (v6)
  {
    v12 -= v6;
    do
    {
      result = sub_1004A6AA4();
      if (v30)
      {
        goto LABEL_37;
      }

      *v11++ = v29;
    }

    while (--v6);
  }

  result = sub_1004A6AA4();
  if ((v30 & 1) == 0)
  {
    v14 = v29;
    while (1)
    {
      if (!v12)
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
        v18 = swift_allocObject();
        v19 = j__malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v7[3] >> 1;
        if (v7[2])
        {
          if (v18 != v7 || v22 >= &v7[v23 + 4])
          {
            memmove(v18 + 4, v7 + 4, 8 * v23);
          }

          v7[2] = 0;
        }

        v11 = (v22 + 8 * v23);
        v12 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v7 = v18;
      }

      v25 = __OFSUB__(v12--, 1);
      if (v25)
      {
        break;
      }

      *v11++ = v14;
      result = sub_1004A6AA4();
      v14 = v29;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:

  v26 = v7[3];
  if (v26 < 2)
  {
    return v7;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v12);
  v28 = v27 - v12;
  if (!v25)
  {
    v7[2] = v28;
    return v7;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1001B3D68(uint64_t a1)
{
  v2 = sub_1004A54E4();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1001B4240();
  sub_1004A5AC4();
  result = sub_10000C9C0(&qword_1005D3648, &unk_1004DD4F0);
  v8 = *(a1 + *(result + 36));
  v9 = v28[0];
  v10 = _swiftEmptyArrayStorage;
  v11 = 0;
  if (v8)
  {
    v12 = v28[1];
    v13 = &_swiftEmptyArrayStorage[4];
    do
    {
      v14 = *(v9 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 = *(v9 + v12 + 32);
      if (!v11)
      {
        v16 = *(v10 + 3);
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v19 = swift_allocObject();
        v20 = 2 * j__malloc_size(v19) - 64;
        *(v19 + 2) = v18;
        *(v19 + 3) = v20;
        v21 = v19 + 32;
        v22 = *(v10 + 3) >> 1;
        if (*(v10 + 2))
        {
          v23 = v10 + 32;
          if (v19 != v10 || v21 >= &v23[v22])
          {
            memmove(v19 + 32, v23, v22);
          }

          *(v10 + 2) = 0;
        }

        v13 = &v21[v22];
        v11 = (v20 >> 1) - v22;

        v10 = v19;
      }

      v24 = __OFSUB__(v11--, 1);
      if (v24)
      {
        goto LABEL_23;
      }

      *v13++ = v15;
      ++v12;
      --v8;
    }

    while (v8);
  }

  v25 = *(v10 + 3);
  if (v25 < 2)
  {
    return v10;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v11);
  v27 = v26 - v11;
  if (!v24)
  {
    *(v10 + 2) = v27;
    return v10;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001B3FA0()
{
  result = sub_1004A6AA4();
  v1 = _swiftEmptyArrayStorage;
  v2 = 0;
  if ((v18 & 1) == 0)
  {
    v3 = v17;
    v4 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      if (!v2)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v8 = swift_allocObject();
        v9 = 2 * j__malloc_size(v8) - 64;
        v8[2] = v7;
        v8[3] = v9;
        v10 = (v8 + 4);
        v11 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v10 >= v1 + v11 + 32)
          {
            memmove(v8 + 4, v1 + 4, v11);
          }

          v1[2] = 0;
        }

        v4 = (v10 + v11);
        v2 = (v9 >> 1) - v11;

        v1 = v8;
      }

      v13 = __OFSUB__(v2--, 1);
      if (v13)
      {
        break;
      }

      *v4++ = v3;
      result = sub_1004A6AA4();
      v3 = v17;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v14 = v1[3];
  if (v14 < 2)
  {
    return v1;
  }

  v15 = v14 >> 1;
  v13 = __OFSUB__(v15, v2);
  v16 = v15 - v2;
  if (!v13)
  {
    v1[2] = v16;
    return v1;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001B4154(uint64_t a1, uint64_t a2)
{
  v10 = _swiftEmptySetSingleton;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = (a2 + 36);
    v6 = *(a2 + 16);
    do
    {
      if (*(v5 - 1) == a1)
      {
        sub_10020163C(&v9, *v5);
      }

      v5 += 10;
      --v6;
    }

    while (v6);
    v10 = _swiftEmptySetSingleton;
    do
    {
      if (*v4 == a1 && *(v4 + 24) != 0)
      {
        sub_10020163C(&v9, *(v4 + 4));
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t sub_1001B4240()
{
  result = qword_1005D3640;
  if (!qword_1005D3640)
  {
    sub_1004A54E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3640);
  }

  return result;
}

__n128 sub_1001B42AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001B42C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B4308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B435C()
{
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  v2 = *(*(done - 8) + 64);
  __chkstk_darwin(done - 8);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV7CommandVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s19CommandOutputBufferV7ElementOMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  v22 = *(*v0 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = *v0 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    while (1)
    {
      sub_1001B6374(v24, v21, _s19CommandOutputBufferV7ElementOMa);
      sub_1001B6374(v21, v17, _s19CommandOutputBufferV7ElementOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v30 = v37;
          sub_1001B630C(v17, v37, _s19CommandOutputBufferV8IdleDoneVMa);
          v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v31 = _s19CommandOutputBufferV8IdleDoneVMa;
        }

        else
        {
          v30 = v36;
          sub_1001B630C(v17, v36, _s19CommandOutputBufferV9HandshakeVMa);
          v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v31 = _s19CommandOutputBufferV9HandshakeVMa;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1001B630C(v17, v13, _s19CommandOutputBufferV7CommandVMa);
          v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v28 = _s19CommandOutputBufferV7CommandVMa;
          v29 = v13;
          goto LABEL_11;
        }

        v30 = v35;
        sub_1001B630C(v17, v35, _s19CommandOutputBufferV12ContinuationVMa);
        v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v31 = _s19CommandOutputBufferV12ContinuationVMa;
      }

      v28 = v31;
      v29 = v30;
LABEL_11:
      sub_1001B62AC(v29, v28);
      result = sub_1001B62AC(v21, _s19CommandOutputBufferV7ElementOMa);
      v33 = __OFADD__(v23, v27);
      v23 += v27;
      if (v33)
      {
        __break(1u);
        return result;
      }

      v24 += v25;
      if (!--v22)
      {
        return v23;
      }
    }
  }

  return 0;
}

uint64_t sub_1001B471C(void *a1, unsigned __int8 *a2)
{
  v42 = a1;
  v51 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v3 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000C9C0(&qword_1005D3658, &unk_1004DD560);
  v6 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v8 = (&v40 - v7);
  v52 = _s19CommandOutputBufferV7ElementOMa(0);
  v44 = *(v52 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v52);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v40 - v13;
  v14 = _s19CommandOutputBufferV7CommandVMa(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v20 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v21 = sub_1004A5384();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v43 = v19;
  v46 = v23;
  v47 = v22;
  v23(v18, v19, v21);
  v24 = &v18[*(v15 + 28)];
  v48 = a2;
  v49 = v20;
  *v24 = v20;
  *(v24 + 1) = a2;
  v18[*(v15 + 32)] = 0;
  v40 = v18;
  v25 = v18;
  v27 = v41;
  v26 = v42;
  sub_1001B6374(v25, v41, _s19CommandOutputBufferV7CommandVMa);
  swift_storeEnumTagMultiPayload();
  v28 = *v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1001EC1FC(v29 > 1, v30 + 1, 1, v28);
    }

    v28[2] = v30 + 1;
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v44 = *(v44 + 72);
    sub_1001B630C(v27, v28 + v45 + v44 * v30, _s19CommandOutputBufferV7ElementOMa);
    *v26 = v28;
    v31 = *&v43[*(type metadata accessor for ClientCommand.Encoded() + 20)];
    v43 = *(v31 + 16);
    if (!v43)
    {
      break;
    }

    v26 = 0;
    while (v26 < *(v31 + 16))
    {
      v32 = v46;
      v33 = v31 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26;
      v34 = *(v50 + 48);
      *v8 = v26;
      v32(v8 + v34, v33, v21);
      v32(v5, v8 + v34, v21);
      v35 = v51;
      v36 = &v5[*(v51 + 20)];
      v37 = v48;
      *v36 = v49;
      *(v36 + 1) = v37;
      *&v5[*(v35 + 24)] = v26;
      sub_1001B6374(v5, v11, _s19CommandOutputBufferV12ContinuationVMa);
      swift_storeEnumTagMultiPayload();
      v27 = v28[2];
      v38 = v28[3];
      if (v27 >= v38 >> 1)
      {
        v28 = sub_1001EC1FC(v38 > 1, v27 + 1, 1, v28);
      }

      ++v26;
      sub_1001B62AC(v5, _s19CommandOutputBufferV12ContinuationVMa);
      v28[2] = v27 + 1;
      sub_1001B630C(v11, v28 + v45 + v27 * v44, _s19CommandOutputBufferV7ElementOMa);
      sub_1001B63DC(v8);
      if (v43 == v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    v28 = sub_1001EC1FC(0, v28[2] + 1, 1, v28);
  }

LABEL_10:
  *v42 = v28;
  return sub_1001B62AC(v40, _s19CommandOutputBufferV7CommandVMa);
}

BOOL sub_1001B4BE8(void (*a1)(uint64_t *))
{
  v3 = _s19CommandOutputBufferV7ElementOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(*v1 + 16);
  if (v9 != 1)
  {
    goto LABEL_5;
  }

  sub_1001B6374(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001B62AC(v7, _s19CommandOutputBufferV7ElementOMa);
  if (EnumCaseMultiPayload != 2)
  {
    v9 = *(v8 + 16);
LABEL_5:
    v11 = v9 != 0;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:
  a1(v1);
  return v11;
}

uint64_t sub_1001B4D30(void *a1, unsigned __int8 *a2)
{
  v41 = a1;
  v3 = sub_1004A5384();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19CommandOutputBufferV7ElementOMa(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = _s19CommandOutputBufferV7CommandVMa(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v21 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v39 = v4;
  v22 = *(v4 + 16);
  v42 = v20;
  v45 = v22;
  (v22)(v19);
  v23 = &v19[*(v16 + 28)];
  v46 = a2;
  v47 = v21;
  *v23 = v21;
  v24 = v41;
  *(v23 + 1) = a2;
  v19[*(v16 + 32)] = 1;
  v40 = v19;
  sub_1001B6374(v19, v14, _s19CommandOutputBufferV7CommandVMa);
  v48 = v8;
  swift_storeEnumTagMultiPayload();
  v25 = *v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1001EC1FC(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1001EC1FC(v26 > 1, v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v43 = *(v43 + 72);
  sub_1001B630C(v14, v25 + v44 + v43 * v27, _s19CommandOutputBufferV7ElementOMa);
  *v24 = v25;
  v28 = *&v42[*(type metadata accessor for ClientCommand.Encoded() + 20)];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)));
    v42 = *(v39 + 72);
    v31 = (v39 + 8);
    do
    {
      v32 = v45;
      v45(v7, v30, v3);
      v32(v11, v7, v3);
      v33 = &v11[*(_s19CommandOutputBufferV8IdleDoneVMa(0) + 20)];
      v34 = v46;
      *v33 = v47;
      *(v33 + 1) = v34;
      swift_storeEnumTagMultiPayload();
      v36 = v25[2];
      v35 = v25[3];
      if (v36 >= v35 >> 1)
      {
        v25 = sub_1001EC1FC(v35 > 1, v36 + 1, 1, v25);
      }

      (*v31)(v7, v3);
      v25[2] = v36 + 1;
      sub_1001B630C(v11, v25 + v44 + v36 * v43, _s19CommandOutputBufferV7ElementOMa);
      v30 = &v42[v30];
      --v29;
    }

    while (v29);
    *v41 = v25;
  }

  return sub_1001B62AC(v40, _s19CommandOutputBufferV7CommandVMa);
}

uint64_t sub_1001B515C(void **a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + *(type metadata accessor for HandshakeReply.Encoded() + 20);
  v15 = *v14;
  v16 = *(v14 + 4);
  v17 = sub_1004A5384();
  (*(*(v17 - 8) + 16))(v13, a2, v17);
  v18 = &v13[*(v10 + 28)];
  *v18 = v15;
  *(v18 + 1) = v16;
  sub_1001B6374(v13, v8, _s19CommandOutputBufferV9HandshakeVMa);
  swift_storeEnumTagMultiPayload();
  v19 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1001EC1FC(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1001EC1FC(v20 > 1, v21 + 1, 1, v19);
  }

  sub_1001B62AC(v13, _s19CommandOutputBufferV9HandshakeVMa);
  v19[2] = v21 + 1;
  result = sub_1001B630C(v8, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, _s19CommandOutputBufferV7ElementOMa);
  *a1 = v19;
  return result;
}

uint64_t sub_1001B53B0@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1004A5384();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s19CommandOutputBufferV7CommandVMa(0);
  v7 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV7ElementOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  v23 = *v1;
  v24 = *(*v1 + 16);
  if (!v24)
  {
    v28 = _s19CommandOutputBufferV8SendDataVMa(0);
    return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  v45 = a1;
  v51 = v2;
  sub_1001B6374(v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), &v45 - v21, _s19CommandOutputBufferV7ElementOMa);
  sub_1001B6374(v22, v18, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (v1[1])
      {
        goto LABEL_20;
      }

      v29 = v1 + 2;
      v30 = v1[2];
      if (v30 > 0)
      {
LABEL_14:
        *v29 = v30 - 1;
        goto LABEL_15;
      }

LABEL_23:
      sub_1001B62AC(v22, _s19CommandOutputBufferV7ElementOMa);
      v33 = _s19CommandOutputBufferV8SendDataVMa(0);
      (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
      return sub_1001B62AC(v18, _s19CommandOutputBufferV7ElementOMa);
    }

    if (v24 == 1)
    {
      goto LABEL_23;
    }

    if (v1[2])
    {
      goto LABEL_18;
    }

LABEL_13:
    v29 = v1 + 1;
    v30 = v1[1];
    if (v30 > 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (v1[2])
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v1[1])
  {
LABEL_20:
    sub_1001B64B8();
    goto LABEL_21;
  }

  if (v1[2])
  {
LABEL_18:
    sub_1001B6464();
LABEL_21:
    swift_allocError();
    swift_willThrow();
    sub_1001B62AC(v22, _s19CommandOutputBufferV7ElementOMa);
    return sub_1001B62AC(v18, _s19CommandOutputBufferV7ElementOMa);
  }

  if ((*(v1 + 33) & 1) == 0 && (v1[4] & 1) == 0)
  {
    sub_1001B62AC(v22, _s19CommandOutputBufferV7ElementOMa);
    v26 = _s19CommandOutputBufferV8SendDataVMa(0);
    (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
    return sub_1001B62AC(v18, _s19CommandOutputBufferV7ElementOMa);
  }

LABEL_15:
  sub_1001B62AC(v18, _s19CommandOutputBufferV7ElementOMa);
  sub_1001EA660(0, v15);
  sub_1001B62AC(v15, _s19CommandOutputBufferV7ElementOMa);
  sub_1001B6374(v22, v12, _s19CommandOutputBufferV7ElementOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    v31 = _s19CommandOutputBufferV7ElementOMa;
    v32 = v12;
  }

  else
  {
    v34 = v47;
    sub_1001B630C(v12, v47, _s19CommandOutputBufferV7CommandVMa);
    if (*(v34 + *(v46 + 24)))
    {
      v35 = (v34 + *(v46 + 20));
      v36 = *v35;
      v37 = *(v35 + 1);
      sub_1001B62AC(v34, _s19CommandOutputBufferV7CommandVMa);
      v38 = v45;
      if ((*(v1 + 33) & 1) == 0)
      {
        v1[3] = v36 | (v37 << 32);
        *(v1 + 16) = 0;
      }

      goto LABEL_30;
    }

    v31 = _s19CommandOutputBufferV7CommandVMa;
    v32 = v34;
  }

  sub_1001B62AC(v32, v31);
  v38 = v45;
LABEL_30:
  v39 = v48;
  sub_1001B59F4(v48);
  v40 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v49 + 8))(v39, v50);
  LOBYTE(v39) = v40 > 5000;
  sub_1001B59F4(v38);
  v41 = sub_1001B5CA4();
  LOBYTE(v40) = v41;
  v42 = HIDWORD(v41);
  sub_1001B62AC(v22, _s19CommandOutputBufferV7ElementOMa);
  v43 = _s19CommandOutputBufferV8SendDataVMa(0);
  v44 = v38 + *(v43 + 20);
  *v44 = v40;
  *(v44 + 4) = v42;
  *(v38 + *(v43 + 24)) = v39;
  return (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
}

uint64_t sub_1001B59F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  v5 = *(*(done - 8) + 64);
  __chkstk_darwin(done - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s19CommandOutputBufferV7CommandVMa(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s19CommandOutputBufferV7ElementOMa(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B6374(v2, v23, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B630C(v23, v7, _s19CommandOutputBufferV8IdleDoneVMa);
      v19 = v7;
    }

    else
    {
      sub_1001B630C(v23, v11, _s19CommandOutputBufferV9HandshakeVMa);
      v19 = v11;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1001B630C(v23, v15, _s19CommandOutputBufferV12ContinuationVMa);
    v19 = v15;
  }

  else
  {
    sub_1001B630C(v23, v19, _s19CommandOutputBufferV7CommandVMa);
  }

  v25 = sub_1004A5384();
  return (*(*(v25 - 8) + 32))(a1, v19, v25);
}

unint64_t sub_1001B5CA4()
{
  v1 = v0;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  v2 = *(*(done - 8) + 64);
  __chkstk_darwin(done);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s19CommandOutputBufferV7ElementOMa(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B6374(v1, v20, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B630C(v20, v4, _s19CommandOutputBufferV8IdleDoneVMa);
      v27 = &v4[*(done + 20)];
      v23 = *v27;
      v24 = *(v27 + 1);
      v25 = _s19CommandOutputBufferV8IdleDoneVMa;
      v26 = v4;
    }

    else
    {
      sub_1001B630C(v20, v8, _s19CommandOutputBufferV9HandshakeVMa);
      v29 = &v8[*(v5 + 20)];
      v23 = *v29;
      v24 = *(v29 + 1);
      v25 = _s19CommandOutputBufferV9HandshakeVMa;
      v26 = v8;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1001B630C(v20, v12, _s19CommandOutputBufferV12ContinuationVMa);
    v28 = &v12[*(v9 + 20)];
    v23 = *v28;
    v24 = *(v28 + 1);
    v25 = _s19CommandOutputBufferV12ContinuationVMa;
    v26 = v12;
  }

  else
  {
    sub_1001B630C(v20, v16, _s19CommandOutputBufferV7CommandVMa);
    v22 = &v16[*(v13 + 20)];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = _s19CommandOutputBufferV7CommandVMa;
    v26 = v16;
  }

  sub_1001B62AC(v26, v25);
  return v23 | (v24 << 32);
}

uint64_t sub_1001B5FE4()
{
  v0 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v0 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1004A5384();
  sub_1001B60F8();
  sub_1004A5E64();
  v1 = sub_1004A5EA4();
  if (v4 == v3)
  {
    return 1;
  }

  __chkstk_darwin(v1);
  sub_1004A5314();
  return v4;
}

unint64_t sub_1001B60F8()
{
  result = qword_1005D3650;
  if (!qword_1005D3650)
  {
    sub_1004A5384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3650);
  }

  return result;
}

uint64_t sub_1001B6150()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1004A5314();
}

uint64_t sub_1001B61AC@<X0>(const void *a1@<X0>, BOOL *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = memcmp(v6, a1, v7);
  *a2 = result == 0;
  return result;
}

uint64_t sub_1001B62AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B6374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B63DC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D3658, &unk_1004DD560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B6464()
{
  result = qword_1005D3660;
  if (!qword_1005D3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3660);
  }

  return result;
}

unint64_t sub_1001B64B8()
{
  result = qword_1005D3668;
  if (!qword_1005D3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3668);
  }

  return result;
}

uint64_t sub_1001B6610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001B6690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001B6704()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001B6858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001B691C()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B699C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1001B69D0()
{
  result = _s19CommandOutputBufferV7CommandVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s19CommandOutputBufferV12ContinuationVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s19CommandOutputBufferV8IdleDoneVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s19CommandOutputBufferV9HandshakeVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1001B6A70()
{
  result = qword_1005D3A00;
  if (!qword_1005D3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3A00);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OptionalMillisecondDate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

double sub_1001B6B2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1001B6B54@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1001B6C64(v9);
  }

  else
  {
    sub_1001B6CA8(v9);
  }

  v19 = v9[8];
  v20 = v9[9];
  v21 = v9[10];
  v22 = v10;
  v15 = v9[4];
  v16 = v9[5];
  v17 = v9[6];
  v18 = v9[7];
  v11 = v9[0];
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  UInt32.init(_:)(&v11);
  v31 = v21;
  v32 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v3 = v20;
  *(a2 + 128) = v19;
  *(a2 + 144) = v3;
  *(a2 + 160) = v31;
  *(a2 + 176) = v32;
  v4 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v4;
  v5 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v5;
  v6 = v24;
  *a2 = v23;
  *(a2 + 16) = v6;
  result = *&v25;
  v8 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v8;
  return result;
}

double sub_1001B6C64(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

double sub_1001B6CA8(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1001B6CEC()
{
  v1 = v0;
  v2 = sub_1004A4C04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4BC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == enum case for NWEndpoint.hostPort(_:))
  {
    (*(v3 + 96))(v6, v2);
    v15 = *(sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40) + 48);
    v16 = *(v8 + 32);
    v16(v14, v6, v7);
    v17 = sub_1004A4BF4();
    (*(*(v17 - 8) + 8))(&v6[v15], v17);
    v16(v12, v14, v7);
    if ((*(v8 + 88))(v12, v7) == enum case for NWEndpoint.Host.name(_:))
    {
      (*(v8 + 96))(v12, v7);
      v18 = *v12;
      v19 = *(v12 + 1);
      v20 = sub_10000C9C0(&qword_1005D3CC0, &qword_1004DDA48);
      sub_100025F40(&v12[*(v20 + 48)], &qword_1005D3CC8, &qword_1004DDA50);
      return v18;
    }

    (*(v8 + 8))(v12, v7);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_1001B6FEC()
{
  v1 = sub_1004A5244();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  __chkstk_darwin(v1);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1004A5274();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v53);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s6LoggerVMa();
  v48 = *(v46 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v46);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1004A4E34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v56 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1004A4E54();
  (*(v11 + 104))(v14, enum case for NWConnection.State.setup(_:), v10);
  v19 = sub_1004A4E24();
  v20 = *(v11 + 8);
  v20(v14, v10);
  result = (v20)(v17, v10);
  if (v19)
  {
    sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
    v22 = swift_allocBox();
    (*(v11 + 56))(v23, 1, 1, v10);
    v24 = swift_allocObject();
    v25 = v56;
    swift_weakInit();
    v26 = v25 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v47 = _s6LoggerVMa;
    sub_1001C1C6C(v25 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v9, _s6LoggerVMa);
    v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1001C1E74(v9, v29 + v27, _s6LoggerVMa);
    *(v29 + v28) = v24;
    *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

    sub_1001C1F84(sub_1001C1EDC);
    sub_1004A4DA4();

    swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1F94);
    sub_1004A4D34();

    swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1FC4);
    sub_1004A4DB4();

    swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1FCC);
    sub_1004A4DC4();

    v30 = v49;
    sub_1001C1C6C(v26, v49, v47);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v31 = sub_1004A4A54();
    v32 = sub_1004A4A74();
    (*(*(v32 - 8) + 8))(v30, v32);
    v33 = sub_1004A6034();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 68158210;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v26 + *(v46 + 20);
      *(v34 + 10) = *v36;

      *(v34 + 11) = 2082;
      v37 = ConnectionID.debugDescription.getter(*(v36 + 4));
      v39 = sub_10015BA6C(v37, v38, aBlock);

      *(v34 + 13) = v39;
      _os_log_impl(&_mh_execute_header, v31, v33, "[%.*hhx-%{public}s] Starting", v34, 0x15u);
      sub_1000197E0(v35);
    }

    else
    {
    }

    v40 = *(v56 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
    sub_1004A4E44();
    v41 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001C1FD4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A52D8;
    v42 = _Block_copy(aBlock);

    v43 = v50;
    sub_1004A5254();
    v57 = _swiftEmptyArrayStorage;
    sub_1001C1FF4(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    v44 = v52;
    v45 = v55;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v42);
    (*(v54 + 8))(v44, v45);
    (*(v51 + 8))(v43, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B78AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  v51 = type metadata accessor for LoggableCommand(0);
  v5 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6LoggerVMa();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OutboundContent(0);
  v11 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClientCommand(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v58 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v50 - v18;
  v19 = sub_1004A4904();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v25 = *(v8 + 28);
  v54 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  v26 = (v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger + v25);
  v27 = *(v26 + 1);
  v53 = *v26;
  sub_1004A4914();
  v28 = swift_allocObject();
  v56 = v3;
  v29 = v60;
  swift_weakInit();

  sub_1001D6F2C(v29, a2, v23, sub_1001C1D0C, v28);

  (*(v20 + 8))(v23, v19);

  sub_1001C1C6C(a2, v13, type metadata accessor for OutboundContent);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = type metadata accessor for OutboundContent;
    v31 = v13;
  }

  else
  {
    v32 = v53;
    v59 = v27;
    v33 = v29;
    v34 = v57;
    sub_1001C1E74(v13, v57, type metadata accessor for ClientCommand);
    v35 = v55;
    sub_1001C1C6C(v54, v55, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1001C1C6C(v34, v58, type metadata accessor for ClientCommand);
    v36 = sub_1004A4A54();
    v37 = sub_1004A4A74();
    (*(*(v37 - 8) + 8))(v35, v37);
    v38 = sub_1004A6034();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = v33;
      v40 = HIDWORD(v33);
      v41 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v41 = 68158466;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      *(v41 + 10) = v32;

      *(v41 + 11) = 2082;
      v42 = ConnectionID.debugDescription.getter(v59);
      v44 = sub_10015BA6C(v42, v43, &v61);

      *(v41 + 13) = v44;
      *(v41 + 21) = 2082;
      v45 = v52;
      v46 = v58;
      sub_1001C1C6C(v58, &v52[*(v51 + 20)], type metadata accessor for ClientCommand);
      *v45 = v39;
      *(v45 + 4) = v40;
      v47 = LoggableCommand.makeDescriptionWithoutPII()();
      sub_1001C1C0C(v45, type metadata accessor for LoggableCommand);
      sub_1001C1C0C(v46, type metadata accessor for ClientCommand);
      v48 = sub_10015BA6C(v47._countAndFlagsBits, v47._object, &v61);

      *(v41 + 23) = v48;
      _os_log_impl(&_mh_execute_header, v36, v38, "[%.*hhx-%{public}s] Sent 'C: %{public}s'", v41, 0x1Fu);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001C1C0C(v58, type metadata accessor for ClientCommand);
    }

    v31 = v34;
    v30 = type metadata accessor for ClientCommand;
  }

  return sub_1001C1C0C(v31, v30);
}

void sub_1001B7E84()
{
  v1 = _s6LoggerVMa();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1004A4E34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1004A4E54();
  v14 = (*(v9 + 88))(v12, v8);
  if (v14 == enum case for NWConnection.State.waiting(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for NWConnection.State.failed(_:))
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_7;
  }

  if (v14 == enum case for NWConnection.State.setup(_:) || v14 == enum case for NWConnection.State.preparing(_:))
  {
    goto LABEL_3;
  }

  if (v14 == enum case for NWConnection.State.ready(_:) || v14 == enum case for NWConnection.State.cancelled(_:))
  {
LABEL_7:
    v25 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v7, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v26 = sub_1004A4A54();
    v27 = sub_1004A4A74();
    (*(*(v27 - 8) + 8))(v7, v27);
    v28 = sub_1004A6004();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 68158210;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v31 = v25 + *(v1 + 20);
      *(v29 + 10) = *v31;

      *(v29 + 11) = 2082;
      v32 = ConnectionID.debugDescription.getter(*(v31 + 4));
      v34 = sub_10015BA6C(v32, v33, &v38);

      *(v29 + 13) = v34;
      _os_log_impl(&_mh_execute_header, v26, v28, "[%.*hhx-%{public}s] Ignoring restart", v29, 0x15u);
      sub_1000197E0(v30);
    }

    else
    {
    }

    return;
  }

LABEL_2:
  (*(v9 + 8))(v12, v8);
LABEL_3:
  v15 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v4, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v16 = sub_1004A4A54();
  v17 = sub_1004A4A74();
  (*(*(v17 - 8) + 8))(v4, v17);
  v18 = sub_1004A6034();
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 68158210;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = v15 + *(v1 + 20);
    *(v19 + 10) = *v21;

    *(v19 + 11) = 2082;
    v22 = ConnectionID.debugDescription.getter(*(v21 + 4));
    v24 = sub_10015BA6C(v22, v23, &v38);

    *(v19 + 13) = v24;
    _os_log_impl(&_mh_execute_header, v16, v18, "[%.*hhx-%{public}s] Restart", v19, 0x15u);
    sub_1000197E0(v20);
  }

  else
  {
  }

  sub_1004A4E74();
}

uint64_t sub_1001B8394()
{
  v1 = sub_1004A4C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4BC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  if (v14 >> 6)
  {
    if (v14 >> 6 != 1)
    {
      return 0;
    }

    v14 &= 0x3Fu;
  }

  (*(v2 + 16))(v5, v0, v1);
  if ((*(v2 + 88))(v5, v1) == enum case for NWEndpoint.hostPort(_:))
  {
    (*(v2 + 96))(v5, v1);
    v15 = *(sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40) + 48);
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v17 = sub_1004A4BF4();
    (*(*(v17 - 8) + 8))(&v5[v15], v17);
    v16(v11, v13, v6);
    if ((*(v7 + 88))(v11, v6) == enum case for NWEndpoint.Host.name(_:))
    {
      (*(v7 + 96))(v11, v6);
      v18 = *v11;
      v19 = v11[1];
      v20 = sub_10000C9C0(&qword_1005D3CC0, &qword_1004DDA48);
      sub_100025F40(v11 + *(v20 + 48), &qword_1005D3CC8, &qword_1004DDA50);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    (*(v2 + 8))(v5, v1);
  }

  return v14;
}

unint64_t sub_1001B86D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1004A4FE4();
  sub_1004A4F84();
  v2 = sub_1004A4E94();

  result = 0;
  if (v2)
  {
    sub_1004A4FD4();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1004A4FC4();
    negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v4);
    negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v4);
    if (sec_protocol_metadata_get_server_name(v4))
    {
      sub_1004A59B4();
    }

    swift_unknownObjectRelease();

    return negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16);
  }

  return result;
}

uint64_t sub_1001B87D8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D3A08);
  sub_1001C203C(v0, qword_1005D3A08);
  return sub_1004A4A64();
}

uint64_t ConnectionConfiguration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A4C04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConnectionConfiguration.endpoint.setter(uint64_t a1)
{
  v3 = sub_1004A4C04();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration() + 20));
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration();
  *(v1 + *(result + 20)) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.prohibitConstrainedPaths.modify())(IMAP2Persistence::CredentialsRequestID)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 20);
  return UInt32.init(_:);
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 20);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 24));
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration() + 24));
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

{
  v3 = *(type metadata accessor for ConnectionConfiguration() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.prohibitedInterfaceTypes.modify())(IMAP2Persistence::CredentialsRequestID)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 24);
  return UInt32.init(_:);
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 24);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.transportLayerSecurity.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration() + 28));
}

uint64_t ConnectionConfiguration.transportLayerSecurity.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration();
  *(v1 + *(result + 28)) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.transportLayerSecurity.modify())(IMAP2Persistence::CredentialsRequestID)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 28);
  return UInt32.init(_:);
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 28);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.sourceApplicationBundleIdentifier.modify())(IMAP2Persistence::CredentialsRequestID)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 32);
  return UInt32.init(_:);
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 32);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.networkAccountIdentifier.modify())(IMAP2Persistence::CredentialsRequestID)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 36);
  return UInt32.init(_:);
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 40);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.init(endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:transportLayerSecurity:sourceApplicationBundleIdentifier:networkAccountIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15[6];
  v17 = (a9 + v15[8]);
  v18 = (a9 + v15[9]);
  v19 = sub_1004A4C04();
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v15[5]) = a2;
  *(a9 + v16) = a3;
  *(a9 + v15[7]) = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  return result;
}

uint64_t static AccountConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

uint64_t sub_1001B8E3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t ConnectionConfiguration.TransportLayerSecurity.init(_:)(uint64_t result)
{
  if (result >> 6 == 1)
  {
    v1 = result & 0x3F | 0x40;
  }

  else
  {
    v1 = 128;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1001B8EC4()
{
  result = qword_1005D3A20;
  if (!qword_1005D3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3A20);
  }

  return result;
}

uint64_t sub_1001B8F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4C04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001B9008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4C04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_1001B90C0()
{
  sub_1004A4C04();
  if (v0 <= 0x3F)
  {
    sub_1001B916C();
    if (v1 <= 0x3F)
    {
      sub_1001B91D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B916C()
{
  if (!qword_1005D3A90)
  {
    sub_10000DEFC(&qword_1005D3A98, &qword_1004DD918);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3A90);
    }
  }
}

void sub_1001B91D0()
{
  if (!qword_1005D3AA0)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3AA0);
    }
  }
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.SourceApplicationKind()
{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B9388(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1001B93B4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.TransportLayerSecurity()
{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

BOOL sub_1001B9410(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (!(v3 >> 62))
  {
    if (v7 >> 62)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v3 >> 62 == 1)
  {
    if (v7 >> 62 != 1)
    {
      return 0;
    }

LABEL_6:
    if (sub_1001FCCD8(v3, a1[1], a1[2], v7, v8, v9))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || (v9 | v8) != 0)
  {
    return 0;
  }

LABEL_7:

  return sub_1001C0904(v4, v5, v6, v10, v11, v12);
}

uint64_t sub_1001B94F0()
{
  v1 = v0;
  v2 = sub_1004A4904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6LoggerVMa();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A4944();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = tracingSignposter.unsafeMutableAddressor();
  (*(v13 + 16))(v16, v17, v12);
  v30 = OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v11, _s6LoggerVMa);
  v18 = (*&v11[*(v8 + 28) + 4] << 27) | (v11[*(v8 + 28)] << 59) | 0x800000;
  sub_1004A4914();
  sub_1001C1C0C(v11, _s6LoggerVMa);
  v19 = sub_1004A4934();
  v20 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v21 = swift_slowAlloc();
    v29 = v2;
    v22 = v21;
    *v21 = 67109120;
    *(v21 + 1) = 2;
    v23 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v23, "Connection.networkStateUpdate", "%u", v22, 8u);
    v2 = v29;
  }

  (*(v3 + 8))(v6, v2);
  (*(v13 + 8))(v16, v12);
  v24 = OBJC_IVAR____TtC15IMAP2Connection10Connection_connection;
  v25 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);

  sub_1004A4CC4();

  sub_1001C1C0C(v1 + v30, _s6LoggerVMa);
  sub_1001C1C0C(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, type metadata accessor for ConnectionConfiguration);
  sub_1001AD0E0(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate);
  v26 = *(v1 + v24);

  v27 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder);

  return v1;
}

uint64_t sub_1001B9868()
{
  sub_1001B94F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B98E8()
{
  result = _s6LoggerVMa();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ConnectionConfiguration(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001B9A24()
{
  result = type metadata accessor for ClientCommand(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9A8C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v451 = a4;
  v446 = a3;
  v454 = a1;
  v5 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v432 = &v393 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v439 = &v393 - v9;
  __chkstk_darwin(v10);
  v440 = &v393 - v11;
  v435 = type metadata accessor for ConnectionEvent(0);
  v436 = *(v435 - 8);
  v12 = *(v436 + 64);
  __chkstk_darwin(v435);
  v431 = &v393 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v398 = &v393 - v15;
  __chkstk_darwin(v16);
  v429 = &v393 - v17;
  v450 = sub_1004A5214();
  v452 = *(v450 - 8);
  v18 = *(v452 + 64);
  __chkstk_darwin(v450);
  v406 = &v393 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v405 = &v393 - v21;
  __chkstk_darwin(v22);
  v413 = &v393 - v23;
  __chkstk_darwin(v24);
  v427 = &v393 - v25;
  __chkstk_darwin(v26);
  v434 = (&v393 - v27);
  __chkstk_darwin(v28);
  v424 = &v393 - v29;
  __chkstk_darwin(v30);
  v414 = &v393 - v31;
  __chkstk_darwin(v32);
  v423 = &v393 - v33;
  __chkstk_darwin(v34);
  v428 = (&v393 - v35);
  __chkstk_darwin(v36);
  v438 = (&v393 - v37);
  v38 = _s6LoggerVMa();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v396 = &v393 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v397 = &v393 - v42;
  __chkstk_darwin(v43);
  v394 = &v393 - v44;
  __chkstk_darwin(v45);
  v395 = &v393 - v46;
  __chkstk_darwin(v47);
  v402 = &v393 - v48;
  __chkstk_darwin(v49);
  v404 = &v393 - v50;
  __chkstk_darwin(v51);
  v401 = &v393 - v52;
  __chkstk_darwin(v53);
  v403 = &v393 - v54;
  __chkstk_darwin(v55);
  v411 = &v393 - v56;
  __chkstk_darwin(v57);
  v412 = &v393 - v58;
  __chkstk_darwin(v59);
  v421 = &v393 - v60;
  __chkstk_darwin(v61);
  v422 = &v393 - v62;
  __chkstk_darwin(v63);
  v399 = &v393 - v64;
  __chkstk_darwin(v65);
  v400 = &v393 - v66;
  __chkstk_darwin(v67);
  v407 = &v393 - v68;
  __chkstk_darwin(v69);
  v408 = &v393 - v70;
  __chkstk_darwin(v71);
  v410 = &v393 - v72;
  __chkstk_darwin(v73);
  v420 = &v393 - v74;
  __chkstk_darwin(v75);
  v409 = &v393 - v76;
  __chkstk_darwin(v77);
  v419 = &v393 - v78;
  __chkstk_darwin(v79);
  v417 = &v393 - v80;
  __chkstk_darwin(v81);
  v418 = &v393 - v82;
  __chkstk_darwin(v83);
  v425 = &v393 - v84;
  __chkstk_darwin(v85);
  v426 = &v393 - v86;
  __chkstk_darwin(v87);
  v415 = &v393 - v88;
  __chkstk_darwin(v89);
  v416 = &v393 - v90;
  v91 = sub_1004A4E34();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v91);
  v441 = (&v393 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v95);
  v97 = &v393 - v96;
  __chkstk_darwin(v98);
  v100 = &v393 - v99;
  v101 = sub_1004A4904();
  v444 = *(v101 - 8);
  v445 = v101;
  v102 = *(v444 + 8);
  __chkstk_darwin(v101);
  v104 = (&v393 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_1004A4944();
  v106 = *(v105 - 1);
  v107 = *(v106 + 64);
  __chkstk_darwin(v105);
  v109 = &v393 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v448 = swift_projectBox();
  v110 = tracingSignposter.unsafeMutableAddressor();
  v111 = *(v106 + 16);
  v442 = v105;
  v111(v109, v110, v105);
  v430 = v38;
  v112 = *(v38 + 20);
  v437 = a2;
  v113 = (*(a2 + v112 + 4) << 27) | (*(a2 + v112) << 59) | 0x800000;
  v443 = v104;
  sub_1004A4914();
  v114 = *(v92 + 16);
  v114(v100, v454, v91);
  v115 = sub_1004A4934();
  LODWORD(v433) = sub_1004A6154();
  v116 = sub_1004A6354();
  v453 = v92;
  v449 = v91;
  v447 = v92 + 16;
  v451 = v114;
  if ((v116 & 1) == 0)
  {
    v120 = *(v92 + 8);
    v120(v100, v91);
    v121 = v91;
    v119 = v450;
    v122 = v443;
    goto LABEL_18;
  }

  v393 = swift_slowAlloc();
  *v393 = 67109120;
  v114(v97, v100, v91);
  v117 = (*(v92 + 88))(v97, v91);
  if (v117 == enum case for NWConnection.State.waiting(_:))
  {
    v118 = 4;
    v119 = v450;
  }

  else
  {
    v119 = v450;
    if (v117 != enum case for NWConnection.State.failed(_:))
    {
      if (v117 == enum case for NWConnection.State.setup(_:))
      {
        v118 = 3;
      }

      else if (v117 == enum case for NWConnection.State.preparing(_:))
      {
        v118 = 5;
      }

      else if (v117 == enum case for NWConnection.State.ready(_:))
      {
        v118 = 6;
      }

      else
      {
        if (v117 != enum case for NWConnection.State.cancelled(_:))
        {
          v118 = 0;
          goto LABEL_7;
        }

        v118 = 8;
      }

      v124 = v449;
      v123 = v453;
      goto LABEL_17;
    }

    v118 = 7;
  }

LABEL_7:
  v123 = v453;
  v124 = v449;
  (*(v453 + 8))(v97, v449);
LABEL_17:
  v120 = *(v123 + 8);
  v120(v100, v124);
  v125 = v393;
  *(v393 + 1) = v118;
  v122 = v443;
  v126 = sub_1004A48F4();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v433, v126, "Connection.networkStateUpdate", "%u", v125, 8u);

  v121 = v124;
LABEL_18:

  (*(v444 + 1))(v122, v445);
  (*(v106 + 8))(v109, v442);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v129 = v451;
  v128 = v452;
  if (!result)
  {
    return result;
  }

  v130 = result;
  v131 = v441;
  v451(v441, v454, v121);
  v132 = v453;
  v133 = *(v453 + 88);
  v445 = v453 + 88;
  v134 = v133(v131, v121);
  v443 = v120;
  if (v134 == enum case for NWConnection.State.waiting(_:))
  {
    v446 = v130;
    (*(v132 + 96))(v131, v121);
    v135 = v438;
    (*(v128 + 32))(v438, v131, v119);
    v136 = *(v128 + 16);
    v137 = v428;
    (v136)(v428, v135, v119);
    v138 = (*(v128 + 88))(v137, v119);
    if (v138 == enum case for NWError.posix(_:))
    {
      (*(v128 + 96))(v137, v119);
      v139 = *v137;
      v140 = v128;
      v141 = v437;
      v142 = v426;
      sub_1001C1C6C(v437, v426, _s6LoggerVMa);
      v143 = v425;
      sub_1001C1C6C(v141, v425, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v144 = sub_1004A4A54();
      v145 = sub_1004A6034();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v444 = v133;
        v147 = v146;
        v148 = swift_slowAlloc();
        v455 = v148;
        *v147 = 68158466;
        *(v147 + 4) = 2;
        *(v147 + 8) = 256;
        LODWORD(v442) = v139;
        v149 = v430;
        v150 = v143;
        v151 = *(v143 + *(v430 + 20));
        sub_1001C1C0C(v150, _s6LoggerVMa);
        *(v147 + 10) = v151;
        *(v147 + 11) = 2082;
        v152 = *(v142 + *(v149 + 20) + 4);
        sub_1001C1C0C(v142, _s6LoggerVMa);
        v153 = ConnectionID.debugDescription.getter(v152);
        v155 = sub_10015BA6C(v153, v154, &v455);

        *(v147 + 13) = v155;
        *(v147 + 21) = 1024;
        *(v147 + 23) = sub_1004A4B64();
        _os_log_impl(&_mh_execute_header, v144, v145, "[%.*hhx-%{public}s] state: waiting, POSIX %{darwin.errno}d", v147, 0x1Bu);
        sub_1000197E0(v148);
        v132 = v453;

        v133 = v444;

        (*(v140 + 8))(v438, v450);
      }

      else
      {
        sub_1001C1C0C(v143, _s6LoggerVMa);

        sub_1001C1C0C(v142, _s6LoggerVMa);
        (*(v140 + 8))(v438, v119);
      }

      v215 = v440;
      v216 = v439;
      v218 = v448;
      v217 = v449;
      v129 = v451;
      goto LABEL_80;
    }

    if (v138 == enum case for NWError.dns(_:))
    {
      v177 = v437;
      v178 = v418;
      sub_1001C1C6C(v437, v418, _s6LoggerVMa);
      v179 = v417;
      sub_1001C1C6C(v177, v417, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v180 = v423;
      v442 = v136;
      (v136)(v423, v135, v119);
      v181 = sub_1004A4A54();
      v182 = sub_1004A6034();
      if (!os_log_type_enabled(v181, v182))
      {
        sub_1001C1C0C(v179, _s6LoggerVMa);

        v266 = *(v452 + 8);
        v266(v180, v119);
        sub_1001C1C0C(v178, _s6LoggerVMa);
        v266(v438, v119);
        v215 = v440;
        v216 = v439;
        v218 = v448;
        v217 = v449;
        v129 = v451;
        v132 = v453;
        goto LABEL_80;
      }

      v183 = swift_slowAlloc();
      LODWORD(v437) = v182;
      v184 = v183;
      v434 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v444 = v133;
      v441 = v185;
      v455 = v185;
      *v184 = 68158466;
      *(v184 + 4) = 2;
      *(v184 + 8) = 256;
      v186 = v430;
      v187 = v180;
      v188 = *(v179 + *(v430 + 20));
      v189 = v119;
      sub_1001C1C0C(v179, _s6LoggerVMa);
      *(v184 + 10) = v188;
      *(v184 + 11) = 2082;
      v190 = *(v178 + *(v186 + 20) + 4);
      sub_1001C1C0C(v178, _s6LoggerVMa);
      v191 = ConnectionID.debugDescription.getter(v190);
      v193 = sub_10015BA6C(v191, v192, &v455);

      *(v184 + 13) = v193;
      *(v184 + 21) = 2112;
      sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
      swift_allocError();
      (v442)(v194, v187, v119);
      v195 = sub_1004A4264();
      v196 = *(v452 + 8);
      v196(v187, v119);

      *(v184 + 23) = v195;
      v197 = v434;
      v434->isa = v195;
      _os_log_impl(&_mh_execute_header, v181, v437, "[%.*hhx-%{public}s] state: waiting, DNS %@", v184, 0x1Fu);
      sub_100025F40(v197, &qword_1005D51A0, &qword_1004D0940);
      v132 = v453;

      v198 = &v456;
    }

    else
    {
      if (v138 != enum case for NWError.tls(_:))
      {
        v281 = v437;
        sub_1001C1C6C(v437, v420, _s6LoggerVMa);
        v282 = v410;
        sub_1001C1C6C(v281, v410, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        (v136)(v424, v135, v119);
        v283 = sub_1004A4A54();
        v284 = sub_1004A6034();
        if (os_log_type_enabled(v283, v284))
        {
          v285 = swift_slowAlloc();
          LODWORD(v441) = v284;
          v286 = v285;
          v437 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          v444 = v133;
          v442 = v287;
          v455 = v287;
          *v286 = 68158466;
          *(v286 + 4) = 2;
          *(v286 + 8) = 256;
          v288 = v430;
          v289 = v424;
          v290 = *(v282 + *(v430 + 20));
          v434 = v283;
          v291 = v119;
          sub_1001C1C0C(v282, _s6LoggerVMa);
          *(v286 + 10) = v290;
          *(v286 + 11) = 2082;
          v292 = *(v420 + *(v288 + 20) + 4);
          sub_1001C1C0C(v420, _s6LoggerVMa);
          v293 = ConnectionID.debugDescription.getter(v292);
          v295 = sub_10015BA6C(v293, v294, &v455);

          *(v286 + 13) = v295;
          *(v286 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
          swift_allocError();
          (v136)(v296, v289, v119);
          v297 = sub_1004A4264();
          v298 = *(v452 + 8);
          v298(v289, v119);

          *(v286 + 23) = v297;
          v299 = v437;
          *v437 = v297;
          v300 = v434;
          _os_log_impl(&_mh_execute_header, v434, v441, "[%.*hhx-%{public}s] state: waiting, %@", v286, 0x1Fu);
          sub_100025F40(v299, &qword_1005D51A0, &qword_1004D0940);
          v132 = v453;

          sub_1000197E0(v442);
          v133 = v444;

          v298(v438, v291);
          v215 = v440;
        }

        else
        {
          sub_1001C1C0C(v282, _s6LoggerVMa);

          v298 = *(v452 + 8);
          v298(v424, v119);
          sub_1001C1C0C(v420, _s6LoggerVMa);
          v298(v438, v119);
          v215 = v440;
          v291 = v119;
        }

        v218 = v448;
        v298(v137, v291);
        v216 = v439;
        v217 = v449;
        goto LABEL_67;
      }

      v239 = v437;
      sub_1001C1C6C(v437, v419, _s6LoggerVMa);
      v240 = v409;
      sub_1001C1C6C(v239, v409, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v241 = v414;
      (v136)(v414, v135, v119);
      v181 = sub_1004A4A54();
      v242 = sub_1004A6034();
      if (!os_log_type_enabled(v181, v242))
      {
        sub_1001C1C0C(v240, _s6LoggerVMa);

        v318 = *(v452 + 8);
        v318(v241, v119);
        sub_1001C1C0C(v419, _s6LoggerVMa);
        v318(v438, v119);
        goto LABEL_62;
      }

      v243 = swift_slowAlloc();
      LODWORD(v441) = v242;
      v244 = v243;
      v437 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v444 = v133;
      v442 = v245;
      v455 = v245;
      *v244 = 68158466;
      *(v244 + 4) = 2;
      *(v244 + 8) = 256;
      v246 = v430;
      v247 = *(v240 + *(v430 + 20));
      v248 = v419;
      v189 = v119;
      sub_1001C1C0C(v240, _s6LoggerVMa);
      *(v244 + 10) = v247;
      *(v244 + 11) = 2082;
      v249 = *(v248 + *(v246 + 20) + 4);
      sub_1001C1C0C(v248, _s6LoggerVMa);
      v250 = ConnectionID.debugDescription.getter(v249);
      v252 = sub_10015BA6C(v250, v251, &v455);

      *(v244 + 13) = v252;
      *(v244 + 21) = 2112;
      sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
      swift_allocError();
      v253 = v414;
      (v136)(v254, v414, v119);
      v255 = sub_1004A4264();
      v196 = *(v452 + 8);
      v196(v253, v119);

      *(v244 + 23) = v255;
      v256 = v437;
      *v437 = v255;
      _os_log_impl(&_mh_execute_header, v181, v441, "[%.*hhx-%{public}s] state: waiting, TLS %@", v244, 0x1Fu);
      sub_100025F40(v256, &qword_1005D51A0, &qword_1004D0940);
      v132 = v453;

      v198 = &v457;
    }

    sub_1000197E0(*(v198 - 32));
    v133 = v444;

    v196(v438, v189);
LABEL_62:
    v215 = v440;
    v216 = v439;
    v218 = v448;
    v217 = v449;
LABEL_67:
    v129 = v451;
    goto LABEL_80;
  }

  if (v134 == enum case for NWConnection.State.failed(_:))
  {
    v446 = v130;
    (*(v132 + 96))(v131, v121);
    v156 = v434;
    (*(v128 + 32))(v434, v131, v119);
    v157 = (v128 + 16);
    v158 = v427;
    v159 = v156;
    v160 = *(v128 + 16);
    (v160)(v427, v159, v119);
    v161 = (*(v128 + 88))(v158, v119);
    v442 = v160;
    if (v161 == enum case for NWError.posix(_:))
    {
      (*(v128 + 96))(v158, v119);
      v162 = *v158;
      v163 = v437;
      v164 = v422;
      sub_1001C1C6C(v437, v422, _s6LoggerVMa);
      v165 = v421;
      sub_1001C1C6C(v163, v421, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v166 = sub_1004A4A54();
      v167 = sub_1004A6014();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v444 = v133;
        v169 = v168;
        v170 = swift_slowAlloc();
        v455 = v170;
        *v169 = 68158466;
        *(v169 + 4) = 2;
        *(v169 + 8) = 256;
        LODWORD(v441) = v162;
        v171 = v430;
        v172 = *(v165 + *(v430 + 20));
        sub_1001C1C0C(v165, _s6LoggerVMa);
        *(v169 + 10) = v172;
        *(v169 + 11) = 2082;
        v173 = *(v164 + *(v171 + 20) + 4);
        sub_1001C1C0C(v164, _s6LoggerVMa);
        v174 = ConnectionID.debugDescription.getter(v173);
        v176 = sub_10015BA6C(v174, v175, &v455);

        *(v169 + 13) = v176;
        *(v169 + 21) = 1024;
        *(v169 + 23) = sub_1004A4B64();
        _os_log_impl(&_mh_execute_header, v166, v167, "[%.*hhx-%{public}s] state: failed, POSIX %{darwin.errno}d", v169, 0x1Bu);
        sub_1000197E0(v170);
        v132 = v453;

        v133 = v444;
      }

      else
      {
        sub_1001C1C0C(v165, _s6LoggerVMa);

        sub_1001C1C0C(v164, _s6LoggerVMa);
      }

      v215 = v440;
      v218 = v448;
      v230 = v450;
      goto LABEL_75;
    }

    if (v161 == enum case for NWError.dns(_:))
    {
      v219 = v437;
      v220 = v412;
      sub_1001C1C6C(v437, v412, _s6LoggerVMa);
      v221 = v411;
      sub_1001C1C6C(v219, v411, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v222 = v413;
      (v160)(v413, v434, v119);
      v223 = sub_1004A4A54();
      LODWORD(v437) = sub_1004A6014();
      v438 = v223;
      if (os_log_type_enabled(v223, v437))
      {
        v224 = swift_slowAlloc();
        v428 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v444 = v133;
        v433 = v225;
        v455 = v225;
        *v224 = 68158466;
        *(v224 + 4) = 2;
        *(v224 + 8) = 256;
        v226 = v430;
        v227 = *(v430 + 20);
        v441 = v157;
        v228 = *(v221 + v227);
        v229 = v222;
        v230 = v119;
        sub_1001C1C0C(v221, _s6LoggerVMa);
        *(v224 + 10) = v228;
        *(v224 + 11) = 2082;
        v231 = *(v220 + *(v226 + 20) + 4);
        sub_1001C1C0C(v220, _s6LoggerVMa);
        v232 = ConnectionID.debugDescription.getter(v231);
        v234 = sub_10015BA6C(v232, v233, &v455);

        *(v224 + 13) = v234;
        *(v224 + 21) = 2112;
        sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
        swift_allocError();
        (v160)(v235, v229, v119);
        v236 = sub_1004A4264();
        (*(v452 + 8))(v229, v119);

        *(v224 + 23) = v236;
        v237 = v428;
        *v428 = v236;
        v238 = "[%.*hhx-%{public}s] state: failed, DNS %@";
LABEL_54:
        v280 = v438;
        _os_log_impl(&_mh_execute_header, v438, v437, v238, v224, 0x1Fu);
        sub_100025F40(v237, &qword_1005D51A0, &qword_1004D0940);
        v132 = v453;

        sub_1000197E0(v433);
        v133 = v444;

        v215 = v440;
        v218 = v448;
LABEL_75:
        v357 = v429;
        (v442)(v429, v434, v230);
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
        v358 = *(v436 + 72);
        v359 = (*(v436 + 80) + 32) & ~*(v436 + 80);
        v360 = swift_allocObject();
        *(v360 + 16) = xmmword_1004CEAA0;
        sub_1001C1C6C(v357, v360 + v359, type metadata accessor for ConnectionEvent);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1001A5A14(v360);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1001C1C0C(v429, type metadata accessor for ConnectionEvent);
        (*(v452 + 8))(v434, v450);
LABEL_79:
        v216 = v439;
        v217 = v449;
        goto LABEL_80;
      }
    }

    else
    {
      if (v161 != enum case for NWError.tls(_:))
      {
        v444 = v133;
        v319 = v437;
        v320 = v404;
        sub_1001C1C6C(v437, v404, _s6LoggerVMa);
        v321 = v402;
        sub_1001C1C6C(v319, v402, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v322 = v406;
        (v160)(v406, v434, v119);
        v323 = sub_1004A4A54();
        v324 = sub_1004A6014();
        if (os_log_type_enabled(v323, v324))
        {
          v325 = swift_slowAlloc();
          LODWORD(v438) = v324;
          v326 = v325;
          v437 = swift_slowAlloc();
          v441 = swift_slowAlloc();
          v455 = v441;
          *v326 = 68158466;
          *(v326 + 4) = 2;
          *(v326 + 8) = 256;
          v327 = v430;
          v328 = v321;
          v329 = *(v321 + *(v430 + 20));
          v330 = v322;
          v230 = v119;
          sub_1001C1C0C(v328, _s6LoggerVMa);
          *(v326 + 10) = v329;
          *(v326 + 11) = 2082;
          v331 = *(v320 + *(v327 + 20) + 4);
          sub_1001C1C0C(v320, _s6LoggerVMa);
          v332 = ConnectionID.debugDescription.getter(v331);
          v334 = sub_10015BA6C(v332, v333, &v455);

          *(v326 + 13) = v334;
          *(v326 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
          swift_allocError();
          (v160)(v335, v330, v119);
          v336 = sub_1004A4264();
          v337 = *(v452 + 8);
          v337(v330, v119);

          *(v326 + 23) = v336;
          v338 = v437;
          *v437 = v336;
          _os_log_impl(&_mh_execute_header, v323, v438, "[%.*hhx-%{public}s] state: failed, %@", v326, 0x1Fu);
          sub_100025F40(v338, &qword_1005D51A0, &qword_1004D0940);
          v132 = v453;

          sub_1000197E0(v441);

          v215 = v440;
        }

        else
        {
          sub_1001C1C0C(v321, _s6LoggerVMa);

          v337 = *(v452 + 8);
          v337(v322, v119);
          sub_1001C1C0C(v320, _s6LoggerVMa);
          v215 = v440;
          v230 = v119;
        }

        v218 = v448;
        v337(v427, v230);
        v129 = v451;
        v133 = v444;
        goto LABEL_75;
      }

      v267 = v437;
      v220 = v403;
      sub_1001C1C6C(v437, v403, _s6LoggerVMa);
      v221 = v401;
      sub_1001C1C6C(v267, v401, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v222 = v405;
      (v160)(v405, v434, v119);
      v268 = sub_1004A4A54();
      LODWORD(v437) = sub_1004A6014();
      v438 = v268;
      if (os_log_type_enabled(v268, v437))
      {
        v224 = swift_slowAlloc();
        v428 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v444 = v133;
        v433 = v269;
        v455 = v269;
        *v224 = 68158466;
        *(v224 + 4) = 2;
        *(v224 + 8) = 256;
        v270 = v430;
        v271 = *(v430 + 20);
        v441 = v157;
        v272 = *(v221 + v271);
        v273 = v222;
        v230 = v119;
        sub_1001C1C0C(v221, _s6LoggerVMa);
        *(v224 + 10) = v272;
        *(v224 + 11) = 2082;
        v274 = *(v220 + *(v270 + 20) + 4);
        sub_1001C1C0C(v220, _s6LoggerVMa);
        v275 = ConnectionID.debugDescription.getter(v274);
        v277 = sub_10015BA6C(v275, v276, &v455);

        *(v224 + 13) = v277;
        *(v224 + 21) = 2112;
        sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
        swift_allocError();
        (v160)(v278, v273, v119);
        v279 = sub_1004A4264();
        (*(v452 + 8))(v273, v119);

        *(v224 + 23) = v279;
        v237 = v428;
        *v428 = v279;
        v238 = "[%.*hhx-%{public}s] state: failed, TLS %@";
        goto LABEL_54;
      }
    }

    sub_1001C1C0C(v221, _s6LoggerVMa);

    (*(v452 + 8))(v222, v119);
    sub_1001C1C0C(v220, _s6LoggerVMa);
    v215 = v440;
    v230 = v119;
    v218 = v448;
    goto LABEL_75;
  }

  if (v134 == enum case for NWConnection.State.setup(_:))
  {
    v199 = v437;
    v200 = v416;
    sub_1001C1C6C(v437, v416, _s6LoggerVMa);
    v201 = v415;
    sub_1001C1C6C(v199, v415, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v202 = sub_1004A4A54();
    v203 = sub_1004A6004();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v444 = v133;
      v206 = v205;
      v455 = v205;
      *v204 = 68158210;
      *(v204 + 4) = 2;
      *(v204 + 8) = 256;
      v207 = v430;
      v208 = v201;
      v209 = *(v201 + *(v430 + 20));
      sub_1001C1C0C(v208, _s6LoggerVMa);
      *(v204 + 10) = v209;
      *(v204 + 11) = 2082;
      v210 = *(v200 + *(v207 + 20) + 4);
      sub_1001C1C0C(v200, _s6LoggerVMa);
      v211 = ConnectionID.debugDescription.getter(v210);
      v213 = sub_10015BA6C(v211, v212, &v455);
      v132 = v453;

      *(v204 + 13) = v213;
      v214 = "[%.*hhx-%{public}s] state: setup";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v202, v203, v214, v204, 0x15u);
      sub_1000197E0(v206);
      v133 = v444;

LABEL_47:
      v215 = v440;
      v216 = v439;
      v218 = v448;
      v217 = v449;
      goto LABEL_80;
    }

    goto LABEL_46;
  }

  if (v134 == enum case for NWConnection.State.preparing(_:))
  {
    v257 = v437;
    v200 = v408;
    sub_1001C1C6C(v437, v408, _s6LoggerVMa);
    v201 = v407;
    sub_1001C1C6C(v257, v407, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v202 = sub_1004A4A54();
    v203 = sub_1004A6004();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v444 = v133;
      v206 = v258;
      v455 = v258;
      *v204 = 68158210;
      *(v204 + 4) = 2;
      *(v204 + 8) = 256;
      v259 = v430;
      v260 = v201;
      v261 = *(v201 + *(v430 + 20));
      sub_1001C1C0C(v260, _s6LoggerVMa);
      *(v204 + 10) = v261;
      *(v204 + 11) = 2082;
      v262 = *(v200 + *(v259 + 20) + 4);
      sub_1001C1C0C(v200, _s6LoggerVMa);
      v263 = ConnectionID.debugDescription.getter(v262);
      v265 = sub_10015BA6C(v263, v264, &v455);
      v132 = v453;

      *(v204 + 13) = v265;
      v214 = "[%.*hhx-%{public}s] state: preparing";
      goto LABEL_45;
    }

LABEL_46:
    sub_1001C1C0C(v201, _s6LoggerVMa);

    sub_1001C1C0C(v200, _s6LoggerVMa);
    goto LABEL_47;
  }

  if (v134 == enum case for NWConnection.State.ready(_:))
  {
    v301 = v437;
    v302 = v400;
    sub_1001C1C6C(v437, v400, _s6LoggerVMa);
    v303 = v399;
    sub_1001C1C6C(v301, v399, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v304 = sub_1004A4A54();
    v305 = sub_1004A6034();
    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v444 = v133;
      v308 = v307;
      v455 = v307;
      *v306 = 68158210;
      *(v306 + 4) = 2;
      *(v306 + 8) = 256;
      v309 = v130;
      v310 = v430;
      v311 = v303;
      v312 = *(v303 + *(v430 + 20));
      sub_1001C1C0C(v311, _s6LoggerVMa);
      *(v306 + 10) = v312;
      *(v306 + 11) = 2082;
      v313 = *(v310 + 20);
      v130 = v309;
      v314 = *(v302 + v313 + 4);
      sub_1001C1C0C(v302, _s6LoggerVMa);
      v315 = ConnectionID.debugDescription.getter(v314);
      v317 = sub_10015BA6C(v315, v316, &v455);
      v132 = v453;

      *(v306 + 13) = v317;
      _os_log_impl(&_mh_execute_header, v304, v305, "[%.*hhx-%{public}s] state: ready", v306, 0x15u);
      sub_1000197E0(v308);
      v133 = v444;
    }

    else
    {
      sub_1001C1C0C(v303, _s6LoggerVMa);

      sub_1001C1C0C(v302, _s6LoggerVMa);
    }

    v218 = v448;
    v354 = *(v130 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    v355 = swift_allocObject();
    swift_weakInit();
    v356 = swift_allocObject();
    *(v356 + 16) = sub_1001C2148;
    *(v356 + 24) = v355;
    swift_retain_n();
    sub_1004A4D24();

    v215 = v440;
    goto LABEL_79;
  }

  if (v134 == enum case for NWConnection.State.cancelled(_:))
  {
    v339 = v437;
    v340 = v395;
    sub_1001C1C6C(v437, v395, _s6LoggerVMa);
    v341 = v394;
    sub_1001C1C6C(v339, v394, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v342 = sub_1004A4A54();
    v343 = sub_1004A5FF4();
    if (os_log_type_enabled(v342, v343))
    {
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      v444 = v133;
      v346 = v345;
      v455 = v345;
      *v344 = 68158210;
      *(v344 + 4) = 2;
      *(v344 + 8) = 256;
      v347 = v430;
      v348 = v341;
      v349 = *(v341 + *(v430 + 20));
      sub_1001C1C0C(v348, _s6LoggerVMa);
      *(v344 + 10) = v349;
      *(v344 + 11) = 2082;
      v350 = *(v340 + *(v347 + 20) + 4);
      sub_1001C1C0C(v340, _s6LoggerVMa);
      v351 = ConnectionID.debugDescription.getter(v350);
      v353 = sub_10015BA6C(v351, v352, &v455);
      v132 = v453;

      *(v344 + 13) = v353;
      _os_log_impl(&_mh_execute_header, v342, v343, "[%.*hhx-%{public}s] state: cancelled", v344, 0x15u);
      sub_1000197E0(v346);
      v133 = v444;
    }

    else
    {
      sub_1001C1C0C(v341, _s6LoggerVMa);

      sub_1001C1C0C(v340, _s6LoggerVMa);
    }

    v215 = v440;
    v388 = v448;
    v389 = v398;
    type metadata accessor for ConnectionEvent.FailureReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v390 = *(v436 + 72);
    v391 = (*(v436 + 80) + 32) & ~*(v436 + 80);
    v392 = swift_allocObject();
    *(v392 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v389, v392 + v391, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v392);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v217 = v449;
    sub_1001C1C0C(v389, type metadata accessor for ConnectionEvent);
    v216 = v439;
    v218 = v388;
  }

  else
  {
    v373 = v437;
    v374 = v397;
    sub_1001C1C6C(v437, v397, _s6LoggerVMa);
    v375 = v396;
    sub_1001C1C6C(v373, v396, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v376 = sub_1004A4A54();
    v377 = sub_1004A6014();
    if (os_log_type_enabled(v376, v377))
    {
      v378 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v444 = v133;
      v380 = v379;
      v455 = v379;
      *v378 = 68158210;
      *(v378 + 4) = 2;
      *(v378 + 8) = 256;
      v381 = v430;
      v382 = v375;
      v383 = *(v375 + *(v430 + 20));
      sub_1001C1C0C(v382, _s6LoggerVMa);
      *(v378 + 10) = v383;
      *(v378 + 11) = 2082;
      v131 = v441;
      v384 = *(v374 + *(v381 + 20) + 4);
      sub_1001C1C0C(v374, _s6LoggerVMa);
      v385 = ConnectionID.debugDescription.getter(v384);
      v387 = sub_10015BA6C(v385, v386, &v455);
      v132 = v453;

      *(v378 + 13) = v387;
      _os_log_impl(&_mh_execute_header, v376, v377, "[%.*hhx-%{public}s] state: <unknown>", v378, 0x15u);
      sub_1000197E0(v380);
      v133 = v444;
    }

    else
    {
      sub_1001C1C0C(v375, _s6LoggerVMa);

      sub_1001C1C0C(v374, _s6LoggerVMa);
    }

    v215 = v440;
    v218 = v448;
    v217 = v449;
    v443(v131, v449);
    v216 = v439;
  }

LABEL_80:
  swift_beginAccess();
  sub_10000E268(v218, v215, &qword_1005D3CD0, &qword_1004DDA58);
  if ((*(v132 + 48))(v215, 1, v217) == 1)
  {
LABEL_81:
    v361 = v132;
    v362 = v431;
    v363 = v129;
    v364 = v454;
    v365 = v217;
    v366 = v363;
    (v363)(v431);
    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v367 = *(v436 + 72);
    v368 = (*(v436 + 80) + 32) & ~*(v436 + 80);
    v369 = swift_allocObject();
    *(v369 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v362, v369 + v368, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v369);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1001C1C0C(v362, type metadata accessor for ConnectionEvent);
    v371 = v432;
    v366(v432, v364, v365);
    (*(v361 + 56))(v371, 0, 1, v365);
    v372 = v448;
    swift_beginAccess();
    sub_1001C20D8(v371, v372);
    return sub_100025F40(v215, &qword_1005D3CD0, &qword_1004DDA58);
  }

  sub_10000E268(v215, v216, &qword_1005D3CD0, &qword_1004DDA58);
  v370 = v133(v216, v217);
  if (v370 == enum case for NWConnection.State.failed(_:))
  {

    v443(v216, v217);
  }

  else
  {
    if (v370 != enum case for NWConnection.State.cancelled(_:))
    {
      v443(v216, v217);
      goto LABEL_81;
    }
  }

  return sub_100025F40(v215, &qword_1005D3CD0, &qword_1004DDA58);
}

uint64_t sub_1001BCFA4(uint64_t a1)
{
  v84 = type metadata accessor for ConnectionEvent(0);
  v86 = *(v84 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v84);
  v85 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4C94();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A51E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v73 - v16;
  __chkstk_darwin(v18);
  v88 = v73 - v19;
  __chkstk_darwin(v20);
  v90 = v73 - v21;
  __chkstk_darwin(v22);
  v24 = v73 - v23;
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v25 = sub_1004A4A74();
  sub_1001C203C(v25, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v87 = v1;
  v26 = v11;
  v27 = *(v11 + 16);
  v27(v24, a1, v10);
  v27(v90, a1, v10);
  v27(v88, a1, v10);
  v27(v17, a1, v10);
  v83 = a1;
  v27(v14, a1, v10);
  v28 = sub_1004A4A54();
  v29 = sub_1004A6034();
  if (os_log_type_enabled(v28, v29))
  {
    v77 = v29;
    v79 = v28;
    v80 = v17;
    v81 = v14;
    v30 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v96[0] = v76;
    *v30 = 68159490;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v31 = v87 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v32 = v31 + *(_s6LoggerVMa() + 20);
    *(v30 + 10) = *v32;

    *(v30 + 11) = 2082;
    v33 = ConnectionID.debugDescription.getter(*(v32 + 4));
    v35 = sub_10015BA6C(v33, v34, v96);

    *(v30 + 13) = v35;
    *(v30 + 21) = 1024;
    LODWORD(v32) = sub_1004A5184() & 1;
    v36 = *(v26 + 8);
    v36(v24, v10);
    *(v30 + 23) = v32;
    *(v30 + 27) = 2082;
    v37 = v90;
    v38 = sub_1001FA828();
    v40 = v39;
    v82 = v26 + 8;
    v75 = v36;
    v36(v37, v10);
    v41 = sub_10015BA6C(v38, v40, v96);

    *(v30 + 29) = v41;
    v78 = v30;
    *(v30 + 37) = 2082;
    v42 = v88;
    v43 = sub_1004A51B4();
    v44 = *(v43 + 16);
    v45 = v86;
    if (v44)
    {
      v74 = v10;
      v95 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v44, 0);
      v46 = v95;
      v90 = *(v92 + 16);
      v47 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v73[1] = v43;
      v48 = v43 + v47;
      v89 = *(v92 + 72);
      v92 += 16;
      v49 = (v92 - 8);
      do
      {
        v50 = v91;
        (v90)(v9, v48, v91);
        v93 = sub_1004A4C24();
        v94 = v51;
        v97._countAndFlagsBits = 10285;
        v97._object = 0xE200000000000000;
        sub_1004A5994(v97);
        v98._countAndFlagsBits = sub_1001FAC30();
        sub_1004A5994(v98);

        v99._countAndFlagsBits = 41;
        v99._object = 0xE100000000000000;
        sub_1004A5994(v99);
        v52 = v93;
        v53 = v94;
        (*v49)(v9, v50);
        v95 = v46;
        v55 = v46[2];
        v54 = v46[3];
        if (v55 >= v54 >> 1)
        {
          sub_100091A08((v54 > 1), v55 + 1, 1);
          v46 = v95;
        }

        v46[2] = v55 + 1;
        v56 = &v46[2 * v55];
        v56[4] = v52;
        v56[5] = v53;
        v48 += v89;
        --v44;
      }

      while (v44);

      v58 = v85;
      v45 = v86;
      v42 = v88;
      v10 = v74;
    }

    else
    {

      v46 = _swiftEmptyArrayStorage;
      v58 = v85;
    }

    v93 = v46;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v59 = sub_1004A5614();
    v61 = v60;

    v62 = v75;
    v75(v42, v10);
    v63 = sub_10015BA6C(v59, v61, v96);

    v64 = v78;
    *(v78 + 39) = v63;
    *(v64 + 47) = 1024;
    v65 = v80;
    LODWORD(v59) = sub_1004A5164() & 1;
    v62(v65, v10);
    *(v64 + 49) = v59;
    *(v64 + 53) = 1024;
    v66 = v81;
    LODWORD(v63) = sub_1004A5174() & 1;
    v62(v66, v10);
    *(v64 + 55) = v63;
    v67 = v79;
    _os_log_impl(&_mh_execute_header, v79, v77, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d, status: %{public}s, interfaces: %{public}s, IPv4: %{BOOL}d, IPv6: %{BOOL}d", v64, 0x3Bu);
    swift_arrayDestroy();
  }

  else
  {
    v57 = *(v26 + 8);
    v57(v14, v10);
    v57(v17, v10);
    v57(v24, v10);

    v57(v88, v10);
    v57(v90, v10);
    v58 = v85;
    v45 = v86;
  }

  v68 = _swiftEmptySetSingleton;
  v93 = _swiftEmptySetSingleton;
  if (sub_1004A5184())
  {
    sub_100201B74();
    v68 = v93;
  }

  *v58 = v68;
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v69 = *(v45 + 72);
  v70 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v58, v71 + v70, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v71);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1001C1C0C(v58, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1001BD898(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BD8FC((a1 & 1) == 0);
  }

  return result;
}

void sub_1001BD8FC(char a1)
{
  v2 = v1;
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A4A74();
  sub_1001C203C(v4, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  oslog = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 68158466;
    *(v6 + 4) = 2;
    *(v6 + 8) = 256;
    v8 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v9 = v8 + *(_s6LoggerVMa() + 20);
    *(v6 + 10) = *v9;

    *(v6 + 11) = 2082;
    v10 = ConnectionID.debugDescription.getter(*(v9 + 4));
    v12 = sub_10015BA6C(v10, v11, &v14);

    *(v6 + 13) = v12;
    *(v6 + 21) = 1024;
    *(v6 + 23) = (a1 & 1) == 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "[%.*hhx-%{public}s] Is viable: %{BOOL}d", v6, 0x1Bu);
    sub_1000197E0(v7);
  }

  else
  {
  }
}

uint64_t sub_1001BDAF4(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BDB54(a1 & 1);
  }

  return result;
}

uint64_t sub_1001BDB54(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v9 = sub_1004A4A74();
  sub_1001C203C(v9, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 68158466;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v26 = v4;
    v27 = v13;
    v14 = v5;
    v15 = a1;
    v16 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v17 = v16 + *(_s6LoggerVMa() + 20);
    *(v12 + 10) = *v17;

    *(v12 + 11) = 2082;
    v18 = ConnectionID.debugDescription.getter(*(v17 + 4));
    v20 = sub_10015BA6C(v18, v19, &v27);

    *(v12 + 13) = v20;
    *(v12 + 21) = 1024;
    v21 = v15 & 1;
    v5 = v14;
    *(v12 + 23) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Better path available: %{BOOL}d", v12, 0x1Bu);
    sub_1000197E0(v13);
  }

  else
  {

    LOBYTE(v21) = a1 & 1;
  }

  *v8 = v21;
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v22 = *(v5 + 72);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v8, v24 + v23, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v24);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1001C1C0C(v8, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1001BDE7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_1001BDEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1001BDF54(void (*a1)(char *, char *, uint64_t))
{
  v80 = a1;
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  v77 = v2;
  v78 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v79 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = _s6LoggerVMa();
  v6 = *(*(v75 - 8) + 64);
  v7 = __chkstk_darwin(v75);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v72 - v10;
  v11 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = sub_1004A5214();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v76 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - v21;
  v23 = __chkstk_darwin(v20);
  v81 = &v72 - v24;
  __chkstk_darwin(v23);
  v82 = &v72 - v25;
  v26 = sub_1004A53F4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v32 = v31;
  LOBYTE(v31) = sub_1004A5404();
  result = (*(v27 + 8))(v30, v26);
  if (v31)
  {
    *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    sub_10000E268(v80, v14, &unk_1005D54F0, &unk_1004E8DA0);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      return sub_100025F40(v14, &unk_1005D54F0, &unk_1004E8DA0);
    }

    else
    {
      v34 = v1;
      v35 = v16;
      v36 = v82;
      (*(v16 + 32))(v82, v14, v15);
      v37 = *(v16 + 16);
      v38 = v81;
      v37(v81, v36, v15);
      if ((*(v16 + 88))(v38, v15) == enum case for NWError.posix(_:) && (v37(v22, v81, v15), (*(v16 + 96))(v22, v15), *v22 == 89))
      {
        v80 = v37;
        v39 = v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        v40 = v74;
        sub_1001C1C6C(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v74, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v41 = sub_1004A4A54();
        v42 = sub_1004A4A74();
        (*(*(v42 - 8) + 8))(v40, v42);
        v43 = sub_1004A6034();
        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v83 = v45;
          *v44 = 68158210;
          *(v44 + 4) = 2;
          *(v44 + 8) = 256;
          v46 = v39 + *(v75 + 20);
          *(v44 + 10) = *v46;

          *(v44 + 11) = 2082;
          v47 = ConnectionID.debugDescription.getter(*(v46 + 4));
          v49 = sub_10015BA6C(v47, v48, &v83);

          *(v44 + 13) = v49;
          _os_log_impl(&_mh_execute_header, v41, v43, "[%.*hhx-%{public}s] Failed to send data (connection is cancelled)", v44, 0x15u);
          sub_1000197E0(v45);
        }

        else
        {
        }

        v66 = v79;
        v54 = v80;
      }

      else
      {
        v74 = v16;
        v50 = v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        sub_1001C1C6C(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v9, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v51 = v76;
        v37(v76, v82, v15);
        v52 = sub_1004A4A54();
        v53 = sub_1004A4A74();
        (*(*(v53 - 8) + 8))(v9, v53);
        v54 = v37;
        v55 = sub_1004A6014();
        if (os_log_type_enabled(v52, v55))
        {
          v56 = swift_slowAlloc();
          v80 = v54;
          v57 = v56;
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v83 = v73;
          *v57 = 68158466;
          *(v57 + 4) = 2;
          *(v57 + 8) = 256;
          v58 = v50 + *(v75 + 20);
          *(v57 + 10) = *v58;

          *(v57 + 11) = 2082;
          v59 = ConnectionID.debugDescription.getter(*(v58 + 4));
          v61 = sub_10015BA6C(v59, v60, &v83);

          *(v57 + 13) = v61;
          *(v57 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError);
          swift_allocError();
          v80(v62, v51, v15);
          v63 = sub_1004A4264();
          v64 = v74;
          (*(v74 + 8))(v51, v15);

          *(v57 + 23) = v63;
          v65 = v72;
          *v72 = v63;
          _os_log_impl(&_mh_execute_header, v52, v55, "[%.*hhx-%{public}s] Failed to send data: %@", v57, 0x1Fu);
          sub_100025F40(v65, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v73);

          v54 = v80;

          v35 = v64;
        }

        else
        {

          v35 = v74;
          (*(v74 + 8))(v51, v15);
        }

        v66 = v79;
      }

      v67 = *(v35 + 8);
      v67(v81, v15);
      v54(v66, v82, v15);
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
      v68 = *(v78 + 72);
      v69 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1004CEAA0;
      sub_1001C1C6C(v66, v70 + v69, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1001A5A14(v70);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1001C1C0C(v66, type metadata accessor for ConnectionEvent);
      v71 = *(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1004A4E64();
      return (v67)(v82, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001BE954(uint64_t a1, char a2, uint64_t a3)
{
  v5 = _s6LoggerVMa();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  if (a2)
  {
    sub_1001C1C6C(a3, &v36 - v16, _s6LoggerVMa);
    sub_1001C1C6C(a3, v15, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v18 = sub_1004A4A54();
    v19 = sub_1004A6034();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 68158210;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v22 = v15[*(v5 + 20)];
      sub_1001C1C0C(v15, _s6LoggerVMa);
      *(v20 + 10) = v22;
      *(v20 + 11) = 2082;
      v23 = *&v17[*(v5 + 20) + 4];
      sub_1001C1C0C(v17, _s6LoggerVMa);
      v24 = ConnectionID.debugDescription.getter(v23);
      v26 = sub_10015BA6C(v24, v25, &v37);

      *(v20 + 13) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Did request opportunistic STARTTLS", v20, 0x15u);
      sub_1000197E0(v21);

LABEL_6:

      return;
    }

    sub_1001C1C0C(v15, _s6LoggerVMa);

    v35 = v17;
  }

  else
  {
    sub_1001C1C6C(a3, v12, _s6LoggerVMa);
    sub_1001C1C6C(a3, v9, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v18 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v18, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 68158210;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v30 = v9[*(v5 + 20)];
      sub_1001C1C0C(v9, _s6LoggerVMa);
      *(v28 + 10) = v30;
      *(v28 + 11) = 2082;
      v31 = *&v12[*(v5 + 20) + 4];
      sub_1001C1C0C(v12, _s6LoggerVMa);
      v32 = ConnectionID.debugDescription.getter(v31);
      v34 = sub_10015BA6C(v32, v33, &v37);

      *(v28 + 13) = v34;
      _os_log_impl(&_mh_execute_header, v18, v27, "[%.*hhx-%{public}s] Did request STARTTLS", v28, 0x15u);
      sub_1000197E0(v29);

      goto LABEL_6;
    }

    sub_1001C1C0C(v9, _s6LoggerVMa);

    v35 = v12;
  }

  sub_1001C1C0C(v35, _s6LoggerVMa);
}

uint64_t sub_1001BED64(char a1)
{
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_storeEnumTagMultiPayload();
      sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
      v8 = *(v3 + 72);
      v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1004CEAA0;
      sub_1001C1C6C(v7, v10 + v9, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1001A5A14(v10);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_1001C1C0C(v7, type metadata accessor for ConnectionEvent);
    }
  }

  return result;
}

uint64_t sub_1001BEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1004A5214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    if (a1 != 1)
    {
      sub_1001BF1B8(a1);
    }

    sub_10000E268(a4, v9, &unk_1005D54F0, &unk_1004E8DA0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100025F40(v9, &unk_1005D54F0, &unk_1004E8DA0);
      v17 = *(v16 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1001C33F8;
      *(v19 + 24) = v18;
      swift_retain_n();
      sub_1004A4D24();
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      sub_1001BF7D4(v14);

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_1001BF1B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s6LoggerVMa();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if (a1)
  {
    sub_1001BF9C8(a1);
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1001C1C6C(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, &v27 - v12, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A4A74();
    (*(*(v16 - 8) + 8))(v13, v16);
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 68158210;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = v14 + *(v9 + 20);
      *(v18 + 10) = *v20;

      *(v18 + 11) = 2082;
      v21 = ConnectionID.debugDescription.getter(*(v20 + 4));
      v23 = sub_10015BA6C(v21, v22, &v28);

      *(v18 + 13) = v23;
      _os_log_impl(&_mh_execute_header, v15, v17, "[%.*hhx-%{public}s] Did complete STARTTLS", v18, 0x15u);
      sub_1000197E0(v19);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v24 = *(v5 + 72);
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v8, v26 + v25, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v26);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1001C1C0C(v8, type metadata accessor for ConnectionEvent);
  }
}

void sub_1001BF7D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A5214();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  type metadata accessor for ConnectionEvent.FailureReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v8, v12 + v11, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1001C1C0C(v8, type metadata accessor for ConnectionEvent);
  v13 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1004A4E64();
}

void sub_1001BF9C8(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D3CD8, &qword_1004DDA70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v89 = &v80 - v8;
  v88 = type metadata accessor for Response(0);
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v88);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v80 - v13;
  v91 = type metadata accessor for Response(0);
  v14 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v80 - v18;
  v92 = type metadata accessor for ConnectionEvent(0);
  v93 = *(v92 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v92);
  v85 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v84 = &v80 - v22;
  __chkstk_darwin(v23);
  v100 = (&v80 - v24);
  v99 = type metadata accessor for ResponseOrContinuationRequest(0);
  v25 = *(v99 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v99);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v81 = v9;
  v82 = v1;
  v30 = sub_1001EC224(0, v29, 0, _swiftEmptyArrayStorage);
  v94 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  v95 = v16;
  v31 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v98 = *(v25 + 72);
  do
  {
    sub_1001C1C6C(v31, v28, type metadata accessor for ResponseOrContinuationRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v101;
      sub_1001C1E74(v28, v101, type metadata accessor for Response);
      sub_1001C1C6C(v33, v16, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v102 = v30;
        v35 = *(v16 + 1);
        v34 = *(v16 + 2);
        v36 = *(v16 + 3);
        v37 = *(v16 + 4);
        v38 = v16[40];
        v104 = v36;
        v105 = v37;
        *&__dst = 0x4C54544F5248545BLL;
        *(&__dst + 1) = 0xEB000000005D4445;
        sub_10001123C(v34, v36, v37, v38);
        sub_1001C2190();

        v39 = sub_1004A6464();
        sub_10001114C(v34);
        swift_bridgeObjectRelease_n();
        if (v39)
        {
          sub_1001C04FC();
        }

        sub_100173584(v34, v36, v37, v38);
        v30 = v102;
        v16 = v95;
      }

      else
      {
        sub_1001C1C0C(v16, type metadata accessor for Response);
      }

      swift_beginAccess();
      v32 = v101;
      ServerResponseTranscoder.append(_:)(v101);
      swift_endAccess();
      sub_1001C1C0C(v32, type metadata accessor for Response);
      goto LABEL_5;
    }

    v102 = v30;
    v40 = *v28;
    v41 = *(v28 + 1);
    v42 = *(v28 + 2);
    v43 = v28[24];
    v96 = v41;
    v97 = v40;
    if ((v43 & 1) == 0)
    {

      v48 = v42;
      goto LABEL_18;
    }

    swift_beginAccess();
    v44 = *(v40 + 24) + ((v42 >> 24) & 0xFFFF00 | BYTE6(v42));
    v106 = &type metadata for UnsafeRawBufferPointer;
    v107 = &protocol witness table for UnsafeRawBufferPointer;
    v104 = v44 + v41;
    v105 = v44 + HIDWORD(v41);
    v45 = sub_10002587C(&v104, &type metadata for UnsafeRawBufferPointer);
    v41 = *v45;
    if (*v45)
    {
      v46 = v45[1];
      v47 = v46 - v41;
      if (v46 != v41)
      {
        if (v47 <= 14)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v46 - v41;
          memcpy(&__dst, v41, v46 - v41);
          v41 = __dst;
          v48 = v83 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v83 = v48;
        }

        else
        {
          v52 = sub_1004A4114();
          v53 = *(v52 + 48);
          v54 = *(v52 + 52);
          swift_allocObject();
          v55 = sub_1004A40C4();
          v56 = v55;
          if (v47 >= 0x7FFFFFFF)
          {
            sub_1004A43C4();
            v41 = swift_allocObject();
            *(v41 + 16) = 0;
            *(v41 + 24) = v47;
            v48 = v56 | 0x8000000000000000;
          }

          else
          {
            v41 = v47 << 32;
            v48 = v55 | 0x4000000000000000;
          }
        }

        goto LABEL_15;
      }

      v41 = 0;
    }

    v48 = 0xC000000000000000;
LABEL_15:
    sub_1000197E0(&v104);
LABEL_18:
    v49 = v100;
    *v100 = v41;
    v49[1] = v48;
    *(v49 + 16) = v43;
    swift_storeEnumTagMultiPayload();
    sub_100193D28(v41, v48, v43);
    v51 = v102[2];
    v50 = v102[3];
    if (v51 >= v50 >> 1)
    {
      v102 = sub_1001EC224(v50 > 1, v51 + 1, 1, v102);
    }

    sub_10018E150(v41, v48, v43);
    sub_1001C21E4(v97, v96, v42, v43);
    v30 = v102;
    v102[2] = v51 + 1;
    sub_1001C1E74(v100, v30 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v51, type metadata accessor for ConnectionEvent);
    v16 = v95;
LABEL_5:
    v31 += v98;
    --v29;
  }

  while (v29);
  swift_beginAccess();
  v57 = v89;
  v58 = v82;
  ServerResponseTranscoder.parseNext()(v89);
  v59 = v58;
  if (v58)
  {
    swift_endAccess();
  }

  else
  {
    v60 = (v81 + 48);
    while (1)
    {
      swift_endAccess();
      if ((*v60)(v57, 1, v88) == 1)
      {
        break;
      }

      v73 = v57;
      v74 = v90;
      sub_1001C1E74(v73, v90, type metadata accessor for Response);
      v75 = v74;
      v76 = v86;
      sub_1001C1C6C(v75, v86, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v59;
        v62 = *v76;
        v63 = *(v76 + 4);
        v64 = *(v76 + 8);
        v65 = *(v76 + 16);
        v66 = *(v76 + 24);
        v67 = *(v76 + 32);
        v68 = v85;
        *v85 = v64;
        v68[1] = v65;
        v68[2] = v66;
        *(v68 + 24) = v67;
        *(v68 + 28) = v62;
        *(v68 + 8) = v63;
        swift_storeEnumTagMultiPayload();
        sub_10001123C(v64, v65, v66, v67);
        v70 = v30[2];
        v69 = v30[3];
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          v30 = sub_1001EC224(v69 > 1, v70 + 1, 1, v30);
        }

        sub_100173584(v64, v65, v66, v67);
        v72 = v85;
        v59 = v61;
      }

      else
      {
        v77 = v76;
        v78 = v87;
        sub_1001C1E74(v77, v87, type metadata accessor for UntaggedResponse);
        sub_1001C1C6C(v78, v84, type metadata accessor for UntaggedResponse);
        swift_storeEnumTagMultiPayload();
        v70 = v30[2];
        v79 = v30[3];
        v71 = v70 + 1;
        if (v70 >= v79 >> 1)
        {
          v30 = sub_1001EC224(v79 > 1, v70 + 1, 1, v30);
        }

        sub_1001C1C0C(v87, type metadata accessor for UntaggedResponse);
        v72 = v84;
      }

      sub_1001C1C0C(v90, type metadata accessor for Response);
      v30[2] = v71;
      sub_1001C1E74(v72, v30 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v70, type metadata accessor for ConnectionEvent);
      swift_beginAccess();
      v57 = v89;
      ServerResponseTranscoder.parseNext()(v89);
    }

    sub_100025F40(v57, &qword_1005D3CD8, &qword_1004DDA70);
    if (v30[2] && swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v30);
      swift_unknownObjectRelease();
    }
  }
}

int64_t sub_1001C04FC()
{
  v1 = _s6LoggerVMa();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v6 = (v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo);
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo + 16))
  {
    goto LABEL_2;
  }

  v7 = *v6;
  v8 = v6[1];
  v9 = __OFSUB__(result, *v6);
  v10 = result - *v6;
  if (result >= *v6)
  {
LABEL_8:
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v7, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = __OFSUB__(0, v7 - result);
  v10 = result - v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v11 = v10 / 1000000000.0;
  if (v11 <= 20.0)
  {
    if (!__OFADD__(v8, 1))
    {
      v6[1] = v8 + 1;
      return result;
    }

    goto LABEL_22;
  }

  if (v11 >= 120.0)
  {
LABEL_2:
    *v6 = result;
    v6[1] = 1;
    *(v6 + 16) = 0;
    return result;
  }

  v12 = result;
  v13 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v4, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v14 = sub_1004A4A54();
  v15 = sub_1004A4A74();
  (*(*(v15 - 8) + 8))(v4, v15);
  v16 = sub_1004A6014();
  if (!os_log_type_enabled(v14, v16))
  {

    goto LABEL_19;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v25 = v18;
  *v17 = 68158722;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  v19 = v13 + *(v1 + 20);
  *(v17 + 10) = *v19;

  *(v17 + 11) = 2082;
  v20 = ConnectionID.debugDescription.getter(*(v19 + 4));
  v22 = sub_10015BA6C(v20, v21, &v25);

  *(v17 + 13) = v22;
  *(v17 + 21) = 2048;
  *(v17 + 23) = v8;
  *(v17 + 31) = 2048;
  v23 = round(v11);
  if (*&v23 >> 52 > 0x7FEuLL)
  {
    goto LABEL_23;
  }

  if (v23 > -9.22337204e18)
  {
    if (v23 < 9.22337204e18)
    {
      *(v17 + 33) = v23;
      _os_log_impl(&_mh_execute_header, v14, v16, "[%.*hhx-%{public}s] Connection was throttled by server (%ld commands in %ld seconds).", v17, 0x29u);
      sub_1000197E0(v18);

LABEL_19:
      result = v12;
      goto LABEL_2;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001C0814()
{
  v2 = *v0;
  sub_1001C08B0();
  v3._countAndFlagsBits = sub_1004A5A84();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);

  return 7876668;
}

unint64_t sub_1001C08B0()
{
  result = qword_1005D3CA0;
  if (!qword_1005D3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3CA0);
  }

  return result;
}

BOOL sub_1001C0904(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_1004A6D34() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

uint64_t sub_1001C099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5214();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v36 - v13);
  v15 = sub_10000C9C0(&qword_1005D3EE8, &qword_1004DDB80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v36 - v17;
  v20 = (&v36 + *(v19 + 56) - v17);
  sub_1001C1C6C(a1, &v36 - v17, type metadata accessor for ConnectionEvent.FailureReason);
  sub_1001C1C6C(a2, v20, type metadata accessor for ConnectionEvent.FailureReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001C1C6C(v18, v14, type metadata accessor for ConnectionEvent.FailureReason);
    v23 = *v14;
    v22 = v14[1];
    v24 = v14[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100191E44(v23, v22, v24);
LABEL_13:
      sub_100025F40(v18, &qword_1005D3EE8, &qword_1004DDB80);
LABEL_14:
      v26 = 0;
      return v26 & 1;
    }

    v29 = *v20;
    v30 = v20[1];
    v31 = v20[2];
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (v31 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v24 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (!v24)
      {
        if (v31)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v24 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    if (v31 < 4)
    {
      sub_100191E44(v29, v30, v31);
      v29 = v23;
      v30 = v22;
      v31 = v24;
LABEL_30:
      sub_100191E44(v29, v30, v31);
LABEL_31:
      sub_1001C1C0C(v18, type metadata accessor for ConnectionEvent.FailureReason);
      goto LABEL_14;
    }

    v32 = *v20;
    v33 = v20[1];
    v34 = v31;
    v35 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
    sub_100191E44(v32, v33, v34);
    sub_100191E44(v23, v22, v24);
    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    sub_1001C1C0C(v18, type metadata accessor for ConnectionEvent.FailureReason);
    v26 = 1;
    return v26 & 1;
  }

  sub_1001C1C6C(v18, v11, type metadata accessor for ConnectionEvent.FailureReason);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(v11, v4);
    goto LABEL_13;
  }

  v25 = v37;
  (*(v37 + 32))(v7, v20, v4);
  v26 = sub_1004A5204();
  v27 = *(v25 + 8);
  v27(v7, v4);
  v27(v11, v4);
  sub_1001C1C0C(v18, type metadata accessor for ConnectionEvent.FailureReason);
  return v26 & 1;
}

uint64_t sub_1001C0DE8(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v98 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4E34();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  __chkstk_darwin(v9);
  v95 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionEvent(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v94 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = (&v93 - v16);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  __chkstk_darwin(v20);
  v22 = &v93 - v21;
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  __chkstk_darwin(v29);
  v31 = &v93 - v30;
  v32 = sub_10000C9C0(&qword_1005D3EF0, &qword_1004DDB88);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v93 - v34;
  v37 = (&v93 + *(v36 + 56) - v34);
  sub_1001C1C6C(v100, &v93 - v34, type metadata accessor for ConnectionEvent);
  v38 = a2;
  v39 = v37;
  sub_1001C1C6C(v38, v37, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v41 = v31;
    v42 = v28;
    v44 = v95;
    v43 = v96;
    v45 = v97;
    v46 = v98;
    v47 = v99;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v48 = v41;
        sub_1001C1C6C(v35, v41, type metadata accessor for ConnectionEvent);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v43 + 8))(v48, v45);
          goto LABEL_38;
        }

        v86 = v43;
        (*(v43 + 32))(v44, v39, v45);
        v50 = sub_1004A4E24();
        v87 = *(v86 + 8);
        v87(v44, v45);
        v87(v48, v45);
        goto LABEL_41;
      }

      v66 = v42;
      sub_1001C1C6C(v35, v42, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1001C1C0C(v66, type metadata accessor for ConnectionEvent.FailureReason);
        goto LABEL_38;
      }

      sub_1001C1E74(v37, v46, type metadata accessor for ConnectionEvent.FailureReason);
      v50 = sub_1001C099C(v66, v46);
      sub_1001C1C0C(v46, type metadata accessor for ConnectionEvent.FailureReason);
      v51 = v66;
      v52 = type metadata accessor for ConnectionEvent.FailureReason;
LABEL_23:
      sub_1001C1C0C(v51, v52);
LABEL_41:
      v88 = v35;
LABEL_42:
      sub_1001C1C0C(v88, type metadata accessor for ConnectionEvent);
      return v50 & 1;
    }

    v49 = v37;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001C1C6C(v35, v25, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1001C1C0C(v25, type metadata accessor for UntaggedResponse);
        goto LABEL_38;
      }

      sub_1001C1E74(v37, v47, type metadata accessor for UntaggedResponse);
      v50 = static UntaggedResponse.__derived_enum_equals(_:_:)(v25, v47);
      sub_1001C1C0C(v47, type metadata accessor for UntaggedResponse);
      v51 = v25;
      v52 = type metadata accessor for UntaggedResponse;
      goto LABEL_23;
    }

    sub_1001C1C6C(v35, v22, type metadata accessor for ConnectionEvent);
    v67 = *v22;
    v68 = *(v22 + 1);
    v69 = *(v22 + 2);
    v70 = v22[24];
    v71 = v22[28];
    v72 = *(v22 + 8);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100173584(v67, v68, v69, v70);
      goto LABEL_38;
    }

    v100 = v35;
    v74 = *v37;
    v73 = v37[1];
    v75 = v37[2];
    v76 = *(v49 + 24);
    v77 = *(v49 + 28);
    v78 = *(v49 + 8);
    if (v70)
    {
      if (v70 == 1)
      {
        if (v76 == 1)
        {
          LODWORD(v99) = v77;
          v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
          sub_100173584(v74, v73, v75, 1u);
          v80 = v67;
          v81 = v68;
          v82 = v69;
          v83 = 1;
          goto LABEL_50;
        }

LABEL_58:
        sub_100173584(v74, v73, v75, v76);
        sub_100173584(v67, v68, v69, v70);
        goto LABEL_59;
      }

      if (v76 != 2)
      {
        goto LABEL_58;
      }

      LODWORD(v99) = v77;
      v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
      sub_100173584(v74, v73, v75, 2u);
      v80 = v67;
      v81 = v68;
      v82 = v69;
      v83 = 2;
    }

    else
    {
      if (v76)
      {
        goto LABEL_58;
      }

      LODWORD(v99) = v77;
      v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
      sub_100173584(v74, v73, v75, 0);
      v80 = v67;
      v81 = v68;
      v82 = v69;
      v83 = 0;
    }

LABEL_50:
    sub_100173584(v80, v81, v82, v83);
    if (v79)
    {
      v50 = v71 == v99 && v72 == v78;
      v88 = v100;
      goto LABEL_42;
    }

LABEL_59:
    sub_1001C1C0C(v100, type metadata accessor for ConnectionEvent);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v53 = v37;
    if (EnumCaseMultiPayload == 4)
    {
      sub_1001C1C6C(v35, v19, type metadata accessor for ConnectionEvent);
      v55 = *v19;
      v54 = *(v19 + 1);
      v56 = v19[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_10018E150(v55, v54, v56);
        goto LABEL_38;
      }

      v58 = *v37;
      v57 = v37[1];
      v59 = *(v53 + 16);
      if (v56)
      {
        if (v53[2])
        {
          v60 = sub_10003A194(v55, v54, *v53, v53[1]);
          sub_10018E150(v58, v57, 1);
          v61 = v55;
          v62 = v54;
          v63 = 1;
LABEL_64:
          sub_10018E150(v61, v62, v63);
          if (v60)
          {
            goto LABEL_30;
          }

LABEL_65:
          sub_1001C1C0C(v35, type metadata accessor for ConnectionEvent);
          goto LABEL_39;
        }
      }

      else if ((v53[2] & 1) == 0)
      {
        if (v55 == v58 && v54 == v57)
        {
          sub_10018E150(v55, v54, 0);
          sub_10018E150(v55, v54, 0);
          goto LABEL_30;
        }

        v91 = *v53;
        v92 = v53[1];
        v60 = sub_1004A6D34();
        sub_10018E150(v58, v57, 0);
        v61 = v55;
        v62 = v54;
        v63 = 0;
        goto LABEL_64;
      }

      sub_10018E150(*v53, v53[1], v56 ^ 1);
      sub_10018E150(v55, v54, v56);
      goto LABEL_65;
    }

    v84 = v93;
    sub_1001C1C6C(v35, v93, type metadata accessor for ConnectionEvent);
    v85 = *v84;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      goto LABEL_38;
    }

    v50 = sub_100083010(v85, *v37);

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
LABEL_30:
      sub_1001C1C0C(v35, type metadata accessor for ConnectionEvent);
      v50 = 1;
      return v50 & 1;
    }

LABEL_38:
    sub_100025F40(v35, &qword_1005D3EF0, &qword_1004DDB88);
LABEL_39:
    v50 = 0;
    return v50 & 1;
  }

  v64 = v94;
  sub_1001C1C6C(v35, v94, type metadata accessor for ConnectionEvent);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_38;
  }

  v65 = *v64 ^ *v37;
  sub_1001C1C0C(v35, type metadata accessor for ConnectionEvent);
  v50 = v65 ^ 1;
  return v50 & 1;
}

uint64_t sub_1001C1804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OutboundContent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_10000C9C0(&qword_1005D3CA8, &unk_1004DDA20);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v20 = &v35 + *(v19 + 56) - v17;
  sub_1001C1C6C(a1, &v35 - v17, type metadata accessor for OutboundContent);
  sub_1001C1C6C(a2, v20, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001C1C6C(v18, v14, type metadata accessor for OutboundContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001C1E74(v20, v7, type metadata accessor for ClientCommand);
      v29 = static ClientCommand.__derived_enum_equals(_:_:)(v14, v7);
      sub_1001C1C0C(v7, type metadata accessor for ClientCommand);
      sub_1001C1C0C(v14, type metadata accessor for ClientCommand);
      sub_1001C1C0C(v18, type metadata accessor for OutboundContent);
      return v29 & 1;
    }

    sub_1001C1C0C(v14, type metadata accessor for ClientCommand);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_100025F40(v18, &qword_1005D3CA8, &unk_1004DDA20);
LABEL_14:
    v29 = 0;
    return v29 & 1;
  }

  sub_1001C1C6C(v18, v11, type metadata accessor for OutboundContent);
  v23 = *v11;
  v22 = *(v11 + 1);
  v24 = v11[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10018E150(v23, v22, v24);
    goto LABEL_13;
  }

  v26 = *v20;
  v25 = *(v20 + 1);
  v27 = v20[16];
  if ((v24 & 1) == 0)
  {
    if ((v20[16] & 1) == 0)
    {
      if (v23 == v26 && v22 == v25)
      {
        sub_10018E150(v23, v22, 0);
        sub_10018E150(v23, v22, 0);
      }

      else
      {
        v32 = *v20;
        v33 = *(v20 + 1);
        v34 = sub_1004A6D34();
        sub_10018E150(v26, v25, 0);
        sub_10018E150(v23, v22, 0);
        if ((v34 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_11;
    }

LABEL_18:
    sub_10018E150(*v20, *(v20 + 1), v24 ^ 1);
    sub_10018E150(v23, v22, v24);
LABEL_19:
    sub_1001C1C0C(v18, type metadata accessor for OutboundContent);
    goto LABEL_14;
  }

  if ((v20[16] & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = sub_10003A194(v23, v22, *v20, *(v20 + 1));
  sub_10018E150(v26, v25, 1);
  sub_10018E150(v23, v22, 1);
  if ((v28 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_1001C1C0C(v18, type metadata accessor for OutboundContent);
  v29 = 1;
  return v29 & 1;
}