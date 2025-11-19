void sub_1ADF6E274(int64_t a1, uint64_t a2)
{
  v41 = sub_1AE23BDDC();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1AE23D8FC();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      v25 = sub_1AE23CBBC();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_1ADF6E598(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BDDC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1ADE42D60(a3, a4[7] + 8 * a1);
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

unint64_t sub_1ADF6E65C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1ADF6E6B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1ADF6E700(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
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

unint64_t sub_1ADF6E75C(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 3 * result;
  *v6 = a4;
  *(v6 + 2) = BYTE2(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_1ADF6E7BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1ADDEE390(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1ADF6E828(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_1ADF6E86C()
{
  v1 = v0;
  v2 = type metadata accessor for Replica();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
  v7 = *v0;
  v8 = sub_1AE23DCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
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
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_1ADDDE3A0(*(v7 + 48) + v23, v6, type metadata accessor for Replica);
        v22 *= 24;
        sub_1ADDE56CC(*(v7 + 56) + v22, v25);
        sub_1ADDDE540(v6, *(v9 + 48) + v23, type metadata accessor for Replica);
        result = sub_1ADDE5634(v25, *(v9 + 56) + v22);
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

        v1 = v24;
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

void *sub_1ADF6EACC()
{
  v1 = v0;
  v30 = sub_1AE23BDDC();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  v4 = *v0;
  v5 = sub_1AE23DCBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 8;
        sub_1ADE42CF8(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_1ADE42D60(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
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

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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

void *sub_1ADF6ED64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

void *sub_1ADF6EECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB820, &qword_1AE24CF10);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF6F03C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF6F1AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF6F314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E8, &qword_1AE24CEE8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF6F47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C8, &qword_1AE24CED0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = (*(v2 + 56) + v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = (*(v4 + 56) + v17);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        sub_1ADDD86D8(v23, *(&v23 + 1));
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

void *sub_1ADF6F61C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

void *sub_1ADF6F78C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7B8, &qword_1AE24CEC8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

void *sub_1ADF6F8FC()
{
  v1 = v0;
  v2 = type metadata accessor for Timestamp(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB850, &qword_1AE24CF20);
  v6 = *v0;
  v7 = sub_1AE23DCBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1ADDDE3A0(*(v6 + 56) + v23, v5, type metadata accessor for Timestamp);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_1ADDDE540(v5, *(v8 + 56) + v23, type metadata accessor for Timestamp);
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

        v1 = v24;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1ADF6FB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1ADF6FC9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
  v5 = *v0;
  v6 = sub_1AE23DCBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = v28;
        v23 = *(v29 + 72) * v20;
        sub_1ADDCEE40(*(v5 + 56) + v23, v28, &qword_1EB5BB830, &unk_1AE25AA50);
        v24 = v30;
        *(*(v30 + 48) + 8 * v20) = v21;
        sub_1ADDD2198(v22, *(v24 + 56) + v23, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      while (v15);
    }

    v18 = v10;
    v7 = v30;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *sub_1ADF6FEF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_1AE23BFEC();
  v40 = *(v36 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
  v7 = *v0;
  v8 = sub_1AE23DCBC();
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
    v39 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v40 + 32;
    v34 = v40 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v40;
        v25 = *(v40 + 72) * v23;
        v26 = v36;
        (*(v40 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1ADDCEE40(*(v7 + 56) + v28, v37, &qword_1EB5BB830, &unk_1AE25AA50);
        v29 = v39;
        (*(v24 + 32))(*(v39 + 48) + v25, v19, v26);
        result = sub_1ADDD2198(v27, *(v29 + 56) + v28, &qword_1EB5BB830, &unk_1AE25AA50);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
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
        v9 = v39;
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

void *sub_1ADF7021C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_1ADF703A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = (*(v2 + 56) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v20;
        v22[1] = v19;
        sub_1ADDD86D8(v21, *(&v21 + 1));
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

void *sub_1ADF70518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *(*(v2 + 48) + v18);
        v23 = *v19;
        v21 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + v18) = v20;
        v22 = (*(v4 + 56) + v17);
        *v22 = v21;
        v22[1] = v24;
        sub_1ADDD86D8(v20, *(&v20 + 1));
        sub_1ADDD86D8(v23, *(&v23 + 1));
        result = sub_1ADDD86D8(v24, *(&v24 + 1));
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

void *sub_1ADF706B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E0, &qword_1AE24CEE0);
  v26 = v0;
  v1 = *v0;
  v2 = sub_1AE23DCBC();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v16 *= 48;
        v18 = *(v1 + 56) + v16;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(*(v1 + 48) + v17);
        v24 = *v18;
        *(*(v3 + 48) + v17) = v23;
        v25 = *(v3 + 56) + v16;
        *v25 = v24;
        *(v25 + 16) = v19;
        *(v25 + 24) = v20;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }

  return result;
}

void *sub_1ADF70888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F0, &qword_1AE24CEF0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = 16 * v17;
        v17 *= 3;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 2);
        v21 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v21;
        v22 = *(v4 + 56) + v17;
        *v22 = v20;
        *(v22 + 2) = v19;
        result = sub_1ADDD86D8(v21, *(&v21 + 1));
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

void *sub_1ADF70A04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F8, &qword_1AE24CEF8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_1ADDD86D8(v18, *(&v18 + 1));
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

void *sub_1ADF70BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1AE23DCBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v19 *= 24;
        v21 = (*(v4 + 56) + v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(*(v4 + 48) + v20);
        *(*(v6 + 48) + v20) = v25;
        v26 = (*(v6 + 56) + v19);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        sub_1ADDD86D8(v25, *(&v25 + 1));
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1ADF70D5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_1ADDD86D8(v18, *(&v18 + 1));
        result = sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF70EE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
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

void *sub_1ADF71050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1ADDE4E28(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_1ADDEE390(v25, (*(v4 + 56) + v22));
        result = sub_1ADDD86D8(v20, v21);
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

void *sub_1ADF711F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1ADF71368(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1AE23BFEC();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1AE23DCBC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        result = (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1ADF715D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *(v19 + 16);
        v21 = *(*(v2 + 48) + v18);
        v22 = *v19;
        *(*(v4 + 48) + v18) = v21;
        v23 = *(v4 + 56) + v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        sub_1ADDD86D8(v21, *(&v21 + 1));
        result = swift_unknownObjectRetain();
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

void *sub_1ADF71798(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1AE23BDDC();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1AE23DCBC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1ADF71A24(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1AE23BDDC();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1AE23DCBC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void (*sub_1ADF71C9C(uint64_t *a1, uint64_t a2))(uint64_t)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for Replica() - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(a2, v10, type metadata accessor for Replica);
  v7[9] = sub_1ADDFDB68(v7);
  v7[10] = sub_1ADF72220(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1ADDFDE38;
}

uint64_t (*sub_1ADF71D98(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1ADDFDB68(v8);
  v8[9] = sub_1ADF727D0(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

uint64_t (*sub_1ADF71E44(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1ADDFDB68(v8);
  v8[9] = sub_1ADF72A80(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

void (*sub_1ADF71EF0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1AE23BDDC();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1ADF73760(v7);
  v7[12] = sub_1ADF72E10(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1ADF7202C;
}

void sub_1ADF7202C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1ADF720C4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1ADDFDB68(v8);
  v8[9] = sub_1ADF730E4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF72170;
}

uint64_t (*sub_1ADF72174(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1ADDFDB68(v8);
  v8[9] = sub_1ADF733B4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

void (*sub_1ADF72220(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = *(type metadata accessor for Replica() - 8);
  v9[2] = v10;
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v9[3] = v11;
  v12 = sub_1AE23C12C();
  v9[4] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v9[5] = v13;
  v15 = *(v13 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v9[7] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v13 + 64));
    v9[7] = malloc(v15);
    v16 = malloc(v15);
  }

  v9[8] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18) - 8) + 64);
  if (v7)
  {
    v9[9] = swift_coroFrameAlloc();
    v9[10] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v9[9] = malloc(v17);
    v9[10] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v9[11] = v18;
  v20 = *v4;
  v22 = sub_1ADDD8A6C(a2);
  *(v9 + 104) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a3 & 1) != 0)
    {
LABEL_19:
      v9[12] = v22;
      if (v26)
      {
LABEL_20:
        (*(v14 + 32))(v19, *(*v4 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_24:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1ADF72548;
      }

LABEL_23:
      v28 = 1;
      goto LABEL_24;
    }

    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_1ADDFB81C();
      goto LABEL_19;
    }

    sub_1ADDDDED0(v25, a3 & 1);
    v29 = *v4;
    v30 = sub_1ADDD8A6C(a2);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v9[12] = v30;
      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADF72548(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + 48);
  v5 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(v2 + 72);
    sub_1ADDCEE40(v5, v6, &qword_1EB5BB780, &qword_1AE24CD18);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 72);
    if (v7 != 1)
    {
      v10 = *(v2 + 8);
      v11 = *(*(v2 + 40) + 32);
      v11(*(v2 + 56), *(v2 + 72), *(v2 + 32));
      v12 = *v10;
      v13 = *(v2 + 96);
      v14 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 48);
        v17 = *(v2 + 24);
        v16 = *(v2 + 32);
        sub_1ADDDE3A0(*v2, v17, type metadata accessor for Replica);
        v11(v15, v14, v16);
        sub_1ADDDE678(v13, v17, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 80);
    sub_1ADDCEE40(v5, v18, &qword_1EB5BB780, &qword_1AE24CD18);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 80);
    if (v19 != 1)
    {
      v22 = *(v2 + 8);
      v11 = *(*(v2 + 40) + 32);
      v11(*(v2 + 64), *(v2 + 80), *(v2 + 32));
      v12 = *v22;
      v13 = *(v2 + 96);
      v14 = *(v2 + 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 40) + 72) * v13, v14, *(v2 + 32));
      goto LABEL_10;
    }
  }

  sub_1ADDCEDE0(v9, &qword_1EB5BB780, &qword_1AE24CD18);
  if (v8)
  {
    v20 = *(v2 + 96);
    v21 = **(v2 + 8);
    sub_1ADDE4FF8(*(v21 + 48) + *(*(v2 + 16) + 72) * v20, type metadata accessor for Replica);
    sub_1ADDF9CEC(v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 80);
  v24 = *(v2 + 88);
  v26 = *(v2 + 64);
  v25 = *(v2 + 72);
  v28 = *(v2 + 48);
  v27 = *(v2 + 56);
  v29 = *(v2 + 24);
  sub_1ADDCEDE0(v24, &qword_1EB5BB780, &qword_1AE24CD18);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);
  free(v29);

  free(v2);
}

void (*sub_1ADF727D0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 48) = v14 & 1;
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
      sub_1ADF703A0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF6AF70(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return sub_1ADF72930;
}

void sub_1ADF72930(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 48);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[5];
    v7 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v8 = &v7[v6 >> 6];
    v9 = v8[8] | (1 << v6);
    v10 = v7[6];
    v11 = 16 * v6;
    v12 = *(v2 + 1);
    v8[8] = v9;
    *(v10 + v11) = v12;
    v5 = (v7[7] + v11);
    *v5 = v4;
    v5[1] = v3;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v3 = v13 + 1;
    if (!v14)
    {
LABEL_13:
      v25 = v2[2];
      v26 = v2[3];
      v7[2] = v3;
      sub_1ADDD86D8(v25, v26);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v16 = v2[5];
      v17 = *v2[4];
      sub_1ADF77110(*(v17 + 48) + 16 * v16);
      sub_1ADF6DA1C(v16, v17);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v7 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v18 = &v7[v6 >> 6];
    v19 = v18[8] | (1 << v6);
    v20 = v7[6];
    v21 = 16 * v6;
    v22 = *(v2 + 1);
    v18[8] = v19;
    *(v20 + v21) = v22;
    v23 = (v7[7] + v21);
    *v23 = v4;
    v23[1] = v3;
    v24 = v7[2];
    v14 = __OFADD__(v24, 1);
    v3 = v24 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v15 = (v7[7] + 16 * v6);
  *v15 = v4;
  v15[1] = v3;
LABEL_14:
  v27 = *v2;

  free(v2);
}

void (*sub_1ADF72A80(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 80) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF706B8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADE17954(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  if (v19)
  {
    v27 = (*(*v5 + 56) + 48 * v13);
    v24 = *v27;
    v25 = v27[1];
    v26 = v27[2];
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  *(v11 + 2) = v26;
  return sub_1ADF72BEC;
}

void sub_1ADF72BEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v6)
    {
      if (v2[10])
      {
        v19 = v2[9];
        v20 = *v2[8];
        v21 = v3;
        v22 = v2[1];
        v23 = v2[3];
        sub_1ADECDAB4(*(v20 + 48) + 16 * v19);
        sub_1ADF6DBD4(v19, v20);
        v4 = v22;
        v3 = v21;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v12 = v11[6];
    v13 = *(v2 + 3);
    v11[(v10 >> 6) + 8] |= 1 << v10;
    *(v12 + 16 * v10) = v13;
    v9 = v11[7];
    v14 = (v9 + 48 * v10);
    *v14 = v3;
    v14[1] = v4;
    v14[2] = v6;
    v14[3] = v5;
    v14[4] = v7;
    v14[5] = v8;
    v15 = v11[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
LABEL_15:
      v32 = v3;
      v33 = v4;
      v34 = v2[6];
      v35 = v2[7];
      v11[2] = v17;
      sub_1ADDD86D8(v34, v35);
      v3 = v32;
      v4 = v33;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v6)
  {
    if (v9)
    {
      v24 = v2[9];
      v25 = *v2[8];
      v26 = v3;
      v27 = v4;
      sub_1ADECDAB4(*(v25 + 48) + 16 * v24);
      sub_1ADF6DBD4(v24, v25);
      v4 = v27;
      v3 = v26;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v28 = v11[6];
    v29 = *(v2 + 3);
    v11[(v10 >> 6) + 8] |= 1 << v10;
    *(v28 + 16 * v10) = v29;
    v30 = (v11[7] + 48 * v10);
    *v30 = v3;
    v30[1] = v4;
    v30[2] = v6;
    v30[3] = v5;
    v30[4] = v7;
    v30[5] = v8;
    v31 = v11[2];
    v16 = __OFADD__(v31, 1);
    v17 = v31 + 1;
    if (v16)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v18 = (v11[7] + 48 * v10);
  *v18 = v3;
  v18[1] = v4;
  v18[2] = v6;
  v18[3] = v5;
  v18[4] = v7;
  v18[5] = v8;
LABEL_16:
  v36 = *v2;
  v37 = v2[1];
  v39 = v2[2];
  v38 = v2[3];
  v40 = v2[4];
  v41 = v2[5];
  sub_1ADDDDE40(v3, v4, v6);
  sub_1ADDDC21C(v36, v37, v39);

  free(v2);
}

void (*sub_1ADF72E10(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1AE23BDDC();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1ADDFF050(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF71A24(&qword_1EB5BA0C8, &qword_1AE2418A8);
      v15 = v23;
      goto LABEL_14;
    }

    sub_1ADF6CB3C(v20, a3 & 1, &qword_1EB5BA0C8, &qword_1AE2418A8);
    v24 = *v4;
    v15 = sub_1ADDFF050(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1ADF72FE4;
}

void sub_1ADF72FE4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_1ADDFF51C(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_1ADF6E274(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

void (*sub_1ADF730E4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[4] = a3;
  v10[5] = v4;
  v10[3] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 56) = v14 & 1;
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
      sub_1ADF715D8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF6C84C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[6] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 16);
  }

  else
  {
    v26 = 0;
    v25 = 0uLL;
  }

  *v11 = v25;
  v11[2] = v26;
  return sub_1ADF73250;
}

void sub_1ADF73250(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  LOBYTE(v6) = *(*a1 + 56);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = v2[6];
    v8 = *v2[5];
    if ((*a1)[7])
    {
      goto LABEL_9;
    }

    v9 = v8[6];
    v10 = *(v2 + 3);
    v8[(v7 >> 6) + 8] |= 1 << v7;
    *(v9 + 16 * v7) = v10;
    v6 = v8[7];
    v11 = (v6 + 24 * v7);
    *v11 = v4;
    v11[1] = v3;
    v11[2] = v5;
    v12 = v8[2];
    v13 = __OFADD__(v12, 1);
    v5 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v21 = v2[3];
      v22 = v2[4];
      v8[2] = v5;
      sub_1ADDD86D8(v21, v22);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v6)
    {
      v15 = v2[6];
      v16 = *v2[5];
      sub_1ADF77110(*(v16 + 48) + 16 * v15);
      sub_1ADF6D4DC(v15, v16);
    }

    goto LABEL_14;
  }

  v7 = v2[6];
  v8 = *v2[5];
  if ((v6 & 1) == 0)
  {
    v17 = v8[6];
    v18 = *(v2 + 3);
    v8[(v7 >> 6) + 8] |= 1 << v7;
    *(v17 + 16 * v7) = v18;
    v19 = (v8[7] + 24 * v7);
    *v19 = v4;
    v19[1] = v3;
    v19[2] = v5;
    v20 = v8[2];
    v13 = __OFADD__(v20, 1);
    v5 = v20 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = (v8[7] + 24 * v7);
  *v14 = v4;
  v14[1] = v3;
  v14[2] = v5;
LABEL_14:
  v23 = *v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  free(v2);
}

void (*sub_1ADF733B4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
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
  v13 = sub_1ADDD7A10(a2, a3);
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
      sub_1ADF6F61C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF69B9C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1ADDD7A10(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
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
  return sub_1ADF7350C;
}

void sub_1ADF7350C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1ADF77164(*(v13 + 48) + 16 * v12);
      sub_1ADF6D86C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

unint64_t sub_1ADF73650()
{
  result = qword_1EB5B8BB0;
  if (!qword_1EB5B8BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB790, &unk_1AE251E40);
    sub_1ADF7370C(&qword_1EB5B8C08, &qword_1EB5BB798, &qword_1AE24CD28);
    sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8BB0);
  }

  return result;
}

uint64_t sub_1ADF7370C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t (*sub_1ADF73760(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ADDE578C;
}

void sub_1ADF73788(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1ADF74138(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1ADF739F8(0, v2, 1, a1);
  }
}

void sub_1ADF738CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Replica();
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Replica() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1ADF74E94(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1ADF73D98(0, v2, 1, a1);
  }
}

void sub_1ADF739F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v49 = a2;
  if (a3 != a2)
  {
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v54 = *a4;
    v48 = v18;
    v22 = v54 + v18 * a3;
    do
    {
      v52 = v19;
      v53 = a3;
      v50 = v22;
      v51 = v21;
      v23 = v19;
      do
      {
        sub_1ADDCEE40(v22, v16, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEE40(v23, v12, &qword_1EB5BA2A0, &unk_1AE242200);
        v24 = *(type metadata accessor for Replica() + 20);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        if (v25 == v26)
        {
          v59 = sub_1AE23BFCC();
          LOWORD(v60) = v27;
          BYTE2(v60) = v28;
          BYTE3(v60) = v29;
          BYTE4(v60) = v30;
          BYTE5(v60) = v31;
          BYTE6(v60) = v32;
          HIBYTE(v60) = v33;
          v57 = sub_1AE23BFCC();
          LOWORD(v58) = v34;
          BYTE2(v58) = v35;
          BYTE3(v58) = v36;
          BYTE4(v58) = v37;
          BYTE5(v58) = v38;
          BYTE6(v58) = v39;
          HIBYTE(v58) = v40;
          v41 = bswap64(v59);
          v42 = bswap64(v57);
          if (v41 == v42 && (v41 = bswap64(v60), v42 = bswap64(v58), v41 == v42))
          {
            v43 = 0;
          }

          else
          {
            if (v41 < v42)
            {
              v44 = -1;
            }

            else
            {
              v44 = 1;
            }

            v43 = v44 >> 31;
          }
        }

        else
        {
          v43 = v25 < v26;
        }

        sub_1ADDCEDE0(v12, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v16, &qword_1EB5BA2A0, &unk_1AE242200);
        if (!v43)
        {
          break;
        }

        if (!v54)
        {
          __break(1u);
        }

        v45 = v55;
        sub_1ADDD2198(v22, v55, &qword_1EB5BA2A0, &unk_1AE242200);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDD2198(v45, v23, &qword_1EB5BA2A0, &unk_1AE242200);
        v23 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v53 + 1;
      v19 = v52 + v48;
      v21 = v51 - 1;
      v22 = v50 + v48;
    }

    while (v53 + 1 != v49);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1ADF73D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v56 = type metadata accessor for Replica();
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v50 = a2;
  if (a3 != a2)
  {
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v55 = *a4;
    v49 = v19;
    v23 = v55 + v19 * a3;
    do
    {
      v53 = v20;
      v54 = a3;
      v51 = v23;
      v52 = v22;
      v24 = v22;
      v25 = v20;
      do
      {
        sub_1ADDDE3A0(v23, v17, type metadata accessor for Replica);
        sub_1ADDDE3A0(v25, v13, type metadata accessor for Replica);
        v26 = *(v56 + 20);
        v27 = *&v17[v26];
        v28 = *&v13[v26];
        if (v27 == v28)
        {
          v59 = sub_1AE23BFCC();
          LOWORD(v60) = v29;
          BYTE2(v60) = v30;
          BYTE3(v60) = v31;
          BYTE4(v60) = v32;
          BYTE5(v60) = v33;
          BYTE6(v60) = v34;
          HIBYTE(v60) = v35;
          v57 = sub_1AE23BFCC();
          LOWORD(v58) = v36;
          BYTE2(v58) = v37;
          BYTE3(v58) = v38;
          BYTE4(v58) = v39;
          BYTE5(v58) = v40;
          BYTE6(v58) = v41;
          HIBYTE(v58) = v42;
          v43 = bswap64(v59);
          v44 = bswap64(v57);
          if (v43 == v44 && (v43 = bswap64(v60), v44 = bswap64(v58), v43 == v44))
          {
            v45 = 0;
          }

          else
          {
            if (v43 < v44)
            {
              v46 = -1;
            }

            else
            {
              v46 = 1;
            }

            v45 = v46 >> 31;
          }
        }

        else
        {
          v45 = v27 < v28;
        }

        sub_1ADDE4FF8(v13, type metadata accessor for Replica);
        sub_1ADDE4FF8(v17, type metadata accessor for Replica);
        if (!v45)
        {
          break;
        }

        if (!v55)
        {
          __break(1u);
        }

        sub_1ADDDE540(v23, v10, type metadata accessor for Replica);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDDE540(v10, v25, type metadata accessor for Replica);
        v25 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v54 + 1;
      v20 = v53 + v49;
      v22 = v52 - 1;
      v23 = v51 + v49;
    }

    while (v54 + 1 != v50);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1ADF74138(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v166 = a1;
  v188 = *MEMORY[0x1E69E9840];
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v173 = *(v181 - 8);
  v8 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v168 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v160 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v160 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v160 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v160 - v25;
  v176 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v161 = a4;
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v174 = v24;
    v182 = v17;
    while (1)
    {
      v29 = v27;
      v30 = v27 + 1;
      v167 = v27;
      if (v27 + 1 < v26)
      {
        v170 = v26;
        v31 = *v176;
        v32 = *(v173 + 72);
        v179 = v27 + 1;
        v33 = v162;
        sub_1ADDCEE40(v31 + v32 * v30, v162, &qword_1EB5BA2A0, &unk_1AE242200);
        v175 = v32;
        v34 = v31 + v32 * v29;
        v35 = v163;
        sub_1ADDCEE40(v34, v163, &qword_1EB5BA2A0, &unk_1AE242200);
        v169 = type metadata accessor for Replica();
        v36 = *(v169 + 20);
        v37 = *(v33 + v36);
        v38 = *(v35 + v36);
        v165 = v5;
        if (v37 == v38)
        {
          v39 = sub_1ADF5EB00();
          v35 = v163;
          LODWORD(v172) = v39;
        }

        else
        {
          LODWORD(v172) = v37 < v38;
        }

        v164 = v28;
        sub_1ADDCEDE0(v35, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v33, &qword_1EB5BA2A0, &unk_1AE242200);
        v40 = v167 + 2;
        v41 = v175 * (v167 + 2);
        v42 = v31 + v41;
        v43 = v179;
        v44 = v175 * v179;
        v45 = v31 + v175 * v179;
        v46 = v171;
        do
        {
          v28 = v40;
          v48 = v43;
          v5 = v44;
          v49 = v41;
          if (v40 >= v170)
          {
            break;
          }

          v178 = v43;
          v179 = v41;
          v177 = v40;
          sub_1ADDCEE40(v42, v46, &qword_1EB5BA2A0, &unk_1AE242200);
          v50 = v174;
          sub_1ADDCEE40(v45, v174, &qword_1EB5BA2A0, &unk_1AE242200);
          v51 = *(v169 + 20);
          v52 = *(v46 + v51);
          v53 = *(v50 + v51);
          if (v52 == v53)
          {
            v185 = sub_1AE23BFCC();
            LOWORD(v186) = v54;
            BYTE2(v186) = v55;
            BYTE3(v186) = v56;
            BYTE4(v186) = v57;
            BYTE5(v186) = v58;
            BYTE6(v186) = v59;
            HIBYTE(v186) = v60;
            v183 = sub_1AE23BFCC();
            LOWORD(v184) = v61;
            BYTE2(v184) = v62;
            BYTE3(v184) = v63;
            BYTE4(v184) = v64;
            BYTE5(v184) = v65;
            BYTE6(v184) = v66;
            HIBYTE(v184) = v67;
            v68 = bswap64(v185);
            v69 = bswap64(v183);
            if (v68 != v69)
            {
              goto LABEL_16;
            }

            v68 = bswap64(v186);
            v69 = bswap64(v184);
            if (v68 == v69)
            {
              v50 = v174;
              v47 = 0;
            }

            else
            {
LABEL_16:
              v50 = v174;
              v70 = v68 < v69 ? -1 : 1;
              v47 = v70 >> 31;
            }
          }

          else
          {
            v47 = v52 < v53;
          }

          sub_1ADDCEDE0(v50, &qword_1EB5BA2A0, &unk_1AE242200);
          v46 = v171;
          sub_1ADDCEDE0(v171, &qword_1EB5BA2A0, &unk_1AE242200);
          v28 = v177;
          v48 = v178;
          v40 = v177 + 1;
          v42 += v175;
          v45 += v175;
          v43 = v178 + 1;
          v44 = v5 + v175;
          v49 = v179;
          v41 = v179 + v175;
        }

        while ((v172 & 1) == v47);
        if (v172)
        {
          v29 = v167;
          if (v28 < v167)
          {
            goto LABEL_143;
          }

          if (v167 < v28)
          {
            v71 = v167 * v175;
            v72 = v167;
            do
            {
              if (v72 != v48)
              {
                v178 = v48;
                v179 = v49;
                v74 = *v176;
                if (!*v176)
                {
                  goto LABEL_149;
                }

                sub_1ADDD2198(v74 + v71, v168, &qword_1EB5BA2A0, &unk_1AE242200);
                if (v71 < v5 || v74 + v71 >= v74 + v179)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v71 != v5)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1ADDD2198(v168, v74 + v5, &qword_1EB5BA2A0, &unk_1AE242200);
                v29 = v167;
                v48 = v178;
                v49 = v179;
              }

              ++v72;
              v5 -= v175;
              v49 -= v175;
              v71 += v175;
            }

            while (v72 < v48--);
          }

          v30 = v28;
          v5 = v165;
          v28 = v164;
        }

        else
        {
          v30 = v28;
          v5 = v165;
          v28 = v164;
          v29 = v167;
        }
      }

      v75 = v176[1];
      if (v30 < v75)
      {
        if (__OFSUB__(v30, v29))
        {
          goto LABEL_142;
        }

        if (v30 - v29 < v161)
        {
          v76 = v29 + v161;
          if (__OFADD__(v29, v161))
          {
            goto LABEL_144;
          }

          if (v76 >= v75)
          {
            v76 = v176[1];
          }

          if (v76 < v29)
          {
LABEL_145:
            __break(1u);
LABEL_146:
            v28 = sub_1ADF7ACAC(v28);
LABEL_116:
            v187 = v28;
            v154 = *(v28 + 16);
            if (v154 >= 2)
            {
              while (*v176)
              {
                v155 = *(v28 + 16 * v154);
                v156 = v28;
                v157 = *(v28 + 16 * (v154 - 1) + 32);
                v28 = *(v28 + 16 * (v154 - 1) + 40);
                sub_1ADF75BB4(*v176 + *(v173 + 72) * v155, *v176 + *(v173 + 72) * v157, *v176 + *(v173 + 72) * v28, v17);
                if (v5)
                {
                  goto LABEL_124;
                }

                if (v28 < v155)
                {
                  goto LABEL_139;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v156 = sub_1ADF7ACAC(v156);
                }

                if (v154 - 2 >= *(v156 + 2))
                {
                  goto LABEL_140;
                }

                v158 = &v156[16 * v154];
                *v158 = v155;
                *(v158 + 1) = v28;
                v187 = v156;
                sub_1ADF7AC20(v154 - 1);
                v28 = v187;
                v154 = *(v187 + 16);
                if (v154 <= 1)
                {
                  goto LABEL_124;
                }
              }

              goto LABEL_150;
            }

LABEL_124:

            v159 = *MEMORY[0x1E69E9840];
            return;
          }

          if (v30 != v76)
          {
            v164 = v28;
            v165 = v5;
            v77 = *v176;
            v78 = *(v173 + 72);
            v79 = *v176 + v78 * (v30 - 1);
            v80 = -v78;
            v81 = v29 - v30;
            v170 = v78;
            v82 = v77 + v30 * v78;
            v172 = v76;
            do
            {
              v178 = v79;
              v179 = v30;
              v175 = v82;
              v177 = v81;
              while (1)
              {
                sub_1ADDCEE40(v82, v17, &qword_1EB5BA2A0, &unk_1AE242200);
                sub_1ADDCEE40(v79, v14, &qword_1EB5BA2A0, &unk_1AE242200);
                v83 = *(type metadata accessor for Replica() + 20);
                v84 = *&v17[v83];
                v85 = *&v14[v83];
                if (v84 == v85)
                {
                  v185 = sub_1AE23BFCC();
                  LOWORD(v186) = v86;
                  BYTE2(v186) = v87;
                  BYTE3(v186) = v88;
                  BYTE4(v186) = v89;
                  BYTE5(v186) = v90;
                  BYTE6(v186) = v91;
                  HIBYTE(v186) = v92;
                  v183 = sub_1AE23BFCC();
                  LOWORD(v184) = v93;
                  BYTE2(v184) = v94;
                  BYTE3(v184) = v95;
                  BYTE4(v184) = v96;
                  BYTE5(v184) = v97;
                  BYTE6(v184) = v98;
                  HIBYTE(v184) = v99;
                  v100 = bswap64(v185);
                  v101 = bswap64(v183);
                  if (v100 != v101)
                  {
                    goto LABEL_53;
                  }

                  v100 = bswap64(v186);
                  v101 = bswap64(v184);
                  if (v100 == v101)
                  {
                    v102 = 0;
                  }

                  else
                  {
LABEL_53:
                    v103 = v100 < v101 ? -1 : 1;
                    v102 = v103 >> 31;
                  }
                }

                else
                {
                  v102 = v84 < v85;
                }

                sub_1ADDCEDE0(v14, &qword_1EB5BA2A0, &unk_1AE242200);
                sub_1ADDCEDE0(v182, &qword_1EB5BA2A0, &unk_1AE242200);
                if (!v102)
                {
                  break;
                }

                if (!v77)
                {
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
                }

                v104 = v180;
                sub_1ADDD2198(v82, v180, &qword_1EB5BA2A0, &unk_1AE242200);
                swift_arrayInitWithTakeFrontToBack();
                sub_1ADDD2198(v104, v79, &qword_1EB5BA2A0, &unk_1AE242200);
                v79 += v80;
                v82 += v80;
                v105 = __CFADD__(v81++, 1);
                v17 = v182;
                if (v105)
                {
                  goto LABEL_46;
                }
              }

              v17 = v182;
LABEL_46:
              v30 = v179 + 1;
              v79 = v178 + v170;
              v81 = v177 - 1;
              v82 = v175 + v170;
            }

            while (v179 + 1 != v172);
            v30 = v172;
            v5 = v165;
            v28 = v164;
            v29 = v167;
          }
        }
      }

      if (v30 < v29)
      {
        goto LABEL_141;
      }

      v179 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1ADE5522C(0, *(v28 + 16) + 1, 1, v28);
      }

      v107 = *(v28 + 16);
      v106 = *(v28 + 24);
      v108 = v107 + 1;
      v27 = v179;
      if (v107 >= v106 >> 1)
      {
        v153 = sub_1ADE5522C((v106 > 1), v107 + 1, 1, v28);
        v27 = v179;
        v28 = v153;
      }

      *(v28 + 16) = v108;
      v109 = v28 + 16 * v107;
      *(v109 + 32) = v29;
      *(v109 + 40) = v27;
      v178 = *v166;
      if (!v178)
      {
        goto LABEL_151;
      }

      if (v107)
      {
        while (1)
        {
          v110 = v108 - 1;
          if (v108 >= 4)
          {
            break;
          }

          if (v108 == 3)
          {
            v111 = *(v28 + 32);
            v112 = *(v28 + 40);
            v121 = __OFSUB__(v112, v111);
            v113 = v112 - v111;
            v114 = v121;
LABEL_83:
            if (v114)
            {
              goto LABEL_130;
            }

            v127 = (v28 + 16 * v108);
            v129 = *v127;
            v128 = v127[1];
            v130 = __OFSUB__(v128, v129);
            v131 = v128 - v129;
            v132 = v130;
            if (v130)
            {
              goto LABEL_133;
            }

            v133 = (v28 + 32 + 16 * v110);
            v135 = *v133;
            v134 = v133[1];
            v121 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v121)
            {
              goto LABEL_136;
            }

            if (__OFADD__(v131, v136))
            {
              goto LABEL_137;
            }

            if (v131 + v136 >= v113)
            {
              if (v113 < v136)
              {
                v110 = v108 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          v137 = (v28 + 16 * v108);
          v139 = *v137;
          v138 = v137[1];
          v121 = __OFSUB__(v138, v139);
          v131 = v138 - v139;
          v132 = v121;
LABEL_97:
          if (v132)
          {
            goto LABEL_132;
          }

          v140 = v28 + 16 * v110;
          v142 = *(v140 + 32);
          v141 = *(v140 + 40);
          v121 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v121)
          {
            goto LABEL_135;
          }

          if (v143 < v131)
          {
            goto LABEL_3;
          }

LABEL_104:
          v148 = v110 - 1;
          if (v110 - 1 >= v108)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

          if (!*v176)
          {
            goto LABEL_148;
          }

          v149 = v28;
          v150 = *(v28 + 32 + 16 * v148);
          v151 = *(v28 + 32 + 16 * v110);
          v28 = *(v28 + 32 + 16 * v110 + 8);
          sub_1ADF75BB4(*v176 + *(v173 + 72) * v150, *v176 + *(v173 + 72) * v151, *v176 + *(v173 + 72) * v28, v178);
          if (v5)
          {
            goto LABEL_124;
          }

          if (v28 < v150)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = sub_1ADF7ACAC(v149);
          }

          if (v148 >= *(v149 + 2))
          {
            goto LABEL_127;
          }

          v152 = &v149[16 * v148];
          *(v152 + 4) = v150;
          *(v152 + 5) = v28;
          v187 = v149;
          sub_1ADF7AC20(v110);
          v28 = v187;
          v108 = *(v187 + 16);
          v27 = v179;
          if (v108 <= 1)
          {
            goto LABEL_3;
          }
        }

        v115 = v28 + 32 + 16 * v108;
        v116 = *(v115 - 64);
        v117 = *(v115 - 56);
        v121 = __OFSUB__(v117, v116);
        v118 = v117 - v116;
        if (v121)
        {
          goto LABEL_128;
        }

        v120 = *(v115 - 48);
        v119 = *(v115 - 40);
        v121 = __OFSUB__(v119, v120);
        v113 = v119 - v120;
        v114 = v121;
        if (v121)
        {
          goto LABEL_129;
        }

        v122 = (v28 + 16 * v108);
        v124 = *v122;
        v123 = v122[1];
        v121 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v121)
        {
          goto LABEL_131;
        }

        v121 = __OFADD__(v113, v125);
        v126 = v113 + v125;
        if (v121)
        {
          goto LABEL_134;
        }

        if (v126 >= v118)
        {
          v144 = (v28 + 32 + 16 * v110);
          v146 = *v144;
          v145 = v144[1];
          v121 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v121)
          {
            goto LABEL_138;
          }

          if (v113 < v147)
          {
            v110 = v108 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_83;
      }

LABEL_3:
      v26 = v176[1];
      if (v27 >= v26)
      {
        goto LABEL_114;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_114:
  v17 = *v166;
  if (*v166)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_116;
  }

  __break(1u);
}

void sub_1ADF74E94(unint64_t *a1, uint64_t a2, uint64_t (**a3)(), int64_t a4)
{
  v5 = v4;
  v174 = a1;
  v195 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Replica();
  v181 = *(v8 - 8);
  v9 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v169 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v169 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v169 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v169 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v183 = a3;
  v27 = a3[1];
  if (v27 >= 1)
  {
    v170 = &v169 - v24;
    v178 = v26;
    v186 = v25;
    v169 = a4;
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v189 = v8;
    while (1)
    {
      v30 = v28 + 1;
      if (v28 + 1 >= v27)
      {
        goto LABEL_39;
      }

      v179 = v27;
      v31 = *v183;
      v32 = *(v181 + 72);
      v185 = v28 + 1;
      v33 = v31 + v32 * v30;
      v187 = type metadata accessor for Replica;
      v34 = v170;
      sub_1ADDDE3A0(v33, v170, type metadata accessor for Replica);
      v175 = v28;
      v182 = v32;
      v35 = v31 + v32 * v28;
      v36 = v171;
      sub_1ADDDE3A0(v35, v171, v187);
      v37 = v36;
      v38 = *(v8 + 20);
      v39 = *(v34 + v38);
      v40 = *(v36 + v38);
      v173 = v5;
      if (v39 == v40)
      {
        v41 = sub_1ADF5EB00();
        v37 = v171;
        LODWORD(v180) = v41;
      }

      else
      {
        LODWORD(v180) = v39 < v40;
      }

      v172 = v29;
      sub_1ADDE4FF8(v37, type metadata accessor for Replica);
      sub_1ADDE4FF8(v34, type metadata accessor for Replica);
      v42 = v175 + 2;
      v43 = v182 * (v175 + 2);
      v44 = v31 + v43;
      v45 = v185;
      v46 = v182 * v185;
      v47 = v31 + v182 * v185;
      v29 = v178;
      do
      {
        v5 = v42;
        v49 = v45;
        v52 = v46;
        v50 = v43;
        if (v42 >= v179)
        {
          break;
        }

        v187 = v45;
        v184 = v43;
        v185 = v42;
        sub_1ADDDE3A0(v44, v29, type metadata accessor for Replica);
        v53 = v186;
        sub_1ADDDE3A0(v47, v186, type metadata accessor for Replica);
        v54 = *(v8 + 20);
        v55 = *(v29 + v54);
        v56 = *(v53 + v54);
        if (v55 == v56)
        {
          v192 = sub_1AE23BFCC();
          LOWORD(v193) = v57;
          BYTE2(v193) = v58;
          BYTE3(v193) = v59;
          BYTE4(v193) = v60;
          BYTE5(v193) = v61;
          BYTE6(v193) = v62;
          HIBYTE(v193) = v63;
          v190 = sub_1AE23BFCC();
          LOWORD(v191) = v64;
          BYTE2(v191) = v65;
          BYTE3(v191) = v66;
          BYTE4(v191) = v67;
          BYTE5(v191) = v68;
          BYTE6(v191) = v69;
          HIBYTE(v191) = v70;
          v71 = bswap64(v192);
          v72 = bswap64(v190);
          if (v71 != v72)
          {
            v29 = v178;
            v5 = v185;
LABEL_19:
            if (v71 < v72)
            {
              v73 = -1;
            }

            else
            {
              v73 = 1;
            }

            v48 = v73 >> 31;
            goto LABEL_10;
          }

          v71 = bswap64(v193);
          v72 = bswap64(v191);
          v5 = v185;
          if (v71 != v72)
          {
            v29 = v178;
            goto LABEL_19;
          }

          v29 = v178;
          v48 = 0;
        }

        else
        {
          v48 = v55 < v56;
          v5 = v185;
        }

LABEL_10:
        sub_1ADDE4FF8(v186, type metadata accessor for Replica);
        sub_1ADDE4FF8(v29, type metadata accessor for Replica);
        v42 = v5 + 1;
        v44 += v182;
        v47 += v182;
        v49 = v187;
        v45 = (v187 + 1);
        v46 = v52 + v182;
        v50 = v184;
        v43 = v184 + v182;
        v51 = (v180 & 1) == v48;
        v8 = v189;
      }

      while (v51);
      if ((v180 & 1) == 0)
      {
        goto LABEL_37;
      }

      v28 = v175;
      if (v5 < v175)
      {
        goto LABEL_146;
      }

      if (v175 >= v5)
      {
        v30 = v5;
        v5 = v173;
        v29 = v172;
      }

      else
      {
        v74 = v175;
        v75 = v175 * v182;
        do
        {
          if (v74 != v49)
          {
            v187 = v49;
            v77 = *v183;
            if (!*v183)
            {
              goto LABEL_152;
            }

            v78 = v50;
            sub_1ADDDE540(v77 + v75, v177, type metadata accessor for Replica);
            if (v75 < v52 || v77 + v75 >= v77 + v78)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1ADDDE540(v177, v77 + v52, type metadata accessor for Replica);
            v8 = v189;
            v50 = v78;
            v49 = v187;
          }

          v74 = (v74 + 1);
          v52 -= v182;
          v50 -= v182;
          v75 += v182;
          v76 = v74 < v49;
          v49 = (v49 - 1);
        }

        while (v76);
LABEL_37:
        v30 = v5;
        v5 = v173;
        v29 = v172;
        v28 = v175;
      }

LABEL_39:
      v79 = v183[1];
      if (v30 < v79)
      {
        if (__OFSUB__(v30, v28))
        {
          goto LABEL_145;
        }

        if (v30 - v28 < v169)
        {
          v80 = v28 + v169;
          if (__OFADD__(v28, v169))
          {
            goto LABEL_147;
          }

          if (v80 >= v79)
          {
            v80 = v183[1];
          }

          if (v80 >= v28)
          {
            if (v30 != v80)
            {
              v172 = v29;
              v173 = v5;
              v81 = *v183;
              v82 = *(v181 + 72);
              v83 = *v183 + v82 * (v30 - 1);
              v84 = -v82;
              v175 = v28;
              v176 = v82;
              v85 = v28 - v30;
              v187 = v81;
              v86 = v81 + v30 * v82;
              v179 = v80;
              do
              {
                v184 = v83;
                v185 = v30;
                v180 = v86;
                v182 = v85;
                v87 = v83;
                while (1)
                {
                  sub_1ADDDE3A0(v86, v18, type metadata accessor for Replica);
                  sub_1ADDDE3A0(v87, v15, type metadata accessor for Replica);
                  v88 = *(v8 + 20);
                  v89 = *&v18[v88];
                  v90 = *&v15[v88];
                  if (v89 == v90)
                  {
                    v192 = sub_1AE23BFCC();
                    LOWORD(v193) = v91;
                    BYTE2(v193) = v92;
                    BYTE3(v193) = v93;
                    BYTE4(v193) = v94;
                    BYTE5(v193) = v95;
                    BYTE6(v193) = v96;
                    HIBYTE(v193) = v97;
                    v190 = sub_1AE23BFCC();
                    LOWORD(v191) = v98;
                    BYTE2(v191) = v99;
                    BYTE3(v191) = v100;
                    BYTE4(v191) = v101;
                    BYTE5(v191) = v102;
                    BYTE6(v191) = v103;
                    HIBYTE(v191) = v104;
                    v105 = bswap64(v192);
                    v106 = bswap64(v190);
                    if (v105 != v106)
                    {
                      goto LABEL_56;
                    }

                    v105 = bswap64(v193);
                    v106 = bswap64(v191);
                    if (v105 == v106)
                    {
                      v107 = 0;
                    }

                    else
                    {
LABEL_56:
                      v108 = v105 < v106 ? -1 : 1;
                      v107 = v108 >> 31;
                    }
                  }

                  else
                  {
                    v107 = v89 < v90;
                  }

                  sub_1ADDE4FF8(v15, type metadata accessor for Replica);
                  sub_1ADDE4FF8(v18, type metadata accessor for Replica);
                  if (!v107)
                  {
                    break;
                  }

                  if (!v187)
                  {
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
                  }

                  v109 = v18;
                  v110 = v15;
                  v111 = v188;
                  sub_1ADDDE540(v86, v188, type metadata accessor for Replica);
                  v8 = v189;
                  swift_arrayInitWithTakeFrontToBack();
                  v112 = v111;
                  v15 = v110;
                  v18 = v109;
                  sub_1ADDDE540(v112, v87, type metadata accessor for Replica);
                  v87 += v84;
                  v86 += v84;
                  if (__CFADD__(v85++, 1))
                  {
                    goto LABEL_49;
                  }
                }

                v8 = v189;
LABEL_49:
                v30 = v185 + 1;
                v83 = v184 + v176;
                v85 = v182 - 1;
                v86 = v180 + v176;
              }

              while (v185 + 1 != v179);
              v30 = v179;
              v5 = v173;
              v29 = v172;
              v28 = v175;
            }

            goto LABEL_66;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          v29 = sub_1ADF7ACAC(v29);
LABEL_119:
          v194 = v29;
          v163 = *(v29 + 16);
          if (v163 >= 2)
          {
            while (*v183)
            {
              v164 = *(v29 + 16 * v163);
              v165 = v29;
              v166 = *(v29 + 16 * (v163 - 1) + 32);
              v29 = *(v29 + 16 * (v163 - 1) + 40);
              sub_1ADF76338(*v183 + *(v181 + 72) * v164, *v183 + *(v181 + 72) * v166, *v183 + *(v181 + 72) * v29, v28);
              if (v5)
              {
                goto LABEL_127;
              }

              if (v29 < v164)
              {
                goto LABEL_142;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v165 = sub_1ADF7ACAC(v165);
              }

              if (v163 - 2 >= *(v165 + 2))
              {
                goto LABEL_143;
              }

              v167 = &v165[16 * v163];
              *v167 = v164;
              *(v167 + 1) = v29;
              v194 = v165;
              sub_1ADF7AC20(v163 - 1);
              v29 = v194;
              v163 = *(v194 + 16);
              if (v163 <= 1)
              {
                goto LABEL_127;
              }
            }

            goto LABEL_153;
          }

LABEL_127:

          v168 = *MEMORY[0x1E69E9840];
          return;
        }
      }

LABEL_66:
      if (v30 < v28)
      {
        goto LABEL_144;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v185 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1ADE5522C(0, *(v29 + 16) + 1, 1, v29);
      }

      v116 = *(v29 + 16);
      v115 = *(v29 + 24);
      v117 = v116 + 1;
      if (v116 >= v115 >> 1)
      {
        v29 = sub_1ADE5522C((v115 > 1), v116 + 1, 1, v29);
      }

      *(v29 + 16) = v117;
      v118 = v29 + 16 * v116;
      v119 = v185;
      *(v118 + 32) = v28;
      *(v118 + 40) = v119;
      v120 = *v174;
      if (!*v174)
      {
        goto LABEL_154;
      }

      if (v116)
      {
        while (2)
        {
          v28 = v117 - 1;
          if (v117 >= 4)
          {
            v125 = v29 + 32 + 16 * v117;
            v126 = *(v125 - 64);
            v127 = *(v125 - 56);
            v131 = __OFSUB__(v127, v126);
            v128 = v127 - v126;
            if (v131)
            {
              goto LABEL_131;
            }

            v130 = *(v125 - 48);
            v129 = *(v125 - 40);
            v131 = __OFSUB__(v129, v130);
            v123 = v129 - v130;
            v124 = v131;
            if (v131)
            {
              goto LABEL_132;
            }

            v132 = (v29 + 16 * v117);
            v134 = *v132;
            v133 = v132[1];
            v131 = __OFSUB__(v133, v134);
            v135 = v133 - v134;
            if (v131)
            {
              goto LABEL_134;
            }

            v131 = __OFADD__(v123, v135);
            v136 = v123 + v135;
            if (v131)
            {
              goto LABEL_137;
            }

            if (v136 >= v128)
            {
              v154 = (v29 + 32 + 16 * v28);
              v156 = *v154;
              v155 = v154[1];
              v131 = __OFSUB__(v155, v156);
              v157 = v155 - v156;
              if (v131)
              {
                goto LABEL_141;
              }

              if (v123 < v157)
              {
                v28 = v117 - 2;
              }
            }

            else
            {
LABEL_86:
              if (v124)
              {
                goto LABEL_133;
              }

              v137 = (v29 + 16 * v117);
              v139 = *v137;
              v138 = v137[1];
              v140 = __OFSUB__(v138, v139);
              v141 = v138 - v139;
              v142 = v140;
              if (v140)
              {
                goto LABEL_136;
              }

              v143 = (v29 + 32 + 16 * v28);
              v145 = *v143;
              v144 = v143[1];
              v131 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v131)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v141, v146))
              {
                goto LABEL_140;
              }

              if (v141 + v146 < v123)
              {
                goto LABEL_100;
              }

              if (v123 < v146)
              {
                v28 = v117 - 2;
              }
            }
          }

          else
          {
            if (v117 == 3)
            {
              v121 = *(v29 + 32);
              v122 = *(v29 + 40);
              v131 = __OFSUB__(v122, v121);
              v123 = v122 - v121;
              v124 = v131;
              goto LABEL_86;
            }

            v147 = (v29 + 16 * v117);
            v149 = *v147;
            v148 = v147[1];
            v131 = __OFSUB__(v148, v149);
            v141 = v148 - v149;
            v142 = v131;
LABEL_100:
            if (v142)
            {
              goto LABEL_135;
            }

            v150 = v29 + 16 * v28;
            v152 = *(v150 + 32);
            v151 = *(v150 + 40);
            v131 = __OFSUB__(v151, v152);
            v153 = v151 - v152;
            if (v131)
            {
              goto LABEL_138;
            }

            if (v153 < v141)
            {
              break;
            }
          }

          v158 = v28 - 1;
          if (v28 - 1 >= v117)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*v183)
          {
            goto LABEL_151;
          }

          v159 = v29;
          v160 = *(v29 + 32 + 16 * v158);
          v161 = *(v29 + 32 + 16 * v28);
          v29 = *(v29 + 32 + 16 * v28 + 8);
          sub_1ADF76338(*v183 + *(v181 + 72) * v160, *v183 + *(v181 + 72) * v161, *v183 + *(v181 + 72) * v29, v120);
          if (v5)
          {
            goto LABEL_127;
          }

          if (v29 < v160)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = sub_1ADF7ACAC(v159);
          }

          if (v158 >= *(v159 + 2))
          {
            goto LABEL_130;
          }

          v162 = &v159[16 * v158];
          *(v162 + 4) = v160;
          *(v162 + 5) = v29;
          v194 = v159;
          sub_1ADF7AC20(v28);
          v29 = v194;
          v117 = *(v194 + 16);
          v8 = v189;
          if (v117 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v27 = v183[1];
      v28 = v185;
      if (v185 >= v27)
      {
        goto LABEL_117;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_117:
  v28 = *v174;
  if (*v174)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_119;
  }

  __break(1u);
}

uint64_t sub_1ADF75BB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v95[1] = *MEMORY[0x1E69E9840];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v8 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_79;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
LABEL_80:
    __break(1u);
  }

  v21 = (a2 - a1) / v19;
  v94 = a4;
  v95[0] = a1;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    v86 = v15;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v23;
    if (v23 >= 1)
    {
      v49 = -v19;
      v50 = a4 + v23;
      v85 = -v19;
      do
      {
        v81 = v48;
        v51 = a2;
        v52 = a2 + v49;
        v83 = v51;
        v84 = v52;
        while (1)
        {
          if (v51 <= a1)
          {
            v95[0] = v51;
            v93 = v81;
            goto LABEL_77;
          }

          v53 = a3;
          v82 = v48;
          v54 = v50 + v49;
          v55 = v86;
          sub_1ADDCEE40(v50 + v49, v86, &qword_1EB5BA2A0, &unk_1AE242200);
          v56 = v87;
          sub_1ADDCEE40(v52, v87, &qword_1EB5BA2A0, &unk_1AE242200);
          v57 = *(type metadata accessor for Replica() + 20);
          v58 = *(v55 + v57);
          v59 = *(v56 + v57);
          if (v58 == v59)
          {
            v91 = sub_1AE23BFCC();
            LOWORD(v92) = v60;
            BYTE2(v92) = v61;
            BYTE3(v92) = v62;
            BYTE4(v92) = v63;
            BYTE5(v92) = v64;
            BYTE6(v92) = v65;
            HIBYTE(v92) = v66;
            v89 = sub_1AE23BFCC();
            LOWORD(v90) = v67;
            BYTE2(v90) = v68;
            BYTE3(v90) = v69;
            BYTE4(v90) = v70;
            BYTE5(v90) = v71;
            BYTE6(v90) = v72;
            HIBYTE(v90) = v73;
            v74 = bswap64(v91);
            v75 = bswap64(v89);
            if (v74 != v75)
            {
              goto LABEL_58;
            }

            v74 = bswap64(v92);
            v75 = bswap64(v90);
            if (v74 == v75)
            {
              LOBYTE(v76) = 0;
            }

            else
            {
LABEL_58:
              v77 = v74 < v75 ? -1 : 1;
              v76 = v77 >> 31;
            }
          }

          else
          {
            LOBYTE(v76) = v58 < v59;
          }

          a3 = v53 + v85;
          sub_1ADDCEDE0(v87, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v86, &qword_1EB5BA2A0, &unk_1AE242200);
          if (v76)
          {
            break;
          }

          v48 = v54;
          v52 = v84;
          if (v53 < v50 || a3 >= v50)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v54;
          v49 = v85;
          v51 = v83;
          if (v54 <= a4)
          {
            a2 = v83;
            goto LABEL_76;
          }
        }

        a2 = v84;
        if (v53 < v83 || a3 >= v83)
        {
          swift_arrayInitWithTakeFrontToBack();
          v48 = v82;
        }

        else
        {
          v48 = v82;
          if (v53 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = v85;
      }

      while (v50 > a4);
    }

LABEL_76:
    v95[0] = a2;
    v93 = v48;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v87 = a4 + v22;
    v93 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v86 = v19;
      do
      {
        sub_1ADDCEE40(a2, v17, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEE40(a4, v13, &qword_1EB5BA2A0, &unk_1AE242200);
        v25 = *(type metadata accessor for Replica() + 20);
        v26 = *&v17[v25];
        v27 = *&v13[v25];
        if (v26 == v27)
        {
          v91 = sub_1AE23BFCC();
          LOWORD(v92) = v28;
          BYTE2(v92) = v29;
          BYTE3(v92) = v30;
          BYTE4(v92) = v31;
          BYTE5(v92) = v32;
          BYTE6(v92) = v33;
          HIBYTE(v92) = v34;
          v89 = sub_1AE23BFCC();
          LOWORD(v90) = v35;
          BYTE2(v90) = v36;
          BYTE3(v90) = v37;
          BYTE4(v90) = v38;
          BYTE5(v90) = v39;
          BYTE6(v90) = v40;
          HIBYTE(v90) = v41;
          v42 = bswap64(v91);
          v43 = bswap64(v89);
          if (v42 == v43 && (v42 = bswap64(v92), v43 = bswap64(v90), v42 == v43))
          {
            v44 = 0;
          }

          else
          {
            if (v42 < v43)
            {
              v45 = -1;
            }

            else
            {
              v45 = 1;
            }

            v44 = v45 >> 31;
          }
        }

        else
        {
          v44 = v26 < v27;
        }

        sub_1ADDCEDE0(v13, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v17, &qword_1EB5BA2A0, &unk_1AE242200);
        if (v44)
        {
          v46 = v86;
          if (a1 < a2 || a1 >= a2 + v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v46;
        }

        else
        {
          v46 = v86;
          v47 = a4 + v86;
          if (a1 < a4 || a1 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94 = v47;
          a4 += v46;
        }

        a1 += v46;
        v95[0] = a1;
      }

      while (a4 < v87 && a2 < a3);
    }
  }

LABEL_77:
  sub_1ADF7ACC0(v95, &v94, &v93);
  v78 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1ADF76338(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v83 = type metadata accessor for Replica();
  v8 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_78;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
LABEL_79:
    __break(1u);
  }

  v21 = (a2 - a1) / v19;
  v89 = a4;
  v90[0] = a1;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v23;
    if (v23 >= 1)
    {
      v47 = -v19;
      v48 = a4 + v23;
      v80 = -v19;
      do
      {
        v77 = v46;
        v49 = a2;
        a2 += v47;
        v79 = v49;
        while (1)
        {
          if (v49 <= a1)
          {
            v90[0] = v49;
            v88 = v77;
            goto LABEL_76;
          }

          v50 = a3;
          v78 = v46;
          v51 = v48 + v47;
          v52 = v81;
          sub_1ADDDE3A0(v48 + v47, v81, type metadata accessor for Replica);
          v53 = v82;
          sub_1ADDDE3A0(a2, v82, type metadata accessor for Replica);
          v54 = *(v83 + 20);
          v55 = *(v52 + v54);
          v56 = *(v53 + v54);
          if (v55 == v56)
          {
            v86 = sub_1AE23BFCC();
            LOWORD(v87) = v57;
            BYTE2(v87) = v58;
            BYTE3(v87) = v59;
            BYTE4(v87) = v60;
            BYTE5(v87) = v61;
            BYTE6(v87) = v62;
            HIBYTE(v87) = v63;
            v84 = sub_1AE23BFCC();
            LOWORD(v85) = v64;
            BYTE2(v85) = v65;
            BYTE3(v85) = v66;
            BYTE4(v85) = v67;
            BYTE5(v85) = v68;
            BYTE6(v85) = v69;
            HIBYTE(v85) = v70;
            v71 = bswap64(v86);
            v72 = bswap64(v84);
            if (v71 != v72)
            {
              goto LABEL_57;
            }

            v71 = bswap64(v87);
            v72 = bswap64(v85);
            if (v71 == v72)
            {
              LOBYTE(v73) = 0;
            }

            else
            {
LABEL_57:
              v74 = v71 < v72 ? -1 : 1;
              v73 = v74 >> 31;
            }
          }

          else
          {
            LOBYTE(v73) = v55 < v56;
          }

          a3 = v50 + v80;
          sub_1ADDE4FF8(v82, type metadata accessor for Replica);
          sub_1ADDE4FF8(v81, type metadata accessor for Replica);
          if (v73)
          {
            break;
          }

          v46 = v51;
          if (v50 < v48 || a3 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v51;
          v49 = v79;
          v47 = v80;
          if (v51 <= a4)
          {
            a2 = v79;
            goto LABEL_75;
          }
        }

        if (v50 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v78;
        }

        else
        {
          v46 = v78;
          if (v50 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v80;
      }

      while (v48 > a4);
    }

LABEL_75:
    v90[0] = a2;
    v88 = v46;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = a4 + v22;
    v88 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        sub_1ADDDE3A0(a2, v17, type metadata accessor for Replica);
        sub_1ADDDE3A0(a4, v14, type metadata accessor for Replica);
        v25 = *(v83 + 20);
        v26 = *&v17[v25];
        v27 = *&v14[v25];
        if (v26 == v27)
        {
          v86 = sub_1AE23BFCC();
          LOWORD(v87) = v28;
          BYTE2(v87) = v29;
          BYTE3(v87) = v30;
          BYTE4(v87) = v31;
          BYTE5(v87) = v32;
          BYTE6(v87) = v33;
          HIBYTE(v87) = v34;
          v84 = sub_1AE23BFCC();
          LOWORD(v85) = v35;
          BYTE2(v85) = v36;
          BYTE3(v85) = v37;
          BYTE4(v85) = v38;
          BYTE5(v85) = v39;
          BYTE6(v85) = v40;
          HIBYTE(v85) = v41;
          v42 = bswap64(v86);
          v43 = bswap64(v84);
          if (v42 == v43 && (v42 = bswap64(v87), v43 = bswap64(v85), v42 == v43))
          {
            v44 = 0;
          }

          else
          {
            if (v42 < v43)
            {
              v45 = -1;
            }

            else
            {
              v45 = 1;
            }

            v44 = v45 >> 31;
          }
        }

        else
        {
          v44 = v26 < v27;
        }

        sub_1ADDE4FF8(v14, type metadata accessor for Replica);
        sub_1ADDE4FF8(v17, type metadata accessor for Replica);
        if (v44)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v89 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v90[0] = a1;
      }

      while (a4 < v82 && a2 < a3);
    }
  }

LABEL_76:
  sub_1ADF7ADB0(v90, &v89, &v88);
  v75 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1ADF76AA0(__int128 *a1, uint64_t a2)
{
  v57 = a1;
  v61 = sub_1AE23C12C();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Replica();
  v52 = *(v56 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = *(a2 + 64);
  v48 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v49 = v3 + 16;
  v58 = (v3 + 32);
  v53 = v3;
  v54 = a2;
  v55 = (v3 + 8);

  v21 = 0;
  v22 = 0;
  v23 = &qword_1EB5BA2A0;
  v51 = v11;
  v50 = v14;
  while (1)
  {
    v24 = v23;
    v62 = v21;
    if (!v18)
    {
      break;
    }

    v25 = v22;
LABEL_13:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v54;
    v31 = v59;
    sub_1ADDDE3A0(*(v54 + 48) + *(v52 + 72) * v29, v59, type metadata accessor for Replica);
    v32 = v53;
    v34 = v60;
    v33 = v61;
    (*(v53 + 16))(v60, *(v30 + 56) + *(v53 + 72) * v29, v61);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_1AE242200);
    v36 = *(v35 + 48);
    v37 = v31;
    v11 = v51;
    sub_1ADDDE540(v37, v51, type metadata accessor for Replica);
    (*(v32 + 32))(&v11[v36], v34, v33);
    (*(*(v35 - 8) + 56))(v11, 0, 1, v35);
    v27 = v25;
    v23 = v24;
    v14 = v50;
LABEL_14:
    sub_1ADDD2198(v11, v14, &qword_1EB5BA458, &qword_1AE251E00);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, &unk_1AE242200);
    if ((*(*(v38 - 8) + 48))(v14, 1, v38) == 1)
    {

      return MEMORY[0x1B26FCBD0](v62);
    }

    v39 = *(v38 + 48);
    v40 = v59;
    sub_1ADDDE540(v14, v59, type metadata accessor for Replica);
    v41 = v60;
    v42 = v27;
    v43 = v61;
    (*v58)(v60, &v14[v39], v61);
    v44 = v57[3];
    v65 = v57[2];
    v66 = v44;
    v67 = *(v57 + 8);
    v45 = v57[1];
    v63 = *v57;
    v64 = v45;
    sub_1AE23BFAC();
    MEMORY[0x1B26FCBD0](*(v40 + *(v56 + 20)));
    sub_1ADDE4FF8(v40, type metadata accessor for Replica);
    sub_1ADDDF604(&qword_1EB5BB810, MEMORY[0x1E6969B50]);
    sub_1AE23CBCC();
    (*v55)(v41, v43);
    result = sub_1AE23E34C();
    v21 = result ^ v62;
    v22 = v42;
  }

  if (v19 <= v22 + 1)
  {
    v26 = v22 + 1;
  }

  else
  {
    v26 = v19;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v19)
    {
      v23 = v24;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_1AE242200);
      (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
      v18 = 0;
      goto LABEL_14;
    }

    v18 = *(v48 + 8 * v25);
    ++v22;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ADF77044()
{
  result = qword_1EB5BB7A0;
  if (!qword_1EB5BB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB7A0);
  }

  return result;
}

unint64_t sub_1ADF770BC()
{
  result = qword_1EB5BB7A8;
  if (!qword_1EB5BB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB7A8);
  }

  return result;
}

uint64_t sub_1ADF7721C(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v8 = *(type metadata accessor for Timestamp(0) - 8);
  v9 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a3(v9);
  }

  v11 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = *(v9 + 16);
  result = sub_1ADDF3CCC(a1, a2);
  *v5 = v9;
  return result;
}

uint64_t sub_1ADF772F0(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v58 = a2;
  v53 = sub_1AE23C12C();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Timestamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v46 = *a1;
  v47 = v3;
  result = *v3;
  v57 = *(*v3 + 16);
  if (v57)
  {
    v20 = v6;
    v21 = 0;
    v22 = *a3;
    v54 = a3[1];
    v55 = v22;
    v51 = v20;
    v48 = v20 + 8;
    v49 = v20 + 16;
    v23 = MEMORY[0x1E69E7CC0];
    v50 = v10;
    v56 = result;
    while (1)
    {
      if (v21 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v60 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v24 = *(v10 + 72);
      sub_1ADDF8030(result + v60 + v24 * v21, v18, type metadata accessor for Timestamp);
      v25 = *(v58 + 16);
      if (v25)
      {
        v26 = v58 + v60;
        do
        {
          sub_1ADDF8030(v26, v15, type metadata accessor for Timestamp);
          if (*&v15[*(v9 + 20)] == *&v18[*(v9 + 20)] && (v27 = type metadata accessor for Replica(), *&v15[*(v27 + 20)] == *&v18[*(v27 + 20)]))
          {
            v28 = sub_1AE23BF8C();
            sub_1ADDE5300(v15, type metadata accessor for Timestamp);
            if (v28)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1ADDE5300(v15, type metadata accessor for Timestamp);
          }

          v26 += v24;
          --v25;
        }

        while (v25);
      }

      if (*&v18[*(type metadata accessor for Replica() + 20)])
      {
        v29 = v54;
      }

      else
      {
        v29 = v55;
      }

      if (!*(v29 + 16))
      {
        goto LABEL_22;
      }

      v30 = sub_1ADDD8A6C(v18);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = v51;
      v33 = v52;
      v34 = v53;
      (*(v51 + 16))(v52, *(v29 + 56) + *(v51 + 72) * v30, v53);

      v35 = *&v18[*(v9 + 20)];
      v36 = sub_1AE23C0CC();
      v37 = v33;
      v10 = v50;
      (*(v32 + 8))(v37, v34);
      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_1ADDE5300(v18, type metadata accessor for Timestamp);
LABEL_4:
      ++v21;
      result = v56;
      if (v21 == v57)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    sub_1ADDE5F9C(v18, v59, type metadata accessor for Timestamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6EF68(0, *(v23 + 16) + 1, 1);
      v23 = v61;
    }

    v40 = *(v23 + 16);
    v39 = *(v23 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1ADE6EF68(v39 > 1, v40 + 1, 1);
      v23 = v61;
    }

    *(v23 + 16) = v40 + 1;
    sub_1ADDE5F9C(v59, v23 + v60 + v40 * v24, type metadata accessor for Timestamp);
    goto LABEL_4;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v41 = v47;
  *v47 = v23;
  v42 = v58;
  v62 = v58;
  v61 = v46;

  sub_1ADF777D8(&v61);
  v43 = *(v23 + 16);
  sub_1ADF77B64(v62);

  v44 = *(*v41 + 16);
  if (sub_1ADF77EEC(*v41, v42))
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  if (v43 >= v44)
  {
    return v45;
  }

  else
  {
    return v45 + 1;
  }
}

uint64_t sub_1ADF777D8(uint64_t *a1)
{
  v40 = sub_1AE23C12C();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Timestamp(0);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v33 = v1;
  result = *v1;
  v44 = *(*v1 + 16);
  if (v44)
  {
    v14 = 0;
    v15 = *a1;
    v41 = a1[1];
    v42 = v15;
    v37 = v3;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v16 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    v43 = result;
    while (1)
    {
      if (v14 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      sub_1ADDF8030(result + v17 + v18 * v14, v12, type metadata accessor for Timestamp);
      if (*&v12[*(type metadata accessor for Replica() + 20)])
      {
        v19 = v41;
      }

      else
      {
        v19 = v42;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_14;
      }

      v20 = sub_1ADDD8A6C(v12);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v37;
      v23 = v6;
      v25 = v39;
      v24 = v40;
      (*(v37 + 16))(v39, *(v19 + 56) + *(v37 + 72) * v20, v40);

      v26 = *&v12[*(v38 + 20)];
      v27 = sub_1AE23C0CC();
      v28 = v25;
      v6 = v23;
      v9 = v36;
      (*(v22 + 8))(v28, v24);
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1ADDE5300(v12, type metadata accessor for Timestamp);
LABEL_4:
      ++v14;
      result = v43;
      if (v44 == v14)
      {
        goto LABEL_20;
      }
    }

LABEL_14:
    sub_1ADDE5F9C(v12, v9, type metadata accessor for Timestamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6EF68(0, *(v16 + 16) + 1, 1);
      v16 = v45;
    }

    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1ADE6EF68(v30 > 1, v31 + 1, 1);
      v16 = v45;
    }

    *(v16 + 16) = v31 + 1;
    sub_1ADDE5F9C(v9, v16 + v17 + v31 * v18, type metadata accessor for Timestamp);
    goto LABEL_4;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *v33 = v16;
  return result;
}

uint64_t sub_1ADF77B64(uint64_t a1)
{
  v3 = type metadata accessor for Timestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *v1;
  if (*(*v1 + 16))
  {
    v26 = v1;
    v28 = *(a1 + 16);
    if (v28)
    {
      v15 = 0;
      v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v27 = a1 + v29;
      v16 = *(v11 + 72);
      do
      {
        sub_1ADDF8030(v27 + v16 * v15, v13, type metadata accessor for Timestamp);
        v17 = v14[2];
        if (v17)
        {
          v18 = v14 + v29;
          do
          {
            sub_1ADDF8030(v18, v9, type metadata accessor for Timestamp);
            if (*&v9[*(v3 + 20)] == *&v13[*(v3 + 20)] && (v19 = type metadata accessor for Replica(), *&v9[*(v19 + 20)] == *&v13[*(v19 + 20)]))
            {
              v20 = sub_1AE23BF8C();
              sub_1ADDE5300(v9, type metadata accessor for Timestamp);
              if (v20)
              {
                sub_1ADDE5300(v13, type metadata accessor for Timestamp);
                goto LABEL_5;
              }
            }

            else
            {
              sub_1ADDE5300(v9, type metadata accessor for Timestamp);
            }

            v18 += v16;
            --v17;
          }

          while (v17);
        }

        sub_1ADDF8030(v13, v6, type metadata accessor for Timestamp);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1ADE09898(0, v14[2] + 1, 1, v14);
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          v14 = sub_1ADE09898(v21 > 1, v22 + 1, 1, v14);
        }

        sub_1ADDE5300(v13, type metadata accessor for Timestamp);
        v14[2] = v22 + 1;
        sub_1ADDE5F9C(v6, v14 + v29 + v22 * v16, type metadata accessor for Timestamp);
        *v26 = v14;
LABEL_5:
        ++v15;
      }

      while (v15 != v28);
    }

    return sub_1ADF7721C(sub_1ADF7B924, 0, sub_1ADF799DC);
  }

  else
  {
    v24 = *v1;

    *v1 = a1;
  }
}

uint64_t sub_1ADF77EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  if (v13 < v12)
  {
    return 1;
  }

  if (!v12)
  {
    return 0;
  }

  v14 = 0;
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = *(v9 + 72);
  v17 = a1 + v15;
  v18 = a2 + v15;
  v24 = v18;
  v25 = a1 + v15;
  while (2)
  {
    v19 = v17 + v16 * v14++;
    sub_1ADDF8030(v19, v11, type metadata accessor for Timestamp);
    v20 = v13;
    while (1)
    {
      sub_1ADDF8030(v18, v7, type metadata accessor for Timestamp);
      if (*&v7[*(v4 + 20)] == *&v11[*(v4 + 20)])
      {
        v21 = type metadata accessor for Replica();
        if (*&v7[*(v21 + 20)] == *&v11[*(v21 + 20)])
        {
          break;
        }
      }

      sub_1ADDE5300(v7, type metadata accessor for Timestamp);
LABEL_6:
      v18 += v16;
      if (!--v20)
      {
        sub_1ADDE5300(v11, type metadata accessor for Timestamp);
        return 1;
      }
    }

    v22 = sub_1AE23BF8C();
    sub_1ADDE5300(v7, type metadata accessor for Timestamp);
    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_1ADDE5300(v11, type metadata accessor for Timestamp);
    result = 0;
    v18 = v24;
    v17 = v25;
    if (v14 != v12)
    {
      continue;
    }

    return result;
  }
}

void sub_1ADF78130(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for Timestamp(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v24 = v1;
  v11 = *v1;
  v26 = *(*v1 + 16);
  if (v26)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v25 = v11;
    while (v12 < *(v11 + 16))
    {
      v16 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v17 = *(v27 + 72);
      sub_1ADDF8030(v11 + v16 + v17 * v12, v10, type metadata accessor for Timestamp);
      v18 = *(v28 + 16);
      if (v18)
      {
        v19 = v28 + v16;
        do
        {
          sub_1ADDF8030(v19, v7, type metadata accessor for Timestamp);
          if (*&v7[*(v2 + 20)] == *&v10[*(v2 + 20)] && (v20 = type metadata accessor for Replica(), *&v7[*(v20 + 20)] == *&v10[*(v20 + 20)]))
          {
            v21 = sub_1AE23BF8C();
            sub_1ADDE5300(v7, type metadata accessor for Timestamp);
            if (v21)
            {
              sub_1ADDE5300(v10, type metadata accessor for Timestamp);
              v11 = v25;
              goto LABEL_6;
            }
          }

          else
          {
            sub_1ADDE5300(v7, type metadata accessor for Timestamp);
          }

          v19 += v17;
          --v18;
        }

        while (v18);
      }

      sub_1ADDE5F9C(v10, v29, type metadata accessor for Timestamp);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ADE6EF68(0, *(v13 + 16) + 1, 1);
        v13 = v30;
      }

      v11 = v25;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1ADE6EF68(v14 > 1, v15 + 1, 1);
        v13 = v30;
      }

      *(v13 + 16) = v15 + 1;
      sub_1ADDE5F9C(v29, v13 + v16 + v15 * v17, type metadata accessor for Timestamp);
LABEL_6:
      if (++v12 == v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

    *v24 = v13;
  }
}

void sub_1ADF7845C(uint64_t *a1)
{
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Timestamp(0);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v43 = v1;
  v13 = *v1;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v47 = v3;
    v15 = 0;
    v16 = *a1;
    v53 = a1[1];
    v54 = v16;
    v45 = v4 + 1;
    v46 = v4 + 2;
    v17 = MEMORY[0x1E69E7CC0];
    v44 = v4;
    v51 = v14;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72);
      sub_1ADDF8030(v13 + v18 + v19 * v15, v12, type metadata accessor for Timestamp);
      if (*&v12[*(type metadata accessor for Replica() + 20)])
      {
        v20 = v53;
      }

      else
      {
        v20 = v54;
      }

      if (*(v20 + 16))
      {

        v21 = sub_1ADDD8A6C(v12);
        if (v22)
        {
          v23 = *(v20 + 56) + v4[9] * v21;
          v24 = v4[2];
          v25 = v49;
          v52 = v19;
          v26 = v18;
          v27 = v13;
          v28 = v7;
          v29 = v17;
          v30 = v4;
          v31 = v47;
          v24(v49, v23, v47);

          v32 = *&v12[*(v48 + 20)];
          v33 = sub_1AE23C0CC();
          v34 = v30[1];
          v35 = v25;
          v36 = v31;
          v4 = v30;
          v17 = v29;
          v7 = v28;
          v13 = v27;
          v37 = v26;
          v14 = v51;
          v38 = v52;
          v34(v35, v36);
          if (v33)
          {
            sub_1ADDE5F9C(v12, v50, type metadata accessor for Timestamp);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v55 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1ADE6EF68(0, *(v17 + 16) + 1, 1);
              v17 = v55;
            }

            v41 = *(v17 + 16);
            v40 = *(v17 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_1ADE6EF68(v40 > 1, v41 + 1, 1);
              v17 = v55;
            }

            *(v17 + 16) = v41 + 1;
            sub_1ADDE5F9C(v50, v17 + v37 + v41 * v38, type metadata accessor for Timestamp);
            v4 = v44;
            v14 = v51;
            goto LABEL_5;
          }
        }

        else
        {
        }
      }

      sub_1ADDE5300(v12, type metadata accessor for Timestamp);
LABEL_5:
      if (v14 == ++v15)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *v43 = v17;
}

uint64_t sub_1ADF7880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Timestamp(0);
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = *v3;
  v21 = *(*v3 + 16);
  if (v21)
  {
    v46 = v9;
    v47 = v8;
    v42 = v3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1ADE6EF68(0, v21, 0);
    v22 = v53;
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v41 = v20;
    v24 = v10;
    v25 = v20 + v23;
    v26 = v23;
    v27 = *(v13 + 72);
    v44 = (v24 + 48);
    v45 = v23;
    v50 = a3;
    do
    {
      sub_1ADDF8030(v25, v16, type metadata accessor for Timestamp);
      sub_1ADDF8030(v16, v19, type metadata accessor for Timestamp);
      v28 = *(type metadata accessor for Replica() + 20);
      if (*&v19[v28] && *(a3 + 16) && (v29 = sub_1ADDD8A6C(v19), (v30 & 1) != 0))
      {
        sub_1ADDE56CC(*(a3 + 56) + 24 * v29, v51);
        sub_1ADDE5634(v51, v52);
        v31 = v47;
        v49 = *(v48 + 20);
        sub_1AE221574(*&v19[v49], v47);
        sub_1ADDE5C20(v52);
        sub_1ADDE5300(v16, type metadata accessor for Timestamp);
        v32 = v46;
        if ((*v44)(v31, 1, v46) == 1)
        {
          sub_1ADDCEDE0(v31, &qword_1EB5BA460, &qword_1AE251020);
        }

        else
        {
          sub_1ADDE5300(v19, type metadata accessor for Timestamp);
          v35 = v31;
          v36 = v43;
          sub_1ADDE5F9C(v35, v43, type metadata accessor for FinalizedTimestamp);
          v37 = sub_1AE23BFEC();
          (*(*(v37 - 8) + 16))(v19, v36, v37);
          *&v19[v28] = 0;
          v38 = *(v36 + *(v32 + 20));
          sub_1ADDE5300(v36, type metadata accessor for FinalizedTimestamp);
          *&v19[v49] = v38;
        }

        v26 = v45;
      }

      else
      {
        sub_1ADDE5300(v16, type metadata accessor for Timestamp);
      }

      v53 = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1ADE6EF68(v33 > 1, v34 + 1, 1);
        v22 = v53;
      }

      *(v22 + 16) = v34 + 1;
      sub_1ADDE5F9C(v19, v22 + v26 + v34 * v27, type metadata accessor for Timestamp);
      v25 += v27;
      --v21;
      a3 = v50;
    }

    while (v21);

    v3 = v42;
  }

  else
  {
    v39 = *v3;

    v22 = MEMORY[0x1E69E7CC0];
  }

  *v3 = v22;
  return sub_1ADF7721C(sub_1ADF7B924, 0, sub_1ADF799DC);
}

void *sub_1ADF78CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    if (v10 == v9)
    {

      return a2;
    }

    sub_1ADDF8030(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9++, v8, type metadata accessor for Timestamp);
    v11 = *&v8[*(type metadata accessor for Replica() + 20)];
    sub_1ADDE5300(v8, type metadata accessor for Timestamp);
  }

  while (!v11);

  v13 = sub_1ADF78ED0(v12, v21);
  v14 = v21[0];
  v15 = v21[1];
  if (qword_1ED96B308 != -1)
  {
    v13 = swift_once();
  }

  v16 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](v13);
  *&v19[-32] = v14;
  *&v19[-24] = v15;
  *&v19[-16] = v17;
  *&v19[-8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
  sub_1AE23D6AC();

  v20[0] = *(&v20[1] + 8);
  return sub_1ADF7B134(v20);
}

uint64_t sub_1ADF78ED0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = sub_1AE23C12C();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Timestamp(0);
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 + 16);
  if (!v57)
  {

    v12 = MEMORY[0x1E69E7CC8];
    v48 = MEMORY[0x1E69E7CC8];
LABEL_30:
    *a2 = v48;
    a2[1] = v12;
    return result;
  }

  v11 = 0;
  v56 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v50 = a2;
  v51 = v4 + 32;
  v12 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v55 = v7;
  while (v11 < *(a1 + 16))
  {
    sub_1ADDF8030(v56 + *(v7 + 72) * v11, v10, type metadata accessor for Timestamp);
    v15 = type metadata accessor for Replica();
    v16 = *&v10[*(v15 + 20)];
    v59 = *&v10[*(v58 + 20)];
    if (!v16)
    {
      v28 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v28;
      v30 = sub_1ADDD8A6C(v10);
      v32 = v28[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_33;
      }

      v36 = v31;
      if (v28[3] < v35)
      {
        sub_1ADDDDED0(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_1ADDD8A6C(v10);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_22:
        v38 = v60;
        if ((v36 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v46 = v30;
        sub_1ADDFB81C();
        v30 = v46;
        v7 = v55;
        v38 = v60;
        if ((v36 & 1) == 0)
        {
LABEL_23:
          v42 = v52;
          v43 = v30;
          sub_1AE23C11C();
          v38[(v43 >> 6) + 8] |= 1 << v43;
          sub_1ADDF8030(v10, v38[6] + *(*(v15 - 8) + 72) * v43, type metadata accessor for Replica);
          v13 = *(v4 + 72) * v43;
          (*(v4 + 32))(v38[7] + v13, v42, v53);
          v44 = v38[2];
          v34 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v34)
          {
            goto LABEL_35;
          }

          v38[2] = v45;
          v54 = v38;
          goto LABEL_25;
        }
      }

      v13 = *(v4 + 72) * v30;
      v54 = v38;
      goto LABEL_4;
    }

    v17 = v4;
    v18 = a1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v12;
    v21 = sub_1ADDD8A6C(v10);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_32;
    }

    v25 = v20;
    if (v12[3] >= v24)
    {
      if ((v19 & 1) == 0)
      {
        sub_1ADDFB81C();
      }
    }

    else
    {
      sub_1ADDDDED0(v24, v19);
      v26 = sub_1ADDD8A6C(v10);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_36;
      }

      v21 = v26;
    }

    a1 = v18;
    v38 = v60;
    v4 = v17;
    if (v25)
    {
      v13 = *(v17 + 72) * v21;
      v12 = v60;
LABEL_25:
      v7 = v55;
      goto LABEL_4;
    }

    v39 = v52;
    sub_1AE23C11C();
    v38[(v21 >> 6) + 8] |= 1 << v21;
    sub_1ADDF8030(v10, v38[6] + *(*(v15 - 8) + 72) * v21, type metadata accessor for Replica);
    v13 = *(v17 + 72) * v21;
    (*(v17 + 32))(v38[7] + v13, v39, v53);
    v40 = v38[2];
    v34 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    v7 = v55;
    if (v34)
    {
      goto LABEL_34;
    }

    v38[2] = v41;
    v12 = v38;
LABEL_4:
    ++v11;
    v14 = v38[7] + v13;
    sub_1AE23C08C();
    sub_1ADDE5300(v10, type metadata accessor for Timestamp);
    if (v57 == v11)
    {

      a2 = v50;
      v48 = v54;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADF793D8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Timestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v8 = *(type metadata accessor for Replica() + 20);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    v7 = v9 < v10;
    if (v9 == v10)
    {
      return sub_1ADF5EB00() & 1;
    }
  }

  return v7;
}

uint64_t sub_1ADF7945C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  sub_1ADF78ED0(a2, &v11);
  v5 = sub_1ADE71C08();
  if (v3)
  {
  }

  else
  {
    v7 = *(v5 + 16);

    v8 = sub_1ADDF5C7C(v7);
    v10 = v9;
    swift_beginAccess();
    sub_1AE1B6DB0(v8, v10);
    swift_endAccess();
  }
}

uint64_t sub_1ADF79558()
{
  v1 = *v0;

  sub_1ADF78ED0(v2, &v5);
  v3 = CRVersion.description.getter();

  return v3;
}

void sub_1ADF795C4()
{
  v1 = type metadata accessor for Timestamp(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *v0;
  v8 = *(v7 + 16);
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    sub_1ADDF8030(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6++, v5, type metadata accessor for Timestamp);
    v9 = *&v5[*(type metadata accessor for Replica() + 20)];
    sub_1ADDE5300(v5, type metadata accessor for Timestamp);
    if (v9)
    {
      return;
    }
  }
}

uint64_t sub_1ADF79704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADF7B044(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADF7974C(uint64_t a1)
{
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Timestamp(0);
  v8 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = v1[1];
    v28 = *v1;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26[1] = v4 + 16;
    v15 = *(v9 + 72);
    v16 = v12 - 1;
    while (1)
    {
      sub_1ADDF8030(v14, v11, type metadata accessor for Timestamp);
      v17 = *&v11[*(type metadata accessor for Replica() + 20)] ? v13 : v28;
      if (!*(v17 + 16))
      {
        break;
      }

      v18 = sub_1ADDD8A6C(v11);
      if ((v19 & 1) == 0)
      {

        break;
      }

      (*(v4 + 16))(v7, *(v17 + 56) + *(v4 + 72) * v18, v3);

      v20 = *&v11[*(v27 + 20)];
      v21 = sub_1AE23C0CC();
      sub_1ADDE5300(v11, type metadata accessor for Timestamp);
      (*(v4 + 8))(v7, v3);
      v23 = v16-- != 0;
      if (v21)
      {
        v14 += v15;
        if (v23)
        {
          continue;
        }
      }

      v24 = v21 ^ 1;
      return v24 & 1;
    }

    sub_1ADDE5300(v11, type metadata accessor for Timestamp);
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1ADF79A54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AE23D97C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1AE23DACC();
}

uint64_t sub_1ADF79ACC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a4;
  v144 = a5;
  v131 = a1;
  v136 = type metadata accessor for Timestamp(0);
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = MEMORY[0x1EEE9AC00](v136);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v120 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v120 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  result = MEMORY[0x1EEE9AC00](v23);
  v142 = a3;
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v22 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v29 = a3[1];
  v126 = &v120 - v25;
  v127 = v28;
  v137 = v27;
  v134 = v26;
  v125 = a6;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v124 = v18;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v44 = v30 + 1;
    }

    else
    {
      v129 = v29;
      v32 = *v142;
      v33 = *(v141 + 72);
      v34 = v30;
      v35 = *v142 + v33 * (v30 + 1);
      v36 = v126;
      sub_1ADDF8030(v35, v126, type metadata accessor for Timestamp);
      v140 = v32;
      v37 = v32 + v33 * v34;
      v38 = v127;
      sub_1ADDF8030(v37, v127, type metadata accessor for Timestamp);
      LODWORD(v139) = v143(v36, v38);
      if (v7)
      {
        sub_1ADDE5300(v38, type metadata accessor for Timestamp);
        v119 = v36;
        goto LABEL_112;
      }

      sub_1ADDE5300(v38, type metadata accessor for Timestamp);
      result = sub_1ADDE5300(v36, type metadata accessor for Timestamp);
      v123 = v129 - 1;
      v138 = v129 - 2;
      v39 = v140 + v33 * (v34 + 2);
      v128 = v34;
      v40 = v33;
      v140 = v33;
      while (v138 != v34)
      {
        sub_1ADDF8030(v39, v22, type metadata accessor for Timestamp);
        v41 = v22;
        v42 = v137;
        sub_1ADDF8030(v35, v137, type metadata accessor for Timestamp);
        v43 = v143(v41, v42);
        sub_1ADDE5300(v42, type metadata accessor for Timestamp);
        result = sub_1ADDE5300(v41, type metadata accessor for Timestamp);
        ++v34;
        v40 = v140;
        v39 += v140;
        v35 += v140;
        v22 = v41;
        if ((v139 ^ v43))
        {
          v44 = v34 + 1;
          goto LABEL_12;
        }
      }

      v34 = v123;
      v44 = v129;
LABEL_12:
      v30 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v44 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v34)
      {
        v45 = v44;
        v46 = v40 * (v44 - 1);
        v47 = v45 * v40;
        v129 = v45;
        v130 = v22;
        v48 = v45;
        v49 = v128;
        v50 = v128 * v40;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            sub_1ADDE5F9C(v51 + v50, v133, type metadata accessor for Timestamp);
            if (v50 < v46 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1ADDE5F9C(v133, v51 + v46, type metadata accessor for Timestamp);
            v22 = v130;
            v40 = v140;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        v18 = v124;
        v30 = v128;
        v44 = v129;
      }

      else
      {
LABEL_15:
        v18 = v124;
      }
    }

    v52 = v142[1];
    if (v44 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v30))
    {
      goto LABEL_132;
    }

    if (v44 - v30 >= v125)
    {
LABEL_36:
      v54 = v44;
      if (v44 < v30)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v125))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v30 + v125 >= v52)
    {
      v53 = v142[1];
    }

    else
    {
      v53 = v30 + v125;
    }

    if (v53 < v30)
    {
      goto LABEL_135;
    }

    if (v44 == v53)
    {
      goto LABEL_36;
    }

    v130 = v22;
    v102 = *v142;
    v103 = *(v141 + 72);
    v104 = *v142 + v103 * (v44 - 1);
    v139 = -v103;
    v140 = v102;
    v128 = v30;
    v105 = v30 - v44;
    v121 = v103;
    v106 = v102 + v44 * v103;
    v138 = v53;
    v132 = v31;
    do
    {
      v122 = v106;
      v123 = v105;
      v129 = v104;
      while (1)
      {
        sub_1ADDF8030(v106, v18, type metadata accessor for Timestamp);
        v107 = v18;
        v108 = v134;
        sub_1ADDF8030(v104, v134, type metadata accessor for Timestamp);
        v109 = v143(v107, v108);
        if (v7)
        {
          sub_1ADDE5300(v108, type metadata accessor for Timestamp);
          v119 = v107;
LABEL_112:
          sub_1ADDE5300(v119, type metadata accessor for Timestamp);
        }

        v110 = v109;
        v111 = v44;
        sub_1ADDE5300(v108, type metadata accessor for Timestamp);
        result = sub_1ADDE5300(v107, type metadata accessor for Timestamp);
        v18 = v107;
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_138;
        }

        v112 = v135;
        sub_1ADDE5F9C(v106, v135, type metadata accessor for Timestamp);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDE5F9C(v112, v104, type metadata accessor for Timestamp);
        v104 += v139;
        v106 += v139;
        v113 = __CFADD__(v105++, 1);
        v44 = v111;
        v7 = 0;
        v31 = v132;
        if (v113)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v31 = v132;
LABEL_95:
      ++v44;
      v104 = v129 + v121;
      v105 = v123 - 1;
      v106 = v122 + v121;
      v54 = v138;
    }

    while (v44 != v138);
    v22 = v130;
    v30 = v128;
    if (v138 < v128)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_1ADE5522C((v55 > 1), v56 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v57;
    v58 = &v31[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v54;
    v138 = v54;
    v59 = *v131;
    if (!*v131)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v29 = v142[1];
    v30 = v138;
    if (v138 >= v29)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v60 = v57 - 1;
    if (v57 >= 4)
    {
      v65 = &v31[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_118;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_119;
      }

      v72 = &v31[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_121;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_124;
      }

      if (v76 >= v68)
      {
        v94 = &v31[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v64)
        {
          goto LABEL_120;
        }

        v77 = &v31[16 * v57];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_123;
        }

        v83 = &v31[16 * v60 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_127;
        }

        if (v81 + v86 < v63)
        {
          goto LABEL_70;
        }

        if (v63 < v86)
        {
          v60 = v57 - 2;
        }
      }
    }

    else
    {
      if (v57 == 3)
      {
        v61 = *(v31 + 4);
        v62 = *(v31 + 5);
        v71 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        v64 = v71;
        goto LABEL_56;
      }

      v87 = &v31[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v71 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v71;
LABEL_70:
      if (v82)
      {
        goto LABEL_122;
      }

      v90 = &v31[16 * v60];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v71 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v60 - 1;
    if (v60 - 1 < v57)
    {
      if (!*v142)
      {
        goto LABEL_137;
      }

      v99 = *&v31[16 * v98 + 32];
      v100 = *&v31[16 * v60 + 40];
      sub_1ADF7A5C4(*v142 + *(v141 + 72) * v99, *v142 + *(v141 + 72) * *&v31[16 * v60 + 32], *v142 + *(v141 + 72) * v100, v59, v143, v144);
      if (v7)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1ADF7ACAC(v31);
      }

      if (v98 >= *(v31 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v31[16 * v98];
      *(v101 + 4) = v99;
      *(v101 + 5) = v100;
      v145 = v31;
      result = sub_1ADF7AC20(v60);
      v31 = v145;
      v57 = *(v145 + 2);
      if (v57 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_1ADF7ACAC(v31);
  v31 = result;
LABEL_101:
  v145 = v31;
  v114 = *(v31 + 2);
  if (v114 < 2)
  {
  }

  v115 = v143;
  while (*v142)
  {
    v116 = *&v31[16 * v114];
    v117 = *&v31[16 * v114 + 24];
    sub_1ADF7A5C4(*v142 + *(v141 + 72) * v116, *v142 + *(v141 + 72) * *&v31[16 * v114 + 16], *v142 + *(v141 + 72) * v117, v22, v115, v144);
    if (v7)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1ADF7ACAC(v31);
    }

    if (v114 - 2 >= *(v31 + 2))
    {
      goto LABEL_129;
    }

    v118 = &v31[16 * v114];
    *v118 = v116;
    *(v118 + 1) = v117;
    v145 = v31;
    result = sub_1ADF7AC20(v114 - 1);
    v31 = v145;
    v114 = *(v145 + 2);
    if (v114 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_1ADF7A5C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for Timestamp(0);
  v11 = *(*(v54 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v46 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v46 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - v22;
  v53 = *(v24 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < result || result + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = result;
          sub_1ADDF8030(a2, v23, type metadata accessor for Timestamp);
          sub_1ADDF8030(a4, v20, type metadata accessor for Timestamp);
          v31 = v56(v23, v20);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_1ADDE5300(v20, type metadata accessor for Timestamp);
          sub_1ADDE5300(v23, type metadata accessor for Timestamp);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          result = v35 + v34;
          v60 = result;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_1ADDE5300(v20, type metadata accessor for Timestamp);
        sub_1ADDE5300(v23, type metadata accessor for Timestamp);
      }

LABEL_64:
      sub_1ADF7ADE0(&v60, &v59, &v58, type metadata accessor for Timestamp);
      return 1;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v17;
          v49 = v14;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= result)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_1ADDF8030(v39 + v38, v17, type metadata accessor for Timestamp);
              sub_1ADDF8030(v51, v14, type metadata accessor for Timestamp);
              v43 = v56(v17, v14);
              if (v7)
              {
                sub_1ADDE5300(v14, type metadata accessor for Timestamp);
                sub_1ADDE5300(v17, type metadata accessor for Timestamp);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_1ADDE5300(v14, type metadata accessor for Timestamp);
              sub_1ADDE5300(v17, type metadata accessor for Timestamp);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              result = v52;
              v17 = v48;
              v14 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v52;
            v39 = v53;
            v17 = v48;
            v14 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1ADF7AC20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1ADF7ACAC(v3);
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

uint64_t sub_1ADF7ACC0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1ADF7ADE0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

char *sub_1ADF7AEC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA130, &qword_1AE241B50);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1ADF7B044(uint64_t a1)
{
  v2 = 0xD00000000000001BLL;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = "Invalid UUID index.";
    if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 6)
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      return sub_1ADDF4A24(v6, v7, a1);
    }
  }

  else
  {
    v5 = "Not decoding a CRDT.";
    v2 = 0xD000000000000017;
  }

  v9 = v5 | 0x8000000000000000;
  sub_1ADE42E40();
  swift_allocError();
  *v10 = v2;
  *(v10 + 8) = v9;
  *(v10 + 16) = 0;
  swift_willThrow();
}

void *sub_1ADF7B134(__int128 *a1)
{
  v71 = sub_1AE23BFFC();
  v2 = *(v71 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v55 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v8 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v55 - v13;
  v65 = type metadata accessor for Timestamp(0);
  v67 = *(v65 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0;
  v56 = &v74;
  v74 = *a1;
  v68 = (v2 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v20 = *(v56 + v18);
    v57 = v17;
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v62 = v20;

    v26 = 0;
    v61 = v21;
    v60 = v25;
    while (v24)
    {
      v27 = v26;
LABEL_13:
      v63 = v27;
      v64 = (v24 - 1) & v24;
      v28 = __clz(__rbit64(v24)) | (v27 << 6);
      v29 = v62;
      v30 = *(v62 + 48);
      v31 = type metadata accessor for Replica();
      v32 = v58;
      sub_1ADDF8030(v30 + *(*(v31 - 8) + 72) * v28, v58, type metadata accessor for Replica);
      v33 = *(v29 + 56);
      v34 = sub_1AE23C12C();
      v35 = *(v34 - 8);
      v36 = v33 + *(v35 + 72) * v28;
      v37 = v69;
      v38 = *(v69 + 48);
      (*(v35 + 16))(v32 + v38, v36, v34);
      v39 = *(v37 + 48);
      v40 = v72;
      sub_1ADDE5F9C(v32, v72, type metadata accessor for Replica);
      (*(v35 + 32))(v40 + v39, v32 + v38, v34);
      sub_1AE23C01C();
      v41 = *(v59 + 36);
      sub_1ADF7B86C(&qword_1ED967148, MEMORY[0x1E6969B50]);
      v42 = (v35 + 8);
      while (1)
      {
        v43 = v70;
        sub_1AE23D46C();
        sub_1ADF7B86C(&qword_1ED967158, MEMORY[0x1E6969B18]);
        v44 = v71;
        v45 = sub_1AE23CCBC();
        (*v68)(v43, v44);
        if (v45)
        {
          break;
        }

        v46 = sub_1AE23D51C();
        v48 = *v47;
        v46(v73, 0);
        sub_1AE23D47C();
        v49 = v66;
        sub_1ADF7B8B4(v72, v66);
        v50 = *(v69 + 48);
        sub_1ADDE5F9C(v49, v16, type metadata accessor for Replica);
        *&v16[*(v65 + 20)] = v48;
        (*v42)(v49 + v50, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1ADE09898(0, v19[2] + 1, 1, v19);
        }

        v52 = v19[2];
        v51 = v19[3];
        if (v52 >= v51 >> 1)
        {
          v19 = sub_1ADE09898(v51 > 1, v52 + 1, 1, v19);
        }

        v19[2] = v52 + 1;
        sub_1ADDE5F9C(v16, v19 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52, type metadata accessor for Timestamp);
      }

      sub_1ADDCEDE0(v7, &qword_1EB5BA490, &qword_1AE2514C0);
      sub_1ADDCEDE0(v72, &qword_1EB5BA2A0, &unk_1AE242200);
      v26 = v63;
      v24 = v64;
      v21 = v61;
      v25 = v60;
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_23:
        v19 = sub_1ADF799DC(v19);
        goto LABEL_21;
      }

      if (v27 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    v17 = 1;
    v18 = 1;
    if ((v57 & 1) == 0)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB818, &qword_1AE24CF08);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v53 = v19[2];
  v73[0] = v19 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v73[1] = v53;
  sub_1ADDF3CCC(sub_1ADF7B924, 0);
  return v19;
}

uint64_t sub_1ADF7B86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADF7B8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1ADF7B940(void *result, unint64_t a2)
{
  v3 = result;
  v4 = (a2 - result);
  if (a2 >= result)
  {
    if ((a2 - result) >= 0)
    {
LABEL_5:
      if (v4)
      {
        v5 = sub_1AE194254(v4, 0);
        if (sub_1ADF7BD20(v6, (v5 + 4), v4, v3, a2) == v4)
        {
          return v5;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if ((result - a2) >= 0)
    {
      v4 = (a2 - result);
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF7B9DC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1AE23D97C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1AE1943C8(v3, 0);
  sub_1ADF7E1A0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1ADF7BA70(uint64_t a1, uint64_t (*a2)(id *))
{
  type metadata accessor for Key(0);
  v5 = v4;
  v6 = sub_1ADF7F290(&qword_1EB5B8BE0, type metadata accessor for Key);
  v7 = MEMORY[0x1B26FBB90](0, v5, v6);
  v8 = 0;
  v16[1] = v7;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v11 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16[0] = *(*(a1 + 48) + ((v13 << 9) | (8 * v14)));
        v15 = v16[0];
        if (a2(v16))
        {
          sub_1ADEC0B88(v16, v15);

          v8 = v13;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v8 = v13;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v8;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1ADF7BBFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1ADDDF1A4();
  result = MEMORY[0x1B26FBB90](v2, &type metadata for CRKeyPath, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1ADDCC35C(v15[0], v15[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1ADDD86D8(*v12, v14);
    sub_1ADDE0110(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1ADF7BD20(unint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF7BDBC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7AFE0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B0, &unk_1AE242210);
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1ADF7DA14(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t CRValueStruct.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD00000000000001FLL;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
LABEL_7:
    v13 = v7 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v14 = v4;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  v6 = *(v5 + 16);
  v7 = "pos=";
  if ((~v6 & 0xF000000000000007) == 0 || ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v10 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  type metadata accessor for CRStructDecoder();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v9;
  v11[4] = v10;
  v12 = *(v9 + 16);

  if (v12)
  {
  }

  else
  {
    v11[3] = sub_1ADF7B940(0, *(v10 + 16));
  }

  sub_1ADF7F290(qword_1ED9692A0, type metadata accessor for CRStructDecoder);
  v16 = *(a3 + 16);
  sub_1AE23D2BC();
}

uint64_t CRValueStruct.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE71C08();
  if (!v3)
  {
    v7 = *(a3 + 16);
    v6 = *(a3 + 24);

    sub_1ADF9DBE0();
  }

  return result;
}

uint64_t sub_1ADF7C140()
{
  v2 = *(v0 + 16);
  v3 = type metadata accessor for CRStructEncoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  v4[3] = MEMORY[0x1E69E7CC0];
  v6 = v4 + 3;
  v4[4] = v5;
  v4[2] = v2;
  v33[3] = v3;
  v33[4] = sub_1ADF7F290(qword_1ED968040, type metadata accessor for CRStructEncoder);
  v33[0] = v4;
  sub_1AE23BDDC();
  sub_1ADF7F290(&qword_1EB5BB920, MEMORY[0x1E6968FB0]);

  sub_1AE23CBAC();
  if (v1)
  {

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_beginAccess();
    v8 = *v6;
    if (*(*v6 + 16))
    {
      v34 = v4 + 3;
      v9 = v4[4];

      v32 = sub_1AE03C634(v8, v9);
      sub_1ADF7BDBC(&v32);

      v10 = v32;
      v11 = v32[2];
      if (v11)
      {
        v32 = v5;
        sub_1ADE6F00C(0, v11, 0);
        v12 = v32;
        v13 = v32[2];
        v14 = 4;
        v15 = v11;
        do
        {
          v16 = v10[v14];
          v32 = v12;
          v17 = v12[3];
          if (v13 >= v17 >> 1)
          {
            sub_1ADE6F00C((v17 > 1), v13 + 1, 1);
            v12 = v32;
          }

          v12[2] = v13 + 1;
          v12[v13 + 4] = v16;
          v14 += 2;
          ++v13;
          --v15;
        }

        while (v15);
        v18 = *v34;
        *v34 = v12;

        v5 = MEMORY[0x1E69E7CC0];
        v32 = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v19 = 5;
        do
        {
          v20 = v10[v19];

          sub_1AE23DAEC();
          v21 = v32[2];
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v19 += 2;
          --v11;
        }

        while (v11);

        v22 = v32;
        v6 = v34;
      }

      else
      {
        v6 = v34;
        v24 = *v34;
        *v34 = v5;

        v22 = v5;
      }

      v25 = v4[4];
      v4[4] = v22;

      v8 = v4[3];
      v23 = *(v8 + 16);
    }

    else
    {
      v23 = 0;
    }

    v26 = sub_1ADF7B940(0, v23);
    v28 = sub_1ADE522B8(v8, v26, v27);

    if (v28)
    {
      v29 = *v6;
      *v6 = v5;
    }

    v30 = v4[3];
    v31 = v4[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v30, v31);
    swift_endAccess();
  }
}

uint64_t sub_1ADF7C4F0(void *a1)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8D8, &qword_1AE24D2F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - v5;
  v42 = v1;
  v7 = *(v1 + 16);
  type metadata accessor for CRStructEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = MEMORY[0x1E69E7CC0];
  v10 = v8 + 3;
  v8[4] = v9;
  v8[2] = v7;
  v45 = v8;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8F0, &unk_1AE24D300);
  v11 = v8;
  sub_1ADDCC7D4(&qword_1EB5BB8F8, &qword_1EB5BB8F0, &unk_1AE24D300);
  sub_1AE23DD6C();
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1ADF7EF7C(&qword_1EB5BB8E0, sub_1ADF7F000);
  v12 = v46;
  sub_1AE23DD5C();
  (*(v3 + 8))(v6, v2);

  if (!v12)
  {
    swift_beginAccess();
    v13 = *v10;
    v14 = v8 + 3;
    if (*(*v10 + 16))
    {
      v15 = v8[4];
      v16 = *v10;

      v44 = sub_1AE03C634(v13, v15);
      sub_1ADF7BDBC(&v44);
      v17 = MEMORY[0x1E69E7CC0];
      v46 = 0;

      v18 = v44;
      v19 = v44[2];
      if (v19)
      {
        v43 = v8;
        v44 = v17;
        v20 = v8 + 3;
        sub_1ADE6F00C(0, v19, 0);
        v21 = v44;
        v22 = v44[2];
        v23 = 4;
        v24 = v19;
        do
        {
          v25 = v18[v23];
          v44 = v21;
          v26 = v21[3];
          if (v22 >= v26 >> 1)
          {
            sub_1ADE6F00C((v26 > 1), v22 + 1, 1);
            v21 = v44;
          }

          v21[2] = v22 + 1;
          v21[v22 + 4] = v25;
          v23 += 2;
          ++v22;
          --v24;
        }

        while (v24);
        v27 = *v20;
        *v20 = v21;

        v17 = MEMORY[0x1E69E7CC0];
        v44 = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v28 = 5;
        do
        {
          v29 = v18[v28];

          sub_1AE23DAEC();
          v30 = v44[2];
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v28 += 2;
          --v19;
        }

        while (v19);

        v11 = v43;
        v31 = v44;
        v14 = v20;
      }

      else
      {
        v33 = *v10;
        *v10 = v17;

        v31 = v17;
      }

      v34 = v11[4];
      v11[4] = v31;

      v13 = v11[3];
      v32 = *(v13 + 16);
    }

    else
    {
      v32 = 0;
      v17 = MEMORY[0x1E69E7CC0];
    }

    v35 = sub_1ADF7B940(0, v32);
    v37 = sub_1ADE522B8(v13, v35, v36);

    if (v37)
    {
      v38 = *v14;
      *v14 = v17;
    }

    v39 = v11[3];
    v40 = v11[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v39, v40);
    swift_endAccess();
  }
}