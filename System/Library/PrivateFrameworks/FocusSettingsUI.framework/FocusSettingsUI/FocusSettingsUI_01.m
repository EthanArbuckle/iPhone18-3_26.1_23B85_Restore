void *sub_24B8E8F48()
{
  v1 = v0;
  v2 = type metadata accessor for FocusConfigurationAction(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063438);
  v6 = *v0;
  v7 = sub_24BAAA5AC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B8F357C(*(v6 + 48) + v21, v5, type metadata accessor for FocusConfigurationAction);
        result = sub_24B8F36A4(v5, *(v8 + 48) + v21, type metadata accessor for FocusConfigurationAction);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B8E9154()
{
  v1 = v0;
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F063410);
  v6 = *v0;
  v7 = sub_24BAAA5AC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B8F357C(*(v6 + 48) + v21, v5, type metadata accessor for FocusSystemConfigurationAction);
        result = sub_24B8F36A4(v5, *(v8 + 48) + v21, type metadata accessor for FocusSystemConfigurationAction);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B8E9360()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633B0);
  v2 = *v0;
  v3 = sub_24BAAA5AC();
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
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 24);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(v20 + 24) = v19;
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

uint64_t sub_24B8E94CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068F80);
  result = sub_24BAAA5BC();
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
      sub_24BAAA7FC();

      sub_24BAAA07C();
      result = sub_24BAAA84C();
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

uint64_t sub_24B8E9704(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24BAAA5BC();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_24BAAA3BC();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_24B8E9910()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634B0);
  result = sub_24BAAA5BC();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_24BAAA7FC();
      MEMORY[0x24C2508C0](v15);
      result = sub_24BAAA84C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_24B8E9B30(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24BAAA5BC();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_24BAAA7FC();
      result = sub_24BAAA84C();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_24B8E9D44()
{
  v1 = v0;
  v2 = type metadata accessor for FocusConfigurationAction(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063438);
  result = sub_24BAAA5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v27 = result + 56;
    v28 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v19 = *(v5 + 48);
      v20 = *(v29 + 72);
      sub_24B8F357C(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for FocusConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA7E4C();
      sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
      sub_24BAA9F1C();
      sub_24BAAA81C();
      sub_24BAAA81C();
      sub_24BAAA07C();
      sub_24BAAA07C();
      sub_24BAAA3DC();
      v21 = *&v4[*(v2 + 40)];
      sub_24BAAA81C();
      if (v21)
      {
        v22 = v21;
        sub_24BAAA3DC();
      }

      v23 = *&v4[*(v2 + 44)];
      sub_24BAAA81C();
      if (v23)
      {
        v24 = v23;
        sub_24BAAA3DC();
      }

      sub_24BAAA84C();
      v14 = v27;
      v15 = sub_24BAAA4BC();
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B8F36A4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for FocusConfigurationAction);
      ++*(v7 + 16);
      v5 = v28;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_20;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B8EA0D0()
{
  v1 = v0;
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F063410);
  result = sub_24BAAA5BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_24B8F357C(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for FocusSystemConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA7E4C();
      sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
      sub_24BAA9F1C();
      sub_24BAAA81C();
      sub_24BAAA81C();
      sub_24BAAA07C();
      sub_24BAAA3DC();
      result = sub_24BAAA84C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B8F36A4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for FocusSystemConfigurationAction);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B8EA43C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633B0);
  result = sub_24BAAA5BC();
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
      v16 = *(v2 + 48) + 32 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_24BAAA7FC();
      sub_24BAAA81C();
      if (v18 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      MEMORY[0x24C2508F0](*&v21);
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x24C2508F0](*&v22);
      MEMORY[0x24C2508C0](v20);
      result = sub_24BAAA84C();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 32 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      *(v12 + 16) = v19;
      *(v12 + 24) = v20;
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
        goto LABEL_32;
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
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v1 = v4;
  }

  return result;
}

void sub_24B8EA6CC(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!sub_24BAAA52C())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24B8F37E8(0, a2);
    sub_24B8F1128(a4, a2);
    sub_24BAAA24C();
    a1 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_22:
      sub_24B8F0C5C();
      return;
    }

    while (1)
    {
      v21 = a5(v20);

      v10 = v18;
      v11 = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_24BAAA56C())
      {
        sub_24B8F37E8(0, a2);
        swift_dynamicCast();
        v20 = v24;
        v18 = v10;
        v19 = v11;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_24B8EA8FC(uint64_t result)
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_24B9AC694(v12, v13);

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

uint64_t sub_24B8EAA28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063420);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v61 = type metadata accessor for FocusConfigurationAction(0);
  v6 = *(v61 - 1);
  v7 = MEMORY[0x28223BE20](v61);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  v60 = *v1;
  if (!*(v60 + 16))
  {
    return result;
  }

  v50 = v1;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v54 = (v6 + 56);

  v18 = 0;
  v58 = v5;
  v59 = a1;
  v55 = v17;
  v56 = a1 + 56;
  v57 = v6;
  if (!v16)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    v20 = *(v6 + 72);
    sub_24B8F357C(*(a1 + 48) + v20 * (__clz(__rbit64(v16)) | (v18 << 6)), v12, type metadata accessor for FocusConfigurationAction);
    v21 = v60;
    sub_24BAAA7FC();
    sub_24B9B1520();
    v22 = sub_24BAAA84C();
    v23 = v21 + 56;
    v24 = -1 << *(v21 + 32);
    v25 = v22 & ~v24;
    if (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_39:
      v48 = v58;
      (*v54)(v58, 1, 1, v61);
      a1 = v59;
      v17 = v55;
      v13 = v56;
      goto LABEL_40;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = v25 * v20;
      sub_24B8F357C(*(v60 + 48) + v25 * v20, v9, type metadata accessor for FocusConfigurationAction);
      if ((sub_24BAA7E0C() & 1) == 0 || v9[v61[5]] != v12[v61[5]] || v9[v61[6]] != v12[v61[6]])
      {
        goto LABEL_13;
      }

      v28 = v61[7];
      v29 = *&v9[v28];
      v30 = *&v9[v28 + 8];
      v31 = &v12[v28];
      v32 = v29 == *v31 && v30 == *(v31 + 1);
      if (!v32 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_13;
      }

      v33 = v61[8];
      v34 = *&v9[v33];
      v35 = *&v9[v33 + 8];
      v36 = &v12[v33];
      v37 = v34 == *v36 && v35 == *(v36 + 1);
      if (!v37 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_24B8F37E8(0, &unk_27F067FA0);
      if ((sub_24BAAA3CC() & 1) == 0)
      {
        goto LABEL_13;
      }

      v38 = v61[10];
      v39 = *&v12[v38];
      if (*&v9[v38])
      {
        if (!v39)
        {
          goto LABEL_13;
        }

        v52 = *&v9[v38];
        v53 = sub_24B8F37E8(0, &qword_27F063430);
        v51 = v39;
        v52 = v52;
        v40 = sub_24BAAA3CC();

        if ((v40 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (v39)
      {
        goto LABEL_13;
      }

      v41 = v61[11];
      v42 = *&v12[v41];
      if (*&v9[v41])
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_36;
      }

LABEL_13:
      sub_24B8F3644(v9, type metadata accessor for FocusConfigurationAction);
      v25 = (v25 + 1) & v26;
      if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (!v42)
    {
      goto LABEL_13;
    }

    v52 = *&v9[v41];
    v53 = sub_24B8F37E8(0, &qword_27F063428);
    v51 = v42;
    v52 = v52;
    v43 = sub_24BAAA3CC();

    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_36:
    sub_24B8F3644(v9, type metadata accessor for FocusConfigurationAction);
    v44 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v44;
    v62 = *v44;
    v17 = v55;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24B8E8F48();
      v46 = v62;
    }

    v47 = *(v46 + 48) + v27;
    v48 = v58;
    sub_24B8F36A4(v47, v58, type metadata accessor for FocusConfigurationAction);
    sub_24B9AD8E4(v25);
    v49 = v61;
    v60 = v62;
    *v44 = v62;
    (*v54)(v48, 0, 1, v49);
    a1 = v59;
    v13 = v56;
LABEL_40:
    v16 &= v16 - 1;
    sub_24B8F3644(v12, type metadata accessor for FocusConfigurationAction);
    result = sub_24B8F35E4(v48, &qword_27F063420);
    v6 = v57;
  }

  while (v16);
LABEL_6:
  while (2)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      if (v19 < v17)
      {
        v16 = *(v13 + 8 * v19);
        ++v18;
        if (!v16)
        {
          continue;
        }

        v18 = v19;
        goto LABEL_10;
      }
    }

    return result;
  }
}

uint64_t sub_24B8EAFC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for FocusSystemConfigurationAction(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_24B8F35E4(v5, &qword_27F0633F8))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_24B8F357C(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B9AC7D0(v10, v5);
      sub_24B8F3644(v10, type metadata accessor for FocusSystemConfigurationAction);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B8EB1D0(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_24BAAA52C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    type metadata accessor for InstalledApp();
    sub_24B8F1E94(&qword_27F0633F0, type metadata accessor for InstalledApp);
    result = sub_24BAAA24C();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_24B8F0C5C();
    }

    while (1)
    {
      sub_24B9ACCE0(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_24BAAA56C())
      {
        type metadata accessor for InstalledApp();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_24B8F0C5C();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_24B8F0C5C();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8EB408(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v70 = a4;
  v68 = a3;
  v8 = a2;
  v88 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v9 = a1;
  v67 = a6;
  v66 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    v7 = sub_24B8F37E8(0, v68);
    sub_24B8F1128(a5, v68);
    sub_24BAAA24C();
    v9 = v83;
    v12 = v84;
    v13 = v85;
    v14 = v86;
    v15 = v87;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v78 = v9;
  v79 = v12;
  v80 = v13;
  v81 = v14;
  v69 = v13;
  v19 = (v13 + 64) >> 6;
  v75 = (v8 + 56);
  v82 = v15;
  v72 = v12;
  v73 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_24BAAA56C();
      if (!v27)
      {
        goto LABEL_62;
      }

      v76 = v27;
      sub_24B8F37E8(0, v68);
      swift_dynamicCast();
      v25 = v77;
      v23 = v14;
      v7 = v15;
      if (!v77)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        v22 = v19 <= v14 + 1 ? v14 + 1 : v19;
        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_66;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v78 = v9;
      v79 = v12;
      v80 = v69;
      v81 = v23;
      v82 = v7;
      if (!v25)
      {
        goto LABEL_62;
      }
    }

    v28 = v25;
    v29 = sub_24BAAA3BC();
    v30 = -1 << *(v8 + 32);
    v15 = v29 & ~v30;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v75[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v72;
    v9 = v73;
  }

  v31 = ~v30;
  v32 = sub_24B8F37E8(0, v68);
  v33 = *(*(v8 + 48) + 8 * v15);
  v74 = v32;
  while (1)
  {
    v34 = sub_24BAAA3CC();

    if (v34)
    {
      break;
    }

    v15 = (v15 + 1) & v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v75[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v33 = *(*(v8 + 48) + 8 * v15);
  }

  v35 = *(v8 + 32);
  v65 = ((1 << v35) + 63) >> 6;
  v11 = 8 * v65;
  if ((v35 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20]();
    v37 = &v65 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v37, v75, v36);
    v38 = *&v37[8 * v9] & ~v21;
    v39 = *(v8 + 16);
    v68 = v37;
    *&v37[8 * v9] = v38;
    v9 = v39 - 1;
    v41 = v72;
    v40 = v73;
    v42 = i;
LABEL_33:
    v70 = v9;
    while (v40 < 0)
    {
      v43 = sub_24BAAA56C();
      if (!v43)
      {
        goto LABEL_61;
      }

      v76 = v43;
      swift_dynamicCast();
      v15 = v77;
      if (!v77)
      {
        goto LABEL_61;
      }

LABEL_50:
      v48 = sub_24BAAA3BC();
      v49 = v8;
      v50 = -1 << *(v8 + 32);
      v51 = v48 & ~v50;
      v52 = v51 >> 6;
      v53 = 1 << v51;
      if (((1 << v51) & v75[v51 >> 6]) != 0)
      {
        v54 = ~v50;
        while (1)
        {
          v55 = *(*(v49 + 48) + 8 * v51);
          v56 = sub_24BAAA3CC();

          if (v56)
          {
            break;
          }

          v51 = (v51 + 1) & v54;
          v52 = v51 >> 6;
          v53 = 1 << v51;
          if (((1 << v51) & v75[v51 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v42 = i;

        v57 = v68[v52];
        v68[v52] = v57 & ~v53;
        v58 = (v57 & v53) == 0;
        v8 = v49;
        v41 = v72;
        v40 = v73;
        v9 = v70;
        if (!v58)
        {
          v9 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            v8 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v49;
        v41 = v72;
        v40 = v73;
        v9 = v70;
        v42 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v46 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v40 + 48) + ((v21 << 9) | (8 * v46)));
      v47 = v15;
      v45 = v21;
LABEL_49:
      v78 = v40;
      v79 = v41;
      v80 = v69;
      v81 = v45;
      v23 = v45;
      v82 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = v67(v68, v65, v9, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v42 <= v23 + 1)
    {
      v44 = v23 + 1;
    }

    else
    {
      v44 = v42;
    }

    v45 = v44 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v42)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v41 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v60 = v11;

    v61 = v8;
    v62 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v61;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v75, v62);
  sub_24B8EE49C(v63, v65, v61, v15, &v78, v68, v70, v66);
  v8 = v64;

  MEMORY[0x24C251390](v63, -1, -1);
LABEL_62:
  sub_24B8F0C5C();
  return v8;
}

uint64_t sub_24B8EBAD8(unint64_t a1, uint64_t a2)
{
  v149 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063420);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v111 - v8;
  v10 = type metadata accessor for FocusConfigurationAction(0);
  v11 = MEMORY[0x28223BE20](v10);
  v114 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v136 = &v111 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v111 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v111 - v19;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v119 = v9;
  v113 = v7;
  v112 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v128 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v117 = (63 - v23) >> 6;
  v127 = (v18 + 56);
  v130 = v18;
  v126 = (v18 + 48);
  v142 = a2;
  v143 = (a2 + 56);

  v27 = 0;
  v125 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v28 = v25;
    v29 = v27;
    if (v25)
    {
LABEL_15:
      v33 = (v28 - 1) & v28;
      v34 = v119;
      sub_24B8F357C(*(a1 + 48) + v130[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v119, type metadata accessor for FocusConfigurationAction);
      v35 = 0;
      v36 = v29;
      v37 = v33;
      v31 = v36;
    }

    else
    {
      v30 = v117 <= v27 + 1 ? v27 + 1 : v117;
      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_105;
        }

        if (v29 >= v117)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v37 = 0;
      v35 = 1;
      v34 = v119;
    }

    v123 = *v127;
    v123(v34, v35, 1, v10);
    v144 = a1;
    v145 = v22;
    v146 = v128;
    v147 = v31;
    v134 = v31;
    v38 = v37;
    v148 = v37;
    v122 = *v126;
    v39 = v122(v34, 1, v10);
    v40 = v142;
    if (v39 == 1)
    {
      sub_24B8F35E4(v34, &qword_27F063420);
      sub_24B8F0C5C();
      return v40;
    }

    sub_24B8F36A4(v34, v20, type metadata accessor for FocusConfigurationAction);
    sub_24BAAA7FC();
    v41 = sub_24BAA7E4C();
    v42 = sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
    v121 = v41;
    v120 = v42;
    sub_24BAA9F1C();
    v43 = v20[v10[5]];
    sub_24BAAA81C();
    v141 = v20[v10[6]];
    sub_24BAAA81C();
    v44 = &v20[v10[7]];
    v45 = *v44;
    v139 = *(v44 + 1);
    v140 = v45;
    sub_24BAAA07C();
    v46 = &v20[v10[8]];
    v47 = *(v46 + 1);
    v138 = *v46;
    v137 = v47;
    sub_24BAAA07C();
    v135 = *&v20[v10[9]];
    sub_24BAAA3DC();
    v48 = *&v20[v10[10]];
    sub_24BAAA81C();
    if (v48)
    {
      v49 = v48;
      sub_24BAAA3DC();
    }

    v50 = *&v20[v10[11]];
    v133 = v38;
    v132 = v48;
    v129 = v50;
    sub_24BAAA81C();
    if (v50)
    {
      v51 = v50;
      sub_24BAAA3DC();
    }

    v52 = sub_24BAAA84C();
    v53 = -1 << *(v40 + 32);
    a1 = v52 & ~v53;
    v9 = a1 >> 6;
    v31 = 1 << a1;
    if (((1 << a1) & v143[a1 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B8F3644(v20, type metadata accessor for FocusConfigurationAction);
    v27 = v134;
    v25 = v133;
    a1 = v125;
  }

  v54 = ~v53;
  v22 = v130[9];
  while (1)
  {
    sub_24B8F357C(*(v142 + 48) + v22 * a1, v17, type metadata accessor for FocusConfigurationAction);
    if ((sub_24BAA7E0C() & 1) == 0 || v43 != v17[v10[5]] || v141 != v17[v10[6]])
    {
      goto LABEL_25;
    }

    v55 = &v17[v10[7]];
    v56 = *v55 == v140 && *(v55 + 1) == v139;
    if (!v56 && (sub_24BAAA78C() & 1) == 0)
    {
      goto LABEL_25;
    }

    v57 = &v17[v10[8]];
    v58 = *v57 == v138 && *(v57 + 1) == v137;
    if (!v58 && (sub_24BAAA78C() & 1) == 0)
    {
      goto LABEL_25;
    }

    v131 = sub_24B8F37E8(0, &unk_27F067FA0);
    if ((sub_24BAAA3CC() & 1) == 0)
    {
      goto LABEL_25;
    }

    v59 = *&v17[v10[10]];
    if (v59)
    {
      if (!v132)
      {
        goto LABEL_25;
      }

      v116 = sub_24B8F37E8(0, &qword_27F063430);
      v118 = v132;
      v115 = v59;
      v60 = sub_24BAAA3CC();

      if ((v60 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v132)
    {
      goto LABEL_25;
    }

    v61 = *&v17[v10[11]];
    if (!v61)
    {
      if (!v129)
      {
        break;
      }

      goto LABEL_25;
    }

    if (v129)
    {
      v116 = sub_24B8F37E8(0, &qword_27F063428);
      v118 = v129;
      v115 = v61;
      v62 = sub_24BAAA3CC();

      if (v62)
      {
        break;
      }
    }

LABEL_25:
    sub_24B8F3644(v17, type metadata accessor for FocusConfigurationAction);
    a1 = (a1 + 1) & v54;
    v9 = a1 >> 6;
    v31 = 1 << a1;
    if ((v143[a1 >> 6] & (1 << a1)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_24B8F3644(v17, type metadata accessor for FocusConfigurationAction);
  v63 = sub_24B8F3644(v20, type metadata accessor for FocusConfigurationAction);
  v64 = v142;
  v65 = *(v142 + 32);
  v115 = ((1 << v65) + 63) >> 6;
  v26 = 8 * v115;
  if ((v65 & 0x3Fu) > 0xD)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v111 = &v111;
    MEMORY[0x28223BE20](v63);
    v67 = &v111 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v67, v143, v66);
    v68 = *&v67[8 * v9] & ~v31;
    v118 = v67;
    *&v67[8 * v9] = v68;
    v116 = *(v64 + 16) - 1;
    v69 = v125;
    v9 = v113;
    v70 = v114;
LABEL_51:
    v71 = i;
    v72 = v117;
    v31 = v134;
    a1 = v133;
LABEL_52:
    if (a1)
    {
      break;
    }

    if (v72 <= v31 + 1)
    {
      v74 = v31 + 1;
    }

    else
    {
      v74 = v72;
    }

    v75 = v74 - 1;
    while (1)
    {
      v73 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v73 >= v72)
      {
        v77 = 0;
        v78 = 1;
        v31 = v75;
        goto LABEL_63;
      }

      a1 = *(v71 + 8 * v73);
      ++v31;
      if (a1)
      {
        v31 = v73;
        goto LABEL_62;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    v109 = v26;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v69 = swift_slowAlloc();
      memcpy(v69, v143, v109);
      v9 = v112;
      v110 = sub_24B8EE734(v69, v115, v142, a1, &v144);

      if (v9)
      {
        goto LABEL_111;
      }

      MEMORY[0x24C251390](v69, -1, -1);
      v40 = v110;
LABEL_103:
      sub_24B8F0C5C();
      return v40;
    }

    v64 = v142;
  }

  v73 = v31;
LABEL_62:
  v76 = __clz(__rbit64(a1));
  v77 = (a1 - 1) & a1;
  sub_24B8F357C(v69[6] + (v76 | (v73 << 6)) * v22, v9, type metadata accessor for FocusConfigurationAction);
  v78 = 0;
LABEL_63:
  v123(v9, v78, 1, v10);
  v144 = v69;
  v145 = v71;
  v146 = v128;
  v147 = v31;
  v148 = v77;
  if (v122(v9, 1, v10) == 1)
  {
    sub_24B8F35E4(v9, &qword_27F063420);
    v40 = sub_24BA2944C(v118, v115, v116, v64);
    goto LABEL_103;
  }

  v79 = v9;
  v80 = v136;
  sub_24B8F36A4(v79, v136, type metadata accessor for FocusConfigurationAction);
  sub_24BAAA7FC();
  sub_24BAA9F1C();
  v81 = *(v80 + v10[5]);
  sub_24BAAA81C();
  v141 = *(v80 + v10[6]);
  sub_24BAAA81C();
  v82 = (v80 + v10[7]);
  v83 = *v82;
  v139 = v82[1];
  v140 = v83;
  sub_24BAAA07C();
  v84 = (v80 + v10[8]);
  v85 = v84[1];
  v138 = *v84;
  v137 = v85;
  sub_24BAAA07C();
  v135 = *(v80 + v10[9]);
  sub_24BAAA3DC();
  v86 = *(v80 + v10[10]);
  sub_24BAAA81C();
  if (v86)
  {
    v87 = v86;
    sub_24BAAA3DC();
  }

  v88 = *(v136 + v10[11]);
  v134 = v31;
  v132 = v86;
  v130 = v88;
  sub_24BAAA81C();
  if (v88)
  {
    v89 = v88;
    sub_24BAAA3DC();
  }

  v133 = v77;
  v90 = sub_24BAAA84C();
  v91 = -1 << *(v64 + 32);
  v92 = v90 & ~v91;
  v93 = v92 >> 6;
  v94 = 1 << v92;
  if (((1 << v92) & v143[v92 >> 6]) == 0)
  {
LABEL_50:
    sub_24B8F3644(v136, type metadata accessor for FocusConfigurationAction);
    v69 = v125;
    v9 = v113;
    goto LABEL_51;
  }

  v95 = ~v91;
  while (2)
  {
    sub_24B8F357C(*(v64 + 48) + v92 * v22, v70, type metadata accessor for FocusConfigurationAction);
    if ((sub_24BAA7E0C() & 1) == 0 || v81 != *(v70 + v10[5]) || v141 != *(v70 + v10[6]))
    {
      goto LABEL_72;
    }

    v96 = (v70 + v10[7]);
    v97 = *v96 == v140 && v96[1] == v139;
    if (!v97 && (sub_24BAAA78C() & 1) == 0)
    {
      goto LABEL_72;
    }

    v98 = (v70 + v10[8]);
    v99 = *v98 == v138 && v98[1] == v137;
    if (!v99 && (sub_24BAAA78C() & 1) == 0 || (sub_24BAAA3CC() & 1) == 0)
    {
      goto LABEL_72;
    }

    v100 = *(v70 + v10[10]);
    if (!v100)
    {
      v70 = v114;
      if (!v132)
      {
        goto LABEL_92;
      }

      goto LABEL_72;
    }

    v70 = v114;
    if (!v132)
    {
      goto LABEL_72;
    }

    v129 = sub_24B8F37E8(0, &qword_27F063430);
    v101 = v132;
    v119 = v100;
    v102 = sub_24BAAA3CC();

    v64 = v142;
    if ((v102 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_92:
    v103 = *(v70 + v10[11]);
    if (!v103)
    {
      v70 = v114;
      if (!v130)
      {
        break;
      }

      goto LABEL_72;
    }

    v70 = v114;
    if (!v130 || (v129 = sub_24B8F37E8(0, &qword_27F063428), v104 = v130, v119 = v103, v105 = sub_24BAAA3CC(), v104, v64 = v142, v119, (v105 & 1) == 0))
    {
LABEL_72:
      sub_24B8F3644(v70, type metadata accessor for FocusConfigurationAction);
      v92 = (v92 + 1) & v95;
      v93 = v92 >> 6;
      v94 = 1 << v92;
      if ((v143[v92 >> 6] & (1 << v92)) == 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  sub_24B8F3644(v70, type metadata accessor for FocusConfigurationAction);
  v64 = v142;
  sub_24B8F3644(v136, type metadata accessor for FocusConfigurationAction);
  v106 = v118[v93];
  v118[v93] = v106 & ~v94;
  v56 = (v106 & v94) == 0;
  v69 = v125;
  v9 = v113;
  v71 = i;
  v72 = v117;
  v31 = v134;
  a1 = v133;
  if (v56)
  {
    goto LABEL_52;
  }

  v107 = v116 - 1;
  if (!__OFSUB__(v116, 1))
  {
    --v116;
    if (!v107)
    {

      v40 = MEMORY[0x277D84FA0];
      goto LABEL_103;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_111:

  result = MEMORY[0x24C251390](v69, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24B8ECB7C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_24BAAA7FC();

    sub_24BAAA07C();
    v23 = sub_24BAAA84C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_24BAAA78C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_24BA297CC(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_24BAAA7FC();

            sub_24BAAA07C();
            v41 = sub_24BAAA84C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_24BAAA78C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24B8EEED8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x24C251390](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_24B8F0C5C();
    return v5;
  }

  result = MEMORY[0x24C251390](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24B8ED0EC(unint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633F8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v85 - v9;
  v11 = type metadata accessor for FocusSystemConfigurationAction(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v110 = &v85 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v109 = &v85 - v21;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v90 = v8;
  v86 = 0;
  v23 = a1 + 56;
  v22 = *(a1 + 56);
  v24 = -1 << *(a1 + 32);
  v100 = ~v24;
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v107 = v25 & v22;
  v91 = (63 - v24) >> 6;
  v99 = (v20 + 56);
  v89 = v20;
  v98 = (v20 + 48);
  v106 = a2;
  v111 = (a2 + 56);
  v26 = a1;

  v28 = 0;
  v97 = a1;
  v96 = a1 + 56;
  v108 = v11;
  for (i = v10; ; v10 = i)
  {
    v29 = v107;
    v30 = v28;
    if (v107)
    {
LABEL_15:
      v34 = (v29 - 1) & v29;
      sub_24B8F357C(*(v26 + 48) + *(v89 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v10, type metadata accessor for FocusSystemConfigurationAction);
      v35 = 0;
      v32 = v30;
    }

    else
    {
      if (v91 <= v28 + 1)
      {
        v31 = v28 + 1;
      }

      else
      {
        v31 = v91;
      }

      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_71;
        }

        if (v30 >= v91)
        {
          break;
        }

        v29 = *(v23 + 8 * v30);
        ++v33;
        if (v29)
        {
          goto LABEL_15;
        }
      }

      v34 = 0;
      v35 = 1;
    }

    v95 = *v99;
    v95(v10, v35, 1, v11);
    v112 = v26;
    v113 = v23;
    v114 = v100;
    v115 = v32;
    v116 = v34;
    v94 = *v98;
    if (v94(v10, 1, v11) == 1)
    {
      sub_24B8F35E4(v10, &qword_27F0633F8);
      sub_24B8F0C5C();
      return v106;
    }

    v104 = v34;
    v36 = v109;
    sub_24B8F36A4(v10, v109, type metadata accessor for FocusSystemConfigurationAction);
    v37 = v106;
    sub_24BAAA7FC();
    v38 = sub_24BAA7E4C();
    v39 = sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
    v93 = v38;
    v92 = v39;
    sub_24BAA9F1C();
    LODWORD(v107) = *(v36 + v11[5]);
    sub_24BAAA81C();
    LODWORD(v105) = *(v36 + v11[6]);
    sub_24BAAA81C();
    v40 = (v36 + v11[7]);
    v41 = v40[1];
    v103 = *v40;
    v102 = v41;
    sub_24BAAA07C();
    v101 = *(v36 + v11[8]);
    sub_24BAAA3DC();
    v42 = sub_24BAAA84C();
    v43 = -1 << *(v37 + 32);
    v2 = v42 & ~v43;
    v26 = v2 >> 6;
    v23 = 1 << v2;
    if (((1 << v2) & v111[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B8F3644(v109, type metadata accessor for FocusSystemConfigurationAction);
    v28 = v32;
    v107 = v104;
    v26 = v97;
    v23 = v96;
    v11 = v108;
  }

  v44 = ~v43;
  v10 = *(v89 + 72);
  while (1)
  {
    sub_24B8F357C(*(v37 + 48) + v10 * v2, v19, type metadata accessor for FocusSystemConfigurationAction);
    if ((sub_24BAA7E0C() & 1) != 0 && v107 == v19[v108[5]] && v105 == v19[v108[6]])
    {
      v47 = &v19[v108[7]];
      v48 = *v47 == v103 && *(v47 + 1) == v102;
      if (v48 || (sub_24BAAA78C() & 1) != 0)
      {
        v45 = sub_24B8F37E8(0, &unk_27F067FA0);
        v46 = sub_24BAAA3CC();
        v37 = v106;
        if (v46)
        {
          break;
        }
      }
    }

    sub_24B8F3644(v19, type metadata accessor for FocusSystemConfigurationAction);
    v2 = (v2 + 1) & v44;
    v26 = v2 >> 6;
    v23 = 1 << v2;
    if ((v111[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  v102 = v45;
  sub_24B8F3644(v19, type metadata accessor for FocusSystemConfigurationAction);
  v28 = v106;
  v49 = sub_24B8F3644(v109, type metadata accessor for FocusSystemConfigurationAction);
  v50 = *(v28 + 32);
  v87 = ((1 << v50) + 63) >> 6;
  v27 = 8 * v87;
  v11 = v108;
  if ((v50 & 0x3Fu) > 0xD)
  {
    goto LABEL_72;
  }

  while (1)
  {
    i = &v85;
    MEMORY[0x28223BE20](v49);
    v52 = &v85 - ((v51 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v52, v111, v51);
    v53 = *&v52[8 * v26] & ~v23;
    v54 = *(v28 + 16);
    v101 = v52;
    *&v52[8 * v26] = v53;
    v55 = v54 - 1;
    v56 = v97;
    v23 = v90;
    v57 = v96;
    v58 = v91;
    v26 = v104;
LABEL_33:
    v89 = v55;
    while (v26)
    {
      v59 = v32;
LABEL_45:
      v62 = __clz(__rbit64(v26));
      v63 = (v26 - 1) & v26;
      sub_24B8F357C(*(v56 + 48) + (v62 | (v59 << 6)) * v10, v23, type metadata accessor for FocusSystemConfigurationAction);
      v64 = 0;
LABEL_46:
      v95(v23, v64, 1, v11);
      v112 = v56;
      v113 = v57;
      v114 = v100;
      v115 = v32;
      v116 = v63;
      if (v94(v23, 1, v11) == 1)
      {
        sub_24B8F35E4(v23, &qword_27F0633F8);
        v78 = sub_24BA299F0(v101, v87, v89, v28);
        goto LABEL_67;
      }

      v104 = v63;
      v65 = v110;
      sub_24B8F36A4(v23, v110, type metadata accessor for FocusSystemConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA9F1C();
      v66 = *(v65 + v11[5]);
      sub_24BAAA81C();
      LODWORD(v109) = *(v65 + v11[6]);
      sub_24BAAA81C();
      v67 = (v65 + v11[7]);
      v68 = v67[1];
      v107 = *v67;
      v105 = v68;
      sub_24BAAA07C();
      v103 = *(v65 + v11[8]);
      sub_24BAAA3DC();
      v69 = sub_24BAAA84C();
      v28 = v106;
      v70 = -1 << *(v106 + 32);
      v71 = v69 & ~v70;
      v72 = v71 >> 6;
      v2 = 1 << v71;
      if (((1 << v71) & v111[v71 >> 6]) != 0)
      {
        v73 = ~v70;
        while (1)
        {
          sub_24B8F357C(*(v28 + 48) + v71 * v10, v14, type metadata accessor for FocusSystemConfigurationAction);
          if ((sub_24BAA7E0C() & 1) != 0 && v66 == v14[v11[5]] && v109 == v14[v11[6]])
          {
            v75 = &v14[v11[7]];
            v76 = *v75 == v107 && *(v75 + 1) == v105;
            if (v76 || (sub_24BAAA78C() & 1) != 0)
            {
              v74 = sub_24BAAA3CC();
              v28 = v106;
              if (v74)
              {
                break;
              }
            }
          }

          sub_24B8F3644(v14, type metadata accessor for FocusSystemConfigurationAction);
          v71 = (v71 + 1) & v73;
          v72 = v71 >> 6;
          v2 = 1 << v71;
          if ((v111[v71 >> 6] & (1 << v71)) == 0)
          {
            goto LABEL_34;
          }
        }

        sub_24B8F3644(v14, type metadata accessor for FocusSystemConfigurationAction);
        v28 = v106;
        sub_24B8F3644(v110, type metadata accessor for FocusSystemConfigurationAction);
        v77 = v101[v72];
        v101[v72] = v77 & ~v2;
        v56 = v97;
        v23 = v90;
        v57 = v96;
        v58 = v91;
        v26 = v104;
        if ((v77 & v2) != 0)
        {
          v55 = v89 - 1;
          if (__OFSUB__(v89, 1))
          {
            __break(1u);
          }

          if (v89 == 1)
          {

            v78 = MEMORY[0x277D84FA0];
            goto LABEL_67;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:
        sub_24B8F3644(v110, type metadata accessor for FocusSystemConfigurationAction);
        v56 = v97;
        v23 = v90;
        v57 = v96;
        v58 = v91;
        v26 = v104;
      }
    }

    v60 = v58 <= v32 + 1 ? v32 + 1 : v58;
    v61 = v60 - 1;
    while (1)
    {
      v59 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v59 >= v58)
      {
        v63 = 0;
        v64 = 1;
        v32 = v61;
        goto LABEL_46;
      }

      v26 = *(v57 + 8 * v59);
      ++v32;
      if (v26)
      {
        v32 = v59;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v80 = v28;
    v81 = v27;

    v82 = v81;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v80;
  }

  v83 = swift_slowAlloc();
  memcpy(v83, v111, v82);
  v84 = v86;
  v78 = sub_24B8EF110(v83, v87, v80, v2, &v112);

  if (!v84)
  {

    MEMORY[0x24C251390](v83, -1, -1);
LABEL_67:
    sub_24B8F0C5C();
    return v78;
  }

  result = MEMORY[0x24C251390](v83, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24B8EDDA0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    type metadata accessor for InstalledApp();
    sub_24B8F1E94(&qword_27F0633F0, type metadata accessor for InstalledApp);
    sub_24BAAA24C();
    v4 = v65;
    v6 = v66;
    v7 = v67;
    v8 = v68;
    v9 = v69;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v60 = v4;
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v54 = v7;
  v13 = (v7 + 64) >> 6;
  v57 = (v3 + 56);
  v64 = v9;
  v55 = v13;
  v56 = v6;
  while (1)
  {
    if (v4 < 0)
    {
      v20 = sub_24BAAA56C();
      if (!v20)
      {
        goto LABEL_60;
      }

      v58 = v20;
      type metadata accessor for InstalledApp();
      swift_dynamicCast();
      v19 = v59;
      v17 = v8;
      v2 = v9;
      if (!v59)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (!v9)
      {
        if (v13 <= v8 + 1)
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            v19 = 0;
            v2 = 0;
            goto LABEL_21;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_20:
      v2 = (v14 - 1) & v14;
      v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      v17 = v15;
LABEL_21:
      v60 = v4;
      v61 = v6;
      v62 = v54;
      v63 = v17;
      v64 = v2;
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    sub_24BAAA7FC();
    v21 = sub_24BAAA84C();
    v22 = -1 << *(v3 + 32);
    v15 = v21 & ~v22;
    v6 = v15 >> 6;
    v8 = 1 << v15;
    if (((1 << v15) & v57[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v56;
    v13 = v55;
  }

  v23 = ~v22;
  if (([*(*(*(v3 + 48) + 8 * v15) + 16) isEqual_] & 1) == 0)
  {
    do
    {
      v15 = (v15 + 1) & v23;
      v6 = v15 >> 6;
      v8 = 1 << v15;
      if (((1 << v15) & v57[v15 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (![*(*(*(v3 + 48) + 8 * v15) + 16) isEqual_]);
  }

  v25 = *(v3 + 32);
  v52[0] = ((1 << v25) + 63) >> 6;
  v5 = 8 * v52[0];
  if ((v25 & 0x3Fu) <= 0xD)
  {
    goto LABEL_32;
  }

LABEL_66:
  v49 = v5;

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v50 = swift_slowAlloc();
    memcpy(v50, v57, v49);
    v51 = sub_24B8EF6AC(v50, v52[0], v3, v15, &v60);

    MEMORY[0x24C251390](v50, -1, -1);
    v3 = v51;
    goto LABEL_60;
  }

LABEL_32:
  v52[1] = v52;
  MEMORY[0x28223BE20](v24);
  v27 = v52 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v27, v57, v26);
  v28 = *&v27[8 * v6] & ~v8;
  v29 = *(v3 + 16);
  v53 = v27;
  *&v27[8 * v6] = v28;
  v30 = v29 - 1;
  while (2)
  {
    v31 = v56;
    v32 = v55;
LABEL_35:
    if (v4 < 0)
    {
      v34 = sub_24BAAA56C();
      if (!v34)
      {
        goto LABEL_59;
      }

      v58 = v34;
      type metadata accessor for InstalledApp();
      swift_dynamicCast();
      v35 = v59;
      if (!v59)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    if (v2)
    {
      v33 = v17;
LABEL_48:
      v38 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v35 = *(*(v4 + 48) + ((v33 << 9) | (8 * v38)));

      v37 = v33;
LABEL_49:
      v60 = v4;
      v61 = v31;
      v62 = v54;
      v63 = v37;
      v17 = v37;
      v64 = v2;
      if (!v35)
      {
LABEL_59:
        v3 = sub_24BA29D58(v53, v52[0], v30, v3);
        goto LABEL_60;
      }

LABEL_50:
      v39 = v4;
      sub_24BAAA7FC();
      v40 = sub_24BAAA84C();
      v41 = -1 << *(v3 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v44 = 1 << v42;
      if (((1 << v42) & v57[v42 >> 6]) == 0)
      {
        goto LABEL_33;
      }

      v45 = ~v41;
      if (([*(*(*(v3 + 48) + 8 * v42) + 16) isEqual_] & 1) == 0)
      {
        while (1)
        {
          v42 = (v42 + 1) & v45;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & v57[v42 >> 6]) == 0)
          {
            break;
          }

          if ([*(*(*(v3 + 48) + 8 * v42) + 16) isEqual_])
          {
            goto LABEL_54;
          }
        }

LABEL_33:

        v4 = v39;
        continue;
      }

LABEL_54:
      v4 = v39;

      v46 = v53[v43];
      v53[v43] = v46 & ~v44;
      v31 = v56;
      v32 = v55;
      if ((v46 & v44) != 0)
      {
        if (__OFSUB__(v30--, 1))
        {
          __break(1u);
        }

        if (!v30)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_35;
    }

    break;
  }

  if (v32 <= v17 + 1)
  {
    v36 = v17 + 1;
  }

  else
  {
    v36 = v32;
  }

  v37 = v36 - 1;
  while (1)
  {
    v33 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      v35 = 0;
      v2 = 0;
      goto LABEL_49;
    }

    v2 = *(v31 + 8 * v33);
    ++v17;
    if (v2)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_64:

  v3 = MEMORY[0x277D84FA0];
LABEL_60:
  sub_24B8F0C5C();
  return v3;
}

void sub_24B8EE49C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  v10 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v38 = a3 + 56;
  while (2)
  {
    v34 = v11;
    do
    {
      while (1)
      {
        if ((*v8 & 0x8000000000000000) != 0)
        {
          if (!sub_24BAAA56C())
          {
            goto LABEL_29;
          }

          sub_24B8F37E8(0, a6);
          swift_dynamicCast();
          v15 = v39;
          if (!v39)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = v8[3];
          v13 = v8[4];
          if (!v13)
          {
            v16 = (v8[2] + 64) >> 6;
            if (v16 <= v12 + 1)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = (v8[2] + 64) >> 6;
            }

            v18 = v17 - 1;
            while (1)
            {
              v14 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v14 >= v16)
              {
                v8[3] = v18;
                v8[4] = 0;
                goto LABEL_29;
              }

              v13 = *(v8[1] + 8 * v14);
              ++v12;
              if (v13)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v14 = v8[3];
LABEL_17:
          v19 = (v13 - 1) & v13;
          v15 = *(*(*v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
          v20 = v15;
          v8[3] = v14;
          v8[4] = v19;
          if (!v15)
          {
LABEL_29:

            a8(a1, a2, v34, a3);
            return;
          }
        }

        v21 = sub_24BAAA3BC();
        v22 = -1 << *(a3 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if (((1 << v23) & *(v38 + 8 * (v23 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_24B8F37E8(0, a6);
        v26 = *(*(a3 + 48) + 8 * v23);
        v27 = sub_24BAAA3CC();

        if (v27)
        {
          break;
        }

        v28 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v28;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v38 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          v29 = *(*(a3 + 48) + 8 * v23);
          v30 = sub_24BAAA3CC();

          if (v30)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v8 = a5;
      }

LABEL_23:
      v8 = a5;

      v31 = *(a1 + 8 * v24);
      *(a1 + 8 * v24) = v31 & ~v25;
    }

    while ((v31 & v25) == 0);
    v11 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_24B8EE734(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v72 = a5;
  v60[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063420);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = v60 - v9;
  v10 = type metadata accessor for FocusConfigurationAction(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = v60 - v15;
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a3 + 16);
  v19 = *(a1 + v17) & ((-1 << a4) - 1);
  v62 = a1;
  *(a1 + v17) = v19;
  v20 = v18 - 1;
  v68 = (v21 + 56);
  v70 = v21;
  v67 = (v21 + 48);
  v81 = a3;
  v80 = a3 + 56;
LABEL_2:
  v61 = v20;
LABEL_4:
  while (2)
  {
    v23 = *v72;
    v22 = v72[1];
    v25 = v72[2];
    v24 = v72[3];
    v26 = v72[4];
    v79 = v25;
    if (v26)
    {
      v27 = v24;
LABEL_13:
      v31 = (v26 - 1) & v26;
      v32 = v69;
      sub_24B8F357C(*(v23 + 48) + *(v70 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v69, type metadata accessor for FocusConfigurationAction);
      v33 = 0;
      v30 = v27;
LABEL_14:
      (*v68)(v32, v33, 1, v10);
      v34 = v72;
      *v72 = v23;
      v34[1] = v22;
      v34[2] = v79;
      v34[3] = v30;
      v34[4] = v31;
      if ((*v67)(v32, 1, v10) == 1)
      {
        sub_24B8F35E4(v32, &qword_27F063420);
        v59 = v81;

        return sub_24BA2944C(v62, v60[0], v61, v59);
      }

      sub_24B8F36A4(v32, v16, type metadata accessor for FocusConfigurationAction);
      sub_24BAAA7FC();
      sub_24BAA7E4C();
      sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
      sub_24BAA9F1C();
      LODWORD(v79) = v16[v10[5]];
      sub_24BAAA81C();
      v78 = v16[v10[6]];
      sub_24BAAA81C();
      v35 = &v16[v10[7]];
      v36 = *v35;
      v76 = *(v35 + 1);
      v77 = v36;
      sub_24BAAA07C();
      v37 = &v16[v10[8]];
      v38 = *v37;
      v74 = *(v37 + 1);
      v75 = v38;
      sub_24BAAA07C();
      v73 = *&v16[v10[9]];
      sub_24BAAA3DC();
      v39 = *&v16[v10[10]];
      sub_24BAAA81C();
      if (v39)
      {
        v40 = v39;
        sub_24BAAA3DC();
      }

      v41 = *&v16[v10[11]];
      sub_24BAAA81C();
      if (v41)
      {
        v42 = v41;
        sub_24BAAA3DC();
      }

      v43 = sub_24BAAA84C();
      v44 = -1 << *(v81 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      v47 = 1 << v45;
      if (((1 << v45) & *(v80 + 8 * (v45 >> 6))) == 0)
      {
LABEL_3:
        result = sub_24B8F3644(v16, type metadata accessor for FocusConfigurationAction);
        continue;
      }

      v66 = v41;
      v71 = v39;
      v48 = ~v44;
      v49 = *(v70 + 72);
      while (1)
      {
        sub_24B8F357C(*(v81 + 48) + v49 * v45, v13, type metadata accessor for FocusConfigurationAction);
        if ((sub_24BAA7E0C() & 1) == 0 || v79 != v13[v10[5]] || v78 != v13[v10[6]])
        {
          goto LABEL_23;
        }

        v50 = &v13[v10[7]];
        v51 = *v50 == v77 && *(v50 + 1) == v76;
        if (!v51 && (sub_24BAAA78C() & 1) == 0)
        {
          goto LABEL_23;
        }

        v52 = &v13[v10[8]];
        v53 = *v52 == v75 && *(v52 + 1) == v74;
        if (!v53 && (sub_24BAAA78C() & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_24B8F37E8(0, &unk_27F067FA0);
        if ((sub_24BAAA3CC() & 1) == 0)
        {
          goto LABEL_23;
        }

        v54 = *&v13[v10[10]];
        if (v54)
        {
          if (!v71)
          {
            goto LABEL_23;
          }

          v64 = sub_24B8F37E8(0, &qword_27F063430);
          v65 = v71;
          v63 = v54;
          v55 = sub_24BAAA3CC();

          if ((v55 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (v71)
        {
          goto LABEL_23;
        }

        v56 = *&v13[v10[11]];
        if (v56)
        {
          if (v66)
          {
            v64 = sub_24B8F37E8(0, &qword_27F063428);
            v65 = v66;
            v63 = v56;
            v57 = sub_24BAAA3CC();

            if (v57)
            {
LABEL_46:
              sub_24B8F3644(v13, type metadata accessor for FocusConfigurationAction);
              result = sub_24B8F3644(v16, type metadata accessor for FocusConfigurationAction);
              v58 = v62[v46];
              v62[v46] = v58 & ~v47;
              if ((v58 & v47) != 0)
              {
                v20 = v61 - 1;
                if (__OFSUB__(v61, 1))
                {
                  goto LABEL_52;
                }

                if (v61 == 1)
                {
                  return MEMORY[0x277D84FA0];
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }
          }
        }

        else if (!v66)
        {
          goto LABEL_46;
        }

LABEL_23:
        sub_24B8F3644(v13, type metadata accessor for FocusConfigurationAction);
        v45 = (v45 + 1) & v48;
        v46 = v45 >> 6;
        v47 = 1 << v45;
        if ((*(v80 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v28 = (v25 + 64) >> 6;
  if (v28 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = (v25 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v28)
    {
      v31 = 0;
      v33 = 1;
      v32 = v69;
      goto LABEL_14;
    }

    v26 = *(v22 + 8 * v27);
    ++v24;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_24B8EEED8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_24BA297CC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_24BAAA7FC();

        sub_24BAAA07C();
        v19 = sub_24BAAA84C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_24BAAA78C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_24B8EF110(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633F8);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v52 - v10;
  v66 = type metadata accessor for FocusSystemConfigurationAction(0);
  v11 = MEMORY[0x28223BE20](v66);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v52 - v15;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v55 = a1;
  v56 = a5;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v60 = v21;
  v57 = (v21 + 48);
  v58 = (v21 + 56);
  v62 = a3;
  v67 = a3 + 56;
  while (2)
  {
    v54 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v22 = a5[1];
        v25 = a5[2];
        v24 = a5[3];
        v26 = a5[4];
        v65 = v25;
        if (!v26)
        {
          v28 = (v25 + 64) >> 6;
          if (v28 <= v24 + 1)
          {
            v29 = v24 + 1;
          }

          else
          {
            v29 = (v25 + 64) >> 6;
          }

          v30 = v29 - 1;
          while (1)
          {
            v27 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v27 >= v28)
            {
              v31 = 0;
              v33 = 1;
              v32 = v59;
              goto LABEL_14;
            }

            v26 = *(v22 + 8 * v27);
            ++v24;
            if (v26)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_36;
        }

        v27 = v24;
LABEL_13:
        v31 = (v26 - 1) & v26;
        v32 = v59;
        sub_24B8F357C(*(v23 + 48) + *(v60 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v59, type metadata accessor for FocusSystemConfigurationAction);
        v33 = 0;
        v30 = v27;
LABEL_14:
        v34 = v66;
        (*v58)(v32, v33, 1, v66);
        *a5 = v23;
        a5[1] = v22;
        a5[2] = v65;
        a5[3] = v30;
        a5[4] = v31;
        if ((*v57)(v32, 1, v34) == 1)
        {
          sub_24B8F35E4(v32, &qword_27F0633F8);
          v51 = v62;

          return sub_24BA299F0(v55, v53, v54, v51);
        }

        sub_24B8F36A4(v32, v16, type metadata accessor for FocusSystemConfigurationAction);
        v35 = v62;
        sub_24BAAA7FC();
        sub_24BAA7E4C();
        sub_24B8F1E94(&unk_27F063400, MEMORY[0x277CC95F0]);
        sub_24BAA9F1C();
        v36 = v16[v34[5]];
        sub_24BAAA81C();
        LODWORD(v65) = v16[v34[6]];
        sub_24BAAA81C();
        v37 = &v16[v34[7]];
        v38 = *v37;
        v63 = *(v37 + 1);
        v64 = v38;
        sub_24BAAA07C();
        v61 = *&v16[v34[8]];
        sub_24BAAA3DC();
        v39 = sub_24BAAA84C();
        v40 = v35;
        v41 = -1 << *(v35 + 32);
        v42 = v39 & ~v41;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if (((1 << v42) & *(v67 + 8 * (v42 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_24B8F3644(v16, type metadata accessor for FocusSystemConfigurationAction);
        a5 = v56;
      }

      v45 = ~v41;
      v46 = *(v60 + 72);
      while (1)
      {
        sub_24B8F357C(*(v40 + 48) + v46 * v42, v13, type metadata accessor for FocusSystemConfigurationAction);
        if ((sub_24BAA7E0C() & 1) != 0 && v36 == v13[v66[5]] && v65 == v13[v66[6]])
        {
          v48 = &v13[v66[7]];
          v49 = *v48 == v64 && *(v48 + 1) == v63;
          if (v49 || (sub_24BAAA78C() & 1) != 0)
          {
            sub_24B8F37E8(0, &unk_27F067FA0);
            v47 = sub_24BAAA3CC();
            v40 = v62;
            if (v47)
            {
              break;
            }
          }
        }

        sub_24B8F3644(v13, type metadata accessor for FocusSystemConfigurationAction);
        v42 = (v42 + 1) & v45;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if ((*(v67 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_24B8F3644(v13, type metadata accessor for FocusSystemConfigurationAction);
      result = sub_24B8F3644(v16, type metadata accessor for FocusSystemConfigurationAction);
      a5 = v56;
      v50 = v55[v43];
      v55[v43] = v50 & ~v44;
    }

    while ((v50 & v44) == 0);
    v20 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_36:
      __break(1u);
      return result;
    }

    if (v54 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24B8EF6AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!sub_24BAAA56C())
          {
            goto LABEL_29;
          }

          type metadata accessor for InstalledApp();
          swift_dynamicCast();
          v13 = v28;
          if (!v28)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v10 = a5[3];
          v11 = a5[4];
          if (!v11)
          {
            v14 = (a5[2] + 64) >> 6;
            if (v14 <= v10 + 1)
            {
              v15 = v10 + 1;
            }

            else
            {
              v15 = (a5[2] + 64) >> 6;
            }

            v16 = v15 - 1;
            while (1)
            {
              v12 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              if (v12 >= v14)
              {
                v13 = 0;
                v17 = 0;
                goto LABEL_18;
              }

              v11 = *(a5[1] + 8 * v12);
              ++v10;
              if (v11)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v12 = a5[3];
LABEL_17:
          v17 = (v11 - 1) & v11;
          v13 = *(*(*a5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

          v16 = v12;
LABEL_18:
          a5[3] = v16;
          a5[4] = v17;
          if (!v13)
          {
LABEL_29:

            return sub_24BA29D58(v27, a2, v26, a3);
          }
        }

        sub_24BAAA7FC();
        v18 = sub_24BAAA84C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v23 = ~v19;
        if ([*(*(*(a3 + 48) + 8 * v20) + 16) isEqual_])
        {
          break;
        }

        while (1)
        {
          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if ([*(*(*(a3 + 48) + 8 * v20) + 16) isEqual_])
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v24 = v27[v21];
      v27[v21] = v24 & ~v22;
    }

    while ((v24 & v22) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24B8EF914(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24BAAA52C();
LABEL_9:
  result = sub_24BAAA63C();
  *v1 = result;
  return result;
}

uint64_t sub_24B8EF9B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A2FBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24B8EFA30(v6);
  return sub_24BAAA67C();
}

uint64_t sub_24B8EFA30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24BAAA75C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EventSource();
        v6 = sub_24BAAA15C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24B8EFBF4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24B8EFB34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24B8EFB34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 24);
      v12 = result == *(*v11 + 24) && *(v9 + 32) == *(*v11 + 32);
      if (v12 || (result = sub_24BAAA78C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B8EFBF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_24B99FEB4(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_24B8F01C4((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24B99FEB4(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_24B99FE28(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 24);
      if (result == *(v11 + 24) && *(v10 + 32) == *(v11 + 32))
      {
        v13 = 0;
      }

      else
      {
        result = sub_24BAAA78C();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 24);
          if (result == *(v15 + 24) && *(*v14 + 32) == *(v15 + 32))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24BAAA78C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B99A39C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_24B99A39C((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_24B8F01C4((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24B99FEB4(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_24B99FE28(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 24) == *(*v30 + 24) && *(v28 + 32) == *(*v30 + 32);
    if (v31 || (result = sub_24BAAA78C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_24B8F01C4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 24) == *(*v4 + 24) && *(*v6 + 32) == *(*v4 + 32);
      if (!v16 && (sub_24BAAA78C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 32);
      v21 = *(v19 + 24) == *(*v17 + 24) && v20 == *(*v17 + 32);
      if (!v21 && (sub_24BAAA78C() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_24B8F0454(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_24BAAA52C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B8F0524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24BAAA52C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24BAAA52C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24B8F384C(&qword_27F063508, &qword_27F063500);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
            v9 = sub_24B8F0BD4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EventSource();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8F06C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24BAAA52C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24BAAA52C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24B8F384C(&unk_27F0633E0, &qword_27F0633D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633D8);
            v9 = sub_24B8F0CEC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for InstalledApp();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8F086C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24BAAA52C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24BAAA52C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24B8F384C(&qword_27F0633C8, &qword_27F0633C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633C0);
            v9 = sub_24B8F0D6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24B8F37E8(0, &qword_27F0633B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8F0A20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24BAAA52C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24BAAA52C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24B8F384C(&unk_27F0634F0, &qword_27F0634E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634E8);
            v9 = sub_24B8F0C64(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24B8F37E8(0, &qword_27F0631A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24B8F0BD4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C2506E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24B8F0C54;
  }

  __break(1u);
  return result;
}

void (*sub_24B8F0C64(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C2506E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24B8F0CE4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24B8F0CEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C2506E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24B8F4010;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24B8F0D6C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C2506E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24B8F4014;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8F0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0xD000000000000029;
  *(v4 + 40) = 0x800000024BAC06C0;
  v9 = [objc_allocWithZone(type metadata accessor for ActivityConfigurationManager.StateListener()) init];
  *(v4 + 48) = v9;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = xmmword_24BAAC5C0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = &v9[OBJC_IVAR____TtCC15FocusSettingsUI28ActivityConfigurationManagerP33_2D32E0A4A8017E0B91C01818CA0AAB7813StateListener_stateDidChange];
  *v11 = sub_24B8F3454;
  v11[1] = v10;
  v12 = v9;

  v13 = sub_24B8D686C();
  [v13 addListener:*(v4 + 48) withCompletionHandler:0];

  return v4;
}

uint64_t sub_24B8F0F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2502E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24B8E50EC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24B8F0F9C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24BAAA52C())
  {
    v4 = sub_24B8F37E8(0, &qword_27F063160);
    v5 = sub_24B8F1128(&qword_27F063168, &qword_27F063160);
    result = MEMORY[0x24C2502E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D058C8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C2506E0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_24B8E5358(&v12, v10, &qword_27F063160, 0x277D058C8, qword_27F069140, &unk_24BAACA38);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24BAAA52C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B8F1128(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24B8F37E8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B8F1178(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24BAAA52C())
  {
    v4 = sub_24B8F37E8(0, &qword_27F063170);
    v5 = sub_24B8F1128(&qword_27F063178, &qword_27F063170);
    result = MEMORY[0x24C2502E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D05AC8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C2506E0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_24B8E5358(&v12, v10, &qword_27F063170, 0x277D05AC8, &qword_27F063510, &unk_24BAACA60);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24BAAA52C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B8F1304(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24BAAA52C())
  {
    v4 = sub_24B8F37E8(0, &qword_27F0631A0);
    v5 = sub_24B8F1128(&qword_27F0631A8, &qword_27F0631A0);
    result = MEMORY[0x24C2502E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D058F0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C2506E0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_24B8E5358(&v12, v10, &qword_27F0631A0, 0x277D058F0, &unk_27F069130, &unk_24BAACA50);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24BAAA52C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B8F14D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24B8F3E00();
  result = MEMORY[0x24C2502E0](v2, &type metadata for Weekday, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24B8E523C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24B8F1594(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t *, uint64_t))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v18 = a2;
    v19 = sub_24BAAA52C();
    v20 = v18;
    v10 = v19;
    v11 = v20(0);
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = a2(0);
  }

  v12 = v11;
  v13 = sub_24B8F1E94(a3, a4);
  result = MEMORY[0x24C2502E0](v10, v12, v13);
  v22 = result;
  if (!v9)
  {
    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v16 = MEMORY[0x24C2506E0](v15, a1);
        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          return v22;
        }
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v16 = *(a1 + 8 * v15 + 32);

        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }
  }

  a4 = result;
  a3 = sub_24BAAA52C();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B8F1710(uint64_t a1)
{
  v2 = type metadata accessor for FocusConfigurationAction(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v47 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  v12 = sub_24B8F1E94(&qword_27F063440, type metadata accessor for FocusConfigurationAction);
  v13 = MEMORY[0x24C2502E0](v11, v2, v12);
  v48 = v11;
  if (v11)
  {
    v14 = 0;
    v46 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    while (1)
    {
      v49 = v14;
      sub_24B8F357C(v46 + v15 * v14, v10, type metadata accessor for FocusConfigurationAction);
      sub_24BAAA7FC();
      sub_24B9B1520();
      v16 = sub_24BAAA84C();
      v17 = -1 << *(v13 + 32);
      v18 = v16 & ~v17;
      if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v47;
      sub_24B8F357C(v10, v47, type metadata accessor for FocusConfigurationAction);
      v50 = v13;
      sub_24B8E808C(v41, v18, isUniquelyReferenced_nonNull_native);
      v13 = v50;
LABEL_31:
      sub_24B8F3644(v10, type metadata accessor for FocusConfigurationAction);
      v14 = v49 + 1;
      if (v49 + 1 == v48)
      {
        return v13;
      }
    }

    v19 = ~v17;
    while (1)
    {
      sub_24B8F357C(*(v13 + 48) + v18 * v15, v6, type metadata accessor for FocusConfigurationAction);
      if ((sub_24BAA7E0C() & 1) == 0 || v6[v2[5]] != v10[v2[5]] || v6[v2[6]] != v10[v2[6]])
      {
        goto LABEL_6;
      }

      v20 = v2[7];
      v21 = *&v6[v20];
      v22 = *&v6[v20 + 8];
      v23 = &v10[v20];
      v24 = v21 == *v23 && v22 == *(v23 + 1);
      if (!v24 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_6;
      }

      v25 = v2[8];
      v26 = *&v6[v25];
      v27 = *&v6[v25 + 8];
      v28 = &v10[v25];
      v29 = v26 == *v28 && v27 == *(v28 + 1);
      if (!v29 && (sub_24BAAA78C() & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_24B8F37E8(0, &unk_27F067FA0);
      if ((sub_24BAAA3CC() & 1) == 0)
      {
        goto LABEL_6;
      }

      v30 = v2[10];
      v31 = *&v6[v30];
      v32 = *&v10[v30];
      if (v31)
      {
        if (!v32)
        {
          goto LABEL_6;
        }

        v45 = sub_24B8F37E8(0, &qword_27F063430);
        v44 = v32;
        v33 = v31;
        v34 = sub_24BAAA3CC();

        if ((v34 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else if (v32)
      {
        goto LABEL_6;
      }

      v35 = v2[11];
      v36 = *&v6[v35];
      v37 = *&v10[v35];
      if (v36)
      {
        if (v37)
        {
          v45 = sub_24B8F37E8(0, &qword_27F063428);
          v44 = v37;
          v38 = v36;
          v39 = sub_24BAAA3CC();

          if (v39)
          {
LABEL_29:
            sub_24B8F3644(v6, type metadata accessor for FocusConfigurationAction);
            goto LABEL_31;
          }
        }
      }

      else if (!v37)
      {
        goto LABEL_29;
      }

LABEL_6:
      sub_24B8F3644(v6, type metadata accessor for FocusConfigurationAction);
      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  return v13;
}

uint64_t sub_24B8F1B88(uint64_t a1)
{
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B8F1E94(&unk_27F066A40, type metadata accessor for FocusSystemConfigurationAction);
  result = MEMORY[0x24C2502E0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B8F357C(v12, v6, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B8E5A54(v8, v6);
      sub_24B8F3644(v8, type metadata accessor for FocusSystemConfigurationAction);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

void sub_24B8F1D18(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C2506E0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24B8E5358(&v6, v4, &qword_27F063160, 0x277D058C8, qword_27F069140, &unk_24BAACA38);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_24B8F1E24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24B8E50EC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24B8F1E94(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_24B8F1EDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_24B8F1F10(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_24BAAA52C();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_24BAAA5DC();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_24BAAA52C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x24C2506E0](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_24BAAA3BC();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_24B8F37E8(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_24BAAA3CC();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_24BAAA3BC();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_24B8F37E8(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_24BAAA3CC();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24B8F2368()
{
  result = qword_27F0690C0;
  if (!qword_27F0690C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0631C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0690C0);
  }

  return result;
}

unint64_t sub_24B8F23E4()
{
  result = qword_27F0631D0;
  if (!qword_27F0631D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0690B0);
    sub_24B8F384C(&unk_27F0690D0, &qword_27F0631E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0631D0);
  }

  return result;
}

unint64_t sub_24B8F249C()
{
  result = qword_27F063200;
  if (!qword_27F063200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0631F0);
    sub_24B8F1E94(&qword_27F063208, type metadata accessor for ActivityEditView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063200);
  }

  return result;
}

uint64_t sub_24B8F2558()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24BAA8F5C();

    return sub_24BAA85EC();
  }

  else
  {
    sub_24BAA86AC();
    swift_getWitnessTable();
    sub_24BAA8E3C();
    sub_24BAA85EC();
    sub_24BAAA3FC();
    swift_getWitnessTable();
    sub_24BAA86AC();
    swift_getWitnessTable();
    sub_24BAA8E3C();
    return sub_24BAA85EC();
  }
}

uint64_t sub_24B8F26BC()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24BAA8F5C();
    sub_24BAA85EC();
  }

  else
  {
    sub_24BAA86AC();
    swift_getWitnessTable();
    sub_24BAA8E3C();
    sub_24BAA85EC();
    sub_24BAAA3FC();
    swift_getWitnessTable();
    sub_24BAA86AC();
    swift_getWitnessTable();
    sub_24BAA8E3C();
    sub_24BAA85EC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B8F28BC(uint64_t a1)
{
  v2 = sub_24BAA7F0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063498);
    v9 = sub_24BAAA5DC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24B8F1E94(&qword_27F0634A0, MEMORY[0x277CC99D0]);
      v16 = sub_24BAA9F0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_24B8F1E94(&qword_27F0634A8, MEMORY[0x277CC99D0]);
          v23 = sub_24BAA9F5C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B8F2BDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_24BAAA52C();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_24B8EF914(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for InstalledApp();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24B8F2CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634B0);
    v3 = sub_24BAAA5DC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_24BAAA7FC();
      MEMORY[0x24C2508C0](v10);
      result = sub_24BAAA84C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24B8F2E1C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_24BAAA52C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063340);
      result = sub_24BAAA5DC();
      v3 = result;
      v14 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_24BAAA52C();
      v4 = result;
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

  v3 = MEMORY[0x277D84FA0];
  v14 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
LABEL_11:
  while ((v14 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C2506E0](v5, v14);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_24;
    }

LABEL_17:
    sub_24BAAA7FC();
    result = sub_24BAAA84C();
    v9 = ~(-1 << *(v3 + 32));
    for (i = result & v9; ; i = (i + 1) & v9)
    {
      v11 = *(v6 + 8 * (i >> 6));
      if (((1 << i) & v11) == 0)
      {
        break;
      }

      result = [*(*(*(v3 + 48) + 8 * i) + 16) isEqual_];
      if (result)
      {

        if (v5 == v4)
        {
          return v3;
        }

        goto LABEL_11;
      }
    }

    *(v6 + 8 * (i >> 6)) = (1 << i) | v11;
    *(*(v3 + 48) + 8 * i) = v7;
    v12 = *(v3 + 16);
    v8 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (v8)
    {
      goto LABEL_25;
    }

    *(v3 + 16) = v13;
    if (v5 == v4)
    {
      return v3;
    }
  }

  if (v5 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  v7 = *(v14 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24B8F3034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068F80);
    v3 = sub_24BAAA5DC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24BAAA7FC();

      sub_24BAAA07C();
      result = sub_24BAAA84C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24BAAA78C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24B8F319C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B8F3208(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B8F3304(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B8F3324(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_24B8F341C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24B8F345C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24B8F346C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B8F357C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B8F35E4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B8F3644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B8F36A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_89Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24B8F37A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B8F37E8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24B8F3830(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_24B8F383C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_24B8F384C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B8F3894(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B8F3978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B8F3998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_24B8F3CE0()
{
  result = qword_27F0635D0;
  if (!qword_27F0635D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0635D0);
  }

  return result;
}

unint64_t sub_24B8F3E00()
{
  result = qword_27F063628;
  if (!qword_27F063628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063628);
  }

  return result;
}

void sub_24B8F3E68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_24B8F4094()
{
  result = qword_27F063900;
  if (!qword_27F063900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063900);
  }

  return result;
}

uint64_t sub_24B8F4104()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B8F417C()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

uint64_t getEnumTagSinglePayload for PagesAndHomeScreenHeader.ScreenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PagesAndHomeScreenHeader.ScreenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B8F4314()
{
  result = qword_27F063908;
  if (!qword_27F063908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063908);
  }

  return result;
}

uint64_t sub_24B8F439C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24B8F446C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B8F453C()
{
  sub_24B8F45F4();
  if (v0 <= 0x3F)
  {
    sub_24B8F6274(319, &qword_27F063930, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B8F4644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24B8F45F4()
{
  result = qword_27F063928;
  if (!qword_27F063928)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F063928);
  }

  return result;
}

void sub_24B8F4644()
{
  if (!qword_27F063938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063940);
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063938);
    }
  }
}

void sub_24B8F4710(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *))
{
  sub_24B8F6274(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v6 <= 0x3F)
    {
      sub_24B8F4644();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B8F47B4()
{
  if (!qword_27F064690)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8F5DF4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v0 = sub_24BAA870C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064690);
    }
  }
}

uint64_t sub_24B8F4864@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for EditWorkoutTriggerView(0);
  (MEMORY[0x28223BE20])();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063958);
  v24 = *(v5 - 8);
  v25 = v5;
  (MEMORY[0x28223BE20])();
  v7 = &v24 - v6;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v31 = *(v1 + 16);
  v32 = v8;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063960);
  sub_24BAA9A1C();
  v10 = v28;
  v11 = v29;
  v12 = v30;
  *v4 = v27;
  *(v4 + 1) = v10;
  v4[16] = v11;
  *(v4 + 3) = v12;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8F5DF4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v4 + 4) = sub_24BAA86FC();
  *(v4 + 5) = v13;
  v14 = *(v2 + 24);
  *&v4[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v27 = sub_24BAA7C2C();
  v28 = v15;
  v16 = sub_24B8F5DF4(&qword_27F063970, type metadata accessor for EditWorkoutTriggerView);
  v17 = sub_24B8F5E3C();
  v18 = MEMORY[0x277D837D0];
  sub_24BAA952C();

  v19 = sub_24B8F6A88(v4, type metadata accessor for EditWorkoutTriggerView);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v27 = v2;
  v28 = v18;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v21 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v27 = v20;
  v28 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_24BAA96CC();
  return (*(v24 + 8))(v7, v22);
}

uint64_t sub_24B8F4C78(uint64_t a1)
{
  sub_24BAA8DCC();
  MEMORY[0x28223BE20]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8[-v4];
  sub_24BAA8DBC();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v6 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B8F4E64(uint64_t a1)
{
  v2 = *(type metadata accessor for CreateWorkoutTriggerView(0) - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v8[0] = sub_24BAA7C2C();
  v8[1] = v4;
  sub_24B8F64F4(a1, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateWorkoutTriggerView);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_24B8F6560(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CreateWorkoutTriggerView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B8F5008(uint64_t a1)
{
  sub_24BAA868C();
  MEMORY[0x28223BE20]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20]();
  v4 = &v10[-v3];
  v5 = *a1;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063960);
  sub_24BAA99FC();
  v8 = v11;
  v5(v10[8], v11);

  type metadata accessor for CreateWorkoutTriggerView(0);
  sub_24BA8DA5C(v4);
  MEMORY[0x24C24FC10](v2);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F6050(v4);
}

uint64_t sub_24B8F517C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v3 = type metadata accessor for EditWorkoutTriggerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24B8F64F4(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditWorkoutTriggerView);
  sub_24BAAA1BC();
  v6 = sub_24BAAA1AC();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_24B8F6560(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for EditWorkoutTriggerView);
  sub_24B8F64F4(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditWorkoutTriggerView);
  v10 = sub_24BAAA1AC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_24B8F6560(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for EditWorkoutTriggerView);
  sub_24BAA9B9C();
  v13[4] = v2;
  v13[5] = v15;
  v13[6] = v16;
  v14 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639A0);
  sub_24B8F6820();
  sub_24BAA92BC();
}

void sub_24B8F539C(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8[2] = *a1;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E8);
  MEMORY[0x24C24FC10](v8, v6);
  v7 = v8[0];

  *a2 = v7;
}

uint64_t sub_24B8F540C(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = a4[3];
  v24 = *a4;
  v10 = v24;
  v25 = v11;
  v26 = v12;
  v27 = v13;

  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E8);
  MEMORY[0x24C24FC10](v28);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v14;
  v18[0] = v9;
  v19 = v28[1];
  sub_24BAA9B6C();

  if (a4[4])
  {
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v14;

    MEMORY[0x24C24FC10](&v20, v15);
    v16 = v21;
    *v8 = v20;
    *(v8 + 1) = v16;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v8);

    return sub_24B8F6A88(v8, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8F5DF4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8F5610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E8);
  MEMORY[0x24C24FC10](v15, v2);
  v3 = LOBYTE(v15[0]);

  if (v3 != 1)
  {
    if (qword_27F063110 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_27F063110 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;
  if (*(a1 + 32))
  {
    v5 = v4;

    sub_24B984444();
    v6 = sub_24B8D7188();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 mode];

      v9 = [v8 name];
      v10 = sub_24BAAA01C();
      v12 = v11;
    }

    else
    {

      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v5[7] = MEMORY[0x277D837D0];
    v5[8] = sub_24B8F6A20();
    v5[4] = v10;
    v5[5] = v12;
    sub_24BAA9FEC();

    sub_24B8F5E3C();
    v14 = sub_24BAA93CC();
    MEMORY[0x28223BE20](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E0);
    sub_24B8F68B8();
    sub_24B8F699C();
    return sub_24BAA9C4C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8F5DF4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8F59CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v2 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_24B8F5B28()
{
  v1 = type metadata accessor for EditWorkoutTriggerView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v18 = *v0;
  v19 = v4;
  v20 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063960);
  sub_24BAA9A1C();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  *v3 = v14;
  *(v3 + 1) = v6;
  v3[16] = v7;
  *(v3 + 3) = v8;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8F5DF4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v3 + 4) = sub_24BAA86FC();
  *(v3 + 5) = v9;
  v10 = *(v1 + 24);
  *&v3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v14 = sub_24BAA7C2C();
  v15 = v11;
  sub_24B8F5DF4(&qword_27F063970, type metadata accessor for EditWorkoutTriggerView);
  sub_24B8F5E3C();
  sub_24BAA952C();

  return sub_24B8F6A88(v3, type metadata accessor for EditWorkoutTriggerView);
}

uint64_t sub_24B8F5DB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B8F5DF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B8F5E3C()
{
  result = qword_27F065200;
  if (!qword_27F065200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065200);
  }

  return result;
}

uint64_t sub_24B8F5EA0()
{
  v1 = (type metadata accessor for CreateWorkoutTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B8F5FF0()
{
  v1 = *(type metadata accessor for CreateWorkoutTriggerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24B8F5008(v2);
}

uint64_t sub_24B8F6050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B8F6274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Trigger.Workout);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B8F62C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  type metadata accessor for EditWorkoutTriggerView(255);
  sub_24B8F5DF4(&qword_27F063970, type metadata accessor for EditWorkoutTriggerView);
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B8F643C()
{
  type metadata accessor for EditWorkoutTriggerView(255);
  sub_24B8F5DF4(&qword_27F063970, type metadata accessor for EditWorkoutTriggerView);
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B8F64F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B8F6560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24B8F65C8(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for EditWorkoutTriggerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24B8F539C(v4, a1);
}

uint64_t objectdestroy_26Tm()
{
  v1 = (type metadata accessor for EditWorkoutTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B8F679C(char *a1)
{
  v3 = *(type metadata accessor for EditWorkoutTriggerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_24B8F540C(a1, v4, v5, v6);
}

unint64_t sub_24B8F6820()
{
  result = qword_27F0639A8;
  if (!qword_27F0639A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0639A0);
    sub_24B8F68B8();
    sub_24B8F699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0639A8);
  }

  return result;
}

unint64_t sub_24B8F68B8()
{
  result = qword_27F0639B0;
  if (!qword_27F0639B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0639B8);
    sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0639B0);
  }

  return result;
}

unint64_t sub_24B8F699C()
{
  result = qword_27F0639D8;
  if (!qword_27F0639D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0639E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0639D8);
  }

  return result;
}

unint64_t sub_24B8F6A20()
{
  result = qword_27F0639F0;
  if (!qword_27F0639F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0639F0);
  }

  return result;
}

uint64_t sub_24B8F6A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B8F6B44()
{
  v1 = sub_24BAA89FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AppFilterListSection(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24BAAA2BC();
    v7 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24B8F6C9C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AppFilterListSection(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v3;
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A50);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A58);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - v6;
  v35 = v1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v8 = sub_24BAA7C2C();
  v10 = v9;
  v11 = sub_24BAA7C2C();
  v13 = v12;
  v14 = sub_24BAA90AC();
  LOBYTE(v36) = 1;
  v15 = sub_24BAA911C();
  sub_24BAA828C();
  v36 = v8;
  v37 = v10;
  v38 = v11;
  v39 = v13;
  v40 = 0u;
  v41 = 0u;
  v42 = v14;
  v43 = 0u;
  v44 = 0u;
  v45 = 1;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A68);
  sub_24B8FFBCC(&qword_27F063A70, &qword_27F063A60, &unk_24BAAD958, sub_24B8FF808);
  sub_24B8FF88C();
  sub_24BAA9C2C();
  if (sub_24B8F6B44())
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.55;
  }

  (*(v29 + 32))(v7, v5, v30);
  *&v7[*(v28 + 36)] = v20;
  v21 = v33;
  sub_24B9011B8(v1, v33, type metadata accessor for AppFilterListSection);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_24B901280(v21, v23 + v22, type metadata accessor for AppFilterListSection);
  v24 = v34;
  sub_24B8FFD94(v7, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B28);
  v26 = (v24 + *(result + 36));
  *v26 = sub_24B8FFD68;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

uint64_t sub_24B8F7148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AC8);
  MEMORY[0x28223BE20](v76);
  v5 = (&v65 - v4);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B48);
  MEMORY[0x28223BE20](v73);
  v75 = &v65 - v6;
  v7 = type metadata accessor for AppFilterListSection(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A98);
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v11 = &v65 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B50);
  *&v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v65 - v12;
  v13 = a1 + v7[9];
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v79) = v14;
  *(&v79 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  if (v77 & 1) != 0 || (sub_24B8F7A50())
  {
    v16 = a1 + v7[7];
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v77) = v17;
    *(&v77 + 1) = v18;
    sub_24BAA9A1C();
    v19 = v79;
    v20 = v80;
    v21 = a1 + v7[8];
    v22 = *(v21 + 16);
    v77 = *v21;
    v78 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30);
    sub_24BAA9A1C();
    v71 = v79;
    v23 = v80;
    v24 = v81;
    KeyPath = swift_getKeyPath();
    v26 = type metadata accessor for AppFilterListSection.AutomationsGridContent(0);
    *(v5 + v26[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v5 = sub_24BAA86FC();
    v5[1] = v27;
    v28 = v5 + v26[6];
    *v28 = v19;
    v28[16] = v20;
    v29 = v5 + v26[7];
    *v29 = v71;
    *(v29 + 2) = v23;
    *(v29 + 3) = v24;
    v30 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AF8) + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10) + 28);
    v32 = sub_24BAA937C();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    LOBYTE(v30) = sub_24BAA90AC();
    v33 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AE8) + 36);
    *v33 = v30;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    v33[40] = 1;
    LOBYTE(v30) = sub_24BAA90DC();
    sub_24BAA828C();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AD8) + 36);
    *v42 = v30;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = [objc_opt_self() systemGroupedBackgroundColor];
    v44 = sub_24BAA973C();
    v45 = sub_24BAA90BC();
    v46 = v75;
    v47 = v5 + *(v76 + 36);
    *v47 = v44;
    v47[8] = v45;
    sub_24B8F3208(v5, v46, &qword_27F063AC8);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AA0);
    v49 = sub_24B8F384C(&qword_27F063AA8, &qword_27F063A98);
    v50 = sub_24B8FF9B4();
    *&v79 = v72;
    *(&v79 + 1) = v48;
    v80 = v49;
    v81 = v50;
    swift_getOpaqueTypeConformance2();
    sub_24B8FFAB8();
    sub_24BAA8D0C();
    return sub_24B8F35E4(v5, &qword_27F063AC8);
  }

  else
  {
    v67 = type metadata accessor for AppFilterListSection;
    sub_24B9011B8(a1, &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppFilterListSection);
    v68 = a2;
    v52 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v53 = swift_allocObject();
    v66 = type metadata accessor for AppFilterListSection;
    sub_24B901280(&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v53 + v52, type metadata accessor for AppFilterListSection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B58);
    sub_24B900028();
    sub_24BAA9A5C();
    v54 = a1 + v7[7];
    v55 = *v54;
    v56 = *(v54 + 8);
    LOBYTE(v77) = v55;
    *(&v77 + 1) = v56;
    sub_24BAA9A1C();
    sub_24B9011B8(a1, &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v67);
    v57 = swift_allocObject();
    sub_24B901280(&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v52, v66);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AA0);
    v63 = sub_24B8F384C(&qword_27F063AA8, &qword_27F063A98);
    v64 = sub_24B8FF9B4();
    v59 = v70;
    v60 = v72;
    sub_24BAA968C();

    (*(v69 + 8))(v11, v60);
    v61 = v71;
    v62 = v74;
    (*(v71 + 16))(v75, v59, v74);
    swift_storeEnumTagMultiPayload();
    *&v79 = v60;
    *(&v79 + 1) = v58;
    v80 = v63;
    v81 = v64;
    swift_getOpaqueTypeConformance2();
    sub_24B8FFAB8();
    sub_24BAA8D0C();
    return (*(v61 + 8))(v59, v62);
  }
}

uint64_t sub_24B8F7A50()
{
  if (*(v0 + *(type metadata accessor for AppFilterListSection(0) + 24)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    v1 = 0;
    v2 = *(v11 + 16);
    while (v2 != v1)
    {
      v3 = type metadata accessor for FocusConfigurationAction(0);
      v4 = v11 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 72) * v1++;
      if (*(v4 + *(v3 + 20)))
      {
        v5 = 1;
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    v6 = 0;
    v7 = *(v11 + 16);
    do
    {
      v5 = v7 != v6;
      if (v7 == v6)
      {
        break;
      }

      v8 = type metadata accessor for FocusSystemConfigurationAction(0);
      v9 = v11 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6++;
    }

    while (*(v9 + *(v8 + 20)) != 1);
LABEL_9:

    return v5;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8F7CB4()
{
  type metadata accessor for AppFilterListSection(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  sub_24BAA9A0C();
}

uint64_t sub_24B8F7D60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_24B8F7DD0(uint64_t a1)
{
  v2 = type metadata accessor for AppFilterListSection(0);
  v3 = (a1 + *(v2 + 36));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v20[0]) = v4;
  *(&v20[0] + 1) = v5;
  LOBYTE(v18) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_24BAA9FDC();
  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_24BAAA47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B40);
    if (swift_dynamicCast())
    {
      if (*(a1 + *(v2 + 24)))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_24BAA81BC();

        v9 = v20[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v20[0] = v17;
        sub_24BA1F6CC(1, v9, *(&v9 + 1), isUniquelyReferenced_nonNull_native);

        v11 = sub_24BAA9EDC();

        v12 = sub_24BAA9FDC();
        [v6 setObject:v11 forKey:v12];
LABEL_11:

        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_24B8F35E4(v20, &qword_27F063190);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24BAAD5B0;
  if (*(a1 + *(v2 + 24)))
  {
    v14 = inited;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    v15 = *(&v20[0] + 1);
    *(v14 + 32) = *&v20[0];
    *(v14 + 40) = v15;
    *(v14 + 48) = 1;
    sub_24BA207D4(v14);
    swift_setDeallocating();
    sub_24B8F35E4(v14 + 32, &qword_27F063B80);
    v12 = sub_24BAA9EDC();

    v16 = sub_24BAA9FDC();
    [v6 setObject:v12 forKey:v16];
    v11 = v6;
    v6 = v16;
    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86DC();
  __break(1u);
}

uint64_t sub_24B8F81D0()
{
  type metadata accessor for AppFilterListSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30);
  sub_24BAA9A0C();
  sub_24B8F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B8F8298()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24BAA9FDC();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_24BAAA47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B40);
    if (swift_dynamicCast())
    {
      if (!*(v0 + *(type metadata accessor for AppFilterListSection(0) + 24)))
      {
        type metadata accessor for ActivityConfigViewModel();
        sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
        result = sub_24BAA86DC();
        __break(1u);
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_24BAA81BC();

      if (*(v9 + 16))
      {
        v4 = sub_24BA1575C(*&v12[0], *(&v12[0] + 1));
        v6 = v5;

        if (v6)
        {
          v7 = *(*(v9 + 56) + v4);

          return v7;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_24B8F35E4(v12, &qword_27F063190);
  }

  return 0;
}

uint64_t sub_24B8F84DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = sub_24BAA8FBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C18);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C20);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  *v11 = sub_24BAA8AAC();
  *(v11 + 1) = 0x4034000000000000;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C28);
  sub_24B8F8794(a1, a2, &v11[*(v16 + 44)]);
  LOBYTE(a1) = sub_24BAA90BC();
  sub_24BAA828C();
  v17 = &v11[*(v9 + 36)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_24BAA8F9C();
  v22 = sub_24B900858();
  sub_24BAA95FC();
  (*(v6 + 8))(v8, v5);
  sub_24B8F35E4(v11, &qword_27F063C18);
  v24[2] = v9;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_24BAA94DC();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24B8F8794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C48);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-v10];
  *v11 = sub_24BAA8BDC();
  *(v11 + 1) = 0x4018000000000000;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C50);
  sub_24B8F8AD4(a1, a2, &v11[*(v12 + 44)]);
  v13 = sub_24BAA8BDC();
  v23 = 0;
  sub_24B8FA6AC(&v37);
  v30 = *&v38[80];
  v31 = *&v38[96];
  v26 = *&v38[16];
  v27 = *&v38[32];
  v28 = *&v38[48];
  v29 = *&v38[64];
  v24 = v37;
  v25 = *v38;
  v33[6] = *&v38[80];
  v33[7] = *&v38[96];
  v33[2] = *&v38[16];
  v33[3] = *&v38[32];
  v33[4] = *&v38[48];
  v33[5] = *&v38[64];
  v32 = v38[112];
  v34 = v38[112];
  v33[0] = v37;
  v33[1] = *v38;
  sub_24B8F3208(&v24, &v35, &qword_27F063C58);
  sub_24B8F35E4(v33, &qword_27F063C58);
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27;
  *&v22[71] = v28;
  v22[135] = v32;
  *&v22[7] = v24;
  v14 = v23;
  sub_24B8F3208(v11, v9, &qword_27F063C48);
  sub_24B8F3208(v9, a3, &qword_27F063C48);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C60) + 48);
  *(&v36[1] + 1) = *&v22[16];
  *(&v36[5] + 1) = *&v22[80];
  *(&v36[6] + 1) = *&v22[96];
  *(&v36[7] + 1) = *&v22[112];
  *(&v36[2] + 1) = *&v22[32];
  *(&v36[3] + 1) = *&v22[48];
  v16 = (a3 + v15);
  *&v35 = v13;
  *(&v35 + 1) = 0x4028000000000000;
  LOBYTE(v36[0]) = v14;
  *(&v36[8] + 1) = *&v22[128];
  *(&v36[4] + 1) = *&v22[64];
  *(v36 + 1) = *v22;
  v17 = v36[6];
  v16[6] = v36[5];
  v16[7] = v17;
  v16[8] = v36[7];
  *(v16 + 137) = *(&v36[7] + 9);
  v18 = v36[2];
  v16[2] = v36[1];
  v16[3] = v18;
  v19 = v36[4];
  v16[4] = v36[3];
  v16[5] = v19;
  v20 = v36[0];
  *v16 = v35;
  v16[1] = v20;
  sub_24B8F3208(&v35, &v37, &qword_27F063C68);
  sub_24B8F35E4(v11, &qword_27F063C48);
  *&v38[81] = *&v22[80];
  *&v38[97] = *&v22[96];
  v39 = *&v22[112];
  *&v38[17] = *&v22[16];
  *&v38[33] = *&v22[32];
  *&v38[49] = *&v22[48];
  *&v38[65] = *&v22[64];
  *&v37 = v13;
  *(&v37 + 1) = 0x4028000000000000;
  v38[0] = v14;
  v40 = *&v22[128];
  *&v38[1] = *v22;
  sub_24B8F35E4(&v37, &qword_27F063C68);
  return sub_24B8F35E4(v9, &qword_27F063C48);
}

uint64_t sub_24B8F8AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C80);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  *v17 = sub_24BAA8A9C();
  *(v17 + 1) = 0x4018000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C90);
  sub_24B8F8D60(a1, a2, &v17[*(v18 + 44)]);
  *v11 = sub_24BAA8A8C();
  *(v11 + 1) = 0x4018000000000000;
  v11[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C98);
  sub_24B8F9B40(a1, a2, &v11[*(v19 + 44)]);
  LOBYTE(a2) = sub_24BAA90EC();
  sub_24BAA828C();
  v20 = &v11[*(v6 + 44)];
  *v20 = a2;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_24B8F3208(v17, v15, &qword_27F063C88);
  sub_24B8F3208(v11, v9, &qword_27F063C80);
  v25 = v29;
  sub_24B8F3208(v15, v29, &qword_27F063C88);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CA0);
  sub_24B8F3208(v9, v25 + *(v26 + 48), &qword_27F063C80);
  sub_24B8F35E4(v11, &qword_27F063C80);
  sub_24B8F35E4(v17, &qword_27F063C88);
  sub_24B8F35E4(v9, &qword_27F063C80);
  return sub_24B8F35E4(v15, &qword_27F063C88);
}

uint64_t sub_24B8F8D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v63 = a2;
  v68 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CE0) - 8;
  v4 = MEMORY[0x28223BE20](v65);
  v67 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v53[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CA8);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v53[-v12];
  v57 = sub_24BAA8BDC();
  LOBYTE(v70) = 1;
  sub_24B8FA33C(a1, &v107);
  v92 = v113;
  v93[0] = v114[0];
  *(v93 + 9) = *(v114 + 9);
  v88 = v109;
  v89 = v110;
  v90 = v111;
  v91 = v112;
  v86 = v107;
  v87 = v108;
  v94[5] = v112;
  v94[6] = v113;
  v95[0] = v114[0];
  *(v95 + 9) = *(v114 + 9);
  v94[2] = v109;
  v94[3] = v110;
  v94[4] = v111;
  v94[0] = v107;
  v94[1] = v108;
  sub_24B8F3208(&v86, &v96, &qword_27F063CB0);
  sub_24B8F35E4(v94, &qword_27F063CB0);
  *(&v84[5] + 7) = v91;
  *(&v84[6] + 7) = v92;
  *(&v84[7] + 7) = v93[0];
  v84[8] = *(v93 + 9);
  *(&v84[1] + 7) = v87;
  *(&v84[2] + 7) = v88;
  *(&v84[3] + 7) = v89;
  *(&v84[4] + 7) = v90;
  *(v84 + 7) = v86;
  v54 = v70;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v85 + 7) = *&v85[7];
  *(&v85[2] + 7) = *&v85[9];
  *(&v85[4] + 7) = *&v85[11];
  v14 = &v13[*(v9 + 44)];
  v64 = sub_24BAA869C();
  v15 = *(v64 + 20);
  v60 = *MEMORY[0x277CE0118];
  v16 = v60;
  v17 = sub_24BAA8B2C();
  v18 = *(v17 - 8);
  v59 = *(v18 + 104);
  v61 = v18 + 104;
  v59(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #6.0 }

  v58 = _Q0;
  *v14 = _Q0;
  v56 = objc_opt_self();
  v24 = [v56 quaternaryLabelColor];
  sub_24BAA973C();
  v25 = sub_24BAA987C();

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v14[*(v26 + 52)] = v25;
  *&v14[*(v26 + 56)] = 256;
  v27 = sub_24BAA9D1C();
  v29 = v28;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC0);
  v30 = &v14[*(v55 + 36)];
  *v30 = v27;
  v30[1] = v29;
  v31 = v84[1];
  *(v13 + 17) = v84[0];
  v32 = v84[5];
  *(v13 + 81) = v84[4];
  v33 = v84[2];
  *(v13 + 65) = v84[3];
  *(v13 + 49) = v33;
  *(v13 + 33) = v31;
  *(v13 + 145) = v84[8];
  v34 = v84[6];
  *(v13 + 129) = v84[7];
  *(v13 + 113) = v34;
  *(v13 + 97) = v32;
  v35 = *&v85[2];
  *(v13 + 161) = *v85;
  *v13 = v57;
  *(v13 + 1) = 0;
  v13[16] = v54;
  *(v13 + 177) = v35;
  *(v13 + 193) = *&v85[4];
  *(v13 + 26) = *(&v85[5] + 7);
  v57 = sub_24BAA8BDC();
  v82 = 1;
  sub_24B8F960C(v62, &v70);
  v104 = v78;
  v105 = v79;
  v106[0] = v80[0];
  *(v106 + 9) = *(v80 + 9);
  v100 = v74;
  v101 = v75;
  v102 = v76;
  v103 = v77;
  v96 = v70;
  v97 = v71;
  v98 = v72;
  v99 = v73;
  v114[1] = v78;
  v114[2] = v79;
  v115[0] = v80[0];
  *(v115 + 9) = *(v80 + 9);
  v111 = v74;
  v112 = v75;
  v113 = v76;
  v114[0] = v77;
  v107 = v70;
  v108 = v71;
  v109 = v72;
  v110 = v73;
  sub_24B8F3208(&v96, &v69, &qword_27F063CE8);
  sub_24B8F35E4(&v107, &qword_27F063CE8);
  *(&v81[8] + 7) = v104;
  *(&v81[9] + 7) = v105;
  *(&v81[10] + 7) = v106[0];
  v81[11] = *(v106 + 9);
  *(&v81[4] + 7) = v100;
  *(&v81[5] + 7) = v101;
  *(&v81[6] + 7) = v102;
  *(&v81[7] + 7) = v103;
  *(v81 + 7) = v96;
  *(&v81[1] + 7) = v97;
  *(&v81[2] + 7) = v98;
  *(&v81[3] + 7) = v99;
  LOBYTE(v27) = v82;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v83[7] = v70;
  *&v83[23] = v71;
  *&v83[39] = v72;
  v36 = &v7[*(v65 + 44)];
  v59(&v36[*(v64 + 20)], v60, v17);
  *v36 = v58;
  v37 = [v56 quaternaryLabelColor];
  sub_24BAA973C();
  v38 = sub_24BAA987C();

  *&v36[*(v26 + 52)] = v38;
  *&v36[*(v26 + 56)] = 256;
  v39 = sub_24BAA9D1C();
  v40 = &v36[*(v55 + 36)];
  *v40 = v39;
  v40[1] = v41;
  v42 = v81[2];
  *(v7 + 65) = v81[3];
  *(v7 + 49) = v42;
  v43 = v81[0];
  *(v7 + 33) = v81[1];
  *(v7 + 17) = v43;
  v44 = v81[6];
  *(v7 + 129) = v81[7];
  *(v7 + 113) = v44;
  v45 = v81[4];
  *(v7 + 97) = v81[5];
  *(v7 + 81) = v45;
  v46 = v81[10];
  *(v7 + 193) = v81[11];
  *(v7 + 177) = v46;
  v47 = v81[8];
  *(v7 + 161) = v81[9];
  *v7 = v57;
  *(v7 + 1) = 0;
  v7[16] = v27;
  *(v7 + 145) = v47;
  *(v7 + 209) = *v83;
  *(v7 + 225) = *&v83[16];
  *(v7 + 241) = *&v83[32];
  *(v7 + 32) = *&v83[47];
  v48 = v66;
  sub_24B8F3208(v13, v66, &qword_27F063CA8);
  v49 = v67;
  sub_24B8F3208(v7, v67, &qword_27F063CE0);
  v50 = v68;
  sub_24B8F3208(v48, v68, &qword_27F063CA8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CF0);
  sub_24B8F3208(v49, v50 + *(v51 + 48), &qword_27F063CE0);
  sub_24B8F35E4(v7, &qword_27F063CE0);
  sub_24B8F35E4(v13, &qword_27F063CA8);
  sub_24B8F35E4(v49, &qword_27F063CE0);
  return sub_24B8F35E4(v48, &qword_27F063CA8);
}

uint64_t sub_24B8F960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8AAC();
  LOBYTE(v33[0]) = 1;
  sub_24B8F9868(a1, &v37);
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v31[0] = v37;
  v31[1] = v38;
  v31[2] = v39;
  v31[3] = v40;
  v31[4] = v41;
  v31[5] = v42;
  v32 = v43;
  sub_24B8F3208(&v24, v47, &qword_27F063CF8);
  sub_24B8F35E4(v31, &qword_27F063CF8);
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[7] = v24;
  *&v23[23] = v25;
  v23[103] = v30;
  *&v23[39] = v26;
  LOBYTE(a1) = v33[0];
  v5 = sub_24BAA90BC();
  sub_24BAA828C();
  v6 = *&v23[96];
  *(&v34[6] + 1) = *&v23[96];
  v33[0] = v4;
  v33[1] = 0;
  LOBYTE(v34[0]) = a1;
  v7 = *&v23[32];
  *(&v34[3] + 1) = *&v23[48];
  v8 = *&v23[48];
  *(&v34[4] + 1) = *&v23[64];
  v9 = *&v23[64];
  *(&v34[5] + 1) = *&v23[80];
  v10 = *&v23[16];
  *(v34 + 1) = *v23;
  v11 = *v23;
  *(&v34[1] + 1) = *&v23[16];
  *(&v34[2] + 1) = *&v23[32];
  LOBYTE(v35) = v5;
  *(&v35 + 1) = v12;
  *v36 = v13;
  *&v36[8] = v14;
  *&v36[16] = v15;
  v36[24] = 0;
  v37 = v4;
  v38 = v34[0];
  v41 = v34[3];
  v42 = v34[4];
  v43 = v34[5];
  v44 = v34[6];
  v39 = v34[1];
  v40 = v34[2];
  *(v46 + 9) = *&v36[9];
  v45 = v35;
  v46[0] = *v36;
  v16 = *v36;
  *(a2 + 128) = v35;
  *(a2 + 144) = v16;
  *(a2 + 160) = v46[1];
  v17 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v17;
  v18 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v18;
  v19 = v38;
  *a2 = v37;
  *(a2 + 16) = v19;
  v20 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v20;
  v52 = v8;
  v53 = v9;
  v54 = *&v23[80];
  v49 = v11;
  v50 = v10;
  v22[176] = 1;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  v47[0] = v4;
  v47[1] = 0;
  v48 = a1;
  v55 = v6;
  v51 = v7;
  v56 = v5;
  v57 = v12;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  v61 = 0;
  sub_24B8F3208(v33, v22, &qword_27F063D00);
  return sub_24B8F35E4(v47, &qword_27F063D00);
}

uint64_t sub_24B8F9868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-v5 - 8];
  v7 = sub_24BAA994C();
  if (a1)
  {
    v8 = v7;

    v9 = sub_24B991A94();

    KeyPath = swift_getKeyPath();
    v11 = sub_24BAA919C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_24BAA91FC();
    sub_24B8F35E4(v6, &qword_27F063CD8);
    v13 = swift_getKeyPath();
    v14 = sub_24BAA90CC();
    sub_24BAA828C();
    v46 = 0;
    *&v26 = v8;
    *(&v26 + 1) = KeyPath;
    *&v27 = v9;
    *(&v27 + 1) = v13;
    *&v28 = v12;
    BYTE8(v28) = v14;
    HIDWORD(v28) = *(v47 + 3);
    *(&v28 + 9) = v47[0];
    *&v29 = v15;
    *(&v29 + 1) = v16;
    *&v30 = v17;
    *(&v30 + 1) = v18;
    v31 = 0;
    v33 = v27;
    v32 = v26;
    LOBYTE(v37) = 0;
    v36 = v30;
    v35 = v29;
    v34 = v28;
    v25[88] = 1;
    v19 = v27;
    *a2 = v26;
    *(a2 + 16) = v19;
    v20 = v34;
    v21 = v36;
    v22 = v37;
    *(a2 + 48) = v35;
    *(a2 + 64) = v21;
    *(a2 + 32) = v20;
    *(a2 + 80) = v22;
    *(a2 + 88) = 0;
    *(a2 + 96) = 1;
    v38[0] = v8;
    v38[1] = KeyPath;
    v38[2] = v9;
    v38[3] = v13;
    v38[4] = v12;
    v39 = v14;
    *&v40[3] = *(v47 + 3);
    *v40 = v47[0];
    v41 = v15;
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = 0;
    sub_24B8F3208(&v26, v25, &qword_27F063D08);
    return sub_24B8F35E4(v38, &qword_27F063D08);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8F9B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CA8) - 8;
  v63 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v65 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v51[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v51[-v12];
  v59 = sub_24BAA8BDC();
  LOBYTE(v68) = 1;
  sub_24B8FA33C(a1, &v99);
  v87 = v105;
  v88[0] = v106[0];
  *(v88 + 9) = *(v106 + 9);
  v83 = v101;
  v84 = v102;
  v85 = v103;
  v86 = v104;
  v81 = v99;
  v82 = v100;
  v89[5] = v104;
  v89[6] = v105;
  v90[0] = v106[0];
  *(v90 + 9) = *(v106 + 9);
  v89[2] = v101;
  v89[3] = v102;
  v89[4] = v103;
  v89[0] = v99;
  v89[1] = v100;
  sub_24B8F3208(&v81, &v91, &qword_27F063CB0);
  sub_24B8F35E4(v89, &qword_27F063CB0);
  *(&v79[5] + 7) = v86;
  *(&v79[6] + 7) = v87;
  *(&v79[7] + 7) = v88[0];
  v79[8] = *(v88 + 9);
  *(&v79[1] + 7) = v82;
  *(&v79[2] + 7) = v83;
  *(&v79[3] + 7) = v84;
  *(&v79[4] + 7) = v85;
  *(v79 + 7) = v81;
  v52 = v68;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v80 + 7) = *&v80[7];
  *(&v80[2] + 7) = *&v80[9];
  *(&v80[4] + 7) = *&v80[11];
  v14 = &v13[*(v4 + 44)];
  v60 = sub_24BAA869C();
  v15 = *(v60 + 20);
  v57 = *MEMORY[0x277CE0118];
  v16 = v57;
  v56 = sub_24BAA8B2C();
  v17 = *(v56 - 8);
  v55 = *(v17 + 104);
  v58 = v17 + 104;
  v55(&v14[v15], v16, v56);
  __asm { FMOV            V0.2D, #6.0 }

  v54 = _Q0;
  *v14 = _Q0;
  v53 = objc_opt_self();
  v23 = [v53 quaternaryLabelColor];
  sub_24BAA973C();
  v24 = sub_24BAA987C();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v14[*(v25 + 52)] = v24;
  *&v14[*(v25 + 56)] = 256;
  v26 = sub_24BAA9D1C();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC0);
  v30 = &v14[*(v29 + 36)];
  *v30 = v26;
  v30[1] = v28;
  v31 = v79[1];
  *(v13 + 17) = v79[0];
  v32 = v79[5];
  *(v13 + 81) = v79[4];
  v33 = v79[2];
  *(v13 + 65) = v79[3];
  *(v13 + 49) = v33;
  *(v13 + 33) = v31;
  *(v13 + 145) = v79[8];
  v34 = v79[6];
  *(v13 + 129) = v79[7];
  *(v13 + 113) = v34;
  *(v13 + 97) = v32;
  v35 = *&v80[2];
  *(v13 + 161) = *v80;
  *v13 = v59;
  *(v13 + 1) = 0;
  v13[16] = v52;
  *(v13 + 177) = v35;
  *(v13 + 193) = *&v80[4];
  *(v13 + 26) = *(&v80[5] + 7);
  v59 = sub_24BAA8BDC();
  v77 = 1;
  sub_24B8FA33C(v61, &v68);
  v96 = v73;
  v97 = v74;
  v98[0] = v75[0];
  *(v98 + 9) = *(v75 + 9);
  v93 = v70;
  v94 = v71;
  v95 = v72;
  v91 = v68;
  v92 = v69;
  v105 = v74;
  v106[0] = v75[0];
  *(v106 + 9) = *(v75 + 9);
  v101 = v70;
  v102 = v71;
  v103 = v72;
  v104 = v73;
  v99 = v68;
  v100 = v69;
  sub_24B8F3208(&v91, &v67, &qword_27F063CB0);
  sub_24B8F35E4(&v99, &qword_27F063CB0);
  *(&v76[5] + 7) = v96;
  *(&v76[6] + 7) = v97;
  *(&v76[7] + 7) = v98[0];
  v76[8] = *(v98 + 9);
  *(&v76[1] + 7) = v92;
  *(&v76[2] + 7) = v93;
  *(&v76[3] + 7) = v94;
  *(&v76[4] + 7) = v95;
  *(v76 + 7) = v91;
  LOBYTE(v14) = v77;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v78[7] = v68;
  *&v78[23] = v69;
  *&v78[39] = v70;
  v36 = &v11[*(v63 + 44)];
  v55(&v36[*(v60 + 20)], v57, v56);
  *v36 = v54;
  v37 = [v53 quaternaryLabelColor];
  sub_24BAA973C();
  v38 = sub_24BAA987C();

  *&v36[*(v25 + 52)] = v38;
  *&v36[*(v25 + 56)] = 256;
  v39 = sub_24BAA9D1C();
  v40 = &v36[*(v29 + 36)];
  *v40 = v39;
  v40[1] = v41;
  v42 = v76[1];
  *(v11 + 17) = v76[0];
  v43 = v76[5];
  *(v11 + 81) = v76[4];
  v44 = v76[2];
  *(v11 + 65) = v76[3];
  *(v11 + 49) = v44;
  *(v11 + 33) = v42;
  *(v11 + 145) = v76[8];
  v45 = v76[6];
  *(v11 + 129) = v76[7];
  *(v11 + 113) = v45;
  *v11 = v59;
  *(v11 + 1) = 0;
  v11[16] = v14;
  *(v11 + 97) = v43;
  *(v11 + 161) = *v78;
  *(v11 + 177) = *&v78[16];
  *(v11 + 193) = *&v78[32];
  *(v11 + 26) = *&v78[47];
  v46 = v64;
  sub_24B8F3208(v13, v64, &qword_27F063CA8);
  v47 = v65;
  sub_24B8F3208(v11, v65, &qword_27F063CA8);
  v48 = v66;
  sub_24B8F3208(v46, v66, &qword_27F063CA8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC8);
  sub_24B8F3208(v47, v48 + *(v49 + 48), &qword_27F063CA8);
  sub_24B8F35E4(v11, &qword_27F063CA8);
  sub_24B8F35E4(v13, &qword_27F063CA8);
  sub_24B8F35E4(v47, &qword_27F063CA8);
  return sub_24B8F35E4(v46, &qword_27F063CA8);
}

uint64_t sub_24B8FA33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = sub_24BAA8AAC();
  LOBYTE(v33[0]) = 1;
  sub_24B8FA4E0(a1, &v26);
  v4 = v26;
  v5 = v27;
  v6 = v28;
  v7 = v29;
  v8 = v33[0];
  v9 = sub_24BAA90BC();
  sub_24BAA828C();
  v22[0] = v20;
  v22[1] = 0;
  v23[0] = v8;
  *&v23[8] = v4;
  *&v23[24] = v5;
  *&v23[40] = v6;
  v23[56] = v7;
  LOBYTE(v24) = v9;
  *(&v24 + 1) = v10;
  *v25 = v11;
  *&v25[8] = v12;
  *&v25[16] = v13;
  v25[24] = 0;
  v28 = *&v23[16];
  v29 = *&v23[32];
  v26 = v20;
  v27 = *v23;
  *(v32 + 9) = *&v25[9];
  v31 = v24;
  v32[0] = *v25;
  v30 = *&v23[48];
  v21[128] = 1;
  v14 = *v23;
  v15 = *&v23[32];
  *(a2 + 32) = *&v23[16];
  *(a2 + 48) = v15;
  *a2 = v20;
  *(a2 + 16) = v14;
  v16 = v30;
  v17 = v31;
  v18 = v32[1];
  *(a2 + 96) = v32[0];
  *(a2 + 112) = v18;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v33[0] = v20;
  v33[1] = 0;
  v34 = v8;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v43 = v13;
  v44 = 0;
  sub_24B8F3208(v22, v21, &qword_27F063CD0);
  return sub_24B8F35E4(v33, &qword_27F063CD0);
}

uint64_t sub_24B8FA4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_24BAA994C();
  if (a1)
  {
    v8 = v7;

    v9 = sub_24B991A94();

    KeyPath = swift_getKeyPath();
    v11 = sub_24BAA919C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_24BAA91FC();
    sub_24B8F35E4(v6, &qword_27F063CD8);
    result = swift_getKeyPath();
    *a2 = v8;
    *(a2 + 8) = KeyPath;
    *(a2 + 16) = v9;
    *(a2 + 24) = result;
    *(a2 + 32) = v12;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}