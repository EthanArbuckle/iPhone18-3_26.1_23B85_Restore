unint64_t sub_22FF8C2A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22FFB1CA8();

      sub_22FFB1548();
      v13 = sub_22FFB1CF8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Proto_SealedHash(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FF8C494(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 32 * v6);
      sub_22FFB1CA8();
      MEMORY[0x23190E460](v11);
      result = sub_22FFB1CF8();
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
        v14 = (v13 + 32 * v3);
        v15 = (v13 + 32 * v6);
        if (v3 != v6 || v14 >= v15 + 2)
        {
          v16 = v15[1];
          *v14 = *v15;
          v14[1] = v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22FF8C62C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22FFB1C98();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_22FFB0CC8() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FF8C7D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22FFA619C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Proto_SealedHash(0);
      return sub_22FF91AF4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Proto_SealedHash);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22FF8D3FC();
    goto LABEL_7;
  }

  sub_22FF8A5C8(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_22FFA619C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22FF8D0D4(v12, a2, a3, a1, v18);
}

_OWORD *sub_22FF8C944(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_22FFA62AC(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_22FF8D654();
      v15 = v23;
      goto LABEL_8;
    }

    sub_22FF8A940(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_22FFA62AC(a2, a3, a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_22FFB1C18();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return sub_22FEA2968(a1, v27);
  }

  else
  {
    sub_22FF8D180(v15, a2, a3, a4, a5, a1, v26);
  }
}

uint64_t sub_22FF8CAC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22FFB0958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22FFA6214(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for SEP.SealedHash(0);
      return sub_22FF91AF4(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for SEP.SealedHash);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22FF8D7F0();
    goto LABEL_7;
  }

  sub_22FF8AC14(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_22FFA6214(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22FF8D1F4(v15, v12, a1, v21);
}

_OWORD *sub_22FF8CC94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FFA619C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22FF8DCD0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22FF8B37C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22FFA619C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22FFB1C18();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_22FEA2968(a1, v23);
  }

  else
  {
    sub_22FF8D2E4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22FF8CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22FFA619C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22FF8B634(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_22FFA619C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22FFB1C18();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22FF8DE74();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_22FEA55AC(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t sub_22FF8CF6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FFA6338(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22FF8DFF8();
      goto LABEL_7;
    }

    sub_22FF8B8F0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_22FFA6338(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_22FFB0CC8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22FF8D350(v10, a2, a1, v16);
}

uint64_t sub_22FF8D0D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Proto_SealedHash(0);
  result = sub_22FF90754(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Proto_SealedHash);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_22FF8D180(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a7[6] + 32 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  result = sub_22FEA2968(a6, (a7[7] + 32 * a1));
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_22FF8D1F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22FFB0958();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for SEP.SealedHash(0);
  result = sub_22FF90754(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SEP.SealedHash);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_22FF8D2E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22FEA2968(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22FF8D350(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22FFB0CC8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_22FF8D3FC()
{
  v1 = v0;
  v2 = type metadata accessor for Proto_SealedHash(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
  v5 = *v0;
  v6 = sub_22FFB1AC8();
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
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22FF9064C(*(v5 + 56) + v27, v31, type metadata accessor for Proto_SealedHash);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22FF90754(v26, *(v28 + 56) + v27, type metadata accessor for Proto_SealedHash);
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

void *sub_22FF8D654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v22 = *v18;
        sub_22FEBF2A4(*(v2 + 56) + v17, v23);
        v21 = *(v4 + 48) + v17;
        *v21 = v22;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
        sub_22FEA2968(v23, (*(v4 + 56) + v17));
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

char *sub_22FF8D7F0()
{
  v1 = v0;
  v2 = type metadata accessor for SEP.SealedHash(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22FFB0958();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
  v7 = *v0;
  v8 = sub_22FFB1AC8();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_22FF9064C(*(v7 + 56) + v28, v37, type metadata accessor for SEP.SealedHash);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_22FF90754(v27, *(v29 + 56) + v28, type metadata accessor for SEP.SealedHash);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

void *sub_22FF8DB1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3930, &qword_22FFBFA18);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_22FEBF3A4(*(v2 + 56) + 32 * v17, v27, &qword_27DAF1CC0, &qword_22FFBFA20);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22FF8DCD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22FEBF2A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22FEA2968(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22FF8DE74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22FEA5608(v22, *(&v22 + 1));
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

void *sub_22FF8DFF8()
{
  v1 = v0;
  v30 = sub_22FFB0CC8();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
  v4 = *v0;
  v5 = sub_22FFB1AC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

char *sub_22FF8E260()
{
  v1 = v0;
  v34 = sub_22FFB0958();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  v4 = *v0;
  v5 = sub_22FFB1AC8();
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

size_t sub_22FF8E4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = MEMORY[0x277CC95F0];
  v4 = sub_22FF8A2B0(*(a1 + 16), 0, &qword_27DAF1D60, &qword_22FFB43C0, MEMORY[0x277CC95F0]);
  v5 = *(sub_22FFB0958() - 8);
  v6 = sub_22FF8FF60(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v1, a1, v3);

  sub_22FF6F7A8();
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_22FF8E600(void **a1)
{
  v2 = *(sub_22FFB0958() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22FF90208(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22FF8E6A8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22FF8E6A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
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
        sub_22FFB0958();
        v6 = sub_22FFB1718();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22FFB0958() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22FF8EA98(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22FF8E7D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF8E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22FFB0958();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0]);
      v27 = sub_22FFB1468();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FF8EA98(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_22FFB0958();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x28223BE20](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_22FF8FB54(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_22FF8F4C0(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22FF8FB54(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_22FF8FAC8(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x277D84F90];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0]);
      LODWORD(v134) = sub_22FFB1468();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_22FFB1468() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_22FEC2F98((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_22FF8F4C0(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22FF8FB54(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_22FF8FAC8(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0]);
    v110 = sub_22FFB1468();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_22FF8F4C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_22FFB0958();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0]);
          LOBYTE(v36) = sub_22FFB1468();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0]);
        LOBYTE(v23) = sub_22FFB1468();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_22FF8FB80(&v56, &v55, &v54, MEMORY[0x277CC95F0]);
  return 1;
}

uint64_t sub_22FF8FAC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FF8FB54(v3);
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

uint64_t sub_22FF8FB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_22FF8FC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v8)
    {
      v9 = a4 >> 32;
    }

    else
    {
      v9 = BYTE6(a5);
    }

    if (a2)
    {
      goto LABEL_6;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v8 == 2)
  {
    v9 = *(a4 + 24);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }
  }

LABEL_6:
  if (!a3)
  {
    v10 = 0;
    goto LABEL_45;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v21 = a3;
  v22 = a1;
  v10 = 0;
  v11 = a3 - 1;
  while (1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a4 + 16);
LABEL_14:
        if (v9 == v12)
        {
          goto LABEL_46;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = a4;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (!v9)
    {
LABEL_46:
      a1 = v22;
      goto LABEL_45;
    }

LABEL_17:
    if (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_55;
      }

      if (v9 < *(a4 + 16))
      {
        goto LABEL_49;
      }

      if (v9 >= *(a4 + 24))
      {
        goto LABEL_51;
      }

      v15 = sub_22FFB0588();
      if (!v15)
      {
        goto LABEL_57;
      }

      v16 = v15;
      a1 = sub_22FFB05B8();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      if (v9 < a4 || v9 >= a4 >> 32)
      {
        goto LABEL_50;
      }

      v18 = sub_22FFB0588();
      if (!v18)
      {
        goto LABEL_56;
      }

      v16 = v18;
      a1 = sub_22FFB05B8();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_52;
      }

LABEL_33:
      v14 = *(v16 + v17);
      goto LABEL_34;
    }

    if (v9 >= BYTE6(a5))
    {
      goto LABEL_48;
    }

    v23 = a4;
    v24 = a5;
    v25 = BYTE2(a5);
    v26 = BYTE3(a5);
    v27 = BYTE4(a5);
    v28 = BYTE5(a5);
    v14 = *(&v23 + v9);
LABEL_34:
    *(a2 + v10) = v14;
    if (v11 == v10)
    {
      break;
    }

    if (__OFADD__(++v10, 1))
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v10 = v21;
  a1 = v22;
LABEL_45:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v9;
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22FF8FF60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation13PublicKeyDataO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_22FEA5600(*a2, a2[1]);
      sub_22FEA5600(v2, v3);
      v7 = v3 & 0xDFFFFFFFFFFFFFFFLL;
      v9 = v5 & 0xDFFFFFFFFFFFFFFFLL;
      v6 = v2;
      v8 = v4;
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_22FEA5600(*a2, a2[1]);
    sub_22FEA5600(v2, v3);
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
LABEL_7:
    v10 = sub_22FEC3DC8(v6, v7, v8, v9);
    goto LABEL_8;
  }

  sub_22FEA5600(*a2, a2[1]);
  sub_22FEA5600(v2, v3);
  v10 = 0;
LABEL_8:
  sub_22FEA55A4(v2, v3);
  sub_22FEA55A4(v4, v5);
  return v10 & 1;
}

BOOL _s16CloudAttestation9ValidatedO0B6BundleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22FF121B0(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF7BE88(&qword_27DAF2128, MEMORY[0x277D216C8]);
  if ((sub_22FFB1478() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for Validated.AttestationBundle(0);
  v10 = v9[5];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v9;
      v17 = sub_22FFB1BC8();
      v9 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v9[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v9;
      v25 = sub_22FFB1BC8();
      v9 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = v9[7];
  v28 = *(a1 + v26);
  v27 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v31 = *v29;
  v30 = v29[1];
  if (v27 >> 60 == 15)
  {
    if (v30 >> 60 == 15)
    {
      v32 = v9;
      sub_22FEBF8F0(v28, v27);
      sub_22FEBF8F0(v31, v30);
      sub_22FEA56EC(v28, v27);
      goto LABEL_29;
    }

LABEL_26:
    sub_22FEBF8F0(v28, v27);
    sub_22FEBF8F0(v31, v30);
    sub_22FEA56EC(v28, v27);
    sub_22FEA56EC(v31, v30);
    return 0;
  }

  if (v30 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v32 = v9;
  sub_22FEBF8F0(v28, v27);
  sub_22FEBF8F0(v31, v30);
  v34 = sub_22FEC3DC8(v28, v27, v31, v30);
  sub_22FEA56EC(v31, v30);
  sub_22FEA56EC(v28, v27);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v35 = v32[8];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36)
  {
    return v37 && (sub_22FEE766C(v36, v37) & 1) != 0;
  }

  return !v37;
}

void sub_22FF905E4(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_22FF9064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF906D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF90754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of Attestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 56);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_22FEAA538;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of Attestor.attest(key:using:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 64);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_22FEAA538;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of Attestor.attest(key:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 72);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_22FEAA0D4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getEnumTagSinglePayload for EnforcementOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for EnforcementOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_22FF90E68()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of Validator.validate<A>(bundle:nonce:policy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(a11 + 48);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v11 + 16) = v20;
  *v20 = v11;
  v20[1] = sub_22FEAA538;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of Validator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 64);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_22FEAA538;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of Validator.validate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 72);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FEAA538;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22FF914A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF91548()
{
  type metadata accessor for AttestationBundle(319);
  if (v0 <= 0x3F)
  {
    sub_22FF9161C(319, &qword_28148F168);
    if (v1 <= 0x3F)
    {
      sub_22FF9161C(319, &qword_281491340);
      if (v2 <= 0x3F)
      {
        sub_22FF91668();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FF9161C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22FFB1888();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22FF91668()
{
  if (!qword_28148F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F128);
    }
  }
}

uint64_t sub_22FF916D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FF9172C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

void sub_22FF917AC()
{
  sub_22FF91880();
  if (v0 <= 0x3F)
  {
    sub_22FED85D4();
    if (v1 <= 0x3F)
    {
      sub_22FF918B0(319, &qword_27DAF38D8, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_22FF918B0(319, &qword_27DAF38E0, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22FF91880()
{
  result = qword_27DAF38D0;
  if (!qword_27DAF38D0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DAF38D0);
  }

  return result;
}

void sub_22FF918B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FF91A7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_22FEA55AC(result, a2);

    return sub_22FEA55AC(a4, a5);
  }

  return result;
}

uint64_t sub_22FF91AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF91BD0@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v118 = a1;
  v116 = a3;
  v128[8] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v99 - v6;
  v8 = type metadata accessor for Proto_Cryptex(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3948, &unk_22FFBFBB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = &v99 - v15;
  v111 = type metadata accessor for Proto_SealedHash.Entry(0);
  v110 = *(v111 - 8);
  v16 = *(v110 + 64);
  v17 = MEMORY[0x28223BE20](v111);
  v107 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v99 - v22;
  v24 = type metadata accessor for Proto_SealedHashLedger(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for Proto_SealedHash(0);
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v112 = &v99 - v34;
  v35 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v36 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v35 + v36, v23, &qword_27DAF26E8, &qword_22FFB7C60);
  v37 = *(v25 + 48);
  if (v37(v23, 1, v24) == 1)
  {
    *v28 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v38 = v28 + *(v24 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v37(v23, 1, v24) != 1)
    {
      sub_22FEAEA34(v23, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v23, v28, type metadata accessor for Proto_SealedHashLedger);
  }

  v39 = *v28;

  sub_22FF93C68(v28, type metadata accessor for Proto_SealedHashLedger);
  v40 = sub_22FFB0928();
  v42 = v117;
  if (!*(v39 + 16))
  {

    goto LABEL_59;
  }

  v43 = sub_22FFA619C(v40, v41);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_59:

    v54 = 0;
    v89 = -1;
    v90 = v116;
    goto LABEL_68;
  }

  sub_22FF93B98(*(v39 + 56) + *(v115 + 72) * v43, v33, type metadata accessor for Proto_SealedHash);

  v46 = v112;
  sub_22FF93C00(v33, v112, type metadata accessor for Proto_SealedHash);
  v47 = *(v46 + 16);
  v48 = *(v47 + 16);
  if (!v48)
  {
    v93 = v110;
    v92 = v108;
    v94 = v111;
    (*(v110 + 56))(v108, 1, 1, v111);
    v54 = MEMORY[0x277D84F90];
    v91 = v109;
    goto LABEL_63;
  }

  v49 = *(v111 + 24);
  v50 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v104 = *(v46 + 16);
  v51 = v47 + v50;
  v52 = *(v110 + 72);
  if (v113)
  {
    v53 = 1;
  }

  else
  {
    v53 = 3;
  }

  v113 = v53;
  v54 = MEMORY[0x277D84F90];
  v103 = v51;
  v105 = v48;
  v114 = v49;
  v115 = v52;
  do
  {
    sub_22FF93B98(v51, v42, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FEBF3A4(v42 + v49, v7, &qword_27DAF2130, &unk_22FFB5C80);
    v55 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    if ((*(*(v55 - 8) + 48))(v7, 1, v55) == 1)
    {
      sub_22FF93C68(v42, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
      goto LABEL_13;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22FF93C68(v42, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FF93C68(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      goto LABEL_13;
    }

    v118 = v54;
    v56 = v119;
    sub_22FF93C00(v7, v119, type metadata accessor for Proto_Cryptex);
    v58 = *v56;
    v57 = v56[1];
    v128[3] = MEMORY[0x277CC9318];
    v128[4] = MEMORY[0x277CC9300];
    v128[0] = v58;
    v128[1] = v57;
    v59 = __swift_project_boxed_opaque_existential_1(v128, MEMORY[0x277CC9318]);
    v60 = *v59;
    v61 = v59[1];
    v62 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v62 == 2)
      {
        v66 = *(v60 + 16);
        v106 = *(v60 + 24);
        sub_22FEA5608(v58, v57);
        v67 = sub_22FFB0588();
        if (v67)
        {
          v68 = v67;
          v69 = sub_22FFB05B8();
          if (__OFSUB__(v66, v69))
          {
            goto LABEL_73;
          }

          v70 = (v66 - v69 + v68);
        }

        else
        {
          v70 = 0;
        }

        v76 = v106 - v66;
        if (__OFSUB__(v106, v66))
        {
          goto LABEL_72;
        }

        v77 = sub_22FFB05A8();
        v60 = 0;
        if (v77 >= v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        v61 = 0xC000000000000000;
        if (!v70 || !v78)
        {
          goto LABEL_53;
        }

        if (v78 >= 15)
        {
LABEL_48:
          v80 = sub_22FFB05D8();
          v81 = *(v80 + 48);
          v82 = *(v80 + 52);
          swift_allocObject();
          v83 = sub_22FFB0578();
          v84 = v83;
          if (v78 >= 0x7FFFFFFF)
          {
            sub_22FFB0738();
            v60 = swift_allocObject();
            *(v60 + 16) = 0;
            *(v60 + 24) = v78;
            v61 = v84 | 0x8000000000000000;
          }

          else
          {
            v60 = v78 << 32;
            v61 = v83 | 0x4000000000000000;
          }

          goto LABEL_53;
        }

        memset(__dst, 0, sizeof(__dst));
        v127 = v78;
        memcpy(__dst, v70, v78);
        v60 = *__dst;
        v61 = v100 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v127 << 16)) << 32);
        v100 = v61;
      }

      else
      {
        sub_22FEA5608(v58, v57);
      }
    }

    else if (v62)
    {
      v71 = (v60 >> 32) - v60;
      if (v60 >> 32 < v60)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      sub_22FEA5608(v58, v57);
      v72 = sub_22FFB0588();
      if (v72)
      {
        v73 = v72;
        v74 = sub_22FFB05B8();
        if (__OFSUB__(v60, v74))
        {
          goto LABEL_74;
        }

        v75 = (v60 - v74 + v73);
      }

      else
      {
        v75 = 0;
      }

      v42 = v117;
      v79 = sub_22FFB05A8();
      v60 = 0;
      if (v79 >= v71)
      {
        v78 = v71;
      }

      else
      {
        v78 = v79;
      }

      v61 = 0xC000000000000000;
      if (!v75 || !v78)
      {
        goto LABEL_53;
      }

      if (v78 >= 15)
      {
        goto LABEL_48;
      }

      memset(__dst, 0, sizeof(__dst));
      v127 = v78;
      memcpy(__dst, v75, v78);
      v60 = *__dst;
      v61 = v101 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v127 << 16)) << 32);
      v101 = v61;
    }

    else
    {
      __src = *v59;
      v121 = v61;
      v122 = BYTE2(v61);
      v123 = BYTE3(v61);
      v124 = BYTE4(v61);
      v125 = BYTE5(v61);
      if (BYTE6(v61))
      {
        if (BYTE6(v61) <= 0xEuLL)
        {
          memset(__dst, 0, sizeof(__dst));
          v127 = BYTE6(v61);
          memcpy(__dst, &__src, BYTE6(v61));
          v60 = *__dst;
          v61 = v102 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v127 << 16)) << 32);
          sub_22FEA5608(v58, v57);
          v102 = v61;
        }

        else
        {
          v63 = sub_22FFB05D8();
          v64 = *(v63 + 48);
          v65 = *(v63 + 52);
          swift_allocObject();
          sub_22FEA5608(v58, v57);
          v60 = BYTE6(v61) << 32;
          v61 = sub_22FFB0578() | 0x4000000000000000;
        }
      }

      else
      {
        sub_22FEA5608(v58, v57);
        v60 = 0;
        v61 = 0xC000000000000000;
      }
    }

LABEL_53:
    v54 = v118;
    sub_22FF93C68(v119, type metadata accessor for Proto_Cryptex);
    sub_22FF93C68(v42, type metadata accessor for Proto_SealedHash.Entry);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_22FEC2E70(0, *(v54 + 2) + 1, 1, v54);
    }

    v86 = *(v54 + 2);
    v85 = *(v54 + 3);
    if (v86 >= v85 >> 1)
    {
      v54 = sub_22FEC2E70((v85 > 1), v86 + 1, 1, v54);
    }

    *(v54 + 2) = v86 + 1;
    v87 = &v54[24 * v86];
    *(v87 + 4) = v60;
    *(v87 + 5) = v61;
    v87[48] = v113;
    v49 = v114;
    v52 = v115;
LABEL_13:
    v51 += v52;
    --v48;
  }

  while (v48);
  v91 = v109;
  if (v105 > *(v104 + 16))
  {
    goto LABEL_75;
  }

  v92 = v108;
  sub_22FF93B98(v103 + v52 * (v105 - 1), v108, type metadata accessor for Proto_SealedHash.Entry);
  v93 = v110;
  v94 = v111;
  (*(v110 + 56))(v92, 0, 1, v111);
LABEL_63:
  sub_22FEBF3A4(v92, v91, &qword_27DAF3948, &unk_22FFBFBB8);
  if ((*(v93 + 48))(v91, 1, v94) == 1)
  {
    sub_22FEAEA34(v92, &qword_27DAF3948, &unk_22FFBFBB8);
    v90 = v116;
    goto LABEL_66;
  }

  v95 = v91;
  v96 = v107;
  sub_22FF93C00(v95, v107, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FF938FC(v96, v128);
  sub_22FF93C68(v96, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FEAEA34(v92, &qword_27DAF3948, &unk_22FFBFBB8);
  v97 = v128[0];
  v90 = v116;
  if (LOBYTE(v128[0]) == 2)
  {
LABEL_66:
    result = sub_22FF93C68(v112, type metadata accessor for Proto_SealedHash);
    goto LABEL_67;
  }

  result = sub_22FF93C68(v112, type metadata accessor for Proto_SealedHash);
  if (v97)
  {
    v89 = 1;
  }

  else
  {
LABEL_67:
    v89 = 0;
  }

LABEL_68:
  *v90 = v54;
  *(v90 + 8) = v89;
  v98 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF9293C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Proto_SealedHashLedger(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Proto_SealedHash(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v18 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v17 + v18, v4, &qword_27DAF26E8, &qword_22FFB7C60);
  v19 = *(v6 + 48);
  if (v19(v4, 1, v5) == 1)
  {
    *v9 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v20 = v9 + *(v5 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v19(v4, 1, v5) != 1)
    {
      sub_22FEAEA34(v4, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v4, v9, type metadata accessor for Proto_SealedHashLedger);
  }

  v21 = *v9;

  sub_22FF93C68(v9, type metadata accessor for Proto_SealedHashLedger);
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v22 = sub_22FFB0958();
  __swift_project_value_buffer(v22, qword_281490920);
  v23 = sub_22FFB0928();
  if (!*(v21 + 16))
  {

    goto LABEL_14;
  }

  v25 = sub_22FFA619C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_22FF93B98(*(v21 + 56) + *(v34 + 72) * v25, v14, type metadata accessor for Proto_SealedHash);

  sub_22FF93C00(v14, v16, type metadata accessor for Proto_SealedHash);
  v28 = *v16;
  v29 = v16[8];
  sub_22FF93C68(v16, type metadata accessor for Proto_SealedHash);
  if (v29 != 1)
  {
    return 0;
  }

  result = v28;
  if (v28)
  {
    if (v28 == 1)
    {
      v31 = sub_22FFB13C8();
      v32 = &qword_28148F198;
      v33 = MEMORY[0x277CC5540];
    }

    else
    {
      v31 = sub_22FFB13F8();
      v32 = &qword_28148F188;
      v33 = MEMORY[0x277CC5550];
    }

    sub_22FF74244(v32, v33);
    return v31;
  }

  return result;
}

uint64_t sub_22FF92D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v5;
  v74 = a1;
  v75 = a2;
  v9 = type metadata accessor for SEP.SealedHash(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v17;
  v20 = *v4;
  v21 = *(*v4 + 16);
  if (v4[8] != 1 || a3 >> 60 == 15)
  {
    v69 = *v4;
    v23 = MEMORY[0x277D84F90];
    if (v21)
    {
      v63 = v16;
      v64 = v5;
      v65 = &v62 - v17;
      v66 = v13;
      v67 = v9;
      v68 = a4;
      v78 = MEMORY[0x277D84F90];
      v24 = v69;

      sub_22FECD9FC(0, v21, 0);
      v23 = v78;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v72 = AssociatedTypeWitness;
      v26 = *(AssociatedTypeWitness - 8);
      v71 = *(v26 + 64);
      v70 = (v26 + 8);
      v27 = (v24 + 40);
      do
      {
        v73 = &v62;
        v28 = *(v27 - 1);
        v29 = *v27;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        v76 = v28;
        v77 = v29;
        sub_22FEA5608(v28, v29);
        sub_22FEA5608(v28, v29);
        sub_22FEB0E54();
        sub_22FFB1378();
        sub_22FEA55AC(v76, v77);
        v32 = v72;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v34 = sub_22FEC4190(v31, v32, *(AssociatedConformanceWitness + 32));
        v36 = v35;
        sub_22FEA55AC(v28, v29);
        AssociatedTypeWitness = (*v70)(v31, v32);
        v78 = v23;
        v38 = *(v23 + 16);
        v37 = *(v23 + 24);
        if (v38 >= v37 >> 1)
        {
          AssociatedTypeWitness = sub_22FECD9FC((v37 > 1), v38 + 1, 1);
          v23 = v78;
        }

        v27 += 3;
        *(v23 + 16) = v38 + 1;
        v39 = v23 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        --v21;
      }

      while (v21);

      v9 = v67;
      a4 = v68;
      v19 = v65;
      v13 = v66;
      v16 = v63;
      v6 = v64;
    }

    v56 = v16;
    result = sub_22FF5D114(v23, v16);
    if (!v6)
    {
      sub_22FF93C00(v56, v19, type metadata accessor for SEP.SealedHash);
LABEL_22:
      sub_22FF93C00(v19, v13, type metadata accessor for SEP.SealedHash);
      return sub_22FF93C00(&v13[*(v9 + 20)], a4, type metadata accessor for SEP.SealedHash.Value);
    }
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
    if (v21)
    {
      v63 = v18;
      v64 = v5;
      v65 = &v62 - v17;
      v66 = v13;
      v67 = v9;
      v68 = a4;
      v78 = MEMORY[0x277D84F90];

      sub_22FECD9FC(0, v21, 0);
      v40 = v78;
      v41 = swift_getAssociatedTypeWitness();
      v72 = v41;
      v42 = *(v41 - 8);
      v71 = *(v42 + 64);
      v69 = v20;
      v70 = (v42 + 8);
      v43 = (v20 + 40);
      do
      {
        v73 = &v62;
        v45 = *(v43 - 1);
        v44 = *v43;
        MEMORY[0x28223BE20](v41);
        v47 = &v62 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        v76 = v45;
        v77 = v44;
        sub_22FEA5608(v45, v44);
        sub_22FEA5608(v45, v44);
        sub_22FEB0E54();
        sub_22FFB1378();
        sub_22FEA55AC(v76, v77);
        v48 = v72;
        v49 = swift_getAssociatedConformanceWitness();
        v50 = sub_22FEC4190(v47, v48, *(v49 + 32));
        v52 = v51;
        sub_22FEA55AC(v45, v44);
        v41 = (*v70)(v47, v48);
        v78 = v40;
        v54 = *(v40 + 16);
        v53 = *(v40 + 24);
        if (v54 >= v53 >> 1)
        {
          v41 = sub_22FECD9FC((v53 > 1), v54 + 1, 1);
          v40 = v78;
        }

        v43 += 3;
        *(v40 + 16) = v54 + 1;
        v55 = v40 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v52;
        --v21;
      }

      while (v21);

      v9 = v67;
      a4 = v68;
      v19 = v65;
      v13 = v66;
      v18 = v63;
      v6 = v64;
    }

    v58 = v18;
    result = sub_22FF5D114(v40, v18);
    if (!v6)
    {
      sub_22FF93C00(v58, v19, type metadata accessor for SEP.SealedHash);
      v59 = sub_22FF9F990(&unk_2844D8490);
      v61 = v60;
      LOBYTE(v76) = 6;
      SEP.SealedHash.ratchet(digest:flags:)(v59, v60, &v76);
      sub_22FEA55AC(v59, v61);
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_22FF933EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26[-v7];
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v14 + v15, v8, &qword_27DAF26E8, &qword_22FFB7C60);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v13 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v17 = v13 + *(v9 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v8, v13, type metadata accessor for Proto_SealedHashLedger);
  }

  v18 = *v13;

  sub_22FF93C68(v13, type metadata accessor for Proto_SealedHashLedger);
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v19 = sub_22FFB0958();
  v20 = __swift_project_value_buffer(v19, qword_281490920);
  v21 = sub_22FFB0928();
  if (*(v18 + 16))
  {
    sub_22FFA619C(v21, v22);
    v24 = v23;

    if (v24)
    {
      return sub_22FF91BD0(v20, v27 & 1, a2);
    }
  }

  else
  {
  }

  *a2 = 0;
  *(a2 + 8) = -1;
  return result;
}

uint64_t sub_22FF936C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];

    sub_22FECD998(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_22FEA5608(v5, v6);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22FECD998((v8 > 1), v9 + 1, 1);
      }

      v4 += 24;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t static Cryptex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_22FEA5608(*a1, v3);
  sub_22FEA5608(v5, v6);
  v8 = sub_22FEC3DC8(v2, v3, v5, v6);
  sub_22FEA55AC(v5, v6);
  sub_22FEA55AC(v2, v3);
  return v8 & (v4 == v7);
}

uint64_t sub_22FF93858(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_22FEA5608(*a1, v3);
  sub_22FEA5608(v5, v6);
  v8 = sub_22FEC3DC8(v2, v3, v5, v6);
  sub_22FEA55AC(v5, v6);
  sub_22FEA55AC(v2, v3);
  return v8 & (v4 == v7);
}

uint64_t sub_22FF938FC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(&a1[*(v8 + 24)], v7, &qword_27DAF2130, &unk_22FFB5C80);
  v9 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_5:
    v12 = (*a1 >> 2) & 1;
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_22FF93C68(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_5;
  }

  LOBYTE(v12) = 1;
LABEL_6:
  *a2 = v12;
  return result;
}

uint64_t _s16CloudAttestation9CryptexesO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v5 = *a2;

  v7 = sub_22FEE76FC(v6, v3);

  return v7 & 1;
}

uint64_t sub_22FF93AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FF93B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FF93B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF93C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF93C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DarwinInit.SecureConfigSecurityPolicy.rawValue.getter()
{
  v1 = 1701736302;
  *v0;
  if (*v0)
  {
    v1 = 0x7972726163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x72656D6F74737563;
  }
}

char *DarwinInit.ensembleCertificateFingerprints.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_22FFA619C(0x632D657275636573, 0xED00006769666E6FLL);
    if (v3)
    {
      sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3950, &unk_22FFBFBC8);
      if (swift_dynamicCast())
      {
        if (*(v28 + 16) && (v4 = sub_22FFA619C(0xD00000000000002ALL, 0x800000022FFCB720), (v5 & 1) != 0))
        {
          sub_22FEBF2A4(*(v28 + 56) + 32 * v4, v29);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
          if (swift_dynamicCast())
          {
            v6 = 0;
            v7 = *(v28 + 16);
            v8 = MEMORY[0x277D84F90];
LABEL_8:
            v9 = (v28 + 40 + 16 * v6);
            while (v7 != v6)
            {
              if (v6 >= *(v28 + 16))
              {
                __break(1u);
LABEL_26:
                swift_once();
                goto LABEL_22;
              }

              ++v6;
              v10 = v9 + 2;
              v11 = *(v9 - 1);
              v12 = *v9;

              v13 = sub_22FFB0728();
              v15 = v14;

              v9 = v10;
              if (v15 >> 60 != 15)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_22FEC334C(0, *(v8 + 2) + 1, 1, v8);
                }

                v17 = *(v8 + 2);
                v16 = *(v8 + 3);
                v18 = v17 + 1;
                if (v17 >= v16 >> 1)
                {
                  v20 = sub_22FEC334C((v16 > 1), v17 + 1, 1, v8);
                  v18 = v17 + 1;
                  v8 = v20;
                }

                *(v8 + 2) = v18;
                v19 = &v8[16 * v17];
                *(v19 + 4) = v13;
                *(v19 + 5) = v15;
                goto LABEL_8;
              }
            }

            v22 = *(v8 + 2);
            v23 = *(v28 + 16);

            if (v22 == v23)
            {
              return v8;
            }

            if (qword_27DAF14B0 != -1)
            {
              goto LABEL_26;
            }

LABEL_22:
            v24 = sub_22FFB12F8();
            __swift_project_value_buffer(v24, qword_27DB05AE0);
            v25 = sub_22FFB12D8();
            v26 = sub_22FFB1838();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&dword_22FE99000, v25, v26, "Invalid formatted data in com.apple.CloudAttestation.ensembleMembers", v27, 2u);
              MEMORY[0x23190EFF0](v27, -1, -1);
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t DarwinInit.secureConfigRoutingHint.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22FFA619C(0x632D657275636573, 0xED00006769666E6FLL);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3950, &unk_22FFBFBC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v7 + 16) || (v4 = sub_22FFA619C(0xD000000000000026, 0x800000022FFCB750), (v5 & 1) == 0))
  {

    return 0;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v4, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t DarwinInit.cfPrefsRoutingHint.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22FFA619C(0x6E65726566657270, 0xEB00000000736563);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3958, &qword_22FFBFBD8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v5 = *(v17 + 16);
  if (!v5)
  {
LABEL_23:

    return 0;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v17 + 8 * v6 + 32);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_7:
    if (v5 == ++v6)
    {
      goto LABEL_23;
    }
  }

  v8 = *(v17 + 8 * v6 + 32);

  v9 = sub_22FFA619C(0x746163696C707061, 0xEE0064695F6E6F69);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v9, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v17 != 0xD000000000000011 || 0x800000022FFC9FC0 != v18)
  {
    v11 = sub_22FFB1BC8();

    if (v11)
    {
      goto LABEL_16;
    }

LABEL_6:

    goto LABEL_7;
  }

LABEL_16:
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v12 = sub_22FFA619C(7955819, 0xE300000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v12, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v17 != 0x44496C6C6563 || v18 != 0xE600000000000000)
  {
    v14 = sub_22FFB1BC8();

    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

LABEL_26:

  if (!*(v7 + 16))
  {
    goto LABEL_23;
  }

  v15 = sub_22FFA619C(0x65756C6176, 0xE500000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v15, v19);

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FF944DC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AE0);
  __swift_project_value_buffer(v0, qword_27DB05AE0);
  return sub_22FFB12E8();
}

uint64_t DarwinInit.routingHint.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = DarwinInit.secureConfigRoutingHint.getter();
  if (!v4)
  {
    return DarwinInit.cfPrefsRoutingHint.getter();
  }

  return result;
}

uint64_t DarwinInit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  if (!*(v5 + 16) || (v8 = sub_22FFA619C(0x7079745F656D696DLL, 0xE900000000000065), (v9 & 1) == 0) || ((v10 = (*(v5 + 56) + 16 * v8), *v10 == 0xD000000000000010) ? (v11 = 0x800000022FFC9E50 == v10[1]) : (v11 = 0), !v11 && (sub_22FFB1BC8() & 1) == 0))
  {
    sub_22FEA55AC(v4, v3);

    sub_22FEA55AC(v6, v7);
    sub_22FEDA044();
    swift_allocError();
    *v23 = xmmword_22FFB3CC0;
LABEL_21:
    *(v23 + 16) = 2;
LABEL_22:
    result = swift_willThrow();
    goto LABEL_23;
  }

  if (!*(v5 + 16) || (v12 = sub_22FFA619C(1701667182, 0xE400000000000000), (v13 & 1) == 0) || ((v14 = (*(v5 + 56) + 16 * v12), *v14 == 0x692D6E6977726164) ? (v15 = v14[1] == 0xEB0000000074696ELL) : (v15 = 0), !v15 && (sub_22FFB1BC8() & 1) == 0))
  {
    sub_22FEA55AC(v4, v3);

    sub_22FEA55AC(v6, v7);
    sub_22FEDA044();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    goto LABEL_21;
  }

  v16 = objc_opt_self();
  v17 = sub_22FFB07B8();
  sub_22FEA55AC(v4, v3);

  sub_22FEA55AC(v6, v7);
  *&v34[0] = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:v34];

  v19 = *&v34[0];
  if (!v18)
  {
    v26 = v19;
    sub_22FFB0648();

    goto LABEL_22;
  }

  sub_22FFB18C8();
  swift_unknownObjectRelease();
  sub_22FEBF2A4(v35, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3960, &unk_22FFBFBE0);
  if (swift_dynamicCast())
  {
    v20 = v33[0];
    if (*(v33[0] + 16))
    {

      v21 = sub_22FFA619C(0xD000000000000016, 0x800000022FFCB780);
      if (v22)
      {
        sub_22FEBF2A4(*(v33[0] + 56) + 32 * v21, v34);

        goto LABEL_29;
      }
    }

    memset(v34, 0, sizeof(v34));
LABEL_29:
    sub_22FED6328(v34, v33);
    if (v33[3])
    {
      sub_22FED6328(v33, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
      sub_22FEC8B3C();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast() || (v29 = sub_22FFB1B28(), , v29 > 3))
        {
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_22FED62C0(v33);
          sub_22FEDA044();
          swift_allocError();
          *v30 = 0xD000000000000016;
          *(v30 + 8) = 0x800000022FFCB780;
          *(v30 + 16) = 1;
          swift_willThrow();
          sub_22FED62C0(v34);
          __swift_destroy_boxed_opaque_existential_1(v35);

          goto LABEL_23;
        }

        sub_22FED62C0(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v32);
        goto LABEL_34;
      }

      sub_22FED62C0(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);

      v28 = v32;
    }

    else
    {
      sub_22FED62C0(v34);
      v28 = v35;
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
    LOBYTE(v29) = 0;
LABEL_34:
    result = sub_22FED62C0(v33);
    *a2 = v20;
    *(a2 + 8) = v29;
    goto LABEL_23;
  }

  sub_22FEDA044();
  swift_allocError();
  *v27 = xmmword_22FFB3CD0;
  *(v27 + 16) = 2;
  swift_willThrow();
  result = __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

CloudAttestation::DarwinInit::SecureConfigSecurityPolicy_optional __swiftcall DarwinInit.SecureConfigSecurityPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22FFB1B28();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FF94B34()
{
  v1 = *v0;
  sub_22FFB1CA8();
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FF94BF8()
{
  *v0;
  *v0;
  *v0;
  sub_22FFB1548();
}

uint64_t sub_22FF94CA8()
{
  v1 = *v0;
  sub_22FFB1CA8();
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

void sub_22FF94D74(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xED000079786F7250;
  }

  if (*v1)
  {
    v3 = 0x7972726163;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72656D6F74737563;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_22FF94EB4(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22FFB19B8();

    v8 = 0xD00000000000002DLL;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = 0;
    sub_22FFB19B8();
    MEMORY[0x23190DD10](0xD00000000000003BLL, 0x800000022FFCB840);
LABEL_5:
    MEMORY[0x23190DD10](a1, a2);
    MEMORY[0x23190DD10](34, 0xE100000000000000);
    return v8;
  }

  if (a1 > 2)
  {
    v7 = 0xD000000000000037;
    if (!(a1 ^ 4 | a2))
    {
      v7 = 0xD000000000000027;
    }

    if (a1 ^ 3 | a2)
    {
      return v7;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else
  {
    if (a1 ^ 1 | a2)
    {
      v6 = 0xD00000000000002ELL;
    }

    else
    {
      v6 = 0xD00000000000002ALL;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000025;
    }
  }
}

unint64_t sub_22FF95098()
{
  result = qword_27DAF3968;
  if (!qword_27DAF3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3968);
  }

  return result;
}

unint64_t sub_22FF950F0()
{
  result = qword_27DAF3970;
  if (!qword_27DAF3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF3978, &qword_22FFBFC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3970);
  }

  return result;
}

uint64_t sub_22FF95154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22FF9519C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation10DarwinInitV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_22FF9522C()
{
  result = qword_27DAF3980;
  if (!qword_27DAF3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3980);
  }

  return result;
}

uint64_t sub_22FF95280()
{
  v1 = *(v0 + 16);
  v2 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty)
  {
    goto LABEL_21;
  }

  if (!swift_dynamicCast())
  {
LABEL_20:
    LODWORD(CFProperty) = 0;
LABEL_21:
    v14 = 1;
    return CFProperty | (v14 << 32);
  }

  LODWORD(CFProperty) = v20;
  v4 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_19;
    }

    v6 = *(v20 + 16);
    v5 = *(v20 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
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
    goto LABEL_33;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      if (HIDWORD(v20) - v20 == 4)
      {
        goto LABEL_10;
      }

LABEL_19:
      sub_22FEA55AC(v20, v21);
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (BYTE6(v21) != 4)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      sub_22FEA55AC(v20, v21);
      v14 = 0;
      return CFProperty | (v14 << 32);
    }

    if (v20 <= v20 >> 32)
    {
      v9 = sub_22FFB0588();
      if (!v9)
      {
LABEL_34:
        result = sub_22FFB05A8();
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v10 = v9;
      v11 = sub_22FFB05B8();
      if (!__OFSUB__(v20, v11))
      {
        v12 = (v20 - v11 + v10);
        result = sub_22FFB05A8();
        if (!v12)
        {
          goto LABEL_35;
        }

LABEL_26:
        v19 = *v12;
        sub_22FEA55AC(v20, v21);
        v14 = 0;
        LODWORD(CFProperty) = v19;
        return CFProperty | (v14 << 32);
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v15 = *(v20 + 16);
  v16 = sub_22FFB0588();
  if (!v16)
  {
LABEL_33:
    sub_22FFB05A8();
    __break(1u);
    goto LABEL_34;
  }

  v17 = v16;
  v18 = sub_22FFB05B8();
  if (__OFSUB__(v15, v18))
  {
    goto LABEL_31;
  }

  v12 = (v15 - v18 + v17);
  result = sub_22FFB05A8();
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22FF95474()
{
  v1 = *(v0 + 16);
  v2 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty || !swift_dynamicCast())
  {
    return 0;
  }

  v4 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_19;
    }

    v6 = *(v20 + 16);
    v5 = *(v20 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 8)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      if (HIDWORD(v20) - v20 == 8)
      {
        goto LABEL_10;
      }

LABEL_19:
      sub_22FEA55AC(v20, v21);
      return 0;
    }

    goto LABEL_27;
  }

  if (BYTE6(v21) != 8)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      sub_22FEA55AC(v20, v21);
      return v20;
    }

    if (v20 <= v20 >> 32)
    {
      v9 = v20;
      v10 = sub_22FFB0588();
      if (!v10)
      {
LABEL_32:
        result = sub_22FFB05A8();
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = v10;
      v12 = sub_22FFB05B8();
      if (!__OFSUB__(v20, v12))
      {
        v13 = (v20 - v12 + v11);
        result = sub_22FFB05A8();
        if (!v13)
        {
          goto LABEL_33;
        }

LABEL_24:
        v19 = *v13;
        sub_22FEA55AC(v9, v21);
        return v19;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v9 = v20;
  v15 = *(v20 + 16);
  v16 = sub_22FFB0588();
  if (!v16)
  {
LABEL_31:
    sub_22FFB05A8();
    __break(1u);
    goto LABEL_32;
  }

  v17 = v16;
  v18 = sub_22FFB05B8();
  if (__OFSUB__(v15, v18))
  {
    goto LABEL_29;
  }

  v13 = (v15 - v18 + v17);
  result = sub_22FFB05A8();
  if (v13)
  {
    goto LABEL_24;
  }

LABEL_34:
  __break(1u);
  return result;
}

void static DeviceMode.local.getter(uint64_t a1@<X8>)
{
  v2 = sub_22FEB1B20(0xD000000000000032, 0x800000022FFCB950);
  if (v2 == 2)
  {
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v3 = sub_22FFB12F8();
    __swift_project_value_buffer(v3, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read sysctl('security.mac.amfi.restricted_execution_mode_status')";
LABEL_22:
    _os_log_impl(&dword_22FE99000, v4, v5, v7, v6, 2u);
    MEMORY[0x23190EFF0](v6, -1, -1);
LABEL_23:

    v18 = 2;
    goto LABEL_24;
  }

  v8 = v2;
  v9 = sub_22FEB1B20(0xD000000000000027, 0x800000022FFCB990);
  if (v9 == 2)
  {
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v10 = sub_22FFB12F8();
    __swift_project_value_buffer(v10, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read sysctl('security.mac.amfi.developer_mode_status')";
    goto LABEL_22;
  }

  v11 = v9;
  type metadata accessor for IORegistryEntry();
  inited = swift_initStackObject();
  v13 = *MEMORY[0x277CD2898];
  v14 = sub_22FFB1488();
  v15 = IORegistryEntryCopyFromPath(v13, v14);

  *(inited + 16) = v15;
  if (!v15)
  {
    swift_setDeallocating();
    IOObjectRelease(0);
    goto LABEL_18;
  }

  v16 = sub_22FF95280();
  swift_setDeallocating();
  IOObjectRelease(v15);
  if ((v16 & 0x100000000) != 0)
  {
LABEL_18:
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v19 = sub_22FFB12F8();
    __swift_project_value_buffer(v19, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read IODeviceTree:/product 'ephemeral-data-mode'";
    goto LABEL_22;
  }

  if (v11)
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v8 & 1 | ((v16 == 1) << 8) | v17;
LABEL_24:
  *a1 = v18;
  *(a1 + 2) = BYTE2(v18);
}

CloudAttestation::DeviceMode __swiftcall DeviceMode.init(restrictedExecution:ephemeralData:developer:)(Swift::Bool restrictedExecution, Swift::Bool ephemeralData, Swift::Bool developer)
{
  *v3 = restrictedExecution;
  v3[1] = ephemeralData;
  v3[2] = developer;
  result.restrictedExecution = restrictedExecution;
  return result;
}

uint64_t sub_22FF959AC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AF8);
  __swift_project_value_buffer(v0, qword_27DB05AF8);
  return sub_22FFB12E8();
}

uint64_t DeviceMode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CC8();
}

uint64_t DeviceMode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF95B38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CC8();
}

uint64_t sub_22FF95B84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF95C2C()
{
  result = qword_27DAF3988;
  if (!qword_27DAF3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3988);
  }

  return result;
}

uint64_t PrivateCloudComputeFeatures.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

unint64_t sub_22FF95D30()
{
  result = qword_27DAF3990;
  if (!qword_27DAF3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3990);
  }

  return result;
}

uint64_t sub_22FF95E4C(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = a1(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v25 - v8, v3, v6);
  sub_22FF9F948(a2, a3);
  result = sub_22FFB1608();
  v11 = v26;
  v12 = v27;
  v13 = *(v26 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v27 == v13)
  {
LABEL_2:

    v26 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290);
    v15 = sub_22FFB1458();

    return v15;
  }

  else
  {
    v25 = xmmword_22FFB2D10;
    v16 = v27;
    while ((v12 & 0x8000000000000000) == 0)
    {
      if (v16 >= *(v11 + 16))
      {
        goto LABEL_13;
      }

      v17 = *(v11 + 32 + v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v18 = swift_allocObject();
      *(v18 + 16) = v25;
      *(v18 + 56) = MEMORY[0x277D84B78];
      *(v18 + 64) = MEMORY[0x277D84BC0];
      *(v18 + 32) = v17;
      v19 = sub_22FFB14D8();
      v21 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_22FEC2E8C((v22 > 1), v23 + 1, 1, v14);
        v14 = result;
      }

      ++v16;
      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      if (v13 == v16)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_22FF960FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
  v16[3] = v8;
  v16[4] = sub_22FEBF78C(&qword_28148F0B0, &qword_27DAF1CA8, &qword_22FFC0150);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_22FF9E9E4((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_22FF96214(uint64_t a1, unint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = a1;
  v40 = a2;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  sub_22FEA5608(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36D0, &qword_22FFBE480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v33, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, v38);
    sub_22FFB0618();
    v33[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v36);
    goto LABEL_61;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_22FEAEA34(v33, &qword_27DAF1C90, &qword_22FFB3FF0);
  v2 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v39 + 16);
      v4 = *(v39 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v39;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v39 >> 32;
    }

    else
    {
      v4 = BYTE6(v40);
    }
  }

  v5 = sub_22FF5B7EC(v3, v4, v39, v40);
  *&v33[0] = sub_22FF9F498(v5);
  *(&v33[0] + 1) = v6;
  MEMORY[0x28223BE20](*&v33[0]);
  sub_22FF5AF38(sub_22FF9F614);
  v7 = *(&v36 + 1);
  v8 = v36;
  v9 = v37;
  v10 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(*&v33[0] + 16);
      v11 = *(*&v33[0] + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        goto LABEL_73;
      }

      if (v38 != v14)
      {
        goto LABEL_22;
      }
    }

    else if (v38)
    {
      v15 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_74;
    }

    if (v38 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v38 == BYTE14(v33[0]))
  {
LABEL_27:
    LOBYTE(v16) = 0;
    v17 = *(&v36 + 1) >> 62;
    v31 = v36 >> 32;
    v32 = BYTE14(v36);
    *(&v36 + 7) = 0;
    *&v36 = 0;
    while (1)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = *(v8 + 16);
LABEL_33:
          if (v9 == v18)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = v8;
        if (v17)
        {
          goto LABEL_33;
        }
      }

      if (!v9)
      {
LABEL_62:
        if (v16)
        {
          *&v35 = v36;
          *(&v35 + 6) = *(&v36 + 6);
          sub_22FFB0778();
        }

        goto LABEL_60;
      }

LABEL_36:
      v13 = __OFSUB__(v9--, 1);
      if (v13)
      {
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
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_75;
        }

        if (v9 < *(v8 + 16))
        {
          goto LABEL_66;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_69;
        }

        v20 = sub_22FFB0588();
        if (!v20)
        {
          goto LABEL_77;
        }

        v21 = v20;
        v22 = sub_22FFB05B8();
        v23 = v9 - v22;
        if (__OFSUB__(v9, v22))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v17)
      {
        if (v9 < v8 || v9 >= v31)
        {
          goto LABEL_68;
        }

        v24 = sub_22FFB0588();
        if (!v24)
        {
          goto LABEL_76;
        }

        v21 = v24;
        v25 = sub_22FFB05B8();
        v23 = v9 - v25;
        if (__OFSUB__(v9, v25))
        {
          goto LABEL_70;
        }

LABEL_52:
        v19 = *(v21 + v23);
        goto LABEL_53;
      }

      if (v9 >= v32)
      {
        goto LABEL_67;
      }

      *&v35 = v8;
      WORD4(v35) = v7;
      BYTE10(v35) = BYTE2(v7);
      BYTE11(v35) = BYTE3(v7);
      BYTE12(v35) = BYTE4(v7);
      BYTE13(v35) = BYTE5(v7);
      v19 = *(&v35 + v9);
LABEL_53:
      *(&v36 + v16) = v19;
      v16 = v16 + 1;
      if ((v16 >> 8))
      {
        goto LABEL_65;
      }

      if (v16 == 14)
      {
        *&v35 = v36;
        *(&v35 + 6) = *(&v36 + 6);
        sub_22FFB0778();
        LOBYTE(v16) = 0;
      }
    }
  }

LABEL_22:
  if (v10 == 2)
  {
    v15 = *(*&v33[0] + 24);
  }

  else if (v10 == 1)
  {
    v15 = *&v33[0] >> 32;
  }

  else
  {
    v15 = BYTE14(v33[0]);
  }

LABEL_58:
  if (v15 < v38)
  {
    goto LABEL_72;
  }

  sub_22FFB0758();
LABEL_60:
  sub_22FEA55AC(v8, v7);
LABEL_61:
  v26 = v33[0];
  v27 = v39;
  v28 = v40;
  sub_22FEA5608(*&v33[0], *(&v33[0] + 1));
  sub_22FEA55AC(v27, v28);
  sub_22FEA55AC(v26, *(&v26 + 1));
  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t NodeAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error();
      sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error();
    sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

double NodeAttestor.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = xmmword_22FFB3760;
  *(a1 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a1 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a1 + 147) = 0;
  static Environment.default.getter(&v11);
  v2 = v11;
  *(v12 + 8) = xmmword_22FFB3760;
  *(&v16 + 1) = &type metadata for SEP.PhysicalDevice;
  *&v17 = &protocol witness table for SEP.PhysicalDevice;
  *(&v19[1] + 3) = 0;
  if (MEMORY[0x277D73580])
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v3 = 0;
  }

  sub_22FF9A6A8(v2, v3, v2, v9);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v17 = v9[6];
  v18 = v9[7];
  v19[0] = *v10;
  *(v19 + 13) = *&v10[13];
  v13 = v9[2];
  v14 = v9[3];
  v15 = v9[4];
  v16 = v9[5];
  v12[0] = v9[0];
  v12[1] = v9[1];
  __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  v4 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v4;
  *(a1 + 128) = v19[0];
  *(a1 + 141) = *(v19 + 13);
  v5 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  result = *v12;
  v8 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v8;
  return result;
}

uint64_t NodeAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[59] = a6;
  v7[60] = v6;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a2;
  v7[56] = a3;
  v7[54] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70) - 8) + 64) + 15;
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v7[62] = v9;
  v10 = *(v9 - 8);
  v7[63] = v10;
  v11 = *(v10 + 64) + 15;
  v7[64] = swift_task_alloc();
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v7[65] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[66] = swift_task_alloc();
  v14 = *(*(type metadata accessor for TransparencyLogProofs(0) - 8) + 64) + 15;
  v7[67] = swift_task_alloc();
  v15 = sub_22FFB13C8();
  v7[68] = v15;
  v16 = *(v15 - 8);
  v7[69] = v16;
  v17 = *(v16 + 64) + 15;
  v7[70] = swift_task_alloc();
  v18 = sub_22FFB0E58();
  v7[71] = v18;
  v19 = *(v18 - 8);
  v7[72] = v19;
  v20 = *(v19 + 64) + 15;
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v21 = sub_22FFB1398();
  v7[75] = v21;
  v22 = *(v21 - 8);
  v7[76] = v22;
  v23 = *(v22 + 64) + 15;
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v24 = type metadata accessor for Release();
  v7[80] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v26 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v27 = type metadata accessor for Proto_AttestationBundle(0);
  v7[88] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF96E64, 0, 0);
}

uint64_t sub_22FF96E64()
{
  v35 = v0;
  if (qword_27DAF14C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = sub_22FFB12F8();
  *(v0 + 728) = __swift_project_value_buffer(v2, qword_27DB05B10);
  sub_22FEAEC34(v1, v0 + 16);
  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1848();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136446210;
    v34 = *(v0 + 16);
    v7 = Environment.rawValue.getter();
    v9 = v8;
    sub_22FF9E97C(v0 + 16);
    v10 = sub_22FF9E448(v7, v9, &v31);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22FE99000, v3, v4, "Attesting key in environment %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23190EFF0](v6, -1, -1);
    MEMORY[0x23190EFF0](v5, -1, -1);
  }

  else
  {

    sub_22FF9E97C(v0 + 16);
  }

  v11 = *(v0 + 472);
  if (v11 >> 60 != 15)
  {
    v12 = *(v0 + 464);
    v13 = *(v0 + 448);
    v14 = *MEMORY[0x277CDC410];
    sub_22FEA5608(v12, *(v0 + 472));
    v15 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v12, v11);
  }

  v16 = *(v0 + 480);
  v17 = *(v0 + 440);
  v18 = *(v0 + 448);
  v19 = v16[11];
  v20 = v16[12];
  __swift_project_boxed_opaque_existential_1(v16 + 8, v19);
  (*(v20 + 8))(&v31, v17, v18, v19, v20);
  v21 = *(v0 + 480);
  v22 = v31;
  *(v0 + 736) = v31;
  v29 = v32;
  *(v0 + 744) = v32;
  *(v0 + 760) = v33;
  v23 = v21[6];
  v24 = v21[7];
  __swift_project_boxed_opaque_existential_1(v21 + 3, v23);
  v25 = *(v24 + 16);
  sub_22FEA5608(v22, v29);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 768) = v27;
  *v27 = v0;
  v27[1] = sub_22FF97410;

  return v30(v23, v24);
}

uint64_t sub_22FF97410(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  *(*v2 + 776) = v1;

  if (v1)
  {

    v7 = sub_22FF98580;
  }

  else
  {
    *(v4 + 784) = a1;
    v7 = sub_22FF97540;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FF97540()
{
  v130 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  *(v0 + 792) = v1;
  v3 = *(v0 + 720);
  v4 = *(v0 + 704);
  v5 = *(v0 + 480);
  v6 = *(v0 + 456);
  v7 = swift_task_alloc();
  v9 = *(v0 + 736);
  v8 = *(v0 + 752);
  *(v7 + 16) = v9;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v1;
  *(v7 + 72) = v8;
  *(v7 + 56) = v9;
  sub_22FF9F948(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (v2)
  {
    v10 = *(v0 + 760);
    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    sub_22FEA55AC(v13, v12);

    sub_22FEA55AC(v13, v12);
    sub_22FEA55AC(v11, v10);

    v26 = *(v0 + 728);
    v27 = v2;
    v28 = sub_22FFB12D8();
    v29 = sub_22FFB1838();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22FE99000, v28, v29, "Attestation failed: %{public}@", v30, 0xCu);
      sub_22FEAEA34(v31, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v31, -1, -1);
      MEMORY[0x23190EFF0](v30, -1, -1);
    }

    v34 = *(v0 + 720);
    v35 = *(v0 + 712);
    v36 = *(v0 + 696);
    v37 = *(v0 + 688);
    v38 = *(v0 + 680);
    v39 = *(v0 + 672);
    v40 = *(v0 + 664);
    v99 = *(v0 + 656);
    v100 = *(v0 + 648);
    v102 = *(v0 + 632);
    v104 = *(v0 + 624);
    v106 = *(v0 + 616);
    v108 = *(v0 + 592);
    v111 = *(v0 + 584);
    v114 = *(v0 + 560);
    v117 = *(v0 + 536);
    v121 = *(v0 + 528);
    v124 = *(v0 + 512);
    log = *(v0 + 488);

    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v14 = *(v0 + 728);
    v15 = *(v0 + 720);
    v16 = *(v0 + 696);
    v17 = *(v0 + 480);

    sub_22FF9F6DC(v15, v16, type metadata accessor for Proto_AttestationBundle);
    v18 = *(v17 + 146);
    sub_22FEAEC34(v17, v0 + 168);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1848();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67240448;
      *(v21 + 4) = v18;
      *(v21 + 8) = 1026;
      v22 = *(v0 + 314);
      sub_22FF9E97C(v0 + 168);
      *(v21 + 10) = v22;
      _os_log_impl(&dword_22FE99000, v19, v20, "Computing release object: evaluateTrust=%{BOOL,public}d, requireCryptex1=%{BOOL,public}d)", v21, 0xEu);
      MEMORY[0x23190EFF0](v21, -1, -1);
    }

    else
    {
      sub_22FF9E97C(v0 + 168);
    }

    v23 = *(v0 + 712);
    v24 = *(v0 + 688);
    v25 = *(v0 + 672);
    sub_22FF9F6DC(*(v0 + 696), v24, type metadata accessor for AttestationBundle);
    sub_22FF9F6DC(v24, v23, type metadata accessor for Proto_AttestationBundle);
    sub_22FF68C5C(v23, v18, v18, v25);
    v43 = *(v0 + 728);
    v44 = *(v0 + 680);
    v45 = *(v0 + 672);
    v46 = *(v0 + 664);
    v47 = *(v0 + 656);
    sub_22FF9F8E8(*(v0 + 688), type metadata accessor for AttestationBundle);
    sub_22FF9F880(v45, v44, type metadata accessor for Release);
    sub_22FF9F6DC(v44, v46, type metadata accessor for Release);
    sub_22FF9F6DC(v44, v47, type metadata accessor for Release);
    v48 = sub_22FFB12D8();
    v49 = sub_22FFB1848();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 664);
    if (v50)
    {
      v52 = *(v0 + 648);
      v53 = *(v0 + 640);
      v54 = *(v0 + 592);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v129[0] = v56;
      *v55 = 136446466;
      sub_22FF9F6DC(v51, v52, type metadata accessor for Release);
      sub_22FFB19B8();

      v129[1] = 0xD000000000000010;
      v129[2] = 0x800000022FFC9F50;
      sub_22FFB0E48();
      sub_22FF9F948(&qword_28148F578, type metadata accessor for Release);
      sub_22FFB0E38();
      v115 = v55;
      v118 = *(v0 + 656);
      v109 = *(v0 + 664);
      v112 = *(v0 + 648);
      v105 = *(v0 + 608);
      v107 = *(v0 + 600);
      v58 = *(v0 + 592);
      loga = v48;
      v59 = *(v0 + 576);
      v60 = *(v0 + 568);
      v61 = *(v0 + 560);
      v101 = *(v0 + 632);
      v103 = *(v0 + 552);
      v62 = *(v0 + 544);
      v63 = sub_22FFB0E18();
      v122 = v49;
      v64 = sub_22FF9F538(v63);
      v125 = v56;
      v66 = v65;

      (*(v59 + 8))(v58, v60);
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
      sub_22FFB1388();
      sub_22FEA5608(v64, v66);
      sub_22FF9EA78(v64, v66);
      sub_22FEA55AC(v64, v66);
      sub_22FFB1368();
      sub_22FEA55AC(v64, v66);
      (*(v103 + 8))(v61, v62);
      v67 = sub_22FF95E4C(MEMORY[0x277CC5290], &qword_28148F1B8, MEMORY[0x277CC5290]);
      v69 = v68;
      (*(v105 + 8))(v101, v107);
      MEMORY[0x23190DD10](v67, v69);

      MEMORY[0x23190DD10](41, 0xE100000000000000);
      sub_22FF9F8E8(v112, type metadata accessor for Release);
      sub_22FF9F8E8(v109, type metadata accessor for Release);
      v70 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, v129);

      *(v115 + 1) = v70;
      *(v115 + 6) = 2082;
      v71 = Release.jsonString.getter();
      v73 = v72;
      sub_22FF9F8E8(v118, type metadata accessor for Release);
      v74 = sub_22FF9E448(v71, v73, v129);

      *(v115 + 14) = v74;
      _os_log_impl(&dword_22FE99000, loga, v122, "This device's %{public}s:\n%{public}s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v125, -1, -1);
      MEMORY[0x23190EFF0](v115, -1, -1);
    }

    else
    {
      v57 = *(v0 + 656);

      sub_22FF9F8E8(v57, type metadata accessor for Release);
      sub_22FF9F8E8(v51, type metadata accessor for Release);
    }

    v75 = *(v0 + 680);
    v76 = *(v0 + 640);
    v77 = *(v0 + 584);
    v78 = *(v0 + 480);
    v79 = v78[16];
    v80 = v78[17];
    __swift_project_boxed_opaque_existential_1(v78 + 13, v79);
    sub_22FFB0E48();
    sub_22FF9F948(&qword_28148F578, type metadata accessor for Release);
    sub_22FFB0E38();
    v119 = *(v0 + 608);
    v123 = v80;
    v113 = *(v0 + 624);
    v116 = *(v0 + 600);
    v81 = *(v0 + 584);
    v82 = *(v0 + 576);
    v110 = *(v0 + 568);
    v83 = *(v0 + 560);
    v84 = *(v0 + 552);
    v85 = *(v0 + 544);
    v86 = sub_22FFB0E18();
    v126 = v79;
    v87 = sub_22FF9F538(v86);
    v89 = v88;

    (*(v82 + 8))(v81, v110);
    *(v0 + 800) = sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
    sub_22FFB1388();
    sub_22FEA5608(v87, v89);
    sub_22FF9EA78(v87, v89);
    sub_22FEA55AC(v87, v89);
    sub_22FFB1368();
    sub_22FEA55AC(v87, v89);
    v90 = *(v84 + 8);
    *(v0 + 808) = v90;
    *(v0 + 816) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v90(v83, v85);
    *(v0 + 344) = v116;
    *(v0 + 352) = sub_22FF9F948(&qword_28148F1C0, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v119 + 16))(boxed_opaque_existential_1, v113, v116);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    sub_22FFB0618();
    v92 = *(v119 + 8);
    *(v0 + 824) = v92;
    *(v0 + 832) = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v92(v113, v116);
    v94 = *(v0 + 408);
    v93 = *(v0 + 416);
    *(v0 + 840) = v94;
    *(v0 + 848) = v93;
    __swift_destroy_boxed_opaque_existential_1((v0 + 320));
    v95 = *(v123 + 8);
    v120 = (v95 + *v95);
    v96 = v95[1];
    v97 = swift_task_alloc();
    *(v0 + 856) = v97;
    *v97 = v0;
    v97[1] = sub_22FF995CC;
    v98 = *(v0 + 536);

    return v120(v98, v94, v93, v126, v123);
  }
}

uint64_t sub_22FF98580()
{
  v97 = v0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 792) = MEMORY[0x277D84F90];
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);
  v6 = swift_task_alloc();
  v8 = *(v0 + 736);
  v7 = *(v0 + 752);
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = v1;
  *(v6 + 72) = v7;
  *(v6 + 56) = v8;
  sub_22FF9F948(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB11B8();
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v11 = *(v0 + 696);
  v12 = *(v0 + 480);

  sub_22FF9F6DC(v10, v11, type metadata accessor for Proto_AttestationBundle);
  v13 = *(v12 + 146);
  sub_22FEAEC34(v12, v0 + 168);
  v14 = sub_22FFB12D8();
  v15 = sub_22FFB1848();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67240448;
    *(v16 + 4) = v13;
    *(v16 + 8) = 1026;
    v17 = *(v0 + 314);
    sub_22FF9E97C(v0 + 168);
    *(v16 + 10) = v17;
    _os_log_impl(&dword_22FE99000, v14, v15, "Computing release object: evaluateTrust=%{BOOL,public}d, requireCryptex1=%{BOOL,public}d)", v16, 0xEu);
    MEMORY[0x23190EFF0](v16, -1, -1);
  }

  else
  {
    sub_22FF9E97C(v0 + 168);
  }

  v18 = *(v0 + 712);
  v19 = *(v0 + 688);
  v20 = *(v0 + 672);
  sub_22FF9F6DC(*(v0 + 696), v19, type metadata accessor for AttestationBundle);
  sub_22FF9F6DC(v19, v18, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v18, v13, v13, v20);
  v21 = *(v0 + 728);
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  sub_22FF9F8E8(*(v0 + 688), type metadata accessor for AttestationBundle);
  sub_22FF9F880(v23, v22, type metadata accessor for Release);
  sub_22FF9F6DC(v22, v24, type metadata accessor for Release);
  sub_22FF9F6DC(v22, v25, type metadata accessor for Release);
  v26 = sub_22FFB12D8();
  v27 = sub_22FFB1848();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 664);
  if (v28)
  {
    v30 = *(v0 + 648);
    v31 = *(v0 + 640);
    v32 = *(v0 + 592);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v96[0] = v34;
    *v33 = 136446466;
    sub_22FF9F6DC(v29, v30, type metadata accessor for Release);
    sub_22FFB19B8();

    v96[1] = 0xD000000000000010;
    v96[2] = 0x800000022FFC9F50;
    sub_22FFB0E48();
    sub_22FF9F948(&qword_28148F578, type metadata accessor for Release);
    sub_22FFB0E38();
    v86 = v33;
    v88 = *(v0 + 656);
    v82 = *(v0 + 664);
    v84 = *(v0 + 648);
    v80 = *(v0 + 608);
    v81 = *(v0 + 600);
    v36 = *(v0 + 592);
    log = v26;
    v37 = *(v0 + 576);
    v38 = *(v0 + 568);
    v39 = *(v0 + 560);
    v78 = *(v0 + 632);
    v79 = *(v0 + 552);
    v40 = *(v0 + 544);
    v41 = sub_22FFB0E18();
    v91 = v27;
    v42 = sub_22FF9F538(v41);
    v93 = v34;
    v44 = v43;

    (*(v37 + 8))(v36, v38);
    sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
    sub_22FFB1388();
    sub_22FEA5608(v42, v44);
    sub_22FF9EA78(v42, v44);
    sub_22FEA55AC(v42, v44);
    sub_22FFB1368();
    sub_22FEA55AC(v42, v44);
    (*(v79 + 8))(v39, v40);
    v45 = sub_22FF95E4C(MEMORY[0x277CC5290], &qword_28148F1B8, MEMORY[0x277CC5290]);
    v47 = v46;
    (*(v80 + 8))(v78, v81);
    MEMORY[0x23190DD10](v45, v47);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FF9F8E8(v84, type metadata accessor for Release);
    sub_22FF9F8E8(v82, type metadata accessor for Release);
    v48 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, v96);

    *(v86 + 1) = v48;
    *(v86 + 6) = 2082;
    v49 = Release.jsonString.getter();
    v51 = v50;
    sub_22FF9F8E8(v88, type metadata accessor for Release);
    v52 = sub_22FF9E448(v49, v51, v96);

    *(v86 + 14) = v52;
    _os_log_impl(&dword_22FE99000, log, v91, "This device's %{public}s:\n%{public}s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v93, -1, -1);
    MEMORY[0x23190EFF0](v86, -1, -1);
  }

  else
  {
    v35 = *(v0 + 656);

    sub_22FF9F8E8(v35, type metadata accessor for Release);
    sub_22FF9F8E8(v29, type metadata accessor for Release);
  }

  v53 = *(v0 + 680);
  v54 = *(v0 + 640);
  v55 = *(v0 + 584);
  v56 = *(v0 + 480);
  v57 = v56[16];
  v58 = v56[17];
  __swift_project_boxed_opaque_existential_1(v56 + 13, v57);
  sub_22FFB0E48();
  sub_22FF9F948(&qword_28148F578, type metadata accessor for Release);
  sub_22FFB0E38();
  v89 = *(v0 + 608);
  v92 = v58;
  v85 = *(v0 + 624);
  v87 = *(v0 + 600);
  v59 = *(v0 + 584);
  v60 = *(v0 + 576);
  v83 = *(v0 + 568);
  v61 = *(v0 + 560);
  v62 = *(v0 + 552);
  v63 = *(v0 + 544);
  v64 = sub_22FFB0E18();
  v94 = v57;
  v65 = sub_22FF9F538(v64);
  v67 = v66;

  (*(v60 + 8))(v59, v83);
  *(v0 + 800) = sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v65, v67);
  sub_22FF9EA78(v65, v67);
  sub_22FEA55AC(v65, v67);
  sub_22FFB1368();
  sub_22FEA55AC(v65, v67);
  v68 = *(v62 + 8);
  *(v0 + 808) = v68;
  *(v0 + 816) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v61, v63);
  *(v0 + 344) = v87;
  *(v0 + 352) = sub_22FF9F948(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(v89 + 16))(boxed_opaque_existential_1, v85, v87);
  __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
  sub_22FFB0618();
  v70 = *(v89 + 8);
  *(v0 + 824) = v70;
  *(v0 + 832) = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v70(v85, v87);
  v72 = *(v0 + 408);
  v71 = *(v0 + 416);
  *(v0 + 840) = v72;
  *(v0 + 848) = v71;
  __swift_destroy_boxed_opaque_existential_1((v0 + 320));
  v73 = *(v92 + 8);
  v90 = (v73 + *v73);
  v74 = v73[1];
  v75 = swift_task_alloc();
  *(v0 + 856) = v75;
  *v75 = v0;
  v75[1] = sub_22FF995CC;
  v76 = *(v0 + 536);

  return v90(v76, v72, v71, v94, v92);
}

uint64_t sub_22FF995CC()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  v2[108] = v0;

  v5 = v2[106];
  v6 = v2[105];
  if (v0)
  {
    v7 = v2[99];
    sub_22FEA55AC(v6, v5);

    v8 = sub_22FF9A170;
  }

  else
  {
    sub_22FEA55AC(v6, v5);
    v8 = sub_22FF99724;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

__SecKey *sub_22FF99724()
{
  v132 = v0;
  v1 = *(v0 + 728);
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "Fetched inclusion proofs for release", v4, 2u);
    MEMORY[0x23190EFF0](v4, -1, -1);
  }

  v5 = *(v0 + 864);
  v6 = *(v0 + 536);
  v7 = *(v0 + 456);

  TransparencyLogProofs.verify(expiration:)(v7);
  if (v5)
  {
    v8 = v5;
    v9 = *(v0 + 792);
    v10 = *(v0 + 760);
    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    v14 = *(v0 + 720);
    v15 = *(v0 + 696);
    v16 = *(v0 + 680);
    v17 = *(v0 + 536);

    sub_22FEA55AC(v13, v12);
    sub_22FEA55AC(v13, v12);
    sub_22FEA55AC(v11, v10);
    sub_22FF9F8E8(v16, type metadata accessor for Release);
    sub_22FF9F8E8(v14, type metadata accessor for Proto_AttestationBundle);
    sub_22FF9F8E8(v15, type metadata accessor for AttestationBundle);
    sub_22FF9F8E8(v17, type metadata accessor for TransparencyLogProofs);
    v18 = *(v0 + 728);
    v19 = v8;
    v20 = sub_22FFB12D8();
    v21 = sub_22FFB1838();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = v8;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_22FE99000, v20, v21, "Attestation failed: %{public}@", v22, 0xCu);
      sub_22FEAEA34(v23, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v23, -1, -1);
      MEMORY[0x23190EFF0](v22, -1, -1);
    }

    v26 = *(v0 + 720);
    v27 = *(v0 + 712);
    v28 = *(v0 + 696);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    v32 = v20;
    v33 = *(v0 + 664);
    v97 = *(v0 + 656);
    v99 = *(v0 + 648);
    v101 = *(v0 + 632);
    log = *(v0 + 624);
    v107 = *(v0 + 616);
    v110 = *(v0 + 592);
    v113 = *(v0 + 584);
    v116 = *(v0 + 560);
    v119 = *(v0 + 536);
    v122 = *(v0 + 528);
    v125 = *(v0 + 512);
    v128 = *(v0 + 488);

    swift_willThrow();

    v34 = *(v0 + 8);
    goto LABEL_17;
  }

  v35 = *(v0 + 536);
  v36 = *(v0 + 528);
  v37 = *(v0 + 520);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v38 = *(v37 + 20);
  v39 = type metadata accessor for LogEntry(0);
  (*(*(v39 - 8) + 56))(v36 + v38, 1, 1, v39);
  v40 = *(v37 + 24);
  v41 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v41 - 8) + 56))(v36 + v40, 1, 1, v41);
  LOBYTE(v35) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v35, v36);
  sub_22FF9F8E8(v36, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  if ((v35 & 1) == 0)
  {
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 536);
    v45 = *(v0 + 512);
    v46 = *(v0 + 496);
    *(swift_task_alloc() + 16) = v44;
    sub_22FF9F948(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);
    sub_22FFB11B8();

    v47 = *(v42 + 20);
    v48 = *(v43 + v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v43 + v47);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      v50 = sub_22FF10520(v50);
      *(v43 + v47) = v50;
    }

    v54 = *(v0 + 504);
    v56 = *(v0 + 488);
    v55 = *(v0 + 496);
    sub_22FF9F880(*(v0 + 512), v56, type metadata accessor for Proto_TransparencyProofs);
    (*(v54 + 56))(v56, 0, 1, v55);
    v57 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v56, v50 + v57, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
  }

  result = SecKeyCopyPublicKey(*(v0 + 440));
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v59 = result;
  result = SecKeyCopyExternalRepresentation(result, 0);
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v60 = result;
  v61 = *(v0 + 792);
  v62 = *(v0 + 728);

  v63 = v60;
  v64 = sub_22FFB12D8();
  v65 = sub_22FFB1848();

  if (os_log_type_enabled(v64, v65))
  {
    v100 = *(v0 + 824);
    v102 = *(v0 + 832);
    v93 = *(v0 + 808);
    v94 = *(v0 + 816);
    v66 = *(v0 + 800);
    v123 = *(v0 + 760);
    v117 = *(v0 + 752);
    v108 = *(v0 + 736);
    v111 = *(v0 + 744);
    v126 = *(v0 + 680);
    v129 = *(v0 + 720);
    v120 = v63;
    v67 = *(v0 + 616);
    v96 = *(v0 + 600);
    v114 = v59;
    v68 = *(v0 + 560);
    v69 = *(v0 + 544);
    loga = v64;
    v70 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v131 = v98;
    *v70 = 136446210;
    v71 = sub_22FFB07E8();
    v73 = v72;
    v95 = v65;
    sub_22FFB1388();
    sub_22FEA5608(v71, v73);
    sub_22FF9EA78(v71, v73);
    sub_22FEA55AC(v71, v73);
    sub_22FFB1368();
    sub_22FEA55AC(v71, v73);
    v93(v68, v69);
    sub_22FF9F948(&qword_28148F1B0, MEMORY[0x277CC5290]);
    v74 = sub_22FFB1BA8();
    v76 = v75;
    v100(v67, v96);
    v77 = sub_22FF9E448(v74, v76, &v131);

    *(v70 + 4) = v77;
    _os_log_impl(&dword_22FE99000, loga, v95, "Successfully created attestation for key: %{public}s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x23190EFF0](v98, -1, -1);
    MEMORY[0x23190EFF0](v70, -1, -1);
    sub_22FEA55AC(v108, v111);

    sub_22FEA55AC(v108, v111);
    sub_22FEA55AC(v117, v123);

    sub_22FF9F8E8(v126, type metadata accessor for Release);
    v78 = v129;
  }

  else
  {
    v79 = *(v0 + 760);
    v80 = *(v0 + 752);
    v81 = *(v0 + 744);
    v82 = *(v0 + 736);
    v83 = *(v0 + 720);
    v84 = *(v0 + 680);
    sub_22FEA55AC(v82, v81);

    sub_22FEA55AC(v82, v81);
    sub_22FEA55AC(v80, v79);

    sub_22FF9F8E8(v84, type metadata accessor for Release);
    v78 = v83;
  }

  sub_22FF9F8E8(v78, type metadata accessor for Proto_AttestationBundle);
  v85 = *(v0 + 720);
  v86 = *(v0 + 712);
  v87 = *(v0 + 688);
  v88 = *(v0 + 680);
  v89 = *(v0 + 672);
  v90 = *(v0 + 664);
  v91 = *(v0 + 656);
  v103 = *(v0 + 648);
  logb = *(v0 + 632);
  v109 = *(v0 + 624);
  v112 = *(v0 + 616);
  v115 = *(v0 + 592);
  v118 = *(v0 + 584);
  v92 = *(v0 + 536);
  v121 = *(v0 + 560);
  v124 = *(v0 + 528);
  v127 = *(v0 + 512);
  v130 = *(v0 + 488);
  sub_22FF9F880(*(v0 + 696), *(v0 + 432), type metadata accessor for AttestationBundle);
  sub_22FF9F8E8(v92, type metadata accessor for TransparencyLogProofs);

  v34 = *(v0 + 8);
LABEL_17:

  return v34();
}

uint64_t sub_22FF9A170()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[90];
  v6 = v0[87];
  v7 = v0[85];
  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v2, v1);
  sub_22FF9F8E8(v7, type metadata accessor for Release);
  sub_22FF9F8E8(v5, type metadata accessor for Proto_AttestationBundle);
  sub_22FF9F8E8(v6, type metadata accessor for AttestationBundle);
  v8 = v0[108];
  v9 = v0[91];
  v10 = v8;
  v11 = sub_22FFB12D8();
  v12 = sub_22FFB1838();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_22FE99000, v11, v12, "Attestation failed: %{public}@", v13, 0xCu);
    sub_22FEAEA34(v14, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v14, -1, -1);
    MEMORY[0x23190EFF0](v13, -1, -1);
  }

  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[87];
  v20 = v0[86];
  v21 = v0[85];
  v22 = v0[84];
  v23 = v0[83];
  v24 = v11;
  v25 = v0[82];
  v28 = v0[81];
  v29 = v0[79];
  v30 = v0[78];
  v31 = v0[77];
  v32 = v0[74];
  v33 = v0[73];
  v34 = v0[70];
  v35 = v0[67];
  v36 = v0[66];
  v37 = v0[64];
  v38 = v0[61];

  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_22FF9A468()
{
  if (os_variant_allows_internal_security_policies() && (v0 = sub_22FFB1488(), v1 = sub_22FFB1488(), CFPreferencesCopyAppValue(v0, v1), v0, v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39C0, &qword_22FFC0158), swift_dynamicCast()))
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

double NodeAttestor.init<A>(transparencyProver:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 8) = xmmword_22FFB3760;
  *(a4 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a4 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a4 + 147) = 0;
  (*(v8 + 16))(v11, a1, a2);
  v13 = NodeAttestor.init<A, B>(transparencyProver:assetProvider:)(v11, v12, a2, &type metadata for PCC.AssetProvider, a3, &protocol witness table for PCC.AssetProvider, v20);
  (*(v8 + 8))(a1, a2, v13);
  __swift_destroy_boxed_opaque_existential_1((a4 + 64));
  v14 = v20[7];
  *(a4 + 96) = v20[6];
  *(a4 + 112) = v14;
  *(a4 + 128) = *v21;
  *(a4 + 141) = *&v21[13];
  v15 = v20[3];
  *(a4 + 32) = v20[2];
  *(a4 + 48) = v15;
  v16 = v20[5];
  *(a4 + 64) = v20[4];
  *(a4 + 80) = v16;
  result = *v20;
  v18 = v20[1];
  *a4 = v20[0];
  *(a4 + 16) = v18;
  return result;
}

uint64_t sub_22FF9A6A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = xmmword_22FFB3760;
  *(a4 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a4 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a4 + 147) = 0;
  *(a4 + 48) = &type metadata for PCC.AssetProvider;
  *(a4 + 56) = &protocol witness table for PCC.AssetProvider;
  *(a4 + 128) = &type metadata for SWTransparencyLog;
  *(a4 + 136) = &protocol witness table for SWTransparencyLog;
  *(a4 + 104) = a1;
  *(a4 + 112) = a2;
  *a4 = a3;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v6 = sub_22FF9A468();
  v7 = 0x3F8u >> a3;
  if (v6 == 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  *(a4 + 144) = v8 & 1;
  v9 = sub_22FF9A468();
  if (v9 == 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  *(a4 + 145) = v10 & 1;
  result = sub_22FF9A468();
  if (result == 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = result;
  }

  *(a4 + 146) = v12 & 1;
  return result;
}

uint64_t sub_22FF9A7CC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = xmmword_22FFB3760;
  *(a3 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a3 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a3 + 147) = 0;
  *(a3 + 48) = &type metadata for PCC.AssetProvider;
  *(a3 + 56) = &protocol witness table for PCC.AssetProvider;
  *(a3 + 128) = &type metadata for NopTransparencyLog;
  *(a3 + 136) = &protocol witness table for NopTransparencyLog;
  *(a3 + 104) = a1;
  *a3 = a2;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v5 = sub_22FF9A468();
  v6 = 0x3F8u >> a2;
  if (v5 == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(a3 + 144) = v7 & 1;
  v8 = sub_22FF9A468();
  if (v8 == 2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  *(a3 + 145) = v9 & 1;
  result = sub_22FF9A468();
  if (result == 2)
  {
    v11 = v6;
  }

  else
  {
    v11 = result;
  }

  *(a3 + 146) = v11 & 1;
  return result;
}

uint64_t NodeAttestor.init<A, B>(transparencyProver:assetProvider:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a3;
  *(a8 + 8) = xmmword_22FFB3760;
  *(a8 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a8 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a8 + 147) = 0;
  *(a8 + 48) = a5;
  *(a8 + 56) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 24));
  v16 = *(a5 - 8);
  (*(v16 + 16))(boxed_opaque_existential_1, a2, a5);
  *(a8 + 128) = a4;
  *(a8 + 136) = a6;
  v17 = __swift_allocate_boxed_opaque_existential_1((a8 + 104));
  v18 = *(a4 - 8);
  (*(v18 + 16))(v17, a1, a4);
  *a8 = v14;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v19 = sub_22FF9A468();
  v20 = 0x3F8u >> v14;
  if (v19 == 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(a8 + 144) = v21 & 1;
  v22 = sub_22FF9A468();
  if (v22 == 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  *(a8 + 145) = v23 & 1;
  v24 = sub_22FF9A468();
  (*(v16 + 8))(a2, a5);
  result = (*(v18 + 8))(a1, a4);
  if (v24 == 2)
  {
    v26 = v20;
  }

  else
  {
    v26 = v24;
  }

  *(a8 + 146) = v26 & 1;
  return result;
}

double NodeAttestor.init<A, B>(transparencyProver:assetProvider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v15);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a7 + 8) = xmmword_22FFB3760;
  *(a7 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a7 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a7 + 147) = 0;
  (*(v19 + 16))(v22, a1);
  (*(v13 + 16))(v17, a2, a4);
  static Environment.default.getter(&v29);
  NodeAttestor.init<A, B>(transparencyProver:assetProvider:environment:)(v22, v17, &v29, a3, a4, a5, v28, v30);
  (*(v13 + 8))(a2, a4);
  (*(v19 + 8))(a1, a3);
  __swift_destroy_boxed_opaque_existential_1((a7 + 64));
  v23 = v30[7];
  *(a7 + 96) = v30[6];
  *(a7 + 112) = v23;
  *(a7 + 128) = v31[0];
  *(a7 + 141) = *(v31 + 13);
  v24 = v30[3];
  *(a7 + 32) = v30[2];
  *(a7 + 48) = v24;
  v25 = v30[5];
  *(a7 + 64) = v30[4];
  *(a7 + 80) = v25;
  result = *v30;
  v27 = v30[1];
  *a7 = v30[0];
  *(a7 + 16) = v27;
  return result;
}

uint64_t NodeAttestor.defaultKeyDuration.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t NodeAttestor.defaultKeyDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NodeAttestor.transparencyProver.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 104));

  return sub_22FE9B84C(a1, v1 + 104);
}

uint64_t sub_22FF9AF14()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05B10);
  __swift_project_value_buffer(v0, qword_27DB05B10);
  return sub_22FFB12E8();
}

uint64_t sub_22FF9AF94()
{
  result = SecKeyCopySystemKey();
  qword_27DB05B28 = result;
  return result;
}

uint64_t type metadata accessor for NodeAttestor.Error()
{
  result = qword_27DAF3998;
  if (!qword_27DAF3998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double NodeAttestor.init(environment:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 8) = xmmword_22FFB3760;
  *(a2 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a2 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a2 + 147) = 0;
  if (MEMORY[0x277D73580])
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v4 = 0;
  }

  sub_22FF9A6A8(v3, v4, v3, v10);
  __swift_destroy_boxed_opaque_existential_1((a2 + 64));
  v5 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = *v11;
  *(a2 + 141) = *&v11[13];
  v6 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v6;
  v7 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v7;
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  return result;
}

void sub_22FF9B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v163 = a8;
  v162 = a7;
  v164 = a6;
  v172 = a5;
  v167 = a4;
  v170 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v161 - v14;
  v166 = sub_22FFB0908();
  v15 = *(v166 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v166);
  v18 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22FFB0EE8();
  v19 = *(v168 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v168);
  v22 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v24 = *(a1 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v23);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v26 = sub_22FF10520(v26);
    *(a1 + v23) = v26;
  }

  swift_beginAccess();
  v30 = v26[2];
  v31 = v26[3];
  v32 = v170;
  v26[2] = a2;
  v26[3] = v32;
  sub_22FEA55AC(v30, v31);
  (*(v15 + 16))(v18, v167, v166);
  sub_22FEA5608(a2, v32);
  sub_22FFB0EC8();
  v33 = *(a1 + v23);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a1 + v23);
  v165 = a1;
  if ((v34 & 1) == 0)
  {
    v36 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v35 = sub_22FF10520(v35);
    *(a1 + v23) = v35;
  }

  v39 = v168;
  v40 = v169;
  (*(v19 + 32))(v169, v22, v168);
  (*(v19 + 56))(v40, 0, 1, v39);
  v41 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v40, v35 + v41, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v42 = v172;
  v43 = v172[6];
  v44 = v172[7];
  __swift_project_boxed_opaque_existential_1(v172 + 3, v43);
  v45 = v171;
  v46 = (*(v44 + 8))(v43, v44);
  if (v45)
  {
    if (qword_27DAF14C0 != -1)
    {
      swift_once();
    }

    v48 = sub_22FFB12F8();
    __swift_project_value_buffer(v48, qword_27DB05B10);
    v49 = v45;
    v50 = sub_22FFB12D8();
    v51 = sub_22FFB1838();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      v54 = v45;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_22FE99000, v50, v51, "Unable to fetch ap ticket: %{public}@", v52, 0xCu);
      sub_22FEAEA34(v53, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v53, -1, -1);
      MEMORY[0x23190EFF0](v52, -1, -1);
    }

    swift_willThrow();
    return;
  }

  v56 = v46;
  v57 = v47;
  v58 = v165;
  v59 = *(v165 + v23);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v58 + v23);
  if ((v60 & 1) == 0)
  {
    v62 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v61 = sub_22FF10520(v61);
    *(v58 + v23) = v61;
  }

  swift_beginAccess();
  v65 = v61[4];
  v66 = v61[5];
  v61[4] = v56;
  v61[5] = v57;
  sub_22FEA55AC(v65, v66);
  v67 = v164;
  if (*(v164 + 16))
  {
    v68 = *(v58 + v23);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v58 + v23);
    if ((v69 & 1) == 0)
    {
      v71 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      swift_allocObject();
      v70 = sub_22FF10520(v70);
      *(v58 + v23) = v70;
    }

    v74 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    v75 = *(v70 + v74);
    *(v70 + v74) = v67;

    goto LABEL_25;
  }

  if (qword_27DAF14C0 != -1)
  {
    swift_once();
  }

  v76 = sub_22FFB12F8();
  __swift_project_value_buffer(v76, qword_27DB05B10);
  v77 = sub_22FFB12D8();
  v78 = sub_22FFB1838();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_22FE99000, v77, v78, "Empty provisioning certificate chain", v79, 2u);
    MEMORY[0x23190EFF0](v79, -1, -1);
  }

  if (*(v42 + 144) != 1)
  {
LABEL_25:
    v92 = v42[6];
    v93 = v42[7];
    __swift_project_boxed_opaque_existential_1(v42 + 3, v92);
    v174 = (*(v93 + 24))(v92, v93);
    v173[0] = v162;
    v173[1] = v163;
    v173[2] = a9;
    v173[3] = a10;
    sub_22FF9C238(v173, &v174);
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v94 = sub_22FFB0958();
    v95 = __swift_project_value_buffer(v94, qword_281491418);
    v96 = v174;
    if (*(v174 + 16) && (v97 = sub_22FFA6214(v95), (v98 & 1) != 0))
    {
      v99 = *(*(v96 + 56) + 8 * v97);
      v100 = qword_27DAF14C0;

      if (v100 != -1)
      {
        swift_once();
      }

      v101 = sub_22FFB12F8();
      __swift_project_value_buffer(v101, qword_27DB05B10);
      v102 = sub_22FFB12D8();
      v103 = sub_22FFB1848();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v170 = v99;
        v105 = v104;
        v106 = swift_slowAlloc();
        v171 = v96;
        v107 = v106;
        v173[0] = v106;
        *v105 = 136446210;
        sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
        v108 = sub_22FFB1BA8();
        v110 = sub_22FF9E448(v108, v109, v173);

        *(v105 + 4) = v110;
        _os_log_impl(&dword_22FE99000, v102, v103, "Reading cryptexes from %{public}s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        v111 = v107;
        v96 = v171;
        MEMORY[0x23190EFF0](v111, -1, -1);
        v112 = v105;
        v99 = v170;
        MEMORY[0x23190EFF0](v112, -1, -1);
      }

      v42 = v172;
      sub_22FF9CC3C(v165, v99);
    }

    else
    {
      if (qword_27DAF14C0 != -1)
      {
        swift_once();
      }

      v113 = sub_22FFB12F8();
      __swift_project_value_buffer(v113, qword_27DB05B10);
      v114 = sub_22FFB12D8();
      v115 = sub_22FFB1838();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v171 = v96;
        v118 = v117;
        v173[0] = v117;
        *v116 = 136446210;
        sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
        v119 = sub_22FFB1BA8();
        v121 = sub_22FF9E448(v119, v120, v173);

        *(v116 + 4) = v121;
        _os_log_impl(&dword_22FE99000, v114, v115, "Failed to read cryptexes from %{public}s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v118);
        v122 = v118;
        v96 = v171;
        MEMORY[0x23190EFF0](v122, -1, -1);
        MEMORY[0x23190EFF0](v116, -1, -1);
      }

      if (*(v42 + 145) == 1)
      {
        type metadata accessor for NodeAttestor.Error();
        sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
        v123 = swift_allocError();
        v125 = v124;
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
        (*(*(v126 - 8) + 56))(v125, 4, 7, v126);
LABEL_55:
        swift_willThrow();

        if (qword_27DAF14C0 != -1)
        {
          swift_once();
        }

        v153 = sub_22FFB12F8();
        __swift_project_value_buffer(v153, qword_27DB05B10);
        v154 = v123;
        v155 = sub_22FFB12D8();
        v156 = sub_22FFB1838();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          *v157 = 138543362;
          v159 = v123;
          v160 = _swift_stdlib_bridgeErrorToNSError();
          *(v157 + 4) = v160;
          *v158 = v160;
          _os_log_impl(&dword_22FE99000, v155, v156, "Failed to read sealed hashes: %{public}@", v157, 0xCu);
          sub_22FEAEA34(v158, &qword_27DAF1680, &unk_22FFB4B10);
          MEMORY[0x23190EFF0](v158, -1, -1);
          MEMORY[0x23190EFF0](v157, -1, -1);
        }

        if (*(v42 + 145) == 1)
        {
          swift_willThrow();
        }

        else
        {
        }

        return;
      }
    }

    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v127 = __swift_project_value_buffer(v94, qword_2814913A0);
    if (*(v96 + 16))
    {
      v128 = sub_22FFA6214(v127);
      if (v129)
      {
        v130 = *(*(v96 + 56) + 8 * v128);
        v131 = qword_27DAF14C0;

        if (v131 != -1)
        {
          swift_once();
        }

        v132 = sub_22FFB12F8();
        __swift_project_value_buffer(v132, qword_27DB05B10);

        v133 = sub_22FFB12D8();
        v134 = sub_22FFB1848();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v171 = v96;
          v137 = v136;
          v173[0] = v136;
          *v135 = 136446210;
          v138 = MEMORY[0x23190DEA0](v130, &type metadata for SEP.SealedHash.Entry);
          v140 = sub_22FF9E448(v138, v139, v173);

          *(v135 + 4) = v140;
          _os_log_impl(&dword_22FE99000, v133, v134, "Reading secure config from %{public}s", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v137);
          MEMORY[0x23190EFF0](v137, -1, -1);
          MEMORY[0x23190EFF0](v135, -1, -1);
        }

        sub_22FF9D1B4(v165, v130);

LABEL_62:

        return;
      }
    }

    if (qword_27DAF14C0 != -1)
    {
      swift_once();
    }

    v141 = sub_22FFB12F8();
    __swift_project_value_buffer(v141, qword_27DB05B10);
    v142 = sub_22FFB12D8();
    v143 = sub_22FFB1838();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v171 = v96;
      v146 = v145;
      v173[0] = v145;
      *v144 = 136446210;
      sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
      v147 = sub_22FFB1BA8();
      v149 = sub_22FF9E448(v147, v148, v173);

      *(v144 + 4) = v149;
      _os_log_impl(&dword_22FE99000, v142, v143, "Failed to read secure config from %{public}s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x23190EFF0](v146, -1, -1);
      MEMORY[0x23190EFF0](v144, -1, -1);
    }

    if (*(v42 + 145) != 1)
    {
      goto LABEL_62;
    }

    type metadata accessor for NodeAttestor.Error();
    sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
    v123 = swift_allocError();
    v151 = v150;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v152 - 8) + 56))(v151, 5, 7, v152);
    goto LABEL_55;
  }

  type metadata accessor for NodeAttestor.Error();
  sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
  v80 = swift_allocError();
  v82 = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  (*(*(v83 - 8) + 56))(v82, 3, 7, v83);
  swift_willThrow();
  v84 = v80;
  v85 = v80;
  v86 = sub_22FFB12D8();
  v87 = sub_22FFB1838();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138543362;
    v90 = v80;
    v91 = _swift_stdlib_bridgeErrorToNSError();
    *(v88 + 4) = v91;
    *v89 = v91;
    _os_log_impl(&dword_22FE99000, v86, v87, "Failed to obtain provisioning certificate chain from CFPrefs: %{public}@", v88, 0xCu);
    sub_22FEAEA34(v89, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v89, -1, -1);
    MEMORY[0x23190EFF0](v88, -1, -1);
  }

  swift_willThrow();
}

uint64_t sub_22FF9C238(uint64_t a1, uint64_t *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v88 - v6;
  v106 = type metadata accessor for SEP.SealedHash(0);
  v7 = *(v106 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22FFB0958();
  v10 = *(*(v114 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v114);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v110 = &v88 - v17;
  v95 = a2;
  v18 = *a2;
  v21 = *(*a2 + 64);
  v20 = *a2 + 64;
  v19 = v21;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = v22 + 63;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = v25 >> 6;
  v112 = v16 + 16;
  v108 = v16 + 32;
  v107 = v27 >> 62;
  v100 = v26;
  v99 = v26;
  v97 = v26 >> 32;
  v105 = (v7 + 48);
  v111 = v16;
  v103 = (v16 + 8);
  v29 = 0;

  v98 = v113;
  v109 = v28;
  while (2)
  {
    v30 = v102;
    if (!v24)
    {
      goto LABEL_8;
    }

    while (1)
    {
      while (1)
      {
        v31 = v30;
        v32 = v27;
        v33 = v15;
LABEL_12:
        v35 = v111;
        v36 = *(v113 + 48) + *(v111 + 72) * (__clz(__rbit64(v24)) | (v29 << 6));
        v37 = v110;
        v38 = v114;
        v101 = *(v111 + 16);
        (v101)(v110, v36, v114);
        v39 = *(v35 + 32);
        v15 = v33;
        v39(v33, v37, v38);
        v119 = 0u;
        memset(v120, 0, sizeof(v120));
        v118 = 0u;
        if (v107 > 1)
        {
          v27 = v32;
          if (v107 != 2)
          {
            v30 = v31;
            *(v117 + 6) = 0;
            *&v117[0] = 0;
            goto LABEL_26;
          }

          v40 = *(v99 + 16);
          v41 = sub_22FFB0588();
          v28 = v109;
          if (!v41)
          {
            goto LABEL_53;
          }

          v42 = v41;
          v43 = sub_22FFB05B8();
          if (__OFSUB__(v40, v43))
          {
            goto LABEL_51;
          }

          v44 = v40 - v43 + v42;
          sub_22FFB05A8();
          if (!v44)
          {
            goto LABEL_54;
          }

LABEL_24:
          v30 = v102;
          sub_22FF53FB0(&v118, v102);
          goto LABEL_27;
        }

        v27 = v32;
        if (v107)
        {
          v28 = v109;
          if (v97 < v100)
          {
            goto LABEL_50;
          }

          v45 = sub_22FFB0588();
          if (!v45)
          {
            goto LABEL_55;
          }

          v46 = v45;
          v47 = sub_22FFB05B8();
          if (__OFSUB__(v100, v47))
          {
            goto LABEL_52;
          }

          v48 = v100 - v47 + v46;
          sub_22FFB05A8();
          if (!v48)
          {
            goto LABEL_57;
          }

          goto LABEL_24;
        }

        v30 = v31;
        LOBYTE(v117[0]) = v100;
        *(v117 + 1) = *(&v99 + 1);
        *(v117 + 5) = *(&v99 + 5);
        BYTE7(v117[0]) = HIBYTE(v99);
        WORD4(v117[0]) = v32;
        BYTE10(v117[0]) = BYTE2(v32);
        BYTE11(v117[0]) = BYTE3(v32);
        BYTE12(v117[0]) = BYTE4(v32);
        BYTE13(v117[0]) = BYTE5(v32);
LABEL_26:
        sub_22FF53FB0(&v118, v30);
        v28 = v109;
LABEL_27:
        v24 &= v24 - 1;
        if ((*v105)(v30, 1, v106) != 1)
        {
          break;
        }

        (*v103)(v15, v114);
        sub_22FEAEA34(v30, &qword_27DAF1F08, &qword_22FFB4B00);
        if (!v24)
        {
          goto LABEL_8;
        }
      }

      v49 = v104;
      sub_22FF9F880(v30, v104, type metadata accessor for SEP.SealedHash);
      if ((*v49 & 4) != 0)
      {
        if (*(v98 + 16))
        {
          v50 = sub_22FFA6214(v15);
          v30 = v102;
          if (v51)
          {
            v52 = *(*(*(v98 + 56) + 8 * v50) + 16);
            if (v52)
            {
              if (*(v98 + 16))
              {
                v53 = sub_22FFA6214(v15);
                v30 = v102;
                if (v54)
                {
                  v55 = *(*(v98 + 56) + 8 * v53);
                  v56 = *(v55 + 16);
                  if (v56)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      sub_22FF9F8E8(v104, type metadata accessor for SEP.SealedHash);
      (*v103)(v15, v114);
      if (!v24)
      {
LABEL_8:
        while (1)
        {
          v34 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v34 >= v28)
          {

            v87 = *MEMORY[0x277D85DE8];
            return result;
          }

          v24 = *(v20 + 8 * v34);
          ++v29;
          if (v24)
          {
            v31 = v30;
            v32 = v27;
            v33 = v15;
            v29 = v34;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_22FFB05A8();
LABEL_54:
        __break(1u);
LABEL_55:
        sub_22FFB05A8();
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }
    }

    v57 = (v55 + (v56 << 6));
    v58 = *(v57 - 2);
    v59 = *(v57 - 1);
    v60 = *v57;
    *&v120[16] = v57[1];
    v119 = v59;
    *v120 = v60;
    v118 = v58;
    v92 = *&v120[8];
    v89 = v60;
    v94 = *(&v59 + 1);
    v98 = v59;
    v62 = *(&v58 + 1);
    v61 = v58;
    sub_22FEBF904(&v118, v117);
    v91 = v61;
    v90 = v62;
    sub_22FEA5608(v61, v62);
    sub_22FEBF8F0(v98, v94);
    v63 = v95;
    v64 = *v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v96;
    (v101)(v96, v15, v114);
    v66 = *v63;
    v115 = v66;
    v68 = sub_22FFA6214(v65);
    v69 = *(v66 + 16);
    v70 = (v67 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_56;
    }

    v72 = *(v66 + 24);
    v88 = v27;
    if (v72 >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = v67;
        sub_22FF8E260();
        LOBYTE(v67) = v85;
      }

LABEL_43:
      v101 = v15;
      if ((v67 & 1) == 0)
      {
        goto LABEL_58;
      }

      v75 = v115;
      v76 = *(*(v115 + 56) + 8 * v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_22FF8FC68(v76);
      }

      if (v52 > *(v76 + 2))
      {
        goto LABEL_59;
      }

      v77 = &v76[64 * v52];
      v78 = *(v77 - 2);
      v79 = *(v77 - 1);
      v80 = v89 | 4;
      v81 = *(v77 + 1);
      v117[2] = *v77;
      v117[3] = v81;
      v117[0] = v78;
      v117[1] = v79;
      v82 = v90;
      *(v77 - 4) = v91;
      *(v77 - 3) = v82;
      v83 = v94;
      *(v77 - 2) = v98;
      *(v77 - 1) = v83;
      *v77 = v80;
      *(v77 + 1) = *v116;
      *(v77 + 1) = *&v116[3];
      *(v77 + 8) = v92;
      *(v77 + 3) = 0;
      sub_22FEBF960(v117);
      *(*(v75 + 56) + 8 * v68) = v76;

      sub_22FEBF960(&v118);
      v84 = *v103;
      (*v103)(v96, v114);
      sub_22FF9F8E8(v104, type metadata accessor for SEP.SealedHash);

      v98 = v115;
      *v95 = v115;
      v15 = v101;
      v84();
      v27 = v88;
      continue;
    }

    break;
  }

  LODWORD(v101) = v67;
  sub_22FF8BECC(v71, isUniquelyReferenced_nonNull_native);
  v73 = sub_22FFA6214(v96);
  v74 = v67 & 1;
  LOBYTE(v67) = v101;
  if ((v101 & 1) == v74)
  {
    v68 = v73;
    goto LABEL_43;
  }

  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FF9CC3C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Proto_SealedHash(0);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Proto_SealedHashLedger(0);
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  result = MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  if (*(a2 + 16))
  {
    v49 = v23;
    v53 = v12;
    v50 = sub_22FFB0928();
    v52 = v26;
    MEMORY[0x28223BE20](v50);
    *(&v48 - 2) = a2;
    *(&v48 - 1) = v2;
    sub_22FF9F948(qword_28148FED0, type metadata accessor for Proto_SealedHash);
    sub_22FFB11B8();
    v27 = v55;
    (*(v55 + 56))(v25, 0, 1, v5);
    v28 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
    v29 = *(a1 + v28);
    v30 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FF9F760(v29 + v30, v14);
    v31 = *(v56 + 48);
    v32 = v31(v14, 1, v15);
    v51 = v15;
    if (v32 == 1)
    {
      *v18 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      v33 = v18 + *(v15 + 20);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v31(v14, 1, v15) != 1)
      {
        sub_22FEAEA34(v14, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF9F880(v14, v18, type metadata accessor for Proto_SealedHashLedger);
    }

    v34 = (*(v27 + 48))(v25, 1, v5);
    v35 = v53;
    if (v34 == 1)
    {
      sub_22FEAEA34(v25, &qword_27DAF38F0, &unk_22FFC0170);
      v36 = v49;
      sub_22FF8A3AC(v50, v52, v49);

      sub_22FEAEA34(v36, &qword_27DAF38F0, &unk_22FFC0170);
    }

    else
    {
      v37 = v54;
      sub_22FF9F880(v25, v54, type metadata accessor for Proto_SealedHash);
      v38 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *v18;
      sub_22FF8C7D8(v37, v50, v52, isUniquelyReferenced_nonNull_native);

      *v18 = v57;
    }

    v40 = *(a1 + v28);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(a1 + v28);
    if ((v41 & 1) == 0)
    {
      v43 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v42 = sub_22FF10520(v42);
      *(a1 + v28) = v42;
    }

    v46 = v56;
    sub_22FF9F880(v18, v35, type metadata accessor for Proto_SealedHashLedger);
    (*(v46 + 56))(v35, 0, 1, v51);
    v47 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v35, v42 + v47, &qword_27DAF26E8, &qword_22FFB7C60);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22FF9D1B4(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v4 = type metadata accessor for Proto_SealedHash(0);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for Proto_SealedHashLedger(0);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  result = MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  if (*(a2 + 16))
  {
    v55 = v21;
    v56 = v11;
    v57 = v14;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v24 = sub_22FFB0958();
    __swift_project_value_buffer(v24, qword_2814913A0);
    v25 = sub_22FFB0928();
    v27 = v26;
    MEMORY[0x28223BE20](v25);
    *(&v53 - 2) = a2;
    *(&v53 - 1) = v2;
    sub_22FF9F948(qword_28148FED0, type metadata accessor for Proto_SealedHash);
    v28 = v64;
    sub_22FFB11B8();
    if (v28)
    {
    }

    else
    {
      v54 = v25;
      v64 = v27;
      (*(v60 + 56))(v23, 0, 1, v4);
      v29 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
      v30 = *(v62 + v29);
      v31 = &unk_281491000;
      v32 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FF9F760(v30 + v32, v13);
      v33 = *(v61 + 48);
      v34 = v57;
      if (v33(v13, 1, v57) == 1)
      {
        v35 = sub_22FFA6E68(MEMORY[0x277D84F90]);
        v36 = v59;
        *v59 = v35;
        v37 = v36 + *(v34 + 20);
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v38 = v34;
        v39 = v36;
        v31 = &unk_281491000;
        if (v33(v13, 1, v38) != 1)
        {
          sub_22FEAEA34(v13, &qword_27DAF26E8, &qword_22FFB7C60);
        }
      }

      else
      {
        v39 = v59;
        sub_22FF9F880(v13, v59, type metadata accessor for Proto_SealedHashLedger);
      }

      if ((*(v60 + 48))(v23, 1, v4) == 1)
      {
        sub_22FEAEA34(v23, &qword_27DAF38F0, &unk_22FFC0170);
        v40 = v55;
        sub_22FF8A3AC(v54, v64, v55);

        sub_22FEAEA34(v40, &qword_27DAF38F0, &unk_22FFC0170);
      }

      else
      {
        v41 = v58;
        sub_22FF9F880(v23, v58, type metadata accessor for Proto_SealedHash);
        v42 = *v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *v39;
        sub_22FF8C7D8(v41, v54, v64, isUniquelyReferenced_nonNull_native);

        *v39 = v63;
      }

      v44 = v62;
      v45 = *(v62 + v29);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v44 + v29);
      if ((v46 & 1) == 0)
      {
        v48 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        v47 = sub_22FF10520(v47);
        *(v44 + v29) = v47;
      }

      v51 = v56;
      sub_22FF9F880(v39, v56, type metadata accessor for Proto_SealedHashLedger);
      (*(v61 + 56))(v51, 0, 1, v57);
      v52 = v31[93];
      swift_beginAccess();
      sub_22FEFF0DC(v51, v47 + v52, &qword_27DAF26E8, &qword_22FFB7C60);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22FF9D7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9F6DC(a2, v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v9 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(a1 + v9, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF9F880(v8, a1 + v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

uint64_t sub_22FF9D8F8()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_22FF9D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF9D9D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2[2];
  if (v6)
  {
    v7 = a2[9];
    v8 = a2[10];
    v9 = a2[9];
    a1 = sub_22FF226F0(&v15);
    v6 = v15;
    v10 = v16;
  }

  else
  {
    v10 = 1;
  }

  *v5 = v6;
  *(v5 + 8) = v10;
  MEMORY[0x28223BE20](a1);
  v14[2] = a3;
  v11 = sub_22FF7AEE0(sub_22FF9F7D0, v14, a2);
  v12 = *(v5 + 16);

  *(v5 + 16) = v11;
  return result;
}

uint64_t sub_22FF9DAB0(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FF9F948(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);
  return sub_22FFB11B8();
}

uint64_t sub_22FF9DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = type metadata accessor for Proto_Cryptex(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto_Cryptex.Salt(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  *a1 = v12;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v14;
  sub_22FEA5608(v13, v14);
  v17 = sub_22FEA55AC(v15, v16);
  v18 = *(a2 + 56);
  if (v18 && *(v27 + 147) == 1)
  {
    v19 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);
    v20 = *(a1 + v19);

    *(a1 + v19) = v18;
  }

  if (v12 & 4) != 0 && (v17 = sub_22FECB038(&unk_2844D8490, v13, v14), (v17))
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v21 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v21, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v11, a1 + v21, type metadata accessor for Proto_Cryptex.Salt);
    v22 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v22 - 8) + 56))(a1 + v21, 0, 1, v22);
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v27 - 2) = a2;
    sub_22FF9F948(qword_281490550, type metadata accessor for Proto_Cryptex);
    v24 = v28;
    sub_22FFB11B8();
    v25 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v25, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v24, a1 + v25, type metadata accessor for Proto_Cryptex);
    v26 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v26 - 8) + 56))(a1 + v25, 0, 1, v26);
  }
}

uint64_t sub_22FF9DEB4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2[2];
  if (v7)
  {
    v8 = a2[9];
    v9 = a2[10];
    v10 = a2[9];
    a1 = sub_22FF226F0(&v16);
    v7 = v16;
    v11 = v17;
  }

  else
  {
    v11 = 1;
  }

  *v6 = v7;
  *(v6 + 8) = v11;
  MEMORY[0x28223BE20](a1);
  v15[2] = a3;
  result = sub_22FF7B110(sub_22FF9F828, v15, a2);
  if (!v3)
  {
    v13 = result;
    v14 = *(v6 + 16);

    *(v6 + 16) = v13;
  }

  return result;
}

uint64_t sub_22FF9DF90(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FF9F948(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);
  result = sub_22FFB11B8();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_22FF9E068(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = type metadata accessor for Proto_SecureConfig(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *(a2 + 32);
  v20 = *a2;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  sub_22FF91A04(&v20, v19);
  sub_22FEA55AC(v11, v12);
  *(a1 + 8) = v20;
  v17 = a2;
  v18 = a3;
  sub_22FF9F948(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);
  result = sub_22FFB11B8();
  if (!v3)
  {
    v14 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v14, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v10, a1 + v14, type metadata accessor for Proto_SecureConfig);
    v15 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v15 - 8) + 56))(a1 + v14, 0, 1, v15);
  }

  return result;
}

uint64_t sub_22FF9E23C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  if (v4 >> 60 != 15)
  {
    v6 = result;
    v25 = v3;
    v7 = *(a2 + 16);
    sub_22FEA5608(v7, v4);
    sub_22FEA5608(v7, v4);
    SecureConfig.init(from:)(v7, v4, v21);
    v8 = v22;
    if (v22)
    {
      v10 = v21[0];
      v9 = v21[1];
      v12 = v23;
      v11 = v24;
      sub_22FEA56EC(v7, v4);
      if (*(a3 + 148))
      {
        v13 = v6[3];
        v14 = v6[4];
        sub_22FEA5608(v12, v11);
        sub_22FEA55AC(v13, v14);
        result = sub_22FF91A7C(v10, v9, v8, v12, v11);
        v6[3] = v12;
        v6[4] = v11;
      }

      else
      {
        v18 = *v6;
        v19 = v6[1];
        sub_22FEA5608(v10, v9);
        sub_22FEA55AC(v18, v19);
        *v6 = v10;
        v6[1] = v9;
        v20 = v6[2];

        result = sub_22FF91A7C(v10, v9, v8, v12, v11);
        v6[2] = v8;
      }
    }

    else
    {
      type metadata accessor for NodeAttestor.Error();
      sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
      swift_allocError();
      v16 = v15;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v17 - 8) + 56))(v16, 2, 7, v17);
      swift_willThrow();
      return sub_22FEA56EC(v7, v4);
    }
  }

  return result;
}

uint64_t sub_22FF9E448(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22FF9E514(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22FEBF2A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22FF9E514(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22FF9E620(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22FFB19F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22FF9E620(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FF9E66C(a1, a2);
  sub_22FF9E79C(&unk_2844D82D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22FF9E66C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22FF6BE0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22FFB19F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22FFB1578();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22FF6BE0C(v10, 0);
        result = sub_22FFB1998();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FF9E79C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22FF9E888(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22FF9E888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE *sub_22FF9E9E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22FF55698(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22FF9ED38(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22FF9EDB4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22FF9EA78(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22FFB13C8();
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
      result = sub_22FFB1358();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22FF9EC58(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF9EC58(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      sub_22FFB13C8();
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540]);
      return sub_22FFB1358();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF9ED38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22FFB05D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22FFB0578();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22FFB0738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22FF9EDB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22FFB05D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22FFB0578();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation12NodeAttestorV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0908();
  v36 = *(v4 - 8);
  v5 = v36[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for NodeAttestor.Error();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39B0, &qword_22FFC0128);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v35 - v21;
  v23 = &v35 + *(v20 + 56) - v21;
  sub_22FF9F6DC(a1, &v35 - v21, type metadata accessor for NodeAttestor.Error);
  sub_22FF9F6DC(a2, v23, type metadata accessor for NodeAttestor.Error);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 7, v24);
  if (v26 > 3)
  {
    if (v26 > 5)
    {
      if (v26 == 6)
      {
        if (v25(v23, 7, v24) != 6)
        {
          goto LABEL_23;
        }
      }

      else if (v25(v23, 7, v24) != 7)
      {
        goto LABEL_23;
      }
    }

    else if (v26 == 4)
    {
      if (v25(v23, 7, v24) != 4)
      {
        goto LABEL_23;
      }
    }

    else if (v25(v23, 7, v24) != 5)
    {
      goto LABEL_23;
    }
  }

  else if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (v25(v23, 7, v24) != 2)
      {
        goto LABEL_23;
      }
    }

    else if (v25(v23, 7, v24) != 3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!v26)
    {
      sub_22FF9F6DC(v22, v17, type metadata accessor for NodeAttestor.Error);
      v35 = *(v24 + 48);
      if (!v25(v23, 7, v24))
      {
        v30 = v36[4];
        v30(v13, v23, v4);
        v31 = v35;
        v30(v11, &v17[v35], v4);
        v30(v8, &v23[v31], v4);
        v32 = v36;
        v33 = sub_22FFB08C8();
        v34 = v32[1];
        v34(v17, v4);
        if (v33)
        {
          v28 = sub_22FFB08C8();
          v34(v8, v4);
          v34(v11, v4);
          v34(v13, v4);
          sub_22FF9F8E8(v22, type metadata accessor for NodeAttestor.Error);
          return v28 & 1;
        }

        v34(v8, v4);
        v34(v11, v4);
        v34(v13, v4);
        sub_22FF9F8E8(v22, type metadata accessor for NodeAttestor.Error);
        goto LABEL_24;
      }

      v27 = v36[1];
      v27(&v17[v35], v4);
      v27(v17, v4);
LABEL_23:
      sub_22FEAEA34(v22, &qword_27DAF39B0, &qword_22FFC0128);
LABEL_24:
      v28 = 0;
      return v28 & 1;
    }

    if (v25(v23, 7, v24) != 1)
    {
      goto LABEL_23;
    }
  }

  sub_22FF9F8E8(v22, type metadata accessor for NodeAttestor.Error);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_22FF9F3D8()
{
  sub_22FF9F430();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22FF9F430()
{
  if (!qword_27DAF39A8)
  {
    sub_22FFB0908();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF39A8);
    }
  }
}

uint64_t sub_22FF9F498(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_22FF55678(result);
    }

    else
    {
      v2 = sub_22FFB05D8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22FFB0598();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FF9F538(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39B8, &unk_22FFC0130);
  v10 = sub_22FEBF78C(&qword_28148F118, &qword_27DAF39B8, &unk_22FFC0130);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22FF9E9E4(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_22FF9F614(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_22FF5B58C(sub_22FF9F66C, v4, a1, a2);
}

uint64_t sub_22FF9F66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_22FEA5608(*v7, v9);
  result = sub_22FF8FC7C(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

uint64_t sub_22FF9F6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF9F760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF9F880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF9F8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF9F948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF9F994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_22FFB1648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
  sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290);
  v3 = sub_22FFB1458();

  return v3;
}

uint64_t NodeValidator.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NodeValidator();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = MEMORY[0x277D84F90];
  *(a1 + 64) = MEMORY[0x277D84F90];
  v11 = v3[10];
  v12 = sub_22FFB0908();
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  *(a1 + v3[21]) = 2;
  *(a1 + v3[23]) = 0;
  *(v9 + 8) = v10;
  v14 = v3[10];
  v13(&v9[v14], 1, 1, v12);
  v9[v3[21]] = 2;
  *&v9[v3[23]] = 0;
  static Environment.default.getter(&v17);
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v17, v7);
  sub_22FEAEA34(&v9[v14], &qword_27DAF1510, &qword_22FFB3800);
  sub_22FFA7D78(v7, v9, type metadata accessor for NodeValidator);
  sub_22FEAEA34(a1 + v11, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v9, a1, type metadata accessor for NodeValidator);
}