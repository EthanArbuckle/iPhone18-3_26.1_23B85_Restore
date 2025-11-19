uint64_t sub_2282D703C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  result = sub_228393180();
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
      sub_228393520();
      sub_228300540();
      sub_2283920B0();

      result = sub_228393570();
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

uint64_t sub_2282D72B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22827C32C();
  result = sub_228393180();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_228393520();
      sub_2283920B0();
      sub_2283920B0();
      result = sub_228393570();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2282D7578(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  sub_228393570();
  v5 = -1 << *(a2 + 32);
  result = sub_228393060();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2282D7638(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_228392C50();
  v5 = -1 << *(a2 + 32);
  result = sub_228393060();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2282D76BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2282D703C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2282D7C2C();
      goto LABEL_16;
    }

    sub_2282D8040(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  result = sub_228393570();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);

      v13 = sub_228300540();
      v15 = v14;
      if (v13 == sub_228300540() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_228393460();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_228393490();
  __break(1u);
  return result;
}

uint64_t sub_2282D78B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_2282D72B8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_2282D7D8C();
      goto LABEL_22;
    }

    sub_2282D8294(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  result = sub_228393570();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_228393460(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_228393460();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_228393490();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void sub_2282D7A84(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2282D6E20(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2282D7EEC(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2282D84EC(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_228392C50();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_22817A958(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_228392C60();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_228393490();
  __break(1u);
}

void *sub_2282D7C2C()
{
  v1 = v0;
  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_228393170();
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

void *sub_2282D7D8C()
{
  v1 = v0;
  sub_22827C32C();
  v2 = *v0;
  v3 = sub_228393170();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

id sub_2282D7EEC(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2281F0644(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_228393170();
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
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
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

    *v5 = v8;
  }

  return result;
}

uint64_t sub_2282D8040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  result = sub_228393180();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_228393520();

      sub_228300540();
      sub_2283920B0();

      result = sub_228393570();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v2 = v26;
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

uint64_t sub_2282D8294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22827C32C();
  result = sub_228393180();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_228393520();

      sub_2283920B0();
      sub_2283920B0();
      result = sub_228393570();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_2282D84EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2281F0644(0, a2, a3, a4, a5);
  result = sub_228393180();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_228392C50();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

uint64_t sub_2282D86F4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = sub_228393110();

    if (v6)
    {
      v7 = sub_2282D8BC4();

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  v10 = sub_228393570();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v53 = v1;
  v56 = ~v11;
  v54 = a1;
  v55 = *MEMORY[0x277CCC520];
  while (1)
  {
    v13 = *(v3 + 48);
    v14 = *(v13 + 8 * v12);
    v15 = *(v14 + 24);
    if (!v15)
    {
      v29 = *(v13 + 8 * v12);

      goto LABEL_20;
    }

    v16 = *(v13 + 8 * v12);

    v17 = v15;
    v18 = [v17 metadata];
    if (!v18)
    {

      goto LABEL_20;
    }

    v19 = v18;
    v20 = sub_228391F20();

    v21 = sub_228392000();
    if (!*(v20 + 16))
    {

      goto LABEL_20;
    }

    v23 = sub_2281A76E0(v21, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {

LABEL_19:
      a1 = v54;
LABEL_20:
      v30 = [*(v14 + 16) semanticIdentifier];
      v31 = [v30 stringValue];

      v26 = sub_228392000();
      v27 = v32;

      v28 = *(a1 + 24);
      if (!v28)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    sub_2281BC4A4(*(v20 + 56) + 32 * v23, v59);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v26 = v57;
    v27 = v58;
    a1 = v54;
    v28 = *(v54 + 24);
    if (!v28)
    {
      goto LABEL_30;
    }

LABEL_21:
    v33 = v28;
    v34 = [v33 metadata];
    if (v34)
    {
      v35 = v34;
      v36 = sub_228391F20();

      v37 = sub_228392000();
      if (*(v36 + 16))
      {
        v39 = sub_2281A76E0(v37, v38);
        v41 = v40;

        if (v41)
        {
          sub_2281BC4A4(*(v36 + 56) + 32 * v39, v59);

          if (swift_dynamicCast())
          {
            v43 = v57;
            v42 = v58;
            a1 = v54;
            goto LABEL_31;
          }
        }

        else
        {
        }

        a1 = v54;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_30:
    v44 = [*(a1 + 16) semanticIdentifier];
    v45 = [v44 stringValue];

    v43 = sub_228392000();
    v42 = v46;

LABEL_31:
    if (v26 == v43 && v27 == v42)
    {
      break;
    }

    v48 = sub_228393460();

    if (v48)
    {
      goto LABEL_41;
    }

    v12 = (v12 + 1) & v56;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_41:
  v49 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v53;
  v59[0] = *v53;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2282D7C2C();
    v51 = v59[0];
  }

  v52 = *(*(v51 + 48) + 8 * v12);
  sub_2282D8E04(v12);
  result = v52;
  *v53 = v59[0];
  return result;
}

uint64_t sub_2282D8BC4()
{
  v1 = *v0;

  v2 = sub_2283930D0();
  v3 = swift_unknownObjectRetain();
  v4 = sub_2282D69BC(v3, v2);
  v25 = v4;
  v5 = *(v4 + 40);
  sub_228393520();

  sub_228300540();
  sub_2283920B0();

  v6 = sub_228393570();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);

      v11 = sub_228300540();
      v13 = v12;
      if (v11 == sub_228300540() && v13 == v14)
      {
        break;
      }

      v16 = sub_228393460();

      if (v16)
      {

        goto LABEL_12;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v8);
  sub_2282D8E04(v8);
  v18 = sub_228300540();
  v20 = v19;
  if (v18 == sub_228300540() && v20 == v21)
  {
    goto LABEL_18;
  }

  v23 = sub_228393460();

  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_18:
  }

  *v0 = v25;
  return v17;
}

unint64_t sub_2282D8E04(unint64_t result)
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

    v9 = sub_228393050();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v36 = *MEMORY[0x277CCC520];
      v37 = v7;
      v11 = v7;
      v38 = v3;
      while (1)
      {
        v12 = *(v3 + 40);
        v13 = *(*(v3 + 48) + 8 * v6);
        sub_228393520();
        v14 = *(v13 + 24);
        if (v14)
        {
          break;
        }

LABEL_19:
        v26 = [*(v13 + 16) semanticIdentifier];
        v27 = [v26 stringValue];

        sub_228392000();
LABEL_20:
        sub_2283920B0();

        v28 = sub_228393570();

        v29 = v28 & v11;
        if (v2 >= v10)
        {
          if (v29 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v29 >= v10)
        {
          goto LABEL_25;
        }

        if (v2 >= v29)
        {
LABEL_25:
          v30 = *(v3 + 48);
          v31 = (v30 + 8 * v2);
          v32 = (v30 + 8 * v6);
          if (v2 != v6 || v31 >= v32 + 1)
          {
            *v31 = *v32;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v11;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v15 = v10;

      v16 = v14;
      v17 = [v16 metadata];
      if (!v17)
      {

LABEL_18:
        v10 = v15;
        v3 = v38;
        goto LABEL_19;
      }

      v18 = v4;
      v19 = v17;
      v20 = sub_228391F20();

      v21 = sub_228392000();
      if (*(v20 + 16))
      {
        v23 = sub_2281A76E0(v21, v22);
        v25 = v24;

        if (v25)
        {
          sub_2281BC4A4(*(v20 + 56) + 32 * v23, v39);

          if (swift_dynamicCast())
          {
            v4 = v18;
            v10 = v15;
            v11 = v37;
            v3 = v38;
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

LABEL_17:
      v4 = v18;
      v11 = v37;
      goto LABEL_18;
    }

LABEL_28:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v33 = *(v3 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v35;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2282D9174(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB6C90](result, a2, v6);
      type metadata accessor for MedicationsDoseLogViewModel(0);
      swift_dynamicCast();
      return v53[0];
    }

LABEL_52:
    __break(1u);
    return result;
  }

  if (a3)
  {
    result = sub_2283930B0();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v51 = sub_2283930C0();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v7 = v53[0];
    v8 = *(a4 + 40);
    sub_228393520();
    sub_228300540();
    sub_2283920B0();

    v9 = sub_228393570();
    v10 = -1 << *(a4 + 32);
    v5 = v9 & ~v10;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v50 = ~v10;
      v48 = v53[0];
      v49 = *MEMORY[0x277CCC520];
      while (1)
      {
        v11 = *(a4 + 48);
        v12 = *(v11 + 8 * v5);
        v13 = *(v12 + 24);
        if (!v13)
        {
          v27 = *(v11 + 8 * v5);

          goto LABEL_23;
        }

        v14 = *(v11 + 8 * v5);

        v15 = v13;
        v16 = [v15 metadata];
        if (!v16)
        {

          goto LABEL_23;
        }

        v17 = v16;
        v18 = sub_228391F20();

        v19 = sub_228392000();
        if (!*(v18 + 16))
        {
          break;
        }

        v21 = sub_2281A76E0(v19, v20);
        v23 = v22;

        if ((v23 & 1) == 0)
        {

LABEL_22:
          v7 = v48;
LABEL_23:
          v28 = [*(v12 + 16) semanticIdentifier];
          v29 = [v28 stringValue];

          v25 = sub_228392000();
          v24 = v30;

          v26 = *(v7 + 24);
          if (!v26)
          {
            goto LABEL_33;
          }

          goto LABEL_24;
        }

        sub_2281BC4A4(*(v18 + 56) + 32 * v21, v53);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v25 = v51;
        v24 = v52;
        v7 = v48;
        v26 = *(v48 + 24);
        if (!v26)
        {
          goto LABEL_33;
        }

LABEL_24:
        v31 = v26;
        v32 = [v31 metadata];
        if (v32)
        {
          v33 = v32;
          v34 = sub_228391F20();

          v35 = sub_228392000();
          if (!*(v34 + 16))
          {

LABEL_32:

            v7 = v48;
            goto LABEL_33;
          }

          v37 = sub_2281A76E0(v35, v36);
          v39 = v38;

          if ((v39 & 1) == 0)
          {

            goto LABEL_32;
          }

          sub_2281BC4A4(*(v34 + 56) + 32 * v37, v53);

          v7 = v48;
          if (swift_dynamicCast())
          {
            v41 = v51;
            v40 = v52;
            goto LABEL_34;
          }
        }

        else
        {
        }

LABEL_33:
        v42 = [*(v7 + 16) semanticIdentifier];
        v43 = [v42 stringValue];

        v41 = sub_228392000();
        v40 = v44;

LABEL_34:
        if (v25 == v41 && v24 == v40)
        {
          goto LABEL_46;
        }

        v46 = sub_228393460();

        if (v46)
        {

          goto LABEL_48;
        }

        v5 = (v5 + 1) & v50;
        if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_23;
    }

LABEL_40:

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_50;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_46:
  }

LABEL_48:
  v47 = *(*(a4 + 48) + 8 * v5);
}

void sub_2282D96B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB6C90](a1, a2, v11);
      sub_22817A958(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22817A958(0, a5, a6);
    if (sub_2283930B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2283930C0();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_228392C50();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_228392C60();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_2282D98CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicationsLogViewController()
{
  result = qword_280DDC7C8;
  if (!qword_280DDC7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282D9960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282D99C0()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2282D9B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282D9B6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22819DA1C;

  return sub_2282D1114();
}

void sub_2282D9C20()
{
  *(v0 + qword_280DDC818) = MEMORY[0x277D84FA0];
  v1 = v0 + qword_280DDC7E8;
  *v1 = vdupq_n_s64(0x4040000000000000uLL);
  *(v1 + 16) = xmmword_2283A2960;
  *(v0 + qword_280DDC800) = 0x4049000000000000;
  *(v0 + qword_280DDC838) = 0;
  *(v0 + qword_280DDC848) = 0;
  *(v0 + qword_280DDC7F0) = 0;
  *(v0 + qword_280DDC810) = 0;
  *(v0 + qword_280DDF418) = 0;
  *(v0 + qword_280DDC7E0) = 0;
  *(v0 + qword_280DDC820) = 0;
  *(v0 + qword_280DDC828) = 0;
  *(v0 + qword_27D827448) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2282D9D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsDoseLogViewModel(255);
    v7 = sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2282D9E08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22819D87C;

  return sub_2282D1114();
}

uint64_t sub_2282D9ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a1;
  sub_2281EBD48();
  v153 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v130 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v126 = &v123 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v129 = &v123 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v123 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v123 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v123 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v141 = &v123 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v123 - v20;
  MEMORY[0x28223BE20](v19);
  v144 = &v123 - v21;
  sub_2281EBC94();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228391130();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v128 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v132 = &v123 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v125 = &v123 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v127 = &v123 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v131 = &v123 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v134 = &v123 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v137 = &v123 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v140 = &v123 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v143 = &v123 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v145 = &v123 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v123 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v123 - v52;
  sub_2282DAF70();
  v55 = v54;
  v136 = *(v54 - 8);
  v56 = *(v136 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v123 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158[1] = 0;
  sub_2281DC0DC(&qword_280DDBD00);
  v149 = a2;
  sub_2283935F0();
  sub_2283910C0();
  sub_2283935E0();
  v59 = v27;
  v62 = v27[1];
  v61 = v27 + 1;
  v60 = v62;
  v62(v53, v26);
  v154 = v58;
  v155 = v55;
  v63 = v62;
  sub_228391E00();
  v64 = v59;
  v65 = v145;
  v151 = v59[6];
  v152 = v59 + 6;
  if (v151(v25, 1, v26) != 1)
  {
    v156 = v59[4];
    v157 = v59 + 4;
    v67 = (v59 + 2);
    v146 = v60;
    v147 = v25;
    v158[0] = v64 + 2;
    v142 = v61;
    v156(v51, v25, v26);
    while (1)
    {
      v74 = *v67;
      (*v67)(v65, v51, v26);
      v75 = v74;
      sub_2283910A0();
      sub_2281DC0DC(&qword_280DDBD08);
      LOBYTE(v74) = sub_228391FB0();
      v63(v53, v26);
      if (v74)
      {
        v63(v65, v26);
        v72 = v51;
        if ((v150 & 0x40) != 0)
        {
          v75(v53, v149, v26);
          sub_2281DC0DC(&qword_27D824820);
          v76 = v143;
          sub_228392FB0();
          v77 = sub_228391FB0();
          v78 = *(v153 + 48);
          v79 = v144;
          *v144 = (v77 & 1) == 0;
          if (v77)
          {
            v63 = v146;
            v146(v51, v26);
            v156(&v79[v78], v76, v26);
          }

          else
          {
            v93 = v76;
            v94 = v146;
            v146(v93, v26);
            v75(&v79[v78], v51, v26);
            v75(v53, v51, v26);
            v63 = v94;
            sub_228393000();
            v94(v51, v26);
          }

          v70 = v79;
          v65 = v145;
          goto LABEL_6;
        }
      }

      else
      {
        sub_228391090();
        v80 = sub_228391FB0();
        v63(v53, v26);
        if (v80)
        {
          v63(v65, v26);
          v72 = v51;
          if (v150)
          {
            v81 = v75;
            v75(v53, v149, v26);
            v82 = sub_2281DC0DC(&qword_27D824820);
            v83 = v140;
            v139 = v82;
            sub_228392FB0();
            v84 = sub_228391FB0();
            v85 = *(v153 + 48);
            v86 = v141;
            *v141 = (v84 & 1) == 0;
            if (v84)
            {
              goto LABEL_26;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_2283910B0();
          v87 = sub_228391FB0();
          v63(v53, v26);
          if (v87)
          {
            v63(v65, v26);
            v72 = v51;
            if ((v150 & 2) != 0)
            {
              v81 = v75;
              v75(v53, v149, v26);
              v88 = sub_2281DC0DC(&qword_27D824820);
              v83 = v137;
              v139 = v88;
              sub_228392FB0();
              v89 = sub_228391FB0();
              v90 = ~v89;
              v85 = *(v153 + 48);
              v91 = (v89 & 1) == 0;
              v92 = &v162;
              goto LABEL_25;
            }
          }

          else
          {
            sub_228391120();
            v95 = sub_228391FB0();
            v63(v53, v26);
            if (v95)
            {
              v63(v65, v26);
              v72 = v51;
              if ((v150 & 4) != 0)
              {
                v81 = v75;
                v75(v53, v149, v26);
                v96 = sub_2281DC0DC(&qword_27D824820);
                v83 = v134;
                v139 = v96;
                sub_228392FB0();
                v97 = sub_228391FB0();
                v90 = ~v97;
                v85 = *(v153 + 48);
                v91 = (v97 & 1) == 0;
                v92 = &v161;
LABEL_25:
                v86 = *(v92 - 32);
                *v86 = v91;
                if ((v90 & 1) == 0)
                {
LABEL_26:
                  v98 = v51;
                  v99 = v26;
                  v63 = v146;
                  goto LABEL_27;
                }

LABEL_4:
                v68 = v83;
                v69 = v146;
                v146(v68, v26);
                v81(&v86[v85], v51, v26);
                v81(v53, v51, v26);
                v63 = v69;
                sub_228393000();
                v69(v51, v26);
                goto LABEL_5;
              }
            }

            else
            {
              sub_2283910F0();
              v102 = sub_228391FB0();
              v63(v53, v26);
              if (v102)
              {
                v63(v65, v26);
                v72 = v51;
                if ((v150 & 8) != 0)
                {
                  v139 = v75;
                  v75(v53, v149, v26);
                  v103 = sub_2281DC0DC(&qword_27D824820);
                  v83 = v131;
                  v124 = v103;
                  sub_228392FB0();
                  v104 = sub_228391FB0();
                  v105 = ~v104;
                  v85 = *(v153 + 48);
                  v106 = (v104 & 1) == 0;
                  v107 = &v160;
                  goto LABEL_38;
                }
              }

              else
              {
                sub_228391080();
                v108 = sub_228391FB0();
                v63(v53, v26);
                if (v108)
                {
                  v63(v65, v26);
                  v72 = v51;
                  if ((v150 & 0x10) != 0)
                  {
                    v139 = v75;
                    v75(v53, v149, v26);
                    v109 = sub_2281DC0DC(&qword_27D824820);
                    v83 = v127;
                    v124 = v109;
                    sub_228392FB0();
                    v110 = sub_228391FB0();
                    v105 = ~v110;
                    v85 = *(v153 + 48);
                    v106 = (v110 & 1) == 0;
                    v107 = &v159;
                    goto LABEL_38;
                  }
                }

                else
                {
                  sub_2283910E0();
                  v111 = sub_228391FB0();
                  v63(v53, v26);
                  v63(v65, v26);
                  if ((v111 & 1) == 0)
                  {
                    sub_228391070();
                    v139 = v75;
                    v75(v53, v149, v26);
                    v116 = sub_2281DC0DC(&qword_27D824820);
                    v117 = v128;
                    v124 = v116;
                    sub_228392FB0();
                    v118 = sub_228391FB0();
                    v119 = *(v153 + 48);
                    v86 = v130;
                    *v130 = (v118 & 1) == 0;
                    if (v118)
                    {
                      v63(v132, v26);
                      v63(v51, v26);
                      v100 = &v86[v119];
                      v101 = v117;
                      goto LABEL_28;
                    }

                    v63(v117, v26);
                    v120 = &v86[v119];
                    v121 = v132;
                    v122 = v139;
                    v139(v120, v132, v26);
                    v122(v53, v121, v26);
                    sub_228393000();
                    v63(v121, v26);
                    goto LABEL_44;
                  }

                  v72 = v51;
                  if ((v150 & 0x20) != 0)
                  {
                    v139 = v75;
                    v75(v53, v149, v26);
                    v112 = sub_2281DC0DC(&qword_27D824820);
                    v83 = v125;
                    v124 = v112;
                    sub_228392FB0();
                    v113 = sub_228391FB0();
                    v105 = ~v113;
                    v85 = *(v153 + 48);
                    v106 = (v113 & 1) == 0;
                    v107 = v158;
LABEL_38:
                    v86 = *(v107 - 32);
                    *v86 = v106;
                    if ((v105 & 1) == 0)
                    {
                      v98 = v51;
                      v99 = v26;
LABEL_27:
                      v63(v98, v99);
                      v100 = &v86[v85];
                      v101 = v83;
LABEL_28:
                      v156(v100, v101, v26);
LABEL_5:
                      v70 = v86;
LABEL_6:
                      v71 = v148;
                      sub_2281EBDB4(v70, v148);
                      v72 = (v71 + *(v153 + 48));
                      v25 = v147;
                      goto LABEL_7;
                    }

                    v63(v83, v26);
                    v114 = &v86[v85];
                    v115 = v139;
                    v139(v114, v51, v26);
                    v115(v53, v51, v26);
                    sub_228393000();
LABEL_44:
                    v63(v51, v26);
                    goto LABEL_5;
                  }
                }
              }
            }
          }
        }
      }

LABEL_7:
      v63(v72, v26);
      sub_228391E00();
      v73 = v151(v25, 1, v26);
      v67 = v158[0];
      if (v73 == 1)
      {
        return (*(v136 + 8))(v154, v155);
      }

      v156(v51, v25, v26);
    }
  }

  return (*(v136 + 8))(v154, v155);
}

void sub_2282DAF70()
{
  if (!qword_27D827480)
  {
    sub_228391130();
    sub_2281DC0DC(&qword_280DDBD00);
    v0 = sub_228391E10();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827480);
    }
  }
}

uint64_t sub_2282DAFF0(unint64_t a1, void *a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB6D80](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v7;
      sub_22825A528(&v13, a2, &v12);

      if (v12)
      {
        MEMORY[0x22AAB5D20]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();
        v6 = v14;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t MedicationsRecordDoseDataSource.__allocating_init(healthStore:listManager:medication:incompatibilityCache:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v48 = sub_22838F4A0();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 48);
  v17 = *(v6 + 52);
  v18 = swift_allocObject();
  *(v18 + qword_27D827488) = 0;
  *(v18 + qword_27D827490) = 0;
  *(v18 + qword_27D827498) = 0;
  v19 = (v18 + qword_27D8274A0);
  *v19 = 0;
  v19[1] = 0;
  *(v18 + qword_27D8274A8) = 0;
  *(v18 + qword_27D8274B0) = 0;
  *(v18 + qword_280DDC720) = a1;
  *(v18 + qword_27D8274B8) = a3;
  v46 = a2;
  *(v18 + qword_27D8274C0) = a2;
  *(v18 + qword_27D8274C8) = a4;
  sub_228390890();
  v20 = a1;
  v21 = a3;

  v47 = a4;
  sub_228390880();
  v22 = sub_228390860();

  *(v18 + qword_27D8274D0) = v22;
  v23 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver());
  v24 = v20;
  v25 = sub_22819C7AC(v24);

  *(v18 + qword_27D8274D8) = v25;
  type metadata accessor for MedicationDoseEventDataSource();
  v26 = swift_allocObject();
  v27 = v24;
  v45 = v21;
  swift_defaultActor_initialize();
  *(v26 + 112) = v27;
  *(v26 + 120) = v21;
  *(v18 + qword_27D8274E0) = v26;
  v28 = *v19;
  v29 = v19[1];
  v30 = v44;
  *v19 = a5;
  v19[1] = v30;
  sub_228176FA8(a5);
  sub_228176EC8(v28);
  v31 = (v18 + qword_27D8274E8);
  v32 = *(type metadata accessor for DayScheduleProvider() + 24);
  v33 = sub_2283909A0();
  (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
  v34 = MEMORY[0x277D84F90];
  *v31 = MEMORY[0x277D84F90];
  *(v31 + 1) = v34;
  sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v35 = *(sub_22838FEF0() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v49, "MutableArray<");
  HIWORD(v49[1]) = -4864;
  sub_22838F490();
  v38 = sub_22838F450();
  v40 = v39;
  (*(v12 + 8))(v15, v48);
  MEMORY[0x22AAB5C80](v38, v40);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v41 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();
  sub_228176EC8(a5);

  return v41;
}

uint64_t MedicationsRecordDoseDataSource.init(healthStore:listManager:medication:incompatibilityCache:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v42 = a6;
  v46 = sub_22838F4A0();
  v13 = *(v46 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v46);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + qword_27D827488) = 0;
  *(v7 + qword_27D827490) = 0;
  *(v7 + qword_27D827498) = 0;
  v17 = (v7 + qword_27D8274A0);
  *v17 = 0;
  v17[1] = 0;
  *(v7 + qword_27D8274A8) = 0;
  *(v7 + qword_27D8274B0) = 0;
  *(v7 + qword_280DDC720) = a1;
  *(v7 + qword_27D8274B8) = a3;
  v44 = a2;
  *(v7 + qword_27D8274C0) = a2;
  *(v7 + qword_27D8274C8) = a4;
  sub_228390890();
  v18 = a1;
  v19 = a3;

  v45 = a4;
  sub_228390880();
  v20 = sub_228390860();

  *(v7 + qword_27D8274D0) = v20;
  v21 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver());
  v22 = v18;
  v23 = sub_22819C7AC(v22);

  *(v7 + qword_27D8274D8) = v23;
  type metadata accessor for MedicationDoseEventDataSource();
  v24 = swift_allocObject();
  v25 = v22;
  v43 = v19;
  swift_defaultActor_initialize();
  *(v24 + 112) = v25;
  *(v24 + 120) = v19;
  *(v7 + qword_27D8274E0) = v24;
  v26 = *v17;
  v27 = v17[1];
  v28 = v42;
  *v17 = a5;
  v17[1] = v28;
  sub_228176FA8(a5);
  sub_228176EC8(v26);
  v29 = (v7 + qword_27D8274E8);
  v30 = *(type metadata accessor for DayScheduleProvider() + 24);
  v31 = sub_2283909A0();
  (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
  v32 = MEMORY[0x277D84F90];
  *v29 = MEMORY[0x277D84F90];
  *(v29 + 1) = v32;
  sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v33 = *(sub_22838FEF0() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v47, "MutableArray<");
  HIWORD(v47[1]) = -4864;
  sub_22838F490();
  v36 = sub_22838F450();
  v38 = v37;
  (*(v13 + 8))(v16, v46);
  MEMORY[0x22AAB5C80](v36, v38);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v39 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();
  sub_228176EC8(a5);

  return v39;
}

uint64_t sub_2282DBAA8()
{
  v1 = v0;
  v2 = *v0;
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = qword_27D827498;
  if (*(v0 + qword_27D827498))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();
  }

  v8 = sub_2283922D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v10 = sub_228392290();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v2;

  v13 = sub_22819BCDC(0, 0, v6, &unk_2283A2B58, v11);
  v14 = *(v1 + v7);
  *(v1 + v7) = v13;
}

uint64_t sub_2282DBCBC()
{
  v1 = v0;
  v27 = MEMORY[0x277D85248];
  sub_2282E3520(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_228392830();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3138();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultCenter];
  v17 = *MEMORY[0x277D766F0];
  sub_228392840();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v18 = sub_228392790();
  v29 = v18;
  v19 = sub_228392730();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_2282E3398(&qword_27D827528, MEMORY[0x277CC9DB0]);
  sub_2281A1504();
  sub_228391A70();
  sub_2282E3204(v5, &qword_280DDBAD0, v27);

  (*(v7 + 8))(v10, v6);
  swift_allocObject();
  swift_weakInit();
  sub_2282E3398(&qword_27D827530, sub_2282E3138);
  v20 = v28;
  v21 = sub_228391AC0();

  (*(v12 + 8))(v15, v20);
  v22 = *(v1 + qword_27D8274A8);
  *(v1 + qword_27D8274A8) = v21;

  v29 = sub_228360B00();
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_2282E3398(&qword_27D8245D8, sub_22829514C);
  v23 = sub_228391AC0();

  v24 = *(v1 + qword_27D8274B0);
  *(v1 + qword_27D8274B0) = v23;
}

uint64_t sub_2282DC120()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DBAA8();
  }

  return result;
}

uint64_t sub_2282DC178()
{
  v1 = *(v0 + qword_27D8274C0);

  v2 = *(v0 + qword_27D8274D0);

  v3 = *(v0 + qword_27D8274E0);

  v4 = *(v0 + qword_27D827488);

  v5 = *(v0 + qword_27D827490);

  v6 = *(v0 + qword_27D827498);

  v7 = *(v0 + qword_27D8274A0 + 8);
  sub_228176EC8(*(v0 + qword_27D8274A0));
  sub_2282E3F08(v0 + qword_27D8274E8, type metadata accessor for DayScheduleProvider);
  v8 = *(v0 + qword_27D8274A8);

  v9 = *(v0 + qword_27D8274B0);
}

uint64_t MedicationsRecordDoseDataSource.deinit()
{
  if (*(v0 + qword_27D827488))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();
  }

  if (*(v0 + qword_27D827490))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();
  }

  if (*(v0 + qword_27D827498))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();
  }

  v1 = sub_22838FFB0();

  v2 = *(v1 + qword_27D8274C0);

  v3 = *(v1 + qword_27D8274D0);

  v4 = *(v1 + qword_27D8274E0);

  v5 = *(v1 + qword_27D827488);

  v6 = *(v1 + qword_27D827490);

  v7 = *(v1 + qword_27D827498);

  v8 = *(v1 + qword_27D8274A0 + 8);
  sub_228176EC8(*(v1 + qword_27D8274A0));
  sub_2282E3F08(v1 + qword_27D8274E8, type metadata accessor for DayScheduleProvider);
  v9 = *(v1 + qword_27D8274A8);

  v10 = *(v1 + qword_27D8274B0);

  return v1;
}

uint64_t MedicationsRecordDoseDataSource.__deallocating_deinit()
{
  v0 = *MedicationsRecordDoseDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2282DC508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_2283911B0();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v12 = type metadata accessor for DayScheduleProvider();
  v5[30] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_2282E34A0(0, &qword_27D827540, MEMORY[0x277D858D8]);
  v5[33] = v14;
  v15 = *(v14 - 8);
  v5[34] = v15;
  v16 = *(v15 + 64) + 15;
  v5[35] = swift_task_alloc();
  sub_2282E34A0(0, &qword_27D827548, MEMORY[0x277D858C8]);
  v5[36] = v17;
  v18 = *(v17 - 8);
  v5[37] = v18;
  v19 = *(v18 + 64) + 15;
  v5[38] = swift_task_alloc();
  sub_2282E3520(0, &qword_27D827550, MEMORY[0x277D11630], v9);
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = sub_2283922A0();
  v5[41] = sub_228392290();
  v23 = sub_228392250();
  v5[42] = v23;
  v5[43] = v22;

  return MEMORY[0x2822009F8](sub_2282DC7E4, v23, v22);
}

uint64_t sub_2282DC7E4()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    v0[45] = *(Strong + qword_27D8274D0);
    v3 = *(MEMORY[0x277D11610] + 4);

    v4 = swift_task_alloc();
    v0[46] = v4;
    *v4 = v0;
    v4[1] = sub_2282DC970;
    v5 = v0[39];

    return MEMORY[0x28216A5D8](v5);
  }

  else
  {
    v6 = v0[41];

    v8 = v0[38];
    v7 = v0[39];
    v9 = v0[35];
    v11 = v0[31];
    v10 = v0[32];
    v13 = v0[28];
    v12 = v0[29];
    v14 = v0[27];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2282DC970()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[47] = v5;
  *v5 = v4;
  v5[1] = sub_2282DCAEC;
  v6 = v1[44];
  v7 = v1[35];

  return sub_2282DDAD0(v7);
}

uint64_t sub_2282DCAEC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 336);
  if (v0)
  {
    v7 = sub_2282DD3A8;
  }

  else
  {
    v7 = sub_2282DCC28;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2282DCC28()
{
  v1 = v0[44];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  sub_228392300();
  (*(v4 + 8))(v3, v5);
  v0[49] = qword_27D8274E8;
  swift_beginAccess();
  v6 = v0[40];
  v7 = sub_228392290();
  v0[50] = v7;
  v8 = *(MEMORY[0x277D858B8] + 4);
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_2282DCD40;
  v10 = v0[38];
  v11 = v0[36];
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v0 + 18, v7, v12, v11, v0 + 22);
}

uint64_t sub_2282DCD40()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;

  v4 = v2[50];

  v5 = v2[42];
  v6 = v2[43];
  if (v0)
  {
    v7 = sub_2282DD730;
  }

  else
  {
    v7 = sub_2282DCE60;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2282DCE60()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  if (v2 == 255)
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 328);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);

    (*(v16 + 8))(v14, v15);
    sub_2282E3204(v13, &qword_27D827550, MEMORY[0x277D11630]);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v19 = *(v0 + 280);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 216);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 240);
    sub_2282E3284(*(v0 + 352) + *(v0 + 392), *(v0 + 256));
    v5 = *(v4 + 24);
    v6 = *(v0 + 312);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 352) + *(v0 + 392);
    if (v2)
    {
      v10 = *v7;
      sub_2282E358C(v6, v3 + v5, &qword_27D827550, MEMORY[0x277D11630]);
      *v8 = v10;
      v8[1] = v1;
    }

    else
    {
      v27 = v7[1];
      sub_2282E358C(v6, v3 + v5, &qword_27D827550, MEMORY[0x277D11630]);
      *v8 = v1;
      v8[1] = v27;
    }

    swift_beginAccess();

    sub_2282E360C(v8, v9);
    swift_endAccess();
    v28 = *(v0 + 352);
    v29 = *(v0 + 320);
    v30 = *(v0 + 224);
    v31 = *(v0 + 232);
    v32 = sub_2283922D0();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v31, 1, 1, v32);
    v34 = swift_allocObject();
    swift_weakInit();

    v35 = sub_228392290();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;

    sub_2282E358C(v31, v30, &qword_27D827C30, MEMORY[0x277D85720]);
    LODWORD(v30) = (*(v33 + 48))(v30, 1, v32);

    v38 = *(v0 + 224);
    if (v30 == 1)
    {
      sub_2282E3204(*(v0 + 224), &qword_27D827C30, MEMORY[0x277D85720]);
    }

    else
    {
      sub_2283922C0();
      (*(v33 + 8))(v38, v32);
    }

    v40 = v36[2];
    v39 = v36[3];
    swift_unknownObjectRetain();

    if (v40)
    {
      swift_getObjectType();
      v41 = sub_228392250();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    sub_2282E3204(*(v0 + 232), &qword_27D827C30, MEMORY[0x277D85720]);
    v44 = swift_allocObject();
    *(v44 + 16) = &unk_2283A2B70;
    *(v44 + 24) = v36;
    sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    if (v43 | v41)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v41;
      *(v0 + 40) = v43;
    }

    v45 = *(v0 + 256);
    swift_task_create();

    sub_2282E3F08(v45, type metadata accessor for DayScheduleProvider);
    v46 = *(v0 + 320);
    v47 = sub_228392290();
    *(v0 + 400) = v47;
    v48 = *(MEMORY[0x277D858B8] + 4);
    v49 = swift_task_alloc();
    *(v0 + 408) = v49;
    *v49 = v0;
    v49[1] = sub_2282DCD40;
    v50 = *(v0 + 304);
    v51 = *(v0 + 288);
    v52 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v0 + 144, v47, v52, v51, v0 + 176);
  }
}

uint64_t sub_2282DD3A8()
{
  v40 = v0;
  sub_2282E3204(*(v0 + 312), &qword_27D827550, MEMORY[0x277D11630]);
  v1 = *(v0 + 384);
  *(v0 + 160) = v1;
  v2 = v1;
  sub_2281810DC(0, &qword_280DDB860);
  sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 216);

    v6 = *(v0 + 168);
    sub_228391190();
    v7 = v6;
    v8 = sub_2283911A0();
    v9 = sub_2283925C0();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 208);
    v11 = *(v0 + 216);
    v13 = *(v0 + 200);
    if (v10)
    {
      v14 = *(v0 + 192);
      v15 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v15 = 136315394;
      v16 = sub_228393600();
      v18 = sub_2281C96FC(v16, v17, &v39);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = v7;
      v20 = [v19 description];
      v36 = v13;
      v37 = v11;
      v21 = sub_228392000();
      v23 = v22;

      v24 = sub_2281C96FC(v21, v23, &v39);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_22816B000, v8, v9, "[%s] Error fetching dose events and schedule items %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v15, -1, -1);

      (*(v12 + 8))(v37, v36);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    if ([v7 hk_isDatabaseAccessibilityError])
    {
      v25 = *(v0 + 352);
      sub_22838F870();
      sub_22838F860();

      sub_22838F850();
    }

    v26 = *(v0 + 352);

    v28 = *(v0 + 304);
    v27 = *(v0 + 312);
    v29 = *(v0 + 280);
    v31 = *(v0 + 248);
    v30 = *(v0 + 256);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 216);

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_2282DD730()
{
  v41 = v0;
  v1 = *(v0 + 312);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  sub_2282E3204(v1, &qword_27D827550, MEMORY[0x277D11630]);
  v2 = *(v0 + 176);
  *(v0 + 160) = v2;
  v3 = v2;
  sub_2281810DC(0, &qword_280DDB860);
  sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 328);
    v6 = *(v0 + 216);

    v7 = *(v0 + 168);
    sub_228391190();
    v8 = v7;
    v9 = sub_2283911A0();
    v10 = sub_2283925C0();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 200);
    if (v11)
    {
      v15 = *(v0 + 192);
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v16 = 136315394;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v40);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = v8;
      v21 = [v20 description];
      v37 = v14;
      v38 = v12;
      v22 = sub_228392000();
      v24 = v23;

      v25 = sub_2281C96FC(v22, v24, &v40);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_22816B000, v9, v10, "[%s] Error fetching dose events and schedule items %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v39, -1, -1);
      MEMORY[0x22AAB7B80](v16, -1, -1);

      (*(v13 + 8))(v38, v37);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    if ([v8 hk_isDatabaseAccessibilityError])
    {
      v26 = *(v0 + 352);
      sub_22838F870();
      sub_22838F860();

      sub_22838F850();
    }

    v27 = *(v0 + 352);

    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 280);
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    v34 = *(v0 + 224);
    v33 = *(v0 + 232);
    v35 = *(v0 + 216);

    v36 = *(v0 + 8);

    return v36();
  }

  return result;
}

uint64_t sub_2282DDAD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2282E34A0(0, &qword_27D827558, MEMORY[0x277D858A8]);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22838EF60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_2283922A0();
  v2[10] = sub_228392290();
  v10 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DDC3C, v10, v9);
}

uint64_t sub_2282DDC3C()
{
  v1 = v0[10];
  v2 = v0[3];

  if (*(v2 + qword_27D827490))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();
  }

  if (*(v0[3] + qword_27D827488))
  {
    sub_2281810DC(0, &qword_280DDB860);

    sub_228392330();

    v3 = v0[3];
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];
  sub_22838EEF0();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  (*(v9 + 104))(v6, *MEMORY[0x277D858A0], v8);
  sub_2283923B0();

  (*(v5 + 8))(v4, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2282DDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2283922A0();
  v4[7] = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DDEE4, v6, v5);
}

uint64_t sub_2282DDEE4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2282DDF88(1);
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2282DDF88(char a1)
{
  v2 = v1;
  v4 = sub_228390460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v100 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22838FFC0();
  v97 = *(v98 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v99 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2282E3520(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = v81 - v13;
  sub_2282E3520(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v95 = v81 - v16;
  v90 = sub_2283912D0();
  v89 = *(v90 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v92 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_228391280();
  v93 = *(v94 - 8);
  v19 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_228390170();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22838F700();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DayScheduleProvider();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  if (a1)
  {
    v85 = v5;
    v86 = v4;
    v87 = v25;
    v88 = v22;
    v34 = v2 + qword_27D8274E8;
    v35 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_beginAccess();
    v83 = v34;
    sub_2282E3284(v34, v35);
    sub_22838F6F0();
    v36 = DayScheduleProvider.makeLoggableItems(timeZone:)(v30);
    (*(v27 + 8))(v30, v26);
    v84 = v35;
    sub_2282E3F08(v35, type metadata accessor for DayScheduleProvider);
    v37 = *(v36 + 16);
    if (v37)
    {
      *&v82 = v21;
      v104 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v37, 0);
      v101 = type metadata accessor for ScheduledDetailItemCell();
      v38 = v104;
      v81[1] = v36;
      v39 = (v36 + 48);
      v102 = v2;
      do
      {
        v41 = *(v39 - 2);
        v40 = *(v39 - 1);
        v42 = *v39;
        v43 = v38;
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = v41;
        *(v45 + 32) = v40;
        *(v45 + 40) = v42;
        sub_22819A598(v41, v40, v42);
        sub_22819A598(v41, v40, v42);
        sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell);
        v38 = v43;
        v103 = sub_22838FBB0();
        v47 = v46;
        v104 = v38;
        v49 = *(v38 + 16);
        v48 = *(v38 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2281C9DB4((v48 > 1), v49 + 1, 1);
          v38 = v104;
        }

        v107 = &type metadata for ScheduledDetailItem;
        v108 = sub_2282E333C();
        v50 = swift_allocObject();
        *&v106 = v50;
        *(v50 + 16) = v41;
        *(v50 + 24) = v40;
        *(v50 + 32) = v42;
        *(v50 + 40) = sub_2282E332C;
        *(v50 + 48) = v45;
        *(v50 + 56) = v103;
        *(v50 + 64) = v47;
        *(v38 + 16) = v49 + 1;
        sub_22816DFFC(&v106, v38 + 40 * v49 + 32);
        sub_22819A598(v41, v40, v42);

        sub_2282E32E8(v41, v40, v42);

        v39 += 24;
        --v37;
      }

      while (v37);
      v103 = v38;

      v21 = v82;
    }

    else
    {

      v103 = MEMORY[0x277D84F90];
    }

    v107 = sub_228391590();
    v108 = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(&v106);
    sub_228391580();
    v52 = v85;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v101 = MEMORY[0x277D84560];
    sub_2282E3520(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v53 = *(sub_2283912F0() - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    v82 = xmmword_228397F40;
    *(v56 + 16) = xmmword_228397F40;
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    sub_22827CAB8();
    v57 = sub_228392C90();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    v58 = v57;
    v59 = sub_228392E20();
    [v59 setUserInteractionEnabled_];
    sub_22820DC6C();
    v61 = v92;
    v62 = &v92[*(v60 + 48)];
    v63 = *MEMORY[0x277D74A98];
    v64 = sub_228391220();
    (*(*(v64 - 8) + 104))(v61, v63, v64);
    *v62 = sub_2281AF1B4;
    v62[1] = 0;
    (*(v89 + 104))(v61, *MEMORY[0x277D74AD8], v90);
    v65 = sub_228391230();
    (*(*(v65 - 8) + 56))(v95, 1, 1, v65);
    v66 = v91;
    sub_228391270();

    sub_2283911D0();
    (*(v93 + 8))(v66, v94);
    swift_allocObject();
    swift_weakInit();
    v67 = sub_2283913A0();
    (*(*(v67 - 8) + 56))(v96, 1, 1, v67);
    v68 = *MEMORY[0x277D12788];
    v104 = sub_228392000();
    v105 = v69;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283B2DF0);

    (*(v97 + 104))(v99, *MEMORY[0x277D10F98], v98);
    (*(v52 + 104))(v100, *MEMORY[0x277D11140], v86);
    v70 = v87;
    sub_228390160();

    sub_228241A58(0, &qword_280DDB8D0, &qword_280DDCD60);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 56) = v21;
    *(inited + 64) = sub_2282E3398(&qword_27D824520, MEMORY[0x277D11000]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    v73 = v88;
    (*(v88 + 16))(boxed_opaque_existential_1, v70, v21);
    *&v106 = v103;
    sub_2281D5710(inited);
    v74 = v106;
    v75 = v84;
    sub_2282E3284(v83, v84);
    v76 = DayScheduleProvider.makeHistoryItems(ungrouped:)(1);
    sub_2282E3F08(v75, type metadata accessor for DayScheduleProvider);
    v77 = sub_228337E98(v76);

    sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], v101);
    v78 = *(sub_22838FEF0() - 8);
    v79 = *(v78 + 72);
    v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F30;
    sub_228194894(v74);

    sub_22838FED0();
    sub_228194894(v77);

    sub_22838FED0();
    sub_22838FF50();

    return (*(v73 + 8))(v70, v21);
  }

  else
  {

    return sub_22838FF50();
  }
}

uint64_t sub_2282DEE90()
{
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_2283922D0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v6 = sub_228392290();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_2281DC88C(0, 0, v3, &unk_2283A2B90, v7);
}

uint64_t sub_2282DF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2283922A0();
  v4[7] = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DF0A0, v6, v5);
}

uint64_t sub_2282DF0A0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2282DBAA8();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2282DF140(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DF1A0(a1);
  }

  return result;
}

void sub_2282DF1A0(void *a1)
{
  v35 = a1;
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  sub_22838F3F0();
  v36 = *(v1 + qword_27D8274B8);
  v10 = v36;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v34[0] = sub_228390F20();
  v12 = v11;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228396260;
  sub_22838F3F0();
  v14 = type metadata accessor for MedicationsDoseLogViewModel(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 2) = v10;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0x3FF0000000000000;
  *(v17 + 6) = 1;
  *&v17[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus] = 1;
  (*(v3 + 16))(&v17[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate], v7, v2);
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
  v19 = *(v3 + 32);
  v20 = v10;
  v19(&v17[v18], v7, v2);
  *&v17[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount] = *(v17 + 5);
  *&v17[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index] = 0;
  *(v13 + 32) = v17;
  v21 = type metadata accessor for MedicationDoseLogListViewModel(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v19((v24 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date), v9, v2);
  v25 = (v24 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  v26 = v34[1];
  *v25 = v34[0];
  v25[1] = v12;
  *(v24 + 16) = v13;
  v27 = *(v26 + qword_280DDC720);
  v28 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController());

  v29 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v24, 0, v27, 0, 3, 0, 2, 0);
  v30 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v30 setModalPresentationStyle_];
  [v30 setModalInPresentation_];
  [v35 presentViewController:v30 animated:1 completion:0];

  v31 = *(v26 + qword_27D8274A0);
  if (v31)
  {
    v32 = *(v26 + qword_27D8274A0 + 8);

    v31(v33);

    sub_228176EC8(v31);
  }

  else
  {
  }
}

uint64_t sub_2282DF528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = a3;
    v10[1] = a4;
    v11 = a5 & 1;
    sub_2282DF5B8(v10, a1);
  }

  return result;
}

void sub_2282DF5B8(uint64_t *a1, void *a2)
{
  v29 = a2;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  sub_22838F3F0();
  v33 = *(v2 + qword_27D8274B8);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v11 = sub_228390F20();
  v13 = v12;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228396260;
  v30 = v10;
  v31 = v9;
  v32 = a1;
  *(v14 + 32) = LoggableDose.makeLoggingViewModel(index:)(0);
  v15 = type metadata accessor for MedicationDoseLogListViewModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v8, v4);
  v19 = (v18 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v19 = v11;
  v19[1] = v13;
  *(v18 + 16) = v14;
  v20 = v28;
  v21 = *(v28 + qword_280DDC720);
  v22 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController());

  v23 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v18, 0, v21, 0, 3, 0, 1, 0);
  v24 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v24 setModalPresentationStyle_];
  [v24 setModalInPresentation_];
  [v29 presentViewController:v24 animated:1 completion:0];

  v25 = *(v20 + qword_27D8274A0);
  if (v25)
  {
    v26 = *(v20 + qword_27D8274A0 + 8);

    v25(v27);

    sub_228176EC8(v25);
  }

  else
  {
  }
}

uint64_t sub_2282DF890(uint64_t a1, uint64_t a2, char *a3)
{
  v58 = a3;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v6 = v5;
  v57 = *(v5 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v52 - v8;
  v56 = sub_22838EF60();
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v12;
  v60 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v52 - v15;
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = v6;
  v18 = a1;
  sub_228392360();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v59 = v16;
  if (Strong)
  {
    v52[0] = Strong;
    v20 = sub_2283922D0();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v52[1] = a2;
    swift_weakInit();

    v22 = v56;
    (*(v10 + 16))(v60, v58, v56);
    v23 = v57;
    v24 = *(v57 + 16);
    v53 = v17;
    v24(v9, v18, v17);
    sub_2283922A0();

    v25 = sub_228392290();
    v26 = v9;
    v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v28 = v10;
    v29 = (v55 + *(v23 + 80) + v27) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v54 = v7;
    v31 = v30;
    v30[2] = v25;
    v30[3] = MEMORY[0x277D85700];
    v30[4] = v21;
    v32 = v30 + v27;
    v9 = v26;
    v33 = v53;
    (*(v28 + 32))(v32, v60, v22);
    v34 = v31 + v29;
    v10 = v28;
    v17 = v33;
    (*(v23 + 32))(v34, v9, v33);

    v35 = sub_22819BCDC(0, 0, v59, &unk_2283A2BA0, v31);
    v36 = *(v52[0] + qword_27D827490);
    *(v52[0] + qword_27D827490) = v35;
  }

  v37 = v60;
  v38 = v58;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = result;
    v40 = sub_2283922D0();
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v41 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v42 = v18;
    v43 = v56;
    (*(v10 + 16))(v37, v38, v56);
    v44 = v57;
    (*(v57 + 16))(v9, v42, v17);
    sub_2283922A0();

    v45 = sub_228392290();
    v46 = *(v10 + 80);
    v58 = v9;
    v47 = (v46 + 40) & ~v46;
    v48 = (v55 + *(v44 + 80) + v47) & ~*(v44 + 80);
    v49 = swift_allocObject();
    *(v49 + 2) = v45;
    *(v49 + 3) = MEMORY[0x277D85700];
    *(v49 + 4) = v41;
    (*(v10 + 32))(&v49[v47], v37, v43);
    (*(v44 + 32))(&v49[v48], v58, v17);

    v50 = sub_22819BCDC(0, 0, v59, &unk_2283A2BB0, v49);
    v51 = *(v54 + qword_27D827488);
    *(v54 + qword_27D827488) = v50;
  }

  return result;
}

uint64_t sub_2282DFF20()
{
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_2283922D0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_2283922A0();

  v6 = sub_228392290();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_2281DC568(0, 0, v3, &unk_2283A2BC0, v7);
}

uint64_t sub_2282E00C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2283922A0();
  *(v4 + 72) = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282E015C, v6, v5);
}

uint64_t sub_2282E015C()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + qword_27D827490))
    {
      v4 = *(Strong + qword_27D827490);

      sub_2281810DC(0, &qword_280DDB860);
      sub_228392330();
    }
  }

  v5 = v0[8];
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    if (*(v6 + qword_27D827488))
    {
      v7 = *(v6 + qword_27D827488);

      sub_2281810DC(0, &qword_280DDB860);
      sub_228392330();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2282E02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2282E34A0(0, &qword_27D827568, MEMORY[0x277D85890]);
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  sub_2282E3E00();
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  sub_2282E3D0C(0, &qword_27D827590, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB648]);
  v6[19] = v12;
  v13 = *(v12 - 8);
  v6[20] = v13;
  v14 = *(v13 + 64) + 15;
  v6[21] = swift_task_alloc();
  sub_2282E3D0C(0, &qword_27D827598, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB638]);
  v6[22] = v15;
  v16 = *(v15 - 8);
  v6[23] = v16;
  v17 = *(v16 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = sub_2283922A0();
  v6[26] = sub_228392290();
  v19 = sub_228392250();
  v6[27] = v19;
  v6[28] = v18;

  return MEMORY[0x2822009F8](sub_2282E051C, v19, v18);
}

uint64_t sub_2282E051C()
{
  if ((sub_228392340() & 1) != 0 || (v1 = v0[12], swift_beginAccess(), (v2 = swift_weakLoadStrong()) == 0))
  {
    v11 = v0[26];
  }

  else
  {
    v3 = v0[12];
    v0[29] = *(v2 + qword_27D8274E0);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + qword_27D8274B8);
      v0[30] = v5;
      v6 = v5;

      v7 = swift_task_alloc();
      v0[31] = v7;
      *v7 = v0;
      v7[1] = sub_2282E06C8;
      v8 = v0[21];
      v9 = v0[13];

      return sub_2282B2288(v8, v9);
    }

    v17 = v0[26];
  }

  v12 = v0[24];
  v13 = v0[21];
  v15 = v0[17];
  v14 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2282E06C8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_2282E121C;
  }

  else
  {
    v7 = sub_2282E0804;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2282E0804()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  sub_228391EE0();
  (*(v3 + 8))(v2, v4);
  v5 = v0[25];
  v0[33] = sub_228392290();
  v6 = sub_2282E3E84();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_2282E08F0;
  v9 = v0[24];
  v10 = v0[22];
  v11 = v0[18];

  return MEMORY[0x282200308](v11, v10, v6);
}

uint64_t sub_2282E08F0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_228392250();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2282E0C94;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_228392250();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2282E0A88;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2282E0A88()
{
  v1 = v0[33];

  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](sub_2282E0AEC, v2, v3);
}

uint64_t sub_2282E0AEC()
{
  v1 = v0[18];
  sub_2282E3D0C(0, &qword_27D827588, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB630]);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[26];
    (*(v0[23] + 8))(v0[24], v0[22]);

    v6 = v0[24];
    v7 = v0[21];
    v9 = v0[17];
    v8 = v0[18];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[36] = v12;
    *v12 = v0;
    v12[1] = sub_2282E0E00;
    v13 = v0[29];
    v14 = v0[13];

    return sub_2282B1850(v14);
  }
}

uint64_t sub_2282E0C94()
{
  v1 = v0[33];
  v0[10] = v0[35];
  sub_2281810DC(0, &qword_280DDB860);
  swift_willThrowTypedImpl();

  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](sub_2282E0D34, v2, v3);
}

uint64_t sub_2282E0D34()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];

  (*(v5 + 8))(v4, v6);
  v7 = v0[35];
  v8 = v0[24];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2282E0E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v7 = *(v3 + 224);
  v8 = *(v3 + 216);
  if (v1)
  {
    v9 = sub_2282E12C4;
  }

  else
  {
    v9 = sub_2282E0F44;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2282E0F44()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = *(v0 + 296);
    }

    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v27 = *(v0 + 296);

    v25 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  *(v0 + 88) = MEMORY[0x277D84F90];
  v3 = sub_228393240();
  if (v2 < 0)
  {
    __break(1u);
    return MEMORY[0x282200308](v3, v4, v5);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(v0 + 296);
      v8 = *(v0 + 240);
      v9 = v6 + 1;
      MEMORY[0x22AAB6D80]();
      v10 = sub_228390A30();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = v8;
      sub_228390A40();
      sub_228393210();
      v14 = *(*(v0 + 88) + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v6 = v9;
    }

    while (v2 != v9);
  }

  else
  {
    v15 = (*(v0 + 296) + 32);
    v16 = sub_228390A30();
    do
    {
      v17 = *(v0 + 240);
      v18 = *v15++;
      v19 = *(v16 + 48);
      v20 = *(v16 + 52);
      swift_allocObject();
      v21 = v17;
      v22 = v18;
      sub_228390A40();
      sub_228393210();
      v23 = *(*(v0 + 88) + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      --v2;
    }

    while (v2);
  }

  v24 = *(v0 + 296);

  v25 = *(v0 + 88);
LABEL_15:
  v29 = *(v0 + 136);
  v28 = *(v0 + 144);
  v30 = *(v0 + 120);
  v31 = *(v0 + 128);
  v32 = *(v0 + 112);
  *(v0 + 64) = v25;
  *(v0 + 72) = 0;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  sub_228392370();
  (*(v31 + 8))(v29, v30);
  sub_2282E3F08(v28, sub_2282E3E00);
  v33 = *(v0 + 200);
  *(v0 + 264) = sub_228392290();
  v34 = sub_2282E3E84();
  v35 = *(MEMORY[0x277D856D0] + 4);
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_2282E08F0;
  v37 = *(v0 + 192);
  v4 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = v34;

  return MEMORY[0x282200308](v3, v4, v5);
}

uint64_t sub_2282E121C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  v3 = *(v0 + 256);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2282E12C4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[18];

  (*(v5 + 8))(v4, v6);
  sub_2282E3F08(v7, sub_2282E3E00);
  v8 = v0[38];
  v9 = v0[24];
  v10 = v0[21];
  v12 = v0[17];
  v11 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2282E13B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2282E34A0(0, &qword_27D827568, MEMORY[0x277D85890]);
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  sub_2282E3D74(0, &qword_27D827570, MEMORY[0x277D857B8]);
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  sub_2282E3D74(0, &qword_27D827578, MEMORY[0x277D857A8]);
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = sub_2283922A0();
  v6[25] = sub_228392290();
  v17 = sub_228392250();
  v6[26] = v17;
  v6[27] = v16;

  return MEMORY[0x2822009F8](sub_2282E15B8, v17, v16);
}

uint64_t sub_2282E15B8()
{
  if ((sub_228392340() & 1) != 0 || (v1 = v0[12], swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {
    v8 = v0[25];

    v9 = v0[23];
    v10 = v0[20];
    v11 = v0[17];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v3 = *(Strong + qword_27D8274D8);
    v0[28] = v3;
    v3;

    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_2282E1700;
    v5 = v0[20];
    v6 = v0[13];

    return sub_22819AD28(v5, v6);
  }
}

uint64_t sub_2282E1700()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_2282E1CE4;
  }

  else
  {
    v7 = sub_2282E183C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2282E183C()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[12];
  sub_228392300();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[24];
  v7 = sub_228392290();
  v0[31] = v7;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = sub_2282E1944;
  v10 = v0[23];
  v11 = v0[21];
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 11, v7, v12, v11);
}

uint64_t sub_2282E1944()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2282E1A88, v5, v4);
}

uint64_t sub_2282E1A88()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 96);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      v8 = *(Strong + qword_27D8274B8);
      v9 = sub_2282DAFF0(v1, v8);

      *(v0 + 64) = v9;
      *(v0 + 72) = 1;
      sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
      sub_228392370();

      (*(v5 + 8))(v4, v7);
      v10 = *(v0 + 192);
      v11 = sub_228392290();
      *(v0 + 248) = v11;
      v12 = *(MEMORY[0x277D85798] + 4);
      v13 = swift_task_alloc();
      *(v0 + 256) = v13;
      *v13 = v0;
      v13[1] = sub_2282E1944;
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      v16 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 88, v11, v16, v15);
    }

    v17 = *(v0 + 224);
    v19 = *(v0 + 200);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  }

  else
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  }

  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2282E1CE4()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[14];

  v0[10] = v1;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  sub_228392380();

  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall MedicationsRecordDoseDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ScheduledDetailItemCell();
  sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  sub_22838FB40();
  sub_2283926C0();
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for MedicationsDayHistoryCell();
  sub_2282E3398(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_2282E3398(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell);
  sub_2283926B0();
}

uint64_t sub_2282E1F50()
{
  type metadata accessor for ScheduledDetailItemCell();
  sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  sub_22838FB40();
  sub_2283926C0();
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for MedicationsDayHistoryCell();
  sub_2282E3398(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_2282E3398(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell);
  return sub_2283926B0();
}

uint64_t MedicationsRecordDoseDataSource.layout(for:environment:)(unint64_t a1)
{
  v3 = *v1;
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  result = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v13 = result + 16 * a1;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);

    if (v15 == 0x656C756465686373 && v14 == 0xE900000000000064)
    {
    }

    else
    {
      v17 = sub_228393460();

      if ((v17 & 1) == 0)
      {
        sub_228390040();
        v11 = v9;
LABEL_14:
        v21 = sub_2283900C0();
        (*(v5 + 8))(v11, v4);
        return v21;
      }
    }

    v18 = *(v1 + qword_27D8274B8);
    v19 = *(v1 + qword_27D8274C8);
    v20 = sub_2283907F0();
    if (v20)
    {

      sub_228390010();
      sub_228390000();
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      sub_228390010();
    }

    sub_228390070();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void MedicationsRecordDoseDataSource.supplementaryItem(ofKind:at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_228390460();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3520(0, &qword_27D827500, MEMORY[0x277D10E90], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v72 - v14;
  v16 = sub_228391590();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v19 == a2)
  {
  }

  else
  {
    v77 = v15;
    v78 = v8;
    v79 = v7;
    v21 = sub_228393460();

    if ((v21 & 1) == 0)
    {
      v22 = *MEMORY[0x277D767D0];
      if (sub_228392000() == a1 && v23 == a2)
      {
      }

      else
      {
        v25 = sub_228393460();

        if ((v25 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v30 = *(v3 + qword_27D8274B8);
      v31 = *(v3 + qword_27D8274C8);
      v32 = sub_2283907F0();
      if (!v32)
      {
LABEL_29:
        a3[3] = sub_22838FC00();
        a3[4] = sub_2282E3398(&qword_27D823958, MEMORY[0x277D10EC8]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        sub_22838FBF0();
        return;
      }

      v75 = v32;
      v33 = [v32 incompatibleDevices];
      sub_22817A958(0, &qword_27D824140, 0x277D114E8);
      v34 = sub_2283921A0();

      if (v34 >> 62)
      {
        v35 = sub_2283930D0();
        v76 = v11;
        if (v35)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v76 = v11;
        if (v35)
        {
LABEL_20:
          v74 = a3;
          v80 = MEMORY[0x277D84F90];
          sub_2281C9E44(0, v35 & ~(v35 >> 63), 0);
          if (v35 < 0)
          {
            __break(1u);
            return;
          }

          v36 = 0;
          v37 = v80;
          do
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x22AAB6D80](v36, v34);
            }

            else
            {
              v38 = *(v34 + 8 * v36 + 32);
            }

            v39 = v38;
            v40 = [v38 deviceName];
            v41 = sub_228392000();
            v43 = v42;

            v44 = sub_2282AE540(v41, v43);
            v46 = v45;

            v80 = v37;
            v48 = *(v37 + 16);
            v47 = *(v37 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_2281C9E44((v47 > 1), v48 + 1, 1);
              v37 = v80;
            }

            ++v36;
            *(v37 + 16) = v48 + 1;
            v49 = v37 + 16 * v48;
            *(v49 + 32) = v44;
            *(v49 + 40) = v46;
          }

          while (v35 != v36);

          a3 = v74;
          goto LABEL_32;
        }
      }

LABEL_32:
      v50 = objc_opt_self();
      v51 = sub_228392190();

      v52 = [v50 localizedStringByJoiningStrings_];

      v53 = sub_228392000();
      v55 = v54;

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v73 = sub_22838F0C0();
      v74 = v56;
      sub_228241A58(0, &qword_280DDB870, &qword_280DDB830);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_228397F40;
      *(v57 + 56) = MEMORY[0x277D837D0];
      *(v57 + 64) = sub_22818E210();
      *(v57 + 32) = v53;
      *(v57 + 40) = v55;
      v58 = sub_22838F0C0();
      v60 = v59;
      if (*(v57 + 16))
      {
        v61 = sub_228391FD0();
        v63 = v62;

        v60 = v63;
      }

      else
      {
        v61 = v58;
      }

      v64 = sub_22838F0C0();
      v66 = v65;
      v80 = 9011426;
      v81 = 0xA300000000000000;
      MEMORY[0x22AAB5C80](v61, v60);

      MEMORY[0x22AAB5C80](23328, 0xE200000000000000);
      MEMORY[0x22AAB5C80](v64, v66);

      MEMORY[0x22AAB5C80](10333, 0xE200000000000000);
      MEMORY[0x22AAB5C80](v73, v74);

      MEMORY[0x22AAB5C80](41, 0xE100000000000000);
      sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_228396260;
      *(v67 + 32) = [objc_opt_self() systemGrayColor];
      v68 = v77;
      *v77 = 0xC000000000000000;
      v69 = *MEMORY[0x277D10E88];
      v70 = sub_22838FBD0();
      v71 = *(v70 - 8);
      (*(v71 + 104))(v68, v69, v70);
      (*(v71 + 56))(v68, 0, 1, v70);
      (*(v78 + 104))(v76, *MEMORY[0x277D11140], v79);
      a3[3] = sub_22838FBE0();
      a3[4] = sub_2282E3398(&qword_27D827508, MEMORY[0x277D10E98]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_22838FBC0();

      return;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v26 = sub_22838FB60();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_22838FB50();
  a3[3] = v26;
  a3[4] = sub_2282E3398(&qword_27D823960, MEMORY[0x277D10E18]);
  *a3 = v29;
}

uint64_t sub_2282E2D20(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DDF88(v1);
  }

  return result;
}

uint64_t sub_2282E2D80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2282E2E74;

  return v6(v2 + 32);
}

uint64_t sub_2282E2E74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t type metadata accessor for MedicationsRecordDoseDataSource()
{
  result = qword_280DDC710;
  if (!qword_280DDC710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282E301C()
{
  result = type metadata accessor for DayScheduleProvider();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2282E3138()
{
  if (!qword_27D827520)
  {
    sub_228392830();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282E3398(&qword_27D827528, MEMORY[0x277CC9DB0]);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827520);
    }
  }
}

uint64_t sub_2282E3204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282E3520(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282E3284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayScheduleProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2282E32E8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2282E333C()
{
  result = qword_27D827538;
  if (!qword_27D827538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827538);
  }

  return result;
}

uint64_t sub_2282E3398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2282E33E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2282DC508(a1, v4, v5, v7, v6);
}

void sub_2282E34A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2281810DC(255, &qword_280DDB860);
    v7 = a3(a1, &type metadata for MedicationsRecordDoseDataSource.UpdateOperationResult, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282E3520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282E358C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282E3520(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2282E360C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayScheduleProvider();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282E3670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2282DDE4C(a1, v4, v5, v6);
}

uint64_t sub_2282E3724(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22819DA1C;

  return sub_2282E2D80(a1, v5);
}

uint64_t sub_2282E37DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282DF008(a1, v4, v5, v6);
}

uint64_t sub_2282E38A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22838EF60() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_2282E02C8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_22838EF60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_2282E3B90(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22838EF60() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_2282E13B0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

void sub_2282E3D0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2282E3D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2282E3D0C(255, &qword_27D823F40, &qword_27D823F48, 0x277D11588, MEMORY[0x277D83940]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282E3E00()
{
  if (!qword_27D827580)
  {
    sub_2282E3D0C(255, &qword_27D827588, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB630]);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827580);
    }
  }
}

unint64_t sub_2282E3E84()
{
  result = qword_27D8275A0;
  if (!qword_27D8275A0)
  {
    sub_2282E3D0C(255, &qword_27D827598, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8275A0);
  }

  return result;
}

uint64_t sub_2282E3F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_19Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2282E3FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282E00C4(a1, v4, v5, v6);
}

uint64_t sub_2282E4094(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x277D84F90];
  a2(0, v2, 0);
  v3 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_228393040();
  v7 = result;
  v8 = a1;
  v9 = 0;
  v10 = *(a1 + 36);
  v28 = v2;
  v29 = v10;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v8 + 32))
  {
    v13 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v10 != *(v8 + 36))
    {
      goto LABEL_23;
    }

    v14 = *(*(v8 + 56) + 8 * v7);
    v16 = *(v30 + 16);
    v15 = *(v30 + 24);
    v17 = v8;

    if (v16 >= v15 >> 1)
    {
      result = a2(v15 > 1, v16 + 1, 1);
    }

    *(v30 + 16) = v16 + 1;
    *(v30 + 8 * v16 + 32) = v14;
    v11 = 1 << *(v17 + 32);
    if (v7 >= v11)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v13);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v17;
    v19 = *(v17 + 36);
    v10 = v29;
    if (v29 != v19)
    {
      goto LABEL_26;
    }

    v20 = v18 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v11 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v12 = v28;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (a1 + 72 + 8 * v13);
      v12 = v28;
      while (v22 < (v11 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_228205ADC(v7, v29, 0);
          v8 = a1;
          v11 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_228205ADC(v7, v29, 0);
      v8 = a1;
    }

LABEL_4:
    ++v9;
    v7 = v11;
    if (v9 == v12)
    {
      return v3;
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

uint64_t sub_2282E42F8(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = MEMORY[0x277D84F98];
  sub_2282E84B4(a5, a1, a2, &v17);
  v16 = sub_2282E4094(v17, sub_2281CA08C);

  sub_2282EA294(&v16, a3, a4, sub_228340824, sub_2282E9308);

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v16 + 32;
    v11 = MEMORY[0x277D84F90];
    while (v9 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_228199670(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_228199670((v13 > 1), v14 + 1, 1, v11);
      }

      ++v9;
      v11[2] = v14 + 1;
      v11[v14 + 4] = v12;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_11:

    return v11;
  }

  return result;
}

uint64_t sub_2282E44B8(void (*a1)(void *__return_ptr, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = MEMORY[0x277D84F98];
  sub_2282E87E4(a5, a1, a2, &v17);
  v16 = sub_2282E4094(v17, sub_2281CA174);

  sub_2282EA294(&v16, a3, a4, sub_228340838, sub_2282EA154);

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v16 + 32;
    v11 = MEMORY[0x277D84F90];
    while (v9 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2281998F0(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_2281998F0((v13 > 1), v14 + 1, 1, v11);
      }

      ++v9;
      v11[2] = v14 + 1;
      v11[v14 + 4] = v12;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_11:

    return v11;
  }

  return result;
}

uint64_t sub_2282E4678(void *a1, void *a2, char a3, void (*a4)(void *__return_ptr, void **), uint64_t a5, uint64_t **a6)
{
  v29 = a1;
  v30 = a2;
  v31 = a3 & 1;
  a4(v28, &v29);
  v9 = v28[0];
  v8 = v28[1];
  if (!(*a6)[2] || (v10 = *a6, , sub_2281A76E0(v9, v8), v12 = v11, , (v12 & 1) == 0))
  {

    v13 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *a6;
    *a6 = 0x8000000000000000;
    sub_22829AE24(MEMORY[0x277D84F90], v9, v8, isUniquelyReferenced_nonNull_native);

    *a6 = v27[0];
  }

  v16 = sub_2282E48EC(v27, v9, v8);
  v17 = *v15;
  if (*v15)
  {
    v18 = v15;
    v32 = v6;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    sub_22819A598(v29, v30, v31);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v17;
    if ((v22 & 1) == 0)
    {
      v17 = sub_228199528(0, *(v17 + 2) + 1, 1, v17);
      *v18 = v17;
    }

    v24 = *(v17 + 2);
    v23 = *(v17 + 3);
    if (v24 >= v23 >> 1)
    {
      v17 = sub_228199528((v23 > 1), v24 + 1, 1, v17);
      *v18 = v17;
    }

    *(v17 + 2) = v24 + 1;
    v25 = &v17[24 * v24];
    *(v25 + 4) = v19;
    *(v25 + 5) = v20;
    v25[48] = v21;
    (v16)(v27, 0);
  }

  else
  {
    (v16)(v27, 0);
  }
}

uint64_t (*sub_2282E4864(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2282E7608(v6, a2, a3);
  return sub_2282EAA58;
}

uint64_t (*sub_2282E48EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2282E76B4(v6, a2, a3);
  return sub_2282E4974;
}

void sub_2282E4978(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2282E49C4(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_2283930D0();
  a1 = v11;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v6 = MEMORY[0x22AAB6D80](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(a1 + 32);

LABEL_6:
  v14 = v6;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  result = sub_2283930D0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v9 = MEMORY[0x22AAB6D80](0, a2);
    goto LABEL_11;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a2 + 32);

LABEL_11:
    v13 = v9;
    v10 = a3(&v14, &v13);

    return v10 & 1;
  }

  __break(1u);
  return result;
}

id sub_2282E4B04(id result, uint64_t a2, uint64_t (*a3)(void **, void **))
{
  if (!*(result + 2) || (v5 = *(result + 4), v6 = *(result + 5), v15 = *(result + 48), result = sub_22819A598(v5, v6, v15), v13 = v5, v14 = v6, v15 == 255))
  {
    __break(1u);
  }

  else if (*(a2 + 16))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v12 = *(a2 + 48);
    result = sub_22819A598(v7, v8, v12);
    v10 = v7;
    v11 = v8;
    if (v12 != 255)
    {
      v9 = a3(&v13, &v10);
      sub_2282E32E8(v10, v11, v12);
      sub_2282E32E8(v13, v14, v15);
      return (v9 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282E4BE4(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB6D80](i, a1);
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_14:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * i + 32);

          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_14;
          }
        }

        v7 = sub_228390A10();
        v8 = [v7 logStatus];

        if (v8 == 4 || (v9 = sub_228390A10(), v10 = [v9 logStatus], v9, v10 == 5))
        {
          sub_228393210();
          v4 = *(v12 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        if (v6 == v2)
        {
          return v12;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282E4D64(unint64_t a1)
{
  sub_2282EA894(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_20:
    v6 = sub_2283930D0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
      v24 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v24)
        {
          MEMORY[0x22AAB6D80](v7, a1);
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_17:
            __break(1u);
            return v25;
          }
        }

        else
        {
          if (v7 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v9 = *(a1 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_17;
          }
        }

        v11 = sub_228390A10();
        v12 = [v11 scheduleItemIdentifier];

        if (v12)
        {

          v13 = sub_228390A10();
          v14 = [v13 scheduledDate];

          if (v14)
          {
            sub_22838F3E0();

            v15 = sub_22838F440();
            (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
            sub_2282EA98C(v5, &qword_280DDCDB0, MEMORY[0x277CC9578]);
            v16 = sub_228390A10();
            v17 = [v16 logStatus];

            if (v17 != 4)
            {
              v18 = sub_228390A10();
              v19 = [v18 &selRef_opaqueSeparatorColor + 1];

              if (v19 != 5)
              {
                sub_228393210();
                v20 = *(v25 + 16);
                sub_228393250();
                sub_228393260();
                sub_228393220();
                goto LABEL_6;
              }
            }
          }

          else
          {
            v8 = sub_22838F440();
            (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
            sub_2282EA98C(v5, &qword_280DDCDB0, MEMORY[0x277CC9578]);
          }
        }

LABEL_6:
        ++v7;
        if (v10 == v6)
        {
          return v25;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282E509C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2283930D0();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v24 = MEMORY[0x277D84F90];
  v5 = &selRef_localizedStringFromTimeInterval_;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](v6, a1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = sub_228390A10();
      v9 = [v8 v5[98]];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = v9;
    v11 = sub_228392000();
    v22 = v12;
    v23 = v11;

    v13 = [v8 medicationIdentifier];
    v14 = sub_228392000();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_228199404(0, *(v24 + 2) + 1, 1, v24);
    }

    v18 = *(v24 + 2);
    v17 = *(v24 + 3);
    if (v18 >= v17 >> 1)
    {
      v24 = sub_228199404((v17 > 1), v18 + 1, 1, v24);
    }

    *(v24 + 2) = v18 + 1;
    v19 = &v24[32 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    *(v19 + 6) = v23;
    *(v19 + 7) = v22;
    v5 = &selRef_localizedStringFromTimeInterval_;
  }

  while (v4 != v3);
LABEL_24:
  v20 = sub_2282B9714(v24);

  return v20;
}

char *sub_2282E52A8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v3 = sub_2283930D0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](i, a1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * i + 32);

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = sub_228390A20();
      if (v8)
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    v9 = v8;
    v10 = sub_228390A10();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_228199528(0, *(v5 + 2) + 1, 1, v5);
    }

    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_228199528((v11 > 1), v12 + 1, 1, v5);
    }

    *(v5 + 2) = v12 + 1;
    v13 = &v5[24 * v12];
    *(v13 + 4) = v10;
    *(v13 + 5) = v9;
    v13[48] = 1;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_2282E5438(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB6D80](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v19 = v5;
      sub_22825A264(&v19, &v18);

      v7 = v18;
      v8 = *(v18 + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_228199404(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v4 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
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
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v16 = sub_2282B9714(v4);

  return v16;
}

uint64_t DayScheduleProvider.init(doseEvents:scheduleItems:timeZoneChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for DayScheduleProvider() + 24);

  return sub_2282E56BC(a3, v5);
}

uint64_t type metadata accessor for DayScheduleProvider()
{
  result = qword_27D8275A8;
  if (!qword_27D8275A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282E56BC(uint64_t a1, uint64_t a2)
{
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DayScheduleProvider.makeLoggableItems(timeZone:)(void *a1)
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = sub_22838F440();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390C80();
  v114 = *(v6 - 8);
  v7 = *(v114 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v110 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v97 - v10;
  v12 = *v1;
  v105 = sub_2282E4D64(*v1);
  v13 = sub_2282E4BE4(v12);
  v118 = sub_2282E509C(v13);

  v107 = sub_2282E6598(a1);
  v14 = v1[1];
  if (v14 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v16 = 0;
    v117 = 0;
    v101 = v14 & 0xC000000000000001;
    v100 = v14 & 0xFFFFFFFFFFFFFF8;
    v99 = v14 + 32;
    v108 = v114 + 16;
    v121 = v114 + 8;
    v122 = v118 + 56;
    v103 = MEMORY[0x277D84F90];
    v109 = v11;
    v97 = i;
    v98 = v14;
    while (v101)
    {
      v92 = v16;
      v18 = MEMORY[0x22AAB6D80](v16, v14);
      v20 = __OFADD__(v92, 1);
      v21 = v92 + 1;
      if (v20)
      {
        goto LABEL_62;
      }

LABEL_9:
      v102 = v21;
      v14 = v18;
      v22 = sub_228390AF0();
      v23 = v22;
      v115 = *(v22 + 16);
      if (v115)
      {
        v24 = 0;
        v111 = v22 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
        v106 = MEMORY[0x277D84F90];
        v113 = v18;
        v112 = v22;
        while (1)
        {
          if (v24 >= *(v23 + 16))
          {
            goto LABEL_63;
          }

          v25 = v114;
          v26 = *(v114 + 72);
          v120 = v24;
          v27 = *(v114 + 16);
          v27(v11, v111 + v26 * v24, v6);
          v28 = v110;
          v27(v110, v11, v6);
          v29 = sub_228390C70();
          v30 = [v29 semanticIdentifier];

          v31 = [v30 stringValue];
          v32 = sub_228392000();
          v34 = v33;

          v35 = sub_228390C50();
          v37 = v36;
          v119 = *(v25 + 8);
          v119(v28, v6);
          v38 = v118;
          if (*(v118 + 16) && (v39 = *(v118 + 40), sub_228393520(), sub_2283920B0(), sub_2283920B0(), v40 = sub_228393570(), v41 = -1 << *(v38 + 32), v42 = v40 & ~v41, ((*(v122 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
          {
            v43 = ~v41;
            v44 = *(v38 + 48);
            while (1)
            {
              v45 = (v44 + 32 * v42);
              v14 = v45[2];
              v46 = v45[3];
              v47 = *v45 == v32 && v45[1] == v34;
              if (v47 || (sub_228393460() & 1) != 0)
              {
                v48 = v14 == v35 && v46 == v37;
                if (v48 || (sub_228393460() & 1) != 0)
                {
                  break;
                }
              }

              v42 = (v42 + 1) & v43;
              if (((*(v122 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v11 = v109;
          }

          else
          {
LABEL_30:

            v50 = v117;
            v51 = sub_2282EA484(v49, v32, v34, v35, v37);
            v117 = v50;

            v52 = *(v51 + 32);
            v53 = v52 & 0x3F;
            v54 = ((1 << v52) + 63) >> 6;
            v55 = 8 * v54;

            v56 = v107;

            if (v53 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              v116 = v37;
              MEMORY[0x28223BE20](isStackAllocationSafe);
              bzero(&v97 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0), v55);
              v58 = v54;
              v59 = v117;
              v60 = sub_2282E7F4C(&v97 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0), v58, v51, v56);
              v117 = v59;
              if (v59)
              {

                v96 = v117;
                swift_willThrow();

                __break(1u);
LABEL_73:

                result = MEMORY[0x22AAB7B80](v116, -1, -1);
                __break(1u);
                return result;
              }

              v61 = v60;

              v11 = v109;
              v37 = v116;
            }

            else
            {
              v79 = swift_slowAlloc();

              v116 = v79;
              v80 = v54;
              v81 = v117;
              v61 = sub_2282E7C68(v79, v80, v51, v56);

              v11 = v109;
              v117 = v81;
              if (v81)
              {
                goto LABEL_73;
              }

              MEMORY[0x22AAB7B80](v116, -1, -1);
            }

            v14 = v61[2];

            if (!v14)
            {
              v62 = sub_2282E4D64(v105);
              v63 = sub_2282E509C(v62);

              v14 = sub_2282844A4(v32, v34, v35, v37, v63);

              if (v14)
              {
                v119(v11, v6);
              }

              else
              {
                sub_228390C50();
                v64 = sub_228390AE0();
                v65 = [v64 scheduledDateTime];

                sub_22838F3E0();
                v66 = sub_228390C60();
                v67 = [v66 medicationIdentifier];

                sub_228392000();
                v68 = sub_228390C60();
                v69 = [v68 dose];

                sub_2283923C0();
                v70 = sub_228390C60();
                [v70 isLastScheduledDose];

                v71 = sub_228390930();
                v72 = *(v71 + 48);
                v73 = *(v71 + 52);
                swift_allocObject();
                v74 = sub_228390900();
                v14 = sub_228390C70();
                v119(v11, v6);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v75 = v106;
                }

                else
                {
                  v75 = sub_228199528(0, *(v106 + 2) + 1, 1, v106);
                }

                v77 = *(v75 + 2);
                v76 = *(v75 + 3);
                if (v77 >= v76 >> 1)
                {
                  v75 = sub_228199528((v76 > 1), v77 + 1, 1, v75);
                }

                *(v75 + 2) = v77 + 1;
                v106 = v75;
                v78 = &v75[24 * v77];
                *(v78 + 4) = v74;
                *(v78 + 5) = v14;
                v78[48] = 0;
              }

              goto LABEL_13;
            }
          }

          v119(v11, v6);

LABEL_13:
          v24 = v120 + 1;
          v23 = v112;
          if (v120 + 1 == v115)
          {

            v82 = v106;
            goto LABEL_47;
          }
        }
      }

      v82 = MEMORY[0x277D84F90];
LABEL_47:
      v83 = *(v82 + 2);
      v84 = v103;
      v14 = *(v103 + 2);
      v85 = v14 + v83;
      if (__OFADD__(v14, v83))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v85 <= *(v84 + 24) >> 1)
      {
        v14 = v98;
        v87 = v84;
      }

      else
      {
        if (v14 <= v85)
        {
          v88 = v14 + v83;
        }

        else
        {
          v88 = v14;
        }

        v87 = sub_228199528(isUniquelyReferenced_nonNull_native, v88, 1, v84);
        v14 = v98;
      }

      v89 = *(v82 + 2);
      v103 = v87;
      if (v89)
      {
        if ((*(v87 + 3) >> 1) - *(v87 + 2) < v83)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        v17 = v97;
        if (v83)
        {
          v90 = *(v103 + 2);
          v20 = __OFADD__(v90, v83);
          v91 = v90 + v83;
          if (v20)
          {
            goto LABEL_68;
          }

          *(v103 + 2) = v91;
        }
      }

      else
      {

        v17 = v97;
        if (v83)
        {
          goto LABEL_66;
        }
      }

      v47 = v102 == v17;
      v16 = v102;
      if (v47)
      {
        goto LABEL_71;
      }
    }

    if (v16 >= *(v100 + 16))
    {
      goto LABEL_64;
    }

    v18 = *(v99 + 8 * v16);
    v19 = v16;

    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      goto LABEL_9;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v103 = MEMORY[0x277D84F90];
LABEL_71:

  v93 = sub_2282E52A8(v105);

  v123 = v93;
  sub_2281D5D94(v103);
  result = v123;
  v95 = *MEMORY[0x277D85DE8];
  return result;
}

void *DayScheduleProvider.makeHistoryItems(ungrouped:)(char a1)
{
  v3 = sub_2282E4BE4(*v1);
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v21 = sub_2282E42F8(sub_228236DE4, 0, sub_228237048, 0, v3);

    v22 = sub_228195C98(v21);

    return v22;
  }

  if (v3 >> 62)
  {
    v5 = sub_2283930D0();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v27 = MEMORY[0x277D84F90];
  result = sub_2281CA0AC(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = v27;
  v23 = xmmword_228396260;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAB6D80](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = v23;
    *(v10 + 32) = v9;
    sub_2282EA894(0, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
    v25 = v11;
    v26 = &protocol witness table for <A> [A];
    v24[0] = v10;
    v27 = v8;
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2281CA0AC((v12 > 1), v13 + 1, 1);
      v14 = v25;
      v15 = v26;
    }

    else
    {
      v14 = v11;
      v15 = &protocol witness table for <A> [A];
    }

    ++v7;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
    v17 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    v19 = &v24[-2] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    sub_2282E841C(v13, v19, &v27, v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v8 = v27;
  }

  while (v5 != v7);

  return v8;
}

uint64_t sub_2282E6598(void *a1)
{
  v90 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2282EA894(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v75 - v5;
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], v2);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  v20 = *(type metadata accessor for DayScheduleProvider() + 24);
  v21 = v1;
  sub_2282EA8F8(v1 + v20, v19);
  v22 = sub_2283909A0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v19, 1, v22) == 1)
  {
    v25 = &qword_27D827550;
    v26 = MEMORY[0x277D11630];
    v27 = v19;
LABEL_8:
    sub_2282EA98C(v27, v25, v26);
    return MEMORY[0x277D84FA0];
  }

  v84 = v12;
  v85 = sub_228390990();
  v29 = v28;
  v30 = *(v23 + 8);
  v30(v19, v22);
  if (v29)
  {
    return MEMORY[0x277D84FA0];
  }

  v31 = v21 + v20;
  v32 = v21;
  sub_2282EA8F8(v31, v17);
  if (v24(v17, 1, v22) == 1)
  {
    sub_2282EA98C(v17, &qword_27D827550, MEMORY[0x277D11630]);
    v33 = v89;
    (*(v88 + 56))(v89, 1, 1, v87);
LABEL_7:
    v25 = &qword_280DDCDB0;
    v26 = MEMORY[0x277CC9578];
    v27 = v33;
    goto LABEL_8;
  }

  v33 = v89;
  sub_228390980();
  v30(v17, v22);
  v35 = v87;
  v34 = v88;
  if ((*(v88 + 48))(v33, 1, v87) == 1)
  {
    goto LABEL_7;
  }

  v37 = v84;
  (*(v34 + 32))(v84, v33, v35);
  v38 = v86;
  sub_22838F430();
  sub_2282EA9FC();
  v39 = v34;
  v40 = sub_228391FA0();
  v43 = *(v39 + 8);
  v41 = v39 + 8;
  v42 = v43;
  v43(v38, v35);
  if (v40)
  {
    v42(v37, v35);
    return MEMORY[0x277D84FA0];
  }

  v88 = v41;
  v44 = *(v32 + 8);
  v92 = MEMORY[0x277D84F90];
  if (v44 >> 62)
  {
    goto LABEL_41;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v47 = 0;
    v80 = v44 & 0xFFFFFFFFFFFFFF8;
    v81 = v44 & 0xC000000000000001;
    v78 = v42;
    v79 = v44 + 32;
    v76 = v45;
    v77 = v44;
    while (1)
    {
      if (v81)
      {
        v49 = MEMORY[0x22AAB6D80](v47, v44);
        v50 = __OFADD__(v47++, 1);
        if (v50)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v47 >= *(v80 + 16))
        {
          goto LABEL_39;
        }

        v49 = *(v79 + 8 * v47);

        v50 = __OFADD__(v47++, 1);
        if (v50)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v45 = sub_2283930D0();
          goto LABEL_14;
        }
      }

      v86 = sub_228390AE0();
      sub_22838EB00(v85);
      v90 = v51;
      v52 = [v51 doses];
      sub_22825A9CC();
      v53 = sub_2283921A0();

      if (v53 >> 62)
      {
        v54 = sub_2283930D0();
        if (!v54)
        {
LABEL_35:

          v57 = v46;
          goto LABEL_16;
        }
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v54)
        {
          goto LABEL_35;
        }
      }

      v55 = v53;
      v91 = v46;
      sub_2281CA06C(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        goto LABEL_40;
      }

      v89 = v54;
      v82 = v49;
      v83 = v47;
      v56 = 0;
      v57 = v91;
      v58 = v55;
      v59 = v55 & 0xC000000000000001;
      v60 = v55;
      do
      {
        if (v59)
        {
          v61 = MEMORY[0x22AAB6D80](v56, v58);
        }

        else
        {
          v61 = *(v58 + 8 * v56 + 32);
        }

        v62 = v61;
        v63 = [v90 identifier];
        v64 = sub_228392000();
        v66 = v65;

        v67 = [v62 medicationIdentifier];
        v68 = sub_228392000();
        v70 = v69;

        v91 = v57;
        v72 = *(v57 + 16);
        v71 = *(v57 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_2281CA06C((v71 > 1), v72 + 1, 1);
          v57 = v91;
        }

        ++v56;
        *(v57 + 16) = v72 + 1;
        v73 = (v57 + 32 * v72);
        v73[4] = v68;
        v73[5] = v70;
        v73[6] = v64;
        v73[7] = v66;
        v58 = v60;
      }

      while (v89 != v56);

      v47 = v83;
      v37 = v84;
      v44 = v77;
      v42 = v78;
      v46 = MEMORY[0x277D84F90];
      v45 = v76;
LABEL_16:
      v48 = sub_2282B9714(v57);

      sub_2281D5AB0(v48);
      if (v47 == v45)
      {
        v46 = v92;
        break;
      }
    }
  }

  v74 = sub_2282B9714(v46);

  v42(v37, v87);
  return v74;
}

uint64_t DayScheduleProvider.isDoneForToday.getter()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[1];
    }

    v11 = v0[1];
    v12 = sub_2283930D0();
    v1 = v11;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  if (!(*v0 >> 62))
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:
    v8 = 0;
    return v8 & 1;
  }

  v13 = v1;
  v14 = sub_2283930D0();
  v1 = v13;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  v2 = sub_2282E5438(v1);
  v3 = *v0;
  v4 = sub_2282E4BE4(*v0);
  v5 = sub_2282E509C(v4);

  v6 = sub_2282E4D64(v3);
  v7 = sub_2282E509C(v6);

  if (*(v5 + 16) && !*(v7 + 16))
  {
    v9 = sub_2282E6DFC(v7, v5);
    v8 = sub_2282E7CF8(v9, v2);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2282E6DFC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v17 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 11) | (32 * v10)));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    sub_2282D6520(&v16, v12, v13, v14, v15);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v17;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2282E6F24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_228393050() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_228392C50();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_2282E70B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_228393050() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_228393520();

      sub_2283920B0();
      v13 = sub_228393570();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2282E7260(char *__dst, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_53;
    }

    v17 = v14;
    while (1)
    {
      v18 = *v17;
      v19 = *v15;

      v20 = sub_2282E49C4(v18, v19, a5);
      if (v5)
      {

        v36 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v36 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v36 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v37 = 8 * (v36 >> 3);
          v38 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v17;
      v23 = v7 == v17++;
      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v22 = v15;
    v23 = v7 == v15++;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v22;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v24 = a2;
    v25 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v25;
    a2 = v24;
  }

  v16 = (a4 + 8 * v13);
  v15 = a4;
  if (v11 < 8 || a2 <= v7)
  {
LABEL_53:
    v42 = v16 - v15 + 7;
    if (v16 - v15 >= 0)
    {
      v42 = v16 - v15;
    }

    if (a2 >= v15 && a2 < (v15 + (v42 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
    {
      return 1;
    }

    v37 = 8 * (v42 >> 3);
    v38 = a2;
LABEL_59:
    v41 = v15;
LABEL_60:
    memmove(v38, v41, v37);
    return 1;
  }

  v26 = -a4;
  v46 = a4;
  v44 = -a4;
LABEL_28:
  v45 = a2;
  v27 = a2 - 1;
  v28 = v16 + v26;
  --v6;
  v47 = v16;
  v29 = v16;
  while (1)
  {
    v30 = *--v29;
    v31 = v27;
    v32 = *v27;

    v33 = sub_2282E49C4(v30, v32, a5);

    if (v5)
    {
      break;
    }

    v34 = v6 + 1;
    if (v33)
    {
      v35 = v31;
      if (v34 != v45)
      {
        *v6 = *v31;
      }

      v15 = v46;
      v16 = v47;
      if (v47 <= v46 || (a2 = v35, v26 = v44, v35 <= v7))
      {
        a2 = v35;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v34 != v47)
    {
      *v6 = *v29;
    }

    v28 -= 8;
    --v6;
    v47 = v29;
    v27 = v31;
    if (v29 <= v46)
    {
      v16 = v29;
      a2 = v45;
      v15 = v46;
      goto LABEL_53;
    }
  }

  if (v28 >= 0)
  {
    v39 = v28;
  }

  else
  {
    v39 = v28 + 7;
  }

  v40 = v39 >> 3;
  v38 = v45;
  v41 = v46;
  if (v45 < v46 || v45 >= (v46 + (v39 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v45, v46, 8 * v40);
    return 1;
  }

  if (v45 != v46)
  {
    v37 = 8 * v40;
    goto LABEL_60;
  }

  return 1;
}

uint64_t (*sub_2282E7608(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2282E7B48(v8);
  v8[9] = sub_2282E77C4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2282EAA5C;
}

uint64_t (*sub_2282E76B4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2282E7B70(v8);
  v8[9] = sub_2282E7934(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2282E7760;
}

void sub_2282E7764(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2282E77C4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2281A76E0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22829B2A8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_228299B6C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2281A76E0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2283934A0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2282E791C;
}

void (*sub_2282E7934(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2281A76E0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22829B54C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22829A07C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2281A76E0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2283934A0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2282E791C;
}

void sub_2282E7A8C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 40);
  if (v4)
  {
    v6 = v3[4];
    v7 = *v3[3];
    if (v5)
    {
      *(*(v7 + 56) + 8 * v6) = v4;
    }

    else
    {
      a3(v6, v3[1], v3[2], v4, v7);
    }
  }

  else if ((*a1)[5])
  {
    v8 = v3[4];
    v9 = *v3[3];
    sub_2281CBC34(*(v9 + 48) + 16 * v8);
    sub_2282E70B0(v8, v9);
  }

  v10 = *v3;

  free(v3);
}

uint64_t (*sub_2282E7B48(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2282EAA54;
}

uint64_t (*sub_2282E7B70(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2282E7B98;
}

void *sub_2282E7BA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2282EA330(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_2282E7C68(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2282E7F4C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2282E7CF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v3 = a1;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v32 = a1 + 56;

    v10 = 0;
    v29 = v3;
    v30 = v2;
    v27 = v8;
    v28 = v4;
    if (v7)
    {
      while (*(v3 + 16))
      {
LABEL_7:
        v11 = (*(v2 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v7)))));
        v13 = *v11;
        v12 = v11[1];
        v15 = v11[2];
        v14 = v11[3];
        v16 = *(v3 + 40);
        sub_228393520();

        sub_2283920B0();
        sub_2283920B0();
        v17 = sub_228393570();
        v18 = -1 << *(v3 + 32);
        v19 = v17 & ~v18;
        if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
LABEL_26:

          return 0;
        }

        v7 &= v7 - 1;
        v31 = ~v18;
        v20 = *(v3 + 48);
        while (1)
        {
          v21 = (v20 + 32 * v19);
          v22 = v21[2];
          v23 = v21[3];
          v24 = *v21 == v13 && v21[1] == v12;
          if (v24 || (sub_228393460() & 1) != 0)
          {
            v25 = v22 == v15 && v23 == v14;
            if (v25 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v19 = (v19 + 1) & v31;
          if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v3 = v29;
        v2 = v30;
        v8 = v27;
        v4 = v28;
        if (!v7)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      do
      {
LABEL_21:
        v26 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v26 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v26);
        ++v10;
      }

      while (!v7);
      v10 = v26;
      if (*(v3 + 16))
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

uint64_t sub_2282E7F4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v60 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_30:
    v63 = 0;
    v33 = 0;
    v59 = v5 + 56;
    v34 = 1 << *(v5 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v5 + 56);
    v37 = (v34 + 63) >> 6;
    v73 = v4 + 56;
    v62 = v37;
    while (v36)
    {
      v38 = __clz(__rbit64(v36));
      v69 = (v36 - 1) & v36;
LABEL_42:
      v67 = v38 | (v33 << 6);
      v41 = (*(v5 + 48) + 32 * v67);
      v42 = *v41;
      v43 = v41[1];
      v45 = v41[2];
      v44 = v41[3];
      v46 = *(v4 + 40);
      sub_228393520();

      sub_2283920B0();
      sub_2283920B0();
      v47 = sub_228393570();
      v48 = -1 << *(v4 + 32);
      v49 = v47 & ~v48;
      if ((*(v73 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        v71 = ~v48;
        v50 = *(a4 + 48);
        while (1)
        {
          v51 = (v50 + 32 * v49);
          v52 = v51[2];
          v53 = v51[3];
          v54 = *v51 == v42 && v51[1] == v43;
          if (v54 || (sub_228393460() & 1) != 0)
          {
            v55 = v52 == v45 && v53 == v44;
            if (v55 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v49 = (v49 + 1) & v71;
          if (((*(v73 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v5 = a3;
        *(v60 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        v4 = a4;
        v32 = __OFADD__(v63++, 1);
        v37 = v62;
        v36 = v69;
        if (v32)
        {
          __break(1u);
          goto LABEL_58;
        }
      }

      else
      {
LABEL_34:

        v4 = a4;
        v5 = a3;
        v37 = v62;
        v36 = v69;
      }
    }

    v39 = v33;
    while (1)
    {
      v33 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v33 >= v37)
      {
        goto LABEL_58;
      }

      v40 = *(v59 + 8 * v33);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v69 = (v40 - 1) & v40;
        goto LABEL_42;
      }
    }
  }

  else
  {
    v63 = 0;
    v6 = 0;
    v56 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v70 = a3 + 56;
    v58 = v10;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v61 = (v9 - 1) & v9;
LABEL_14:
      v14 = (*(v4 + 48) + 32 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = *(v5 + 40);
      sub_228393520();

      v20 = v15;
      v72 = v16;
      sub_2283920B0();
      v21 = v17;
      sub_2283920B0();
      v22 = sub_228393570();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      v26 = 1 << v24;
      if (((1 << v24) & *(v70 + 8 * (v24 >> 6))) != 0)
      {
        v66 = ~v23;
        v68 = *(a3 + 48);
        while (1)
        {
          v27 = (v68 + 32 * v24);
          v28 = v27[2];
          v29 = v27[3];
          v30 = *v27 == v20 && v27[1] == v72;
          if (v30 || (sub_228393460() & 1) != 0)
          {
            v31 = v28 == v21 && v29 == v18;
            if (v31 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v24 = (v24 + 1) & v66;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if ((*(v70 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
          {
            goto LABEL_6;
          }
        }

        v10 = v58;
        v60[v25] |= v26;
        v4 = a4;
        v32 = __OFADD__(v63++, 1);
        v5 = a3;
        v9 = v61;
        if (v32)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v5 = a3;
        v10 = v58;
        v9 = v61;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_58:

        return sub_22827A9E4(v60, a2, v63, v5);
      }

      v13 = *(v56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v61 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2282E841C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22816DFFC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_2282E84B4(unint64_t result, void (*a2)(void *__return_ptr, uint64_t *), uint64_t a3, unint64_t a4)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_33:
    result = sub_2283930D0();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v39 = v5 & 0xFFFFFFFFFFFFFF8;
      v40 = v5 & 0xC000000000000001;
      v37 = v6;
      v38 = v5;
      while (1)
      {
        if (v40)
        {
          v8 = MEMORY[0x22AAB6D80](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 >= *(v39 + 16))
          {
            goto LABEL_30;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v42 = v9;
        v45 = v8;
        a2(v44, &v45);
        v11 = v44[0];
        v10 = v44[1];
        if (!*(*a4 + 16))
        {
          break;
        }

        v12 = *a4;

        sub_2281A76E0(v11, v10);
        v14 = v13;

        if ((v14 & 1) == 0)
        {
          break;
        }

LABEL_26:
        v33 = sub_2282E4864(v43, v11, v10);
        if (*v32)
        {
          v34 = v32;

          MEMORY[0x22AAB5D20](v35);
          if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2283921E0();
          }

          sub_228392230();
        }

        (v33)(v43, 0);

        ++v7;
        if (v42 == v6)
        {
          return result;
        }
      }

      v15 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = *a4;
      v17 = v43[0];
      v5 = a4;
      *a4 = 0x8000000000000000;
      v19 = sub_2281A76E0(v11, v10);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_31;
      }

      a4 = v18;
      if (v17[3] < v22)
      {
        sub_228299B6C(v22, isUniquelyReferenced_nonNull_native);
        v23 = sub_2281A76E0(v11, v10);
        if ((a4 & 1) != (v24 & 1))
        {
          result = sub_2283934A0();
          __break(1u);
          return result;
        }

        v19 = v23;
        v25 = v43[0];
        if ((a4 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_18:
        v26 = v25[7];
        v27 = *(v26 + 8 * v19);
        *(v26 + 8 * v19) = MEMORY[0x277D84F90];

LABEL_25:
        a4 = v5;
        *v5 = v25;
        v6 = v37;
        v5 = v38;
        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v43[0];
        if (v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_22829B2A8();
        v25 = v43[0];
        if (a4)
        {
          goto LABEL_18;
        }
      }

LABEL_23:
      v25[(v19 >> 6) + 8] |= 1 << v19;
      v28 = (v25[6] + 16 * v19);
      *v28 = v11;
      v28[1] = v10;
      *(v25[7] + 8 * v19) = MEMORY[0x277D84F90];
      v29 = v25[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_32;
      }

      v25[2] = v31;
      goto LABEL_25;
    }
  }

  return result;
}

void sub_2282E87E4(uint64_t a1, void (*a2)(void *__return_ptr, void **), uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 48); ; i += 24)
    {
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      sub_22819A598(v10, v11, *i);
      sub_2282E4678(v10, v11, v12, a2, a3, a4);
      if (v4)
      {
        break;
      }

      sub_2282E32E8(v10, v11, v12);
      if (!--v5)
      {
        return;
      }
    }

    sub_2282E32E8(v10, v11, v12);
  }
}

uint64_t sub_2282E88A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v7 = v5;
  v98 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v22 = v9 + 1;
        goto LABEL_42;
      }

      v102 = v8;
      v11 = *a3;
      v6 = *(*a3 + 8 * (v9 + 1));
      v12 = *(*a3 + 8 * v9);

      v100 = sub_2282E49C4(v6, v12, a5);
      if (v7)
      {
      }

      v13 = v9 + 2;
      v96 = v9;
      v14 = 8 * v9;
      v15 = (v11 + 8 * v9 + 16);
      do
      {
        if (v102 == v13)
        {
          v22 = v102;
          if (v100)
          {
            goto LABEL_32;
          }

LABEL_40:
          v9 = v96;
          goto LABEL_42;
        }

        v16 = *(v15 - 1);
        v6 = *v15;
        if (*v15 >> 62)
        {
          if (v6 < 0)
          {
            v21 = *v15;
          }

          if (!sub_2283930D0())
          {
            goto LABEL_144;
          }
        }

        else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {

          v17 = MEMORY[0x22AAB6D80](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_146;
          }

          v17 = *(v6 + 32);
        }

        v107 = v17;
        if (v16 >> 62)
        {
          if (!sub_2283930D0())
          {
            goto LABEL_145;
          }
        }

        else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x22AAB6D80](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_147;
          }

          v18 = *(v16 + 32);
        }

        v106 = v19;
        v20 = a5(&v107, &v106) & 1;

        ++v13;
        ++v15;
      }

      while ((v100 & 1) == v20);
      v22 = v13 - 1;
      if ((v100 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v23 = v96;
      if (v22 < v96)
      {
        break;
      }

      if (v96 < v22)
      {
        v24 = 8 * v22 - 8;
        v25 = v22;
        while (1)
        {
          if (v23 != --v25)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_173;
            }

            v26 = *(v27 + v14);
            *(v27 + v14) = *(v27 + v24);
            *(v27 + v24) = v26;
          }

          ++v23;
          v24 -= 8;
          v14 += 8;
          if (v23 >= v25)
          {
            goto LABEL_40;
          }
        }
      }

      v9 = v96;
LABEL_42:
      v28 = a3[1];
      if (v22 >= v28)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v22, v9))
      {
        goto LABEL_165;
      }

      if (v22 - v9 >= a4)
      {
LABEL_51:
        v30 = v22;
        if (v22 < v9)
        {
          goto LABEL_164;
        }

        goto LABEL_52;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_166;
      }

      if (v9 + a4 >= v28)
      {
        v29 = a3[1];
      }

      else
      {
        v29 = v9 + a4;
      }

      if (v29 < v9)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (v22 == v29)
      {
        goto LABEL_51;
      }

      v94 = v7;
      v78 = *a3;
      v79 = *a3 + 8 * v22 - 8;
      v97 = v9;
      v7 = v9 - v22;
      v99 = v29;
      do
      {
        v101 = v79;
        v103 = v22;
        v80 = *(v78 + 8 * v22);
        v81 = v7;
        v82 = v79;
        do
        {
          v83 = *v82;
          if (v80 >> 62)
          {
            if (!sub_2283930D0())
            {
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
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
LABEL_150:
              __break(1u);
LABEL_151:
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
              goto LABEL_167;
            }
          }

          else if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          if ((v80 & 0xC000000000000001) != 0)
          {

            v84 = MEMORY[0x22AAB6D80](0, v80);
          }

          else
          {
            if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v84 = *(v80 + 32);
          }

          v107 = v84;
          if (v83 >> 62)
          {
            if (!sub_2283930D0())
            {
              goto LABEL_141;
            }
          }

          else if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }

          if ((v83 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x22AAB6D80](0, v83);
          }

          else
          {
            if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v85 = *(v83 + 32);
          }

          v106 = v86;
          v87 = a5(&v107, &v106);

          v6 = v107;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_170;
          }

          v88 = *v82;
          v80 = v82[1];
          *v82 = v80;
          v82[1] = v88;
          --v82;
        }

        while (!__CFADD__(v81++, 1));
        v22 = v103 + 1;
        v79 = v101 + 8;
        --v7;
        v30 = v99;
      }

      while (v103 + 1 != v99);
      v7 = v94;
      v9 = v97;
      if (v99 < v97)
      {
        goto LABEL_164;
      }

LABEL_52:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v32 = *(v10 + 2);
      v31 = *(v10 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_228198978((v31 > 1), v32 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v33;
      v34 = &v10[16 * v32];
      *(v34 + 4) = v9;
      *(v34 + 5) = v30;
      v35 = *v98;
      if (!*v98)
      {
        goto LABEL_174;
      }

      v9 = v30;
      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v10 + 4);
            v38 = *(v10 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_71:
            if (v40)
            {
              goto LABEL_153;
            }

            v53 = &v10[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_156;
            }

            v59 = &v10[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_160;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v63 = &v10[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_85:
          if (v58)
          {
            goto LABEL_155;
          }

          v66 = &v10[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_158;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_92:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_171;
          }

          v75 = *&v10[16 * v74 + 32];
          v76 = *&v10[16 * v36 + 40];
          sub_2282E7260((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v76), v35, a5);
          if (v7)
          {
          }

          if (v76 < v75)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2283406C0(v10);
          }

          if (v74 >= *(v10 + 2))
          {
            goto LABEL_150;
          }

          v77 = &v10[16 * v74];
          *(v77 + 4) = v75;
          *(v77 + 5) = v76;
          v108 = v10;
          result = sub_228340634(v36);
          v10 = v108;
          v33 = *(v108 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v10[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_151;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_152;
        }

        v48 = &v10[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_154;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_157;
        }

        if (v52 >= v44)
        {
          v70 = &v10[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_163;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_3:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_128:
  v6 = *v98;
  if (*v98)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_168:
      result = sub_2283406C0(v10);
      v10 = result;
    }

    v108 = v10;
    v90 = *(v10 + 2);
    if (v90 < 2)
    {
    }

    while (*a3)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_2282E7260((*a3 + 8 * v91), (*a3 + 8 * *&v10[16 * v90 + 16]), (*a3 + 8 * v92), v6, a5);
      if (v7)
      {
      }

      if (v92 < v91)
      {
        goto LABEL_161;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2283406C0(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_162;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      v108 = v10;
      result = sub_228340634(v90 - 1);
      v10 = v108;
      v90 = *(v108 + 2);
      if (v90 <= 1)
      {
      }
    }

    goto LABEL_172;
  }

LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_2282E9124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  if (a3 == a2)
  {
    return result;
  }

  v6 = *a4;
  v7 = (*a4 + 8 * a3 - 8);
  v8 = result - a3;
LABEL_5:
  v19 = v7;
  v20 = a3;
  v9 = *(v6 + 8 * a3);
  v18 = v8;
  while (1)
  {
    v10 = *v7;
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        break;
      }

      goto LABEL_8;
    }

    result = sub_2283930D0();
    if (!result)
    {
      break;
    }

LABEL_8:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v11 = MEMORY[0x22AAB6D80](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v9 + 32);
    }

    v22 = v11;
    if (v10 >> 62)
    {
      result = sub_2283930D0();
      if (!result)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_28;
      }
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAB6D80](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v12 = *(v10 + 32);
    }

    v21 = v13;
    v14 = a5(&v22, &v21);

    if (v14)
    {
      if (!v6)
      {
        goto LABEL_31;
      }

      v15 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v15;
      --v7;
      if (!__CFADD__(v8++, 1))
      {
        continue;
      }
    }

    a3 = v20 + 1;
    v7 = v19 + 1;
    v8 = v18 - 1;
    if (v20 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2282E9308(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v4 = a1[1];
  result = sub_228393410();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2282EA894(0, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
        v7 = sub_228392220();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_2282E88A4(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_2282E9124(0, v4, 1, a1, a2);
  }

  return result;
}

unint64_t sub_2282E9454(unint64_t __src, char *a2, char *a3, char *a4, uint64_t (*a5)(void **, void **))
{
  v46 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = &a2[-__src];
  v9 = &a2[-__src + 7];
  if (&a2[-__src] >= 0)
  {
    v9 = &a2[-__src];
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    if (a4 != __src || __src + 8 * v10 <= a4)
    {
      __src = memmove(a4, __src, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      __src = v7;
LABEL_44:
      if (__src != v5 || __src >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(__src, v5, 8 * ((v15 - v5) / 8));
      }

      return 1;
    }

    while (1)
    {
      if (v14 >= v6)
      {
        goto LABEL_10;
      }

      v18 = *v14;
      if (!*(*v14 + 16) || (v19 = *v5, v20 = *(v18 + 40), v21 = *(v18 + 48), v43 = *(v18 + 32), v44 = v20, v45 = v21, __src = sub_22819A598(v43, v20, v21), v45 == 255))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_49;
      }

      v22 = *(v19 + 40);
      v23 = *(v19 + 48);
      v40 = *(v19 + 32);
      v41 = v22;
      v42 = v23;
      __src = sub_22819A598(v40, v22, v23);
      if (v42 == 255)
      {
        goto LABEL_49;
      }

      v24 = v46(&v43, &v40);
      sub_2282E32E8(v40, v41, v42);
      sub_2282E32E8(v43, v44, v45);

      if (v24)
      {
        break;
      }

      v16 = v5;
      v17 = v7 == v5;
      v5 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v14;
    v17 = v7 == v14;
    v14 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v13] <= a4)
  {
    v25 = a2;
    memmove(a4, a2, 8 * v13);
    a2 = v25;
  }

  __src = a2;
  v15 = &v5[8 * v13];
  if (v11 < 8 || a2 <= v7)
  {
    goto LABEL_44;
  }

  v39 = v5;
LABEL_29:
  __dst = __src;
  v26 = (__src - 8);
  v6 -= 8;
  v27 = v15;
  while (1)
  {
    v29 = *(v27 - 1);
    v27 -= 8;
    v28 = v29;
    if (!*(v29 + 16))
    {
      break;
    }

    v30 = *v26;
    v31 = *(v28 + 40);
    v32 = *(v28 + 48);
    v43 = *(v28 + 32);
    v44 = v31;
    v45 = v32;
    __src = sub_22819A598(v43, v31, v32);
    if (v45 == 255)
    {
      break;
    }

    if (!*(v30 + 16))
    {
      goto LABEL_51;
    }

    v33 = *(v30 + 40);
    v34 = *(v30 + 48);
    v40 = *(v30 + 32);
    v41 = v33;
    v42 = v34;
    __src = sub_22819A598(v40, v33, v34);
    if (v42 == 255)
    {
      goto LABEL_51;
    }

    v35 = v46(&v43, &v40);
    sub_2282E32E8(v40, v41, v42);
    sub_2282E32E8(v43, v44, v45);

    v36 = v6 + 8;
    if (v35)
    {
      v37 = v26;
      if (v36 != __dst)
      {
        *v6 = *v26;
      }

      v5 = v39;
      if (v15 <= v39 || (__src = v37, v37 <= v7))
      {
        __src = v37;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v36 != v15)
    {
      *v6 = *v27;
    }

    v6 -= 8;
    v15 = v27;
    if (v27 <= v39)
    {
      v15 = v27;
      __src = __dst;
      v5 = v39;
      goto LABEL_44;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return __src;
}

uint64_t sub_2282E97D4(uint64_t *a1, char *a2, void *a3, uint64_t (*a4)(void **, void **))
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_2283406C0(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v6 = *(v7 + 16);
  if (v6 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = (v7 + 16 * v6);
      v11 = *v10;
      v12 = &v9[2 * v6];
      v13 = v12[1];
      sub_2282E9454(*a3 + 8 * *v10, (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v6 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      v10[1] = v13;
      v15 = v14 - v6;
      if (v14 < v6)
      {
        goto LABEL_12;
      }

      v6 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v6;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

uint64_t sub_2282E9914(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, void **))
{
  v97 = result;
  v113 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 < 1)
  {
LABEL_100:
    if (!*v97)
    {
      goto LABEL_132;
    }

    sub_2282E97D4(&v113, *v97, a3, a5);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v25 = v7 + 1;
      goto LABEL_17;
    }

    v103 = v8;
    v10 = *a3;
    v11 = *(*a3 + 8 * (v7 + 1));
    v12 = *(*a3 + 8 * v7);

    v13 = sub_2282E4B04(v11, v12, a5);
    if (v5)
    {
    }

    v14 = v13;

    v15 = v7 + 2;
    v95 = v7;
    v16 = 8 * v7;
    v17 = v10 + 8 * v9 + 16;
    while (v6 != v15)
    {
      v18 = *v17;
      if (!*(*v17 + 16))
      {
        goto LABEL_128;
      }

      v19 = *(v17 - 8);
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      v110 = *(v18 + 32);
      v111 = v20;
      v112 = v21;
      result = sub_22819A598(v110, v20, v21);
      if (v112 == 255)
      {
        goto LABEL_128;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_127;
      }

      v22 = *(v19 + 40);
      v23 = *(v19 + 48);
      v107 = *(v19 + 32);
      v108 = v22;
      v109 = v23;
      result = sub_22819A598(v107, v22, v23);
      if (v109 == 255)
      {
        goto LABEL_127;
      }

      v24 = a5(&v110, &v107) & 1;
      sub_2282E32E8(v107, v108, v109);
      sub_2282E32E8(v110, v111, v112);

      ++v15;
      v17 += 8;
      if ((v14 & 1) != v24)
      {
        v25 = v15 - 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_76:
        v9 = v95;
        if (v25 >= v95)
        {
          v5 = 0;
          if (v95 < v25)
          {
            v75 = 8 * v25 - 8;
            v76 = v25;
            v77 = v95;
            v8 = v103;
            while (1)
            {
              if (v77 != --v76)
              {
                v79 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v78 = *(v79 + v16);
                *(v79 + v16) = *(v79 + v75);
                *(v79 + v75) = v78;
              }

              ++v77;
              v75 -= 8;
              v16 += 8;
              if (v77 >= v76)
              {
                goto LABEL_17;
              }
            }
          }

          v8 = v103;
          goto LABEL_17;
        }

LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }
    }

    v25 = v6;
    if (v14)
    {
      goto LABEL_76;
    }

LABEL_15:
    v9 = v95;
    v5 = 0;
    v8 = v103;
LABEL_17:
    v26 = a3[1];
    if (v25 >= v26)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v25, v9))
    {
      goto LABEL_120;
    }

    if (v25 - v9 >= a4)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_121;
    }

    if (v9 + a4 < v26)
    {
      v26 = (v9 + a4);
    }

    if (v26 < v9)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v25 == v26)
    {
LABEL_25:
      v7 = v25;
      if (v25 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v26;
      v105 = v8;
      v96 = v9;
      v80 = *a3;
      v81 = *a3 + 8 * v25 - 8;
      v82 = v9 - v25;
      do
      {
        v101 = v25;
        v83 = *(v80 + 8 * v25);
        v84 = v82;
        v85 = v81;
        do
        {
          if (!*(v83 + 16))
          {
            goto LABEL_124;
          }

          v86 = *v85;
          v87 = *(v83 + 40);
          v88 = *(v83 + 48);
          v110 = *(v83 + 32);
          v111 = v87;
          v112 = v88;
          result = sub_22819A598(v110, v87, v88);
          if (v112 == 255)
          {
            goto LABEL_124;
          }

          if (!*(v86 + 16))
          {
            goto LABEL_123;
          }

          v89 = *(v86 + 40);
          v90 = *(v86 + 48);
          v107 = *(v86 + 32);
          v108 = v89;
          v109 = v90;
          result = sub_22819A598(v107, v89, v90);
          if (v109 == 255)
          {
            goto LABEL_123;
          }

          v91 = a5(&v110, &v107);
          sub_2282E32E8(v107, v108, v109);
          sub_2282E32E8(v110, v111, v112);

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_126;
          }

          v92 = *v85;
          v83 = v85[1];
          *v85 = v83;
          v85[1] = v92;
          --v85;
        }

        while (!__CFADD__(v84++, 1));
        v25 = (v101 + 1);
        v81 += 8;
        --v82;
      }

      while (v101 + 1 != v99);
      v9 = v96;
      v8 = v105;
      v7 = v99;
      if (v99 < v96)
      {
        goto LABEL_119;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v28 = *(v8 + 16);
    v27 = *(v8 + 24);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      result = sub_228198978((v27 > 1), v28 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v29;
    v30 = v8 + 32;
    v31 = (v8 + 32 + 16 * v28);
    *v31 = v9;
    v31[1] = v7;
    v113 = v8;
    v100 = *v97;
    if (!*v97)
    {
      break;
    }

    if (v28)
    {
      v98 = v7;
      v104 = v8;
      while (1)
      {
        v32 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        v8 = v104;
        if (v29 == 3)
        {
          v33 = v104[4];
          v34 = v104[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_46:
          if (v36)
          {
            goto LABEL_110;
          }

          v49 = (v8 + 16 * v29);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_113;
          }

          v55 = (v30 + 16 * v32);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_117;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v32 = v29 - 2;
            }

            goto LABEL_67;
          }

          goto LABEL_60;
        }

        v59 = &v104[2 * v29];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_60:
        if (v54)
        {
          goto LABEL_112;
        }

        v62 = (v30 + 16 * v32);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_115;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_67:
        if (v32 - 1 >= v29)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v70 = (v30 + 16 * (v32 - 1));
        v71 = *v70;
        v72 = (v30 + 16 * v32);
        v73 = v72[1];
        result = sub_2282E9454(*a3 + 8 * *v70, (*a3 + 8 * *v72), (*a3 + 8 * v73), v100, a5);
        if (v5)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_105;
        }

        v74 = *(v8 + 16);
        if (v32 > v74)
        {
          goto LABEL_106;
        }

        *v70 = v71;
        v70[1] = v73;
        if (v32 >= v74)
        {
          goto LABEL_107;
        }

        v29 = v74 - 1;
        result = memmove((v30 + 16 * v32), v72 + 2, 16 * (v74 - 1 - v32));
        v104[2] = v74 - 1;
        if (v74 <= 2)
        {
          v8 = v104;
LABEL_3:
          v113 = v8;
          v7 = v98;
          goto LABEL_4;
        }
      }

      v37 = v30 + 16 * v29;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v8 = v104;
      if (v43)
      {
        goto LABEL_108;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_109;
      }

      v44 = &v104[2 * v29];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_111;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_114;
      }

      if (v48 >= v40)
      {
        v66 = (v30 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_118;
        }

        if (v35 < v69)
        {
          v32 = v29 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_46;
    }

LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_100;
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}