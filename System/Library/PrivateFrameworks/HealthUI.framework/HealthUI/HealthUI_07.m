uint64_t sub_1C3C668F0()
{
  v1 = v0;
  sub_1C3C29314();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1C3C67E7C();
  result = sub_1C3D207F4();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v0;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48);
      v19 = *(v30 + 72);
      sub_1C3C67E14(v18 + v19 * (v15 | (v7 << 6)), v32, sub_1C3C29314);
      sub_1C3D20B04();
      sub_1C3D1FE54();
      sub_1C3C67D80();
      sub_1C3D1FF84();
      sub_1C3D1FF84();
      result = sub_1C3D20B34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1C3C67E14(v32, *(v6 + 48) + v14 * v19, sub_1C3C29314);
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v28;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1C3C66C30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C3C6669C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C3C670B4();
      goto LABEL_16;
    }

    sub_1C3C67400();
  }

  v10 = *v4;
  sub_1C3D20B04();
  sub_1C3D20164();
  result = sub_1C3D20B34();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C3D20A54();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C3D20A94();
  __break(1u);
  return result;
}

uint64_t sub_1C3C66DB0(uint64_t a1, unint64_t a2, char a3)
{
  sub_1C3C29314();
  v28 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v25 = v8;
  v26 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1C3C668F0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C3C67204();
      goto LABEL_15;
    }

    sub_1C3C6762C();
  }

  v13 = *v3;
  sub_1C3D20B04();
  sub_1C3D1FE54();
  sub_1C3C67D80();
  sub_1C3D1FF84();
  v27 = *(v28 + 36);
  sub_1C3D1FF84();
  v14 = sub_1C3D20B34();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_1C3C67A44(*(v13 + 48) + v17 * a2, v10, sub_1C3C29314);
      sub_1C3C65DF8(&unk_1EC0862A0, MEMORY[0x1E696B418]);
      if (sub_1C3D20034())
      {
        v18 = sub_1C3D20034();
        sub_1C3C67DB4(v10, sub_1C3C29314);
        if (v18)
        {
          sub_1C3D20A94();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1C3C67DB4(v10, sub_1C3C29314);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C3C67E14(a1, *(v19 + 48) + *(v25 + 72) * a2, sub_1C3C29314);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_1C3C670B4()
{
  v1 = v0;
  sub_1C3C67D28();
  v2 = *v0;
  v3 = sub_1C3D207E4();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1C3C67204()
{
  v1 = v0;
  sub_1C3C29314();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C67E7C();
  v6 = *v0;
  v7 = sub_1C3D207E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C3C67A44(*(v6 + 48) + v21, v5, sub_1C3C29314);
        result = sub_1C3C67E14(v5, *(v8 + 48) + v21, sub_1C3C29314);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1C3C67400()
{
  v1 = v0;
  v2 = *v0;
  sub_1C3C67D28();
  result = sub_1C3D207F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C3D20B04();

      sub_1C3D20164();
      result = sub_1C3D20B34();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C3C6762C()
{
  v1 = v0;
  sub_1C3C29314();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1C3C67E7C();
  result = sub_1C3D207F4();
  v6 = result;
  if (*(v4 + 16))
  {
    v27 = v0;
    v28 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48);
      v19 = *(v29 + 72);
      sub_1C3C67A44(v18 + v19 * (v15 | (v7 << 6)), v31, sub_1C3C29314);
      sub_1C3D20B04();
      sub_1C3D1FE54();
      sub_1C3C67D80();
      sub_1C3D1FF84();
      sub_1C3D1FF84();
      result = sub_1C3D20B34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1C3C67E14(v31, *(v6 + 48) + v14 * v19, sub_1C3C29314);
      ++*(v6 + 16);
      v4 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C3C6793C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C3D1F274();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C3C67994()
{
  result = qword_1EC081058;
  if (!qword_1EC081058)
  {
    sub_1C3C65960();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081058);
  }

  return result;
}

uint64_t sub_1C3C67A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C67AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1C3C67B20(uint64_t a1)
{
  sub_1C3C657F4(0, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C67BAC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1C3C661F8(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1C3C23BDC(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1C3C23BDC((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

void sub_1C3C67D28()
{
  if (!qword_1EC080DB8)
  {
    v0 = sub_1C3D20814();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080DB8);
    }
  }
}

uint64_t sub_1C3C67DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C67E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C3C67E7C()
{
  if (!qword_1EC086350)
  {
    sub_1C3C29314();
    sub_1C3C68038(&qword_1EC086358, sub_1C3C29314, sub_1C3C67D80);
    v0 = sub_1C3D20814();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086350);
    }
  }
}

void sub_1C3C67F90()
{
  if (!qword_1EC081080)
  {
    sub_1C3C65570();
    sub_1C3C68038(&qword_1EC080FE8, sub_1C3C65570, sub_1C3C65C68);
    v0 = sub_1C3D1F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081080);
    }
  }
}

uint64_t sub_1C3C68038(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3C680B8()
{
  result = qword_1EC080ED0;
  if (!qword_1EC080ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080ED0);
  }

  return result;
}

uint64_t sub_1C3C6810C(void *a1)
{
  sub_1C3C68354(0, &qword_1EC086360, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C3C68300();
  sub_1C3D20B54();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1C3D209D4();
    v11 = 1;
    sub_1C3D209D4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1C3C68300()
{
  result = qword_1EC080EF0[0];
  if (!qword_1EC080EF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC080EF0);
  }

  return result;
}

void sub_1C3C68354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C3C68300();
    v7 = a3(a1, &type metadata for AccessoryRectangularTitleView.TitleDetail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C3C683CC()
{
  result = qword_1EC086368;
  if (!qword_1EC086368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086368);
  }

  return result;
}

unint64_t sub_1C3C68424()
{
  result = qword_1EC080EE0;
  if (!qword_1EC080EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080EE0);
  }

  return result;
}

unint64_t sub_1C3C6847C()
{
  result = qword_1EC080EE8;
  if (!qword_1EC080EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080EE8);
  }

  return result;
}

uint64_t sub_1C3C684D4()
{
  v1 = *(v0 + 16);
  if (v1 >= 3)
  {
    type metadata accessor for HKAudiogramEar(0);
    result = sub_1C3D20A74();
    __break(1u);
  }

  else
  {
    v2 = [objc_opt_self() *off_1E81BCC80[v1]];
    v3 = [objc_opt_self() strokeStyleWithColor:v2 lineWidth:2.0];

    [v3 setDashStyle_];
    return v3;
  }

  return result;
}

uint64_t sub_1C3C6859C()
{
  v1 = [objc_allocWithZone(HKLineSeriesPresentationStyle) init];
  v2 = sub_1C3C684D4();
  [v1 setStrokeStyle_];

  v3 = *(v0 + 16);
  if (v3 >= 3)
  {
    type metadata accessor for HKAudiogramEar(0);
    result = sub_1C3D20A74();
    __break(1u);
  }

  else
  {
    v4 = [objc_opt_self() *off_1E81BCC98[v3]];
    v5 = [objc_allocWithZone(HKLineSeriesPointMarkerStyle) initWithColor:v4 radius:1 style:4.0];

    [v1 setPointMarkerStyle_];
    return v1;
  }

  return result;
}

uint64_t sub_1C3C686DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C3D1F3B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6F2D0(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C3C6F208(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C3D1F114();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C3D20504();
    v13 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t FeatureRegulatoryInfoView.init(infoProvider:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1C3C6F2D0(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for FeatureRegulatoryInfoView(0);
  v3 = (a1 + *(v2 + 24));
  v8 = sub_1C3D20104();
  v9 = v4;
  MEMORY[0x1C692F800](0x74756F62412ELL, 0xE600000000000000);
  *v3 = v8;
  v3[1] = v9;
  v5 = (a1 + *(v2 + 20));
  type metadata accessor for FeatureRegulatoryInfoProvider();
  sub_1C3C6DD20(&qword_1EC086378, type metadata accessor for FeatureRegulatoryInfoProvider);
  result = sub_1C3D1F184();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t FeatureRegulatoryInfoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1C3D1F6A4();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C3D1F5B4();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6D958();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E0B4();
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E188();
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E28C();
  v20 = *(v19 - 8);
  v53 = v19;
  v54 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  sub_1C3C6DA08(0);
  sub_1C3C6DD20(&qword_1EC086428, sub_1C3C6DA08);
  sub_1C3D1F8D4();
  sub_1C3D1F5A4();
  v22 = sub_1C3C6DD20(&qword_1EC086438, sub_1C3C6D958);
  v23 = MEMORY[0x1E697C750];
  sub_1C3D1FAC4();
  (*(v44 + 8))(v6, v4);
  (*(v9 + 8))(v11, v8);
  v24 = v47;
  sub_1C3D1F694();
  v57 = v8;
  v58 = v4;
  v59 = v22;
  v60 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v43;
  sub_1C3D1FA44();
  (*(v51 + 8))(v24, v52);
  (*(v45 + 8))(v15, v13);
  sub_1C3C6E440();
  v28 = v27;
  v57 = v13;
  v58 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  sub_1C3C6E4F4();
  v31 = v30;
  v32 = sub_1C3C6DD20(&qword_1EC086460, sub_1C3C6E4F4);
  v57 = v31;
  v58 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v49;
  sub_1C3D1FAA4();
  v36 = v35;
  (*(v50 + 8))(v26, v35);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1C3D20834();
  v37 = (v48 + *(type metadata accessor for FeatureRegulatoryInfoView(0) + 24));
  v39 = *v37;
  v38 = v37[1];

  v57 = v39;
  v58 = v38;
  MEMORY[0x1C692F800](0x7463656C6C6F432ELL, 0xEF776569566E6F69);
  v57 = v36;
  v58 = v28;
  v59 = v29;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v40 = v53;
  sub_1C3D1FA64();

  return (*(v54 + 8))(v34, v40);
}

uint64_t sub_1C3C690A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v133 = a2;
  sub_1C3C6E088(0);
  v117 = v3;
  v116 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v115 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DD90(0, &qword_1EC086418, sub_1C3C6E088);
  v132 = v5;
  v131 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v110 - v6;
  sub_1C3C6E6F4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v126 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1E064();
  v129 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E008(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v148 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v110 - v14;
  v16 = sub_1C3D1DE74();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v110 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DB40(0, &qword_1EC086400, sub_1C3C6DFB0);
  v125 = v18;
  v124 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v110 - v19;
  sub_1C3C6E638(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v121 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DF2C();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v146 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v110 - v26;
  sub_1C3C6DB40(0, &qword_1EC0863A8, sub_1C3C6DBAC);
  v145 = v27;
  v128 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v150 = &v110 - v30;
  v31 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v31);
  v123 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v110 - v37);
  sub_1C3C6DB40(0, &qword_1EC086398, sub_1C3C65900);
  v144 = v39;
  v143 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v142 = &v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v110 - v42;
  sub_1C3D20374();
  v127 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v122 = v31;
  v130 = v9;
  v147 = v15;
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v44 = qword_1EC08DBD8;
  v45 = sub_1C3D1DEC4();
  v47 = v46;

  v157 = v45;
  v158 = v47;
  sub_1C3C4999C();
  v157 = sub_1C3D1F994();
  v158 = v48;
  LOBYTE(v159) = v49 & 1;
  v160 = v50;
  MEMORY[0x1EEE9AC00](v157);
  sub_1C3C65900();
  sub_1C3C6DE7C();
  v141 = v43;
  sub_1C3D1FCD4();
  v118 = type metadata accessor for FeatureRegulatoryInfoView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();

  v51 = a1;
  v52 = v38[4];
  v53 = v38[5];
  v55 = v38[6];
  v54 = v38[7];
  v56 = v38[8];
  v57 = v38[9];
  sub_1C3C6E560(v52, v53, v55, v54, v56, v57);
  v58 = sub_1C3C6E7B0(v38, type metadata accessor for FeatureRegulatoryInfo);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v149 = 0;
  if (v55 != 1)
  {
    v66 = (v51 + *(v118 + 24));
    v65 = *v66;
    v149 = v66[1];

    v59 = v52;
    v60 = v53;
    v61 = v55;
    v62 = v54;
    v63 = v56;
    v64 = v57;
  }

  v134 = v64;
  v135 = v63;
  v136 = v62;
  v137 = v61;
  v138 = v60;
  v139 = v59;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C3C6DBAC(0);
  sub_1C3C6DD20(&qword_1EC0864F0, sub_1C3C6DBAC);
  sub_1C3D1FCE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();

  v67 = v122;
  v68 = v121;
  sub_1C3C6E68C(&v35[*(v122 + 32)], v121, sub_1C3C6E638);
  sub_1C3C6E7B0(v35, type metadata accessor for FeatureRegulatoryInfo);
  v69 = v51;
  if ((*(v119 + 48))(v68, 1, v120) == 1)
  {
    sub_1C3C6E7B0(v68, sub_1C3C6E638);
    (*(v124 + 56))(v152, 1, 1, v125);
  }

  else
  {
    v70 = v111;
    sub_1C3C6F0D4(v68, v111, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
    sub_1C3C6B1E4(v110);
    v157 = sub_1C3D1F984();
    v158 = v71;
    LOBYTE(v159) = v72 & 1;
    v160 = v73;
    MEMORY[0x1EEE9AC00](v157);
    sub_1C3C6DFB0();
    sub_1C3C6DD20(&qword_1EC0864F8, sub_1C3C6DFB0);
    v74 = v112;
    sub_1C3D1FCF4();
    v75 = v124;
    v76 = v152;
    v77 = v125;
    (*(v124 + 32))(v152, v74, v125);
    (*(v75 + 56))(v76, 0, 1, v77);
    sub_1C3C6E7B0(v70, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
  }

  v78 = v147;
  v79 = v129;
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v123;
  sub_1C3D1EFA4();

  v81 = v126;
  sub_1C3C6E68C(v80 + *(v67 + 36), v126, sub_1C3C6E6F4);
  sub_1C3C6E7B0(v80, type metadata accessor for FeatureRegulatoryInfo);
  v82 = v130;
  v83 = (*(v79 + 48))(v81, 1, v130);
  v140 = v65;
  if (v83 == 1)
  {
    sub_1C3C6E7B0(v81, sub_1C3C6E6F4);
    (*(v131 + 56))(v78, 1, 1, v132);
  }

  else
  {
    v84 = v113;
    v85 = (*(v79 + 32))(v113, v81, v82);
    MEMORY[0x1EEE9AC00](v85);
    sub_1C3C6DFB0();
    sub_1C3C6DD20(&qword_1EC0864F8, sub_1C3C6DFB0);
    v86 = v115;
    sub_1C3D1FCE4();
    v87 = (v69 + *(v118 + 24));
    v88 = v87[1];
    v157 = *v87;
    v158 = v88;

    MEMORY[0x1C692F800](0x746361746E6F432ELL, 0xE800000000000000);
    sub_1C3C6EFC4();
    v89 = v114;
    v90 = v117;
    sub_1C3D1FA64();

    (*(v116 + 8))(v86, v90);
    sub_1C3C6F334(v89, v78, &qword_1EC086418, sub_1C3C6E088);
    (*(v131 + 56))(v78, 0, 1, v132);
    (*(v79 + 8))(v84, v82);
  }

  v91 = v78;
  v92 = *(v143 + 16);
  v93 = v142;
  v94 = v144;
  v92(v142, v141, v144);
  v95 = v128;
  v96 = *(v128 + 16);
  v96(v151, v150, v145);
  sub_1C3C6E68C(v152, v146, sub_1C3C6DF2C);
  sub_1C3C6E68C(v91, v148, sub_1C3C6E008);
  v97 = v133;
  v92(v133, v93, v94);
  sub_1C3C6DA3C();
  v99 = v98;
  v100 = &v97[*(v98 + 48)];
  *&v153 = v139;
  *(&v153 + 1) = v138;
  *&v154 = v137;
  *(&v154 + 1) = v136;
  *&v155 = v135;
  *(&v155 + 1) = v134;
  *&v156 = v140;
  *(&v156 + 1) = v149;
  v101 = v154;
  *v100 = v153;
  *(v100 + 1) = v101;
  v102 = v156;
  *(v100 + 2) = v155;
  *(v100 + 3) = v102;
  v103 = v145;
  v96(&v97[*(v98 + 64)], v151, v145);
  v104 = v146;
  sub_1C3C6E68C(v146, &v97[*(v99 + 80)], sub_1C3C6DF2C);
  v105 = v148;
  sub_1C3C6E68C(v148, &v97[*(v99 + 96)], sub_1C3C6E008);
  sub_1C3C6EEDC(&v153, &v157);
  sub_1C3C6E7B0(v147, sub_1C3C6E008);
  sub_1C3C6E7B0(v152, sub_1C3C6DF2C);
  v106 = *(v95 + 8);
  v106(v150, v103);
  v107 = *(v143 + 8);
  v108 = v144;
  v107(v141, v144);
  sub_1C3C6E7B0(v105, sub_1C3C6E008);
  sub_1C3C6E7B0(v104, sub_1C3C6DF2C);
  v106(v151, v103);
  v157 = v139;
  v158 = v138;
  v159 = v137;
  v160 = v136;
  v161 = v135;
  v162 = v134;
  v163 = v140;
  v164 = v149;
  sub_1C3C6EF50(&v157);
  v107(v142, v108);
}

uint64_t sub_1C3C6A3A0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for FeatureRegulatoryInfoView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();

  v7 = *v4;
  v6 = v4[1];

  sub_1C3C6E7B0(v4, type metadata accessor for FeatureRegulatoryInfo);
  v18 = v7;
  v19 = v6;
  sub_1C3C4999C();
  v8 = sub_1C3D1F994();
  v10 = v9;
  v18 = v8;
  v19 = v9;
  v12 = v11 & 1;
  v20 = v11 & 1;
  v21 = v13;
  v14 = (a1 + *(v5 + 24));
  v15 = v14[1];
  v17[0] = *v14;
  v17[1] = v15;

  MEMORY[0x1C692F800](0x746375646F72502ELL, 0xEC000000656D614ELL);
  sub_1C3D1FA64();

  sub_1C3C2EE8C(v8, v10, v12);
}

uint64_t sub_1C3C6A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_1C3C65900();
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DDFC();
  v76 = v5;
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DD90(0, &qword_1EC0863E0, sub_1C3C6DDFC);
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v69 - v8;
  sub_1C3C6DD68(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  sub_1C3C6F29C(0);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DC70();
  v82 = *(v26 - 8);
  v83 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6DC50(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v85 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v69 - v31;
  sub_1C3D20374();
  v84 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v88 = v13;
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC08DBD8;
  v33 = sub_1C3D1DEC4();
  v35 = v34;
  v70 = v32;

  v94 = v33;
  v95 = v35;
  v36 = type metadata accessor for FeatureRegulatoryInfoView(0);
  v79 = *(a1 + *(v36 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = "RY_INFO_VIEW_NAVIGATION_TITLE";
  sub_1C3D1EFA4();

  v77 = a1;
  v38 = *(v22 + 2);
  v37 = *(v22 + 3);

  v78 = type metadata accessor for FeatureRegulatoryInfo;
  sub_1C3C6E7B0(v22, type metadata accessor for FeatureRegulatoryInfo);
  *&v25[*(v23 + 24)] = swift_getKeyPath();
  sub_1C3C6F2D0(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v92) = 0;
  sub_1C3D1FBF4();
  v39 = v99;
  *v25 = v98;
  *(v25 + 1) = v39;
  v40 = type metadata accessor for ErrorDetails(0);
  v41 = 1;
  (*(*(v40 - 8) + 56))(v19, 1, 1, v40);
  sub_1C3C6E68C(v19, v16, sub_1C3C6F29C);
  sub_1C3D1FBF4();
  sub_1C3C6E7B0(v19, sub_1C3C6F29C);
  v42 = &v25[*(v23 + 28)];
  *v42 = v38;
  *(v42 + 1) = v37;
  sub_1C3C6DD20(&qword_1EC0863D0, type metadata accessor for InstructionsForUseWebViewContainer);
  sub_1C3C4999C();
  v43 = v80;
  sub_1C3D1F164();
  v44 = (v77 + *(v36 + 24));
  v46 = *v44;
  v45 = v44[1];
  v94 = *v44;
  v95 = v45;

  MEMORY[0x1C692F800](1430669614, 0xE400000000000000);
  sub_1C3C6DD20(&qword_1EC086510, sub_1C3C6DC70);
  v47 = v83;
  sub_1C3D1FA64();

  (*(v82 + 8))(v43, v47);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();

  LODWORD(v43) = v22[80];
  sub_1C3C6E7B0(v22, v78);
  v48 = v88;
  if (v43 == 1)
  {
    v49 = v70;
    v98 = sub_1C3D1DEC4();
    v99 = v50;
    v51 = sub_1C3D1DEC4();
    v53 = v52;

    v94 = v51;
    v95 = v53;
    v54 = sub_1C3D1F994();
    v56 = v55;
    v94 = v54;
    v95 = v55;
    v58 = v57 & 1;
    v96 = v57 & 1;
    v97 = v59;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C3D20834();

    v92 = v46;
    v93 = v45;
    MEMORY[0x1C692F800](0xD00000000000001ALL, 0x80000001C3D83F60);
    v83 = v46;
    sub_1C3D1FA64();

    sub_1C3C2EE8C(v54, v56, v58);

    sub_1C3C6DE7C();
    v60 = v74;
    sub_1C3D1F164();
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1C3D20834();

    v94 = v83;
    v95 = v45;
    MEMORY[0x1C692F800](0xD000000000000014, 0x80000001C3D83F80);
    sub_1C3C6DD20(&qword_1EC086518, sub_1C3C6DDFC);
    v61 = v73;
    v62 = v76;
    sub_1C3D1FA64();

    (*(v75 + 8))(v60, v62);
    sub_1C3C6F334(v61, v48, &qword_1EC0863E0, sub_1C3C6DDFC);
    v41 = 0;
  }

  (*(v86 + 56))(v48, v41, 1, v87);
  v63 = v91;
  v64 = v85;
  sub_1C3C6E68C(v91, v85, sub_1C3C6DC50);
  v65 = v89;
  sub_1C3C6E68C(v48, v89, sub_1C3C6DD68);
  v66 = v90;
  sub_1C3C6E68C(v64, v90, sub_1C3C6DC50);
  sub_1C3C6DBE0();
  sub_1C3C6E68C(v65, v66 + *(v67 + 48), sub_1C3C6DD68);
  sub_1C3C6E7B0(v48, sub_1C3C6DD68);
  sub_1C3C6E7B0(v63, sub_1C3C6DC50);
  sub_1C3C6E7B0(v65, sub_1C3C6DD68);
  sub_1C3C6E7B0(v64, sub_1C3C6DC50);
}

uint64_t sub_1C3C6B1E4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  sub_1C3C61290(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C45FEC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C46020();
  v7 = v6;
  v55 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C3D1DE74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E6F4(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = sub_1C3D1E064();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  sub_1C3C6E68C(v1 + *(v25 + 28), v20, sub_1C3C6E6F4);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1C3C6E7B0(v20, sub_1C3C6E6F4);

    sub_1C3D1DF14();
    return sub_1C3D1DE84();
  }

  else
  {
    v50 = v7;
    v51 = v12;
    v47 = v9;
    v52 = v11;
    v27 = *(v22 + 32);
    v49 = v24;
    v27(v24, v20, v21);
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC08DBD8;
    v48 = sub_1C3D1DEC4();
    v29 = sub_1C3D1DEC4();
    v31 = v30;

    sub_1C3C6F2D0(0, &qword_1EC080D70, sub_1C3C54AB8, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C3D5DCD0;
    v34 = *(v1 + 16);
    v33 = *(v1 + 24);
    v35 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1C3C54B1C();
    *(v32 + 32) = v34;
    *(v32 + 40) = v33;
    *(v32 + 96) = v35;
    *(v32 + 104) = v36;
    *(v32 + 64) = v36;
    *(v32 + 72) = v29;
    *(v32 + 80) = v31;

    sub_1C3D20114();

    sub_1C3D1DF14();
    v37 = v58;
    sub_1C3D1DE84();
    v60[0] = v29;
    v60[1] = v31;
    v38 = sub_1C3D1E294();
    v39 = v56;
    (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
    sub_1C3C6DD20(&qword_1EC0862C0, MEMORY[0x1E6968848]);
    sub_1C3C4999C();
    v40 = v57;
    v41 = v52;
    sub_1C3D1DFB4();
    sub_1C3C6E7B0(v39, sub_1C3C61290);

    if ((*(v55 + 48))(v40, 1, v50) == 1)
    {
      (*(v22 + 8))(v49, v21);
      sub_1C3C6E7B0(v40, sub_1C3C45FEC);
    }

    else
    {
      v42 = v47;
      sub_1C3C6F0D4(v40, v47, sub_1C3C46020);
      v43 = v54;
      v44 = v49;
      (*(v22 + 16))(v54, v49, v21);
      (*(v22 + 56))(v43, 0, 1, v21);
      sub_1C3C6DD20(&qword_1EC080E58, sub_1C3C46020);
      v45 = sub_1C3D1DEA4();
      sub_1C3C6E68C(v43, v53, sub_1C3C6E6F4);
      sub_1C3C6F080();
      sub_1C3D1DF54();
      sub_1C3C6E7B0(v43, sub_1C3C6E6F4);
      v45(v60, 0);
      sub_1C3C6E7B0(v42, sub_1C3C46020);
      (*(v22 + 8))(v44, v21);
    }

    return (*(v51 + 32))(v59, v37, v41);
  }
}

uint64_t sub_1C3C6BA40()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C4999C();

  sub_1C3D1FC44();
}

uint64_t sub_1C3C6BB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v3 = sub_1C3D1E064();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for FeatureRegulatoryInfoView(0);
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC08DBD8;
  v9 = sub_1C3D1DEC4();
  v11 = v10;

  v20 = v9;
  v21 = v11;
  sub_1C3C6E68C(v17, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureRegulatoryInfoView);
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v3);
  v12 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v13 = (v7 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1C3C6F0D4(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for FeatureRegulatoryInfoView);
  (*(v4 + 32))(v14 + v13, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1C3C4999C();
  sub_1C3D1FC44();
}

uint64_t sub_1C3C6BE44()
{
  v0 = sub_1C3D1F114();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C686DC(v3);
  sub_1C3D1F104();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C3C6BF90()
{
  v0 = sub_1C3D1F594();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C3C6E4F4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1F584();
  sub_1C3D1F064();
  v6 = sub_1C3C6DD20(&qword_1EC086460, sub_1C3C6E4F4);
  MEMORY[0x1C692EC20](v5, v2, v6);
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C3C6C184@<X0>(uint64_t a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3C4999C();
  v3 = sub_1C3D1F994();
  v5 = v4;
  v7 = v6;
  v8 = sub_1C3D1F944();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C3C2EE8C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t FeatureRegulatoryInfo.productDisplayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureRegulatoryInfo.productDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeatureRegulatoryInfo.IFUURLProductName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeatureRegulatoryInfo.IFUURLProductName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void FeatureRegulatoryInfo.pairedDeviceAttributes.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1C3C6E560(v2, v3, v4, v5, v6, v7);
}

__n128 FeatureRegulatoryInfo.pairedDeviceAttributes.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1C3C6E5BC(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t FeatureRegulatoryInfo.init(productDisplayName:IFUURLProductName:pairedDeviceAttributes:showManufacturersAddress:reenableActionConfiguration:contactAppleSupportURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *(a5 + 4);
  v16 = *(a5 + 5);
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 1;
  v17 = type metadata accessor for FeatureRegulatoryInfo(0);
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 56) = 0;
  v18 = *(v17 + 32);
  v19 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  v23 = a5[1];
  v24 = *a5;
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = *(v17 + 36);
  v21 = sub_1C3D1E064();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  sub_1C3C6E5BC(*(a9 + 32), *(a9 + 40), *(a9 + 48), *(a9 + 56), *(a9 + 64), *(a9 + 72));
  *(a9 + 32) = v24;
  *(a9 + 48) = v23;
  *(a9 + 64) = v15;
  *(a9 + 72) = v16;
  *(a9 + 80) = a6;
  sub_1C3C6E728(a7, a9 + v18, sub_1C3C6E638);
  return sub_1C3C6E728(a8, a9 + v20, sub_1C3C6E6F4);
}

uint64_t sub_1C3C6C880(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = sub_1C3C6EE7C;
  *(a2 + 40) = v5;
  return result;
}

uint64_t FeatureRegulatoryInfo.ReenableActionConfiguration.action.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeatureRegulatoryInfo.ReenableActionConfiguration.action.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FeatureRegulatoryInfo.ReenableActionConfiguration.requiresPairedDevice.setter(char a1)
{
  result = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FeatureRegulatoryInfo.ReenableActionConfiguration.init(buttonTitle:footerText:action:learnMoreURL:requiresPairedDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>)
{
  v17 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  v18 = *(v17 + 28);
  v19 = sub_1C3D1E064();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1C3C6E728(a7, &a9[v18], sub_1C3C6E6F4);
  a9[*(v17 + 32)] = a8;
  return result;
}

uint64_t FeatureRegulatoryInfo.isEquivalent(to:)(uint64_t a1)
{
  v3 = sub_1C3D1E064();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E6F4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E790(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v1 != *a1 || *(v1 + 8) != *(a1 + 8)) && (sub_1C3D20A54() & 1) == 0 || (*(v1 + 16) != *(a1 + 16) || *(v1 + 24) != *(a1 + 24)) && (sub_1C3D20A54() & 1) == 0)
  {
    goto LABEL_20;
  }

  v57 = v9;
  v58 = v11;
  v56 = v6;
  v59 = v13;
  v60 = v4;
  v61 = v3;
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = *(v1 + 56);
  v19 = *(v1 + 64);
  v18 = *(v1 + 72);
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v24 = *(a1 + 64);
  v64 = *(a1 + 72);
  v65 = v21;
  if (v16 == 1)
  {
    v62 = 1;
    v63 = v20;
    v25 = v14;
    sub_1C3C6E560(v14, v15, 1, v17, v19, v18);
    if (v23 == 1)
    {
      sub_1C3C6E560(v65, v63, 1, v22, v24, v64);
      sub_1C3C6E5BC(v25, v15, 1, v17, v19, v18);
LABEL_15:
      if (*(v1 + 80) == *(a1 + 80))
      {
        v41 = type metadata accessor for FeatureRegulatoryInfo(0);
        v42 = v1;
        if (Optional<A>.isEquivalent(to:)(a1 + *(v41 + 32)))
        {
          v43 = *(v41 + 36);
          v44 = v59;
          v45 = *(v58 + 48);
          sub_1C3C6E68C(v42 + v43, v59, sub_1C3C6E6F4);
          sub_1C3C6E68C(a1 + v43, v44 + v45, sub_1C3C6E6F4);
          v47 = v60;
          v46 = v61;
          v48 = *(v60 + 48);
          if (v48(v44, 1, v61) == 1)
          {
            if (v48(v44 + v45, 1, v46) == 1)
            {
              sub_1C3C6E7B0(v44, sub_1C3C6E6F4);
              v30 = 1;
              return v30 & 1;
            }
          }

          else
          {
            v50 = v57;
            sub_1C3C6E68C(v44, v57, sub_1C3C6E6F4);
            if (v48(v44 + v45, 1, v46) != 1)
            {
              v51 = v56;
              (*(v47 + 32))(v56, v44 + v45, v46);
              sub_1C3C6DD20(&qword_1EC086480, MEMORY[0x1E6968FB0]);
              v30 = sub_1C3D20034();
              v52 = *(v47 + 8);
              v52(v51, v46);
              v52(v50, v46);
              sub_1C3C6E7B0(v44, sub_1C3C6E6F4);
              return v30 & 1;
            }

            (*(v47 + 8))(v50, v46);
          }

          sub_1C3C6E7B0(v44, sub_1C3C6E790);
          v30 = 0;
          return v30 & 1;
        }
      }

LABEL_20:
      v30 = 0;
      return v30 & 1;
    }

    v29 = v64;
    sub_1C3C6E560(v65, v63, v23, v22, v24, v64);
    v27 = v62;
  }

  else
  {
    v72 = v14;
    v73 = v15;
    v74 = v16;
    v75 = v17;
    v76 = v19;
    v77 = v18;
    if (v23 != 1)
    {
      v66 = v21;
      v67 = v20;
      v68 = v23;
      v69 = v22;
      v31 = v64;
      v70 = v24;
      v71 = v64;
      v54 = v14;
      v32 = v15;
      v55 = v15;
      v33 = v20;
      v62 = v16;
      sub_1C3C6E560(v14, v32, v16, v17, v19, v18);
      sub_1C3C6E560(v65, v33, v23, v22, v24, v31);
      v34 = v54;
      v35 = v55;
      v36 = v62;
      sub_1C3C6E560(v54, v55, v62, v17, v19, v18);
      LODWORD(v65) = _s8HealthUI29PairedDeviceFeatureAttributesV2eeoiySbAC_ACtFZ_0(&v72, &v66);
      v37 = v69;
      v38 = v70;
      v64 = v71;
      sub_1C3C54FE4(v66, v67, v68);
      sub_1C3C54FE4(v37, v38, v64);
      v39 = v75;
      v40 = v76;
      v64 = v77;
      sub_1C3C54FE4(v72, v73, v74);
      sub_1C3C54FE4(v39, v40, v64);
      sub_1C3C6E5BC(v34, v35, v36, v17, v19, v18);
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v25 = v14;
    v26 = v21;
    v63 = v20;
    v27 = v16;
    sub_1C3C6E560(v14, v15, v16, v17, v19, v18);
    v28 = v26;
    v29 = v64;
    sub_1C3C6E560(v28, v63, 1, v22, v24, v64);
    sub_1C3C6E560(v25, v15, v27, v17, v19, v18);
    sub_1C3C54FE4(v25, v15, v27);
    sub_1C3C54FE4(v17, v19, v18);
  }

  sub_1C3C6E5BC(v25, v15, v27, v17, v19, v18);
  sub_1C3C6E5BC(v65, v63, v23, v22, v24, v29);
  v30 = 0;
  return v30 & 1;
}

uint64_t Optional<A>.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_1C3C6E810(0, &qword_1EC086488, sub_1C3C6E638);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_1C3C6E68C(v2, &v22 - v12, sub_1C3C6E638);
  sub_1C3C6E68C(a1, &v13[v15], sub_1C3C6E638);
  v16 = *(v5 + 48);
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  if (a1 != 1)
  {
    if (v17 != 1)
    {
      sub_1C3C6F0D4(v13, v10, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
      sub_1C3C6F0D4(&v13[v15], v7, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
      v18 = FeatureRegulatoryInfo.ReenableActionConfiguration.isEquivalent(to:)(v7);
      sub_1C3C6E7B0(v7, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
      sub_1C3C6E7B0(v10, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
      return v18 & 1;
    }

    v19 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration;
    v20 = v13;
    goto LABEL_7;
  }

  if (v17 != 1)
  {
    v19 = sub_1C3C6E638;
    v20 = &v13[v15];
LABEL_7:
    sub_1C3C6E7B0(v20, v19);
    v18 = 0;
    return v18 & 1;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t FeatureRegulatoryInfo.ReenableActionConfiguration.isEquivalent(to:)(void *a1)
{
  v3 = sub_1C3D1E064();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E6F4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6E790(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == *a1 && v1[1] == a1[1] || (sub_1C3D20A54()) && (v1[2] == a1[2] && v1[3] == a1[3] || (sub_1C3D20A54()))
  {
    v14 = *(type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0) + 28);
    v15 = *(v11 + 48);
    sub_1C3C6E68C(v1 + v14, v13, sub_1C3C6E6F4);
    sub_1C3C6E68C(a1 + v14, &v13[v15], sub_1C3C6E6F4);
    v16 = *(v4 + 48);
    if (v16(v13, 1, v3) == 1)
    {
      v17 = v16(&v13[v15], 1, v3);
      if (v17 == 1)
      {
        v18 = sub_1C3C6E6F4;
      }

      else
      {
        v18 = sub_1C3C6E790;
      }

      if (v17 == 1)
      {
        v19 = -1;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_1C3C6E68C(v13, v9, sub_1C3C6E6F4);
      if (v16(&v13[v15], 1, v3) == 1)
      {
        (*(v4 + 8))(v9, v3);
        v19 = 0;
        v20 = sub_1C3C6E790;
      }

      else
      {
        (*(v4 + 32))(v6, &v13[v15], v3);
        sub_1C3C6DD20(&qword_1EC086480, MEMORY[0x1E6968FB0]);
        v19 = sub_1C3D20034();
        v21 = *(v4 + 8);
        v21(v6, v3);
        v21(v9, v3);
        v20 = sub_1C3C6E6F4;
      }

      v18 = v20;
    }

    sub_1C3C6E7B0(v13, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1C3C6D870(uint64_t a1)
{
  v2 = sub_1C3D1F114();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C3D1F324();
}

void sub_1C3C6D958()
{
  if (!qword_1EC086380)
  {
    sub_1C3C6DA08(255);
    sub_1C3C6DD20(&qword_1EC086428, sub_1C3C6DA08);
    v0 = sub_1C3D1F8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086380);
    }
  }
}

void sub_1C3C6DA3C()
{
  if (!qword_1EC086390)
  {
    sub_1C3C6DB40(255, &qword_1EC086398, sub_1C3C65900);
    sub_1C3C6EAF0(255, &qword_1EC0863A0);
    sub_1C3C6DB40(255, &qword_1EC0863A8, sub_1C3C6DBAC);
    sub_1C3C6DF2C();
    sub_1C3C6E008(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC086390);
    }
  }
}

void sub_1C3C6DB40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1FD04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C6DBE0()
{
  if (!qword_1EC0863B8)
  {
    sub_1C3C6DC50(255);
    sub_1C3C6DD68(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0863B8);
    }
  }
}

void sub_1C3C6DC70()
{
  if (!qword_1EC0863C8)
  {
    type metadata accessor for InstructionsForUseWebViewContainer(255);
    sub_1C3C6DD20(&qword_1EC0863D0, type metadata accessor for InstructionsForUseWebViewContainer);
    v0 = sub_1C3D1F174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0863C8);
    }
  }
}

uint64_t sub_1C3C6DD20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C6DD90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1C3D1F6E4();
    v4 = sub_1C3D1F1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C6DDFC()
{
  if (!qword_1EC0863E8)
  {
    sub_1C3C65900();
    sub_1C3C6DE7C();
    v0 = sub_1C3D1F174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0863E8);
    }
  }
}

unint64_t sub_1C3C6DE7C()
{
  result = qword_1EC0863F0;
  if (!qword_1EC0863F0)
  {
    sub_1C3C65900();
    sub_1C3C6DD20(&qword_1EC0811E8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0863F0);
  }

  return result;
}

void sub_1C3C6DF2C()
{
  if (!qword_1EC0863F8)
  {
    sub_1C3C6DB40(255, &qword_1EC086400, sub_1C3C6DFB0);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0863F8);
    }
  }
}

void sub_1C3C6DFB0()
{
  if (!qword_1EC086408)
  {
    v0 = sub_1C3D1FC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086408);
    }
  }
}

void sub_1C3C6E030(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C3C6DD90(255, a3, a4);
    v5 = sub_1C3D206E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C3C6E0B4()
{
  if (!qword_1EC086430)
  {
    sub_1C3C6D958();
    sub_1C3D1F5B4();
    sub_1C3C6DD20(&qword_1EC086438, sub_1C3C6D958);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC086430);
    }
  }
}

void sub_1C3C6E188()
{
  if (!qword_1EC086440)
  {
    sub_1C3C6E0B4();
    sub_1C3C6D958();
    sub_1C3D1F5B4();
    sub_1C3C6DD20(&qword_1EC086438, sub_1C3C6D958);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC086440);
    }
  }
}

void sub_1C3C6E28C()
{
  if (!qword_1EC086448)
  {
    sub_1C3C6E188();
    sub_1C3C6E440();
    sub_1C3C6E0B4();
    sub_1C3C6D958();
    sub_1C3D1F5B4();
    sub_1C3C6DD20(&qword_1EC086438, sub_1C3C6D958);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C3C6E4F4();
    sub_1C3C6DD20(&qword_1EC086460, sub_1C3C6E4F4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC086448);
    }
  }
}

void sub_1C3C6E440()
{
  if (!qword_1EC086450)
  {
    sub_1C3C6E4F4();
    sub_1C3C6DD20(&qword_1EC086460, sub_1C3C6E4F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC086450);
    }
  }
}

void sub_1C3C6E4F4()
{
  if (!qword_1EC086458)
  {
    v0 = sub_1C3D1F074();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086458);
    }
  }
}

void sub_1C3C6E560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3 != 1)
  {
    sub_1C3C54F58(a1, a2, a3);

    sub_1C3C54F58(a4, a5, a6);
  }
}

uint64_t sub_1C3C6E5BC(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3 != 1)
  {
    sub_1C3C54FE4(result, a2, a3);

    return sub_1C3C54FE4(a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C3C6E68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C6E728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C6E7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C3C6E810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C3C6E8B4()
{
  sub_1C3C6F2D0(319, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C3C6E970();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C3C6E970()
{
  if (!qword_1EC0864A8)
  {
    type metadata accessor for FeatureRegulatoryInfoProvider();
    sub_1C3C6DD20(&qword_1EC086378, type metadata accessor for FeatureRegulatoryInfoProvider);
    v0 = sub_1C3D1F194();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0864A8);
    }
  }
}

void sub_1C3C6EA2C()
{
  sub_1C3C6EAF0(319, &qword_1EC0864C0);
  if (v0 <= 0x3F)
  {
    sub_1C3C6E638(319);
    if (v1 <= 0x3F)
    {
      sub_1C3C6E6F4(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C3C6EAF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C3D206E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C3C6EB64()
{
  sub_1C3C6EC00();
  if (v0 <= 0x3F)
  {
    sub_1C3C6E6F4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C3C6EC00()
{
  result = qword_1EC0864D8;
  if (!qword_1EC0864D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC0864D8);
  }

  return result;
}

unint64_t sub_1C3C6EC50()
{
  result = qword_1EC0864E0;
  if (!qword_1EC0864E0)
  {
    sub_1C3C6DD90(255, &qword_1EC0864E8, sub_1C3C6E28C);
    sub_1C3C6E188();
    sub_1C3C6E440();
    sub_1C3C6E0B4();
    sub_1C3C6D958();
    sub_1C3D1F5B4();
    sub_1C3C6DD20(&qword_1EC086438, sub_1C3C6D958);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C3C6E4F4();
    sub_1C3C6DD20(&qword_1EC086460, sub_1C3C6E4F4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C3C6DD20(&qword_1EC0811E8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0864E0);
  }

  return result;
}

uint64_t sub_1C3C6EEDC(uint64_t a1, uint64_t a2)
{
  sub_1C3C6EAF0(0, &qword_1EC0863A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C6EF50(uint64_t a1)
{
  sub_1C3C6EAF0(0, &qword_1EC0863A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3C6EFC4()
{
  result = qword_1EC086500;
  if (!qword_1EC086500)
  {
    sub_1C3C6E088(255);
    sub_1C3C6DD20(&qword_1EC0864F8, sub_1C3C6DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086500);
  }

  return result;
}

unint64_t sub_1C3C6F080()
{
  result = qword_1EC086508;
  if (!qword_1EC086508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086508);
  }

  return result;
}

uint64_t sub_1C3C6F0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C6F13C()
{
  type metadata accessor for FeatureRegulatoryInfoView(0);
  sub_1C3D1E064();

  return sub_1C3C6BE44();
}

uint64_t sub_1C3C6F208(uint64_t a1, uint64_t a2)
{
  sub_1C3C6F2D0(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C3C6F2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3C6F334(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3C6DD90(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C6F3BC@<X0>(uint64_t *a1@<X8>)
{
  sub_1C3C4C5BC();
  result = sub_1C3D20844();
  *a1 = result;
  return result;
}

void sub_1C3C6F400(unint64_t a1, uint64_t a2, int a3)
{
  v39 = a3;
  v40 = a2;
  v5 = sub_1C3D1E974();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38[-v14];
  v16 = *(v6 + 104);
  v16(&v38[-v14], *MEMORY[0x1E69A2EE8], v5, v13);
  v41 = a1;
  v42 = v3;
  v44 = v3;
  v45 = v15;
  sub_1C3CB72E0(sub_1C3C702A8, v43, a1);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v17 + 32);
    while (1)
    {
      v21 = *v20++;
      v22 = __OFADD__(v19, v21);
      v19 += v21;
      if (v22)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v19 = 0;
LABEL_7:

  v23 = *(v6 + 8);
  v23(v15, v5);
  v24 = (v16)(v11, *MEMORY[0x1E69A2EE0], v5);
  MEMORY[0x1EEE9AC00](v24);
  v25 = v41;
  *&v38[-16] = v42;
  *&v38[-8] = v11;
  sub_1C3CB72E0(sub_1C3C70340, &v38[-32], v25);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = (v26 + 32);
    while (1)
    {
      v30 = *v29++;
      v22 = __OFADD__(v28, v30);
      v28 += v30;
      if (v22)
      {
        break;
      }

      if (!--v27)
      {
        goto LABEL_13;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v28 = 0;
LABEL_13:

  v23(v11, v5);
  v31 = (v16)(v8, *MEMORY[0x1E69A2EF0], v5);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v41;
  *&v38[-16] = v42;
  *&v38[-8] = v8;
  sub_1C3CB72E0(sub_1C3C70340, &v38[-32], v32);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 32);
    while (1)
    {
      v37 = *v36++;
      v22 = __OFADD__(v35, v37);
      v35 += v37;
      if (v22)
      {
        goto LABEL_22;
      }

      if (!--v34)
      {
        goto LABEL_19;
      }
    }
  }

  v35 = 0;
LABEL_19:

  v23(v8, v5);
  sub_1C3C6F728(v19, v28, v35, v40, v39 & 1);
}

id sub_1C3C6F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __OFADD__(a1, a2);
  v15 = a1 + a2;
  if (v14)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_12;
  }

  if (v15 < 1)
  {
    if (a3 < 1)
    {
      v38 = sub_1C3D200C4();
      v39 = HKUILocalizedString(v38);

      if (v39)
      {
        sub_1C3D20104();
        a1 = v40;
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_10;
    }

    sub_1C3D20044();
    if (qword_1EC080DC0 == -1)
    {
LABEL_9:
      v16 = qword_1EC08DBD8;
      sub_1C3D1E284();
      sub_1C3D20124();
      a1 = v17;
LABEL_10:
      v18 = 0;
      goto LABEL_13;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  if ((a5 & 1) == 0 && a4 == 6)
  {
    sub_1C3D20044();
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  sub_1C3C702E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E6530];
  *(v19 + 16) = xmmword_1C3D5F370;
  v21 = MEMORY[0x1E69E65A8];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = v15;
  sub_1C3D200D4();
  a1 = v22;

  sub_1C3D20084();
  sub_1C3D20074();
  sub_1C3D20054();
  sub_1C3D20074();
  sub_1C3D200A4();
  if (qword_1EC080DC0 != -1)
  {
    goto LABEL_28;
  }

LABEL_12:
  v23 = qword_1EC08DBD8;
  sub_1C3D1E284();
  sub_1C3D20124();
  v18 = v24;
LABEL_13:
  v25 = [objc_allocWithZone(HKDisplayTypeContextItem) init];
  v26 = sub_1C3D1E894();
  v27 = [v26 identifier];

  if (!v27)
  {
    sub_1C3D20104();
    v27 = sub_1C3D200C4();
  }

  v28 = [objc_opt_self() hk:v27 chartOverlayAccessibilityIdentifier:?];

  if (v28)
  {
    sub_1C3D200F4();
  }

  [v25 setAccessibilityIdentifier_];

  sub_1C3CDBB6C();
  v29 = sub_1C3D200C4();

  [v25 setTitle_];

  v30 = objc_opt_self();
  v31 = [objc_opt_self() tertiarySystemBackgroundColor];
  v32 = [v30 defaultContextViewColorsUsingColor_];

  [v25 setMetricColors_];
  sub_1C3C31A34();
  v34 = v33;
  [v25 setSelectedMetricColors_];

  if (a1)
  {
    v35 = sub_1C3D200C4();
  }

  else
  {
    v35 = 0;
  }

  [v25 setValue_];

  if (v18)
  {
    v36 = sub_1C3D200C4();
  }

  else
  {
    v36 = 0;
  }

  [v25 setUnit_];

  [v25 setInfoHidden_];
  return v25;
}

uint64_t sub_1C3C6FDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection), *(v5 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection + 24));
  v6 = sub_1C3D1EA24();
  MEMORY[0x1EEE9AC00](v6);
  v14[2] = a2;
  v7 = sub_1C3CB747C(sub_1C3C702C8, v14, v6);

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v7 + 32);
    while (1)
    {
      v12 = *v11++;
      v13 = __OFADD__(v10, v12);
      v10 += v12;
      if (v13)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_9:

    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C3C6FF4C@<X0>(void *a1@<X8>)
{
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1E984();
  v6 = sub_1C3D1E964();
  (*(v3 + 8))(v5, v2);

  *a1 = v6 & 1;
  return result;
}

uint64_t sub_1C3C700B8()
{
  v1 = OBJC_IVAR____TtC8HealthUI27BalanceMetricOverlayContext_selectedMetric;
  v2 = sub_1C3D1E8C4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1C3C70120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceMetricOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BalanceMetricOverlayContext()
{
  result = qword_1EC086520;
  if (!qword_1EC086520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C70218()
{
  result = sub_1C3D1E8C4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C3C702E8()
{
  if (!qword_1EC080D70)
  {
    sub_1C3C54AB8();
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080D70);
    }
  }
}

uint64_t *sub_1C3C70358@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id AudiogramLineSeriesPresentationStyle.__allocating_init(seriesEar:selectedEar:disableConnectionLines:disabledStyleOverride:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a1;
  *&v9[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = a2;
  if (a1 == a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (!a2)
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  v9[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = v11;
  v9[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = a3 & 1;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id AudiogramLineSeriesPresentationStyle.init(seriesEar:selectedEar:disableConnectionLines:disabledStyleOverride:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *&v4[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a1;
  *&v4[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = a2;
  if (a1 == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!a2)
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v4[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = v6;
  v4[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = a3 & 1;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for AudiogramLineSeriesPresentationStyle();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C3C70548()
{
  v1 = [objc_allocWithZone(HKLineSeriesPresentationStyle) init];
  v2 = *(v0 + OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_1C3C707E0();
    v3 = [objc_opt_self() strokeStyleWithColor:v4 lineWidth:2.0];

    [v3 setDashStyle_];
  }

  [v1 setStrokeStyle_];

  v5 = sub_1C3C70808();
  v6 = [objc_allocWithZone(HKLineSeriesPointMarkerStyle) initWithColor:v5 radius:2 style:6.0];

  [v1 setPointMarkerStyle_];
  if (v2)
  {
    return v1;
  }

  v7 = *MEMORY[0x1E69DB970];
  v8 = sub_1C3C707F4();
  v9 = [objc_opt_self() hk:14.0 roundedSystemFontWithSize:v7 weight:?];
  result = HKIntegerFormatter();
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() labelStyleWithColor:v8 font:v9 horizontalAlignment:0 verticalAlignment:2 numberFormatter:result];

    v13 = *(v0 + OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar);
    v14 = HKAudiogramEarLocalizedKeyForEar(v13, 1);
    if (!v14)
    {
      sub_1C3D20104();
      v14 = sub_1C3D200C4();
    }

    v15 = [objc_opt_self() annotationStyleWithLabelStyle:v12 localizedLabelKey:v14 leftOfSeries:v13 == 1];

    [v1 setLegendAnnotationStyle_];
    return v1;
  }

  __break(1u);
  return result;
}

id sub_1C3C7081C(SEL *a1, SEL *a2)
{
  v3 = *(v2 + OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = *(v2 + OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState);
      v6 = objc_opt_self();
      v7 = [v6 *a2];
      v8 = [v6 hk_hearingHealthAudiogramRightEarDeemphasizedColor];
      v9 = [v6 hk_hearingHealthAudiogramDisabledLineColor];
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for HKAudiogramEar(0);
        result = sub_1C3D20A74();
        __break(1u);
        return result;
      }

      v4 = *(v2 + OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState);
      v13 = objc_opt_self();
      v7 = [v13 *a1];
      v8 = [v13 hk_hearingHealthAudiogramLeftEarDeemphasizedColor];
      v9 = [v13 hk_hearingHealthAudiogramDisabledLineColor];
    }

    v14 = v9;
    v15 = v14;
    v16 = v7;
    if (v4)
    {
      v16 = v8;
      if (v4 != 1)
      {
        v16 = v14;
      }
    }

    v17 = v16;

    return v17;
  }

  else
  {
    v10 = [objc_opt_self() hk_hearingHealthAudiogramDisabledLineColor];

    return v10;
  }
}

uint64_t sub_1C3C70AB4(uint64_t a1, uint64_t a2, CGFloat *a3, CGContext *a4, uint64_t a5, id a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = v10;
  v18 = *a3;
  v19 = a3[1];
  v21 = a3[2];
  v20 = a3[3];
  v22 = a3[4];
  v23 = a3[5];
  v24 = [a6 axisAnnotationDelegateForSeries_];
  if ((([a6 seriesDrawingDuringScrolling] & 1) != 0 || (objc_msgSend(a6, sel_seriesDrawingDuringTiling) & 1) != 0 || objc_msgSend(a6, sel_seriesDrawingDuringAutoscale)) && v24)
  {
    [v24 clearAxisAnnotations];
  }

  v34.receiver = v11;
  v34.super_class = type metadata accessor for AudiogramLineSeries();
  v33.a = v18;
  v33.b = v19;
  v33.c = v21;
  v33.d = v20;
  v33.tx = v22;
  v33.ty = v23;
  objc_msgSendSuper2(&v34, sel_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate_, a1, a2, &v33, a4, a5, a6, a7, a8, a9, a10);
  v25 = *&v11[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency];
  if (v25)
  {
    v26 = objc_opt_self();
    v27 = v25;
    sub_1C3D1E7F4();
    [v26 axisValueFromFrequency_];
    v33.a = v18;
    v33.b = v19;
    v33.c = v21;
    v33.d = v20;
    v33.tx = v22;
    v33.ty = v23;
    v35.y = 0.0;
    *&v28 = *&CGPointApplyAffineTransform(v35, &v33);
    sub_1C3C73034(a4, v28, a7, a8, a9, a10);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C3C70D98(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = [a1 pointColor];
  [a1 radius];
  v7 = v6 + v6;
  [a1 radius];
  v9 = v8 + v8;
  v10 = *(v2 + OBJC_IVAR___HKAudiogramLineSeries_seriesEar);
  v11 = objc_opt_self();
  v12 = v5;
  v13 = [v11 systemBackgroundColor];
  *&v26 = v10;
  *(&v26 + 1) = v12;
  *&v27 = v13;
  *(&v27 + 1) = v4;
  v28 = xmmword_1C3D602C0;
  if ((v4 & 1) == 0)
  {
    aBlock = v26;
    v24 = v27;
    v25 = v28;
    v14 = sub_1C3C56DBC(0.0, 0.0, v7, v9);

    sub_1C3C74644(&v26);
    return v14;
  }

  MEMORY[0x1EEE9AC00](v13);
  v21[2] = &v26;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v26;
  *(v16 + 32) = v17;
  *(v16 + 48) = v28;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = v7;
  *(v16 + 88) = v9;
  *(v16 + 96) = sub_1C3C746B8;
  *(v16 + 104) = v21;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C3C59488;
  *(v18 + 24) = v16;
  *&v25 = sub_1C3C746C0;
  *(&v25 + 1) = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v24 = sub_1C3C57A08;
  *(&v24 + 1) = &block_descriptor_76;
  v19 = _Block_copy(&aBlock);
  sub_1C3C58A84(&v26, v22);

  v14 = [v15 imageWithActions_];

  _Block_release(v19);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  result = sub_1C3C74644(&v26);
  if ((v15 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C710E4(void *a1)
{
  swift_getObjectType();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = [v3 isMasked];
    v5 = 5;
    if (!v4)
    {
      v5 = 1;
    }

    v22 = v5;
    v6 = sub_1C3C70D98(a1, &v22);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v7, qword_1EC08DCE0);
    swift_unknownObjectRetain();
    v8 = sub_1C3D1ED84();
    v9 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446722;
      v12 = sub_1C3D20CD4();
      v14 = sub_1C3C22C28(v12, v13, &v22);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      sub_1C3C27CB4(0, &unk_1EC086580);
      v15 = sub_1C3D20CD4();
      v17 = sub_1C3C22C28(v15, v16, &v22);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2082;
      swift_getObjectType();
      v18 = sub_1C3D20CD4();
      v20 = sub_1C3C22C28(v18, v19, &v22);

      *(v10 + 24) = v20;
      _os_log_impl(&dword_1C3942000, v8, v9, "[%{public}s] Unable to cast user info into %{public}s, found %{public}s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v11, -1, -1);
      MEMORY[0x1C69321D0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

void sub_1C3C71344(CGContext *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v46 = *(a3 + 16);
  *oslog = *a3;
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  v17 = [v7 pointMarkerImageForPointMarkerStyle_];
  if (v17)
  {
    v18 = v17;
    CGContextSaveGState(a1);
    v19 = HKChartSeriesPointMarkerBaseRect(v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v45 = a2;
    v26 = [v7 pointMarkerImageForPointMarkerStyle_];
    v27 = [v7 pointMarkerImageForPointMarkerStyle_];
    v28 = swift_allocObject();
    *(v28 + 2) = v18;
    v28[3] = v19;
    *(v28 + 4) = v21;
    *(v28 + 5) = v23;
    *(v28 + 6) = v25;
    *(v28 + 7) = v7;
    *(v28 + 8) = a4;
    *(v28 + 9) = a5;
    *(v28 + 10) = v26;
    *(v28 + 11) = a6;
    *(v28 + 12) = v27;
    *(v28 + 13) = a1;
    *(v28 + 14) = ObjectType;
    v51 = sub_1C3C73254;
    v52 = v28;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_1C3C71C64;
    *(&v50 + 1) = &block_descriptor_7;
    v29 = _Block_copy(&aBlock);
    v30 = v18;
    v31 = v7;
    v32 = a4;
    v33 = a5;
    v34 = v26;
    v35 = a6;
    v36 = v27;
    v37 = a1;

    aBlock = *oslog;
    v50 = v46;
    v51 = v15;
    v52 = v16;
    [v45 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v29];
    _Block_release(v29);
    CGContextRestoreGState(v37);
  }

  else
  {
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v38 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v38, qword_1EC08DCE0);
    osloga = sub_1C3D1ED84();
    v39 = sub_1C3D204F4();
    if (os_log_type_enabled(osloga, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v40 = 136446210;
      v42 = sub_1C3D20CD4();
      v44 = sub_1C3C22C28(v42, v43, &aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1C3942000, osloga, v39, "[%{public}s] Unable to determine default point marker image", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1C69321D0](v41, -1, -1);
      MEMORY[0x1C69321D0](v40, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C3C716C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  if (!a1 || (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v43 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v43, qword_1EC08DCE0);
    swift_unknownObjectRetain();
    osloga = sub_1C3D1ED84();
    v44 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(osloga, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v71 = v46;
      *v45 = 136446466;
      v47 = sub_1C3D20CD4();
      v49 = sub_1C3C22C28(v47, v48, &v71);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_1C3C22C28(0xD000000000000026, 0x80000001C3D84440, &v71);
      _os_log_impl(&dword_1C3942000, osloga, v44, "[%{public}s] Unable to cast coordinate to _HKLineSeriesBlockCoordinate, found type %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v46, -1, -1);
      MEMORY[0x1C69321D0](v45, -1, -1);
    }

    else
    {
    }

    return;
  }

  v27 = v26;
  swift_unknownObjectRetain();
  [v27 coordinate];
  v29 = v28;
  v31 = v30;
  v32 = [a12 CGImage];
  if (![v27 userInfo])
  {
    __break(1u);
    goto LABEL_39;
  }

  v33 = sub_1C3C710E4(a14);
  swift_unknownObjectRelease();
  v63 = v31;
  v65 = v29;
  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = [v33 CGImage];
  if (!v34)
  {

LABEL_15:
    v36 = a6;
    v38 = a7;
    v40 = a8;
    v42 = a9;
    v35 = v32;
    goto LABEL_16;
  }

  v35 = v34;

  v36 = HKChartSeriesPointMarkerBaseRect(v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;

LABEL_16:
  [a13 selectedPathRange];
  v50 = v71;
  v51 = v72;
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v52 = a5;
  *&v72 = a4;
  *(&v72 + 1) = a5;
  v69 = v50;
  v70 = v51;
  if (HKGraphSeriesDataPointPathEqualToPath(&v71, &v69) || ([a13 selectedPathRange], *&v71 = a2, *(&v71 + 1) = a3, *&v72 = a4, *(&v72 + 1) = a5, v69 = v73, v70 = v74, HKGraphSeriesDataPointPathEqualToPath(&v71, &v69)))
  {
    if ([v27 userInfo])
    {
      v53 = sub_1C3C710E4(a15);
      swift_unknownObjectRelease();
      if (v53)
      {
        v54 = v35;
      }

      else
      {
        if (!a16)
        {
LABEL_26:
          v52 = a5;
          goto LABEL_27;
        }

        v54 = v35;
        v53 = a16;
      }

      v55 = [v53 CGImage];
      if (v55)
      {
        v35 = v55;

        v36 = HKChartSeriesPointMarkerBaseRect(v53);
        v38 = v56;
        v40 = v57;
        v42 = v58;
      }

      else
      {

        v35 = v54;
      }

      goto LABEL_26;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_27:
  [a13 selectedPathRange];
  *&v69 = a2;
  *(&v69 + 1) = a3;
  *&v70 = a4;
  *(&v70 + 1) = v52;
  if (!HKGraphSeriesDataPointPathInRange(&v69, &v71))
  {
    goto LABEL_35;
  }

  if (![v27 userInfo])
  {
LABEL_40:
    __break(1u);
    return;
  }

  v59 = sub_1C3C710E4(a17);
  swift_unknownObjectRelease();
  if (v59)
  {
    v60 = v59;
    goto LABEL_33;
  }

  if (a18)
  {
    v59 = a18;
    v60 = 0;
LABEL_33:
    v61 = v60;
    v62 = [v59 CGImage];

    if (v62)
    {

      v35 = v62;
      v36 = a6;
      v38 = a7;
      v40 = a8;
      v42 = a9;
LABEL_36:
      v76.origin.x = v36;
      v76.origin.y = v38;
      v76.size.width = v40;
      v76.size.height = v42;
      CGRectOffset(v76, v66, v64);
      sub_1C3D204A4();
      swift_unknownObjectRelease();

      return;
    }
  }

LABEL_35:
  if (v35)
  {
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C3C71C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12(a2, v8, v9, v10, v11, a4, a5);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void *sub_1C3C71FB4(void *a1, void *a2, void *a3)
{
  v4 = _s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(a1, a2);
  sub_1C3C27CB4(0, &qword_1EC085FF8);
  sub_1C3C5221C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C3D5F370;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = 0xD00000000000001DLL;
  *(v5 + 40) = 0x80000001C3D83300;
  sub_1C3C745F4(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
  *(v5 + 88) = v6;
  *(v5 + 64) = v4;
  sub_1C3C27CB4(0, &qword_1EC086018);

  v7 = sub_1C3D204C4();
  v8 = sub_1C3D204B4();

  v9 = a3;
  [v8 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C3C721B8(void *a1)
{
  if ([a1 isMasked])
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  sub_1C3C745F4(0, &unk_1EC086560, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C3D5F370;
  *(v2 + 32) = v1;
  sub_1C3C27CB4(0, &qword_1EC085FF8);
  sub_1C3C5221C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C3D5F370;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = 0xD00000000000001DLL;
  *(v3 + 40) = 0x80000001C3D83300;
  sub_1C3C745F4(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
  *(v3 + 88) = v4;
  *(v3 + 64) = v2;
  sub_1C3C27CB4(0, &qword_1EC086018);

  v5 = sub_1C3D204C4();
  v6 = sub_1C3D204B4();

  return v6;
}

id sub_1C3C7245C(char a1)
{
  if (a1)
  {
    v1 = sub_1C3C70548();
    v2 = [v1 pointMarkerStyle];

    if (v2)
    {
      v3 = [v2 pointColor];

      if (v3)
      {
        return v3;
      }
    }

    v5 = &selRef_redColor;
  }

  else
  {
    v5 = &selRef_hk_chartLollipopLabelColor;
  }

  v6 = [objc_opt_self() *v5];

  return v6;
}

uint64_t sub_1C3C72518(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = v2;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C3C746BC;
  *(v7 + 24) = v6;
  v12[4] = sub_1C3C746C0;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C3C57A08;
  v12[3] = &block_descriptor_64;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

id AudiogramLineSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C3C72768(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C3C727B0(void *a1, void *a2, double a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v14 = [a1 CGContext];
  CGContextSaveGState(v14);
  CGAffineTransformMakeTranslation(&transform, 0.0, a4);
  CGAffineTransformScale(&v15, &transform, 1.0, -1.0);
  transform = v15;
  CGContextConcatCTM(v14, &transform);
  [a2 drawInRect_];
  CGContextRestoreGState(v14);
}

char *sub_1C3C728D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for AudiogramLineSeries();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency] = 0;
  *&v7[OBJC_IVAR___HKAudiogramLineSeries_seriesEar] = a1;
  v35.receiver = v7;
  v35.super_class = v6;
  v8 = objc_msgSendSuper2(&v35, sel_init);
  [v8 setDrawSelectionLineBehindAllSeries_];
  [v8 setAdjustYAxisForLabels_];
  if (a1 == a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v8 setAllowsSelection_];

  sub_1C3CD7580();
  v12 = v11;
  v13 = type metadata accessor for AudiogramNumericAxis.AudiogramAxisScalingRules();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v34.receiver = v14;
  v34.super_class = v13;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  [v8 setYAxis_];
  [v8 setAxisScalingRule_];

  v16 = *&v8[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency];
  *&v8[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency] = 0;

  v17 = type metadata accessor for AudiogramLineSeriesPresentationStyle();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a1;
  *&v18[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = a2;
  v18[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = v10;
  v18[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = a3;
  v33.receiver = v18;
  v33.super_class = v17;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v20 = sub_1C3C70548();
  sub_1C3C745F4(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C3D5EAE0;
  *(v21 + 32) = v20;
  sub_1C3C27CB4(0, &qword_1EC0859C0);
  v22 = v8;
  v23 = v20;
  v24 = sub_1C3D202A4();

  [v22 setUnhighlightedPresentationStyles_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C3D5EAE0;
  *(v25 + 32) = v23;
  v26 = v23;
  v27 = sub_1C3D202A4();

  [v22 setHighlightedPresentationStyles_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C3D5EAE0;
  *(v28 + 32) = v26;
  v29 = v26;
  v30 = sub_1C3D202A4();

  [v22 setSelectedPresentationStyles_];

  [v22 setInactivePresentationStyle_];
  v31 = [v29 pointMarkerStyle];
  [v22 setSelectedPointMarkerStyle_];

  return v22;
}

char *sub_1C3C72C60(uint64_t a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = type metadata accessor for AudiogramLineSeries();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency] = 0;
  *&v9[OBJC_IVAR___HKAudiogramLineSeries_seriesEar] = a1;
  v41.receiver = v9;
  v41.super_class = v8;
  v10 = objc_msgSendSuper2(&v41, sel_init);
  [v10 setDrawSelectionLineBehindAllSeries_];
  [v10 setAdjustYAxisForLabels_];
  if (a1 == a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v10 setAllowsSelection_];

  sub_1C3CD7580();
  v14 = v13;
  v15 = type metadata accessor for AudiogramNumericAxis.AudiogramAxisScalingRules();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v40.receiver = v16;
  v40.super_class = v15;
  v17 = objc_msgSendSuper2(&v40, sel_init);
  [v10 setYAxis_];
  [v10 setAxisScalingRule_];

  v18 = *&v10[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency];
  *&v10[OBJC_IVAR___HKAudiogramLineSeries_selectedFrequency] = a5;

  v19 = type metadata accessor for AudiogramLineSeriesPresentationStyle();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a1;
  *&v20[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = a2;
  if (a4)
  {
    v21 = 2;
  }

  else
  {
    v21 = v12;
  }

  v20[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = v21;
  v20[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = a3;
  v39.receiver = v20;
  v39.super_class = v19;
  v22 = a5;
  v23 = objc_msgSendSuper2(&v39, sel_init);
  v24 = sub_1C3C70548();
  sub_1C3C745F4(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C3D5EAE0;
  *(v25 + 32) = v24;
  sub_1C3C27CB4(0, &qword_1EC0859C0);
  v26 = v10;
  v27 = v24;
  v28 = sub_1C3D202A4();

  [v26 setUnhighlightedPresentationStyles_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C3D5EAE0;
  *(v29 + 32) = v27;
  v30 = v27;
  v31 = sub_1C3D202A4();

  [v26 setHighlightedPresentationStyles_];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C3D5EAE0;
  *(v32 + 32) = v30;
  v33 = v30;
  v34 = sub_1C3D202A4();

  [v26 setSelectedPresentationStyles_];

  [v26 setInactivePresentationStyle_];
  v35 = [v33 pointMarkerStyle];
  [v26 setSelectedPointMarkerStyle_];

  return v26;
}

void sub_1C3C73034(CGContext *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextSaveGState(a1);
  v12 = HKAudiogramFrequencyAxisFont();
  v24 = [objc_opt_self() configurationWithFont:v12 scale:1];
  v13 = sub_1C3D200C4();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v24];

  if (v14)
  {
    v15 = [objc_opt_self() labelColor];
    v16 = [v14 imageWithTintColor:v15 renderingMode:1];

    [v14 size];
    v18 = v17;
    v20 = v19;
    v21 = a2 + v17 * -0.5;
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    MinY = CGRectGetMinY(v26);
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    Height = CGRectGetHeight(v27);
    CGContextTranslateCTM(a1, 0.0, Height + v20 * -1.5);
    [v16 drawInRect_];
    CGContextRestoreGState(a1);

    v12 = v14;
    v24 = v16;
  }

  else
  {
    CGContextRestoreGState(a1);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3C732B4(void *a1, char a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = [a1 pointMarkerStyle];
  if (!v15 || (v16 = v15, v17 = [v15 pointColor], v16, !v17))
  {
    v17 = [objc_opt_self() redColor];
  }

  v18 = a4 + -9.0;
  if (a2)
  {
    v19 = a3 + -18.0 + -10.0;
  }

  else
  {
    v19 = a3 + 10.0;
  }

  v30.size.width = 18.0;
  v30.size.height = 18.0;
  v30.origin.x = v19;
  v30.origin.y = v18;
  MaxY = CGRectGetMaxY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  if (CGRectGetMaxY(v31) >= MaxY)
  {
    v34.size.width = 18.0;
    v34.size.height = 18.0;
    v34.origin.x = v19;
    v34.origin.y = v18;
    if (CGRectGetMinY(v34) >= 0.0)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0.0;
    }
  }

  else
  {
    v32.origin.x = a5;
    v32.origin.y = a6;
    v32.size.width = a7;
    v32.size.height = a8;
    v21 = CGRectGetMaxY(v32);
    v33.size.width = 18.0;
    v33.size.height = 18.0;
    v33.origin.x = v19;
    v33.origin.y = v18;
    v22 = v18 + v21 - CGRectGetMaxY(v33);
  }

  v23 = objc_opt_self();
  v27 = v17;
  v28 = [v23 systemBackgroundColor];
  v26 = v27;
  v24 = v28;
  v35.size.width = 18.0;
  v35.size.height = 18.0;
  v35.origin.x = v19;
  v35.origin.y = v22;
  Height = CGRectGetHeight(v35);
  sub_1C3C58B30(v19, v22, 18.0, 18.0, Height * 0.85);
}

id sub_1C3C73500(unint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62)
  {
    v3 = a3;
    v29 = sub_1C3D20964();
    a3 = v3;
    if (v29 != 1)
    {
      goto LABEL_53;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_53;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_5;
    }

LABEL_53:

    return a1;
  }

  v3 = a3;
  v30 = sub_1C3D20964();
  a3 = v3;
  if (v30 != 2)
  {
    goto LABEL_53;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      if (v9 != 1)
      {
        v7 = a3;
        v10 = *(a1 + 40);
        v4 = *(a1 + 32);
        v11 = v10;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  v7 = a3;
  v4 = MEMORY[0x1C692FEB0](0, a1);
  v11 = MEMORY[0x1C692FEB0](1, a1);
LABEL_9:
  v3 = v11;
  v6 = &selRef_upgradingFromAlgorithmVersionForOnboardingManager_;
  result = [v4 userInfo];
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = result;
  sub_1C3C74590();
  v5 = sub_1C3D202B4();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_47:

LABEL_52:

    goto LABEL_53;
  }

LABEL_46:
  if (!sub_1C3D20964())
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C692FEB0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  v31 = a1 & 0xC000000000000001;
  v5 = v14;
  result = [v3 *(v6 + 232)];
  if (result)
  {
    v15 = result;
    v6 = sub_1C3D202B4();

    if (!(v6 >> 62))
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_19:
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C692FEB0](0, v6);
LABEL_22:

          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (!v16)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            goto LABEL_53;
          }

          v17 = v16;
          [v5 frequencyHertz];
          v19 = v18;
          [v17 frequencyHertz];
          if (v19 == v20)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_53;
          }

          [v4 xDistanceFromFirstTouchPoint];
          v22 = fabs(v21);
          [v3 xDistanceFromFirstTouchPoint];
          v24 = fabs(v23);
          *v7 = 1;
          if (vabdd_f64(v22, v24) < 0.000001)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return MEMORY[0x1E69E7CC0];
          }

          sub_1C3C745F4(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1C3D5EAE0;
          if (v24 >= v22)
          {
            if (v31)
            {
              v26 = 0;
              goto LABEL_34;
            }

            v28 = *(a1 + 32);
          }

          else
          {
            if (v31)
            {
              v26 = 1;
LABEL_34:
              v27 = MEMORY[0x1C692FEB0](v26, a1);
LABEL_38:
              *(v25 + 32) = v27;

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return v25;
            }

            v28 = *(a1 + 40);
          }

          v27 = v28;
          goto LABEL_38;
        }

        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_50:
    result = sub_1C3D20964();
    if (result)
    {
      goto LABEL_19;
    }

LABEL_51:
    swift_unknownObjectRelease();

    goto LABEL_52;
  }

LABEL_58:
  __break(1u);
  return result;
}

void *sub_1C3C73968(uint64_t a1, void *a2)
{
  sub_1C3C27CB4(0, &qword_1EC085FF8);
  sub_1C3C5221C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C3D5F370;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = 0xD00000000000001DLL;
  *(v4 + 40) = 0x80000001C3D83300;
  sub_1C3C745F4(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
  *(v4 + 88) = v5;
  *(v4 + 64) = a1;
  sub_1C3C27CB4(0, &qword_1EC086018);

  v6 = sub_1C3D204C4();
  v7 = sub_1C3D204B4();

  if (a2)
  {
    v8 = a2;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t sub_1C3C73AE4(void *a1)
{
  *&v6[0] = 0xD00000000000001DLL;
  *(&v6[0] + 1) = 0x80000001C3D83300;
  v1 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1C3C745F4(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C396C69C(v6);
    return 0;
  }
}

id sub_1C3C73C00(void *a1)
{
  *&v5 = 0xD000000000000026;
  *(&v5 + 1) = 0x80000001C3D83320;
  v1 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1C3C27CB4(0, &qword_1EC080DD0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C396C69C(v7);
  }

  v3 = [objc_opt_self() hk_chartLollipopBackgroundColor];

  return v3;
}

uint64_t sub_1C3C73D38(void *a1, uint64_t a2, int a3, double a4)
{
  v7 = a1;
  v8 = sub_1C3C73AE4(a1);
  if (!v8)
  {
    v47 = sub_1C3C73C00(v7);
    v48 = type metadata accessor for AudiogramLineSeriesPresentationStyle();
    v49 = objc_allocWithZone(v48);
    *&v49[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a2;
    *&v49[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = 0;
    v49[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = 0;
    v49[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = 0;
    v72.receiver = v49;
    v72.super_class = v48;
    v50 = objc_msgSendSuper2(&v72, sel_init);
    v51 = sub_1C3C7245C(a3 & 1);
    *&v73 = a2;
    *(&v73 + 1) = v51;
    v74 = v47;
    v75 = xmmword_1C3D60F20;
    v52 = v51;
    v53 = v47;
    v54 = sub_1C3C56DBC(0.0, 0.0, 18.0, 18.0);
    v55 = sub_1C3C72518(a4 + a4, a4 + a4);

    return v55;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {

    v46 = MEMORY[0x1E69E7CC0];
LABEL_17:
    _s8HealthUI20AudiogramPointMarkerV13renderAndJoin7symbolsSo7UIImageCSayAGG_tFZ_0(v46);
    v55 = v56;

    return v55;
  }

  v71 = MEMORY[0x1E69E7CC0];
  v10 = v8;
  sub_1C3D208C4();
  v11 = v10;
  v64 = &v68;
  v12 = a4 + a4;
  v13 = 32;
  v63 = xmmword_1C3D60F20;
  __asm { FMOV            V0.2D, #18.0 }

  v58 = _Q0;
  v62 = a2;
  v61 = a3;
  v60 = v7;
  v59 = v10;
  while (1)
  {
    v19 = *(v11 + v13);
    v20 = sub_1C3C73C00(v7);
    v21 = type metadata accessor for AudiogramLineSeriesPresentationStyle();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_seriesEar] = a2;
    *&v22[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_selectedEar] = 0;
    v22[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_displayState] = 0;
    v22[OBJC_IVAR___HKAudiogramLineSeriesPresentationStyle_disableConnectionLines] = 0;
    v70.receiver = v22;
    v70.super_class = v21;
    v23 = &selRef_hk_chartLollipopLabelColor;
    v65 = objc_msgSendSuper2(&v70, sel_init);
    if ((a3 & 1) == 0)
    {
      goto LABEL_8;
    }

    v24 = sub_1C3C70548();
    v25 = [v24 pointMarkerStyle];

    if (!v25 || (v26 = [v25 pointColor], v25, !v26))
    {
      v23 = &selRef_redColor;
LABEL_8:
      v27 = [objc_opt_self() *v23];
      v26 = v27;
    }

    *&v73 = a2;
    *(&v73 + 1) = v26;
    *&v74 = v20;
    *(&v74 + 1) = v19;
    v75 = v63;
    if (v19)
    {
      MEMORY[0x1EEE9AC00](v27);
      v57[2] = &v73;
      v31 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
      v32 = v26;
      v33 = v20;
      v34 = [v31 initWithSize_];
      v35 = swift_allocObject();
      v36 = v74;
      *(v35 + 16) = v73;
      *(v35 + 32) = v36;
      *(v35 + 48) = v75;
      *(v35 + 64) = 0;
      *(v35 + 72) = 0;
      *(v35 + 80) = v58;
      *(v35 + 96) = sub_1C3C74574;
      *(v35 + 104) = v57;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1C3C58A40;
      *(v37 + 24) = v35;
      *&v69 = sub_1C3C746C0;
      *(&v69 + 1) = v37;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v68 = sub_1C3C57A08;
      *(&v68 + 1) = &block_descriptor_53;
      v38 = _Block_copy(&aBlock);
      sub_1C3C58A84(&v73, v66);

      v30 = [v34 imageWithActions_];

      _Block_release(v38);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      aBlock = v73;
      v68 = v74;
      v69 = v75;
      v28 = v26;
      v29 = v20;
      v30 = sub_1C3C56DBC(0.0, 0.0, 18.0, 18.0);
    }

    v40 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v41 = swift_allocObject();
    *(v41 + 16) = v12;
    *(v41 + 24) = v12;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 32) = v30;
    *(v41 + 56) = v12;
    *(v41 + 64) = v12;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1C3C74568;
    *(v42 + 24) = v41;
    *&v69 = sub_1C3C7456C;
    *(&v69 + 1) = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v68 = sub_1C3C57A08;
    *(&v68 + 1) = &block_descriptor_41;
    v43 = _Block_copy(&aBlock);
    v44 = v30;

    v45 = [v40 imageWithActions_];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      break;
    }

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    v13 += 8;
    --v9;
    a2 = v62;
    LOBYTE(a3) = v61;
    v7 = v60;
    v11 = v59;
    if (!v9)
    {

      v46 = v71;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1C3C74514()
{
  result = qword_1EC086578;
  if (!qword_1EC086578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086578);
  }

  return result;
}

unint64_t sub_1C3C74590()
{
  result = qword_1EC086598;
  if (!qword_1EC086598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC086598);
  }

  return result;
}

void sub_1C3C745F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id static AudiogramPerformanceAnalytics.Metric.longitudinalChartAudiogramAggregation(strategy:queryDuration:aggregationDuration:audiogramCount:)(unsigned __int8 *a1, uint64_t a2, double a3, double a4)
{
  v8 = *a1;
  sub_1C3C74C94();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5F320;
  *(inited + 32) = 0x656D614E776F6C66;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x80000001C3D825B0;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000013;
  v11 = MEMORY[0x1E69E63B0];
  *(inited + 88) = 0x80000001C3D81F40;
  *(inited + 96) = a3;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001C3D81F60;
  *(inited + 144) = a4;
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001C3D81F80;
  *(inited + 192) = a3 + a4;
  *(inited + 216) = v11;
  strcpy((inited + 224), "audiogramCount");
  v12 = MEMORY[0x1E69E6530];
  *(inited + 239) = -18;
  *(inited + 240) = a2;
  *(inited + 264) = v12;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x80000001C3D81F20;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v13 = 0xE600000000000000;
      v14 = 1801807223;
      goto LABEL_12;
    }

    if (v8 != 4)
    {
      v13 = 0xE600000000000000;
      v14 = 1918985593;
      goto LABEL_12;
    }

    v13 = 0xE700000000000000;
    v15 = 0x796C68746E6F6DLL;
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 1920298856;
LABEL_12:
      v15 = v14 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      goto LABEL_13;
    }

    v13 = 0xE500000000000000;
    v15 = 0x796C696164;
  }

  else
  {
    v13 = 0xE400000000000000;
    v15 = 1701736302;
  }

LABEL_13:
  *(inited + 312) = v10;
  *(inited + 288) = v15;
  *(inited + 296) = v13;
  v16 = sub_1C3C75090(inited);
  swift_setDeallocating();
  sub_1C3C347A4();
  swift_arrayDestroy();
  v17 = sub_1C3C75090(MEMORY[0x1E69E7CC0]);
  v18 = objc_allocWithZone(v4);
  *&v18[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_duPayload] = v16;
  *&v18[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_ihaPayload] = v17;
  v20.receiver = v18;
  v20.super_class = v4;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t AudiogramPerformanceAnalytics.Metric.DUFieldNames.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C3D209C4();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AudiogramPerformanceAnalytics.Metric.DUFieldNames.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D614E776F6C66;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6172676F69647561;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C3C74A70()
{
  sub_1C3D20164();
}

void sub_1C3C74B8C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E776F6C66;
  v5 = 0xD000000000000013;
  v6 = 0x80000001C3D81F40;
  v7 = 0x80000001C3D81F60;
  v8 = 0xD000000000000019;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001C3D81F80;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE00746E756F436DLL;
  v10 = 0x6172676F69647561;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000001C3D81F20;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_1C3C74C94()
{
  if (!qword_1EC085910)
  {
    sub_1C3C347A4();
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085910);
    }
  }
}

id static AudiogramPerformanceAnalytics.Metric.allAudiogramResultsQuery(queryDuration:audiogramCount:)(uint64_t a1, double a2)
{
  sub_1C3C74C94();
  inited = swift_initStackObject();
  *(inited + 32) = 0x656D614E776F6C66;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000001C3D84470;
  *(inited + 16) = xmmword_1C3D602D0;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001C3D81F40;
  v7 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a2;
  *(inited + 120) = v7;
  strcpy((inited + 128), "audiogramCount");
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 143) = -18;
  *(inited + 144) = a1;
  v8 = sub_1C3C75090(inited);
  swift_setDeallocating();
  sub_1C3C347A4();
  swift_arrayDestroy();
  v9 = sub_1C3C75090(MEMORY[0x1E69E7CC0]);
  v10 = objc_allocWithZone(v2);
  *&v10[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_duPayload] = v8;
  *&v10[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_ihaPayload] = v9;
  v12.receiver = v10;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id AudiogramPerformanceAnalytics.Metric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramPerformanceAnalytics.Metric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C3C74F94(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1C3C767B8();
  v3 = sub_1C3D20994();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C3CA029C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C3CA029C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C3C75090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C3C766EC();
    v3 = sub_1C3D20994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C3C76750(v4, &v13, sub_1C3C347A4);
      v5 = v13;
      v6 = v14;
      result = sub_1C3CA0224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C3C233B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C751C4(uint64_t a1)
{
  sub_1C3C76174();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1C3C76240();
    v8 = sub_1C3D20994();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1C3C76750(v10, v6, sub_1C3C76174);
      result = sub_1C3CA0330(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C3D1E8C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C75398(uint64_t a1)
{
  sub_1C3C76010();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1C3C76080();
    v8 = sub_1C3D20994();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1C3C76750(v10, v6, sub_1C3C76010);
      result = sub_1C3CA0330(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C3D1E8C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C7556C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C3C765DC();
    v3 = sub_1C3D20994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C3C7667C(v4, &v11, &qword_1EC080E20, type metadata accessor for Key);
      v5 = v11;
      result = sub_1C3CA3B3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C3C233B8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C756B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C3C762FC(0, a2, a3);
    v5 = sub_1C3D20994();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_1C3CA02E0(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C757A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C3C763B8();
    v3 = sub_1C3D20994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C3C76750(v4, &v11, sub_1C3C76458);
      v5 = v11;
      result = sub_1C3CA04D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C3C233B8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C758B4(uint64_t a1)
{
  sub_1C3C764D4(0, &qword_1EC0865F8, MEMORY[0x1E69D36D8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1C3C76540();
    v8 = sub_1C3D20994();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1C3C7667C(v10, v6, &qword_1EC0865F8, MEMORY[0x1E69D36D8]);
      result = sub_1C3CA05B8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C3D1E6E4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3C75ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C3C75F98();
    v3 = sub_1C3D20994();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C3CA0224(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s8HealthUI29AudiogramPerformanceAnalyticsC6MetricC19audiogramChartQuery13queryDuration0G5CountAEXDSd_SitFZ_0(uint64_t a1, double a2)
{
  sub_1C3C74C94();
  inited = swift_initStackObject();
  *(inited + 32) = 0x656D614E776F6C66;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x80000001C3D84510;
  *(inited + 16) = xmmword_1C3D602D0;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001C3D81F40;
  v6 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a2;
  *(inited + 120) = v6;
  strcpy((inited + 128), "audiogramCount");
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 143) = -18;
  *(inited + 144) = a1;
  v7 = sub_1C3C75090(inited);
  swift_setDeallocating();
  sub_1C3C347A4();
  swift_arrayDestroy();
  v8 = sub_1C3C75090(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for AudiogramPerformanceAnalytics.Metric();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_duPayload] = v7;
  *&v10[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_ihaPayload] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_1C3C75D24()
{
  result = qword_1EC0865B0;
  if (!qword_1EC0865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0865B0);
  }

  return result;
}

unint64_t sub_1C3C75D7C()
{
  result = qword_1EC0865B8;
  if (!qword_1EC0865B8)
  {
    sub_1C3C761F4(255, &qword_1EC0865C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0865B8);
  }

  return result;
}

uint64_t _s6MetricC12DUFieldNamesOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MetricC12DUFieldNamesOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3C75F98()
{
  if (!qword_1EC087AB0)
  {
    sub_1C3C27CB4(255, &unk_1EC086CC0);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087AB0);
    }
  }
}

void sub_1C3C76010()
{
  if (!qword_1EC0865C8)
  {
    sub_1C3D1E8C4();
    sub_1C3C256F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0865C8);
    }
  }
}

void sub_1C3C76080()
{
  if (!qword_1EC087AC0)
  {
    sub_1C3D1E8C4();
    sub_1C3C256F4();
    sub_1C3C7612C(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087AC0);
    }
  }
}

uint64_t sub_1C3C7612C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C76174()
{
  if (!qword_1EC0865D0)
  {
    sub_1C3D1E8C4();
    sub_1C3C761F4(255, &unk_1EC086CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0865D0);
    }
  }
}

void sub_1C3C761F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C3D20304();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C3C76240()
{
  if (!qword_1EC087AD0)
  {
    sub_1C3D1E8C4();
    sub_1C3C761F4(255, &unk_1EC086CE0);
    sub_1C3C7612C(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087AD0);
    }
  }
}

void sub_1C3C762FC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C3C27CB4(255, &qword_1EC0855F0);
    sub_1C3C27CB4(255, a3);
    sub_1C3C5B878(&qword_1EC0859E0, &qword_1EC0855F0);
    v5 = sub_1C3D209A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C3C763B8()
{
  if (!qword_1EC0865E0)
  {
    sub_1C3C27CB4(255, &qword_1EC0861E8);
    sub_1C3C5B878(&qword_1EC0861F0, &qword_1EC0861E8);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0865E0);
    }
  }
}

void sub_1C3C76458()
{
  if (!qword_1EC0865E8)
  {
    sub_1C3C27CB4(255, &qword_1EC0861E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0865E8);
    }
  }
}

void sub_1C3C764D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C3C76540()
{
  if (!qword_1EC086600)
  {
    sub_1C3D1E6E4();
    sub_1C3C7612C(&qword_1EC086D10, MEMORY[0x1E69D36D8]);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086600);
    }
  }
}

void sub_1C3C765DC()
{
  if (!qword_1EC080DA0)
  {
    type metadata accessor for Key(255);
    sub_1C3C7612C(&qword_1EC080E30, type metadata accessor for Key);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080DA0);
    }
  }
}

uint64_t sub_1C3C7667C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3C764D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C3C766EC()
{
  if (!qword_1EC080DB0)
  {
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080DB0);
    }
  }
}

uint64_t sub_1C3C76750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C3C767B8()
{
  if (!qword_1EC086D50)
  {
    sub_1C3C76820();
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086D50);
    }
  }
}

void sub_1C3C76820()
{
  if (!qword_1EC086608)
  {
    sub_1C3C27CB4(255, &unk_1EC086D60);
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086608);
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.setContentSizeCategory(_:)(__C::UIContentSizeCategory a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69DB648];
  v5 = [v2 length];
  v6 = swift_allocObject();
  v6[2]._rawValue = a1._rawValue;
  v6[3]._rawValue = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C3C76D54;
  *(v7 + 24) = v6;
  v11[4] = sub_1C3C76D5C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C3C76CB8;
  v11[3] = &block_descriptor_8;
  v8 = _Block_copy(v11);
  v9 = a1._rawValue;
  v10 = v2;

  [v10 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_1C3C76A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1C396C578(a1, v22);
  if (v23)
  {
    sub_1C3C76D9C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v10 = [v21 fontDescriptor];
    v11 = [v10 fontAttributes];

    type metadata accessor for AttributeName(0);
    sub_1C3C76DE8();
    v12 = sub_1C3D1FEF4();

    if (*(v12 + 16) && (v13 = sub_1C3CA3B3C(*MEMORY[0x1E69DB8E8]), (v14 & 1) != 0))
    {
      sub_1C3C233C8(*(v12 + 56) + 32 * v13, v22);

      if (swift_dynamicCast())
      {
        v15 = objc_opt_self();
        v16 = sub_1C3D200C4();

        v17 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
        v18 = [v15 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:v17];

        v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
        v20 = *MEMORY[0x1E69DB648];
        [a6 removeAttribute:*MEMORY[0x1E69DB648] range:{a2, a3}];
        [a6 addAttribute:v20 value:v19 range:{a2, a3}];

        return;
      }
    }

    else
    {
    }
  }

  else
  {
    sub_1C396C69C(v22);
  }
}

uint64_t sub_1C3C76CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1C3C233B8(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1C396C69C(v13);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C3C76D9C()
{
  result = qword_1EC080DF0;
  if (!qword_1EC080DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC080DF0);
  }

  return result;
}

unint64_t sub_1C3C76DE8()
{
  result = qword_1EC085678;
  if (!qword_1EC085678)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085678);
  }

  return result;
}

id AudiogramAnnotationViewDataSource.__allocating_init(applicationItems:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C3C77C68(a1);

  return v4;
}

id AudiogramAnnotationViewDataSource.init(applicationItems:)(void *a1)
{
  v2 = sub_1C3C77C68(a1);

  return v2;
}

uint64_t sub_1C3C76F64(unint64_t a1, uint64_t a2, char a3)
{
  v7 = [*(v3 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_applicationItems) dateCache];
  sub_1C3CD78E4(a2, v7, 1);
  v9 = v8;

  v10 = *(v3 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView);
  *(v3 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView) = v9;

  sub_1C3C77708(a1, a3);
  *(v3 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs) = v11;
}

void *sub_1C3C77224()
{
  v1 = *(v0 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView);
  v2 = v1;
  return v1;
}

uint64_t sub_1C3C7739C()
{
  v1 = *(v0 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs);
  if (v1 >> 62)
  {
    return sub_1C3D20964();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1C3C7748C(unint64_t result, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v8 = result;

    v9 = MEMORY[0x1C692FEB0](v8, v4);

    v5 = v9;
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v5 = *(v4 + 8 * result + 32);
LABEL_5:
    v6 = a2 == 0;
    v7 = v5;
    [v5 setOrientation_];
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C7767C()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

void sub_1C3C77708(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    v28 = a2;
    v29 = sub_1C3D20964();
    a2 = v28;
    v4 = v29;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_31;
    }

    v30 = a2;
    v31 = v2;
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C692FEB0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 userInfo];
      if (v9)
      {
        v10 = v9;
        sub_1C3C77FEC(0, &qword_1EC086598);
        v11 = sub_1C3D202B4();

        v12 = sub_1C3C81C48(v11);

        if (v12)
        {
          sub_1C3C8EBA4(v12);
        }
      }
    }

    v5 = MEMORY[0x1E69E7CC0];
    v2 = v31;
    a2 = v30;
  }

  v13 = &OBJC_IVAR___HKAudiogramAnnotationViewDataSource_averageSensitivityFormatter;
  if ((a2 & 1) == 0)
  {
    v13 = &OBJC_IVAR___HKAudiogramAnnotationViewDataSource_hearingSensitivityFormatter;
  }

  v14 = *(v2 + *v13);
  sub_1C3C77FEC(0, &qword_1EC086910);
  v15 = v14;
  v16 = sub_1C3D202A4();

  v17 = [v15 formattedSelectedRangeLabelDataWithChartData:v16 context:0];

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v18 = sub_1C3D202B4();

  v32 = v5;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_29:

    return;
  }

  v19 = sub_1C3D20964();
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_18:
  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C692FEB0](v20, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [objc_allocWithZone(HKInteractiveChartAnnotationViewKeyValueLabel) init];
      v24 = [v23 keyLabel];
      [v24 setSelectedRangeData_];

      v25 = [v23 valueLabel];
      v26 = [v22 attributedString];
      [v25 setAttributedText_];

      v27 = v23;
      MEMORY[0x1C692F8F0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      ++v20;
      sub_1C3D202F4();
    }

    while (v19 != v20);
    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
}

id AudiogramAnnotationViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramAnnotationViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramAnnotationViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C77C68(void *a1)
{
  *&v1[OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView] = 0;
  *&v1[OBJC_IVAR___HKAudiogramAnnotationViewDataSource_applicationItems] = a1;
  v2 = a1;
  v3 = [v2 unitController];
  v4 = [objc_allocWithZone(HKInteractiveChartHearingSensitivityFormatter) initWithUnitController_];

  *&v1[OBJC_IVAR___HKAudiogramAnnotationViewDataSource_hearingSensitivityFormatter] = v4;
  v5 = [v2 unitController];
  v13.receiver = objc_allocWithZone(type metadata accessor for AudiogramAverageSensitivityChartFormatter());
  v13.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 hk_chartCurrentValueValueFont];
  [v8 setMajorFont_];

  v10 = [v7 hk_chartCurrentValueKindFont];
  [v8 setMinorFont_];

  [v8 setUnitController_];
  [v8 setDisplayType_];

  *&v1[OBJC_IVAR___HKAudiogramAnnotationViewDataSource_averageSensitivityFormatter] = v8;
  *&v1[OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs] = MEMORY[0x1E69E7CC0];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AudiogramAnnotationViewDataSource();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1C3C77FEC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id StateOfMindCoordinateInfo.__allocating_init(dateInterval:dailyReflectiveCount:dailyValenceRange:momentaryReflectiveCount:momentaryValenceRange:isSharingPreview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dateInterval;
  v18 = sub_1C3D1DC54();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v16[v17], a1, v18);
  *&v16[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount] = a2;
  v20 = &v16[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange];
  *v20 = a3;
  *(v20 + 1) = a4;
  v20[16] = a5 & 1;
  *&v16[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount] = a6;
  v21 = &v16[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange];
  *v21 = a7;
  *(v21 + 1) = a8;
  v21[16] = a9 & 1;
  v16[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_isSharingPreview] = a10;
  v27.receiver = v16;
  v27.super_class = v10;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  (*(v19 + 8))(a1, v18);
  return v22;
}

id StateOfMindCoordinateInfo.init(dateInterval:dailyReflectiveCount:dailyValenceRange:momentaryReflectiveCount:momentaryValenceRange:isSharingPreview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v16 = OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dateInterval;
  v17 = sub_1C3D1DC54();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v10[v16], a1, v17);
  *&v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount] = a2;
  v19 = &v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange];
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = a5 & 1;
  *&v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount] = a6;
  v20 = &v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange];
  *v20 = a7;
  *(v20 + 1) = a8;
  v20[16] = a9 & 1;
  v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_isSharingPreview] = a10;
  v26.receiver = v10;
  v26.super_class = type metadata accessor for StateOfMindCoordinateInfo();
  v21 = objc_msgSendSuper2(&v26, sel_init);
  (*(v18 + 8))(a1, v17);
  return v21;
}

uint64_t type metadata accessor for StateOfMindCoordinateInfo()
{
  result = qword_1EC0866B8;
  if (!qword_1EC0866B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id StateOfMindCoordinateInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindCoordinateInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindCoordinateInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C784C4()
{
  result = sub_1C3D1DC54();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C3C785BC()
{
  sub_1C3C78618();
  sub_1C3C787B8();
  v0 = sub_1C3D202A4();

  return v0;
}

uint64_t sub_1C3C78618()
{
  v0 = sub_1C3D1E8C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C3D1E8B4();
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C3D208C4();
    v7 = v1 + 16;
    v6 = *(v1 + 16);
    v12[1] = v4;
    v13 = v6;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = (v7 - 8);
    do
    {
      v13(v3, v8, v0);
      sub_1C3D1E894();
      (*v10)(v3, v0);
      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      v8 += v9;
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1C3C787B8()
{
  result = qword_1EC0857A0;
  if (!qword_1EC0857A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0857A0);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalAddAccountRow()
{
  result = qword_1EC0866D0;
  if (!qword_1EC0866D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C78878()
{
  sub_1C3C4C410();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_1C3C78900@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C3D1F3F4();
  v12 = 1;
  sub_1C3C78AF4(__src);
  memcpy(__dst, __src, 0x151uLL);
  memcpy(v15, __src, 0x151uLL);
  v3 = MEMORY[0x1E6981F40];
  sub_1C3C798F8(__dst, v9, &qword_1EC0866E0, sub_1C3C793BC, MEMORY[0x1E6981F40], sub_1C3C799EC);
  sub_1C3C79A50(v15, &qword_1EC0866E0, sub_1C3C793BC, v3);
  memcpy(&v11[7], __dst, 0x151uLL);
  v4 = v12;
  sub_1C3D1FD14();
  sub_1C3D1F1E4();
  *&v13[55] = *&__src[48];
  *&v13[71] = *&__src[64];
  *&v13[87] = *&__src[80];
  *&v13[103] = *&__src[96];
  *&v13[7] = *__src;
  *&v13[23] = *&__src[16];
  *&v13[39] = *&__src[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  memcpy((a1 + 17), v11, 0x158uLL);
  v5 = *&v13[80];
  *(a1 + 425) = *&v13[64];
  *(a1 + 441) = v5;
  *(a1 + 457) = *&v13[96];
  *(a1 + 472) = *&v13[111];
  v6 = *&v13[16];
  *(a1 + 361) = *v13;
  *(a1 + 377) = v6;
  result = *&v13[32];
  v8 = *&v13[48];
  *(a1 + 393) = *&v13[32];
  *(a1 + 409) = v8;
  return result;
}

uint64_t sub_1C3C78AF4@<X0>(uint64_t a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = sub_1C3D1F424();
  sub_1C3C78FC8(__dst);
  v36 = __dst[0];
  v30 = __dst[1];
  v38 = __dst[2];
  v39 = __dst[4];
  v40 = __dst[3];
  LOBYTE(v50[0]) = 0;
  sub_1C3C4C410();
  sub_1C3D1F094();
  sub_1C3D1F094();
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  *&v41[6] = v86;
  *&v41[22] = v87;
  *&v41[38] = v88;
  v2 = sub_1C3D1F7A4();
  sub_1C3D1F014();
  v34 = v4;
  v35 = v3;
  v32 = v6;
  v33 = v5;
  LOBYTE(v50[0]) = 0;
  v7 = sub_1C3D1F774();
  sub_1C3D1F014();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(__dst[0]) = 0;
  v31 = sub_1C3D1F794();
  sub_1C3D1F014();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v29 = sub_1C3D1F434();
  sub_1C3C791EC(__dst);
  v24 = __dst[0];
  v25 = __dst[1];
  v26 = __dst[2];
  v27 = __dst[3];
  __src[0] = v37;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  *(&__src[2] + 1) = *v47;
  HIDWORD(__src[2]) = *&v47[3];
  __src[3] = v36;
  __src[4] = v30;
  __src[5] = v38;
  __src[6] = v40;
  __src[7] = v39;
  __src[8] = 0x3FF0000000000000;
  LOWORD(__src[9]) = 0;
  __src[15] = *&v41[46];
  *(&__src[13] + 2) = *&v41[32];
  *(&__src[11] + 2) = *&v41[16];
  *(&__src[9] + 2) = *v41;
  LOBYTE(__src[16]) = v2;
  HIDWORD(__src[16]) = *&v42[3];
  *(&__src[16] + 1) = *v42;
  __src[17] = v35;
  __src[18] = v34;
  __src[19] = v33;
  __src[20] = v32;
  LOBYTE(__src[21]) = 0;
  HIDWORD(__src[21]) = *&v44[3];
  *(&__src[21] + 1) = *v44;
  LOBYTE(__src[22]) = v7;
  HIDWORD(__src[22]) = *&v43[3];
  *(&__src[22] + 1) = *v43;
  __src[23] = v9;
  __src[24] = v11;
  __src[25] = v13;
  __src[26] = v15;
  LOBYTE(__src[27]) = 0;
  HIDWORD(__src[27]) = *&v46[3];
  *(&__src[27] + 1) = *v46;
  LOBYTE(__src[28]) = v31;
  HIDWORD(__src[28]) = *&v45[3];
  *(&__src[28] + 1) = *v45;
  __src[29] = v17;
  __src[30] = v19;
  __src[31] = v21;
  __src[32] = v23;
  LOBYTE(__src[33]) = 0;
  memcpy(__dst, __src, 0x109uLL);
  memcpy(a1, __dst, 0x110uLL);
  *(a1 + 272) = v29;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 296) = v24;
  *(a1 + 304) = v25;
  *(a1 + 312) = v26;
  *(a1 + 320) = v27;
  *(a1 + 328) = 0;
  *(a1 + 336) = 1;
  sub_1C3C798F8(__src, v50, &qword_1EC0866F0, sub_1C3C79458, MEMORY[0x1E697E5E0], sub_1C3C79480);
  sub_1C3C4C328(v24, v25, v26);

  sub_1C3C2EE8C(v24, v25, v26);

  v50[0] = v37;
  v50[1] = 0;
  v51 = 1;
  *v52 = *v47;
  *&v52[3] = *&v47[3];
  v53 = v36;
  v54 = v30;
  v55 = v38;
  v56 = v40;
  v57 = v39;
  v58 = 0x3FF0000000000000;
  v59 = 0;
  *&v62[14] = *&v41[46];
  *v62 = *&v41[32];
  v61 = *&v41[16];
  v60 = *v41;
  v63 = v2;
  *&v64[3] = *&v42[3];
  *v64 = *v42;
  v65 = v35;
  v66 = v34;
  v67 = v33;
  v68 = v32;
  v69 = 0;
  *v70 = *v44;
  *&v70[3] = *&v44[3];
  v71 = v7;
  *v72 = *v43;
  *&v72[3] = *&v43[3];
  v73 = v9;
  v74 = v11;
  v75 = v13;
  v76 = v15;
  v77 = 0;
  *v78 = *v46;
  *&v78[3] = *&v46[3];
  v79 = v31;
  *&v80[3] = *&v45[3];
  *v80 = *v45;
  v81 = v17;
  v82 = v19;
  v83 = v21;
  v84 = v23;
  v85 = 0;
  sub_1C3C7996C(v50);
}

uint64_t sub_1C3C78FC8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C3C799EC(0, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1C3D1FB84();
  v6 = sub_1C3D1FB04();
  KeyPath = swift_getKeyPath();
  sub_1C3C4C410();
  sub_1C3D1F094();
  sub_1C3D1F824();
  v8 = sub_1C3D1F814();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_1C3D1F844();
  sub_1C3C79A50(v4, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  v10 = swift_getKeyPath();

  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v6;
  a1[3] = v10;
  a1[4] = v9;
  return result;
}

void sub_1C3C791EC(uint64_t a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1C3D200C4();
  v3 = HKHealthRecordsAPILocalizedString(v2);

  if (v3)
  {
    sub_1C3D20104();

    sub_1C3C4999C();
    v4 = sub_1C3D1F994();
    v6 = v5;
    v8 = v7;
    sub_1C3D1F834();
    v9 = sub_1C3D1F904();
    v11 = v10;
    v13 = v12;
    sub_1C3C2EE8C(v4, v6, v8 & 1);

    sub_1C3D1FB04();
    v14 = sub_1C3D1F914();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    sub_1C3C2EE8C(v9, v11, v13 & 1);

    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v18 & 1;
    *(a1 + 24) = v20;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3C793BC()
{
  if (!qword_1EC0866E8)
  {
    sub_1C3C79480(255, &qword_1EC0866F0, sub_1C3C79458);
    sub_1C3C798A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC0866E8);
    }
  }
}

void sub_1C3C79480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C7955C()
{
  if (!qword_1EC086718)
  {
    sub_1C3C795C0();
    sub_1C3C79710();
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086718);
    }
  }
}

void sub_1C3C795C0()
{
  if (!qword_1EC086720)
  {
    sub_1C3C79640();
    sub_1C3C796B8(255, &qword_1EC081220, &qword_1EC0811E0);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086720);
    }
  }
}

void sub_1C3C79640()
{
  if (!qword_1EC086728)
  {
    sub_1C3C796B8(255, &qword_1EC081210, &qword_1EC0811B0);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086728);
    }
  }
}

void sub_1C3C796B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C3C6EAF0(255, a3);
    v4 = sub_1C3D1F6D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3C79710()
{
  result = qword_1EC086730;
  if (!qword_1EC086730)
  {
    sub_1C3C795C0();
    sub_1C3C797B0();
    sub_1C3C79850(&qword_1EC081228, &qword_1EC081220, &qword_1EC0811E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086730);
  }

  return result;
}

unint64_t sub_1C3C797B0()
{
  result = qword_1EC086738;
  if (!qword_1EC086738)
  {
    sub_1C3C79640();
    sub_1C3C79850(&qword_1EC081218, &qword_1EC081210, &qword_1EC0811B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086738);
  }

  return result;
}

uint64_t sub_1C3C79850(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C3C796B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C798A0()
{
  if (!qword_1EC086740)
  {
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086740);
    }
  }
}

uint64_t sub_1C3C798F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1C3C7996C(uint64_t a1)
{
  sub_1C3C79480(0, &qword_1EC0866F0, sub_1C3C79458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C799EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3C79A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1C3C799EC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1C3C79AAC()
{
  result = qword_1EC086748;
  if (!qword_1EC086748)
  {
    sub_1C3C79480(255, &qword_1EC086750, sub_1C3C79B50);
    sub_1C3C79C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086748);
  }

  return result;
}

void sub_1C3C79B50()
{
  if (!qword_1EC086758)
  {
    sub_1C3C799EC(255, &qword_1EC0866E0, sub_1C3C793BC, MEMORY[0x1E6981F40]);
    sub_1C3C79BE4();
    v0 = sub_1C3D1FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086758);
    }
  }
}

unint64_t sub_1C3C79BE4()
{
  result = qword_1EC086760;
  if (!qword_1EC086760)
  {
    sub_1C3C799EC(255, &qword_1EC0866E0, sub_1C3C793BC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086760);
  }

  return result;
}

unint64_t sub_1C3C79C6C()
{
  result = qword_1EC086768;
  if (!qword_1EC086768)
  {
    sub_1C3C79B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086768);
  }

  return result;
}

uint64_t sub_1C3C79CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  sub_1C3C7A490();
  v97 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v92 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v92 - v12;
  v13 = sub_1C3D1E974();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v92 - v20);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - v24;
  v26 = *(a1 + 16);
  v107 = v27;
  v98 = v22;
  if (v26)
  {
    v29 = *(v22 + 16);
    v28 = v22 + 16;
    v105 = v29;
    v100 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v30 = a1 + v100;
    v31 = *(v28 + 56);
    v104 = *MEMORY[0x1E69A2ED8];
    v32 = (v28 - 8);
    v106 = v28;
    v102 = (v28 + 16);
    v103 = (v28 + 88);
    v108 = MEMORY[0x1E69E7CC0];
    v101 = v15;
    (v29)(v25, v30, v13, v23);
    while (1)
    {
      (*v103)(v18, v104, v13);
      sub_1C3C7A4FC();
      v33 = sub_1C3D20034();
      v34 = *v32;
      (*v32)(v18, v13);
      if (v33)
      {
        v34(v25, v13);
      }

      else
      {
        v35 = v13;
        v36 = *v102;
        (*v102)(v15, v25, v35);
        v37 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C3C23C6C(0, *(v37 + 16) + 1, 1);
          v37 = v110;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1C3C23C6C(v39 > 1, v40 + 1, 1);
          v37 = v110;
        }

        *(v37 + 16) = v40 + 1;
        v15 = v101;
        v108 = v37;
        v41 = v37 + v100 + v40 * v31;
        v42 = v107;
        v36(v41, v101, v107);
        v13 = v42;
      }

      v30 += v31;
      if (!--v26)
      {
        break;
      }

      (v105)(v25, v30, v13, v23);
    }
  }

  else
  {
    v108 = MEMORY[0x1E69E7CC0];
  }

  v106 = *(v108 + 16);
  if (v106)
  {
    v43 = 0;
    v44 = v98;
    v105 = (v108 + ((*(v98 + 80) + 32) & ~*(v98 + 80)));
    v45 = (v98 + 8);
    v46 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v43 >= *(v108 + 16))
      {
        goto LABEL_52;
      }

      v47 = *(v44 + 72);
      v48 = *(v44 + 16);
      v49 = v109;
      v48(v109, &v105[v47 * v43], v13, v23);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v46;
      v51 = sub_1C3CA0404(v49);
      v53 = *(v46 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        goto LABEL_53;
      }

      v57 = v52;
      if (*(v46 + 24) < v56)
      {
        break;
      }

      if (v50)
      {
        goto LABEL_21;
      }

      v65 = v51;
      sub_1C3CF9064();
      v51 = v65;
      v44 = v98;
      v46 = v110;
      v13 = v107;
      if ((v57 & 1) == 0)
      {
LABEL_22:
        *(v46 + 8 * (v51 >> 6) + 64) |= 1 << v51;
        v59 = v51;
        (v48)(*(v46 + 48) + v51 * v47, v109, v13);
        *(*(v46 + 56) + 8 * v59) = 0;
        v60 = *(v46 + 16);
        v55 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v55)
        {
          goto LABEL_55;
        }

        v51 = v59;
        *(v46 + 16) = v61;
      }

LABEL_24:
      v62 = *(v46 + 56);
      v63 = *(v62 + 8 * v51);
      v55 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v55)
      {
        goto LABEL_54;
      }

      ++v43;
      *(v62 + 8 * v51) = v64;
      (*v45)(v109, v13);
      if (v106 == v43)
      {
        goto LABEL_30;
      }
    }

    sub_1C3CA0F60(v56, v50);
    v46 = v110;
    v51 = sub_1C3CA0404(v109);
    if ((v57 & 1) != (v58 & 1))
    {
      goto LABEL_56;
    }

LABEL_21:
    v13 = v107;
    if ((v57 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v46 = MEMORY[0x1E69E7CC8];
  v44 = v98;
LABEL_30:

  v66 = 1 << *(v46 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v46 + 64);
  if (v68)
  {
    v69 = 0;
    v70 = __clz(__rbit64(v68));
    v71 = (v68 - 1) & v68;
    v72 = (v66 + 63) >> 6;
LABEL_38:
    v75 = *(v44 + 72);
    v76 = *(v46 + 48) + v75 * v70;
    v77 = v93;
    v109 = *(v44 + 16);
    (v109)(v93, v76, v107);
    *(v77 + *(v97 + 48)) = *(*(v46 + 56) + 8 * v70);
    sub_1C3C7A554(v77, v99);

    while (v71)
    {
      v78 = v69;
LABEL_46:
      v79 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v80 = v79 | (v78 << 6);
      v81 = v96;
      (v109)(v96, *(v46 + 48) + v80 * v75, v107);
      v82 = *(*(v46 + 56) + 8 * v80);
      v83 = v97;
      *&v81[*(v97 + 48)] = v82;
      v84 = v81;
      v85 = v95;
      sub_1C3C7A554(v84, v95);
      v86 = *(v83 + 48);
      v87 = v99;
      if (*(v99 + v86) >= *(v85 + v86))
      {
        sub_1C3C7A5B8(v85);
      }

      else
      {
        sub_1C3C7A5B8(v99);
        sub_1C3C7A554(v85, v87);
      }

      v69 = v78;
      v44 = v98;
    }

    while (1)
    {
      v78 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v78 >= v72)
      {

        v88 = v92;
        sub_1C3C7A554(v99, v92);
        v89 = v94;
        v13 = v107;
        (*(v44 + 32))(v94, v88, v107);
        v90 = 0;
        goto LABEL_49;
      }

      v71 = *(v46 + 64 + 8 * v78);
      ++v69;
      if (v71)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = sub_1C3D20AA4();
    __break(1u);
  }

  else
  {
    v73 = 0;
    v72 = (v66 + 63) >> 6;
    while (v72 - 1 != v73)
    {
      v69 = v73 + 1;
      v74 = *(v46 + 72 + 8 * v73);
      v68 -= 64;
      ++v73;
      if (v74)
      {
        v71 = (v74 - 1) & v74;
        v70 = __clz(__rbit64(v74)) - v68;
        goto LABEL_38;
      }
    }

    v90 = 1;
    v89 = v94;
LABEL_49:
    (*(v44 + 56))(v89, v90, 1, v13);
  }

  return result;
}

void sub_1C3C7A490()
{
  if (!qword_1EC086770)
  {
    sub_1C3D1E974();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086770);
    }
  }
}

unint64_t sub_1C3C7A4FC()
{
  result = qword_1EC086D00;
  if (!qword_1EC086D00)
  {
    sub_1C3D1E974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086D00);
  }

  return result;
}

uint64_t sub_1C3C7A554(uint64_t a1, uint64_t a2)
{
  sub_1C3C7A490();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C7A5B8(uint64_t a1)
{
  sub_1C3C7A490();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C3C7A614@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result healthAppNotInstalled];

    if (v4)
    {
      v5 = objc_opt_self();
      v6 = [v5 healthSettingsHealthRecordsSpecifier];
      if (!v6)
      {
        sub_1C3D20104();
        v6 = sub_1C3D200C4();
      }

      v7 = [v5 internalHealthSettingsURLTo_];
    }

    else
    {
      v7 = [objc_opt_self() _hk_urlForViewHealthRecords];
    }

    sub_1C3D1E034();

    v8 = sub_1C3D1E064();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 0, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3C7A76C(void *a1, void *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationYouShouldKnowViewController_footerMargin] = 0x401C000000000000;
  *&v3[OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationYouShouldKnowViewController_viewControllerToPush] = a2;
  *&v3[OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationYouShouldKnowViewController_delegate] = a3;
  v25 = a2;
  swift_unknownObjectRetain();
  v5 = sub_1C3D200C4();
  v6 = HKHealthRecordsAPILocalizedString(v5);

  if (v6)
  {
    sub_1C3D20104();

    sub_1C3C7C8E4(0, &qword_1EC080D70, sub_1C3C54AB8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C3D5DCD0;
    v8 = [a1 source];
    v9 = [v8 name];

    v10 = sub_1C3D20104();
    v12 = v11;

    v13 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1C3C54B1C();
    *(v7 + 64) = v14;
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    v15 = [a1 source];
    v16 = [v15 name];

    v17 = sub_1C3D20104();
    v19 = v18;

    *(v7 + 96) = v13;
    *(v7 + 104) = v14;
    *(v7 + 72) = v17;
    *(v7 + 80) = v19;
    sub_1C3D20114();

    v20 = sub_1C3D200C4();
    v21 = HKHealthRecordsAPILocalizedString(v20);

    if (v21)
    {
      v22 = sub_1C3D200C4();

      v26.receiver = v3;
      v26.super_class = type metadata accessor for ClinicalAuthorizationYouShouldKnowViewController();
      v23 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, 0, 2);

      v24 = v23;
      [v24 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C3C7AC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationYouShouldKnowViewController_delegate);
  v2 = objc_opt_self();
  v3 = sub_1C3D200C4();
  v4 = [v2 hk:7 error:v3 description:?];

  v5 = sub_1C3D1DF94();
  [v1 promptControllerDidFinish:v0 error:v5];
}

void sub_1C3C7AE08()
{
  v0 = sub_1C3D200C4();
  v1 = HKHealthRecordsAPILocalizedString(v0);

  if (!v1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C3D20104();

  v2 = sub_1C3D202A4();
  v3 = HKUIJoinStringsForAutomationIdentifier(v2);

  if (v3)
  {
    v4 = sub_1C3D20104();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v74 = 0;
  v75 = v4;
  v76[0] = v6;
  v7 = sub_1C3D200C4();
  v8 = HKHealthRecordsAPILocalizedString(v7);

  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = sub_1C3D20104();
  v11 = v10;

  v12 = sub_1C3D202A4();
  v13 = HKUIJoinStringsForAutomationIdentifier(v12);

  if (v13)
  {
    v14 = sub_1C3D20104();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v76[1] = v9;
  v76[2] = v11;
  v76[3] = 0;
  v76[4] = 0;
  v76[5] = v14;
  v76[6] = v16;
  v17 = sub_1C3D200C4();
  v18 = HKHealthRecordsAPILocalizedString(v17);

  if (v18)
  {
    v19 = sub_1C3D20104();
    v21 = v20;

    v22 = sub_1C3D202A4();
    v23 = HKUIJoinStringsForAutomationIdentifier(v22);

    if (v23)
    {
      v24 = sub_1C3D20104();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v76[7] = v19;
    v76[8] = v21;
    v76[9] = 0;
    v76[10] = 0;
    v76[11] = v24;
    v76[12] = v26;
    v27 = [v68 headerView];
    v28 = 0;
    v29 = v76;
    while (1)
    {
      v72 = v27;
      v46 = *(v29 - 2);
      v47 = *v29;

      v70 = sub_1C3D200C4();
      if (v47)
      {

        sub_1C3D20204();
        sub_1C3D20194();
        v48 = sub_1C3D200C4();

        if (v46)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v48 = 0;
        if (v46)
        {
LABEL_21:

          v49 = sub_1C3D200C4();

          if (!v47)
          {
            goto LABEL_25;
          }

          goto LABEL_14;
        }
      }

      v49 = 0;
      if (!v47)
      {
LABEL_25:

        v30 = 0;
        goto LABEL_15;
      }

LABEL_14:

      sub_1C3D20204();
      sub_1C3D20194();

      v30 = sub_1C3D200C4();
LABEL_15:
      v71 = v28 + 1;
      v29 += 6;

      v27 = [objc_opt_self() createTitledListItem:v70 titleAccessibilityIdentifier:v48 listBody:v49 bodyAccessibilityIdentifier:v30 itemNumber:(v28 + 1)];

      v31 = [v68 contentView];
      [v31 addSubview_];

      if (v28)
      {
        v32 = 10.0;
      }

      else
      {
        v32 = 20.0;
      }

      v69 = objc_opt_self();
      sub_1C396C43C(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C3D61360;
      v34 = [v27 leadingAnchor];
      v35 = [v68 contentView];
      v36 = [v35 leadingAnchor];

      v37 = [v34 constraintEqualToAnchor_];
      *(v33 + 32) = v37;
      v38 = [v68 contentView];
      v39 = [v38 trailingAnchor];

      v40 = [v27 trailingAnchor];
      v41 = [v39 constraintEqualToAnchor_];

      *(v33 + 40) = v41;
      v42 = [v27 topAnchor];
      v43 = [v72 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43 constant:v32];

      *(v33 + 48) = v44;
      sub_1C3C27CB4(0, &qword_1EC086860);
      v45 = sub_1C3D202A4();

      [v69 activateConstraints_];

      ++v28;
      if (v71 == 3)
      {
        swift_arrayDestroy();
        sub_1C3C7B74C();
        v51 = v50;
        v52 = [v68 contentView];
        [v52 addSubview_];

        v73 = objc_opt_self();
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C3D61370;
        v54 = [v51 topAnchor];
        v55 = [v27 bottomAnchor];
        v56 = [v54 constraintEqualToAnchor_];

        *(v53 + 32) = v56;
        v57 = [v68 contentView];
        v58 = [v57 bottomAnchor];

        v59 = [v51 bottomAnchor];
        v60 = [v58 constraintEqualToSystemSpacingBelowAnchor:v59 multiplier:1.0];

        *(v53 + 40) = v60;
        v61 = [v51 leadingAnchor];
        v62 = [v27 leadingAnchor];
        v63 = [v61 constraintEqualToAnchor:v62 constant:7.0];

        *(v53 + 48) = v63;
        v64 = [v27 trailingAnchor];
        v65 = [v51 trailingAnchor];
        v66 = [v64 constraintEqualToAnchor:v65 constant:7.0];

        *(v53 + 56) = v66;
        v67 = sub_1C3D202A4();

        [v73 activateConstraints_];

        return;
      }
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C3C7B74C()
{
  v1 = v0;
  sub_1C3C7C8E4(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setScrollEnabled_];
  [v6 setUserInteractionEnabled_];
  [v6 setDelegate_];
  [v6 setEditable_];
  [v6 _setInteractiveTextSelectionDisabled_];
  [v6 setDataDetectorTypes_];
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor_];

  sub_1C3C7C8E4(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5F370;
  v10 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v11 = v10;
  v12 = [v7 hk_appKeyColor];
  *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 40) = v12;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C7C948(inited + 32);
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v13 = sub_1C3D1FEE4();

  [v6 setLinkTextAttributes_];

  v14 = sub_1C3D200C4();
  v15 = HKHealthRecordsAPILocalizedString(v14);

  if (v15)
  {
    v16 = sub_1C3D20104();
    v18 = v17;

    v19 = sub_1C3D200C4();
    v20 = HKHealthRecordsAPILocalizedString(v19);

    if (v20)
    {
      v21 = sub_1C3D20104();
      v23 = v22;

      sub_1C3C7A614(v4);
      v24 = sub_1C3C7C1F8(v16, v18, v21, v23, v4);

      sub_1C3C7C9A4(v4, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1C3C7C8E4);
      [v6 setAttributedText_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C3C7BB5C()
{
  v1 = [objc_opt_self() boldButton];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemBlueColor];
  [v3 setTintColor_];

  [v3 addTarget:v0 action:sel_nextButtonPressed_ forControlEvents:64];
  v5 = sub_1C3D200C4();
  v6 = HKHealthRecordsAPILocalizedString(v5);

  [v3 setTitle:v6 forState:0];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = [v0 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  v9 = [v0 navigationItem];
  v10 = sub_1C3D200C4();
  v11 = HKHealthRecordsAPILocalizedString(v10);

  [v9 setTitle_];
  v12 = [v0 navigationItem];
  v13 = sub_1C3D200C4();
  v14 = HKHealthRecordsAPILocalizedString(v13);

  [v12 setAccessibilityLabel_];
  v15 = [v0 navigationItem];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonPressed_];
  [v15 setRightBarButtonItem_];
}

void sub_1C3C7BE24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    oslog = v6;
    [v6 pushViewController:a1 animated:a2 & 1];
  }

  else
  {
    if (qword_1EC0850C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v7, qword_1EC08DCF8);
    oslog = sub_1C3D1ED84();
    v8 = sub_1C3D20504();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C3942000, oslog, v8, "ClinicalAuthorizationYouShouldKnowViewController tasked to push but doesn't live in a navigation controller", v9, 2u);
      MEMORY[0x1C69321D0](v9, -1, -1);
    }
  }
}

uint64_t sub_1C3C7BF70()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_1C3C7C004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalAuthorizationYouShouldKnowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C7C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C3C7C8E4(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - v11;
  sub_1C3C7C8E4(0, &qword_1EC080D70, sub_1C3C54AB8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v64 = xmmword_1C3D5DCD0;
  *(v13 + 16) = xmmword_1C3D5DCD0;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1C3C54B1C();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;

  v16 = sub_1C3D200D4();
  v18 = v17;

  result = MEMORY[0x1C692F830](a1, a2);
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = MEMORY[0x1C692F830](v16, v18);

  if (__OFSUB__(v21, v20))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v61 = a5;
  v62 = v21 - v20;
  v63 = v12;
  sub_1C3C7C8E4(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
  v57 = v22;
  inited = swift_initStackObject();
  *(inited + 16) = v64;
  *&v64 = v20;
  v24 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v25 = objc_opt_self();
  v26 = *MEMORY[0x1E69DDD28];
  v55 = v24;
  v56 = v25;
  v27 = [v25 preferredFontForTextStyle_];
  v28 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 40) = v27;
  v29 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  v30 = objc_opt_self();
  v54 = v29;
  v31 = [v30 secondaryLabelColor];
  v32 = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 104) = v32;
  *(inited + 80) = v31;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  v60 = v33;
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v35 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  v37 = v36;
  v58 = sub_1C3C54C30();
  v59 = v37;
  v38 = sub_1C3D1FEE4();

  v39 = [v34 initWithString:v35 attributes:v38];

  if (v64 != sub_1C3D1DB74())
  {
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1C3D602D0;
    v41 = v55;
    *(v40 + 32) = v55;
    v42 = v41;
    *(v40 + 40) = [v56 preferredFontForTextStyle_];
    v43 = v54;
    *(v40 + 64) = v28;
    *(v40 + 72) = v43;
    v44 = v43;
    *(v40 + 80) = [v30 hk_appKeyColor];
    v45 = *MEMORY[0x1E69DB670];
    *(v40 + 104) = v32;
    *(v40 + 112) = v45;
    v46 = v63;
    sub_1C3C7CA04(v61, v63);
    v47 = sub_1C3D1E064();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      v49 = v45;
      sub_1C3C7C9A4(v46, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1C3C7C8E4);
      *(v40 + 144) = MEMORY[0x1E69E6158];
      *(v40 + 120) = 0;
      *(v40 + 128) = 0xE000000000000000;
    }

    else
    {
      v66 = v47;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
      (*(v48 + 32))(boxed_opaque_existential_0, v46, v47);
      sub_1C3C233B8(&v65, (v40 + 120));
      v51 = v45;
    }

    v52 = v62;
    sub_1C3C7556C(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    v53 = sub_1C3D1FEE4();

    [v39 addAttributes:v53 range:{v64, v52}];
  }

  return v39;
}

uint64_t sub_1C3C7C7C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C3D1E044();
  if (!v4)
  {
    return 1;
  }

  if (v3 != 0x7366657270 || v4 != 0xE500000000000000)
  {
    v5 = sub_1C3D20A54();

    if (v5)
    {
      goto LABEL_6;
    }

    return 1;
  }

LABEL_6:
  if (!a2)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = sub_1C3D1E024();
    sub_1C3C75090(MEMORY[0x1E69E7CC0]);
    v9 = sub_1C3D1FEE4();

    [v7 openSensitiveURL:v8 withOptions:v9];
  }

  return 0;
}

void sub_1C3C7C8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3C7C948(uint64_t a1)
{
  sub_1C3C54BC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C7C9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C3C7CA04(uint64_t a1, uint64_t a2)
{
  sub_1C3C7C8E4(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C3C7CAB8(void *a1, int a2, void (*a3)(void *, void), uint64_t a4)
{
  v115 = a1;
  v94 = sub_1C3D1E6F4();
  v7 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C3D1E654();
  v9 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29A0C();
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v72 - v14;
  v108 = sub_1C3D1FE54();
  v15 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v72 - v18;
  sub_1C3C29314();
  v87 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C7DF64(0, &qword_1EC0868D0, MEMORY[0x1E69D3710]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v117 = &v72 - v22;
  v23 = sub_1C3D1E7B4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C7DF64(0, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v118 = &v72 - v27;
  v110 = type metadata accessor for SleepScoreChartData();
  v95 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1C3D1E694();
  MEMORY[0x1EEE9AC00](v114);
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v34 = &v72 - v30;
  if (a2)
  {
    v35 = v115;
LABEL_19:
    v71 = v115;
    a3(v115, a2 & 1);
    sub_1C3C7DFB8(v71, a2 & 1);
    return;
  }

  v72 = a4;
  v73 = a3;
  v74 = a2;
  v36 = v115[2];
  if (!v36)
  {
    v115 = MEMORY[0x1E69E7CC0];
LABEL_18:
    LOBYTE(a2) = v74;
    a3 = v73;
    goto LABEL_19;
  }

  v113 = v32;
  v38 = *(v31 + 16);
  v37 = v31 + 16;
  v39 = v115 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
  v102 = *(v37 + 56);
  v104 = (v24 + 48);
  v105 = v38;
  v86 = (v24 + 32);
  v85 = (v15 + 32);
  v84 = (v15 + 8);
  v83 = *MEMORY[0x1E69D36C0];
  v82 = (v9 + 104);
  v81 = (v9 + 8);
  v80 = *MEMORY[0x1E69D36B8];
  v79 = *MEMORY[0x1E69D36B0];
  v106 = v37;
  v40 = (v37 - 8);
  v77 = (v24 + 8);
  v76 = (v7 + 32);
  v41 = (v95 + 56);
  v101 = (v95 + 48);
  v115 = MEMORY[0x1E69E7CC0];
  v99 = v23;
  v100 = (v37 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = v118;
  v43 = v114;
  v103 = &v72 - v30;
  v78 = (v37 - 8);
  v75 = (v95 + 56);
  while (1)
  {
    v116 = v36;
    v44 = v105;
    (v105)(v34, v39, v43, v33);
    v45 = v113;
    v44(v113, v34, v43);
    v46 = v117;
    sub_1C3D1E684();
    if ((*v104)(v46, 1, v23) != 1)
    {
      break;
    }

    v47 = *v40;
    (*v40)(v45, v43);
    sub_1C3C7DFC4(v117, &qword_1EC0868D0, MEMORY[0x1E69D3710]);
    v48 = 1;
    v49 = v43;
    v50 = v110;
LABEL_11:
    (*v41)(v42, v48, 1, v50);
    v34 = v103;
    v47(v103, v49);
    if ((*v101)(v42, 1, v50) == 1)
    {
      sub_1C3C7DFC4(v42, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
      v43 = v114;
    }

    else
    {
      sub_1C3C7E088(v42, v109, type metadata accessor for SleepScoreChartData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1C3C46324(0, v115[2] + 1, 1, v115);
      }

      v43 = v114;
      v69 = v115[2];
      v68 = v115[3];
      if (v69 >= v68 >> 1)
      {
        v115 = sub_1C3C46324(v68 > 1, v69 + 1, 1, v115);
      }

      v70 = v115;
      v115[2] = v69 + 1;
      sub_1C3C7E088(v109, v70 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v69, type metadata accessor for SleepScoreChartData);
      v42 = v118;
    }

    v39 += v102;
    v36 = v116 - 1;
    if (v116 == 1)
    {
      goto LABEL_18;
    }
  }

  (*v86)(v119, v117, v23);
  sub_1C3D1E664();
  sub_1C3D1E664();
  sub_1C3C7DEF4();
  if (sub_1C3D20004())
  {
    v51 = *v85;
    v52 = v88;
    v53 = v108;
    (*v85)(v88, v111, v108);
    v54 = v90;
    (v51)(v52 + *(v90 + 48), v112, v53);
    v55 = v89;
    sub_1C3C7E020(v52, v89, sub_1C3C29A0C);
    v56 = *(v54 + 48);
    v57 = v107;
    v51();
    v98 = v39;
    v58 = *v84;
    (*v84)(v55 + v56, v53);
    sub_1C3C7E088(v52, v55, sub_1C3C29A0C);
    (v51)(v57 + *(v87 + 36), v55 + *(v54 + 48), v53);
    v58(v55, v53);
    v39 = v98;
    v97 = sub_1C3D1E794();
    v59 = *v82;
    v60 = v91;
    v61 = v92;
    (*v82)(v91, v83, v92);
    v62 = sub_1C3D1E7A4();
    v63 = *v81;
    (*v81)(v60, v61);
    v59(v60, v80, v61);
    v96 = sub_1C3D1E7A4();
    v63(v60, v61);
    v59(v60, v79, v61);
    v64 = sub_1C3D1E7A4();
    v63(v60, v61);
    v65 = v93;
    v66 = v113;
    sub_1C3D1E674();
    v40 = v78;
    v47 = *v78;
    v49 = v114;
    (*v78)(v66, v114);
    (*v77)(v119, v99);
    sub_1C3C7E088(v107, v118, sub_1C3C29314);
    v50 = v110;
    *(v118 + *(v110 + 20)) = v97;
    *(v118 + v50[6]) = v62;
    v42 = v118;
    *(v118 + v50[7]) = v96;
    *(v42 + v50[8]) = v64;
    v41 = v75;
    v67 = v65;
    v23 = v99;
    (*v76)(v42 + v50[9], v67, v94);
    v48 = 0;
    *(v42 + v50[10]) = 0;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1C3C7D710(void *a1, int a2, void (*a3)(void, void), uint64_t a4)
{
  LODWORD(v6) = a2;
  sub_1C3C7DF64(0, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v30 - v9;
  v40 = type metadata accessor for SleepScoreChartData();
  v33 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E724();
  MEMORY[0x1EEE9AC00](v12);
  v38 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  if (v6)
  {
    v19 = a1;
  }

  else
  {
    v30[1] = a4;
    v31 = a3;
    v32 = v6;
    v20 = a1[2];
    if (v20)
    {
      v22 = *(v15 + 16);
      v21 = v15 + 16;
      v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v35 = *(v21 + 56);
      v36 = v22;
      v37 = v21;
      v34 = (v21 - 8);
      v24 = (v33 + 48);
      v6 = MEMORY[0x1E69E7CC0];
      v25 = v38;
      do
      {
        v26 = v36;
        (v36)(v18, v23, v12, v16);
        v26(v25, v18, v12);
        sub_1C3C852D4(v25, v10);
        (*v34)(v18, v12);
        if ((*v24)(v10, 1, v40) == 1)
        {
          sub_1C3C7DFC4(v10, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
        }

        else
        {
          sub_1C3C7E088(v10, v39, type metadata accessor for SleepScoreChartData);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C3C46324(0, *(v6 + 16) + 1, 1, v6);
          }

          v28 = *(v6 + 16);
          v27 = *(v6 + 24);
          v29 = v6;
          if (v28 >= v27 >> 1)
          {
            v29 = sub_1C3C46324(v27 > 1, v28 + 1, 1, v6);
          }

          *(v29 + 16) = v28 + 1;
          v6 = v29;
          sub_1C3C7E088(v39, v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, type metadata accessor for SleepScoreChartData);
        }

        v23 += v35;
        --v20;
      }

      while (v20);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    a1 = v6;
    LOBYTE(v6) = v32;
    a3 = v31;
  }

  a3(a1, v6 & 1);
  sub_1C3C7DFB8(a1, v6 & 1);
}

uint64_t sub_1C3C7DAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v33 = a2;
  v34 = a4;
  v31 = a3;
  v32 = a1;
  v6 = sub_1C3D1E784();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C3D1E6F4();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E3C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29314();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C3D1E754();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v31)
  {
    sub_1C3D1E774();
    v23 = swift_allocObject();
    *(v23 + 16) = v35;
    *(v23 + 24) = v36;

    v24 = sub_1C3D1E764();

    (*(v29 + 8))(v8, v30);
  }

  else
  {
    sub_1C3C7E020(v32, v18, sub_1C3C29314);
    (*(v13 + 16))(v15, v33, v12);
    (*(v9 + 16))(v11, v34, v28);
    sub_1C3D1E744();
    v25 = swift_allocObject();
    *(v25 + 16) = v35;
    *(v25 + 24) = v36;

    v24 = sub_1C3D1E734();

    (*(v20 + 8))(v22, v19);
  }

  return v24;
}

unint64_t sub_1C3C7DEF4()
{
  result = qword_1EC086290;
  if (!qword_1EC086290)
  {
    sub_1C3D1FE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086290);
  }

  return result;
}

void sub_1C3C7DF64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C7DFB8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C3C7DFC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C7DF64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3C7E020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C7E088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall UITraitEnvironment.contentSizeCategoryIsEqual(to:)(UITraitCollection_optional to)
{
  if (!to.value.super.isa)
  {
    return 0;
  }

  v2 = to.value.super.isa;
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(objc_class *)v2 preferredContentSizeCategory];
  v6 = sub_1C3D20104();
  v8 = v7;
  if (v6 == sub_1C3D20104() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1C3D20A54();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void __swiftcall HKAddDataHeaderWrapperView.init(title:iconSystemImageName:iconImageColor:)(HKAddDataHeaderWrapperView *__return_ptr retstr, Swift::String title, Swift::String iconSystemImageName, UIColor iconImageColor)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1C3D200C4();

  v7 = sub_1C3D200C4();

  [v5 initWithTitle:v6 iconSystemImageName:v7 iconImageColor:iconImageColor.super.isa];
}

id HKAddDataHeaderWrapperView.init(title:iconSystemImageName:iconImageColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C3C7EF38();

  return v6;
}

uint64_t sub_1C3C7E2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v21[1] = a3;
  v22 = a4;
  v23 = a5;
  v7 = type metadata accessor for HKAddDataHeaderView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C7F2A4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9[24] = 0;
  v14 = *(v7 + 32);
  *&v9[v14] = swift_getKeyPath();
  sub_1C3C7F3FC();
  swift_storeEnumTagMultiPayload();
  *v9 = a1;
  *(v9 + 1) = a2;

  *(v9 + 2) = sub_1C3D1FBA4();
  v15 = v22;
  *(v9 + 4) = sub_1C3D1FAD4();
  sub_1C3D1FD14();
  sub_1C3D1F1E4();
  sub_1C3C7F454(v9, v13);
  v16 = &v13[*(v11 + 36)];
  v17 = v29;
  *(v16 + 4) = v28;
  *(v16 + 5) = v17;
  *(v16 + 6) = v30;
  v18 = v25;
  *v16 = v24;
  *(v16 + 1) = v18;
  v19 = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = v19;
  sub_1C3C7F4B8(v9);
  sub_1C3C7F514(v13, v23);
}

void __swiftcall HKAddDataHeaderWrapperView.init(title:bundledIconImage:)(HKAddDataHeaderWrapperView *__return_ptr retstr, Swift::String title, UIImage bundledIconImage)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C3D200C4();

  [v4 initWithTitle:v5 bundledIconImage:bundledIconImage.super.isa];
}

id HKAddDataHeaderWrapperView.init(title:bundledIconImage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C3C7F090();

  return v4;
}

uint64_t sub_1C3C7E6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = type metadata accessor for HKAddDataHeaderView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C7F2A4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v9 + 4) = 0;
  v14 = *(v7 + 32);
  *&v9[v14] = swift_getKeyPath();
  sub_1C3C7F3FC();
  swift_storeEnumTagMultiPayload();
  *v9 = a1;
  *(v9 + 1) = a2;

  v15 = [a3 imageWithRenderingMode_];
  *(v9 + 2) = sub_1C3D1FB74();
  v9[24] = 1;
  sub_1C3D1FD14();
  sub_1C3D1F1E4();
  sub_1C3C7F454(v9, v13);
  v16 = &v13[*(v11 + 36)];
  v17 = v28;
  *(v16 + 4) = v27;
  *(v16 + 5) = v17;
  *(v16 + 6) = v29;
  v18 = v24;
  *v16 = v23;
  *(v16 + 1) = v18;
  v19 = v26;
  *(v16 + 2) = v25;
  *(v16 + 3) = v19;
  sub_1C3C7F4B8(v9);
  sub_1C3C7F514(v13, v22);
}

id HKAddDataHeaderWrapperView.init(displayType:)(void *a1)
{
  v3 = [a1 presentation];
  v4 = [v3 dataTypeIconImageName];

  if (!v4)
  {
    v5 = [a1 displayCategory];
    v4 = [v5 systemImageName];
  }

  sub_1C3D20104();

  v6 = [a1 localization];
  v7 = [v6 displayName];

  if (!v7)
  {
    sub_1C3D20104();
    v7 = sub_1C3D200C4();
  }

  v8 = sub_1C3D200C4();

  v9 = [a1 color];
  v10 = [v1 initWithTitle:v7 iconSystemImageName:v8 iconImageColor:v9];

  return v10;
}

void __swiftcall HKAddDataHeaderWrapperView.init(reuseIdentifier:)(HKAddDataHeaderWrapperView *__return_ptr retstr, Swift::String_optional reuseIdentifier)
{
  if (reuseIdentifier.value._object)
  {
    v2 = sub_1C3D200C4();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReuseIdentifier_];
}

id sub_1C3C7EF38()
{
  v1 = sub_1C3D200C4();
  v7.receiver = v0;
  v7.super_class = HKAddDataHeaderWrapperView;
  v2 = objc_msgSendSuper2(&v7, sel_initWithReuseIdentifier_, v1);

  sub_1C3C7F224();
  v6[3] = v3;
  v6[4] = sub_1C3C7F3B4(&qword_1EC086900, sub_1C3C7F224);
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_1C3C7F2A4();
  sub_1C3C7F304();
  v4 = v2;
  sub_1C3D1F614();

  MEMORY[0x1C692FAF0](v6);

  return v4;
}

id sub_1C3C7F090()
{
  v1 = sub_1C3D200C4();
  v7.receiver = v0;
  v7.super_class = HKAddDataHeaderWrapperView;
  v2 = objc_msgSendSuper2(&v7, sel_initWithReuseIdentifier_, v1);

  sub_1C3C7F224();
  v6[3] = v3;
  v6[4] = sub_1C3C7F3B4(&qword_1EC086900, sub_1C3C7F224);
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_1C3C7F2A4();
  sub_1C3C7F304();
  v4 = v2;
  sub_1C3D1F614();

  MEMORY[0x1C692FAF0](v6);

  return v4;
}

unint64_t type metadata accessor for HKAddDataHeaderWrapperView()
{
  result = qword_1EC0868D8;
  if (!qword_1EC0868D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0868D8);
  }

  return result;
}

void sub_1C3C7F224()
{
  if (!qword_1EC0868E0)
  {
    sub_1C3C7F2A4();
    sub_1C3C7F304();
    v0 = sub_1C3D1F624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0868E0);
    }
  }
}

void sub_1C3C7F2A4()
{
  if (!qword_1EC0868E8)
  {
    type metadata accessor for HKAddDataHeaderView();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0868E8);
    }
  }
}

unint64_t sub_1C3C7F304()
{
  result = qword_1EC0868F0;
  if (!qword_1EC0868F0)
  {
    sub_1C3C7F2A4();
    sub_1C3C7F3B4(&qword_1EC0868F8, type metadata accessor for HKAddDataHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0868F0);
  }

  return result;
}

uint64_t sub_1C3C7F3B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C7F3FC()
{
  if (!qword_1EC086908)
  {
    sub_1C3D1F034();
    v0 = sub_1C3D1F044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086908);
    }
  }
}

uint64_t sub_1C3C7F454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKAddDataHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C7F4B8(uint64_t a1)
{
  v2 = type metadata accessor for HKAddDataHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C7F514(uint64_t a1, uint64_t a2)
{
  sub_1C3C7F2A4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void NSAttributedString.init(leadingSymbolName:leadingImage:symbolColor:symbolScale:symbolContentSizeCategory:symbolAlignment:text:spacer:textColor:font:numericFont:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, void *a13, void *a14)
{
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = a13;
  v19 = *(a7 + 8);
  if (a2)
  {
    v91 = *(a7 + 8);
    v22 = objc_opt_self();
    v23 = a6;
    v24 = a13;
    v25 = v17;
    v26 = v16;
    v27 = [v22 configurationWithFont:v24 scale:a5];
    v28 = a6;
    if (a6)
    {
      v29 = objc_opt_self();
      v30 = v23;
      v31 = [v29 traitCollectionWithPreferredContentSizeCategory_];
      v32 = [v27 configurationWithTraitCollection_];

      v27 = v32;
    }

    v33 = v27;
    v34 = sub_1C3D200C4();
    v35 = [objc_opt_self() systemImageNamed:v34 withConfiguration:v33];

    v18 = a13;
    v14 = a8;
    v19 = v91;
    if (!v35)
    {
      __break(1u);
      return;
    }

    v36 = [v35 imageWithRenderingMode_];

    v15 = v28;
    v17 = a3;
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3)
  {
    v42 = a6;
    v43 = v17;
    v44 = a13;
    v36 = v43;
    v45 = v16;
    if (!v16)
    {
LABEL_7:
      v38 = [objc_opt_self() textAttachmentWithImage_];
      v39 = v38;
      if (v19 != 255)
      {
        v40 = [v38 image];
        if (v40)
        {
          v41 = v40;
          if (v19)
          {
            if (v19 == 1)
            {
              [v18 capHeight];
              [v41 size];
            }

            else
            {
              [v18 descender];
            }
          }

          [v41 size];
          [v41 size];
          [v39 setBounds_];
        }
      }

      v48 = [objc_opt_self() attributedStringWithAttachment_];
      v47 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
      v49 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      if (!v15)
      {
        sub_1C3C58AD8();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C3D5F370;
        v51 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
        *(inited + 40) = a13;
        v52 = a13;
        v53 = v51;
        v16 = a4;
        sub_1C3C7556C(inited);
        swift_setDeallocating();
        v15 = 0;
        v18 = a13;
        sub_1C3C7C948(inited + 32);
        type metadata accessor for Key(0);
        sub_1C3C54C30();
        v54 = sub_1C3D1FEE4();
        v47 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;

        [v49 addAttributes:v54 range:{0, objc_msgSend(v49, sel_length)}];
      }

      v55 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

      v46 = v55;
      v56 = v55;
      goto LABEL_21;
    }

LABEL_6:
    v37 = [v36 imageWithTintColor_];

    v36 = v37;
    goto LABEL_7;
  }

  v46 = 0;
  v47 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
LABEL_21:
  MEMORY[0x1C692F800](v14, a9);

  if (a14)
  {
    sub_1C3C58AD8();
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_1C3D5F370;
    v58 = *MEMORY[0x1E69DB648];
    *(v57 + 32) = *MEMORY[0x1E69DB648];
    v59 = v46;
    v60 = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(v57 + 64) = v60;
    *(v57 + 40) = a13;
    v61 = v58;
    v62 = a13;
    v63 = v61;
    v64 = a14;
    sub_1C3C7556C(v57);
    swift_setDeallocating();
    sub_1C3C7C948(v57 + 32);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1C3D5F370;
    *(v65 + 32) = v63;
    *(v65 + 64) = v60;
    v46 = v59;
    *(v65 + 40) = v64;
    v66 = v64;
    sub_1C3C7556C(v65);
    swift_setDeallocating();
    v47 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
    sub_1C3C7C948(v65 + 32);
    v67 = _sSo18NSAttributedStringC8HealthUIE16numericFormatted6string0E10Attributes05otherH0ABSS_SDySo0aB3KeyaypGAJtFZ_0(a10, a11);

    v68 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  }

  else
  {
    v69 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v70 = sub_1C3D200C4();

    v71 = [v69 initWithString_];

    sub_1C3C58AD8();
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1C3D5F370;
    v73 = *MEMORY[0x1E69DB648];
    *(v72 + 32) = *MEMORY[0x1E69DB648];
    *(v72 + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(v72 + 40) = a13;
    v74 = v71;
    v75 = a13;
    v67 = v74;
    v76 = v73;
    sub_1C3C7556C(v72);
    swift_setDeallocating();
    sub_1C3C7C948(v72 + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v66 = sub_1C3D1FEE4();

    v77 = [v67 length];

    [v67 addAttributes:v66 range:{0, v77}];
    v68 = v67;
  }

  v78 = MEMORY[0x1E69DB650];
  if (a12)
  {
    sub_1C3C58AD8();
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_1C3D5F370;
    v80 = *v78;
    *(v79 + 32) = *v78;
    *(v79 + 64) = sub_1C3C27CB4(0, &qword_1EC080DD0);
    *(v79 + 40) = a12;
    v81 = a12;
    v82 = v80;
    sub_1C3C7556C(v79);
    swift_setDeallocating();
    sub_1C3C7C948(v79 + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v83 = sub_1C3D1FEE4();

    [v68 addAttributes:v83 range:{0, objc_msgSend(v68, sel_length)}];
  }

  v84 = a4;
  v85 = a14;
  if (v46)
  {
    [v68 insertAttributedString:v46 atIndex:0];
    if (a4)
    {
      sub_1C3C58AD8();
      v86 = swift_initStackObject();
      *(v86 + 16) = xmmword_1C3D5F370;
      v87 = *v78;
      *(v86 + 32) = *v78;
      *(v86 + 64) = sub_1C3C27CB4(0, &qword_1EC080DD0);
      *(v86 + 40) = a4;
      v88 = a4;
      v89 = v87;
      sub_1C3C7556C(v86);
      swift_setDeallocating();
      sub_1C3C7C948(v86 + 32);
      type metadata accessor for Key(0);
      sub_1C3C54C30();
      v90 = sub_1C3D1FEE4();
      v85 = a14;
      v84 = a4;

      [v68 addAttributes:v90 range:{0, objc_msgSend(v46, sel_length)}];
    }
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) v47[350]];
}

void NSAttributedString.init(symbolName:image:symbolColor:symbolContentSizeCategory:symbolAlignment:font:scale:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a3;
  v12 = *(a6 + 8);
  if (!a2)
  {
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v26 = v22;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = objc_opt_self();

  v42 = a7;
  v15 = [v14 configurationWithFont:a7 scale:a8];
  if (a5)
  {
    v16 = objc_opt_self();
    v17 = a4;
    v18 = v11;
    v19 = a5;
    v20 = [v16 traitCollectionWithPreferredContentSizeCategory_];
    v21 = [v15 configurationWithTraitCollection_];

    v11 = v18;
    a4 = v17;
    v15 = v21;
  }

  v23 = v15;
  v24 = sub_1C3D200C4();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  if (!v25)
  {
    __break(1u);
    return;
  }

  swift_bridgeObjectRelease_n();
  v26 = [v25 imageWithRenderingMode_];

  a7 = v42;
  if (a4)
  {
LABEL_8:
    v27 = [v26 imageWithTintColor_];

    v26 = v27;
  }

LABEL_9:
  v28 = [objc_opt_self() textAttachmentWithImage_];
  v29 = v28;
  if (v12 != 255)
  {
    v30 = [v28 image];
    if (v30)
    {
      v31 = v30;
      if (v12)
      {
        if (v12 == 1)
        {
          [a7 capHeight];
          [v31 size];
        }

        else
        {
          [a7 descender];
        }
      }

      [v31 size];
      [v31 size];
      [v29 setBounds_];
    }
  }

  v32 = [objc_opt_self() attributedStringWithAttachment_];
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  if (!a5)
  {
    sub_1C3C58AD8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C3D5F370;
    v35 = a7;
    v36 = a4;
    v37 = v11;
    v38 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(inited + 40) = v35;
    v39 = v38;
    v40 = v35;
    sub_1C3C7556C(inited);
    swift_setDeallocating();
    sub_1C3C7C948(inited + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v41 = sub_1C3D1FEE4();
    v11 = v37;
    a4 = v36;
    a7 = v35;
    a5 = 0;

    [v33 addAttributes:v41 range:{0, objc_msgSend(v33, sel_length)}];
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];
}

void NSAttributedString.init(leadingSymbolName:leadingImage:paletteColors:symbolScale:symbolContentSizeCategory:symbolAlignment:text:spacer:textColor:font:numericFont:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, void *a13, void *a14)
{
  v14 = a8;
  v15 = a6;
  v17 = a3;
  v18 = *(a7 + 8);
  v19 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
  if (a2)
  {
    v88 = *(a7 + 8);
    v21 = objc_opt_self();
    v22 = v15;
    v23 = v17;
    v24 = v22;
    v25 = a13;
    v26 = v23;
    v27 = v23;
    v15 = a6;
    v28 = [v21 configurationWithFont:v25 scale:a5];
    if (a6)
    {
      v29 = objc_opt_self();
      v30 = v24;
      v31 = [v29 traitCollectionWithPreferredContentSizeCategory_];
      v32 = [v28 configurationWithTraitCollection_];

      v28 = v32;
    }

    v33 = v28;
    v34 = sub_1C3D200C4();
    v35 = [objc_opt_self() systemImageNamed:v34 withConfiguration:v33];

    v19 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
    v18 = v88;
    if (!v35)
    {
      __break(1u);
      goto LABEL_31;
    }

    v17 = v26;

    v36 = [v35 imageWithRenderingMode_];

    v14 = a8;
    if (!a4)
    {
LABEL_11:
      v44 = [objc_opt_self() textAttachmentWithImage_];
      v45 = v44;
      if (v18 != 255)
      {
        v46 = [v44 image];
        if (v46)
        {
          v47 = v46;
          if (v18)
          {
            if (v18 == 1)
            {
              [a13 capHeight];
              [v47 size];
            }

            else
            {
              [a13 descender];
            }
          }

          [v47 size];
          [v47 size];
          [v45 setBounds_];
        }
      }

      v49 = [objc_opt_self() attributedStringWithAttachment_];
      v50 = [objc_allocWithZone(MEMORY[0x1E696AD40]) v19[350]];

      v48 = a13;
      if (!v15)
      {
        sub_1C3C58AD8();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C3D5F370;
        v52 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
        *(inited + 40) = a13;
        v53 = a13;
        v54 = v52;
        v15 = a6;
        sub_1C3C7556C(inited);
        swift_setDeallocating();
        sub_1C3C7C948(inited + 32);
        type metadata accessor for Key(0);
        sub_1C3C54C30();
        v55 = sub_1C3D1FEE4();

        [v50 addAttributes:v55 range:{0, objc_msgSend(v50, sel_length)}];
      }

      v56 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) v19[350]];

      v89 = v56;
      v57 = v56;
      goto LABEL_22;
    }

LABEL_9:
    sub_1C3C27CB4(0, &qword_1EC080DD0);

    v40 = sub_1C3D202A4();
    v41 = [objc_opt_self() configurationWithPaletteColors_];

    v42 = [v36 imageByApplyingSymbolConfiguration_];
    if (v42)
    {
      v43 = v42;

      swift_bridgeObjectRelease_n();
      v36 = v43;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (a3)
  {
    v37 = a6;
    v38 = v17;
    v39 = a13;
    v36 = v38;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v89 = 0;
  v48 = a13;
LABEL_22:
  v58 = a12;
  MEMORY[0x1C692F800](v14, a9);

  if (a14)
  {
    sub_1C3C58AD8();
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_1C3D5F370;
    v60 = *MEMORY[0x1E69DB648];
    *(v59 + 32) = *MEMORY[0x1E69DB648];
    v61 = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(v59 + 64) = v61;
    *(v59 + 40) = v48;
    v62 = v60;
    v63 = v48;
    v64 = v17;
    v65 = v62;
    v66 = v63;
    v67 = v65;
    v68 = a14;
    sub_1C3C7556C(v59);
    swift_setDeallocating();
    sub_1C3C7C948(v59 + 32);
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_1C3D5F370;
    *(v69 + 32) = v67;
    v17 = v64;
    *(v69 + 64) = v61;
    v58 = a12;
    *(v69 + 40) = v68;
    v70 = v68;
    sub_1C3C7556C(v69);
    swift_setDeallocating();
    v19 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
    sub_1C3C7C948(v69 + 32);
    v71 = _sSo18NSAttributedStringC8HealthUIE16numericFormatted6string0E10Attributes05otherH0ABSS_SDySo0aB3KeyaypGAJtFZ_0(a10, a11);

    v72 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  }

  else
  {
    v73 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v74 = sub_1C3D200C4();

    v75 = [v73 initWithString_];

    sub_1C3C58AD8();
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_1C3D5F370;
    v77 = *MEMORY[0x1E69DB648];
    *(v76 + 32) = *MEMORY[0x1E69DB648];
    *(v76 + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(v76 + 40) = v48;
    v78 = v75;
    v79 = v48;
    v71 = v78;
    v80 = v77;
    sub_1C3C7556C(v76);
    swift_setDeallocating();
    sub_1C3C7C948(v76 + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v70 = sub_1C3D1FEE4();

    v81 = [v71 length];

    [v71 addAttributes:v70 range:{0, v81}];
    v72 = v71;
  }

  if (v58)
  {
    sub_1C3C58AD8();
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_1C3D5F370;
    v83 = *MEMORY[0x1E69DB650];
    *(v82 + 32) = *MEMORY[0x1E69DB650];
    *(v82 + 64) = sub_1C3C27CB4(0, &qword_1EC080DD0);
    *(v82 + 40) = v58;
    v84 = v58;
    v85 = v83;
    sub_1C3C7556C(v82);
    swift_setDeallocating();
    sub_1C3C7C948(v82 + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v86 = sub_1C3D1FEE4();

    [v72 addAttributes:v86 range:{0, objc_msgSend(v72, sel_length)}];
  }

  if (v89)
  {
    [v72 insertAttributedString:v89 atIndex:0];
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) v19[350]];
}