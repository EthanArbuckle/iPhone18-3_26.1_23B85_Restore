uint64_t sub_22B0AB778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();
      (*(*v18 + 112))(v29);
      result = sub_22B0DFD80();
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

unint64_t sub_22B0AB9E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22B0DFD40();
  (*(*a1 + 112))(v7);
  sub_22B0DFD80();
  v5 = -1 << *(a2 + 32);
  result = sub_22B0DF810();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B0ABAAC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B0AB1D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22B0AC068();
      goto LABEL_12;
    }

    sub_22B0AC54C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22B076420(&qword_2813EAD80);
  v15 = sub_22B0DF2A0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22B076420(&qword_2813EAD70);
      v23 = sub_22B0DF2F0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B0DFC90();
  __break(1u);
  return result;
}

uint64_t sub_22B0ABD28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22B0AB518(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22B0AC2A0();
      goto LABEL_16;
    }

    sub_22B0AC854(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22B0DFD40();
  sub_22B0DF380();
  result = sub_22B0DFD80();
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

      result = sub_22B0DFC60();
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
  result = sub_22B0DFC90();
  __break(1u);
  return result;
}

uint64_t sub_22B0ABEA8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B0AB778(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22B0AC3FC();
      goto LABEL_12;
    }

    sub_22B0ACA8C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22B0DFD40();
  (*(*v5 + 112))(v17);
  result = sub_22B0DFD80();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NamedGroupSpecifier();
    do
    {
      v12 = *(**(*(v8 + 48) + 8 * a2) + 120);

      LOBYTE(v12) = v12(v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
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
  result = sub_22B0DFC90();
  __break(1u);
  return result;
}

void *sub_22B0AC068()
{
  v1 = v0;
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  v7 = *v0;
  v8 = sub_22B0DF890();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_22B0AC2A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  v2 = *v0;
  v3 = sub_22B0DF890();
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

void *sub_22B0AC3FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  v2 = *v0;
  v3 = sub_22B0DF890();
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

uint64_t sub_22B0AC54C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22B0DF0E0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  v10 = sub_22B0DF8A0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22B076420(&qword_2813EAD80);
      result = sub_22B0DF2A0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22B0AC854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();

      sub_22B0DF380();
      result = sub_22B0DFD80();
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

uint64_t sub_22B0ACA8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();
      v20 = *(*v18 + 112);

      v20(v30);
      result = sub_22B0DFD80();
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

void *sub_22B0ACCDC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22B0DF830();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_22B083484(v2, 0);

    v1 = sub_22B092E38(&v5, v3 + 4, v2, v1);
    sub_22B0781A0();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

unint64_t sub_22B0ACDE4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2318895C0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_22B0AAD44(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_22B0DF830();
      v2 = result;
    }

    while (result);
  }

  return result;
}

id sub_22B0ACF9C()
{
  v1 = [*v0 error];

  return v1;
}

id sub_22B0ACFF0@<X0>(void *a1@<X8>)
{
  result = [*v1 status];
  *a1 = result;
  return result;
}

uint64_t sub_22B0AD02C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_22B0DF0B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22B0DF0E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_22B0AD0D0(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for BaseAnalyzerDataSource();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22B0AD188@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  v3 = [v2 lastExitContext];

  result = 0;
  if (v3)
  {
    result = sub_22B0AF6CC();
    v5 = &off_28189EFD0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_22B0AD238()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22B0AD2C0();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B0AD2C0()
{
  v1 = sub_22B0DF0E0();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  v6 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v7 = [v6[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v8 = *(v0 + *((*v5 & *v0) + 0x78));
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v45 = sub_22B099028(0x736568636E75616CLL, 0xE800000000000000, v4);
  LOBYTE(v7) = v9;

  os_unfair_lock_unlock(v8 + 22);
  v59 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v44 = sub_22B099028(0x6C616D726F6E6261, 0xEC00000074697845, v4);
  LOBYTE(v7) = v10;

  os_unfair_lock_unlock(v8 + 22);
  v58 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v43 = sub_22B099028(0x7261746E756C6F76, 0xED00007469784579, v4);
  LOBYTE(v7) = v11;

  os_unfair_lock_unlock(v8 + 22);
  v57 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v42 = sub_22B099028(0x6D617374656ALL, 0xE600000000000000, v4);
  LOBYTE(v7) = v12;

  os_unfair_lock_unlock(v8 + 22);
  v56 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v41 = sub_22B099028(0x6574617768676968, 0xE900000000000072, v4);
  LOBYTE(v7) = v13;

  os_unfair_lock_unlock(v8 + 22);
  v55 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v40 = sub_22B099028(0x4C737365636F7270, 0xEC00000074696D69, v4);
  LOBYTE(v7) = v14;

  os_unfair_lock_unlock(v8 + 22);
  v54 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v39 = sub_22B099028(0x74697845656C6469, 0xE800000000000000, v4);
  LOBYTE(v7) = v15;

  os_unfair_lock_unlock(v8 + 22);
  v53 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v38 = sub_22B099028(0x6873617263, 0xE500000000000000, v4);
  LOBYTE(v7) = v16;

  os_unfair_lock_unlock(v8 + 22);
  v52 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v37 = sub_22B099028(0x676F646863746177, 0xE800000000000000, v4);
  v18 = v17;

  os_unfair_lock_unlock(v8 + 22);
  v19 = v18 & 1;
  v51 = v18 & 1;
  v36 = v6;
  v21 = *v6;
  v20 = v6[1];
  LOBYTE(v6) = v59;
  LOBYTE(v5) = v58;
  v22 = v57;
  v31 = v56;
  v32 = v55;
  v33 = v54;
  v34 = v53;
  v35 = v52;
  v23 = type metadata accessor for ProcessLaunchSummaryLogEvent();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v49 = v21;
  v50 = v20;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);
  v25 = v50;
  v26 = &v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v26 = v49;
  *(v26 + 1) = v25;
  v27 = &v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  *v27 = v45;
  v27[8] = v6;
  *(v27 + 9) = v49;
  *(v27 + 3) = *(&v49 + 3);
  *(v27 + 2) = v44;
  v27[24] = v5;
  *(v27 + 25) = *v66;
  *(v27 + 7) = *&v66[3];
  *(v27 + 4) = v43;
  v27[40] = v22;
  *(v27 + 41) = *v65;
  *(v27 + 11) = *&v65[3];
  *(v27 + 6) = v42;
  v27[56] = v31;
  LODWORD(v25) = *v64;
  *(v27 + 15) = *&v64[3];
  *(v27 + 57) = v25;
  *(v27 + 8) = v41;
  v27[72] = v32;
  LODWORD(v25) = *v63;
  *(v27 + 19) = *&v63[3];
  *(v27 + 73) = v25;
  *(v27 + 10) = v40;
  v27[88] = v33;
  LODWORD(v25) = *v62;
  *(v27 + 23) = *&v62[3];
  *(v27 + 89) = v25;
  *(v27 + 12) = v39;
  v27[104] = v34;
  LODWORD(v25) = *v61;
  *(v27 + 27) = *&v61[3];
  *(v27 + 105) = v25;
  *(v27 + 14) = v38;
  v27[120] = v35;
  LODWORD(v25) = *v60;
  *(v27 + 31) = *&v60[3];
  *(v27 + 121) = v25;
  *(v27 + 16) = v37;
  v27[136] = v19;
  v48.receiver = v24;
  v48.super_class = v23;
  v28 = objc_msgSendSuper2(&v48, sel_init);
  [v36[4] submitLogEvent_];

  return (*(v46 + 8))(v4, v47);
}

void sub_22B0AD950(void *a1)
{
  type metadata accessor for ProcessLaunchLogEvent();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    sub_22B0AD9D4(v3);
  }
}

void sub_22B0AD9D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v147 - v6;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  os_unfair_lock_lock(v13 + 22);
  v14 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, 0x736568636E75616CLL, 0xE800000000000000, v11);

  v155 = v8;
  v17 = *(v8 + 8);
  v15 = v8 + 8;
  v16 = v17;
  v17(v11, v7);
  os_unfair_lock_unlock(v13 + 22);
  if (*(a1 + OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot) == 1)
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v18 = sub_22B0DF1B0();
    __swift_project_value_buffer(v18, qword_27D8B91F8);
    v19 = sub_22B0DF190();
    v20 = sub_22B0DF6A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B074000, v19, v20, "Last exit context: first launch after reboot", v21, 2u);
      MEMORY[0x23188A520](v21, -1, -1);
    }

    LOBYTE(v176[0]) = 2;
LABEL_19:
    LOBYTE(v173) = 1;
    sub_22B0AEF84(v176, 0x100000000, 0, 1, 0, 0);
    return;
  }

  v22 = v1 + *((*v12 & *v1) + 0x80);
  v23 = *(v22 + 1);
  (*v22)(&v173);
  if (!v174)
  {
    sub_22B07D02C(&v173, &qword_27D8B5EB8, &qword_22B0E5188);
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v31 = sub_22B0DF1B0();
    __swift_project_value_buffer(v31, qword_27D8B91F8);
    v32 = sub_22B0DF190();
    v33 = sub_22B0DF6A0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B074000, v32, v33, "Last exit context: exit context is null, skipping", v34, 2u);
      MEMORY[0x23188A520](v34, -1, -1);
    }

    LOBYTE(v176[0]) = 0;
    goto LABEL_19;
  }

  v154 = v16;
  sub_22B0781A8(&v173, v176);
  v24 = v177;
  v25 = v178;
  __swift_project_boxed_opaque_existential_1(v176, v177);
  if ((*(v25 + 24))(v24, v25) == 1)
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v26 = sub_22B0DF1B0();
    __swift_project_value_buffer(v26, qword_27D8B91F8);
    v27 = sub_22B0DF190();
    v28 = sub_22B0DF6A0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B074000, v27, v28, "Last exit context: voluntary exit", v29, 2u);
      MEMORY[0x23188A520](v29, -1, -1);
    }

    os_unfair_lock_lock(v13 + 22);
    v30 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x7261746E756C6F76, 0xED00007469784579, v11);

    v154(v11, v7);
    os_unfair_lock_unlock(v13 + 22);
    LOBYTE(v173) = 3;
    LOBYTE(v170) = 1;
LABEL_29:
    sub_22B0AEF84(&v173, 0x100000000, 0, 1, 0, 0);
LABEL_73:
    __swift_destroy_boxed_opaque_existential_0(v176);
    return;
  }

  v153 = v15;
  v149 = v11;
  v150 = v7;
  v148 = v13;
  v151 = v2;
  v36 = v177;
  v35 = v178;
  __swift_project_boxed_opaque_existential_1(v176, v177);
  v37 = *(v35 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_22B0DF780();
  v152 = &v147;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v147 - v42;
  v37(v36, v35);
  v44 = *(AssociatedTypeWitness - 8);
  if ((*(v44 + 48))(v43, 1, AssociatedTypeWitness) == 1)
  {
    (*(v40 + 8))(v43, v39);
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v45 = sub_22B0DF1B0();
    __swift_project_value_buffer(v45, qword_27D8B91F8);
    sub_22B07D124(v176, &v173);
    v46 = sub_22B0DF190();
    v47 = sub_22B0DF6A0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      v49 = v174;
      v50 = v175;
      __swift_project_boxed_opaque_existential_1(&v173, v174);
      v51 = (*(v50 + 24))(v49, v50);
      __swift_destroy_boxed_opaque_existential_0(&v173);
      *(v48 + 4) = v51;
      _os_log_impl(&dword_22B074000, v46, v47, "Last exit context: exit status is null for type %ld, skipping", v48, 0xCu);
      MEMORY[0x23188A520](v48, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v173);
    }

    LOBYTE(v173) = 0;
    LOBYTE(v170) = 1;
    goto LABEL_29;
  }

  v52 = 0x676F646863746157;
  v171 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v172 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v170);
  (*(v44 + 32))(boxed_opaque_existential_1, v43, AssociatedTypeWitness);
  sub_22B0781A8(&v170, &v173);
  v55 = v174;
  v56 = v175;
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  if ((*(AssociatedConformanceWitness + 8))(v55, v56) == 20)
  {
    v57 = 0xE800000000000000;
    v58 = v149;
  }

  else
  {
    v59 = v174;
    v60 = v175;
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    v61 = (*(v60 + 32))(v59, v60);
    v58 = v149;
    if (v61)
    {
      v52 = 0x6D617374654ALL;
      v57 = 0xE600000000000000;
    }

    else
    {
      v62 = v174;
      v63 = v175;
      __swift_project_boxed_opaque_existential_1(&v173, v174);
      if ((*(v63 + 48))(v62, v63))
      {
        v52 = 0x6873617243;
        v57 = 0xE500000000000000;
      }

      else
      {
        v64 = v174;
        v65 = v175;
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        if ((*(v65 + 40))(v64, v65))
        {
          v57 = 0xE600000000000000;
          v52 = 0x6C616E676953;
        }

        else
        {
          v66 = v174;
          v67 = v175;
          __swift_project_boxed_opaque_existential_1(&v173, v174);
          if ((*(v67 + 56))(v66, v67))
          {
            v57 = 0xEF6572756C696146;
            v52 = 0x79616C5072696146;
          }

          else
          {
            v68 = v174;
            v69 = v175;
            __swift_project_boxed_opaque_existential_1(&v173, v174);
            v70 = (*(v69 + 24))(v68, v69);
            if (v70)
            {
              v52 = 0x726568744FLL;
            }

            else
            {
              v52 = 0x64696C61766E49;
            }

            if (v70)
            {
              v57 = 0xE500000000000000;
            }

            else
            {
              v57 = 0xE700000000000000;
            }
          }
        }
      }
    }
  }

  if (qword_27D8B53C0 != -1)
  {
    swift_once();
  }

  v71 = sub_22B0DF1B0();
  __swift_project_value_buffer(v71, qword_27D8B91F8);
  sub_22B07D124(v176, &v170);
  sub_22B07D124(v176, v167);
  sub_22B07D124(&v173, v164);
  sub_22B07D124(&v173, v161);
  sub_22B07D124(&v173, v158);

  v72 = sub_22B0DF190();
  v73 = sub_22B0DF6A0();

  if (os_log_type_enabled(v72, v73))
  {
    LODWORD(v152) = v73;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v157[0] = v75;
    *v74 = 134219266;
    v76 = v171;
    v77 = v172;
    __swift_project_boxed_opaque_existential_1(&v170, v171);
    v78 = (*(v77 + 24))(v76, v77);
    __swift_destroy_boxed_opaque_existential_0(&v170);
    *(v74 + 4) = v78;
    *(v74 + 12) = 2082;
    v79 = v168;
    v80 = v169;
    __swift_project_boxed_opaque_existential_1(v167, v168);
    v81 = *(v80 + 40);
    v82 = v80;
    v83 = v156;
    v81(v79, v82);
    v84 = v150;
    if ((*(v155 + 48))(v83, 1, v150) == 1)
    {
      sub_22B07D02C(v83, &unk_27D8B5670, &unk_22B0E32C0);
      v85 = 0xE400000000000000;
      v86 = 1819047278;
    }

    else
    {
      v86 = sub_22B0DEFA0();
      v85 = v87;
      v154(v83, v84);
    }

    __swift_destroy_boxed_opaque_existential_0(v167);
    v88 = sub_22B07B428(v86, v85, v157);

    *(v74 + 14) = v88;
    *(v74 + 22) = 1024;
    v89 = v165;
    v90 = v166;
    __swift_project_boxed_opaque_existential_1(v164, v165);
    v91 = (*(v90 + 8))(v89, v90);
    __swift_destroy_boxed_opaque_existential_0(v164);
    *(v74 + 24) = v91;
    *(v74 + 28) = 2048;
    v92 = v162;
    v93 = v163;
    __swift_project_boxed_opaque_existential_1(v161, v162);
    v94 = (*(v93 + 16))(v92, v93);
    __swift_destroy_boxed_opaque_existential_0(v161);
    *(v74 + 30) = v94;
    *(v74 + 38) = 2080;
    v95 = sub_22B07B428(v52, v57, v157);

    *(v74 + 40) = v95;
    *(v74 + 48) = 2080;
    v96 = v159;
    v97 = v160;
    __swift_project_boxed_opaque_existential_1(v158, v159);
    v98 = (*(v97 + 64))(v96, v97);
    swift_getErrorValue();
    v99 = sub_22B0DFCE0();
    v101 = v100;

    __swift_destroy_boxed_opaque_existential_0(v158);
    v102 = sub_22B07B428(v99, v101, v157);

    *(v74 + 50) = v102;
    _os_log_impl(&dword_22B074000, v72, v152, "    Last exit context:     type = %ld,     timestamp = %{public}s,    domain = %u,     code = %llu,     flag = %s,     error = %s)", v74, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x23188A520](v75, -1, -1);
    MEMORY[0x23188A520](v74, -1, -1);

    v58 = v149;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v161);
    __swift_destroy_boxed_opaque_existential_0(v164);
    __swift_destroy_boxed_opaque_existential_0(&v170);

    __swift_destroy_boxed_opaque_existential_0(v167);
    __swift_destroy_boxed_opaque_existential_0(v158);
  }

  v103 = v174;
  v104 = v175;
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  v105 = (*(v104 + 8))(v103, v104);
  v106 = v148;
  v107 = v150;
  if (v105 == 20)
  {
    os_unfair_lock_lock(v148 + 22);
    v108 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x676F646863746177, 0xE800000000000000, v58);
    v109 = 4;
    goto LABEL_54;
  }

  v134 = v174;
  v135 = v175;
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  if (((*(v135 + 32))(v134, v135) & 1) == 0)
  {
    v141 = v174;
    v142 = v175;
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    if (((*(v142 + 48))(v141, v142) & 1) == 0)
    {
      v109 = 1;
      goto LABEL_55;
    }

    os_unfair_lock_lock(v106 + 22);
    v143 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x6873617263, 0xE500000000000000, v58);
    v109 = 9;
LABEL_54:

    v154(v58, v107);
    os_unfair_lock_unlock(v106 + 22);
LABEL_55:
    os_unfair_lock_lock(v106 + 22);
    v110 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x6C616D726F6E6261, 0xEC00000074697845, v58);
    goto LABEL_56;
  }

  os_unfair_lock_lock(v106 + 22);
  v136 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, 0x6D617374656ALL, 0xE600000000000000, v58);

  v154(v58, v107);
  os_unfair_lock_unlock(v106 + 22);
  v137 = v174;
  v138 = v175;
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  v139 = (*(v138 + 16))(v137, v138);
  if (!(v139 >> 31))
  {
    if (v139 > 8)
    {
      if (v139 == 9 || v139 == 17)
      {
        os_unfair_lock_lock(v106 + 22);
        v144 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x74697845656C6469, 0xE800000000000000, v58);
        v109 = 7;
LABEL_56:

        v154(v58, v107);
        os_unfair_lock_unlock(v106 + 22);
        v111 = *&v106[12]._os_unfair_lock_opaque;
        v112 = *&v106[14]._os_unfair_lock_opaque;
        __swift_project_boxed_opaque_existential_1(&v106[6]._os_unfair_lock_opaque, v111);
        (*(v112 + 32))(sub_22B09159C, v106, MEMORY[0x277D84F78] + 8, v111, v112);
        LOBYTE(v164[0]) = v109;
        v113 = v174;
        v114 = v175;
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        v115 = (*(v114 + 8))(v113, v114);
        v116 = v174;
        v117 = v175;
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        v118 = (*(v117 + 16))(v116, v117);
        v119 = v174;
        v120 = v175;
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        v121 = (*(v120 + 64))(v119, v120);
        v122 = sub_22B0DEE70();

        v123 = [v122 userInfo];
        v124 = sub_22B0DF240();

        v125 = *MEMORY[0x277CCA470];
        v126 = sub_22B0DF330();
        if (*(v124 + 16))
        {
          v128 = sub_22B0768A8(v126, v127);
          v130 = v129;

          if (v130)
          {
            sub_22B07BB6C(*(v124 + 56) + 32 * v128, &v170);

            v131 = swift_dynamicCast();
            if (v131)
            {
              v132 = v167[0];
            }

            else
            {
              v132 = 0;
            }

            if (v131)
            {
              v133 = v167[1];
            }

            else
            {
              v133 = 0;
            }

            goto LABEL_72;
          }
        }

        else
        {
        }

        v132 = 0;
        v133 = 0;
LABEL_72:
        LOBYTE(v170) = 0;
        sub_22B0AEF84(v164, v115, v118, 0, v132, v133);

        __swift_destroy_boxed_opaque_existential_0(&v173);
        goto LABEL_73;
      }
    }

    else
    {
      if (v139 == 2)
      {
        os_unfair_lock_lock(v106 + 22);
        v146 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x6574617768676968, 0xE900000000000072, v58);
        v109 = 5;
        goto LABEL_54;
      }

      if (v139 == 7)
      {
        os_unfair_lock_lock(v106 + 22);
        v140 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x4C737365636F7270, 0xEC00000074696D69, v58);
        v109 = 6;
        goto LABEL_54;
      }
    }

    os_unfair_lock_lock(v106 + 22);
    v145 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x74654A726568746FLL, 0xEB000000006D6173, v58);
    v109 = 8;
    goto LABEL_54;
  }

  __break(1u);
}

void sub_22B0AEF1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0AD950(v4);
}

void sub_22B0AEF84(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = v6 + *((*MEMORY[0x277D85000] & *v6) + 0x70);
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = type metadata accessor for ProcessExitInfoLogEvent();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v24 = v13;
  v25 = v12;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);
  v16 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v16 = v13;
  v16[1] = v12;
  v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v10;
  v17 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v17 = a2;
  v17[4] = BYTE4(a2) & 1;
  v18 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v18 = a3;
  v18[8] = a4 & 1;
  v19 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v19 = a5;
  v19[1] = a6;
  v23.receiver = v15;
  v23.super_class = v14;

  v20 = objc_msgSendSuper2(&v23, sel_init);
  [*(v11 + 4) submitLogEvent_];
}

void sub_22B0AF114(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_22B0AF5D8();
}

uint64_t sub_22B0AF17C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + 0x78)];

  v6 = *&a1[*((*v2 & *a1) + 0x80) + 8];
}

id sub_22B0AF2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v10 = *((*MEMORY[0x277D85000] & v7) + 0x58);
  v27 = *((*MEMORY[0x277D85000] & v7) + 0x60);
  v11 = *((*MEMORY[0x277D85000] & v7) + 0x68);
  v31 = *((*MEMORY[0x277D85000] & v7) + 0x50);
  v28 = v31;
  v32 = v10;
  v33 = v27;
  v34 = v11;
  v12 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v12 - 8) + 16))(&v4[v9], a1, v12);
  v13 = *(a1 + *(v12 + 76));
  type metadata accessor for NamedGroupSpecifier();
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000011;
  *(v14 + 24) = 0x800000022B0E74C0;
  v15 = sub_22B08C5E8(v14);

  *&v4[*((*v8 & *v4) + 0x78)] = v15;
  v16 = &v4[*((*v8 & *v4) + 0x80)];
  *v16 = a2;
  *(v16 + 1) = a3;
  v30.receiver = v4;
  v30.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v30, sel_init);
  v18 = *(a1 + 40);
  type metadata accessor for ProcessLaunchLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = v17;
  [v18 addObserver:v20 forEventClass:ObjCClassFromMetadata];
  v21 = *(v12 + 72);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = v10;
  v23[4] = v27;
  v23[5] = v11;
  v23[6] = v22;
  v24 = *(v11 + 8);

  v24(0x4C737365636F7250, 0xED000068636E7561, 0x4C737365636F7250, 0xED000068636E7561, &unk_22B0E5198, v23, v10, v11);

  return v20;
}

uint64_t sub_22B0AF608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A5698;

  return sub_22B0AD218(a1, v8);
}

unint64_t sub_22B0AF6CC()
{
  result = qword_27D8B5EC0;
  if (!qword_27D8B5EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5EC0);
  }

  return result;
}

id sub_22B0AF748(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E4000;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AF880(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for ManagedNamedGroup();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = sub_22B0DF300();
  [v4 setName_];

  return v4;
}

id sub_22B0AF8F0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E2760;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF120();
  *(v5 + 96) = sub_22B07BA9C(0, &qword_27D8B5ED0, 0x277CCAD78);
  *(v5 + 104) = sub_22B0AFE2C();
  *(v5 + 72) = v8;
  v9 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AFA68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedHomeGroup();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = v4;
  v8 = sub_22B0DF300();
  [v7 setName_];

  v9 = sub_22B0DF120();
  [v7 setHomeUUID_];

  return v7;
}

id sub_22B0AFB30(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E2C10;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF120();
  v9 = sub_22B07BA9C(0, &qword_27D8B5ED0, 0x277CCAD78);
  *(v5 + 96) = v9;
  v10 = sub_22B0AFE2C();
  *(v5 + 104) = v10;
  *(v5 + 72) = v8;
  v11 = sub_22B0DF120();
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v11;
  v12 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AFCD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedAccessoryGroup();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = v4;
  v8 = sub_22B0DF300();
  [v7 setName_];

  v9 = v7;
  v10 = sub_22B0DF120();
  [v9 setHomeUUID_];

  v11 = sub_22B0DF120();
  [v9 setAccessoryUUID_];

  return v9;
}

unint64_t sub_22B0AFDD8()
{
  result = qword_2813E99C0;
  if (!qword_2813E99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E99C0);
  }

  return result;
}

unint64_t sub_22B0AFE2C()
{
  result = qword_27D8B5ED8;
  if (!qword_27D8B5ED8)
  {
    sub_22B07BA9C(255, &qword_27D8B5ED0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5ED8);
  }

  return result;
}

uint64_t CoalescingRepeatingSchedulerProvider.makeScheduler(priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_22B0B5FC8(a1, a2, a3, a4);
}

char *CoalescingRepeatingScheduler.__allocating_init(clock:priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  swift_allocObject();
  v14 = sub_22B0B6610(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v14;
}

uint64_t sub_22B0AFFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v37 = a2;
  v38 = a5;
  v7 = sub_22B0DF780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v34 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  v22 = *(v8 + 16);
  v22(v15, a1, v7);
  v36 = v16;
  v23 = *(v16 + 48);
  if (v23(v15, 1, a3) == 1)
  {
    (*(v8 + 8))(v15, v7);
    return (v22)(v38, v37, v7);
  }

  v33 = *(v36 + 32);
  v33(v21, v15, a3);
  v22(v12, v37, v7);
  if (v23(v12, 1, a3) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v25 = v38;
    v26 = v36;
    v27 = v33;
LABEL_8:
    v31 = v25;
    v32 = v21;
    goto LABEL_9;
  }

  v27 = v33;
  v28 = v34;
  v33(v34, v12, a3);
  v29 = sub_22B0DF2C0();
  v26 = v36;
  v30 = *(v36 + 8);
  v25 = v38;
  if ((v29 & 1) == 0)
  {
    v30(v28, a3);
    goto LABEL_8;
  }

  v30(v21, a3);
  v31 = v25;
  v32 = v28;
LABEL_9:
  v27(v31, v32, a3);
  return (*(v26 + 56))(v25, 0, 1, a3);
}

BOOL sub_22B0B02E0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_22B0DF780();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = *(v1 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v10, v5);
  v11 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) == 1;
  (*(v6 + 8))(v9, v5);
  return v11;
}

char *sub_22B0B0474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  return sub_22B0B0508(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *sub_22B0B0508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*v8 + 128);
  v15 = *(*v8 + 88);
  v16 = *(*v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 56);
  v18(&v8[v14], 1, 1, AssociatedTypeWitness);
  v18(&v8[*(*v8 + 136)], 1, 1, AssociatedTypeWitness);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  *(v8 + 6) = a7;
  *(v8 + 7) = a8;
  *(v8 + 8) = a5;
  *(v8 + 9) = a6;
  return v8;
}

uint64_t sub_22B0B0648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_22B0DF780();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - v9;
  swift_getAssociatedConformanceWitness();
  sub_22B0DF9D0();
  v11 = *(v1 + 8);
  v12 = *(v2 + 9);
  result = sub_22B0DFDE0();
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v20 = v11;
  *(&v20 + 1) = v12;
  if (!__OFADD__(v14, 1))
  {
    sub_22B0DFA00();
    v20 = v19;
    sub_22B0DF9C0();
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 16))(v10, a1, AssociatedTypeWitness);
    (*(v15 + 56))(v10, 0, 1, AssociatedTypeWitness);
    v16 = *(*v2 + 136);
    swift_beginAccess();
    (*(v7 + 40))(&v2[v16], v10, v18);
    return swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22B0B0900(uint64_t a1)
{
  v20 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22B0DF780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - v14;
  v16 = *(v2 + 136);
  swift_beginAccess();
  (*(v7 + 16))(v11, v1 + v16, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v17 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    v18 = *(swift_getAssociatedConformanceWitness() + 8);
    v17 = sub_22B0DF2E0();
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  return v17 & 1;
}

uint64_t sub_22B0B0B80(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22B0DF780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(&v17 - v9, a1, AssociatedTypeWitness);
  v12 = *(v11 + 56);
  v12(v10, 0, 1, AssociatedTypeWitness);
  v13 = *(*v1 + 128);
  swift_beginAccess();
  v14 = *(v7 + 40);
  v14(v1 + v13, v10, v6);
  swift_endAccess();
  v12(v10, 1, 1, AssociatedTypeWitness);
  v15 = *(*v1 + 136);
  swift_beginAccess();
  v14(v1 + v15, v10, v6);
  return swift_endAccess();
}

char *sub_22B0B0DA0()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v5 = *(*v0 + 128);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v8 = sub_22B0DF780();
  v9 = *(*(v8 - 8) + 8);
  v9(&v0[v5], v8);
  v9(&v0[*(*v0 + 136)], v8);
  return v0;
}

uint64_t sub_22B0B0EA8()
{
  v0 = sub_22B0B0DA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0B0EFC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_2813E9E80;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t sub_22B0B0F8C()
{
  v1 = qword_2813E9E80;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B0B1034(uint64_t a1)
{
  v6 = *(v1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();
  sub_22B0DF550();

  swift_getWitnessTable();
  v2 = sub_22B0DF450();

  return v2 & 1;
}

uint64_t sub_22B0B10E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();
  *(a1 + 8) = sub_22B0DF210();
  *(a1 + 16) = 0;
  v2 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v3 = *(v2 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a1 + v3, 1, 1, AssociatedTypeWitness);
  v5 = *(v2 + 48);
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter();
  result = sub_22B0DF210();
  *(a1 + v5) = result;
  return result;
}

char *CoalescingRepeatingScheduler.init(clock:priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = sub_22B0B6610(a1, a2, a3, a4, a5);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t CoalescingRepeatingScheduler.scheduleBlock(name:periodicity:publicSafeName:block:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = *(*v9 + 80);
  v18 = *(*v9 + 88);
  v19 = type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_22B0B0508(a1, a2, a5, a6, a3, a4, a7, a8);
  v23 = (v9 + *(*v9 + 136));

  os_unfair_lock_lock(v23);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v24 = sub_22B0DF170();
  sub_22B0B13E0(v23 + *(v24 + 28), a1, a2, v22);
  j__os_unfair_lock_unlock(v23);
  sub_22B0B1598(v22);
}

void sub_22B0B13E0(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a1 == 1)
  {
    v12 = a4;
    sub_22B0DF550();

    sub_22B0DF520();
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v7 = sub_22B0DF1B0();
    __swift_project_value_buffer(v7, qword_2813EBE78);

    v8 = sub_22B0DF190();
    v9 = sub_22B0DF690();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22B07B428(a2, a3, &v12);
      _os_log_impl(&dword_22B074000, v8, v9, "Trying to schedule block %s while the scheduler is not running. Ignoring.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188A520](v11, -1, -1);
      MEMORY[0x23188A520](v10, -1, -1);
    }
  }
}

void sub_22B0B1598(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 136));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v7 = sub_22B0DF170();
  sub_22B0B1880(v4 + *(v7 + 28), a1, v1);

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_22B0B1680()
{
  v0 = sub_22B0DFDD0();
  v1 = v0 / 3600;
  v2 = v0 % 60;
  v3 = v0 / 60 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B0E2C10;
  v5 = MEMORY[0x277D84A28];
  v6 = MEMORY[0x277D84A90];
  *(v4 + 56) = MEMORY[0x277D84A28];
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v3;
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = v2;

  return sub_22B0DF340();
}

uint64_t sub_22B0B1778()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22B0DF9D0();
  v4 = sub_22B0B1680();
  MEMORY[0x231889070](v4);

  return 11092;
}

uint64_t sub_22B0B1880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  v7 = sub_22B0DF780();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v36 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v42 = &v36 - v18;
  v20 = *(*a3 + 128);
  v21 = a3 + *(*a3 + 96);
  sub_22B0DFCB0();
  v41 = a3;
  sub_22B0B0648(v19);
  v22 = v43;
  v48 = v13[1];
  v49 = v13 + 1;
  v48(v17, v43);
  v50 = v5;
  v51 = v4;
  v23 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v24 = v44;
  v25 = v45;
  v26 = *(v45 + 16);
  v27 = v46;
  v28 = v47;
  v37 = *(v23 + 44);
  v38 = v26;
  v26(v44, v47 + v37, v46);
  v29 = v13[6];
  v30 = v22;
  v39 = v13 + 6;
  LODWORD(v22) = v29(v24, 1, v22);
  v31 = v42;
  (*(v25 + 8))(v24, v27);
  if (v22 == 1)
  {
    goto LABEL_4;
  }

  v32 = v40;
  v38(v40, v28 + v37, v27);
  result = v29(v32, 1, v30);
  if (result != 1)
  {
    v34 = *(swift_getAssociatedConformanceWitness() + 8);
    v35 = sub_22B0DF2C0();
    v48(v32, v30);
    if ((v35 & 1) == 0)
    {
LABEL_5:
      sub_22B0B6458(v28);
      return (v48)(v31, v30);
    }

LABEL_4:
    sub_22B0B1C44(v31, v28);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0B1C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = v49 - v8;
  v9 = *(v5 + 88);
  v55 = *(v5 + 80);
  v56 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = v14;
  v53 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v49 - v15;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v17 = sub_22B0DF1B0();
  __swift_project_value_buffer(v17, qword_2813EBE78);
  v50 = *(v11 + 16);
  v51 = v11 + 16;
  v50(v16, a1, AssociatedTypeWitness);

  v18 = sub_22B0DF190();
  v19 = sub_22B0DF670();

  v20 = os_log_type_enabled(v18, v19);
  v57 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136446210;
    v23 = sub_22B0B1778();
    v25 = v24;
    v26 = v16;
    v27 = AssociatedTypeWitness;
    (*(v11 + 8))(v26, AssociatedTypeWitness);
    v28 = sub_22B07B428(v23, v25, &v59);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_22B074000, v18, v19, "Scheduled next run for T+%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23188A520](v22, -1, -1);
    MEMORY[0x23188A520](v21, -1, -1);
  }

  else
  {

    v29 = v16;
    v27 = AssociatedTypeWitness;
    (*(v11 + 8))(v29, AssociatedTypeWitness);
  }

  v30 = v11;
  v31 = *(v58 + 16);
  if (v31)
  {
    sub_22B0DF5D0();
  }

  v32 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v49[1] = v31;
  v33 = *(v32 + 44);
  v34 = v27;
  v35 = sub_22B0DF780();
  v36 = v58;
  (*(*(v35 - 8) + 8))(v58 + v33, v35);
  v37 = v50;
  v50((v36 + v33), v57, v27);
  (*(v30 + 56))(v36 + v33, 0, 1, v27);
  v38 = *(*v3 + 104);
  v39 = sub_22B0DF5C0();
  v40 = *(v39 - 8);
  v41 = v54;
  (*(v40 + 16))(v54, &v3[v38], v39);
  (*(v40 + 56))(v41, 0, 1, v39);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v53;
  v37(v53, v57, v34);
  v44 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  v46 = v56;
  *(v45 + 4) = v55;
  *(v45 + 5) = v46;
  *(v45 + 6) = v42;
  (*(v30 + 32))(&v45[v44], v43, v34);
  v47 = sub_22B0C8B9C(0, 0, v41, &unk_22B0E5490, v45);
  sub_22B07D02C(v41, &qword_27D8B5C38, &qword_22B0E5480);

  *(v36 + 16) = v47;
  return result;
}

uint64_t sub_22B0B2198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[21] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[22] = v10;
  v11 = *(v10 + 64) + 15;
  v7[23] = swift_task_alloc();
  v12 = *(a6 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0B22D4, 0, 0);
}

uint64_t sub_22B0B22D4()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 152);
    v25 = *(v0 + 144);
    (*(v6 + 16))(v4, Strong + *(*Strong + 96), v9);

    (*(v6 + 32))(v3, v4, v9);
    sub_22B0DFCB0();
    swift_getAssociatedConformanceWitness();
    sub_22B0DF9D0();
    (*(v8 + 8))(v5, v7);
    *(v0 + 120) = *(v0 + 104);
    sub_22B0DF9F0();
    *(v0 + 64) = *(v0 + 88);
    *(v0 + 80) = 0;
    v10 = *(MEMORY[0x277D85A58] + 4);
    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    *v11 = v0;
    v11[1] = sub_22B0B25DC;
    v12 = *(v0 + 208);
    v13 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);

    return MEMORY[0x2822008C8](v15, v0 + 64, v13, v14);
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v16 = sub_22B0DF1B0();
    __swift_project_value_buffer(v16, qword_2813EBE78);
    v17 = sub_22B0DF190();
    v18 = sub_22B0DF670();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B074000, v17, v18, "Weak self is nil", v19, 2u);
      MEMORY[0x23188A520](v19, -1, -1);
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22B0B25DC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_22B0B2A20;
  }

  else
  {
    v3 = sub_22B0B26F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22B0B26F0()
{
  if (sub_22B0DF5E0())
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Task cancelled";
LABEL_15:
    _os_log_impl(&dword_22B074000, v2, v3, v5, v4, 2u);
    MEMORY[0x23188A520](v4, -1, -1);
LABEL_16:
    v16 = v0[26];
    v17 = v0[24];
    v18 = v0[19];

    (*(v17 + 8))(v16, v18);
LABEL_17:
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[23];

    v22 = v0[1];

    v22();
    return;
  }

  v6 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v15 = sub_22B0DF1B0();
    __swift_project_value_buffer(v15, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Weak self is nil";
    goto LABEL_15;
  }

  v8 = Strong;
  v9 = v0[28];
  v10 = v0[26];
  v12 = v0[19];
  v11 = v0[20];
  v13 = (Strong + *(*Strong + 136));
  os_unfair_lock_lock(v13);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v14 = sub_22B0DF170();
  sub_22B0B2BFC(v13 + *(v14 + 28), v10, v8);
  if (!v9)
  {
    v23 = v0[26];
    v24 = v0[24];
    v25 = v0[19];
    j__os_unfair_lock_unlock(v13);

    (*(v24 + 8))(v23, v25);
    goto LABEL_17;
  }

  j__os_unfair_lock_unlock(v13);
}

uint64_t sub_22B0B2A20()
{
  (*(v0[24] + 8))(v0[26], v0[19]);
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_22B0DF1B0();
  __swift_project_value_buffer(v2, qword_2813EBE78);
  v3 = v1;
  v4 = sub_22B0DF190();
  v5 = sub_22B0DF670();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B074000, v4, v5, "Task error, likely due to cancellation: %@", v8, 0xCu);
    sub_22B07D02C(v9, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v9, -1, -1);
    MEMORY[0x23188A520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22B0B2BFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v78 = a2;
  v4 = *(*a3 + 88);
  v5 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_22B0DF780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v61 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v61 - v15;
  v75 = *(AssociatedTypeWitness - 8);
  v16 = *(v75 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v71 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = *(a1 + 16);

  *(a1 + 16) = 0;
  v24 = *(type metadata accessor for CoalescingRepeatingScheduler.State() + 44);
  v67 = v8;
  v25 = *(v8 + 8);
  v72 = v8 + 8;
  v73 = v7;
  v26 = v7;
  v27 = v75;
  v66 = v25;
  v25((a1 + v24), v26);
  v28 = *(v27 + 56);
  v76 = a1;
  v63 = v28;
  v64 = (v27 + 56);
  v28((a1 + v24), 1, 1, AssociatedTypeWitness);
  v77 = v5;
  v78 = v4;
  sub_22B0DFCB0();
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v29 = sub_22B0DF1B0();
  __swift_project_value_buffer(v29, qword_2813EBE78);
  v30 = v71;
  (*(v27 + 16))(v71, v22, AssociatedTypeWitness);

  v31 = sub_22B0DF190();
  v32 = sub_22B0DF670();

  v33 = os_log_type_enabled(v31, v32);
  v70 = AssociatedTypeWitness;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v34 = 136446210;
    v35 = sub_22B0B1778();
    v36 = v30;
    v38 = v37;
    v71 = *(v27 + 8);
    (v71)(v36, AssociatedTypeWitness);
    v39 = sub_22B07B428(v35, v38, &v79);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_22B074000, v31, v32, "Running blocks at T+%{public}s", v34, 0xCu);
    v40 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x23188A520](v40, -1, -1);
    MEMORY[0x23188A520](v34, -1, -1);
  }

  else
  {

    v71 = *(v27 + 8);
    (v71)(v30, AssociatedTypeWitness);
  }

  v41 = *(v76 + 8);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();

  if (sub_22B0DF510())
  {
    v42 = 4;
    do
    {
      v43 = v42 - 4;
      v44 = sub_22B0DF4F0();
      sub_22B0DF4C0();
      if (v44)
      {
        v45 = *(v41 + 8 * v42);

        v46 = __OFADD__(v43, 1);
        v47 = v42 - 3;
        if (v46)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v45 = sub_22B0DF900();
        v46 = __OFADD__(v43, 1);
        v47 = v42 - 3;
        if (v46)
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      if (sub_22B0B0900(v22))
      {
        sub_22B0B331C(v45, v22, 0);
      }

      ++v42;
    }

    while (v47 != sub_22B0DF510());
  }

  v79 = v41;
  v48 = v65;
  v49 = v70;
  v50 = v63(v65, 1, 1, v70);
  v64 = &v61;
  MEMORY[0x28223BE20](v50);
  v51 = v78;
  *(&v61 - 2) = v77;
  *(&v61 - 1) = v51;
  sub_22B0DF550();

  swift_getWitnessTable();
  v52 = v74;
  v53 = v73;
  v54 = v69;
  sub_22B0DF440();
  v69 = v54;
  v55 = v66;
  v66(v48, v53);

  v56 = v68;
  (*(v67 + 16))(v68, v52, v53);
  v57 = v75;
  if ((*(v75 + 48))(v56, 1, v49) == 1)
  {
    v55(v56, v53);
    v58 = v71;
  }

  else
  {
    v59 = v62;
    (*(v57 + 32))(v62, v56, v49);
    sub_22B0B1C44(v59, v76);
    v53 = v73;
    v58 = v71;
    (v71)(v59, v49);
  }

  sub_22B0B6458(v76);
  v55(v74, v53);
  return (v58)(v22, v49);
}

uint64_t sub_22B0B331C(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_22B0B3688(a1, a2, 0);
  sub_22B0B0B80(a2);
  v12 = *(*v3 + 104);
  v13 = sub_22B0DF5C0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, v4 + v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a3;
  *(v16 + 48) = v15;

  sub_22B0C8B9C(0, 0, v11, &unk_22B0E54B0, v16);

  return sub_22B07D02C(v11, &qword_27D8B5C38, &qword_22B0E5480);
}

uint64_t sub_22B0B34F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22B0DF780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *a2;
  v12 = *(*v11 + 136);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22B0AFFB0(v15, v10, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), a3);
  return (*(v7 + 8))(v10, v6);
}

void sub_22B0B3688(char *a1, uint64_t a2, int a3)
{
  v60 = a3;
  v57 = a2;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_22B0DF780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v55 - v16;
  v18 = *(*a1 + 128);
  swift_beginAccess();
  (*(v9 + 16))(v13, &a1[v18], v8);
  v59 = (*(v14 + 48))(v13, 1, AssociatedTypeWitness);
  if (v59 == 1)
  {
    (*(v9 + 8))(v13, v8);
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v19 = sub_22B0DF1B0();
    __swift_project_value_buffer(v19, qword_2813EBE78);

    v20 = sub_22B0DF190();
    v21 = sub_22B0DF670();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v58;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v62 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22B07B428(*(a1 + 2), *(a1 + 3), &v62);
      *(v24 + 12) = 1024;
      *(v24 + 14) = v60 & 1;
      _os_log_impl(&dword_22B074000, v20, v21, "Scheduled block %s, isDaily = %{BOOL}d, ran for the first time.", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188A520](v25, -1, -1);
      MEMORY[0x23188A520](v24, -1, -1);
    }
  }

  else
  {
    v56 = v14;
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_22B0DF9D0();
    v26 = v63;
    v27 = v17;
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v28 = sub_22B0DF1B0();
    __swift_project_value_buffer(v28, qword_2813EBE78);

    v29 = sub_22B0DF190();
    v30 = sub_22B0DF670();

    v31 = os_log_type_enabled(v29, v30);
    v23 = v58;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v57 = v26;
      v33 = v32;
      v34 = swift_slowAlloc();
      v62 = v34;
      *v33 = 136315650;
      *(v33 + 4) = sub_22B07B428(*(a1 + 2), *(a1 + 3), &v62);
      *(v33 + 12) = 1024;
      *(v33 + 14) = v60 & 1;
      *(v33 + 18) = 2080;
      v35 = sub_22B0B1680();
      v37 = sub_22B07B428(v35, v36, &v62);
      v55 = v27;
      v38 = v37;

      *(v33 + 20) = v38;
      _os_log_impl(&dword_22B074000, v29, v30, "Scheduled block %s, isDaily = %{BOOL}d, ran after %s, privacy: .public) after previous run.", v33, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x23188A520](v34, -1, -1);
      MEMORY[0x23188A520](v33, -1, -1);

      (*(v56 + 8))(v55, AssociatedTypeWitness);
    }

    else
    {

      (*(v56 + 8))(v17, AssociatedTypeWitness);
    }
  }

  v39 = (v23 + *(*v23 + 112));
  v41 = *v39;
  v40 = v39[1];
  v43 = *(a1 + 4);
  v42 = *(a1 + 5);
  v44 = type metadata accessor for BlockSchedulerLogEvent();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v62 = v41;
  v63 = v40;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v46 = 0;
  v47 = v63;
  v48 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v48 = v62;
  v48[1] = v47;
  v49 = 0x6669636570736E55;
  if (v42)
  {
    v49 = v43;
  }

  v50 = 0xEB00000000646569;
  if (v42)
  {
    v50 = v42;
  }

  v51 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v51 = v49;
  v51[1] = v50;
  v52 = v59;
  if (v59 != 1)
  {
    v46 = sub_22B0DFDD0();
  }

  v53 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v53 = v46;
  v53[8] = v52 == 1;
  v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = v60 & 1;
  v61.receiver = v45;
  v61.super_class = v44;
  v54 = objc_msgSendSuper2(&v61, sel_init);
  [*(v23 + *(*v23 + 120)) submitLogEvent_];
}

uint64_t sub_22B0B3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return MEMORY[0x2822009F8](sub_22B0B3D54, 0, 0);
}

uint64_t sub_22B0B3D54()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 56);
  v7 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22B0B3E48;
  v5 = *(v0 + 64);

  return v7(v5);
}

uint64_t sub_22B0B3E48()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B0B3F44, 0, 0);
}

uint64_t sub_22B0B3F44()
{
  v1 = v0[6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0B1598(v0[5]);
  }

  v2 = v0[1];

  return v2();
}

Swift::Void __swiftcall CoalescingRepeatingScheduler.runBlock(named:isDebug:)(Swift::String named, Swift::Bool isDebug)
{
  v3 = isDebug;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v6 = *v2;
  v7 = (v2 + *(*v2 + 136));
  os_unfair_lock_lock(v7);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v10 = sub_22B0DF170();
  sub_22B0B40CC(v7 + *(v10 + 28), countAndFlagsBits, object, v2, v3);

  j__os_unfair_lock_unlock(v7);
}

uint64_t sub_22B0B40CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v34 = a5;
  v9 = *(*a4 + 88);
  v10 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v31 - v13;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v14 = sub_22B0DF1B0();
  __swift_project_value_buffer(v14, qword_2813EBE78);

  v15 = sub_22B0DF190();
  v16 = sub_22B0DF670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v10;
    v18 = v17;
    v19 = a1;
    v20 = swift_slowAlloc();
    v36 = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_22B07B428(a2, a3, &v36);
    _os_log_impl(&dword_22B074000, v15, v16, "Running block(s) named %s in debug mode...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a1 = v19;
    MEMORY[0x23188A520](v21, -1, -1);
    MEMORY[0x23188A520](v18, -1, -1);
  }

  v22 = a4 + *(*a4 + 96);
  sub_22B0DFCB0();
  v23 = *(a1 + 8);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();

  if (sub_22B0DF510())
  {
    v24 = 4;
    do
    {
      v25 = v24 - 4;
      v26 = sub_22B0DF4F0();
      sub_22B0DF4C0();
      if (v26)
      {
        v27 = *(v23 + 8 * v24);

        v28 = v24 - 3;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = sub_22B0DF900();
        v28 = v24 - 3;
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      v29 = *(v27 + 16) == a2 && *(v27 + 24) == a3;
      if (v29 || (sub_22B0DFC60()) && !sub_22B0B02E0())
      {
        sub_22B0B331C(v27, v35, v34 & 1);
      }

      ++v24;
    }

    while (v28 != sub_22B0DF510());
  }

  return (*(v32 + 8))(v35, v33);
}

uint64_t CoalescingRepeatingScheduler.waitForBlocksToFinish(timeout:)(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22B0B4470, 0, 0);
}

uint64_t sub_22B0B4470()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[2] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22B0B457C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22B0B457C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B0B4694, 0, 0);
}

uint64_t sub_22B0B4694()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    sub_22B0DF5D0();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B0B4724(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v8 = *a2;
  v9 = (a2 + *(*a2 + 136));
  os_unfair_lock_lock(v9);
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v12 = sub_22B0DF170();
  sub_22B0B4828(v9 + *(v12 + 28), a2, a1, a3, a4);

  j__os_unfair_lock_unlock(v9);
}

uint64_t sub_22B0B4828(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, double a5)
{
  v61 = a3;
  v58 = a4;
  v62 = a2;
  v6 = a1;
  v65 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v50 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  v56 = *(v63 - 8);
  v54 = *(v56 + 64);
  MEMORY[0x28223BE20](v63);
  v55 = &v50 - v11;
  v12 = *(v7 + 88);
  v13 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v50 - v17;
  v18 = sub_22B0DF780();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v59 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - v23;
  v64 = v13;
  v25 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v26 = *(v19 + 16);
  v52 = *(v25 + 44);
  v53 = v26;
  v26(v24, v6 + v52, v18);
  v50 = v15;
  v51 = *(v15 + 48);
  LODWORD(v6) = v51(v24, 1, AssociatedTypeWitness);
  (*(v19 + 8))(v24, v18);
  v27 = v12;
  if (v6 != 1)
  {
    v28 = v62 + *(*v62 + 96);
    sub_22B0DFCB0();
    v29 = v59;
    v53(v59, v65 + v52, v18);
    result = v51(v29, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v31 = *(swift_getAssociatedConformanceWitness() + 8);
    v33 = v59;
    v32 = v60;
    v34 = sub_22B0DF2D0();
    v35 = *(v50 + 8);
    v35(v32, AssociatedTypeWitness);
    v35(v33, AssociatedTypeWitness);
    if (v34)
    {
LABEL_5:
      type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter();
      v60 = v27;
      v37 = v55;
      v36 = v56;
      v59 = *(v56 + 16);
      v38 = v61;
      (v59)(v55, v61, v63);
      v39 = sub_22B0B0EFC(v37);
      v66 = v39;
      v40 = *(v25 + 48);
      sub_22B0DF550();

      sub_22B0DF520();
      v41 = sub_22B0DF5C0();
      v42 = v57;
      (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
      v43 = v38;
      v44 = v63;
      (v59)(v37, v43, v63);
      v45 = (*(v36 + 80) + 72) & ~*(v36 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      v47 = v60;
      *(v46 + 32) = v64;
      *(v46 + 40) = v47;
      *(v46 + 48) = a5;
      *(v46 + 56) = v62;
      *(v46 + 64) = v39;
      (*(v36 + 32))(v46 + v45, v37, v44);

      v48 = sub_22B0B540C(0, 0, v42, &unk_22B0E54C0, v46);
      v49 = *v58;
      *v58 = v48;
    }
  }

  if (sub_22B0B1034(v25))
  {
    goto LABEL_5;
  }

  return sub_22B0DF580();
}

uint64_t sub_22B0B4DF4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  *(v7 + 48) = *a5;
  v8 = sub_22B0DF9B0();
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0B4EE4, 0, 0);
}

uint64_t sub_22B0B4EE4()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = sub_22B0DFDF0();
  v5 = v4;
  sub_22B0DFCD0();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_22B0B4FC0;
  v7 = v0[9];

  return sub_22B0B5B10(v3, v5, 0, 0, 1);
}

uint64_t sub_22B0B4FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_22B0B5238;
  }

  else
  {
    v5 = sub_22B0B5128;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22B0B5128()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = (v0[3] + *(*v0[3] + 136));
  os_unfair_lock_lock(v5);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v8 = sub_22B0DF170();
  sub_22B0B52A0(v5 + *(v8 + 28), v4);
  j__os_unfair_lock_unlock(v5);
  if (!v1)
  {
    v9 = v0[9];

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_22B0B5238()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B0B52A0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(type metadata accessor for CoalescingRepeatingScheduler.State() + 48);
  v6 = *(a1 + v5);
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter();
  v7 = sub_22B0DF510();
  sub_22B0DF550();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22B0DF650();
  v8 = *(a1 + v5);
  result = sub_22B0DF510();
  if (result != v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
    return sub_22B0DF580();
  }

  return result;
}

uint64_t sub_22B0B540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B0B77A8(a3, v27 - v11);
  v13 = sub_22B0DF5C0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B07D02C(v12, &qword_27D8B5C38, &qword_22B0E5480);
  }

  else
  {
    sub_22B0DF5B0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B0DF570();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B0DF360() + 32;
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

      sub_22B07D02C(a3, &qword_27D8B5C38, &qword_22B0E5480);

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

  sub_22B07D02C(a3, &qword_27D8B5C38, &qword_22B0E5480);
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

Swift::Void __swiftcall CoalescingRepeatingScheduler.invalidate()()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 136));
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  v5 = *(sub_22B0DF170() + 28);
  v6 = v2 + v5;
  *(&v2->_os_unfair_lock_opaque + v5) = 0;
  if (*(&v2[4]._os_unfair_lock_opaque + v5))
  {
    v7 = *(&v2[4]._os_unfair_lock_opaque + v5);
    sub_22B0DF5D0();
  }

  *(v6 + 2) = 0;

  j__os_unfair_lock_unlock(v2);
}

uint64_t *CoalescingRepeatingScheduler.deinit()
{
  v1 = v0;
  v2 = *v0;
  CoalescingRepeatingScheduler.invalidate()();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(v2 + 80));
  v3 = *(*v0 + 104);
  v4 = sub_22B0DF5C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v1 + *(*v1 + 112) + 8);

  v6 = *(v1 + *(*v1 + 120));
  swift_unknownObjectRelease();
  v7 = *(*v0 + 128);
  v8 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7, AssociatedTypeWitness);
  v10 = v1 + *(*v1 + 136);
  type metadata accessor for CoalescingRepeatingScheduler.State();
  LODWORD(v8) = *(sub_22B0DF170() + 28);
  v11 = sub_22B0DF180();
  sub_22B0A67A4(v11);
  return v0;
}

uint64_t CoalescingRepeatingScheduler.__deallocating_deinit()
{
  CoalescingRepeatingScheduler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0B5A78(double a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A5698;

  return CoalescingRepeatingScheduler.waitForBlocksToFinish(timeout:)(a1);
}

uint64_t sub_22B0B5B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22B0DF990();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22B0B5C10, 0, 0);
}

uint64_t sub_22B0B5C10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_22B0DF9B0();
  v7 = sub_22B0B7998(&unk_2813E9930, MEMORY[0x277D85928]);
  sub_22B0DFCB0();
  sub_22B0B7998(&unk_2813E9940, MEMORY[0x277D858F8]);
  sub_22B0DF9C0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22B0B5DA0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_22B0B5DA0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B0B5F5C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_22B0B5F5C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_22B0B5FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B0DF5C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B0DF9B0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B0DF9A0();
  (*(v9 + 16))(v12, a1, v8);

  swift_unknownObjectRetain();
  return sub_22B0B6128(v16, v12, a2, a3, a4);
}

uint64_t sub_22B0B6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + *(*v17 + 136));
  *v13 = 1;
  v19 = MEMORY[0x277D84F90];
  *(v13 + 1) = MEMORY[0x277D84F90];
  *(v13 + 2) = 0;
  v20 = *(v10 + 52);
  v21 = sub_22B0DF990();
  (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
  *&v13[*(v10 + 56)] = v19;
  *v18 = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5F28, &unk_22B0E6120);
  bzero(v18 + v22, *(*(v23 - 8) + 64));
  sub_22B0B79E0(v13, v18 + v22);
  v24 = *(*v17 + 96);
  v25 = sub_22B0DF9B0();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v17 + v24, a1, v25);
  v27 = *(*v17 + 104);
  v28 = sub_22B0DF5C0();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v17 + v27, a2, v28);
  v30 = (v17 + *(*v17 + 112));
  *v30 = a3;
  v30[1] = a4;
  *(v17 + *(*v17 + 120)) = v34;
  v31 = *(*v17 + 128);
  sub_22B0B7998(&unk_2813E9930, MEMORY[0x277D85928]);
  sub_22B0DFCB0();
  (*(v29 + 8))(a2, v28);
  (*(v26 + 8))(a1, v25);
  return v17;
}

uint64_t sub_22B0B6458(uint64_t a1)
{
  v2 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v3 = *(a1 + *(v2 + 48));
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter();
  sub_22B0DF550();
  swift_getWitnessTable();
  result = sub_22B0DF640();
  if (result)
  {
    return result;
  }

  result = sub_22B0B1034(v2);
  if (result)
  {
    return result;
  }

  if (!sub_22B0DF510())
  {
    goto LABEL_12;
  }

  v5 = 4;
  while (1)
  {
    v6 = v5 - 4;
    v7 = sub_22B0DF4F0();
    sub_22B0DF4C0();
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(v3 + 8 * v5);

    v9 = v5 - 3;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
    sub_22B0DF580();

    ++v5;
    if (v9 == sub_22B0DF510())
    {
      goto LABEL_12;
    }
  }

  sub_22B0DF900();
  v9 = v5 - 3;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:

  return sub_22B0DF540();
}

char *sub_22B0B6610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v8 = *v5;
  v9 = v8[11];
  v10 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v29 - v13;
  v15 = type metadata accessor for CoalescingRepeatingScheduler.State();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v19 = &v6[v8[17]];
  sub_22B0B10E8(&v29 - v17);
  *v19 = 0;
  v20 = *(sub_22B0DF170() + 28);
  v21 = sub_22B0DF180();
  bzero(&v19[v20], *(*(v21 - 8) + 64));
  sub_22B0CC750(v18, &v19[v20], v15);
  (*(*(v10 - 8) + 16))(&v6[*(*v6 + 96)], a1, v10);
  v22 = *(*v6 + 104);
  v23 = sub_22B0DF5C0();
  v24 = *(v23 - 8);
  v25 = v30;
  (*(v24 + 16))(&v6[v22], v30, v23);
  v26 = &v6[*(*v6 + 112)];
  v27 = v32;
  *v26 = v31;
  *(v26 + 1) = v27;
  *&v6[*(*v6 + 120)] = v33;
  sub_22B0DFCB0();
  (*(v24 + 8))(v25, v23);
  (*(v11 + 32))(&v6[*(*v6 + 128)], v14, AssociatedTypeWitness);
  return v6;
}

uint64_t dispatch thunk of RepeatingScheduler.waitForBlocksToFinish(timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a2 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B0A5698;
  v10.n128_f64[0] = a3;

  return v12(a1, a2, v10);
}

uint64_t sub_22B0B6AD4(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    result = sub_22B0DF5C0();
    if (v5 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v6 = *(a1 + 88);
      result = swift_getAssociatedTypeWitness();
      if (v7 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        type metadata accessor for CoalescingRepeatingScheduler.State();
        result = sub_22B0DF170();
        if (v8 <= 0x3F)
        {
          v12 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22B0B6CAC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = sub_22B0DF780();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22B0B6D88()
{
  sub_22B0B6E30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_22B0B6E30()
{
  if (!qword_2813E99B8)
  {
    v0 = sub_22B0DF590();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E99B8);
    }
  }
}

void sub_22B0B6E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock();
  sub_22B0DF550();
  if (v3 <= 0x3F)
  {
    sub_22B0B73F0();
    if (v4 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_22B0DF780();
      if (v5 <= 0x3F)
      {
        type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter();
        sub_22B0DF550();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22B0B6FB8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = 7;
  if (!v10)
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 >= a2)
  {
    goto LABEL_33;
  }

  v16 = ((v15 + v14 + ((v13 + 24) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v12 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v16)) == 0)
  {
LABEL_33:
    v24 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v11 & 0x80000000) != 0)
    {
      v26 = (*(v9 + 48))((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13);
      if (v26 >= 2)
      {
        return v26 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v25 = *(v24 + 8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v12 + (v17 | v23) + 1;
}

void sub_22B0B7168(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  v13 = *(v10 + 80);
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v12;
  }

  if (v11)
  {
    v15 = *(v10 + 64);
  }

  else
  {
    v15 = *(v10 + 64) + 1;
  }

  v16 = ((v15 + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v15 + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v15 + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v14;
    }

    else
    {
      v19 = 1;
    }

    if (((v15 + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v14 + a2;
      bzero(a1, ((v15 + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v20;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v16) = v19;
      }

      else
      {
        *(a1 + v16) = v19;
      }
    }

    else if (v9)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v16) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = ((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13);
    if (v12 >= a2)
    {
      v27 = *(v10 + 56);

      v27((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, a2 + 1);
    }

    else
    {
      if (v15 <= 3)
      {
        v24 = ~(-1 << (8 * v15));
      }

      else
      {
        v24 = -1;
      }

      if (v15)
      {
        v25 = v24 & (~v12 + a2);
        if (v15 <= 3)
        {
          v26 = v15;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v15);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *(v21 + 8) = v22;
  }
}

void sub_22B0B73F0()
{
  if (!qword_2813E99B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B5EE8, qword_22B0E5460);
    v0 = sub_22B0DF780();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E99B0);
    }
  }
}

uint64_t sub_22B0B7454(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B0A78E4;

  return sub_22B0B2198(a1, v8, v9, v10, v1 + v7, v5, v4);
}

uint64_t sub_22B0B7578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_22B0B34F4(a1, a2, a3);
}

uint64_t sub_22B0B7594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0B3D30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B0B7690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B0A78E4;

  return sub_22B0B4DF4(v8, a1, v6, v7, v9, v10, v1 + v5);
}

uint64_t sub_22B0B77A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0B7818(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B0A78E4;

  return sub_22B0CC964(a1, v5);
}

uint64_t sub_22B0B78D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B0A5698;

  return sub_22B0CC964(a1, v5);
}

uint64_t sub_22B0B7998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B0B79E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BaseAnalyzerDataSource.coreAnalyticsEventPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BaseAnalyzerDataSource.init(coreAnalyticsEventPrefix:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:countersManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a5;
  v15 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(a10 - 8) + 32))(&a9[v15[17]], a6, a10);
  (*(*(a11 - 8) + 32))(&a9[v15[18]], a7, a11);
  *&a9[v15[19]] = a8;
  return swift_unknownObjectRetain();
}

unint64_t sub_22B0B7C3C(uint64_t a1)
{
  result = sub_22B0B8230();
  if (v3 <= 0x3F)
  {
    result = sub_22B0B827C(319, &qword_27D8B5FB8, &protocolRef_HMMUptimeProvider);
    if (v4 <= 0x3F)
    {
      result = sub_22B0B827C(319, &qword_27D8B5FC0, &protocolRef_HMMLogEventSubmitting);
      if (v5 <= 0x3F)
      {
        result = sub_22B0B827C(319, &qword_27D8B5FC8, &protocolRef_HMMLogEventDispatching);
        if (v6 <= 0x3F)
        {
          v7 = *(a1 + 16);
          result = swift_checkMetadataState();
          if (v8 <= 0x3F)
          {
            v9 = *(a1 + 24);
            result = swift_checkMetadataState();
            if (v10 <= 0x3F)
            {
              result = type metadata accessor for CountersManager();
              if (v11 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22B0B7D80(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 48) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v22) + 1;
}

void *sub_22B0B7F88(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v23 = (((((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          result[1] = a2 - 1;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

unint64_t sub_22B0B8230()
{
  result = qword_27D8B5FB0;
  if (!qword_27D8B5FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5FB0);
  }

  return result;
}

uint64_t sub_22B0B827C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id ProcessExitInfoLogEvent.__allocating_init(coreAnalyticsEventPrefix:launchReason:exitStatusDomain:exitStatusCode:exitStatusErrorReason:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = objc_allocWithZone(v9);
  *&v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v18 = *a3;
  v26 = a1;
  v27 = a2;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);

  v19 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v19 = a1;
  v19[1] = a2;
  v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v18;
  v20 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v20 = a4;
  v20[4] = BYTE4(a4) & 1;
  v21 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v21 = a5;
  v21[8] = a6 & 1;
  v22 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v22 = a7;
  v22[1] = a8;
  v25.receiver = v17;
  v25.super_class = v9;
  return objc_msgSendSuper2(&v25, sel_init);
}

HomeKitMetrics::ProcessExitInfoLogEvent::LaunchReason_optional __swiftcall ProcessExitInfoLogEvent.LaunchReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ProcessExitInfoLogEvent.coreAnalyticsEventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName);
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName + 8);

  return v1;
}

uint64_t ProcessExitInfoLogEvent.exitStatusCode.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode);
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode + 8);
  return result;
}

uint64_t ProcessExitInfoLogEvent.exitStatusErrorReason.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason);
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason + 8);

  return v1;
}

id ProcessExitInfoLogEvent.init(coreAnalyticsEventPrefix:launchReason:exitStatusDomain:exitStatusCode:exitStatusErrorReason:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v14 = *a3;
  v22 = a1;
  v23 = a2;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);

  v15 = v23;
  v16 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v16 = v22;
  v16[1] = v15;
  v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v14;
  v17 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v17 = a4;
  v17[4] = BYTE4(a4) & 1;
  v18 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v18 = a5;
  v18[8] = a6 & 1;
  v19 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v19 = a7;
  v19[1] = a8;
  v21.receiver = v8;
  v21.super_class = type metadata accessor for ProcessExitInfoLogEvent();
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t sub_22B0B86F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6060, &qword_22B0E5560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4000;
  strcpy((inited + 32), "launchReason");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason);
  *(inited + 48) = sub_22B0DF620();
  v4 = sub_22B0B942C(inited);
  swift_setDeallocating();
  sub_22B0B9530(inited + 32);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain + 4))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain);
    v5 = sub_22B0DFD90();
  }

  sub_22B080C88(v5, 0xD000000000000010, 0x800000022B0E7600);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode + 8))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode);
    v7 = sub_22B0DFDA0();
  }

  sub_22B080C88(v7, 0x7461745374697865, 0xEE0065646F437375);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason);
    v10 = sub_22B0DF300();
  }

  else
  {
    v10 = 0;
  }

  sub_22B080C88(v10, 0xD000000000000015, 0x800000022B0E7620);
  return v4;
}

uint64_t sub_22B0B88C4()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B0B895C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ProcessExitInfoLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessExitInfoLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessExitInfoLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessExitInfoLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22B0B8BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B60A8, &qword_22B0E56A0);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_22B08350C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B8CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6080, &unk_22B0E5680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
    v8 = sub_22B0DFB50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B0898A8(v10, v6, &unk_27D8B6080, &unk_22B0E5680);
      result = sub_22B07639C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22B0DF0E0();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B8ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B60A0, &unk_22B0E5690);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B8FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v3 = sub_22B0DFB50();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B0898A8(v4, v13, &qword_27D8B6098, &unk_22B0E5BF0);
      result = sub_22B0835E4(v13);
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
      result = sub_22B096E2C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B9108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B9204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B9308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B0B942C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60B0, &qword_22B0E39B0);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22B0768A8(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22B0B9530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6068, &qword_22B0E5568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B0B959C()
{
  result = qword_27D8B6070;
  if (!qword_27D8B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessExitInfoLogEvent.LaunchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessExitInfoLogEvent.LaunchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int __swiftcall Int.accumulate(_:)(Swift::Int a1)
{
  v2 = __OFADD__(v1, a1);
  result = v1 + a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B0B987C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

double sub_22B0B98A0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t dispatch thunk of Accumulatable.accumulate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 48))();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22B0B99F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B0DF1B0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22B0DF1A0();
}

uint64_t sub_22B0B9AC4()
{
  v1 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState__isActive);
  os_unfair_lock_unlock(v1 + 4);
  return v2;
}

void sub_22B0B9B8C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_22B0B9BF8(v2, v3);

  os_unfair_lock_unlock(v4 + 4);
}

id sub_22B0B9BF8(id result, uint64_t a2)
{
  v2 = OBJC_IVAR___HMMEphemeralContainerState__isActive;
  if (*(a2 + OBJC_IVAR___HMMEphemeralContainerState__isActive) != (result & 1))
  {
    v4 = result;
    result = [*(a2 + OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider) uptime];
    v6 = OBJC_IVAR___HMMEphemeralContainerState__startTime;
    if ((v4 & 1) == 0)
    {
      v6 = OBJC_IVAR___HMMEphemeralContainerState__activeDuration;
      v5 = v5 - *(a2 + OBJC_IVAR___HMMEphemeralContainerState__startTime) + *(a2 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
    }

    *(a2 + v6) = v5;
    *(a2 + v2) = v4 & 1;
  }

  return result;
}

double sub_22B0B9CC8()
{
  v1 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v1 + 4);
  if (*(v0 + OBJC_IVAR___HMMEphemeralContainerState__isActive) == 1)
  {
    [*(v0 + OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider) uptime];
    v3 = v2 - *(v0 + OBJC_IVAR___HMMEphemeralContainerState__startTime) + *(v0 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
  }

  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

id EphemeralContainerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EphemeralContainerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EphemeralContainerState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B0B9F20(uint64_t a1)
{
  v3 = OBJC_IVAR___HMMEphemeralContainerState_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6100, &unk_22B0E5720);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v1[OBJC_IVAR___HMMEphemeralContainerState__isActive] = 1;
  *&v1[OBJC_IVAR___HMMEphemeralContainerState__activeDuration] = 0;
  *&v1[OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider] = a1;
  [swift_unknownObjectRetain() uptime];
  *&v1[OBJC_IVAR___HMMEphemeralContainerState__startTime] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EphemeralContainerState();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_22B0B9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v61 = a5;
  v62 = a6;
  v56 = a3;
  v63 = *v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v50 - v14;
  v59 = sub_22B0DEF00();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v59);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v58 = &v50 - v22;
  v23 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_uptimeProvider;
  v24 = [objc_opt_self() sharedInstance];
  v52 = v23;
  *&v6[v23] = v24;
  v25 = &v6[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex];
  *v25 = 0;
  *(v25 + 5) = 0;
  *(v25 + 8) = 0u;
  v26 = (v25 + 8);
  *(v25 + 24) = 0u;
  v6[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_suggestFullDayLoad] = 0;
  v66 = a1;
  if (a1 == 0x6C756E2F7665642FLL && a2 == 0xE90000000000006CLL || (sub_22B0DFC60() & 1) != 0)
  {
    goto LABEL_14;
  }

  v60 = a2;
  v55 = v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v51 = v26;
  v57 = v28;
  if (!a4)
  {
    v32 = sub_22B0DF300();
    v33 = sub_22B0DF300();
    v31 = [v28 URLForResource:v32 withExtension:v33];

    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v64 = 0xD00000000000001DLL;
  v65 = 0x800000022B0E78C0;
  MEMORY[0x231889070](v56, a4);
  v29 = sub_22B0DF300();

  v30 = sub_22B0DF300();
  v31 = [v28 URLForResource:v29 withExtension:v30];

  if (!v31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_22B0DFB00();
    __break(1u);
    return result;
  }

LABEL_8:
  sub_22B0DEEE0();

  v34 = v15;
  v35 = *(v15 + 32);
  v36 = v58;
  v37 = v59;
  v35(v58, v21, v59);
  v38 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v39 = sub_22B0DEEB0();
  v40 = [v38 initWithContentsOfURL_];

  if (v40)
  {
    *(v8 + 2) = v40;
    v41 = *(v34 + 56);
    v63 = v35;
    v42 = v54;
    v41(v54, 1, 1, v37);
    sub_22B0DF360();
    v43 = v40;

    v44 = v53;
    sub_22B0DEED0();

    sub_22B07D02C(v42, &qword_27D8B57B8, &unk_22B0E5850);
    (*(v34 + 8))(v36, v37);

    v63(&v8[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL], v44, v37);
    v45 = &v8[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock];
    v46 = v62;
    *v45 = v61;
    *(v45 + 1) = v46;
  }

  else
  {

    sub_22B0BB6C0();
    swift_allocError();
    swift_willThrow();

    sub_22B094864(v61);
    (*(v34 + 8))(v36, v37);

    sub_22B0BB690(v51);
    v47 = *(*v8 + 48);
    v48 = *(*v8 + 52);
    swift_deallocPartialClassInstance();
  }

  return v8;
}

void sub_22B0BA5D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == 2)
  {
    v4 = *(a2 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_uptimeProvider);
    v5 = &unk_2786F9000;
    [v4 uptime];
    if (*(a1 + 32) > v8)
    {
LABEL_7:
      *a3 = 0;
      return;
    }

    if (qword_2813E9AA8 == -1)
    {
LABEL_4:
      v9 = sub_22B0DF1B0();
      __swift_project_value_buffer(v9, qword_2813EBE90);
      v10 = sub_22B0DF190();
      v11 = sub_22B0DF690();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B074000, v10, v11, "Persistent store is in failure mode, not reopening. Persistent storage disabled.", v12, 2u);
        MEMORY[0x23188A520](v12, -1, -1);
      }

      [v4 v5[218]];
      *(a1 + 32) = v13 + 600.0;
      goto LABEL_7;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a1 + 24);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(a1 + 24) = v17;
    *a3 = v14;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    sub_22B0BA7A4(a2, a1);
    objc_autoreleasePoolPop(v19);
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *a3 = *(a1 + 8);
    }
  }
}

void sub_22B0BA7A4(uint64_t a1, _BYTE *a2)
{
  v5 = sub_22B0DEF00();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock);
  if (!v10)
  {
    v17 = a2;
    v18 = *(a1 + 16);
    (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL, v5);
    v19 = *v17 == 0;
    type metadata accessor for CoreDataCounterStore();
    swift_allocObject();
    v20 = sub_22B0961D8(0x746E756F434D4D48, 0xEB00000000737265, v18, v9, v19);
    if (v2)
    {
      v36 = v5;
      v37 = v17;
      goto LABEL_6;
    }

    v35 = *(v17 + 1);
    *(v17 + 1) = v20;

    v14 = v17;
LABEL_14:
    *v14 = 1;
    *(v14 + 3) = 1;
    return;
  }

  v36 = v5;
  v11 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock + 8);
  v12 = *(a1 + 16);
  v13 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL;
  v14 = a2;
  v15 = *a2 == 0;
  sub_22B0A7418(v10);
  v16 = v10(0x746E756F434D4D48, 0xEB00000000737265, v12, a1 + v13, v15);
  if (!v2)
  {
    v33 = v16;
    sub_22B094864(v10);
    v34 = *(v14 + 1);
    *(v14 + 1) = v33;

    goto LABEL_14;
  }

  v37 = v14;
  sub_22B094864(v10);
LABEL_6:
  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v21 = sub_22B0DF1B0();
  __swift_project_value_buffer(v21, qword_2813EBE90);

  v22 = v2;
  v23 = sub_22B0DF190();
  v24 = sub_22B0DF690();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v25 = 136315394;
    sub_22B096DD4();
    v28 = sub_22B0DFC20();
    v30 = sub_22B07B428(v28, v29, &v38);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    v31 = v2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v32;
    *v26 = v32;
    _os_log_impl(&dword_22B074000, v23, v24, "Failed to recreate persistent store at %s: %@. Persistent storage disabled.", v25, 0x16u);
    sub_22B07D02C(v26, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23188A520](v27, -1, -1);
    MEMORY[0x23188A520](v25, -1, -1);
  }

  else
  {
  }

  *v37 = 2;
}

uint64_t sub_22B0BAB9C()
{
  v1 = *v0;
  v2 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v2[2], v0, &v4);
  os_unfair_lock_unlock(v2);
}

void sub_22B0BAC38()
{
  v1 = v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  if (*(v1 + 8) != 2)
  {
    v2 = *(v1 + 32);
    v3 = v2 == 1;
    v4 = v2 < 1;
    v5 = v2 - 1;
    if (v4)
    {
      __break(1u);
      return;
    }

    *(v1 + 32) = v5;
    if (v3)
    {
      v6 = *(v1 + 16);
      *(v1 + 16) = 0;
    }
  }

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22B0BACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v13 + 56))(v14, v13);
  v23[0] = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    if (*(&v25 + 1))
    {
      sub_22B07D124(&v24, &v20);
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  v20 = v24;
  v21 = v25;
  v22 = v26;
LABEL_6:
  if (*(&v21 + 1))
  {
    v15 = sub_22B0781A8(&v20, v23);
    MEMORY[0x28223BE20](v15);
    *(&v20 - 6) = a3;
    *(&v20 - 5) = a4;
    *(&v20 - 4) = a5;
    *(&v20 - 3) = a1;
    v18 = a2;
    v19 = v23;
    sub_22B0BAFE4(sub_22B0BB64C, a4, a6);
    result = __swift_destroy_boxed_opaque_existential_0(v23);
    if (*(&v25 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v24);
    }
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_22B0DF8E0();

    strcpy(v23, "Counter class ");
    HIBYTE(v23[1]) = -18;
    v17 = sub_22B0DFE30();
    MEMORY[0x231889070](v17);

    MEMORY[0x231889070](0xD00000000000001FLL, 0x800000022B0E78A0);
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B0BAF30(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  (*(v7 + 32))(v9, a1, v6, v7);
  a2(v9);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_22B0BAFE4(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v5;
  v10 = (v5 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v10[2], v5, &v11);
  if (v4)
  {
    os_unfair_lock_unlock(v10);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (v11)
    {
      a1(v11);
      sub_22B0BAC38();
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }
}

uint64_t sub_22B0BB160(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for CoreDataGroupPersistenceProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[3] = v4;
  v7[4] = &off_283EECD50;
  v7[0] = v5;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_22B0BB200(void (*a1)(uint64_t))
{
  v4 = *v1;
  v5 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v5[2], v1, &v7);
  os_unfair_lock_unlock(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {

    a1(v6);
    sub_22B0BAC38();
  }
}

uint64_t sub_22B0BB2E0()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL;
  v2 = sub_22B0DEF00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock + 8);
  sub_22B094864(*(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock));
  sub_22B0BB690(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex + 8);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for PersistentCoreDataCounterStorage()
{
  result = qword_27D8B6130;
  if (!qword_27D8B6130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0BB410()
{
  result = sub_22B0DEF00();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0BB4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22B0BB52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B0BB64C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_22B0BAF30(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_22B0BB670(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_22B0BB160(a1, *(v1 + 24));
}

unint64_t sub_22B0BB6C0()
{
  result = qword_27D8B6148;
  if (!qword_27D8B6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6148);
  }

  return result;
}

unint64_t sub_22B0BB728()
{
  result = qword_27D8B6150;
  if (!qword_27D8B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6150);
  }

  return result;
}

id DailySchedulerDelegate.__allocating_init(dailyScheduler:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_22B07D124(a1, v3 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id DailySchedulerDelegate.init(dailyScheduler:)(uint64_t *a1)
{
  sub_22B07D124(a1, v1 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DailySchedulerDelegate();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_22B0BB874()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6168, &qword_22B0E58E8);
  v1 = sub_22B0DF350();
  v3 = v2;
  swift_unknownObjectWeakInit();
  v4 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler + 24);
  v5 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler), v4);
  sub_22B0BBA84(&ObjectType, &v9);
  v6 = swift_allocObject();
  sub_22B0BBABC(&v9, v6 + 16);
  v7 = *(v5 + 8);

  v7(v1, v3, v1, v3, &unk_22B0E58F8, v6, v4, v5);
  swift_bridgeObjectRelease_n();

  return sub_22B0BBB8C(&ObjectType);
}

uint64_t sub_22B0BB9A4(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22B0BB9C8, 0, 0);
}

uint64_t sub_22B0BB9C8()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(v0 + 32) == 1 && (*(v0 + 16) = &unk_283EFAD00, (v4 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v5 = &selRef_runHomeutilTask;
    }

    else
    {
      v5 = &selRef_runDailyTask;
      v4 = v3;
    }

    [v4 *v5];
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22B0BBAF4(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A5698;

  return sub_22B0BB9A4(a1, v1 + 16);
}

id DailySchedulerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DailySchedulerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DailySchedulerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0BBDA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  a5[3] = v10;
  a5[4] = sub_22B0BBE5C(a4, a2, a3);
  *a5 = v11;
}

uint64_t sub_22B0BBE5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B0BBF00(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22B0BBF44(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = *v2;
  v5 = sub_22B0DF0E0();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v63 = &v59 - v11;
  v12 = *(v4 + 96);
  v60 = v2;
  v13 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v81 = AssociatedTypeWitness;
  v82 = AssociatedConformanceWitness;
  v18 = v5;
  v83 = v16;
  v84 = v17;
  v67 = type metadata accessor for CounterSet();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_22B0DF780();
  v20 = *(v71 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v71);
  v73 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - v24;
  v26 = sub_22B0DEE10();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v70 = sub_22B0DEE00();
  v29 = *(a1 + 64);
  v61 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v72 = TupleTypeMetadata2 - 8;
  v75 = v65 + 16;
  v77 = (v65 + 32);
  v69 = (v20 + 32);
  v66 = (v65 + 8);
  v64 = a1;

  v35 = 0;
  *&v36 = 136446722;
  v59 = v36;
  v78 = v18;
  v74 = TupleTypeMetadata2;
  v62 = v25;
  if (!v32)
  {
    goto LABEL_6;
  }

  do
  {
    v43 = v35;
LABEL_16:
    v46 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v47 = v46 | (v43 << 6);
    v48 = v64;
    v49 = v65;
    v50 = v63;
    (*(v65 + 16))(v63, *(v64 + 48) + *(v65 + 72) * v47, v18);
    v51 = *(v48 + 56) + 16 * v47;
    LOBYTE(v48) = *v51;
    v52 = *(v51 + 8);
    v53 = v18;
    v44 = v73;
    v54 = &v73[*(v74 + 48)];
    v55 = v50;
    TupleTypeMetadata2 = v74;
    (*(v49 + 32))(v73, v55, v53);
    *v54 = v48;
    *(v54 + 1) = v52;
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v44, 0, 1, TupleTypeMetadata2);

    v42 = v43;
    v25 = v62;
LABEL_17:
    (*v69)(v25, v44, v71);
    if ((*(v45 + 48))(v25, 1, TupleTypeMetadata2) == 1)
    {
    }

    v79 = v42;
    v56 = &v25[*(TupleTypeMetadata2 + 48)];
    v57 = *v56;
    v58 = *(v56 + 1);
    v18 = v78;
    (*v77)(v80, v25, v78);
    LOBYTE(v81) = v57;
    v82 = v58;
    swift_getWitnessTable();
    v37 = sub_22B0DEDF0();
    v39 = v38;

    v40 = v60[2];
    sub_22B0920C0(v37, v39, 1, *(v60 + 24), v68, v80);
    sub_22B080408(v37, v39);
    result = (*v66)(v80, v18);
    v35 = v79;
  }

  while (v32);
LABEL_6:
  if (v33 <= v35 + 1)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v33;
  }

  v42 = v41 - 1;
  while (1)
  {
    v43 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v43 >= v33)
    {
      v44 = v73;
      v45 = *(TupleTypeMetadata2 - 8);
      (*(v45 + 56))(v73, 1, 1, TupleTypeMetadata2);
      v32 = 0;
      goto LABEL_17;
    }

    v32 = *(v61 + 8 * v43);
    ++v35;
    if (v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22B0BC878(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  v7 = sub_22B091E9C(v5, a1, a2);
  v10 = v9;
  if (v9 != 2)
  {
    sub_22B0BD258(v7, v8, v9);
  }

  return v10 != 2;
}

uint64_t sub_22B0BC8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22B0DF0E0();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v48 - v10;
  v12 = v2[2];
  v13 = sub_22B091E9C(*(v3 + 24), a1, a2);
  if (v15 == 2)
  {
    v16 = *(v6 + 96);
    v17 = *(v6 + 80);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v18 = sub_22B07AB00();
LABEL_11:
    v46 = sub_22B0D20BC(v18, 0);
    return v46 & 1;
  }

  v50 = v13;
  v51 = v14;
  v52 = v15;
  if ((v15 & 1) == 0)
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v30 = sub_22B0DF1B0();
    __swift_project_value_buffer(v30, qword_2813EBE90);
    v31 = v53;
    (*(v53 + 16))(v11, a2, v7);

    v32 = sub_22B0DF190();
    v33 = sub_22B0DF690();

    if (os_log_type_enabled(v32, v33))
    {
      LODWORD(v49) = v52 & 1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54[0] = v35;
      *v34 = 136446722;
      v36 = (*(*a1 + 96))();
      v38 = sub_22B07B428(v36, v37, v54);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      sub_22B0BD26C();
      v39 = sub_22B0DFC20();
      v41 = v40;
      (*(v31 + 8))(v11, v7);
      v42 = sub_22B07B428(v39, v41, v54);

      *(v34 + 14) = v42;
      *(v34 + 22) = 256;
      *(v34 + 24) = v49;
      _os_log_impl(&dword_22B074000, v32, v33, "Unsupported encoding for %{public}s for %s: %hhu", v34, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x23188A520](v35, -1, -1);
      MEMORY[0x23188A520](v34, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v11, v7);
    }

    v43 = *(v6 + 96);
    v44 = *(v6 + 80);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v45 = sub_22B07AB00();
    sub_22B0BD258(v50, v51, v52);
    v18 = v45;
    goto LABEL_11;
  }

  v48[4] = v7;
  v19 = sub_22B0DEDE0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_22B0DEDD0();
  v22 = *(v6 + 96);
  v23 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v28 = v50;
  v27 = v51;
  v29 = swift_getAssociatedConformanceWitness();
  v48[5] = AssociatedTypeWitness;
  v49 = AssociatedConformanceWitness;
  v54[0] = AssociatedTypeWitness;
  v54[1] = AssociatedConformanceWitness;
  v54[2] = v26;
  v54[3] = v29;
  v48[3] = v29;
  type metadata accessor for CounterSet();
  swift_getWitnessTable();
  sub_22B0DEDC0();
  sub_22B0BD258(v28, v27, v52);

  v46 = v55;
  return v46 & 1;
}

uint64_t sub_22B0BD194()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_22B0BD258(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_22B080408(a1, a2);
  }

  return a1;
}

unint64_t sub_22B0BD26C()
{
  result = qword_2813EAD68;
  if (!qword_2813EAD68)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD68);
  }

  return result;
}

uint64_t sub_22B0BD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v20 = a1;
  v21 = a4;
  v6 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  swift_getAssociatedConformanceWitness();
  sub_22B0DFC80();
  sub_22B0DFC50();
  sub_22B0DF630();
  v17 = *(v10 + 8);
  v17(v14, a2);
  v18 = v21(v16, a2, a3);
  v17(v16, a2);
  return v18;
}

id MappedDisplayReasonRadarRequestFilter.__allocating_init(defaultRequestFilter:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MappedDisplayReasonRadarRequestFilter.init(defaultRequestFilter:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MappedDisplayReasonRadarRequestFilter();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_22B0BD5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();

  swift_unknownObjectRetain();
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_22B0886CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v11;
  return swift_endAccess();
}

uint64_t sub_22B0BD6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22B0768A8(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v10 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    return v10;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  return v10;
}

id sub_22B0BD768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = *(v3 + v6);

  v9 = sub_22B0768A8(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v11 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v9);
  swift_unknownObjectRetain();

LABEL_6:
  v12 = sub_22B0DF300();
  v13 = [v11 shouldRequestRadarForDisplayReason_];
  swift_unknownObjectRelease();

  return v13;
}

void sub_22B0BD8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = *(v3 + v6);

  v9 = sub_22B0768A8(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v11 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v9);
  swift_unknownObjectRetain();

LABEL_6:
  v12 = sub_22B0DF300();
  [v11 radarRequestedForDisplayReason_];
  swift_unknownObjectRelease();
}

id MappedDisplayReasonRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MappedDisplayReasonRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MappedDisplayReasonRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0BDD30()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName);
  v3 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName + 8);
  v4 = sub_22B0DF300();
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B08851C(v4, 0x6C4263696C627570, 0xEF656D614E6B636FLL, isUniquelyReferenced_nonNull_native);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun + 8))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun);
    v7 = sub_22B0DFD30();
  }

  sub_22B080C88(v7, 0xD000000000000013, 0x800000022B0E7B10);
  v9 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock);
  v10 = sub_22B0DF560();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B08851C(v10, 0x42796C6961447369, 0xEC0000006B636F6CLL, v11);
  return v5;
}

id sub_22B0BDEDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockSchedulerLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TapToRadarComponent.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TapToRadarComponent.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TapToRadarComponent.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TapToRadarComponent.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall TapToRadarComponent.init(name:version:identifier:)(HomeKitMetrics::TapToRadarComponent *__return_ptr retstr, Swift::String name, Swift::String version, Swift::Int identifier)
{
  retstr->name = name;
  retstr->version = version;
  retstr->identifier = identifier;
}

BOOL static TapToRadarComponent.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_22B0DFC60()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22B0DFC60()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_22B0BE174(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_22B0DFC60()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22B0DFC60()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0BE210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B0BE258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B0BE2B0(uint64_t a1)
{
  type metadata accessor for AccessoryGroupSpecifier();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = &type metadata for AccessoryCoreDataGroupSpecifier;
    v5 = &off_283EEC4B8;
  }

  else
  {
    type metadata accessor for HomeGroupSpecifier();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      v14 = &type metadata for NamedCoreDataGroupSpecifier;
      v15 = &off_283EEC4E8;
      v13[0] = a1;
      goto LABEL_6;
    }

    v4 = &type metadata for HomeCoreDataGroupSpecifier;
    v5 = &off_283EEC4D0;
  }

  v14 = v4;
  v15 = v5;
  v13[0] = v3;
LABEL_6:
  v6 = *(v1 + 16);
  MEMORY[0x28223BE20](v3);
  v8 = *(v7 + 16);

  v9 = [v8 newBackgroundContext];
  v10 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v9 setMergePolicy_];

  MEMORY[0x28223BE20](v11);
  sub_22B0DF710();

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

void sub_22B0BE634(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  [v6 setIncludesSubentities_];
  v17[0] = 0;
  v7 = [v6 execute_];
  v8 = v17[0];
  if (v7)
  {
    v9 = v7;
    type metadata accessor for ManagedNamedGroup();
    v10 = sub_22B0DF4B0();
    v11 = v8;

    if (v10 >> 62)
    {
      v12 = sub_22B0DF830();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
      v13 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v13);

      sub_22B096BB4(a1);
    }
  }

  else
  {
    v15 = v17[0];
    sub_22B0DEE80();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B0BE960(void *a1@<X8>)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B0DF300();
  v5 = [v3 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B0E5B80;
  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  v7 = MEMORY[0x277D84F90];
  *(v6 + 32) = sub_22B0DF660();
  *(v6 + 40) = sub_22B0DF660();
  *(v6 + 48) = sub_22B0DF660();
  v8 = sub_22B0DF4A0();

  v9 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v5 setPredicate_];
  [v5 setIncludesSubentities_];
  type metadata accessor for ManagedNamedGroup();
  v10 = sub_22B0DF720();
  if (v1)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_13:

    v18 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v18;
    return;
  }

  v12 = sub_22B0DF830();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_5:
  v19 = a1;
  v20 = v7;
  sub_22B0DF960();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = MEMORY[0x277D85000];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2318895C0](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      ++v13;
      (*((*v14 & *v15) + 0x50))();

      sub_22B0DF940();
      v17 = *(v20 + 16);
      sub_22B0DF970();
      sub_22B0DF980();
      sub_22B0DF950();
    }

    while (v12 != v13);

    v18 = v20;
    a1 = v19;
    goto LABEL_14;
  }

  __break(1u);
}

size_t sub_22B0BEC88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC0, &qword_22B0E5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  v4 = *(v1 + 16);
  sub_22B07993C(sub_22B0C07A4, a1);
  v6 = sub_22B09EF88(v5);

  *(inited + 32) = v6;
  sub_22B07993C(sub_22B0C07E8, a1);
  v8 = sub_22B09EF88(v7);

  *(inited + 40) = v8;
  sub_22B07993C(sub_22B0C082C, a1);
  v10 = sub_22B09EF88(v9);

  *(inited + 48) = v10;
  v11 = sub_22B098524(inited);
  v12 = v11;
  v13 = *(v11 + 16);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_22B083388(*(v11 + 16), 0);
  v15 = *(sub_22B0DF0E0() - 8);
  v16 = sub_22B093468(&v18, (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80))), v13, v12);
  sub_22B0A0228();
  if (v16 != v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v14;
}

void sub_22B0BEE34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_22B0DF0E0();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v59 - v11;
  v12 = sub_22B0BFD58(a2);
  if (v12)
  {
    v13 = v12;
    a3(0);
    v14 = [swift_getObjCClassFromMetadata() entity];
    v15 = [v14 name];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v17 = swift_allocObject();
    v67 = xmmword_22B0E4000;
    *(v17 + 16) = xmmword_22B0E4000;
    *(v17 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v17 + 64) = sub_22B0C0870();
    *(v17 + 32) = v13;
    v66 = v13;
    v18 = sub_22B0DF660();
    [v16 setPredicate_];

    [v16 setResultType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62C0, &qword_22B0E5C08);
    v19 = swift_allocObject();
    *(v19 + 16) = v67;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 1702125924;
    *(v19 + 40) = 0xE400000000000000;
    v20 = sub_22B0DF4A0();

    [v16 setPropertiesToFetch_];

    [v16 setReturnsDistinctResults_];
    sub_22B07BA9C(0, &qword_27D8B62C8, 0x277CBEAC0);
    v21 = sub_22B0DF720();
    v22 = v3;
    if (v3)
    {
      if (qword_2813E9AA8 == -1)
      {
LABEL_5:
        v23 = sub_22B0DF1B0();
        __swift_project_value_buffer(v23, qword_2813EBE90);
        v24 = v66;
        v25 = v22;
        v26 = sub_22B0DF190();
        v27 = sub_22B0DF690();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138543618;
          *(v28 + 4) = v24;
          *v29 = v13;
          *(v28 + 12) = 2112;
          v30 = v24;
          v31 = v22;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 14) = v32;
          v29[1] = v32;
          _os_log_impl(&dword_22B074000, v26, v27, "Error getting dates for group %{public}@: %@", v28, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
          swift_arrayDestroy();
          MEMORY[0x23188A520](v29, -1, -1);
          MEMORY[0x23188A520](v28, -1, -1);
        }

        return;
      }
    }

    else
    {
      v41 = sub_22B0BF5BC(v21);

      if (!v41)
      {

        return;
      }

      v60 = v16;
      v61 = 0;
      v22 = *(v41 + 16);
      if (!v22)
      {
LABEL_27:

        return;
      }

      v64 = v10;
      v16 = 0;
      v42 = v41 + 32;
      v62 = v69 + 16;
      v43 = v69 + 32;
      v13 = MEMORY[0x277D84F90];
      v65 = v6;
      v63 = v41 + 32;
      *&v67 = v41;
      while (v16 < *(v41 + 16))
      {
        v44 = *(v42 + 8 * v16);
        if (*(v44 + 16))
        {
          v45 = *(v42 + 8 * v16);

          v46 = sub_22B0768A8(1702125924, 0xE400000000000000);
          if (v47)
          {
            v48 = v22;
            v49 = v69;
            v50 = *(v69 + 72);
            v51 = v43;
            v52 = v6;
            v53 = v64;
            (*(v69 + 16))(v64, *(v44 + 56) + v50 * v46, v52);

            v54 = *(v49 + 32);
            v55 = v52;
            v43 = v51;
            v54(v68, v53, v55);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_22B082E70(0, v13[2] + 1, 1, v13);
            }

            v57 = v13[2];
            v56 = v13[3];
            v22 = v48;
            if (v57 >= v56 >> 1)
            {
              v13 = sub_22B082E70(v56 > 1, v57 + 1, 1, v13);
            }

            v41 = v67;
            v13[2] = v57 + 1;
            v58 = v13 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + v57 * v50;
            v6 = v65;
            v54(v58, v68, v65);
            v42 = v63;
          }

          else
          {
          }
        }

        if (v22 == ++v16)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v33 = sub_22B0DF1B0();
  __swift_project_value_buffer(v33, qword_2813EBE90);

  v34 = sub_22B0DF190();
  v35 = sub_22B0DF690();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v70 = v37;
    *v36 = 136446210;
    v38 = (*(*a2 + 96))();
    v40 = sub_22B07B428(v38, v39, &v70);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22B074000, v34, v35, "Failed to load group for %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23188A520](v37, -1, -1);
    MEMORY[0x23188A520](v36, -1, -1);
  }
}

uint64_t sub_22B0BF5BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B0DF830())
  {
    v8 = MEMORY[0x277D84F90];
    sub_22B0BFAD0(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22B0DF830();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x2318895C0](0, a1);
LABEL_10:
  v6 = v5;
  sub_22B0DF0E0();
  sub_22B0DF230();

  return 0;
}

void sub_22B0BF754()
{
  v1 = [*(*(v0 + 16) + 16) newBackgroundContext];
  v2 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v1 setMergePolicy_];

  sub_22B0DF710();
}

void sub_22B0BF824(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ManagedCounter();
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v5, a1);

  type metadata accessor for ManagedDuration();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v6, a1);

  type metadata accessor for ManagedDistribution();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v7, a1);
}

void sub_22B0BF9B8()
{
  v1 = *v0;
  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B0E4000;
  v3 = sub_22B0DF070();
  *(v2 + 56) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
  *(v2 + 64) = sub_22B07BAE4();
  *(v2 + 32) = v3;
  v4 = sub_22B0DF660();
  sub_22B0BF754();
}

void *sub_22B0BFAB0(void *a1, int64_t a2, char a3)
{
  result = sub_22B0BFAF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B0BFAD0(void *a1, int64_t a2, char a3)
{
  result = sub_22B0BFC24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B0BFAF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62E0, &qword_22B0E5C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62E8, &qword_22B0E5C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B0BFC24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62D0, &qword_22B0E5C10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62D8, &qword_22B0E5C18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_22B0BFD58(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  type metadata accessor for AccessoryGroupSpecifier();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &type metadata for AccessoryCoreDataGroupSpecifier;
    v4 = &off_283EEC4B8;
LABEL_5:
    v41 = v3;
    v42 = v4;
    v40[0] = v2;
    goto LABEL_6;
  }

  type metadata accessor for HomeGroupSpecifier();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &type metadata for HomeCoreDataGroupSpecifier;
    v4 = &off_283EEC4D0;
    goto LABEL_5;
  }

  v3 = &type metadata for NamedCoreDataGroupSpecifier;
  v4 = &off_283EEC4E8;
  v41 = &type metadata for NamedCoreDataGroupSpecifier;
  v42 = &off_283EEC4E8;
  v40[0] = a1;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v40, v3);
  v5 = v4[1];

  v6 = v5();
  [v6 setIncludesSubentities_];
  v39 = 0;
  v7 = [v6 execute_];
  v8 = v39;
  if (!v7)
  {
    v13 = v39;
    v14 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v15 = sub_22B0DF1B0();
    __swift_project_value_buffer(v15, qword_2813EBE90);

    v16 = v14;
    v17 = sub_22B0DF190();
    v18 = sub_22B0DF690();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v19 = 136446466;
      v22 = (*(*a1 + 96))();
      v24 = sub_22B07B428(v22, v23, &v39);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_22B074000, v17, v18, "Error getting group %{public}s: %@", v19, 0x16u);
      sub_22B07D02C(v20, &qword_27D8B5660, &qword_22B0E54A0);
      MEMORY[0x23188A520](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188A520](v21, -1, -1);
      MEMORY[0x23188A520](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v9 = v7;
  type metadata accessor for ManagedNamedGroup();
  v10 = sub_22B0DF4B0();
  v11 = v8;

  if (v10 >> 62)
  {
    v12 = sub_22B0DF830();
    if (v12 != 1)
    {
LABEL_9:
      if (v12)
      {

        if (qword_2813E9AA8 != -1)
        {
          swift_once();
        }

        v27 = sub_22B0DF1B0();
        __swift_project_value_buffer(v27, qword_2813EBE90);

        v28 = sub_22B0DF190();
        v29 = sub_22B0DF690();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v39 = v31;
          *v30 = 136446210;
          v32 = (*(*a1 + 96))();
          v34 = sub_22B07B428(v32, v33, &v39);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_22B074000, v28, v29, "Unexpected extra groups returned for group %{public}s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x23188A520](v31, -1, -1);
          MEMORY[0x23188A520](v30, -1, -1);
        }
      }

      else
      {
      }

LABEL_21:
      v35 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 != 1)
    {
      goto LABEL_9;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x2318895C0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v36 = *(v10 + 32);
  }

  v35 = v36;

LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v40);
  v37 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_22B0C02D8(void *a1, id a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  [a2 setPredicate_];
  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v6 setResultType_];
  *&v36 = 0;
  v7 = [a3 executeRequest:v6 error:&v36];
  v8 = v36;
  if (v7)
  {
    v9 = v7;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v8;
    if (v10)
    {
      if ([v10 result])
      {
        sub_22B0DF7A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      v36 = v34;
      v37 = v35;
      if (*(&v35 + 1))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62A8, &qword_22B0E5BE0);
        if (swift_dynamicCast())
        {
          v25 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62B0, &qword_22B0E5BE8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B0E4000;
          v27 = *MEMORY[0x277CBE150];
          *&v36 = sub_22B0DF330();
          *(&v36 + 1) = v28;
          sub_22B0DF880();
          *(inited + 96) = v24;
          *(inited + 72) = v34;
          sub_22B0B8FCC(inited);
          swift_setDeallocating();
          sub_22B07D02C(inited + 32, &qword_27D8B6098, &unk_22B0E5BF0);
          v29 = sub_22B0DF220();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_22B0E4D80;
          *(v30 + 32) = a3;
          sub_22B07BA9C(0, &qword_27D8B62B8, 0x277CBE440);
          v31 = a3;
          v32 = sub_22B0DF4A0();

          [v25 mergeChangesFromRemoteContextSave:v29 intoContexts:v32];
        }

        else
        {
        }

        goto LABEL_18;
      }
    }

    else
    {

      v36 = 0u;
      v37 = 0u;
    }

    sub_22B07D02C(&v36, &qword_27D8B5770, &unk_22B0E2E40);
    goto LABEL_18;
  }

  v12 = v36;
  v13 = sub_22B0DEE80();

  swift_willThrow();
  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v14 = sub_22B0DF1B0();
  __swift_project_value_buffer(v14, qword_2813EBE90);
  v15 = a1;
  v16 = v13;
  v17 = sub_22B0DF190();
  v18 = sub_22B0DF690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    *(v19 + 4) = v15;
    *v20 = a1;
    *(v19 + 12) = 2112;
    v21 = v15;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v23;
    v20[1] = v23;
    _os_log_impl(&dword_22B074000, v17, v18, "Error deleting counters where %{public}@: %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
    swift_arrayDestroy();
    MEMORY[0x23188A520](v20, -1, -1);
    MEMORY[0x23188A520](v19, -1, -1);
  }

  else
  {
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_22B0C07A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedCounter);
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_22B0C07E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedDuration);
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_22B0C082C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedDistribution);
  if (!v3)
  {
    *a2 = v5;
  }
}

unint64_t sub_22B0C0870()
{
  result = qword_2813EA430;
  if (!qword_2813EA430)
  {
    type metadata accessor for ManagedNamedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA430);
  }

  return result;
}

id PassThroughRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassThroughRadarRequestFilter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassThroughRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassThroughRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassThroughRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CountersError.hashValue.getter()
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

unint64_t sub_22B0C0B00()
{
  result = qword_27D8B62F0;
  if (!qword_27D8B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B62F0);
  }

  return result;
}

uint64_t *TapToRadarManager.__allocating_init(processName:defaultDraft:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = [objc_opt_self() sharedInstance];
  sub_22B0C0C5C(a3, v11);
  v13 = *(v4 + 48);
  v14 = *(v4 + 52);
  swift_allocObject();
  v15 = sub_22B0C0CCC(v12, a1, a2, v11);
  sub_22B0C1278(a3);
  return v15;
}

uint64_t sub_22B0C0C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_22B0C0CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43[1] = *v4;
  v44 = a2;
  v9 = sub_22B0DF6E0();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22B0DF6D0();
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B0DF1F0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v43 - v19;
  v21 = type metadata accessor for TapToRadarDraft();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
  *v26 = 0;
  v27 = MEMORY[0x277D84F90];
  *(v26 + 1) = MEMORY[0x277D84F90];
  v28 = (v26 + 8);
  if (a1)
  {
    v29 = v44;
    v5[2] = a1;
    v5[3] = v29;
    v5[4] = a3;
    sub_22B0C0C5C(a4, v20);
    v30 = *(v22 + 48);
    v31 = v30(v20, 1, v21);
    v43[0] = a4;
    if (v31 == 1)
    {
      *v25 = 0;
      *(v25 + 1) = 0xE000000000000000;
      *(v25 + 2) = 0;
      *(v25 + 3) = 0xE000000000000000;
      *(v25 + 4) = 0;
      *(v25 + 5) = 0xE000000000000000;
      *(v25 + 6) = 0;
      *(v25 + 7) = 0xE000000000000000;
      *(v25 + 5) = 0u;
      *(v25 + 6) = 0u;
      *(v25 + 107) = 0u;
      *(v25 + 4) = 0u;
      *(v25 + 16) = v27;
      *(v25 + 17) = v27;
      *(v25 + 18) = MEMORY[0x277D84F98];
      *(v25 + 19) = v27;
      *(v25 + 20) = v27;
      *(v25 + 21) = v27;
      v25[176] = 0;
      *(v25 + 23) = 0;
      *(v25 + 24) = 0;
      v32 = v21[22];
      v33 = sub_22B0DF0E0();
      (*(*(v33 - 8) + 56))(&v25[v32], 1, 1, v33);
      v25[v21[23]] = 0;
      v25[v21[24]] = 0;
      v25[v21[25]] = 0;
      *&v25[v21[26]] = 0;
      v25[v21[27]] = 0;
      v25[v21[28]] = 0;
      *&v25[v21[29]] = v27;
      v34 = &v25[v21[30]];
      *v34 = 0;
      *(v34 + 1) = 0;
      v35 = v21[31];
      v36 = sub_22B0DEF00();
      (*(*(v36 - 8) + 56))(&v25[v35], 1, 1, v36);
      v37 = &v25[v21[32]];
      *v37 = 0;
      *(v37 + 1) = 0;
      v25[v21[33]] = 0;
      v38 = v30(v20, 1, v21);
      swift_unknownObjectRetain();
      if (v38 != 1)
      {
        sub_22B0C1278(v20);
      }
    }

    else
    {
      sub_22B0C2194(v20, v25);
      swift_unknownObjectRetain();
    }

    sub_22B0C2194(v25, v5 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);
    sub_22B0C23F0();
    sub_22B0DF1D0();
    v51 = v27;
    sub_22B0C243C(&qword_27D8B6348, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6350, &qword_22B0E5E08);
    sub_22B0C2484(&qword_27D8B6358, &qword_27D8B6350, &qword_22B0E5E08);
    sub_22B0DF7D0();
    (*(v49 + 104))(v48, *MEMORY[0x277D85260], v50);
    v41 = sub_22B0DF700();
    swift_unknownObjectRelease();
    sub_22B0C1278(v43[0]);
    *(v5 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_queue) = v41;
  }

  else
  {
    sub_22B0C1278(a4);

    sub_22B0C2274(v28);
    v39 = *(*v5 + 48);
    v40 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_22B0C1278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TapToRadarManager.addFilter(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters));
  sub_22B07D124(a1, v8);
  v4 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22B083074(0, v4[2] + 1, 1, v4);
    *(v3 + 8) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_22B083074((v6 > 1), v7 + 1, 1, v4);
    *(v3 + 8) = v4;
  }

  v4[2] = v7 + 1;
  sub_22B0781A8(v8, &v4[5 * v7 + 4]);
  os_unfair_lock_unlock(v3);
}

uint64_t TapToRadarManager.makeDraft(category:displayReason:title:problemDescription:component:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t *a7)
{
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v73 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - v12;
  v14 = type metadata accessor for TapToRadarDraft();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a7;
  v19 = a7[1];
  v20 = a7[3];
  v66 = a7[2];
  v67 = v18;
  v65 = v20;
  v21 = a7[4];
  sub_22B0C20D4(v7 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft, v17);
  if (v19 || v17[9] || v17[14])
  {
    v22 = v17[1];

    *v17 = a1;
    v17[1] = a2;

    v23 = sub_22B089738(75);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x231889020](v23, v25, v27, v29);
    v32 = v31;

    v33 = v17[3];

    v17[2] = v30;
    v17[3] = v32;

    v34 = sub_22B089738(240);
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = MEMORY[0x231889020](v34, v36, v38, v40);
    v43 = v42;

    v44 = v17[5];

    v17[4] = v41;
    v17[5] = v43;
    v45 = v17[7];
    v46 = v70;

    v17[6] = v69;
    v17[7] = v46;
    if (v19)
    {
      v47 = v17[8];
      v48 = v17[9];
      v49 = v21;
      v50 = v17[10];
      v51 = v17[11];
      v52 = v17[12];

      v53 = v65;

      sub_22B089818(v47, v48);
      v54 = v66;
      v17[8] = v67;
      v17[9] = v19;
      v17[10] = v54;
      v17[11] = v53;
      v17[12] = v49;
    }

    sub_22B0DF0D0();
    v55 = sub_22B0DF0E0();
    (*(*(v55 - 8) + 56))(v13, 0, 1, v55);
    v56 = v72;
    sub_22B07E0F8(v13, v17 + *(v72 + 88));
    v57 = v73;
    sub_22B0C20D4(v17, v73);
    v58 = 0;
  }

  else
  {
    if (qword_27D8B53C8 != -1)
    {
      swift_once();
    }

    v60 = sub_22B0DF1B0();
    __swift_project_value_buffer(v60, qword_27D8B9210);
    v61 = sub_22B0DF190();
    v62 = sub_22B0DF690();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_22B074000, v61, v62, "Component not specified, and default radar doesn't have a component or bundle ID", v63, 2u);
      MEMORY[0x23188A520](v63, -1, -1);
    }

    v58 = 1;
    v56 = v72;
    v57 = v73;
  }

  (*(v71 + 56))(v57, v58, 1, v56);
  return sub_22B0C2138(v17);
}

uint64_t TapToRadarManager.initiateDraft(_:)(uint64_t a1)
{
  v3 = sub_22B0DF1C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B0DF1F0();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TapToRadarDraft();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v19[1] = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_queue);
  sub_22B0C20D4(a1, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_22B0C2194(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_22B0C21F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B0C1F9C;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_22B0DF1E0();
  v21 = MEMORY[0x277D84F90];
  sub_22B0C243C(&qword_27D8B6310, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6318, &qword_22B0E5D40);
  sub_22B0C2484(&qword_27D8B6320, &qword_27D8B6318, &qword_22B0E5D40);
  sub_22B0DF7D0();
  MEMORY[0x2318893A0](0, v11, v7, v17);
  _Block_release(v17);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v20);
}

void sub_22B0C1B1C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v51 - v12);
  v14 = a1[2];
  ObjectType = swift_getObjectType();
  if ([v14 isTapToRadarServiceAuthorized])
  {
    v16 = a1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters));
    v17 = *(v16 + 1);

    os_unfair_lock_unlock(v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v54 = ObjectType;
      v55 = a1;
      v51 = v13;
      v52 = v11;
      v53 = v8;
      v19 = 0;
      v20 = v17 + 32;
      v21 = v17 + 32;
      do
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_19:
          swift_once();
LABEL_9:
          v24 = sub_22B0DF1B0();
          __swift_project_value_buffer(v24, qword_27D8B9210);
          v25 = v51;
          sub_22B0C20D4(a2, v51);
          v26 = v52;
          sub_22B0C20D4(a2, v52);
          v27 = v53;
          sub_22B0C20D4(a2, v53);
          v28 = sub_22B0DF190();
          v29 = sub_22B0DF6A0();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v56 = v31;
            *v30 = 136315650;
            v32 = *v25;
            v33 = v25[1];

            sub_22B0C2138(v25);
            v34 = sub_22B07B428(v32, v33, &v56);

            *(v30 + 4) = v34;
            *(v30 + 12) = 2080;
            v35 = *(v26 + 16);
            v36 = *(v26 + 24);

            sub_22B0C2138(v26);
            v37 = sub_22B07B428(v35, v36, &v56);

            *(v30 + 14) = v37;
            *(v30 + 22) = 2080;
            v38 = *(v27 + 32);
            v39 = *(v27 + 40);

            sub_22B0C2138(v27);
            v40 = sub_22B07B428(v38, v39, &v56);

            *(v30 + 24) = v40;
            swift_arrayDestroy();
            MEMORY[0x23188A520](v31, -1, -1);
            MEMORY[0x23188A520](v30, -1, -1);
          }

          else
          {

            sub_22B0C2138(v27);
            sub_22B0C2138(v26);
            sub_22B0C2138(v25);
          }

          return;
        }

        sub_22B07D124(v21, v57 + 1);
        v22 = v58;
        v23 = v59;
        __swift_project_boxed_opaque_existential_1((v57 + 1), v58);
        (*(v23 + 8))(v57, a2, v22, v23);
        __swift_destroy_boxed_opaque_existential_0((v57 + 1));
        if (LOBYTE(v57[0]) && LOBYTE(v57[0]) != 2)
        {

          if (qword_27D8B53C8 == -1)
          {
            goto LABEL_9;
          }

          goto LABEL_19;
        }

        ++v19;
        v21 += 40;
      }

      while (v18 != v19);
      do
      {
        sub_22B07D124(v20, v57 + 1);
        v41 = v58;
        v42 = v59;
        __swift_project_boxed_opaque_existential_1((v57 + 1), v58);
        (*(v42 + 16))(a2, v41, v42);
        __swift_destroy_boxed_opaque_existential_0((v57 + 1));
        v20 += 40;
        --v18;
      }

      while (v18);

      a1 = v55;
    }

    else
    {
    }

    v43 = sub_22B089030(v14, a2);
    if (v43)
    {
      v44 = v43;
      v45 = a1[3];
      v46 = a1[4];
      v47 = sub_22B0DF300();
      v48 = *(a2 + 16);
      v49 = *(a2 + 24);
      v50 = sub_22B0DF300();
      [v14 createDraft:v44 forProcessNamed:v47 withDisplayReason:v50];
    }
  }
}

uint64_t sub_22B0C1F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t TapToRadarManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_22B0C2138(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);

  sub_22B0C2274(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters + 8);
  return v0;
}

uint64_t TapToRadarManager.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_22B0C2138(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);

  sub_22B0C2274(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters + 8);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B0C20D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0C2138(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B0C2194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22B0C21F8()
{
  v1 = *(type metadata accessor for TapToRadarDraft() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_22B0C1B1C(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for TapToRadarManager()
{
  result = qword_27D8B6328;
  if (!qword_27D8B6328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0C230C()
{
  result = type metadata accessor for TapToRadarDraft();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22B0C23F0()
{
  result = qword_27D8B6340;
  if (!qword_27D8B6340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B6340);
  }

  return result;
}

uint64_t sub_22B0C243C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B0C2484(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B0C24D8(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B0C24FC, 0, 0);
}

uint64_t sub_22B0C24FC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_22B0A3DB0;
    v4 = *(v0 + 64);

    return sub_22B0C25EC(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22B0C25EC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 168) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C30, &unk_22B0E60A0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  v6 = sub_22B0DF0E0();
  *(v2 + 72) = v6;
  v7 = *(v6 - 8);
  *(v2 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C2754, 0, 0);
}

uint64_t sub_22B0C2754()
{
  if (*(v0 + 168))
  {
    goto LABEL_2;
  }

  v12 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 16);
  v15 = *(v14 + 88);
  v16 = [v15 startOfCurrentDay];
  sub_22B0DF0B0();

  v17 = *(v14 + 80);
  v18 = (v17 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v17 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v18 + *(v19 + 28), v17, v13);
  os_unfair_lock_unlock(v18);
  v67 = v15;
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  v25 = *(v0 + 24);
  v24 = *(v0 + 32);
  v66 = v21[2];
  v66(v23, *(v0 + 96), v20);
  v65 = v21[7];
  v65(v23, 0, 1, v20);
  v26 = *(v25 + 48);
  sub_22B0898A8(v22, v24, &unk_27D8B5670, &unk_22B0E32C0);
  sub_22B0898A8(v23, v24 + v26, &unk_27D8B5670, &unk_22B0E32C0);
  v27 = v21[6];
  v28 = v27(v24, 1, v20);
  v29 = *(v0 + 72);
  if (v28 == 1)
  {
    v30 = *(v0 + 64);
    sub_22B07D02C(*(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v30, &unk_27D8B5670, &unk_22B0E32C0);
    if (v27(v24 + v26, 1, v29) == 1)
    {
      v31 = *(v0 + 80);
      sub_22B07D02C(*(v0 + 32), &unk_27D8B5670, &unk_22B0E32C0);
      (*(v31 + 8))(*(v0 + 96), *(v0 + 72));
      goto LABEL_20;
    }
  }

  else
  {
    sub_22B0898A8(*(v0 + 32), *(v0 + 48), &unk_27D8B5670, &unk_22B0E32C0);
    if (v27(v24 + v26, 1, v29) != 1)
    {
      v48 = *(v0 + 80);
      v47 = *(v0 + 88);
      v49 = *(v0 + 72);
      v50 = *(v0 + 48);
      v63 = *(v0 + 56);
      v64 = *(v0 + 64);
      v51 = *(v0 + 32);
      (*(v48 + 32))(v47, v24 + v26, v49);
      sub_22B076354(&qword_2813EAD70, MEMORY[0x277CC9578]);
      v52 = sub_22B0DF2F0();
      v53 = *(v48 + 8);
      v53(v47, v49);
      sub_22B07D02C(v63, &unk_27D8B5670, &unk_22B0E32C0);
      sub_22B07D02C(v64, &unk_27D8B5670, &unk_22B0E32C0);
      v53(v50, v49);
      sub_22B07D02C(v51, &unk_27D8B5670, &unk_22B0E32C0);
      if (v52)
      {
        v53(*(v0 + 96), *(v0 + 72));
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v32 = *(v0 + 72);
    v33 = *(v0 + 80);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    sub_22B07D02C(*(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v34, &unk_27D8B5670, &unk_22B0E32C0);
    (*(v33 + 8))(v35, v32);
  }

  sub_22B07D02C(*(v0 + 32), &qword_27D8B5C30, &unk_22B0E60A0);
LABEL_15:
  v37 = *(v0 + 88);
  v36 = *(v0 + 96);
  v38 = *(v0 + 72);
  v39 = *(v0 + 80);
  v40 = [v67 currentDate];
  sub_22B0DF0B0();

  sub_22B0DEFC0();
  v42 = v41;
  v43 = *(v39 + 8);
  v43(v37, v38);
  v44 = *(v0 + 96);
  v45 = *(v0 + 72);
  if (v42 >= 300.0)
  {
    v46 = *(v0 + 40);
    v66(v46, *(v0 + 96), *(v0 + 72));
    v65(v46, 0, 1, v45);
    RunDatePreferencesStorage.lastRunDate.setter(v46);
    v43(v44, v45);
LABEL_2:
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 168);
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_22B074000, v2, v3, "Running daily blocks with isDebug = %{BOOL}d...", v5, 8u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    v6 = *(v0 + 16);
    v7 = *(v0 + 168);

    os_unfair_lock_lock((v6 + 56));
    v8 = *(v6 + 72);
    *(v0 + 104) = v8;
    *(v0 + 112) = *(v6 + 64);

    os_unfair_lock_unlock((v6 + 56));
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = *(MEMORY[0x277D859E8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_22B0C2E68;

    return MEMORY[0x2822007C0]();
  }

  v43(*(v0 + 96), *(v0 + 72));
LABEL_20:
  v55 = *(v0 + 88);
  v54 = *(v0 + 96);
  v57 = *(v0 + 56);
  v56 = *(v0 + 64);
  v59 = *(v0 + 40);
  v58 = *(v0 + 48);
  v60 = *(v0 + 32);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_22B0C2E68()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B0C2F80, 0, 0);
}

uint64_t sub_22B0C2F80()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = *(v0 + 168);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D859E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_22B0C306C;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0C306C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B0C31A0, 0, 0);
}

uint64_t sub_22B0C31A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D859E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_22B0C3288;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0C3288()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B0C33BC, 0, 0);
}

uint64_t sub_22B0C33BC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B0C3468(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C3514, 0, 0);
}

uint64_t sub_22B0C3514()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(v0 + 104);
    v3 = (v1 + 72);
    do
    {
      v6 = *(v3 - 3);
      if (v6)
      {
        v30 = v2;
        v7 = *(v3 - 2);
        v31 = *(v3 - 1);
        v32 = *(v3 - 4);
        v33 = *v3;
        v9 = *(v0 + 88);
        v8 = *(v0 + 96);
        v10 = sub_22B0DF5C0();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v8, 1, 1, v10);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v29 = (v12 + 16);
        *(v12 + 24) = 0;
        *(v12 + 32) = v6;
        *(v12 + 40) = v7;
        *(v12 + 48) = v27;
        sub_22B0898A8(v8, v9, &qword_27D8B5C38, &qword_22B0E5480);
        v28 = v11;
        v13 = v11;
        v14 = v6;
        LODWORD(v9) = (*(v13 + 48))(v9, 1, v10);
        sub_22B0A7418(v6);
        sub_22B0A7418(v6);
        sub_22B0A7418(v6);

        sub_22B0A7418(v31);
        v15 = *(v0 + 88);
        if (v9 == 1)
        {
          sub_22B07D02C(*(v0 + 88), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v28 + 8))(v15, v10);
        }

        if (*v29)
        {
          v16 = *(v12 + 24);
          v17 = *v29;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_22B0DF570();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v21 = **(v0 + 72);
        v22 = swift_allocObject();
        *(v22 + 16) = &unk_22B0E6110;
        *(v22 + 24) = v12;

        if (v20 | v18)
        {
          v4 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v18;
          *(v0 + 40) = v20;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v21;
        swift_task_create();

        sub_22B094864(v14);
        sub_22B094864(v31);

        sub_22B094864(v14);
        sub_22B07D02C(v5, &qword_27D8B5C38, &qword_22B0E5480);
        v2 = v30;
      }

      v3 += 6;
      --v2;
    }

    while (v2);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}