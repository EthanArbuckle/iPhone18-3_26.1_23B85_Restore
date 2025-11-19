char *sub_10023786C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D5A30, &qword_1004E9210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1002379DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100237BD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D5A18, &qword_1004E91F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100237CF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_100237DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1002380E0(Swift::Int result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_100237DFC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10023842C();
      goto LABEL_47;
    }

    sub_10023856C(v5 + 1);
  }

  v7 = 0x72657865646E69;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  result = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = 0x6C69662D6B636162;
    v13 = 0x6369646F69726570;
    v14 = v8;
    do
    {
      v15 = *(*(v8 + 48) + a2);
      if (v15 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v16 = v12;
        }

        else
        {
          v16 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v17 = 0xE90000000000006CLL;
        }

        else
        {
          v17 = 0xE700000000000000;
        }
      }

      else if (v15 == 2)
      {
        v17 = 0xE800000000000000;
        v16 = 0x6574616E6F646572;
      }

      else
      {
        if (v15 == 3)
        {
          v16 = v13;
        }

        else
        {
          v16 = 1752397168;
        }

        if (v15 == 3)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      v18 = v13;
      if (v33 == 3)
      {
        v19 = v13;
      }

      else
      {
        v19 = 1752397168;
      }

      if (v33 == 3)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v33 == 2)
      {
        v19 = 0x6574616E6F646572;
        v20 = 0xE800000000000000;
      }

      v21 = v7;
      v22 = v12;
      if (!v33)
      {
        v12 = v7;
      }

      v23 = 0xE90000000000006CLL;
      if (!v33)
      {
        v23 = 0xE700000000000000;
      }

      v24 = v33 <= 1u ? v12 : v19;
      v25 = v33 <= 1u ? v23 : v20;
      if (v16 == v24 && v17 == v25)
      {
        goto LABEL_50;
      }

      v26 = sub_1004A6D34();

      if (v26)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v11;
      v7 = v21;
      v12 = v22;
      v13 = v18;
      v8 = v14;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void *sub_10023842C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10023856C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100238820(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100238AB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 16);
      v38 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v38;
      *(v17 + 16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100238D64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_100238FE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionStatus(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
  v44 = a2;
  result = sub_1004A6A64();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 16 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100223820(v31, v45);
      }

      else
      {
        sub_10023A230(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v29 | (v29 << 32));
      result = sub_1004A6F14();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 16 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      result = sub_100223820(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_100239320()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100239484()
{
  v1 = v0;
  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002395F8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100239744()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
  v5 = *v0;
  v6 = sub_1004A6A54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 48) + 16 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10023A230(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = *(v33 + 48) + v22;
        *v29 = v24;
        *(v29 + 8) = v25;
        sub_100223820(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10023997C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100239C2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100239A0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  result = sub_1004A6A74();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v28 = *(*(v4 + 56) + 8 * v16);
    v18 = *(v9 + 40);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100239C2C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v16 = *(*(a3 + 48) + 4 * v15);
      v17 = *(a4 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v16);
      result = sub_1004A6F14();
      v18 = -1 << *(a4 + 32);
      v19 = result & ~v18;
      if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a4 + 48) + 4 * v19) != v16)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_100239A0C(v23, a2, v24, a3);
        }
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100239A0C(v23, a2, v24, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100239DDC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v9);
    bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_100239C2C(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_10023997C(v13, v7, a1, a2);

  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_100239F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;

  v7 = sub_100239DDC(v6, a1);

  *v3 = v7;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(a1 + 48) + ((v12 << 8) | (4 * v14)));
    if (v7[2])
    {
      sub_10024FDC4(v15);
      if (v16)
      {
        continue;
      }
    }

    v32 = a2;
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v33 = *v3;
    v20 = sub_10024FDC4(v15);
    v22 = *(v19 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v26 = v21;
    if (*(v19 + 24) >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v28 = v20;
      sub_1002395F8();
      v20 = v28;
      a2 = v32;
      v7 = v33;
      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      *(v7[7] + 8 * v20) = a2;
      *v3 = v7;
    }

    else
    {
      sub_100238D64(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10024FDC4(v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

LABEL_16:
      a2 = v32;
      v7 = v33;
      if (v26)
      {
        goto LABEL_17;
      }

LABEL_19:
      v7[(v20 >> 6) + 8] |= 1 << v20;
      *(v7[6] + 4 * v20) = v15;
      *(v7[7] + 8 * v20) = a2;
      v29 = v7[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v7[2] = v30;
      *v3 = v7;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10023A1BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEBD4();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10008854C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10023A230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (**static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(Swift::String *a1, uint64_t a2, uint64_t a3, int a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), uint64_t (*a9)(void, uint64_t (*)(uint64_t a1, char a2), uint64_t), uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v41 = a2;
  v42 = a8;
  v47 = a7;
  v45 = a3;
  v46 = a6;
  v43 = a4;
  v44 = a5;
  v38 = a11;
  v39 = a12;
  v36 = a9;
  v37 = a10;
  v13 = type metadata accessor for Configuration();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v35 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1004A6164();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = sub_1004A6074();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023A628();
  v50 = *a1;
  v48 = 0xD00000000000001BLL;
  v49 = 0x80000001004AC790;
  sub_1004A5994(v50);
  (*(v19 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  v48 = _swiftEmptyArrayStorage;
  sub_10023A674();
  sub_10000C9C0(&qword_1005D5A58, &unk_1004E9230);
  sub_10023A6CC();
  sub_1004A6544();
  v23 = sub_1004A6174();
  type metadata accessor for EngineBox();
  v24 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();

  v25 = EngineTracingIDOwner.init()();
  v26 = v36(*(v25 + 16), sub_10023A7C4, v24);
  v27 = swift_allocObject();
  v28 = v39;
  v27[2] = v38;
  v27[3] = v28;
  v27[4] = v26;
  v29 = v35;
  sub_10023A840(a1, v35);
  v30 = *(v40 + 48);
  v31 = *(v40 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v32 = v41;

  v33 = sub_10022B944(v25, v29, v32, v45, v43 & 1, v44 & 0x101FF, v46, v47, v42, v23, sub_10023A808, v27);

  swift_weakAssign();

  return v33;
}

unint64_t sub_10023A628()
{
  result = qword_1005D5A50;
  if (!qword_1005D5A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5A50);
  }

  return result;
}

unint64_t sub_10023A674()
{
  result = qword_1005D91D0;
  if (!qword_1005D91D0)
  {
    sub_1004A6164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D91D0);
  }

  return result;
}

unint64_t sub_10023A6CC()
{
  result = qword_1005D91E0;
  if (!qword_1005D91E0)
  {
    sub_10000DEFC(&qword_1005D5A58, &unk_1004E9230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D91E0);
  }

  return result;
}

uint64_t sub_10023A754(uint64_t a1, char a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Engine.persistenceDidSend(_:)(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10023A7D0()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023A808(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_10023A840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023A8A4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10023A8DC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture))
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);

  StateCapture.tearDown()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

  RestartableTimer.stop()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

  RestartableTimer.stop()();

  v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v1 = *(v1 + v13);
  if (v1 >> 62)
  {
LABEL_22:
    v14 = sub_1004A6A34();
    goto LABEL_8;
  }

  v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_1004A6794();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = *(v1 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_17;
        }
      }

      (*(*v16 + 536))();

      ++v15;
    }

    while (v17 != v14);
  }
}

uint64_t sub_10023AB80(uint64_t a1)
{
  v4 = v1;
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_1004A53F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v17 = v16;
  v18 = sub_1004A5404();
  v20 = *(v11 + 8);
  v19 = v11 + 8;
  v20(v15, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v4 + v21, v9, &qword_1005D5968, &unk_1004E9180);
  v22 = sub_1004A4A74();
  v3 = *(v22 - 8);
  result = (*(v3 + 48))(v9, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_retain_n();

    v18 = sub_1004A4A54();
    v2 = sub_1004A5FF4();
    v24 = &unk_1005D5000;
    if (!os_log_type_enabled(v18, v2))
    {

      goto LABEL_8;
    }

    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 68158722;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    *(v19 + 10) = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v19 + 11) = 2048;
    v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v26 = *(v4 + v25);
    if (v26 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004A6A34())
    {

      *(v19 + 13) = i;

      *(v19 + 21) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v30 = sub_10015BA6C(v28, v29, &v40);

      *(v19 + 23) = v30;
      *(v19 + 31) = 2048;
      v32 = (*(*a1 + 432))(v31);

      *(v19 + 33) = v32;

      _os_log_impl(&_mh_execute_header, v18, v2, "[%.*hhx] Received authenticated connection with better path. Cancelling all (%ld) existing connection and switching to the new connection %{public}s [C%llu].", v19, 0x29u);
      sub_1000197E0(v39);

      v24 = &unk_1005D5000;
LABEL_8:
      v33 = *(v3 + 8);
      v3 += 8;
      v33(v9, v22);
      v19 = v24[353];
      swift_beginAccess();
      v9 = *(v4 + v19);
      if (v9 >> 62)
      {
LABEL_22:
        v22 = sub_1004A6A34();
        if (!v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_17;
        }
      }

      if (v22 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    for (j = 0; j != v22; ++j)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v35 = sub_1004A6794();
      }

      else
      {
        v35 = *(v9 + 8 * j + 32);
      }

      (*(*v35 + 536))();
    }

LABEL_17:
    swift_beginAccess();

    sub_1004A5BF4();
    if (*((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1004A5C44();
    }

    sub_1004A5C84();
    swift_endAccess();
    result = (*(*a1 + 624))(v4, &off_1005A9CB8);
    if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
    {
      v36 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

      RestartableTimer.start()();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023B180(char a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v47[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v47[-v13];
  result = __chkstk_darwin(v12);
  v17 = &v47[-v16];
  v18 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) <= 1u)
  {
    if (!*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState))
    {
      return result;
    }

    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v2 + v19, v17, &qword_1005D5968, &unk_1004E9180);
    v20 = sub_1004A4A74();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v17, 1, v20);
    if (result == 1)
    {
      goto LABEL_29;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A6034();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 68157952;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] Credentials were invalid. Credentials did change.", v24, 0xBu);
    }

    else
    {
    }

    v36 = *(v21 + 8);
    v37 = v17;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 2)
  {
    v31 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v2 + v31, v11, &qword_1005D5968, &unk_1004E9180);
    v20 = sub_1004A4A74();
    v32 = *(v20 - 8);
    result = (*(v32 + 48))(v11, 1, v20);
    if (result == 1)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v33 = sub_1004A4A54();
    v34 = sub_1004A6034();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 68157952;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      *(v35 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx] Credentials state was unknown. Credentials did change.", v35, 0xBu);
    }

    else
    {
    }

    v36 = *(v32 + 8);
    v37 = v11;
LABEL_19:
    v36(v37, v20);
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v2 + v25, v14, &qword_1005D5968, &unk_1004E9180);
  v26 = sub_1004A4A74();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v14, 1, v26);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v28 = sub_1004A4A54();
  v29 = sub_1004A6034();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 68157952;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    *(v30 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx] Credentials were maybe invalid. Credentials did change.", v30, 0xBu);
  }

  else
  {
  }

  (*(v27 + 8))(v14, v26);
LABEL_20:
  v38 = static MonotonicTime.now()();
  v39 = *v18;
  *v18 = 0;
  *(v18 + 8) = v38;
  sub_10023C770(v39);
  if ((a1 & 1) == 0)
  {
    v46 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
    swift_beginAccess();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    sub_1002414F4();
    return sub_100241B8C();
  }

  v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v2 + v40, v8, &qword_1005D5968, &unk_1004E9180);
  v41 = sub_1004A4A74();
  v42 = *(v41 - 8);
  result = (*(v42 + 48))(v8, 1, v41);
  if (result == 1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v43 = sub_1004A4A54();
  v44 = sub_1004A6034();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 68157952;
    *(v45 + 4) = 2;
    *(v45 + 8) = 256;
    *(v45 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx] Not resetting backoff timer.", v45, 0xBu);
  }

  else
  {
  }

  return (*(v42 + 8))(v8, v41);
}

uint64_t sub_10023B8B4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1004A6A34();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1004A6794();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

int64_t sub_10023B9D0()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v10 = *(v9 + 17);
  *(v9 + 17) = 0;
  if (v10 != 1)
  {
    return swift_endAccess();
  }

  if (*(v9 + 16))
  {
    swift_endAccess();
    v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v11, v6, &qword_1005D5968, &unk_1004E9180);
    v12 = sub_1004A4A74();
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v6, 1, v12);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v15 = sub_1004A4A54();
      v16 = sub_1004A6034();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 68157952;
        *(v17 + 4) = 2;
        *(v17 + 8) = 256;
        *(v17 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx] Did clear wait-until-visible back-off.", v17, 0xBu);
      }

      else
      {
      }

      return (*(v13 + 8))(v6, v12);
    }

    goto LABEL_22;
  }

  v18 = *(v9 + 8);
  result = static MonotonicTime.now()();
  v19 = __OFSUB__(v18, result);
  v20 = v18 - result;
  if (v18 >= result)
  {
LABEL_12:
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = result - v18;
  if (__OFSUB__(result, v18))
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = __OFSUB__(0, v21);
  v20 = v18 - result;
  if (__OFSUB__(0, v21))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  swift_endAccess();
  v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v22, v8, &qword_1005D5968, &unk_1004E9180);
  v23 = sub_1004A4A74();
  v24 = *(v23 - 8);
  result = (*(v24 + 48))(v8, 1, v23);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v25 = sub_1004A4A54();
  v26 = sub_1004A6034();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v20 / 1000000000.0;
    v28 = swift_slowAlloc();
    *v28 = 68158464;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    *(v28 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v28 + 11) = 1040;
    *(v28 + 13) = 1;
    *(v28 + 17) = 2048;
    *(v28 + 19) = v27;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx] Did clear wait-until-visible back-off. Still backed-off for another %.*f seconds.", v28, 0x1Bu);
  }

  else
  {
  }

  return (*(v24 + 8))(v8, v23);
}

uint64_t sub_10023BE20(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits;
  v4 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = a1;

  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v7 < 0)
  {
    v14 = *(v2 + v5);
  }

  result = sub_1004A6A34();
  v8 = result;
  if (result)
  {
LABEL_3:
    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1004A6794();
        }

        else
        {
          v10 = *(v7 + 8 * v9 + 32);
        }

        ++v9;
        v11 = *(v2 + v3);
        v12 = *(*v10 + 336);

        v12(v13);
      }

      while (v8 != v9);
    }
  }

  return result;
}

uint64_t sub_10023BF68(IMAP2Helpers::MonotonicTime a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = MonotonicTime.rateLimit(now:seconds:)(a1, 1.0);
  result = swift_endAccess();
  if (v4)
  {
    v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = sub_1004A6A34();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_1004A6794();
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        CommandConnection.logState()();
      }
    }
  }

  return result;
}

uint64_t sub_10023C098()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23[-v4];
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = sub_100242860();
    if (!ConnectionIDsGroupedByState.containsActivelyConnecting.getter(v14))
    {
LABEL_8:
      v21 = static MonotonicTime.now()();
      v22 = ConnectionLimitsAndUsage.connectionsToBeCancelled(_:)(v14);

      swift_beginAccess();
      sub_100239F8C(v22, v21);
      swift_endAccess();

      return sub_100242B58(v21);
    }

    v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v15, v5, &qword_1005D5968, &unk_1004E9180);
    v16 = sub_1004A4A74();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v5, 1, v16);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v18 = sub_1004A4A54();
      v19 = sub_1004A6004();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 68157952;
        *(v20 + 4) = 2;
        *(v20 + 8) = 256;
        *(v20 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx] Some connections are actively connecting.", v20, 0xBu);
      }

      else
      {
      }

      (*(v17 + 8))(v5, v16);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10023C400@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = sub_1004A53F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = sub_1004A5404();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_10000E268(v1 + v18, v7, &qword_1005CCEB0, &qword_1004E9140);
    v19 = type metadata accessor for ConnectionStatus.Error(0);
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v7, 1, v19) == 1)
    {
      sub_1002406BC(v9);
      if (v21(v7, 1, v19) != 1)
      {
        sub_100025F40(v7, &qword_1005CCEB0, &qword_1004E9140);
      }
    }

    else
    {
      sub_10024DDB8(v7, v9, type metadata accessor for ConnectionStatus.Error);
      (*(v20 + 56))(v9, 0, 1, v19);
    }

    if (v21(v9, 1, v19) == 1)
    {
      sub_100025F40(v9, &qword_1005CCEB0, &qword_1004E9140);
      v22 = 1;
    }

    else
    {
      v23 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff);
      swift_beginAccess();
      v24 = *v23;
      sub_100240A70(v23[1], *(v23 + 16), a1);
      sub_10024DD58(v9, type metadata accessor for ConnectionStatus.Error);
      v22 = 0;
    }

    return (*(v20 + 56))(a1, v22, 1, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023C770(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v25 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v9 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  if (v9 == v2)
  {
    return result;
  }

  if (v9 == 1)
  {
    if (v2 != 2)
    {
      goto LABEL_10;
    }

    v9 = 1;
LABEL_8:
    if (v9 == v2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v9 != 2)
  {
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    v9 = 2;
LABEL_13:
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v10, v7, &qword_1005D5968, &unk_1004E9180);
    v11 = sub_1004A4A74();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v7, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = v1;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v14 = sub_1004A4A54();
      v15 = sub_1004A6034();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 68158210;
        *(v16 + 4) = 2;
        *(v16 + 8) = 256;
        *(v16 + 10) = *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        v18 = 0xE400000000000000;
        *(v16 + 11) = 2082;
        v19 = 1685024615;
        v20 = 0xED000064696C6176;
        v21 = 0x6E6920656279616DLL;
        if (v9 != 2)
        {
          v21 = 0x6E776F6E6B6E75;
          v20 = 0xE700000000000000;
        }

        if (v9)
        {
          v19 = 0x64696C61766E69;
          v18 = 0xE700000000000000;
        }

        if (v9 <= 1)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v9 <= 1)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v24 = sub_10015BA6C(v22, v23, &v25);

        *(v16 + 13) = v24;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx] Credentials state -> %{public}s", v16, 0x15u);
        sub_1000197E0(v17);
      }

      else
      {
      }

      return (*(v12 + 8))(v7, v11);
    }

    return result;
  }

LABEL_10:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002302B4();
    result = swift_unknownObjectRelease();
  }

  v9 = *(v1 + v8);
  if (v9 != v2)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10023CAD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v5 = *(result + 40);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v6(v7 | 0xA000000000000006);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023CB7C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    sub_10023CC34(v7);

    v3 = sub_10024DE20();
    result = swift_allocObject();
    v4 = v7[3];
    *(result + 48) = v7[2];
    *(result + 64) = v4;
    *(result + 80) = v8;
    v5 = v7[1];
    *(result + 16) = v7[0];
    *(result + 32) = v5;
    v6 = &type metadata for ConnectionPool.CapturedValue;
  }

  else
  {
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v6;
  a1[4] = v3;
  return result;
}

uint64_t sub_10023CC34@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v71 = &v60 - v12;
  v13 = sub_1004A53F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = sub_1004A5404();
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v17, v13);
  if (v20)
  {
    v68 = v5;
    v69 = v4;
    v21 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
    v17 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);
    *&v77[0] = 0;
    *(&v77[0] + 1) = 0xE000000000000000;
    v76 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10014F900();

    v23 = sub_1004A5A84();
    v25 = v24;
    if (sub_1004A5924() <= 1)
    {
      v79._countAndFlagsBits = 48;
      v79._object = 0xE100000000000000;
      sub_1004A5994(v79);
    }

    v80._countAndFlagsBits = v23;
    v80._object = v25;
    sub_1004A5994(v80);

    v4 = *(&v77[0] + 1);
    v18 = *&v77[0];
    v26 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v70 = v2;
    v5 = *(v2 + v26);
    if (!(v5 >> 62))
    {
      v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1004A6A34();
LABEL_6:
  v28 = _swiftEmptyArrayStorage;
  v65 = v21;
  v66 = v4;
  v67 = v18;
  if (v27)
  {
    v62 = v17;
    v75 = _swiftEmptyArrayStorage;

    result = sub_10024AB84(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v61 = a1;
    v30 = 0;
    v28 = v75;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        sub_1004A6794();
      }

      else
      {
        v31 = *(v5 + 8 * v30 + 32);
      }

      CommandConnection.capturedValue.getter(v77);

      v75 = v28;
      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        sub_10024AB84((v32 > 1), v33 + 1, 1);
        v28 = v75;
      }

      ++v30;
      v28[2] = v33 + 1;
      v34 = &v28[27 * v33];
      v35 = v77[1];
      *(v34 + 2) = v77[0];
      *(v34 + 3) = v35;
      v36 = v77[2];
      v37 = v77[3];
      v38 = v77[5];
      *(v34 + 6) = v77[4];
      *(v34 + 7) = v38;
      *(v34 + 4) = v36;
      *(v34 + 5) = v37;
      v39 = v77[6];
      v40 = v77[7];
      v41 = v77[9];
      *(v34 + 10) = v77[8];
      *(v34 + 11) = v41;
      *(v34 + 8) = v39;
      *(v34 + 9) = v40;
      v42 = v77[10];
      v43 = v77[11];
      v44 = v77[12];
      *(v34 + 240) = v78;
      *(v34 + 13) = v43;
      *(v34 + 14) = v44;
      *(v34 + 12) = v42;
    }

    while (v27 != v30);

    a1 = v61;
    v17 = v62;
  }

  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v46 = v70;
  swift_beginAccess();
  v47 = v71;
  sub_10000E268(v46 + v45, v71, &qword_1005CCEB0, &qword_1004E9140);
  v48 = 0;
  v49 = 0;
  if ((*(v68 + 48))(v47, 1, v69) != 1)
  {
    v50 = v47;
    v51 = v64;
    sub_10024DDB8(v50, v64, type metadata accessor for ConnectionStatus.Error);
    sub_10024DECC(v51, v63, type metadata accessor for ConnectionStatus.Error);
    v48 = sub_1004A5804();
    v49 = v52;
    sub_10024DD58(v51, type metadata accessor for ConnectionStatus.Error);
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  v53 = *(v46 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  if (v53 > 1)
  {
    v54 = v65;
    if (v53 == 2)
    {
      v55 = 0xED000064696C6176;
      v56._countAndFlagsBits = 0x6E6920656279616DLL;
    }

    else
    {
      v55 = 0xE700000000000000;
      v56._countAndFlagsBits = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v54 = v65;
    if (v53)
    {
      v55 = 0xE700000000000000;
      v56._countAndFlagsBits = 0x64696C61766E69;
    }

    else
    {
      v55 = 0xE400000000000000;
      v56._countAndFlagsBits = 1685024615;
    }
  }

  v56._object = v55;
  sub_1004A5994(v56);

  sub_1004A5994(v72);

  v57 = v73;
  v58 = v74;
  *a1 = v54;
  a1[1] = v17;
  v59 = v66;
  a1[2] = v67;
  a1[3] = v59;
  a1[4] = v28;
  a1[5] = v48;
  a1[6] = v49;
  a1[7] = v57;
  a1[8] = v58;
  return result;
}

uint64_t sub_10023D23C()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
      {

        RestartableTimer.stop()();
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1004A6A34();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = static MonotonicTime.now()();
  result = sub_100249160(v11);
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F9AC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10023D40C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v6, v5, &qword_1005D5968, &unk_1004E9180);
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v10 = sub_1004A4A54();
    v11 = sub_1004A6034();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx] Timer fired: checking for idle connections to cancel.", v12, 0xBu);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
    v13 = static MonotonicTime.now()();
    return sub_100242B58(v13);
  }

  return result;
}

uint64_t sub_10023D62C()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v1 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v8 = *(v0 + v1);
    if (!(v8 >> 62))
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
      {

        RestartableTimer.stop()();
      }

LABEL_21:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1004A6A34();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = *(v0 + v1);
  if (v10 >> 62)
  {
    result = sub_1004A6A34();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_1004A6794();
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    CommandConnection.collectDataTransferReport()();
  }
}

uint64_t sub_10023D850()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    if (v1)
    {
      RestartableTimer.start()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10023D8CC()
{
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) == 1)
  {
    sub_100025F40(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, &qword_1005D5968, &unk_1004E9180);

    v1 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);

    sub_10024DD58(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
    v2 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections);

    sub_1001AD0E0(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine);
    v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

    v4 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    sub_100025F40(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError, &qword_1005CCEB0, &qword_1004E9140);
    v5 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);

    v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents);

    v7 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);

    v8 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);

    v10 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);

    v11 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023DA34()
{
  sub_10023D8CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConnectionPool()
{
  result = qword_1005D5BB0;
  if (!qword_1005D5BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10023DAE0()
{
  sub_10023DCDC(319, &qword_1005D5BC0, &type metadata accessor for Logger);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ConnectionConfiguration();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10023DCDC(319, &qword_1005D5BC8, type metadata accessor for ConnectionStatus.Error);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10023DCDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10023DD30(uint64_t a1, NSObject *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = sub_10023F2AC(a1, a2, a3, a4);
  if (v25)
  {
    return 0;
  }

  v26 = v24;
  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v28 = *(v5 + v27);
  v72 = v27;
  if ((v28 & 0xC000000000000001) == 0)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 8 * v26 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v29 = sub_1004A6794();
LABEL_6:
  swift_endAccess();
  v73 = (*(*v29 + 560))(a1);
  v31 = v30;

  if (v31)
  {
    v32 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v5 + v32, v21, &qword_1005D5968, &unk_1004E9180);
    v33 = sub_1004A4A74();
    v23 = *(v33 - 8);
    result = (*(v23 + 6))(v21, 1, v33);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10024DECC(a1, v14, type metadata accessor for ClientCommand);

    a2 = sub_1004A4A54();
    v35 = sub_1004A5FF4();

    if (!os_log_type_enabled(a2, v35))
    {

      sub_10024DD58(v14, type metadata accessor for ClientCommand);
      goto LABEL_22;
    }

    LODWORD(v71) = v35;
    v73 = v33;
    v16 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74 = v70;
    *v16 = 68158466;
    *(v16 + 1) = 2;
    *(v16 + 4) = 256;
    v36 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    v16[10] = v36;

    *(v16 + 11) = 2082;
    v37 = ClientCommand.logIdentifier.getter();
    v39 = v38;
    sub_10024DD58(v14, type metadata accessor for ClientCommand);
    v40 = sub_10015BA6C(v37, v39, &v74);

    *(v16 + 13) = v40;
    *(v16 + 21) = 2082;
    v41 = v72;
    result = swift_beginAccess();
    v42 = *(v5 + v41);
    if ((v42 & 0xC000000000000001) == 0)
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v26 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v43 = *(v42 + 8 * v26 + 32);

LABEL_13:
          swift_endAccess();
          v44 = *(v43 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

          v45 = ConnectionID.debugDescription.getter(v44);
          v47 = sub_10015BA6C(v45, v46, &v74);

          *(v16 + 23) = v47;
          _os_log_impl(&_mh_execute_header, a2, v71, "[%.*hhx] Failed to send command '%{public}s' on connection %{public}s", v16, 0x1Fu);
          swift_arrayDestroy();

          v33 = v73;
LABEL_22:
          (*(v23 + 1))(v21, v33);
          return 0;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    v43 = sub_1004A6794();
    goto LABEL_13;
  }

  v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v5 + v48, v23, &qword_1005D5968, &unk_1004E9180);
  v49 = sub_1004A4A74();
  v50 = *(v49 - 8);
  result = (*(v50 + 48))(v23, 1, v49);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10024DECC(a1, v16, type metadata accessor for ClientCommand);

  v51 = sub_1004A4A54();
  v52 = sub_1004A5FF4();

  if (os_log_type_enabled(v51, v52))
  {
    LODWORD(v70) = v52;
    v71 = v49;
    v53 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v53 = 68158722;
    *(v53 + 4) = 2;
    *(v53 + 8) = 256;
    v54 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v53 + 10) = v54;

    *(v53 + 11) = 2082;
    v55 = Tag.debugDescription.getter(v73 & 0xFFFFFFFF000000FFLL);
    v57 = sub_10015BA6C(v55, v56, &v74);

    *(v53 + 13) = v57;
    *(v53 + 21) = 2082;
    v58 = ClientCommand.logIdentifier.getter();
    v60 = v59;
    sub_10024DD58(v16, type metadata accessor for ClientCommand);
    v61 = sub_10015BA6C(v58, v60, &v74);

    *(v53 + 23) = v61;
    *(v53 + 31) = 2082;
    v62 = v72;
    result = swift_beginAccess();
    v63 = *(v5 + v62);
    if ((v63 & 0xC000000000000001) != 0)
    {
      v64 = sub_1004A6794();
      v49 = v71;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v49 = v71;
      if (v26 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v64 = *(v63 + 8 * v26 + 32);
    }

    swift_endAccess();
    v65 = *(v64 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v66 = ConnectionID.debugDescription.getter(v65);
    v68 = sub_10015BA6C(v66, v67, &v74);

    *(v53 + 33) = v68;
    _os_log_impl(&_mh_execute_header, v51, v70, "[%.*hhx] Sent command '%{public}s %{public}s' on connection %{public}s", v53, 0x29u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10024DD58(v16, type metadata accessor for ClientCommand);
  }

  (*(v50 + 8))(v23, v49);
  return v73;
}

uint64_t sub_10023E5A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - v7;
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v51 = v2;
  v10 = *(v2 + v9);
  if (v10 >> 62)
  {
    goto LABEL_44;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return 0;
  }

  while (2)
  {
    v49 = v9;
    v50 = v8;

    v8 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004A6794();
      }

      else
      {
        if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v12 = *(v10 + 32 + 8 * v8);
      }

      v13 = (*(*v12 + 608))();
      if (!v13)
      {
        goto LABEL_22;
      }

      if (v14 != a2)
      {
        v9 = a2;

        goto LABEL_23;
      }

      v15 = *(v13 + 16);
      if (v15 == *(a1 + 16))
      {
        break;
      }

LABEL_21:

LABEL_22:

LABEL_23:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_42;
      }

      if (v8 == v11)
      {

        return 0;
      }
    }

    if (v15)
    {
      v16 = v13 == a1;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = 32;
      while (v15)
      {
        if (*(v13 + v17) != *(a1 + v17))
        {
          goto LABEL_21;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v11 = sub_1004A6A34();
      if (!v11)
      {
        return 0;
      }

      continue;
    }

    break;
  }

LABEL_27:

  v20 = v49;
  v21 = v51;
  swift_beginAccess();
  v22 = *(v21 + v20);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = sub_1004A6794();
    v23 = v50;
LABEL_30:
    swift_endAccess();
    LODWORD(v50) = *(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v21 + v25, v23, &qword_1005D5968, &unk_1004E9180);
    v26 = sub_1004A4A74();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v23, 1, v26);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v28 = sub_1004A4A54();
      v29 = sub_1004A6034();

      v48 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v47 = v26;
        v31 = a2;
        v32 = v30;
        v46 = swift_slowAlloc();
        v52[0] = v46;
        *v32 = 68158723;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        *(v32 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v32 + 11) = 2082;
        v33 = ConnectionID.debugDescription.getter(v50);
        v35 = sub_10015BA6C(v33, v34, v52);
        v21 = v51;

        *(v32 + 13) = v35;
        *(v32 + 21) = 2160;
        *(v32 + 23) = 0x786F626C69616DLL;
        *(v32 + 31) = 2085;
        v52[1] = a1;
        v53 = v31;
        v26 = v47;

        v36 = sub_1004A5824();
        v38 = sub_10015BA6C(v36, v37, v52);

        *(v32 + 33) = v38;
        _os_log_impl(&_mh_execute_header, v28, v48, "[%.*hhx] Closing connection %{public}s for mailbox '%{sensitive,mask.mailbox}s'.", v32, 0x29u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v27 + 8))(v23, v26);
      result = swift_beginAccess();
      v39 = *(v21 + v20);
      if ((v39 & 0xC000000000000001) != 0)
      {
        goto LABEL_48;
      }

      if (v8 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v39 + 8 * v8 + 32);

        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v23 = v50;
    if (v8 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v22 + 8 * v8 + 32);

      goto LABEL_30;
    }

    __break(1u);
LABEL_48:
    v40 = sub_1004A6794();
LABEL_37:
    v41 = swift_endAccess();
    v42 = (*(*v40 + 576))(v41);

    result = swift_beginAccess();
    v43 = *(v21 + v20);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = sub_1004A6794();
      goto LABEL_40;
    }

    if (v8 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v43 + 8 * v8 + 32);

LABEL_40:
      v45 = swift_endAccess();
      (*(*v44 + 536))(v45);

      return v42;
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10023EBF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_1004A53F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = sub_1004A5404();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
  {
    __break(1u);
    goto LABEL_41;
  }

  v17 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);

  RestartableTimer.start()();

  v18 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  LOBYTE(v18) = *(v18 + 17);
  result = static MonotonicTime.now()();
  if ((v18 & 1) != 0 || !(v20 & 1 | (result >= v19)))
  {
    v37 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
    swift_beginAccess();
    v38 = static MonotonicTime.now()();
    if (*(v37 + 8))
    {
      goto LABEL_20;
    }

    v39 = *v37;
    v40 = __OFSUB__(v38, *v37);
    v41 = v38 - *v37;
    if (v38 >= *v37)
    {
LABEL_18:
      if (!v40)
      {
        goto LABEL_19;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v39, v38))
    {
      v40 = __OFSUB__(0, v39 - v38);
      v41 = v38 - v39;
      if (!v40)
      {
LABEL_19:
        if (v41 < *(v37 + 16))
        {
          return swift_endAccess();
        }

LABEL_20:
        *v37 = v38;
        *(v37 + 8) = 0;
        sub_100240D10(v4);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = sub_10023F898();
    if ((result & 1) == 0)
    {
      sub_10023F5EC();
      v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v22 = *(v4 + v3);
      if (!(v22 >> 62))
      {
        result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= a2)
        {
          return result;
        }

        goto LABEL_9;
      }

LABEL_34:
      result = sub_1004A6A34();
      if (result >= a2)
      {
        return result;
      }

LABEL_9:
      v23 = sub_10024AFFC(v4, v4);
      v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(v4 + v24, v9, &qword_1005D5968, &unk_1004E9180);
      v25 = sub_1004A4A74();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v9, 1, v25) != 1)
      {
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v27 = sub_1004A4A54();
        v28 = sub_1004A6034();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v50 = v25;
          v30 = v29;
          v49 = swift_slowAlloc();
          v51 = v49;
          *v30 = 68158466;
          *(v30 + 4) = 2;
          *(v30 + 8) = 256;
          v31 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v30 + 10) = v31;

          *(v30 + 11) = 2082;
          v32 = ConnectionID.debugDescription.getter(*(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v34 = sub_10015BA6C(v32, v33, &v51);

          *(v30 + 13) = v34;
          *(v30 + 21) = 2048;
          v36 = (*(*v23 + 432))(v35);

          *(v30 + 23) = v36;

          _os_log_impl(&_mh_execute_header, v27, v28, "[%.*hhx] Did create connection %{public}s [C%llu]", v30, 0x1Fu);
          sub_1000197E0(v49);

          v25 = v50;
        }

        else
        {
        }

        (*(v26 + 8))(v9, v25);
        swift_beginAccess();

        sub_1004A5BF4();
        if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1004A5C44();
        }

        sub_1004A5C84();
        v42 = swift_endAccess();
        (*(*v23 + 528))(v42);
        if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
        {
          v43 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

          RestartableTimer.start()();

          v44 = *(v4 + v3);
          if (v44 >> 62)
          {
            if (v44 < 0)
            {
              v47 = *(v4 + v3);
            }

            if (sub_1004A6A34() == 1)
            {
              goto LABEL_29;
            }
          }

          else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
LABEL_29:
            Strong = swift_unknownObjectWeakLoadStrong();

            if (Strong)
            {
              *(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 1;
              return swift_unknownObjectRelease();
            }

            return result;
          }
        }

LABEL_42:
        __break(1u);
        result = swift_endAccess();
        __break(1u);
        return result;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t sub_10023F2AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v32 = a2;
  v33 = a1;
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v31 - v10;
  sub_10023F5EC();
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v5 + v12, v11, &qword_1005D5968, &unk_1004E9180);
  v13 = sub_1004A4A74();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v11, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31[3] = a4;
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v16 = sub_1004A4A54();
    v17 = sub_1004A5FF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a3;
      v19 = swift_slowAlloc();
      *v19 = 68158208;
      *(v19 + 4) = 2;
      *(v19 + 8) = 256;
      v20 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v19 + 10) = v20;

      *(v19 + 11) = 2048;
      v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v22 = *(v5 + v21);
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v30 = *(v5 + v21);
        }

        v23 = sub_1004A6A34();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 13) = v23;

      _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx] Pool has %ld connections.", v19, 0x15u);

      a3 = v18;
    }

    else
    {
    }

    (*(v14 + 8))(v11, v13);
    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    v25 = swift_beginAccess();
    v26 = *(v5 + v24);
    __chkstk_darwin(v25);
    *&v31[-4] = v33;

    v27 = sub_10023B8B4(sub_10024DA5C, &v31[-8], v26);
    v29 = v28;

    if (v29)
    {
      sub_10023EBF0(v32, a3);
    }

    return v27;
  }

  return result;
}

uint64_t sub_10023F5EC()
{
  v23 = type metadata accessor for ConnectionState();
  v1 = *(*(v23 - 8) + 64);
  v2 = __chkstk_darwin(v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v24 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
LABEL_23:
    v9 = sub_1004A6A34();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v20 = v7;
    v21 = v0;
    v10 = 0;
    v22 = v8 & 0xC000000000000001;
    v7 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22)
      {
        v11 = sub_1004A6794();
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v17 = v24;
          v7 = v20;
          v0 = v21;
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      v0 = v11;
      (*(*v11 + 304))();
      sub_10024DDB8(v6, v4, type metadata accessor for ConnectionState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {

        sub_10024DD58(v4, type metadata accessor for ConnectionState);
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      ++v10;
      if (v12 == v9)
      {
        goto LABEL_19;
      }
    }

    sub_10024DD58(v4, type metadata accessor for ConnectionState);
LABEL_15:
    v0 = &v24;
    sub_1004A6814();
    v14 = v8;
    v15 = v9;
    v16 = v24[2];
    sub_1004A68A4();
    v9 = v15;
    v8 = v14;
    sub_1004A68B4();
    sub_1004A6834();
    goto LABEL_6;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_21:

  v18 = *(v0 + v7);
  *(v0 + v7) = v17;
}

uint64_t sub_10023F898()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9 >> 62)
  {
LABEL_19:
    v10 = sub_1004A6A34();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004A6794();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_15;
        }
      }

      (*(*v12 + 304))();

      sub_10024DDB8(v7, v5, type metadata accessor for ConnectionState);
      v14 = 1 << swift_getEnumCaseMultiPayload();
      if ((v14 & 0xC) != 0)
      {
        sub_10024DD58(v5, type metadata accessor for ConnectionState);
      }

      else if ((v14 & 0x30) == 0)
      {

        sub_10024DD58(v5, type metadata accessor for ConnectionState);
        return 1;
      }

      ++v11;
    }

    while (v13 != v10);
  }

  return 0;
}

uint64_t sub_10023FAD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v13 = *(a2 + v12);
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v14 = *(v13 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = sub_1004A6794();
LABEL_5:
  swift_endAccess();
  v15 = (*(*v14 + 616))(a3, a4);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  result = swift_beginAccess();
  v17 = *(a2 + v12);
  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v18 = *(v17 + 8 * a1 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:
  v18 = sub_1004A6794();
LABEL_10:
  swift_endAccess();
  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(a2 + v19, v11, &qword_1005D5968, &unk_1004E9180);
  v20 = sub_1004A4A74();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v11, 1, v20);
  if (result != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v22 = sub_1004A4A54();
    v23 = sub_1004A5FF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v24 = 68158723;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v24 + 11) = 2160;
      *(v24 + 13) = 0x786F626C69616DLL;
      *(v24 + 21) = 2085;
      v33 = a3;
      v34 = a4;

      v25 = sub_1004A5824();
      v27 = sub_10015BA6C(v25, v26, &v35);

      *(v24 + 23) = v27;
      *(v24 + 31) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v30 = sub_10015BA6C(v28, v29, &v35);

      *(v24 + 33) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] Will select mailbox '%{sensitive,mask.mailbox}s' on connection %{public}s for new mailbox affinity.", v24, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v21 + 8))(v11, v20);
    return v18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10023FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = &v48 - v5;
  v6 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v48 - v8;
  v9 = sub_1004A5214();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A4E34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = type metadata accessor for ConnectionState();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ConnectionStatus(0);
  v24 = *(v55 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v55);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_10024DECC(a1, v23, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10024DD58(v53, type metadata accessor for ConnectionState);
        v29 = v55;
        swift_storeEnumTagMultiPayload();
        sub_10024DD58(v23, type metadata accessor for ConnectionState);
LABEL_17:
        v31 = v54;
LABEL_18:
        sub_10024DDB8(v27, v31, type metadata accessor for ConnectionStatus);
        v30 = 0;
        return (*(v24 + 56))(v31, v30, 1, v29);
      }

      memcpy(v56, v23, 0x162uLL);
      v43 = AuthenticatedState.mailboxSelection.getter();
      v45 = v44;
      sub_1001ACFCC(v56);
      sub_10024DD58(v53, type metadata accessor for ConnectionState);
      if (BYTE4(v45))
      {
        v31 = v54;
        if (BYTE4(v45) == 1)
        {
          *v27 = v43;
          *(v27 + 2) = v45;
        }

        v29 = v55;
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      *v27 = v43;
      *(v27 + 2) = v45;
      v29 = v55;
    }

    else
    {
      v32 = v13;
      (*(v13 + 32))(v19, v23, v12);
      (*(v13 + 16))(v17, v19, v12);
      if ((*(v13 + 88))(v17, v12) != enum case for NWConnection.State.waiting(_:))
      {
        sub_10024DD58(v53, type metadata accessor for ConnectionState);
        v46 = *(v13 + 8);
        v46(v19, v12);
        v29 = v55;
        swift_storeEnumTagMultiPayload();
        v46(v17, v12);
        goto LABEL_17;
      }

      (*(v13 + 96))(v17, v12);
      v33 = v49;
      v34 = v52;
      v35 = v17;
      v36 = v50;
      (*(v49 + 32))(v52, v35, v50);
      v37 = v48;
      v38 = v34;
      v39 = v36;
      (*(v33 + 16))(v48, v38, v36);
      v40 = type metadata accessor for ConnectionStatus.Error.Details(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
      v41 = sub_1004A44E4();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v37, v42, v27);
      sub_10024DD58(v53, type metadata accessor for ConnectionState);
      (*(v33 + 8))(v52, v39);
      (*(v32 + 8))(v19, v12);
      v29 = v55;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10024DD58(v53, type metadata accessor for ConnectionState);
    sub_10024DD58(v23, type metadata accessor for ConnectionState);
    v30 = 1;
    v31 = v54;
    v29 = v55;
  }

  else
  {
    v29 = v55;
    sub_10024DD58(v53, type metadata accessor for ConnectionState);
    v30 = 1;
    v31 = v54;
  }

  return (*(v24 + 56))(v31, v30, 1, v29);
}

uint64_t sub_1002405FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**a1 + 304))(v6);
  return sub_10023FF00(v8, a2);
}

uint64_t sub_1002406BC@<X0>(_BYTE *a1@<X8>)
{
  v29 = a1;
  v1 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  v18 = sub_1004A5214();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100241DB4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100025F40(v17, &unk_1005D54F0, &unk_1004E8DA0);
    v23 = 1;
    v24 = v29;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    (*(v19 + 16))(v9, v22, v18);
    swift_storeEnumTagMultiPayload();
    sub_10024DDB8(v9, v13, type metadata accessor for ConnectionStatus.Error.Details);
    (*(v6 + 56))(v13, 0, 1, v5);
    v25 = sub_1004A44E4();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    v24 = v29;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v13, v4, v29);
    (*(v19 + 8))(v22, v18);
    v23 = 0;
  }

  v26 = type metadata accessor for ConnectionStatus.Error(0);
  return (*(*(v26 - 8) + 56))(v24, v23, 1, v26);
}

uint64_t sub_100240A70@<X0>(uint64_t a1@<X1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_1004A44E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v28 - v22;
  if (a2)
  {
    (*(v13 + 56))(&v28 - v22, 1, 1, v12);
LABEL_10:
    v26 = *v4;
    v27 = type metadata accessor for ConnectionStatus.Error(0);
    sub_10000E268(&v4[*(v27 + 20)], v11, &qword_1005D55B8, &unk_1004F2790);
    sub_10000E268(v23, v21, &qword_1005D0F20, &qword_1004E9390);
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v26, v11, v21, a3);
    return sub_100025F40(v23, &qword_1005D0F20, &qword_1004E9390);
  }

  v24 = static MonotonicTime.now()();
  result = sub_1004A44D4();
  if (v24 > a1)
  {
    if (__OFSUB__(v24, a1))
    {
      __break(1u);
      goto LABEL_12;
    }

    if (!__OFSUB__(0, v24 - a1))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!__OFSUB__(a1, v24))
  {
LABEL_9:
    sub_1004A4474();
    (*(v13 + 8))(v16, v12);
    (*(v13 + 56))(v23, 0, 1, v12);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100240D10(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(a1 + v6, v5, &qword_1005D5968, &unk_1004E9180);
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v10 = sub_1004A4A54();
    v11 = sub_1004A6034();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68158208;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      v13 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v12 + 10) = v13;

      *(v12 + 11) = 2048;
      v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      *(v12 + 13) = *(a1 + v14);

      _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx] Backed off (failure count %ld). Not creating a new connection.", v12, 0x15u);
    }

    else
    {
    }

    return (*(v8 + 8))(v5, v7);
  }

  return result;
}

uint64_t sub_100240F68(uint64_t (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v30 - v6;
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v12 = v13;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = v8[13];
  (v15)(v12, enum case for DispatchPredicate.onQueue(_:), v7, v10);
  v16 = v13;
  v17 = sub_1004A5404();
  v18 = v8[1];
  result = v18(v12, v7);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    *v12 = v16;
    v15(v12, v14, v7);
    v27 = v16;
    v28 = sub_1004A5404();
    result = v18(v12, v7);
    if (v28)
    {
      v29 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID);
      *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = v29 + 1;
      sub_100230548(v29, v31, v32);
      return swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v21 = v30;
  sub_10000E268(v3 + v20, v30, &qword_1005D5968, &unk_1004E9180);
  v22 = sub_1004A4A74();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v24 = sub_1004A4A54();
  v25 = sub_1004A6014();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 68157952;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    *(v26 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx] Current credentials are invalid.", v26, 0xBu);
  }

  else
  {
  }

  (*(v23 + 8))(v21, v22);
  return v31(_swiftEmptyArrayStorage);
}

uint64_t sub_100241314(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100230828(a1, a2);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100241460(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100230AFC(a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

int64_t sub_1002414F4()
{
  v1 = v0;
  v2 = sub_1004A5234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1004A53B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v36 - v16);
  v18 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  if (*(v18 + 16))
  {
    swift_beginAccess();
    sub_10000E268(v1 + v19, v15, &qword_1005D5968, &unk_1004E9180);
    v20 = sub_1004A4A74();
    v2 = *(v20 - 8);
    result = (*(v2 + 48))(v15, 1, v20);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v17 = sub_1004A4A54();
      v22 = sub_1004A6034();
      if (os_log_type_enabled(v17, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 68157952;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        *(v23 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v17, v22, "[%.*hhx] Cancelling backoff timer.", v23, 0xBu);

LABEL_13:
        (*(v2 + 8))(v15, v20);
        v29 = *(**(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);

        v29(v30);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v38 = v8;
  v39 = v7;
  v40 = *(v18 + 8);
  swift_beginAccess();
  sub_10000E268(v1 + v19, v17, &qword_1005D5968, &unk_1004E9180);
  v24 = sub_1004A4A74();
  v20 = *(v24 - 8);
  result = (*(v20 + 48))(v17, 1, v24);
  if (result != 1)
  {
    v37 = v3;
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v25 = sub_1004A4A54();
    v15 = sub_1004A6034();
    if (!os_log_type_enabled(v25, v15))
    {

LABEL_17:
      (*(v20 + 8))(v17, v24);
      v31 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

      v32 = v41;
      DispatchTime.init(_:)(v40);
      v33 = swift_allocObject();
      swift_weakInit();
      *v6 = 100;
      v34 = v37;
      (*(v37 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v2);
      v35 = *(*v31 + 200);

      v35(v32, v6, sub_10024DB5C, v33);

      (*(v34 + 8))(v6, v2);
      (*(v38 + 8))(v32, v39);
    }

    v36 = v2;
    v26 = swift_slowAlloc();
    *v26 = 68158464;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v26 + 10) = v27;

    *(v26 + 11) = 2048;
    result = static MonotonicTime.now()();
    v28 = v40 - result;
    if (v40 >= result)
    {
      v2 = v36;
      if (!__OFSUB__(v40, result))
      {
LABEL_16:
        *(v26 + 13) = v28 / 1000000000.0;
        *(v26 + 21) = 2048;
        *(v26 + 23) = *v18;

        _os_log_impl(&_mh_execute_header, v25, v15, "[%.*hhx] Setting up backoff timer for %f s (count %ld) from now.", v26, 0x1Fu);

        goto LABEL_17;
      }
    }

    else
    {
      if (!__OFSUB__(result, v40))
      {
        v28 = v40 - result;
        v2 = v36;
        if (__OFSUB__(0, result - v40))
        {
          __break(1u);
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100241B8C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v6, v5, &qword_1005D5968, &unk_1004E9180);
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v10 = sub_1004A4A54();
    v11 = sub_1004A5FF4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx] Backoff timer has expired. Re-trying.", v12, 0xBu);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F130(_swiftEmptyArrayStorage);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100241DB4@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v92 = &v89 - v7;
  __chkstk_darwin(v6);
  v96 = &v89 - v8;
  v9 = sub_1004A4E34();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v97 = &v89 - v15;
  v16 = __chkstk_darwin(v14);
  v99 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v98 = &v89 - v19;
  __chkstk_darwin(v18);
  v104 = &v89 - v20;
  v21 = type metadata accessor for ConnectionState();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v89 - v28;
  __chkstk_darwin(v27);
  v31 = &v89 - v30;
  v32 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v105 = *(v1 + v32);
  v33 = v105;
  v94 = v32;
  v95 = v1;
  if (v105 >> 62)
  {
    v87 = sub_1004A6A34();
    v33 = v105;
    v34 = v87;
  }

  else
  {
    v34 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = _swiftEmptyArrayStorage;
  v100 = v31;
  v101 = v21;
  if (v34)
  {
    v106 = _swiftEmptyArrayStorage;
    v36 = v33;

    result = sub_10024AB20(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v38 = 0;
    v35 = v106;
    v39 = v36 & 0xC000000000000001;
    v40 = v36;
    do
    {
      if (v39)
      {
        v41 = sub_1004A6794();
      }

      else
      {
        v41 = *(v40 + 8 * v38 + 32);
      }

      (*(*v41 + 304))();

      v106 = v35;
      v43 = v35[2];
      v42 = v35[3];
      if (v43 >= v42 >> 1)
      {
        sub_10024AB20(v42 > 1, v43 + 1, 1);
        v35 = v106;
      }

      ++v38;
      v35[2] = v43 + 1;
      sub_10024DDB8(v29, v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v43, type metadata accessor for ConnectionState);
      v40 = v105;
    }

    while (v34 != v38);

    v31 = v100;
  }

  v44 = v35[2];
  v45 = v102;
  if (v44)
  {
    v46 = v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v47 = *(v22 + 72);
    v48 = (v103 + 32);
    v49 = _swiftEmptyArrayStorage;
    v105 = v47;
    do
    {
      sub_10024DECC(v46, v31, type metadata accessor for ConnectionState);
      sub_10024DDB8(v31, v26, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10024DD58(v26, type metadata accessor for ConnectionState);
      }

      else
      {
        v50 = *v48;
        v51 = v99;
        (*v48)(v99, v26, v45);
        v52 = v49;
        v53 = v98;
        v50(v98, v51, v45);
        v54 = v53;
        v49 = v52;
        v50(v104, v54, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1002379B4(0, v52[2] + 1, 1, v52);
        }

        v56 = v49[2];
        v55 = v49[3];
        if (v56 >= v55 >> 1)
        {
          v49 = sub_1002379B4(v55 > 1, v56 + 1, 1, v49);
        }

        v49[2] = v56 + 1;
        v45 = v102;
        v50(v49 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v56, v104, v102);
        v31 = v100;
        v47 = v105;
      }

      v46 += v47;
      --v44;
    }

    while (v44);
  }

  else
  {

    v49 = _swiftEmptyArrayStorage;
  }

  v57 = v49[2];
  v58 = *(v95 + v94);
  v59 = v103;
  v60 = v97;
  if (!(v58 >> 62))
  {
    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 == result)
    {
      goto LABEL_27;
    }

LABEL_35:
    v78 = sub_1004A5214();
    (*(*(v78 - 8) + 56))(v93, 1, 1, v78);
  }

  if (v58 < 0)
  {
    v88 = *(v95 + v94);
  }

  result = sub_1004A6A34();
  if (v57 != result)
  {
    goto LABEL_35;
  }

LABEL_27:
  v61 = v49[2];
  v104 = (v59 + 16);
  v62 = (v59 + 88);
  LODWORD(v105) = enum case for NWConnection.State.waiting(_:);
  v63 = (v59 + 8);
  if (v61)
  {
    v64 = 0;
    v65 = v49 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v66 = *(v59 + 72);
    v67 = *(v59 + 16);
    v68 = v102;
    while (1)
    {
      v67(v60, v65, v68);
      v69 = (*v62)(v60, v68);
      if (v69 == v105)
      {
        break;
      }

      (*v63)(v60, v68);
      v70 = sub_1004A5214();
      v71 = v96;
      (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
      v72 = v71;
      v60 = v97;
      result = sub_100025F40(v72, &unk_1005D54F0, &unk_1004E8DA0);
      ++v64;
      v65 += v66;
      if (v61 == v64)
      {
        v64 = v61;
        v59 = v103;
        goto LABEL_34;
      }
    }

    v73 = v103;
    (*(v103 + 96))(v60, v68);
    v74 = sub_1004A5214();
    v75 = *(v74 - 8);
    v76 = v96;
    (*(v75 + 32))(v96, v60, v74);
    (*(v75 + 56))(v76, 0, 1, v74);
    v59 = v73;
    result = sub_100025F40(v76, &unk_1005D54F0, &unk_1004E8DA0);
  }

  else
  {
    v64 = 0;
    v68 = v102;
  }

LABEL_34:
  v77 = v49[2];
  if (v64 == v77)
  {
    goto LABEL_35;
  }

  if (v64 >= v77)
  {
    goto LABEL_49;
  }

  v79 = v90;
  (*(v59 + 16))(v90, v49 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v64, v68);
  v80 = (*(v59 + 88))(v79, v68);
  if (v80 == v105)
  {
    (*(v59 + 96))(v79, v68);
    v81 = sub_1004A5214();
    v82 = *(v81 - 8);
    v83 = v92;
    (*(v82 + 32))(v92, v79, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
  }

  else
  {
    (*v63)(v79, v68);
    v81 = sub_1004A5214();
    v83 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
  }

  v84 = v91;
  sub_10000E268(v83, v91, &unk_1005D54F0, &unk_1004E8DA0);
  sub_1004A5214();
  v85 = *(v81 - 8);
  result = (*(v85 + 48))(v84, 1, v81);
  if (result != 1)
  {
    v86 = v93;
    (*(v85 + 32))(v93, v84, v81);
    sub_100025F40(v83, &unk_1005D54F0, &unk_1004E8DA0);
    (*(v85 + 56))(v86, 0, 1, v81);
  }

LABEL_50:
  __break(1u);
  return result;
}

char *sub_100242860()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 >> 62)
  {
LABEL_25:
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_1004A6A34();
  }

  else
  {
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = sub_1004A6794();
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= *(v24 + 16))
          {
            goto LABEL_24;
          }

          v10 = *(v6 + 8 * v9 + 32);

          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v11 = (*v10 + 304);
        v12 = *v11;
        (*v11)();
        v13 = ConnectionState.isClosedOrCancelled.getter();
        v14 = sub_10024DD58(v4, type metadata accessor for ConnectionState);
        if (!v13)
        {
          break;
        }

        ++v9;
        if (v8 == v7)
        {
          goto LABEL_22;
        }
      }

      HIDWORD(v22) = *(v10 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v15 = (*(*v10 + 424))(v14);
      v12();
      v16 = ConnectionState.isActivelyConnectingOrAuthenticating.getter();

      sub_10024DD58(v4, type metadata accessor for ConnectionState);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100237BD4(0, *(v23 + 2) + 1, 1, v23);
      }

      v18 = *(v23 + 2);
      v17 = *(v23 + 3);
      if (v18 >= v17 >> 1)
      {
        v23 = sub_100237BD4((v17 > 1), v18 + 1, 1, v23);
      }

      v19 = v23;
      *(v23 + 2) = v18 + 1;
      v20 = &v19[8 * v18];
      *(v20 + 8) = HIDWORD(v22);
      v20[36] = v15 & 1;
      v20[37] = (v16 ^ 1) & 1;
    }

    while (v8 != v7);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

LABEL_22:

  return v23;
}

uint64_t sub_100242B58(uint64_t a1)
{
  v2 = v1;
  v148 = type metadata accessor for ConnectionState();
  v4 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v144 = &v132 - v13;
  v14 = __chkstk_darwin(v12);
  v143 = &v132 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v132 - v17;
  v18 = __chkstk_darwin(v16);
  v136 = &v132 - v19;
  v20 = __chkstk_darwin(v18);
  v135 = &v132 - v21;
  __chkstk_darwin(v20);
  v139 = &v132 - v22;
  v23 = sub_1004A53F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = sub_1004A5404();
  (*(v24 + 8))(v27, v23);
  if ((v30 & 1) == 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v39 = sub_1004A6A34();
    goto LABEL_10;
  }

  v31 = (v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  result = swift_beginAccess();
  v33 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  if (*(*v31 + 16))
  {
    v30 = v153;
    if (!v33)
    {
      goto LABEL_80;
    }

    v34 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    RestartableTimer.start()();
  }

  else
  {
    v30 = v153;
    if (!v33)
    {
      goto LABEL_81;
    }

    v35 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    RestartableTimer.stop()();
  }

  v36 = *v31;
  v37 = *(v31 + 1);

  v28 = sub_10023766C(a1, v36, v37);

  if (!*(v28 + 16))
  {
  }

  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v147 = *(v2 + v38);
  if (v147 >> 62)
  {
    goto LABEL_72;
  }

  v39 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  if (!v39)
  {
LABEL_68:

    return sub_10023F5EC();
  }

  v134 = v11;
  v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v41 = v147;
  v152 = v147 & 0xC000000000000001;
  v141 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID;

  v151 = v40;
  swift_beginAccess();
  v11 = 0;
  v138 = v41 & 0xFFFFFFFFFFFFFF8;
  v137 = v41 + 32;
  v145 = v28 + 56;
  *&v42 = 68158210;
  v140 = v42;
  v146 = v2;
  v142 = v6;
  v149 = v28;
  v150 = v39;
  while (1)
  {
    if (v152)
    {
      v44 = sub_1004A6794();
      v45 = __OFADD__(v11++, 1);
      if (v45)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 >= *(v138 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v137 + 8 * v11);

      v45 = __OFADD__(v11++, 1);
      if (v45)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v46 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id;
    if (*(v28 + 16))
    {
      v47 = *(v44 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v48 = *(v28 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v47);
      v49 = sub_1004A6F14();
      v50 = -1 << *(v28 + 32);
      v51 = v49 & ~v50;
      if ((*(v145 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        break;
      }
    }

LABEL_27:
    (*(*v44 + 304))();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v64 = v144;
      v65 = v143;
      if (EnumCaseMultiPayload == 3)
      {
        sub_10024DD58(v6, type metadata accessor for ConnectionState);
        sub_10000E268(v2 + v151, v65, &qword_1005D5968, &unk_1004E9180);
        v98 = v65;
        v99 = sub_1004A4A74();
        v100 = *(v99 - 8);
        result = (*(v100 + 48))(v98, 1, v99);
        if (result == 1)
        {
          goto LABEL_77;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v101 = sub_1004A4A54();
        v102 = sub_1004A6034();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v154[0] = v104;
          *v103 = v140;
          *(v103 + 4) = 2;
          *(v103 + 8) = 256;
          *(v103 + 10) = *(v2 + v141);

          *(v103 + 11) = 2082;
          v105 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v107 = sub_10015BA6C(v105, v106, v154);

          *(v103 + 13) = v107;
          v2 = v146;
          _os_log_impl(&_mh_execute_header, v101, v102, "[%.*hhx] Connection %{public}s: authentication failed.", v103, 0x15u);
          sub_1000197E0(v104);

          v6 = v142;
        }

        else
        {
        }

        v30 = v153;
        v43 = v150;
        (*(v100 + 8))(v143, v99);
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 4)
      {
        sub_10000E268(v2 + v151, v144, &qword_1005D5968, &unk_1004E9180);
        v66 = sub_1004A4A74();
        v67 = *(v66 - 8);
        result = (*(v67 + 48))(v64, 1, v66);
        if (result == 1)
        {
          goto LABEL_75;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v68 = sub_1004A4A54();
        v69 = sub_1004A6034();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v133 = v68;
          v72 = v71;
          v154[0] = v71;
          *v70 = v140;
          *(v70 + 4) = 2;
          *(v70 + 8) = 256;
          *(v70 + 10) = *(v2 + v141);

          *(v70 + 11) = 2082;
          v73 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v75 = sub_10015BA6C(v73, v74, v154);

          *(v70 + 13) = v75;
          v2 = v146;
          v76 = v69;
          v77 = v133;
          _os_log_impl(&_mh_execute_header, v133, v76, "[%.*hhx] Connection %{public}s failed.", v70, 0x15u);
          sub_1000197E0(v72);

          v6 = v142;
        }

        else
        {
        }

        v30 = v153;
        v131 = v150;
        (*(v67 + 8))(v144, v66);
      }

      else
      {
        v117 = v134;
        sub_10000E268(v2 + v151, v134, &qword_1005D5968, &unk_1004E9180);
        v118 = sub_1004A4A74();
        v119 = *(v118 - 8);
        result = (*(v119 + 48))(v117, 1, v118);
        if (result == 1)
        {
          goto LABEL_74;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v120 = sub_1004A4A54();
        v121 = sub_1004A6034();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v133 = v120;
          v124 = v123;
          v154[0] = v123;
          *v122 = v140;
          *(v122 + 4) = 2;
          *(v122 + 8) = 256;
          *(v122 + 10) = *(v2 + v141);

          *(v122 + 11) = 2082;
          v125 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v127 = sub_10015BA6C(v125, v126, v154);

          *(v122 + 13) = v127;
          v2 = v146;
          v128 = v121;
          v129 = v133;
          _os_log_impl(&_mh_execute_header, v133, v128, "[%.*hhx] Connection %{public}s is cancelled.", v122, 0x15u);
          sub_1000197E0(v124);

          v6 = v142;
        }

        else
        {
        }

        v30 = v153;
        v131 = v150;
        (*(v119 + 8))(v134, v118);
      }

LABEL_65:
      v28 = v149;
      if (v11 == v131)
      {
LABEL_66:

        goto LABEL_68;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v88 = v135;
        sub_10000E268(v2 + v151, v135, &qword_1005D5968, &unk_1004E9180);
        v89 = sub_1004A4A74();
        v90 = *(v89 - 8);
        result = (*(v90 + 48))(v88, 1, v89);
        if (result == 1)
        {
          goto LABEL_76;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v91 = sub_1004A4A54();
        v92 = sub_1004A6034();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v154[0] = swift_slowAlloc();
          v94 = v154[0];
          *v93 = v140;
          *(v93 + 4) = 2;
          *(v93 + 8) = 256;
          *(v93 + 10) = *(v2 + v141);

          *(v93 + 11) = 2082;
          v95 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v97 = sub_10015BA6C(v95, v96, v154);

          *(v93 + 13) = v97;
          v2 = v146;
          _os_log_impl(&_mh_execute_header, v91, v92, "[%.*hhx] Connection %{public}s is connecting.", v93, 0x15u);
          sub_1000197E0(v94);

          v6 = v142;
        }

        else
        {
        }

        v30 = v153;
        v131 = v150;
        (*(v90 + 8))(v135, v89);
        sub_10024DD58(v6, type metadata accessor for ConnectionState);
        goto LABEL_65;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v54 = v136;
        sub_10000E268(v2 + v151, v136, &qword_1005D5968, &unk_1004E9180);
        v55 = sub_1004A4A74();
        v56 = *(v55 - 8);
        result = (*(v56 + 48))(v54, 1, v55);
        if (result == 1)
        {
          goto LABEL_79;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v57 = sub_1004A4A54();
        v58 = sub_1004A6034();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v154[0] = v60;
          *v59 = v140;
          *(v59 + 4) = 2;
          *(v59 + 8) = 256;
          *(v59 + 10) = *(v2 + v141);

          *(v59 + 11) = 2082;
          v61 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v63 = sub_10015BA6C(v61, v62, v154);

          *(v59 + 13) = v63;
          v2 = v146;
          _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] Connection %{public}s is unauthenticated.", v59, 0x15u);
          sub_1000197E0(v60);

          v6 = v142;
        }

        else
        {
        }

        v30 = v153;
        v43 = v150;
        (*(v56 + 8))(v136, v55);
        sub_10024DD58(v6, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_10024DD58(v6, type metadata accessor for ConnectionState);
        sub_10000E268(v2 + v151, v30, &qword_1005D5968, &unk_1004E9180);
        v108 = sub_1004A4A74();
        v109 = *(v108 - 8);
        result = (*(v109 + 48))(v30, 1, v108);
        if (result == 1)
        {
          goto LABEL_78;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v110 = sub_1004A4A54();
        v111 = sub_1004A6034();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v154[0] = v113;
          *v112 = v140;
          *(v112 + 4) = 2;
          *(v112 + 8) = 256;
          *(v112 + 10) = *(v2 + v141);

          *(v112 + 11) = 2082;
          v114 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v116 = sub_10015BA6C(v114, v115, v154);

          *(v112 + 13) = v116;
          v2 = v146;
          _os_log_impl(&_mh_execute_header, v110, v111, "[%.*hhx] Connection %{public}s is authenticated.", v112, 0x15u);
          sub_1000197E0(v113);

          v6 = v142;
        }

        else
        {
        }

        v43 = v150;
        v30 = v153;
        (*(v109 + 8))(v153, v108);
      }

LABEL_14:
      v28 = v149;
LABEL_15:
      if (v11 == v43)
      {
        goto LABEL_66;
      }
    }
  }

  v52 = ~v50;
  while (*(*(v28 + 48) + 4 * v51) != v47)
  {
    v51 = (v51 + 1) & v52;
    if (((*(v145 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v78 = v139;
  sub_10000E268(v2 + v151, v139, &qword_1005D5968, &unk_1004E9180);
  v79 = sub_1004A4A74();
  v80 = *(v79 - 8);
  result = (*(v80 + 48))(v78, 1, v79);
  if (result != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v81 = sub_1004A4A54();
    v82 = sub_1004A6034();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v154[0] = v84;
      *v83 = v140;
      *(v83 + 4) = 2;
      *(v83 + 8) = 256;
      *(v83 + 10) = *(v146 + v141);

      *(v83 + 11) = 2082;
      v85 = ConnectionID.debugDescription.getter(*(v44 + v46));
      v87 = sub_10015BA6C(v85, v86, v154);
      v28 = v149;

      *(v83 + 13) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "[%.*hhx] Cancelling idle connection %{public}s.", v83, 0x15u);
      sub_1000197E0(v84);
      v2 = v146;

      v6 = v142;
    }

    else
    {
    }

    v30 = v153;
    v43 = v150;
    v130 = (*(v80 + 8))(v139, v79);
    (*(*v44 + 536))(v130);

    goto LABEL_15;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_10024402C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange;
  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;

  sub_10024D618(v5, a1);

  if (*(v2 + v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F81C();
      result = swift_unknownObjectRelease();
    }

    *(v2 + v4) = 0;
  }

  return result;
}

uint64_t sub_1002440C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 64);
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 4);
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = *(v2 - 8);
      v8 = v3;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      sub_1000CB7C8(v3);

      sub_100244168(&v7);
      sub_1000CB848(v3);

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_100244168(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v114 = &v112 - v5;
  v124 = type metadata accessor for ConnectionState();
  v6 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v121 = &v112 - v9;
  v10 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v126 = &v112 - v12;
  v123 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v13 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v128 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v131 = *(v127 - 8);
  v15 = *(v131 + 64);
  __chkstk_darwin(v127);
  v130 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v112 - v18;
  __chkstk_darwin(v20);
  v22 = (&v112 - v21);
  v23 = sub_1004A53F4();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v28 = v29;
  v30 = v24[13];
  v115 = enum case for DispatchPredicate.onQueue(_:);
  v116 = v30;
  v117 = v24 + 13;
  v30(v28, v26);
  v31 = v29;
  v32 = sub_1004A5404();
  v34 = v24[1];
  v33 = (v24 + 1);
  v119 = v28;
  v120 = v33;
  v118 = v34;
  v34(v28, v23);
  if ((v32 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v35 = *(a1 + 8);
  v136 = v35;
  v36 = v35 >> 60;
  if (v35 >> 60 == 1)
  {
    v113 = v23;
    v129 = a1;
    v58 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v124) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v121 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v122 = v1;
    v33 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState + 8);
    v59 = *(v58 + 16);
    v126 = v58;
    if (v59)
    {
      v60 = 0;
      v61 = _swiftEmptyArrayStorage;
      v125 = v59;
      while (v60 < *(v58 + 16))
      {
        v62 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v63 = *(v131 + 72);
        sub_10024DECC(v58 + v62 + v63 * v60, v22, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v33 >= *v22)
        {
          sub_10024DD58(v22, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          sub_10024DDB8(v22, v130, type metadata accessor for CommandConnection.RecentErrors.Error);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v137 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024AADC(0, v61[2] + 1, 1);
            v61 = v137;
          }

          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            sub_10024AADC(v65 > 1, v66 + 1, 1);
            v61 = v137;
          }

          v61[2] = v66 + 1;
          sub_10024DDB8(v130, v61 + v62 + v66 * v63, type metadata accessor for CommandConnection.RecentErrors.Error);
          v59 = v125;
          v58 = v126;
        }

        if (v59 == ++v60)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v61 = _swiftEmptyArrayStorage;
LABEL_43:
    *&v137 = v61;

    sub_10024979C(&v137);

    v73 = v137;
    v74 = *(v137 + 16);
    if (!v74)
    {
      v79 = v33;
LABEL_66:

      v82 = v121;
      v83 = *v121;
      *v121 = v124;
      *(v82 + 1) = v79;
      sub_10023C770(v83);
      if (CommandConnection.RecentErrors.containsAuthenticationFailure.getter(v126))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v46 = Strong;
          v85 = *(Strong + 16);
          v86 = v119;
          *v119 = v85;
          v87 = v113;
          v116(v86, v115, v113);
          v88 = v85;
          LOBYTE(v85) = sub_1004A5404();
          v118(v86, v87);
          if ((v85 & 1) == 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v89 = *(v46 + 40);
          (*(v46 + 32))(0xB000000000000010);
          swift_unknownObjectRelease();
        }
      }

      sub_10024549C(v129);
      return;
    }

    v75 = 0;
    v76 = v137 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    while (1)
    {
      if (v75 >= *(v73 + 16))
      {
        goto LABEL_82;
      }

      sub_10024DECC(v76 + *(v131 + 72) * v75, v19, type metadata accessor for CommandConnection.RecentErrors.Error);
      v79 = *v19;
      if (v33 >= *v19)
      {
        v77 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v78 = v19;
      }

      else
      {
        v80 = v128;
        sub_10024DECC(v19 + *(v127 + 20), v128, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (!swift_getEnumCaseMultiPayload())
        {
          v33 = *v80;
          v130 = v80[1];
          v46 = v80[2];
          sub_10000C9C0(&qword_1005D5D18, &unk_1004E9378);
          if (v46)
          {
            if (v124 != 1)
            {
              if (v124 == 2)
              {
                sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_100191E44(v33, v130, v46);
                v81 = 2;
              }

              else if (v46 == 1)
              {
                sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
                v81 = 2;
              }

              else
              {
                if (v124 && v124 != 3)
                {
                  goto LABEL_89;
                }

                sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_100191E44(v33, v130, v46);
                v81 = 3;
              }

              goto LABEL_59;
            }

            sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
            sub_100191E44(v33, v130, v46);
          }

          else
          {
            sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
          }

          v81 = 1;
LABEL_59:
          LODWORD(v124) = v81;
          goto LABEL_47;
        }

        sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
        v77 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v78 = v80;
      }

      sub_10024DD58(v78, v77);
      v79 = v33;
LABEL_47:
      ++v75;
      v33 = v79;
      if (v74 == v75)
      {
        goto LABEL_66;
      }
    }
  }

  if (v36 == 8 && v35 == 0x8000000000000010)
  {
    *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 1;
    return;
  }

  v131 = v35;
  v37 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v19 = *(v1 + v37);
  v122 = v1;
  v129 = a1;
  v112 = v36;
  v113 = v23;
  if (!(v19 >> 62))
  {
    v38 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_85:
  v38 = sub_1004A6A34();
LABEL_8:

  if (v38)
  {
    v39 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v40 = sub_1004A6794();
        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v39 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v40 = *(v19 + 8 * v39 + 32);

        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      v41 = *(v40 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      if (v41 == *v129)
      {
        break;
      }

      ++v39;
      if (v33 == v38)
      {
        goto LABEL_19;
      }
    }

    v68 = v121;
    (*(*v40 + 304))(v67);
    v69 = v125;
    sub_10024DDB8(v68, v125, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
LABEL_80:

        return;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_10024DD58(v69, type metadata accessor for ConnectionState);
      if (v112)
      {
        if (v112 != 2)
        {
          v71 = v129;
          if (v112 == 8 && v131 == 0x8000000000000000)
          {
            v139 = 0u;
            memset(v140, 0, 27);
            v137 = 0u;
            v138 = 0u;
            v72 = v129;
            sub_100245BFC(&v137, v41);
            v71 = v72;
          }

          goto LABEL_79;
        }

        v90 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v91 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v92 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *(v135 + 11) = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v93 = *(v135 + 11);
        v134[2] = v91;
        v135[0] = v92;
        v134[1] = v90;
        v134[0] = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *(v140 + 11) = v93;
        v94 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v138 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v139 = v94;
        v140[0] = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v137 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1000CB914(v134, v133);
        sub_100245BFC(&v137, v41);
        sub_1000CB970(v134);
LABEL_78:
        v71 = v129;
LABEL_79:
        sub_1002450B0(v71);
        goto LABEL_80;
      }

      v95 = static MonotonicTime.now()();
      v96 = v122;
      v97 = v122 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
      v98 = *(v122 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
      *v97 = 0;
      *(v97 + 8) = v95;
      sub_10023C770(v98);
      v99 = swift_unknownObjectWeakLoadStrong();
      if (!v99)
      {
LABEL_77:
        v105 = v96 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
        swift_beginAccess();
        *v105 = 0;
        *(v105 + 8) = 0;
        *(v105 + 16) = 1;
        v106 = *(**(v96 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);
        v107 = v96;

        v106(v108);

        v109 = type metadata accessor for ConnectionStatus.Error(0);
        v110 = v114;
        (*(*(v109 - 8) + 56))(v114, 1, 1, v109);
        v111 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
        swift_beginAccess();
        sub_10024DB8C(v110, v107 + v111);
        swift_endAccess();
        goto LABEL_78;
      }

      v46 = v99;
      v100 = *(v99 + 16);
      v101 = v119;
      *v119 = v100;
      v102 = v113;
      v116(v101, v115, v113);
      v103 = v100;
      LOBYTE(v100) = sub_1004A5404();
      v118(v101, v102);
      if (v100)
      {
        v104 = *(v46 + 40);
        (*(v46 + 32))(0xB000000000000008);
        swift_unknownObjectRelease();
        goto LABEL_77;
      }

      goto LABEL_87;
    }

    sub_10024DD58(v69, type metadata accessor for ConnectionState);
    return;
  }

LABEL_19:

  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v43 = v122;
  swift_beginAccess();
  v44 = v43 + v42;
  v45 = v126;
  sub_10000E268(v44, v126, &qword_1005D5968, &unk_1004E9180);
  v46 = sub_1004A4A74();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v48 = v129;
    v49 = *(v129 + 4);
    *&v134[0] = *(v129 + 3);
    v133[0] = v49;
    sub_10024DBFC(&v136, &v132);
    sub_10000E268(v134, &v132, &qword_1005D5D10, &qword_1004E9370);
    sub_10000E268(v133, &v132, &qword_1005D5D10, &qword_1004E9370);
    v50 = sub_1004A4A54();
    v51 = v43;
    v52 = sub_1004A6014();
    sub_10024DC58(&v136);
    sub_100025F40(v134, &qword_1005D5D10, &qword_1004E9370);
    sub_100025F40(v133, &qword_1005D5D10, &qword_1004E9370);
    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v132 = v54;
      *v53 = 68158210;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      *(v53 + 10) = *(v51 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v53 + 11) = 2082;
      v55 = ConnectionID.debugDescription.getter(*v48);
      v57 = sub_10015BA6C(v55, v56, &v132);

      *(v53 + 13) = v57;
      _os_log_impl(&_mh_execute_header, v50, v52, "[%.*hhx] Got callback for connection %{public}s but this connection is unknown to the pool.", v53, 0x15u);
      sub_1000197E0(v54);
    }

    else
    {
    }

    (*(v47 + 8))(v126, v46);
    return;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  sub_1001978DC(v33, v130, v46);
  sub_1004A6D24();
  __break(1u);

  __break(1u);
}

uint64_t sub_1002450B0(__int128 *a1)
{
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30[-v5 - 8];
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v7))
  {
    swift_beginAccess();
    v8 = *(v1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1001EBC5C(0, *(v8 + 2) + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1001EBC5C((v10 > 1), v11 + 1, 1, v8);
    }

    v12 = *(a1 + 1);
    v13 = *(a1 + 4);
    v33 = *(a1 + 3);
    v34 = v12;
    v32 = v13;
    *(v8 + 2) = v11 + 1;
    v14 = &v8[40 * v11];
    v15 = *a1;
    v16 = a1[1];
    *(v14 + 8) = *(a1 + 4);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    *(v1 + v7) = v8;
    swift_endAccess();
    sub_10024DBFC(&v34, v31);
    sub_10000E268(&v33, v31, &qword_1005D5D10, &qword_1004E9370);
    return sub_10000E268(&v32, v31, &qword_1005D5D10, &qword_1004E9370);
  }

  else
  {
    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v18, v6, &qword_1005D5968, &unk_1004E9180);
    v19 = sub_1004A4A74();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v6, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v21 = v1;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v22 = sub_1004A4A54();
      v23 = sub_1004A6014();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 68157952;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        *(v24 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] Trying to enqueue event outside withEnqueuedSend.", v24, 0xBu);
      }

      else
      {
      }

      (*(v20 + 8))(v6, v19);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_10000C9C0(&qword_1005D35D8, &qword_1004DD1C0);
        inited = swift_initStackObject();
        v26 = *(a1 + 1);
        v27 = *(a1 + 4);
        v33 = *(a1 + 3);
        v34 = v26;
        v32 = v27;
        v28 = *a1;
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v28;
        *(inited + 48) = a1[1];
        *(inited + 64) = v27;
        sub_10024DBFC(&v34, v30);
        sub_10000E268(&v33, v30, &qword_1005D5D10, &qword_1004E9370);
        sub_10000E268(&v32, v30, &qword_1005D5D10, &qword_1004E9370);
        sub_10022F130(inited);
        swift_unknownObjectRelease();
        swift_setDeallocating();
        return sub_10024DD04(inited + 32);
      }
    }
  }

  return result;
}

void sub_10024549C(unsigned int *a1)
{
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v53[-v5];
  v6 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v53[-v11];
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a1 + 1);
  v65[0] = v18;
  if (v18 >> 60 != 1)
  {
    return;
  }

  v55 = v9;
  v19 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v58 = a1;
  v20 = *a1;

  sub_100245F48(v59, v20);
  v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v60 = v1;
  v56 = v14;
  v57 = v21;
  v22 = *(v1 + v21);
  if (v22 >> 62)
  {
LABEL_29:
    v23 = sub_1004A6A34();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  while (1)
  {
    if (v23 == v24)
    {

      v31 = v59;
      goto LABEL_24;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v22 + 8 * v24 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v20)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v24++, 1))
    {
      goto LABEL_28;
    }
  }

  v54 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_unknownObjectRelease();
  if (v54 != v20)
  {
    goto LABEL_9;
  }

LABEL_13:

  v26 = v60;
  swift_beginAccess();
  v27 = sub_100169180(v24);
  v28 = swift_endAccess();
  v29 = (*(*v27 + 352))(v28);
  sub_100226190(v29, v12);

  v30 = v56;
  if ((*(v56 + 48))(v12, 1, v13) == 1)
  {
    sub_100025F40(v12, &qword_1005CCEB0, &qword_1004E9140);
  }

  else
  {
    sub_10024DDB8(v12, v17, type metadata accessor for ConnectionStatus.Error);
    v32 = v55;
    sub_10024DDB8(v17, v55, type metadata accessor for ConnectionStatus.Error);
    (*(v30 + 56))(v32, 0, 1, v13);
    v33 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_10024DB8C(v32, v26 + v33);
    swift_endAccess();
  }

  v34 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v35 = v61;
  sub_10000E268(v26 + v34, v61, &qword_1005D5968, &unk_1004E9180);
  v36 = sub_1004A4A74();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v56 = v36;
  if (v38(v35, 1) == 1)
  {
    __break(1u);
    return;
  }

  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v39 = *(v58 + 3);
  v63 = *(v58 + 4);
  v64 = v39;

  sub_10024DBFC(v65, v62);
  sub_10000E268(&v64, v62, &qword_1005D5D10, &qword_1004E9370);
  sub_10000E268(&v63, v62, &qword_1005D5D10, &qword_1004E9370);
  v40 = sub_1004A4A54();
  v41 = sub_1004A6034();
  sub_10024DC58(v65);
  sub_100025F40(&v64, &qword_1005D5D10, &qword_1004E9370);
  sub_100025F40(&v63, &qword_1005D5D10, &qword_1004E9370);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v62[0] = v43;
    *v42 = 68158466;
    *(v42 + 4) = 2;
    *(v42 + 8) = 256;
    *(v42 + 10) = *(v26 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v42 + 11) = 2082;
    v44 = ConnectionID.debugDescription.getter(v20);
    v46 = sub_10015BA6C(v44, v45, v62);

    *(v42 + 13) = v46;
    *(v42 + 21) = 2048;
    v47 = *(v26 + v57);
    if (v47 >> 62)
    {
      if (v47 < 0)
      {
        v52 = *(v26 + v57);
      }

      v48 = sub_1004A6A34();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v58;
    v31 = v59;

    *(v42 + 23) = v48;

    _os_log_impl(&_mh_execute_header, v40, v41, "[%.*hhx] Closing connection %{public}s. Remaining connection count: %ld.", v42, 0x1Fu);
    sub_1000197E0(v43);

    v35 = v61;
  }

  else
  {

    v49 = v58;
    v31 = v59;
  }

  v50 = (*(v37 + 8))(v35, v56);
  (*(*v27 + 536))(v50);
  sub_1002450B0(v49);

LABEL_24:
  v51 = CommandConnection.RecentErrors.backOffBehavior.getter(v31);

  if (v51 != 3)
  {
    swift_beginAccess();
    sub_100222E4C(v51);
    swift_endAccess();
    sub_1002414F4();
  }
}

uint64_t sub_100245BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v3 + v9, v8, &qword_1005D5968, &unk_1004E9180);
  v10 = sub_1004A4A74();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v13 = sub_1004A4A54();
    v14 = sub_1004A5FF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v15 = 68158210;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      *(v15 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v15 + 11) = 2082;
      v16 = ConnectionID.debugDescription.getter(a2);
      v18 = sub_10015BA6C(v16, v17, &v28);

      *(v15 + 13) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Mailbox selection changed on %{public}s.", v15, 0x15u);
      sub_1000197E0(v25);
    }

    else
    {
    }

    (*(v11 + 8))(v8, v10);
    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v20 = *(v3 + v19);
    if (v20 >> 62)
    {
LABEL_19:
      v21 = sub_1004A6A34();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = sub_1004A6794();
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_16:
            __break(1u);
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v23 = *(v20 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_16;
          }
        }

        v27 = v23;
        sub_100247ED8(&v27, a2, v26, v3);

        ++v22;
      }

      while (v24 != v21);
    }
  }

  return result;
}

uint64_t sub_100245F48(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v283) = a2;
  v5 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v271 = &v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v270 = &v256 - v9;
  v276 = sub_1004A5214();
  v281 = *(v276 - 8);
  v10 = v281[8];
  __chkstk_darwin(v276);
  v279 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v269 = &v256 - v13;
  __chkstk_darwin(v14);
  v261 = &v256 - v15;
  __chkstk_darwin(v16);
  v266 = &v256 - v17;
  v18 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v256 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v267 = &v256 - v23;
  __chkstk_darwin(v24);
  v268 = &v256 - v25;
  __chkstk_darwin(v26);
  v278 = &v256 - v27;
  __chkstk_darwin(v28);
  v275 = (&v256 - v29);
  __chkstk_darwin(v30);
  v264 = &v256 - v31;
  __chkstk_darwin(v32);
  v265 = &v256 - v33;
  __chkstk_darwin(v34);
  v277 = (&v256 - v35);
  __chkstk_darwin(v36);
  v38 = &v256 - v37;
  v274 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  v39 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v263 = &v256 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v260 = &v256 - v42;
  __chkstk_darwin(v43);
  v280 = &v256 - v44;
  __chkstk_darwin(v45);
  v262 = &v256 - v46;
  __chkstk_darwin(v47);
  v273 = (&v256 - v48);
  __chkstk_darwin(v49);
  v272 = &v256 - v50;
  __chkstk_darwin(v51);
  v258 = &v256 - v52;
  __chkstk_darwin(v53);
  v55 = &v256 - v54;
  __chkstk_darwin(v56);
  v259 = &v256 - v57;
  __chkstk_darwin(v58);
  v257 = &v256 - v59;
  __chkstk_darwin(v60);
  v62 = &v256 - v61;
  __chkstk_darwin(v63);
  v65 = &v256 - v64;
  __chkstk_darwin(v66);
  v68 = &v256 - v67;
  __chkstk_darwin(v69);
  v71 = &v256 - v70;
  __chkstk_darwin(v72);
  v74 = &v256 - v73;
  v282 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
  if (CommandConnection.RecentErrors.isEmpty.getter(a1))
  {
    v75 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v3 + v75, v21, &qword_1005D5968, &unk_1004E9180);
    v76 = sub_1004A4A74();
    v77 = *(v76 - 8);
    result = (*(v77 + 48))(v21, 1, v76);
    if (result != 1)
    {
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v79 = sub_1004A4A54();
      v80 = sub_1004A6034();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v284[0] = v82;
        *v81 = 68158210;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v83 = v283;
        *(v81 + 10) = v282;
        *(v81 + 11) = 2082;
        v84 = ConnectionID.debugDescription.getter(v83);
        v86 = sub_10015BA6C(v84, v85, v284);

        *(v81 + 13) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "[%.*hhx-%{public}s] Connection did close.", v81, 0x15u);
        sub_1000197E0(v82);
      }

      return (*(v77 + 8))(v21, v76);
    }

    __break(1u);
    goto LABEL_53;
  }

  CommandConnection.RecentErrors.Statistics.init(_:)(v87, v74);
  if (*v74 == 1)
  {
    v88 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v3 + v88, v38, &qword_1005D5968, &unk_1004E9180);
    v89 = sub_1004A4A74();
    isa = v89[-1].isa;
    result = (*(isa + 6))(v38, 1, v89);
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v91 = v74;
    sub_10024DECC(v74, v71, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    sub_10024DECC(v74, v68, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    v92 = sub_1004A4A54();
    v93 = sub_1004A6024();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v284[0] = v281;
      *v94 = 68158722;
      *(v94 + 4) = 2;
      *(v94 + 8) = 256;
      v95 = v283;
      *(v94 + 10) = v282;
      *(v94 + 11) = 2082;
      v96 = ConnectionID.debugDescription.getter(v95);
      v283 = v89;
      v98 = sub_10015BA6C(v96, v97, v284);

      *(v94 + 13) = v98;
      *(v94 + 21) = 2048;
      v99 = *(v71 + 1);
      sub_10024DD58(v71, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v94 + 23) = v99;
      *(v94 + 31) = 2048;
      v100 = *(v68 + 2);
      sub_10024DD58(v68, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v94 + 33) = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "[%.*hhx-%{public}s] Connection failed to parse server response. Failed commands: %ld. Network errors: %ld.", v94, 0x29u);
      sub_1000197E0(v281);

      v101 = v91;
      v89 = v283;
    }

    else
    {
      sub_10024DD58(v68, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_10024DD58(v71, type metadata accessor for CommandConnection.RecentErrors.Statistics);

      v101 = v91;
    }

    sub_10024DD58(v101, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    return (*(isa + 1))(v38, v89);
  }

  else if (v74[1] == 1)
  {
    v102 = *(v74 + 6);
    if (v102)
    {
      v103 = *(v74 + 4);
      v279 = *(v74 + 5);
      v104 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v105 = v3 + v104;
      v106 = v277;
      sub_10000E268(v105, v277, &qword_1005D5968, &unk_1004E9180);
      v107 = sub_1004A4A74();
      v108 = *(v107 - 8);
      result = (*(v108 + 48))(v106, 1, v107);
      if (result == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v281 = v108;
      sub_1000110B0(v103);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10024DECC(v74, v65, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_10024DECC(v74, v62, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1000110B0(v103);

      v109 = sub_1004A4A54();
      v110 = sub_1004A6014();
      sub_10001114C(v103);

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v278 = v107;
        v112 = v111;
        v276 = swift_slowAlloc();
        v284[0] = v276;
        *v112 = 68158978;
        *(v112 + 4) = 2;
        *(v112 + 8) = 256;
        v113 = v283;
        *(v112 + 10) = v282;
        *(v112 + 11) = 2082;
        v114 = ConnectionID.debugDescription.getter(v113);
        v116 = sub_10015BA6C(v114, v115, v284);

        *(v112 + 13) = v116;
        *(v112 + 21) = 2048;
        v280 = v74;
        v117 = *(v65 + 1);
        sub_10024DD58(v65, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v112 + 23) = v117;
        *(v112 + 31) = 2048;
        v118 = *(v62 + 2);
        sub_10024DD58(v62, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v112 + 33) = v118;
        *(v112 + 41) = 2082;
        v119 = ResponseText.debugDescription.getter(v103, v279, v102);
        v121 = sub_10015BA6C(v119, v120, v284);

        *(v112 + 43) = v121;
        _os_log_impl(&_mh_execute_header, v109, v110, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. '%{public}s'", v112, 0x33u);
        swift_arrayDestroy();

        v107 = v278;

        sub_10001114C(v103);

        v122 = v280;
        v106 = v277;
      }

      else
      {
        sub_10024DD58(v62, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DD58(v65, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10001114C(v103);

        v122 = v74;
      }

      sub_10024DD58(v122, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v281[1])(v106, v107);
    }

    else
    {
      v165 = v270;
      sub_10000E268(&v74[*(v274 + 48)], v270, &unk_1005D54F0, &unk_1004E8DA0);
      v166 = v281;
      v167 = v276;
      if ((v281[6])(v165, 1, v276) == 1)
      {
        sub_100025F40(v165, &unk_1005D54F0, &unk_1004E8DA0);
        v168 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v169 = v264;
        sub_10000E268(v3 + v168, v264, &qword_1005D5968, &unk_1004E9180);
        v170 = sub_1004A4A74();
        v171 = v170[-1].isa;
        result = (*(v171 + 6))(v169, 1, v170);
        if (result == 1)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_10024DECC(v74, v55, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v172 = v258;
        sub_10024DECC(v74, v258, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v173 = sub_1004A4A54();
        v174 = sub_1004A6014();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v284[0] = v176;
          *v175 = 68158722;
          *(v175 + 4) = 2;
          *(v175 + 8) = 256;
          v177 = v283;
          *(v175 + 10) = v282;
          *(v175 + 11) = 2082;
          v178 = ConnectionID.debugDescription.getter(v177);
          v283 = v170;
          v180 = sub_10015BA6C(v178, v179, v284);

          *(v175 + 13) = v180;
          *(v175 + 21) = 2048;
          v280 = v74;
          v181 = *(v55 + 1);
          sub_10024DD58(v55, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v175 + 23) = v181;
          *(v175 + 31) = 2048;
          v182 = v172;
          v183 = *(v172 + 16);
          sub_10024DD58(v182, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v175 + 33) = v183;
          _os_log_impl(&_mh_execute_header, v173, v174, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld.", v175, 0x29u);
          sub_1000197E0(v176);
          v169 = v264;

          v184 = v280;
          v170 = v283;
        }

        else
        {
          sub_10024DD58(v172, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v55, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v184 = v74;
        }

        sub_10024DD58(v184, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v171 + 1))(v169, v170);
      }

      else
      {
        v204 = v266;
        (v166[4])(v266, v165, v167);
        v205 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v206 = v3 + v205;
        v207 = v265;
        sub_10000E268(v206, v265, &qword_1005D5968, &unk_1004E9180);
        v208 = sub_1004A4A74();
        v209 = *(v208 - 8);
        result = (*(v209 + 48))(v207, 1, v208);
        if (result == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v278 = v209;
        v279 = v208;
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v210 = v257;
        sub_10024DECC(v74, v257, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v280 = v74;
        v211 = v259;
        sub_10024DECC(v74, v259, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v212 = v261;
        v277 = v166[2];
        (v277)(v261, v204, v167);
        v213 = sub_1004A4A54();
        v214 = sub_1004A6014();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          LODWORD(v274) = v214;
          v216 = v215;
          v273 = swift_slowAlloc();
          v275 = swift_slowAlloc();
          v284[0] = v275;
          *v216 = 68158978;
          *(v216 + 4) = 2;
          *(v216 + 8) = 256;
          v217 = v283;
          *(v216 + 10) = v282;
          *(v216 + 11) = 2082;
          v218 = ConnectionID.debugDescription.getter(v217);
          v220 = sub_10015BA6C(v218, v219, v284);
          v283 = v213;
          v221 = v166;
          v222 = v167;
          v223 = v220;

          *(v216 + 13) = v223;
          *(v216 + 21) = 2048;
          v224 = *(v210 + 8);
          sub_10024DD58(v210, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v216 + 23) = v224;
          v207 = v265;
          *(v216 + 31) = 2048;
          v225 = v211;
          v226 = *(v211 + 16);
          sub_10024DD58(v225, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v216 + 33) = v226;
          *(v216 + 41) = 2112;
          sub_10024DCAC();
          swift_allocError();
          (v277)(v227, v212, v222);
          v228 = _swift_stdlib_bridgeErrorToNSError();
          v229 = v221[1];
          v229(v212, v222);
          *(v216 + 43) = v228;
          v230 = v273;
          *v273 = v228;
          v231 = v283;
          _os_log_impl(&_mh_execute_header, v283, v274, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. %@", v216, 0x33u);
          sub_100025F40(v230, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v275);

          v229(v266, v222);
        }

        else
        {
          sub_10024DD58(v211, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v210, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v254 = v166[1];
          v254(v212, v167);
          v254(v204, v167);
        }

        sub_10024DD58(v280, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v278 + 8))(v207, v279);
      }
    }
  }

  else
  {
    v123 = v280;
    v124 = v281;
    v125 = v279;
    if (v74[2] == 1)
    {
      v126 = v74;
      v127 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v128 = v3;
      v129 = v275;
      sub_10000E268(v3 + v127, v275, &qword_1005D5968, &unk_1004E9180);
      v130 = sub_1004A4A74();
      v131 = *(v130 - 8);
      result = (*(v131 + 48))(v129, 1, v130);
      if (result == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v132 = sub_1004A4A54();
      v133 = sub_1004A6014();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v286 = v135;
        *v134 = 68158210;
        *(v134 + 4) = 2;
        *(v134 + 8) = 256;
        v136 = v283;
        *(v134 + 10) = v282;
        *(v134 + 11) = 2082;
        v137 = ConnectionID.debugDescription.getter(v136);
        v139 = sub_10015BA6C(v137, v138, &v286);
        v129 = v275;

        *(v134 + 13) = v139;
        _os_log_impl(&_mh_execute_header, v132, v133, "[%.*hhx-%{public}s] Server is temporarily unavailable.", v134, 0x15u);
        sub_1000197E0(v135);
        v124 = v281;

        v125 = v279;
      }

      v123 = v280;
      (*(v131 + 8))(v129, v130);
      v3 = v128;
      v74 = v126;
    }

    v140 = *(v74 + 6);
    if (v140)
    {
      v141 = *(v74 + 4);
      v281 = *(v74 + 5);
      v142 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v143 = v278;
      sub_10000E268(v3 + v142, v278, &qword_1005D5968, &unk_1004E9180);
      v144 = sub_1004A4A74();
      v145 = *(v144 - 8);
      result = (v145[6].isa)(v143, 1, v144);
      if (result == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      sub_1000110B0(v141);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v146 = v272;
      sub_10024DECC(v74, v272, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      v147 = v273;
      sub_10024DECC(v74, v273, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1000110B0(v141);

      v148 = sub_1004A4A54();
      v149 = sub_1004A6014();
      sub_10001114C(v141);

      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v279 = v144;
        v151 = v147;
        v152 = v150;
        v277 = swift_slowAlloc();
        v285 = v277;
        *v152 = 68158978;
        *(v152 + 4) = 2;
        *(v152 + 8) = 256;
        v153 = v283;
        *(v152 + 10) = v282;
        *(v152 + 11) = 2082;
        v154 = ConnectionID.debugDescription.getter(v153);
        v283 = v145;
        v156 = sub_10015BA6C(v154, v155, &v285);
        v280 = v74;
        v157 = v156;

        *(v152 + 13) = v157;
        *(v152 + 21) = 2048;
        v158 = *(v146 + 8);
        sub_10024DD58(v146, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v152 + 23) = v158;
        *(v152 + 31) = 2048;
        v159 = v151[2];
        v160 = v151;
        v144 = v279;
        sub_10024DD58(v160, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v152 + 33) = v159;
        *(v152 + 41) = 2082;
        v161 = ResponseText.debugDescription.getter(v141, v281, v140);
        v163 = sub_10015BA6C(v161, v162, &v285);

        *(v152 + 43) = v163;
        _os_log_impl(&_mh_execute_header, v148, v149, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. '%{public}s'", v152, 0x33u);
        swift_arrayDestroy();

        v143 = v278;

        sub_10001114C(v141);

        v164 = v280;
        v145 = v283;
      }

      else
      {
        sub_10024DD58(v147, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DD58(v146, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10001114C(v141);

        v164 = v74;
      }

      sub_10024DD58(v164, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v145[1].isa)(v143, v144);
    }

    else
    {
      v185 = v271;
      sub_10000E268(&v74[*(v274 + 48)], v271, &unk_1005D54F0, &unk_1004E8DA0);
      v186 = v276;
      if ((v124[6])(v185, 1, v276) == 1)
      {
        sub_100025F40(v185, &unk_1005D54F0, &unk_1004E8DA0);
        v187 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v188 = v267;
        sub_10000E268(v3 + v187, v267, &qword_1005D5968, &unk_1004E9180);
        v189 = sub_1004A4A74();
        v190 = v189[-1].isa;
        result = (*(v190 + 6))(v188, 1, v189);
        if (result == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v191 = v260;
        sub_10024DECC(v74, v260, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v192 = v263;
        sub_10024DECC(v74, v263, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v193 = sub_1004A4A54();
        v194 = sub_1004A6014();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v285 = v196;
          *v195 = 68158722;
          *(v195 + 4) = 2;
          *(v195 + 8) = 256;
          v197 = v283;
          *(v195 + 10) = v282;
          *(v195 + 11) = 2082;
          v198 = ConnectionID.debugDescription.getter(v197);
          v283 = v189;
          v200 = sub_10015BA6C(v198, v199, &v285);

          *(v195 + 13) = v200;
          *(v195 + 21) = 2048;
          v201 = v191;
          v202 = *(v191 + 8);
          sub_10024DD58(v201, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v195 + 23) = v202;
          *(v195 + 31) = 2048;
          v203 = *(v192 + 16);
          v189 = v283;
          sub_10024DD58(v192, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v195 + 33) = v203;
          _os_log_impl(&_mh_execute_header, v193, v194, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld.", v195, 0x29u);
          sub_1000197E0(v196);
          v188 = v267;
        }

        else
        {
          sub_10024DD58(v192, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v191, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        }

        sub_10024DD58(v74, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v190 + 1))(v188, v189);
      }

      else
      {
        v232 = v269;
        (v124[4])(v269, v185, v186);
        v233 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v234 = v3 + v233;
        v235 = v268;
        sub_10000E268(v234, v268, &qword_1005D5968, &unk_1004E9180);
        v236 = sub_1004A4A74();
        v278 = *(v236 - 1);
        v237 = *(v278 + 48);
        v281 = v236;
        result = v237(v235, 1);
        if (result == 1)
        {
LABEL_60:
          __break(1u);
          return result;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v238 = v262;
        sub_10024DECC(v74, v262, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DECC(v74, v123, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v280 = v74;
        v239 = v124[2];
        v239(v125, v232, v186);
        v240 = sub_1004A4A54();
        LODWORD(v277) = sub_1004A6014();
        if (os_log_type_enabled(v240, v277))
        {
          v241 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          v275 = swift_slowAlloc();
          v285 = v275;
          *v241 = 68158978;
          *(v241 + 4) = 2;
          *(v241 + 8) = 256;
          v242 = v283;
          *(v241 + 10) = v282;
          *(v241 + 11) = 2082;
          v243 = ConnectionID.debugDescription.getter(v242);
          v245 = sub_10015BA6C(v243, v244, &v285);

          *(v241 + 13) = v245;
          *(v241 + 21) = 2048;
          v246 = v124;
          v247 = *(v238 + 8);
          sub_10024DD58(v238, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v241 + 23) = v247;
          *(v241 + 31) = 2048;
          v248 = *(v123 + 16);
          sub_10024DD58(v123, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v241 + 33) = v248;
          *(v241 + 41) = 2112;
          sub_10024DCAC();
          swift_allocError();
          v249 = v279;
          v239(v250, v279, v186);
          v251 = _swift_stdlib_bridgeErrorToNSError();
          v252 = v246[1];
          v252(v249, v186);
          *(v241 + 43) = v251;
          v253 = v274;
          *v274 = v251;
          _os_log_impl(&_mh_execute_header, v240, v277, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. %@", v241, 0x33u);
          sub_100025F40(v253, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v275);

          v252(v269, v186);
          v235 = v268;
        }

        else
        {
          sub_10024DD58(v123, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v238, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v255 = v124[1];
          v255(v279, v186);
          v255(v232, v186);
        }

        sub_10024DD58(v280, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v278 + 8))(v235, v281);
      }
    }
  }
}

uint64_t sub_100247ED8(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 48);
  v107 = *(a3 + 32);
  v108[0] = v8;
  *(v108 + 11) = *(a3 + 59);
  v9 = *(a3 + 16);
  v105 = *a3;
  v106 = v9;
  v10 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v84 - v15;
  __chkstk_darwin(v17);
  v89 = &v84 - v18;
  v20 = __chkstk_darwin(v19);
  v22 = &v84 - v21;
  v23 = *a1;
  v24 = (*(**a1 + 608))(v20);
  v26 = *(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v109 = v24;
  v110 = v25;
  *&v115[11] = *(v108 + 11);
  v114 = v107;
  *v115 = v108[0];
  v112 = v105;
  v113 = v106;
  LODWORD(v88) = a2;
  v111 = v26 == a2;
  if (v26 != a2)
  {
    if (v24)
    {
      v47 = v24;
      LODWORD(v89) = v26;
      v87 = v25;
      v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(a4 + v48, v22, &qword_1005D5968, &unk_1004E9180);
      v49 = sub_1004A4A74();
      v88 = *(v49 - 8);
      result = (*(v88 + 48))(v22, 1, v49);
      if (result != 1)
      {
        swift_retain_n();
        sub_10000E268(a3, &v100, &qword_1005CF260, &qword_1004D2420);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();

        v50 = sub_1004A4A54();
        v51 = sub_1004A5FF4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v86 = v49;
          v53 = v52;
          *&v96[0] = swift_slowAlloc();
          *v53 = 68158723;
          *(v53 + 4) = 2;
          *(v53 + 8) = 256;
          v54 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v53 + 10) = v54;

          *(v53 + 11) = 2082;
          v55 = ConnectionID.debugDescription.getter(v89);
          v57 = sub_10015BA6C(v55, v56, v96);

          *(v53 + 13) = v57;
          *(v53 + 21) = 2160;
          *(v53 + 23) = 0x786F626C69616DLL;
          *(v53 + 31) = 2085;
          v100 = v47;
          LODWORD(v101) = v87;
          v58 = sub_1004A5824();
          v60 = sub_10015BA6C(v58, v59, v96);

          *(v53 + 33) = v60;
          _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s'", v53, 0x29u);
          swift_arrayDestroy();

          v49 = v86;

          sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);
        }

        else
        {

          sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);
        }

        return (*(v88 + 8))(v22, v49);
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    LODWORD(v89) = v26;
    v61 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a4 + v61, v13, &qword_1005D5968, &unk_1004E9180);
    v62 = sub_1004A4A74();
    v63 = *(v62 - 8);
    result = (*(v63 + 48))(v13, 1, v62);
    if (result != 1)
    {
      sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
      sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v64 = sub_1004A4A54();
      v65 = sub_1004A6034();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v88 = v62;
        v68 = v67;
        *&v98[0] = v67;
        *v66 = 68158210;
        *(v66 + 4) = 2;
        *(v66 + 8) = 256;
        *(v66 + 10) = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v66 + 11) = 2082;
        v69 = ConnectionID.debugDescription.getter(v89);
        v71 = sub_10015BA6C(v69, v70, v98);

        *(v66 + 13) = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%.*hhx] %{public}s: -", v66, 0x15u);
        sub_1000197E0(v68);
        v62 = v88;
      }

      else
      {
      }

      return (*(v63 + 8))(v13, v62);
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*a3)
  {
    v72 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    v73 = a4;
    swift_beginAccess();
    sub_10000E268(a4 + v72, v16, &qword_1005D5968, &unk_1004E9180);
    v74 = sub_1004A4A74();
    v75 = *(v74 - 8);
    result = (*(v75 + 48))(v16, 1, v74);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v76 = sub_1004A4A54();
      v77 = sub_1004A6034();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v89 = v74;
        v79 = v78;
        v80 = swift_slowAlloc();
        *&v98[0] = v80;
        *v79 = 68158210;
        *(v79 + 4) = 2;
        *(v79 + 8) = 256;
        *(v79 + 10) = *(v73 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v79 + 11) = 2082;
        v81 = ConnectionID.debugDescription.getter(v88);
        v83 = sub_10015BA6C(v81, v82, v98);

        *(v79 + 13) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "[%.*hhx] %{public}s: - *", v79, 0x15u);
        sub_1000197E0(v80);

        v74 = v89;
      }

      else
      {
      }

      sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);
      return (*(v75 + 8))(v16, v74);
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v100 = *a3;
  v102 = *(a3 + 24);
  v103 = *(a3 + 40);
  *v104 = *(a3 + 56);
  *&v104[15] = *(a3 + 71);
  v101 = *(a3 + 8);
  if (!v24)
  {
    goto LABEL_17;
  }

  v27 = v24;
  v87 = v25;
  v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v29 = v89;
  sub_10000E268(a4 + v28, v89, &qword_1005D5968, &unk_1004E9180);
  v30 = sub_1004A4A74();
  v85 = *(v30 - 8);
  v86 = v30;
  result = (*(v85 + 48))(v29, 1);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_retain_n();
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);

  sub_10000E268(a3, v98, &qword_1005CF260, &qword_1004D2420);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v98[2] = v107;
  v99[0] = v108[0];
  *(v99 + 11) = *(v108 + 11);
  v98[0] = v105;
  v98[1] = v106;
  sub_10000E268(a3, v96, &qword_1005CF260, &qword_1004D2420);
  sub_1000CB914(v98, v96);
  v32 = sub_1004A4A54();
  v33 = sub_1004A6034();

  v84 = v32;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v34 = 68160003;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    v35 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v34 + 10) = v35;

    *(v34 + 11) = 2082;
    v36 = ConnectionID.debugDescription.getter(v88);
    v38 = sub_10015BA6C(v36, v37, v94);

    *(v34 + 13) = v38;
    *(v34 + 21) = 2160;
    *(v34 + 23) = 0x786F626C69616DLL;
    *(v34 + 31) = 2085;
    *&v96[0] = v27;
    DWORD2(v96[0]) = v87;
    v39 = sub_1004A5824();
    v41 = sub_10015BA6C(v39, v40, v94);

    *(v34 + 33) = v41;
    *(v34 + 41) = 2048;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 43) = v102;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 51) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v42 = DWORD2(v102);
    if (BYTE12(v102))
    {
      v42 = 0;
    }

    *(v34 + 53) = v42;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 57) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v43 = DWORD2(v103);
    if (BYTE12(v103))
    {
      v43 = 0;
    }

    *(v34 + 59) = v43;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 63) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v44 = *v104;
    if (v104[4])
    {
      v44 = 0;
    }

    *(v34 + 65) = v44;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 69) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v34 + 71) = v104[18] & 1;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v45 = v33;
    v46 = v84;
    _os_log_impl(&_mh_execute_header, v84, v45, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s' * messageCount %ld, firstUnseenMessage %u, nextUID %u, uidValidity 0x%x, isReadOnly %{BOOL}d", v34, 0x4Bu);
    swift_arrayDestroy();

    sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);
  }

  else
  {
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v90[2] = v107;
    v91[0] = v108[0];
    *(v91 + 11) = *(v108 + 11);
    v90[0] = v105;
    v90[1] = v106;
    sub_1000CB970(v90);
    v92[2] = v107;
    v93[0] = v108[0];
    *(v93 + 11) = *(v108 + 11);
    v92[0] = v105;
    v92[1] = v106;
    sub_1000CB970(v92);
    v94[2] = v107;
    v95[0] = v108[0];
    *(v95 + 11) = *(v108 + 11);
    v94[0] = v105;
    v94[1] = v106;
    sub_1000CB970(v94);

    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v96[2] = v107;
    v97[0] = v108[0];
    *(v97 + 11) = *(v108 + 11);
    v96[0] = v105;
    v96[1] = v106;
    sub_1000CB970(v96);
    sub_1000CB970(&v100);
    sub_1000CB970(&v100);

    sub_100025F40(&v109, &qword_1005D5D20, &qword_1004E9388);
  }

  return (*(v85 + 8))(v89, v86);
}

uint64_t sub_100248D88(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

int64_t sub_100248DE8()
{
  v1 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26[-v3];
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  if (*(v13 + 16))
  {
    return sub_100241B8C();
  }

  v14 = *(v13 + 8);
  result = static MonotonicTime.now()();
  v15 = __OFSUB__(v14, result);
  v16 = v14 - result;
  if (v14 >= result)
  {
LABEL_8:
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (__OFSUB__(result, v14))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = __OFSUB__(0, result - v14);
  v16 = v14 - result;
  if (v15)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v17 = v16 / 1000000000.0;
  if (v17 < 0.0)
  {
    return sub_100241B8C();
  }

  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v0 + v18, v4, &qword_1005D5968, &unk_1004E9180);
  v19 = sub_1004A4A74();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v4, 1, v19);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v21 = v0;

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v22 = sub_1004A4A54();
  v23 = sub_1004A6014();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 68158208;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    *(v24 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v24 + 11) = 2048;
    *(v24 + 13) = v17;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] Backoff timer expired, but we still have to wait %f seconds.", v24, 0x15u);
  }

  else
  {
  }

  v25 = (*(v20 + 8))(v4, v19);
  return sub_1002414F4(v25);
}

uint64_t sub_100249160(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v7 = *(v1 + v7);
      v10 = v7 >> 62 ? sub_1004A6A34() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {
          goto LABEL_21;
        }

        if ((v7 & 0xC000000000000001) == 0)
        {
          break;
        }

        v1 = sub_1004A6794();
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:

          return 1;
        }

LABEL_12:
        (*(*v1 + 304))();
        if (swift_getEnumCaseMultiPayload() == 2)
        {

          sub_10024DD58(v6, type metadata accessor for ConnectionState);
          return 0;
        }

        v13 = sub_10024DD58(v6, type metadata accessor for ConnectionState);
        v14 = (*(*v1 + 440))(v13);

        if (v14 <= a1)
        {
          v12 = a1 - v14;
          if (__OFSUB__(a1, v14))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (__OFSUB__(v14, a1))
          {
            goto LABEL_27;
          }

          v12 = a1 - v14;
          if (__OFSUB__(0, v14 - a1))
          {
            goto LABEL_29;
          }
        }

        if (v12 / 1000000000.0 < 60.0)
        {

          return 0;
        }
      }

      if (i < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1004A6A34();
      if (!result)
      {
        return result;
      }
    }

    v1 = *(v7 + 8 * i + 32);

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100249404()
{
  v1 = *v0;
  v2 = 0x656D614E676F6CLL;
  v3 = 0x697463656E6E6F63;
  v4 = 0x6F7272457473616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656E69676E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002494B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10024E298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002494D8(uint64_t a1)
{
  v2 = sub_10024E054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249514(uint64_t a1)
{
  v2 = sub_10024E054();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249550(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D5D48, &qword_1004E94D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10024E054();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  sub_1004A6C44();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v22 = 1;
    sub_1004A6C44();
    v21 = v3[4];
    v20[15] = 2;
    sub_10000C9C0(&qword_1005D5D58, &qword_1004E94E0);
    sub_10024E0A8();
    sub_1004A6C74();
    v16 = v3[5];
    v17 = v3[6];
    v20[14] = 3;
    sub_1004A6BE4();
    v18 = v3[7];
    v19 = v3[8];
    v20[13] = 4;
    sub_1004A6C44();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10024979C(void **a1)
{
  v2 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10024AFB0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100249844(v5);
  *a1 = v3;
}

void sub_100249844(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004A6CC4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CommandConnection.RecentErrors.Error(0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100249BC4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100249970(0, v2, 1, a1);
  }
}

void sub_100249970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v8 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  __chkstk_darwin(v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_10024DECC(v22, v16, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DECC(v19, v12, type metadata accessor for CommandConnection.RecentErrors.Error);
      v23 = *v16;
      v24 = *v12;
      sub_10024DD58(v12, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DD58(v16, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10024DDB8(v22, v35, type metadata accessor for CommandConnection.RecentErrors.Error);
      swift_arrayInitWithTakeFrontToBack();
      sub_10024DDB8(v25, v19, type metadata accessor for CommandConnection.RecentErrors.Error);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100249BC4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v109 = a1;
  v121 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v9 = *(v121 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v121);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v104 - v13;
  __chkstk_darwin(v14);
  v123 = (&v104 - v15);
  __chkstk_darwin(v16);
  v122 = (&v104 - v17);
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
    }

    else
    {
LABEL_129:
      v99 = sub_100141810(a4);
    }

    v124 = v99;
    a4 = *(v99 + 2);
    if (a4 >= 2)
    {
      v100 = v9;
      while (*a3)
      {
        v101 = *&v99[16 * a4];
        v102 = v99;
        v9 = *&v99[16 * a4 + 24];
        sub_10024A4FC(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *&v99[16 * a4 + 16], *a3 + *(v100 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_100141810(v102);
        }

        if (a4 - 2 >= *(v102 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v102[16 * a4];
        *v103 = v101;
        *(v103 + 1) = v9;
        v124 = v102;
        sub_100141784(a4 - 1);
        v99 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v110 = a3;
  v108 = a4;
  v106 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v113 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = v23 + v24 * v22;
      v25 = v122;
      sub_10024DECC(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      v26 = v123;
      sub_10024DECC(v23 + v24 * v21, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
      v27 = *v25;
      v115 = *v26;
      v116 = v27;
      sub_10024DD58(v26, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DD58(v25, type metadata accessor for CommandConnection.RecentErrors.Error);
      v107 = v21;
      v28 = v21 + 2;
      v117 = v24;
      v118 = v18;
      v29 = v23 + v24 * v28;
      while (v18 != v28)
      {
        LODWORD(v119) = v116 < v115;
        v30 = v122;
        sub_10024DECC(v29, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
        v31 = v6;
        v32 = v123;
        sub_10024DECC(v5, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
        v33 = *v30;
        v34 = *v32;
        v35 = v32;
        v6 = v31;
        sub_10024DD58(v35, type metadata accessor for CommandConnection.RecentErrors.Error);
        v18 = v118;
        sub_10024DD58(v30, type metadata accessor for CommandConnection.RecentErrors.Error);
        ++v28;
        v29 += v117;
        v5 += v117;
        if (((v119 ^ (v33 >= v34)) & 1) == 0)
        {
          v18 = v28 - 1;
          break;
        }
      }

      a3 = v110;
      v9 = v106;
      v21 = v107;
      a4 = v108;
      if (v116 < v115)
      {
        if (v18 < v107)
        {
          goto LABEL_126;
        }

        if (v107 < v18)
        {
          v36 = v117 * (v18 - 1);
          v37 = v18 * v117;
          v118 = v18;
          v38 = v18;
          v39 = v107;
          v40 = v107 * v117;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!v41)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_10024DDB8(v41 + v40, v112, type metadata accessor for CommandConnection.RecentErrors.Error);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10024DDB8(v112, v41 + v36, type metadata accessor for CommandConnection.RecentErrors.Error);
              a3 = v110;
            }

            ++v39;
            v36 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v39 < v38);
          v9 = v106;
          v21 = v107;
          a4 = v108;
          v18 = v118;
        }
      }
    }

    v42 = a3[1];
    if (v18 < v42)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v21 + a4;
        }

        if (v43 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v43)
        {
          break;
        }
      }
    }

    v44 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v113;
    }

    else
    {
      v20 = sub_100085288(0, *(v113 + 2) + 1, 1, v113);
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      v20 = sub_100085288((v45 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v46 = &v20[16 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v109;
    if (!*v109)
    {
      goto LABEL_134;
    }

    v114 = v44;
    if (a4)
    {
      while (1)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_52:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v20[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v75 = &v20[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_66:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v86 = v20;
        v87 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v48 + 40];
        sub_10024A4FC(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[16 * v48 + 32], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100141810(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v124 = v86;
        sub_100141784(v48);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v20[16 * v5 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v20[16 * v5];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v114;
    a4 = v108;
    if (v114 >= v18)
    {
      goto LABEL_95;
    }
  }

  v105 = v6;
  v89 = *a3;
  v90 = *(v9 + 72);
  v91 = *a3 + v90 * (v18 - 1);
  v92 = -v90;
  v107 = v21;
  v93 = v21 - v18;
  v111 = v90;
  v119 = v89;
  v5 = v89 + v18 * v90;
  v114 = v43;
LABEL_85:
  v117 = v91;
  v118 = v18;
  v115 = v5;
  v116 = v93;
  v94 = v91;
  while (1)
  {
    v95 = v122;
    sub_10024DECC(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
    v96 = v123;
    sub_10024DECC(v94, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
    a4 = *v95;
    v97 = *v96;
    sub_10024DD58(v96, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_10024DD58(v95, type metadata accessor for CommandConnection.RecentErrors.Error);
    if (a4 >= v97)
    {
LABEL_84:
      v18 = v118 + 1;
      v91 = v117 + v111;
      v93 = v116 - 1;
      v5 = v115 + v111;
      v44 = v114;
      if (v118 + 1 != v114)
      {
        goto LABEL_85;
      }

      v6 = v105;
      v9 = v106;
      a3 = v110;
      v21 = v107;
      if (v114 < v107)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v119)
    {
      break;
    }

    a4 = v120;
    sub_10024DDB8(v5, v120, type metadata accessor for CommandConnection.RecentErrors.Error);
    swift_arrayInitWithTakeFrontToBack();
    sub_10024DDB8(a4, v94, type metadata accessor for CommandConnection.RecentErrors.Error);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}