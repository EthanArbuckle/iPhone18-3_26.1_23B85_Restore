char *sub_1BF4A3478()
{
  v1 = v0;
  v43 = sub_1BF4E7334();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
  v6 = *v0;
  v7 = sub_1BF4E9494();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

char *sub_1BF4A37D4()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A48, &unk_1BF4F5428);
  v4 = *v0;
  v5 = sub_1BF4E9494();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v15;
    v38 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v42;
        v21 = *(v42 + 72) * v19;
        v23 = v39;
        v22 = v40;
        (*(v42 + 16))(v39, *(v4 + 48) + v21, v40);
        v24 = 24 * v19;
        v25 = (*(v4 + 56) + 24 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v29 = v41;
        (*(v20 + 32))(*(v41 + 48) + v21, v23, v22);
        v30 = *(v29 + 56);
        v4 = v38;
        v31 = (v30 + v24);
        *v31 = v26;
        v31[1] = v27;
        v31[2] = v28;
        sub_1BF3D8864(v26, v27);

        v15 = v37;
        v14 = v43;
      }

      while (v43);
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

        v1 = v33;
        v6 = v41;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
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

void *sub_1BF4A3A84()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
  v4 = *v0;
  v5 = sub_1BF4E9494();
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
        v19 *= 40;
        sub_1BF38E49C(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_1BF38E610(v34, *(v24 + 56) + v19);
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

void *sub_1BF4A3D14()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteActivityArchiveBudget();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99F0, &qword_1BF4F53B8);
  v5 = *v0;
  v6 = sub_1BF4E9494();
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
        sub_1BF4A63E4(*(v5 + 56) + v27, v31, type metadata accessor for RemoteActivityArchiveBudget);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1BF4A64AC(v26, *(v28 + 56) + v27, type metadata accessor for RemoteActivityArchiveBudget);
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

id sub_1BF4A3F6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A40, &unk_1BF4F5418);
  v2 = *v0;
  v3 = sub_1BF4E9494();
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
        sub_1BF38E49C(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BF38E610(v19, *(v4 + 56) + 40 * v17);
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

void *sub_1BF4A40F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A78, &unk_1BF4F5470);
  v2 = *v0;
  v3 = sub_1BF4E9494();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_1BF4A4270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
  v2 = *v0;
  v3 = sub_1BF4E9494();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1BF4A43E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
  v2 = *v0;
  v3 = sub_1BF4E9494();
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

char *sub_1BF4A4558()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteActivitySubscription(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BF4E7394();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A28, &unk_1BF4F53E0);
  v7 = *v0;
  v8 = sub_1BF4E9494();
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
        sub_1BF4A63E4(*(v7 + 56) + v28, v37, type metadata accessor for RemoteActivitySubscription);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1BF4A64AC(v27, *(v29 + 56) + v28, type metadata accessor for RemoteActivitySubscription);
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

void *sub_1BF4A48AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BF4E9494();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

id sub_1BF4A4A00()
{
  v1 = v0;
  v2 = type metadata accessor for ExtensionMetadata();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  v6 = *v0;
  v7 = sub_1BF4E9494();
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
        sub_1BF4A63E4(*(v6 + 56) + v23, v5, type metadata accessor for ExtensionMetadata);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_1BF4A64AC(v5, *(v8 + 56) + v23, type metadata accessor for ExtensionMetadata);
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

void *sub_1BF4A4C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99E8, &unk_1BF4F53A8);
  v2 = *v0;
  v3 = sub_1BF4E9494();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_1BF3D8864(v22, v23);
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

void *sub_1BF4A4DF8(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF49D17C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }
  }

  return result;
}

void *sub_1BF4A4E98()
{
  type metadata accessor for ChronoMetadataStore.MutableExtensionStore();
  v1 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[2] = v1;
  type metadata accessor for ChronoMetadataStore.MutableRemoteExtensionStore();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[3] = v2;
  type metadata accessor for ChronoMetadataStore.MutableConfiguredWidgetStore();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[4] = v3;
  type metadata accessor for ChronoMetadataStore.MutableHostConfigurationStore();
  v4 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[5] = v4;
  type metadata accessor for ChronoMetadataStore.MutablePreviewConfigurationStore();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[6] = v5;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorDeviceMetadataStore();
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[7] = v6;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorRecordMetadataStore();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[8] = v7;
  type metadata accessor for ChronoMetadataStore.MutableStateReplicatorPairingRelationshipStore();
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[9] = v8;
  type metadata accessor for ChronoMetadataStore.MutableReloadStateStore();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[10] = v9;
  type metadata accessor for ChronoMetadataStore.MutableRemoteActivitySubscriptionStore();
  v10 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[11] = v10;
  type metadata accessor for ChronoMetadataStore.MutableRemoteActivityArchiveBudgetStore();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[12] = v11;
  type metadata accessor for ChronoMetadataStore.MutablePushSubcriptionStore();
  v12 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[13] = v12;
  type metadata accessor for ChronoMetadataStore.MutablePublicTokenStore();
  v13 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[14] = v13;
  type metadata accessor for ChronoMetadataStore.MutablePushTokenStore();
  v14 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[15] = v14;
  return v0;
}

uint64_t sub_1BF4A5180(uint64_t a1)
{
  v3 = type metadata accessor for ExtensionMetadata();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1BF3E1604(0, v6, 0);
  v7 = v34;
  v8 = -1 << *(a1 + 32);
  v32 = a1 + 64;
  result = sub_1BF4E91B4();
  v10 = result;
  v11 = 0;
  v28 = a1 + 72;
  v12 = a1;
  v30 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v12 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v32 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    v15 = v6;
    v16 = *(v12 + 36);
    v17 = *(*(v12 + 56) + 8 * v10);

    sub_1BF48FB24(v18, v33);
    if (v1)
    {

      return v7;
    }

    v31 = 0;

    v34 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1BF3E1604(v19 > 1, v20 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v20 + 1;
    result = sub_1BF4A64AC(v33, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20, type metadata accessor for ExtensionMetadata);
    v12 = v30;
    v13 = 1 << *(v30 + 32);
    if (v10 >= v13)
    {
      goto LABEL_26;
    }

    v21 = *(v32 + 8 * v14);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_27;
    }

    if (v16 != *(v30 + 36))
    {
      goto LABEL_28;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (v28 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1BF404DA8(v10, v16, 0);
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_20;
        }
      }

      result = sub_1BF404DA8(v10, v16, 0);
LABEL_20:
      v12 = v30;
    }

    ++v11;
    v10 = v13;
    v6 = v15;
    v1 = v31;
    if (v11 == v15)
    {
      return v7;
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
  return result;
}

uint64_t sub_1BF4A55A4(uint64_t result, void *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;

      sub_1BF48E1BC(&v8, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1BF4A563C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1BF4A564C()
{
  v0 = sub_1BF4E73D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](27);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  v9 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1BF4E73C4();
  v10 = sub_1BF4E73A4();
  (*(v1 + 8))(v4, v0);
  [v9 setTimeZone_];

  v11 = v30;
  v12 = sub_1BF3E4F48(v5);

  if (v11)
  {
  }

  else
  {
    v35 = sub_1BF39419C(MEMORY[0x1E69E7CC0]);
    v13 = v9;
    sub_1BF4A55A4(v12, v13, &v35);

    v30 = v13;

    v14 = v35;
    v15 = v35 + 64;
    v16 = 1 << *(v35 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v35 + 64);
    v19 = (v16 + 63) >> 6;

    for (i = 0; v18; i = v21)
    {
      v21 = i;
LABEL_10:
      v22 = (v21 << 10) | (16 * __clz(__rbit64(v18)));
      v23 = (*(v14 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v14 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      v31 = v24;
      v32 = v25;
      v33 = v27;
      v34 = v28;

      sub_1BF48E838(&v31);
      v18 &= v18 - 1;
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v21);
      ++i;
      if (v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF4A59F0(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF49700C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1BF4A5A9C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BF499A1C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4A63E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4A644C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF4A64AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4A6514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF4A655C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734() & 1;
  }
}

unint64_t sub_1BF4A65B4()
{
  result = qword_1EBDD9A80;
  if (!qword_1EBDD9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A80);
  }

  return result;
}

unint64_t sub_1BF4A663C()
{
  result = qword_1EBDD9A88;
  if (!qword_1EBDD9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A88);
  }

  return result;
}

unint64_t sub_1BF4A6694()
{
  result = qword_1EBDD9A90;
  if (!qword_1EBDD9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9A90);
  }

  return result;
}

uint64_t sub_1BF4A6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      sub_1BF38E49C(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return (*(a4 + 8))(a3, a4);
}

void *BlockAssertion.init(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void *BlockAssertion.deinit()
{
  v1 = v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[4];
    v4 = v1[4];

    v2(v5);
    sub_1BF3B0E64(v2);
  }

  v6 = v1[2];

  v7 = v1[4];
  sub_1BF3B0E64(v1[3]);
  return v1;
}

uint64_t ActivityKey.init(extensionIdentity:activityAttributesType:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ActivityKey();
  v10 = *(v9 + 20);
  v11 = sub_1BF4E7454();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t sub_1BF4A6A24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  __swift_allocate_value_buffer(v2, qword_1EDC9F030);
  __swift_project_value_buffer(v2, qword_1EDC9F030);
  sub_1BF4E7694();
  return sub_1BF4E77A4();
}

uint64_t static DeviceScopedIdentity<>.anonymousLocalActivityHost.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = __swift_project_value_buffer(v2, qword_1EDC9F030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivityKey.activityAttributesType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityKey() + 20);
  v4 = sub_1BF4E7454();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityKey.activityAttributesType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityKey() + 20);
  v4 = sub_1BF4E7454();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityKey.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityKey() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActivityKey.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityKey() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityKey.description.getter()
{
  v1 = v0;
  v2 = [*v0 description];
  v3 = sub_1BF4E8914();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  v6 = type metadata accessor for ActivityKey();
  v7 = *(v6 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
  v8 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  MEMORY[0x1BFB58C90](*(v1 + *(v6 + 24)), *(v1 + *(v6 + 24) + 8));
  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1BF4A6F60(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001BF4F8640;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001BF4F8620;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001BF4F8640;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001BF4F8620;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF4A7040()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4A70EC()
{
  *v0;
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF4A7184()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4A722C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF4A8320();
  *a2 = result;
  return result;
}

void sub_1BF4A725C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  if (v2 == 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001BF4F8640;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x80000001BF4F8620;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1BF4A72C4()
{
  v1 = 0x696669746E656469;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1BF4A7328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4A8320();
  *a1 = result;
  return result;
}

uint64_t sub_1BF4A7350(uint64_t a1)
{
  v2 = sub_1BF4A7874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF4A738C(uint64_t a1)
{
  v2 = sub_1BF4A7874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityKey.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1BF4E7454();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A98, &qword_1BF4F5690);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ActivityKey();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BF4A7874();
  v17 = v39;
  sub_1BF4E9854();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v39 = v6;
    v18 = v14;
    v19 = v38;
    sub_1BF4E9034();
    v43 = 0;
    sub_1BF4A8050(&qword_1EDC9D6C8, MEMORY[0x1E69941C0]);
    sub_1BF4E95B4();
    v20 = v10;
    v21 = v41;
    *v18 = v41;
    v43 = 1;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v33 = v21;
    v34 = v41;
    v35 = v42;
    v22 = sub_1BF4E6F84();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1BF4E6F74();
    sub_1BF4A8050(&qword_1EDC9F0A0, MEMORY[0x1E6959BC8]);
    v25 = v39;
    v32 = v3;
    sub_1BF4E6F64();

    (*(v37 + 32))(v18 + *(v11 + 20), v25, v32);
    LOBYTE(v41) = 2;
    v26 = sub_1BF4E9564();
    v27 = v20;
    v29 = v28;
    (*(v19 + 8))(v27, v7);
    sub_1BF3B03C0(v34, v35);
    v30 = (v18 + *(v11 + 24));
    *v30 = v26;
    v30[1] = v29;
    sub_1BF3F35E8(v18, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    sub_1BF4711F8(v18);
  }
}

unint64_t sub_1BF4A7874()
{
  result = qword_1EDC9EF60;
  if (!qword_1EDC9EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF60);
  }

  return result;
}

uint64_t ActivityKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AA0, &qword_1BF4F5698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4A7874();
  sub_1BF4E9864();
  v23 = *v3;
  v25 = 0;
  sub_1BF4E9034();
  sub_1BF4A8050(&qword_1EDC9D6D0, MEMORY[0x1E69941C0]);
  sub_1BF4E9674();
  if (!v2)
  {
    v12 = sub_1BF4E6FB4();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1BF4E6FA4();
    v15 = type metadata accessor for ActivityKey();
    v16 = *(v15 + 20);
    sub_1BF4E7454();
    sub_1BF4A8050(&unk_1EDC9F0B0, MEMORY[0x1E6959BC8]);
    v17 = sub_1BF4E6F94();
    v19 = v18;

    v23 = v17;
    v24 = v19;
    v25 = 1;
    sub_1BF3B01D8();
    sub_1BF4E9674();
    sub_1BF3B03C0(v23, v24);
    v20 = (v3 + *(v15 + 24));
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v23) = 2;
    sub_1BF4E9624();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static ActivityKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1BF3F1508();
  v4 = *a1;
  v5 = *a2;
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ActivityKey();
  v7 = *(v6 + 20);
  if ((sub_1BF4E7434() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t ActivityKey.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_1BF4E90B4();
  v3 = type metadata accessor for ActivityKey();
  v4 = *(v3 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v5 = (v1 + *(v3 + 24));
  v6 = *v5;
  v7 = v5[1];

  return sub_1BF4E89F4();
}

uint64_t ActivityKey.hashValue.getter()
{
  v1 = v0;
  sub_1BF4E9804();
  v2 = *v0;
  sub_1BF4E90B4();
  v3 = type metadata accessor for ActivityKey();
  v4 = *(v3 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v5 = (v1 + *(v3 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A7DD4(uint64_t a1)
{
  v3 = v1;
  sub_1BF4E9804();
  v4 = *v1;
  sub_1BF4E90B4();
  v5 = *(a1 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v6 = (v3 + *(a1 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A7E94(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  sub_1BF4E90B4();
  v6 = *(a2 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v7 = (v4 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4A7F4C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1BF4E9804();
  v5 = *v2;
  sub_1BF4E90B4();
  v6 = *(a2 + 20);
  sub_1BF4E7454();
  sub_1BF4A8050(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v7 = (v4 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4A8050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF4A80CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1BF3F1508();
  v6 = *a1;
  v7 = *a2;
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  if ((sub_1BF4E7434() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t sub_1BF4A817C()
{
  result = sub_1BF4E9034();
  if (v1 <= 0x3F)
  {
    result = sub_1BF4E7454();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF4A821C()
{
  result = qword_1EBDD9AA8;
  if (!qword_1EBDD9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9AA8);
  }

  return result;
}

unint64_t sub_1BF4A8274()
{
  result = qword_1EDC9EF50;
  if (!qword_1EDC9EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF50);
  }

  return result;
}

unint64_t sub_1BF4A82CC()
{
  result = qword_1EDC9EF58;
  if (!qword_1EDC9EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9EF58);
  }

  return result;
}

uint64_t sub_1BF4A8320()
{
  v0 = sub_1BF4E9514();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BF4A836C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v7, a1, v4);
  v8 = sub_1BF4E96D4();
  if (v8)
  {
    v9 = v8;
    (*(v2 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v2 + 32))(v10, v6, a1);
  }

  v11 = sub_1BF4E6FE4();

  v12 = [v11 debugDescription];
  v13 = sub_1BF4E8914();

  return v13;
}

uint64_t sub_1BF4A850C()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA68E0);
  __swift_project_value_buffer(v0, qword_1EDCA68E0);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A85DC()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA68F8);
  __swift_project_value_buffer(v0, qword_1EDCA68F8);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A86A0()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6928);
  __swift_project_value_buffer(v0, qword_1EDCA6928);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4A88C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BF4E7B44();
}

void sub_1BF4A893C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF4E6FE4();
  if (a2)
  {
    v32 = v4;

    v5 = sub_1BF4E7B34();
    v6 = sub_1BF4E8E64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446978;
      *(v7 + 4) = sub_1BF38D65C(a1, a2, &v33);
      *(v7 + 12) = 2082;
      v9 = [v32 domain];
      v10 = sub_1BF4E8914();
      v12 = v11;

      v13 = sub_1BF38D65C(v10, v12, &v33);

      *(v7 + 14) = v13;
      *(v7 + 22) = 2050;
      v14 = [v32 code];

      *(v7 + 24) = v14;
      *(v7 + 32) = 2082;
      v15 = [v32 debugDescription];
      v16 = sub_1BF4E8914();
      v18 = v17;

      v19 = sub_1BF38D65C(v16, v18, &v33);

      *(v7 + 34) = v19;
      _os_log_impl(&dword_1BF389000, v5, v6, "%{public}s: %{public}s (%{public}ld) %{public}s", v7, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
      MEMORY[0x1BFB5A5D0](v7, -1, -1);

      return;
    }
  }

  else
  {
    v32 = v4;
    v5 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E64();
    if (os_log_type_enabled(v5, v20))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446722;
      v21 = [v32 domain];
      v22 = sub_1BF4E8914();
      v24 = v23;

      v25 = sub_1BF38D65C(v22, v24, &v33);

      *(v7 + 4) = v25;
      *(v7 + 12) = 2050;
      v26 = [v32 code];

      *(v7 + 14) = v26;
      *(v7 + 22) = 2082;
      v27 = [v32 debugDescription];
      v28 = sub_1BF4E8914();
      v30 = v29;

      v31 = sub_1BF38D65C(v28, v30, &v33);

      *(v7 + 24) = v31;
      _os_log_impl(&dword_1BF389000, v5, v20, "%{public}s (%{public}ld) %{public}s", v7, 0x20u);
      goto LABEL_6;
    }
  }
}

void TimelineKey.init(widget:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 extensionIdentity];
  v5 = [a1 kind];
  v6 = sub_1BF4E8914();
  v8 = v7;

  v9 = [a1 intentReference];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t TimelineKey.extensionBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t TimelineKey.containerBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  return sub_1BF40A05C(v3 + v4, a1);
}

uint64_t TimelineKey.kind.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void *TimelineKey.intentReference.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t TimelineKey.init(extensionIdentity:kind:intentReference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TimelineKey.matches(identifiable:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v6 = [a1 extensionIdentity];
  v7 = sub_1BF4E90A4();

  if (v7)
  {
    v8 = [a1 kind];
    v9 = sub_1BF4E8914();
    v11 = v10;

    if (v3 == v9 && v5 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1BF4E9734();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t TimelineKey.matches(personality:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v12 = *v1;
  v11 = v1[1];
  v24[0] = v1[2];
  v13 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v4 + 16))(v10, v12 + v13, v3);
  v14 = [a1 extensionBundleIdentifier];
  sub_1BF4E8914();

  sub_1BF4E7694();
  sub_1BF4A92C4();
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v24[3] == v24[1] && v24[4] == v24[2])
  {
    v15 = *(v4 + 8);
    v15(v7, v3);
    v15(v10, v3);
  }

  else
  {
    v16 = sub_1BF4E9734();
    v17 = *(v4 + 8);
    v17(v7, v3);
    v17(v10, v3);

    v18 = 0;
    if ((v16 & 1) == 0)
    {
      return v18 & 1;
    }
  }

  v19 = [a1 kind];
  v20 = sub_1BF4E8914();
  v22 = v21;

  if (v11 == v20 && v24[0] == v22)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1BF4E9734();
  }

  return v18 & 1;
}

unint64_t sub_1BF4A92C4()
{
  result = qword_1EDC9D578;
  if (!qword_1EDC9D578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D578);
  }

  return result;
}

void TimelineKey.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    sub_1BF4E9824();
    v5 = v3;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t TimelineKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v4)
  {
    v5 = v4;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4A9480()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v4)
  {
    v5 = v4;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

void sub_1BF4A951C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    sub_1BF4E9824();
    v5 = v3;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

unint64_t sub_1BF4A95D8()
{
  result = qword_1EDC9B458;
  if (!qword_1EDC9B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9B458);
  }

  return result;
}

uint64_t sub_1BF4A962C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990), v9 = sub_1BF4E8874(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990);
      v17 = sub_1BF4E88C4();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1BF4A9844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v7 = sub_1BF4E9844();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1BF4E9734() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1BF4A993C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB59570](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t DescriptorCollection.count.getter()
{
  v1 = *v0;
  DescriptorCollection.descriptors.getter();
  v2 = *(v1 + 80);
  v3 = sub_1BF4E8C34();

  return v3;
}

uint64_t DescriptorCollection.__allocating_init(descriptors:)()
{
  v0 = swift_allocObject();
  DescriptorCollection.init(descriptors:)();
  return v0;
}

void *sub_1BF4A9BEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = sub_1BF3AF970(a1, v9, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = swift_allocObject();
  v12 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v13 = swift_allocObject();
  v11[6] = v12;
  v11[7] = &off_1F3DF42A8;
  v11[2] = v10;
  v11[3] = v13;
  return v11;
}

uint64_t ContainerKindDescriptorPredicate.containerBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContainerKindDescriptorPredicate.containerBundleIdentifier.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ContainerKindDescriptorPredicate.kind.getter()
{
  v1 = (v0 + *(type metadata accessor for ContainerKindDescriptorPredicate() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContainerKindDescriptorPredicate.kind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContainerKindDescriptorPredicate() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContainerKindDescriptorPredicate.evaluate(with:)(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(a1 + 56) + ((v10 << 9) | (8 * v11)));
    MEMORY[0x1EEE9AC00](result);
    v14[2] = v1;

    v13 = sub_1BF4A993C(sub_1BF4B0C94, v14, v12);

    if (v13)
    {
LABEL_13:

      return v13;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4A9FEC(id *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41[-v17];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41[-v21];
  v44 = *a1;
  v23 = [v44 extensionIdentity];
  v24 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF40A05C(v23 + v24, v22);

  v25 = *(v5 + 16);
  v45 = a2;
  v25(v18, a2, v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v26 = *(v9 + 56);
  sub_1BF40A05C(v22, v12);
  sub_1BF40A05C(v18, &v12[v26]);
  v27 = v5;
  v28 = *(v5 + 48);
  if (v28(v12, 1, v4) != 1)
  {
    sub_1BF40A05C(v12, v46);
    if (v28(&v12[v26], 1, v4) != 1)
    {
      v30 = v27;
      v31 = *(v27 + 32);
      v32 = v43;
      v31(v43, &v12[v26], v4);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      v33 = v46;
      v42 = sub_1BF4E88C4();
      v34 = *(v30 + 8);
      v34(v32, v4);
      sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v22, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v34(v33, v4);
      sub_1BF38C9B4(v12, &qword_1EBDD9290, &qword_1BF4EE4B0);
      if (v42)
      {
        goto LABEL_9;
      }

LABEL_7:
      v29 = 0;
      return v29 & 1;
    }

    sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
    sub_1BF38C9B4(v22, &qword_1EBDD9290, &qword_1BF4EE4B0);
    (*(v27 + 8))(v46, v4);
LABEL_6:
    sub_1BF38C9B4(v12, &qword_1EBDD9288, &unk_1BF4F5A20);
    goto LABEL_7;
  }

  sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C9B4(v22, &qword_1EBDD9290, &qword_1BF4EE4B0);
  if (v28(&v12[v26], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BF38C9B4(v12, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_9:
  v35 = [v44 kind];
  v36 = sub_1BF4E8914();
  v38 = v37;

  v39 = (v45 + *(type metadata accessor for ContainerKindDescriptorPredicate() + 20));
  if (v36 == *v39 && v38 == v39[1])
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_1BF4E9734();
  }

  return v29 & 1;
}

uint64_t sub_1BF4AA4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContainerKindDescriptorPredicate.evaluate(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t static DescriptorPredicate<>.container(_:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = (a4 + *(type metadata accessor for ContainerKindDescriptorPredicate() + 20));
  *v9 = a2;
  v9[1] = a3;
}

uint64_t DescriptorCollectionFilter.filterTypes.getter()
{
  sub_1BF4B0CB4();
}

uint64_t *DescriptorCollection.init(descriptors:)()
{
  v1 = *v0;
  v2 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v0[3] = swift_allocObject();
  v0[6] = v2;
  v0[7] = &off_1F3DF42A8;
  v4 = *(v1 + 80);
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
  swift_getWitnessTable();
  v0[2] = sub_1BF4E8814();
  return v0;
}

void *DescriptorCollection.init(descriptorsByExtensionIdentity:)(uint64_t a1)
{
  v3 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v4 = swift_allocObject();
  v1[6] = v3;
  v1[7] = &off_1F3DF42A8;
  v1[2] = a1;
  v1[3] = v4;
  return v1;
}

void *DescriptorCollection.filter(_:)(uint64_t a1)
{
  v3 = a1;

  v1 = DescriptorCollection.filter(_:)(&v3);

  return v1;
}

BOOL sub_1BF4AA814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *a1;
  v11 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  LOBYTE(a3) = sub_1BF4A962C(v9, a3);
  (*(v6 + 8))(v9, v5);
  return (a3 & 1) == 0;
}

uint64_t sub_1BF4AA954@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v3 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *DescriptorCollection.filter(_:)()
{
  v1 = *v0;
  sub_1BF4E9034();
  v17 = *(v1 + 80);
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
  v21 = sub_1BF4E8724();
  v2 = v0[2];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(v0[2] + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v18 = v0[2];

  v11 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {

      return DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v21);
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
  }

  while (!v8);
  while (1)
  {
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v8)));
    v14 = *(*(v18 + 48) + v13);
    v20 = *(*(v18 + 56) + v13);
    MEMORY[0x1EEE9AC00](result);
    v16 = v15;

    swift_getWitnessTable();
    sub_1BF4E9364();
    if (v19)
    {
      break;
    }

    v8 &= v8 - 1;
    swift_getWitnessTable();
    if (sub_1BF4E8DE4())
    {

      v11 = v12;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BF4E8834();
      result = sub_1BF4E8864();
      v11 = v12;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v11;
  }
}

void *DescriptorCollection.filterIdentities(_:)(uint64_t (*a1)(id))
{
  v3 = *v1;
  sub_1BF4E9034();
  v4 = *(v3 + 80);
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
  v19 = sub_1BF4E8724();
  v5 = v1[2];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v1[2];

  v12 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {

      return DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v19);
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
  }

  while (!v8);
  while (1)
  {
    v14 = (v13 << 9) | (8 * __clz(__rbit64(v8)));
    v15 = *(*(v5 + 56) + v14);
    v16 = *(*(v5 + 48) + v14);

    v17 = a1(v16);
    if (v2)
    {
      break;
    }

    v8 &= v8 - 1;
    if (v17)
    {
      sub_1BF4E8834();
      result = sub_1BF4E8864();
      v12 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v12 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = v12;
  }
}

uint64_t DescriptorCollection.compactMapDescriptors<A>(_:)()
{
  v1 = *v0;
  DescriptorCollection.descriptors.getter();
  v4 = *(v1 + 80);
  sub_1BF4E8CA4();
  swift_getWitnessTable();
  v2 = sub_1BF4E8AD4();

  return v2;
}

uint64_t DescriptorCollection.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t sub_1BF4AB090@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = DescriptorCollection.makeIterator()();

  *a1 = v4;
  a1[1] = 0;
  return result;
}

uint64_t sub_1BF4AB0D0()
{
  v1 = sub_1BF4B0C90();
  v2 = *v0;

  return v1;
}

void *DescriptorCollection<>.descriptor(matching:)(void *a1)
{
  v3 = *(v1 + 16);
  v11 = sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
  swift_getKeyPath();

  v4 = sub_1BF488A30(v3);

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB59570](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([a1 matches_])
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void DescriptorCollection<>.descriptor(for:containedBy:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v75 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v59 = &v52 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v6 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v52 - v15;
  v71 = sub_1BF4E7454();
  v16 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 16);
  v21 = *(v20 + 64);
  v54 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v53 = (v22 + 63) >> 6;
  v25 = (v17 + 8);
  v65 = (v3 + 56);
  v66 = (v3 + 16);
  v73 = (v3 + 48);
  v58 = (v3 + 32);
  v61 = (v3 + 8);
  v57 = v20;

  v26 = 0;
  v77 = v8;
  v63 = v25;
  v64 = v19;
  while (1)
  {
    if (!v24)
    {
      do
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_37;
        }

        if (v27 >= v53)
        {

          return;
        }

        v24 = *(v54 + 8 * v27);
        ++v26;
      }

      while (!v24);
      v26 = v27;
    }

    v28 = *(v57 + 56);
    v55 = v26;
    v29 = *(v28 + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
    v56 = v24;
    v30 = v29 >> 62 ? sub_1BF4E9204() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v30)
    {
      break;
    }

LABEL_4:
    v24 = (v56 - 1) & v56;

    v26 = v55;
  }

  v31 = 0;
  v32 = v29 & 0xC000000000000001;
  v76 = v29 & 0xFFFFFFFFFFFFFF8;
  v62 = v29 & 0xC000000000000001;
  while (v32)
  {
    v33 = MEMORY[0x1BFB59570](v31, v29);
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_20:
    v35 = v33;
    v36 = [v33 activityAttributesType];
    if (!v36)
    {
      goto LABEL_38;
    }

    v37 = v36;
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8]);
    v38 = v71;
    sub_1BF4E7554();

    LOBYTE(v37) = sub_1BF4E7434();
    (*v25)(v19, v38);
    if (v37)
    {
      v39 = [v35 extensionIdentity];
      v40 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      v41 = v72;
      sub_1BF40A05C(v39 + v40, v72);

      v42 = v74;
      v43 = v68;
      (*v66)(v74, v69, v68);
      (*v65)(v42, 0, 1, v43);
      v44 = *(v67 + 48);
      v45 = v41;
      v46 = v77;
      sub_1BF40A05C(v45, v77);
      sub_1BF40A05C(v42, v46 + v44);
      v47 = *v73;
      if ((*v73)(v46, 1, v43) == 1)
      {
        v32 = v62;
        sub_1BF38C9B4(v74, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v72, &qword_1EBDD9290, &qword_1BF4EE4B0);
        if (v47(&v77[v44], 1, v43) == 1)
        {
          sub_1BF38C9B4(v77, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_33:

          return;
        }

        goto LABEL_15;
      }

      v48 = v77;
      sub_1BF40A05C(v77, v70);
      if (v47(v48 + v44, 1, v43) == 1)
      {
        sub_1BF38C9B4(v74, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v72, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v61)(v70, v43);
LABEL_15:
        sub_1BF38C9B4(v77, &qword_1EBDD9288, &unk_1BF4F5A20);
        v25 = v63;
        v19 = v64;
        goto LABEL_16;
      }

      v49 = &v77[v44];
      v50 = v59;
      (*v58)(v59, v49, v43);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      v60 = sub_1BF4E88C4();
      v51 = *v61;
      (*v61)(v50, v43);
      sub_1BF38C9B4(v74, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v72, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v51(v70, v43);
      v32 = v62;
      sub_1BF38C9B4(v77, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v25 = v63;
      v19 = v64;
      if (v60)
      {
        goto LABEL_33;
      }
    }

LABEL_16:

    ++v31;
    if (v34 == v30)
    {
      goto LABEL_4;
    }
  }

  if (v31 >= *(v76 + 16))
  {
    goto LABEL_36;
  }

  v33 = *(v29 + 8 * v31 + 32);
  v34 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void CHSSessionPlatterDescriptor.activityAttributes.getter()
{
  v1 = [v0 activityAttributesType];
  if (v1)
  {
    sub_1BF4E7454();
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8]);
    sub_1BF4E7554();
  }

  else
  {
    __break(1u);
  }
}

void DescriptorCollection<>.descriptor(targeting:)(void *a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v64 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v51 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v6 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v51 - v13;
  v69 = sub_1BF4E7454();
  v14 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v67 = (v15 + 8);
  v56 = (v3 + 32);
  v59 = (v3 + 8);
  v55 = v17;

  v23 = 0;
  v52 = v18;
  v63 = a1;
  v65 = v11;
  v51 = v22;
  v60 = (v3 + 48);
  while (1)
  {
    if (!v21)
    {
      do
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_35;
        }

        if (v24 >= v22)
        {

          return;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
      }

      while (!v21);
      v23 = v24;
    }

    v54 = v21;
    v25 = *(v55 + 56);
    v53 = v23;
    v26 = *(v25 + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    v27 = v26 >> 62 ? sub_1BF4E9204() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      break;
    }

LABEL_4:
    v21 = (v54 - 1) & v54;

    v18 = v52;
    v22 = v51;
    v23 = v53;
  }

  v28 = 0;
  v70 = v26 & 0xFFFFFFFFFFFFFF8;
  v71 = v26 & 0xC000000000000001;
  while (1)
  {
    if (v71)
    {
      v30 = MEMORY[0x1BFB59570](v28, v26);
    }

    else
    {
      if (v28 >= *(v70 + 16))
      {
        goto LABEL_34;
      }

      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    v32 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v33 = [v30 activityAttributesType];
    if (!v33)
    {
      goto LABEL_36;
    }

    v34 = v33;
    sub_1BF391F90(&qword_1EDC9F090, MEMORY[0x1E6959BC8]);
    v36 = v68;
    v35 = v69;
    sub_1BF4E7554();

    v37 = *(type metadata accessor for ActivityKey() + 20);
    LOBYTE(v34) = sub_1BF4E7434();
    (*v67)(v36, v35);
    if (v34)
    {
      v38 = [v31 extensionIdentity];
      v39 = MEMORY[0x1E69941B0];
      v40 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      v41 = v66;
      sub_1BF40A05C(v38 + v40, v66);

      v42 = *a1;
      v43 = *v39;
      swift_beginAccess();
      v44 = v61;
      v45 = *(v62 + 48);
      sub_1BF40A05C(v41, v61);
      sub_1BF40A05C(v42 + v43, v44 + v45);
      v46 = *v60;
      v47 = v64;
      if ((*v60)(v44, 1, v64) == 1)
      {
        sub_1BF38C9B4(v66, &qword_1EBDD9290, &qword_1BF4EE4B0);
        v29 = v46(v44 + v45, 1, v47);
        a1 = v63;
        if (v29 == 1)
        {
          sub_1BF38C9B4(v44, &qword_1EBDD9290, &qword_1BF4EE4B0);
LABEL_32:

          return;
        }

        goto LABEL_15;
      }

      sub_1BF40A05C(v44, v65);
      if (v46(v44 + v45, 1, v47) == 1)
      {
        sub_1BF38C9B4(v66, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v59)(v65, v47);
        a1 = v63;
LABEL_15:
        sub_1BF38C9B4(v44, &qword_1EBDD9288, &unk_1BF4F5A20);
        goto LABEL_16;
      }

      v48 = v57;
      (*v56)(v57, v44 + v45, v47);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      v58 = sub_1BF4E88C4();
      v49 = v47;
      v50 = *v59;
      (*v59)(v48, v49);
      sub_1BF38C9B4(v66, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v50(v65, v49);
      sub_1BF38C9B4(v44, &qword_1EBDD9290, &qword_1BF4EE4B0);
      a1 = v63;
      if (v58)
      {
        goto LABEL_32;
      }
    }

LABEL_16:

    ++v28;
    if (v32 == v27)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t DescriptorCollection<>.descriptors(matching:)(uint64_t a1)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v47 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v6 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v67 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = *(v1 + 16);
  v18 = *(v17 + 64);
  v51 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v55 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v21 = v20 & v18;
  v50 = (v19 + 63) >> 6;
  v59 = (v3 + 56);
  v60 = (v3 + 16);
  v66 = (v3 + 48);
  v47 = (v3 + 32);
  v52 = v17;
  v53 = (v3 + 8);

  v22 = 0;
  v64 = v16;
LABEL_4:
  v24 = v51;
  result = v52;
  v25 = v50;
  do
  {
    if (v21)
    {
      goto LABEL_10;
    }

    do
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v26 >= v25)
      {

        return v55;
      }

      v21 = *(v24 + 8 * v26);
      ++v22;
    }

    while (!v21);
    v22 = v26;
LABEL_10:
    v27 = *(*(result + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (v27 >> 62)
    {
      v29 = sub_1BF4E9204();
      v25 = v50;
      v28 = v29;
      v24 = v51;
      result = v52;
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 &= v21 - 1;
  }

  while (!v28);
  v58 = v2;
  if (v28 >= 1)
  {
    v56 = v27 & 0xC000000000000001;

    v30 = 0;
    v54 = v27;
    v57 = v28;
    while (1)
    {
      v33 = v56 ? MEMORY[0x1BFB59570](v30, v27) : *(v27 + 8 * v30 + 32);
      v65 = v33;
      v34 = [v33 extensionIdentity];
      v35 = *MEMORY[0x1E69941B0];
      swift_beginAccess();
      sub_1BF40A05C(v34 + v35, v16);

      v36 = v58;
      (*v60)(v13, v63, v58);
      (*v59)(v13, 0, 1, v36);
      v37 = *(v62 + 48);
      v38 = v67;
      sub_1BF40A05C(v16, v67);
      sub_1BF40A05C(v13, v38 + v37);
      v39 = *v66;
      if ((*v66)(v38, 1, v36) == 1)
      {
        break;
      }

      v41 = v67;
      sub_1BF40A05C(v67, v61);
      if (v39(v41 + v37, 1, v36) == 1)
      {
        sub_1BF38C9B4(v13, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C9B4(v16, &qword_1EBDD9290, &qword_1BF4EE4B0);
        (*v53)(v61, v36);
LABEL_18:
        sub_1BF38C9B4(v67, &qword_1EBDD9288, &unk_1BF4F5A20);
        v31 = v57;
        v32 = v65;
        goto LABEL_19;
      }

      v42 = v67 + v37;
      v43 = v48;
      (*v47)(v48, v42, v36);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      v44 = v61;
      v49 = sub_1BF4E88C4();
      v45 = *v53;
      (*v53)(v43, v36);
      sub_1BF38C9B4(v13, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v64, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v45(v44, v36);
      v27 = v54;
      sub_1BF38C9B4(v67, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v31 = v57;
      v32 = v65;
      if (v49)
      {
        goto LABEL_29;
      }

LABEL_19:

      v16 = v64;
LABEL_20:
      if (v31 == ++v30)
      {

        v2 = v58;
        goto LABEL_4;
      }
    }

    sub_1BF38C9B4(v13, &qword_1EBDD9290, &qword_1BF4EE4B0);
    v40 = v67;
    v27 = v54;
    sub_1BF38C9B4(v16, &qword_1EBDD9290, &qword_1BF4EE4B0);
    if (v39(v40 + v37, 1, v36) == 1)
    {
      sub_1BF38C9B4(v67, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v31 = v57;
      v32 = v65;
LABEL_29:
      v46 = v32;
      MEMORY[0x1BFB58DD0]();
      v16 = v64;
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      v55 = v68;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BF4AC8C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BF4E8454();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18]);
  v36 = a2;
  v13 = sub_1BF4E8874();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1BF391F90(&qword_1EBDD9840, MEMORY[0x1E6985A18]);
      v23 = sub_1BF4E88C4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1BF4AE760(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1BF4ACBA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v9 = sub_1BF4E9844();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1BF4E9734() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1BF4AEA28(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BF4ACCF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  v34 = a2;
  v13 = sub_1BF4E8874();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      v21 = sub_1BF4E88C4();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BF4AEBA8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BF4ACFDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
  v34 = a2;
  v13 = sub_1BF4E8874();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990);
      v21 = sub_1BF4E88C4();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BF4AF134(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BF4AD2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
    v2 = sub_1BF4E92A4();
    v16 = v2;
    sub_1BF4E91F4();
    if (sub_1BF4E9234())
    {
      sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1BF4ADE00(v10 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1BF4E9094();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1BF4E9234());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BF4AD4D0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BF4E8454();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC0, &unk_1BF4F5DC0);
  result = sub_1BF4E9294();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18]);
      result = sub_1BF4E8874();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1BF4AD840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  result = sub_1BF4E9294();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BF4ADAA0(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC8, &qword_1BF4F5DD0);
  result = sub_1BF4E9294();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      result = sub_1BF4E8874();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1BF4ADE00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1BF4E9294();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1BF4E9094();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1BF4AE020(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BF4E8174();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AD0, &qword_1BF4F5DD8);
  result = sub_1BF4E9294();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750]);
      result = sub_1BF4E8874();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1BF4AE37C(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
  result = sub_1BF4E9294();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
      result = sub_1BF4E8874();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1BF4AE6DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1BF4E9094();
  v5 = -1 << *(a2 + 32);
  result = sub_1BF4E91E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BF4AE760(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BF4E8454();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1BF4AD4D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BF4AF6C8(MEMORY[0x1E6985A18], &qword_1EBDD9AC0, &unk_1BF4F5DC0);
      goto LABEL_12;
    }

    sub_1BF4AFB2C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18]);
  v15 = sub_1BF4E8874();
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
      sub_1BF391F90(&qword_1EBDD9840, MEMORY[0x1E6985A18]);
      v23 = sub_1BF4E88C4();
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
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

uint64_t sub_1BF4AEA28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1BF4AD840(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BF4AF3F8();
      goto LABEL_16;
    }

    sub_1BF4AFE48(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  result = sub_1BF4E9844();
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

      result = sub_1BF4E9734();
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
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

uint64_t sub_1BF4AEBA8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v7;
  v32 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4ADAA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BF4AF900(&unk_1EBDD91A0, &unk_1BF4EC4E0, &qword_1EBDD9AC8, &qword_1BF4F5DD0);
      goto LABEL_12;
    }

    sub_1BF4B0080(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  v16 = sub_1BF4E8874();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v20 = v7 + 16;
    v21 = v22;
    v23 = *(v20 + 56);
    do
    {
      v21(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      v24 = sub_1BF4E88C4();
      (*(v20 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v31;
  v26 = *v32;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

uint64_t sub_1BF4AEE6C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1BF4E8174();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4AE020(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BF4AF6C8(MEMORY[0x1E6985750], &unk_1EBDD9AD0, &qword_1BF4F5DD8);
      goto LABEL_12;
    }

    sub_1BF4B05B4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750]);
  v16 = sub_1BF4E8874();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1BF391F90(&qword_1EDC96498, MEMORY[0x1E6985750]);
      v24 = sub_1BF4E88C4();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

uint64_t sub_1BF4AF134(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v7;
  v32 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4AE37C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BF4AF900(&qword_1EBDD8B48, &unk_1BF4EC990, &qword_1EBDD9598, &unk_1BF4F1940);
      goto LABEL_12;
    }

    sub_1BF4B08D0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
  v16 = sub_1BF4E8874();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v20 = v7 + 16;
    v21 = v22;
    v23 = *(v20 + 56);
    do
    {
      v21(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990);
      v24 = sub_1BF4E88C4();
      (*(v20 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v31;
  v26 = *v32;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

void *sub_1BF4AF3F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  v2 = *v0;
  v3 = sub_1BF4E9284();
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

id sub_1BF4AF578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
  v2 = *v0;
  v3 = sub_1BF4E9284();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *sub_1BF4AF6C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1BF4E9284();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_1BF4AF900(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_1BF4E9284();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    for (i = v9 + 16; v22; result = (*(v9 + 32))(*(v15 + 48) + v27, v12, v8))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v8);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }

  return result;
}

uint64_t sub_1BF4AFB2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF4E8454();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC0, &unk_1BF4F5DC0);
  v10 = sub_1BF4E9294();
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
      sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18]);
      result = sub_1BF4E8874();
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

uint64_t sub_1BF4AFE48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  result = sub_1BF4E9294();
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
      sub_1BF4E9804();

      sub_1BF4E89F4();
      result = sub_1BF4E9844();
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

uint64_t sub_1BF4B0080(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC8, &qword_1BF4F5DD0);
  v10 = sub_1BF4E9294();
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
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      result = sub_1BF4E8874();
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

uint64_t sub_1BF4B03A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
  result = sub_1BF4E9294();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1BF4E9094();
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

uint64_t sub_1BF4B05B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF4E8174();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AD0, &qword_1BF4F5DD8);
  v10 = sub_1BF4E9294();
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
      sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750]);
      result = sub_1BF4E8874();
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

uint64_t sub_1BF4B08D0(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
  v10 = sub_1BF4E9294();
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
      sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
      result = sub_1BF4E8874();
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

void *sub_1BF4B0BF0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v10 = a4;
    v11 = sub_1BF3AFB28(v9, a2, a3, v10, a5);

    return v11;
  }

  return result;
}

id sub_1BF4B0CBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 extensionIdentity];
  *a2 = result;
  return result;
}

uint64_t sub_1BF4B0D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  return sub_1BF4AA954(a1, a2);
}

unint64_t sub_1BF4B0D38(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1BF4B0D6C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1) & 1;
}

uint64_t sub_1BF4B0D9C(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

void sub_1BF4B0E60()
{
  sub_1BF4B0ED4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BF4B0ED4()
{
  if (!qword_1EDC9D5A0)
  {
    v0 = sub_1BF4E76D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D5A0);
    }
  }
}

uint64_t sub_1BF4B0F24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF4B0F60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4B0FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BF4B100C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF4B1048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BF4B1090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF4B110C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1) & 1;
}

uint64_t sub_1BF4B1170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF4B11FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BF4B1314(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BF4B1428(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38C94C(a1, v7, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v4, v6, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_beginAccess();
  sub_1BF3A5C18(v7, v1 + v4, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_endAccess();
  sub_1BF3ADC00(v6);
  sub_1BF38C9B4(v6, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(v7, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  os_unfair_lock_unlock(*(v3 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
}

void sub_1BF4B1538(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = *a2;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v11, a5, a3, a4);
  os_unfair_lock_unlock(*(v10 + 16));
}

void (*sub_1BF4B15C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  *(v3 + 112) = v5;
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v6, v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  os_unfair_lock_unlock(*(v5 + 16));
  return sub_1BF4B1698;
}

void sub_1BF4B1698(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  if (a2)
  {
    sub_1BF38C94C(*a1, (v2 + 5), &qword_1EBDD9AF8, &qword_1BF4F5E00);
    os_unfair_lock_lock(*(v4 + 16));
    sub_1BF3A672C(v3, (v2 + 5));
    v5 = v2[13];
    os_unfair_lock_unlock(*(v2[14] + 16));
    v6 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF4E7C74();
    sub_1BF38C9B4((v2 + 5), &qword_1EBDD9AF8, &qword_1BF4F5E00);
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    sub_1BF3A672C(v3, v2);
    v7 = v2[13];
    os_unfair_lock_unlock(*(v2[14] + 16));
    v8 = *(v7 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF4E7C74();
  }

  sub_1BF38C9B4(v2, &qword_1EBDD9AF8, &qword_1BF4F5E00);

  free(v2);
}

void sub_1BF4B1868(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a2, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF4B18F0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1BF38C94C(a1, &v10 - v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = *a2;
  return sub_1BF3AB0B4(v7);
}

void (*sub_1BF4B19B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  v5[14] = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v10, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF4B1B0C;
}

void sub_1BF4B1B0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v8 = *(*a1 + 72);
  v7 = *(*a1 + 80);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 96), v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF38C94C(v5, v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_beginAccess();
    sub_1BF3A3A54(v7, v8 + v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
    sub_1BF38C9B4(v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF38C94C(v6, v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_beginAccess();
    sub_1BF3A3A54(v5, v8 + v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
  }

  sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

void sub_1BF4B1C90(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  v8 = *(v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  *v7 = v3;
  v7[1] = v2;

  v9 = *(v5 + 16);

  os_unfair_lock_unlock(v9);
}

void (*sub_1BF4B1D10(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  *(v3 + 88) = v5;
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v6, v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v7 = v4[3];
  sub_1BF38C9B4(v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v8 = 0;
  v9 = 0;
  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v9 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  }

  os_unfair_lock_unlock(*(v5 + 16));
  v4[8] = v8;
  v4[9] = v9;
  return sub_1BF4B1E2C;
}

void sub_1BF4B1E2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v6 = *(v4 + 16);
  v7 = *(*a1 + 72);
  if (a2)
  {
    v8 = *(*a1 + 72);

    os_unfair_lock_lock(v6);
    v9 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v10 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
    *v9 = v3;
    v9[1] = v7;

    os_unfair_lock_unlock(*(v4 + 16));
    v11 = v2[9];
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    v12 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v13 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
    *v12 = v3;
    v12[1] = v7;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  free(v2);
}

uint64_t sub_1BF4B1F1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver), v1);
  return (*(v2 + 24))(v0, v1, v2);
}

id WidgetEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetEntry(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BF4B22C8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF4B2350(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF4B15C8(v3);
  return sub_1BF413050;
}

void sub_1BF4B23C4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF4B244C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF4B19B8(v3);
  return sub_1BF413050;
}

void sub_1BF4B24E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  v8 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = *(v6 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t (*sub_1BF4B2554(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF4B1D10(v3);
  return sub_1BF412658;
}

uint64_t sub_1BF4B25C8()
{
  v1 = *v0;
  v2 = (*v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return (*(v4 + 24))(v1, v3, v4);
}

unint64_t WidgetEntry.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E8424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = 0;
  v11[2] = 0xE000000000000000;
  sub_1BF4E92E4();

  v12 = 0xD000000000000011;
  v13 = 0x80000001BF4FDEC0;
  v7 = WidgetEntryKey.description.getter();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDEE0);
  v8 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  sub_1BF3BB364(&qword_1EDC9D780, MEMORY[0x1E69859A8]);
  v9 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v9);

  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t keypath_set_2Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *))
{
  sub_1BF38C94C(a1, v11, a5, a6);
  v9 = *a2;
  return a7(v11);
}

uint64_t WidgetUpdateTimer.publisher.getter()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  sub_1BF38C8B4(&qword_1EDC9EF88, &qword_1EBDD9BC0, &qword_1BF4F5FB0);
  return sub_1BF4E7C84();
}

uint64_t WidgetUpdateTimer.debugDescription.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  sub_1BF4E92E4();
  v8 = sub_1BF4E9894();
  v10 = v9;

  v20 = v8;
  v21 = v10;
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FE140);
  v11 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v11, v3);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDC9F0F8;
  v13 = sub_1BF4E7254();
  v14 = [v12 stringFromDate_];

  v15 = sub_1BF4E8914();
  v17 = v16;

  (*(v4 + 8))(v7, v3);
  MEMORY[0x1BFB58C90](v15, v17);

  MEMORY[0x1BFB58C90](8200233, 0xE300000000000000);
  return v20;
}

uint64_t sub_1BF4B2E84(uint64_t a1)
{
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  sub_1BF4E7324();
  if (qword_1EDC9F998 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA6AD8);
  (*(v3 + 16))(v6, v9, v2);
  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E54();
  if (os_log_type_enabled(v11, v12))
  {
    v32 = v12;
    v33 = v2;
    v34 = a1;
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v13 = 136446466;
    v14 = sub_1BF4E9894();
    v16 = sub_1BF38D65C(v14, v15, &v35);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDC9F0F8;
    v18 = sub_1BF4E7254();
    v19 = [v17 stringFromDate_];

    v20 = sub_1BF4E8914();
    v22 = v21;

    v23 = *(v3 + 8);
    v24 = v6;
    v25 = v33;
    v23(v24, v33);
    v26 = sub_1BF38D65C(v20, v22, &v35);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_1BF389000, v11, v32, "%{public}s update: %{public}s, privacy: .public)", v13, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
    v28 = v13;
    v2 = v25;
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
  }

  else
  {

    v23 = *(v3 + 8);
    v23(v6, v2);
  }

  sub_1BF4E7C14();
  return (v23)(v9, v2);
}

uint64_t WidgetUpdateTimer.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  v3 = sub_1BF4E7334();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WidgetUpdateTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  v3 = sub_1BF4E7334();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetUpdateTimer()
{
  result = qword_1EDC9E650;
  if (!qword_1EDC9E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF4B33E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1BF4B2E84(v1);
}

char *static BootSession.UUID.getter@<X0>(uint64_t a1@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v6 = sub_1BF4E8984();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 37;
  v10 = sub_1BF4E8C04();
  *(v10 + 16) = 37;
  *(v10 + 48) = 0u;
  *(v10 + 61) = 0;
  *(v10 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v10 + 32), &v39, 0, 0))
  {
    sub_1BF4E8964();
    sub_1BF4B39CC(v10, v9);
    if (v26)
    {
      sub_1BF4E7344();

      v27 = sub_1BF4E7394();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v5, 1, v27) == 1)
      {
        sub_1BF4B3D64(v5);
        if (qword_1EBDD8598 != -1)
        {
          swift_once();
        }

        v29 = sub_1BF4E7B54();
        __swift_project_value_buffer(v29, qword_1EBDE1F08);
        v30 = sub_1BF4E7B34();
        v31 = sub_1BF4E8E74();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1BF389000, v30, v31, "Unable to make UUID from kern.bootsessionuuid!", v32, 2u);
          MEMORY[0x1BFB5A5D0](v32, -1, -1);
        }

        result = (*(v28 + 56))(a1, 1, 1, v27);
      }

      else
      {
        (*(v28 + 32))(a1, v5, v27);
        result = (*(v28 + 56))(a1, 0, 1, v27);
      }

      goto LABEL_28;
    }

    if (qword_1EBDD8598 != -1)
    {
      swift_once();
    }

    v34 = sub_1BF4E7B54();
    __swift_project_value_buffer(v34, qword_1EBDE1F08);
    v19 = sub_1BF4E7B34();
    v35 = sub_1BF4E8E74();
    if (!os_log_type_enabled(v19, v35))
    {
LABEL_22:

      v33 = sub_1BF4E7394();
      result = (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
LABEL_28:
      v37 = *MEMORY[0x1E69E9840];
      return result;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1BF389000, v19, v35, "Unable to make String from kern.bootsessionuuid!", v36, 2u);
    v25 = v36;
LABEL_13:
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
    goto LABEL_22;
  }

  v11 = MEMORY[0x1BFB57DE0]();
  result = strerror(v11);
  if (result)
  {
    v13 = sub_1BF4E88D4();
    v15 = v14;

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0x6E776F6E6B6E55;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    if (qword_1EBDD8598 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EBDE1F08);

    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E74();

    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_22;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40[0] = v22;
    *v21 = 136446466;
    v23 = sub_1BF38D65C(v16, v17, v40);

    *(v21 + 4) = v23;
    *(v21 + 12) = 1026;
    *(v21 + 14) = MEMORY[0x1BFB57DE0](v24);
    _os_log_impl(&dword_1BF389000, v19, v20, "Error from sysctlbyname: %{public}s %{public}d", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1BFB5A5D0](v22, -1, -1);
    v25 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4B394C()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EBDE1F08);
  __swift_project_value_buffer(v0, qword_1EBDE1F08);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4B39CC(uint64_t a1, char *a2)
{
  v4 = sub_1BF4E8984();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8954();
  v9 = sub_1BF4E8944();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    sub_1BF4E8964();
    v11 = sub_1BF4E8944();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      sub_1BF4E8934();
      v12 = sub_1BF4E8944();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1BF4B3CB0(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  sub_1BF4E8954();
  v17 = sub_1BF4E8944();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((sub_1BF4E92D4() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_1BF4E9464();
      __break(1u);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:v8 encoding:sub_1BF4E8974()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = sub_1BF4E8914();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

uint64_t sub_1BF4B3CB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_1BF4E89C4();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4B3D34@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BF4B3D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadTaskPair.__allocating_init(currentTask:queuedTask:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ReloadTaskPair.init(currentTask:queuedTask:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF4B3E28()
{
  if (!v0[2])
  {
    return 0x6B736174206F6E3CLL;
  }

  v1 = *v0;
  if (v0[3])
  {

    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0x3A746E6572727563, 0xE900000000000020);
    v3 = v1[5];
    v5 = v1[6];
    v7 = v1[7];
    v9 = v1[8];
    type metadata accessor for ReloadTask();
    swift_getWitnessTable();
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0x646575657571203BLL, 0xEA0000000000203ALL);
    sub_1BF4E96F4();
  }

  else
  {

    MEMORY[0x1BFB58C90](0x3A746E6572727563, 0xE900000000000020);
    v4 = v1[5];
    v6 = v1[6];
    v8 = v1[7];
    v10 = v1[8];
    type metadata accessor for ReloadTask();
    swift_getWitnessTable();
    sub_1BF4E96F4();
  }

  return 0;
}

uint64_t sub_1BF4B4014()
{
  if (*(v0 + 16))
  {

    sub_1BF3B7C08();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_1BF3B7C08();
  }

  v2 = *(v0 + 16);
  *(v0 + 16) = 0;

  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t ReloadTaskPair.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

unint64_t sub_1BF4B4190()
{
  v1 = *v0;
  v2 = 0xD000000000000017;
  v3 = 0xD000000000000027;
  if (*v0 == 6)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  *v0;
  if (v1 != 5)
  {
    v3 = v4;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000023;
  if (v1 != 3)
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v1 == 2)
  {
    v5 = 0xD000000000000024;
  }

  if (v1 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (v1 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BF4B4264()
{
  type metadata accessor for NominatedContainerPermissions();
  swift_initStackObject();
  v0 = sub_1BF3F8CCC()[2];

  qword_1EDC9AD98 = v0;
  return result;
}

uint64_t sub_1BF4B42C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v316 = &v274 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v308 = &v274 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v303 = &v274 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v304 = &v274 - v14;
  v15 = sub_1BF4E7334();
  v314 = *(v15 - 8);
  v315 = v15;
  v16 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v274 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1BF4E7394();
  v305 = *(v306 - 8);
  v19 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v313 = &v274 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WidgetExtensionInfo();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v307 = (&v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v302 = &v274 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v301 = &v274 - v29;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v323 = *(v330 - 8);
  v30 = *(v323 + 64);
  MEMORY[0x1EEE9AC00](v330);
  ObjCClassFromMetadata = &v274 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v317 = &v274 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v300 = &v274 - v35;
  v36 = sub_1BF4E7194();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v312 = &v274 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v311 = &v274 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v310 = &v274 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v309 = &v274 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v319 = &v274 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v318 = &v274 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v322 = &v274 - v51;
  v52 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages) = 0;
  v53 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock;
  type metadata accessor for UnfairLock();
  v54 = swift_allocObject();
  v55 = swift_slowAlloc();
  *v55 = 0;
  *(v2 + v53) = v54;
  *(v54 + 16) = v55;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial) = 1;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 1;
  v56 = [a1 applicationExtensionRecord];
  if (!v56)
  {
    sub_1BF4B86EC();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v299 = v18;
  v57 = v56;
  v58 = [v57 dataContainerURL];
  if (!v58)
  {

    sub_1BF4B86EC();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();

    goto LABEL_7;
  }

  v296 = v21;
  v59 = v322;
  v60 = v58;
  sub_1BF4E7154();

  v61 = v321;
  sub_1BF4B8C98(v57);
  if (v61)
  {

    (*(v37 + 8))(v59, v36);
LABEL_8:
    v65 = *(v2 + v52);

    v66 = *(v2 + v53);

    type metadata accessor for WidgetExtension();
    v67 = *(*v2 + 48);
    v68 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v321 = v57;
  v70 = &off_1E80BD000;
  v71 = v62;
  v72 = [v62 bundleIdentifier];
  if (!v72)
  {
    v82 = v321;

    sub_1BF4B86EC();
    swift_allocError();
    *v83 = 4;
    swift_willThrow();

    (*(v37 + 8))(v322, v36);
    goto LABEL_8;
  }

  v288 = 0;
  v291 = v37;
  v285 = v72;
  v286 = sub_1BF4E8914();
  v293 = v73;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) = a1;
  v290 = a1;
  v74 = [v321 URL];
  sub_1BF4E7154();

  v297 = v71;
  v75 = [v71 URL];
  sub_1BF4E7154();

  v76 = sub_1BF4E7094();
  v77 = CFBundleCreate(0, v76);

  v287 = v2;
  v292 = v36;
  if (!v77)
  {
    v84 = [objc_opt_self() mainBundle];
    v85 = [v84 localizations];

    v284 = sub_1BF4E8BA4();
    v283 = 0;
    v295 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v78 = v77;
  v79 = CFBundleCopyBundleLocalizations(v78);
  v80 = v321;
  if (v79)
  {
    v81 = v79;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v328 = 0;
      sub_1BF4E8B94();

      if (v328)
      {
        v284 = v328;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v86 = [objc_opt_self() mainBundle];
  v87 = [v86 localizations];

  v284 = sub_1BF4E8BA4();
LABEL_20:
  v88 = sub_1BF4E88E4();
  v89 = CFBundleGetValueForInfoDictionaryKey(v78, v88);

  if (v89 && (*&v328 = v89, swift_dynamicCast()))
  {
    v283 = v326;
  }

  else
  {
    v283 = 0;
  }

  if (qword_1EDC9AD90 != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v90 = qword_1EDC9AD98;
    v91 = [v290 v70[89]];
    v92 = sub_1BF4E8914();
    v94 = v93;

    *&v328 = v92;
    *(&v328 + 1) = v94;
    MEMORY[0x1EEE9AC00](v95);
    *(&v274 - 2) = &v328;
    v96 = v288;
    LOBYTE(v90) = sub_1BF4B881C(sub_1BF4A655C, (&v274 - 4), v90);
    v288 = v96;

    if ((v90 & 1) == 0)
    {

      v295 = MEMORY[0x1E69E7CC0];
      goto LABEL_54;
    }

    v97 = sub_1BF4E88E4();
    v98 = CFBundleGetValueForInfoDictionaryKey(v78, v97);

    v99 = MEMORY[0x1E69E7CC0];
    if (v98)
    {
      *&v328 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      v100 = swift_dynamicCast();
      v101 = v317;
      v102 = (v100 & 1) != 0 ? v326 : MEMORY[0x1E69E7CC0];
    }

    else
    {
      v102 = MEMORY[0x1E69E7CC0];
      v101 = v317;
    }

    v282 = v78;
    v103 = *(v102 + 16);
    if (v103)
    {
      *&v328 = v99;
      sub_1BF3E149C(0, v103, 0);
      v104 = v328;
      v298 = v323 + 32;
      v295 = v102;
      v105 = (v102 + 40);
      v106 = v300;
      do
      {
        v108 = *(v105 - 1);
        v107 = *v105;

        sub_1BF4E7694();
        *&v328 = v104;
        v110 = *(v104 + 16);
        v109 = *(v104 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1BF3E149C(v109 > 1, v110 + 1, 1);
          v104 = v328;
        }

        *(v104 + 16) = v110 + 1;
        v111 = (*(v323 + 80) + 32) & ~*(v323 + 80);
        v78 = *(v323 + 72);
        (*(v323 + 32))(v104 + v111 + v78 * v110, v106, v330);
        v105 += 2;
        --v103;
      }

      while (v103);

      v101 = v317;
    }

    else
    {

      v78 = *(v323 + 72);
      v111 = (*(v323 + 80) + 32) & ~*(v323 + 80);
      v104 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
    v281 = swift_allocObject();
    v112 = (v281 + v111);
    sub_1BF4E7694();
    v300 = v112;
    sub_1BF4E7694();
    v113 = v330;
    v298 = *(v104 + 16);
    if (!v298)
    {
      break;
    }

    v70 = 0;
    v114 = v104 + v111;
    v80 = (v323 + 16);
    v294 = (v323 + 8);
    v289 = (v323 + 32);
    v295 = MEMORY[0x1E69E7CC0];
    while (v70 < *(v104 + 16))
    {
      (*v80)(v101, v114, v113);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      if (sub_1BF4E88C4() & 1) != 0 || (sub_1BF4E88C4())
      {
        (*v294)(v101, v113);
      }

      else
      {
        v115 = *v289;
        (*v289)(ObjCClassFromMetadata, v101, v113);
        v116 = v295;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v328 = v116;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF3E149C(0, *(v116 + 16) + 1, 1);
          v116 = v328;
        }

        v119 = *(v116 + 16);
        v118 = *(v116 + 24);
        v120 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          v295 = v119 + 1;
          sub_1BF3E149C(v118 > 1, v119 + 1, 1);
          v120 = v295;
          v116 = v328;
        }

        v295 = v116;
        *(v116 + 16) = v120;
        v121 = v116 + v111 + v119 * v78;
        v113 = v330;
        v115(v121, ObjCClassFromMetadata, v330);
        v101 = v317;
      }

      v70 = (v70 + 1);
      v114 += v78;
      if (v298 == v70)
      {
        goto LABEL_52;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    swift_once();
  }

  v295 = MEMORY[0x1E69E7CC0];
LABEL_52:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

LABEL_53:
  v80 = v321;
LABEL_54:
  LODWORD(v282) = [v297 developerType];
  v122 = [v80 entitlements];
  v123 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9D6B0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124 = [v122 objectForKey:v123 ofClass:?];

  if (v124)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  v125 = v321;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      LODWORD(v281) = v324;
      goto LABEL_62;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  LODWORD(v281) = 0;
LABEL_62:
  v126 = [v125 entitlements];
  v127 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
  v128 = swift_getObjCClassFromMetadata();
  v129 = [v126 objectForKey:v127 ofClass:v128];

  if (v129)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  v130 = v321;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v131 = [v130 entitlements];
  v132 = sub_1BF4E88E4();
  v133 = [v131 objectForKey:v132 ofClass:v128];

  if (v133)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  v130 = v321;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
LABEL_74:
      v280 = v324;
      v279 = v325;
      goto LABEL_77;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v280 = 0;
  v279 = 0;
LABEL_77:
  v134 = [v130 entitlements];
  v135 = sub_1BF4E88E4();
  v136 = [v134 objectForKey:v135 ofClass:v128];

  if (v136)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    type metadata accessor for FileProtectionType(0);
    v137 = swift_dynamicCast();
    v138 = v324;
    if (!v137)
    {
      v138 = 0;
    }

    v300 = v138;
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v300 = 0;
  }

  v139 = sub_1BF44ABF8(&unk_1F3DECC70);
  swift_arrayDestroy();
  v140 = v321;
  v141 = [v321 infoDictionary];
  v142 = sub_1BF4E8D24();
  v317 = [v141 objectsForKeys_];

  v143 = [v140 infoDictionary];
  v144 = sub_1BF4E88E4();
  v145 = [v143 objectForKey:v144 ofClass:ObjCClassFromMetadata];

  if (v145)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v146 = v287;
  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    v70 = v128;
    if (swift_dynamicCast())
    {
      v147 = v324;
      goto LABEL_93;
    }
  }

  else
  {
    v70 = v128;
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v147 = 0;
LABEL_93:
  LODWORD(v289) = 0;
  v148 = 0;
  *(v146 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_disablesImplicitDescriptorDiscovery) = v147;
  v80 = (v139 + 56);
  v149 = 1 << *(v139 + 32);
  v150 = -1;
  if (v149 < 64)
  {
    v150 = ~(-1 << v149);
  }

  v78 = v150 & *(v139 + 56);
  v151 = (v149 + 63) >> 6;
  while (1)
  {
    v152 = v148;
    if (!v78)
    {
      break;
    }

LABEL_101:
    v153 = (*(v139 + 48) + ((v148 << 10) | (16 * __clz(__rbit64(v78)))));
    v154 = *v153;
    v155 = v153[1];

    v156 = sub_1BF4E88E4();

    v157 = [v317 objectForKey:v156 ofClass:ObjCClassFromMetadata];

    if (v157)
    {
      sub_1BF4E9164();
      swift_unknownObjectRelease();
    }

    else
    {
      v326 = 0u;
      v327 = 0u;
    }

    v78 &= v78 - 1;
    v328 = v326;
    v329 = v327;
    if (*(&v327 + 1))
    {
      if (swift_dynamicCast())
      {
        v158 = v324;
        v159 = sub_1BF4E9084();
        LODWORD(v298) = sub_1BF4E90A4();

        LODWORD(v289) = v298 | v289;
      }
    }

    else
    {
      sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    }
  }

  while (1)
  {
    v148 = v152 + 1;
    if (__OFADD__(v152, 1))
    {
      __break(1u);
      goto LABEL_193;
    }

    if (v148 >= v151)
    {
      break;
    }

    v78 = v80[v148];
    ++v152;
    if (v78)
    {
      goto LABEL_101;
    }
  }

  v160 = v321;
  v161 = [v321 infoDictionary];
  v162 = sub_1BF4E88E4();
  v163 = v70;
  v164 = [v161 objectForKey:v162 ofClass:v70];

  if (v164)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v165 = v292;
  v166 = v291;
  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {

      LODWORD(v294) = 1;
      goto LABEL_115;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  LODWORD(v294) = 0;
LABEL_115:
  v167 = [v160 infoDictionary];
  v168 = sub_1BF4E88E4();
  v169 = [v167 objectForKey:v168 ofClass:v163];

  if (v169)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {

      LODWORD(v294) = 1;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  if ([v297 developerType] != 1)
  {
    goto LABEL_133;
  }

  v170 = [v160 infoDictionary];
  v171 = sub_1BF4E88E4();
  v172 = [v170 objectForKey:v171 ofClass:v163];

  if (v172)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (!*(&v327 + 1))
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    goto LABEL_133;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_133:
    v298 = 0;
    v278 = 0;
    goto LABEL_134;
  }

  v173 = v325;
  v298 = v324;
  v174 = qword_1EDC9D500;

  if (v174 != -1)
  {
    swift_once();
  }

  v175 = sub_1BF4E7B54();
  __swift_project_value_buffer(v175, qword_1EDCA69A0);

  v176 = sub_1BF4E7B34();
  v177 = sub_1BF4E8E84();

  v178 = os_log_type_enabled(v176, v177);
  v278 = v173;
  if (v178)
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *&v328 = v180;
    *v179 = 136446210;
    v181 = sub_1BF38D65C(v298, v173, &v328);

    *(v179 + 4) = v181;
    v165 = v292;
    _os_log_impl(&dword_1BF389000, v176, v177, "Found effective original app container bundle identifier: %{public}s", v179, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    v182 = v180;
    v160 = v321;
    MEMORY[0x1BFB5A5D0](v182, -1, -1);
    MEMORY[0x1BFB5A5D0](v179, -1, -1);
  }

  else
  {
  }

LABEL_134:
  v183 = [objc_allocWithZone(MEMORY[0x1E69942F0]) init];
  v184 = [v160 entitlements];
  v185 = sub_1BF4E88E4();
  v186 = [v184 objectForKey:v185 ofClass:ObjCClassFromMetadata];

  if (v186)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      v187 = v324;
      goto LABEL_142;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v187 = 0;
LABEL_142:
  [v183 setCanOpenSystemURLs_];
  v188 = [v160 entitlements];
  v189 = sub_1BF4E88E4();
  v190 = [v188 objectForKey:v189 ofClass:ObjCClassFromMetadata];

  if (v190)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      v191 = v324;
      goto LABEL_150;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v191 = 0;
LABEL_150:
  [v183 setUsesEventService_];
  v192 = [v160 entitlements];
  v193 = sub_1BF4E88E4();
  v194 = [v192 objectForKey:v193 ofClass:ObjCClassFromMetadata];

  if (v194)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      v195 = v324;
      goto LABEL_158;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v195 = 0;
LABEL_158:
  [v183 setCanKeepAlive_];
  v196 = [v160 entitlements];
  v197 = sub_1BF4E88E4();
  v198 = [v196 objectForKey:v197 ofClass:ObjCClassFromMetadata];

  if (v198)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v326 = 0u;
    v327 = 0u;
  }

  v328 = v326;
  v329 = v327;
  if (*(&v327 + 1))
  {
    if (swift_dynamicCast())
    {
      v199 = v324;
      goto LABEL_166;
    }
  }

  else
  {
    sub_1BF38C9B4(&v328, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v199 = 0;
LABEL_166:
  [v183 setInvalidatesOnStorefrontChange_];
  sub_1BF4E9034();
  v200 = [v290 bundleIdentifier];
  sub_1BF4E8914();

  sub_1BF4E7694();

  v201 = v302;
  sub_1BF4E7694();
  v202 = 1;
  (*(v323 + 56))(v201, 0, 1, v330);
  v330 = sub_1BF4E9014();
  v203 = v321;
  v204 = sub_1BF4E8E94();
  v206 = v205;
  v207 = [v203 localizedName];
  ObjCClassFromMetadata = sub_1BF4E8914();
  v302 = v208;

  v209 = [v203 uniqueIdentifier];
  sub_1BF4E7374();

  v210 = [v203 executableURL];
  v323 = v206;
  if (v210)
  {
    v211 = v308;
    v212 = v210;
    sub_1BF4E7154();

    v213 = v211;
    v202 = 0;
  }

  else
  {
    v213 = v308;
  }

  v214 = v300;
  v215 = v204;
  (*(v166 + 56))(v213, v202, 1, v165);
  v216 = v213;
  v217 = v303;
  sub_1BF39D6DC(v216, v303);
  if ((*(v166 + 48))(v217, 1, v165) == 1)
  {
    v218 = v166;
    sub_1BF38C9B4(v217, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v220 = v314;
    v219 = v315;
    v221 = v304;
    (*(v314 + 56))(v304, 1, 1, v315);
    goto LABEL_172;
  }

  v221 = v304;
  URL.lastModifiedDate.getter(v304);
  v218 = v166;
  (*(v166 + 8))(v217, v165);
  v220 = v314;
  v219 = v315;
  if ((*(v314 + 48))(v221, 1, v315) == 1)
  {
LABEL_172:
    sub_1BF4E72B4();
    v222 = (*(v220 + 48))(v221, 1, v219);
    v223 = v322;
    if (v222 != 1)
    {
      sub_1BF38C9B4(v221, &qword_1EBDD9B00, &qword_1BF4F1E50);
    }

    goto LABEL_175;
  }

  (*(v220 + 32))(v299, v221, v219);
  v223 = v322;
LABEL_175:
  v224 = *(v218 + 16);
  v224(v309, v318, v165);
  v224(v310, v223, v165);
  sub_1BF4E70F4();
  if (v214)
  {
    v225 = v214;
    sub_1BF4E8434();
  }

  else
  {
    v226 = sub_1BF4E8424();
    (*(*(v226 - 8) + 56))(v316, 1, 1, v226);
  }

  v227 = v215;
  v224(v312, v319, v165);
  v228 = v278;
  if (v278)
  {

    v293 = v228;
  }

  else
  {
    v298 = v286;
  }

  v229 = v291;
  v230 = v296;
  v231 = [v297 localizedName];
  v232 = sub_1BF4E8914();
  v234 = v233;

  v235 = sub_1BF4E8E94();
  v237 = v236;
  v238 = [v203 SDKVersion];
  v304 = v232;
  v303 = v234;
  v301 = v235;
  v296 = v237;
  if (v238)
  {
    v239 = v238;
    v286 = sub_1BF4E8914();
    v278 = v240;

    v203 = v321;
  }

  else
  {
    v241 = *MEMORY[0x1E6994200];
    v286 = sub_1BF4E8914();
    v278 = v242;
  }

  v243 = v281;
  v244 = v282 == 1;
  [v203 platform];

  v282 = CHSPlatformFromDYLDPlatform();
  LODWORD(v281) = ([v297 developerType] != 1) & v243;
  v308 = v183;
  [v183 copy];
  sub_1BF4E9164();
  swift_unknownObjectRelease();
  sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
  v245 = swift_dynamicCast();
  v246 = v326;
  if (!v245)
  {
    v246 = 0;
  }

  v277 = v246;
  v247 = v230[13];
  v248 = sub_1BF4E8424();
  v249 = v307;
  (*(*(v248 - 8) + 56))(v307 + v247, 1, 1, v248);
  v250 = (v249 + v230[17]);
  v251 = (v249 + v230[21]);
  v275 = (v249 + v230[22]);
  v276 = v230[27];
  v252 = v330;
  *v249 = v330;
  v249[1] = v227;
  v253 = ObjCClassFromMetadata;
  v249[2] = v323;
  v249[3] = v253;
  v249[4] = v302;
  (*(v305 + 32))(v249 + v230[7], v313, v306);
  (*(v314 + 32))(v249 + v230[8], v299, v315);
  *(v249 + v230[9]) = v244;
  v254 = *(v229 + 32);
  v255 = v292;
  v254(v249 + v230[10], v309, v292);
  v254(v249 + v230[11], v310, v255);
  v254(v249 + v230[12], v311, v255);
  v256 = v252;
  sub_1BF41D048(v316, v249 + v247);
  *(v249 + v230[14]) = v289 & 1;
  v254(v249 + v230[15], v312, v255);
  v257 = (v249 + v230[16]);
  v258 = v293;
  *v257 = v298;
  v257[1] = v258;
  v259 = v303;
  *v250 = v304;
  v250[1] = v259;
  v260 = (v249 + v230[18]);
  v261 = v296;
  *v260 = v301;
  v260[1] = v261;
  v262 = (v249 + v230[19]);
  v263 = v278;
  *v262 = v286;
  v262[1] = v263;
  *(v249 + v230[20]) = v282;
  *v251 = 0;
  v251[1] = 0;
  v264 = v275;
  v265 = v279;
  *v275 = v280;
  v264[1] = v265;
  *(v249 + v230[23]) = v281;
  *(v249 + v230[24]) = v284;
  *(v249 + v230[25]) = v283;
  *(v249 + v230[26]) = v295;
  *(v249 + v276) = v277;
  v2 = v287;
  sub_1BF4B9360(v249, v287 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_hasConfigurationColorAssets) = v294;
  v266 = objc_opt_self();
  v267 = v285;
  v268 = [v266 preferredLanguagesForContainerBundleIdentifier_];

  if (v268)
  {
    v269 = sub_1BF4E8BA4();
  }

  else
  {

    v269 = 0;
  }

  v270 = v322;

  v271 = *(v291 + 8);
  v272 = v292;
  v271(v319, v292);
  v271(v318, v272);
  v271(v270, v272);
  v273 = *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages) = v269;

  return v2;
}

uint64_t sub_1BF4B6C64(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v26 = sub_1BF4E8464();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1BF4E83D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BF4E8634();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E6985960], v11);
    if (v20(v10, 1, v11) != 1)
    {
      sub_1BF38C9B4(v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  sub_1BF38C94C(v25, v27, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v3 + 104))(v6, *MEMORY[0x1E6985A40], v26);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  v21 = sub_1BF4B7314(v19);
  (*(v16 + 8))(v19, v24);
  return v21;
}

uint64_t sub_1BF4B6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v28 = a3;
  v26 = a2;
  v27 = sub_1BF4E8464();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1BF4E83D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BF4E8634();
  v18 = *(v25 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v12, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E6985960], v13);
    if (v22(v12, 1, v13) != 1)
    {
      sub_1BF38C9B4(v12, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  sub_1BF38C94C(v26, v30, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v5 + 104))(v8, *MEMORY[0x1E6985A40], v27);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  sub_1BF38F778();
  return (*(v18 + 8))(v21, v25);
}

uint64_t sub_1BF4B7314(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38F8C8(v1);
  os_unfair_lock_unlock(*(v3 + 16));
  sub_1BF4E8264();
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity);
  v9[3] = sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v9[0] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);

  v6 = v4;
  v7 = MEMORY[0x1BFB584A0](v9, v5, a1, 0, 0);

  sub_1BF38C9B4(v9, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  return v7;
}

void sub_1BF4B7420()
{
  v1 = v0;
  v37[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);

  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37[0] = v6;
    *v5 = 136315138;
    v7 = [*(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) bundleIdentifier];
    v8 = sub_1BF4E8914();
    v10 = v9;

    v11 = sub_1BF38D65C(v8, v10, v37);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1BF389000, v3, v4, "Killing %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  v12 = [objc_opt_self() defaultManager];
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v14 = (v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  v15 = v14 + *(type metadata accessor for WidgetExtensionInfo() + 40);
  v16 = sub_1BF4E7094();
  v37[0] = 0;
  v17 = [v13 terminatePlugInAtURL:v16 withError:v37];

  v18 = v37[0];
  if (v17)
  {
    v19 = *MEMORY[0x1E69E9840];

    v20 = v18;
  }

  else
  {
    v21 = v37[0];
    v22 = sub_1BF4E6FF4();

    swift_willThrow();

    v23 = v22;
    v24 = sub_1BF4E7B34();
    v25 = sub_1BF4E8E84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v26 = 136446466;
      v29 = [*v14 tokenString];
      v30 = sub_1BF4E8914();
      v32 = v31;

      v33 = sub_1BF38D65C(v30, v32, v37);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2114;
      v34 = v22;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v35;
      *v27 = v35;
      _os_log_impl(&dword_1BF389000, v24, v25, "Error terminating plugin %{public}s: %{public}@", v26, 0x16u);
      sub_1BF38C9B4(v27, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
    }

    else
    {
    }

    v36 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1BF4B7850()
{
  v1 = sub_1BF4E7394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v7 = type metadata accessor for WidgetExtensionInfo();
  v8 = *(v7 + 28);
  sub_1BF391FD8(&qword_1EBDD8948, MEMORY[0x1E69695A8]);
  sub_1BF4E8884();
  v9 = [*v6 tokenString];
  sub_1BF4E8914();

  sub_1BF4E89F4();

  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  sub_1BF4E89F4();
  v12 = *(v7 + 32);
  sub_1BF4E7334();
  sub_1BF391FD8(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  v13 = [*(v15[1] + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  sub_1BF4E8884();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BF4B7A84(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BF38E49C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  type metadata accessor for WidgetExtension();
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v8 = v18;
  v9 = type metadata accessor for WidgetExtensionInfo();
  v10 = *(v9 + 28);
  v11 = [*(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  LOBYTE(v11) = sub_1BF4E7364();
  v12 = *(v4 + 8);
  v12(v7, v3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = (v8 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  (*(v4 + 16))(v7, v8 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info + *(v9 + 28), v3);
  v14 = sub_1BF4E7364();
  v12(v7, v3);
  if ((v14 & 1) == 0 || (v15 = [*(v8 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier], sub_1BF4E7374(), v15, LOBYTE(v15) = sub_1BF4E7364(), v12(v7, v3), (v15 & 1) == 0))
  {
LABEL_6:

LABEL_7:
    v16 = 0;
    return v16 & 1;
  }

  v16 = WidgetExtensionInfo.matches(_:)(v13);

  return v16 & 1;
}

uint64_t sub_1BF4B7CE4()
{
  sub_1BF38DB44(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);

  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);

  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetExtension()
{
  result = qword_1EDC9AD58;
  if (!qword_1EDC9AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF4B7DCC()
{
  result = type metadata accessor for WidgetExtensionInfo();
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

uint64_t get_enum_tag_for_layout_string_9ChronoKit20WidgetExtensionErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF4B7EB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
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

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4B7F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1BF4B7FC4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info) tokenString];
  v2 = sub_1BF4E8914();

  return v2;
}

uint64_t sub_1BF4B8028@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 28);
  v5 = sub_1BF4E7394();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B80F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 44);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B817C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 60);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B821C()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF4B826C()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF4B82F8()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF4B8384()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo() + 96));
}

uint64_t sub_1BF4B84E4()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4B7850();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B854C()
{
  sub_1BF4E9804();
  v1 = *v0;
  sub_1BF4B7850();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B858C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Extension.description.getter(a1, WitnessTable);
}

id sub_1BF4B85E0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  *a1 = v2;
  return v2;
}

uint64_t sub_1BF4B8640(void *a1)
{
  a1[1] = sub_1BF391FD8(&qword_1EDC9AD70, type metadata accessor for WidgetExtension);
  a1[2] = sub_1BF391FD8(&unk_1EDC9AD80, type metadata accessor for WidgetExtension);
  result = sub_1BF391FD8(&qword_1EDC9AD78, type metadata accessor for WidgetExtension);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF4B86EC()
{
  result = qword_1EDC99B80[0];
  if (!qword_1EDC99B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC99B80);
  }

  return result;
}

id sub_1BF4B8740(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E88E4();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}