id sub_1BB5EA9AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2E0);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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

void *sub_1BB5EAB18()
{
  v1 = v0;
  v29 = sub_1BB6BA7F4();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBA0);
  v3 = *v0;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BB5EAD80()
{
  v1 = v0;
  v29 = sub_1BB6BA844();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CB98);
  v3 = *v0;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1BB5BA078(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1BB593648(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BB5EB008()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBA8);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = (*(v4 + 56) + 32 * v17);
        *v23 = v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
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

void *sub_1BB5EB190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C208);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

void *sub_1BB5EB2DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C200);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

void *sub_1BB5EB428()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B0);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

void *sub_1BB5EB59C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBB0);
  v2 = *v0;
  v3 = sub_1BB6BB574();
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

char *sub_1BB5EB6F8()
{
  v1 = v0;
  v31 = sub_1BB6BA844();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2A8);
  v3 = *v0;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1BB5EB968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
  v31 = a1;
  v10 = sub_1BB6BAB74();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1BB5EEEC4(&qword_1EBC5C298, 255, MEMORY[0x1E69695A8]);
      v19 = sub_1BB6BABE4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BB5AF050();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1BB5EBD08(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1BB5EBC18(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1BB6BB914();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BB5AEBEC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1BB5EC014(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_1BB5EBD08(int64_t a1)
{
  v3 = sub_1BB6BA844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1BB6BB254();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
        v23 = sub_1BB6BAB74();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_1BB5EC014(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BB6BB254();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1BB6BB914() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1BB5EC198(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BB5EC1E8(__int128 *a1, uint64_t a2)
{
  v4 = sub_1BB6BA844();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_1BB6BB964();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
    v21 = sub_1BB6BAB74();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1BFB117B0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB5EC418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v9 = sub_1BB6BA654();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v40 = a2;
  v19 = sub_1BB6BAC04();
  v20 = [objc_opt_self() bundleWithIdentifier_];

  if (!v20)
  {
    __break(1u);
  }

  v21 = [v20 bundleURL];
  sub_1BB6BA634();

  sub_1BB6BA614();
  v39 = a6;
  sub_1BB6BA614();
  v42 = v20;
  v22 = *(v10 + 8);
  v41 = v10 + 8;
  v22(v13, v9);
  v23 = [objc_opt_self() defaultManager];
  sub_1BB6BA644();
  v24 = sub_1BB6BAC04();

  LOBYTE(v21) = [v23 fileExistsAtPath_];

  if ((v21 & 1) == 0)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000027, 0x80000001BB6CC940);
    MEMORY[0x1BFB10B60](a1, v40);
    MEMORY[0x1BFB10B60](0x4673746573736120, 0xEE003D7265646C6FLL);
    MEMORY[0x1BFB10B60](v43, v44);
    MEMORY[0x1BFB10B60](0x6F466C65646F6D20, 0xED00003D7265646CLL);
    MEMORY[0x1BFB10B60](v45, v39);
    v27 = v46;
    v30 = v47;
    sub_1BB5A8D60();
    swift_allocError();
    *v31 = v27;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0;
    swift_willThrow();

    v22(v16, v9);
    v32 = v18;
    v33 = v9;
LABEL_14:
    v22(v32, v33);
    return v27;
  }

  v25 = v18;
  sub_1BB6BA624();
  sub_1BB6BA644();
  v22(v13, v9);
  context = espresso_create_context();
  if (context)
  {
    v27 = context;
    v45 = v16;
    if (espresso_create_plan())
    {
      v46 = 0;
      LODWORD(v47) = 0;
      sub_1BB6BACA4();

      v28 = espresso_plan_add_network();

      if (v28)
      {
        v27 = 0x80000001BB6CC9E0;
        sub_1BB5A8D60();
        swift_allocError();
        *v29 = 0xD00000000000001ELL;
      }

      else
      {
        if (!espresso_plan_build())
        {

          v22(v45, v9);
          v22(v25, v9);
          return v27;
        }

        v27 = 0x80000001BB6CCA00;
        sub_1BB5A8D60();
        swift_allocError();
        *v29 = 0xD00000000000001DLL;
      }

      *(v29 + 8) = v27;
      *(v29 + 16) = 0;
      swift_willThrow();

      v22(v45, v9);
      v32 = v25;
      v33 = v9;
      goto LABEL_14;
    }

    v27 = 0x80000001BB6CC9C0;
    sub_1BB5A8D60();
    swift_allocError();
    *v36 = 0xD00000000000001DLL;
    *(v36 + 8) = 0x80000001BB6CC9C0;
    *(v36 + 16) = 0;
    swift_willThrow();

    v35 = v45;
  }

  else
  {

    v27 = 0x80000001BB6CC990;
    sub_1BB5A8D60();
    swift_allocError();
    *v34 = 0xD000000000000020;
    *(v34 + 8) = 0x80000001BB6CC990;
    *(v34 + 16) = 0;
    swift_willThrow();

    v35 = v16;
  }

  v22(v35, v9);
  v22(v18, v9);
  return v27;
}

uint64_t type metadata accessor for DKISSModel()
{
  result = qword_1EBC5CB10;
  if (!qword_1EBC5CB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5ECA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BB6BACA4();
  v5 = espresso_network_bind_buffer();

  if (v5)
  {
    sub_1BB6BB2F4();

    MEMORY[0x1BFB10B60](a2, a3);
    sub_1BB5A8D60();
    swift_allocError();
    *v7 = 0xD00000000000001BLL;
    *(v7 + 8) = 0x80000001BB6CC920;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BB5ECBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BB6BACA4();
  v5 = espresso_network_bind_buffer();

  if (v5)
  {
    sub_1BB6BB2F4();

    MEMORY[0x1BFB10B60](a2, a3);
    sub_1BB5A8D60();
    swift_allocError();
    *v7 = 0xD00000000000001CLL;
    *(v7 + 8) = 0x80000001BB6CC900;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BB5ECCC0(double *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v84.origin.x = v10;
  v84.origin.y = v11;
  v84.size.width = v12;
  v84.size.height = v13;
  Width = CGRectGetWidth(v84);
  v85.origin.x = v10;
  v85.origin.y = v11;
  v85.size.width = v12;
  v85.size.height = v13;
  Height = CGRectGetHeight(v85);
  MidX = CGRectGetMidX(*(v9 + 24));
  MidY = CGRectGetMidY(*(v9 + 24));
  v18 = *(v9 + 88);
  v19 = *(v9 + 80);
  v20 = v19 * 0.318;
  v21 = *(v9 + 96);
  v22 = v21 * 0.318;
  v23 = 0.0;
  if (*(v9 + 104))
  {
    *&v6 = 0.0;
  }

  else
  {
    *&v6 = v22;
  }

  v24 = *(v9 + 112);
  v25 = v24 * 0.318;
  if (*(v9 + 120))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C018);
  v27 = swift_allocObject();
  v28 = v27;
  v81 = v18;
  if (v18)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v20;
  }

  *(v27 + 16) = xmmword_1BB6BC7F0;
  *(v27 + 32) = v29;
  v30 = v27 + 32;
  *(v27 + 36) = v6;
  *(v27 + 40) = v26;
  v31 = sub_1BB6BAE94();
  *(v31 + 32) = 0u;
  v32 = (v31 + 32);
  *(v31 + 16) = 51;
  *(v31 + 220) = 0u;
  *(v31 + 192) = 0u;
  *(v31 + 208) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 176) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 144) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 112) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 80) = 0u;
  *(v31 + 48) = 0u;
  if (*(v9 + 160))
  {
    v34 = 0.0;
  }

  else
  {
    v33 = *(v9 + 152);
    v34 = v33;
  }

  if (!*(v9 + 144))
  {
    v35 = *(v9 + 136);
    v23 = v35;
  }

  v36 = *(v9 + 128);
  if (!v36)
  {
    goto LABEL_47;
  }

  v5 = *(v36 + 16);
  v37 = *(v5 + 16);
  if (!v37)
  {

LABEL_46:

    goto LABEL_47;
  }

  v38 = v37 - 1;
  v39 = 51;
  if (v37 - 1 < 0x33)
  {
    v39 = v37 - 1;
  }

  if (v37 <= 0x10)
  {
    goto LABEL_32;
  }

  if (v38 >= 0x33)
  {
    v38 = 51;
  }

  if (v32 >= v5 + 24 * v38 + 40 || v5 + 32 >= v31 + 4 * v38 + 36)
  {
    v41 = v39 + 1;
    v42 = v41 & 7;
    if ((v41 & 7) == 0)
    {
      v42 = 8;
    }

    v43 = v41 - v42;
    v44 = (v5 + 128);
    v45 = (v31 + 48);
    v46 = v43;
    do
    {
      v47 = v44 - 12;
      v48 = vld3q_f64(v47);
      v49 = v44 - 6;
      v50 = vld3q_f64(v49);
      v51 = v44;
      v52 = vld3q_f64(v51);
      v51 += 6;
      v53 = vld3q_f64(v51);
      v45[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v50);
      *v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v53);
      v44 += 24;
      v45 += 2;
      v46 -= 8;
    }

    while (v46);
  }

  else
  {
LABEL_32:
    v43 = 0;
  }

  v54 = 24 * v43 + 32;
  do
  {
    if (v43 > 0x32)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v55 = *(v5 + v54);
    v32[v43] = v55;
    v54 += 24;
    ++v43;
  }

  while (v37 != v43);

  v37 = *(*(v36 + 16) + 16);
  if (!v37)
  {
    goto LABEL_46;
  }

  v57 = 0;
  v58 = 40;
  do
  {
    if ((v57 + 17) >= *(v31 + 16))
    {
      goto LABEL_65;
    }

    v59 = *(v56 + v58);
    *(v31 + 100 + 4 * v57) = v59;
    v58 += 24;
    ++v57;
  }

  while (v37 != v57);

  v5 = *(v36 + 16);
  v37 = *(v5 + 16);
  if (!v37)
  {
    goto LABEL_46;
  }

  v60 = 0;
  v61 = 48;
  do
  {
    if ((v60 + 34) >= *(v31 + 16))
    {
      goto LABEL_66;
    }

    v62 = *(v5 + v61);
    *(v31 + 168 + 4 * v60) = v62;
    v61 += 24;
    ++v60;
  }

  while (v37 != v60);

LABEL_47:
  v63 = MEMORY[0x1E69E6158];
  if (*(v9 + 64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C048);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1BB6BD520;
    *(v64 + 56) = v63;
    *(v64 + 32) = 0xD000000000000018;
    *(v64 + 40) = 0x80000001BB6CC8C0;
    sub_1BB6BB904();

    while (1)
    {
      *&v6 = sqrt(Width * Height);
      *&Height = MidX;
      *&Width = MidY;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C048);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BB6BDF30;
      *(v67 + 56) = v63;
      *(v67 + 32) = 0x203A737475706E69;
      *(v67 + 40) = 0xE800000000000000;
      v37 = MEMORY[0x1E69E6448];
      *(v67 + 88) = MEMORY[0x1E69E6448];
      *(v67 + 64) = v6;
      *(v67 + 120) = v37;
      *(v67 + 96) = LODWORD(Height);
      *(v67 + 152) = v37;
      *(v67 + 128) = LODWORD(Width);
      *(v67 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBD8);
      *(v67 + 160) = v28;
      *(v67 + 216) = v37;
      *(v67 + 192) = v34;
      *(v67 + 248) = v37;
      *(v67 + 224) = v23;

      sub_1BB6BB904();

      v36 = a2 * a5;
      if ((a2 * a5) >> 64 != (a2 * a5) >> 63)
      {
        break;
      }

      *(a3 + 4 * v36) = v6;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_68;
      }

      *(a3 + 4 * (v36 + 1)) = LODWORD(Height);
      if (__OFADD__(v36, 2))
      {
        goto LABEL_69;
      }

      *(a3 + 4 * (v36 + 2)) = LODWORD(Width);
      if (__OFADD__(v36, 3))
      {
        goto LABEL_70;
      }

      v68 = &unk_1F3A48630;
      if (v81)
      {
        v68 = &unk_1F3A48658;
      }

      *(a3 + 4 * (v36 + 3)) = v68[4];

      if (__OFADD__(v36, 5))
      {
        goto LABEL_71;
      }

      v69 = a3 + 4 * (v36 + 5);
      *v69 = *v30;
      *(v69 + 8) = *(v30 + 8);

      if (__OFADD__(v36, 8))
      {
        goto LABEL_72;
      }

      *(a3 + 4 * (v36 + 8)) = v34;
      if (__OFADD__(v36, 9))
      {
        goto LABEL_73;
      }

      *(a3 + 4 * (v36 + 9)) = v23;
      if (!__OFADD__(v36, 10))
      {
        v70 = (a3 + 4 * (v36 + 10));
        *v70 = *v32;
        v71 = *(v31 + 48);
        v72 = *(v31 + 64);
        v73 = *(v31 + 96);
        v70[3] = *(v31 + 80);
        v70[4] = v73;
        v70[1] = v71;
        v70[2] = v72;
        v74 = *(v31 + 112);
        v75 = *(v31 + 128);
        v76 = *(v31 + 160);
        v70[7] = *(v31 + 144);
        v70[8] = v76;
        v70[5] = v74;
        v70[6] = v75;
        v77 = *(v31 + 176);
        v78 = *(v31 + 192);
        v79 = *(v31 + 208);
        *(v70 + 188) = *(v31 + 220);
        v70[10] = v78;
        v70[11] = v79;
        v70[9] = v77;

        *(a4 + 4 * a2) = 1065353216;
        return result;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      result = sub_1BB6B0FE8(v36);
      v36 = result;
      a2 = v37;
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

LABEL_51:
      if (*(v36 + 16) <= a2)
      {
        goto LABEL_77;
      }

      v66 = v36 + 16 * a2;
      *(v66 + 32) = v5;
      *(v66 + 40) = v6;
      *(v82 + v9) = v36;
      v63 = MEMORY[0x1E69E6158];
    }

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
    goto LABEL_74;
  }

  v37 = a2;
  v5 = *(v9 + 56);
  v6 = *(v9 + 16);
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
  v36 = *(v82 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v82 + v9) = v36;
  if ((result & 1) == 0)
  {
    goto LABEL_75;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t keypath_set_13Tm(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t keypath_set_7Tm(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BB5EE094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BB5EE0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BB5EE134()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKISSDetection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DKISSDetection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BB5EE474()
{
  result = qword_1EBC5CB20;
  if (!qword_1EBC5CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB20);
  }

  return result;
}

unint64_t sub_1BB5EE4CC()
{
  result = qword_1EBC5CB28;
  if (!qword_1EBC5CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB28);
  }

  return result;
}

unint64_t sub_1BB5EE524()
{
  result = qword_1EBC5CB30;
  if (!qword_1EBC5CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB30);
  }

  return result;
}

unint64_t sub_1BB5EE57C()
{
  result = qword_1EBC5CB38;
  if (!qword_1EBC5CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB38);
  }

  return result;
}

unint64_t sub_1BB5EE5D4()
{
  result = qword_1EBC5CB40;
  if (!qword_1EBC5CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB40);
  }

  return result;
}

unint64_t sub_1BB5EE62C()
{
  result = qword_1EBC5CB48;
  if (!qword_1EBC5CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB48);
  }

  return result;
}

unint64_t sub_1BB5EE684()
{
  result = qword_1EBC5CB50;
  if (!qword_1EBC5CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB50);
  }

  return result;
}

unint64_t sub_1BB5EE6DC()
{
  result = qword_1EBC5CB58;
  if (!qword_1EBC5CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB58);
  }

  return result;
}

unint64_t sub_1BB5EE734()
{
  result = qword_1EBC5CB60;
  if (!qword_1EBC5CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB60);
  }

  return result;
}

unint64_t sub_1BB5EE78C()
{
  result = qword_1EBC5CB68;
  if (!qword_1EBC5CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB68);
  }

  return result;
}

unint64_t sub_1BB5EE7E4()
{
  result = qword_1EBC5CB70;
  if (!qword_1EBC5CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB70);
  }

  return result;
}

unint64_t sub_1BB5EE83C()
{
  result = qword_1EBC5CB78;
  if (!qword_1EBC5CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB78);
  }

  return result;
}

unint64_t sub_1BB5EE894()
{
  result = qword_1EBC5CB80;
  if (!qword_1EBC5CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB80);
  }

  return result;
}

unint64_t sub_1BB5EE8EC()
{
  result = qword_1EBC5CB88;
  if (!qword_1EBC5CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB88);
  }

  return result;
}

unint64_t sub_1BB5EE944()
{
  result = qword_1EBC5CB90;
  if (!qword_1EBC5CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CB90);
  }

  return result;
}

uint64_t sub_1BB5EE998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D756E656D617266 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

uint64_t sub_1BB5EEAAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4972656B63617274 && a2 == 0xE900000000000064 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BB6CA660 == a2 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x77615965636166 && a2 == 0xE700000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6374695065636166 && a2 == 0xE900000000000068 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C6F5265636166 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7079654B79646F62 && a2 == 0xED000073746E696FLL || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E696B61657073 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696B6F6F6CLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1BB5EEDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5EEE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5EEEC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double *DKAccelerationLimiter.__allocating_init(speed:maxAcceleration:maxDeceleration:profilesEnabled:time:)(char a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  sub_1BB6BA724();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a3;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime;
  v12 = sub_1BB6BA7F4();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) = a1;
  *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 1;
  return v10;
}

uint64_t DKAccelerationLimiter.Profile.hashValue.getter()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

double *DKAccelerationLimiter.init(speed:maxAcceleration:maxDeceleration:profilesEnabled:time:)(char a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_1BB6BA724();
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = a3;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime;
  v12 = sub_1BB6BA7F4();
  (*(*(v12 - 8) + 32))(v5 + v11, a2, v12);
  *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) = a1;
  *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 1;
  return v5;
}

double sub_1BB5EF174(uint64_t a1, double a2)
{
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled))
  {
    v9 = *(v6 + 16);
    v9(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v5);
    sub_1BB6BA744();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    if (v11 <= 0.0)
    {
LABEL_5:
      v12 = v2[2];
      goto LABEL_7;
    }

    if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile))
    {
      if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) == 1)
      {
        goto LABEL_5;
      }

      v12 = v2[2] + v2[2];
    }

    else
    {
      v12 = v2[2] * 0.5;
    }
  }

  else
  {
    v12 = v2[2];
    v9 = *(v6 + 16);
  }

LABEL_7:
  v13 = v2[3];
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime;
  v9(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime, v5);
  sub_1BB6BA744();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v2[4];
  v18 = (a2 - v17) / v16;
  v19 = fabs(a2);
  v20 = fabs(v17);
  v21 = -v13;
  if (v18 > -v13)
  {
    v21 = (a2 - v17) / v16;
  }

  if (v13 >= v18)
  {
    v22 = (a2 - v17) / v16;
  }

  else
  {
    v22 = v13;
  }

  if (v18 > 0.0)
  {
    v21 = v22;
  }

  v23 = -v12;
  if (v18 > -v12)
  {
    v23 = (a2 - v17) / v16;
  }

  if (v12 >= v18)
  {
    v24 = (a2 - v17) / v16;
  }

  else
  {
    v24 = v12;
  }

  if (v18 > 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v20 >= v19)
  {
    v25 = v21;
  }

  v2[4] = v17 + v16 * v25;
  (*(v6 + 24))(v2 + v14, a1, v5);
  return v2[4];
}

void sub_1BB5EF3D0(char *a1@<X8>)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) == 1 && ((*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v3, v5), sub_1BB6BA744(), v9 = v8, (*(v4 + 8))(v7, v3), v9 > 0.0))
  {
    v10 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile);
  }

  else
  {
    v10 = 1;
  }

  *a1 = v10;
}

_BYTE *sub_1BB5EF510(_BYTE *result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = *result;
    v3 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout;
    v5 = sub_1BB6BA7F4();
    v6 = *(*(v5 - 8) + 24);

    return v6(v2 + v3, a2, v5);
  }

  return result;
}

uint64_t sub_1BB5EF5BC()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6BA724();
  return (*(v2 + 40))(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v4, v1);
}

uint64_t DKAccelerationLimiter.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v2);
  return v0;
}

uint64_t DKAccelerationLimiter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1BB5EF7E8()
{
  result = qword_1EBC5CBE8;
  if (!qword_1EBC5CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CBE8);
  }

  return result;
}

uint64_t type metadata accessor for DKAccelerationLimiter()
{
  result = qword_1EBC5CBF0;
  if (!qword_1EBC5CBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5EF890()
{
  result = sub_1BB6BA7F4();
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

void static DKImageUtil.createCVPixelBuffer(width:height:format:buffer:)(size_t a1, size_t a2, OSType a3, CVPixelBufferRef *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v9;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v10 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, a1, a2, a3, v10, a4);
}

uint64_t DKImageUtil.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

const unsigned __int8 *static DKImageUtil.extractFloatChannels(imageBuffer:)(const unsigned __int8 *__A, uint64_t a2, uint64_t a3)
{
  if ((a3 | a2) < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 * a2;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = __A;
  if (!__A)
  {
    __break(1u);
    return __A;
  }

  if ((v10 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      v7 = sub_1BB6BAE94();
      *(v7 + 16) = v10;
      v8 = (v7 + 32);
      vDSP_vfltu8(v5, 4, (v7 + 32), 1, v10);
      *(v7 + 16) = v10;

      v3 = sub_1BB6BAE94();
      *(v3 + 16) = v10;
      v9 = (v3 + 16);
      v4 = (v3 + 32);
      vDSP_vfltu8(v5 + 1, 4, (v3 + 32), 1, v10);
      *(v3 + 16) = v10;

      v6 = sub_1BB6BAE94();
      *(v6 + 16) = v10;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      v4 = (MEMORY[0x1E69E7CC0] + 32);
      vDSP_vfltu8(__A, 4, (MEMORY[0x1E69E7CC0] + 32), 1, 0);
      *(v3 + 16) = 0;
      v9 = (v3 + 16);

      vDSP_vfltu8(v5 + 1, 4, v4, 1, 0);
      *(v3 + 16) = 0;

      v7 = v3;
      v8 = v4;
      v6 = v3;
    }

    vDSP_vfltu8(v5 + 2, 4, (v6 + 32), 1, v10);
    *(v6 + 16) = v10;
    v5 = *(v7 + 16);

    v11 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v11 = sub_1BB6B0FAC(v7);
LABEL_10:
  vDSP_vsdiv(v8, 1, flt_1F3A48BF8, v11 + 8, 1, v5);

  v12 = *v9;
  v13 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1BB6B0FAC(v3);
  }

  vDSP_vsdiv(v4, 1, flt_1F3A48C20, v13 + 8, 1, v12);

  v14 = *(v6 + 16);
  v15 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1BB6B0FAC(v6);
  }

  vDSP_vsdiv((v6 + 32), 1, flt_1F3A48C48, v15 + 8, 1, v14);

  return v11;
}

uint64_t static DKImageUtil.extractFloatChannels(imageBuffer:reds:greens:blues:order:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, char **a6, char **a7, int a8)
{
  if ((a3 | a2) < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = a3 * a2;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = result;
  if (!result)
  {
    __break(1u);
    return result;
  }

  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_24;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v10 = a8;
    v8 = a7;
    v11 = a6;
    v9 = a5;
    v14 = *a5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1BB59D244(0, *(v14 + 2), 0, v14);
    }

    vDSP_vfltu8(v16, 4, v14 + 8, 1, v15);
    v13 = *v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1BB59D244(0, *(v13 + 2), 0, v13);
    }

    vDSP_vfltu8(v16 + 1, 4, v13 + 8, 1, v15);
    v12 = *v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BB59D244(0, *(v12 + 2), 0, v12);
    }

    vDSP_vfltu8(v16 + 2, 4, v12 + 8, 1, v15);
    v15 = *(v14 + 2);

    v17 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = sub_1BB6B0FAC(v14);
LABEL_13:
  vDSP_vsdiv(v14 + 8, 1, flt_1F3A48C70, v17 + 8, 1, v15);
  *v9 = v17;

  v18 = *(v13 + 2);

  v19 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1BB6B0FAC(v13);
  }

  vDSP_vsdiv(v13 + 8, 1, flt_1F3A48C98, v19 + 8, 1, v18);
  *v11 = v19;

  v20 = *(v12 + 2);

  v21 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1BB6B0FAC(v12);
  }

  vDSP_vsdiv(v12 + 8, 1, flt_1F3A48CC0, v21 + 8, 1, v20);
  *v8 = v21;

  if (v10)
  {
    if (v10 == 0x2000)
    {
      *v9 = v21;
      *v8 = v17;
    }

    else
    {
      sub_1BB5F0EA0();
      swift_allocError();
      *v22 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

CVPixelBufferRef static DKImageUtil.createCVPixelBuffer(from:context:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v3 = _s23IntelligentTrackingCore11DKImageUtilC19createCVPixelBuffer4from7contextSo11CVBufferRefaSgSo7CIImageC_So9CIContextCtFZ_0(v1, v2);

  return v3;
}

CGImageRef static DKImageUtil.createCGImage(from:context:)(__CVBuffer *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a1, 0, v2);
  return v2[0];
}

CVPixelBufferRef static DKImageUtil.rotateCVPixelBufferBy90(buffer:clockwise:)(__CVBuffer *a1, char a2)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v7;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v8 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, Height, Width, 0x42475241u, v8, pixelBufferOut);

  v9 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    v16 = 0;
    v10 = pixelBufferOut[0];
    VTPixelRotationSessionCreate(0, &v16);
    if (v16)
    {
      v11 = *MEMORY[0x1E6983D98];
      v12 = MEMORY[0x1E6984000];
      if ((a2 & 1) == 0)
      {
        v12 = MEMORY[0x1E6983FF8];
      }

      v13 = *v12;
      v14 = v16;
      VTSessionSetProperty(v14, v11, v13);
      VTPixelRotationSessionRotateImage(v14, a1, v10);
      VTPixelRotationSessionInvalidate(v14);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

id static DKImageUtil.copyCIImage(_:)(void *a1)
{
  v1 = [a1 pixelBuffer];
  v3 = sub_1BB5F19E4(v1);

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];

  return v4;
}

uint64_t static DKImageUtil.sampleBufferFromPixelBufferAndTimestamp(time:buffer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for CMFormatDescription(0);
  v5 = a4;
  sub_1BB6BAAC4();
  type metadata accessor for CMSampleBuffer(0);
  v6 = v5;
  sub_1BB6BAAB4();
  return v8;
}

uint64_t sub_1BB5F0640(__CVBuffer *a1, char **a2, uint64_t *a3, uint64_t *a4)
{
  v6 = v4;
  v11 = 1;
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    sub_1BB5F0EA0();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (!BaseAddress)
  {
    sub_1BB5F0EA0();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  v15 = BaseAddress;
  Height = CVPixelBufferGetHeight(a1);
  if ((Height & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = Height;
  Width = CVPixelBufferGetWidth(a1);
  if ((Width & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = Width;
  CVPixelBufferGetBytesPerRow(a1);
  v18 = v5 * v11;
  if ((v5 * v11) >> 64 != (v5 * v11) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v18 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v6 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1BB59D244(0, *(v6 + 2), 0, v6);
    }

    vDSP_vfltu8(v15, 4, v6 + 8, 1, v5 * v11);
    v5 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BB59D244(0, *(v5 + 16), 0, v5);
    }

    vDSP_vfltu8(v15 + 1, 4, (v5 + 32), 1, v18);
    v11 = *a4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BB59D244(0, *(v11 + 16), 0, v11);
    }

    vDSP_vfltu8(v15 + 2, 4, (v11 + 32), 1, v18);
    v15 = *(v6 + 2);

    v19 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v19 = sub_1BB6B0FAC(v6);
LABEL_16:
  vDSP_vsdiv(v6 + 8, 1, flt_1F3A47EC8, v19 + 8, 1, v15);

  v20 = *(v5 + 16);

  v21 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1BB6B0FAC(v5);
  }

  vDSP_vsdiv((v5 + 32), 1, flt_1F3A47EF0, v21 + 8, 1, v20);
  *a3 = v21;

  v22 = *(v11 + 16);

  v23 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1BB6B0FAC(v11);
  }

  vDSP_vsdiv((v11 + 32), 1, flt_1F3A47F18, v23 + 8, 1, v22);

  *a2 = v23;
  *a4 = v19;
  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

uint64_t _s23IntelligentTrackingCore11DKImageUtilC27resizeImageForCVPixelBuffer_06outputJ010dimensionsSbSo11CVBufferRefa_AHSgSo17CMVideoDimensionsatFZ_0(__CVBuffer *a1, void *a2)
{
  pixelTransferSessionOut[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    pixelTransferSessionOut[0] = 0;
    v3 = a2;
    VTPixelTransferSessionCreate(0, pixelTransferSessionOut);
    if (pixelTransferSessionOut[0])
    {
      v4 = *MEMORY[0x1E6983E30];
      v5 = *MEMORY[0x1E69840F0];
      v6 = pixelTransferSessionOut[0];
      VTSessionSetProperty(v6, v4, v5);
      VTPixelTransferSessionTransferImage(v6, a1, v3);
      VTPixelTransferSessionInvalidate(v6);
      CVPixelBufferGetWidth(a1);
      CVPixelBufferGetHeight(a1);
      CVPixelBufferGetWidth(v3);
      CVPixelBufferGetHeight(v3);
      sub_1BB6BB2F4();

      v13[0] = 0xD000000000000000;
      v13[1] = 0x80000001BB6CCB40;
      v7 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v7);

      MEMORY[0x1BFB10B60](8236, 0xE200000000000000);
      v8 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v8);

      MEMORY[0x1BFB10B60](0x28206F742029, 0xE600000000000000);
      v9 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v9);

      MEMORY[0x1BFB10B60](8236, 0xE200000000000000);
      v10 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v10);

      MEMORY[0x1BFB10B60](41, 0xE100000000000000);
      v11 = sub_1BB6BB064();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v13, 0xD00000000000001BLL, 0x80000001BB6CCB40, v11);

      return 1;
    }
  }

  return 0;
}

uint64_t _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(__CVBuffer *a1, uint64_t a2)
{
  imageOut[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = imageOut - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = imageOut - v8;
  v10 = sub_1BB6BA654();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = imageOut - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5A0D20(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BB598308(v9, &qword_1EBC5C030);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    imageOut[0] = 0;
    VTCreateCGImageFromCVPixelBuffer(a1, 0, imageOut);
    v14 = imageOut[0];
    if (imageOut[0])
    {
      (*(v11 + 16))(v7, v13, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v15 = sub_1BB5A0378(v7, 80);

      sub_1BB598308(v7, &qword_1EBC5C030);
      (*(v11 + 8))(v13, v10);
      return v15;
    }

    (*(v11 + 8))(v13, v10);
  }

  return 0;
}

unint64_t sub_1BB5F0EA0()
{
  result = qword_1EBC5CC00;
  if (!qword_1EBC5CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CC00);
  }

  return result;
}

CVPixelBufferRef _s23IntelligentTrackingCore11DKImageUtilC19rotateCVPixelBuffer6buffer8rotation14horizontalFlip08verticalL0So11CVBufferRefaSgAJ_SiS2btFZ_0(CVPixelBufferRef pixelBuffer, uint64_t a2, char a3, char a4)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  if (a2 == 90 || a2 == -90)
  {
    Height = CVPixelBufferGetHeight(pixelBuffer);
    Width = CVPixelBufferGetWidth(pixelBuffer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  }

  else
  {
    Height = CVPixelBufferGetWidth(pixelBuffer);
    Width = CVPixelBufferGetHeight(pixelBuffer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v11;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v12 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, Height, Width, 0x42475241u, v12, pixelBufferOut);

  v13 = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    goto LABEL_24;
  }

  pixelRotationSessionOut = 0;
  v14 = pixelBufferOut[0];
  VTPixelRotationSessionCreate(0, &pixelRotationSessionOut);
  v15 = pixelRotationSessionOut;
  if (!pixelRotationSessionOut)
  {

    v13 = 0;
    goto LABEL_24;
  }

  if (a2 > 89)
  {
    if (a2 == 90)
    {
      v16 = *MEMORY[0x1E6983D98];
      v17 = MEMORY[0x1E6984000];
      goto LABEL_18;
    }

    if (a2 == 180)
    {
      v16 = *MEMORY[0x1E6983D98];
      v17 = MEMORY[0x1E6983FF0];
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 == -90)
    {
      v16 = *MEMORY[0x1E6983D98];
      v17 = MEMORY[0x1E6983FF8];
      goto LABEL_18;
    }

    if (!a2)
    {
      v16 = *MEMORY[0x1E6983D98];
      v17 = MEMORY[0x1E6983FE8];
LABEL_18:
      VTSessionSetProperty(pixelRotationSessionOut, v16, *v17);
      goto LABEL_19;
    }
  }

  v18 = pixelRotationSessionOut;
LABEL_19:
  v19 = MEMORY[0x1E695E4D0];
  if (a3)
  {
    VTSessionSetProperty(v15, *MEMORY[0x1E6983D78], *MEMORY[0x1E695E4D0]);
  }

  if (a4)
  {
    VTSessionSetProperty(v15, *MEMORY[0x1E6983D80], *v19);
  }

  VTPixelRotationSessionRotateImage(v15, pixelBuffer, v14);
  VTPixelRotationSessionInvalidate(v15);

LABEL_24:
  return v13;
}

CVPixelBufferRef _s23IntelligentTrackingCore11DKImageUtilC19rotateCVPixelBuffer6buffer17cameraOrientation0J4PortSo11CVBufferRefaSgAI_AA08DKCameraK0OAA0oL0OtFZ_0(__CVBuffer *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a3 - 1 > 1)
  {
    v4 = 0;
    if (*a2 > 2u)
    {
      if (v3 == 3)
      {
        v5 = 0;
      }

      else
      {
        if (v3 != 4)
        {
          return v4;
        }

        v5 = 180;
      }

      v17 = 0;
      goto LABEL_27;
    }

    if (v3 == 1)
    {
      pixelBufferOut[0] = 0;
      Height = CVPixelBufferGetHeight(a1);
      v8 = a1;
      Width = CVPixelBufferGetWidth(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BB6BD520;
      *(inited + 32) = sub_1BB6BAC34();
      *(inited + 40) = v22;
      *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
      sub_1BB5B07C0(inited);
      swift_setDeallocating();
      sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
      v23 = sub_1BB6BAAE4();

      CVPixelBufferCreate(0, Height, Width, 0x42475241u, v23, pixelBufferOut);

      v4 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        pixelRotationSessionOut = 0;
        v13 = pixelBufferOut[0];
        VTPixelRotationSessionCreate(0, &pixelRotationSessionOut);
        v14 = pixelRotationSessionOut;
        if (pixelRotationSessionOut)
        {
          v15 = *MEMORY[0x1E6983D98];
          v16 = MEMORY[0x1E6984000];
          goto LABEL_23;
        }

LABEL_31:

        v4 = 0;
      }
    }

    else
    {
      if (v3 != 2)
      {
        return v4;
      }

      pixelBufferOut[0] = 0;
      v7 = CVPixelBufferGetHeight(a1);
      v8 = a1;
      v9 = CVPixelBufferGetWidth(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1BB6BD520;
      *(v10 + 32) = sub_1BB6BAC34();
      *(v10 + 40) = v11;
      *(v10 + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
      sub_1BB5B07C0(v10);
      swift_setDeallocating();
      sub_1BB598308(v10 + 32, &qword_1EBC5C1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
      v12 = sub_1BB6BAAE4();

      CVPixelBufferCreate(0, v7, v9, 0x42475241u, v12, pixelBufferOut);

      v4 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        pixelRotationSessionOut = 0;
        v13 = pixelBufferOut[0];
        VTPixelRotationSessionCreate(0, &pixelRotationSessionOut);
        v14 = pixelRotationSessionOut;
        if (pixelRotationSessionOut)
        {
          v15 = *MEMORY[0x1E6983D98];
          v16 = MEMORY[0x1E6983FF8];
LABEL_23:
          v24 = *v16;
          v25 = v14;
          VTSessionSetProperty(v25, v15, v24);
          VTPixelRotationSessionRotateImage(v25, v8, v13);
          VTPixelRotationSessionInvalidate(v25);

          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

LABEL_32:

    return v4;
  }

  v4 = 0;
  if (*a2 <= 2u)
  {
    if (v3 == 1)
    {
      v5 = 90;
      goto LABEL_19;
    }

    if (v3 == 2)
    {
      v5 = -90;
LABEL_19:
      v17 = 1;
LABEL_27:
      v26 = 0;
      goto LABEL_28;
    }

    return v4;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v5 = 0;
      goto LABEL_19;
    }

    return v4;
  }

  v5 = 0;
  v17 = 0;
  v26 = 1;
LABEL_28:

  return _s23IntelligentTrackingCore11DKImageUtilC19rotateCVPixelBuffer6buffer8rotation14horizontalFlip08verticalL0So11CVBufferRefaSgAJ_SiS2btFZ_0(a1, v5, v17, v26);
}

CVPixelBufferRef _s23IntelligentTrackingCore11DKImageUtilC19createCVPixelBuffer4from7contextSo11CVBufferRefaSgSo7CIImageC_So9CIContextCtFZ_0(void *a1, void *a2)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  [a1 extent];
  Width = CGRectGetWidth(v14);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [a1 extent];
  Height = CGRectGetHeight(v15);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  v6 = Height;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v8;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v9 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, Width, v6, 0x42475241u, v9, pixelBufferOut);

  v10 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    [a2 render:a1 toCVPixelBuffer:pixelBufferOut[0]];
    v11 = pixelBufferOut[0];
  }

  else
  {
    v11 = 0;
  }

  return v10;
}

void sub_1BB5F18F0(__CVBuffer *a1, __CVBuffer *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  VTPixelTransferSessionCreate(0, v6);
  if (v6[0])
  {
    v4 = v6[0];
    VTPixelTransferSessionTransferImage(v4, a1, a2);
    VTPixelTransferSessionInvalidate(v4);
  }

  else
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v5 = 0xD000000000000023;
    *(v5 + 8) = 0x80000001BB6CCB10;
    *(v5 + 16) = 0;
    swift_willThrow();
  }
}

CVPixelBufferRef sub_1BB5F19E4(void *a1)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  pixelBufferOut[0] = 0;
  v2 = a1;
  Width = CVPixelBufferGetWidth(v2);
  Height = CVPixelBufferGetHeight(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v6;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v7 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, Width, Height, 0x42475241u, v7, pixelBufferOut);

  v8 = pixelBufferOut[0];
  if (pixelBufferOut[0] && (v9 = pixelBufferOut[0], sub_1BB5F18F0(v2, v9), v1))
  {
  }

  else
  {
  }

  return v8;
}

CVPixelBufferRef _s23IntelligentTrackingCore11DKImageUtilC19pixelBufferFromFile3urlSo11CVBufferRefaSg10Foundation3URLV_tFZ_0()
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BB6BA674();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E695F658]);
  sub_1BB59F834(v1, v3);
  v5 = sub_1BB6BA6D4();
  v6 = [v4 initWithData_];

  sub_1BB59F668(v1, v3);
  if (!v6)
  {
    sub_1BB59F668(v1, v3);
    return 0;
  }

  pixelBufferOut[0] = 0;
  [v6 extent];
  Width = CGRectGetWidth(v20);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v6 extent];
  Height = CGRectGetHeight(v21);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v9 = Height;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v11;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v12 = MEMORY[0x1E69E6158];
  v13 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, Width, v9, 0x42475241u, v13, pixelBufferOut);

  if (!pixelBufferOut[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C048);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BB6BD520;
    *(v18 + 56) = v12;
    *(v18 + 32) = 0xD000000000000025;
    *(v18 + 40) = 0x80000001BB6CCAE0;
    sub_1BB6BB904();
    sub_1BB59F668(v1, v3);

    return 0;
  }

  v14 = pixelBufferOut[0];
  v15 = objc_allocWithZone(MEMORY[0x1E695F620]);
  v16 = v14;
  v17 = [v15 init];
  [v17 render:v6 toCVPixelBuffer:v16];
  sub_1BB59F668(v1, v3);

  return v14;
}

unint64_t sub_1BB5F1F4C()
{
  result = qword_1EBC5CC08[0];
  if (!qword_1EBC5CC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC5CC08);
  }

  return result;
}

void sub_1BB5F1FEC()
{
  v1 = *(v0 + 16);
  v2 = 1;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0.0;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:

    if (!v10)
    {
LABEL_17:

      return;
    }

    v5 &= v5 - 1;
    if (*(v10 + 33) == 1)
    {
      if (*(v10 + 32))
      {
        v11 = *(v10 + 48);
        v12 = *(v10 + 56);

        v13 = atan2(v11, v12);
      }

      else
      {
        v13 = *(v10 + 40);
      }

      v14 = v8 >= v13;
      if (v8 < v13)
      {
        v8 = v13;
      }

      v2 &= v14;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_17;
    }

    v5 = *(v1 + 64 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1BB5F2184@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = 4;
  v14 = 0.0;
  while (1)
  {
    v15 = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + 8 * v16);

    if (!v18)
    {
LABEL_17:

      if (v13 == 4 || (a2 & 1) == 0 && v14 <= a1)
      {
        *a3 = xmmword_1BB6C0770;
      }

      else
      {
        *a3 = v13;
        *(a3 + 8) = v14;
      }

      return result;
    }

    v9 &= v9 - 1;
    if (*(v18 + 33) == 1)
    {
      if (*(v18 + 32))
      {
        v19 = atan2(*(v18 + 48), *(v18 + 56));
      }

      else
      {
        v19 = *(v18 + 40);
      }

      if (v14 < v19)
      {
        v14 = v19;
        v13 = v17;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_17;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v15;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5F2308@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = 3;
  v14 = 0.0;
  while (1)
  {
    v15 = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + 8 * v16);

    if (!v18)
    {
LABEL_17:

      if (v13 == 3 || (a2 & 1) == 0 && v14 <= a1)
      {
        *a3 = xmmword_1BB6C0780;
      }

      else
      {
        *a3 = v13;
        *(a3 + 8) = v14;
      }

      return result;
    }

    v9 &= v9 - 1;
    if (*(v18 + 33) == 1)
    {
      if (*(v18 + 32))
      {
        v19 = atan2(*(v18 + 48), *(v18 + 56));
      }

      else
      {
        v19 = *(v18 + 40);
      }

      if (v14 < v19)
      {
        v14 = v19;
        v13 = v17;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_17;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v15;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t DKTrackerConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  DKTrackerConfiguration.init()();
  return v0;
}

uint64_t DKTrackerConfiguration.init()()
{
  v1 = v0;
  *(v0 + 88) = xmmword_1BB6C0790;
  *(v0 + 104) = 0x3FD0000000000000;
  *(v0 + 16) = xmmword_1BB6C07A0;
  *(v0 + 32) = xmmword_1BB6C07B0;
  *(v0 + 48) = xmmword_1BB6C07C0;
  *(v0 + 64) = 0x4000000000000000;
  *(v0 + 72) = xmmword_1BB6C07D0;
  type metadata accessor for DKConstantAccelerationFilter.Configuration();
  v2 = swift_allocObject();
  *(v2 + 72) = xmmword_1BB6C07E0;
  *(v2 + 16) = xmmword_1BB6C07F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CD0];
  *(v2 + 56) = MEMORY[0x1E69E7CC8];
  *(v2 + 64) = v4;
  v5 = sub_1BB59A300(&unk_1F3A48290);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v5[7];
  v5[7] = 0x8000000000000000;
  sub_1BB599640(0xC000000000000000, 0, 0x4000000000000000, 0, 1, isUniquelyReferenced_nonNull_native);
  v5[7] = v20;

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v5[7];
  v5[7] = 0x8000000000000000;
  sub_1BB599640(0xBFF0000000000000, 0, 0x3FF0000000000000, 0, 2, v7);
  v5[7] = v21;

  *(v0 + 112) = v5;
  v5[10] = 0xBFF0000000000000;
  v5[9] = *(v0 + 104);
  v8 = swift_allocObject();
  *(v8 + 72) = xmmword_1BB6C07E0;
  *(v8 + 16) = xmmword_1BB6C07F0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  v9 = sub_1BB59A300(&unk_1F3A482B8);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v9 + 56);
  *(v9 + 56) = 0x8000000000000000;
  sub_1BB599640(0xC000000000000000, 0, 0x4000000000000000, 0, 1, v10);
  *(v9 + 56) = v22;

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v9 + 56);
  *(v9 + 56) = 0x8000000000000000;
  sub_1BB599640(0xBFF7BC89CF95B8D0, 0, 0x3FF7BC89CF95B8D0, 0, 0, v11);
  *(v9 + 56) = v23;

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v9 + 56);
  *(v9 + 56) = 0x8000000000000000;
  sub_1BB599640(0xBFF0000000000000, 0, 0x3FF0000000000000, 0, 2, v12);
  *(v9 + 56) = v24;

  *(v0 + 120) = v9;
  *(v9 + 72) = xmmword_1BB6C0800;
  v13 = swift_allocObject();
  *(v13 + 72) = xmmword_1BB6C07E0;
  *(v13 + 16) = xmmword_1BB6C07F0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 64) = v4;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 56) = 0x8000000000000000;
  sub_1BB599640(0x3FB999999999999ALL, 0, 0x4024000000000000, 0, 0, v14);
  *(v13 + 56) = v3;

  v15 = *(v13 + 56);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 56) = 0x8000000000000000;
  sub_1BB599640(0xBFF0000000000000, 0, 0x3FF0000000000000, 0, 1, v16);
  *(v13 + 56) = v15;

  v17 = *(v13 + 56);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 56) = 0x8000000000000000;
  sub_1BB599640(0xBFF0000000000000, 0, 0x3FF0000000000000, 0, 2, v18);
  *(v13 + 56) = v17;

  *(v1 + 128) = v13;
  *(v13 + 72) = xmmword_1BB6C0800;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0x4014000000000000;
  *(v1 + 152) = 5;
  *(v1 + 160) = xmmword_1BB6C0810;
  *(v1 + 176) = xmmword_1BB6C0820;
  *(v1 + 192) = -1;
  return v1;
}

uint64_t DKTrackerConfiguration.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BB5F5620(a1);

  return v2;
}

uint64_t DKTrackerConfiguration.init(configuration:)(uint64_t a1)
{
  v1 = sub_1BB5F5620(a1);

  return v1;
}

uint64_t DKTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1BB5F2C70@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + qword_1EBC5EE08 + 8);
  *a1 = *(v1 + qword_1EBC5EE08);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB5F2C90(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + qword_1EBC5EE08;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB5F2D88()
{
  sub_1BB5F5718();
}

uint64_t sub_1BB5F2DF0()
{
  sub_1BB5F5728();
}

uint64_t sub_1BB5F2E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1BB5F2F4C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1BB5F2FE4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t sub_1BB5F30CC()
{
  sub_1BB5F5738();
}

uint64_t sub_1BB5F3134(uint64_t a1)
{
  v2 = sub_1BB6BB184();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_1BB5F32A0(v5);
}

uint64_t sub_1BB5F3204@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 200);
  v4 = sub_1BB6BB184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BB5F32A0(uint64_t a1)
{
  v3 = *(*v1 + 200);
  v4 = sub_1BB6BB184();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1BB5F3370()
{
  sub_1BB5F5748();
}

uint64_t sub_1BB5F33F0()
{
  sub_1BB5F5604();
}

uint64_t sub_1BB5F3470(uint64_t a1)
{
  v2 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5D7F84(a1, v4);
  return sub_1BB5F351C(v4);
}

uint64_t sub_1BB5F356C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BB5F5764(a1, &v6 - v3);
  return sub_1BB5F3620(v4);
}

uint64_t sub_1BB5F36CC()
{
  sub_1BB5F57D4();
}

uint64_t DKTrackerBase.__allocating_init(time:configuration:uuid:trackerId:anstId:camera:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  DKTrackerBase.init(time:configuration:uuid:trackerId:anstId:camera:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

char *DKTrackerBase.init(time:configuration:uuid:trackerId:anstId:camera:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v55 = a5;
  v57 = a1;
  v12 = *v6;
  v13 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BB6BA7F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v53 = &v50 - v19;
  v20 = &v6[qword_1EBC5EE08];
  *v20 = -1;
  *(v20 + 1) = 0;
  *&v6[qword_1EBC5EE10] = -1;
  sub_1BB6BAA24();
  v21 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *&v6[v21] = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  v6[qword_1EBC5EE38] = 0;
  v22 = qword_1EBC5EE40;
  v23 = *(v12 + 80);
  sub_1BB6BB184();
  *&v7[v22] = sub_1BB6BAAD4();
  (*(*(v23 - 8) + 56))(&v7[*(*v7 + 200)], 1, 1, v23);
  *&v7[*(*v7 + 216)] = 0;
  v24 = *(*v7 + 232);
  v25 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
  v7[*(*v7 + 240)] = 0;
  *&v7[*(*v7 + 256)] = 0;
  *&v7[qword_1EBC5EE28] = a2;
  *&v7[qword_1EBC5EE00] = a4;
  v26 = qword_1EBC5EDF8;
  v27 = sub_1BB6BA844();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v56 = a3;
  v54 = v27;
  v29(&v7[v26], a3);
  *&v7[qword_1EBC5EE10] = v55;
  v30 = &v7[*(*v7 + 224)];
  v55 = a6;
  v31 = sub_1BB5D7F84(a6, v30);
  v32 = (*(*a2 + 264))(v31);
  v33 = (*(*a2 + 288))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *&v7[*(*v7 + 208)] = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v32, v33);
  v34 = (*(*a2 + 744))();
  v35 = (*(*a2 + 768))();
  v52 = v16;
  v36 = *(v16 + 56);
  v37 = v53;
  v36(v53, 1, 1, v15);
  type metadata accessor for DKSmoothingFilter();
  v38 = swift_allocObject();
  *(v38 + 33) = 0;
  *(v38 + 40) = 0;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0x3FF0000000000000;
  v39 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v36((v38 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v15);
  v40 = v38 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v38 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v41 = 0;
  *(v41 + 8) = 1;
  *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v38 + 16) = v34;
  *(v38 + 24) = v35;
  *(v38 + 32) = 0;
  v42 = sub_1BB5BA0DC(v37, v38 + v39, &qword_1EBC5C050);
  *v40 = 0;
  *(v40 + 8) = 1;
  *v41 = 0;
  *(v41 + 8) = 1;
  *&v7[*(*v7 + 248)] = v38;
  if ((*(*a2 + 624))(v42))
  {
    v43 = v52;
    v44 = v50;
    v45 = v57;
    (*(v52 + 16))(v50, v57, v15);
    v46 = v55;
    v47 = v51;
    sub_1BB5D7F84(v55, v51);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v48 = sub_1BB66327C(v44, a2, v47);

    sub_1BB59822C(v46);
    (*(v28 + 8))(v56, v54);
    (*(v43 + 8))(v45, v15);
    *&v7[*(*v7 + 216)] = v48;
  }

  else
  {

    sub_1BB59822C(v55);
    (*(v28 + 8))(v56, v54);
    (*(v52 + 8))(v57, v15);
  }

  return v7;
}

BOOL sub_1BB5F3FE0()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(*v0 + 240));
  (*(v2 + 16))(v5, v0 + qword_1EBC5EE30, v1, v3);
  sub_1BB6BA744();
  v8 = v7;
  v9 = (*(v2 + 8))(v5, v1);
  v10 = **(v0 + qword_1EBC5EE28);
  if (v6 == 1)
  {
    if ((*(v10 + 408))(v9) >= v8)
    {
      return 0;
    }
  }

  else if ((*(v10 + 384))(v9) >= v8)
  {
    return 0;
  }

  v12 = *(v0 + *(*v0 + 256));
  return (*(**(v0 + qword_1EBC5EE28) + 792))() < v12;
}

BOOL sub_1BB5F41C8()
{
  sub_1BB6BB184();

  v1 = sub_1BB6BAEC4();

  return v1 >= (*(**(v0 + qword_1EBC5EE28) + 456))(v2);
}

uint64_t sub_1BB5F42D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1BB6BB184();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  (*(v6 + 16))(&v16 - v8, a2, v5, v7);
  sub_1BB6BAF04();
  sub_1BB6BAED4();

  v10 = sub_1BB6BAEC4();

  result = (*(**(v3 + qword_1EBC5EE28) + 432))(v11);
  if (result < v10)
  {
    v13 = (v6 + 8);
    do
    {
      swift_getWitnessTable();
      sub_1BB6BB034();
      (*v13)(v9, v5);

      v14 = sub_1BB6BAEC4();

      result = (*(**(v3 + qword_1EBC5EE28) + 432))(v15);
    }

    while (result < v14);
  }

  return result;
}

uint64_t sub_1BB5F4518(uint64_t a1)
{
  v2 = v1;

  sub_1BB5BF2B4(a1);

  sub_1BB5F1FEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    v11 = (v2 + qword_1EBC5EE08);
    *v11 = v5;
    v11[1] = v7;
  }

  return result;
}

uint64_t sub_1BB5F45D8(uint64_t a1)
{
  v3 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5D7F84(a1, v5);
  result = sub_1BB5D7FE8(v5, v1 + *(*v1 + 224));
  v7 = *(v1 + *(*v1 + 216));
  if (v7)
  {
    return sub_1BB5CAC04(a1, v7 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera);
  }

  return result;
}

uint64_t sub_1BB5F46A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v101 = *v2;
  v5 = v101;
  v102 = a1;
  v6 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v86 - v9;
  v10 = sub_1BB6BA7F4();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - v13;
  v15 = *(v5 + 10);
  v16 = sub_1BB6BB184();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v86 - v25;
  v27 = a2;
  v29 = v28;
  (*(v17 + 16))(v22, v27, v16, v24);
  if ((*(v29 + 48))(v22, 1, v15) == 1)
  {
    v30 = *(v17 + 8);
    v30(v22, v16);
    *(v3 + qword_1EBC5EE38) = 0;
    v31 = (*(v29 + 56))(v19, 1, 1, v15);
    sub_1BB5F42D8(v31, v19);
    result = (v30)(v19, v16);
    v33 = *(*v3 + 256);
    v34 = *(v3 + v33);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      __break(1u);
    }

    else
    {
      *(v3 + v33) = v36;
    }
  }

  else
  {
    v96 = v17;
    v97 = v16;
    (*(v29 + 32))(v26, v22, v15);
    *(v3 + qword_1EBC5EE38) = 1;
    v37 = v29;
    v38 = *(v101 + 13);
    v101 = v14;
    v39 = *(v38 + 64);

    v89 = v39;
    v90 = v38 + 64;
    v40 = (v39)(v15, v38);
    sub_1BB6AB274(v40, v41, v42, v43);

    v44 = (*(v38 + 88))(v15, v38);
    sub_1BB5F4518(v44);

    v45 = v103;
    v46 = *(v103 + 16);
    v47 = v101;
    v48 = v104;
    v88 = v103 + 16;
    v87 = v46;
    v46(v101, v102, v104);
    (*(v45 + 40))(v3 + qword_1EBC5EE30, v47, v48);
    v93 = *(v37 + 16);
    v94 = v37 + 16;
    v93(v19, v26, v15);
    v95 = v37;
    v91 = *(v37 + 56);
    v92 = v37 + 56;
    v91(v19, 0, 1, v15);
    v49 = *(*v3 + 200);
    v50 = sub_1BB6BB184();
    v51 = *(*(v50 - 8) + 40);
    v101 = v19;
    v51(v3 + v49, v19, v50);
    v52 = (*(v38 + 136))(v15, v38);
    LOBYTE(v47) = v53;
    v54 = qword_1EBC5EDF8;
    v55 = type metadata accessor for DKPersonGroupFilter.Track(0);
    v56 = *(v55 + 20);
    v57 = sub_1BB6BA844();
    v58 = v100;
    (*(*(v57 - 8) + 16))(&v100[v56], v3 + v54, v57);
    v59 = *(v3 + qword_1EBC5EE08);
    *v58 = v52;
    *(v58 + 8) = v47 & 1;
    *(v58 + *(v55 + 24)) = v59;
    (*(*(v55 - 8) + 56))(v58, 0, 1, v55);
    sub_1BB5BA0DC(v58, v3 + *(*v3 + 232), &qword_1EBC5C478);
    v60 = (*(v38 + 112))(v15, v38);
    if (v61)
    {
      v62 = -1;
    }

    else
    {
      v62 = v60;
    }

    *(v3 + qword_1EBC5EE10) = v62;
    v63 = *(v3 + *(*v3 + 216));
    if (v63)
    {
      v64 = v98;
      v65 = v104;
      v87(v98, v102, v104);
      type metadata accessor for DKSphericalMotionFilter.Measurement(0);
      v66 = swift_allocObject();
      v67 = v66 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
      v68 = v66 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
      (*(v103 + 32))(v66 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v64, v65);
      v69 = v26;
      v70 = *(v38 + 160);
      v102 = v63;

      v71 = v70(v15, v38);
      v26 = v69;
      *v68 = v71;
      *(v68 + 8) = v72 & 1;
      v73 = v99;
      sub_1BB5D7F84(v3 + *(*v3 + 224), v99);
      LODWORD(v68) = *v73;
      sub_1BB59822C(v73);
      v89(v15, v38);
      v78 = v75;
      v79 = v76;
      v80 = v77;
      v81 = v68 == 1;
      v83 = v103;
      v82 = v104;
      if (v81)
      {
        v74 = 1.0 - v74 - CGRectGetWidth(*&v74);
      }

      *v67 = v74;
      *(v67 + 8) = v78;
      *(v67 + 16) = v79;
      *(v67 + 24) = v80;
      *(v67 + 32) = 0;
      sub_1BB662018(v66);

      swift_setDeallocating();
      (*(v83 + 8))(v66 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v82);
      swift_deallocClassInstance();
    }

    v84 = v101;
    v93(v101, v26, v15);
    v85 = (v91)(v84, 0, 1, v15);
    sub_1BB5F42D8(v85, v84);
    (*(v96 + 8))(v84, v97);
    result = (*(v95 + 8))(v26, v15);
    *(v3 + *(*v3 + 256)) = 0;
  }

  return result;
}

uint64_t sub_1BB5F4FE8(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1BB6BA7F4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  sub_1BB6ABB40(0, 1, v4, a1);

  return sub_1BB598308(v4, &qword_1EBC5C050);
}

uint64_t sub_1BB5F50FC@<X0>(uint64_t a1@<X8>)
{
  if ((*(*v1 + 688))())
  {
    v3 = v1 + *(*v1 + 232);

    return sub_1BB5F5764(v3, a1);
  }

  else
  {
    v5 = type metadata accessor for DKPersonGroupFilter.Track(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

uint64_t DKTrackerBase.deinit()
{
  v1 = qword_1EBC5EDF8;
  v2 = sub_1BB6BA844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBC5EE18;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = qword_1EBC5EE30;
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 200);
  v8 = sub_1BB6BB184();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  sub_1BB59822C(v0 + *(*v0 + 224));
  sub_1BB598308(v0 + *(*v0 + 232), &qword_1EBC5C478);

  return v0;
}

uint64_t DKTrackerBase.__deallocating_deinit()
{
  DKTrackerBase.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1BB5F54AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BB5F2C48();
  return sub_1BB5F5520;
}

void sub_1BB5F5520(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1BB5F5620(uint64_t a1)
{
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = *(a1 + 56);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 72) = *(a1 + 72);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = *(a1 + 88);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = *(a1 + 104);
  *(v1 + 112) = *(a1 + 112);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = *(a1 + 144);
  *(v1 + 152) = *(a1 + 152);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = *(a1 + 168);
  *(v1 + 176) = *(a1 + 176);
  *(v1 + 184) = *(a1 + 184);
  *(v1 + 192) = *(a1 + 192);

  return v1;
}

uint64_t sub_1BB5F5764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_82Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

void sub_1BB5F6530()
{
  sub_1BB6BA844();
  if (v0 <= 0x3F)
  {
    sub_1BB6BAA34();
    if (v1 <= 0x3F)
    {
      sub_1BB6BA7F4();
      if (v2 <= 0x3F)
      {
        sub_1BB6BB184();
        if (v3 <= 0x3F)
        {
          type metadata accessor for DKCamera();
          if (v4 <= 0x3F)
          {
            sub_1BB5F7244();
            if (v5 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BB5F7244()
{
  if (!qword_1EBC5CC90)
  {
    type metadata accessor for DKPersonGroupFilter.Track(255);
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5CC90);
    }
  }
}

uint64_t sub_1BB5F72A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701669236;
  v3 = a1;
  v4 = 0x644970756F7267;
  v5 = 0xE800000000000000;
  if (a1 == 5)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x65636E6174736964;
  }

  v6 = 0xD000000000000013;
  v7 = 0x80000001BB6CA5D0;
  if (a1 != 3)
  {
    v6 = 0x4972656B63617274;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1684632949;
  if (a1 != 1)
  {
    v8 = 1952671090;
  }

  if (!a1)
  {
    v8 = 1701669236;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE400000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 1684632949)
        {
          goto LABEL_37;
        }
      }

      else if (v9 != 1952671090)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x644970756F7267)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        if (v9 != 0x65636E6174736964)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v11 = 0x80000001BB6CA5D0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x4972656B63617274;
    v11 = 0xE900000000000064;
  }

  if (v9 != v2)
  {
LABEL_37:
    v12 = sub_1BB6BB7E4();
    goto LABEL_38;
  }

LABEL_34:
  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1BB5F7498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701669236;
  v3 = a1;
  if (a1 > 3u)
  {
    v9 = 0x74696C6172696863;
    v10 = 0xE900000000000079;
    if (a1 != 6)
    {
      v9 = 0x65636E6174736964;
      v10 = 0xE800000000000000;
    }

    v11 = 0x4972656B63617274;
    v12 = 0xE900000000000064;
    if (a1 != 4)
    {
      v11 = 0x644970756F7267;
      v12 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v3 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1952671090;
    if (a1 != 2)
    {
      v5 = 0xD000000000000013;
      v4 = 0x80000001BB6CA5D0;
    }

    v6 = 1684632949;
    if (!a1)
    {
      v6 = 1701669236;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v3 <= 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000079;
        if (v7 != 0x74696C6172696863)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x65636E6174736964)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x4972656B63617274)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x644970756F7267)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE400000000000000;
        if (v7 != 1952671090)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xD000000000000013;
      v13 = 0x80000001BB6CA5D0;
    }

    else
    {
      v13 = 0xE400000000000000;
      if (a2)
      {
        if (v7 != 1684632949)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    if (v7 != v2)
    {
LABEL_44:
      v14 = sub_1BB6BB7E4();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v8 != v13)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

uint64_t sub_1BB5F76F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701669236;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x65636E6174736964;
  if (a1 != 6)
  {
    v6 = 0xD000000000000015;
    v5 = 0x80000001BB6CA610;
  }

  v7 = 0x4972656B63617274;
  v8 = 0xE900000000000064;
  if (a1 != 4)
  {
    v7 = 0x644970756F7267;
    v8 = 0xE700000000000000;
  }

  if (a1 > 5u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xE400000000000000;
  v11 = 1952671090;
  if (a1 != 2)
  {
    v11 = 0xD000000000000013;
    v10 = 0x80000001BB6CA5D0;
  }

  v12 = 1684632949;
  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v12 = 1701669236;
  }

  if (a1 > 1u)
  {
    v4 = v10;
  }

  else
  {
    v11 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  if (v3 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = v9;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE800000000000000;
        if (v13 != 0x65636E6174736964)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v15 = 0x80000001BB6CA610;
        if (v13 != 0xD000000000000015)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v15 = 0xE900000000000064;
      if (v13 != 0x4972656B63617274)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v13 != 0x644970756F7267)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v13 != 1952671090)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xD000000000000013;
      v15 = 0x80000001BB6CA5D0;
    }

    else
    {
      v15 = 0xE400000000000000;
      if (a2)
      {
        if (v13 != 1684632949)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    if (v13 != v2)
    {
LABEL_44:
      v16 = sub_1BB6BB7E4();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v14 != v15)
  {
    goto LABEL_44;
  }

  v16 = 1;
LABEL_45:

  return v16 & 1;
}

uint64_t sub_1BB5F7938()
{
  sub_1BB6BACC4();
}

uint64_t sub_1BB5F7A60()
{
  sub_1BB6BACC4();
}

uint64_t sub_1BB5F7B88()
{
  sub_1BB6BB924();
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5F7CC4()
{
  sub_1BB6BB924();
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5F7E00()
{
  sub_1BB6BB924();
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

id DKObservationMetadata.__allocating_init(time:observations:image:standPosition:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v9 = objc_allocWithZone(v4);
  v21 = *a4;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition] = 0;
  v12 = &v9[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v9[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v9[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
  v16 = sub_1BB6BA7F4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v9[v15], a1, v16);
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations] = a2;
  *&v9[v10] = a3;
  *&v9[v11] = v21;
  v18 = a3;

  v22.receiver = v9;
  v22.super_class = v4;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  (*(v17 + 8))(a1, v16);
  return v19;
}

uint64_t DKFaceObservation.__allocating_init(time:uuid:rect:identityConfidences:trackerId:groupId:yaw:pitch:roll:distance:isFrontal:identityProbabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, char a20, uint64_t a21)
{
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  v28 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  v29 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  v30 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  v31 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  v32 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  v42 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
  *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
  *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
  *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
  v33 = v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
  v35 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  (*(*(v35 - 8) + 56))(v26 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time;
  v37 = sub_1BB6BA7F4();
  (*(*(v37 - 8) + 32))(v26 + v36, a1, v37);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid;
  v39 = sub_1BB6BA844();
  (*(*(v39 - 8) + 32))(v26 + v38, a2, v39);
  v40 = (v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = a3;
  *v27 = a4;
  *(v27 + 8) = a5 & 1;
  *v28 = a6;
  *(v28 + 8) = a7 & 1;
  *v29 = a8;
  *(v29 + 8) = a13 & 1;
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  *v31 = a16;
  *(v31 + 8) = a17 & 1;
  *v32 = a18;
  *(v32 + 8) = a19 & 1;
  *(v26 + v42) = a20;
  sub_1BB5A4CF4(a21, v26 + v34);
  return v26;
}

uint64_t DKBodyObservation.__allocating_init(time:uuid:rect:identityConfidences:trackerId:groupId:distance:identityProbabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14)
{
  v21 = swift_allocObject();
  v22 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
  v24 = v21 + v23;
  v25 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
  v28 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  (*(*(v28 - 8) + 56))(v21 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time;
  v30 = sub_1BB6BA7F4();
  (*(*(v30 - 8) + 32))(v21 + v29, a1, v30);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v21 + v31, a2, v32);
  v33 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences) = a3;
  *v22 = a4;
  *(v22 + 8) = a5 & 1;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  *v26 = a8;
  *(v26 + 8) = a13 & 1;
  sub_1BB5A4CF4(a14, v21 + v27);
  return v21;
}

unsigned __int8 *sub_1BB5F85C4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>, double a3@<D0>)
{
  if (*result - 1 > 1)
  {
    if (a3 > 0.523598776)
    {
LABEL_6:
      *a2 = 2;
      return result;
    }

    if (a3 >= -0.523598776)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a2 = 1;
    return result;
  }

  if (a3 > 0.523598776)
  {
    goto LABEL_8;
  }

  if (a3 < -0.523598776)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (fabs(a3) >= 0.261799388)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1BB5F8650(uint64_t a1)
{
  v2 = sub_1BB603DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F868C(uint64_t a1)
{
  v2 = sub_1BB603DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F86C8()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7468676972;
  if (*v0 != 2)
  {
    v2 = 0x6172656D6163;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

uint64_t sub_1BB5F8734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB60898C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5F875C(uint64_t a1)
{
  v2 = sub_1BB603D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F8798(uint64_t a1)
{
  v2 = sub_1BB603D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F87D4(uint64_t a1)
{
  v2 = sub_1BB603E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F8810(uint64_t a1)
{
  v2 = sub_1BB603E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F884C(uint64_t a1)
{
  v2 = sub_1BB603E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F8888(uint64_t a1)
{
  v2 = sub_1BB603E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F88C4(uint64_t a1)
{
  v2 = sub_1BB603EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F8900(uint64_t a1)
{
  v2 = sub_1BB603EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFaceDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CC98);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCA0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCA8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCB0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCB8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB603D90();
  sub_1BB6BB984();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BB603E38();
      v18 = v27;
      sub_1BB6BB6B4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BB603DE4();
      v18 = v30;
      sub_1BB6BB6B4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BB603E8C();
    v18 = v24;
    sub_1BB6BB6B4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BB603EE0();
  sub_1BB6BB6B4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t DKFaceDirection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCE8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCF0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CCF8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD00);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB603D90();
  v15 = v46;
  sub_1BB6BB974();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BB6BB694();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BB5D7120();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BB6BB3B4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v28 = &type metadata for DKFaceDirection;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BB603E8C();
        v32 = v35;
        sub_1BB6BB5E4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BB603EE0();
        v25 = v35;
        sub_1BB6BB5E4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BB603E38();
      v31 = v35;
      sub_1BB6BB5E4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BB603DE4();
      v33 = v35;
      sub_1BB6BB5E4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1BB5F9430()
{
  v1 = 0x6E69746567646946;
  if (*v0 != 1)
  {
    v1 = 0x676E696B6C6157;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616E6F6974617453;
  }
}

uint64_t sub_1BB5F9494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB608AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5F94BC(uint64_t a1)
{
  v2 = sub_1BB603F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F94F8(uint64_t a1)
{
  v2 = sub_1BB603F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F9534(uint64_t a1)
{
  v2 = sub_1BB603FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F9570(uint64_t a1)
{
  v2 = sub_1BB603FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F95AC(uint64_t a1)
{
  v2 = sub_1BB604030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F95E8(uint64_t a1)
{
  v2 = sub_1BB604030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5F9624(uint64_t a1)
{
  v2 = sub_1BB603F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F9660(uint64_t a1)
{
  v2 = sub_1BB603F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKMotionClassification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD10);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD18);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD20);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD28);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB603F34();
  sub_1BB6BB984();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BB603FDC();
      v9 = v21;
      sub_1BB6BB6B4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BB603F88();
      v9 = v24;
      sub_1BB6BB6B4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BB604030();
    sub_1BB6BB6B4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DKMotionClassification.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD50);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD58);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD60);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB603F34();
  v15 = v36;
  sub_1BB6BB974();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BB6BB694();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BB5D7124();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BB6BB3B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v24 = &type metadata for DKMotionClassification;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BB603FDC();
          sub_1BB6BB5E4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BB603F88();
          v26 = v17;
          sub_1BB6BB5E4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BB604030();
        sub_1BB6BB5E4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1BB5F9FA8(uint64_t a1)
{
  v2 = sub_1BB604180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5F9FE4(uint64_t a1)
{
  v2 = sub_1BB604180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5FA020()
{
  v1 = 1701011782;
  v2 = 1684955464;
  if (*v0 != 2)
  {
    v2 = 0x7463656A624FLL;
  }

  if (*v0)
  {
    v1 = 2036625218;
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

uint64_t sub_1BB5FA080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB608C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5FA0A8(uint64_t a1)
{
  v2 = sub_1BB604084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FA0E4(uint64_t a1)
{
  v2 = sub_1BB604084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5FA120(uint64_t a1)
{
  v2 = sub_1BB6041D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FA15C(uint64_t a1)
{
  v2 = sub_1BB6041D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5FA198(uint64_t a1)
{
  v2 = sub_1BB60412C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FA1D4(uint64_t a1)
{
  v2 = sub_1BB60412C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5FA210(uint64_t a1)
{
  v2 = sub_1BB6040D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FA24C(uint64_t a1)
{
  v2 = sub_1BB6040D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKObservationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD70);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD78);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD80);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD88);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CD90);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB604084();
  sub_1BB6BB984();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BB60412C();
      v18 = v27;
      sub_1BB6BB6B4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BB6040D8();
      v18 = v30;
      sub_1BB6BB6B4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BB604180();
    v18 = v24;
    sub_1BB6BB6B4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BB6041D4();
  sub_1BB6BB6B4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t DKObservationType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDC0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDC8);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDD0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDD8);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB604084();
  v15 = v46;
  sub_1BB6BB974();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BB6BB694();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BB5D7120();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BB6BB3B4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v28 = &type metadata for DKObservationType;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BB604180();
        v32 = v35;
        sub_1BB6BB5E4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BB6041D4();
        v25 = v35;
        sub_1BB6BB5E4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BB60412C();
      v31 = v35;
      sub_1BB6BB5E4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BB6040D8();
      v33 = v35;
      sub_1BB6BB5E4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t DKObservationGroup.face.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DKObservationGroup.body.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DKObservationGroup.hands.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t DKObservationGroup.init(groupId:face:body:hands:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;

  v7 = sub_1BB5C2498(a4);

  a5[3] = v7;
  return result;
}

uint64_t sub_1BB5FAEF4()
{
  v1 = 0x644970756F7267;
  v2 = 2036625250;
  if (*v0 != 2)
  {
    v2 = 0x73646E6168;
  }

  if (*v0)
  {
    v1 = 1701011814;
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

uint64_t sub_1BB5FAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB608D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5FAF84(uint64_t a1)
{
  v2 = sub_1BB604228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FAFC0(uint64_t a1)
{
  v2 = sub_1BB604228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKObservationGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB604228();
  v10 = v4;
  sub_1BB6BB984();
  LOBYTE(v18) = 0;
  sub_1BB6BB734();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    v18 = v16;
    v17 = 1;
    type metadata accessor for DKFaceObservation(0);
    sub_1BB6042BC(&qword_1EBC5C568, type metadata accessor for DKFaceObservation);
    sub_1BB6BB704();
    v18 = v11;
    v17 = 2;
    type metadata accessor for DKBodyObservation(0);
    sub_1BB6042BC(&qword_1EBC5C580, type metadata accessor for DKBodyObservation);
    sub_1BB6BB704();
    v18 = v12;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDF8);
    sub_1BB604304();
    sub_1BB6BB744();
  }

  return (*(v5 + 8))(v7, v10);
}

uint64_t DKObservationGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB604228();
  sub_1BB6BB974();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v15) = 0;
    v13 = sub_1BB6BB674();
    type metadata accessor for DKFaceObservation(0);
    v14 = 1;
    sub_1BB6042BC(&qword_1EBC5C670, type metadata accessor for DKFaceObservation);
    sub_1BB6BB644();
    v10 = v15;
    type metadata accessor for DKBodyObservation(0);
    v14 = 2;
    sub_1BB6042BC(&qword_1EBC5C680, type metadata accessor for DKBodyObservation);
    sub_1BB6BB644();
    v11 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CDF8);
    v14 = 3;
    sub_1BB6043E0();
    sub_1BB6BB684();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v13;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1BB5FB6D0(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB5FB778(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FB7D4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FB830(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FB88C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FB8E8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FB944(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1BB5FBA1C(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x4972656B63617274;
      break;
    case 5:
      result = 0x644970756F7267;
      break;
    case 6:
      result = 7823737;
      break;
    case 7:
      result = 0x6863746970;
      break;
    case 8:
      result = 1819045746;
      break;
    case 9:
      result = 0x65636E6174736964;
      break;
    case 10:
      result = 0x7463656A624F7369;
      break;
    case 11:
      result = 0x61746E6F72467369;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB5FBB60(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BB5FBA1C(*a1);
  v5 = v4;
  if (v3 == sub_1BB5FBA1C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BB6BB7E4();
  }

  return v8 & 1;
}

uint64_t sub_1BB5FBBE8()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB5FBA1C(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5FBC4C()
{
  sub_1BB5FBA1C(*v0);
  sub_1BB6BACC4();
}

uint64_t sub_1BB5FBCA0()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB5FBA1C(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5FBD00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608ED0();
  *a1 = result;
  return result;
}

unint64_t sub_1BB5FBD30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB5FBA1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BB5FBD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608ED0();
  *a1 = result;
  return result;
}

uint64_t sub_1BB5FBDAC(uint64_t a1)
{
  v2 = sub_1BB604610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FBDE8(uint64_t a1)
{
  v2 = sub_1BB604610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFaceObservation.init(time:uuid:rect:identityConfidences:trackerId:groupId:yaw:pitch:roll:distance:isFrontal:identityProbabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, char a20, uint64_t a21)
{
  v27 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  v28 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  v29 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  v30 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  v31 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  v32 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
  v33 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
  v35 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  (*(*(v35 - 8) + 56))(v21 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time;
  v37 = sub_1BB6BA7F4();
  (*(*(v37 - 8) + 32))(v21 + v36, a1, v37);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid;
  v39 = sub_1BB6BA844();
  (*(*(v39 - 8) + 32))(v21 + v38, a2, v39);
  v40 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = a3;
  *v27 = a4;
  *(v27 + 8) = a5 & 1;
  *v28 = a6;
  *(v28 + 8) = a7 & 1;
  *v29 = a8;
  *(v29 + 8) = a13 & 1;
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  *v31 = a16;
  *(v31 + 8) = a17 & 1;
  *v32 = a18;
  *(v32 + 8) = a19 & 1;
  *(v21 + v43) = a20;
  sub_1BB5A4CF4(a21, v21 + v34);
  return v21;
}

uint64_t DKFaceObservation.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid;
  v4 = sub_1BB6BA844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BB6045A8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities);
  return v0;
}

uint64_t DKFaceObservation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid;
  v4 = sub_1BB6BA844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BB6045A8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5FC304(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = &v23 - v3;
  v4 = sub_1BB6BA844();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE28);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB604610();
  v14 = v10;
  sub_1BB6BB984();
  v15 = v27;
  (*(v7 + 16))(v9, v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time, v6);
  LOBYTE(v29) = 0;
  sub_1BB6042BC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v16 = v28;
  sub_1BB6BB744();
  if (v16)
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v14);
  }

  else
  {
    v28 = v11;
    (*(v7 + 8))(v9, v6);
    v19 = v24;
    v18 = v25;
    v20 = v26;
    (*(v25 + 16))(v24, v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v26);
    LOBYTE(v29) = 1;
    sub_1BB6042BC(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    (*(v18 + 8))(v19, v20);
    v21 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
    v29 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
    v30 = v21;
    v31 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB6042BC(&qword_1EBC5C610, type metadata accessor for CGRect);
    sub_1BB6BB744();
    *&v29 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences);
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    sub_1BB604664(&qword_1EBC5CE48, sub_1BB6046DC);
    sub_1BB6BB744();
    LOBYTE(v29) = 4;
    sub_1BB6BB6F4();
    LOBYTE(v29) = 5;
    sub_1BB6BB6F4();
    LOBYTE(v29) = 6;
    sub_1BB6BB6E4();
    LOBYTE(v29) = 7;
    sub_1BB6BB6E4();
    LOBYTE(v29) = 8;
    sub_1BB6BB6E4();
    LOBYTE(v29) = 9;
    sub_1BB6BB6E4();
    LOBYTE(v29) = 10;
    sub_1BB6BB714();
    LOBYTE(v29) = 11;
    sub_1BB6BB6D4();
    v22 = v23;
    sub_1BB604538(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities, v23);
    LOBYTE(v29) = 12;
    type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    sub_1BB6042BC(&qword_1EBC5CE58, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB704();
    sub_1BB6045A8(v22);
    return (*(v28 + 8))(v13, v14);
  }
}

uint64_t DKFaceObservation.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v52 - v4;
  v5 = sub_1BB6BA844();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1BB6BA7F4();
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE60);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  *v11 = 0;
  v60 = v11;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  *v12 = 0;
  v59 = v12;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  *v16 = 0;
  *(v16 + 8) = 1;
  v56 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal) = 2;
  v58 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
  v70 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
  v71 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
  v17 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
  v19 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v20 = *(*(v19 - 8) + 56);
  v72 = v18;
  v75 = v1;
  v20(v1 + v18, 1, 1, v19);
  v21 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1BB604610();
  v69 = v10;
  v22 = v73;
  sub_1BB6BB974();
  if (v22)
  {
    v23 = v75;

    sub_1BB6045A8(v23 + v72);
    type metadata accessor for DKFaceObservation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v62;
    v73 = v13;
    v55 = v14;
    v54 = v15;
    v25 = v63;
    v53 = v16;
    v26 = v64;
    v52 = v19;
    LOBYTE(v76) = 0;
    sub_1BB6042BC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v27 = v65;
    v28 = v68;
    sub_1BB6BB684();
    v29 = v28;
    v30 = v75;
    (*(v61 + 32))(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time, v27, v29);
    LOBYTE(v76) = 1;
    sub_1BB6042BC(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
    sub_1BB6BB684();
    (*(v25 + 32))(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v24, v26);
    type metadata accessor for CGRect(0);
    v78 = 2;
    sub_1BB6042BC(&qword_1EBC5C6E8, type metadata accessor for CGRect);
    sub_1BB6BB684();
    v31 = (v30 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
    v32 = v77;
    *v31 = v76;
    v31[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    v78 = 3;
    sub_1BB604664(&qword_1EBC5CE70, sub_1BB604730);
    sub_1BB6BB684();
    *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = v76;
    LOBYTE(v76) = 4;
    v34 = sub_1BB6BB634();
    v35 = v60;
    *v60 = v34;
    *(v35 + 8) = v36 & 1;
    LOBYTE(v76) = 5;
    v37 = sub_1BB6BB634();
    v38 = v59;
    *v59 = v37;
    *(v38 + 8) = v39 & 1;
    LOBYTE(v76) = 6;
    v40 = sub_1BB6BB624();
    v41 = v73;
    *v73 = v40;
    *(v41 + 8) = v42 & 1;
    LOBYTE(v76) = 7;
    v43 = sub_1BB6BB624();
    v44 = v55;
    *v55 = v43;
    *(v44 + 8) = v45 & 1;
    LOBYTE(v76) = 8;
    v46 = sub_1BB6BB624();
    v47 = v54;
    *v54 = v46;
    *(v47 + 8) = v48 & 1;
    LOBYTE(v76) = 9;
    v49 = sub_1BB6BB624();
    v50 = v53;
    *v53 = v49;
    *(v50 + 8) = v51 & 1;
    LOBYTE(v76) = 10;
    *(v75 + v58) = sub_1BB6BB654() & 1;
    LOBYTE(v76) = 11;
    *(v75 + v56) = sub_1BB6BB614();
    LOBYTE(v76) = 12;
    sub_1BB6042BC(&qword_1EBC5CE80, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB644();
    (*(v66 + 8))(v69, v67);
    v23 = v75;
    sub_1BB5A4CF4(v57, v75 + v72);
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v23;
}

void sub_1BB5FD54C(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB5FD60C(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FD674(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FD6DC(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FD7F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKFaceObservation(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB5FD924(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB5FD9CC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FDA28(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FDA84(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FDAC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00]();
  v9 = &v11 - v8;
  sub_1BB604538(a1, &v11 - v8);
  return sub_1BB5A4CF4(v9, *a2 + *a5);
}

uint64_t sub_1BB5FDBDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608F1C();
  *a1 = result;
  return result;
}

void sub_1BB5FDC0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701669236;
  v5 = 0xE800000000000000;
  v6 = 0x65636E6174736964;
  if (v2 != 6)
  {
    v6 = 0xD000000000000015;
    v5 = 0x80000001BB6CA610;
  }

  v7 = 0xE900000000000064;
  v8 = 0x4972656B63617274;
  if (v2 != 4)
  {
    v8 = 0x644970756F7267;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1952671090;
  if (v2 != 2)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000001BB6CA5D0;
  }

  if (*v1)
  {
    v4 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1BB5FDD04()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x65636E6174736964;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x4972656B63617274;
  if (v1 != 4)
  {
    v4 = 0x644970756F7267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1952671090;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 1684632949;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB5FDDF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608F1C();
  *a1 = result;
  return result;
}

uint64_t sub_1BB5FDE20(uint64_t a1)
{
  v2 = sub_1BB604784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FDE5C(uint64_t a1)
{
  v2 = sub_1BB604784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyObservation.init(time:uuid:rect:identityConfidences:trackerId:groupId:distance:identityProbabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14)
{
  v22 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
  v24 = v14 + v23;
  v25 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
  v28 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  (*(*(v28 - 8) + 56))(v14 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time;
  v30 = sub_1BB6BA7F4();
  (*(*(v30 - 8) + 32))(v14 + v29, a1, v30);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v14 + v31, a2, v32);
  v33 = (v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences) = a3;
  *v22 = a4;
  *(v22 + 8) = a5 & 1;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  *v26 = a8;
  *(v26 + 8) = a13 & 1;
  sub_1BB5A4CF4(a14, v14 + v27);
  return v14;
}

uint64_t DKBodyObservation.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid;
  v4 = sub_1BB6BA844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BB6045A8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities);
  return v0;
}

uint64_t DKBodyObservation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid;
  v4 = sub_1BB6BA844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BB6045A8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5FE2AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v27 - v3;
  v4 = sub_1BB6BA844();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB604784();
  v14 = v10;
  sub_1BB6BB984();
  v15 = v31;
  (*(v7 + 16))(v9, v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time, v6);
  LOBYTE(v33) = 0;
  sub_1BB6042BC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v16 = v32;
  sub_1BB6BB744();
  if (v16)
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v14);
  }

  else
  {
    v32 = v11;
    (*(v7 + 8))(v9, v6);
    v19 = v29;
    v18 = v30;
    v20 = v15;
    v21 = v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid;
    v22 = v28;
    (*(v29 + 16))(v28, v21, v30);
    LOBYTE(v33) = 1;
    sub_1BB6042BC(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    (*(v19 + 8))(v22, v18);
    v23 = *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
    v33 = *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
    v34 = v23;
    v35 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB6042BC(&qword_1EBC5C610, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v24 = v32;
    *&v33 = *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences);
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    sub_1BB604664(&qword_1EBC5CE48, sub_1BB6046DC);
    sub_1BB6BB744();
    LOBYTE(v33) = 4;
    sub_1BB6BB6F4();
    LOBYTE(v33) = 5;
    sub_1BB6BB6F4();
    LOBYTE(v33) = 6;
    sub_1BB6BB6E4();
    v25 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
    v26 = v27;
    sub_1BB604538(v25, v27);
    LOBYTE(v33) = 7;
    type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    sub_1BB6042BC(&qword_1EBC5CE58, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB704();
    sub_1BB6045A8(v26);
    return (*(v24 + 8))(0, v14);
  }
}

uint64_t DKBodyObservation.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = v40 - v5;
  v49 = sub_1BB6BA844();
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1BB6BA7F4();
  v46 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE98);
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = v40 - v8;
  v10 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *v11 = 0;
  *(v11 + 8) = 1;
  v54 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;
  v55 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
  v12 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
  v15 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v16 = *(*(v15 - 8) + 56);
  v56 = v14;
  v16(v2 + v14, 1, 1, v15);
  v17 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1BB604784();
  v51 = v9;
  v18 = v57;
  sub_1BB6BB974();
  if (v18)
  {

    sub_1BB6045A8(v2 + v56);
    type metadata accessor for DKBodyObservation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v48;
    v57 = v10;
    v43 = v11;
    v41 = v13;
    v42 = v15;
    v20 = v49;
    v21 = v47;
    LOBYTE(v59) = 0;
    sub_1BB6042BC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v23 = v50;
    v22 = v51;
    v24 = v52;
    v25 = v53;
    sub_1BB6BB684();
    v26 = *(v46 + 32);
    v40[1] = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time;
    v26(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time, v23, v25);
    LOBYTE(v59) = 1;
    sub_1BB6042BC(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
    sub_1BB6BB684();
    (*(v45 + 32))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid, v19, v20);
    type metadata accessor for CGRect(0);
    v61 = 2;
    sub_1BB6042BC(&qword_1EBC5C6E8, type metadata accessor for CGRect);
    sub_1BB6BB684();
    v28 = (v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
    v29 = v60;
    *v28 = v59;
    v28[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    v61 = 3;
    sub_1BB604664(&qword_1EBC5CE70, sub_1BB604730);
    sub_1BB6BB684();
    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences) = v59;
    LOBYTE(v59) = 4;
    v30 = sub_1BB6BB634();
    v31 = v57;
    *v57 = v30;
    *(v31 + 8) = v32 & 1;
    LOBYTE(v59) = 5;
    v33 = sub_1BB6BB634();
    v34 = v43;
    *v43 = v33;
    *(v34 + 8) = v35 & 1;
    LOBYTE(v59) = 6;
    v36 = sub_1BB6BB624();
    v37 = v41;
    *v41 = v36;
    *(v37 + 8) = v38 & 1;
    LOBYTE(v59) = 7;
    sub_1BB6042BC(&qword_1EBC5CE80, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    v39 = v44;
    sub_1BB6BB644();
    (*(v21 + 8))(v22, v24);
    sub_1BB5A4CF4(v39, v2 + v56);
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  return v2;
}

void sub_1BB5FF1BC(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB5FF27C(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF2E4(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF34C(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF3D8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BB5FF4D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKBodyObservation(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB5FF604(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB5FF6AC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF708(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF764(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5FF7C0()
{
  sub_1BB6BACC4();
}

uint64_t sub_1BB5FF8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608F68();
  *a1 = result;
  return result;
}

void sub_1BB5FF8F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701669236;
  v5 = 0xE700000000000000;
  v6 = 0x644970756F7267;
  if (v2 != 5)
  {
    v6 = 0x65636E6174736964;
    v5 = 0xE800000000000000;
  }

  v7 = 0x80000001BB6CA5D0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x4972656B63617274;
    v7 = 0xE900000000000064;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1684632949;
  if (v2 != 1)
  {
    v9 = 1952671090;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1BB5FF9C8()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x644970756F7267;
  if (v1 != 5)
  {
    v3 = 0x65636E6174736964;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4972656B63617274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1684632949;
  if (v1 != 1)
  {
    v5 = 1952671090;
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

uint64_t sub_1BB5FFA94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB608F68();
  *a1 = result;
  return result;
}

uint64_t sub_1BB5FFAC8(uint64_t a1)
{
  v2 = sub_1BB6047D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5FFB04(uint64_t a1)
{
  v2 = sub_1BB6047D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKObjectObservation.__allocating_init(time:uuid:rect:identityConfidences:trackerId:groupId:distance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13)
{
  v21 = swift_allocObject();
  v22 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_crop) = 0;
  v24 = v21 + v23;
  v25 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_time;
  v27 = sub_1BB6BA7F4();
  (*(*(v27 - 8) + 32))(v21 + v26, a1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_uuid;
  v29 = sub_1BB6BA844();
  (*(*(v29 - 8) + 32))(v21 + v28, a2, v29);
  v30 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
  *v30 = a9;
  v30[1] = a10;
  v30[2] = a11;
  v30[3] = a12;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_identityConfidences) = a3;
  *v22 = a4;
  *(v22 + 8) = a5 & 1;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  *v25 = a8;
  *(v25 + 8) = a13 & 1;
  return v21;
}

uint64_t DKObjectObservation.init(time:uuid:rect:identityConfidences:trackerId:groupId:distance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13)
{
  v22 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_crop) = 0;
  v24 = v13 + v23;
  v25 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_time;
  v27 = sub_1BB6BA7F4();
  (*(*(v27 - 8) + 32))(v13 + v26, a1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_uuid;
  v29 = sub_1BB6BA844();
  (*(*(v29 - 8) + 32))(v13 + v28, a2, v29);
  v30 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
  *v30 = a9;
  v30[1] = a10;
  v30[2] = a11;
  v30[3] = a12;
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_identityConfidences) = a3;
  *v22 = a4;
  *(v22 + 8) = a5 & 1;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  *v25 = a8;
  *(v25 + 8) = a13 & 1;
  return v13;
}

uint64_t sub_1BB5FFECC(void *a1)
{
  v2 = sub_1BB6BA844();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6047D8();
  v12 = v24;
  sub_1BB6BB984();
  (*(v5 + 16))(v7, v12 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_time, v4);
  LOBYTE(v26) = 0;
  sub_1BB6042BC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v13 = v25;
  sub_1BB6BB744();
  if (v13)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v25 = v9;
    (*(v5 + 8))(v7, v4);
    v16 = v21;
    v15 = v22;
    v17 = v23;
    (*(v22 + 16))(v21, v12 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_uuid, v23);
    LOBYTE(v26) = 1;
    sub_1BB6042BC(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    (*(v15 + 8))(v16, v17);
    v18 = *(v12 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect + 16);
    v26 = *(v12 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
    v27 = v18;
    v28 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB6042BC(&qword_1EBC5C610, type metadata accessor for CGRect);
    sub_1BB6BB744();
    *&v26 = *(v12 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_identityConfidences);
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    sub_1BB604664(&qword_1EBC5CE48, sub_1BB6046DC);
    sub_1BB6BB744();
    LOBYTE(v26) = 4;
    sub_1BB6BB6F4();
    v19 = v25;
    LOBYTE(v26) = 5;
    sub_1BB6BB6F4();
    LOBYTE(v26) = 6;
    sub_1BB6BB6E4();
    return (*(v19 + 8))(v11, 0);
  }
}

uint64_t DKObjectObservation.init(from:)(void *a1)
{
  v3 = sub_1BB6BA844();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BB6BA7F4();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEB0);
  v38 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = v34 - v7;
  v9 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *v10 = 0;
  *(v10 + 8) = 1;
  v45 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_crop;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_crop) = 0;
  v47 = v1;
  v48 = a1;
  v11 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  *v11 = 0;
  *(v11 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6047D8();
  v44 = v8;
  v12 = v46;
  sub_1BB6BB974();
  if (v12)
  {
    v13 = v47;

    type metadata accessor for DKObjectObservation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v39;
    v14 = v40;
    v46 = v9;
    v35 = v11;
    v36 = v10;
    v16 = v41;
    v17 = v38;
    LOBYTE(v49) = 0;
    sub_1BB6042BC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v18 = v42;
    v19 = v43;
    sub_1BB6BB684();
    v20 = v5;
    v21 = *(v37 + 32);
    v13 = v47;
    v34[1] = OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_time;
    v42 = v20;
    v21(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_time, v18);
    LOBYTE(v49) = 1;
    sub_1BB6042BC(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
    sub_1BB6BB684();
    (*(v14 + 32))(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_uuid, v15, v16);
    type metadata accessor for CGRect(0);
    v51 = 2;
    sub_1BB6042BC(&qword_1EBC5C6E8, type metadata accessor for CGRect);
    sub_1BB6BB684();
    v23 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
    v24 = v50;
    *v23 = v49;
    v23[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    v51 = 3;
    sub_1BB604664(&qword_1EBC5CE70, sub_1BB604730);
    sub_1BB6BB684();
    *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_identityConfidences) = v49;
    LOBYTE(v49) = 4;
    v25 = sub_1BB6BB634();
    v26 = v46;
    *v46 = v25;
    *(v26 + 8) = v27 & 1;
    LOBYTE(v49) = 5;
    v28 = sub_1BB6BB634();
    v29 = v36;
    *v36 = v28;
    *(v29 + 8) = v30 & 1;
    LOBYTE(v49) = 6;
    v31 = sub_1BB6BB624();
    LOBYTE(v18) = v32;
    (*(v17 + 8))(v44, v19);
    v33 = v35;
    *v35 = v31;
    *(v33 + 8) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return v13;
}

void sub_1BB600BD8(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB600C98(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB600D00(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB600D68(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB600E84@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKObjectObservation(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t sub_1BB600EC8()
{
  v1 = 0x646E61487466654CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E61487468676952;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_1BB600F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB608FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB600F50(uint64_t a1)
{
  v2 = sub_1BB60484C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB600F8C(uint64_t a1)
{
  v2 = sub_1BB60484C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB600FC8(uint64_t a1)
{
  v2 = sub_1BB6048F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB601004(uint64_t a1)
{
  v2 = sub_1BB6048F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB601040(uint64_t a1)
{
  v2 = sub_1BB6048A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB60107C(uint64_t a1)
{
  v2 = sub_1BB6048A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB6010B8(uint64_t a1)
{
  v2 = sub_1BB604948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6010F4(uint64_t a1)
{
  v2 = sub_1BB604948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKHandObservation.Chirality.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEB8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEC0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEC8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CED0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB60484C();
  sub_1BB6BB984();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BB6048F4();
      v9 = v21;
      sub_1BB6BB6B4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BB6048A0();
      v9 = v24;
      sub_1BB6BB6B4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BB604948();
    sub_1BB6BB6B4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DKHandObservation.Chirality.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CEF8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CF00);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CF08);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CF10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB60484C();
  v15 = v36;
  sub_1BB6BB974();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BB6BB694();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BB5D7124();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BB6BB3B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v24 = &type metadata for DKHandObservation.Chirality;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BB6048F4();
          sub_1BB6BB5E4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BB6048A0();
          v26 = v17;
          sub_1BB6BB5E4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BB604948();
        sub_1BB6BB5E4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1BB601B24(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB601BCC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB601C28(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB601CD4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB601D40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6090D4();
  *a1 = result;
  return result;
}

void sub_1BB601D70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701669236;
  v5 = 0xE900000000000079;
  v6 = 0x74696C6172696863;
  if (v2 != 6)
  {
    v6 = 0x65636E6174736964;
    v5 = 0xE800000000000000;
  }

  v7 = 0x4972656B63617274;
  v8 = 0xE900000000000064;
  if (v2 != 4)
  {
    v7 = 0x644970756F7267;
    v8 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1952671090;
  if (v2 != 2)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000001BB6CA5D0;
  }

  if (*v1)
  {
    v4 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1BB601E68()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x74696C6172696863;
  if (v1 != 6)
  {
    v3 = 0x65636E6174736964;
  }

  v4 = 0x4972656B63617274;
  if (v1 != 4)
  {
    v4 = 0x644970756F7267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1952671090;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 1684632949;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB601F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6090D4();
  *a1 = result;
  return result;
}

uint64_t sub_1BB601F84(uint64_t a1)
{
  v2 = sub_1BB60499C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB601FC0(uint64_t a1)
{
  v2 = sub_1BB60499C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKHandObservation.__allocating_init(time:uuid:rect:identityConfidences:trackerId:groupId:chirality:distance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, _BYTE *a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  v23 = swift_allocObject();
  LOBYTE(a8) = *a8;
  v24 = v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = 0;
  v26 = v23 + v25;
  v27 = v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_time;
  v29 = sub_1BB6BA7F4();
  (*(*(v29 - 8) + 32))(v23 + v28, a1, v29);
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_uuid;
  v31 = sub_1BB6BA844();
  (*(*(v31 - 8) + 32))(v23 + v30, a2, v31);
  v32 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
  *v32 = a9;
  v32[1] = a10;
  v32[2] = a11;
  v32[3] = a12;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_identityConfidences) = a3;
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *v26 = a6;
  *(v26 + 8) = a7 & 1;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality) = a8;
  *v27 = a13;
  *(v27 + 8) = a14 & 1;
  return v23;
}

uint64_t DKHandObservation.init(time:uuid:rect:identityConfidences:trackerId:groupId:chirality:distance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char *a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  v23 = *a8;
  v24 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = 0;
  v26 = v14 + v25;
  v27 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_time;
  v29 = sub_1BB6BA7F4();
  (*(*(v29 - 8) + 32))(v14 + v28, a1, v29);
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_uuid;
  v31 = sub_1BB6BA844();
  (*(*(v31 - 8) + 32))(v14 + v30, a2, v31);
  v32 = (v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
  *v32 = a9;
  v32[1] = a10;
  v32[2] = a11;
  v32[3] = a12;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_identityConfidences) = a3;
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *v26 = a6;
  *(v26 + 8) = a7 & 1;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality) = v23;
  *v27 = a13;
  *(v27 + 8) = a14 & 1;
  return v14;
}

uint64_t sub_1BB6023A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = sub_1BB6BA7F4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = *a2;
  v7 = sub_1BB6BA844();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return v2;
}

uint64_t sub_1BB602490(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = sub_1BB6BA7F4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = *a2;
  v7 = sub_1BB6BA844();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB602598(void *a1)
{
  v2 = sub_1BB6BA844();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CF18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB60499C();
  v12 = v8;
  v13 = v26;
  sub_1BB6BB984();
  (*(v5 + 16))(v7, v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_time, v4);
  LOBYTE(v28) = 0;
  sub_1BB6042BC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v14 = v27;
  sub_1BB6BB744();
  if (v14)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v12);
  }

  else
  {
    v27 = v9;
    (*(v5 + 8))(v7, v4);
    v17 = v23;
    v16 = v24;
    v18 = v25;
    (*(v24 + 16))(v23, v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_uuid, v25);
    LOBYTE(v28) = 1;
    sub_1BB6042BC(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    (*(v16 + 8))(v17, v18);
    v19 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 16);
    v28 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
    v29 = v19;
    v30 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB6042BC(&qword_1EBC5C610, type metadata accessor for CGRect);
    v20 = v12;
    sub_1BB6BB744();
    *&v28 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_identityConfidences);
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    sub_1BB604664(&qword_1EBC5CE48, sub_1BB6046DC);
    sub_1BB6BB744();
    LOBYTE(v28) = 4;
    sub_1BB6BB6F4();
    v21 = v27;
    LOBYTE(v28) = 5;
    sub_1BB6BB6F4();
    LOBYTE(v28) = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality);
    v30 = 6;
    sub_1BB6049F0();
    sub_1BB6BB744();
    LOBYTE(v28) = 7;
    sub_1BB6BB6E4();
    return (*(v21 + 8))(v11, v20);
  }
}

uint64_t sub_1BB602BB4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t DKHandObservation.init(from:)(void *a1)
{
  v3 = sub_1BB6BA844();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BB6BA7F4();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CF30);
  v36 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = v32 - v7;
  v9 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *v10 = 0;
  *(v10 + 8) = 1;
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = 0;
  v45 = v1;
  v46 = a1;
  v11 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  *v11 = 0;
  *(v11 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB60499C();
  v41 = v8;
  v12 = v44;
  sub_1BB6BB974();
  if (v12)
  {
    v13 = v45;

    type metadata accessor for DKHandObservation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v36;
    v15 = v37;
    v44 = v9;
    v33 = v11;
    v34 = v10;
    v17 = v38;
    v16 = v39;
    LOBYTE(v47) = 0;
    sub_1BB6042BC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v18 = v40;
    sub_1BB6BB684();
    v19 = *(v35 + 32);
    v13 = v45;
    v32[1] = OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_time;
    v19(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_time, v18, v5);
    LOBYTE(v47) = 1;
    sub_1BB6042BC(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
    sub_1BB6BB684();
    (*(v17 + 32))(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_uuid, v15, v16);
    type metadata accessor for CGRect(0);
    v49 = 2;
    sub_1BB6042BC(&qword_1EBC5C6E8, type metadata accessor for CGRect);
    sub_1BB6BB684();
    v20 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
    v21 = v48;
    *v20 = v47;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CE40);
    v49 = 3;
    sub_1BB604664(&qword_1EBC5CE70, sub_1BB604730);
    sub_1BB6BB684();
    *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_identityConfidences) = v47;
    LOBYTE(v47) = 4;
    v22 = sub_1BB6BB634();
    v23 = v44;
    *v44 = v22;
    *(v23 + 8) = v24 & 1;
    LOBYTE(v47) = 5;
    v25 = sub_1BB6BB634();
    v26 = v34;
    *v34 = v25;
    *(v26 + 8) = v27 & 1;
    v49 = 6;
    sub_1BB604A44();
    sub_1BB6BB684();
    *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality) = v47;
    LOBYTE(v47) = 7;
    v29 = sub_1BB6BB624();
    LOBYTE(v18) = v30;
    (*(v14 + 8))(v41, v42);
    v31 = v33;
    *v33 = v29;
    *(v31 + 8) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return v13;
}

void sub_1BB6033A8(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB603468(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB6034D0(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB603538(uint64_t result, char a2)
{
  v3 = *v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB603608@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1BB6036A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = *v5;
  v8 = *a4;
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 40);

  return v10(v7 + v8, a1, v9);
}

uint64_t sub_1BB60374C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKHandObservation(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t sub_1BB603790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  (*(v10 + 16))(&v14 - v11, a1, v9);
  return (*(v10 + 40))(*a2 + *a6, v12, v9);
}

uint64_t sub_1BB6038A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1BB603940(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

void *sub_1BB603A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image);
  v2 = v1;
  return v1;
}

uint64_t sub_1BB603B08(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1BB603B4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID);

  return v1;
}

uint64_t sub_1BB603B88(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1BB603BE4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

id DKObservationMetadata.init(time:observations:image:standPosition:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition;
  *&v4[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition] = 0;
  v11 = &v4[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v4[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency];
  *v13 = 0;
  v13[8] = 1;
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
  v15 = sub_1BB6BA7F4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v4[v14], a1, v15);
  *&v4[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations] = a2;
  *&v4[v9] = a3;
  *&v4[v10] = v8;
  v17 = a3;

  v20.receiver = v4;
  v20.super_class = type metadata accessor for DKObservationMetadata(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);

  (*(v16 + 8))(a1, v15);
  return v18;
}

unint64_t sub_1BB603D90()
{
  result = qword_1EBC5CCC0;
  if (!qword_1EBC5CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CCC0);
  }

  return result;
}

unint64_t sub_1BB603DE4()
{
  result = qword_1EBC5CCC8;
  if (!qword_1EBC5CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CCC8);
  }

  return result;
}

unint64_t sub_1BB603E38()
{
  result = qword_1EBC5CCD0;
  if (!qword_1EBC5CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CCD0);
  }

  return result;
}

unint64_t sub_1BB603E8C()
{
  result = qword_1EBC5CCD8;
  if (!qword_1EBC5CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CCD8);
  }

  return result;
}

unint64_t sub_1BB603EE0()
{
  result = qword_1EBC5CCE0;
  if (!qword_1EBC5CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CCE0);
  }

  return result;
}

unint64_t sub_1BB603F34()
{
  result = qword_1EBC5CD30;
  if (!qword_1EBC5CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CD30);
  }

  return result;
}

unint64_t sub_1BB603F88()
{
  result = qword_1EBC5CD38;
  if (!qword_1EBC5CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CD38);
  }

  return result;
}

unint64_t sub_1BB603FDC()
{
  result = qword_1EBC5CD40;
  if (!qword_1EBC5CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CD40);
  }

  return result;
}

unint64_t sub_1BB604030()
{
  result = qword_1EBC5CD48;
  if (!qword_1EBC5CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CD48);
  }

  return result;
}

unint64_t sub_1BB604084()
{
  result = qword_1EBC5CD98;
  if (!qword_1EBC5CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CD98);
  }

  return result;
}

unint64_t sub_1BB6040D8()
{
  result = qword_1EBC5CDA0;
  if (!qword_1EBC5CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CDA0);
  }

  return result;
}

unint64_t sub_1BB60412C()
{
  result = qword_1EBC5CDA8;
  if (!qword_1EBC5CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CDA8);
  }

  return result;
}

unint64_t sub_1BB604180()
{
  result = qword_1EBC5CDB0;
  if (!qword_1EBC5CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CDB0);
  }

  return result;
}

unint64_t sub_1BB6041D4()
{
  result = qword_1EBC5CDB8;
  if (!qword_1EBC5CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CDB8);
  }

  return result;
}

unint64_t sub_1BB604228()
{
  result = qword_1EBC5CDF0;
  if (!qword_1EBC5CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CDF0);
  }

  return result;
}

uint64_t sub_1BB6042BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BB604304()
{
  result = qword_1EBC5CE00;
  if (!qword_1EBC5CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CDF8);
    sub_1BB60449C(&qword_1EBC5CE08, &qword_1EBC5C598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE00);
  }

  return result;
}

unint64_t sub_1BB6043E0()
{
  result = qword_1EBC5CE18;
  if (!qword_1EBC5CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CDF8);
    sub_1BB60449C(&qword_1EBC5CE20, &qword_1EBC5C690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE18);
  }

  return result;
}

uint64_t sub_1BB60449C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C470);
    sub_1BB6042BC(a2, type metadata accessor for DKHandObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB604538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6045A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB604610()
{
  result = qword_1EBC5CE30;
  if (!qword_1EBC5CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE30);
  }

  return result;
}

uint64_t sub_1BB604664(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB6046DC()
{
  result = qword_1EBC5CE50;
  if (!qword_1EBC5CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE50);
  }

  return result;
}

unint64_t sub_1BB604730()
{
  result = qword_1EBC5CE78;
  if (!qword_1EBC5CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE78);
  }

  return result;
}

unint64_t sub_1BB604784()
{
  result = qword_1EBC5CE90;
  if (!qword_1EBC5CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CE90);
  }

  return result;
}

unint64_t sub_1BB6047D8()
{
  result = qword_1EBC5CEA8;
  if (!qword_1EBC5CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CEA8);
  }

  return result;
}

unint64_t sub_1BB60484C()
{
  result = qword_1EBC5CED8;
  if (!qword_1EBC5CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CED8);
  }

  return result;
}

unint64_t sub_1BB6048A0()
{
  result = qword_1EBC5CEE0;
  if (!qword_1EBC5CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CEE0);
  }

  return result;
}

unint64_t sub_1BB6048F4()
{
  result = qword_1EBC5CEE8;
  if (!qword_1EBC5CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CEE8);
  }

  return result;
}

unint64_t sub_1BB604948()
{
  result = qword_1EBC5CEF0;
  if (!qword_1EBC5CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CEF0);
  }

  return result;
}

unint64_t sub_1BB60499C()
{
  result = qword_1EBC5CF20;
  if (!qword_1EBC5CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF20);
  }

  return result;
}

unint64_t sub_1BB6049F0()
{
  result = qword_1EBC5CF28;
  if (!qword_1EBC5CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF28);
  }

  return result;
}

unint64_t sub_1BB604A44()
{
  result = qword_1EBC5CF38;
  if (!qword_1EBC5CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF38);
  }

  return result;
}

id DKObservationMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DKObservationMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKObservationMetadata(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BB604B88()
{
  result = qword_1EBC5CF40;
  if (!qword_1EBC5CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF40);
  }

  return result;
}

unint64_t sub_1BB604BE0()
{
  result = qword_1EBC5CF48;
  if (!qword_1EBC5CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF48);
  }

  return result;
}

unint64_t sub_1BB604C38()
{
  result = qword_1EBC5CF50;
  if (!qword_1EBC5CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF50);
  }

  return result;
}

uint64_t sub_1BB604C8C(void *a1)
{
  a1[2] = sub_1BB6042BC(&qword_1EBC5C670, type metadata accessor for DKFaceObservation);
  a1[3] = sub_1BB6042BC(&qword_1EBC5C568, type metadata accessor for DKFaceObservation);
  result = sub_1BB6042BC(&qword_1EBC5CF58, type metadata accessor for DKFaceObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB604D38(void *a1)
{
  a1[2] = sub_1BB6042BC(&qword_1EBC5C680, type metadata accessor for DKBodyObservation);
  a1[3] = sub_1BB6042BC(&qword_1EBC5C580, type metadata accessor for DKBodyObservation);
  result = sub_1BB6042BC(&qword_1EBC5CF60, type metadata accessor for DKBodyObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB604DE4(void *a1)
{
  a1[2] = sub_1BB6042BC(&qword_1EBC5CF68, type metadata accessor for DKObjectObservation);
  a1[3] = sub_1BB6042BC(&qword_1EBC5CF70, type metadata accessor for DKObjectObservation);
  result = sub_1BB6042BC(&qword_1EBC5CF78, type metadata accessor for DKObjectObservation);
  a1[4] = result;
  return result;
}

unint64_t sub_1BB604E94()
{
  result = qword_1EBC5CF80;
  if (!qword_1EBC5CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CF80);
  }

  return result;
}

uint64_t sub_1BB604EE8(void *a1)
{
  a1[2] = sub_1BB6042BC(&qword_1EBC5C690, type metadata accessor for DKHandObservation);
  a1[3] = sub_1BB6042BC(&qword_1EBC5C598, type metadata accessor for DKHandObservation);
  result = sub_1BB6042BC(&qword_1EBC5CF88, type metadata accessor for DKHandObservation);
  a1[4] = result;
  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v5 + v6, v7);
}

uint64_t sub_1BB605040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BB605088(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1BB6052B4()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB605BE4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of DKFaceObservation.__allocating_init(time:uuid:rect:identityConfidences:trackerId:groupId:yaw:pitch:roll:distance:isFrontal:identityProbabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 592);
  v10 = a5 & 1;
  v11 = a7 & 1;

  return v9(a1, a2, a3, a4, v10, a6, v11);
}

void sub_1BB605BE4()
{
  if (!qword_1EBC5CFA0)
  {
    type metadata accessor for DKIdentityFilter.IdentityProbabilities(255);
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5CFA0);
    }
  }
}

void sub_1BB605C44()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB605BE4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BB606268()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BB6067A8()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BB606E44()
{
  result = sub_1BB6BA7F4();
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

uint64_t getEnumTagSinglePayload for DKIntelligentTrackingFSM.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKIntelligentTrackingFSM.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB6076A8()
{
  result = qword_1EBC5CFE8;
  if (!qword_1EBC5CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CFE8);
  }

  return result;
}

unint64_t sub_1BB607700()
{
  result = qword_1EBC5CFF0;
  if (!qword_1EBC5CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CFF0);
  }

  return result;
}

unint64_t sub_1BB607758()
{
  result = qword_1EBC5CFF8;
  if (!qword_1EBC5CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CFF8);
  }

  return result;
}

unint64_t sub_1BB6077B0()
{
  result = qword_1EBC5D000;
  if (!qword_1EBC5D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D000);
  }

  return result;
}

unint64_t sub_1BB607808()
{
  result = qword_1EBC5D008;
  if (!qword_1EBC5D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D008);
  }

  return result;
}

unint64_t sub_1BB607860()
{
  result = qword_1EBC5D010;
  if (!qword_1EBC5D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D010);
  }

  return result;
}

unint64_t sub_1BB6078B8()
{
  result = qword_1EBC5D018;
  if (!qword_1EBC5D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D018);
  }

  return result;
}

unint64_t sub_1BB607910()
{
  result = qword_1EBC5D020;
  if (!qword_1EBC5D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D020);
  }

  return result;
}

unint64_t sub_1BB607968()
{
  result = qword_1EBC5D028;
  if (!qword_1EBC5D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D028);
  }

  return result;
}

unint64_t sub_1BB6079C0()
{
  result = qword_1EBC5D030;
  if (!qword_1EBC5D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D030);
  }

  return result;
}

unint64_t sub_1BB607A18()
{
  result = qword_1EBC5D038;
  if (!qword_1EBC5D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D038);
  }

  return result;
}

unint64_t sub_1BB607A70()
{
  result = qword_1EBC5D040;
  if (!qword_1EBC5D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D040);
  }

  return result;
}

unint64_t sub_1BB607AC8()
{
  result = qword_1EBC5D048;
  if (!qword_1EBC5D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D048);
  }

  return result;
}