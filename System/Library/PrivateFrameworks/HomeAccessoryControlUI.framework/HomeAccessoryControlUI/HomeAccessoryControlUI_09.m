uint64_t sub_252415F58(uint64_t result, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_252414B38();
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_252416B50();
      goto LABEL_19;
    }

    sub_252417EF8();
  }

  v11 = *v4;
  sub_252693460();
  MEMORY[0x2530A4FE0](a2 & 1);
  sub_2523D782C(v23, v8);
  result = sub_2526934C0();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 16 * a3;
      v15 = *v14;
      if (*(v14 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_10;
        }

        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        v16 = sub_25243965C(v15, v8);
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        result = j__swift_bridgeObjectRelease();
        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a2)
        {
LABEL_10:
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRelease();
          result = j__swift_bridgeObjectRelease();
          goto LABEL_11;
        }

        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        v17 = sub_25243965C(v15, v8);
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        result = j__swift_bridgeObjectRelease();
        if (v17)
        {
LABEL_18:
          result = sub_2526933D0();
          __break(1u);
          break;
        }
      }

LABEL_11:
      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v18 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = *(v18 + 48) + 16 * a3;
  *v19 = v8;
  *(v19 + 8) = a2 & 1;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2524161D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252414D38(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_252416CB4(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_2524180C0(v6 + 1, a4);
  }

  v9 = *v4;
  sub_252693460();
  MEMORY[0x2530A4FE0](v5);
  result = sub_2526934C0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

void *sub_252416340()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88);
  v6 = *v0;
  v7 = sub_2526931D0();
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
        sub_2524193D4(*(v6 + 48) + v21, v5, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        result = sub_25241943C(v5, *(v8 + 48) + v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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

void *sub_25241654C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC30);
  v2 = *v0;
  v3 = sub_2526931D0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_25241668C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2526931D0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2524167BC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_2526931D0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_2524169F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38);
  v2 = *v0;
  v3 = sub_2526931D0();
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

void *sub_252416B50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80);
  v2 = *v0;
  v3 = sub_2526931D0();
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
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = *v18;
        *(v20 + 8) = v19;
        result = j__swift_bridgeObjectRetain();
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

void *sub_252416CB4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2526931D0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_252416DE4()
{
  v1 = v0;
  v41 = sub_25268DA10();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v43 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v45 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v36 - v7;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88);
  result = sub_2526931E0();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v0;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = (v2 + 8);
    v38 = (v2 + 32);
    v17 = result + 56;
    v39 = v4;
    v42 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48);
      v23 = v44;
      v24 = *(v43 + 72);
      sub_2524193D4(v22 + v24 * (v19 | (v11 << 6)), v44, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_252693460();
      sub_2524193D4(v23, v45, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v28 = v40;
          v27 = v41;
          (*v38)(v40, v45, v41);
          MEMORY[0x2530A4FE0](2);
          sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          (*v37)(v28, v27);
        }
      }

      else
      {
        v26 = *v45;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v26);
      }

      result = sub_2526934C0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_25241943C(v44, *(v10 + 48) + v18 * v24, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      ++*(v10 + 16);
      v8 = v42;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v36;
        goto LABEL_31;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_25241727C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC30);
  result = sub_2526931E0();
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
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x2530A4FB0](*(v4 + 40), v15, 4);
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

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_252417470(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2526931E0();
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
      sub_252693460();
      MEMORY[0x2530A4FE0](v17);
      result = sub_2526934C0();
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

uint64_t sub_252417688()
{
  v1 = v0;
  v32 = sub_25268F520();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC50);
  v6 = sub_2526931E0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_252419560(&qword_27F4DB2C0, MEMORY[0x277D163C8]);
      result = sub_252692B20();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
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

        v1 = v27;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2524179A4()
{
  v1 = v0;
  v32 = sub_25268DA10();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB28);
  v6 = sub_2526931E0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      result = sub_252692B20();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
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

        v1 = v27;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_252417CC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38);
  result = sub_2526931E0();
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
      sub_252693460();

      sub_252692C80();
      result = sub_2526934C0();
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

unint64_t sub_252417EF8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80);
  result = sub_2526931E0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(v1 + 48) + 16 * (v10 | (v4 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_252693460();
      MEMORY[0x2530A4FE0](v15);

      sub_2523D782C(v18, v14);
      sub_2526934C0();
      result = sub_2526931C0();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v16 = *(v3 + 48) + 16 * result;
      *v16 = v14;
      *(v16 + 8) = v15;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v17 = v3;
  }

  return result;
}

uint64_t sub_2524180C0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2526931E0();
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
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_252693460();
      MEMORY[0x2530A4FE0](v17);
      result = sub_2526934C0();
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t _s22HomeAccessoryControlUI0bC0V14StatusProviderO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v106 = a1;
  v107 = a2;
  v101 = sub_25268D990();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC58);
  MEMORY[0x28223BE20](v98);
  v100 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v97 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v96 - v8;
  MEMORY[0x28223BE20](v7);
  v102 = &v96 - v9;
  v10 = type metadata accessor for AccessoryControl.StatusProvider();
  v11 = MEMORY[0x28223BE20](v10);
  v105 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v96 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v96 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v96 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v96 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v96 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v96 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v96 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC60);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v96 - v34;
  v36 = &v96 + *(v33 + 56) - v34;
  sub_2524193D4(v106, &v96 - v34, type metadata accessor for AccessoryControl.StatusProvider);
  v37 = v107;
  v107 = v36;
  sub_2524193D4(v37, v36, type metadata accessor for AccessoryControl.StatusProvider);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2524193D4(v35, v29, type metadata accessor for AccessoryControl.StatusProvider);
      v72 = *v29;
      v73 = v29[8];
      v74 = v107;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_36;
      }

      v75 = *v74;
      v76 = *(v74 + 8);
      if (v72)
      {
        if (!v75)
        {
          goto LABEL_66;
        }

        v77 = sub_252445528(v72, *v74);

        if ((v77 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else if (v75)
      {
        goto LABEL_66;
      }

      if (v73 == 2)
      {
        if (v76 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_102;
      }

      if (v76 != 2 && ((v76 ^ v73) & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
    case 2u:
      sub_2524193D4(v35, v26, type metadata accessor for AccessoryControl.StatusProvider);
      v51 = *v26;
      v52 = *(v26 + 1);
      v53 = v26[16];
      v54 = *(v26 + 3);
      v55 = v26[32];
      v56 = *(v26 + 5);
      v57 = v26[48];
      v58 = v107;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_46;
      }

      v59 = *v58;
      v60 = v58[16];
      v61 = v58[32];
      v62 = v58[48];
      if (v51 == 2)
      {
        if (v59 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v59 == 2 || ((v59 ^ v51) & 1) != 0)
      {
        goto LABEL_67;
      }

      if (v53)
      {
        if (!v58[16])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v52 != *(v58 + 1))
        {
          v60 = 1;
        }

        if (v60)
        {
          goto LABEL_67;
        }
      }

      if (v55)
      {
        if (!v58[32])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v54 != *(v58 + 3))
        {
          v61 = 1;
        }

        if (v61)
        {
          goto LABEL_67;
        }
      }

      if (v57)
      {
        if (!v58[48])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v56 != *(v58 + 5))
        {
          v62 = 1;
        }

        if (v62)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_102;
    case 3u:
      sub_2524193D4(v35, v23, type metadata accessor for AccessoryControl.StatusProvider);
      v63 = *v23;
      v64 = v107;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_36;
      }

      v65 = *v64;
      if (!v63)
      {
        goto LABEL_50;
      }

      if (v65)
      {
        goto LABEL_34;
      }

      goto LABEL_66;
    case 4u:
      sub_2524193D4(v35, v20, type metadata accessor for AccessoryControl.StatusProvider);
      v40 = *v20;
      v41 = v20[1];
      v42 = *(v20 + 16);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
      v44 = v107;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_252372288(v20 + v43, &qword_27F4DB2D8);
        goto LABEL_46;
      }

      v45 = *v44;
      v46 = v44[1];
      v47 = *(v44 + 16);
      v48 = v102;
      sub_2524134D8(v20 + v43, v102);
      v49 = v44 + v43;
      v50 = v103;
      sub_2524134D8(v49, v103);
      if (v40 == 2)
      {
        if (v45 != 2)
        {
          goto LABEL_57;
        }
      }

      else if (v45 == 2 || ((v45 ^ v40) & 1) != 0)
      {
        goto LABEL_57;
      }

      if (v42)
      {
        v82 = v101;
        if (!v47)
        {
LABEL_57:
          sub_252372288(v50, &qword_27F4DB2D8);
          sub_252372288(v48, &qword_27F4DB2D8);
          goto LABEL_67;
        }
      }

      else
      {
        if (v41 == v46)
        {
          v85 = v47;
        }

        else
        {
          v85 = 1;
        }

        v82 = v101;
        if (v85)
        {
          goto LABEL_57;
        }
      }

      v86 = *(v98 + 48);
      v87 = v100;
      sub_25237153C(v48, v100, &qword_27F4DB2D8);
      sub_25237153C(v50, v87 + v86, &qword_27F4DB2D8);
      v88 = *(v99 + 48);
      if (v88(v87, 1, v82) == 1)
      {
        sub_252372288(v50, &qword_27F4DB2D8);
        v89 = v100;
        sub_252372288(v48, &qword_27F4DB2D8);
        if (v88(v89 + v86, 1, v82) == 1)
        {
          sub_252372288(v89, &qword_27F4DB2D8);
          goto LABEL_102;
        }

        goto LABEL_90;
      }

      v90 = v97;
      sub_25237153C(v87, v97, &qword_27F4DB2D8);
      if (v88(v87 + v86, 1, v82) == 1)
      {
        sub_252372288(v50, &qword_27F4DB2D8);
        v89 = v100;
        sub_252372288(v48, &qword_27F4DB2D8);
        (*(v99 + 8))(v90, v82);
LABEL_90:
        sub_252372288(v89, &qword_27F4DBC58);
        goto LABEL_67;
      }

      v91 = v99;
      v92 = v87 + v86;
      v93 = v96;
      (*(v99 + 32))(v96, v92, v82);
      sub_252419560(&qword_27F4DBC68, MEMORY[0x277CC9578]);
      v94 = sub_252692B70();
      v95 = *(v91 + 8);
      v95(v93, v82);
      sub_252372288(v103, &qword_27F4DB2D8);
      sub_252372288(v48, &qword_27F4DB2D8);
      v95(v90, v82);
      sub_252372288(v87, &qword_27F4DB2D8);
      if (v94)
      {
        goto LABEL_102;
      }

LABEL_67:
      sub_2524194A4(v35, type metadata accessor for AccessoryControl.StatusProvider);
      return 0;
    case 5u:
      sub_2524193D4(v35, v17, type metadata accessor for AccessoryControl.StatusProvider);
      v63 = *v17;
      v78 = v107;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }

      v65 = *v78;
      if (!v63)
      {
LABEL_50:
        if (!v65)
        {
          goto LABEL_102;
        }

        goto LABEL_66;
      }

      if (!v65)
      {
LABEL_66:

        goto LABEL_67;
      }

LABEL_34:
      v79 = sub_252445528(v63, v65);

      if ((v79 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_102:
      sub_2524194A4(v35, type metadata accessor for AccessoryControl.StatusProvider);
      return 1;
    case 6u:
      v80 = v104;
      sub_2524193D4(v35, v104, type metadata accessor for AccessoryControl.StatusProvider);
      v38 = *v80;
      v39 = v107;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    case 7u:
      v66 = v105;
      sub_2524193D4(v35, v105, type metadata accessor for AccessoryControl.StatusProvider);
      v68 = *v66;
      v67 = v66[1];
      v69 = v107;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_36:

LABEL_46:
        sub_252372288(v35, &qword_27F4DBC60);
        return 0;
      }

      v70 = *v69;
      v71 = v69[1];
      if (v68 == v70 && v67 == v71)
      {

        goto LABEL_102;
      }

      v83 = sub_2526933B0();

      if (v83)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    default:
      sub_2524193D4(v35, v31, type metadata accessor for AccessoryControl.StatusProvider);
      v38 = *v31;
      v39 = v107;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_46;
      }

LABEL_38:
      v81 = *v39;
      if (v38 == 2)
      {
        if (v81 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_102;
      }

      if (v81 != 2 && ((v81 ^ v38) & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
  }
}

void sub_252418ED8()
{
  sub_25241938C(319, &qword_27F4DBBB0);
  if (v0 <= 0x3F)
  {
    sub_252419058();
    if (v1 <= 0x3F)
    {
      sub_2524190E4(319);
      if (v2 <= 0x3F)
      {
        sub_252419234(319, &qword_27F4DBBF0, &qword_27F4DBBF8, &qword_27F4DBC00);
        if (v3 <= 0x3F)
        {
          sub_252419288();
          if (v4 <= 0x3F)
          {
            sub_252419234(319, &qword_27F4DBC10, &qword_27F4DBC18, &qword_27F4DBC20);
            if (v5 <= 0x3F)
            {
              sub_25241938C(319, &qword_27F4DBC28);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_252419008()
{
  if (!qword_27F4DBBB8)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBBB8);
    }
  }
}

void sub_252419058()
{
  if (!qword_27F4DBBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DBBC0);
    }
  }
}

void sub_2524190E4(uint64_t a1)
{
  if (!qword_27F4DBBD8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F4DBBD8);
    }
  }
}

void sub_252419234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_252419338(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_252419288()
{
  if (!qword_27F4DBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DBC08);
    }
  }
}

void sub_252419338(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_252693130();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25241938C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_252419008();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2524193D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25241943C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524194A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252419560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccessoryControlGroup.DecorationControlConfig.init(alignment:style:mode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_25268F0E0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t type metadata accessor for AccessoryControlGroup.DecorationControlConfig()
{
  result = qword_27F4DBC90;
  if (!qword_27F4DBC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static AccessoryControlGroup.DecorationControlConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25268EE80() & 1) != 0 && (v4 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControlGroup.DecorationControlConfig.alignment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268F0E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessoryControlGroup.DecorationControlConfig.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.hash(into:)()
{
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8]);
  sub_252692B30();
  v1 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 20)));
  return MEMORY[0x2530A4FE0](*(v0 + *(v1 + 24)));
}

uint64_t AccessoryControlGroup.DecorationControlConfig.hashValue.getter()
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8]);
  sub_252692B30();
  v1 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 20)));
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_252419958(uint64_t a1)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_252419A10(uint64_t a1, uint64_t a2)
{
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
}

uint64_t sub_252419AB4(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
  return sub_2526934C0();
}

uint64_t AccessoryControlGroup.DecorationControlConfig.description.getter()
{
  v1 = sub_25268F0B0();
  MEMORY[0x2530A4800](v1);

  MEMORY[0x2530A4800](0x3A656C797473202CLL, 0xE900000000000020);

  v2 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xEA00000000007478;
  v6 = 0x6554656C62756F64;
  if (*(v0 + *(v2 + 20)) != 2)
  {
    v6 = 0x6E776F44706F7264;
    v5 = 0xE800000000000000;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 1954047348;
    v3 = 0xE400000000000000;
  }

  if (*(v0 + *(v2 + 20)) <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*(v0 + *(v2 + 20)) <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  v9 = v2;

  MEMORY[0x2530A4800](v7, v8);

  MEMORY[0x2530A4800](0x72676B636162202CLL, 0xEE00203A646E756FLL);

  if (*(v0 + *(v9 + 24)))
  {
    if (*(v0 + *(v9 + 24)) == 1)
    {
      v10 = 0xE500000000000000;
      v11 = 0x746867696CLL;
    }

    else
    {
      v11 = 0x616C477261656C63;
      v10 = 0xEA00000000007373;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    v11 = 1802658148;
  }

  MEMORY[0x2530A4800](v11, v10);

  return 0x6E656D6E67696C61;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.Style.description.getter()
{
  v1 = 0x6E6F74747562;
  v2 = 0x6554656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x6E776F44706F7264;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t AccessoryControlGroup.DecorationControlConfig.BackgroundMode.description.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x616C477261656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

unint64_t sub_252419EBC()
{
  result = qword_27F4DBC78;
  if (!qword_27F4DBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBC78);
  }

  return result;
}

unint64_t sub_252419F14()
{
  result = qword_27F4DBC80;
  if (!qword_27F4DBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBC80);
  }

  return result;
}

uint64_t sub_252419FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252419FFC()
{
  v1 = 0x6E6F74747562;
  v2 = 0x6554656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x6E776F44706F7264;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_25241A070()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x616C477261656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_25241A0EC()
{
  result = sub_25268F0E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s16ThermostatConfigV13GradientStyleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16ThermostatConfigV13GradientStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25241A328(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double sub_25241A3BC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t TransitionTileHelper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TransitionTileHelper.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25241A40C()
{
  type metadata accessor for TransitionTileHelper();
  sub_25241A480();
  sub_252690630();
  sub_252690650();
}

unint64_t sub_25241A480()
{
  result = qword_27F4DBCA0;
  if (!qword_27F4DBCA0)
  {
    type metadata accessor for TransitionTileHelper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCA0);
  }

  return result;
}

double static TransitionTileView.Config.empty.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_252692330();
  v3 = sub_252692340();
  v4 = sub_252692330();
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  v13 = 0u;
  v14 = 0u;
  *&v15 = 0x7FF0000000000000;
  *(&v15 + 1) = v5;
  *&v16 = sub_2526922F0();
  *(&v16 + 1) = sub_252692330();
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0x3FF0000000000000;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v18 = 0u;
  v19 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 49) = 1;
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_252697190;
  *(a1 + 104) = xmmword_252697190;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  memset(v23, 0, sizeof(v23));
  sub_25241A6E4(&v13, v24);
  sub_25241A740(v23);
  v6 = v15;
  v7 = v16;
  v8 = v13;
  *(a1 + 240) = v14;
  *(a1 + 256) = v6;
  v9 = v17;
  *(a1 + 272) = v7;
  *(a1 + 288) = v9;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = v8;
  memset(v24, 0, sizeof(v24));
  sub_25241A740(v24);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v10 = v21;
  *(a1 + 336) = v20;
  *(a1 + 352) = v10;
  *(a1 + 368) = v22;
  v11 = v19;
  *(a1 + 304) = v18;
  *(a1 + 320) = v11;
  sub_25241A7A8(0);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 2;
  result = 0.0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  return result;
}

uint64_t sub_25241A6A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransitionTileHelper();
  result = sub_252690630();
  *a1 = result;
  return result;
}

uint64_t sub_25241A740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25241A7A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 TransitionTileView.Config.Icon.init(frame:maxWidth:drawCircle:size:color:unresponsiveColor:iconIdentifier:)@<Q0>(char a1@<W0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v11 = *a2;
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a9;
  *(a6 + 24) = a10;
  *(a6 + 32) = a11;
  *(a6 + 40) = a1;
  *(a6 + 41) = v11;
  *(a6 + 48) = *a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = 0;
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 80) = *a5;
  *(a6 + 96) = v13;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  return result;
}

__n128 TransitionTileView.Config.Text.init(frame:maxWidth:font:color:featherText:minimumScaleFactor:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  a4->n128_f64[0] = a5;
  a4->n128_f64[1] = a6;
  a4[1].n128_f64[0] = a7;
  a4[1].n128_f64[1] = a8;
  a4[2].n128_f64[0] = a9;
  a4[2].n128_u64[1] = a1;
  result = *a2;
  a4[3] = *a2;
  a4[4].n128_u8[0] = a3;
  a4[4].n128_f64[1] = a10;
  return result;
}

double TransitionTileView.Config.init(cornerRadius:icon:prefixText:primaryText:secondaryText:badge:background:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a8;
  v12 = a1[4];
  *(a7 + 88) = a1[5];
  v13 = a1[7];
  *(a7 + 104) = a1[6];
  *(a7 + 120) = v13;
  v14 = *a1;
  *(a7 + 24) = a1[1];
  v15 = a1[3];
  *(a7 + 40) = a1[2];
  *(a7 + 56) = v15;
  *(a7 + 72) = v12;
  v16 = *a5;
  v17 = a5[1];
  v18 = *a6;
  *(a7 + 136) = *(a1 + 16);
  *(a7 + 8) = v14;
  memset(v28, 0, sizeof(v28));
  sub_252372288(v28, &qword_27F4DBCA8);
  v19 = a2[3];
  *(a7 + 176) = a2[2];
  *(a7 + 192) = v19;
  v20 = a2[1];
  *(a7 + 144) = *a2;
  *(a7 + 160) = v20;
  v21 = a3[2];
  v22 = a3[3];
  v23 = *a3;
  *(a7 + 240) = a3[1];
  *(a7 + 256) = v21;
  v24 = a3[4];
  *(a7 + 272) = v22;
  *(a7 + 288) = v24;
  *(a7 + 208) = a2[4];
  *(a7 + 224) = v23;
  memset(v29, 0, sizeof(v29));
  sub_252372288(v29, &qword_27F4DBCA8);
  v25 = a4[3];
  *(a7 + 336) = a4[2];
  *(a7 + 352) = v25;
  *(a7 + 368) = a4[4];
  v26 = a4[1];
  *(a7 + 304) = *a4;
  *(a7 + 320) = v26;
  sub_25241A7A8(0);
  *(a7 + 384) = v16;
  *(a7 + 392) = v17;
  *(a7 + 400) = v18;
  result = 0.0;
  *(a7 + 408) = 0u;
  *(a7 + 424) = 0u;
  return result;
}

uint64_t sub_25241ABF0()
{
  v1 = sub_25268FA00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2526910F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for TransitionTileView() + 28);
  v21 = *(v9 + 64);
  v10 = *(v9 + 48);
  v20[2] = *(v9 + 32);
  v20[3] = v10;
  v11 = *(v9 + 16);
  v20[0] = *v9;
  v20[1] = v11;
  if ((v21 & 0x100) != 0)
  {
    v12 = *(v9 + 48);
    v18[2] = *(v9 + 32);
    v18[3] = v12;
    v19 = *(v9 + 64);
    v13 = *(v9 + 16);
    v18[0] = *v9;
    v18[1] = v13;
  }

  else
  {

    sub_252692F00();
    v14 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v20, &qword_27F4DC120);
    (*(v6 + 8))(v8, v5);
  }

  if (v19 == 1)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D166A8], v1);
    sub_2524230C0(&qword_27F4DC128, MEMORY[0x277D166B0]);
    v15 = sub_25268DB80();
    (*(v2 + 8))(v4, v1);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t TransitionTileView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCB0);
  v3 = MEMORY[0x28223BE20](v83);
  v85 = &v75[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v84 = &v75[-v5];
  v88 = sub_25268F500();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(type metadata accessor for TransitionTileView() + 24);
  v10 = type metadata accessor for Device();
  v89 = *(v9 + v10[13]);
  v11 = (v9 + v10[8]);
  v13 = *v11;
  v12 = v11[1];
  swift_bridgeObjectRetain_n();

  sub_25268F4F0();
  v81 = sub_25268F4E0();
  v90 = v14;
  (*(v6 + 8))(v8, v88);
  v15 = (v9 + v10[16]);
  v16 = v15[1];
  if (v16)
  {
    v80 = *v15;
    v88 = v16;
  }

  else
  {
    v80 = sub_252692C40();
    v88 = v17;
  }

  if (v12)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v79 = v18;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v82 = v19;

  v20 = sub_2526928B0();
  v21 = v91;
  *v91 = v20;
  v21[1] = v22;
  v23 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCB8) + 44));
  sub_25241B5D0(&v92);
  v104 = *(v2 + 144);
  v24 = *(v2 + 96);
  v25 = *(v2 + 128);
  v102 = *(v2 + 112);
  v103 = v25;
  v26 = *(v2 + 64);
  v27 = *(v2 + 96);
  v100 = *(v2 + 80);
  v101 = v27;
  v28 = *(v2 + 32);
  v29 = *(v2 + 64);
  v98 = *(v2 + 48);
  v99 = v29;
  v30 = *(v2 + 32);
  v97[0] = *(v2 + 16);
  v97[1] = v30;
  v31 = v10[7];
  v33 = v10[14];
  v32 = v10[15];
  v34 = v10[18];
  v35 = *(v2 + 128);
  v113 = v102;
  v114 = v35;
  v109 = v98;
  v110 = v26;
  v111 = v100;
  v112 = v24;
  v36 = *v2;
  v37 = *(v9 + v32);
  v76 = v37;
  v38 = (v9 + v31);
  v39 = v38[1];
  v78 = *v38;
  v40 = *(v9 + v33);
  v41 = *(v9 + v34 + 8);
  v77 = *(v9 + v34);
  v86 = v41;
  v87 = v36;
  v115 = *(v2 + 144);
  v107 = v97[0];
  v108 = v28;
  sub_25241CBDC(v97, &v122);

  v42 = v84;
  LOBYTE(v41) = v89;
  sub_25241B9A4(v2, v79, v19, v89, v81, v90, v80, v88, v84);
  type metadata accessor for AnimationModel();
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v43 = sub_252690DF0();
  v44 = &v42[*(v83 + 36)];
  *v44 = v43;
  v44[1] = v45;
  v46 = v85;
  sub_25237153C(v42, v85, &qword_27F4DBCB0);
  v47 = v95;
  v116[2] = v94;
  v116[3] = v95;
  v48 = v96[0];
  v117[0] = v96[0];
  v49 = *(v96 + 13);
  *(v117 + 13) = *(v96 + 13);
  v50 = v92;
  v51 = v93;
  v116[0] = v92;
  v116[1] = v93;
  v23[2] = v94;
  v23[3] = v47;
  v23[4] = v48;
  *(v23 + 77) = v49;
  *v23 = v50;
  v23[1] = v51;
  *(&v118[6] + 8) = v113;
  *(&v118[5] + 8) = v112;
  *(&v118[2] + 8) = v109;
  *(&v118[1] + 8) = v108;
  *(&v118[7] + 8) = v114;
  *&v118[0] = v87;
  *(&v118[8] + 1) = v115;
  *(&v118[3] + 8) = v110;
  *(&v118[4] + 8) = v111;
  *(v118 + 8) = v107;
  LOBYTE(v119) = v41;
  BYTE1(v119) = v37;
  *(&v119 + 2) = v105;
  WORD3(v119) = v106;
  v53 = v77;
  v52 = v78;
  *(&v119 + 1) = v78;
  *&v120 = v39;
  *(&v120 + 1) = v40;
  *&v121 = v77;
  *(&v121 + 1) = v86;
  v54 = v118[5];
  v23[10] = v118[4];
  v23[11] = v54;
  v55 = v118[7];
  v23[12] = v118[6];
  v23[13] = v55;
  v56 = v118[1];
  v23[6] = v118[0];
  v23[7] = v56;
  v57 = v118[3];
  v23[8] = v118[2];
  v23[9] = v57;
  v58 = v121;
  v23[16] = v120;
  v23[17] = v58;
  v59 = v119;
  v23[14] = v118[8];
  v23[15] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCC8);
  sub_25237153C(v46, v23 + *(v60 + 64), &qword_27F4DBCB0);
  sub_25237153C(v116, &v122, &qword_27F4DBCD0);
  sub_25241CC14(v118, &v122);
  sub_252372288(v42, &qword_27F4DBCB0);
  sub_252372288(v46, &qword_27F4DBCB0);
  v128 = v112;
  v129 = v113;
  v130 = v114;
  v124 = v108;
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v122 = v87;
  v131 = v115;
  v123 = v107;
  v132 = v89;
  v133 = v76;
  v134 = v105;
  v135 = v106;
  v136 = v52;
  v137 = v39;
  v138 = v40;
  v139 = v53;
  v140 = v86;
  sub_25241CC4C(&v122);
  v141[2] = v94;
  v141[3] = v95;
  v142[0] = v96[0];
  *(v142 + 13) = *(v96 + 13);
  v141[0] = v92;
  v141[1] = v93;
  sub_252372288(v141, &qword_27F4DBCD0);

  sub_2526914E0();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCD8);
  v70 = v91 + *(v69 + 36);
  v71 = *(sub_252691640() + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_252691260();
  (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
  *v70 = v62;
  *(v70 + 1) = v64;
  *(v70 + 2) = v66;
  *(v70 + 3) = v68;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0);
  *&v70[*(result + 36)] = 256;
  return result;
}

uint64_t type metadata accessor for TransitionTileView()
{
  result = qword_27F4DBCF8;
  if (!qword_27F4DBCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_25241B5D0@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + 408))
  {
    v4 = v1 + *(type metadata accessor for TransitionTileView() + 24);
    if (*(v4 + *(type metadata accessor for Device() + 52)) == 1)
    {
      v5 = *(v1 + 8);
      LOBYTE(v13) = 0;
      LOBYTE(v19[0]) = 0;
      LOBYTE(v21) = 1;
      *(&v21 + 1) = v5;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = swift_getKeyPath();
      *&v25[25] = 0;
    }

    else
    {
      v7 = *(v1 + 8);
      LOBYTE(v13) = 0;
      LOBYTE(v19[0]) = 1;
      LOBYTE(v21) = 2;
      *(&v21 + 1) = v7;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = swift_getKeyPath();
      *&v25[25] = 256;
    }

    sub_252423218();
    sub_252691470();
    v23 = v11[2];
    v24 = v11[3];
    *v25 = v12[0];
    *&v25[11] = *(v12 + 11);
    v21 = v11[0];
    v22 = v11[1];
    v25[27] = 0;
    sub_25237153C(v11, v19, &qword_27F4DC148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC148);
    sub_252423194();
    sub_252691470();
    v23 = v15;
    v24 = v16;
    *v25 = *v17;
    *&v25[12] = *&v17[12];
    v21 = v13;
    v22 = v14;
    v18 = 0;
    v25[28] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130);
    sub_252423108();
    sub_252691470();
    sub_252372288(v11, &qword_27F4DC148);
    goto LABEL_12;
  }

  if (*(v1 + 408) == 1)
  {
    v3 = v1 + *(type metadata accessor for TransitionTileView() + 24);
    if (*(v3 + *(type metadata accessor for Device() + 52)) == 1)
    {
      sub_252692330();
    }

    else
    {
      v6 = [objc_opt_self() systemGray5Color];
      sub_252692240();
    }

    v18 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC148);
    sub_252423194();
    sub_252691470();
    v23 = v15;
    v24 = v16;
    *v25 = *v17;
    *&v25[12] = *&v17[12];
    v21 = v13;
    v22 = v14;
    LOBYTE(v11[0]) = 0;
    v25[28] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130);
    sub_252423108();
    sub_252691470();

LABEL_12:
    v23 = v19[2];
    v24 = v19[3];
    *v25 = *v20;
    *&v25[13] = *&v20[13];
    v21 = v19[0];
    v22 = v19[1];
    goto LABEL_13;
  }

  LOBYTE(v13) = 1;
  *&v19[0] = sub_252692310();
  v20[28] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130);
  sub_252423108();
  sub_252691470();
LABEL_13:
  v8 = v24;
  a1[2] = v23;
  a1[3] = v8;
  a1[4] = *v25;
  *(a1 + 77) = *&v25[13];
  result = *&v21;
  v10 = v22;
  *a1 = v21;
  a1[1] = v10;
  return result;
}

uint64_t sub_25241B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v138 = a7;
  v139 = a8;
  v143 = a5;
  v144 = a6;
  LODWORD(v149) = a4;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC028);
  MEMORY[0x28223BE20](v140);
  v14 = &v134 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC030);
  MEMORY[0x28223BE20](v134);
  v16 = (&v134 - v15);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC038);
  v17 = MEMORY[0x28223BE20](v141);
  v136 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v134 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC040);
  v145 = *(v20 - 8);
  v146 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v134 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC048);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v148 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v147 = &v134 - v26;
  v27 = *(a1 + 168);
  v28 = *(a1 + 200);
  v243 = *(a1 + 184);
  v244 = v28;
  v245 = *(a1 + 216);
  v29 = *(a1 + 152);
  v242[1] = v27;
  v242[0] = v29;
  v248 = v243;
  v249 = v28;
  v250 = v245;
  v246 = v29;
  v247 = v27;
  v30 = *(&v243 + 1);
  v142 = v22;
  v135 = v16;
  if (*(&v243 + 1))
  {
    if (v250 == 1)
    {
      v31 = 56;
      if (v149)
      {
        v31 = 48;
      }

      v32 = *(&v246 + v31);

      v34 = *(&v246 + 1);
      v33 = *&v246;
      v36 = *(&v247 + 1);
      v35 = *&v247;
      sub_25237153C(v242, &v231, &qword_27F4DBCA8);

      v37 = v30;
      v251.origin.x = v33;
      v251.origin.y = v34;
      v251.size.width = v35;
      v251.size.height = v36;
      CGRectGetWidth(v251);
      sub_252692930();
      sub_2526909C0();
      LOBYTE(v186) = 0;
      *&v231 = a2;
      *(&v231 + 1) = a3;
      *&v232 = v32;
      *(&v232 + 1) = v37;
      BYTE2(v237) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
      sub_252422A08();
      sub_252422A94();
      sub_252691470();
    }

    else
    {
      sub_25237153C(v242, &v231, &qword_27F4DBCA8);

      v38 = sub_25241ABF0();
      v233 = v248;
      v234 = v249;
      v235 = v250;
      v232 = v247;
      v231 = v246;
      LOBYTE(v175) = 1;
      *&v236 = a2;
      *(&v236 + 1) = a3;
      LOBYTE(v237) = v149 & 1;
      BYTE1(v237) = v38 & 1;
      BYTE2(v237) = 1;
      sub_25241A6E4(&v246, &v186);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
      sub_252422A08();
      sub_252422A94();
      sub_252691470();
      v34 = *(&v246 + 1);
      v33 = *&v246;
      v36 = *(&v247 + 1);
      v35 = *&v247;
    }

    v179 = v172;
    *v180 = v173[0];
    *&v180[15] = *(v173 + 15);
    v175 = v168;
    v176 = v169;
    v177 = v170;
    v178 = v171;
    v252.origin.x = v33;
    v252.origin.y = v34;
    v252.size.width = v35;
    v252.size.height = v36;
    MinX = CGRectGetMinX(v252);
    v253.origin.x = v33;
    v253.origin.y = v34;
    v253.size.width = v35;
    v253.size.height = v36;
    MinY = CGRectGetMinY(v253);
    v254.origin.x = v33;
    v254.origin.y = v34;
    v254.size.width = v35;
    v254.size.height = v36;
    CGRectGetHeight(v254);
    sub_252692920();
    sub_2526909C0();
    sub_252372288(v242, &qword_27F4DBCA8);
    v190 = v179;
    v191 = *v180;
    *&v192 = *&v180[16];
    v186 = v175;
    v187 = v176;
    v188 = v177;
    v189 = v178;
    *(&v192 + 1) = MinX;
    *v193 = MinY;
    *(&v193[2] + 8) = v163;
    *(&v193[1] + 8) = v162;
    *(v193 + 8) = v161;
    CGPointMake(&v186);
    v239 = v193[1];
    v240 = v193[2];
    v241 = *&v193[3];
    v235 = v190;
    v236 = v191;
    v238 = v193[0];
    v237 = v192;
    v231 = v186;
    v232 = v187;
    v234 = v189;
    v233 = v188;
  }

  else
  {
    sub_2524229DC(&v231);
  }

  v41 = *(a1 + 280);
  v222 = *(a1 + 296);
  v42 = *(a1 + 248);
  v220 = *(a1 + 264);
  v221 = v41;
  v43 = *(a1 + 232);
  v219 = v42;
  v218 = v43;
  if (v222 == 1)
  {
    v44 = 56;
    if (v149)
    {
      v44 = 48;
    }

    v45 = *(&v218 + v44);

    v46 = *(&v220 + 1);
    v48 = *(&v218 + 1);
    v47 = *&v218;
    v50 = *(&v219 + 1);
    v49 = *&v219;
    v51 = v144;

    v52 = v46;
    v255.origin.x = v47;
    v255.origin.y = v48;
    v255.size.width = v49;
    v255.size.height = v50;
    CGRectGetWidth(v255);
    sub_252692930();
    sub_2526909C0();
    LOBYTE(v175) = 0;
    *&v186 = v143;
    *(&v186 + 1) = v51;
    *&v187 = v45;
    *(&v187 + 1) = v52;
    BYTE2(v192) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
    sub_252422A08();
    sub_252422A94();
    sub_252691470();
  }

  else
  {
    v53 = v144;

    v54 = sub_25241ABF0();
    v188 = v220;
    v189 = v221;
    v190 = v222;
    v186 = v218;
    v187 = v219;
    LOBYTE(v168) = 1;
    *&v191 = v143;
    *(&v191 + 1) = v53;
    LOBYTE(v192) = v149 & 1;
    BYTE1(v192) = v54 & 1;
    BYTE2(v192) = 1;
    sub_25241A6E4(&v218, &v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
    sub_252422A08();
    sub_252422A94();
    sub_252691470();
    v48 = *(&v218 + 1);
    v47 = *&v218;
    v50 = *(&v219 + 1);
    v49 = *&v219;
  }

  v201 = v216;
  v202[0] = *v217;
  *(v202 + 15) = *&v217[15];
  v197 = v212;
  v198 = v213;
  v200 = v215;
  v199 = v214;
  v256.origin.x = v47;
  v256.origin.y = v48;
  v256.size.width = v49;
  v256.size.height = v50;
  v55 = CGRectGetMinX(v256);
  v257.origin.x = v47;
  v257.origin.y = v48;
  v257.size.width = v49;
  v257.size.height = v50;
  v56 = CGRectGetMinY(v257);
  v258.origin.x = v47;
  v258.origin.y = v48;
  v258.size.width = v49;
  v258.size.height = v50;
  CGRectGetHeight(v258);
  sub_252692920();
  v57 = 1;
  sub_2526909C0();
  v58 = (a1 + 312);
  v59 = *(a1 + 360);
  v205 = *(a1 + 344);
  v206 = v59;
  v207 = *(a1 + 376);
  v60 = *(a1 + 312);
  v204 = *(a1 + 328);
  v203 = v60;
  v209 = v205;
  v210 = v59;
  v211 = v207;
  v208.size = v204;
  v208.origin = v60;
  v61 = *(&v205 + 1);
  if (*(&v205 + 1))
  {
    v62 = *(a1 + 360);
    v230[2] = *(a1 + 344);
    v230[3] = v62;
    v230[4] = *(a1 + 376);
    v63 = *v58;
    v230[1] = *(a1 + 328);
    v230[0] = v63;
    v64 = *(a1 + 392);
    if (v64 && (v65 = *(a1 + 400), v66 = a1 + *(type metadata accessor for TransitionTileView() + 24), v67 = (v66 + *(type metadata accessor for Device() + 72)), (v68 = v67[1]) != 0))
    {
      v144 = v14;
      v69 = *v67;
      sub_25237153C(&v203, &v186, &qword_27F4DBCA8);
      sub_252420C84(v64);
      v70 = sub_2526911D0();
      v71 = v135;
      *v135 = v70;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0D8) + 44);
      v73 = v149 & 1;
      v149 = v65;
      sub_25241CC7C(v138, v139, v230, v73, v69, v68, v64, v65, v72);
      origin = v208.origin;
      size = v208.size;
      v76 = CGRectGetMinX(v208);
      v259.origin = origin;
      v259.size = size;
      v77 = CGRectGetMinY(v259);
      v78 = (v71 + *(v134 + 36));
      *v78 = v76;
      v78[1] = v77;
      v260.origin = origin;
      v260.size = size;
      v79 = CGRectGetMinX(v260);
      v80 = sub_25241ABF0();
      v81 = 10.0;
      if (v80)
      {
        v81 = 12.0;
      }

      v82 = *&v209 - v79 - v81;
      v261.origin = origin;
      v261.size = size;
      CGRectGetHeight(v261);
      sub_252692930();
      if (v82 < 0.0)
      {
        sub_252692F00();
        v83 = sub_2526919C0();
        sub_252690570();
      }

      sub_252690D70();
      v84 = v136;
      sub_2523714D4(v71, v136, &qword_27F4DC030);
      v85 = (v84 + *(v141 + 36));
      v86 = v228;
      v85[4] = v227;
      v85[5] = v86;
      v85[6] = v229;
      v87 = v224;
      *v85 = v223;
      v85[1] = v87;
      v88 = v226;
      v85[2] = v225;
      v85[3] = v88;
      v89 = v137;
      sub_2523714D4(v84, v137, &qword_27F4DC038);
      sub_25237153C(v89, v144, &qword_27F4DC038);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC078);
      sub_252422AE8();
      sub_252422C2C();
      v90 = v142;
      sub_252691470();
      sub_25241A7A8(v64);
      sub_252372288(&v203, &qword_27F4DBCA8);
      sub_252372288(v89, &qword_27F4DC038);
    }

    else
    {
      if (v211 == 1)
      {
        v91 = 56;
        if (v149)
        {
          v91 = 48;
        }

        v92 = *(&v208.origin.x + v91);

        y = v208.origin.y;
        x = v208.origin.x;
        height = v208.size.height;
        width = v208.size.width;
        sub_25237153C(&v203, &v186, &qword_27F4DBCA8);
        v97 = v139;

        v98 = v61;
        v262.origin.x = x;
        v262.origin.y = y;
        v262.size.width = width;
        v262.size.height = height;
        CGRectGetWidth(v262);
        sub_252692930();
        sub_2526909C0();
        LOBYTE(v175) = 0;
        *&v186 = v138;
        *(&v186 + 1) = v97;
        *&v187 = v92;
        *(&v187 + 1) = v98;
        BYTE2(v192) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
        sub_252422A08();
        sub_252422A94();
        sub_252691470();
      }

      else
      {
        sub_25237153C(&v203, &v186, &qword_27F4DBCA8);
        v100 = v139;

        v101 = sub_25241ABF0();
        v102 = *(a1 + 360);
        v188 = *(a1 + 344);
        v189 = v102;
        v190 = *(a1 + 376);
        v103 = *(a1 + 328);
        v186 = *v58;
        v187 = v103;
        LOBYTE(v168) = 1;
        *&v191 = v138;
        *(&v191 + 1) = v100;
        LOBYTE(v192) = v149 & 1;
        BYTE1(v192) = v101 & 1;
        BYTE2(v192) = 1;
        sub_25241A6E4(&v208, &v175);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050);
        sub_252422A08();
        sub_252422A94();
        sub_252691470();
        y = v208.origin.y;
        x = v208.origin.x;
        height = v208.size.height;
        width = v208.size.width;
      }

      v90 = v142;
      v172 = v165;
      v173[0] = v166[0];
      *(v173 + 15) = *(v166 + 15);
      v168 = v161;
      v169 = v162;
      v170 = v163;
      v171 = v164;
      v263.origin.x = x;
      v263.origin.y = y;
      v263.size.width = width;
      v263.size.height = height;
      v104 = CGRectGetMinX(v263);
      v264.origin.x = x;
      v264.origin.y = y;
      v264.size.width = width;
      v264.size.height = height;
      v105 = CGRectGetMinY(v264);
      v265.origin.x = x;
      v265.origin.y = y;
      v265.size.width = width;
      v265.size.height = height;
      CGRectGetHeight(v265);
      sub_252692920();
      sub_2526909C0();
      v106 = v169;
      v186 = v168;
      v187 = v169;
      *&v192 = *&v173[1];
      v108 = v172;
      v107 = v173[0];
      v190 = v172;
      v191 = v173[0];
      v109 = v170;
      v110 = v171;
      v188 = v170;
      v189 = v171;
      *(&v192 + 1) = v104;
      *v193 = v105;
      *v14 = v168;
      *(v14 + 1) = v106;
      v111 = v193[1];
      v112 = v193[2];
      *(v14 + 20) = *&v193[3];
      *(v14 + 8) = v111;
      *(v14 + 9) = v112;
      v113 = v193[0];
      *(v14 + 6) = v192;
      *(v14 + 7) = v113;
      *(v14 + 4) = v108;
      *(v14 + 5) = v107;
      *(v14 + 2) = v109;
      *(v14 + 3) = v110;
      swift_storeEnumTagMultiPayload();
      sub_25237153C(&v186, &v175, &qword_27F4DC078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC078);
      sub_252422AE8();
      sub_252422C2C();
      sub_252691470();
      sub_252372288(&v203, &qword_27F4DBCA8);
      sub_252372288(&v186, &qword_27F4DC078);
    }

    v99 = v147;
    sub_2523714D4(v90, v147, &qword_27F4DC040);
    v57 = 0;
  }

  else
  {
    v99 = v147;
  }

  (*(v145 + 56))(v99, v57, 1, v146);
  v158 = v239;
  v159 = v240;
  v160 = v241;
  v154 = v235;
  v155 = v236;
  v156 = v237;
  v157 = v238;
  v150 = v231;
  v151 = v232;
  v152 = v233;
  v153 = v234;
  v114 = v148;
  sub_25237153C(v99, v148, &qword_27F4DC048);
  v115 = v159;
  v166[3] = v158;
  v166[4] = v159;
  v116 = v154;
  v117 = v155;
  v165 = v154;
  v166[0] = v155;
  v119 = v156;
  v118 = v157;
  v166[1] = v156;
  v166[2] = v157;
  v120 = v150;
  v121 = v151;
  v161 = v150;
  v162 = v151;
  v123 = v152;
  v122 = v153;
  v163 = v152;
  v164 = v153;
  *(a9 + 128) = v158;
  *(a9 + 144) = v115;
  *(a9 + 64) = v116;
  *(a9 + 80) = v117;
  *(a9 + 96) = v119;
  *(a9 + 112) = v118;
  v167 = v160;
  *(a9 + 160) = v160;
  *a9 = v120;
  *(a9 + 16) = v121;
  *(a9 + 32) = v123;
  *(a9 + 48) = v122;
  *&v173[1] = *&v202[1];
  v172 = v201;
  v173[0] = v202[0];
  v168 = v197;
  v169 = v198;
  v170 = v199;
  v171 = v200;
  *(&v173[1] + 1) = v55;
  *v174 = v56;
  *(&v174[2] + 8) = v196;
  *(&v174[1] + 8) = v195;
  *(v174 + 8) = v194;
  v124 = v197;
  v125 = v198;
  v126 = v200;
  *(a9 + 200) = v199;
  *(a9 + 184) = v125;
  *(a9 + 168) = v124;
  v127 = v172;
  *(a9 + 248) = v173[0];
  *(a9 + 232) = v127;
  *(a9 + 216) = v126;
  v128 = v173[1];
  v129 = v174[0];
  v130 = v174[1];
  v131 = v174[2];
  *(a9 + 328) = *&v174[3];
  *(a9 + 296) = v130;
  *(a9 + 312) = v131;
  *(a9 + 264) = v128;
  *(a9 + 280) = v129;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC068);
  sub_25237153C(v114, a9 + *(v132 + 64), &qword_27F4DC048);
  sub_25237153C(&v161, &v186, &qword_27F4DC070);
  sub_25237153C(&v168, &v186, &qword_27F4DC078);
  sub_252372288(v99, &qword_27F4DC048);
  sub_252372288(v114, &qword_27F4DC048);
  v179 = v201;
  *v180 = v202[0];
  *&v180[16] = *&v202[1];
  v175 = v197;
  v176 = v198;
  v177 = v199;
  v178 = v200;
  v181 = v55;
  v182 = v56;
  v185 = v196;
  v184 = v195;
  v183 = v194;
  sub_252372288(&v175, &qword_27F4DC078);
  v193[1] = v158;
  v193[2] = v159;
  *&v193[3] = v160;
  v190 = v154;
  v191 = v155;
  v192 = v156;
  v193[0] = v157;
  v186 = v150;
  v187 = v151;
  v188 = v152;
  v189 = v153;
  return sub_252372288(&v186, &qword_27F4DC070);
}

uint64_t sub_25241CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v85 = a8;
  v84 = a7;
  v99 = a5;
  v100 = a6;
  v96 = a3;
  v103 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v83 - v13;
  v14 = sub_25268E050();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF0);
  MEMORY[0x28223BE20](v87);
  v19 = &v83 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E0);
  v20 = MEMORY[0x28223BE20](v94);
  v102 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v93 = &v83 - v23;
  MEMORY[0x28223BE20](v22);
  v104 = &v83 - v24;
  v25 = *(v15 + 104);
  v92 = *MEMORY[0x277D15250];
  v91 = v15 + 104;
  v90 = v25;
  v25(v17);
  v89 = sub_2524230C0(&qword_27F4DBD80, MEMORY[0x277D15260]);
  v26 = sub_25268DB80();
  v27 = *(v15 + 8);
  v95 = v17;
  v97 = v15 + 8;
  v98 = v14;
  v88 = v27;
  v27(v17, v14);
  LODWORD(v101) = a4;
  v111 = a1;
  v112 = a2;

  if (v26)
  {
    v28 = 32;
    v29 = 0xE100000000000000;
  }

  else
  {
    v28 = 548913696;
    v29 = 0xA400000000000000;
  }

  MEMORY[0x2530A4800](v28, v29);
  sub_252404480();
  v30 = sub_252691D50();
  v32 = v31;
  v34 = v33;
  v35 = v96;
  v36 = *(v96 + 40);
  sub_252691BE0();
  v37 = sub_252691D00();
  v39 = v38;
  v41 = v40;
  v86 = v42;

  sub_2524228D8(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v44 = &v19[*(v87 + 36)];
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF8) + 28);
  v46 = *MEMORY[0x277CE0B28];
  v47 = sub_252691CB0();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  *v19 = v37;
  *(v19 + 1) = v39;
  v19[16] = v41 & 1;
  *(v19 + 3) = v86;
  *(v19 + 4) = KeyPath;
  *(v19 + 5) = 1;
  v48 = v101;
  v49 = 56;
  if (v101)
  {
    v49 = 48;
  }

  v19[48] = 0;
  v50 = *(v35 + v49);
  v51 = swift_getKeyPath();
  v52 = v93;
  sub_2523714D4(v19, v93, &qword_27F4DBFF0);
  v53 = (v52 + *(v94 + 36));
  *v53 = v51;
  v53[1] = v50;
  sub_2523714D4(v52, v104, &qword_27F4DC0E0);
  v54 = v95;
  v55 = v98;
  v90(v95, v92, v98);

  LOBYTE(v50) = sub_25268DB80();
  v88(v54, v55);
  if ((v50 & 1) == 0)
  {

    sub_2526923D0();
    v63 = v83;
    sub_252691310();
    v64 = sub_252691340();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = sub_252692400();

    sub_252372288(v63, &qword_27F4DBD48);
    if (v48)
    {
      v66 = v84;
    }

    else
    {
      v66 = v85;
    }

    v67 = swift_getKeyPath();

    v68 = sub_252691BB0();
    v69 = swift_getKeyPath();
    v105 = v65;
    v106 = v67;
    v107 = v66;
    v108 = v69;
    v109 = v68;
    v110 = 0;
    goto LABEL_18;
  }

  v57 = v99;
  v56 = v100;
  if ((v99 != 0xD00000000000001DLL || 0x80000002526AEB00 != v100) && (sub_2526933B0() & 1) == 0 && (v57 != 0xD000000000000020 || 0x80000002526AEB20 != v56) && (sub_2526933B0() & 1) == 0)
  {

    sub_2526923D0();
    v76 = v83;
    sub_252691310();
    v77 = sub_252691340();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = sub_252692400();

    sub_252372288(v76, &qword_27F4DBD48);
    if (v48)
    {
      v79 = v84;
    }

    else
    {
      v79 = v85;
    }

    v80 = swift_getKeyPath();

    v81 = sub_252691BB0();
    v82 = swift_getKeyPath();
    v105 = v78;
    v106 = v80;
    v107 = v79;
    v108 = v82;
    v109 = v81;
    v110 = 1;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E8);
    sub_252422E54();
    sub_252691470();
    v59 = v113;
    v60 = v114;
    v61 = v115;
    v62 = v116;
    v58 = v111;
    v101 = v112;
    sub_252422FC4();
    goto LABEL_19;
  }

  v58 = 0;
  v101 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = -1;
LABEL_19:
  v70 = v104;
  v71 = v102;
  sub_25237153C(v104, v102, &qword_27F4DC0E0);
  v72 = v103;
  sub_25237153C(v71, v103, &qword_27F4DC0E0);
  v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC118) + 48);
  v74 = v101;
  sub_25242302C(v58, v101, v59, v60, v61, v62);
  sub_252423044(v58, v74, v59, v60, v61, v62);
  *v73 = v58;
  *(v73 + 8) = v74;
  *(v73 + 16) = v59;
  *(v73 + 24) = v60;
  *(v73 + 32) = v61;
  *(v73 + 40) = v62;
  sub_252372288(v70, &qword_27F4DC0E0);
  sub_252423044(v58, v74, v59, v60, v61, v62);
  return sub_252372288(v71, &qword_27F4DC0E0);
}

uint64_t sub_25241D5CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v105 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD50);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v95 = (v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v94 = v90 - v16;
  v17 = sub_25268E050();
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x28223BE20](v17);
  v97 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD58);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v102 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD60);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = (v90 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD68);
  MEMORY[0x28223BE20](v27);
  v29 = v90 - v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD70);
  v30 = MEMORY[0x28223BE20](v96);
  v100 = v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v90 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v90 - v35;
  *v26 = sub_252692920();
  v26[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD78);
  sub_25241E0F4(a1, a2, v26 + *(v38 + 44), a4, a5);
  v39 = *a1;
  type metadata accessor for AnimationModel();
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v40 = sub_252690DF0();
  v41 = v26 + *(v24 + 44);
  *v41 = v40;
  *(v41 + 1) = v42;
  *(v41 + 2) = v39;
  v43 = a1;
  v41[24] = 1;
  v44 = *(a1 + 8);
  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  v47 = *(a1 + 32);
  v48 = *(a1 + 49);
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v26, v29, &qword_27F4DBD60);
  v49 = &v29[*(v27 + 36)];
  v50 = v119;
  *(v49 + 4) = v118;
  *(v49 + 5) = v50;
  *(v49 + 6) = v120;
  v51 = v115;
  *v49 = v114;
  *(v49 + 1) = v51;
  v52 = v117;
  *(v49 + 2) = v116;
  *(v49 + 3) = v52;
  *&v52 = v44;
  *&v51 = v45;
  v53 = v46;
  v54 = v47;
  MidX = CGRectGetMidX(*(&v51 - 8));
  v121.origin.x = v44;
  v121.origin.y = v45;
  v121.size.width = v46;
  v121.size.height = v47;
  MidY = CGRectGetMidY(v121);
  sub_2523714D4(v29, v34, &qword_27F4DBD68);
  v57 = &v34[*(v96 + 36)];
  *v57 = MidX;
  v57[1] = MidY;
  sub_2523714D4(v34, v36, &qword_27F4DBD70);
  if (v48 == 2)
  {
    v58 = 16.0;
  }

  else
  {
    v58 = 4.0;
  }

  if (v48 == 2)
  {
    v59 = -15.0;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = v97;
  v61 = v98;
  v62 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277D15250], v99);
  sub_2524230C0(&qword_27F4DBD80, MEMORY[0x277D15260]);
  v63 = sub_25268DB80();
  (*(v61 + 8))(v60, v62);
  if (v63 & 1) != 0 && (v64 = *(v43 + 184)) != 0 && ((v65 = *(v43 + 176), v65 == 0xD00000000000001DLL) && v64 == 0x80000002526AEB00 || (sub_2526933B0() & 1) != 0 || v65 == 0xD000000000000020 && v64 == 0x80000002526AEB20 || (sub_2526933B0()))
  {
    if (v48 == 2)
    {
      v66 = sub_2526928C0();
    }

    else
    {
      v66 = sub_2526928E0();
    }

    v69 = v92;
    v70 = v95;
    *v95 = v66;
    v70[1] = v67;

    sub_2526923D0();
    v71 = *(v43 + 144);
    v90[3] = v43;
    v91 = v36;
    if (v71)
    {
      sub_252691330();
    }

    else
    {
      sub_252691310();
    }

    LODWORD(v99) = v48 != 2;
    v72 = sub_252691340();
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
    v73 = sub_252692400();

    sub_252372288(v69, &qword_27F4DBD48);
    v74 = sub_252692330();
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD90) + 44);
    v75 = [objc_opt_self() systemOrangeColor];
    v76 = sub_252692240();
    v77 = sub_252691B00();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_252691B50();
    sub_252372288(v78, &qword_27F4DBD40);
    KeyPath = swift_getKeyPath();
    sub_2526922F0();
    v81 = sub_252692350();

    *&v106 = v73;
    *(&v106 + 1) = v74;
    *&v107 = v76;
    *(&v107 + 1) = KeyPath;
    *&v108 = v79;
    *(&v108 + 1) = v81;
    v109 = xmmword_252697220;
    *&v110 = 0x4000000000000000;
    *(&v110 + 1) = v58;
    v111 = v59;
    MEMORY[0x28223BE20](v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBDA0);
    sub_252421768();
    sub_2524219F0();
    v83 = v95;
    sub_252691D70();
    v112[3] = v109;
    v112[4] = v110;
    v113 = v111;
    v112[0] = v106;
    v112[1] = v107;
    v112[2] = v108;
    sub_252372288(v112, &qword_27F4DBD98);
    v84 = v94;
    sub_252312084(v83, v94);
    v68 = v101;
    sub_252312084(v84, v101);
    (*(v103 + 56))(v68, 0, 1, v104);
    v36 = v91;
  }

  else
  {
    v68 = v101;
    (*(v103 + 56))(v101, 1, 1, v104);
  }

  v85 = v100;
  sub_25237153C(v36, v100, &qword_27F4DBD70);
  v86 = v102;
  sub_252311FA4(v68, v102);
  v87 = v105;
  sub_25237153C(v85, v105, &qword_27F4DBD70);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD88);
  sub_252311FA4(v86, v87 + *(v88 + 48));
  sub_252312014(v68);
  sub_252372288(v36, &qword_27F4DBD70);
  sub_252312014(v86);
  return sub_252372288(v85, &qword_27F4DBD70);
}

uint64_t sub_25241E0F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v164) = a2;
  v176 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v8 - 8);
  v135 = &v134 - v9;
  v169 = sub_25268DBA0();
  v145 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v144 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE10);
  MEMORY[0x28223BE20](v173);
  v175 = (&v134 - v11);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE18);
  MEMORY[0x28223BE20](v166);
  v167 = &v134 - v12;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE20);
  MEMORY[0x28223BE20](v174);
  v168 = &v134 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE28);
  MEMORY[0x28223BE20](v146);
  v149 = (&v134 - v14);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE30);
  MEMORY[0x28223BE20](v147);
  v16 = &v134 - v15;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE38);
  v17 = MEMORY[0x28223BE20](v162);
  v148 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v151 = &v134 - v19;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE40);
  MEMORY[0x28223BE20](v160);
  v161 = &v134 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE48);
  v21 = MEMORY[0x28223BE20](v155);
  v141 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v142 = &v134 - v23;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE50);
  MEMORY[0x28223BE20](v153);
  v154 = &v134 - v24;
  v25 = sub_2526923E0();
  v139 = *(v25 - 8);
  v140 = v25;
  MEMORY[0x28223BE20](v25);
  v138 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v134 - v28;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE58);
  v30 = MEMORY[0x28223BE20](v157);
  v136 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v143 = &v134 - v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE60);
  MEMORY[0x28223BE20](v158);
  v34 = &v134 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE68);
  MEMORY[0x28223BE20](v165);
  v159 = &v134 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE70);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v172 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v179 = &v134 - v39;
  LODWORD(v178) = *(a1 + 144);
  v152 = v34;
  v150 = v16;
  v171 = (v178 & 1) == 0 || (*(a1 + 145) & 1) == 0;
  v177 = *(a1 + 48);
  v156 = *(a1 + 49);
  v163 = *(a1 + 72);
  v40 = *(a1 + 96);
  v41 = *(a1 + 136);
  v213 = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  v211 = 0;
  *&v212[7] = *(a1 + 56);
  sub_25237153C(&v213, v192, &qword_27F4DBE78);
  sub_252692920();
  v137 = a4;
  sub_2526909C0();
  if (v40)
  {
    if (v178)
    {

      if ((v164 & 1) == 0)
      {
LABEL_8:
        sub_2526923F0();
        sub_252691320();
        v42 = sub_252691340();
        (*(*(v42 - 8) + 56))(v29, 0, 1, v42);
        v43 = sub_252692400();

        sub_252372288(v29, &qword_27F4DBD48);
        v44 = v149;
        v45 = (v149 + *(v146 + 36));
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF50) + 28);
        v47 = *MEMORY[0x277CE1048];
        v48 = sub_252692410();
        (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
        *v45 = swift_getKeyPath();
        *v44 = v43;
        if (v156 == 2)
        {
          v49 = v163;
          v50 = v150;
          if (qword_27F4DA9B0 != -1)
          {
            swift_once();
          }

          v51 = &qword_27F4FB3C8;
        }

        else
        {
          v49 = v163;
          v50 = v150;
          if (qword_27F4DA9A8 != -1)
          {
            swift_once();
          }

          v51 = &qword_27F4FB3C0;
        }

        v67 = *v51;

        v68 = swift_getKeyPath();
        sub_2523714D4(v44, v50, &qword_27F4DBE28);
        v69 = (v50 + *(v147 + 36));
        *v69 = v68;
        v69[1] = v67;
        LOBYTE(v69) = *(a1 + 145);
        v70 = v159;
        if (v69)
        {
          if (v178)
          {
            v49 = v213;
          }

          else
          {
            v49 = *(&v213 + 1);
          }
        }

        v89 = v148;
        sub_2523714D4(v50, v148, &qword_27F4DBE30);
        *(v89 + *(v162 + 36)) = v49;
        v90 = &qword_27F4DBE38;
        v91 = v151;
        sub_2523714D4(v89, v151, &qword_27F4DBE38);
        sub_25237153C(v91, v161, &qword_27F4DBE38);
        swift_storeEnumTagMultiPayload();
        sub_252421C18();
        sub_2524221D8();

        sub_252691470();
        v92 = v91;
LABEL_39:
        sub_252372288(v92, v90);
        sub_25237153C(v70, v167, &qword_27F4DBE68);
        swift_storeEnumTagMultiPayload();
        sub_252421B8C();
        sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080]);
        v119 = v168;
        sub_252691470();
        sub_25237153C(v119, v175, &qword_27F4DBE20);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80);
        sub_252421AD0();
        sub_252422400();
        v88 = v179;
        sub_252691470();
        sub_252372288(v119, &qword_27F4DBE20);
        sub_252372288(v70, &qword_27F4DBE68);
        goto LABEL_40;
      }
    }

    else
    {

      if ((v164 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (a5 >= 24.0)
    {
      sub_2526923F0();
      sub_252691320();
      v71 = sub_252691340();
      (*(*(v71 - 8) + 56))(v29, 0, 1, v71);
      v164 = sub_252692400();

      sub_252372288(v29, &qword_27F4DBD48);
      v72 = sub_252691B70();
      v73 = swift_getKeyPath();
      v74 = v163;
      if (*(a1 + 145))
      {
        if (v178)
        {
          v74 = v213;
        }

        else
        {
          v74 = *(&v213 + 1);
        }
      }

      v113 = swift_getKeyPath();
      v114 = v141;
      v115 = (v141 + *(v155 + 36));
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
      v117 = *MEMORY[0x277CDF3C0];
      v118 = sub_252690850();
      (*(*(v118 - 8) + 104))(v115 + v116, v117, v118);
      *v115 = v113;
      *v114 = v164;
      v114[1] = v73;
      v114[2] = v72;
      v114[3] = v74;
      v110 = &qword_27F4DBE48;
      v111 = v142;
      sub_2523714D4(v114, v142, &qword_27F4DBE48);
      sub_25237153C(v111, v154, &qword_27F4DBE48);
      swift_storeEnumTagMultiPayload();
      sub_252421CA4();
      sub_252421FB0();

      v112 = v152;
    }

    else
    {
      sub_2526923F0();
      sub_252691320();
      v52 = sub_252691340();
      (*(*(v52 - 8) + 56))(v29, 0, 1, v52);
      sub_252692400();

      sub_252372288(v29, &qword_27F4DBD48);
      v54 = v138;
      v53 = v139;
      v55 = v140;
      (*(v139 + 104))(v138, *MEMORY[0x277CE0FE0], v140);
      v56 = sub_252692420();

      (*(v53 + 8))(v54, v55);
      sub_252692920();
      sub_252690D70();
      v57 = sub_252691A20();
      sub_252690760();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      LOBYTE(v187[0]) = 0;
      LOBYTE(v192[0]) = 1;
      v66 = v163;
      if (*(a1 + 145))
      {
        if (v178)
        {
          v66 = v213;
        }

        else
        {
          v66 = *(&v213 + 1);
        }
      }

      v101 = swift_getKeyPath();
      v102 = v136;
      v103 = &v136[*(v157 + 36)];
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
      v105 = *MEMORY[0x277CDF3C0];
      v106 = sub_252690850();
      (*(*(v106 - 8) + 104))(v103 + v104, v105, v106);
      *v103 = v101;
      v107 = v182;
      *(v102 + 56) = v183;
      v108 = v185;
      *(v102 + 72) = v184;
      *(v102 + 88) = v108;
      *(v102 + 104) = v186;
      v109 = v181;
      *(v102 + 8) = v180;
      *(v102 + 24) = v109;
      *v102 = v56;
      *(v102 + 40) = v107;
      *(v102 + 120) = v57;
      *(v102 + 128) = v59;
      *(v102 + 136) = v61;
      *(v102 + 144) = v63;
      *(v102 + 152) = v65;
      *(v102 + 160) = 0;
      *(v102 + 168) = 0;
      *(v102 + 176) = 1;
      *(v102 + 184) = v66;
      v110 = &qword_27F4DBE58;
      v111 = v143;
      sub_2523714D4(v102, v143, &qword_27F4DBE58);
      sub_25237153C(v111, v154, &qword_27F4DBE58);
      swift_storeEnumTagMultiPayload();
      sub_252421CA4();
      sub_252421FB0();

      v112 = v152;
    }

    sub_252691470();
    sub_252372288(v111, v110);
    v90 = &qword_27F4DBE60;
    sub_25237153C(v112, v161, &qword_27F4DBE60);
    swift_storeEnumTagMultiPayload();
    sub_252421C18();
    sub_2524221D8();
    v70 = v159;
    sub_252691470();
    v92 = v112;
    goto LABEL_39;
  }

  if (v41)
  {
    v178 = v41;
    v84 = v144;
    sub_25268DB90();
    v85 = v145;
    v86 = v169;
    (*(v145 + 16))(v167, v84, v169);
    swift_storeEnumTagMultiPayload();
    sub_252421B8C();
    sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080]);
    v87 = v168;
    sub_252691470();
    sub_25237153C(v87, v175, &qword_27F4DBE20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80);
    sub_252421AD0();
    sub_252422400();
    v88 = v179;
    sub_252691470();

    sub_252372288(v87, &qword_27F4DBE20);
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    v75 = *(a1 + 160);
    if (v75)
    {
      v192[0] = *(a1 + 152);
      v192[1] = v75;
      sub_252404480();

      v178 = sub_252691D50();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = swift_getKeyPath();

      if (v156)
      {
        sub_252691B10();
      }

      else
      {
        sub_252691B40();
      }

      v131 = sub_252691B00();
      v94 = 1;
      v132 = v135;
      (*(*(v131 - 8) + 56))(v135, 1, 1, v131);
      v96 = sub_252691B50();
      sub_252372288(v132, &qword_27F4DBD40);
      LOBYTE(v192[0]) = v79 & 1;
      LOBYTE(v187[0]) = 0;
      v75 = swift_getKeyPath();
      v100 = LOBYTE(v192[0]);
      v99 = LOBYTE(v187[0]);
      v97 = swift_getKeyPath();
      v98 = 0x3FC999999999999ALL;
      v95 = v83;
      v93 = v178;
    }

    else
    {
      v93 = 0;
      v77 = 0;
      v81 = 0;
      v82 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
    }

    v133 = v175;
    *v175 = v93;
    v133[1] = v77;
    v133[2] = v100;
    v133[3] = v81;
    v133[4] = v82;
    v133[5] = v94;
    v133[6] = v99;
    v133[7] = v95;
    v133[8] = v75;
    v133[9] = v96;
    v133[10] = v97;
    v133[11] = v98;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80);
    sub_252421AD0();
    sub_252422400();
    v88 = v179;
    sub_252691470();
  }

LABEL_40:
  if (v177)
  {
    v120 = 1.0;
  }

  else
  {
    v120 = 0.0;
  }

  v121 = v172;
  sub_25237153C(v88, v172, &qword_27F4DBE70);
  v122 = v171;
  LOBYTE(v187[0]) = v171;
  *(v187 + 1) = *v212;
  v123 = KeyPath;
  *&v187[1] = *&v212[15];
  *(&v187[1] + 1) = KeyPath;
  v188 = v208;
  v189 = v209;
  v190[0] = *v210;
  *(v190 + 9) = *&v210[9];
  BYTE9(v190[1]) = 0;
  *(&v190[1] + 10) = v206;
  HIWORD(v190[1]) = v207;
  *v191 = v120;
  *&v191[40] = v205;
  *&v191[24] = v204;
  *&v191[8] = v203;
  v124 = v190[1];
  v125 = v176;
  *(v176 + 64) = v190[0];
  *(v125 + 80) = v124;
  v126 = v189;
  *(v125 + 32) = v188;
  *(v125 + 48) = v126;
  v127 = v187[1];
  *v125 = v187[0];
  *(v125 + 16) = v127;
  *(v125 + 144) = *&v191[48];
  v128 = *&v191[32];
  *(v125 + 112) = *&v191[16];
  *(v125 + 128) = v128;
  *(v125 + 96) = *v191;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFC8);
  sub_25237153C(v121, v125 + *(v129 + 48), &qword_27F4DBE70);
  sub_25237153C(v187, v192, &qword_27F4DBFD0);
  sub_252372288(v179, &qword_27F4DBE70);
  sub_252372288(v121, &qword_27F4DBE70);
  *(v192 + 1) = *v212;
  v193 = v208;
  LOBYTE(v192[0]) = v122;
  v192[2] = *&v212[15];
  v192[3] = v123;
  v194 = v209;
  *v195 = *v210;
  *&v195[9] = *&v210[9];
  v196 = 0;
  v197 = v206;
  v198 = v207;
  v199 = v120;
  v200 = v203;
  v201 = v204;
  v202 = v205;
  return sub_252372288(v192, &qword_27F4DBFD0);
}

uint64_t sub_25241F820@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  v5 = a1[4];
  v19 = a1[3];
  v20 = v5;
  v21 = *(a1 + 10);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18 = v4;
  v7 = *a2;
  type metadata accessor for AnimationModel();
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v8 = sub_252690DF0();
  v9 = v19;
  v10 = v20;
  *(a3 + 32) = v18;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  v11 = v21;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 80) = v11;
  *(a3 + 88) = v8;
  *(a3 + 96) = v13;
  *(a3 + 104) = v7;
  *(a3 + 112) = 1;
  return sub_25237153C(&v16, v15, &qword_27F4DBD98);
}

uint64_t sub_25241F90C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v23 = v1[8];
  v24 = v3;
  v4 = v1[11];
  v25 = v1[10];
  v26 = v4;
  v5 = v1[5];
  v19 = v1[4];
  v20 = v5;
  v6 = v1[7];
  v21 = v1[6];
  v22 = v6;
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  v8 = v1[3];
  v17 = v1[2];
  v18 = v8;
  v9 = *(&v16 + 1);
  v10 = *&v17;
  v11 = v20;
  *a1 = sub_252692920();
  a1[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD38);
  return sub_25241D5CC(&v15, v11 & 1, a1 + *(v13 + 44), v9, v10);
}

uint64_t sub_25241F9D0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_252691B00();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_252691B50();
  result = sub_252372288(v5, &qword_27F4DBD40);
  *a2 = v7;
  return result;
}

uint64_t sub_25241FADC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFD8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFE0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v61 = &v57 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFE8);
  MEMORY[0x28223BE20](v62);
  v63 = &v57 - v9;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = (v1 + 48);
  v17 = *(v1 + 72);
  v18 = *(v1 + 80);
  v19 = *(v1 + 88);
  v20 = *(v1 + 96);
  v60 = *(v1 + 97);
  if (!v20)
  {
    v16 = (v1 + 56);
  }

  v59 = *v16;
  *&v65 = v18;
  *(&v65 + 1) = v19;
  sub_252404480();
  v21 = v15;

  v22 = sub_252691D50();
  v24 = v23;
  v26 = v25;
  sub_252691BE0();
  v27 = sub_252691D00();
  v57 = v28;
  v30 = v29;
  v58 = v31;

  sub_2524228D8(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v33 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF0) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF8) + 28);
  v35 = *MEMORY[0x277CE0B28];
  v36 = sub_252691CB0();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v5 = v27;
  v37 = v61;
  *(v5 + 1) = v57;
  v5[16] = v30 & 1;
  *(v5 + 3) = v58;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  v38 = swift_getKeyPath();
  v39 = &v5[*(v3 + 44)];
  *v39 = v38;
  LODWORD(v35) = v60;
  v39[8] = v60 ^ 1;
  v40 = v59;

  v41 = swift_getKeyPath();
  sub_2523714D4(v5, v37, &qword_27F4DBFD8);
  v42 = (v37 + *(v7 + 44));
  *v42 = v41;
  v42[1] = v40;
  v72.origin.x = v10;
  v72.origin.y = v11;
  v72.size.width = v12;
  v72.size.height = v13;
  MinX = CGRectGetMinX(v72);
  v44 = 10.0;
  if (v35)
  {
    v44 = 12.0;
  }

  v45 = v14 - MinX - v44;
  sub_252692930();
  if (v45 < 0.0)
  {
    sub_252692F00();
    v46 = sub_2526919C0();
    sub_252690570();
  }

  sub_252690D70();
  v47 = v63;
  sub_2523714D4(v37, v63, &qword_27F4DBFE0);
  v48 = (v47 + *(v62 + 36));
  v49 = v70;
  v48[4] = v69;
  v48[5] = v49;
  v48[6] = v71;
  v50 = v66;
  *v48 = v65;
  v48[1] = v50;
  v51 = v68;
  v48[2] = v67;
  v48[3] = v51;
  v52 = swift_getKeyPath();
  v53 = v47;
  v54 = v64;
  sub_2523714D4(v53, v64, &qword_27F4DBFE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC000);
  v56 = (v54 + *(result + 36));
  *v56 = v52;
  v56[1] = v17;
  return result;
}

id sub_25241FFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_252692BA0();
  [v6 setText_];

  [v6 setFont_];
  sub_252422940(0, &qword_27F4DC008);

  v8 = sub_252693070();
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setAdjustsFontForContentSizeCategory_];
  [v6 setLineBreakMode_];
  [v6 setLineBreakStrategy_];
  [v6 setMarqueeEnabled_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = v6;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC010);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252697230;
  v13 = [v10 heightAnchor];
  v14 = [v9 heightAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 widthAnchor];

  v17 = [v9 widthAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  sub_252422940(0, &qword_27F4DC018);
  v19 = sub_252692D70();

  [v11 activateConstraints_];

  return v9;
}

uint64_t sub_25242033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252422988();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2524203A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252422988();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_252420404()
{
  sub_252422988();
  sub_252691430();
  __break(1u);
}

void TransitionTileView.Config.Icon.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t TransitionTileView.Config.Icon.color.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t TransitionTileView.Config.Icon.iconIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_252420508(v2, v3);
}

uint64_t sub_252420508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t TransitionTileView.Config.Icon.micaIconIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *TransitionTileView.Config.Icon.micaPackage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

double TransitionTileView.Config.Icon.init(frame:maxWidth:drawCircle:size:color:unresponsiveColor:micaPackage:micaIconIdentifier:useAssetMarginSize:)@<D0>(char a1@<W0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = *a2;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 120) = a7;
  *(a9 + 128) = a5;
  *(a9 + 112) = a6;
  *(a9 + 40) = a1;
  *(a9 + 41) = v14;
  *(a9 + 48) = *a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a8;
  result = 0.0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  return result;
}

uint64_t TransitionTileView.Config.Badge.color.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 TransitionTileView.Config.Badge.init(color:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void TransitionTileView.Config.Text.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t TransitionTileView.Config.Text.color.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

__n128 TransitionTileView.Config.Text.color.setter(__n128 *a1)
{

  result = *a1;
  v1[3] = *a1;
  return result;
}

uint64_t TransitionTileView.Config.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v13 = *(v1 + 136);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v5;
  v12[4] = *(v1 + 72);
  v12[5] = v2;
  v12[0] = *(v1 + 8);
  v12[1] = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 136);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 8);
  *(a1 + 16) = v8;
  return sub_25241CBDC(v12, v11);
}

__n128 TransitionTileView.Config.icon.setter(__int128 *a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v4;
  v13 = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v6;
  v12[4] = *(v1 + 72);
  v12[5] = v3;
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  sub_252420954(v12);
  v7 = a1[4];
  *(v1 + 88) = a1[5];
  v8 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v8;
  v9 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v11;
  *(v1 + 72) = v7;
  *(v1 + 136) = *(a1 + 16);
  *(v1 + 8) = v9;
  return result;
}

uint64_t TransitionTileView.Config.prefixText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v9 = v1[11];
  v10 = v2;
  v11 = v1[13];
  v3 = v11;
  v4 = v1[10];
  v8[0] = v1[9];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25237153C(v8, &v7, &qword_27F4DBCA8);
}

__n128 TransitionTileView.Config.prefixText.setter(uint64_t a1)
{
  v3 = v1[12];
  v7[2] = v1[11];
  v7[3] = v3;
  v7[4] = v1[13];
  v4 = v1[10];
  v7[0] = v1[9];
  v7[1] = v4;
  sub_252372288(v7, &qword_27F4DBCA8);
  v5 = *(a1 + 48);
  v1[11] = *(a1 + 32);
  v1[12] = v5;
  v1[13] = *(a1 + 64);
  result = *(a1 + 16);
  v1[9] = *a1;
  v1[10] = result;
  return result;
}

uint64_t TransitionTileView.Config.primaryText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[17];
  v9 = v1[16];
  v10 = v2;
  v11 = v1[18];
  v3 = v11;
  v4 = v1[15];
  v8[0] = v1[14];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25241A6E4(v8, &v7);
}

__n128 TransitionTileView.Config.primaryText.setter(uint64_t a1)
{
  v3 = v1[17];
  v7[2] = v1[16];
  v7[3] = v3;
  v7[4] = v1[18];
  v4 = v1[15];
  v7[0] = v1[14];
  v7[1] = v4;
  sub_252420B3C(v7);
  v5 = *(a1 + 48);
  v1[16] = *(a1 + 32);
  v1[17] = v5;
  v1[18] = *(a1 + 64);
  result = *(a1 + 16);
  v1[14] = *a1;
  v1[15] = result;
  return result;
}

uint64_t TransitionTileView.Config.secondaryText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[22];
  v9 = v1[21];
  v10 = v2;
  v11 = v1[23];
  v3 = v11;
  v4 = v1[20];
  v8[0] = v1[19];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25237153C(v8, &v7, &qword_27F4DBCA8);
}

__n128 TransitionTileView.Config.secondaryText.setter(uint64_t a1)
{
  v3 = v1[22];
  v7[2] = v1[21];
  v7[3] = v3;
  v7[4] = v1[23];
  v4 = v1[20];
  v7[0] = v1[19];
  v7[1] = v4;
  sub_252372288(v7, &qword_27F4DBCA8);
  v5 = *(a1 + 48);
  v1[21] = *(a1 + 32);
  v1[22] = v5;
  v1[23] = *(a1 + 64);
  result = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = result;
  return result;
}

uint64_t TransitionTileView.Config.badge.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  a1[1] = v3;
  return sub_252420C84(v2);
}

uint64_t sub_252420C84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t TransitionTileView.Config.badge.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_25241A7A8(*(v1 + 384));
  *(v1 + 384) = v2;
  *(v1 + 392) = v3;
  return result;
}

void TransitionTileView.Config.tileFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = a3;
  v4[54] = a4;
}

unint64_t sub_252420DEC()
{
  result = qword_27F4DBCE8;
  if (!qword_27F4DBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCE8);
  }

  return result;
}

unint64_t sub_252420E44()
{
  result = qword_27F4DBCF0;
  if (!qword_27F4DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCF0);
  }

  return result;
}

void sub_252420EC0()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_252420F5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252420F5C()
{
  if (!qword_27F4DBD08)
  {
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBD08);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI19StateDependentValueVySSGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI18TransitionTileViewV6ConfigV4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI18TransitionTileViewV6ConfigV5BadgeVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252420FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252421044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_252421138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_252421180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252421200(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_252421248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2524212B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524212F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25242136C()
{
  result = qword_27F4DBD10;
  if (!qword_27F4DBD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBCD8);
    sub_252400FC8(&qword_27F4DBD18, &qword_27F4DBD20);
    sub_252400FC8(&qword_27F4DBD28, &qword_27F4DBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBD10);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_252421484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524214CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_252421578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524215C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25242162C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_252421674(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2524216D4()
{
  result = qword_27F4DBD30;
  if (!qword_27F4DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBD30);
  }

  return result;
}

unint64_t sub_252421768()
{
  result = qword_27F4DBDA8;
  if (!qword_27F4DBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBD98);
    sub_2524217F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDA8);
  }

  return result;
}

unint64_t sub_2524217F4()
{
  result = qword_27F4DBDB0;
  if (!qword_27F4DBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDB8);
    sub_252421880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDB0);
  }

  return result;
}

unint64_t sub_252421880()
{
  result = qword_27F4DBDC0;
  if (!qword_27F4DBDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDC8);
    sub_252421938();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDC0);
  }

  return result;
}

unint64_t sub_252421938()
{
  result = qword_27F4DBDD0;
  if (!qword_27F4DBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDD8);
    sub_252400FC8(&qword_27F4DBDE0, &qword_27F4DBDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDD0);
  }

  return result;
}

unint64_t sub_2524219F0()
{
  result = qword_27F4DBE00;
  if (!qword_27F4DBE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDA0);
    sub_252421768();
    sub_252421A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE00);
  }

  return result;
}

unint64_t sub_252421A7C()
{
  result = qword_27F4DBE08;
  if (!qword_27F4DBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE08);
  }

  return result;
}

unint64_t sub_252421AD0()
{
  result = qword_27F4DBE88;
  if (!qword_27F4DBE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE20);
    sub_252421B8C();
    sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE88);
  }

  return result;
}

unint64_t sub_252421B8C()
{
  result = qword_27F4DBE90;
  if (!qword_27F4DBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE68);
    sub_252421C18();
    sub_2524221D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE90);
  }

  return result;
}

unint64_t sub_252421C18()
{
  result = qword_27F4DBE98;
  if (!qword_27F4DBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE60);
    sub_252421CA4();
    sub_252421FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE98);
  }

  return result;
}

unint64_t sub_252421CA4()
{
  result = qword_27F4DBEA0;
  if (!qword_27F4DBEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE58);
    sub_252421D5C();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEA0);
  }

  return result;
}

unint64_t sub_252421D5C()
{
  result = qword_27F4DBEA8;
  if (!qword_27F4DBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEB0);
    sub_252421E14();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEA8);
  }

  return result;
}

unint64_t sub_252421E14()
{
  result = qword_27F4DBEB8;
  if (!qword_27F4DBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEC0);
    sub_252421EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEB8);
  }

  return result;
}

unint64_t sub_252421EA0()
{
  result = qword_27F4DBEC8;
  if (!qword_27F4DBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBED0);
    sub_252421F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEC8);
  }

  return result;
}

unint64_t sub_252421F2C()
{
  result = qword_27F4DBED8;
  if (!qword_27F4DBED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBED8);
  }

  return result;
}

unint64_t sub_252421FB0()
{
  result = qword_27F4DBF08;
  if (!qword_27F4DBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE48);
    sub_252422068();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF08);
  }

  return result;
}

unint64_t sub_252422068()
{
  result = qword_27F4DBF10;
  if (!qword_27F4DBF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF18);
    sub_252422120();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF10);
  }

  return result;
}

unint64_t sub_252422120()
{
  result = qword_27F4DBF20;
  if (!qword_27F4DBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF28);
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF20);
  }

  return result;
}

unint64_t sub_2524221D8()
{
  result = qword_27F4DBF30;
  if (!qword_27F4DBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE38);
    sub_252422290();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF30);
  }

  return result;
}

unint64_t sub_252422290()
{
  result = qword_27F4DBF38;
  if (!qword_27F4DBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE30);
    sub_252422348();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF38);
  }

  return result;
}

unint64_t sub_252422348()
{
  result = qword_27F4DBF40;
  if (!qword_27F4DBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE28);
    sub_252400FC8(&qword_27F4DBF48, &qword_27F4DBF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF40);
  }

  return result;
}

unint64_t sub_252422400()
{
  result = qword_27F4DBF60;
  if (!qword_27F4DBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE80);
    sub_252422484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF60);
  }

  return result;
}

unint64_t sub_252422484()
{
  result = qword_27F4DBF68;
  if (!qword_27F4DBF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF70);
    sub_25242253C();
    sub_252400FC8(&qword_27F4DBFB8, &qword_27F4DBFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF68);
  }

  return result;
}

unint64_t sub_25242253C()
{
  result = qword_27F4DBF78;
  if (!qword_27F4DBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF80);
    sub_2524225F4();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF78);
  }

  return result;
}

unint64_t sub_2524225F4()
{
  result = qword_27F4DBF88;
  if (!qword_27F4DBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF90);
    sub_2524226AC();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF88);
  }

  return result;
}

unint64_t sub_2524226AC()
{
  result = qword_27F4DBF98;
  if (!qword_27F4DBF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFA0);
    sub_252400FC8(&qword_27F4DBFA8, &qword_27F4DBFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF98);
  }

  return result;
}

uint64_t sub_2524227B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_252422884@<X0>(void *a1@<X8>)
{
  result = sub_252690F70();
  *a1 = v3;
  return result;
}

uint64_t sub_2524228D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2524228E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252690F10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252422940(uint64_t a1, unint64_t *a2)
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

unint64_t sub_252422988()
{
  result = qword_27F4DC020;
  if (!qword_27F4DC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC020);
  }

  return result;
}

double sub_2524229DC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 16711680;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

unint64_t sub_252422A08()
{
  result = qword_27F4DC058;
  if (!qword_27F4DC058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC050);
    sub_2524216D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC058);
  }

  return result;
}

unint64_t sub_252422A94()
{
  result = qword_27F4DC060;
  if (!qword_27F4DC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC060);
  }

  return result;
}

unint64_t sub_252422AE8()
{
  result = qword_27F4DC080;
  if (!qword_27F4DC080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC038);
    sub_252422B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC080);
  }

  return result;
}

unint64_t sub_252422B74()
{
  result = qword_27F4DC088;
  if (!qword_27F4DC088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC030);
    sub_252400FC8(&qword_27F4DC090, &qword_27F4DC098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC088);
  }

  return result;
}

unint64_t sub_252422C2C()
{
  result = qword_27F4DC0A0;
  if (!qword_27F4DC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC078);
    sub_252422CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0A0);
  }

  return result;
}

unint64_t sub_252422CB8()
{
  result = qword_27F4DC0A8;
  if (!qword_27F4DC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0B0);
    sub_252422D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0A8);
  }

  return result;
}

unint64_t sub_252422D44()
{
  result = qword_27F4DC0B8;
  if (!qword_27F4DC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0C0);
    sub_252422DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0B8);
  }

  return result;
}

unint64_t sub_252422DC8()
{
  result = qword_27F4DC0C8;
  if (!qword_27F4DC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0D0);
    sub_252422A08();
    sub_252422A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0C8);
  }

  return result;
}

unint64_t sub_252422E54()
{
  result = qword_27F4DC0F0;
  if (!qword_27F4DC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0E8);
    sub_252422F0C();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0F0);
  }

  return result;
}

unint64_t sub_252422F0C()
{
  result = qword_27F4DC0F8;
  if (!qword_27F4DC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC100);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0F8);
  }

  return result;
}

uint64_t sub_252422FC4()
{
}

uint64_t sub_25242302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_252422FC4();
  }

  return result;
}

uint64_t sub_252423044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_25242305C();
  }

  return result;
}

uint64_t sub_25242305C()
{
}

uint64_t sub_2524230C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252423108()
{
  result = qword_27F4DC138;
  if (!qword_27F4DC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC130);
    sub_252423194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC138);
  }

  return result;
}

unint64_t sub_252423194()
{
  result = qword_27F4DC140;
  if (!qword_27F4DC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC148);
    sub_252423218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC140);
  }

  return result;
}

unint64_t sub_252423218()
{
  result = qword_27F4DC150;
  if (!qword_27F4DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC150);
  }

  return result;
}

unint64_t sub_25242326C()
{
  result = qword_27F4DC168;
  if (!qword_27F4DC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC000);
    sub_252423324();
    sub_252400FC8(&qword_27F4DBFB8, &qword_27F4DBFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC168);
  }

  return result;
}

unint64_t sub_252423324()
{
  result = qword_27F4DC170;
  if (!qword_27F4DC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFE8);
    sub_2524233B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC170);
  }

  return result;
}

unint64_t sub_2524233B0()
{
  result = qword_27F4DC178;
  if (!qword_27F4DC178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFE0);
    sub_252423468();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC178);
  }

  return result;
}

unint64_t sub_252423468()
{
  result = qword_27F4DC180;
  if (!qword_27F4DC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFD8);
    sub_252423520();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC180);
  }

  return result;
}

unint64_t sub_252423520()
{
  result = qword_27F4DC188;
  if (!qword_27F4DC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFF0);
    sub_2524226AC();
    sub_252400FC8(&qword_27F4DC190, &qword_27F4DBFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC188);
  }

  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.Icon.init(animationNamespace:useForMatchedAnimation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DF0();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for AnimationModel()
{
  result = qword_27F4DC330;
  if (!qword_27F4DC330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnimationModel.TranistionType.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t sub_252423788(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_252423818@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_25242385C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_25242393C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

double sub_2524239A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t AnimationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  AnimationModel.init()();
  return v0;
}

uint64_t AnimationModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  v9 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v20 = 0;
  sub_252690660();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility;
  v19 = 1;
  sub_252690660();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground;
  v18 = 0;
  sub_252690660();
  v10(v0 + v12, v8, v5);
  v13 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter;
  v17 = 0;
  sub_252690660();
  v10(v0 + v13, v8, v5);
  v14 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v16 = 0;
  sub_252690660();
  (*(v2 + 32))(v0 + v14, v4, v1);
  return v0;
}

uint64_t sub_252423CD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 40) != 2)
  {
    return sub_252423D80();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(0, a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_252423D80()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (qword_27F4DA9E8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9D8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9C8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9B8 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3D0);
  return sub_252690A80();
}

uint64_t sub_252423F88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

uint64_t sub_252424000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_252692A80();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252692AB0();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252692AD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  sub_252690690();
  v16 = *(a1 + 41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    swift_unknownObjectRelease();
  }

  sub_25242D500();
  v19 = sub_252692FB0();
  sub_252692AC0();
  sub_252692AE0();
  v20 = *(v10 + 8);
  v29 = v9;
  v30 = v20;
  v20(v13, v9);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v16;
  v24 = v31;
  v23 = v32;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  aBlock[4] = sub_25242D54C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252576CB4;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  sub_25235E21C(v24);

  sub_252692A90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25242D574(&qword_27F4DC400, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E15F0);
  sub_252400FC8(&qword_27F4DC408, &unk_27F4E15F0);
  v26 = v35;
  v27 = v37;
  sub_252693190();
  MEMORY[0x2530A4AE0](v15, v8, v26, v25);
  _Block_release(v25);

  (*(v36 + 8))(v26, v27);
  (*(v33 + 8))(v8, v34);
  return v30(v15, v29);
}

uint64_t sub_2524244A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = *(v9 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a3;
      v13[4] = a4;
      v14 = *(v11 + 24);

      sub_25235E21C(a3);
      v14(a2 & 1, sub_25242D5BC, v13, ObjectType, v11);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2524245C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
      result = swift_unknownObjectRelease();
    }
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t AnimationModel.deinit()
{
  sub_2524247A4(v0 + 16);
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter, v2);
  v4 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t AnimationModel.__deallocating_deinit()
{
  sub_2524247A4(v0 + 16);
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter, v2);
  v4 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_252424930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimationModel();
  result = sub_252690630();
  *a1 = result;
  return result;
}

uint64_t sub_252424970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC550);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC558);
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560);
      (*(*(v10 - 8) + 16))(v6, a1, v10);
      swift_storeEnumTagMultiPayload();
      sub_25242E1C8();
      sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560);
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v12 = v16[7];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560);
      v14 = *(v13 - 8);
      if (v12 == 1)
      {
        (*(*(v13 - 8) + 16))(v9, a1, v13);
        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v14 + 56))(v9, v15, 1, v13);
      sub_25237153C(v9, v6, &qword_27F4DC558);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560);
      sub_25242E1C8();
      sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560);
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC558);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252424D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC430);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC438);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC440);
      (*(*(v12 - 8) + 16))(v8, a1, v12);
      swift_storeEnumTagMultiPayload();
      sub_25242DA00();
      sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440);
      return sub_252691470();
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC440);
      (*(*(v15 - 8) + 16))(v11, a1, v15);
      v16 = &v11[*(v9 + 36)];
      *v16 = sub_25242D9F8;
      v16[1] = v14;
      v16[2] = 0;
      v16[3] = 0;
      sub_25237153C(v11, v8, &qword_27F4DC438);
      swift_storeEnumTagMultiPayload();
      sub_25242DA00();
      sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440);

      sub_252691470();
      return sub_252372288(v11, &qword_27F4DC438);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252425090()
{
  if (qword_27F4DA9D0 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3E8);
  sub_252690A80();
  if (qword_27F4DA9E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3F8);
  return sub_252690A80();
}

uint64_t sub_2524251D0(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_252690690();
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2524252AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC590);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC598);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC5A0);
      (*(*(v12 - 8) + 16))(v8, a1, v12);
      swift_storeEnumTagMultiPayload();
      sub_25242E2C8();
      sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0);
      return sub_252691470();
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC5A0);
      (*(*(v15 - 8) + 16))(v11, a1, v15);
      v16 = &v11[*(v9 + 36)];
      *v16 = sub_25242E278;
      v16[1] = v14;
      v16[2] = 0;
      v16[3] = 0;
      sub_25237153C(v11, v8, &qword_27F4DC598);
      swift_storeEnumTagMultiPayload();
      sub_25242E2C8();
      sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0);

      sub_252691470();
      return sub_252372288(v11, &qword_27F4DC598);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242560C(uint64_t a1)
{
  if (!a1)
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*(a1 + 40) == 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);

    v5(0, 0, 0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_252423D80();
  }
}

uint64_t sub_252425738()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC390);
  sub_252400FC8(&qword_27F4DC398, &qword_27F4DC390);
  sub_252691E60();
}

uint64_t sub_252425820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC578);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    v9 = v17;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC580);
    (*(*(v10 - 8) + 16))(v8, a1, v10);
    v11 = &v8[*(v6 + 36)];
    *v11 = 0;
    *(v11 + 1) = v9;
    v12 = MEMORY[0x2530A4500](0.15, 0.85, 0.25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    v13 = v17;
    sub_2523714D4(v8, a3, &qword_27F4DC578);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC588);
    v15 = (a3 + *(result + 36));
    *v15 = v12;
    v15[1] = v13;
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252425A84()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 80);
  v5 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = v5;
  v6 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = v6;
  if ((v24 & 0x100) != 0)
  {
    v7 = *(v0 + 64);
    v17 = *(v0 + 48);
    v18 = v7;
    v19 = *(v0 + 80);
    v8 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v8;
  }

  else
  {

    sub_252692F00();
    v9 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v20, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE8(v15) != 1)
  {
    return 0;
  }

  if ((v24 & 0x100) != 0)
  {
    v12[2] = v22;
    v13 = v23;
    v14 = v24;
    v12[1] = v21;
    v12[0] = v20;
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v20, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  return (*(&v13 + 1) >> 1) & 1;
}

uint64_t sub_252425CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC518);
  MEMORY[0x28223BE20](v3);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC520);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC528);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  v17 = *(v2 + 64);
  v37 = *(v2 + 48);
  v38 = v17;
  v39 = *(v2 + 80);
  v18 = *(v2 + 32);
  v35 = *(v2 + 16);
  v36 = v18;
  v19 = *(v2 + 88);
  v20 = *(v2 + 96);
  v33 = v15;
  v34 = v16;
  v40 = v19;
  v41 = v20;
  if (sub_252425A84())
  {
    v30[0] = v9;
    v30[1] = v3;
    v21 = v31;
    if (v15 == 0.0)
    {
      type metadata accessor for AnimationModel();
      sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
      result = sub_252690DE0();
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v22 = -v33;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC530);
      (*(*(v23 - 8) + 16))(v8, v21, v23);
      v24 = &v8[*(v6 + 36)];
      *v24 = 0;
      *(v24 + 1) = v22;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v25 = 0.0;
      if (v33 / v20 >= 0.0)
      {
        v25 = v33 / v20;
      }

      if (v33 / v20 <= 1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1.0;
      }

      v27 = 1.0 - (1.0 - v19) * v26;
      if (v27 > v19)
      {
        v19 = v27;
      }

      sub_2523714D4(v8, v12, &qword_27F4DC520);
      *&v12[*(v30[0] + 36)] = v19;
      sub_2523714D4(v12, v14, &qword_27F4DC528);
      sub_25237153C(v14, v5, &qword_27F4DC528);
      swift_storeEnumTagMultiPayload();
      sub_25242E084();
      sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530);
      sub_252691470();
      return sub_252372288(v14, &qword_27F4DC528);
    }
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC530);
    (*(*(v29 - 8) + 16))(v5, v31, v29);
    swift_storeEnumTagMultiPayload();
    sub_25242E084();
    sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530);
    return sub_252691470();
  }

  return result;
}

uint64_t sub_2524261D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[0] = a3;
  v25[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6F8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC700);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC708);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v15 = sub_252690DF0();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC710);
  v19 = *(*(v18 - 8) + 16);
  if (a2)
  {
    v19(v14, a1, v18);
    v20 = &v14[*(v12 + 36)];
    *v20 = v15;
    v20[1] = v17;
    v20[2] = v25[0];
    sub_25237153C(v14, v11, &qword_27F4DC708);
    swift_storeEnumTagMultiPayload();
    sub_25242EF30();
    sub_25242F03C();
    sub_252691470();
    v21 = v14;
    v22 = &qword_27F4DC708;
  }

  else
  {
    v19(v8, a1, v18);
    v23 = &v8[*(v6 + 36)];
    *v23 = v15;
    v23[1] = v17;
    sub_25237153C(v8, v11, &qword_27F4DC6F8);
    swift_storeEnumTagMultiPayload();
    sub_25242EF30();
    sub_25242F03C();
    sub_252691470();
    v21 = v8;
    v22 = &qword_27F4DC6F8;
  }

  return sub_252372288(v21, v22);
}

uint64_t AnimationModel.Visibility.TileView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AnimationModel.Visibility.TileView.body(content:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1E0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  v12 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (*(v12 + 40) == 2)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1F0);
      (*(*(v13 - 8) + 16))(v11, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0);
      sub_25242C15C();
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v17[7])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1F0);
      (*(*(v16 - 8) + 16))(v6, a1, v16);
      *&v6[*(v3 + 36)] = v15;
      sub_2523714D4(v6, v8, &qword_27F4DC1E0);
      sub_25237153C(v8, v11, &qword_27F4DC1E0);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0);
      sub_25242C15C();
      sub_252691470();
      return sub_252372288(v8, &qword_27F4DC1E0);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252426904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3D0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3D8);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3E0);
      (*(*(v19 - 8) + 16))(v18, v27, v19);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0);
      sub_25242D1F0();
      return sub_252691470();
    }

    else
    {
      v21 = swift_allocObject();
      v26 = a4;
      v22 = v21;
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3E0);
      (*(*(v23 - 8) + 16))(v9, v27, v23);
      v24 = &v9[*(v7 + 36)];
      *v24 = sub_25242D1A0;
      v24[1] = v22;
      v24[2] = 0;
      v24[3] = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v28)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      sub_2523714D4(v9, v13, &qword_27F4DC3C8);
      *&v13[*(v10 + 36)] = v25;
      sub_2523714D4(v13, v15, &qword_27F4DC3D0);
      sub_25237153C(v15, v18, &qword_27F4DC3D0);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0);
      sub_25242D1F0();
      sub_252691470();
      return sub_252372288(v15, &qword_27F4DC3D0);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252426D68(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  MEMORY[0x28223BE20](a1);
  return sub_252690A80();
}

uint64_t sub_252426E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a3;
  v34 = a1;
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC768);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC770);
  MEMORY[0x28223BE20](v36);
  v18 = v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC778);
  MEMORY[0x28223BE20](v19);
  v21 = v33 - v20;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC780);
  MEMORY[0x28223BE20](v35);
  v23 = v33 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v38)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.01;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788);
        (*(*(v25 - 8) + 16))(v14, v34, v25);
        *&v14[*(v5 + 36)] = v24;
        sub_2523714D4(v14, v16, &qword_27F4DC768);
        sub_25237153C(v16, v21, &qword_27F4DC768);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788);
        sub_25242F2E4();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC780);
        swift_storeEnumTagMultiPayload();
        sub_25242F22C();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC780);
        v26 = v16;
        v27 = &qword_27F4DC768;
        return sub_252372288(v26, v27);
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788);
      (*(*(v31 - 8) + 16))(v21, v34, v31);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788);
      sub_25242F2E4();
      sub_252691470();
      v30 = &qword_27F4DC780;
      sub_25237153C(v23, v18, &qword_27F4DC780);
      swift_storeEnumTagMultiPayload();
      sub_25242F22C();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v38)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.01;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788);
      (*(*(v29 - 8) + 16))(v8, v34, v29);
      *&v8[*(v5 + 36)] = v28;
      v30 = &qword_27F4DC768;
      sub_2523714D4(v8, v11, &qword_27F4DC768);
      sub_25237153C(v11, v18, &qword_27F4DC768);
      swift_storeEnumTagMultiPayload();
      sub_25242F22C();
      sub_25242F2E4();
      sub_252691470();
      v26 = v11;
    }

    v27 = v30;
    return sub_252372288(v26, v27);
  }

  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_2524274C8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3A8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v23[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v23[-v18];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3B0);
      (*(*(v20 - 8) + 16))(v19, a1, v20);
      *&v19[*(v11 + 36)] = a4;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (!v23[7])
      {
        a4 = a3;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3B0);
      (*(*(v21 - 8) + 16))(v14, a1, v21);
      *&v14[*(v11 + 36)] = a4;
      sub_2523714D4(v14, v17, &qword_27F4DC3A8);
      v19 = v17;
    }

    sub_25237153C(v19, v10, &qword_27F4DC3A8);
    swift_storeEnumTagMultiPayload();
    sub_25242D0E8();
    sub_252691470();
    return sub_252372288(v19, &qword_27F4DC3A8);
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a3;
  v34 = a1;
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC688);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC690);
  MEMORY[0x28223BE20](v36);
  v18 = v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC698);
  MEMORY[0x28223BE20](v19);
  v21 = v33 - v20;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A0);
  MEMORY[0x28223BE20](v35);
  v23 = v33 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v38)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8);
        (*(*(v25 - 8) + 16))(v14, v34, v25);
        *&v14[*(v5 + 36)] = v24;
        sub_2523714D4(v14, v16, &qword_27F4DC688);
        sub_25237153C(v16, v21, &qword_27F4DC688);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8);
        sub_25242EB90();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC6A0);
        swift_storeEnumTagMultiPayload();
        sub_25242EAD8();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC6A0);
        v26 = v16;
        v27 = &qword_27F4DC688;
        return sub_252372288(v26, v27);
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8);
      (*(*(v31 - 8) + 16))(v21, v34, v31);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8);
      sub_25242EB90();
      sub_252691470();
      v30 = &qword_27F4DC6A0;
      sub_25237153C(v23, v18, &qword_27F4DC6A0);
      swift_storeEnumTagMultiPayload();
      sub_25242EAD8();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v38)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8);
      (*(*(v29 - 8) + 16))(v8, v34, v29);
      *&v8[*(v5 + 36)] = v28;
      v30 = &qword_27F4DC688;
      sub_2523714D4(v8, v11, &qword_27F4DC688);
      sub_25237153C(v11, v18, &qword_27F4DC688);
      swift_storeEnumTagMultiPayload();
      sub_25242EAD8();
      sub_25242EB90();
      sub_252691470();
      v26 = v11;
    }

    v27 = v30;
    return sub_252372288(v26, v27);
  }

  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_252427ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a3;
  v34 = a1;
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC620);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC628);
  MEMORY[0x28223BE20](v36);
  v18 = v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC630);
  MEMORY[0x28223BE20](v19);
  v21 = v33 - v20;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC638);
  MEMORY[0x28223BE20](v35);
  v23 = v33 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v38)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640);
        (*(*(v25 - 8) + 16))(v14, v34, v25);
        *&v14[*(v5 + 36)] = v24;
        sub_2523714D4(v14, v16, &qword_27F4DC620);
        sub_25237153C(v16, v21, &qword_27F4DC620);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640);
        sub_25242E93C();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC638);
        swift_storeEnumTagMultiPayload();
        sub_25242E884();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC638);
        v26 = v16;
        v27 = &qword_27F4DC620;
        return sub_252372288(v26, v27);
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640);
      (*(*(v31 - 8) + 16))(v21, v34, v31);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640);
      sub_25242E93C();
      sub_252691470();
      v30 = &qword_27F4DC638;
      sub_25237153C(v23, v18, &qword_27F4DC638);
      swift_storeEnumTagMultiPayload();
      sub_25242E884();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v38)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640);
      (*(*(v29 - 8) + 16))(v8, v34, v29);
      *&v8[*(v5 + 36)] = v28;
      v30 = &qword_27F4DC620;
      sub_2523714D4(v8, v11, &qword_27F4DC620);
      sub_25237153C(v11, v18, &qword_27F4DC620);
      swift_storeEnumTagMultiPayload();
      sub_25242E884();
      sub_25242E93C();
      sub_252691470();
      v26 = v11;
    }

    v27 = v30;
    return sub_252372288(v26, v27);
  }

  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_25242857C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC800);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC808);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC810);
      (*(*(v13 - 8) + 16))(v12, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810);
      sub_25242F804();
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v17[7])
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC810);
      (*(*(v16 - 8) + 16))(v7, a1, v16);
      *&v7[*(v4 + 36)] = v15;
      sub_2523714D4(v7, v9, &qword_27F4DC800);
      sub_25237153C(v9, v12, &qword_27F4DC800);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810);
      sub_25242F804();
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC800);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.TileView.init(animationNamespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DF0();
  *a2 = result;
  a2[1] = v5;
  a2[2] = a1;
  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.TileView.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC208);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC210);
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC218);
  v11 = MEMORY[0x28223BE20](v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC220);
  MEMORY[0x28223BE20](v70);
  v16 = &v65 - v15;
  v17 = *v2;
  if (*v2)
  {
    v18 = v2[2];
    swift_beginAccess();
    if (*(v17 + 40) == 2)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC228);
      (*(*(v19 - 8) + 16))(v16, a1, v19);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC248, &qword_27F4DC228);
      sub_252400FC8(&qword_27F4DC250, &qword_27F4DC208);
      return sub_252691470();
    }

    else
    {
      v21 = sub_2526917A0();
      sub_252692A40();
      v23 = v22;
      v25 = v24;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC228);
      (*(*(v66 - 8) + 16))(v14, a1, v66);
      v26 = &v14[*(v10 + 36)];
      v65 = v14;
      *v26 = 0x6C6F72746E6F63;
      *(v26 + 1) = 0xE700000000000000;
      *(v26 + 2) = v18;
      *(v26 + 6) = v21;
      *(v26 + 4) = v23;
      *(v26 + 5) = v25;
      v26[48] = 1;
      v27 = sub_252692310();
      swift_beginAccess();
      sub_2526914E0();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC230) + 36)];
      v37 = *(sub_252691640() + 20);
      v38 = *MEMORY[0x277CE0118];
      v39 = sub_252691260();
      (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
      *v36 = v29;
      *(v36 + 1) = v31;
      *(v36 + 2) = v33;
      *(v36 + 3) = v35;
      *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0) + 36)] = 256;
      *v9 = v27;
      *(v9 + 4) = 256;
      LODWORD(v27) = sub_2526917A0();
      sub_252692A40();
      v40 = &v9[*(v5 + 36)];
      *v40 = 0x756F72676B636162;
      *(v40 + 1) = 0xEA0000000000646ELL;
      *(v40 + 2) = v18;
      *(v40 + 6) = v27;
      *(v40 + 4) = v41;
      *(v40 + 5) = v42;
      v40[48] = 1;
      v43 = sub_252692310();
      LODWORD(v38) = sub_2526917B0();
      sub_252692A40();
      *&v83 = v43;
      WORD4(v83) = 256;
      *&v84 = 0x726564616568;
      *(&v84 + 1) = 0xE600000000000000;
      *&v85 = v18;
      DWORD2(v85) = v38;
      *&v86 = v44;
      *(&v86 + 1) = v45;
      v87 = 1;
      v46 = sub_252692310();
      LODWORD(v38) = sub_2526917A0();
      sub_252692A40();
      *&v88 = v46;
      WORD4(v88) = 256;
      *&v89 = 0x6E6F74747562;
      *(&v89 + 1) = 0xE600000000000000;
      *&v90 = v18;
      DWORD2(v90) = v38;
      *&v91 = v47;
      *(&v91 + 1) = v48;
      v92 = 1;
      v49 = v67;
      sub_25237153C(v14, v67, &qword_27F4DC218);
      v50 = v68;
      sub_25237153C(v9, v68, &qword_27F4DC210);
      v80 = v85;
      v81 = v86;
      v82 = v87;
      v78 = v83;
      v79 = v84;
      v75 = v90;
      v76 = v91;
      v77 = v92;
      v73 = v88;
      v74 = v89;
      v51 = v69;
      sub_25237153C(v49, v69, &qword_27F4DC218);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC238);
      sub_25237153C(v50, v51 + v52[12], &qword_27F4DC210);
      v53 = v51 + v52[16];
      v54 = v82;
      v55 = v81;
      v93[2] = v80;
      v93[3] = v81;
      v57 = v78;
      v56 = v79;
      v93[0] = v78;
      v93[1] = v79;
      *(v53 + 32) = v80;
      *(v53 + 48) = v55;
      *(v53 + 64) = v54;
      *v53 = v57;
      *(v53 + 16) = v56;
      v58 = v51 + v52[20];
      v95[2] = v75;
      v95[3] = v76;
      v95[0] = v73;
      v95[1] = v74;
      v60 = v75;
      v59 = v76;
      v61 = v76;
      *(v58 + 32) = v75;
      *(v58 + 48) = v59;
      v62 = v74;
      v64 = v73;
      v63 = v74;
      *v58 = v73;
      *(v58 + 16) = v62;
      v94 = v54;
      v96 = v77;
      *(v58 + 64) = v77;
      v98 = v77;
      v97[2] = v60;
      v97[3] = v61;
      v97[0] = v64;
      v97[1] = v63;
      sub_25237153C(&v83, v99, &qword_27F4DC240);
      sub_25237153C(&v88, v99, &qword_27F4DC240);
      sub_25237153C(v93, v99, &qword_27F4DC240);
      sub_25237153C(v95, v99, &qword_27F4DC240);
      sub_252372288(v97, &qword_27F4DC240);
      v99[2] = v80;
      v99[3] = v81;
      v100 = v82;
      v99[0] = v78;
      v99[1] = v79;
      sub_252372288(v99, &qword_27F4DC240);
      sub_252372288(v50, &qword_27F4DC210);
      sub_252372288(v49, &qword_27F4DC218);
      sub_25237153C(v51, v16, &qword_27F4DC208);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC248, &qword_27F4DC228);
      sub_252400FC8(&qword_27F4DC250, &qword_27F4DC208);
      sub_252691470();
      sub_252372288(&v88, &qword_27F4DC240);
      sub_252372288(&v83, &qword_27F4DC240);
      sub_252372288(v51, &qword_27F4DC208);
      sub_252372288(v9, &qword_27F4DC210);
      return sub_252372288(v65, &qword_27F4DC218);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC660);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC668);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) - 1 >= 2)
    {
      v15 = sub_2526917A0();
      sub_252692A40();
      v17 = v16;
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC670);
      (*(*(v20 - 8) + 16))(v9, a1, v20);
      v21 = &v9[*(v7 + 36)];
      *v21 = 0x6E6F74747562;
      *(v21 + 1) = 0xE600000000000000;
      *(v21 + 2) = a4;
      *(v21 + 6) = v15;
      *(v21 + 4) = v17;
      *(v21 + 5) = v19;
      v21[48] = 1;
      sub_25237153C(v9, v12, &qword_27F4DC660);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670);
      sub_25242E9F4();
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC660);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC670);
      (*(*(v13 - 8) + 16))(v12, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670);
      sub_25242E9F4();
      return sub_252691470();
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2524295EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC740);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC748);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) - 1 >= 2)
    {
      v15 = sub_2526917B0();
      sub_252692A40();
      v17 = v16;
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC750);
      (*(*(v20 - 8) + 16))(v9, a1, v20);
      v21 = &v9[*(v7 + 36)];
      *v21 = 0x726564616568;
      *(v21 + 1) = 0xE600000000000000;
      *(v21 + 2) = a4;
      *(v21 + 6) = v15;
      *(v21 + 4) = v17;
      *(v21 + 5) = v19;
      v21[48] = 1;
      sub_25237153C(v9, v12, &qword_27F4DC740);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750);
      sub_25242F148();
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC740);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC750);
      (*(*(v13 - 8) + 16))(v12, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750);
      sub_25242F148();
      return sub_252691470();
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242995C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC458);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v19[0] = v1[4];
  *(v19 + 10) = *(v1 + 74);
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  sub_252429BA0(&v15, a1, v13 - v4);
  v13[2] = v17;
  v13[3] = v18;
  v14[0] = v19[0];
  *(v14 + 10) = *(v19 + 10);
  v13[0] = v15;
  v13[1] = v16;
  v8 = sub_25242AC08();
  v9 = sub_252690CB0();
  v10 = &v5[*(v3 + 36)];
  *v10 = v9;
  v10[8] = v8;
  if (v15)
  {
    v11 = swift_beginAccess();
    MEMORY[0x28223BE20](v11);
    *&v13[-1] = &v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC460);
    sub_25242DB20();
    sub_25242DF68();
    sub_252691D70();
    return sub_252372288(v5, &qword_27F4DC458);
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252429BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  *&v97 = a3;
  *&v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4D8);
  MEMORY[0x28223BE20](v98);
  v5 = &v82 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4C8);
  MEMORY[0x28223BE20](v89);
  v85 = &v82 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC500);
  MEMORY[0x28223BE20](v94);
  v96 = &v82 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC508);
  MEMORY[0x28223BE20](v87);
  v88 = &v82 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC498);
  MEMORY[0x28223BE20](v95);
  v90 = &v82 - v9;
  v84 = sub_2526910F0();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91 = sub_252691640();
  v12 = MEMORY[0x28223BE20](v91);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4A8);
  *&v86 = *(v93 - 8);
  v17 = MEMORY[0x28223BE20](v93);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v82 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  v28 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    if (*(v28 + 40))
    {
      if (*(v28 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v101 == 1)
        {
          v29 = *(a1 + 3);
          *v105 = *(a1 + 44);
          v30 = *(a1 + 5);
          v101 = v29;
          v102 = v30;
          v31 = *(a1 + 9);
          v103 = *(a1 + 7);
          v104 = v31;
          if (v105[1])
          {
            v32 = *(a1 + 3);
            v100[0] = *(a1 + 2);
            v100[1] = v32;
            v100[2] = *(a1 + 4);
            *(&v100[2] + 9) = *(a1 + 73);
            v99 = v29;
          }

          else
          {
            sub_25237153C(&v101, &v99, &qword_27F4DC510);
            sub_252692F00();
            v71 = sub_2526919C0();
            sub_252690570();

            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v101, &qword_27F4DC510);
            (*(v83 + 8))(v11, v84);
          }

          v59 = v96;
          v72 = v92;
          v73 = *(v91 + 20);
          v74 = *MEMORY[0x277CE0118];
          v75 = sub_252691260();
          v76 = *(*(v75 - 8) + 104);
          v98 = *(v100 + 8);
          v97 = *(&v100[1] + 8);
          v76(&v14[v73], v74, v75);
          v77 = v97;
          *v14 = v98;
          *(v14 + 1) = v77;
          v60 = v93;
          v78 = &v19[*(v93 + 36)];
          sub_25242E020(v14, v78);
          *(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0) + 36)) = 256;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8);
          (*(*(v79 - 8) + 16))(v19, v72, v79);
          sub_2523714D4(v19, v22, &qword_27F4DC4A8);
          v61 = v85;
          sub_2523714D4(v22, v85, &qword_27F4DC4A8);
          v58 = 0;
        }

        else
        {
          v58 = 1;
          v59 = v96;
          v60 = v93;
          v61 = v85;
        }

        (*(v86 + 56))(v61, v58, 1, v60);
        sub_25237153C(v61, v88, &qword_27F4DC4C8);
        swift_storeEnumTagMultiPayload();
        sub_25242DD48();
        sub_25242DE2C();
        v80 = v90;
        sub_252691470();
        sub_25237153C(v80, v59, &qword_27F4DC498);
        swift_storeEnumTagMultiPayload();
        sub_25242DCBC();
        sub_25242DEB0();
        sub_252691470();
        sub_252372288(v80, &qword_27F4DC498);
        v52 = v61;
        v53 = &qword_27F4DC4C8;
      }

      else
      {
        v54 = *(a1 + 3);
        *v105 = *(a1 + 44);
        v55 = *(a1 + 5);
        v101 = v54;
        v102 = v55;
        v56 = *(a1 + 9);
        v103 = *(a1 + 7);
        v104 = v56;
        if (v105[1])
        {
          v57 = *(a1 + 3);
          v100[0] = *(a1 + 2);
          v100[1] = v57;
          v100[2] = *(a1 + 4);
          *(&v100[2] + 9) = *(a1 + 73);
          v99 = v54;
        }

        else
        {
          sub_25237153C(&v101, &v99, &qword_27F4DC510);
          sub_252692F00();
          v62 = sub_2526919C0();
          sub_252690570();

          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v101, &qword_27F4DC510);
          (*(v83 + 8))(v11, v84);
        }

        v63 = *(v91 + 20);
        v64 = *MEMORY[0x277CE0118];
        v65 = sub_252691260();
        v66 = *(*(v65 - 8) + 104);
        v91 = *(v100 + 8);
        v86 = *(&v100[1] + 8);
        v66(&v16[v63], v64, v65);
        v67 = v86;
        *v16 = v91;
        *(v16 + 1) = v67;
        v68 = &v25[*(v93 + 36)];
        sub_25242E020(v16, v68);
        *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0) + 36)) = 256;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8);
        (*(*(v69 - 8) + 16))(v25, v92, v69);
        sub_2523714D4(v25, v27, &qword_27F4DC4A8);
        sub_25237153C(v27, v88, &qword_27F4DC4A8);
        swift_storeEnumTagMultiPayload();
        sub_25242DD48();
        sub_25242DE2C();
        v70 = v90;
        sub_252691470();
        sub_25237153C(v70, v96, &qword_27F4DC498);
        swift_storeEnumTagMultiPayload();
        sub_25242DCBC();
        sub_25242DEB0();
        sub_252691470();
        sub_252372288(v70, &qword_27F4DC498);
        v52 = v27;
        v53 = &qword_27F4DC4A8;
      }
    }

    else
    {
      v33 = *(a1 + 3);
      v103 = *(a1 + 2);
      v104 = v33;
      *v105 = *(a1 + 4);
      *&v105[10] = *(a1 + 74);
      v34 = *(a1 + 1);
      v101 = *a1;
      v102 = v34;
      sub_25242A994();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = &v5[*(v93 + 36)];
      v44 = *(v91 + 20);
      v45 = *MEMORY[0x277CE0118];
      v46 = sub_252691260();
      (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
      *v43 = v36;
      *(v43 + 1) = v38;
      *(v43 + 2) = v40;
      *(v43 + 3) = v42;
      *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0) + 36)] = 256;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8);
      (*(*(v47 - 8) + 16))(v5, v92, v47);
      v48 = a1[2];
      LODWORD(v45) = sub_2526917A0();
      sub_252692A40();
      v49 = &v5[*(v98 + 36)];
      *v49 = 0x756F72676B636162;
      *(v49 + 1) = 0xEA0000000000646ELL;
      *(v49 + 2) = v48;
      *(v49 + 6) = v45;
      *(v49 + 4) = v50;
      *(v49 + 5) = v51;
      v49[48] = 1;
      sub_25237153C(v5, v96, &qword_27F4DC4D8);
      swift_storeEnumTagMultiPayload();
      sub_25242DCBC();
      sub_25242DEB0();
      sub_252691470();
      v52 = v5;
      v53 = &qword_27F4DC4D8;
    }

    return sub_252372288(v52, v53);
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242A994()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 5);
  v7 = *(v0 + 9);
  v14 = *(v0 + 7);
  v15 = v7;
  v16 = *(v0 + 44);
  v12 = *(v0 + 3);
  v13 = v6;
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    if (v10[0])
    {
      if ((v16 & 0x100) != 0)
      {
        v10[2] = v14;
        v10[3] = v15;
        v11 = v16;
        v10[0] = v12;
        v10[1] = v13;
      }

      else
      {

        sub_252692F00();
        v9 = sub_2526919C0();
        sub_252690570();

        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v12, &qword_27F4DC120);
        return (*(v2 + 8))(v4, v1);
      }
    }

    else
    {
      swift_beginAccess();
      return sub_2526914E0();
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242AC08()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + 88);
  v5 = *(v0 + 56);
  v22[1] = *(v0 + 40);
  v22[2] = v5;
  v22[3] = *(v0 + 72);
  v22[0] = *(v0 + 24);
  if ((v23 & 0x100) != 0)
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 72);
    v19 = *(v0 + 56);
    v20 = v7;
    v21 = *(v0 + 88);
    v17 = *(v0 + 24);
    v18 = v6;
  }

  else
  {

    sub_252692F00();
    v8 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v22, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE1(v17) != 1)
  {
    return sub_252691A20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v10 = sub_252691A40();
  *(inited + 32) = v10;
  v11 = sub_252691A50();
  *(inited + 33) = v11;
  v12 = sub_252691A70();
  *(inited + 34) = v12;
  v13 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v10)
  {
    v13 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v11)
  {
    v13 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v12)
  {
    return sub_252691A60();
  }

  return v13;
}

uint64_t sub_25242AE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F4DA9B8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F4FB3D0;
  sub_25242A994();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_25237153C(a1, a2, &qword_27F4DC458);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC460) + 36));
  *v13 = v4;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v12;
}

uint64_t sub_25242AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E8);
      (*(*(v13 - 8) + 16))(v12, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8);
      sub_25242F720();
      return sub_252691470();
    }

    else
    {
      v15 = sub_2526917A0();
      sub_252692A40();
      v17 = v16;
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E8);
      (*(*(v20 - 8) + 16))(v9, a1, v20);
      v21 = &v9[*(v7 + 36)];
      *v21 = 0x6C6F72746E6F63;
      *(v21 + 1) = 0xE700000000000000;
      *(v21 + 2) = a4;
      *(v21 + 6) = v15;
      *(v21 + 4) = v17;
      *(v21 + 5) = v19;
      v21[48] = 1;
      sub_25237153C(v9, v12, &qword_27F4DC7D8);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8);
      sub_25242F720();
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC7D8);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.Icon.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC258);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC260);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC268);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC270);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *v2;
  if (*v2)
  {
    v15 = v2[2];
    v16 = *(v2 + 24);
    swift_beginAccess();
    if (*(v14 + 40) == 2)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278);
      (*(*(v17 - 8) + 16))(v13, v27, v17);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
      sub_25242C2F8();
      return sub_252691470();
    }

    else
    {
      if (v16)
      {
        v19 = sub_2526917A0();
        sub_252692A40();
        v21 = v20;
        v23 = v22;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278);
        (*(*(v24 - 8) + 16))(v8, v27, v24);
        v25 = &v8[*(v6 + 36)];
        *v25 = 1852793705;
        *(v25 + 1) = 0xE400000000000000;
        *(v25 + 2) = v15;
        *(v25 + 6) = v19;
        *(v25 + 4) = v21;
        *(v25 + 5) = v23;
        v25[48] = 1;
        sub_25237153C(v8, v5, &qword_27F4DC260);
        swift_storeEnumTagMultiPayload();
        sub_25242C214();
        sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
        sub_252691470();
        sub_252372288(v8, &qword_27F4DC260);
      }

      else
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278);
        (*(*(v26 - 8) + 16))(v5, v27, v26);
        swift_storeEnumTagMultiPayload();
        sub_25242C214();
        sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
        sub_252691470();
      }

      sub_25237153C(v10, v13, &qword_27F4DC268);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278);
      sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
      sub_25242C2F8();
      sub_252691470();
      return sub_252372288(v10, &qword_27F4DC268);
    }
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t AnimationModel.CornerRadius.init(controlViewCornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  type metadata accessor for AnimationModel();
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  *a1 = sub_252690DF0();
  *(a1 + 8) = v4;
  result = sub_2526924D0();
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 16) = a2;
  return result;
}

uint64_t AnimationModel.CornerRadius.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2A8);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2B0);
  MEMORY[0x28223BE20](v35);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2B8);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = v2[1];
  v41 = *v2;
  *v42 = v14;
  *&v42[16] = *(v2 + 4);
  v15 = v41;
  if (v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    if ((v39[0] & 1) != 0 && (v39[0] = *&v42[8], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320), sub_2526924E0(), (v40 & 1) == 0))
    {
      v16 = v42;
    }

    else
    {
      v16 = (v15 + 32);
      swift_beginAccess();
    }

    v17 = *v16;
    v18 = *(v11 + 16);
    v18(v13, a1, v10);
    swift_beginAccess();
    if (*(v15 + 40) == 2)
    {
      v19 = *v42;
      v34 = v11;
      v20 = &v9[*(v36 + 36)];
      v21 = *(sub_252690D30() + 20);
      v22 = *MEMORY[0x277CE0118];
      v23 = sub_252691260();
      (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
      *v20 = v19;
      *(v20 + 1) = v19;
      *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
      v18(v9, v13, v10);
      sub_25237153C(v9, v7, &qword_27F4DC2B8);
      swift_storeEnumTagMultiPayload();
      sub_25242C43C();
      sub_25242C520();
      v11 = v34;
      sub_252691470();
      sub_252372288(v9, &qword_27F4DC2B8);
    }

    else
    {
      v24 = swift_allocObject();
      v25 = *v42;
      *(v24 + 16) = v41;
      *(v24 + 32) = v25;
      *(v24 + 48) = *&v42[16];
      v34 = v10;
      v18(v5, v13, v10);
      v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2C8) + 36)];
      *v26 = sub_25242C3B0;
      v26[1] = v24;
      v26[2] = 0;
      v26[3] = 0;
      v27 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D0) + 36)];
      v28 = *(sub_252690D30() + 20);
      v29 = *MEMORY[0x277CE0118];
      v30 = sub_252691260();
      (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
      *v27 = v17;
      *(v27 + 1) = v17;
      *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
      sub_25242C404(&v41, v39);
      if (qword_27F4DA9B8 != -1)
      {
        swift_once();
      }

      v31 = &v5[*(v37 + 36)];
      *v31 = qword_27F4FB3D0;
      *(v31 + 1) = v17;
      sub_25237153C(v5, v7, &qword_27F4DC2A8);
      swift_storeEnumTagMultiPayload();
      sub_25242C43C();
      sub_25242C520();

      sub_252691470();
      sub_252372288(v5, &qword_27F4DC2A8);
      v10 = v34;
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for AnimationModel();
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242BFA8()
{
  result = sub_252692950();
  qword_27F4FB3D0 = result;
  return result;
}

uint64_t sub_25242BFE4()
{
  result = sub_252692950();
  qword_27F4FB3D8 = result;
  return result;
}

uint64_t sub_25242C064()
{
  result = sub_252692950();
  qword_27F4FB3F0 = result;
  return result;
}

uint64_t sub_25242C0C0(uint64_t a1, uint64_t *a2)
{
  sub_252692950();
  v3 = sub_252692960();

  *a2 = v3;
  return result;
}

uint64_t sub_25242C124()
{
  result = sub_252692950();
  qword_27F4FB400 = result;
  return result;
}

unint64_t sub_25242C15C()
{
  result = qword_27F4DC200;
  if (!qword_27F4DC200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC1E0);
    sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC200);
  }

  return result;
}

unint64_t sub_25242C214()
{
  result = qword_27F4DC280;
  if (!qword_27F4DC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC260);
    sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC280);
  }

  return result;
}

unint64_t sub_25242C2F8()
{
  result = qword_27F4DC2A0;
  if (!qword_27F4DC2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC268);
    sub_25242C214();
    sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2A0);
  }

  return result;
}

unint64_t sub_25242C43C()
{
  result = qword_27F4DC2E0;
  if (!qword_27F4DC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2B8);
    sub_252400FC8(&qword_27F4DC2E8, &qword_27F4DC2C0);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2E0);
  }

  return result;
}

unint64_t sub_25242C520()
{
  result = qword_27F4DC2F8;
  if (!qword_27F4DC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2A8);
    sub_25242C5D8();
    sub_252400FC8(&qword_27F4DC310, &qword_27F4DC318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2F8);
  }

  return result;
}

unint64_t sub_25242C5D8()
{
  result = qword_27F4DC300;
  if (!qword_27F4DC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2D0);
    sub_25242C690();
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC300);
  }

  return result;
}

unint64_t sub_25242C690()
{
  result = qword_27F4DC308;
  if (!qword_27F4DC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2C8);
    sub_252400FC8(&qword_27F4DC2E8, &qword_27F4DC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC308);
  }

  return result;
}

unint64_t sub_25242C74C()
{
  result = qword_27F4DC328;
  if (!qword_27F4DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC328);
  }

  return result;
}

void sub_25242C818()
{
  sub_25242CA60(319, &qword_27F4DC340);
  if (v0 <= 0x3F)
  {
    sub_25242CA60(319, &qword_27F4DC348);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25242CA60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2526906B0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25242CB2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242CB88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25242CC04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242CC60(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25242CCCC()
{
  result = qword_27F4DC350;
  if (!qword_27F4DC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC358);
    sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0);
    sub_25242C15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC350);
  }

  return result;
}

unint64_t sub_25242CD84()
{
  result = qword_27F4DC360;
  if (!qword_27F4DC360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC368);
    sub_252400FC8(&qword_27F4DC248, &qword_27F4DC228);
    sub_252400FC8(&qword_27F4DC250, &qword_27F4DC208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC360);
  }

  return result;
}