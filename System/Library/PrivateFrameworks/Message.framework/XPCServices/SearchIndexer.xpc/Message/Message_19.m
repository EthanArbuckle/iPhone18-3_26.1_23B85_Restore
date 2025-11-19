void *sub_10013C7A8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF740, &qword_1004D2BA8);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_10013C918()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF760, &qword_1004D2BC8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_10013CA80()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF788, &qword_1004D2CA8);
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
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
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

void *sub_10013CBFC()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v26 - v5;
  sub_10000C9C0(&qword_1005CF780, &qword_1004D2CA0);
  v7 = *v0;
  v8 = sub_1004A6A54();
  v9 = v8;
  if (*(v7 + 16))
  {
    v27 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    v16 = *(v7 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v7 + 56);
        v25 = *(v3 + 72) * v22;
        v28 = *(*(v7 + 48) + 16 * v22);
        sub_10000E268(v24 + v25, v6, &unk_1005D91B0, &unk_1004CF400);
        *(*(v9 + 48) + v23) = v28;
        sub_100020950(v6, *(v9 + 56) + v25);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

double sub_10013CE40@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100063B5C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10013A2D4();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9);

    v14 = *(v12 + 56) + 72 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_10013D1E8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10013CF00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100067004(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10013B74C();
    v9 = v16;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 24 * v6);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_10013D8C8(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_10013CFB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100063E70(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10013BB00();
    v9 = v13;
  }

  v10 = *(*(v9 + 48) + 8 * v6);

  v11 = *(*(v9 + 56) + 8 * v6);
  sub_10013DA7C(v6, v9);
  *v2 = v9;
  return v11;
}

Swift::Int sub_10013D044(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      result = sub_1004A6F14();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v16 >= v17 + 1))
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10013D1E8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v11 | (v11 << 32));
      result = sub_1004A6F14();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + v9);
        if (16 * v3 != v9 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        result = v16 + 72 * v3;
        v17 = (v16 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v17 + 72 || v3 != v6)
        {
          result = memmove(result, v17, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10013D3A0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v11);
      result = sub_1004A6F14();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10013D538(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1004A6E94();
      sub_100014CEC(v12, v13);
      sub_1004A4424();
      v14 = sub_1004A6F14();
      result = sub_100014D40(v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10013D710(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v11 | (v11 << 32));
      result = sub_1004A6F14();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + v9);
        if (16 * v3 != v9 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        result = v16 + 96 * v3;
        v17 = (v16 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v17 + 96 || v3 != v6)
        {
          result = memmove(result, v17, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10013D8C8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v11);
      result = sub_1004A6F14();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (24 * v3 < (24 * v6) || v17 >= v18 + 24 || v3 != v6)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10013DA7C(int64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v66 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_1004A6564();
    v72 = a2;
    v77 = v7;
    v71 = a2 + 64;
    v70 = v10;
    v69 = v13;
    v73 = v17;
    v76 = (v18 + 1) & v17;
    do
    {
      v19 = *(a2 + 40);
      v20 = *(*(a2 + 48) + 8 * v16);
      sub_1004A6E94();
      v21 = *(*v20 + 96);
      swift_beginAccess();
      v79 = v20;
      sub_100142970(v20 + v21, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100142970(v13, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v74 = v16;
          v75 = a1;
          v78 = *v10;
          v24 = *(v10 + 2);
          v25 = *(v10 + 2);
          sub_1004A6EB4(3uLL);
          sub_1004A6EB4(v24 | (v24 << 32));
          v26 = 1 << *(v25 + 32);
          if (v26 < 64)
          {
            v27 = ~(-1 << v26);
          }

          else
          {
            v27 = -1;
          }

          v28 = v27 & *(v25 + 64);
          v29 = (v26 + 63) >> 6;

          v30 = 0;
          v31 = 0;
          if (v28)
          {
            while (1)
            {
              v32 = v31;
LABEL_17:
              v33 = __clz(__rbit64(v28)) | (v32 << 6);
              v34 = *(*(v25 + 48) + 4 * v33);
              v35 = (*(v25 + 56) + 16 * v33);
              v36 = *v35;
              v37 = v35[1];
              sub_100014CEC(*v35, v37);
              if (v37 >> 60 == 15)
              {
                break;
              }

              v28 &= v28 - 1;
              v82 = v87;
              v83 = v88;
              v84 = v89;
              v81 = v86;
              v80 = v85;
              sub_1004A6EE4(v34);
              sub_1004A4424();
              sub_100014D40(v36, v37);
              v30 ^= sub_1004A6F14();
              v31 = v32;
              if (!v28)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_14:
              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_49;
              }

              if (v32 >= v29)
              {
                break;
              }

              v28 = *(v25 + 64 + 8 * v32);
              ++v31;
              if (v28)
              {
                goto LABEL_17;
              }
            }
          }

          sub_1004A6EB4(v30);

          a2 = v72;
          a1 = v75;
          v14 = v71;
          v10 = v70;
          v13 = v69;
          v16 = v74;
          v17 = v73;
        }

        else
        {
          sub_1004A6EB4(1uLL);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v74 = v16;
          v75 = a1;
          v68 = *v10;
          v38 = *(v10 + 2);
          v39 = *(v10 + 2);
          sub_1004A6EB4(2uLL);
          sub_1004A6EB4(v38 | (v38 << 32));
          v40 = v39 + 64;
          v41 = 1 << *(v39 + 32);
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & *(v39 + 64);
          v44 = (v41 + 63) >> 6;

          v78 = v39;

          v45 = 0;
          for (i = 0; v43; v45 ^= sub_1004A6F14())
          {
            v47 = i;
LABEL_29:
            v48 = __clz(__rbit64(v43));
            v43 &= v43 - 1;
            v49 = v48 | (v47 << 6);
            v50 = *(*(v78 + 48) + 4 * v49);
            v51 = (*(v78 + 56) + 24 * v49);
            v52 = *v51;
            v53 = *(v51 + 1);
            v54 = *(v51 + 2);
            sub_100014CEC(v53, v54);
            v82 = v87;
            v83 = v88;
            v84 = v89;
            v81 = v86;
            v80 = v85;
            sub_1004A6EE4(v50);
            sub_1004A6EB4(v52);
            sub_100014CEC(v53, v54);
            sub_1004A4424();
            sub_100014D40(v53, v54);
            sub_100014D40(v53, v54);
          }

          while (1)
          {
            v47 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v47 >= v44)
            {

              sub_1004A6EB4(v45);

              a2 = v72;
              a1 = v75;
              v14 = v71;
              v10 = v70;
              v13 = v69;
              v16 = v74;
              goto LABEL_34;
            }

            v43 = *(v40 + 8 * v47);
            ++i;
            if (v43)
            {
              i = v47;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v23 = v67;
        sub_100020950(v10, v67);
        sub_1004A6EB4(0);

        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
LABEL_34:
        v17 = v73;
      }

      sub_1001429D8(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v55 = sub_1004A6F14();

      v56 = v55 & v17;
      if (a1 >= v76)
      {
        if (v56 < v76)
        {
          goto LABEL_4;
        }
      }

      else if (v56 >= v76)
      {
        goto LABEL_40;
      }

      if (a1 >= v56)
      {
LABEL_40:
        v57 = *(a2 + 48);
        v58 = (v57 + 8 * a1);
        v59 = (v57 + 8 * v16);
        if (a1 != v16 || v58 >= v59 + 1)
        {
          *v58 = *v59;
        }

        v60 = *(a2 + 56);
        v61 = (v60 + 8 * a1);
        v62 = (v60 + 8 * v16);
        if (a1 != v16 || v61 >= v62 + 1)
        {
          *v61 = *v62;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v63 = *(a2 + 16);
  v64 = __OFSUB__(v63, 1);
  v65 = v63 - 1;
  if (v64)
  {
    goto LABEL_50;
  }

  *(a2 + 16) = v65;
  ++*(a2 + 36);
}

uint64_t sub_10013E204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v29 = v2;
  v11 = *v2;

  v12 = sub_1004A65D4();
  v13 = swift_unknownObjectRetain();
  v14 = sub_100089C5C(v13, v12);
  v32 = v14;
  v15 = *(v14 + 40);
  sub_1004A6E94();
  v16 = *(*a2 + 96);
  swift_beginAccess();
  v30 = a2;
  v17 = v16;
  sub_100142970(a2 + v16, v10, type metadata accessor for MoveAndCopyMessages.CommandID);

  sub_1000EB38C(v31);
  sub_1001429D8(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1004A6F14();
  v19 = -1 << *(v14 + 32);
  v20 = v18 & ~v19;
  if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = *(*(v14 + 48) + 8 * v20);
      v23 = *(*v22 + 96);
      swift_beginAccess();
      sub_100142970(v22 + v23, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100142970(v30 + v17, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v24 = sub_1000F2FCC(v10, v7);
      sub_1001429D8(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1001429D8(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v24)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v25 = *(*(v14 + 48) + 8 * v20);
  sub_10013EBF8(v20);
  sub_100142970(v30 + v17, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v26 = *(*v25 + 96);
  swift_beginAccess();
  sub_100142970(v25 + v26, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v27 = sub_1000F2FCC(v10, v7);
  sub_1001429D8(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1001429D8(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v27)
  {
    *v29 = v32;
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10013E544(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1004A6E94();
        sub_1004A6EB4(v13 | (v13 << 32));
        v14 = sub_1004A6F14() & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v11);
          if (16 * v2 != v11 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10013E6FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1004A6E94();
        sub_1004A6EB4(v12);
        v13 = sub_1004A6F14() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10013E8A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1004A6E94();
        sub_1004A6EB4(v12);
        v13 = sub_1004A6F14() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10013EA50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 4 * v6);
        sub_1004A6E94();
        sub_1004A6EE4(v12);
        v13 = sub_1004A6F14() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 4 * v2);
          v16 = (v14 + 4 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10013EBF8(unint64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v64 - v5;
  v75 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v64 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_1004A6564();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v70 = v12;
      v69 = v13;
      v68 = v8;
      v67 = v11;
      v74 = v16;
      v73 = (v17 + 1) & v16;
      do
      {
        v18 = *(v12 + 40);
        v19 = *(*(v12 + 48) + 8 * v15);
        sub_1004A6E94();
        v20 = *(*v19 + 96);
        swift_beginAccess();
        sub_100142970(v19 + v20, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_100142970(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v77 = v19;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v71 = v15;
            v72 = a1;
            v76 = *v8;
            v23 = *(v8 + 2);
            v24 = *(v8 + 2);
            sub_1004A6EB4(3uLL);
            sub_1004A6EB4(v23 | (v23 << 32));
            v25 = 1 << *(v24 + 32);
            if (v25 < 64)
            {
              v26 = ~(-1 << v25);
            }

            else
            {
              v26 = -1;
            }

            v27 = v26 & *(v24 + 64);
            v28 = (v25 + 63) >> 6;

            v29 = 0;
            v30 = 0;
            if (v27)
            {
              while (1)
              {
                v31 = v30;
LABEL_18:
                v32 = __clz(__rbit64(v27)) | (v31 << 6);
                v33 = *(*(v24 + 48) + 4 * v32);
                v34 = (*(v24 + 56) + 16 * v32);
                v35 = *v34;
                v36 = v34[1];
                sub_100014CEC(*v34, v36);
                if (v36 >> 60 == 15)
                {
                  break;
                }

                v27 &= v27 - 1;
                v80 = v85;
                v81 = v86;
                v82 = v87;
                v79 = v84;
                v78 = v83;
                sub_1004A6EE4(v33);
                sub_1004A4424();
                sub_100014D40(v35, v36);
                v29 ^= sub_1004A6F14();
                v30 = v31;
                if (!v27)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_15:
                v31 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  goto LABEL_48;
                }

                if (v31 >= v28)
                {
                  break;
                }

                v27 = *(v24 + 64 + 8 * v31);
                ++v30;
                if (v27)
                {
                  goto LABEL_18;
                }
              }
            }

            sub_1004A6EB4(v29);

            a1 = v72;
            v12 = v70;
            v13 = v69;
            v8 = v68;
            v11 = v67;
            v15 = v71;
          }

          else
          {
            sub_1004A6EB4(1uLL);
          }
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v71 = v15;
            v72 = a1;
            v66 = *v8;
            v37 = *(v8 + 2);
            v38 = *(v8 + 2);
            sub_1004A6EB4(2uLL);
            sub_1004A6EB4(v37 | (v37 << 32));
            v39 = v38 + 64;
            v40 = 1 << *(v38 + 32);
            if (v40 < 64)
            {
              v41 = ~(-1 << v40);
            }

            else
            {
              v41 = -1;
            }

            v42 = v41 & *(v38 + 64);
            v43 = (v40 + 63) >> 6;

            v76 = v38;

            v44 = 0;
            for (i = 0; v42; v44 = sub_1004A6F14() ^ v46)
            {
              v46 = v44;
              v47 = i;
LABEL_30:
              v48 = __clz(__rbit64(v42));
              v42 &= v42 - 1;
              v49 = v48 | (v47 << 6);
              v50 = *(*(v76 + 48) + 4 * v49);
              v51 = (*(v76 + 56) + 24 * v49);
              v52 = *v51;
              v54 = *(v51 + 1);
              v53 = *(v51 + 2);
              sub_100014CEC(v54, v53);
              v80 = v85;
              v81 = v86;
              v82 = v87;
              v79 = v84;
              v78 = v83;
              sub_1004A6EE4(v50);
              sub_1004A6EB4(v52);
              sub_100014CEC(v54, v53);
              sub_1004A4424();
              sub_100014D40(v54, v53);
              sub_100014D40(v54, v53);
            }

            while (1)
            {
              v47 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v47 >= v43)
              {

                sub_1004A6EB4(v44);

                a1 = v72;
                v12 = v70;
                v13 = v69;
                v8 = v68;
                v11 = v67;
                v15 = v71;
                goto LABEL_35;
              }

              v42 = *(v39 + 8 * v47);
              ++i;
              if (v42)
              {
                v46 = v44;
                i = v47;
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            return;
          }

          v22 = v65;
          sub_100020950(v8, v65);
          sub_1004A6EB4(0);

          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
        }

LABEL_35:
        sub_1001429D8(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        v55 = sub_1004A6F14();

        v56 = v74;
        v57 = v55 & v74;
        if (a1 >= v73)
        {
          if (v57 < v73)
          {
            goto LABEL_5;
          }
        }

        else if (v57 >= v73)
        {
          goto LABEL_40;
        }

        if (a1 >= v57)
        {
LABEL_40:
          v58 = *(v12 + 48);
          v59 = (v58 + 8 * a1);
          v60 = (v58 + 8 * v15);
          if (a1 != v15 || v59 >= v60 + 1)
          {
            *v59 = *v60;
            a1 = v15;
          }
        }

LABEL_5:
        v15 = (v15 + 1) & v56;
      }

      while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v61 = *(v12 + 16);
  v62 = __OFSUB__(v61, 1);
  v63 = v61 - 1;
  if (v62)
  {
    goto LABEL_49;
  }

  *(v12 + 16) = v63;
  ++*(v12 + 36);
}

void sub_10013F388(int64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v70[0] = v70 - v5;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = v70 - v12;
  v13 = *v1;
  v14 = *v1 + 56;
  v15 = -1 << *(*v1 + 32);
  v16 = (a1 + 1) & ~v15;
  v17 = v16 >> 6;
  v18 = 1 << v16;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v19 = (a1 + 1) & ~v15;
    v20 = ~v15;

    v21 = sub_1004A6564();
    if ((*(v14 + 8 * v17) & v18) != 0)
    {
      v22 = *(v7 + 72);
      v74 = v13;
      v73 = v14;
      v72 = v6;
      v71 = v10;
      v23 = v75;
      v24 = v19;
      v78 = v20;
      v77 = (v21 + 1) & v20;
      v79 = v22;
      do
      {
        v25 = *(v13 + 48);
        v81 = v22 * v24;
        sub_100142970(v25 + v22 * v24, v23, type metadata accessor for MoveAndCopyMessages.CommandID);
        v26 = *(v13 + 40);
        sub_1004A6E94();
        sub_100142970(v23, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v82 = v24;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            sub_1004A6EB4(1uLL);
            goto LABEL_38;
          }

          v76 = a1;
          v80 = *v10;
          v29 = *(v10 + 2);
          v30 = *(v10 + 2);
          sub_1004A6EB4(3uLL);
          sub_1004A6EB4(v29 | (v29 << 32));
          v31 = 1 << *(v30 + 32);
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          else
          {
            v32 = -1;
          }

          v33 = v32 & *(v30 + 64);
          v34 = (v31 + 63) >> 6;

          v35 = 0;
          v36 = 0;
          if (v33)
          {
            while (1)
            {
              v37 = v36;
LABEL_19:
              v38 = __clz(__rbit64(v33)) | (v37 << 6);
              v39 = *(*(v30 + 48) + 4 * v38);
              v40 = (*(v30 + 56) + 16 * v38);
              v42 = *v40;
              v41 = v40[1];
              sub_100014CEC(*v40, v41);
              if (v41 >> 60 == 15)
              {
                break;
              }

              v33 &= v33 - 1;
              v85 = v90;
              v86 = v91;
              v87 = v92;
              v83 = v88;
              v84 = v89;
              sub_1004A6EE4(v39);
              sub_1004A4424();
              sub_100014D40(v42, v41);
              v35 ^= sub_1004A6F14();
              v36 = v37;
              if (!v33)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_16:
              v37 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_52;
              }

              if (v37 >= v34)
              {
                break;
              }

              v33 = *(v30 + 64 + 8 * v37);
              ++v36;
              if (v33)
              {
                goto LABEL_19;
              }
            }
          }

          sub_1004A6EB4(v35);

          v60 = &v94;
LABEL_36:
          v61 = *(v60 - 32);

          v13 = v74;
          a1 = v76;
          v14 = v73;
          v10 = v71;
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v76 = a1;
            v70[1] = *v10;
            v43 = *(v10 + 2);
            v44 = *(v10 + 2);
            sub_1004A6EB4(2uLL);
            sub_1004A6EB4(v43 | (v43 << 32));
            v45 = v44 + 64;
            v46 = 1 << *(v44 + 32);
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v48 = v47 & *(v44 + 64);
            v49 = (v46 + 63) >> 6;
            v80 = v44;

            v50 = 0;
            for (i = 0; v48; v50 ^= sub_1004A6F14())
            {
              v52 = i;
LABEL_31:
              v53 = __clz(__rbit64(v48));
              v48 &= v48 - 1;
              v54 = v53 | (v52 << 6);
              v55 = *(*(v80 + 48) + 4 * v54);
              v56 = (*(v80 + 56) + 24 * v54);
              v57 = *v56;
              v59 = *(v56 + 1);
              v58 = *(v56 + 2);
              sub_100014CEC(v59, v58);
              v85 = v90;
              v86 = v91;
              v87 = v92;
              v83 = v88;
              v84 = v89;
              sub_1004A6EE4(v55);
              sub_1004A6EB4(v57);
              sub_100014CEC(v59, v58);
              sub_1004A4424();
              sub_100014D40(v59, v58);
              sub_100014D40(v59, v58);
            }

            while (1)
            {
              v52 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v52 >= v49)
              {

                sub_1004A6EB4(v50);

                v60 = &v93;
                goto LABEL_36;
              }

              v48 = *(v45 + 8 * v52);
              ++i;
              if (v48)
              {
                i = v52;
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }

          v28 = v70[0];
          sub_100020950(v10, v70[0]);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        }

        v23 = v75;
LABEL_38:
        v62 = sub_1004A6F14();
        sub_1001429D8(v23, type metadata accessor for MoveAndCopyMessages.CommandID);
        v63 = v78;
        v64 = v62 & v78;
        if (a1 >= v77)
        {
          v65 = v82;
          v22 = v79;
          if (v64 < v77)
          {
            goto LABEL_6;
          }

LABEL_42:
          if (a1 < v64)
          {
            goto LABEL_6;
          }

          goto LABEL_43;
        }

        v65 = v82;
        v22 = v79;
        if (v64 < v77)
        {
          goto LABEL_42;
        }

LABEL_43:
        v66 = v22 * a1;
        if (v22 * a1 < v81 || *(v13 + 48) + v22 * a1 >= (*(v13 + 48) + v81 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v65;
          if (v66 == v81)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v22 = v79;
        a1 = v65;
LABEL_6:
        v24 = (v65 + 1) & v63;
      }

      while (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v67 = *(v13 + 16);
  v68 = __OFSUB__(v67, 1);
  v69 = v67 - 1;
  if (v68)
  {
    goto LABEL_53;
  }

  *(v13 + 16) = v69;
  ++*(v13 + 36);
}

unint64_t sub_10013FAC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1004A6E94();
        sub_100014CEC(v13, v14);
        sub_1004A4424();
        v15 = sub_1004A6F14();
        sub_100014D40(v13, v14);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10013FC9C(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  v5 = sub_1004A6F14();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 15;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 15;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10008EA98();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v7);
  sub_10013E8A8(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_10013FDD4(Swift::UInt32 a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v17 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a2();
      v15 = v17;
    }

    v11 = *(*(v15 + 48) + 4 * v9);
    sub_10013EA50(v9);
    v12 = 0;
    *v2 = v17;
  }

  else
  {
LABEL_5:
    v11 = 0;
    v12 = 1;
  }

  return v11 | (v12 << 32);
}

uint64_t sub_10013FF08(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v1;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v1;

    v13 = sub_1004A6614();

    if (v13)
    {
      v14 = sub_10013E204(v11, a1);

      return v14;
    }

    return 0;
  }

  v31 = v1;
  v16 = *(v10 + 40);
  sub_1004A6E94();
  v17 = *(*a1 + 96);
  swift_beginAccess();
  v32 = v17;
  sub_100142970(a1 + v17, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000EB38C(v34);
  sub_1001429D8(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1004A6F14();
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v10 + 48) + 8 * v20);
    v23 = *(*v22 + 96);
    swift_beginAccess();
    sub_100142970(v22 + v23, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100142970(a1 + v32, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    v24 = sub_1000F2FCC(v9, v6);
    sub_1001429D8(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1001429D8(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v31;
  v26 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v25;
  v33 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10008EFFC();
    v28 = v33;
  }

  v29 = *(*(v28 + 48) + 8 * v20);
  sub_10013EBF8(v20);
  result = v29;
  *v31 = v33;
  return result;
}

uint64_t sub_1001401F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1000EB38C(v27);
  v12 = sub_1004A6F14();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_100142970(*(v10 + 48) + v16 * v14, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v17 = sub_1000F2FCC(v9, a1);
      sub_1001429D8(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    *&v27[0] = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10008F160();
      v22 = *&v27[0];
    }

    a2 = v26;
    sub_100142A38(*(v22 + 48) + v16 * v14, v26, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_10013F388(v14);
    v18 = 0;
    *v19 = *&v27[0];
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

int64_t sub_100140424@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1004A6E94();
  sub_1004A4424();
  result = sub_1004A6F14();
  v9 = (v6 + 56);
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_140:
    *a3 = xmmword_1004D25F0;
    return result;
  }

  v12 = ~v10;
  v13 = a2 >> 62;
  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2 == 0xC000000000000000;
  }

  v15 = !v14;
  v84 = v15;
  v16 = __OFSUB__(HIDWORD(a1), a1);
  v81 = v16;
  v80 = v6;
  v77 = (a1 >> 32) - a1;
  v78 = a1 >> 32;
  v82 = (v6 + 56);
  v83 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a2 >> 62 != 3;
      if (((v23 | v84) & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_36:
      v24 = 0;
      if (v13 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_146;
      }

      if (v13 > 1)
      {
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_145;
      }

      v24 = v24;
      if (v13 > 1)
      {
LABEL_37:
        if (v13 != 2)
        {
          if (!v24)
          {
            goto LABEL_142;
          }

          goto LABEL_13;
        }

        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
          goto LABEL_144;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 > 1)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    v28 = BYTE6(a2);
    if (v13)
    {
      v28 = HIDWORD(a1) - a1;
      if (v81)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_142;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      v9 = v19;
      if (v19 > v19 >> 32)
      {
        goto LABEL_147;
      }

      sub_100014CEC(v19, v18);
      v40 = sub_1004A40D4();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1004A4104();
        if (__OFSUB__(v19, v42))
        {
          goto LABEL_149;
        }

        v39 = (v19 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      sub_1004A40F4();
      v9 = v82;
      if (v13 == 2)
      {
        v65 = *(a1 + 16);
        v75 = *(a1 + 24);
        v49 = sub_1004A40D4();
        if (v49)
        {
          v66 = sub_1004A4104();
          if (__OFSUB__(v65, v66))
          {
            goto LABEL_165;
          }

          v49 += v65 - v66;
        }

        v27 = __OFSUB__(v75, v65);
        v67 = v75 - v65;
        if (v27)
        {
          goto LABEL_160;
        }

        result = sub_1004A40F4();
        if (result >= v67)
        {
          v51 = v67;
        }

        else
        {
          v51 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v9 = v82;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      else
      {
        if (v13 != 1)
        {
          *__s1 = a1;
          *&__s1[8] = a2;
          __s1[10] = BYTE2(a2);
          __s1[11] = BYTE3(a2);
          __s1[12] = BYTE4(a2);
          __s1[13] = BYTE5(a2);
          if (!v39)
          {
            goto LABEL_172;
          }

          goto LABEL_136;
        }

        if (v78 < a1)
        {
          goto LABEL_159;
        }

        v49 = sub_1004A40D4();
        if (v49)
        {
          v52 = sub_1004A4104();
          if (__OFSUB__(a1, v52))
          {
            goto LABEL_166;
          }

          v49 += a1 - v52;
        }

        result = sub_1004A40F4();
        v51 = (a1 >> 32) - a1;
        if (result < v77)
        {
          v51 = result;
        }

        if (!v39)
        {
          goto LABEL_182;
        }

        if (!v49)
        {
          goto LABEL_181;
        }
      }

      goto LABEL_133;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v78 < a1)
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
      }

      sub_100014CEC(v19, v18);
      v31 = sub_1004A40D4();
      if (!v31)
      {
        goto LABEL_173;
      }

      v32 = v31;
      v33 = sub_1004A4104();
      if (__OFSUB__(a1, v33))
      {
        goto LABEL_156;
      }

      v34 = (a1 - v33 + v32);
      v35 = sub_1004A40F4();
      if (!v34)
      {
        goto LABEL_171;
      }

      goto LABEL_108;
    }

    v54 = *(a1 + 16);
    v53 = *(a1 + 24);
    sub_100014CEC(v19, v18);
    v45 = sub_1004A40D4();
    if (v45)
    {
      v55 = sub_1004A4104();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_162;
      }

      v45 += v54 - v55;
    }

    v27 = __OFSUB__(v53, v54);
    v47 = v53 - v54;
    if (v27)
    {
      goto LABEL_154;
    }

    v48 = sub_1004A40F4();
    v6 = v80;
    if (!v45)
    {
      goto LABEL_169;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v56 = v47;
    }

    else
    {
      v56 = v48;
    }

    v57 = memcmp(__s1, v45, v56);
    result = sub_100014D40(v19, v18);
    v9 = v82;
LABEL_138:
    v12 = v83;
    if (!v57)
    {
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_140;
    }
  }

  if (v20 == 2)
  {
    v9 = *(v19 + 16);
    sub_100014CEC(v19, v18);
    v36 = sub_1004A40D4();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1004A4104();
      if (__OFSUB__(v9, v38))
      {
        goto LABEL_148;
      }

      v39 = v9 + v37 - v38;
    }

    else
    {
      v39 = 0;
    }

    result = sub_1004A40F4();
    v9 = v82;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v78 < a1)
        {
          goto LABEL_153;
        }

        v49 = sub_1004A40D4();
        if (v49)
        {
          v50 = sub_1004A4104();
          if (__OFSUB__(a1, v50))
          {
            goto LABEL_164;
          }

          v49 += a1 - v50;
        }

        result = sub_1004A40F4();
        v51 = (a1 >> 32) - a1;
        if (result < v77)
        {
          v51 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        if (!v49)
        {
          goto LABEL_175;
        }

        goto LABEL_133;
      }

      *__s1 = a1;
      *&__s1[8] = a2;
      __s1[10] = BYTE2(a2);
      __s1[11] = BYTE3(a2);
      __s1[12] = BYTE4(a2);
      __s1[13] = BYTE5(a2);
      if (!v39)
      {
        goto LABEL_174;
      }

LABEL_136:
      v70 = __s1;
      v69 = v39;
      v68 = BYTE6(a2);
LABEL_137:
      v57 = memcmp(v69, v70, v68);
      result = sub_100014D40(v19, v18);
      v6 = v80;
      goto LABEL_138;
    }

    v62 = *(a1 + 16);
    v74 = *(a1 + 24);
    v49 = sub_1004A40D4();
    if (v49)
    {
      v63 = sub_1004A4104();
      if (__OFSUB__(v62, v63))
      {
        goto LABEL_163;
      }

      v49 += v62 - v63;
    }

    v27 = __OFSUB__(v74, v62);
    v64 = v74 - v62;
    if (v27)
    {
      goto LABEL_158;
    }

    result = sub_1004A40F4();
    if (result >= v64)
    {
      v51 = v64;
    }

    else
    {
      v51 = result;
    }

    if (!v39)
    {
      goto LABEL_178;
    }

    v9 = v82;
    if (!v49)
    {
      goto LABEL_177;
    }

LABEL_133:
    if (v39 != v49)
    {
      v68 = v51;
      v69 = v39;
      v70 = v49;
      goto LABEL_137;
    }

    sub_100014D40(v19, v18);
LABEL_142:
    v9 = v76;
    v71 = *v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *v76;
    *__s1 = *v76;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_143:
      *a3 = *(*(v73 + 48) + 16 * v11);
      result = sub_10013FAC8(v11);
      *v9 = *__s1;
      return result;
    }

LABEL_150:
    sub_10008EEA0();
    v73 = *__s1;
    goto LABEL_143;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a1;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    v12 = v83;
    if (!result)
    {
      goto LABEL_142;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v44 = *(a1 + 16);
    v43 = *(a1 + 24);
    sub_100014CEC(v19, v18);
    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = sub_1004A4104();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_161;
      }

      v45 += v44 - v46;
    }

    v27 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v27)
    {
      goto LABEL_155;
    }

    v48 = sub_1004A40F4();
    v6 = v80;
    if (!v45)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v78 < a1)
  {
    goto LABEL_152;
  }

  sub_100014CEC(v19, v18);
  v58 = sub_1004A40D4();
  if (v58)
  {
    v59 = v58;
    v60 = sub_1004A4104();
    if (__OFSUB__(a1, v60))
    {
      goto LABEL_157;
    }

    v34 = (a1 - v60 + v59);
    v35 = sub_1004A40F4();
    if (!v34)
    {
      goto LABEL_168;
    }

LABEL_108:
    if (v35 >= v77)
    {
      v61 = (a1 >> 32) - a1;
    }

    else
    {
      v61 = v35;
    }

    v57 = memcmp(__s1, v34, v61);
    result = sub_100014D40(v19, v18);
    goto LABEL_138;
  }

  sub_1004A40F4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  result = sub_1004A40F4();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100140D50(uint64_t a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    if (v11[1] == a2)
    {
      v12 = *v11;
      v13 = *(*v11 + 16);
      if (v13 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v13)
  {
    v14 = v12 == a1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = (v12 + 32);
    v16 = (a1 + 32);
    while (v13)
    {
      if (*v15 != *v16)
      {
        goto LABEL_3;
      }

      ++v15;
      ++v16;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v17 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v2;
  v24 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_10008E93C();
    v19 = v24;
  }

  v20 = (*(v19 + 48) + 16 * v9);
  v21 = *v20;
  v22 = v20[1];
  sub_10013E6FC(v9);
  *v2 = v24;
  return v21;
}

uint64_t sub_100140EC0(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1004A6E94();
  v8 = a2 | (a2 << 32);
  sub_1004A6EB4(v8);
  v9 = sub_1004A6F14();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v6 + 48) + 16 * v11);
    if ((v13[2] | (v13[2] << 32)) == v8)
    {
      v14 = *v13;
      v15 = *(*v13 + 16);
      if (v15 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (v15)
  {
    v16 = v14 == a1;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = (v14 + 32);
    v18 = (a1 + 32);
    while (v15)
    {
      if (*v17 != *v18)
      {
        goto LABEL_3;
      }

      ++v17;
      ++v18;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v26 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_10008E7D8();
    v21 = v26;
  }

  v22 = *(v21 + 48) + 16 * v11;
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_10013E544(v11);
  *v3 = v26;
  return v23;
}

uint64_t sub_100141044(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100141590((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100085288((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_100141590((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100141590(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_100141784(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141810(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100141824(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE78, &unk_1004E2A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100141B98(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v28 = sub_1004A65F4();
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    if (sub_1004A65B4() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v28 = sub_1004A65C4();
    sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
    swift_dynamicCast();
    v15 = *&v29[0];
    v16 = *(a4 + 40);
    sub_1004A6E94();
    a2 = *(*v15 + 96);
    swift_beginAccess();
    v27 = v15;
    v17 = a2;
    sub_100142970(v15 + a2, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EB38C(v29);
    sub_1001429D8(v14, type metadata accessor for MoveAndCopyMessages.CommandID);
    v18 = sub_1004A6F14();
    v19 = a4 + 56;
    v20 = -1 << *(a4 + 32);
    a1 = v18 & ~v20;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v21 = ~v20;
      do
      {
        a2 = a4;
        v22 = *(*(a4 + 48) + 8 * a1);
        v23 = *(*v22 + 96);
        swift_beginAccess();
        sub_100142970(v22 + v23, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_100142970(v27 + v17, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        v24 = sub_1000F2FCC(v14, v11);
        sub_1001429D8(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1001429D8(v14, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v24)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v21;
        a4 = a2;
      }

      while (((*(v19 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:

    a4 = a2;
  }

  v25 = *(*(a4 + 48) + 8 * a1);
}

uint64_t sub_100141F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v6 = a1 + 1;
    v4 = a1[1];
    v5 = v6[1];
    *a2 = result;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100141F40(uint64_t a1, uint64_t a2)
{
  if ((static WindowOfInterestSizes.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a1 + 25) ? 256 : 0;
  v5 = v4 | *(a1 + 24);
  v6 = *(a1 + 26) ? 0x10000 : 0;
  v7 = *(a2 + 25) ? 256 : 0;
  v8 = v7 | *(a2 + 24);
  v9 = *(a2 + 26) ? 0x10000 : 0;
  if (!static Environment.__derived_struct_equals(_:_:)(v5 | v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), v8 | v9, *(a2 + 32), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  if ((sub_100083010(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if ((_s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 120);
  v28[2] = *(a1 + 104);
  v28[3] = v10;
  v11 = *(a1 + 152);
  v28[4] = *(a1 + 136);
  v28[5] = v11;
  v12 = *(a1 + 88);
  v28[0] = *(a1 + 72);
  v28[1] = v12;
  v13 = *(a2 + 120);
  v27[2] = *(a2 + 104);
  v27[3] = v13;
  v14 = *(a2 + 152);
  v27[4] = *(a2 + 136);
  v27[5] = v14;
  v15 = *(a2 + 88);
  v27[0] = *(a2 + 72);
  v27[1] = v15;
  if ((sub_10010D2D0(v28, v27) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 184);
  v17 = *(a1 + 216);
  v25[2] = *(a1 + 200);
  v26[0] = v17;
  *(v26 + 12) = *(a1 + 228);
  v25[0] = *(a1 + 168);
  v25[1] = v16;
  v18 = *(a2 + 184);
  v19 = *(a2 + 216);
  v23[2] = *(a2 + 200);
  v24[0] = v19;
  *(v24 + 12) = *(a2 + 228);
  v23[0] = *(a2 + 168);
  v23[1] = v18;
  if ((sub_1000C9B9C(v25, v23) & 1) == 0 || (sub_1000FFC98(*(a1 + 248), *(a2 + 248)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a1 + 256);
  v21 = *(a2 + 256);

  return sub_100083124(v20, v21);
}

uint64_t sub_100142140()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100142178(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 16 * result;
    result = *v4;
    v5 = *(v4 + 8);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10014223C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1000A784C(v1[4], v1[5], a1);
}

uint64_t sub_1001422B0()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[11] >= 3uLL)
  {
  }

  v3 = v0[14];

  v4 = v0[19];

  v5 = v0[20];

  v6 = v0[21];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100142378()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1000197E0(v0 + 5);
  v3 = v0[11];

  if (v0[13])
  {

    v4 = v0[15];
  }

  v5 = v0[17];

  v6 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001423EC()
{
  sub_1000197E0(v0 + 3);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10014244C()
{
  sub_1000197E0(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001424B4()
{
  sub_1000197E0(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100142514()
{
  v1 = v0[2];

  sub_1000197E0(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10014261C()
{
  sub_1000197E0(v0 + 3);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100142674(uint64_t a1, void *a2)
{
  memcpy(v10, a2, sizeof(v10));
  v11 = v10[32];
  v3 = BYTE1(v10[3]);
  v4 = v10[4];
  v5 = v10[7];

  v6 = sub_100166D28();
  v7 = v6;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
  }

  else
  {
    sub_100166E18(v6);
    sub_100013AD0(&off_100598658, v5);
    sub_100166E18(v7);
    v8 = sub_100013CF4(v5);

    if (v8 & 1) == 0 && (v3)
    {
      sub_100166E18(v7);
    }
  }

  result = sub_100025F40(&v11, &qword_1005D15A8, &qword_1004D6988);
  a2[32] = _swiftEmptySetSingleton;
  return result;
}

uint64_t sub_100142774(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100142788(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001427A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001427EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014286C()
{
  result = qword_1005D1610;
  if (!qword_1005D1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1610);
  }

  return result;
}

uint64_t sub_100142970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001429D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100142A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100142AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_100092448(0, v1, 0);
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v27;
  v5 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v29 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_29;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v12 = *(*(v5 + 56) + 32 * result);
    switch(v12)
    {
      case 2:
        v13 = 0xE800000000000000;
        v14 = 0x6369646F69726570;
        break;
      case 4:
        v14 = 0x74696E4972657375;
        v13 = 0xED00006465746169;
        break;
      case 3:
        v13 = 0xE400000000000000;
        v14 = 1752397168;
        break;
      default:
        v13 = 0xE800000000000000;
        v14 = 0x6C6C69466B636162;
        break;
    }

    v15 = *(*(v5 + 48) + 4 * result);
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    if (v17 >= v16 >> 1)
    {
      v26 = result;
      sub_100092448((v16 > 1), v17 + 1, 1);
      v5 = a1;
      v8 = v29;
      v6 = v27;
      result = v26;
    }

    _swiftEmptyArrayStorage[2] = v17 + 1;
    v18 = &_swiftEmptyArrayStorage[3 * v17];
    *(v18 + 8) = v15;
    v18[5] = v14;
    v18[6] = v13;
    v9 = 1 << *(v5 + 32);
    if (result >= v9)
    {
      goto LABEL_31;
    }

    v2 = a1 + 64;
    v19 = *(a1 + 64 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_32;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_33;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_100020944(result, v29, 0);
          v5 = a1;
          v8 = v29;
          v6 = v27;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v29, 0);
      v5 = a1;
      v8 = v29;
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_100142D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100092428(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v28 = v1;
  v29 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v13 = *v11;
    v12 = v11[1];
    v31 = *(*(a1 + 56) + 2 * v6);

    v15 = OpaqueMailboxID.description.getter(v14);
    v17 = v16;

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_100092428((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[3 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v20[6] = v31;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (a1 + 72 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100020944(v6, v29, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v29, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100142FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_100092468(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_100092468((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *(&_swiftEmptyArrayStorage[4] + v14) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_100020944(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100143218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_100092468(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_100092468((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *(&_swiftEmptyArrayStorage[4] + v14) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_100020944(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100143434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100092508(0, v1, 0);
  v3 = v2 + 56;
  v4 = -1 << *(v2 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v24 = v2 + 64;
  v25 = v1;
  v26 = v2 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v2 + 36);
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = v2;
    v12 = *v10;
    v13 = v10[1];
    result = sub_100014CEC(*v10, v13);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_100092508((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v2 = v11;
    v3 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100020944(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10014365C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1000924E8(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v8 = *(v2 + 36);
  v28 = v2 + 72;
  v29 = v1;
  v30 = v8;
  v31 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v2 + 36))
    {
      goto LABEL_26;
    }

    v32 = v7;
    v11 = *(v2 + 56);
    v12 = (*(v2 + 48) + 16 * v6);
    v13 = v2;
    v14 = *v12;
    v15 = v12[1];
    v16 = (v11 + 24 * v6);
    v34 = *v16;
    if (*(v16 + 16))
    {
      v17 = -1;
    }

    else
    {
      v17 = *(v16 + 1);
    }

    v33 = v17;
    result = sub_100014CEC(v14, v15);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1000924E8((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[4 * v19];
    v20[4] = v14;
    v20[5] = v15;
    *(v20 + 12) = v34;
    v20[7] = v33;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_27;
    }

    v2 = v13;
    v3 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    v8 = v30;
    if (v30 != *(v2 + 36))
    {
      goto LABEL_29;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100020944(v6, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v30, 0);
    }

LABEL_4:
    v7 = v32 + 1;
    v6 = v9;
    if (v32 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001438D8(uint64_t *a1, uint64_t a2)
{
  v18[2] = a2;
  v4 = sub_10000C9C0(&qword_1005D1A60, &qword_1004D7CC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v18 - v6);
  result = sub_10000E268(a1, v18 - v6, &qword_1005D1A58, &qword_1004D7CC0);
  v9 = *a1;
  v10 = v7[1];
  if (v9 == v10)
  {
LABEL_14:
    *(v7 + *(v4 + 36)) = v9;
    return sub_100025F40(v7, &qword_1005D1A60, &qword_1004D7CC8);
  }

  else
  {
    v18[0] = v4;
    v18[1] = v2;
    while (v9 < v10 && v9 >= *v7)
    {
      v11 = *(sub_10000C9C0(&qword_1005D1A58, &qword_1004D7CC0) + 40);
      v12 = sub_10000C9C0(&qword_1005CEBE8, &qword_1004D16E0);
      MessageIdentifierSet.RangeView.subscript.getter(v12, v19);
      v13 = v19[0];
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v14 = sub_1004A7044();
      result = sub_1004A7074();
      if (v9 < v14 || v9 >= result)
      {
        goto LABEL_16;
      }

      v19[0] = v13;
      v16 = sub_1000796C4();
      result = Range<>.init<A>(_:)(v19, &type metadata for SequenceNumber, v16);
      v19[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v17 = sub_1004A70B4();
        sub_1004A7064();
        result = v17(v19, 0);
      }

      if (v10 == ++v9)
      {
        v9 = v10;
        v4 = v18[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_100143B14(uint64_t *a1, uint64_t a2)
{
  v18[2] = a2;
  v4 = sub_10000C9C0(&qword_1005D18D0, &unk_1004D7040);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v18 - v6);
  result = sub_10000E268(a1, v18 - v6, &qword_1005D18C8, &unk_1004D7030);
  v9 = *a1;
  v10 = v7[1];
  if (v9 == v10)
  {
LABEL_14:
    *(v7 + *(v4 + 36)) = v9;
    return sub_100025F40(v7, &qword_1005D18D0, &unk_1004D7040);
  }

  else
  {
    v18[0] = v4;
    v18[1] = v2;
    while (v9 < v10 && v9 >= *v7)
    {
      v11 = *(sub_10000C9C0(&qword_1005D18C8, &unk_1004D7030) + 40);
      v12 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
      MessageIdentifierSet.RangeView.subscript.getter(v12, v19);
      v13 = v19[0];
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v14 = sub_1004A7044();
      result = sub_1004A7074();
      if (v9 < v14 || v9 >= result)
      {
        goto LABEL_16;
      }

      v19[0] = v13;
      v16 = sub_100016948();
      result = Range<>.init<A>(_:)(v19, &type metadata for UID, v16);
      v19[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v17 = sub_1004A70B4();
        sub_1004A7064();
        result = v17(v19, 0);
      }

      if (v10 == ++v9)
      {
        v9 = v10;
        v4 = v18[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_100143D50()
{
  v0 = sub_10000C9C0(&qword_1005D18C8, &unk_1004D7030);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = (&v50 - v5);
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v50 - v20;
  __chkstk_darwin(v19);
  v23 = &v50 - v22;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v24 = sub_1004A70C4();
  result = 0;
  if ((v24 & 1) == 0)
  {
    v53 = v13;
    v54 = v0;
    v51 = v4;
    v52 = v11;
    v55 = v7;
    MessageIdentifierSet.ranges.getter(v23);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v26 = sub_1004A7044();
    v27 = sub_1004A7074();
    v28 = sub_1004A7044();
    result = sub_1004A7074();
    if (v26 < v28 || result < v26)
    {
      __break(1u);
    }

    else
    {
      v30 = sub_1004A7044();
      v31 = sub_1004A7074();
      result = sub_100025F40(v23, &qword_1005CD7A0, &unk_1004CF590);
      if (v27 >= v30 && v31 >= v27)
      {
        if (!__OFSUB__(v27, v26))
        {
          if (v27 - v26 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter(v55);
          }

          MessageIdentifierSet.ranges.getter(v21);
          v32 = sub_1004A7044();
          v33 = sub_1004A7074();
          v34 = sub_10014A250(v32, 45, v33);
          if (v35)
          {
            v34 = sub_1004A7074();
          }

          v36 = v34;
          v37 = v53;
          result = sub_1004A7044();
          if (v36 >= result)
          {
            v38 = result;
            v39 = sub_1004A7044();
            result = sub_1004A7074();
            if (result >= v39)
            {
              if (v38 >= v39)
              {
                if (result >= v36)
                {
                  sub_100025FDC(v21, v6 + *(v54 + 40), &qword_1005CD7A0, &unk_1004CF590);
                  *v6 = v38;
                  v6[1] = v36;
                  sub_100016D2C();
                  sub_1004A7114();
                  sub_100143B14(v6, v37);
                  sub_100025F40(v6, &qword_1005D18C8, &unk_1004D7030);
                  MessageIdentifierSet.ranges.getter(v18);
                  v40 = sub_1004A7074();
                  v41 = sub_1004A7044();
                  v42 = sub_10014A250(v40, -45, v41);
                  if (v43)
                  {
                    v44 = sub_1004A7044();
                  }

                  else
                  {
                    v44 = v42;
                  }

                  result = sub_1004A7074();
                  if (result >= v44)
                  {
                    v45 = result;
                    v46 = sub_1004A7044();
                    result = sub_1004A7074();
                    if (result >= v46)
                    {
                      if (v44 >= v46)
                      {
                        if (result >= v45)
                        {
                          v47 = v51;
                          sub_100025FDC(v18, v51 + *(v54 + 40), &qword_1005CD7A0, &unk_1004CF590);
                          *v47 = v44;
                          v47[1] = v45;
                          v48 = v52;
                          sub_1004A7114();
                          sub_100143B14(v47, v48);
                          sub_100025F40(v47, &qword_1005D18C8, &unk_1004D7030);
                          v57 = 0;
                          v58 = 0xE000000000000000;
                          sub_1004A6934();
                          v59._countAndFlagsBits = 3026478;
                          v59._object = 0xE300000000000000;
                          sub_1004A5994(v59);
                          sub_1004A6934();
                          v60._countAndFlagsBits = 10272;
                          v60._object = 0xE200000000000000;
                          sub_1004A5994(v60);
                          v56 = MessageIdentifierSet.count.getter();
                          v61._countAndFlagsBits = sub_1004A6CE4();
                          sub_1004A5994(v61);

                          v62._countAndFlagsBits = 41;
                          v62._object = 0xE100000000000000;
                          sub_1004A5994(v62);
                          v49 = v57;
                          sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
                          sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
                          return v49;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10014433C()
{
  v0 = sub_10000C9C0(&qword_1005D1A58, &qword_1004D7CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v50 - v5);
  v7 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_10000C9C0(&qword_1005CEBE8, &qword_1004D16E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v24 = sub_1004A70C4();
  result = 0;
  if ((v24 & 1) == 0)
  {
    v53 = v13;
    v54 = v0;
    v51 = v3;
    v52 = v10;
    v55 = v7;
    MessageIdentifierSet.ranges.getter(v23);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v26 = sub_1004A7044();
    v27 = sub_1004A7074();
    v28 = sub_1004A7044();
    result = sub_1004A7074();
    if (v26 < v28 || result < v26)
    {
      __break(1u);
    }

    else
    {
      v30 = sub_1004A7044();
      v31 = sub_1004A7074();
      result = sub_100025F40(v23, &qword_1005CEBE8, &qword_1004D16E0);
      if (v27 >= v30 && v31 >= v27)
      {
        if (!__OFSUB__(v27, v26))
        {
          if (v27 - v26 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter(v55);
          }

          MessageIdentifierSet.ranges.getter(v20);
          v32 = sub_1004A7044();
          v33 = sub_1004A7074();
          v34 = sub_10014A250(v32, 45, v33);
          if (v35)
          {
            v34 = sub_1004A7074();
          }

          v36 = v34;
          v37 = v53;
          result = sub_1004A7044();
          if (v36 >= result)
          {
            v38 = result;
            v39 = sub_1004A7044();
            result = sub_1004A7074();
            if (result >= v39)
            {
              if (v38 >= v39)
              {
                if (result >= v36)
                {
                  sub_100025FDC(v20, v6 + *(v54 + 40), &qword_1005CEBE8, &qword_1004D16E0);
                  *v6 = v38;
                  v6[1] = v36;
                  sub_100016D2C();
                  sub_1004A7114();
                  sub_1001438D8(v6, v37);
                  sub_100025F40(v6, &qword_1005D1A58, &qword_1004D7CC0);
                  MessageIdentifierSet.ranges.getter(v17);
                  v40 = sub_1004A7074();
                  v41 = sub_1004A7044();
                  v42 = sub_10014A250(v40, -45, v41);
                  if (v43)
                  {
                    v44 = sub_1004A7044();
                  }

                  else
                  {
                    v44 = v42;
                  }

                  result = sub_1004A7074();
                  if (result >= v44)
                  {
                    v45 = result;
                    v46 = sub_1004A7044();
                    result = sub_1004A7074();
                    if (result >= v46)
                    {
                      if (v44 >= v46)
                      {
                        if (result >= v45)
                        {
                          v47 = v51;
                          sub_100025FDC(v17, v51 + *(v54 + 40), &qword_1005CEBE8, &qword_1004D16E0);
                          *v47 = v44;
                          v47[1] = v45;
                          v48 = v52;
                          sub_1004A7114();
                          sub_1001438D8(v47, v48);
                          sub_100025F40(v47, &qword_1005D1A58, &qword_1004D7CC0);
                          v57 = 0;
                          v58 = 0xE000000000000000;
                          sub_1004A6934();
                          v59._countAndFlagsBits = 3026478;
                          v59._object = 0xE300000000000000;
                          sub_1004A5994(v59);
                          sub_1004A6934();
                          v60._countAndFlagsBits = 10272;
                          v60._object = 0xE200000000000000;
                          sub_1004A5994(v60);
                          v56 = MessageIdentifierSet.count.getter();
                          v61._countAndFlagsBits = sub_1004A6CE4();
                          sub_1004A5994(v61);

                          v62._countAndFlagsBits = 41;
                          v62._object = 0xE100000000000000;
                          sub_1004A5994(v62);
                          v49 = v57;
                          sub_100025F40(v48, &qword_1005CDA58, &qword_1004CF7C0);
                          sub_100025F40(v37, &qword_1005CDA58, &qword_1004CF7C0);
                          return v49;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

double StateWithTasks.stateCaptureValue(logName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StateWithTasks();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014FA6C(v3, v10, type metadata accessor for StateWithTasks);

  sub_10014BF24(v10, a1, a2, v17);
  v11 = v17[7];
  *(a3 + 96) = v17[6];
  *(a3 + 112) = v11;
  *(a3 + 128) = v17[8];
  *(a3 + 144) = v18;
  v12 = v17[3];
  *(a3 + 32) = v17[2];
  *(a3 + 48) = v12;
  v13 = v17[5];
  *(a3 + 64) = v17[4];
  *(a3 + 80) = v13;
  result = *v17;
  v15 = v17[1];
  *a3 = v17[0];
  *(a3 + 16) = v15;
  return result;
}

unint64_t StateWithTasks.localDeselectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v5[2] = *(v1 + 200);
  v6[0] = v3;
  *(v6 + 12) = *(v1 + 228);
  v5[0] = *(v1 + 168);
  v5[1] = v2;
  return sub_100144A6C(v5, a1);
}

unint64_t sub_100144A6C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = *(v3 + 16);
    v7 = *a1;

    v9 = 0;
    v10 = v3 + 32;
    v11 = _swiftEmptyArrayStorage;
LABEL_3:
    v12 = (v10 + 176 * v9);
    while (1)
    {
      if (v6 == v9)
      {
        sub_100020D58(v3, v4, v5, 1);
        a2[3] = sub_10000C9C0(&qword_1005D17D0, &qword_1004D6D10);
        result = sub_100152568(&qword_1005D17C8, &qword_1005D17D0, &qword_1004D6D10, sub_10014EBB8);
        a2[4] = result;
        *a2 = v11;
        return result;
      }

      if (v9 >= v6)
      {
        break;
      }

      v13 = *v12;
      v14 = v12[2];
      v32[1] = v12[1];
      v32[2] = v14;
      v32[0] = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v32[5] = v12[5];
      v33 = v17;
      v32[3] = v15;
      v32[4] = v16;
      v18 = v12[7];
      v19 = v12[8];
      v20 = v12[10];
      v36 = v12[9];
      v37 = v20;
      v34 = v18;
      v35 = v19;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

      ++v9;
      v12 += 11;
      if (!v33)
      {
        v29 = v10;
        sub_10000E08C(v32, v30);
        sub_10014E150(v32, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100087D1C(0, *(v11 + 2) + 1, 1, v11);
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          v11 = sub_100087D1C((v22 > 1), v23 + 1, 1, v11);
        }

        *(v11 + 2) = v23 + 1;
        result = memcpy(&v11[392 * v23 + 32], __src, 0x188uLL);
        v9 = v21;
        v10 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_100020D10(*a1, v4, v5, 0);
    v24 = sub_10014CBB8(v3, v4, v5);
    v26 = v25;
    v28 = v27;
    a2[3] = &_s13CapturedStateV16UnknownMailboxesVN;
    result = sub_10014F8AC();
    a2[4] = result;
    *a2 = v24;
    a2[1] = v26;
    a2[2] = v28;
  }

  return result;
}

char *StateWithTasks.localSelectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v6[2] = *(v1 + 200);
  v7[0] = v4;
  *(v7 + 12) = *(v1 + 228);
  v6[0] = *(v1 + 168);
  v6[1] = v3;
  result = sub_10014E7C4(v6);
  *a1 = result;
  return result;
}

double StateWithTasks.remoteMailboxesCaptureValue()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v11[2] = *(v1 + 104);
  v11[3] = v3;
  v4 = *(v1 + 152);
  v11[4] = *(v1 + 136);
  v11[5] = v4;
  v5 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v5;
  sub_10014EAC0(v11, v8);
  sub_10014E934(v11, v8);
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_100144D70(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D17E8, &qword_1004D6FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-1] - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10014EF60();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_1004A6C44();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    sub_1004A6C44();
    v15 = *(v3 + 3);
    v16 = *(v3 + 5);
    v29 = *(v3 + 4);
    v30 = v16;
    v17 = *(v3 + 3);
    v28[0] = *(v3 + 2);
    v28[1] = v17;
    v18 = *(v3 + 5);
    v25 = v29;
    v26 = v18;
    v31 = v3[12];
    v27 = v3[12];
    v23 = v28[0];
    v24 = v15;
    v33 = 2;
    sub_10014EFB4(v28, v21);
    sub_10014F010();
    sub_1004A6C74();
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v21[0] = v23;
    v21[1] = v24;
    sub_10014F064(v21);
    LOBYTE(v20) = *(v3 + 104);
    v32 = 3;
    sub_10014F0B8();
    sub_1004A6C74();
    *&v20 = v3[14];
    v32 = 4;
    sub_10000C9C0(&qword_1005D1808, &qword_1004D6FF0);
    sub_100152568(&qword_1005D1810, &qword_1005D1808, &qword_1004D6FF0, sub_10014F10C);
    sub_1004A6C74();
    v20 = *(v3 + 15);
    v32 = 5;
    sub_10014F160();
    sub_1004A6C74();
    *&v20 = v3[17];
    v32 = 6;
    sub_10000C9C0(&qword_1005D1828, &qword_1004D6FF8);
    sub_10014F1B4();
    sub_1004A6C74();
    *&v20 = v3[18];
    v32 = 7;
    sub_10014F238();
    sub_1004A6C74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100145130()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0x736B736174;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D614E676F6CLL;
    v3 = 0x6D6E6F7269766E65;
    if (v1 != 2)
    {
      v3 = 0xD000000000000018;
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
}

uint64_t sub_100145240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100150A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100145274(uint64_t a1)
{
  v2 = sub_10014EF60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001452B0(uint64_t a1)
{
  v2 = sub_10014EF60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001452EC(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 18);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100144D70(a1);
}

uint64_t sub_100145348(uint64_t a1, unsigned int a2)
{

  v4 = sub_1004A5804();
  v5 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) == (*(v5 + 2) | (*(v5 + 2) << 32)))
  {
    v6 = sub_1000FFC98(a1, *v5);

    if (v6)
    {
      return v4;
    }
  }

  else
  {
  }

  if (sub_1004A5924() >= 3)
  {
    sub_1004A5964();
    sub_1004A6724(16);
    sub_1004A5AB4();
    v7 = sub_1004A5864();

    v9._countAndFlagsBits = 0x6E656C202CA680E2;
    v9._object = 0xAC0000003D687467;
    sub_1004A5994(v9);
    sub_1004A5924();
    v10._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v10);

    return v7;
  }

  return v4;
}

uint64_t sub_1001454DC(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1A98, &qword_1004D7CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001529F0();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1004A6C44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1004A6C44();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1004A6C44();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10014567C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005D1960, &unk_1004D7C58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100150D5C();
  sub_1004A6FA4();
  v16 = a2;
  v15 = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770);
  sub_1004A6C74();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_10000C9C0(&qword_1005D1970, &qword_1004D7C68);
    sub_100152568(&qword_1005D1978, &qword_1005D1970, &qword_1004D7C68, sub_100150E18);
    sub_1004A6C74();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100145888()
{
  v1 = 0x786F626C69616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1001458E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100150F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014590C(uint64_t a1)
{
  v2 = sub_1001529F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145948(uint64_t a1)
{
  v2 = sub_1001529F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145984(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1001454DC(a1);
}

uint64_t sub_1001459C0()
{
  if (*v0)
  {
    result = 0x6567617375;
  }

  else
  {
    result = 0x65786F626C69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1001459FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100145ADC(uint64_t a1)
{
  v2 = sub_100150D5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145B18(uint64_t a1)
{
  v2 = sub_100150D5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100145C1C(uint64_t a1)
{
  v2 = sub_100150CB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145C58(uint64_t a1)
{
  v2 = sub_100150CB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145C94(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D1940, &qword_1004D7C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_10002587C(a1, a1[3]);
  sub_100150CB4();
  sub_1004A6FA4();
  sub_1004A6BF4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100145DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_10000C9C0(&qword_1005D1950, &qword_1004D7C50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100150D08();
  sub_1004A6FA4();
  v15 = 0;
  sub_1004A6C94();
  if (!v4)
  {
    v14 = 1;
    sub_1004A6C44();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100145F60()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_100145F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10014605C(uint64_t a1)
{
  v2 = sub_100150D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146098(uint64_t a1)
{
  v2 = sub_100150D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001460F4(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D1A28, &qword_1004D7CA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10015273C();
  sub_1004A6FA4();
  v10[15] = 0;
  sub_1004A6BF4();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  sub_1004A6BF4();
  v10[13] = 2;
  sub_1004A6BF4();
  v10[12] = 3;
  sub_1004A6BF4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1001462B4()
{
  v1 = 0x7374726F70707573;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100146368(uint64_t a1)
{
  v2 = sub_10015273C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001463A4(uint64_t a1)
{
  v2 = sub_10015273C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001463FC(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1A38, &qword_1004D7CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152790();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_1004A6C44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_1004A6BE4();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_1004A6BE4();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_1004A6BE4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001465BC()
{
  v1 = 1701667182;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x556C616963657073;
  }

  if (*v0)
  {
    v1 = 0x6170655368746170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001511A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100146670(uint64_t a1)
{
  v2 = sub_100152790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001466AC(uint64_t a1)
{
  v2 = sub_100152790();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001466E8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1001463FC(a1);
}

uint64_t sub_100146724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1A48, &qword_1004D7CB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001527E4();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6C44();
  if (!v5)
  {
    v15 = 1;
    sub_1004A6C44();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001468B8(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1890, &qword_1004D7020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10014F3DC();
  sub_1004A6FA4();
  LODWORD(v14[0]) = *v3;
  v15 = 0;
  sub_10014F430();
  sub_1004A6C14();
  if (!v2)
  {
    *&v14[0] = *(v3 + 8);
    v15 = 1;
    sub_10000C9C0(&qword_1005D18A8, &qword_1004D7028);
    sub_100152568(&qword_1005D18B0, &qword_1005D18A8, &qword_1004D7028, sub_10014F484);
    sub_1004A6C14();
    v11 = *(v3 + 16);
    LOBYTE(v14[0]) = 2;
    sub_1004A6C54();
    v12 = *(v3 + 40);
    v14[0] = *(v3 + 24);
    v14[1] = v12;
    v15 = 3;
    sub_10014F4D8();
    sub_1004A6C14();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100146AF8()
{
  if (*v0)
  {
    result = 0x6F74617261706573;
  }

  else
  {
    result = 0x786966657270;
  }

  *v0;
  return result;
}

uint64_t sub_100146B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100146C14(uint64_t a1)
{
  v2 = sub_1001527E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146C50(uint64_t a1)
{
  v2 = sub_1001527E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100146CAC()
{
  v1 = 0x726576726573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015131C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100146D54(uint64_t a1)
{
  v2 = sub_10014F3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146D90(uint64_t a1)
{
  v2 = sub_10014F3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100146DCC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1001468B8(a1);
}

uint64_t sub_100146E10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_10000C9C0(&qword_1005D1A68, &qword_1004D7CD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152838();
  sub_1004A6FA4();
  v17 = a2;
  v16 = 0;
  sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
  sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010);
  sub_1004A6C14();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_10000C9C0(&qword_1005D1A78, &qword_1004D7CD8);
    sub_10015288C();
    sub_1004A6C14();
    v17 = a4;
    v16 = 2;
    sub_10000C9C0(&qword_1005D1A88, &qword_1004D7CE0);
    sub_100152938();
    sub_1004A6C14();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100147048()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E69646E6570;
  }
}

uint64_t sub_1001470BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001470F0(uint64_t a1)
{
  v2 = sub_100152838();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014712C(uint64_t a1)
{
  v2 = sub_100152838();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147188(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D19B0, &qword_1004D7C80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001523C4();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = *(v3 + 4);
  v18[15] = 0;
  v18[12] = v12;
  sub_1004A6C24();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v18[11] = 1;
  sub_1004A6BE4();
  v16 = *(v3 + 3);
  v17 = *(v3 + 32);
  v18[10] = 2;
  sub_1004A6C34();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10014733C()
{
  v1 = 0x5764656863746566;
  if (*v0 != 1)
  {
    v1 = 0x4D74736568676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6156646975;
  }
}

uint64_t sub_1001473B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001515BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001473E0(uint64_t a1)
{
  v2 = sub_1001523C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014741C(uint64_t a1)
{
  v2 = sub_1001523C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147458(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_100147188(a1);
}

uint64_t sub_100147494(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1A18, &qword_1004D7CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10015268C();
  sub_1004A6FA4();
  v11 = *v3;
  LOBYTE(v18) = 0;
  sub_1004A6C94();
  if (!v2)
  {
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 1;
    sub_1001526E0(&v19, v17);
    sub_10015246C();
    sub_1004A6C74();
    sub_100014D40(v18, *(&v18 + 1));
    v12 = *(v3 + 3);
    v13 = *(v3 + 4);
    LOBYTE(v18) = 2;
    sub_1004A6C44();
    v14 = v3[10];
    LOBYTE(v18) = 3;
    sub_1004A6C94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100147678()
{
  v1 = 25705;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 7565169;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001476D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001516E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100147700(uint64_t a1)
{
  v2 = sub_10015268C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014773C(uint64_t a1)
{
  v2 = sub_10015268C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147778(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[12] = *(v1 + 28);
  return sub_100147494(a1);
}

uint64_t sub_1001477B4(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v16[1] = a5;
  v19 = a4;
  v9 = sub_10000C9C0(&qword_1005D1AE0, &qword_1004D7D00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152BE8();
  sub_1004A6FA4();
  v17 = a2;
  v18 = a3;
  v20 = 0;
  sub_100014CEC(a2, a3);
  sub_10015246C();
  sub_1004A6C74();
  sub_100014D40(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1004A6C94();
    LOBYTE(v17) = 2;
    sub_1004A6C64();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100147980()
{
  v1 = 6580597;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1001479C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001479E8(uint64_t a1)
{
  v2 = sub_100152BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100147A24(uint64_t a1)
{
  v2 = sub_100152BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147A84(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AF0, &qword_1004D7D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152C3C();
  sub_1004A6FA4();
  v11 = *v3;
  v24[15] = 0;
  sub_1004A6BF4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 1);
  v13 = *(v3 + 2);
  v24[14] = 1;
  sub_1004A6BE4();
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v24[13] = 2;
  sub_1004A6BE4();
  v16 = *(v3 + 10);
  v17 = v3[44];
  v24[12] = 3;
  v24[8] = v17;
  sub_1004A6C24();
  v18 = *(v3 + 6);
  v19 = *(v3 + 7);
  v24[7] = 4;
  sub_1004A6BE4();
  v20 = *(v3 + 16);
  v21 = v3[68];
  v24[6] = 5;
  v24[4] = v21;
  sub_1004A6C24();
  v23 = v3[69];
  v24[3] = 6;
  sub_1004A6BF4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100147CC4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x436567617373656DLL;
    v6 = 0x64696C6156646975;
    v7 = 0x4D74736568676968;
    if (a1 != 3)
    {
      v7 = 0x7473656867694879;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x4449557478656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x4D676E697373696DLL;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v3 = 0x70657453636E7973;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100147E60(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D19C0, &qword_1004D7C88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152418();
  sub_1004A6FA4();
  v11 = *v3;
  LOBYTE(v40) = 0;
  sub_1004A6C64();
  if (!v2)
  {
    v12 = *(v3 + 2);
    v13 = *(v3 + 12);
    LOBYTE(v40) = 1;
    LOBYTE(v37[0]) = v13;
    sub_1004A6C24();
    v14 = *(v3 + 4);
    v15 = *(v3 + 20);
    LOBYTE(v40) = 2;
    LOBYTE(v37[0]) = v15;
    sub_1004A6C24();
    v16 = v3[3];
    v17 = *(v3 + 32);
    LOBYTE(v40) = 3;
    sub_1004A6C34();
    v18 = v3[5];
    v19 = *(v3 + 48);
    LOBYTE(v40) = 4;
    sub_1004A6C34();
    *&v40 = v3[7];
    LOBYTE(v37[0]) = 5;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770);
    sub_1004A6C74();
    *&v40 = v3[8];
    LOBYTE(v37[0]) = 6;
    sub_10000C9C0(&qword_1005D19D0, &qword_1004D7C90);
    sub_100152568(&qword_1005D19D8, &qword_1005D19D0, &qword_1004D7C90, sub_10015246C);
    sub_1004A6C14();
    v20 = *(v3 + 11);
    v40 = *(v3 + 9);
    v41 = v20;
    v42 = *(v3 + 13);
    LOBYTE(v43) = *(v3 + 120);
    LOBYTE(v37[0]) = 7;
    sub_1001524C0();
    sub_1004A6C74();
    v21 = *(v3 + 11);
    v22 = *(v3 + 9);
    v50 = *(v3 + 10);
    v51 = v21;
    v23 = *(v3 + 11);
    v52 = *(v3 + 12);
    v24 = *(v3 + 9);
    v49[0] = *(v3 + 8);
    v49[1] = v24;
    v42 = v50;
    v43 = v23;
    v44 = *(v3 + 12);
    v53 = v3[26];
    v45 = v3[26];
    v40 = v49[0];
    v41 = v22;
    v39 = 8;
    sub_10014F844(v49, v37);
    sub_100152514();
    sub_1004A6C74();
    v37[2] = v42;
    v37[3] = v43;
    v37[4] = v44;
    v38 = v45;
    v37[0] = v40;
    v37[1] = v41;
    sub_10014F87C(v37);
    *&v33 = v3[27];
    LOBYTE(v30[0]) = 9;
    sub_10000C9C0(&qword_1005D19F8, &qword_1004D7C98);
    sub_100152568(&qword_1005D1A00, &qword_1005D19F8, &qword_1004D7C98, sub_1001525E4);
    sub_1004A6C74();
    v25 = *(v3 + 15);
    v26 = *(v3 + 17);
    v47 = *(v3 + 16);
    v48[0] = v26;
    v27 = *(v3 + 15);
    v46[0] = *(v3 + 14);
    v46[1] = v27;
    v28 = *(v3 + 17);
    v35 = v47;
    v36[0] = v28;
    *(v48 + 14) = *(v3 + 286);
    *(v36 + 14) = *(v3 + 286);
    v33 = v46[0];
    v34 = v25;
    v32 = 10;
    sub_10014F774(v46, v30);
    sub_100152638();
    sub_1004A6C74();
    v30[2] = v35;
    *v31 = v36[0];
    *&v31[14] = *(v36 + 14);
    v30[0] = v33;
    v30[1] = v34;
    sub_10014F7AC(v30);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001483B8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x5564656972657571;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697373696DLL;
  if (v1 != 1)
  {
    v5 = 1701736292;
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

uint64_t sub_1001484A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001484D4(uint64_t a1)
{
  v2 = sub_100152C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148510(uint64_t a1)
{
  v2 = sub_100152C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014854C(void *a1)
{
  v5 = v1[2];
  *v6 = v1[3];
  *&v6[14] = *(v1 + 62);
  v3 = *v1;
  v4 = v1[1];
  return sub_100147A84(a1);
}

uint64_t sub_100148598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001485CC(uint64_t a1)
{
  v2 = sub_100152418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148608(uint64_t a1)
{
  v2 = sub_100152418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100148698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1CA0, &qword_1004D8EC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001546F0();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6BE4();
  if (!v5)
  {
    v15 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10014882C(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AC8, &qword_1004D7CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152B40();
  sub_1004A6FA4();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_1004A6C54();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v21) = 1;
    sub_1004A6C54();
    v13 = v3[2];
    LOBYTE(v21) = 2;
    sub_1004A6C54();
    v14 = *(v3 + 24);
    v21 = *(v3 + 8);
    v22 = v14;
    v20 = 3;
    sub_100152B94();
    sub_1004A6C14();
    v15 = *(v3 + 56);
    v21 = *(v3 + 40);
    v22 = v15;
    v20 = 4;
    sub_1004A6C14();
    v16 = *(v3 + 9);
    v17 = *(v3 + 10);
    LOBYTE(v21) = 5;
    sub_1004A6BE4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100148A8C(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1840, &qword_1004D7000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10014F28C();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  v21[0] = 0;
  sub_1004A6C44();
  if (!v2)
  {
    v13 = *(v3 + 2);
    *v21 = *(v3 + 1);
    *&v21[16] = v13;
    v21[32] = *(v3 + 48);
    v20[0] = 1;
    sub_10014F2E0();
    sub_1004A6C74();
    v14 = v3[7];
    v15 = v3[8];
    v21[0] = 2;
    sub_1004A6BE4();
    memcpy(v22, v3 + 9, 0x126uLL);
    memcpy(v21, v3 + 9, sizeof(v21));
    v20[295] = 3;
    sub_10000E268(v22, v20, &qword_1005D1858, &qword_1004D7008);
    sub_10014F334();
    sub_1004A6C14();
    memcpy(v20, v21, 0x126uLL);
    sub_100025F40(v20, &qword_1005D1858, &qword_1004D7008);
    v19 = v3[46];
    v18 = 4;
    sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
    sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010);
    sub_1004A6C14();
    v19 = v3[47];
    v18 = 5;
    sub_1004A6C14();
    v19 = v3[48];
    v18 = 6;
    sub_10000C9C0(&qword_1005D1878, &qword_1004D7018);
    sub_100152568(&qword_1005D1880, &qword_1005D1878, &qword_1004D7018, sub_10014F388);
    sub_1004A6C14();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100148E34()
{
  if (*v0)
  {
    result = 1701736292;
  }

  else
  {
    result = 0x676E69646E6570;
  }

  *v0;
  return result;
}

uint64_t sub_100148E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100148F44(uint64_t a1)
{
  v2 = sub_1001546F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148F80(uint64_t a1)
{
  v2 = sub_1001546F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100148FDC()
{
  v1 = *v0;
  v2 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100149084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001490B8(uint64_t a1)
{
  v2 = sub_100152B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001490F4(uint64_t a1)
{
  v2 = sub_100152B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149130(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_10014882C(a1);
}

uint64_t sub_10014917C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x74617453636E7973;
    if (v1 != 3)
    {
      v3 = 0x75716552636E7973;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100149264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015216C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014928C(uint64_t a1)
{
  v2 = sub_10014F28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001492C8(uint64_t a1)
{
  v2 = sub_10014F28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v8 = sub_10000C9C0(&qword_1005D1C80, &qword_1004D8EB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100154648();
  sub_1004A6FA4();
  v19 = a2;
  v18 = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770);
  sub_1004A6C14();
  if (!v5)
  {
    v19 = v16;
    v18 = 1;
    sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
    sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010);
    sub_1004A6C14();
    LOBYTE(v19) = 2;
    sub_1004A6C64();
    LOBYTE(v19) = 3;
    sub_1004A6C64();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1001495B4()
{
  v1 = 0x43676E696E6E7572;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x41676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100149654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001542C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014967C(uint64_t a1)
{
  v2 = sub_100154648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001496B8(uint64_t a1)
{
  v2 = sub_100154648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1C90, &qword_1004D8EB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10015469C();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6C44();
  if (!v5)
  {
    v15 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001498A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AA8, &qword_1004D7CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100152A44();
  sub_1004A6FA4();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  sub_100152A98();
  sub_1004A6C74();
  if (!v2)
  {
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v21) = 1;
    sub_1004A6C44();
    v14 = *(v3 + 48);
    LOBYTE(v21) = 2;
    sub_1004A6BF4();
    v15 = *(v3 + 72);
    v21 = *(v3 + 56);
    v22 = v15;
    v20 = 3;
    sub_100152AEC();
    sub_1004A6C14();
    v16 = *(v3 + 88);
    LOBYTE(v21) = 4;
    sub_1004A6BF4();
    v17 = *(v3 + 89);
    LOBYTE(v21) = 5;
    sub_1004A6BF4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100149B04(void *a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D1988, &qword_1004D7C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100150E6C();
  sub_1004A6FA4();
  v11[1] = a2;
  sub_10000C9C0(&qword_1005D1998, &qword_1004D7C78);
  sub_100152568(&qword_1005D19A0, &qword_1005D1998, &qword_1004D7C78, sub_100150EC0);
  sub_1004A6C74();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100149C8C()
{
  if (*v0)
  {
    result = 0x697463656E6E6F63;
  }

  else
  {
    result = 0x786F626C69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_100149CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100149DB0(uint64_t a1)
{
  v2 = sub_10015469C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149DEC(uint64_t a1)
{
  v2 = sub_10015469C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149E48()
{
  v1 = *v0;
  v2 = 0x79726F74736968;
  v3 = 0x54786F626C69616DLL;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_100149F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100154444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100149F2C(uint64_t a1)
{
  v2 = sub_100152A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149F68(uint64_t a1)
{
  v2 = sub_100152A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149FA4(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  *v7 = v1[4];
  *&v7[10] = *(v1 + 74);
  v3 = *v1;
  v4 = v1[1];
  return sub_1001498A8(a1);
}

uint64_t sub_10014A004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10014A088(uint64_t a1)
{
  v2 = sub_100150E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014A0C4(uint64_t a1)
{
  v2 = sub_100150E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10014A11C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141B84(v2);
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

uint64_t sub_10014A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v6 = sub_1004A7044();
  result = sub_1004A7074();
  if (v6 > a1 || result < a1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = sub_1004A7044();
  result = sub_1004A7074();
  if (v9 > a3 || result < a3)
  {
    goto LABEL_20;
  }

  v10 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_15:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_1004A7044();
  result = sub_1004A7074();
  if (v11 >= v13 && result >= v11)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10014A364(char a1)
{
  if (a1)
  {
    return sub_1004A58E4();
  }

  else
  {
    return 0;
  }
}

void *sub_10014A3F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100092488(0, v2, 0);
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v7 = result;
  v8 = 0;
  v23 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(a1 + 36);
    v11 = *(a1 + 48) + 16 * v7;
    v12 = *v11;
    v26 = *(v11 + 8);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v14 >= v13 >> 1)
    {
      result = sub_100092488((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v12;
    *(v15 + 10) = v26;
    *(v15 + 11) = a2;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_100020944(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_10014A628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  sub_100063BD4(a1, v39);
  v11 = sub_100145348(v8, v9);
  v13 = v12;
  if (!a3)
  {
    goto LABEL_16;
  }

  v14 = sub_10014A364(v10);
  if (!v15)
  {

    goto LABEL_10;
  }

  if (v14 == a2 && v15 == a3)
  {

    goto LABEL_16;
  }

  v17 = sub_1004A6D34();

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = sub_10014A364(v10);
    v20 = v19;
    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 14);
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 14);
  if (!v22)
  {
LABEL_22:
    v27 = 0;
    v25 = 0;
    goto LABEL_23;
  }

LABEL_17:
  LOWORD(v39[0]) = v22;
  v23 = sub_1004A5824();
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_22;
  }

  v27 = v23;
LABEL_23:
  v28 = *(a1 + 16);
  sub_100063C30(a1);
  v29 = qword_1004D91E8[v28];
  v30 = qword_1004D9228[v28];
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  *&v38 = v29;
  *(&v38 + 1) = v30;
  v39[0] = v11;
  v39[1] = v13;
  v39[2] = v21;
  v39[3] = v20;
  v39[4] = v27;
  v39[5] = v25;
  v39[6] = v29;
  v39[7] = v30;
  sub_10014F608(&v35, v34);
  sub_10014F640(v39);
  v31 = v36;
  *a4 = v35;
  a4[1] = v31;
  result = *&v37;
  v33 = v38;
  a4[2] = v37;
  a4[3] = v33;
  return result;
}

void sub_10014A7F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1000924C8(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    v8 = sub_1004A6554();
    v9 = 0;
    v35 = v2;
    v36 = a2[9];
    v10 = a2[11];
    v33 = v10;
    v34 = a2[10];
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v13 = v6;
      v37 = *(a1 + 36);
      v14 = *(a1 + 56) + 72 * v8;
      v40[0] = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 16);
      v41 = *(v14 + 64);
      v40[2] = v16;
      v40[3] = v15;
      v40[1] = v17;
      if (v36)
      {
        v18 = v33;

        v19 = v34;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      sub_100063BD4(v40, v38);
      sub_10014A628(v40, v19, v18, v39);
      v42 = v5;
      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000924C8((v20 > 1), v21 + 1, 1);
        v5 = v42;
      }

      v5[2] = v21 + 1;
      v22 = &v5[8 * v21];
      v23 = v39[0];
      v24 = v39[1];
      v25 = v39[3];
      v22[4] = v39[2];
      v22[5] = v25;
      v22[2] = v23;
      v22[3] = v24;
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_25;
      }

      v26 = *(v13 + 8 * v12);
      if ((v26 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v6 = v13;
      v27 = v26 & (-2 << (v8 & 0x3F));
      if (v27)
      {
        v11 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (a1 + 72 + 8 * v12);
        while (v29 < (v11 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_100020944(v8, v37, 0);
            v11 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_100020944(v8, v37, 0);
      }

LABEL_4:
      ++v9;
      v8 = v11;
      if (v9 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

unsigned int *sub_10014AA90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_100091A08(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v28 = a2 + 32;
    v29 = a1 + 32;
    v30 = *(a1 + 16);

    v7 = 0;
    while (v7 != v30)
    {
      v8 = (v29 + 16 * v7);
      v9 = *v8;
      v10 = *(v8 + 2);
      v11 = *(v28 + 2 * v7);
      swift_bridgeObjectRetain_n();
      v12 = sub_1004A5804();
      v14 = v13;
      result = MailboxName.inbox.unsafeMutableAddressor();
      if ((v10 | (v10 << 32)) == (result[2] | (result[2] << 32)) && (v15 = *result, v16 = *(v9 + 16), v16 == *(*result + 16)))
      {
        if (v16)
        {
          v17 = v9 == v15;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = (v9 + 32);
          v19 = (v15 + 32);
          while (v16)
          {
            if (*v18 != *v19)
            {
              goto LABEL_15;
            }

            ++v18;
            ++v19;
            if (!--v16)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }
      }

      else
      {
LABEL_15:
        if (sub_1004A5924() >= 3)
        {
          sub_1004A5964();
          sub_1004A6724(16);
          sub_1004A5AB4();
          v20 = sub_1004A5864();
          v21 = v5;
          v22 = v4;
          v24 = v23;

          v31 = v24;
          v4 = v22;
          v5 = v21;
          v32._countAndFlagsBits = 0x6E656C202CA680E2;
          v32._object = 0xAC0000003D687467;
          sub_1004A5994(v32);
          sub_1004A5924();
          v33._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v33);

          v12 = v20;
          v14 = v31;
        }
      }

LABEL_17:
      v34._countAndFlagsBits = v12;
      v34._object = v14;
      sub_1004A5994(v34);

      v35._countAndFlagsBits = 0x203E2D2027;
      v35._object = 0xE500000000000000;
      sub_1004A5994(v35);
      v36._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v36);

      v26 = v5[2];
      v25 = v5[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_100091A08((v25 > 1), v26 + 1, 1);
      }

      ++v7;
      v5[2] = v26 + 1;
      v27 = &v5[2 * v26];
      v27[4] = 39;
      v27[5] = 0xE100000000000000;
      if (v7 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:

    return v5;
  }

  return result;
}

uint64_t sub_10014ADD0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  v1 = *(a1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  v3 = sub_1004A6F14() & ~(-1 << *(a1 + 32));
  if ((*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unsigned int *sub_10014AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_10014AA90(a2, a3);

  v8 = MailboxesSelectionUsage.allConnections.getter(a4);
  v43 = *(v8 + 2);
  if (v43)
  {
    v41 = v7;
    v9 = 0;
    v42 = v8 + 32;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = MailboxesSelectionUsage.subscript.getter(*&v42[4 * v9], a4);
      if (v12)
      {
        v16 = v12;
        v17 = v13;
        v18 = v14;
        v19 = v15;
        v44 = sub_1004A5824();
        v45 = v20;

        v21 = sub_1004A5804();
        v23 = v22;
        result = MailboxName.inbox.unsafeMutableAddressor();
        if ((v17 | (v17 << 32)) == (result[2] | (result[2] << 32)) && (v25 = *result, v26 = *(v16 + 16), v26 == *(*result + 16)))
        {
          if (v26)
          {
            v27 = v25 == v16;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v28 = (v16 + 32);
            v29 = (v25 + 32);
            while (v26)
            {
              if (*v28 != *v29)
              {
                goto LABEL_17;
              }

              ++v28;
              ++v29;
              if (!--v26)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_17:
          if (sub_1004A5924() >= 3)
          {
            sub_1004A5964();
            sub_1004A6724(16);
            sub_1004A5AB4();
            v30 = sub_1004A5864();
            v31 = v10;
            v32 = v19;
            v33 = a4;
            v35 = v34;

            v46 = v35;
            a4 = v33;
            v19 = v32;
            v10 = v31;
            v47._countAndFlagsBits = 0x6E656C202CA680E2;
            v47._object = 0xAC0000003D687467;
            sub_1004A5994(v47);
            sub_1004A5924();
            v48._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v48);

            v21 = v30;
            v23 = v46;
          }
        }

LABEL_19:
        if (v19)
        {

          if (v18)
          {
            v36 = v44;
            if (v18 == 1)
            {
              v37 = 0x7953657669746361;
              v38 = 0xEA0000000000636ELL;
            }

            else
            {
              v38 = 0xEA00000000006B73;
              v37 = 0x6154657669746361;
            }
          }

          else
          {
            v38 = 0xE800000000000000;
            v37 = 0x6576697463616E69;
            v36 = v44;
          }
        }

        else
        {
          v49._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v49);

          v37 = 0x6576697463616E69;
          v38 = 0xE90000000000002DLL;
          v36 = v44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000879A4(0, *(v10 + 2) + 1, 1, v10);
        }

        v40 = *(v10 + 2);
        v39 = *(v10 + 3);
        if (v40 >= v39 >> 1)
        {
          v10 = sub_1000879A4((v39 > 1), v40 + 1, 1, v10);
        }

        *(v10 + 2) = v40 + 1;
        v11 = &v10[48 * v40];
        *(v11 + 4) = v36;
        *(v11 + 5) = v45;
        *(v11 + 6) = v21;
        *(v11 + 7) = v23;
        *(v11 + 8) = v37;
        *(v11 + 9) = v38;
      }

      if (++v9 == v43)
      {

        return v41;
      }
    }
  }

  return v7;
}

unint64_t sub_10014B280(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_100064090(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1000C83EC(v15, v5 & 1);
    v17 = *a3;
    result = sub_100064090(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v22 = (v19[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_10013C918();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  *(v19[7] + 8 * v20) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v26 = *a3;

      result = sub_100064090(v7, v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v27;
      if (v26[3] < v30)
      {
        sub_1000C83EC(v30, 1);
        v31 = *a3;
        result = sub_100064090(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        *(v33[7] + 8 * v25) = v9;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + 8 * result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10014B4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Previous(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v43 = a1;
  if (v13)
  {
    v40[1] = v4;
    v41 = a2;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v45 = *(v10 + 72);

    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    do
    {
      sub_10014FA6C(v14, v12, type metadata accessor for TaskHistory.Running);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *v12;
      if (EnumCaseMultiPayload == 1)
      {
        sub_100020EDC(*(v12 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100087E44(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_100087E44((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        *&v16[4 * v20 + 32] = v18;
      }

      else
      {
        v44 = v16;
        v21 = v7;
        v22 = v8;
        v23 = *(v12 + 1);
        v48 = 0;
        v49 = 0xE000000000000000;
        v46 = v18;
        v47 = v23;
        sub_1004A6934();
        v24 = v48;
        v25 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100085070(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        v28 = v15;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_100085070((v26 > 1), v27 + 1, 1, v15);
        }

        v29 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
        *(v28 + 2) = v27 + 1;
        v15 = v28;
        v30 = &v28[16 * v27];
        *(v30 + 4) = v24;
        *(v30 + 5) = v25;
        sub_10014FAD4(&v12[v29], type metadata accessor for ClientCommand);
        v8 = v22;
        v7 = v21;
        v16 = v44;
      }

      v14 += v45;
      --v13;
    }

    while (v13);

    a2 = v41;
    if (!*(v15 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_16:

      v15 = 0;
    }
  }

  v31 = *(v16 + 2);

  if (!v31)
  {

    v32 = *(a2 + 16);
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_29:

    return v15;
  }

  v32 = *(a2 + 16);
  if (!v32)
  {
    goto LABEL_29;
  }

LABEL_19:
  v33 = v15;
  v34 = 0;
  v35 = 0;
  v36 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v37 = *(v42 + 72);
  while (1)
  {
    sub_10014FA6C(v36, v7, type metadata accessor for TaskHistory.Previous);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v39 = __OFADD__(v35++, 1);
    if (v39)
    {
      goto LABEL_32;
    }

    sub_10014FAD4(v7, type metadata accessor for ClientCommand);
LABEL_21:
    v36 += v37;
    if (!--v32)
    {

      return v33;
    }
  }

  result = sub_10014FAD4(v7, type metadata accessor for TaskHistory.Previous);
  v39 = __OFADD__(v34++, 1);
  if (!v39)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_10014B960@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  v6 = sub_10014B4D8(v4, v5);
  v39 = v7;
  v40 = v6;
  v37 = v9;
  v38 = v8;
  v47 = 91;
  v48 = 0xE100000000000000;
  v10 = a1 + *(type metadata accessor for RunningTask() + 28);
  v11 = (v10 + *(type metadata accessor for Task.Logger(0) + 20));
  v12 = v11[1];
  v13 = v11[2];
  LOBYTE(v42) = *v11;
  sub_10014F900();
  v14 = sub_1004A5A84();
  v16 = v15;
  if (sub_1004A5924() <= 1)
  {
    v73._countAndFlagsBits = 48;
    v73._object = 0xE100000000000000;
    sub_1004A5994(v73);
  }

  v74._countAndFlagsBits = v14;
  v74._object = v16;
  sub_1004A5994(v74);

  v75._countAndFlagsBits = 45;
  v75._object = 0xE100000000000000;
  sub_1004A5994(v75);

  v76._countAndFlagsBits = v12;
  v76._object = v13;
  sub_1004A5994(v76);

  v77._countAndFlagsBits = 93;
  v77._object = 0xE100000000000000;
  sub_1004A5994(v77);
  v17 = v47;
  v18 = v48;
  sub_100117890(a1, &v61);
  if (v67)
  {
    if (v67 == 1)
    {
      v19 = v65;
      v20 = v66;
      sub_1000B364C(&v61, &v47);
      v21 = v50;
      v22 = v51;
      sub_10002587C(&v47, v50);
      (*(v22 + 32))(&v69, v21, v22);
      v23 = v70;
      LODWORD(v21) = v71;
      v72 = v69;
      sub_1000D69D0(&v72);
      v24 = sub_100145348(v23, v21);
      v26 = v25;
      if (v20)
      {
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v27 = ConnectionID.debugDescription.getter(v19);
        v28 = v33;
      }

      v32 = v40;
      sub_10014FAD4(a1, type metadata accessor for RunningTask);
      sub_1000197E0(&v47);
      v30 = 2;
      v29 = 2;
    }

    else
    {
      v32 = v40;
      if (v65 | (v66 << 32) || v63 | v64 | v61 | v62 | *(&v61 + 1))
      {
        sub_10014FAD4(a1, type metadata accessor for RunningTask);
        v24 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v31 = 1;
        v30 = 2;
        v29 = 2;
        goto LABEL_15;
      }

      sub_10014FAD4(a1, type metadata accessor for RunningTask);
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = 2;
    }

    v31 = 2;
  }

  else
  {
    sub_10014FAD4(a1, type metadata accessor for RunningTask);
    sub_10011D8CC(&v61);
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 2;
    v30 = 1;
    v31 = 2;
    v32 = v40;
  }

LABEL_15:
  *&v42 = v32;
  *(&v42 + 1) = v39;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  *&v44 = v17;
  *(&v44 + 1) = v18;
  LOBYTE(v45) = v30;
  *(&v45 + 1) = *v68;
  DWORD1(v45) = *&v68[3];
  *(&v45 + 1) = v24;
  *v46 = v26;
  *&v46[8] = v27;
  *&v46[16] = v28;
  v46[24] = v29;
  v46[25] = v31;
  v47 = v32;
  v48 = v39;
  v49 = v38;
  v50 = v37;
  v51 = v17;
  v52 = v18;
  v53 = v30;
  *v54 = *v68;
  *&v54[3] = *&v68[3];
  v55 = v24;
  v56 = v26;
  v57 = v27;
  v58 = v28;
  v59 = v29;
  v60 = v31;
  sub_10014FA04(&v42, v41);
  sub_10014FA3C(&v47);
  v34 = v45;
  a2[2] = v44;
  a2[3] = v34;
  a2[4] = *v46;
  *(a2 + 74) = *&v46[10];
  result = *&v42;
  v36 = v43;
  *a2 = v42;
  a2[1] = v36;
  return result;
}

void *sub_10014BD20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_100092408(0, v11, 0);
    v12 = v24;
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_10014FA6C(v13, v10, type metadata accessor for RunningTask);
      sub_10014FA6C(v10, v8, type metadata accessor for RunningTask);
      sub_10014B960(v8, v25);
      sub_10014FAD4(v10, type metadata accessor for RunningTask);
      v24 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_100092408((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      v12[2] = v16 + 1;
      v17 = &v12[12 * v16];
      v18 = v25[1];
      v17[2] = v25[0];
      v17[3] = v18;
      v19 = v25[2];
      v20 = v25[3];
      v21 = v26[0];
      *(v17 + 106) = *(v26 + 10);
      v17[5] = v20;
      v17[6] = v21;
      v17[4] = v19;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_10014BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v6 = type metadata accessor for StateWithTasks();
  v7 = a1 + *(v6 + 28);
  LOBYTE(v66[0]) = *(v7 + *(type metadata accessor for State.Logger() + 20));
  sub_10014F900();
  v8 = sub_1004A5A84();
  v10 = v9;
  if (sub_1004A5924() <= 1)
  {
    v68._countAndFlagsBits = 48;
    v68._object = 0xE100000000000000;
    sub_1004A5994(v68);
  }

  v69._countAndFlagsBits = v8;
  v69._object = v10;
  sub_1004A5994(v69);

  v58 = __dst[1];
  v59 = __dst[0];
  v11 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  Environment.capturedValue.getter(v13 | v14, *(a1 + 32), *(a1 + 40), v63);
  v57 = sub_10014ADD0(*(a1 + 56));
  v56 = sub_100142AA8(*(a1 + 64));
  v15 = sub_100012C04();
  v18 = sub_100187138(v15, v17, v16 & 1);
  v20 = v19;
  v22 = v21;
  v23 = *(a1 + *(v6 + 32));
  *&v67[12] = *(a1 + 228);
  v24 = *(a1 + 216);
  v66[2] = *(a1 + 200);
  *v67 = v24;
  v25 = *(a1 + 184);
  v66[0] = *(a1 + 168);
  v66[1] = v25;
  sub_10014F954(v66, __dst);
  v55 = v18;
  sub_10018C458(v18, v20, v22, v7, v23, v66);
  sub_10014F9B0(v66);
  memcpy(__dst, a1, sizeof(__dst));
  v26 = sub_10012E208();
  v27 = LOBYTE(__dst[3]);
  v28 = BYTE1(__dst[3]);
  v29 = __dst[4];
  v30 = __dst[7];

  v31 = sub_100166D28();
  v32 = v31;
  if (v29 == 3 || v29 == 2)
  {

    v33 = 1;
    goto LABEL_12;
  }

  v53 = sub_100166E18(v31);
  if (v28)
  {
    goto LABEL_23;
  }

  if (v29 == 1)
  {
    if (v27)
    {
      v33 = v27 == 1;
      goto LABEL_24;
    }

LABEL_23:
    v33 = v53 ^ 1;
    goto LABEL_24;
  }

  if (v29 || (v27 - 1) >= 2)
  {
    goto LABEL_23;
  }

  v33 = 0;
LABEL_24:
  sub_100013AD0(&off_100598658, v30);
  sub_100166E18(v32);
  v54 = sub_100013CF4(v30);

  if (v54 & 1) == 0 && (v28)
  {
    sub_100166E18(v32);
  }

LABEL_12:

  v34 = __dst[26];
  sub_1000CF79C(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v26, v33 & 1, __dst[26]);
  v36 = v35;
  v38 = v37;

  v39 = sub_1001627A4(v36, v38);

  v40 = sub_10014AE60(v55, v20, v22, v39);
  v42 = v41;

  v43 = sub_100142D94(v34);
  if (v43[2])
  {
    sub_10000C9C0(&qword_1005CF760, &qword_1004D2BC8);
    v44 = sub_1004A6A74();
  }

  else
  {
    v44 = &_swiftEmptyDictionarySingleton;
  }

  v62 = v44;
  sub_10014B280(v43, 1, &v62);

  v45 = v62;
  v46 = *(a1 + 272);
  v47 = *(a1 + 280);
  v48 = *(a1 + 264);

  v49 = sub_10014BD20(v48, v46);
  result = sub_10014FAD4(a1, type metadata accessor for StateWithTasks);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v59;
  *(a4 + 24) = v58;
  v51 = v63[3];
  *(a4 + 64) = v63[2];
  *(a4 + 80) = v51;
  *(a4 + 96) = v64;
  v52 = v63[1];
  *(a4 + 32) = v63[0];
  *(a4 + 48) = v52;
  *(a4 + 104) = v57;
  *(a4 + 112) = v56;
  *(a4 + 120) = v40;
  *(a4 + 128) = v42;
  *(a4 + 136) = v45;
  *(a4 + 144) = v49;
  return result;
}