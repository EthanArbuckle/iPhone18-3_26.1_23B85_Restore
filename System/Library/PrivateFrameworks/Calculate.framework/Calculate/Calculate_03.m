uint64_t sub_1C1EAD730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v28 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1C1E90258();
      result = sub_1C1F523B4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v28;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1EAD988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  result = sub_1C1F52A14();
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1C1F52CD4();
      (*(*v18 + 168))(v29);
      result = sub_1C1F52CF4();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
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

unint64_t sub_1C1EADBF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C1F52CD4();
  (*(*a1 + 168))(v7);
  sub_1C1F52CF4();
  v5 = -1 << *(a2 + 32);
  result = sub_1C1F52974();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C1EADCBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C1EAD4D0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C1EADFB4();
      goto LABEL_16;
    }

    sub_1C1EAE3A0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C1F52CD4();
  sub_1C1F524A4();
  result = sub_1C1F52CF4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C1F52C64();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

uint64_t sub_1C1EADE3C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1EAD988(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C1EAE250();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C1EAE800(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1C1F52CD4();
  (*(*v4 + 168))(v17);
  result = sub_1C1F52CF4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for CalculateExpression.RichExpression();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

void *sub_1C1EADFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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

void *sub_1C1EAE110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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

void *sub_1C1EAE250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1C1EAE3A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C1F52CD4();

      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1EAE5D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v26 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_1C1E90258();
      result = sub_1C1F523B4();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v26;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v25;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1EAE800(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1C1F52CD4();
      v20 = *(*v18 + 168);

      v20(v30);
      result = sub_1C1F52CF4();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
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

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1C1EAEA50()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1C1EAECE0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1C1EAEA9C(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1C1EAECE0((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C1EAEAE0(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = sub_1C1F52994();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1EAEB4C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1C1EAEE14(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1C1EAEC20(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1C1EAEC20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void *sub_1C1EAECE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F8, &qword_1C1F568E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1EAEE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211A8, &qword_1C1F56898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C1EAEF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21210, &unk_1C1F56900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
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

char *sub_1C1EAF018(char *a1, int64_t a2, char a3)
{
  result = sub_1C1EAF038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1EAF038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C1EAF144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return sub_1C1F52BA4();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for CalculateExpression.Token();

    result = v5;
    do
    {
      v6 = result + 1;
      sub_1C1F52AA4();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1C1EAF22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C1EB0E00((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_1C1EAF27C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
  result = sub_1C1F52BC4();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_1C1F52CC4();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C1EAF4E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
  v37 = a2;
  result = sub_1C1F52BC4();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1C1EB1C58(v23, v38);
      }

      else
      {
        sub_1C1EB0E00(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1C1F52454();
      sub_1C1F52CD4();
      sub_1C1F524A4();
      v26 = sub_1C1F52CF4();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1C1EB1C58(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1C1EAF7B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

id sub_1C1EAF8FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1C1EB0E00(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1C1EB1C58(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void sub_1C1EAFAA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for CalculateExpression.RichToken();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C1EAFB88()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1EAFBEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation);
  return sub_1C1F52414() & 1;
}

id sub_1C1EAFC80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1C1EB0E00(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_1C1EB1C58(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_1C1E83580(&v19, &qword_1EBF211E8, &qword_1C1F568D8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C1EAFDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21230, &unk_1C1F56930);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C1EAFEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C8, &qword_1C1F568B8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C1EAFFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, &v11, &qword_1EBF21180, &qword_1C1F564D0);
      v5 = v11;
      result = sub_1C1E81EB0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1EB1C58(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1C1EB0118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211D0, &qword_1C1F568C0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, v13, &qword_1EBF211D8, &qword_1C1F568C8);
      result = sub_1C1EAC20C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C1EB1C58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1C1EB0254(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = 16777473;
  *(v1 + 28) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  swift_beginAccess();
  *(v1 + 40) = a1;
  (*(*v1 + 232))(0);
  swift_beginAccess();
  *(v1 + 25) = 0;
  swift_beginAccess();
  swift_weakAssign();
  return v1;
}

_BYTE *sub_1C1EB0340(_BYTE *a1)
{
  v2 = v1;
  v4 = swift_weakInit();
  *(v1 + 24) = 16777473;
  *(v1 + 28) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v5;
  v6 = (v1 + 40);
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  v7 = (*(*a1 + 392))(v4);
  swift_beginAccess();
  v8 = *v6;
  *v6 = v7;

  (*(*a1 + 176))(v9);
  swift_beginAccess();
  swift_weakAssign();

  v11 = (*(*a1 + 224))(v10);
  v12 = (*(*v2 + 232))(v11 & 1);
  LOBYTE(v7) = (*(*a1 + 248))(v12);
  v13 = swift_beginAccess();
  v2[25] = v7 & 1;
  (*(*a1 + 272))(v16, v13);
  LOBYTE(v7) = v16[0];
  v14 = swift_beginAccess();
  v2[26] = v7;
  LOBYTE(v7) = (*(*a1 + 296))(v14);
  swift_beginAccess();
  v2[27] = v7 & 1;
  v2[28] = a1[28];
  v2[48] = a1[48];
  v2[49] = a1[49];
  v2[50] = a1[50];
  return v2;
}

unint64_t sub_1C1EB05DC()
{
  result = qword_1EBF21160;
  if (!qword_1EBF21160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21160);
  }

  return result;
}

unint64_t sub_1C1EB0630()
{
  result = qword_1EDC2CC10;
  if (!qword_1EDC2CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2CC10);
  }

  return result;
}

uint64_t sub_1C1EB0684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1EB06F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6911AC0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C1EACF44(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1EB078C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*a1 + 264);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v7)
  {
    *a2 = ++v3;
  }

  v9 = (v5)(v8);
  if (v9 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v10)
  {
    result = (v5)(result);
    if ((result & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
      }

      else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(result + 8 * v3 + 32);

        goto LABEL_12;
      }

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1C6911DB0](v3, result);
LABEL_12:

    v13 = *(v12 + 48);

    v15 = v13;
    v14 = 17;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      *a2 = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EB0924(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  a6(a5);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = result - v9;
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v17 = result - v9;
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = result + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1EB0A48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1F52994();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    sub_1C1E8CFBC(result);
    return sub_1C1EB0924(v10, v9, 1, v8, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1C1EB0B40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C1F524E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C1F525F4();
}

unint64_t sub_1C1EB0BF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
      result = sub_1C1F52A34();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1F52994();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  while ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C6911DB0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_17:
    v10 = *(v3 + 40);
    sub_1C1F52CD4();
    (*(*v8 + 168))(v19);
    result = sub_1C1F52CF4();
    v11 = ~(-1 << *(v3 + 32));
    v12 = result & v11;
    v13 = (result & v11) >> 6;
    v14 = *(v7 + 8 * v13);
    v15 = 1 << (result & v11);
    v16 = *(v3 + 48);
    if ((v15 & v14) != 0)
    {
      while (*(v16 + 8 * v12) != v8)
      {
        v12 = (v12 + 1) & v11;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v6 == v5)
      {
        return v3;
      }
    }

    else
    {
LABEL_20:
      *(v7 + 8 * v13) = v15 | v14;
      *(v16 + 8 * v12) = v8;
      v17 = *(v3 + 16);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_24;
      }

      *(v3 + 16) = v18;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  v8 = *(v1 + 32 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C1EB0E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C1EB0E7C()
{
  result = qword_1EBF21170;
  if (!qword_1EBF21170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21170);
  }

  return result;
}

unint64_t sub_1C1EB0ED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1C1EAFC80(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1C1EB1C58(v43, v41);
  v13 = *a5;
  result = sub_1C1E81EB0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1EAF4E0(v19, a4 & 1);
    v21 = *a5;
    result = sub_1C1E81EB0(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey();
    result = sub_1C1F52CA4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1C1EAF8FC();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1C1EB1C58(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1C1EB1C58(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1C1EAFC80(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_1C1EB1C58(v43, v41);
        v31 = *a5;
        result = sub_1C1E81EB0(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1C1EAF4E0(v35, 1);
          v36 = *a5;
          result = sub_1C1E81EB0(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_1C1EB1C58(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1C1EB1C58(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1C1EAFC80(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_1C1E96B60();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1C1EB1200()
{
  result = qword_1EDC2E8D8;
  if (!qword_1EDC2E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2E8D8);
  }

  return result;
}

unint64_t sub_1C1EB1258()
{
  result = qword_1EBF21188;
  if (!qword_1EBF21188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21188);
  }

  return result;
}

uint64_t _s9OperationC4ModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9OperationC4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *sub_1C1EB1C58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C1EB1D18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1EB1D90(uint64_t a1)
{
  v3 = qword_1EDC30828;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1C1EB4BE4(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C1EB1E28()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-v4];
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = qword_1EDC30830;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = *(v1 + 552);
  v14 = *(v1 + 568);

  sub_1C1F52394();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C1EB5BCC(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v15 = qword_1EDC30828;
    swift_beginAccess();
    v16 = *(v0 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_1C1EB4BE4(v10);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);
        v20 = *(v7 + 8);

        v20(v10, v6);

        return v19;
      }
    }

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t sub_1C1EB2098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = sub_1C1F52034();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1C1F528D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = qword_1EDC30830;
  swift_beginAccess();
  v24 = *(v2 + v13);
  v20 = v5;
  v21 = *(v4 + 560);
  v22 = *(v4 + 568);
  v23 = a1;
  sub_1C1F52384();

  swift_getWitnessTable();
  sub_1C1F52634();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
  }

  else
  {
    v15 = *(TupleTypeMetadata2 + 48);
    v16 = *(v5 - 8);
    v17 = v19;
    (*(v16 + 32))(v19, v12, v5);
    (*(v16 + 56))(v17, 0, 1, v5);
    return (*(*(v6 - 8) + 8))(&v12[v15], v6);
  }
}

uint64_t sub_1C1EB23B0()
{
  v0 = sub_1C1F52034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  CalculateExpression.id.getter(v4);
  LOBYTE(v5) = sub_1C1F52014();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1C1EB24B8(uint64_t a1, uint64_t a2)
{
  sub_1C1EB2A34(a1);
  sub_1C1EB2EC4();

  sub_1C1EB2774(a1, a2);

  sub_1C1ED9080(v5);
  return sub_1C1EB25E8(v2, a2);
}

uint64_t sub_1C1EB2520(uint64_t a1, uint64_t a2)
{
  result = sub_1C1EB2EC4();
  if (result)
  {
    (*(*v2 + 656))(result, a2);
  }

  return result;
}

uint64_t sub_1C1EB25A8(uint64_t a1)
{
  v3 = sub_1C1EB2EC4();
  sub_1C1EB25E8(v1, a1);
  return v3;
}

uint64_t sub_1C1EB25E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 552);
  v5 = sub_1C1F528D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v12 - v8, a2, v4);
  (*(v10 + 56))(v9, 0, 1, v4);
  (*(*a1 + 808))(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C1EB2774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v27 = a2;
  v28 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - v9;
  v26 = *(v5 + 552);
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v25 - v13;
  v15 = sub_1C1F52034();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.id.getter(v19);
  v20 = qword_1EDC30828;
  swift_beginAccess();

  v21 = *(v3 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v3 + v20);
  *(v3 + v20) = 0x8000000000000000;
  sub_1C1EB56C8(a1, v19, isUniquelyReferenced_nonNull_native);
  (*(v16 + 8))(v19, v15);
  *(v3 + v20) = v29;
  swift_endAccess();
  (*(v11 + 16))(v14, v27, v26);
  CalculateExpression.id.getter(v10);
  (*(v16 + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  v23 = *(v28 + 568);
  sub_1C1F52384();
  sub_1C1F523A4();
  return swift_endAccess();
}

uint64_t sub_1C1EB2A34(uint64_t a1)
{
  v2 = v1;
  v31 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v27 - v6;
  v7 = *(v31 + 552);
  v8 = sub_1C1F528D4();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v27 - v15;
  v17 = sub_1C1F52034();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.id.getter(v21);
  swift_beginAccess();
  sub_1C1EB2DFC(v21);
  (*(v18 + 8))(v21, v17);
  swift_endAccess();

  v22 = CalculateExpression.document.getter();
  if (v22)
  {
    v23 = v22;

    if (v23 == v2)
    {
      sub_1C1ED9080(0);
    }
  }

  (*(*v2 + 648))(a1);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    return (*(v28 + 8))(v12, v29);
  }

  (*(v13 + 32))(v16, v12, v7);
  swift_beginAccess();
  v25 = *(v31 + 568);
  sub_1C1F52384();
  v26 = v30;
  sub_1C1F52364();
  sub_1C1EB5BCC(v26);
  swift_endAccess();
  return (*(v13 + 8))(v16, v7);
}

uint64_t sub_1C1EB2DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1C1EB4BE4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1EB594C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1C1F52034();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1C1EB53C0(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1C1EB2EC4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_1C1F52034();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 552);
  v13 = *(v2 + 568);
  sub_1C1F52384();
  sub_1C1F52364();
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1EB5BCC(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    swift_beginAccess();
    v14 = sub_1C1EB2DFC(v11);
    swift_endAccess();
    if (v14)
    {

      v15 = CalculateExpression.document.getter();
      if (v15)
      {
        v16 = v15;

        if (v16 == v1)
        {
          sub_1C1ED9080(0);
        }
      }
    }

    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_1C1EB3118()
{
  v1 = *v0;
  v10 = (*(*v0 + 728))();
  v2 = v1[69];
  v3 = v1[71];
  v4 = sub_1C1F52804();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6911910](&v9, v4, WitnessTable);

  sub_1C1F52A84();
  swift_getWitnessTable();
  v6 = v1[70];
  v7 = sub_1C1F52674();

  v10 = v7;
  sub_1C1F52754();
  swift_getWitnessTable();
  return sub_1C1F52644();
}

uint64_t sub_1C1EB32E4()
{
  v1 = *v0;
  *&v14 = (*(*v0 + 728))();
  v2 = v1[69];
  v3 = v1[71];
  v4 = sub_1C1F52804();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6911910](&v11, v4, WitnessTable);

  v13 = v11;
  sub_1C1F52A84();
  swift_getWitnessTable();
  v6 = v1[70];
  v7 = sub_1C1F52674();

  *&v14 = v7;
  v8 = sub_1C1F52754();
  v9 = swift_getWitnessTable();
  MEMORY[0x1C69116C0](&v11, v8, v9);
  v13 = v11;
  sub_1C1F52B84();
  swift_getWitnessTable();
  sub_1C1F52824();
  v11 = v14;
  v12 = v15;
  sub_1C1F52CB4();
  swift_getWitnessTable();
  return sub_1C1F52654();
}

uint64_t sub_1C1EB3578@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 600);
  swift_beginAccess();
  v5 = *(v3 + 552);
  v6 = sub_1C1F528D4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1C1EB3624(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 600);
  swift_beginAccess();
  v5 = *(v3 + 552);
  v6 = sub_1C1F528D4();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_1C1EB36D8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(*(*v1 + 552) - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - v7;
  v34 = v9;
  v10 = sub_1C1F528D4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v14;
  if (*(v3 + qword_1EDC30820))
  {
    __break(1u);
  }

  else
  {
    v29 = v8;
    v30 = v16;
    v32 = v15;
    v33 = result;
    v31 = v5;
    v18 = *(v5 + 56);
    v18(&v26 - v14, 1, 1, v34);
    v19 = sub_1C1EB3624(v17);
    *(v3 + qword_1EDC30820) = 1;
    result = a1(v19);
    if (!v2)
    {
      v27 = v18;
      v28 = 0;
      *(v3 + qword_1EDC30820) = 0;
      v20 = v30;
      sub_1C1EB3578(v30);
      v21 = v31;
      if ((*(v31 + 48))(v20, 1, v34) == 1)
      {
        return (*(v32 + 8))(v20, v33);
      }

      else
      {
        v22 = v29;
        v23 = v20;
        v24 = v34;
        (*(v21 + 32))(v29, v23, v34);
        (*(v21 + 16))(v17, v22, v24);
        v25 = v27;
        v27(v17, 0, 1, v24);
        (*(*v3 + 808))(v17);
        (*(v32 + 8))(v17, v33);
        v25(v17, 1, 1, v24);
        sub_1C1EB3624(v17);
        return (*(v21 + 8))(v22, v24);
      }
    }
  }

  return result;
}

uint64_t sub_1C1EB3A20(uint64_t a1)
{
  v2 = v1;
  v104 = a1;
  v3 = *v1;
  v4 = *(v3 + 552);
  v105 = sub_1C1F528D4();
  v5 = *(v105 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v105);
  WitnessTable = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v102 = v93 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v98 = v93 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v100 = v93 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v93 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v93 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v93 - v22;
  v24 = v4;
  v25 = *(v4 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v21);
  v97 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v93 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v93 - v33;
  v103 = v3;
  if ((*(v3 + 360))(v32))
  {
    v35 = *(*v2 + 488);

    return v35();
  }

  else
  {
    v96 = v31;
    v37 = *(v2 + qword_1EDC30820);
    v99 = v5;
    v38 = *(v5 + 16);
    v39 = (v25 + 48);
    v40 = v25;
    if ((v37 & 1) == 0)
    {
      v47 = v105;
      v38(v23, v104, v105);
      v48 = v24;
      if ((*v39)(v23, 1, v24) == 1)
      {
        v49 = (*(v99 + 8))(v23, v47);
        v50 = (*(*v2 + 728))(v49);
        v51 = v103;
        v52 = *(v103 + 568);
      }

      else
      {
        v40[4](v34, v23, v24);
        v63 = sub_1C1EB4B70(v24, v24);
        v64 = *(v63 + 52);
        v65 = v40[9];
        v66 = (*(v40 + 80) + *(v63 + 48)) & ~*(v40 + 80);
        swift_allocObject();
        v67 = sub_1C1F526C4();
        v68 = v40;
        v69 = v67;
        v70 = v68;
        v68[2](v71, v34, v48);
        sub_1C1F52754();
        v72 = sub_1C1F52734();
        v51 = v103;
        if (v72)
        {
          sub_1C1EB5C68(v69, v48, *(v103 + 568));
        }

        v106 = (*(*v2 + 744))(v34);
        v52 = *(v51 + 568);
        swift_getWitnessTable();
        v50 = sub_1C1F527E4();
        (v70[1])(v34, v48);
      }

      v106 = v50;

      MEMORY[0x1EEE9AC00](v78);
      v79 = *(v51 + 560);
      v93[-6] = v48;
      v93[-5] = v79;
      v103 = v79;
      v93[-4] = v52;
      v93[-3] = sub_1C1EB63C0;
      v93[-2] = v2;
      v105 = v52;
      v80 = sub_1C1F52804();
      v81 = type metadata accessor for CalculateExpression();
      WitnessTable = swift_getWitnessTable();
      v102 = v80;
      v104 = v81;
      v82 = sub_1C1F52614();

      if (v82 >> 62)
      {
        goto LABEL_36;
      }

      v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v83)
      {
LABEL_37:

        v106 = (*(*v2 + 728))(v88);
        v89 = v103;
        v90 = sub_1C1F52674();

        v106 = v90;

        MEMORY[0x1EEE9AC00](v91);
        v93[-6] = v48;
        v93[-5] = v89;
        v93[-4] = v105;
        v93[-3] = sub_1C1EB63C0;
        v93[-2] = v2;
        sub_1C1F52754();
        swift_getWitnessTable();
        v92 = sub_1C1F52614();

        return (*(*v2 + 344))(v92);
      }

LABEL_26:
      v84 = 0;
      while (1)
      {
        if ((v82 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6911DB0](v84, v82);
          v86 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v84 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v85 = *(v82 + 8 * v84 + 32);

          v86 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v83 = sub_1C1F52994();
            if (!v83)
            {
              goto LABEL_37;
            }

            goto LABEL_26;
          }
        }

        v87 = sub_1C1E7DD60();
        CalculateExpression.setNeedsEvaluation(rebuild:)(v87 & 1);

        ++v84;
        if (v86 == v83)
        {
          goto LABEL_37;
        }
      }
    }

    v95 = *(v5 + 16);
    v38(v17, v104, v105);
    v41 = *v39;
    v42 = v24;
    if ((*v39)(v17, 1, v24) == 1)
    {
      v43 = *(*v2 + 728);
      v94 = v40;
      v106 = v43();
      v44 = v103;
      v45 = *(v103 + 568);
      sub_1C1F52804();
      swift_getWitnessTable();
      v46 = *(v44 + 560);
      sub_1C1F52664();
      v40 = v94;
      v42 = v24;

      if (v41(v17, 1, v24) != 1)
      {
        (*(v99 + 8))(v17, v105);
      }
    }

    else
    {
      v40[4](v20, v17, v24);
      (v40[7])(v20, 0, 1, v24);
    }

    if (v41(v20, 1, v42) != 1)
    {
      v53 = v40[4];
      v53(v96, v20, v42);
      v20 = v100;
      v54 = v40;
      sub_1C1EB3578(v100);
      v93[1] = v39;
      v94 = v41;
      if (v41(v20, 1, v42) != 1)
      {
        v73 = v97;
        v53(v97, v20, v42);
        v74 = *(v103 + 560);
        v75 = v98;
        v76 = v96;
        sub_1C1F52C84();
        (v54[7])(v75, 0, 1, v42);
        sub_1C1EB3624(v75);
        v77 = v54[1];
        (v77)(v73, v42);
        return (v77)(v76, v42);
      }

      (v40[1])(v96, v42);
      v41 = v94;
    }

    v55 = *(v99 + 8);
    v56 = v105;
    v99 += 8;
    v55(v20, v105);
    v57 = WitnessTable;
    v95(WitnessTable, v104, v56);
    if (v41(v57, 1, v42) == 1)
    {
      v58 = (*(*v2 + 728))();
      v94 = v41;
      v106 = v58;
      v59 = v103;
      v60 = *(v103 + 568);
      sub_1C1F52804();
      swift_getWitnessTable();
      v61 = *(v59 + 560);
      v62 = v102;
      sub_1C1F52664();

      if ((v94)(v57, 1, v42) != 1)
      {
        v55(v57, v56);
      }
    }

    else
    {
      v62 = v102;
      v40[4](v102, v57, v42);
      (v40[7])(v62, 0, 1, v42);
    }

    return sub_1C1EB3624(v62);
  }
}

uint64_t CalculateIndexedDocument.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return CalculateIndexedDocument.init()();
}

uint64_t CalculateIndexedDocument.init()()
{
  v1 = *v0;
  v2 = qword_1EDC30828;
  *(v0 + v2) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v3 = qword_1EDC30830;
  v4 = *(v1 + 552);
  v5 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C1F526F4();
  v7 = sub_1C1E74FE8(v6, v4, v5, *(v1 + 568));

  *(v0 + v3) = v7;
  *(v0 + qword_1EDC30820) = 0;
  (*(*(v4 - 8) + 56))(v0 + *(*v0 + 600), 1, 1, v4);

  return CalculateDocument.init()();
}

uint64_t CalculateIndexedDocument.__allocating_init(expressions:options:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return CalculateIndexedDocument.init(expressions:options:)(a1, a2);
}

uint64_t CalculateIndexedDocument.init(expressions:options:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = qword_1EDC30828;
  *(v2 + v6) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v7 = qword_1EDC30830;
  v8 = *(v5 + 552);
  v9 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v10 = sub_1C1F526F4();
  v11 = sub_1C1E74FE8(v10, v8, v9, *(v5 + 568));

  *(v2 + v7) = v11;
  *(v2 + qword_1EDC30820) = 0;
  (*(*(v8 - 8) + 56))(v2 + *(*v2 + 600), 1, 1, v8);

  return CalculateDocument.init(expressions:options:)(a1, a2);
}

uint64_t CalculateIndexedDocument.__allocating_init(expressions:options:synchronous:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return CalculateIndexedDocument.init(expressions:options:synchronous:)(a1, a2, a3);
}

uint64_t sub_1C1EB49B4()
{
  v1 = *v0;
  v2 = *&v0[qword_1EDC30828];

  v3 = *&v0[qword_1EDC30830];

  v4 = *(*v0 + 600);
  v5 = *(v1 + 552);
  v6 = sub_1C1F528D4();
  v7 = *(*(v6 - 8) + 8);

  return v7(&v0[v4], v6);
}

uint64_t CalculateIndexedDocument.deinit()
{
  v1 = *v0;
  v2 = CalculateDocument.deinit();
  v3 = *(v2 + qword_1EDC30828);

  v4 = *(v2 + qword_1EDC30830);

  v5 = *(*v2 + 600);
  v6 = *(v1 + 552);
  v7 = sub_1C1F528D4();
  (*(*(v7 - 8) + 8))(v2 + v5, v7);
  return v2;
}

uint64_t CalculateIndexedDocument.__deallocating_deinit()
{
  v0 = CalculateIndexedDocument.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1EB4B70(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

unint64_t sub_1C1EB4BE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C1F52034();
  sub_1C1EB62F4(&qword_1EDC2E8F8);
  v5 = sub_1C1F523B4();

  return sub_1C1EB4CC4(a1, v5);
}

unint64_t sub_1C1EB4C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1C1F523B4();

  return sub_1C1EB4E70(a1, v9, a2, a3);
}

unint64_t sub_1C1EB4CC4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C1EB62F4(&qword_1EDC2E8F0);
      v16 = sub_1C1F52414();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C1EB4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1C1F52414();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1C1EB4FF8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
  v43 = a2;
  result = sub_1C1F52BC4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1C1EB62F4(&qword_1EDC2E8F8);
      result = sub_1C1F523B4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1C1EB53C0(int64_t a1, uint64_t a2)
{
  v43 = sub_1C1F52034();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1C1F52964();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1C1EB62F4(&qword_1EDC2E8F8);
      v26 = sub_1C1F523B4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1C1EB56C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C1EB4BE4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C1EB594C();
      goto LABEL_7;
    }

    sub_1C1EB4FF8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1C1EB4BE4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C1EB5894(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1C1EB5894(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1F52034();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_1C1EB594C()
{
  v1 = v0;
  v34 = sub_1C1F52034();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
  v4 = *v0;
  v5 = sub_1C1F52BB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C1EB5BCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1EB5C34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_1C1EB23B0() & 1;
}

uint64_t sub_1C1EB5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  if (sub_1C1F52734())
  {
    sub_1C1F52A44();
    v16 = sub_1C1F52A34();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1C1F52734();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1C1F52714();
    sub_1C1F526D4();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1C1F52AB4();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_1C1F523B4();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1C1F52414();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C1EB6024()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[2];
  return sub_1C1F52404() & 1;
}

uint64_t sub_1C1EB605C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[2];
  return sub_1C1F523F4() & 1;
}

uint64_t sub_1C1EB60AC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1EB62F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1F52034();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1EB6338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21248, &qword_1C1F58400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalculateExpression.ClearOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB6450(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, &v86);
  v3 = v86;
  if (!v86)
  {
    return 0;
  }

  v4 = &v86;
  v5 = v87;
  v6 = *(*v86 + 568);
  sub_1C1EB74E0(v86);

  if (((v6)(v7) & 1) == 0 && ((*(*v3 + 576))() & 1) == 0)
  {
    sub_1C1EB77EC(v3, v5, v78);
    sub_1C1E98278(v3);
    if ((v78[0] & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v8 = v84;
    v9 = v85;
    if (v85 < v84)
    {
      __break(1u);
    }

    else
    {
      v2 = v85 + 1;
      if (!__OFADD__(v85, 1))
      {
        v10 = v82;
        v6 = v83;
        if (sub_1C1EB7558(v3, v84, v85 + 1))
        {
          goto LABEL_10;
        }

        v76 = v10;
        v75 = *(*v3 + 416);
        v12 = (v75)(v8);
        if (v12)
        {
          v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v13 != 53)
          {
            LOBYTE(v86) = v13;
            v77[0] = 15;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              v14 = (v75)(v9);
              if (v14)
              {
                v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                if (v15 != 53)
                {
                  LOBYTE(v86) = v15;
                  v77[0] = 16;
                  if (sub_1C1F52414())
                  {
                    if (__OFSUB__(v9, 1))
                    {
LABEL_115:
                      __break(1u);
                      goto LABEL_116;
                    }

                    sub_1C1EB77EC(v3, v9 - 1, &v86);
                    if ((v86 & 1) == 0)
                    {
                      goto LABEL_10;
                    }

                    if ((v86 & 0x100) != 0 && v8 >= v87)
                    {
                      v71 = v90;
                      v70 = v88 ^ v89;
                      if ((v88 ^ v89))
                      {
                        v16 = (v75)(v76);
                        if (v16)
                        {
                          v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                          if (v17 != 53)
                          {
                            v77[0] = v17;
                            if (sub_1C1F52414())
                            {
                              v18 = (*v3 + 408);
                              v8 = *v18;
                              v19 = (*v18)(v77);
                              sub_1C1E98338(v9);

                              v19(v77, 0);
                              v6 = v76 + 1;
                              if (!__OFADD__(v76, 1))
                              {
                                if (v71 >= v6)
                                {
                                  v20 = v8;
                                  v21 = (v8)(v77);
                                  sub_1C1E98F60(v6, v71);
                                  v21(v77, 0);
                                  type metadata accessor for CalculateExpression.RichToken();
                                  v77[0] = 3;
                                  v22 = sub_1C1E7DD60();
                                  v6 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v22 & 1);
                                  v23 = v20(v77);
                                  v25 = v24;
                                  v8 = *v24;
                                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                                  *v25 = v8;
                                  if (!isUniquelyReferenced_nonNull_bridgeObject || v8 < 0 || (v8 & 0x4000000000000000) != 0)
                                  {
                                    v8 = sub_1C1E98444(v8);
                                    *v25 = v8;
                                  }

                                  if ((v76 & 0x8000000000000000) == 0)
                                  {
                                    if (v76 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                    {
                                      v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v76 + 0x20);
                                      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v76 + 0x20) = v6;

                                      v23(v77, 0);
LABEL_71:

                                      sub_1C1E98278(v3);
                                      return 1;
                                    }

                                    goto LABEL_130;
                                  }

LABEL_129:
                                  __break(1u);
LABEL_130:
                                  __break(1u);
                                  goto LABEL_131;
                                }

LABEL_128:
                                __break(1u);
                                goto LABEL_129;
                              }

LABEL_127:
                              __break(1u);
                              goto LABEL_128;
                            }
                          }
                        }

                        if (v6)
                        {
                          v48 = (*v3 + 408);
                          v6 = *v48;
                          v49 = (*v48)(v77);
                          sub_1C1E98338(v9);

                          v49(v77, 0);
                          v8 = v76 + 1;
                          if (!__OFADD__(v76, 1))
                          {
                            if (v71 >= v8)
                            {
                              v50 = (v6)(v77);
                              sub_1C1E98F60(v8, v71);
                              v50(v77, 0);
                              v51 = (v75)(v76);
                              if (v51)
                              {
                                v52 = *(v51 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                                v77[0] = v52;
                                if (CalculateExpression.TokenType.isBasicOperator.getter())
                                {
                                  goto LABEL_71;
                                }
                              }

                              if (v76 < 0)
                              {
                                goto LABEL_71;
                              }

                              type metadata accessor for CalculateExpression.RichToken();
                              v77[0] = 3;
                              v53 = sub_1C1E7DD60();
                              v9 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v53 & 1);
                              v6 = (v6)(v77);
                              if (!(*v54 >> 62))
                              {
                                if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
                                {
                                  goto LABEL_80;
                                }

                                goto LABEL_125;
                              }

LABEL_124:
                              if (sub_1C1F52994() >= v8)
                              {
LABEL_80:
                                if ((v8 & 0x8000000000000000) == 0)
                                {
                                  v55 = v8;
                                  v56 = v8;
LABEL_98:
                                  sub_1C1E98664(v55, v56, v9);
                                  goto LABEL_49;
                                }

LABEL_126:
                                __break(1u);
                                goto LABEL_127;
                              }

LABEL_125:
                              __break(1u);
                              goto LABEL_126;
                            }

LABEL_123:
                            __break(1u);
                            goto LABEL_124;
                          }

LABEL_122:
                          __break(1u);
                          goto LABEL_123;
                        }

                        v57 = (v75)(v76);
                        if (v57)
                        {
                          v58 = *(v57 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                          if (v58 != 53)
                          {
                            v77[0] = v58;
                            if (sub_1C1F52414())
                            {
                              v59 = (*v3 + 408);
                              v60 = *v59;
                              v6 = (*v59)(v77);
                              sub_1C1E98338(v9);

                              (v6)(v77, 0);
                              if (v71 >= v76)
                              {
                                v61 = v60(v77);
                                sub_1C1E98F60(v76, v71);
                                v61(v77, 0);
                                type metadata accessor for CalculateExpression.RichToken();
                                v77[0] = 4;
                                v62 = sub_1C1E7DD60();
                                v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v62 & 1);
                                v6 = v60(v77);
                                if (!(*v63 >> 62))
                                {
                                  result = *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  goto LABEL_88;
                                }

LABEL_132:
                                result = sub_1C1F52994();
LABEL_88:
                                if (result < v76)
                                {
                                  __break(1u);
                                }

                                else if ((v76 & 0x8000000000000000) == 0)
                                {
                                  sub_1C1E98664(v76, v76, v8);
                                  goto LABEL_49;
                                }

                                __break(1u);
                                return result;
                              }

LABEL_131:
                              __break(1u);
                              goto LABEL_132;
                            }
                          }
                        }
                      }

                      v64 = (*v3 + 408);
                      v65 = *v64;
                      v6 = (*v64)(v77);
                      sub_1C1E98338(v9);

                      (v6)(v77, 0);
                      v9 = v71;
                      if (v71 >= v8)
                      {
                        v66 = v65(v77);
                        v75 = v8;
                        sub_1C1E98F60(v8, v71);
                        v66(v77, 0);
                        if ((v70 & 1) == 0)
                        {
                          goto LABEL_71;
                        }

                        type metadata accessor for CalculateExpression.RichToken();
                        v77[0] = 4;
                        v67 = sub_1C1E7DD60();
                        v9 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v67 & 1);
                        v6 = v65(v77);
                        if (!(*v68 >> 62))
                        {
                          v69 = *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_95:
                          if (v69 < v75)
                          {
                            __break(1u);
                          }

                          else if ((v75 & 0x8000000000000000) == 0)
                          {
                            v55 = v75;
                            v56 = v75;
                            goto LABEL_98;
                          }

                          __break(1u);
                          goto LABEL_122;
                        }

LABEL_119:
                        v69 = sub_1C1F52994();
                        goto LABEL_95;
                      }

LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }
                  }
                }
              }
            }
          }
        }

        if (v78[1])
        {
          v28 = v80;
          v9 = v81;
          v74 = v79;
          v29 = (v75)();
          if (!v29 || (v30 = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v30 == 53) || (v77[0] = v30, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
          {
            if (v6)
            {
              if (v28)
              {
                v6 = v74 + 1;
                if (!__OFADD__(v74, 1))
                {
                  if (v8 >= v6)
                  {
                    v72 = *(*v3 + 408);
                    v38 = v72(v77);
                    v76 = v74 + 1;
                    sub_1C1E98F60(v6, v8);
                    v38(v77, 0);
                    v39 = (v75)(v74);
                    if (v39)
                    {
                      v40 = *(v39 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                      v77[0] = v40;
                      if (CalculateExpression.TokenType.isBasicOperator.getter())
                      {
                        goto LABEL_71;
                      }
                    }

                    if (v74 < 0)
                    {
                      goto LABEL_71;
                    }

                    type metadata accessor for CalculateExpression.RichToken();
                    v77[0] = 3;
                    v41 = sub_1C1E7DD60();
                    v9 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v41 & 1);
                    v8 = v72(v77);
                    if (!(*v42 >> 62))
                    {
                      v43 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
                      if (v43 < v76)
                      {
                        __break(1u);
                      }

                      else if ((v76 & 0x8000000000000000) == 0)
                      {
                        sub_1C1E98664(v76, v76, v9);

                        (v8)(v77, 0);
                        goto LABEL_71;
                      }

                      __break(1u);
                      goto LABEL_115;
                    }

LABEL_112:
                    v43 = sub_1C1F52994();
                    goto LABEL_59;
                  }

LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

LABEL_110:
                __break(1u);
                goto LABEL_111;
              }

              v44 = (v75)(v74);
              if (v44)
              {
                v45 = *(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                if (v45 != 53)
                {
                  v77[0] = v45;
                  sub_1C1E9019C();
                  if (sub_1C1F52414())
                  {
                    v6 = v76 + 1;
                    if (!__OFADD__(v76, 1))
                    {
                      if (v6 >= v74)
                      {
                        v46 = (*(*v3 + 408))(v77);
                        sub_1C1E98F60(v74, v6);
                        v46(v77, 0);
                        goto LABEL_71;
                      }

                      goto LABEL_117;
                    }

LABEL_116:
                    __break(1u);
LABEL_117:
                    __break(1u);
                    goto LABEL_118;
                  }
                }
              }
            }

            v6 = v76 + 1;
            if (!__OFADD__(v76, 1))
            {
              if (v6 >= v9)
              {
                v47 = (*(*v3 + 408))(v77);
                sub_1C1E98F60(v9, v6);
                v47(v77, 0);
                goto LABEL_71;
              }

              goto LABEL_109;
            }

LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }
        }

        v9 = type metadata accessor for CalculateExpression.RichToken();
        v77[0] = 16;
        v31 = sub_1C1E7DD60();
        v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v31 & 1);
        v73 = *(*v3 + 408);
        v6 = v73(v77);
        if (!(*v32 >> 62))
        {
          if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2)
          {
            goto LABEL_43;
          }

          goto LABEL_102;
        }

LABEL_101:
        if (sub_1C1F52994() >= v2)
        {
LABEL_43:
          v75 = v8;
          if ((v2 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v2, v2, v4);

            (v6)(v77, 0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
            v2 = swift_allocObject();
            *(v2 + 16) = xmmword_1C1F56430;
            v77[0] = 1;
            v33 = sub_1C1E7DD60();
            *(v2 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(49, 0xE100000000000000, v77, v33 & 1);
            v77[0] = 6;
            v34 = sub_1C1E7DD60();
            *(v2 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v34 & 1);
            v8 = v73;
            v6 = v73(v77);
            sub_1C1E9B764(v75, v75, v2);

            (v6)(v77, 0);
            v77[0] = 15;
            v35 = sub_1C1E7DD60();
            v36 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v77, v35 & 1);
            v9 = v76 + 1;
            if (!__OFADD__(v76, 1))
            {
              v2 = v36;
              v6 = v73(v77);
              if (!(*v37 >> 62))
              {
                if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
                {
                  goto LABEL_47;
                }

                goto LABEL_106;
              }

LABEL_105:
              if (sub_1C1F52994() >= v9)
              {
LABEL_47:
                if ((v9 & 0x8000000000000000) == 0)
                {
                  sub_1C1E98664(v9, v9, v2);
LABEL_49:

                  (v6)(v77, 0);
                  goto LABEL_71;
                }

                goto LABEL_107;
              }

LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  sub_1C1E98278(v3);
LABEL_11:
  sub_1C1E98278(v3);
  return 0;
}

uint64_t sub_1C1EB7428(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 464))() & 1) != 0 || ((*(*v1 + 568))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 576))() & 1;
  }
}

uint64_t sub_1C1EB74E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CalculateExpression.ReciprocalOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB7558(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_31;
  }

  v5 = *(*result + 416);
  do
  {
    v6 = v5(a2);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 == 53)
    {
      goto LABEL_13;
    }

    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = v5(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v9 == 53)
    {
      goto LABEL_13;
    }

    result = sub_1C1F52414();
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    ++a2;
    v10 = __OFSUB__(v3--, 1);
  }

  while (!v10);
  __break(1u);
LABEL_13:
  v11 = v5(a2);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v12 != 53)
    {
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v10 = __OFADD__(a2++, 1);
        if (v10)
        {
          goto LABEL_32;
        }
      }
    }
  }

  if (a2 != v3)
  {
    return 0;
  }

  v13 = v5(v3);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v19 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v18 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v19, &v18) & 1) == 0)
  {

    return 0;
  }

  if ((*(*v14 + 232))() != 49 || v15 != 0xE100000000000000)
  {
    v17 = sub_1C1F52C64();

    return (v17 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1C1EB77EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  result = sub_1C1EBA588(&v56);
  v51 = v56;
  v8 = v56 - 1;
  if (__OFSUB__(v56, 1))
  {
    __break(1u);
    goto LABEL_75;
  }

  v9 = (*a1 + 416);
  v10 = *v9;
  v11 = (*v9)(v56 - 1);
  v12 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  if (v11)
  {
    v13 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v13 != 53)
    {
      LOBYTE(v55) = v13;
      v54 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v8--, 1);
        if (v14)
        {
          goto LABEL_76;
        }
      }
    }
  }

  v15 = v10(v8);
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v16 == 53)
  {
    goto LABEL_27;
  }

  LOBYTE(v55) = v16;
  v54 = 4;
  v3 = sub_1C1E9019C();
  result = sub_1C1F52414();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v18 = v10(v8 - 1);
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v19 != 53)
    {
      LOBYTE(v55) = v19;
      v54 = 17;
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v17, 1);
        v17 = v8 - 2;
        if (v14)
        {
          goto LABEL_82;
        }
      }
    }
  }

  if (v10(v17))
  {

    v20 = v10(v17);
    if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v21 == 53) || (LOBYTE(v55) = v21, v54 = 15, (sub_1C1F52414() & 1) == 0))
    {
      v22 = v10(v17);
      if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , LOBYTE(v55) = v23, (CalculateExpression.TokenType.isOperator.getter() & 1) == 0))
      {
LABEL_27:
        v49 = 0;
        v26 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          goto LABEL_28;
        }

        goto LABEL_70;
      }
    }
  }

  v24 = v10(v17);
  if (!v24 || (v25 = *(v24 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v25 == 53) || (LOBYTE(v55) = v25, v54 = 17, result = sub_1C1F52414(), (result & 1) == 0))
  {
    v49 = 1;
    v8 = v17;
    v14 = __OFSUB__(v17, 1);
    v26 = v17 - 1;
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v8 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_85:
    __break(1u);
    return result;
  }

  v49 = 1;
  v26 = v17 - 2;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_70;
  }

LABEL_28:
  v55 = v26;
  result = sub_1C1EBA588(&v55);
  v3 = v55 - 1;
  if (__OFSUB__(v55, 1))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v50 = v55;
  v27 = v10(v55 - 1);
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v28 != 53)
    {
      v54 = v28;
      v53 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v3--, 1);
        if (v14)
        {
          goto LABEL_78;
        }
      }
    }
  }

  v29 = v10(v3);
  v48 = a2;
  if (!v29 || (v30 = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v30 == 53) || (v54 = v30, v53 = 4, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v47 = v3;
    v39 = 0;
    goto LABEL_53;
  }

  v12 = (v3 - 1);
  if (__OFSUB__(v3, 1))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v31 = v10(v3 - 1);
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v32 != 53)
    {
      v54 = v32;
      v53 = 17;
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v12, 1);
        v12 = (v3 - 2);
        if (v14)
        {
          goto LABEL_83;
        }
      }
    }
  }

  if (!v10(v12))
  {
    goto LABEL_47;
  }

  v33 = v10(v12);
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v34 != 53)
    {
      v54 = v34;
      v53 = 15;
      if (sub_1C1F52414())
      {
        goto LABEL_47;
      }
    }
  }

  v35 = v10(v12);
  if (!v35)
  {
LABEL_71:
    if (v49)
    {
      goto LABEL_47;
    }

LABEL_72:
    v47 = v3;
    v39 = 0;
    goto LABEL_53;
  }

  v36 = *(v35 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v54 = v36;
  if (((v49 | CalculateExpression.TokenType.isOperator.getter()) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_47:
  v37 = v10(v12);
  if (v37 && (v38 = *(v37 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v38 != 53) && (v54 = v38, v53 = 17, result = sub_1C1F52414(), (result & 1) != 0))
  {
    v47 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v39 = 1;
  }

  else
  {
    v39 = 1;
    v47 = v12;
  }

LABEL_53:
  v40 = v10(v8);
  if (!v40 || (v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v41 == 53) || (v54 = v41, v53 = 6, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v42 = v8;
    v43 = 0;
    goto LABEL_60;
  }

  if (v26 < v50)
  {
    goto LABEL_80;
  }

  if (__OFADD__(v26, 1))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v42 = v8;
  v43 = sub_1C1EB7558(a1, v50, v26 + 1);
LABEL_60:
  result = v10(v51);
  if (result)
  {
    v44 = result;
    v45 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v54 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v53 = *(v44 + v45), v52 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v53, &v52)))
    {

      v46 = 1;
    }

    else
    {
      v54 = *(v44 + v45);
      v53 = 10;
      v46 = static CalculateExpression.TokenType.== infix(_:_:)(&v54, &v53);
    }
  }

  else
  {
    v46 = 0;
  }

  *a3 = v46 & 1;
  *(a3 + 1) = v43 & 1;
  *(a3 + 8) = v47;
  *(a3 + 16) = v39;
  *(a3 + 24) = v50;
  *(a3 + 32) = v26;
  *(a3 + 40) = v42;
  *(a3 + 48) = v49;
  *(a3 + 56) = v51;
  *(a3 + 64) = v48;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1EB7F7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EB7FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1EB8040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EB8094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EB80E8@<X0>(char *a1@<X8>)
{
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = 3;
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0xE000000000000000;
  }

  if (!v6)
  {
    result = sub_1C1F52C64();
    if (result)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1EB813C(ValueMetadata *a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB8CEC, v67);
  v5 = v67[0];
  if (!v67[0])
  {
    return 0;
  }

  v7 = v67[1];
  v6 = v67[2];
  v8 = v67[3];
  v9 = *(*v67[0] + 416);

  v10 = v9(v7);
  if (!v10)
  {

    v14 = v5;
LABEL_51:
    sub_1C1E98278(v14);
    return 0;
  }

  v11 = v10;
  v62 = a1;
  v63 = v6;
  v12 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v13 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v67[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v66) = 18;
  sub_1C1E9019C();
  if (sub_1C1F52414())
  {

    sub_1C1E98278(v5);

    return 0;
  }

  v66 = v7;
  LOBYTE(v67[0]) = *(v11 + v13);
  v15 = v67;
  v61 = v11;
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    v11 = v7;
    goto LABEL_9;
  }

  v65 = *(v11 + v13);
  v64 = 7;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v65, &v64))
  {
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_110;
    }

    v19 = v9(v7 - 1);
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v65 = v20;
      v15 = &v65;
      v11 = v7;
      if (CalculateExpression.TokenType.isOperand.getter())
      {
LABEL_9:
        while (1)
        {
          v13 = v11;
          v16 = __OFSUB__(v11--, 1);
          if (v16)
          {
            break;
          }

          v17 = v9(v11);
          if (v17)
          {
            v18 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v67[0]) = v18;
            v15 = v67;
            if (CalculateExpression.TokenType.isOperand.getter())
            {
              continue;
            }
          }

          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_99;
      }
    }
  }

  LOBYTE(v67[0]) = *(v61 + v13);
  v65 = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v67, &v65) & 1) == 0)
  {
    LOBYTE(v67[0]) = *(v61 + v13);
    v65 = 7;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v67, &v65) & 1) == 0)
    {
      LOBYTE(v67[0]) = *(v61 + v13);
      v65 = 8;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(v67, &v65) & 1) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  sub_1C1EBA588(&v66);
  v13 = v66;
  if (v66 < 0)
  {
    goto LABEL_50;
  }

LABEL_21:
  v15 = v62;
  if ((*(v62->Kind + 224))())
  {
    goto LABEL_22;
  }

  v11 = v13 - 1;
  v15 = v5;
  v21 = v9(v13 - 1);
  if (v21)
  {
    v15 = *(v21 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v15 != 53)
    {
      LOBYTE(v67[0]) = v15;
      v65 = 4;
      v15 = &type metadata for CalculateExpression.TokenType;
      if (sub_1C1F52414())
      {
        if (v13 == 1)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_31;
        }

        result = v13 - 2;
        if (__OFSUB__(v13, 2))
        {
LABEL_115:
          __break(1u);
          return result;
        }

        v15 = v5;
        v23 = v9(result);
        if (v23)
        {
          v12 = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          LOBYTE(v67[0]) = v12;
          v15 = v67;
          if (CalculateExpression.TokenType.isOperator.getter())
          {
            --v13;
          }
        }
      }
    }
  }

LABEL_31:
  v60 = v8;
  if (v7 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v8 = 0;
  v12 = v13;
  while (1)
  {
    v15 = v5;
    v24 = v9(v12);
    if (v24)
    {
      v15 = v24;
      v11 = (*(*v24 + 352))(v24);

      if (v11 > v8)
      {
        v8 = v11;
      }
    }

    else if (v8 <= 0)
    {
      v8 = 0;
    }

    if (v7 == v12)
    {
      break;
    }

    v16 = __OFADD__(v12++, 1);
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  v25 = v8 + v63;
  if (__OFADD__(v63, v8))
  {
    goto LABEL_100;
  }

  v12 = (v25 + 1);
  v15 = v60;
  if (__OFADD__(v25, 1))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v12 >= *sub_1C1ED528C())
  {
LABEL_50:

    v14 = v5;
    goto LABEL_51;
  }

  v12 = type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v67[0]) = 7;
  v26 = sub_1C1E7DD60();
  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v67, v26 & 1);
  v9 = *(v3 + 16);
  v27 = *(v3 + 24);
  v57 = v27;
  if (v9 == 101 && v27 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    LOBYTE(v67[0]) = 13;
    v28 = sub_1C1E7DD60() & 1;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    if (!v9 && v27 == 0xE000000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      v31 = 18;
    }

    else
    {
      v31 = 1;
    }

    LOBYTE(v67[0]) = v31;

    v28 = sub_1C1E7DD60() & 1;
    v29 = v9;
    v30 = v27;
  }

  v59 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v29, v30, v67, v28);
  v15 = v5;
  v32 = (*(*v5 + 392))();
  v3 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_102;
  }

  v15 = v32;
  v11 = v32 >> 62;
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
    {
      goto LABEL_64;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_103:
  if (sub_1C1F52994() < v13)
  {
    goto LABEL_104;
  }

LABEL_64:
  if (v13 < 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v11)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v3)
  {
    goto LABEL_106;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    goto LABEL_73;
  }

  if (v3 < v13)
  {
    goto LABEL_111;
  }

  if (v13 == v3)
  {
LABEL_73:

    goto LABEL_77;
  }

  if (v13 >= v3)
  {
    __break(1u);
    goto LABEL_115;
  }

  v33 = v13;
  do
  {
    v34 = v33 + 1;
    sub_1C1F52AA4();
    v33 = v34;
  }

  while (v3 != v34);
LABEL_77:
  v56 = v9;
  v58 = v8;

  if (v11)
  {
    v12 = sub_1C1F52BA4();
    v8 = v35;
    v9 = v36;
    v11 = v37;
  }

  else
  {
    v12 = v15 & 0xFFFFFFFFFFFFFF8;
    v8 = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
    v11 = (2 * v3) | 1;
    v9 = v13;
  }

  if (v11)
  {
    sub_1C1F52C74();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v40 + 16);

    if (!__OFSUB__(v11 >> 1, v9))
    {
      if (v41 == (v11 >> 1) - v9)
      {
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v39)
        {
          goto LABEL_89;
        }

        v39 = MEMORY[0x1E69E7CC0];
        goto LABEL_88;
      }

      goto LABEL_113;
    }

    goto LABEL_112;
  }

  while (1)
  {
    sub_1C1EAFAA4(v12, v8, v9, v11);
    v39 = v38;
LABEL_88:
    swift_unknownObjectRelease();
LABEL_89:
    type metadata accessor for CalculateExpression.RichExpression();
    v42 = *(v62->Kind + 176);
    v42();
    v12 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v39);
    LOBYTE(v67[0]) = 1;
    (*(*v12 + 280))(v67);
    v43 = *(v58->Kind + 312);

    v43(v44);
    v45 = (*v5 + 408);
    v55 = *v45;
    v46 = (*v45)(v67);
    sub_1C1E98F60(v13, v3);
    v46(v67, 0);
    if ((v56 || v57 != 0xE000000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1C1F563C0;
    *(v47 + 32) = v59;

    (v42)(v48);
    v11 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v47);
    v9 = v58;
    v49 = *(v58->Kind + 288);

    v49(v50);
    LOBYTE(v67[0]) = 3;
    (*(*v11 + 280))(v67);

    v8 = v55(v67);
    if (*v51 >> 62)
    {
LABEL_108:
      v52 = sub_1C1F52994();
    }

    else
    {
      v52 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v59;
    if (v52 >= v13)
    {
      sub_1C1E98664(v13, v13, v9);

      (v8)(v67, 0);

      goto LABEL_97;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    swift_unknownObjectRelease_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C1F56430;
  *(v53 + 32) = v59;
  *(v53 + 40) = v58;

  v54 = v55(v67);
  sub_1C1E9B764(v13, v13, v53);

  v54(v67, 0);
  (*(*v12 + 304))(0);
LABEL_97:

  sub_1C1E98278(v5);
  return 1;
}

uint64_t sub_1C1EB8CEC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 464))())
  {
    (*(*v1 + 272))(&v4);
    sub_1C1EB1200();
    v2 = sub_1C1F52414() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t CalculateExpression.ExponentialOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.ExponentialOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C1EB8E74(uint64_t a1)
{
  v2 = *(*a1 + 176);
  result = v2();
  if (result)
  {
    v4 = CalculateExpression.format.getter();

    if (v4 != 2)
    {
      return 0;
    }

    if (!(v2)(v5))
    {
      return 1;
    }

    v6 = CalculateExpression.postfixStack.getter();

    if (v6 >> 62)
    {
      v7 = sub_1C1F52994();
      if (v7)
      {
LABEL_6:
        v8 = __OFSUB__(v7, 1);
        result = v7 - 1;
        if (v8)
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_22;
          }

          if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v9 = *(v6 + 8 * result + 32);

LABEL_11:

          v10 = CalculateExpression.rich.getter();
          v11 = (*(*v10 + 392))(v10);

          if (!(v11 >> 62))
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

            v13 = (*a1 + 408);
            v14 = *v13;
            v15 = (*v13)(v19);
            sub_1C1E98C40(v12);
            v15(v19, 0);
            v16 = *CalculateExpression.rich.getter();
            v17 = (*(v16 + 392))();

            v18 = v14(v19);
            sub_1C1E9B764(0, 0, v17);

            v18(v19, 0);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(1);

            return 1;
          }

LABEL_22:
          v12 = sub_1C1F52994();
          goto LABEL_13;
        }

        MEMORY[0x1C6911DB0](result, v6);
        goto LABEL_11;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.RollInOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB9210()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1EB9260(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1EB92F0;
}

void sub_1C1EB92F0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C1EB9370()
{
  swift_allocObject();
  v0 = sub_1C1EB94E4();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C1EB93BC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 104))();
  v5 = (*(*a2 + 104))();
  if (!v4)
  {
    if (!v5)
    {
      v8 = 1;
      return v8 & 1;
    }

LABEL_6:
    swift_unknownObjectRelease();
    v8 = 0;
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  v8 = sub_1C1F52414();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_1C1EB94A0()
{
  MEMORY[0x1C6912D40](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1EB94E4()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t *sub_1C1EB953C()
{
  if (qword_1EDC2FA00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA08;
}

uint64_t *sub_1C1EB958C()
{
  if (qword_1EDC2F9F0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9F8;
}

uint64_t *sub_1C1EB95DC()
{
  if (qword_1EDC2F9E0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9E8;
}

uint64_t *sub_1C1EB962C()
{
  if (qword_1EDC2F9D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9D8;
}

uint64_t *sub_1C1EB967C()
{
  if (qword_1EDC2F9C0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9C8;
}

uint64_t *sub_1C1EB96CC()
{
  if (qword_1EDC2F9B0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9B8;
}

uint64_t *sub_1C1EB971C()
{
  if (qword_1EDC2F930 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F938;
}

uint64_t *sub_1C1EB976C()
{
  if (qword_1EDC2F920 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F928;
}

uint64_t *sub_1C1EB97BC()
{
  if (qword_1EDC2FBA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBA8;
}

uint64_t *sub_1C1EB980C()
{
  if (qword_1EDC2FBD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBD8;
}

uint64_t *sub_1C1EB985C()
{
  if (qword_1EDC2FB70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB78;
}

uint64_t *sub_1C1EB98AC()
{
  if (qword_1EDC2FB50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB58;
}

uint64_t *sub_1C1EB98FC()
{
  if (qword_1EDC2FB90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB98;
}

uint64_t *sub_1C1EB994C()
{
  if (qword_1EDC2F870 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F878;
}

uint64_t *sub_1C1EB999C()
{
  if (qword_1EDC2FDA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FDA8;
}

uint64_t *sub_1C1EB99EC()
{
  if (qword_1EDC2FD00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD08;
}

uint64_t *sub_1C1EB9A3C()
{
  if (qword_1EDC2FC80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC88;
}

uint64_t *sub_1C1EB9A8C()
{
  if (qword_1EDC2FDC0 != -1)
  {
    swift_once();
  }

  return qword_1EDC2FDC8;
}

uint64_t *sub_1C1EB9ADC()
{
  if (qword_1EDC2FD50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD58;
}

uint64_t *sub_1C1EB9B2C()
{
  if (qword_1EDC2FCA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCA8;
}

uint64_t *sub_1C1EB9B7C()
{
  if (qword_1EDC2FC50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC58;
}

uint64_t *sub_1C1EB9BCC()
{
  if (qword_1EDC2F8D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8D8;
}

uint64_t *sub_1C1EB9C1C()
{
  if (qword_1EDC2F890 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F898;
}

uint64_t *sub_1C1EB9C6C()
{
  if (qword_1EDC2FB60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB68;
}

uint64_t *sub_1C1EB9CBC()
{
  if (qword_1EDC2FB80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB88;
}

uint64_t sub_1C1EB9D88(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  *a4 = *a3;
}

uint64_t *sub_1C1EB9E0C()
{
  if (qword_1EDC2FB30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB38;
}

uint64_t *sub_1C1EB9E5C()
{
  if (qword_1EDC2FB00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB08;
}

uint64_t *sub_1C1EB9EAC()
{
  if (qword_1EDC2F960 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F968;
}

uint64_t *sub_1C1EB9EFC()
{
  if (qword_1EDC2F900 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F908;
}

uint64_t *sub_1C1EB9F4C()
{
  if (qword_1EDC2FAE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAE8;
}

uint64_t *sub_1C1EB9F9C()
{
  if (qword_1EDC2FD60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD68;
}

uint64_t CalculateExpression.Operation.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA07C()
{
  (*(*v0 + 80))(&var1);
  v1 = var1;
  if (!var1)
  {
    v1 = 0;
  }

  if (var1 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t CalculateExpression.Operation.hashValue.getter()
{
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v0);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA190()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA204@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CalculateExpression.Operation();
  result = sub_1C1F52A74();
  *a1 = result;
  return result;
}

uint64_t sub_1C1EBA244(unint64_t a1, uint64_t a2)
{
  v8 = *(a2 + 8);
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a1;
  v2 = *a2;
  v21 = v8 - 1;
  v10 = (*(*v2 + 416))(v8 - 1);
  if (!v10 || (v11 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v11 == 53) || (v20[0] = v11, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
LABEL_7:
    sub_1C1EBA588(&v21);
    v9 = type metadata accessor for CalculateExpression.RichToken();
    v20[0] = 16;
    v13 = sub_1C1E7DD60();
    v14 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v20, v13 & 1);
    v5 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      v4 = v14;
      v15 = (*v2 + 408);
      v7 = *v15;
      v6 = (*v15)(v20);
      if (!(*v16 >> 62))
      {
        if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }

LABEL_21:
      if (sub_1C1F52994() >= v5)
      {
LABEL_10:
        if ((v5 & 0x8000000000000000) == 0)
        {
          sub_1C1E98664(v5, v5, v4);

          v6(v20, 0);
          v5 = v8 + 2;
          if (!__OFADD__(v8, 2))
          {
            v4 = v7(v20);
            if (!(*v17 >> 62))
            {
              if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5)
              {
                goto LABEL_14;
              }

              goto LABEL_26;
            }

LABEL_25:
            if (sub_1C1F52994() >= v5)
            {
LABEL_14:
              if ((v5 & 0x8000000000000000) == 0)
              {

                sub_1C1E98664(v5, v5, v3);

                v4(v20, 0);
                v20[0] = 15;
                v18 = sub_1C1E7DD60();
                v3 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v20, v18 & 1);
                v9 = v21;
                v2 = v7(v20);
                if (!(*v19 >> 62))
                {
                  result = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (result >= v9)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_29;
                }

LABEL_28:
                result = sub_1C1F52994();
                if (result >= v9)
                {
LABEL_17:
                  if ((v9 & 0x8000000000000000) == 0)
                  {
                    sub_1C1E98664(v9, v9, v3);

                    return v2(v20, 0);
                  }

                  goto LABEL_30;
                }

LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFSUB__(v9, 1))
  {
    v21 = v8 - 2;
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C1EBA588(uint64_t *a1)
{
  v3 = *a1;
  v4 = (*v1 + 416);
  v5 = *v4;
  v6 = (*v4)(*a1);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 != 53)
    {
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        v8 = v5(v3);
        if (!v8 || (v9 = (*(*v8 + 280))(), v10 = , !v9) || (v11 = (*(*v9 + 576))(v10), , (v11 & 1) == 0))
        {
          result = v5(v3);
          if (!result)
          {
            goto LABEL_11;
          }

          v13 = (*(*result + 280))();

          if (!v13 || ((*(*v13 + 272))(&v24, result), result = , v24 == 4) || (BYTE2(v24) = v24, BYTE1(v24) = 3, sub_1C1EB1200(), result = sub_1C1F52414(), (result & 1) == 0))
          {
LABEL_11:
            v14 = __OFSUB__(v3--, 1);
            if (v14)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            *a1 = v3;
            v15 = v5(v3);
            if (v15)
            {
              v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

              if (v16 != 53)
              {
                BYTE4(v24) = v16;
                BYTE3(v24) = 17;
                result = sub_1C1F52414();
                if (result)
                {
                  v14 = __OFSUB__(v3--, 1);
                  if (v14)
                  {
LABEL_39:
                    __break(1u);
                    return result;
                  }

                  *a1 = v3;
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = v5(v3);
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v18 != 53)
    {
      BYTE6(v24) = v18;
      BYTE5(v24) = 8;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v3--, 1);
        if (v14)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        *a1 = v3;
        v19 = v5(v3);
        if (v19)
        {
          v20 = *(v19 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v20 != 53)
          {
            v25 = v20;
            HIBYTE(v24) = 17;
            result = sub_1C1F52414();
            if (result)
            {
              v14 = __OFSUB__(v3--, 1);
              if (v14)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              *a1 = v3;
            }
          }
        }
      }
    }
  }

  result = v5(v3);
  if (!result)
  {
    return result;
  }

  v21 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v21 == 53)
  {
    return result;
  }

  v27 = v21;
  v26 = 16;
  sub_1C1E9019C();
  result = sub_1C1F52414();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = sub_1C1EBAA5C(a1);
  v22 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    goto LABEL_36;
  }

  result = v5(*a1 - 1);
  if (result)
  {
    v23 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v23 != 53)
    {
      v29 = v23;
      v28 = 10;
      result = sub_1C1F52414();
      if (result)
      {
        *a1 = v22;
      }
    }
  }

  return result;
}

uint64_t sub_1C1EBAA5C(uint64_t result)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  v4 = *(*v1 + 392);
  for (i = *result + 4; ; --i)
  {
    v7 = i - 4;
    result = v4();
    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1C6911DB0](i - 4, result);
LABEL_8:

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v15 = v9;
    v14 = 16;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = v4();
      if ((result & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6911DB0](i - 4, result);
      }

      else
      {
        if (v7 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(result + 8 * i);
      }

      v11 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v13 = v11;
      v12 = 15;
      result = static CalculateExpression.TokenType.== infix(_:_:)(&v13, &v12);
      if (result)
      {
        v6 = __OFSUB__(v3--, 1);
        if (v6)
        {
          goto LABEL_22;
        }

        if (v3 < 1)
        {
          return result;
        }
      }
    }

    *v2 = i - 5;
    if (v7 <= 0)
    {
      return result;
    }
  }

  if (v7 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 8 * i);

    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.RichExpression.editingToken(matching:)@<X0>(uint64_t (*a1)(void *)@<X0>, void *a2@<X8>)
{
  result = sub_1C1EBAF80(0);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v27 = result;
    while (v4 <= *(v3 + 16))
    {
      v6 = (v3 + 32 * v4);
      v7 = *v6;
      v8 = v6[1];
      v29 = v6[2];
      v9 = *(**v6 + 296);
      v30 = v6[3];

      if (v9(v10))
      {
        v35[0] = v7;
        v35[1] = v8;
        v35[2] = v29;
        v35[3] = v30;
        v5 = v8;
        if ((a1(v35) & 1) != 0 || ((*(*v7 + 272))(&v34), v33 = v34, v32 = 0, sub_1C1EBB52C(), sub_1C1F52684(), v11 = sub_1C1F52684(), v35[0] == v31))
        {
LABEL_26:

          *a2 = v7;
          a2[1] = v5;
          a2[2] = v29;
          a2[3] = v30;
          return result;
        }

        v28 = v8;
        v12 = (*v7 + 392);
        v13 = *v12;
        v14 = (*v12)(v11);
        v3 = v27;
        if (v14 >> 62)
        {
          v15 = sub_1C1F52994();
          v3 = v27;
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v8 < v15 && (v8 & 0x8000000000000000) == 0)
        {
          v17 = 0;
          v18 = v8;
          do
          {
            v21 = v13(v16);
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x1C6911DB0](v18, v21);
            }

            else
            {
              if (v18 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

              v22 = *(v21 + 8 * v18 + 32);
            }

            v23 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
            LOBYTE(v35[0]) = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            LOBYTE(v31) = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v35, &v31))
            {

              v19 = __OFSUB__(v17--, 1);
              if (v19)
              {
                goto LABEL_28;
              }
            }

            else
            {
              LOBYTE(v35[0]) = *(v22 + v23);
              LOBYTE(v31) = 15;
              v24 = static CalculateExpression.TokenType.== infix(_:_:)(v35, &v31);

              if (v24)
              {
                v19 = __OFADD__(v17++, 1);
                if (v19)
                {
                  goto LABEL_29;
                }
              }
            }
          }

          while (v18-- >= 1);
          v3 = v27;
          v5 = v28;
          if (v17 >= 1)
          {
            goto LABEL_26;
          }
        }
      }

      --v4;

      if (!v4)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C1EBAF80(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 392))();
  if (v4 >> 62)
  {
    v5 = sub_1C1F52994();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      do
      {
        v9 = (*(*v2 + 416))(--v5);
        if (!v9)
        {
          v7 = v5;
          goto LABEL_14;
        }

        v10 = v9;
        v11 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v24) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v23) = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v23) & 1) != 0 && ((*(*v10 + 256))())
        {
        }

        else
        {
          LOBYTE(v24) = *(v10 + v11);
          LOBYTE(v23) = 17;
          v8 = static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v23);

          if ((v8 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        --v7;
      }

      while (v5 >= 1);
      v7 = -1;
    }

LABEL_14:
    v24 = v7;
    v12 = (*v2 + 416);
    v13 = *v12;
    v14 = (*v12)(v7);
    v15 = v7;
    if (v14)
    {
      v16 = v14;
      v17 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v23) = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      sub_1C1E9019C();
      if (sub_1C1F52414() & 1) != 0 || (LOBYTE(v23) = *(v16 + v17), (sub_1C1F52414()))
      {

        v15 = v7;
      }

      else
      {
        sub_1C1EBA588(&v24);

        v15 = v24;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21250, &unk_1C1F56CE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1F56480;
    v19 = v13(v15);
    *(v18 + 32) = v2;
    *(v18 + 40) = v7;
    *(v18 + 48) = a1;
    *(v18 + 56) = v19;
    v23 = v18;

    v20 = v13(v15);
    if (!v20)
    {
      return v23;
    }

    v21 = v20;
    if ((*(*v20 + 280))())
    {
      result = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    if (!(*(*v21 + 304))())
    {
      goto LABEL_27;
    }

    result = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
LABEL_26:
      v22 = sub_1C1EBAF80(result);
      sub_1C1EBB32C(v22);

LABEL_27:

      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EBB32C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C1EBB420(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C1EBB420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21250, &unk_1C1F56CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C1EBB52C()
{
  result = qword_1EDC2E8D0;
  if (!qword_1EDC2E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2E8D0);
  }

  return result;
}

uint64_t sub_1C1EBB620(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C1EBB668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C1EBB6B8()
{
  if (MEMORY[0x1E69D4838])
  {
    v0 = MEMORY[0x1E69D4820] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x1E69D4840] == 0 || MEMORY[0x1E69D4828] == 0 || MEMORY[0x1E69D4830] == 0)
  {
    v4 = type metadata accessor for StocksKitCurrencyCache();
  }

  else
  {
    v4 = type metadata accessor for StocksKitCurrencyCacheImpl();
  }

  result = [objc_allocWithZone(v4) init];
  qword_1EDC2F398 = result;
  return result;
}

id StocksKitCurrencyCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1C1EBB764()
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F398;
}

id static StocksKitCurrencyCache.shared.getter()
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC2F398;

  return v1;
}

BOOL static StocksKitCurrencyCache.isEnabled.getter()
{
  if (MEMORY[0x1E69D4828])
  {
    v0 = MEMORY[0x1E69D4830] == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && MEMORY[0x1E69D4840] != 0 && MEMORY[0x1E69D4820] != 0 && MEMORY[0x1E69D4838] != 0;
}

uint64_t sub_1C1EBBA80(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C1EBBC7C(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C1EBBD34()
{
  v1 = *(v0 + 16);
  v2 = sub_1C1F52004();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t StocksKitCurrencyCache.ProviderData.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StocksKitCurrencyCache.ProviderData.logo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksKitCurrencyCache.ProviderData() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1C1EC2740(v4, v5, v6, v7);
}

uint64_t StocksKitCurrencyCache.ProviderLogo.light.getter()
{
  v1 = *v0;
  sub_1C1EC2790(*v0, *(v0 + 8));
  return v1;
}

uint64_t StocksKitCurrencyCache.ProviderLogo.dark.getter()
{
  v1 = *(v0 + 16);
  sub_1C1EC27E4(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C1EBBFAC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StocksKitCurrencyCache.ProviderData();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

id StocksKitCurrencyCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StocksKitCurrencyCache();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StocksKitCurrencyCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StocksKitCurrencyCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1EBC114()
{
  v1 = sub_1C1F52304();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_1C1F52284();
  v0[6] = sub_1C1F52274();
  v5 = sub_1C1F52244();
  v0[7] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v0[8] = v6;
  v8 = *(v6 + 64) + 15;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = *MEMORY[0x1E69D4808];
  (*(v7 + 104))();
  v11 = *(MEMORY[0x1E69D4810] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1C1EBC2D8;

  return MEMORY[0x1EEE42B58](v4, v9, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EBC2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBC5C4;
  }

  else
  {
    v10 = *(v2 + 72);

    v9 = sub_1C1EBC480;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBC480()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = *(v0[2] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3D04(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
    v10 = v0[11] == 0;

    v9(v10);
  }
}

uint64_t sub_1C1EBC5C4()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = *(v6 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1C1E83580(v7 + v8, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v4 + 56))(v7 + v8, 1, 1, v5);
  os_unfair_lock_unlock((v7 + v9));

  v10 = v0[1];
  v11 = v0[11] == 0;

  return v10(v11);
}

uint64_t sub_1C1EBC868(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C1EC3D00;

  return StocksKitCurrencyCacheImpl.refresh()();
}

uint64_t StocksKitCurrencyCacheImpl.refresh(timeout:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBC934, 0, 0);
}

uint64_t sub_1C1EBC934()
{
  v1 = v0[2];
  v2 = sub_1C1F52304();
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1C1F52284();
  v0[7] = sub_1C1F52274();
  v6 = sub_1C1F52D04();
  v8 = v7;
  v9 = sub_1C1F52244();
  v0[8] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v0[9] = v10;
  v12 = *(v10 + 64) + 15;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = *MEMORY[0x1E69D4808];
  (*(v11 + 104))();
  v15 = *(MEMORY[0x1E69D4810] + 4);
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_1C1EBCB0C;

  return MEMORY[0x1EEE42B58](v5, v13, v6, v8, 0);
}

uint64_t sub_1C1EBCB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBCDF8;
  }

  else
  {
    v10 = *(v2 + 80);

    v9 = sub_1C1EBCCB4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBCCB4()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = *(v0[3] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3D04(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
    v10 = v0[12] == 0;

    v9(v10);
  }
}

uint64_t sub_1C1EBCDF8()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  v7 = *(v6 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1C1E83580(v7 + v8, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v4 + 56))(v7 + v8, 1, 1, v5);
  os_unfair_lock_unlock((v7 + v9));

  v10 = v0[1];
  v11 = v0[12] == 0;

  return v10(v11);
}

uint64_t sub_1C1EBD0AC(const void *a1, void *a2, double a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C1EBD164;

  return StocksKitCurrencyCacheImpl.refresh(timeout:)(a3);
}

uint64_t sub_1C1EBD164(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

Swift::Bool __swiftcall StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(Swift::Double timeout)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21290, &qword_1C1F56D60);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = sub_1C1F527A4();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = timeout;
  *(v10 + 40) = v1;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  v11 = v1;

  v12 = v8;
  sub_1C1EBE044(0, 0, v6, &unk_1C1F56D70, v10);

  sub_1C1F52884();
  os_unfair_lock_lock((v7 + 20));
  LOBYTE(v6) = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));

  return v6;
}

uint64_t sub_1C1EBD440(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBD468, 0, 0);
}

uint64_t sub_1C1EBD468()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = sub_1C1F52304();
  *(v0 + 48) = v3;
  v4 = *(v3 - 8);
  *(v0 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v0 + 64) = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[9] = v6;
  sub_1C1F52284();
  v1[10] = sub_1C1F52274();
  if (v2 == 0.0)
  {
    v7 = sub_1C1F52244();
    v1[16] = v7;
    v8 = *(v7 - 8);
    v9 = v8;
    v1[17] = v8;
    v10 = *(v8 + 64) + 15;
    v11 = swift_task_alloc();
    v1[18] = v11;
    v12 = *MEMORY[0x1E69D4808];
    (*(v9 + 104))();
    v13 = *(MEMORY[0x1E69D4810] + 4);
    v14 = swift_task_alloc();
    v1[19] = v14;
    *v14 = v1;
    v14[1] = sub_1C1EBDA74;
    v15 = 0x158E460913D00000;
    v16 = v6;
    v17 = v11;
    v18 = 1;
  }

  else
  {
    v19 = v1[2];
    v20 = sub_1C1F52D04();
    v22 = v21;
    v23 = sub_1C1F52244();
    v1[11] = v23;
    v24 = *(v23 - 8);
    v25 = v24;
    v1[12] = v24;
    v26 = *(v24 + 64) + 15;
    v27 = swift_task_alloc();
    v1[13] = v27;
    v28 = *MEMORY[0x1E69D4808];
    (*(v25 + 104))();
    v29 = *(MEMORY[0x1E69D4810] + 4);
    v30 = swift_task_alloc();
    v1[14] = v30;
    *v30 = v1;
    v30[1] = sub_1C1EBD74C;
    v16 = v6;
    v17 = v27;
    v15 = v20;
    v18 = v22;
  }

  return MEMORY[0x1EEE42B58](v16, v17, v15, v18, 0);
}

uint64_t sub_1C1EBD74C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBDD9C;
  }

  else
  {
    v10 = *(v2 + 104);

    v9 = sub_1C1EBD8F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBD8F4()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[3];
  (*(v0[7] + 32))(v2, v0[9], v0[6]);

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1C1EC3CE8(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  if (!v1)
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[4];

    os_unfair_lock_lock((v10 + 20));
    *(v10 + 16) = 1;
    os_unfair_lock_unlock((v10 + 20));
    (*(v8 + 8))(v7, v9);

    v11 = v0[5];
    sub_1C1F52894();
    v12 = v0[1];

    v12();
  }
}

uint64_t sub_1C1EBDA74()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBDEF0;
  }

  else
  {
    v10 = *(v2 + 144);

    v9 = sub_1C1EBDC1C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBDC1C()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = v0[3];
  (*(v0[7] + 32))(v2, v0[9], v0[6]);

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1C1EC3CE8(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  if (!v1)
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[4];

    os_unfair_lock_lock((v10 + 20));
    *(v10 + 16) = 1;
    os_unfair_lock_unlock((v10 + 20));
    (*(v8 + 8))(v7, v9);

    v11 = v0[5];
    sub_1C1F52894();
    v12 = v0[1];

    v12();
  }
}

uint64_t sub_1C1EBDD9C()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = *(v8 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_1C1E83580(v9 + v10, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v6 + 56))(v9 + v10, 1, 1, v5);
  os_unfair_lock_unlock((v9 + v11));
  os_unfair_lock_lock((v7 + 20));
  *(v7 + 16) = 0;
  os_unfair_lock_unlock((v7 + 20));

  v12 = v0[5];
  sub_1C1F52894();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1C1EBDEF0()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = *(v8 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_1C1E83580(v9 + v10, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v6 + 56))(v9 + v10, 1, 1, v5);
  os_unfair_lock_unlock((v9 + v11));
  os_unfair_lock_lock((v7 + 20));
  *(v7 + 16) = 0;
  os_unfair_lock_unlock((v7 + 20));

  v12 = v0[5];
  sub_1C1F52894();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1C1EBE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C1EB1D18(a3, v27 - v11, &qword_1EBF21288, &qword_1C1F56D58);
  v13 = sub_1C1F527A4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1E83580(v12, &qword_1EBF21288, &qword_1C1F56D58);
  }

  else
  {
    sub_1C1F52794();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C1F52764();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C1F52474() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Bool __swiftcall StocksKitCurrencyCacheImpl.initializeSynchronously()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = *&v0[OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock];
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_1C1EB1D18(v9 + v10, v8, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v9 + v11));
  v12 = sub_1C1F52304();
  v13 = 1;
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v8, 1, v12);
  sub_1C1E83580(v8, &qword_1EBF21260, &qword_1C1F56D28);
  if (v10 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21290, &qword_1C1F56D60);
    v14 = swift_allocObject();
    *(v14 + 20) = 0;
    *(v14 + 16) = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = sub_1C1F527A4();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v0;
    v17[5] = v14;
    v17[6] = v15;
    v18 = v0;

    v19 = v15;
    sub_1C1EBE044(0, 0, v4, &unk_1C1F56D80, v17);

    sub_1C1F52884();
    os_unfair_lock_lock((v14 + 20));
    v13 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 20));
  }

  return v13;
}

uint64_t sub_1C1EBE638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBE65C, 0, 0);
}

uint64_t sub_1C1EBE65C()
{
  v1 = sub_1C1F52304();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_1C1F52284();
  v0[8] = sub_1C1F52274();
  v5 = sub_1C1F52244();
  v0[9] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v0[10] = v6;
  v8 = *(v6 + 64) + 15;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = *MEMORY[0x1E69D4800];
  (*(v7 + 104))();
  v11 = *(MEMORY[0x1E69D4810] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1C1EBE820;

  return MEMORY[0x1EEE42B58](v4, v9, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EBE820()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBEB24;
  }

  else
  {
    v10 = *(v2 + 88);

    v9 = sub_1C1EBE9C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBE9C8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = *(v0[2] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3B4C(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = v0[3];

    os_unfair_lock_lock((v9 + 20));
    *(v9 + 16) = 1;
    os_unfair_lock_unlock((v9 + 20));
    (*(v7 + 8))(v6, v8);

    v10 = v0[4];
    sub_1C1F52894();
    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1C1EBEB24()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  v8 = *(v7 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1C1E83580(v8 + v9, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v4 + 56))(v8 + v9, 1, 1, v5);
  os_unfair_lock_unlock((v8 + v10));
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 20));

  v11 = v0[4];
  sub_1C1F52894();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1C1EBEC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C1EB1D18(a1, &v12 - v6, &qword_1EBF21260, &qword_1C1F56D28);
  v8 = sub_1C1F52304();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  result = sub_1C1E83580(v7, &qword_1EBF21260, &qword_1C1F56D28);
  if (v10 == 1)
  {
    sub_1C1E83580(a1, &qword_1EBF21260, &qword_1C1F56D28);
    (*(v9 + 16))(a1, a2, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t StocksKitCurrencyCacheImpl.needsRefresh.getter()
{
  v26 = sub_1C1F52004();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1C1EB1D18(v15 + v16, v14, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v15 + v17));
  v18 = sub_1C1F52304();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    sub_1C1E83580(v14, &qword_1EBF21260, &qword_1C1F56D28);
    v20 = 1;
  }

  else
  {
    sub_1C1F522E4();
    (*(v19 + 8))(v14, v18);
    v21 = v8;
    v22 = v26;
    (*(v1 + 32))(v10, v21, v26);
    sub_1C1F51FF4();
    v20 = sub_1C1F51FE4();
    v23 = *(v1 + 8);
    v23(v5, v22);
    v23(v10, v22);
  }

  return v20 & 1;
}

uint64_t StocksKitCurrencyCacheImpl.lastRefreshDate.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21270, &qword_1C1F56D38) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1C1F52004();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1EBF268, 0, 0);
}

uint64_t sub_1C1EBF268()
{
  v1 = *(v0 + 24);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v4 = *(v1 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v5 = MEMORY[0x1E69E6B68];
  v6 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_1C1EB1D18(v4 + v6, v3, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v4 + v7));
  v8 = sub_1C1F52304();
  *(v0 + 80) = v8;
  v9 = *(v8 - 8);
  *(v0 + 88) = v9;
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_1C1E83580(v3, &qword_1EBF21260, &qword_1C1F56D28);

    v14 = *(v13 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_lastRefreshDateLock);
    *(v0 + 96) = v14;
    v15 = *v14;
    v16 = *(*v14 + *v5 + 16);
    *(v0 + 104) = v16;
    v17 = *(v15 + 48);
    *(v0 + 168) = v17;
    v18 = (v17 + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v18));
    sub_1C1EB1D18(v14 + v16, v12, &qword_1EBF21270, &qword_1C1F56D38);
    os_unfair_lock_unlock((v14 + v18));
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_1C1E83580(*(v0 + 32), &qword_1EBF21270, &qword_1C1F56D38);
      v19 = *(v9 + 64) + 15;
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      sub_1C1F52284();
      *(v0 + 120) = sub_1C1F52274();
      v21 = sub_1C1F52244();
      *(v0 + 128) = v21;
      v22 = *(v21 - 8);
      v23 = v22;
      *(v0 + 136) = v22;
      v24 = *(v22 + 64) + 15;
      v25 = swift_task_alloc();
      *(v0 + 144) = v25;
      v26 = *MEMORY[0x1E69D4800];
      (*(v23 + 104))();
      v27 = *(MEMORY[0x1E69D4810] + 4);
      v28 = swift_task_alloc();
      *(v0 + 152) = v28;
      *v28 = v0;
      v28[1] = sub_1C1EBF740;

      return MEMORY[0x1EEE42B58](v20, v25, 0x158E460913D00000, 1, 0);
    }

    v36 = *(v0 + 48);
    v35 = *(v0 + 56);
    v37 = *(v0 + 40);
    v38 = *(v0 + 16);
    v39 = *(v36 + 32);
    v39(v35, *(v0 + 32), v37);
    v39(v38, v35, v37);
    (*(v36 + 56))(v38, 0, 1, v37);
  }

  else
  {
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    v33 = *(v0 + 16);
    sub_1C1F522F4();
    (*(v9 + 8))(v3, v8);

    v34 = *(v32 + 32);
    v34(v29, v30, v31);
    v34(v33, v29, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
  }

  v41 = *(v0 + 64);
  v40 = *(v0 + 72);
  v42 = *(v0 + 56);
  v43 = *(v0 + 32);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1C1EBF740()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = sub_1C1EBFA50;
  }

  else
  {
    v10 = *(v2 + 144);

    v9 = sub_1C1EBF8E8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C1EBF8E8()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v4 + v5));
  sub_1C1EC2AA0(v4 + v3);
  os_unfair_lock_unlock((v4 + v5));
  if (!v1)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    (*(v8 + 8))(v6, v7);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = *(v0 + 16);
    v13 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v11 + v13));
    sub_1C1EB1D18(v11 + v10, v12, &qword_1EBF21270, &qword_1C1F56D38);
    os_unfair_lock_unlock((v11 + v13));
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    v17 = *(v0 + 32);

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_1C1EBFA50()
{
  v1 = *(v0 + 144);

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 16);
  v6 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v4 + v6));
  sub_1C1EB1D18(v4 + v3, v5, &qword_1EBF21270, &qword_1C1F56D38);
  os_unfair_lock_unlock((v4 + v6));
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t StocksKitCurrencyCacheImpl.currencyData.getter()
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212A0, &qword_1C1F56D90);
  v1 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212A8, &qword_1C1F56D98);
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v73 - v5;
  v7 = sub_1C1F52304();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v73 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1C1EB1D18(v15 + v16, v14, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v15 + v17));
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_1C1E83580(v14, &qword_1EBF21260, &qword_1C1F56D28);
    return sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  }

  v74 = v8;
  v75 = v7;
  v19 = v85;
  (*(v8 + 32))(v85, v14, v7);
  v20 = sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  v21 = sub_1C1F522B4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v81 = v24;
  v25 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1F522C4();
  sub_1C1F52294();
  v26 = *(v22 + 8);
  v82 = v22 + 8;
  v83 = v21;
  v80 = v26;
  v26(v25, v21);
  v27 = *(swift_getOpaqueTypeConformance2() + 8);
  sub_1C1F52604();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212B0, &qword_1C1F56DA0);
  v73[1] = v73;
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v73 - v30;
  v18 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v19;
  v78 = v6;
  v79 = v3;
  for (i = v31; ; v31 = i)
  {
    while (1)
    {
      sub_1C1F528F4();
      v35 = sub_1C1F52324();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 48))(v31, 1, v35);
      if (v37 == 1)
      {
        (*(v76 + 8))(v6, v3);
        (*(v74 + 8))(v32, v75);
        return v18;
      }

      v89 = v18;
      v86 = v73;
      v38 = *(v36 + 64);
      MEMORY[0x1EEE9AC00](v37);
      v39 = v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 32))(v39, v31, v35);
      v88 = sub_1C1F52064();
      v41 = v40;
      MEMORY[0x1EEE9AC00](v88);
      v43 = v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = sub_1C1F522C4();
      MEMORY[0x1EEE9AC00](v44);
      sub_1C1F52334();
      v45 = COERCE_DOUBLE(sub_1C1F522A4());
      v47 = v46;
      v87 = *(v36 + 8);
      v87(v39, v35);
      v80(v43, v83);
      v48 = (v47 & 1) != 0 ? 0.0 : v45;
      v49 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v49)
      {
        break;
      }

      v18 = v89;
      v62 = sub_1C1EAC150(v88, v41);
      v64 = v63;

      if ((v64 & 1) == 0)
      {
        goto LABEL_5;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v18;
      v6 = v78;
      v3 = v79;
      v31 = i;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C1EC2484();
        v18 = v90;
      }

      v66 = *(v18[6] + 16 * v62 + 8);

      sub_1C1EC22D4(v62, v18);
      v87(v39, v35);
      v32 = v85;
    }

    v50 = v49;
    v51 = v89;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v51;
    v53 = v88;
    v55 = sub_1C1EAC150(v88, v41);
    v56 = *(v51 + 16);
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      break;
    }

    v59 = v54;
    if (*(v51 + 24) >= v58)
    {
      if (v52)
      {
        if (v54)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C1EC2484();
        if (v59)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C1EC2030(v58, v52);
      v60 = sub_1C1EAC150(v53, v41);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_31;
      }

      v55 = v60;
      if (v59)
      {
LABEL_4:

        v18 = v90;
        v33 = v90[7];
        v34 = *(v33 + 8 * v55);
        *(v33 + 8 * v55) = v50;

LABEL_5:
        v87(v39, v35);
        goto LABEL_6;
      }
    }

    v67 = v53;
    v18 = v90;
    v90[(v55 >> 6) + 8] |= 1 << v55;
    v68 = (v18[6] + 16 * v55);
    *v68 = v67;
    v68[1] = v41;
    *(v18[7] + 8 * v55) = v50;
    v87(v39, v35);
    v69 = v18[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_30;
    }

    v18[2] = v71;
LABEL_6:
    v32 = v85;
    v6 = v78;
    v3 = v79;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}