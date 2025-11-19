void *sub_1CF7D06E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B38, &qword_1CFA079D0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v31 = v19[2];
        v32 = v22;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v29;
        v25 = v30;
        v26 = v32;
        v23[2] = v31;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        v27 = v18;
        result = sub_1CEFCCBDC(&v29, &v28, &unk_1EC4BF250, &unk_1CFA01B50);
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

id sub_1CF7D08E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

void *sub_1CF7D0A44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE8, &qword_1CFA07C78);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
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

void *sub_1CF7D0C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

void *sub_1CF7D0D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4980, &qword_1CFA17208);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void *sub_1CF7D0F08(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1CF1A91AC(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1CF7D10C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

id sub_1CF7D127C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
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

void *sub_1CF7D13CC()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4960, &qword_1CFA171C8);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
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
    v33 = v5;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 16 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v34;
        v28 = *(v35 + 72) * v21;
        sub_1CEFE4F24(v23 + v28, v34, type metadata accessor for VFSItem);
        v29 = v36;
        v30 = *(v36 + 48) + v22;
        *v30 = v25;
        v5 = v33;
        *(v30 + 8) = v26;
        result = sub_1CEFE4BF8(v27, *(v29 + 56) + v28, type metadata accessor for VFSItem);
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

        v1 = v32;
        v7 = v36;
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

void *sub_1CF7D1648(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = *(*(v4 + 48) + v19);
        sub_1CEFD1104(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        result = sub_1CEFE9EB8(v21, (*(v6 + 56) + 32 * v19));
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

void *sub_1CF7D17F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_1CF7D192C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BA0, &qword_1CFA07A48);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = *(v20 + 27);
        v22 = v20[1];
        v31 = *v20;
        v32[0] = v22;
        *(v32 + 11) = v21;
        v23 = 8 * v17;
        v24 = (v19 + 8 * v17);
        v26 = *v24;
        v25 = v24[1];
        v27 = v24[2];
        memmove((*(v4 + 48) + v18), v20, 0x2BuLL);
        v28 = (*(v4 + 56) + v23);
        *v28 = v26;
        v28[1] = v25;
        v28[2] = v27;
        sub_1CEFCCBDC(&v31, v30, &qword_1EC4BE1A0, &unk_1CFA17130);
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

        v1 = v29;
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

void *sub_1CF7D1B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 9);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 8);
        *v24 = *v18;
        *(v24 + 8) = v25;
        *(v24 + 9) = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        sub_1CEFD0988(v19, v25, v20);
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

void *sub_1CF7D1C90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49C0, &qword_1CFA17268);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
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

id sub_1CF7D1E04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C00, &unk_1CFA171F0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

id sub_1CF7D1F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF0, &qword_1CFA07A98);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
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

id sub_1CF7D20D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF8, &unk_1CFA07AA0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

        v24 = v18;
        v25 = v20;
        result = v21;
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

void *sub_1CF7D2258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB8, &qword_1CFA07A60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void *sub_1CF7D23B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C30, &qword_1CFA17200);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
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

void *sub_1CF7D2514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C10, &qword_1CFA07AB8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    for (i = (v9 + 63) >> 6; v11; *(v23 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v2 + 56) + v17;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = *(v4 + 56) + v17;
      *v23 = v21;
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

id sub_1CF7D26A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;

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

void *sub_1CF7D2808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C60, &qword_1CFA07AF8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_1CF7D2980()
{
  v1 = v0;
  v32 = sub_1CF9E5A58();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4958, &qword_1CFA171C0);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_1CF7D2C14(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v41 = a1;
  v42 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = sub_1CF9E7BC8();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v7;
    v38 = (v11 + 64);
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, v38, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v11 + 48) + 16 * v26;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v39;
        v32 = *(v40 + 72) * v26;
        v34 = v41;
        v33 = v42;
        sub_1CEFCCBDC(*(v11 + 56) + v32, v39, v41, v42);
        v35 = v43;
        v36 = *(v43 + 48) + v27;
        *v36 = v29;
        *(v36 + 8) = v30;
        result = sub_1CEFE55D0(v31, *(v35 + 56) + v32, v34, v33);
        v21 = v44;
      }

      while (v44);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v37;
        v13 = v43;
        goto LABEL_21;
      }

      v25 = *(v38 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v44 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

id sub_1CF7D2E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD8, &qword_1CFA07B80);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        result = v20;
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

char *sub_1CF7D2FD0()
{
  v1 = v0;
  v32 = sub_1CF9E5CF8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE0, &qword_1CFA07C70);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 4 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 4 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_1CF7D3240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD0, &qword_1CFA07C60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

void *sub_1CF7D338C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B88, &unk_1CFA07A20);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1CF7D34F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B90, &unk_1CFA17110);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

id sub_1CF7D3654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B80, &qword_1CFA07A18);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_1CF7D37B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC8, &unk_1CFA07B60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_1CF7D3910()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        sub_1CEFF6FC0(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1CEFF701C(v19, *(v4 + 56) + 16 * v17);
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

id sub_1CF7D3AB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_1CEFD1104(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_1CEFE9EB8(v21, (*(v6 + 56) + 32 * v19));
        result = v20;
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

id sub_1CF7D3C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B70, &unk_1CFA17100);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_1CF7D3D88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D78, &qword_1CFA07C08);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1CEFCCBDC(*(v5 + 48) + v23, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v24 = *(*(v5 + 56) + 8 * v21);
        v25 = v5;
        v26 = v31;
        sub_1CEFE55D0(v22, *(v31 + 48) + v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v27 = *(v26 + 56);
        v5 = v25;
        *(v27 + 8 * v21) = v24;
        result = v24;
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

        v1 = v28;
        v7 = v31;
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

id sub_1CF7D3FDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D60, &qword_1CFA07BF0);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1CEFCCBDC(*(v5 + 48) + v23, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v24 = *(*(v5 + 56) + 8 * v21);
        v25 = v5;
        v26 = v31;
        sub_1CEFE55D0(v22, *(v31 + 48) + v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v27 = *(v26 + 56);
        v5 = v25;
        *(v27 + 8 * v21) = v24;
        result = v24;
      }

      while (v16);
    }

    v19 = v11;
    v7 = v31;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v28;
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

void *sub_1CF7D4234()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C40, &unk_1CFA07AD8);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1CEFCCBDC(*(v5 + 48) + v23, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v24 = *(*(v5 + 56) + 8 * v21);
        v25 = v5;
        v26 = v31;
        sub_1CEFE55D0(v22, *(v31 + 48) + v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v27 = *(v26 + 56);
        v5 = v25;
        *(v27 + 8 * v21) = v24;
      }

      while (v16);
    }

    v19 = v11;
    v7 = v31;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v28;
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

id sub_1CF7D448C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D68, &qword_1CFA07BF8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1CF7D45F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = 40 * v17;
        sub_1CF0272BC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1CEFD1104(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1CEFE9EB8(v22, (*(v4 + 56) + v17));
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

void *sub_1CF7D4794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v32 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C70, &unk_1CFA17170);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    v34 = v5;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 16 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v35;
        v28 = *(v36 + 72) * v21;
        sub_1CEFCCBDC(v23 + v28, v35, &unk_1EC4C04C0, &qword_1CFA07B10);
        v29 = v37;
        v30 = *(v37 + 48) + v22;
        *v30 = v25;
        *(v30 + 8) = v26;
        v31 = *(v29 + 56) + v28;
        v5 = v34;
        result = sub_1CEFE55D0(v27, v31, &unk_1EC4C04C0, &qword_1CFA07B10);
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

        v1 = v33;
        v7 = v37;
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

void *sub_1CF7D49F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0BC8, &unk_1CFA07A70);
  v5 = *v0;
  v6 = sub_1CF9E7BC8();
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
        sub_1CEFCCBDC(*(v5 + 56) + v23, v28, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v24 = v30;
        *(*(v30 + 48) + 8 * v20) = v21;
        result = sub_1CEFE55D0(v22, *(v24 + 56) + v23, &unk_1EC4C04B0, &unk_1CF9FCB20);
      }

      while (v15);
    }

    v18 = v10;
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
        v7 = v30;
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

void *sub_1CF7D4C54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
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
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        LOBYTE(v20) = *(v20 + 8);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(*(v6 + 56) + 8 * v19) = v22;
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

id sub_1CF7D4DB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB0, &unk_1CFA07C40);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v21;
        *(v23 + 16) = v22;
        *(v23 + 24) = v19;
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

void *sub_1CF7D4F34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB8, &unk_1CFA17190);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    for (i = (v9 + 63) >> 6; v11; *(v25 + 24) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 32 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      result = *(v21 + 16);
      LOBYTE(v21) = *(v21 + 24);
      v24 = *(v4 + 48) + v17;
      *v24 = v19;
      *(v24 + 8) = v18;
      v25 = *(v4 + 56) + v20;
      *v25 = v22;
      *(v25 + 8) = v23;
      *(v25 + 16) = result;
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

uint64_t sub_1CF7D50B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF7D5160()
{
  result = qword_1EC4C4908;
  if (!qword_1EC4C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4908);
  }

  return result;
}

unint64_t sub_1CF7D51B8()
{
  result = qword_1EDEA3570;
  if (!qword_1EDEA3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3570);
  }

  return result;
}

unint64_t sub_1CF7D5210()
{
  result = qword_1EDEA3578;
  if (!qword_1EDEA3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3578);
  }

  return result;
}

uint64_t sub_1CF7D5264(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CF7D5474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1CF7D5670(a1, a2, a3, a4, &unk_1F4C17758, sub_1CEFE7610, &block_descriptor_14_0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1CF7D55FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1CF7D5670(a1, a2, a3, a4, &unk_1F4C17708, sub_1CEFE7610, &block_descriptor_7_0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1CF7D5670(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  aBlock[4] = a6;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = a7;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [a3 fetchSwift:v13 error:aBlock];
  _Block_release(v13);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v14)
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

id sub_1CF7D5820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1CF9E5928();
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v18[4] = a7;
    v18[5] = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1CF7D5540;
    v18[3] = a8;
    v15 = _Block_copy(v18);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a4 backupToURL:v13 progress:v15];
  _Block_release(v15);

  return v16;
}

uint64_t sub_1CF7D5920(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  aBlock[4] = sub_1CEFE75B8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_44;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v8 = [a3 executeSwift:v7 error:aBlock];
  _Block_release(v7);
  v9 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v8)
  {
    sub_1CF9E57F8();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7D5B70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1CF7D5BAC(uint64_t *a1, int a2)
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

uint64_t sub_1CF7D5BF4(uint64_t result, int a2, int a3)
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

unint64_t sub_1CF7D5C58()
{
  result = qword_1EC4C49C8;
  if (!qword_1EC4C49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C49C8);
  }

  return result;
}

uint64_t sub_1CF7D5D90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1CF067780(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_1CF7D5E20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a2;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for ItemMetadata();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FPFSSyncEngine();
  v23 = v73;
  sub_1CF7D645C(a3, a4, v22, a5, a6);
  if (v23)
  {
    return;
  }

  v59 = v13;
  v60 = v14;
  v62 = v22;
  v63 = v17;
  v61 = a3;
  v73 = 0;
  v24 = v66;
  sub_1CEFF54BC(v21);
  v25 = *v21;
  sub_1CF007D18(v21, type metadata accessor for ItemMetadata);
  v26 = v24;
  if (v25 != 1)
  {
    goto LABEL_14;
  }

  v27 = [v24 containerDisplayName];
  if (v27)
  {
    v28 = v27;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  }

  v30 = v62;
  v29 = v63;
  v31 = sub_1CF9E69D8();

  v26 = v66;
  if (v31 < 1)
  {
LABEL_14:
    v44 = v26;
    return;
  }

  v32 = [v66 filename];
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  v71 = v33;
  v72 = v35;
  v69 = 58;
  v70 = 0xE100000000000000;
  v67 = 47;
  v68 = 0xE100000000000000;
  sub_1CEFE4E68();
  v36 = sub_1CF9E7668();
  v38 = v37;

  if (v36 == 0x746E656D75636F44 && v38 == 0xE900000000000073)
  {

    v39 = v61;
    v41 = v64;
    v40 = v65;
  }

  else
  {
    v42 = sub_1CF9E8048();

    v39 = v61;
    v41 = v64;
    v40 = v65;
    if ((v42 & 1) == 0)
    {
LABEL_13:
      v26 = v66;
      goto LABEL_14;
    }
  }

  v43 = v59;
  sub_1CEFCCBDC(v40, v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v41 + 48))(v43, 1, v60) == 1)
  {
    sub_1CEFCCC44(v43, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_13;
  }

  sub_1CEFE55D0(v43, v29, &unk_1EC4BE360, &qword_1CF9FE650);
  v45 = *(*(*(v39 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v46 = *(swift_dynamicCastClassUnconditional() + 280);
  v47 = [v46 pathComponents];
  v48 = sub_1CF9E6D48();

  v49 = *(v48 + 16);

  v50 = v46;
  v51 = v49 >= 2;
  v52 = v66;
  v53 = a6;
  if (v51)
  {
    v50 = [v46 stringByDeletingLastPathComponent];
    if (!v50)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = sub_1CF9E6888();
      v53 = a6;
    }
  }

  v54 = sub_1CF7D9A78();
  v55 = sub_1CF7D9AD0();
  v56 = v73;
  sub_1CF7D6FCC(v29, v61, v50, v52, a4, v30, v60, a5, v54, &off_1F4BF8588, v55, v53);
  v58 = v57;
  sub_1CEFCCC44(v29, &unk_1EC4BE360, &qword_1CF9FE650);

  if (!v56 && !v58)
  {
    v73 = 0;
    v26 = v52;
    goto LABEL_14;
  }
}

uint64_t sub_1CF7D633C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  v20 = *(a1 + 40);
  v16 = a1[6];
  v21 = v14;
  v22 = v16;
  v17 = type metadata accessor for FPFSSyncEngine();
  result = sub_1CF7D645C(a2, a4, v17, a5, a6);
  if (!v6)
  {
    v23 = v12;
    v24 = v11;
    v25 = v13 & 1;
    v26 = v21;
    v27 = v15;
    v28 = v20 & 1;
    v29 = v22;
    MEMORY[0x1EEE9AC00](result);
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = a2;
    v19[5] = a4;
    v19[6] = v30;
    return sub_1CF7F0654(sub_1CF7D9B34, v19);
  }

  return result;
}

uint64_t sub_1CF7D645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(a5 + 8))(a4, a5, v11);
  v15 = *(a1 + 16);
  if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_7;
    }

    v16 = &qword_1EC4EBCD0;
  }

  else
  {
    v16 = &qword_1EC4EBCD8;
  }

  v17 = v15 + *v16;
  v18 = *v17;
  if (*v17)
  {
    v19 = *(v17 + 8);
    sub_1CF1FD6B8(*v17, v19);
    v20 = v19;
    sub_1CF1FD6F8(v18, v19);
    goto LABEL_8;
  }

LABEL_7:
  v20 = *(v15 + 64);
LABEL_8:
  *v13 = v20;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8);
  v21 = sub_1CF9E64D8();
  result = (*(v9 + 8))(v13, v8);
  if ((v21 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1CF7D6604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v117 = a1;
  v107 = a7;
  v108 = a8;
  v114 = a2;
  v121 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v109 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v19 = *(v18 - 8);
  v112 = v18;
  v113 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v98 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v98 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v116 = *(v31 - 8);
  v32 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  v115 = a3;
  v38 = v118;
  sub_1CF7D645C(a3, a4, a5, a6, v121);
  if (!v38)
  {
    v105 = v30;
    v99 = v34;
    v103 = a4;
    v104 = v31;
    v100 = v27;
    v101 = v37;
    v39 = a5;
    v102 = a6;
    v118 = 0;
    v40 = v117;
    v41 = [v117 filename];
    v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = v43;

    v45 = [v40 providerID];
    if (![v45 fp_isiCloudDriveIdentifier])
    {

      return;
    }

    if (v42 == 0x746E656D75636F44 && v44 == 0xE900000000000073)
    {

      v46 = v121;
      v47 = v116;
      v48 = v105;
    }

    else
    {
      v49 = sub_1CF9E8048();

      v46 = v121;
      v47 = v116;
      v48 = v105;
      if ((v49 & 1) == 0)
      {
        return;
      }
    }

    v50 = v114;
    v51 = v115[2];
    sub_1CEFCCBDC(v114, v48, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v52 = *(v47 + 48);
    if (v52(v48, 1, v104) == 1)
    {
      sub_1CEFCCC44(v48, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v53 = type metadata accessor for PendingIndexingItemRow();
      v54 = v111;
      sub_1CEFCCBDC(v50 + *(v53 + 20), v111, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v55 = v113 + 48;
      v56 = *(v113 + 48);
      if (v56(v54, 1, v112) == 1)
      {
        sub_1CEFCCC44(v54, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      v113 = v55;
      v64 = v110;
      sub_1CEFE55D0(v54, v110, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v65 = *(v51 + 40);
      v119 = *(v64 + 8);
      v66 = *(*v65 + 240);
      v67 = v119;
      v68 = v109;
      v69 = v118;
      v66(&v119, 1, v103, v102, v46);

      if (v69)
      {
        sub_1CEFCCC44(v64, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        return;
      }

      if (v56(v68, 1, v112) == 1)
      {
        sub_1CEFCCC44(v64, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        sub_1CEFCCC44(v68, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      v79 = sub_1CEFE55D0(v68, v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v80 = *(*v115 + 192);
      v119 = v80(v79);
      v81 = v108;
      v82 = *(v39 + 104);
      v83 = (*(v108 + 16))(v82, v108);

      v119 = v80(v84);
      v85 = (*(v81 + 8))(v82, v81);

      v86 = v106;
      v75 = sub_1CF2CEBFC(v106, v85, v83, 1);

      sub_1CEFCCC44(v86, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v76 = v110;
      v77 = &unk_1EC4BFBD0;
      v78 = &unk_1CF9FCBC0;
    }

    else
    {
      v57 = v101;
      sub_1CEFE55D0(v48, v101, &unk_1EC4BE360, &qword_1CF9FE650);
      v58 = *(v51 + 32);
      v59 = *(v57 + 24);
      v119 = *(v57 + 16);
      v120 = v59;
      v60 = v46;
      v61 = v100;
      v62 = v102;
      v63 = v118;
      (*(*v58 + 240))(&v119, 1, v103, v102, v60);
      if (v63)
      {
        sub_1CEFCCC44(v57, &unk_1EC4BE360, &qword_1CF9FE650);
        return;
      }

      v70 = v104;
      if (v52(v61, 1, v104) == 1)
      {
        sub_1CEFCCC44(v57, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v61, &qword_1EC4C1B40, &unk_1CF9FCB70);
        return;
      }

      v71 = v62;
      v72 = v99;
      sub_1CEFE55D0(v61, v99, &unk_1EC4BE360, &qword_1CF9FE650);
      v73 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v74 = sub_1CF7D9AD0();
      v75 = sub_1CF76BB00(v72, 1, 0, v73, v103, v70, v71, v107, v108, v74, v121);

      sub_1CEFCCC44(v72, &unk_1EC4BE360, &qword_1CF9FE650);
      v76 = v57;
      v77 = &unk_1EC4BE360;
      v78 = &qword_1CF9FE650;
    }

    sub_1CEFCCC44(v76, v77, v78);
    v87 = v75;
    v88 = sub_1CF0689E4();

    v89 = *MEMORY[0x1E6967258];
    v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v92 = v91;
    if (v90 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v92 == v93)
    {
    }

    else
    {
      v94 = sub_1CF9E8048();

      if ((v94 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_1CF763B18(v87, 1, v103, v102, v107, v108, v121);
    v95 = [objc_opt_self() appLibraryFromContainerItem:v87 documentsItem:v117];
    if (v95)
    {
      v96 = v95;
      v97 = [v95 isValidAppLibrary];

      if ((v97 & 1) == 0)
      {
      }

      return;
    }

LABEL_29:
  }
}

void sub_1CF7D6FCC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v73 = a3;
  v74 = a7;
  v72 = a4;
  v75 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v62 - v26;
  v28 = v80;
  sub_1CF7D645C(a2, a5, a6, a8, a12);
  if (!v28)
  {
    v67 = v19;
    v68 = a12;
    v65 = v20;
    v66 = v23;
    v69 = a5;
    v70 = a2;
    v80 = 0;
    v29 = v74;
    v30 = v75;
    sub_1CF937E0C(v74, a11, v27);
    v32 = *(v27 + 2);
    v31 = *(v27 + 3);

    sub_1CEFCCC44(v27, &unk_1EC4BFD90, &unk_1CFA134F0);
    if ([v73 fp_isiCloudDriveIdentifier])
    {
      if (v32 == 0x746E656D75636F44 && v31 == 0xE900000000000073)
      {

        v35 = v70;
      }

      else
      {
        v34 = sub_1CF9E8048();

        v35 = v70;
        if ((v34 & 1) == 0)
        {
          return;
        }
      }

      v36 = v72;
      v63 = a9;
      v64 = a10;
      if (v72)
      {
        v73 = v72;
        v38 = v68;
        v37 = v69;
      }

      else
      {
        v39 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
        v38 = v68;
        v40 = v30;
        v37 = v69;
        v73 = sub_1CF76BB00(v40, 1, 0, v39, v69, v29, a8, a9, a10, a11, v68);

        v36 = v72;
      }

      v41 = *(*(v35 + 16) + 32);
      v42 = *(a11 + 72);
      v43 = v36;

      v42(&v78, v29, a11);
      v76 = v78;
      v77 = v79;
      v44 = v67;
      v45 = v80;
      (*(*v41 + 240))(&v76, 1, v37, a8, v38);
      if (v45)
      {

        return;
      }

      v46 = v65;
      if ((*(v71 + 48))(v44, 1, v65) == 1)
      {

        sub_1CEFCCC44(v44, &qword_1EC4C1B40, &unk_1CF9FCB70);
        return;
      }

      v47 = v66;
      sub_1CEFE55D0(v44, v66, &unk_1EC4BE360, &qword_1CF9FE650);
      v48 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v49 = sub_1CF7D9AD0();
      v50 = sub_1CF76BB00(v47, 1, 0, v48, v37, v46, a8, v63, v64, v49, v38);

      v51 = sub_1CF0689E4();
      v52 = *MEMORY[0x1E6967258];
      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = v54;
      if (v53 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v55 == v56)
      {
      }

      else
      {
        v57 = sub_1CF9E8048();

        if ((v57 & 1) == 0)
        {
          sub_1CEFCCC44(v66, &unk_1EC4BE360, &qword_1CF9FE650);

          return;
        }
      }

      sub_1CF763B18(v50, 1, v69, a8, v63, v64, v68);
      v58 = v73;
      v59 = [objc_opt_self() appLibraryFromContainerItem:v50 documentsItem:v73];
      if (v59)
      {
        v60 = v59;
        v61 = [v59 isValidAppLibrary];

        sub_1CEFCCC44(v66, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v61 & 1) == 0)
        {
        }
      }

      else
      {
        sub_1CEFCCC44(v66, &unk_1EC4BE360, &qword_1CF9FE650);
      }
    }

    else
    {
    }
  }
}

void *sub_1CF7D7600(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, id a7)
{
  v178 = a7;
  v179 = a6;
  v180 = a5;
  v157 = a4;
  v176 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v166 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v173 = &v144 - v13;
  v164 = sub_1CF9E6068();
  v163 = *(v164 - 8);
  v14 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v158 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v144 - v20;
  v159 = type metadata accessor for Signpost(0);
  v160 = *(v159 - 8);
  v21 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v165 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v161 = &v144 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v171 = &v144 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v167 = &v144 - v28;
  v169 = sub_1CF9E63D8();
  v168 = *(v169 - 8);
  v29 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v154 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v155 = &v144 - v32;
  v175 = sub_1CF9E6448();
  v172 = *(v175 - 8);
  v33 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v156 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v174 = &v144 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v144 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v144 - v43;
  v45 = *a3;
  v46 = *(a3 + 8);
  v47 = type metadata accessor for FPFSSyncEngine();
  v48 = v177;
  sub_1CF7D645C(a2, v180, v47, v179, v178);
  if (!v48)
  {
    v148 = v41;
    v152 = v39;
    v149 = v40;
    v147 = v44;
    v153 = v46;
    v177 = v45;
    v150 = v33;
    v151 = v21;
    v50 = v176;
    if ((sub_1CEFF96D0(v176) & 1) == 0)
    {
      return 0;
    }

    v51 = *(a2 + 16);
    v52 = *(v51 + 32);
    v191 = v153;
    *&aBlock = 0x746E656D75636F44;
    *(&aBlock + 1) = 0xE900000000000073;
    v187 = 0xE100000000000000;
    v188 = 58;
    v189 = 0xE100000000000000;
    v190 = v177;
    v186 = 47;
    sub_1CEFE4E68();

    *&aBlock = sub_1CF9E7668();
    *(&aBlock + 1) = v53;
    v188 = 0;
    LOBYTE(v189) = -1;
    v54 = v179;
    v55 = v178;
    v56 = (*(*v52 + 256))(&v190, &aBlock, &v188, v180, v179, v178);

    v146 = 0;
    if (*(v56 + 16))
    {
      v57 = *(v56 + 32);
      v58 = *(v56 + 40);

      v45 = *(v51 + 32);
      *&aBlock = v57;
      BYTE8(aBlock) = v58;
      v59 = *(*v45 + 240);

      v60 = v152;
      v61 = v146;
      v59(&aBlock, 1, v180, v54, v55);

      if (v61)
      {
        return v45;
      }

      v146 = 0;
      v62 = v149;
      v63 = (*(v148 + 48))(v60, 1, v149) == 1;
      v64 = v60;
      v65 = v167;
      if (!v63)
      {
        v135 = v147;
        sub_1CEFE55D0(v64, v147, &unk_1EC4BE360, &qword_1CF9FE650);
        v136 = v55;
        v137 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
        v138 = v62;
        v139 = sub_1CF7D9A78();
        v140 = sub_1CF7D9AD0();
        v141 = sub_1CF76BB00(v135, 0, 0, v137, v180, v138, v54, v139, &off_1F4BF8588, v140, v136);

        v142 = [objc_opt_self() appLibraryFromContainerItem:v50 documentsItem:v141];
        v45 = v142;
        if (!v142)
        {
          sub_1CEFCCC44(v135, &unk_1EC4BE360, &qword_1CF9FE650);

          return v45;
        }

        v143 = [v142 isValidAppLibrary];

        sub_1CEFCCC44(v135, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v143)
        {
          return v45;
        }

        return 0;
      }

      v66 = v51;
      sub_1CEFCCC44(v64, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v66 = v51;

      v65 = v167;
    }

    qos_class_self();
    sub_1CF9E63B8();
    v67 = v168;
    v68 = *(v168 + 48);
    v69 = v169;
    v70 = v68(v65, 1, v169);
    v71 = v177;
    v72 = v153;
    if (v70 == 1)
    {
      (*(v67 + 104))(v155, *MEMORY[0x1E69E7FA0], v69);
      if (v68(v65, 1, v69) != 1)
      {
        sub_1CEFCCC44(v65, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v67 + 32))(v155, v65, v69);
    }

    sub_1CF9E6428();
    v73 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v73 setCancellable_];
    v74 = swift_allocObject();
    v75 = v66;
    swift_weakInit();
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    *(v77 + 24) = v76;
    *(v77 + 32) = v71;
    *(v77 + 40) = v72;
    v184 = sub_1CF481424;
    v185 = v77;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v182 = sub_1CEFCA444;
    v183 = &block_descriptor_30_1;
    v78 = v71;
    v79 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF481424);

    [v73 setCancellationHandler_];
    _Block_release(v79);

    v80 = v172;
    v81 = v156;
    v82 = v175;
    (*(v172 + 16))(v156, v174, v175);
    v83 = (*(v80 + 80) + 80) & ~*(v80 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = nullsub_1;
    *(v84 + 24) = 0;
    *(v84 + 32) = v75;
    *(v84 + 40) = v78;
    *(v84 + 48) = v153;
    v85 = v157;
    *(v84 + 56) = v157;
    *(v84 + 64) = 0;
    *(v84 + 72) = v73;
    v86 = *(v80 + 32);
    v180 = v84;
    v86(v84 + v83, v81, v82);
    v87 = *(v75 + qword_1EDEBBC38);
    v145 = v75;

    sub_1CEFD09A0(v85);
    v179 = v73;
    v178 = fpfs_adopt_log();
    v88 = v164;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v89 = qword_1EDEBBE40;
    v90 = v163;
    v91 = v170;
    (*(v163 + 56))(v170, 1, 1, v88);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v92 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v92);

    v176 = *(&aBlock + 1);
    v177 = aBlock;
    v93 = v158;
    sub_1CEFCCBDC(v91, v158, &unk_1EC4BED20, &unk_1CFA00700);
    v94 = *(v90 + 48);
    v95 = v94(v93, 1, v88);
    v96 = v171;
    v97 = v162;
    v98 = v159;
    if (v95 == 1)
    {
      v99 = v89;
      sub_1CF9E6048();
      if (v94(v93, 1, v88) != 1)
      {
        sub_1CEFCCC44(v93, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v90 + 32))(v162, v93, v88);
    }

    (*(v90 + 16))(v96, v97, v88);
    *(v96 + *(v98 + 20)) = v89;
    v100 = v96 + *(v98 + 24);
    *v100 = "DB queue wait";
    *(v100 + 8) = 13;
    *(v100 + 16) = 2;
    v101 = v89;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v102 = v97;
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1CF9FA450;
    *(v103 + 56) = MEMORY[0x1E69E6158];
    *(v103 + 64) = sub_1CEFD51C4();
    v104 = v176;
    *(v103 + 32) = v177;
    *(v103 + 40) = v104;
    sub_1CF9E6028();

    (*(v90 + 8))(v102, v88);
    sub_1CEFCCC44(v170, &unk_1EC4BED20, &unk_1CFA00700);
    v170 = *(v145 + 168);
    v177 = *(v145 + 64);
    (*(v172 + 56))(v173, 1, 1, v175);
    v105 = v161;
    sub_1CF00167C(v96, v161, type metadata accessor for Signpost);
    v106 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v107 = (v151 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    sub_1CF042EE8(v105, &v108[v106]);
    v109 = &v108[v107];
    v176 = nullsub_1;
    *v109 = nullsub_1;
    *(v109 + 1) = 0;
    v110 = v165;
    sub_1CF00167C(v96, v165, type metadata accessor for Signpost);
    v111 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v112 + 25) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v113 + 23) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    sub_1CF042EE8(v110, v115 + v106);
    v116 = (v115 + v107);
    *v116 = sub_1CF045408;
    v116[1] = 0;
    *(v115 + v111) = v145;
    v117 = v115 + v112;
    *v117 = "materialize(_:request:options:qos:completion:)";
    *(v117 + 8) = 46;
    *(v117 + 16) = 2;
    v118 = (v115 + v113);
    v119 = v172;
    v120 = v175;
    *v118 = v176;
    v118[1] = 0;
    v121 = (v115 + v114);
    v122 = v180;
    *v121 = sub_1CF481430;
    v121[1] = v122;
    v123 = swift_allocObject();
    v123[2] = sub_1CF55301C;
    v123[3] = v108;
    v124 = v170;
    v123[4] = v170;

    v176 = v108;

    v125 = fpfs_current_log();
    v170 = *(v124 + 2);
    v126 = v166;
    sub_1CEFCCBDC(v173, v166, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v119 + 48))(v126, 1, v120) == 1)
    {
      sub_1CEFCCC44(v126, &unk_1EC4BE370, qword_1CFA01B30);
      v127 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v128 = v154;
      sub_1CF9E6438();
      (*(v119 + 8))(v126, v120);
      v127 = sub_1CF9E63C8();
      (*(v168 + 8))(v128, v169);
    }

    v129 = swift_allocObject();
    v129[2] = v125;
    v129[3] = sub_1CF48160C;
    v129[4] = v115;
    v184 = sub_1CEFCA438;
    v185 = v129;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v182 = sub_1CEFCA444;
    v183 = &block_descriptor_45;
    v130 = _Block_copy(&aBlock);
    v131 = v125;

    v184 = sub_1CF2AF9E8;
    v185 = v123;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v182 = sub_1CEFCA444;
    v183 = &block_descriptor_27_2;
    v132 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v170, v177, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v127, v130, v132);
    _Block_release(v132);
    _Block_release(v130);

    sub_1CEFCCC44(v173, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007D18(v171, type metadata accessor for Signpost);
    v133 = v178;
    v134 = fpfs_adopt_log();

    (*(v119 + 8))(v174, v175);
    return 0;
  }

  return v45;
}

void sub_1CF7D89E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v57 = a6;
  v58 = a3;
  v59 = a5;
  v54 = a4;
  v55 = a7;
  v56 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51[-v20];
  sub_1CEFCCBDC(a1, &v51[-v20], &qword_1EC4C48B8, &unk_1CFA180E0);
  v53 = *v21;
  v52 = v21[8];
  sub_1CEFCCC44(&v21[*(v18 + 56)], &unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFCCBDC(a1, v21, &qword_1EC4C48B8, &unk_1CFA180E0);
  v22 = *(v18 + 56);
  v23 = v13;
  sub_1CEFE55D0(&v21[v22], v16, &unk_1EC4BE360, &qword_1CF9FE650);
  v24 = *(v16 + 2);
  LOBYTE(a1) = v16[24];
  v26 = *(v16 + 16);
  v25 = *(v16 + 17);
  sub_1CF00167C(&v16[*(v23 + 48)], &v12[*(v9 + 48)], type metadata accessor for ItemMetadata);
  *v12 = v24;
  v12[8] = a1;
  *(v12 + 2) = v26;
  *(v12 + 3) = v25;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(v12, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (v26 == 0x746E656D75636F44 && v25 == 0xE900000000000073)
  {
  }

  else
  {
    v28 = sub_1CF9E8048();

    if ((v28 & 1) == 0)
    {
      v29 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v30 = sub_1CF7D9A78();
      v31 = sub_1CF7D9AD0();
      v32 = v57;
      v34 = v58;
      v33 = v59;
      v35 = v56;
      v36 = sub_1CF76BB00(v16, 1, 0, v29, v58, v23, v59, v30, &off_1F4BF8588, v31, v57);

      v60 = v53;
      v61 = v52;
      v37 = v62;
      v38 = sub_1CF7D7600(v36, v35, &v60, v54, v34, v33, v32);
      sub_1CEFCCC44(v16, &unk_1EC4BE360, &qword_1CF9FE650);

      if (v37)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  v39 = v56;
  v40 = *(*(*(v56 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v41 = *(swift_dynamicCastClassUnconditional() + 280);
  v42 = [v41 pathComponents];
  v43 = sub_1CF9E6D48();

  v44 = *(v43 + 16);

  v45 = v41;
  if (v44 >= 2)
  {
    v45 = [v41 stringByDeletingLastPathComponent];
    if (!v45)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = sub_1CF9E6888();
    }
  }

  v46 = type metadata accessor for FPFSSyncEngine();
  v47 = sub_1CF7D9A78();
  v48 = sub_1CF7D9AD0();
  v49 = v62;
  sub_1CF7D6FCC(v16, v39, v45, 0, v58, v46, v23, v59, v47, &off_1F4BF8588, v48, v57);
  v38 = v50;
  sub_1CEFCCC44(v16, &unk_1EC4BE360, &qword_1CF9FE650);

  if (!v49)
  {
LABEL_14:
    *v55 = v38;
  }
}

uint64_t sub_1CF7D8E9C(void *a1, char a2, void *a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (a2)
  {
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = a3;
    sub_1CF0BA8A4(a1);
    sub_1CEFD09A0(a4);
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    sub_1CF2F6594(a1, 1);
    sub_1CEFD0A98(a4);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = a5;
      v24 = v11;
      v25 = v23;
      v26 = swift_slowAlloc();
      v50 = v10;
      v27 = v26;
      v52 = v26;
      *v22 = 138412802;
      *(v22 + 4) = v19;
      *v25 = v19;
      *(v22 + 12) = 2112;
      v28 = v19;
      sub_1CF0BA8A4(a1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      v25[1] = v29;
      *(v22 + 22) = 2082;
      v30 = sub_1CEFD11AC(a4);
      v32 = sub_1CEFD0DF0(v30, v31, &v52);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "[patchAppLibrary] Error while trying to find the container for: %@, error: %@ (request: %{public}s)", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);

      (*(v24 + 8))(v17, v50);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v52 = a1;
    v42 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
    return sub_1CF9E6ED8();
  }

  else
  {
    v33 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0BA8A4(a1);
    sub_1CEFD09A0(a4);
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E7298();
    sub_1CF2F6594(a1, 0);
    sub_1CEFD0A98(a4);
    if (os_log_type_enabled(v34, v35))
    {
      v49 = v11;
      v50 = v10;
      v51 = a5;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136446466;
      if (a1)
      {
        v38 = [a1 description];
        v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v41 = v40;
      }

      else
      {
        v41 = 0xE500000000000000;
        v39 = 0x3E6C696E3CLL;
      }

      v44 = sub_1CEFD0DF0(v39, v41, &v52);

      *(v36 + 4) = v44;
      *(v36 + 12) = 2082;
      v45 = sub_1CEFD11AC(a4);
      v47 = sub_1CEFD0DF0(v45, v46, &v52);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "[pathAppLibrary] Found possible container %{public}s (request: %{public}s)", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);

      (*(v49 + 8))(v14, v50);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v52 = a1;
    v48 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
    return sub_1CF9E6EE8();
  }
}

void sub_1CF7D9384(unint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1CF9E7818();
    v6 = v5 - 3;
    if (v5 < 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5 - 3;
    if (v5 < 3)
    {
LABEL_11:

      return;
    }
  }

  v7 = v5 - 1;
  v8 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1D3869C30](v5 - 1, v3);
  }

  else
  {
    if (v5 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_82;
    }

    v9 = *(v3 + 8 * v7 + 32);

    v10 = v9;
  }

  v11 = v10;
  v1 = [v10 providerID];

  v7 = [v1 fp_isiCloudDriveIdentifier];
  if (!v7)
  {

    goto LABEL_11;
  }

  v12 = v5 - 2;
  if (v8)
  {

    v13 = MEMORY[0x1D3869C30](v12, v3);
  }

  else
  {
    if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v14 = *(v3 + 8 * v12 + 32);

    v13 = v14;
  }

  v15 = v13;
  v1 = [v13 filename];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v16;

  if (v2 == 0xD000000000000013 && 0x80000001CFA5A930 == v7)
  {

    goto LABEL_18;
  }

  v1 = sub_1CF9E8048();

  v7 = v3;
  if (v1)
  {
LABEL_18:

    if (v4)
    {
      v17 = sub_1CF9E7818();
    }

    else
    {
      v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = __OFSUB__(v17, 2);
    v19 = v17 - 2;
    if (!v18)
    {

      if (!(v3 >> 62))
      {
        v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v6 = v12 - 2;
        if (!__OFSUB__(v12, 2))
        {
          goto LABEL_24;
        }

        goto LABEL_85;
      }

LABEL_83:
      v12 = sub_1CF9E7818();
      v6 = v12 - 2;
      if (!__OFSUB__(v12, 2))
      {
LABEL_24:
        if ((v3 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 < v20)
            {
              if (v12 - 1 < v20)
              {
                v21 = *(v3 + 32 + 8 * v6);
                v22 = *(v3 + 32 + 8 * (v12 - 1));

                v23 = v21;
                v24 = v22;
LABEL_29:
                v25 = v24;
                v26 = [v24 itemIdentifier];

                [v23 setParentItemIdentifier_];

                return;
              }

              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_86:

        v23 = MEMORY[0x1D3869C30](v6, v3);
        v24 = MEMORY[0x1D3869C30](v12 - 1, v3);
        goto LABEL_29;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v4)
  {
    v27 = sub_1CF9E7818();
  }

  else
  {
    v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 < 4)
  {
    goto LABEL_49;
  }

  if (v8)
  {
    v28 = MEMORY[0x1D3869C30](v12, v3);
  }

  else
  {
    if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v28 = *(v3 + 8 * v12 + 32);
  }

  v29 = v28;
  v30 = [v28 isContainer];

  if (!v30)
  {
    goto LABEL_49;
  }

  if (v8)
  {
    v31 = MEMORY[0x1D3869C30](v6, v3);
    goto LABEL_43;
  }

  if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v3 + 8 * v6 + 32);
LABEL_43:
    v32 = v31;
    v2 = 0xE900000000000073;
    v6 = 0x746E656D75636F44;
    v7 = [v31 filename];

    v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v33;

    if (v1 == 0x746E656D75636F44 && v12 == 0xE900000000000073)
    {

      goto LABEL_47;
    }

    v6 = sub_1CF9E8048();

    if (v6)
    {
LABEL_47:
      if (v4)
      {
        v34 = sub_1CF9E7818();
      }

      else
      {
        v34 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = __OFSUB__(v34, 3);
      v35 = v34 - 3;
      if (!v18)
      {
        v6 = sub_1CF7D5D90(v35);
        v12 = v3;
        v2 = v3 >> 62;
        if (!(v3 >> 62))
        {
          v36 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v18 = __OFSUB__(v36, 2);
          v37 = v36 - 2;
          if (!v18)
          {
            goto LABEL_54;
          }

          goto LABEL_95;
        }

LABEL_93:
        v54 = sub_1CF9E7818();
        v18 = __OFSUB__(v54, 2);
        v37 = v54 - 2;
        if (!v18)
        {
LABEL_54:
          if ((v12 & 0xC000000000000001) == 0)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v37 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v38 = *(v12 + 8 * v37 + 32);
              goto LABEL_58;
            }

            __break(1u);
            goto LABEL_99;
          }

LABEL_96:
          v38 = MEMORY[0x1D3869C30](v37, v12);
LABEL_58:
          v7 = v38;
          v39 = [objc_opt_self() appLibraryFromContainerItem:v38 documentsItem:v6];
          if (!v39)
          {

            return;
          }

          v1 = v39;

          if (v2)
          {
            v40 = sub_1CF9E7818();
          }

          else
          {
            v40 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v41 = v40 - 2;
          if (!__OFSUB__(v40, 2))
          {
            v1 = v1;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (v2 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
            {
              v3 = sub_1CF067780(v12);
              v12 = v3;
            }

            else
            {
              v3 = v12;
            }

            if ((v41 & 0x8000000000000000) == 0)
            {
              v8 = v3 & 0xFFFFFFFFFFFFFF8;
              if (v41 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v43 = v8 + 8 * v41;
                v44 = *(v43 + 32);
                *(v43 + 32) = v1;

                if (!(v12 >> 62))
                {
                  v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v46 = v45 - 3;
                  if (!__OFSUB__(v45, 3))
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_104;
                }

LABEL_102:
                v45 = sub_1CF9E7818();
                v46 = v45 - 3;
                if (!__OFSUB__(v45, 3))
                {
LABEL_72:
                  if ((v3 & 0xC000000000000001) == 0)
                  {
                    if ((v46 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v47 = *(v8 + 16);
                      if (v46 < v47)
                      {
                        if (v45 - 2 < v47)
                        {
                          v48 = *(v12 + 32 + 8 * v46);
                          v49 = *(v12 + 32 + 8 * (v45 - 2));

                          v50 = v48;
                          v51 = v49;
LABEL_77:
                          v52 = v51;
                          v53 = [v51 itemIdentifier];

                          [v50 setParentItemIdentifier_];

                          return;
                        }

                        goto LABEL_108;
                      }
                    }

                    __break(1u);
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

LABEL_105:
                  v55 = v45;

                  v50 = MEMORY[0x1D3869C30](v46, v12);
                  v51 = MEMORY[0x1D3869C30](v55 - 2, v12);
                  goto LABEL_77;
                }

LABEL_104:
                __break(1u);
                goto LABEL_105;
              }

LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_49:

    return;
  }

LABEL_109:
  __break(1u);
}

unint64_t sub_1CF7D9A78()
{
  result = qword_1EDEA8860[0];
  if (!qword_1EDEA8860[0])
  {
    type metadata accessor for VFSFileTree(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA8860);
  }

  return result;
}

unint64_t sub_1CF7D9AD0()
{
  result = qword_1EDEA8550;
  if (!qword_1EDEA8550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE360, &qword_1CF9FE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8550);
  }

  return result;
}

uint64_t sub_1CF7D9BAC()
{
  sub_1CF9E7948();

  sub_1CF9E5D98();
  sub_1CF7DB13C(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x3A65746164707520, 0xE800000000000000);
  v2 = type metadata accessor for ChangeEnumeratorAnchor();
  v6 = *(v0 + *(v2 + 20));
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x6F6974656C656420, 0xEB000000003A736ELL);
  v7 = *(v0 + *(v2 + 24));
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1CF7D9D40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49D8, &qword_1CFA17910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7DA758();
  sub_1CF9E82A8();
  v15[15] = 0;
  sub_1CF9E5D98();
  sub_1CF7DB13C(&qword_1EDEAECC8, MEMORY[0x1E69695A8]);
  sub_1CF9E7F08();
  if (!v2)
  {
    v11 = type metadata accessor for ChangeEnumeratorAnchor();
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1CF9E7EE8();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1CF9E7EE8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF7D9F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1CF9E5D98();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49D0, &qword_1CFA17908);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ChangeEnumeratorAnchor();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7DA758();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  sub_1CF7DB13C(&qword_1EDEAECB8, MEMORY[0x1E69695A8]);
  v18 = v27;
  sub_1CF9E7D88();
  v19 = *(v17 + 32);
  v20 = v28;
  v28 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = sub_1CF9E7D78();
  v29 = 2;
  v21 = sub_1CF9E7D78();
  (*(v26 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v21;
  sub_1CF7DA7AC(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF7DA810(v16);
}

uint64_t sub_1CF7DA29C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x49646574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444955556264;
  }
}

uint64_t sub_1CF7DA304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF7DA86C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF7DA32C(uint64_t a1)
{
  v2 = sub_1CF7DA758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF7DA368(uint64_t a1)
{
  v2 = sub_1CF7DA758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF7DA440(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (v7 == 255)
  {
    goto LABEL_17;
  }

  v8 = *a1;
  if (v7 == 2 && v8 == 0)
  {
    v13 = MEMORY[0x1E6967258];
LABEL_13:
    v12 = *v13;
    goto LABEL_14;
  }

  if (v7 == 2 && v8 == 1)
  {
    v13 = MEMORY[0x1E6967280];
    goto LABEL_13;
  }

  v11 = VFSItemID.description.getter(a1, a2);
  MEMORY[0x1D3868CC0](v11);

  v12 = sub_1CF9E6888();

LABEL_14:
  [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:a4 itemIdentifier:v12];

  MEMORY[0x1D3868FA0]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
LABEL_17:
  if (a2)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v16 = a2;
    [v14 initWithProviderDomainID:a4 itemIdentifier:?];
    MEMORY[0x1D3868FA0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
  }
}

uint64_t type metadata accessor for ChangeEnumeratorAnchor()
{
  result = qword_1EDEA5658;
  if (!qword_1EDEA5658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7DA6DC()
{
  result = sub_1CF9E5D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CF7DA758()
{
  result = qword_1EDEA5688;
  if (!qword_1EDEA5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5688);
  }

  return result;
}

uint64_t sub_1CF7DA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChangeEnumeratorAnchor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7DA810(uint64_t a1)
{
  v2 = type metadata accessor for ChangeEnumeratorAnchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF7DA86C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556264 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA5B1B0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49646574656C6564 && a2 == 0xEE006B6E61527344)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_1CF7DA990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a5;
  v78 = a7;
  v80 = a6;
  v81 = a4;
  v79 = a3;
  v72 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v70 - v26;
  sub_1CEFCCBDC(a1, v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v28 = (*(v24 + 48))(v22, 1, v23);
  v76 = a2;
  if (v28 == 1)
  {
    v30 = v80;
    v29 = v81;
    sub_1CEFCCC44(v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v31 = type metadata accessor for PendingIndexingItemRow();
    sub_1CEFCCBDC(a1 + *(v31 + 20), v15, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v74 + 48))(v15, 1, v75) == 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      return 0;
    }

    v75 = a1;
    v43 = v71;
    sub_1CEFE55D0(v15, v71, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v88[0] = sub_1CF65C654();
    v35 = v30;
    v44 = *(v30 + 8);
    v45 = *(v72 + 104);
    v46 = v44(v45, v35);
    v87[0] = sub_1CF65C654();
    v47 = (*(v35 + 16))(v45, v35);
    v48 = v89;
    v49 = sub_1CF2CEBFC(v43, v46, v47, 1);
    v40 = v48;

    v32 = v49;
    sub_1CEFCCC44(v43, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v74 = 0;
    v41 = v77;
    v42 = v29;
  }

  else
  {
    v75 = a1;
    sub_1CEFE55D0(v22, v27, &unk_1EC4BE360, &qword_1CF9FE650);
    v33 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v34 = sub_1CF7D9AD0();
    v69 = *(v78 + 8);
    v74 = 1;
    v35 = v80;
    v36 = v23;
    v37 = v81;
    v38 = v77;
    v39 = sub_1CF76BB00(v27, 0, 1, v33, v79, v36, v81, v77, v80, v34, v69);

    v32 = v39;
    sub_1CEFCCC44(v27, &unk_1EC4BE360, &qword_1CF9FE650);
    v40 = v89;
    v41 = v38;
    v42 = v37;
  }

  v50 = [v32 isBusy];

  if (v50)
  {
    goto LABEL_7;
  }

  v51 = *(type metadata accessor for PendingIndexingItemRow() + 24);
  memcpy(v88, (v75 + v51), 0x378uLL);
  memcpy(v87, (v75 + v51), sizeof(v87));
  v52 = sub_1CF9E5A58();
  v53 = v73;
  (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  sub_1CEFCCBDC(v88, v86, &unk_1EC4C46E0, &unk_1CFA16860);
  v54 = v40;
  v55 = v35;
  v56 = *(v78 + 8);
  v57 = v79;
  sub_1CF765380(v32, v87, v74, v53, v79, v42, v41, v55, v56);
  v89 = v54;
  if (v54)
  {

    sub_1CEFCCC44(v53, &unk_1EC4BE310, qword_1CF9FCBE0);
    memcpy(v86, v87, sizeof(v86));
    sub_1CEFCCC44(v86, &unk_1EC4C46E0, &unk_1CFA16860);
    return v32;
  }

  v78 = v56;
  sub_1CEFCCC44(v53, &unk_1EC4BE310, qword_1CF9FCBE0);
  memcpy(v86, v87, sizeof(v86));
  sub_1CEFCCC44(v86, &unk_1EC4C46E0, &unk_1CFA16860);
  v58 = [v32 providerID];
  v59 = [v58 fp_isiCloudDriveIdentifier];

  if (!v59)
  {
    return v32;
  }

  v60 = [v32 isContainer];
  v61 = v89;
  if (v60)
  {
LABEL_7:

    return 0;
  }

  else
  {
    v62 = sub_1CF7DB13C(qword_1EDEABC30, type metadata accessor for VFSItem);
    v63 = sub_1CF7DB13C(&qword_1EDEA3460, sub_1CF7DB184);
    v64 = *(v72 + 96);
    v82 = *(v72 + 80);
    v83 = v64;
    v84 = v62;
    v85 = v63;
    v65 = type metadata accessor for SyncEngine();
    sub_1CF7D6604(v32, v75, v76, v57, v65, v81, v41, v80, v78);
    if (v61)
    {
    }

    else if (v66)
    {
      v68 = v66;

      return v68;
    }
  }

  return v32;
}

uint64_t sub_1CF7DB13C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CF7DB184()
{
  result = qword_1EDEAB520;
  if (!qword_1EDEAB520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAB520);
  }

  return result;
}

unint64_t sub_1CF7DB1E4()
{
  result = qword_1EC4C49E0;
  if (!qword_1EC4C49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C49E0);
  }

  return result;
}

unint64_t sub_1CF7DB23C()
{
  result = qword_1EDEA5678;
  if (!qword_1EDEA5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5678);
  }

  return result;
}

unint64_t sub_1CF7DB294()
{
  result = qword_1EDEA5680;
  if (!qword_1EDEA5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5680);
  }

  return result;
}

uint64_t sub_1CF7DB34C()
{
  type metadata accessor for FPDNetworkMonitor();
  swift_allocObject();
  result = sub_1CF7DB388();
  qword_1EDEBB8A0 = result;
  return result;
}

uint64_t sub_1CF7DB388()
{
  v0 = sub_1CF9E7388();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v27 = sub_1CF701F40();
  sub_1CF9E63F8();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1CF713674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  (*(v12 + 16))(v15, v18, v11);
  (*(v4 + 16))(v7, v10, v3);
  (*(v29 + 104))(v28, *MEMORY[0x1E69E8098], v30);
  v19 = sub_1CF9E73B8();
  (*(v4 + 8))(v10, v3);
  (*(v12 + 8))(v18, v11);
  v20 = v31;
  *(v31 + 16) = v19;
  v21 = sub_1CF9E6358();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v20 + 24) = sub_1CF9E6348();
  sub_1CF03C63C(sub_1CF02C710);
  sub_1CF9E6328();
  v24 = *(v20 + 16);
  v25 = *(v20 + 24);
  sub_1CF9E6338();
  return v20;
}

uint64_t sub_1CF7DB714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = sub_1CF9E6308();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  sub_1CF9E6318();
  v14 = *MEMORY[0x1E6977B38];
  v22 = v4[13];
  v22(v7, v14, v3);
  LOBYTE(v13) = sub_1CF9E6368();
  v15 = v4[1];
  v15(v7, v3);
  if (v13)
  {
    result = (*(v9 + 8))(v12, v8);
    v17 = 0x74656E7265687465;
    v18 = 0xE800000000000000;
  }

  else
  {
    v22(v7, *MEMORY[0x1E6977B40], v3);
    v19 = sub_1CF9E6368();
    v15(v7, v3);
    if (v19)
    {
      result = (*(v9 + 8))(v12, v8);
      v17 = 1768319351;
      v18 = 0xE400000000000000;
    }

    else
    {
      v22(v7, *MEMORY[0x1E6977B50], v3);
      v20 = sub_1CF9E6368();
      v15(v7, v3);
      result = (*(v9 + 8))(v12, v8);
      if (v20)
      {
        v17 = 0x72616C756C6C6563;
        v18 = 0xE800000000000000;
      }

      else
      {
        v17 = 0x726568746FLL;
        v18 = 0xE500000000000000;
      }
    }
  }

  v21 = v23;
  *v23 = v17;
  v21[1] = v18;
  return result;
}

uint64_t sub_1CF7DB9F4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1CF7DBA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v127 = a3;
  v113 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = &v103 - v8;
  v9 = type metadata accessor for LocalDomain();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = (&v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v103 - v13;
  v119 = sub_1CF9E5A58();
  v117 = *(v119 - 8);
  v14 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v111 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v103 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v103 - v21;
  v22 = sub_1CF9E5248();
  v23 = *(v22 - 8);
  v122 = v22;
  v123 = v23;
  v24 = *(v23 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  v29 = sub_1CF9E5268();
  v124 = *(v29 - 8);
  v30 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v103 - v34;
  v36 = *(a2 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v109 = &v103 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v107 = &v103 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v118 = &v103 - v46;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v103 - v49;
  v126 = v36;
  v53 = *(v36 + 16);
  v52 = v36 + 16;
  v51 = v53;
  (v53)(&v103 - v49, v4, a2, v48);
  v125 = v50;
  if (swift_dynamicCast())
  {
    v105 = v52;
    v106 = v51;
    v108 = v4;
    v104 = a2;
    v54 = v124;
    (*(v124 + 32))(v32, v35, v29);
    sub_1CF00E8FC(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v55 = v28;
    sub_1CF9E57A8();
    v56 = v121;
    sub_1CF9E5128();
    sub_1CF00E8FC(&unk_1EC4C1140, MEMORY[0x1E6967E70]);
    v57 = v29;
    v58 = v122;
    sub_1CF9E6C28();
    sub_1CF9E6C28();
    v59 = *(v123 + 1);
    v59(v56, v58);
    v59(v55, v58);
    if (v129 == v128)
    {
      v123 = v32;
      v60 = v57;
      v61 = v118;
      v62 = v108;
      a2 = v104;
      v63 = v106;
      v106(v118, v108, v104);
      v64 = sub_1CF9E7FB8();
      if (v64)
      {
        v65 = v64;
        v66 = v126;
        (*(v126 + 8))(v61, a2);
      }

      else
      {
        v65 = swift_allocError();
        v66 = v126;
        (*(v126 + 32))(v72, v61, a2);
      }

      v73 = sub_1CF9E57E8();

      v74 = [v73 fp_collidingURL];
      v75 = v119;
      if (v74)
      {
        v126 = v60;
        v76 = v110;
        sub_1CF9E59D8();

        v77 = v117;
        v78 = v120;
        (*(v117 + 32))(v120, v76, v75);
        v79 = *(v77 + 16);
        v80 = v112;
        v79(v112, v78, v75);
        v81 = v114;
        sub_1CF004C30(v113, v114);
        v82 = v111;
        v79(v111, v80, v75);
        v83 = v115;
        sub_1CF004C30(v81, v115);
        v84 = type metadata accessor for VFSItem(0);
        v85 = v116;
        (*(*(v84 - 8) + 56))(v116, 1, 1, v84);
        v86 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v87 = sub_1CF001704(v82, v83, v85);
        sub_1CF56506C(v81);
        v88 = *(v77 + 8);
        v88(v80, v75);
        if (v87)
        {
          v70 = [objc_opt_self() fileProviderErrorForCollisionWithItem_];

          v88(v120, v75);
          (*(v124 + 8))(v123, v126);
        }

        else
        {
          v92 = v75;
          v93 = v107;
          v106(v107, v108, a2);
          v94 = sub_1CF9E7FB8();
          v95 = v126;
          if (v94)
          {
            v96 = v94;
            (*(v66 + 8))(v93, a2);
          }

          else
          {
            v96 = swift_allocError();
            (*(v66 + 32))(v100, v93, a2);
          }

          v101 = v123;
          v102 = v124;
          v70 = sub_1CF9E57E8();

          v88(v120, v92);
          (*(v102 + 8))(v101, v95);
        }
      }

      else
      {
        v89 = v109;
        v63(v109, v62, a2);
        v90 = sub_1CF9E7FB8();
        if (v90)
        {
          v91 = v90;
          (*(v66 + 8))(v89, a2);
        }

        else
        {
          v91 = swift_allocError();
          (*(v66 + 32))(v97, v89, a2);
        }

        v98 = v123;
        v99 = v124;
        v70 = sub_1CF9E57E8();

        (*(v99 + 8))(v98, v60);
      }

      goto LABEL_10;
    }

    (*(v54 + 8))(v32, v57);
    a2 = v104;
    v4 = v108;
    v51 = v106;
  }

  v51(v40, v4, a2);
  v67 = sub_1CF9E7FB8();
  if (v67)
  {
    v68 = v67;
    v66 = v126;
    (*(v126 + 8))(v40, a2);
  }

  else
  {
    v68 = swift_allocError();
    v66 = v126;
    (*(v126 + 32))(v69, v40, a2);
  }

  v70 = sub_1CF9E57E8();

LABEL_10:
  (*(v66 + 8))(v125, a2);
  return v70;
}

uint64_t sub_1CF7DC52C(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      MEMORY[0x1D386A470](v8);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v9 = sub_1CF9E8228();
  v10 = -1 << *(a3 + 32);
  v11 = v9 & ~v10;
  if ((*(a3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = a2 == 2;
    v14 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v13 = 0;
    }

    do
    {
      v15 = *(a3 + 48) + 16 * v11;
      v16 = *v15;
      v17 = *(v15 + 8);
      if (v17)
      {
        if (v17 == 1)
        {
          if (a2 == 1 && v16 == a1)
          {
            return 1;
          }
        }

        else if (v16)
        {
          if (v14)
          {
            return 1;
          }
        }

        else if (v13)
        {
          return 1;
        }
      }

      else if (!a2 && v16 == a1)
      {
        return 1;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(a3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1CF7DC6AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v4 = sub_1CF9E8228();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      if (v9 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v11 == v12)
      {
        break;
      }

      v14 = sub_1CF9E8048();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1CF7DC800(uint64_t a1, uint64_t a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v19 = *(v58 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - v29;
  if (*(a2 + 16))
  {
    v31 = *(a2 + 40);
    sub_1CF9E81D8();
    sub_1CEFCCBDC(a1, v30, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = &qword_1CFA12AC0;
      sub_1CEFE55D0(v30, v12, &unk_1EC4BFD70, &qword_1CFA12AC0);
      MEMORY[0x1D386A470](1);
      sub_1CF1CE0C8();
      v33 = v12;
      v34 = &unk_1EC4BFD70;
    }

    else
    {
      v32 = &unk_1CF9FCB50;
      sub_1CEFE55D0(v30, v18, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      MEMORY[0x1D386A470](0);
      sub_1CF1CDC08();
      v33 = v18;
      v34 = &unk_1EC4BFCC0;
    }

    sub_1CEFCCC44(v33, v34, v32);
    v35 = sub_1CF9E8228();
    v36 = -1 << *(a2 + 32);
    v37 = v35 & ~v36;
    v55 = a2 + 56;
    if ((*(a2 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
    {
      v52 = v24;
      v53 = a2;
      v54 = a1;
      v38 = ~v36;
      v39 = *(v19 + 72);
      v50 = v39;
      v51 = ~v36;
      do
      {
        sub_1CEFCCBDC(*(a2 + 48) + v39 * v37, v27, &unk_1EC4BF650, &unk_1CF9FCB40);
        v40 = *(v56 + 48);
        sub_1CEFCCBDC(v27, v6, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCBDC(v54, &v6[v40], &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CEFCCBDC(v6, v57, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = v49;
            sub_1CEFE55D0(&v6[v40], v49, &unk_1EC4BFD70, &qword_1CFA12AC0);
            v42 = sub_1CF469E78(v57, v41);
            sub_1CEFCCC44(v41, &unk_1EC4BFD70, &qword_1CFA12AC0);
            sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v57, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (v42)
            {
              goto LABEL_20;
            }

LABEL_16:
            sub_1CEFCCC44(v6, &unk_1EC4BF650, &unk_1CF9FCB40);
            a2 = v53;
            goto LABEL_9;
          }

          sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v57, &unk_1EC4BFD70, &qword_1CFA12AC0);
          a2 = v53;
        }

        else
        {
          v43 = v52;
          sub_1CEFCCBDC(v6, v52, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v44 = v48;
            sub_1CEFE55D0(&v6[v40], v48, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v45 = sub_1CF4692CC(v43, v44);
            sub_1CEFCCC44(v44, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v43, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v39 = v50;
            v38 = v51;
            if (v45)
            {
LABEL_20:
              sub_1CEFCCC44(v6, &unk_1EC4BF650, &unk_1CF9FCB40);
              return 1;
            }

            goto LABEL_16;
          }

          sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v43, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          a2 = v53;
          v39 = v50;
          v38 = v51;
        }

        sub_1CEFCCC44(v6, &qword_1EC4C4FB0, &unk_1CFA17180);
LABEL_9:
        v37 = (v37 + 1) & v38;
      }

      while (((*(v55 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1CF7DCE10(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1CF9E7848();

    return v3 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      goto LABEL_13;
    }

    v5 = *(a2 + 40);
    sub_1CF9E81D8();
    v7 = *(a1 + 16);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E69C8();

    v8 = sub_1CF9E8228();
    v9 = -1 << *(a2 + 32);
    v10 = v8 & ~v9;
    if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (1)
      {
        v12 = *(*(*(a2 + 48) + 8 * v10) + 16);
        v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v15 = v14;
        if (v13 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v15 == v16)
        {
          break;
        }

        v18 = sub_1CF9E8048();

        if ((v18 & 1) == 0)
        {
          v10 = (v10 + 1) & v11;
          if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
          {
            continue;
          }
        }

        return v18 & 1;
      }

      v18 = 1;
    }

    else
    {
LABEL_13:
      v18 = 0;
    }

    return v18 & 1;
  }
}

uint64_t sub_1CF7DCFA4(id a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v34, a1, a2 & 0x1FF);
  v7 = sub_1CF9E8228();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = a2 == 2;
  v12 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v11 = 0;
  }

  v31 = v11;
  v32 = v12;
  v13 = (a2 >> 8) & 1;
  while (1)
  {
    v17 = *(a3 + 48) + 16 * v9;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 9);
    if ((v20 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    v21 = *v17;
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;
    if (v22 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v24 == v25)
    {
      sub_1CEFD0988(v18, v19, 1);
      sub_1CEFD0988(v18, v19, 1);
      sub_1CEFD0988(a1, a2, 1);

      sub_1CEFD0994(a1, a2, 1);
LABEL_37:
      sub_1CEFD0994(v18, v19, 1);
      v28 = v18;
      v29 = v19;
      v30 = 1;
      goto LABEL_40;
    }

    v33 = sub_1CF9E8048();
    sub_1CEFD0988(v18, v19, 1);
    sub_1CEFD0988(v18, v19, 1);
    sub_1CEFD0988(a1, a2, 1);

    sub_1CEFD0994(a1, a2, 1);
    if (v33)
    {
      goto LABEL_37;
    }

    sub_1CEFD0994(v18, v19, 1);
    sub_1CEFD0994(v18, v19, 1);
    v13 = (a2 >> 8) & 1;
LABEL_11:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_9:
    sub_1CEFD0988(*v17, *(v17 + 8), *(v17 + 9));
    sub_1CEFD0988(a1, a2, v13);
    sub_1CEFD0994(v18, v19, v20);
    v14 = a1;
    v15 = a2;
    v16 = v13;
LABEL_10:
    sub_1CEFD0994(v14, v15, v16);
    goto LABEL_11;
  }

  if (!*(v17 + 8))
  {
    if (!a2 && v18 == a1)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v19 == 1)
  {
    if (a2 == 1 && v18 == a1)
    {
      v18 = a1;
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    if (v32)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (!v31)
  {
LABEL_33:
    sub_1CEFD0988(v18, v19, 0);
    sub_1CEFD0988(a1, a2, 0);
    v14 = v18;
    v15 = v19;
    v16 = 0;
    goto LABEL_10;
  }

  v18 = 0;
LABEL_39:
  sub_1CEFD0988(v18, v19, 0);
  sub_1CEFD0988(a1, a2, 0);
  v28 = v18;
  v29 = v19;
  v30 = 0;
LABEL_40:
  sub_1CEFD0994(v28, v29, v30);
  return 1;
}

uint64_t sub_1CF7DD394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v89 = a5;
  v100 = *MEMORY[0x1E69E9840];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v9 = *(*(v82 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v12 = (v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v70 - v16);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v18 = *(*(v84 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v84);
  v85 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = (v70 - v21);
  v22 = type metadata accessor for VFSItem(0);
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v81 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v88 = v70 - v27;

  v28 = type metadata accessor for VFSFileTree(0);
  a4 |= 1uLL;
  v87 = a1;
  aBlock = a1;
  v29 = a2;
  v97 = 0u;
  v98 = 0u;
  v30 = sub_1CEFDADE0(&aBlock, *(a2 + 16), 2129920);
  v86 = a3;
  v80 = a4;
  v79 = a2;
  v70[0] = v15;
  v71 = v12;
  v78 = 0;
  v72 = v23;
  v73 = v22;
  LODWORD(v23) = v30;
  v77 = v30;

  os_unfair_lock_lock((a2 + 56));
  v36 = *(a2 + 64);
  v37 = *(v29 + 72);
  LODWORD(v76) = *(v29 + 88);
  v75 = *(v29 + 89);
  v74 = *(v29 + 90);

  v38 = *(v29 + 80);
  os_unfair_lock_unlock((v29 + 56));
  v70[1] = v70;
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v70[-12];
  v70[-10] = v28;
  LODWORD(v70[-9]) = v23;
  v70[-7] = 0;
  v70[-6] = 0;
  v70[-8] = v29;
  LOBYTE(v70[-5]) = a3;
  v70[-4] = a4;
  v70[-3] = 0;
  LOBYTE(v70[-2]) = -1;
  v70[-1] = 0;
  *(&v98 + 1) = v36;
  v99 = v37;
  aBlock = MEMORY[0x1E69E9820];
  *&v97 = 1107296256;
  *(&v97 + 1) = sub_1CEFDB088;
  *&v98 = &block_descriptor_46;
  v41 = _Block_copy(&aBlock);
  v70[2] = v37;

  v91 = v41;
  v92 = v38;
  v93 = v76;
  v94 = v75;
  v95 = v74;
  v42 = sub_1CEFDB034();
  v43 = swift_allocError();
  *v44 = 6;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 19;
  *v17 = v43;
  swift_storeEnumTagMultiPayload();
  v45 = swift_allocObject();
  v45[2] = v17;
  v45[3] = sub_1CEFDB808;
  v45[4] = &v70[-12];
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1CEFDB388;
  *(v46 + 24) = v45;
  *(&v98 + 1) = sub_1CEFDB248;
  v99 = v46;
  aBlock = MEMORY[0x1E69E9820];
  *&v97 = 1107296256;
  *(&v97 + 1) = sub_1CEFDB270;
  *&v98 = &block_descriptor_6;
  v47 = _Block_copy(&aBlock);

  v48 = fpfs_fgetfileattrs_detailed();
  _Block_release(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v76 = v41;
  if (v48)
  {
    swift_getErrorValue();
    v50 = v90;
    v51 = swift_allocError();
    *v52 = 6;
    *(v52 + 8) = 0u;
    *(v52 + 24) = 0u;
    *(v52 + 40) = 19;
    v53 = v48;
    v54 = sub_1CF199074(v51, v50);

    v55 = v70[0];
    *v70[0] = v54;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DBC74(v55, v17);
  }

  v56 = v71;
  sub_1CEFCCBDC(v17, v71, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v33 = v83;
    sub_1CEFE55D0(v56, v83, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v17, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v76);

    v40 = v89;
    v42 = v73;
    v48 = v72;
    v35 = v85;
LABEL_11:
    v60 = v88;
    v34 = v86;
    if ((v77 & 0x80000000) == 0)
    {
      close(v77);
    }

    goto LABEL_13;
  }

  aBlock = *v56;
  v57 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v17, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v76);

  v58 = v57;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v59 = sub_1CF9E5658();

  v40 = v89;
  v48 = v72;
  if (v59)
  {

    v33 = v83;
    *v83 = xmmword_1CF9FD940;
    *(v33 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v42 = v73;
    v35 = v85;
    goto LABEL_11;
  }

  v42 = v73;
  v60 = v88;
  v69 = v78;
  if ((v77 & 0x80000000) == 0)
  {
    close(v77);
  }

  v31 = v57;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v32 = sub_1CF9E5658();

  if ((v32 & 1) == 0)
  {
LABEL_18:
    aBlock = 0;
    *&v97 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD000000000000012;
    *&v97 = 0x80000001CFA5B210;
    v91 = v87;
    v66 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v66);

    sub_1CF7E16A8(v57, aBlock, v97);

    goto LABEL_19;
  }

  v78 = v69;

  v33 = v83;
  *v83 = xmmword_1CF9FD930;
  *(v33 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v34 = v86;
  v35 = v85;
LABEL_13:
  sub_1CEFE55D0(v33, v35, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v63 = v35;
    v64 = v81;
    sub_1CF5634F4(v63, v81);
    sub_1CF5634F4(v64, v60);
    v65 = v78;
    sub_1CF7DEC8C(v60, v79, v34, v80, v40);
    if (!v65)
    {
      result = sub_1CF574A68(v60);
      goto LABEL_20;
    }

    v57 = v65;
    sub_1CF574A68(v60);
    goto LABEL_18;
  }

  sub_1CEFCCC44(v35, &unk_1EC4BE2F0, qword_1CFA04220);
  aBlock = 0;
  *&v97 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD000000000000013;
  *&v97 = 0x80000001CFA5B230;
  v91 = v87;
  v61 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v61);

  v45 = aBlock;
  v17 = v97;
  if (qword_1EDEA3408 != -1)
  {
LABEL_25:
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1CF9FA450;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = sub_1CEFD51C4();
  *(v62 + 32) = v45;
  *(v62 + 40) = v17;
  sub_1CF9E6018();
LABEL_19:

  result = (*(v48 + 7))(v40, 1, 1, v42);
LABEL_20:
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7DDF48@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a4;
  LODWORD(v94) = a3;
  v93 = a2;
  v115 = *MEMORY[0x1E69E9840];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v7 = *(*(v100 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v100);
  v92 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v91 = (&v82 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v99 = (&v82 - v12);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v13 = *(*(v96 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v96);
  v97 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = (&v82 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v82 - v19;
  v21 = sub_1CF9E5A58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for VFSItem(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF574A04(a1, v30);
  sub_1CF25116C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1CF574A68(v30);
    sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF574A04(a1, a5);
    result = (*(v27 + 56))(a5, 0, 1, v26);
    goto LABEL_6;
  }

  v98 = v30;
  v89 = v27;
  v90 = v26;
  (*(v22 + 32))(v25, v20, v21);
  v32 = v102;
  v33 = sub_1CF006550();
  if (v32)
  {
    sub_1CF574A68(v98);
LABEL_5:
    result = (*(v22 + 8))(v25, v21);
    goto LABEL_6;
  }

  v35 = v33;
  v88 = v25;
  v36 = v90;
  v37 = v98;
  v38 = &v98[*(v90 + 28)];
  v39 = type metadata accessor for ItemMetadata();
  if ((v35 & 1) == v38[*(v39 + 112)])
  {
    sub_1CF574A68(v37);
    sub_1CF574A04(a1, a5);
    (*(v89 + 56))(a5, 0, 1, v36);
    result = (*(v22 + 8))(v88, v21);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v39);
  v25 = v88;
  *(&v82 - 2) = v88;
  if (v35)
  {
    v40 = sub_1CF7E1EEC;
  }

  else
  {
    v40 = sub_1CF7E1EBC;
  }

  sub_1CEFE1894(v40);
  v102 = 0;
  v41 = type metadata accessor for VFSFileTree(0);
  sub_1CF9E5A18();
  sub_1CF9E6978();
  v42 = openat_s();

  if (v42 < 0)
  {
    v46 = MEMORY[0x1D38683F0](v43);
    v113 = 0;
    aBlock = 0u;
    v112 = 0u;
    LOBYTE(v114) = 19;
    v47 = sub_1CF19BBE4(v46, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();

    v102 = 0;
  }

  else
  {
    v87 = v42;

    v44 = v41;
    if (v101)
    {
      v86 = 0;
      v45 = v93;
    }

    else
    {
      v45 = v93;
      v86 = *&v93[6]._os_unfair_lock_opaque;
    }

    os_unfair_lock_lock(v45 + 14);
    v48 = *&v45[16]._os_unfair_lock_opaque;
    v49 = *&v45[18]._os_unfair_lock_opaque;
    LODWORD(v85) = LOBYTE(v45[22]._os_unfair_lock_opaque);
    LODWORD(v84) = BYTE1(v45[22]._os_unfair_lock_opaque);
    v83 = BYTE2(v45[22]._os_unfair_lock_opaque);

    v50 = *&v45[20]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v45 + 14);
    v82 = &v82;
    MEMORY[0x1EEE9AC00](v51);
    v93 = (&v82 - 12);
    *(&v82 - 10) = v44;
    *(&v82 - 18) = v87;
    *(&v82 - 7) = 0;
    *(&v82 - 6) = 0;
    *(&v82 - 8) = v45;
    *(&v82 - 40) = v94;
    *(&v82 - 4) = v101;
    *(&v82 - 3) = 0;
    *(&v82 - 16) = -1;
    *(&v82 - 1) = 0;
    v113 = v48;
    v114 = v49;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v112 = sub_1CEFDB088;
    *(&v112 + 1) = &block_descriptor_25_0;
    v52 = _Block_copy(&aBlock);
    v101 = v49;

    v94 = v52;
    v106 = v52;
    v107 = v50;
    v108 = v85;
    v109 = v84;
    v110 = v83;
    v85 = sub_1CEFDB034();
    v53 = swift_allocError();
    *v54 = 6;
    *(v54 + 8) = 0u;
    *(v54 + 24) = 0u;
    *(v54 + 40) = 19;
    v55 = v99;
    *v99 = v53;
    swift_storeEnumTagMultiPayload();
    v56 = swift_allocObject();
    *&v56[4]._os_unfair_lock_opaque = v55;
    *&v56[6]._os_unfair_lock_opaque = sub_1CF2B9F90;
    *&v56[8]._os_unfair_lock_opaque = v93;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1CF7E1F94;
    *(v57 + 24) = v56;
    v93 = v56;
    v113 = sub_1CF7E1FB4;
    v114 = v57;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v112 = sub_1CEFDB270;
    *(&v112 + 1) = &block_descriptor_36;
    v58 = _Block_copy(&aBlock);

    v59 = fpfs_fgetfileattrs_detailed();
    _Block_release(v58);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if (v58)
    {
      __break(1u);
    }

    if (v59)
    {
      swift_getErrorValue();
      v60 = v104;
      v86 = v103;
      v84 = v105;
      v61 = swift_allocError();
      *v62 = 6;
      *(v62 + 8) = 0u;
      *(v62 + 24) = 0u;
      *(v62 + 40) = 19;
      v63 = v59;
      v64 = v59;
      v65 = sub_1CF199074(v61, v60);

      v59 = v63;
      v55 = v99;

      v66 = v91;
      *v91 = v65;
      swift_storeEnumTagMultiPayload();
      sub_1CF1DBC74(v66, v55);
    }

    v67 = v92;
    sub_1CEFCCBDC(v55, v92, &qword_1EC4BE000, &unk_1CFA006A0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v74 = v67;
      v75 = v55;
      v72 = v95;
      sub_1CEFE55D0(v74, v95, &unk_1EC4BE2F0, qword_1CFA04220);
      sub_1CEFCCC44(v75, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v94);

      v73 = v87;
      goto LABEL_24;
    }

    v68 = v59;
    *&aBlock = *v67;
    v47 = aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v55, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v94);

    v69 = v47;
    LODWORD(aBlock) = sub_1CF9E52A8();
    sub_1CF196978();
    v70 = sub_1CF9E5658();

    if (v70)
    {
      v71 = v87;

      v72 = v95;
      *v95 = xmmword_1CF9FD940;
      *(v72 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v73 = v71;
LABEL_24:
      close(v73);
      sub_1CF574A68(v98);
      goto LABEL_28;
    }

    close(v87);
  }

  v76 = v47;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v77 = sub_1CF9E5658();

  sub_1CF574A68(v98);
  if ((v77 & 1) == 0)
  {
    goto LABEL_5;
  }

  v72 = v95;
  *v95 = xmmword_1CF9FD930;
  *(v72 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_28:
  v78 = v90;
  v79 = v97;
  v80 = v89;
  sub_1CEFE55D0(v72, v97, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE2F0, qword_1CFA04220);
    v81 = 1;
  }

  else
  {
    sub_1CF5634F4(v79, a5);
    v81 = 0;
  }

  (*(v80 + 56))(a5, v81, 1, v78);
  result = (*(v22 + 8))(v88, v21);
LABEL_6:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7DEC14@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X1>, _DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = sub_1CF9E6978();

  LODWORD(a1) = a1(4294967294, v4 + 32);

  *a2 = a1;
  return result;
}

uint64_t sub_1CF7DEC8C@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, int a3@<W2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v123) = a3;
  v9 = a3;
  v140 = *MEMORY[0x1E69E9840];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v10 = *(*(v118 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v118);
  v117 = (v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v116 = (v106 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v119 = (v106 - v15);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v16 = *(*(v120 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v120);
  v121 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v122 = v106 - v19;
  v20 = sub_1CF9E5A58();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v106 - v28;
  v125 = type metadata accessor for VFSItem(0);
  v124 = *(v125 - 8);
  v30 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v32 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF574A04(a1, v32);
  if (v9 == 1)
  {
    sub_1CF7DDF48(a1, a2, 1, a4, a5);
    result = sub_1CF574A68(v32);
    goto LABEL_9;
  }

  v115 = a2;
  v114 = a4;
  v34 = v128;
  sub_1CF25116C(v29);
  if ((*(v127 + 48))(v29, 1, v20) == 1)
  {
LABEL_8:
    sub_1CF5634F4(v32, a5);
    result = (*(v124 + 56))(a5, 0, 1, v125);
    goto LABEL_9;
  }

  v113 = v32;
  v35 = sub_1CF9E5928();
  v36 = *(v127 + 8);
  v112 = v127 + 8;
  v111 = v36;
  v36(v29, v20);
  v37 = v20;
  v38 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v39 = v35;
  v40 = v115;
  v41 = sub_1CF9E5928();
  v42 = [v39 fp:v41 relativePathOf:?];

  if (!v42)
  {

    v32 = v113;
    goto LABEL_8;
  }

  v110 = v39;
  v109 = a5;
  v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v37;
  v46 = v45;

  *&aBlock = v43;
  *(&aBlock + 1) = v46;
  v131 = 47;
  v132 = 0xE100000000000000;
  sub_1CEFE4E68();
  v47 = sub_1CF9E7638();

  v48 = *(v127 + 16);
  v49 = v40 + v38;
  v126 = v44;
  v50 = v47;
  v48(v129, v49, v44);
  v51 = *(v47 + 16);
  if (v51 < 2)
  {
LABEL_6:

    swift_unknownObjectRelease();
    v52 = v109;
    sub_1CF5634F4(v113, v109);
    (*(v124 + 56))(v52, 0, 1, v125);
    result = v111(v129, v126);
    goto LABEL_9;
  }

  v54 = v51 - 1;
  v55 = (v127 + 40);
  v56 = *MEMORY[0x1E695DBA0];
  v57 = (v50 + 40);
  while (1)
  {
    if (!v54)
    {
      __break(1u);
      goto LABEL_42;
    }

    v58 = *(v57 - 1);
    v59 = *v57;

    v60 = v129;
    sub_1CF9E5958();

    (*v55)(v60, v24, v126);
    v61 = sub_1CF9E5928();
    *&aBlock = 0;
    v131 = 0;
    v62 = [v61 getResourceValue:&aBlock forKey:v56 error:&v131];
    v34 = aBlock;
    v63 = v131;
    if (!v62)
    {
      v67 = v63;
      swift_unknownObjectRetain();
      sub_1CF9E57F8();

      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF574A68(v113);
      swift_unknownObjectRelease();

      goto LABEL_21;
    }

    if (!v34)
    {

      goto LABEL_12;
    }

    swift_unknownObjectRetain_n();
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (!v64)
    {

      swift_unknownObjectRelease_n();
      goto LABEL_12;
    }

    v65 = [v64 BOOLValue];
    swift_unknownObjectRelease_n();

    if (v65)
    {
      break;
    }

LABEL_12:
    v57 += 2;
    if (!--v54)
    {
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v66);
  v69 = v128;
  v106[-2] = v129;
  sub_1CEFE1894(sub_1CF7E1EA0);
  if (v69)
  {
    sub_1CF574A68(v113);
    swift_unknownObjectRelease();

LABEL_21:
    v68 = v126;
LABEL_22:
    result = v111(v129, v68);
    goto LABEL_9;
  }

  v55 = v110;
  if (v123 == 2)
  {
    sub_1CF574A68(v113);
    swift_unknownObjectRelease();

    (*(v124 + 56))(v109, 1, 1, v125);
    result = v111(v129, v126);
    goto LABEL_9;
  }

  v70 = type metadata accessor for VFSFileTree(0);
  sub_1CF9E5A18();
  sub_1CF9E6978();
  v71 = openat_s();

  v54 = v109;
  LODWORD(v127) = v71;
  v108 = v50;
  if (v71 < 0)
  {
    v74 = MEMORY[0x1D38683F0](v72);
    v138 = 0;
    aBlock = 0u;
    v137 = 0u;
    LOBYTE(v139) = 19;
    v56 = sub_1CF19BBE4(v74, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();

    v34 = v122;
    goto LABEL_43;
  }

  v128 = 0;
  if (v114)
  {
    v107 = 0;
    v73 = v115;
  }

  else
  {
    v73 = v115;
    v107 = *&v115[6]._os_unfair_lock_opaque;
  }

  os_unfair_lock_lock(v73 + 14);
  v75 = *&v73[16]._os_unfair_lock_opaque;
  v76 = *&v73[18]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = v73[22]._os_unfair_lock_opaque;
  v78 = BYTE1(v73[22]._os_unfair_lock_opaque);
  v79 = BYTE2(v73[22]._os_unfair_lock_opaque);

  v80 = *&v73[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v73 + 14);
  v115 = v106;
  MEMORY[0x1EEE9AC00](v81);
  v106[-10] = v70;
  LODWORD(v106[-9]) = v127;
  v106[-7] = 0;
  v106[-6] = 0;
  v106[-8] = v73;
  LOBYTE(v106[-5]) = v123;
  v106[-4] = v114;
  v106[-3] = 0;
  LOBYTE(v106[-2]) = -1;
  v106[-1] = 0;
  v138 = v75;
  v139 = v76;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v137 = sub_1CEFDB088;
  *(&v137 + 1) = &block_descriptor_10;
  v82 = _Block_copy(&aBlock);
  v123 = v76;

  v114 = v82;
  v131 = v82;
  v132 = v80;
  v133 = os_unfair_lock_opaque;
  v134 = v78;
  v135 = v79;
  sub_1CEFDB034();
  v83 = swift_allocError();
  *v84 = 6;
  *(v84 + 8) = 0u;
  *(v84 + 24) = 0u;
  *(v84 + 40) = 19;
  v85 = v119;
  *v119 = v83;
  swift_storeEnumTagMultiPayload();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = sub_1CF2B9F90;
  *(v86 + 32) = &v106[-12];
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1CF7E1F94;
  *(v87 + 24) = v86;
  v106[1] = v86;
  v138 = sub_1CF7E1FB4;
  v139 = v87;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v137 = sub_1CEFDB270;
  *(&v137 + 1) = &block_descriptor_21_1;
  v88 = _Block_copy(&aBlock);

  v89 = fpfs_fgetfileattrs_detailed();
  _Block_release(v88);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if (v86)
  {
    __break(1u);
    return result;
  }

  if (v89)
  {
    swift_getErrorValue();
    v90 = v130;
    v91 = swift_allocError();
    *v92 = 6;
    *(v92 + 8) = 0u;
    *(v92 + 24) = 0u;
    *(v92 + 40) = 19;
    v93 = v89;
    v94 = sub_1CF199074(v91, v90);

    v95 = v116;
    *v116 = v94;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DBC74(v95, v85);
  }

  v96 = v117;
  sub_1CEFCCBDC(v85, v117, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v109;
  if (EnumCaseMultiPayload != 1)
  {

    v34 = v122;
    sub_1CEFE55D0(v96, v122, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v85, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v114);

    v55 = v110;
    goto LABEL_40;
  }

  v56 = *v96;
  *&aBlock = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v85, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v114);

  v98 = v56;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v99 = sub_1CF9E5658();

  v34 = v122;
  v55 = v110;
  if (v99)
  {

    *v34 = xmmword_1CF9FD940;
    *(v34 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_40:
    close(v127);

    swift_unknownObjectRelease();
    sub_1CF574A68(v113);
    goto LABEL_45;
  }

LABEL_42:
  close(v127);
LABEL_43:
  v100 = v56;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v101 = sub_1CF9E5658();
  swift_unknownObjectRelease();

  sub_1CF574A68(v113);
  if ((v101 & 1) == 0)
  {
    v68 = v126;
    goto LABEL_22;
  }

  *v34 = xmmword_1CF9FD930;
  *(v34 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_45:
  v102 = v121;
  sub_1CEFE55D0(v34, v121, &unk_1EC4BE2F0, qword_1CFA04220);
  v103 = swift_getEnumCaseMultiPayload();
  v104 = (v124 + 56);
  if (v103 == 1)
  {
    sub_1CEFCCC44(v102, &unk_1EC4BE2F0, qword_1CFA04220);
    v105 = 1;
  }

  else
  {
    sub_1CF5634F4(v102, v54);
    v105 = 0;
  }

  (*v104)(v54, v105, 1, v125);
  result = v111(v129, v126);
LABEL_9:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7DFCA4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_1CF9E5A18();
  (*(v5 + 8))(v8, v4);
  sub_1CF9E6978();

  LODWORD(v4) = fpfs_pkg_promote_at();

  *a2 = v4;
  return result;
}

uint64_t sub_1CF7DFDE0@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X1>, os_unfair_lock_s *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v175 = a5;
  v163 = a4;
  v164 = a3;
  v152 = a6;
  v195 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v8 = *(*(v160 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v160);
  v154 = (&v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v147 = (&v134 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v168 = (&v134 - v13);
  v140 = sub_1CF9E53C8();
  v14 = *(v140 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v17 = *(*(v153 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v153);
  v151 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v150 = (&v134 - v20);
  v21 = type metadata accessor for VFSItem(0);
  v135 = *(v21 - 8);
  v136 = v21;
  v22 = *(v135 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v148 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v149 = &v134 - v25;
  v26 = *a2;
  v27 = a2[1];
  v28 = a2[2];
  v29 = a2[3];
  v30 = a2[4];

  if (v30 == 1)
  {
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = v7;
    v158 = 0;
    v31 = 0;
    v32 = &unk_1F4BED620;
  }

  else
  {
    v172 = v27;
    v173 = v28;
    v170 = v26;
    v171 = HIDWORD(v28);
    v158 = v29;
    v31 = v30;
    v32 = &unk_1F4BED658;
  }

  v176 = v32;
  v156 = type metadata accessor for VFSFileTree(0);
  v162 = (v175 | 1);
  os_unfair_lock_opaque = v164[4]._os_unfair_lock_opaque;
  v34 = sub_1CF7E1F64(v26, v27, v28, v29, v30);
  v174 = 0;
  v157 = 0;
  v169 = 0;
  v35 = *MEMORY[0x1E696AA08];
  v137 = (v14 + 8);
  v138 = v35;
  v155 = &v183;
  v141 = 0x80000001CFA5B2B0;
  v143 = 0x80000001CFA5B2F0;
  v145 = 0x80000001CFA5B330;
  v146 = 0x80000001CFA5B270;
  v161 = xmmword_1CF9FA450;
  v142 = xmmword_1CF9FD940;
  v144 = v7;
  v36 = v31;
  v37 = os_unfair_lock_opaque;
  v39 = v170;
  v38 = v171;
  v41 = v172;
  v40 = v173;
  v159 = os_unfair_lock_opaque;
  while (1)
  {
    v42 = MEMORY[0x1EEE9AC00](v34);
    *(&v134 - 4) = v37;
    *(&v134 - 3) = 2129920;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    *&v191 = v39;
    *(&v191 + 1) = v41;
    v192 = __PAIR64__(v38, v40);
    v173 = v40;
    if (!v36)
    {
      *&v187 = v39;
      *(&v187 + 1) = v41;
      v188 = __PAIR64__(v38, v40);
      v189 = 0;
      v190 = 0;
      LODWORD(v179[0]) = -1;
      v49 = fpfs_openfdbyhandle();
      if ((v49 & 0x80000000) == 0)
      {
        LODWORD(v175) = v49;
        v171 = v38;
        v172 = v41;
        v167 = 0;
        goto LABEL_17;
      }

      v85 = v179[0];
      v86 = MEMORY[0x1D38683F0]();
      if (v85 < 0)
      {
        LODWORD(aBlock) = 0;
        BYTE4(aBlock) = 1;
        LOBYTE(v186) = 0;
        if (v86)
        {
          v87 = sub_1CF9E6138();
          if ((v87 & 0x100000000) == 0)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        LODWORD(aBlock) = v179[0];
        BYTE4(aBlock) = 0;
        LOBYTE(v186) = 0;
        if (v86)
        {
          v87 = sub_1CF9E6138();
          if ((v87 & 0x100000000) == 0)
          {
LABEL_43:
            v180 = v87;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v161;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v91;
            *(inited + 72) = &type metadata for VFSFileError;
            v92 = swift_allocObject();
            *(inited + 48) = v92;
            sub_1CF19A730(&aBlock, v92 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v93 = v41;
            v95 = v139;
            v94 = v140;
            sub_1CF9E57D8();
            v75 = sub_1CF9E53A8();
            v96 = v95;
            v41 = v93;
            (*v137)(v96, v94);
LABEL_45:
            sub_1CF1969CC(&aBlock);
            swift_willThrow();

            v169 = 0;
LABEL_56:
            v66 = v174;
            goto LABEL_57;
          }
        }
      }

      sub_1CEFDB034();
      v75 = swift_allocError();
      sub_1CF19A730(&aBlock, v97);
      goto LABEL_45;
    }

    v172 = v41;
    MEMORY[0x1EEE9AC00](v42);
    *(&v134 - 4) = v44;
    *(&v134 - 3) = sub_1CF19BDC4;
    *(&v134 - 2) = v45;
    if ((v36 & 0x1000000000000000) == 0)
    {
      if ((v36 & 0x2000000000000000) != 0)
      {
        v179[0] = v158;
        v179[1] = v36 & 0xFFFFFFFFFFFFFFLL;
        v193 = v179;
        v187 = v191;
        v188 = v192;
        v189 = v179;
        v190 = v194;
        v178 = -1;

        v46 = fpfs_openfdbyhandle();
        if (v46 < 0)
        {
          v88 = v178;
          v89 = MEMORY[0x1D38683F0]();
          if (v88 < 0)
          {
            LODWORD(aBlock) = 0;
            BYTE4(aBlock) = 1;
            LOBYTE(v186) = 0;
            if (!v89)
            {
              goto LABEL_53;
            }
          }

          else
          {
            LODWORD(aBlock) = v178;
            BYTE4(aBlock) = 0;
            LOBYTE(v186) = 0;
            if (!v89)
            {
              goto LABEL_53;
            }
          }

          v98 = sub_1CF9E6138();
          if ((v98 & 0x100000000) == 0)
          {
            v177 = v98;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            v99 = swift_allocObject();
            *(v99 + 16) = v161;
            *(v99 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(v99 + 40) = v100;
            *(v99 + 72) = &type metadata for VFSFileError;
            v101 = swift_allocObject();
            *(v99 + 48) = v101;
            sub_1CF19A730(&aBlock, v101 + 16);
            sub_1CF4E04E8(v99);
            swift_setDeallocating();
            sub_1CEFCCC44(v99 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            swift_deallocClassInstance();
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
LABEL_52:
            v106 = v39;
            v107 = v38;
            v109 = v139;
            v108 = v140;
            sub_1CF9E57D8();
            v75 = sub_1CF9E53A8();
            v110 = v109;
            v38 = v107;
            v39 = v106;
            (*v137)(v110, v108);
LABEL_54:
            sub_1CF1969CC(&aBlock);
            swift_willThrow();

LABEL_55:
            v169 = 0;
            v41 = v172;
            goto LABEL_56;
          }

LABEL_53:
          sub_1CEFDB034();
          v75 = swift_allocError();
          sub_1CF19A730(&aBlock, v111);
          goto LABEL_54;
        }

        goto LABEL_16;
      }

      if ((v158 & 0x1000000000000000) != 0)
      {
        v193 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v187 = v191;
        v188 = v192;
        v189 = v193;
        v190 = v194;
        LODWORD(v179[0]) = -1;

        v46 = fpfs_openfdbyhandle();
        if (v46 < 0)
        {
          v47 = v179[0];
          v48 = MEMORY[0x1D38683F0]();
          if (v47 < 0)
          {
            LODWORD(aBlock) = 0;
            BYTE4(aBlock) = 1;
            LOBYTE(v186) = 0;
            if (!v48)
            {
              goto LABEL_53;
            }
          }

          else
          {
            LODWORD(aBlock) = v179[0];
            BYTE4(aBlock) = 0;
            LOBYTE(v186) = 0;
            if (!v48)
            {
              goto LABEL_53;
            }
          }

          v102 = sub_1CF9E6138();
          if ((v102 & 0x100000000) == 0)
          {
            v178 = v102;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            v103 = swift_allocObject();
            *(v103 + 16) = v161;
            *(v103 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(v103 + 40) = v104;
            *(v103 + 72) = &type metadata for VFSFileError;
            v105 = swift_allocObject();
            *(v103 + 48) = v105;
            sub_1CF19A730(&aBlock, v105 + 16);
            sub_1CF4E04E8(v103);
            swift_setDeallocating();
            sub_1CEFCCC44(v103 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            swift_deallocClassInstance();
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            goto LABEL_52;
          }

          goto LABEL_53;
        }

LABEL_16:
        LODWORD(v175) = v46;
        v171 = v38;
        v167 = v36;
        goto LABEL_17;
      }
    }

    v127 = v169;
    sub_1CF9E7938();
    if (v127)
    {

      v75 = v127;
      goto LABEL_55;
    }

    v169 = 0;
    v171 = v38;
    v167 = v36;
    LODWORD(v175) = v180;
LABEL_17:
    v50 = v40 == 0;
    v170 = v39;
    if (!v40)
    {
      v40 = v39;
    }

    v51 = v164;
    os_unfair_lock_lock(v164 + 14);
    v52 = *&v51[16]._os_unfair_lock_opaque;
    v53 = *&v51[18]._os_unfair_lock_opaque;
    v54 = v51[22]._os_unfair_lock_opaque;
    v55 = BYTE1(v51[22]._os_unfair_lock_opaque);
    v56 = BYTE2(v51[22]._os_unfair_lock_opaque);

    v57 = *&v51[20]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v51 + 14);
    v165 = &v134;
    MEMORY[0x1EEE9AC00](v58);
    *(&v134 - 10) = v156;
    *(&v134 - 18) = v175;
    *(&v134 - 7) = 0;
    *(&v134 - 6) = 0;
    *(&v134 - 8) = v51;
    *(&v134 - 40) = v163;
    *(&v134 - 4) = v162;
    *(&v134 - 3) = v40;
    *(&v134 - 16) = v50;
    *(&v134 - 1) = 0;
    v185 = v52;
    v186 = v53;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v183 = sub_1CEFDB088;
    v184 = &block_descriptor_41_0;
    v59 = _Block_copy(&aBlock);
    v166 = v53;
    v60 = v59;

    *&v191 = v60;
    *(&v191 + 1) = v57;
    LOBYTE(v192) = v54;
    BYTE1(v192) = v55;
    BYTE2(v192) = v56;
    sub_1CEFDB034();
    v61 = swift_allocError();
    *v62 = 6;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    *(v62 + 40) = 19;
    v63 = v168;
    *v168 = v61;
    swift_storeEnumTagMultiPayload();
    v41 = swift_allocObject();
    v41[2] = v63;
    v41[3] = sub_1CF2B9F90;
    v41[4] = &v134 - 12;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1CF7E1F94;
    *(v64 + 24) = v41;
    v185 = sub_1CF7E1FB4;
    v186 = v64;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v183 = sub_1CEFDB270;
    v184 = &block_descriptor_52_1;
    v65 = _Block_copy(&aBlock);

    v66 = fpfs_fgetfileattrs_detailed();
    _Block_release(v65);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if (v65)
    {
      goto LABEL_96;
    }

    v67 = v168;
    if (v66)
    {
      swift_getErrorValue();
      v68 = v181;
      v69 = swift_allocError();
      *v70 = 6;
      *(v70 + 8) = 0u;
      *(v70 + 24) = 0u;
      *(v70 + 40) = 19;
      v71 = v66;
      v72 = sub_1CF199074(v69, v68);

      v73 = v147;
      *v147 = v72;
      swift_storeEnumTagMultiPayload();
      sub_1CF1DBC74(v73, v67);
    }

    v74 = v154;
    sub_1CEFCCBDC(v67, v154, &qword_1EC4BE000, &unk_1CFA006A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&aBlock = *v74;
      v75 = aBlock;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFCCC44(v67, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v60);

      v76 = v75;
      LODWORD(aBlock) = sub_1CF9E52A8();
      sub_1CF196978();
      v77 = sub_1CF9E5658();

      v39 = v170;
      v38 = v171;
      if ((v77 & 1) == 0)
      {
        v36 = v167;
        v41 = v172;
        v66 = v174;
        if ((v175 & 0x80000000) == 0)
        {
          close(v175);
        }

        goto LABEL_57;
      }

      v78 = v150;
      *v150 = v142;
      *(v78 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v36 = v167;
      v79 = v149;
    }

    else
    {

      v80 = v74;
      v78 = v150;
      sub_1CEFE55D0(v80, v150, &unk_1EC4BE2F0, qword_1CFA04220);
      sub_1CEFCCC44(v67, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v60);

      v36 = v167;
      v79 = v149;
      v39 = v170;
      v38 = v171;
    }

    v41 = v172;
    v66 = v174;
    v81 = v151;
    if ((v175 & 0x80000000) == 0)
    {
      close(v175);
    }

    sub_1CEFE55D0(v78, v81, &unk_1EC4BE2F0, qword_1CFA04220);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1CEFCCC44(v81, &unk_1EC4BE2F0, qword_1CFA04220);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      v191 = aBlock;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA5B3B0);
      LODWORD(aBlock) = v144;
      v128 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v128);

      MEMORY[0x1D3868CC0](0x6168206874697720, 0xED00003D656C646ELL);
      *&aBlock = v39;
      *(&aBlock + 1) = v41;
      v183 = __PAIR64__(v38, v173);
      v184 = v158;
      v185 = v36;
      sub_1CF9E7B58();

      v41 = *(&v191 + 1);
      v66 = v191;
      goto LABEL_91;
    }

    v82 = v81;
    v83 = v148;
    sub_1CF5634F4(v82, v148);
    sub_1CF5634F4(v83, v79);
    v84 = v169;
    sub_1CF7DEC8C(v79, v164, v163, v162, v152);
    if (!v84)
    {
      sub_1CF574A68(v79);

      goto LABEL_94;
    }

    v75 = v84;
    sub_1CF574A68(v79);
    v169 = 0;
LABEL_57:
    v112 = v75;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v113 = sub_1CF9E5658();

    if ((v113 & 1) == 0 || v66 >= v176[2])
    {
      v116 = v75;
      LODWORD(aBlock) = sub_1CF9E5298();
      v117 = sub_1CF9E5658();

      if ((v117 & 1) != 0 && v66 < v176[2])
      {

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v118 = swift_allocObject();
        *(v118 + 16) = v161;
        *(v118 + 56) = MEMORY[0x1E69E6158];
        *(v118 + 64) = sub_1CEFD51C4();
        v119 = v143;
        *(v118 + 32) = 0xD000000000000031;
        *(v118 + 40) = v119;
        sub_1CF9E6018();

        v157 = 1;
        goto LABEL_80;
      }

      v120 = v75;
      LODWORD(aBlock) = sub_1CF9E5358();
      v121 = sub_1CF9E5658();

      if ((v121 & 1) != 0 && v66 < v176[2])
      {

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v122 = swift_allocObject();
        *(v122 + 16) = v161;
        *(v122 + 56) = MEMORY[0x1E69E6158];
        *(v122 + 64) = sub_1CEFD51C4();
        *(v122 + 32) = 0xD000000000000032;
        *(v122 + 40) = v141;
        sub_1CF9E6018();

        v39 = 0;
        v41 = 0;
        v38 = 0;
        v158 = 0;
        v36 = 0;
        v40 = v144;
      }

      else
      {
        v123 = v75;
        LODWORD(aBlock) = sub_1CF9E52B8();
        v124 = sub_1CF9E5658();

        if ((v124 & 1) == 0 || v66 >= v176[2])
        {

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&aBlock = 0xD000000000000012;
          *(&aBlock + 1) = 0x80000001CFA5B250;
          LODWORD(v191) = v144;
          v130 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v130);

          sub_1CF7E16A8(v75, aBlock, *(&aBlock + 1));

          goto LABEL_93;
        }

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v125 = swift_allocObject();
        *(v125 + 16) = v161;
        *(v125 + 56) = MEMORY[0x1E69E6158];
        *(v125 + 64) = sub_1CEFD51C4();
        v126 = v146;
        *(v125 + 32) = 0xD000000000000031;
        *(v125 + 40) = v126;
        sub_1CF9E6018();

LABEL_80:
        v40 = v173;
      }

      v37 = v159;
      v115 = v176;
      goto LABEL_82;
    }

    if (v157)
    {
      break;
    }

    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v114 = swift_allocObject();
    *(v114 + 16) = v161;
    *(v114 + 56) = MEMORY[0x1E69E6158];
    *(v114 + 64) = sub_1CEFD51C4();
    *(v114 + 32) = 0xD000000000000032;
    *(v114 + 40) = v145;
    sub_1CF9E6018();

    v157 = 0;
    if (v66 >= 3)
    {
      v66 = 3;
    }

    v115 = &unk_1F4BED688;
    v40 = v173;
    v37 = v159;
LABEL_82:
    if (v66 >= v115[2])
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v176 = v115;
    v34 = usleep(*(v115 + v66 + 8));
    v174 = v66 + 1;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA5B370);
  LODWORD(v191) = v144;
  v131 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v131);

  v41 = *(&aBlock + 1);
  v66 = aBlock;
LABEL_91:
  if (qword_1EDEA3408 == -1)
  {
    goto LABEL_92;
  }

LABEL_97:
  swift_once();
LABEL_92:
  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v132 = swift_allocObject();
  *(v132 + 16) = v161;
  *(v132 + 56) = MEMORY[0x1E69E6158];
  *(v132 + 64) = sub_1CEFD51C4();
  *(v132 + 32) = v66;
  *(v132 + 40) = v41;
  sub_1CF9E6018();
LABEL_93:

  result = (*(v135 + 56))(v152, 1, 1, v136);
LABEL_94:
  v133 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7E16A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD908, &unk_1CF9FA540);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = sub_1CF9E53C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v47 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v22 = swift_dynamicCast();
  v23 = *(v11 + 56);
  if (v22)
  {
    v23(v9, 0, 1, v10);
    (*(v11 + 32))(v20, v9, v10);
    v24 = sub_1CF008708(&unk_1F4BED5F8);
    sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57A8();
    v25 = sub_1CF9E6148();
    v26 = sub_1CF008830(v25, v24);

    if (v26)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1CF9FA440;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1CEFD51C4();
      *(v27 + 32) = a2;
      *(v27 + 40) = a3;

      sub_1CF9E57A8();
      v28 = sub_1CF9E6148();
      v29 = MEMORY[0x1E69E7358];
      *(v27 + 96) = MEMORY[0x1E69E72F0];
      *(v27 + 104) = v29;
      *(v27 + 72) = v28;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1CF9FA440;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1CEFD51C4();
      *(v36 + 32) = a2;
      *(v36 + 40) = a3;

      sub_1CF9E57A8();
      v37 = sub_1CF9E6148();
      v38 = MEMORY[0x1E69E7358];
      *(v36 + 96) = MEMORY[0x1E69E72F0];
      *(v36 + 104) = v38;
      *(v36 + 72) = v37;
    }

    sub_1CF9E6018();

    return (*(v11 + 8))(v20, v10);
  }

  else
  {
    v23(v9, 1, 1, v10);
    sub_1CEFCCC44(v9, &qword_1EC4BD908, &unk_1CF9FA540);
    v47 = a1;
    v30 = a1;
    if (swift_dynamicCast())
    {
      v46 = *(v11 + 8);
      v46(v18, v10);
      v47 = a1;
      v31 = a1;
      swift_dynamicCast();
      sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v32 = sub_1CF9E6148();
      if (sub_1CF008830(v32, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1CF9FA440;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = sub_1CEFD51C4();
        *(v33 + 32) = a2;
        *(v33 + 40) = a3;

        sub_1CF9E57A8();
        v34 = sub_1CF9E6148();
        v35 = MEMORY[0x1E69E7358];
        *(v33 + 96) = MEMORY[0x1E69E72F0];
        *(v33 + 104) = v35;
        *(v33 + 72) = v34;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1CF9FA440;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1CEFD51C4();
        *(v42 + 32) = a2;
        *(v42 + 40) = a3;

        sub_1CF9E57A8();
        v43 = sub_1CF9E6148();
        v44 = MEMORY[0x1E69E7358];
        *(v42 + 96) = MEMORY[0x1E69E72F0];
        *(v42 + 104) = v44;
        *(v42 + 72) = v43;
      }

      sub_1CF9E6018();

      return (v46)(v15, v10);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1CF9FA440;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = sub_1CEFD51C4();
      *(v40 + 32) = a2;
      *(v40 + 40) = a3;

      v41 = sub_1CF9E57E8();
      *(v40 + 96) = sub_1CF1B7E64();
      *(v40 + 104) = sub_1CF7E1F1C(&qword_1EC4C11C0, sub_1CF1B7E64);
      *(v40 + 72) = v41;
      sub_1CF9E6018();
    }
  }
}

uint64_t sub_1CF7E1F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF7E1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t static DispatchTime.notifyUpdateTimeout()()
{
  v0 = sub_1CF9E6498();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6478();
  sub_1CF9E64C8();
  return (*(v1 + 8))(v4, v0);
}

BOOL sub_1CF7E208C(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 119);
  }

  sub_1CEFFBA1C(v12);
  v27 = sub_1CF9E5A18();
  v28 = v13;
  v26 = *(v3 + 8);
  v26(v12, v2);
  v14 = 0;
  v29 = *(a1 + 16);
  v30 = v3 + 16;
  do
  {
    v17 = v14;
    if (v29 == v14)
    {
      break;
    }

    v18 = a1;
    v19 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14;
    v20 = *(v3 + 16);
    v20(v10, v19, v2);
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
    }

    sub_1CF9E5A18();
    v21 = sub_1CF9E6AE8();

    if (v21)
    {
      v22 = sub_1CF9E5A18();
      v31 = 0x657461766972702FLL;
      v32 = 0xE800000000000000;
      MEMORY[0x1D3868CC0](v22);

      sub_1CF9E58C8();
    }

    else
    {
      v20(v7, v10, v2);
    }

    a1 = v18;
    sub_1CF9E5A18();
    v15 = v26;
    v26(v7, v2);
    v16 = sub_1CF9E6AE8();

    v15(v10, v2);
    v14 = v17 + 1;
  }

  while ((v16 & 1) == 0);
  v23 = v29 != v17;

  return v23;
}

void sub_1CF7E2388()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E5928();
  v1 = sub_1CF9E6EB8();
  v2 = *MEMORY[0x1E695DB80];
  v7[0] = 0;
  v3 = [v0 setResourceValue:v1 forKey:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7E2460()
{
  v0 = sub_1CF9E5A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 140);
  }

  sub_1CEFFBA1C(v4);
  v5 = sub_1CF9E5A18();
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_1CEFFBA1C(v4);
  sub_1CF9E5A18();
  v8(v4, v0);
  if (sub_1CF9E6AE8())
  {
    sub_1CF9E69D8();

    v9 = sub_1CF9E6A18();
    v10 = sub_1CF025150(v9, v5, v7);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = MEMORY[0x1D3868C10](v10, v12, v14, v16);

    return v17;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1CF7E2674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_1CF50EB9C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CF005DF8;
  v9[3] = &block_descriptor_16_0;
  v7 = _Block_copy(v9);

  LODWORD(a1) = fpfs_open();
  _Block_release(v7);
  *a3 = a1;
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF7E27B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for LocalDomain();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v27 - v12);
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  v22 = [a1 documentsURL];
  sub_1CF9E59D8();

  sub_1CEFFBA1C(v21);
  v23 = *(v15 + 8);
  v23(v19, v14);
  sub_1CF9E5A18();
  v24 = sub_1CF9E6AE8();

  if (v24)
  {
    sub_1CF004C30(v28, v9);
    sub_1CF00095C(a1, v9, v13);
    v23(v21, v14);
    v25 = type metadata accessor for LocalContainer(0);
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    sub_1CF7E2AA4(v13, v29);
  }

  else
  {
    v23(v21, v14);
  }

  return (v24 & 1) == 0;
}

uint64_t sub_1CF7E2A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF7E2AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7E2B44()
{
  sub_1CF518D90();
  result = sub_1CF9E75B8();
  qword_1EDEBB5A0 = result;
  return result;
}

uint64_t sub_1CF7E2BAC()
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v0 = sub_1CF9E6AE8();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v1 = sub_1CF9E6A18();

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = sub_1CF025150(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (!((v4 ^ v6) >> 14))
  {

    return 0;
  }

  v11 = sub_1CF0254A0(v4, v6, v8, v10, 10);
  if ((v12 & 0x100) != 0)
  {
    v11 = sub_1CF4C53EC(v4, v6, v8, v10, 10);
  }

  v13 = v11;
  v14 = v12;

  if (v14)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_1CF7E2CEC()
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v0 = sub_1CF9E6AE8();

  if ((v0 & 1) == 0)
  {
    goto LABEL_9;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v1 = sub_1CF9E6A18();

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = sub_1CF025150(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (!((v4 ^ v6) >> 14))
  {

LABEL_9:
    v13 = 0;
    LOBYTE(v12) = 1;
    return v13 | ((v12 & 1) << 32);
  }

  v11 = sub_1CF4C5F04(v4, v6, v8, v10, 10);
  if ((v11 & 0x10000000000) != 0)
  {
    v11 = sub_1CF4C597C(v4, v6, v8, v10, 10);
  }

  v12 = (v11 & 0x100000000uLL) >> 32;
  v13 = v11;
  if ((v11 & 0x100000000) != 0)
  {
    v13 = 0;
  }

  return v13 | ((v12 & 1) << 32);
}

uint64_t sub_1CF7E2E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7E2EF0(uint64_t a1, __int16 a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CF1F77F0(0, v5[2] + 1, 1, v5);
    v5 = result;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    result = sub_1CF1F77F0((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  *(v9 + 40) = a2;
  *(v9 + 41) = HIBYTE(a2) & 1;
  *v2 = v5;
  return result;
}

uint64_t sub_1CF7E2FC8(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a2(0, *(v9 + 16) + 1, 1, v9);
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v9 = a2(v10 > 1, v11 + 1, 1, v9);
  }

  *(v9 + 16) = v11 + 1;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  result = sub_1CEFE55D0(a1, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, a3, a4);
  *v4 = v9;
  return result;
}

__n128 sub_1CF7E3104(__int128 *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = a2(0, *(v5 + 16) + 1, 1, v5);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = a2(v6 > 1, v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 120 * v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v11;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  result = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  *(v8 + 144) = *(a1 + 28);
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = result;
  *v2 = v5;
  return result;
}

uint64_t sub_1CF7E3230(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = a1;
  *v2 = v5;
  return result;
}

uint64_t sub_1CF7E32DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a2);
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  if (os_log_type_enabled(v16, v17))
  {
    HIDWORD(v38) = v17;
    v39 = v11;
    v40 = v10;
    v41 = a3;
    v42 = a4;
    v43 = v5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v46 = v19;
    *v18 = 136315394;
    v20 = sub_1CEFD11AC(a2);
    v22 = v21;
    sub_1CEFD0A98(a2);
    v23 = sub_1CEFD0DF0(v20, v22, &v46);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = swift_beginAccess();
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v28 = v26;
      v29 = NSFileProviderItemIdentifier.description.getter();
      v31 = v30;
      sub_1CEFD0994(v26, v27, 1);
    }

    else
    {
      v44 = *(a1 + 32);
      v45 = v27;
      v29 = VFSItemID.description.getter(v24, v25);
      v31 = v32;
    }

    v33 = sub_1CEFD0DF0(v29, v31, &v46);

    *(v18 + 14) = v33;
    _os_log_impl(&dword_1CEFC7000, v16, BYTE4(v38), "🥄 Forcing ingestion for %s with item ID %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v19, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    (*(v39 + 8))(v14, v40);
    a4 = v42;
    v5 = v43;
    a3 = v41;
  }

  else
  {

    sub_1CEFD0A98(a2);

    (*(v11 + 8))(v14, v10);
  }

  v34 = *(v5 + 16);
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = v5;
  v36[4] = a2;
  v36[5] = a3;
  v36[6] = a4;

  sub_1CEFD09A0(a2);

  sub_1CF7AAF88("propagateToFP(for:userRequest:completionHandler:)", 49, 2, 2, sub_1CF8FE5D4, v35, sub_1CF8FE638, v36);
}

uint64_t sub_1CF7E3680(uint64_t a1, void (*a2)(char *, _OWORD *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v10 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  a2(v7, v10, a1);
  sub_1CEFCCC44(v10, &qword_1EC4C0700, &qword_1CFA05B10);
  return sub_1CEFCCC44(v7, &qword_1EC4C1B40, &unk_1CF9FCB70);
}

void sub_1CF7E37A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void *a6)
{
  v124 = a5;
  v125 = a6;
  v123 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = v105 - v11;
  v113 = sub_1CF9E63D8();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v122 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v127 = v105 - v18;
  v19 = sub_1CF9E6068();
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = v120[8];
  MEMORY[0x1EEE9AC00](v19);
  v118 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v116 = v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = v105 - v26;
  v117 = type metadata accessor for Signpost(0);
  v119 = *(v117 - 8);
  v27 = *(v119 + 8);
  MEMORY[0x1EEE9AC00](v117);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v105 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v105 - v32;
  v35 = a1[3];
  v34 = a1[4];
  v114 = a1;
  v36 = __swift_project_boxed_opaque_existential_1(a1, v35);
  v37 = a3;
  v38 = *(a3 + 16);
  v39 = v128;
  sub_1CF554678(v38, 0, v36, v35, v34, &v134);
  if (!v39)
  {
    v40 = v123;
    v107 = v27;
    v108 = v30;
    v109 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v38;
    v110 = v33;
    v128 = 0;
    v42 = v134;
    v43 = v135;
    if (v136)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v45 = v115;
      (*(*(v44 - 8) + 56))(v115, 1, 1, v44);
      sub_1CF1A91AC(v114, &aBlock);
      v46 = FPItemNotFoundError();
      (v124)(v45, &aBlock, v46);

      sub_1CEFD0994(v42, v43, 1);
      sub_1CEFCCC44(&aBlock, &qword_1EC4C0700, &qword_1CFA05B10);
      sub_1CEFCCC44(v45, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v40;
      *(v47 + 24) = a2;
      v48 = v125;
      *(v47 + 32) = v124;
      *(v47 + 40) = v48;
      v105[1] = v37;
      *(v47 + 48) = v37;
      *(v47 + 56) = v42;
      *(v47 + 64) = v43;
      v49 = swift_allocObject();
      *(v49 + 16) = v42;
      *(v49 + 24) = v43;
      *(v49 + 32) = v40;
      *(v49 + 40) = v41;
      *(v49 + 48) = sub_1CF8FE664;
      *(v49 + 56) = v47;
      v115 = v49;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1CF8FE664;
      *(v50 + 24) = v47;
      v124 = v50;
      v51 = *(v41 + qword_1EDEBBC38);
      sub_1CEFD09A0(v40);

      sub_1CEFD09A0(v40);
      v123 = v47;

      v106 = v41;

      v125 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v52 = qword_1EDEBBE40;
      v53 = v120;
      v54 = v121;
      v55 = v126;
      (v120[7])(v126, 1, 1, v121);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v56 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v56);

      v57 = *(&aBlock + 1);
      v114 = aBlock;
      v58 = v116;
      sub_1CEFCCBDC(v55, v116, &unk_1EC4BED20, &unk_1CFA00700);
      v59 = v53[6];
      v60 = v59(v58, 1, v54);
      v61 = v110;
      v62 = v118;
      if (v60 == 1)
      {
        v63 = v52;
        sub_1CF9E6048();
        if (v59(v58, 1, v54) != 1)
        {
          sub_1CEFCCC44(v58, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (v53[4])(v118, v58, v54);
      }

      (v53[2])(v61, v62, v54);
      v64 = v117;
      *(v61 + *(v117 + 20)) = v52;
      v65 = v61 + *(v64 + 24);
      *v65 = "DB queue wait";
      *(v65 + 8) = 13;
      *(v65 + 16) = 2;
      v66 = v52;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v67 = v61;
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1CF9FA450;
      *(v68 + 56) = MEMORY[0x1E69E6158];
      *(v68 + 64) = sub_1CEFD51C4();
      *(v68 + 32) = v114;
      *(v68 + 40) = v57;
      sub_1CF9E6028();

      (v53[1])(v62, v54);
      sub_1CEFCCC44(v126, &unk_1EC4BED20, &unk_1CFA00700);
      v120 = *(v106 + 168);
      v126 = *(v106 + 64);
      v69 = sub_1CF9E6448();
      v70 = *(v69 - 8);
      v117 = v69;
      v118 = v70;
      (*(v70 + 7))(v127, 1, 1, v69);
      v71 = v67;
      v72 = v108;
      sub_1CEFDA34C(v67, v108, type metadata accessor for Signpost);
      v73 = (*(v119 + 80) + 16) & ~*(v119 + 80);
      v74 = (v107 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v119 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v72, v75 + v73, type metadata accessor for Signpost);
      v76 = (v75 + v74);
      v121 = sub_1CF902CD4;
      v77 = v124;
      *v76 = sub_1CF902CD4;
      v76[1] = v77;
      v78 = v71;
      v79 = v109;
      sub_1CEFDA34C(v78, v109, type metadata accessor for Signpost);
      v80 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 25) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      sub_1CEFDA0C4(v79, v84 + v73, v119);
      v85 = (v84 + v74);
      *v85 = sub_1CF045408;
      v85[1] = 0;
      *(v84 + v80) = v106;
      v86 = v84 + v81;
      v87 = v117;
      *v86 = "propagateToFP(itemID:request:completion:)";
      *(v86 + 8) = 41;
      *(v86 + 16) = 2;
      v88 = (v84 + v82);
      v89 = v124;
      *v88 = v121;
      v88[1] = v89;
      v90 = (v84 + v83);
      v91 = v115;
      *v90 = sub_1CF9033DC;
      v90[1] = v91;
      v92 = swift_allocObject();
      v92[2] = sub_1CF903308;
      v92[3] = v75;
      v93 = v120;
      v92[4] = v120;
      swift_retain_n();

      v121 = v75;
      v94 = v118;

      v95 = fpfs_current_log();
      v120 = v93[2];
      v96 = v122;
      sub_1CEFCCBDC(v127, v122, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v94 + 6))(v96, 1, v87) == 1)
      {
        sub_1CEFCCC44(v96, &unk_1EC4BE370, qword_1CFA01B30);
        v97 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v98 = v111;
        sub_1CF9E6438();
        (*(v94 + 1))(v96, v87);
        v97 = sub_1CF9E63C8();
        (*(v112 + 8))(v98, v113);
      }

      v99 = swift_allocObject();
      v99[2] = v95;
      v99[3] = sub_1CF4858EC;
      v99[4] = v84;
      v132 = sub_1CF2BA17C;
      v133 = v99;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v130 = sub_1CEFCA444;
      v131 = &block_descriptor_4385;
      v100 = _Block_copy(&aBlock);
      v101 = v95;

      v132 = sub_1CF2BA180;
      v133 = v92;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v130 = sub_1CEFCA444;
      v131 = &block_descriptor_4388;
      v102 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v120, v126, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v97, v100, v102);
      _Block_release(v102);
      _Block_release(v100);

      sub_1CEFCCC44(v127, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v110, type metadata accessor for Signpost);
      v103 = v125;
      v104 = fpfs_adopt_log();
    }
  }
}