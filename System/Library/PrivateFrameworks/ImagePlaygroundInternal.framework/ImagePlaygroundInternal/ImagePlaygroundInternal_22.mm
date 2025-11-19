void *sub_1D24ED24C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAC0);
  v4 = *v0;
  v5 = sub_1D28793C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
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
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1D22BD1D0(*(v4 + 48) + v22, v28, &qword_1EC6DCAB8);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        sub_1D22EC9BC(v21, *(v30 + 48) + v22, &qword_1EC6DCAB8);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        result = sub_1D2870F78();
      }

      while (v15);
    }

    v18 = v10;
    v6 = v30;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_1D24ED4A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAD8);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

char *sub_1D24ED5F0()
{
  v1 = v0;
  v33 = sub_1D2871818();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE8);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_1D2870F78();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_1D24ED898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB80);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        sub_1D2870F68();
        result = sub_1D2870F78();
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

char *sub_1D24EDA3C()
{
  v1 = v0;
  v33 = sub_1D2871D58();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB18);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_1D2870F68();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_1D24EDCBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB20);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        result = sub_1D2870F68();
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

void *sub_1D24EDE24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB10);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        sub_1D23C3EE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D23C3FAC(v25, (*(v4 + 56) + v22));
        result = sub_1D2870F68();
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

void *sub_1D24EDFEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA58);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v30;
        v24 = *(v31 + 72) * v22;
        sub_1D24F0AD8(*(v6 + 48) + v24, v30, type metadata accessor for GeneratedPreviewOptions);
        v25 = v32;
        v26 = *(v33 + 72) * v22;
        sub_1D22BD1D0(*(v6 + 56) + v26, v32, &qword_1EC6DA810);
        v27 = v34;
        sub_1D24F0B40(v23, *(v34 + 48) + v24, type metadata accessor for GeneratedPreviewOptions);
        result = sub_1D22EC9BC(v25, *(v27 + 56) + v26, &qword_1EC6DA810);
        v17 = v35;
      }

      while (v35);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
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

char *sub_1D24EE2EC()
{
  v1 = v0;
  v2 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA30);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1D24F0AD8(*(v6 + 48) + v23, v29, type metadata accessor for GeneratedPreviewOptions);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1D24F0AD8(*(v6 + 56) + v25, v31, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        v26 = v33;
        sub_1D24F0B40(v22, *(v33 + 48) + v23, type metadata accessor for GeneratedPreviewOptions);
        result = sub_1D24F0B40(v24, *(v26 + 56) + v25, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        v16 = v34;
      }

      while (v34);
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

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
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

char *sub_1D24EE604(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v34 - v6;
  v43 = sub_1D2871818();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *v3;
  v9 = sub_1D28793C8();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

void *sub_1D24EE950()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA40);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v30;
        v24 = *(v31 + 72) * v22;
        sub_1D24F0AD8(*(v6 + 48) + v24, v30, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v25 = v32;
        v26 = *(v33 + 72) * v22;
        sub_1D22BD1D0(*(v6 + 56) + v26, v32, &qword_1EC6DA808);
        v27 = v34;
        sub_1D24F0B40(v23, *(v34 + 48) + v24, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        result = sub_1D22EC9BC(v25, *(v27 + 56) + v26, &qword_1EC6DA808);
        v17 = v35;
      }

      while (v35);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
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

id sub_1D24EEC50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA38);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        sub_1D2870F68();
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

void *sub_1D24EEDC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB00);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        v18 = 2 * v17;
        v19 = (*(v2 + 48) + 2 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_1D22D7044(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        result = sub_1D227268C(v25, *(v4 + 56) + v22);
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

void *sub_1D24EEF68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB98);
  v2 = *v0;
  v3 = sub_1D28793C8();
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

void *sub_1D24EF0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB0);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        result = sub_1D2870F68();
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

void *sub_1D24EF21C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBA8);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        result = sub_1D2870F68();
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

id sub_1D24EF384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB48);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        sub_1D2870F78();
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

char *sub_1D24EF4E4()
{
  v1 = v0;
  v39 = sub_1D2871818();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA88);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = (v29 + v23);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;
        result = sub_1D2396784(v25);
        v14 = v36;
        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

void *sub_1D24EF788()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA78);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
        result = sub_1D2870F68();
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

void *sub_1D24EF8F8()
{
  v1 = v0;
  v2 = type metadata accessor for Bubble(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB50);
  v5 = *v0;
  v6 = sub_1D28793C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v28 + 72) * v20;
        sub_1D24F0AD8(*(v5 + 48) + v21, v4, type metadata accessor for Bubble);
        v20 *= 32;
        v22 = (*(v5 + 56) + v20);
        v23 = *(v7 + 48);
        v24 = *v22;
        v29 = v22[1];
        v30 = v24;
        result = sub_1D24F0B40(v4, v23 + v21, type metadata accessor for Bubble);
        v25 = (*(v7 + 56) + v20);
        v26 = v29;
        *v25 = v30;
        v25[1] = v26;
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

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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

void *sub_1D24EFB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB40);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
        result = sub_1D2870F78();
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

void *sub_1D24EFC94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB08);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
      v17 = (*(v2 + 48) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = (*(v4 + 48) + 2 * v14);
      *v20 = v18;
      v20[1] = v17;
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

void *sub_1D24EFDF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB58);
  v2 = *v0;
  v3 = sub_1D28793C8();
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
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
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

void *sub_1D24EFF4C()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationContextItem();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB70);
  v4 = *v0;
  v5 = sub_1D28793C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1D24F0AD8(v21 + v27, v32, type metadata accessor for ConversationContextItem);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1D24F0B40(v26, *(v28 + 56) + v27, type metadata accessor for ConversationContextItem);
        result = sub_1D2870F68();
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
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

void *sub_1D24F01AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB8);
  v2 = *v0;
  v3 = sub_1D28793C8();
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

void *sub_1D24F0320(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v38 = a1(0);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v4;
    v33 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v33, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v40;
        v23 = *(v40 + 72) * v21;
        v24 = v37;
        v25 = v38;
        (*(v40 + 16))(v37, *(v6 + 48) + v23, v38);
        v26 = 16 * v21;
        v27 = (*(v6 + 56) + 16 * v21);
        v28 = *v27;
        v29 = v27[1];
        v30 = v39;
        (*(v22 + 32))(*(v39 + 48) + v23, v24, v25);
        v31 = (*(v30 + 56) + v26);
        *v31 = v28;
        v31[1] = v29;
        v6 = v36;
        result = sub_1D2870F68();
        v16 = v41;
      }

      while (v41);
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

        v4 = v32;
        v8 = v39;
        goto LABEL_21;
      }

      v20 = *(v33 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

unint64_t sub_1D24F05B0()
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_1D2877E98(), v2, v4 = sub_1D24DCD78(v3), , !v4))
  {
    v4 = sub_1D25D6E38(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1D24F06A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_1D28729E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430);
  v10 = __swift_project_value_buffer(v9, qword_1ED8A3550);
  os_unfair_lock_lock(v10);
  sub_1D22BD1D0(v10 + *(v9 + 28), v4, &qword_1EC6DA428);
  os_unfair_lock_unlock(v10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DA428);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_1D28729C8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    if (v13)
    {
      v14 = sub_1D2871F98();
      v16 = v15;
      v17 = sub_1D24F05B0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[1] = v17;
      sub_1D24E7BD8(v14, v16, v11, v13, isUniquelyReferenced_nonNull_native);

      sub_1D22BCFD0(0, &qword_1ED89CDA0);
      v19 = sub_1D2878A58();
      v20 = sub_1D2877E78();

      v21 = sub_1D2878068();
      [v19 setValue:v20 forKey:v21];
    }
  }

  v22 = sub_1D2872008();
  return (*(*(v22 - 8) + 8))(a1, v22);
}

uint64_t sub_1D24F09CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24F0AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0BA8(uint64_t a1, void *a2, void (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  v190 = a5;
  v189 = a4;
  v200 = a3;
  v211 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v197 = &v172 - v7;
  v199 = sub_1D2873158();
  *&v198 = *(v199 - 1);
  MEMORY[0x1EEE9AC00](v199);
  v196 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v181 = &v172 - v10;
  v180 = sub_1D28731A8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1D2873198();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v201 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v175 = &v172 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v172 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v172 - v21;
  v207 = sub_1D2873758();
  v209 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v202 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v177 = &v172 - v24;
  v25 = type metadata accessor for PlaygroundImage();
  v214 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v172 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v192 = &v172 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v193 = &v172 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBD0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v186 = &v172 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v194 = (&v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v187 = (&v172 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v210 = (&v172 - v42);
  v191 = sub_1D28730A8();
  v203 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v208 = (&v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_1D2873CB8();
  v45 = *(v44 - 8);
  v212 = v44;
  v213 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v172 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v172 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v185 = &v172 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v176 = &v172 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v184 = &v172 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v174 = &v172 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v172 - v60;
  v62 = sub_1D2873088();
  v205 = *(v62 - 8);
  v206 = v62;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v172 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = MEMORY[0x1EEE9AC00](v65).n128_u64[0];
  v204 = &v172 - v67;
  v68 = [a2 baseImage];
  v69 = [a2 sketchImage];
  v215 = v68;
  if (!v68)
  {
    v70 = v69;
    if (v69)
    {
LABEL_13:
      v81 = objc_opt_self();
      v82 = v70;
      v83 = [v81 currentTraitCollection];
      v84 = [v83 userInterfaceStyle];

      if (v84 != 2)
      {
        v85 = v82;
        v86 = v207;
        v88 = v201;
        v87 = v202;
LABEL_17:
        v89 = v85;
        *(v30 + 4) = 0;
        *(v30 + 5) = 0;
        v90 = &v30[v25[9]];
        *v90 = 0u;
        *(v90 + 1) = 0u;
        *&v30[v25[10]] = xmmword_1D28809A0;
        v91 = v25[11];
        v92 = sub_1D2873AA8();
        (*(*(v92 - 8) + 56))(&v30[v91], 1, 1, v92);
        *v30 = v70;
        v30[8] = 3;
        *(v30 + 6) = 1;
        *(v30 + 2) = 0;
        v30[v25[12]] = 1;
        v208 = v89;
        sub_1D2871808();
        v93 = v195;
        sub_1D262A994(v195);
        sub_1D23D4DFC(v30);
        if ((*(v214 + 48))(v93, 1, v25) == 1)
        {
          sub_1D22BD238(v93, &unk_1EC6DE5A0);
          v94 = v209;
          v95 = v194;
          (*(v209 + 56))(v194, 1, 1, v86);
        }

        else
        {
          v95 = v194;
          sub_1D262C1D0(v194);
          sub_1D23D4DFC(v93);
          v94 = v209;
          if ((*(v209 + 48))(v95, 1, v86) != 1)
          {
            (*(v94 + 32))(v87, v95, v86);
            sub_1D2873188();
            sub_1D2873168();
            (*(v179 + 104))(v178, *MEMORY[0x1E69DFF78], v180);
            sub_1D2873178();
            v139 = v210;
            (*(v94 + 16))(v210, v87, v86);
            (*(v94 + 56))(v139, 0, 1, v86);
            sub_1D2873028();
            v140 = v182;
            v141 = v181;
            v142 = v183;
            (*(v182 + 16))(v181, v88, v183);
            (*(v140 + 56))(v141, 0, 1, v142);
            sub_1D2872F38();
            v143 = v176;
            sub_1D28725B8();
            v144 = sub_1D2873CA8();
            v145 = sub_1D28789F8();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = v140;
              v147 = swift_slowAlloc();
              *v147 = 0;
              _os_log_impl(&dword_1D226E000, v144, v145, "generate - running PromptConditioningImageAssignmentTask with sketchImage", v147, 2u);
              MEMORY[0x1D38A3520](v147, -1, -1);

              (*(v213 + 8))(v143, v212);
              (*(v146 + 8))(v88, v142);
              (*(v94 + 8))(v202, v86);
            }

            else
            {

              (*(v213 + 8))(v143, v212);
              (*(v140 + 8))(v88, v142);
              (*(v94 + 8))(v87, v86);
            }

LABEL_43:
            v164 = v196;
            sub_1D2873148();
            v165 = v210;
            v166 = v208;
            *v210 = v208;
            (*(v94 + 104))(v165, *MEMORY[0x1E69E0108], v86);
            (*(v94 + 56))(v165, 0, 1, v86);
            v167 = v166;
            sub_1D2872FF8();
            v169 = v197;
            v168 = v198;
            v170 = v199;
            (*(v198 + 16))(v197, v164, v199);
            (*(v168 + 56))(v169, 0, 1, v170);
            sub_1D2872F28();

            return (*(v168 + 8))(v164, v170);
          }
        }

        sub_1D22BD238(v95, &qword_1EC6DA510);
        v96 = v185;
        sub_1D28725B8();
        v97 = sub_1D2873CA8();
        v98 = sub_1D28789F8();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_1D226E000, v97, v98, "generate - skipping PromptConditioningImageAssignmentTask with sketchImage", v99, 2u);
          MEMORY[0x1D38A3520](v99, -1, -1);
        }

        (*(v213 + 8))(v96, v212);
        goto LABEL_43;
      }

      v85 = sub_1D2878948();
      v86 = v207;
      v88 = v201;
      v87 = v202;
      if (v85)
      {
        v70 = v85;
        goto LABEL_17;
      }

      sub_1D28725B8();
      v148 = sub_1D2873CA8();
      v149 = sub_1D2878A18();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_1D226E000, v148, v149, "generate - failed to create a normalized sketch image", v150, 2u);
        MEMORY[0x1D38A3520](v150, -1, -1);
      }

      else
      {
      }

      v100 = *(v213 + 8);
      v101 = v50;
      return v100(v101, v212);
    }

LABEL_8:
    sub_1D247E07C(v200, v17);
    if ((*(v214 + 48))(v17, 1, v25) != 1)
    {
      sub_1D23EEBD4(v17, v27);
      sub_1D262C1D0(v210);
      sub_1D2873028();

      return sub_1D23D4DFC(v27);
    }

    sub_1D22BD238(v17, &unk_1EC6DE5A0);
    sub_1D28725B8();
    v77 = sub_1D2873CA8();
    v78 = sub_1D28789F8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1D226E000, v77, v78, "generate - skipping assignment of draw-on-image recipe", v79, 2u);
      MEMORY[0x1D38A3520](v79, -1, -1);
    }

    else
    {
    }

    v100 = *(v213 + 8);
    v101 = v47;
    return v100(v101, v212);
  }

  v70 = v69;
  if (!v69)
  {
    goto LABEL_8;
  }

  v71 = v215;
  v72 = v70;
  v73 = [a2 sketchMask];
  if (!v73)
  {

    goto LABEL_13;
  }

  v74 = v73;
  v75 = [a2 drawOnImageAssignmentOptions];
  v173 = v70;
  v172 = v74;
  v200 = v72;
  if (v75)
  {
    if (v75 == 1)
    {
      v76 = MEMORY[0x1E69DFF58];
      goto LABEL_29;
    }

    sub_1D28725B8();
    v102 = sub_1D2873CA8();
    v103 = sub_1D2878A18();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_1D226E000, v102, v103, "generate - unsupported DOI render mode", v104, 2u);
      MEMORY[0x1D38A3520](v104, -1, -1);
    }

    (*(v213 + 8))(v61, v212);
  }

  v76 = MEMORY[0x1E69DFF50];
LABEL_29:
  v106 = v204;
  v105 = v205;
  v107 = v206;
  (*(v205 + 104))(v204, *v76, v206);
  (*(v105 + 16))(v64, v106, v107);
  sub_1D2873098();
  v109 = v209;
  v108 = v210;
  *v210 = v71;
  v110 = *MEMORY[0x1E69E0108];
  v111 = v71;
  v112 = *(v109 + 104);
  v113 = v207;
  v112(v108, v110, v207);
  v114 = *(v109 + 56);
  v197 = (v109 + 56);
  v114(v108, 0, 1, v113);
  v199 = v111;
  sub_1D2873048();
  v115 = v200;
  *v108 = v200;
  v112(v108, v110, v113);
  v114(v108, 0, 1, v113);
  v201 = v115;
  sub_1D2872FF8();
  v116 = v172;
  *v108 = v172;
  v112(v108, v110, v113);
  v200 = v114;
  v114(v108, 0, 1, v113);
  v202 = v116;
  sub_1D2872F68();
  v117 = v203;
  v118 = v186;
  v119 = v191;
  (*(v203 + 16))(v186, v208, v191);
  (*(v117 + 56))(v118, 0, 1, v119);
  sub_1D2872F08();
  sub_1D22A58B8(v189);
  sub_1D2872EF8();
  v120 = v193;
  *(v193 + 32) = 0;
  *(v120 + 40) = 0;
  v121 = (v120 + v25[9]);
  *v121 = 0u;
  v121[1] = 0u;
  v122 = v25[10];
  v198 = xmmword_1D28809A0;
  *(v120 + v122) = xmmword_1D28809A0;
  v123 = v25[11];
  v124 = sub_1D2873AA8();
  v125 = *(*(v124 - 8) + 56);
  v125(v120 + v123, 1, 1, v124);
  *v120 = v173;
  *(v120 + 8) = 3;
  *(v120 + 24) = 1;
  *(v120 + 16) = 0;
  *(v120 + v25[12]) = 1;
  v201 = v201;
  sub_1D2871808();
  v126 = v192;
  *(v192 + 32) = 0;
  *(v126 + 40) = 0;
  v127 = (v126 + v25[9]);
  *v127 = 0u;
  v127[1] = 0u;
  *(v126 + v25[10]) = v198;
  v125(v126 + v25[11], 1, 1, v124);
  *v126 = v215;
  *(v126 + 8) = 3;
  *(v126 + 24) = 1;
  *(v126 + 16) = 0;
  *(v126 + v25[12]) = 1;
  v128 = v199;
  sub_1D2871808();
  v129 = v188;
  sub_1D262A704(v188);
  if ((*(v214 + 48))(v129, 1, v25) == 1)
  {
    sub_1D23D4DFC(v126);
    sub_1D23D4DFC(v120);
    sub_1D22BD238(v129, &unk_1EC6DE5A0);
    v130 = v187;
    v200(v187, 1, 1, v113);
LABEL_33:
    sub_1D22BD238(v130, &qword_1EC6DA510);
    v132 = v184;
    sub_1D28725B8();
    v133 = sub_1D2873CA8();
    v134 = sub_1D28789F8();
    v135 = os_log_type_enabled(v133, v134);
    v136 = v204;
    if (v135)
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_1D226E000, v133, v134, "generate - skipping PromptConditioningImageAssignmentTask with blendedImage", v137, 2u);
      MEMORY[0x1D38A3520](v137, -1, -1);
    }

    v138 = v201;
    (*(v213 + 8))(v132, v212);
    (*(v203 + 8))(v208, v119);
    return (*(v205 + 8))(v136, v206);
  }

  v131 = v200;
  v130 = v187;
  sub_1D262C1D0(v187);
  sub_1D23D4DFC(v129);
  if ((*(v209 + 48))(v130, 1, v113) == 1)
  {
    sub_1D23D4DFC(v126);
    sub_1D23D4DFC(v120);
    goto LABEL_33;
  }

  v151 = v209;
  v152 = v177;
  (*(v209 + 32))(v177, v130, v113);
  v153 = v175;
  sub_1D2873188();
  sub_1D2873168();
  (*(v179 + 104))(v178, *MEMORY[0x1E69DFF70], v180);
  sub_1D2873178();
  v154 = v210;
  (*(v151 + 16))(v210, v152, v113);
  v131(v154, 0, 1, v113);
  sub_1D2873028();
  v155 = v182;
  v156 = v181;
  v157 = v183;
  (*(v182 + 16))(v181, v153, v183);
  (*(v155 + 56))(v156, 0, 1, v157);
  sub_1D2872F38();
  v158 = v174;
  sub_1D28725B8();
  v159 = sub_1D2873CA8();
  v160 = sub_1D28789F8();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = v155;
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&dword_1D226E000, v159, v160, "generate - running PromptConditioningImageAssignmentTask with blendedImage", v162, 2u);
    MEMORY[0x1D38A3520](v162, -1, -1);

    v163 = v201;
    (*(v213 + 8))(v158, v212);
    (*(v161 + 8))(v153, v157);
  }

  else
  {

    v171 = v201;
    (*(v213 + 8))(v158, v212);
    (*(v155 + 8))(v153, v157);
  }

  (*(v209 + 8))(v177, v113);
  sub_1D23D4DFC(v192);
  sub_1D23D4DFC(v193);
  (*(v203 + 8))(v208, v119);
  return (*(v205 + 8))(v204, v206);
}

uint64_t *sub_1D24F2508(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = result;
    v8 = sub_1D27CE9A8(a2 - result, 0);
    result = sub_1D286CDD0(v10, (v8 + 32), v4, v7, a2);
    if (result == v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v11 = v8;
  sub_1D24F5088(&v11, a3);
  v9 = v11;
  if (v3)
  {
  }

  return v9;
}

uint64_t sub_1D24F25CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char *a10)
{
  v93 = a4;
  LODWORD(v94) = a8;
  v95 = a7;
  v92 = *&a3;
  v85 = a2;
  v87 = a1;
  v86 = a10;
  v88 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = v83 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v83 - v16;
  v89 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v18 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v97 = (v83 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v90 = (v83 - v22);
  v23 = sub_1D2874B38();
  v99 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2874C68();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  v31 = v30 - 8;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v83 - v33;
  (*(v27 + 16))(v29, a5, v26, v32);
  sub_1D24DB6A0(&qword_1ED89DEA8);
  sub_1D2878318();
  v35 = *(v31 + 44);
  sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878868();
  if (*&v34[v35] == v102)
  {
    v100 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v49 = (v99 + 16);
    if (v93)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v92;
    }

    v51 = (v99 + 8);
    v83[1] = v99 + 32;
    v100 = MEMORY[0x1E69E7CC0];
    do
    {
      v52 = sub_1D28788B8();
      (*v49)(v25);
      v52(&v102, 0);
      sub_1D2878878();
      sub_1D24F4EA0();
      sub_1D2874B48();
      if (v102 == 1 && ((v102 & 0x100) == 0 ? (v53 = 210.0) : (v53 = 300.0), v50 < v53))
      {
        (*v51)(v25, v23);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D27CD310(0, v100[2] + 1, 1, v100);
        }

        v54 = v99;
        v56 = v100[2];
        v55 = v100[3];
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v83[0] = v56 + 1;
          v59 = sub_1D27CD310(v55 > 1, v56 + 1, 1, v100);
          v57 = v83[0];
          v54 = v99;
          v100 = v59;
        }

        v58 = v100;
        v100[2] = v57;
        v54[4](v58 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v56, v25, v23);
      }

      sub_1D2878868();
    }

    while (*&v34[v35] != v102);
  }

  sub_1D22BD238(v34, &qword_1EC6DCA08);
  LOBYTE(v102) = v85 & 1;
  v101 = v93 & 1;
  v36 = sub_1D24F2F94(v100, v87, v85 & 1, *&v92, v93 & 1, v95, v94 & 1, v88, v86);

  v37 = *(v36 + 16);
  if (!v37)
  {
  }

  v38 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v39 = v36 + v38;
  v40 = v90;
  sub_1D24F4EF4(v36 + v38, v90);
  v41 = *v40;
  v42 = v89;
  v43 = v40 + *(v89 + 20);
  v44 = v84;
  sub_1D24F4F58(v43, v84);
  v45 = sub_1D2874DE8();
  v46 = *(v45 - 8);
  v99 = *(v46 + 48);
  v100 = (v46 + 48);
  if ((v99)(v44, 1, v45) == 1)
  {
    result = sub_1D22BD238(v44, &qword_1EC6DCBE0);
    v48 = 0.0;
  }

  else
  {
    sub_1D2874DC8();
    v48 = v60;
    result = (*(v46 + 8))(v44, v45);
  }

  v61 = v97;
  v62 = v98;
  v63 = v41 + v48;
  if (v41 > v41 + v48)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v87 = v46;
  v88 = v36;
  v64 = v37 - 1;
  if (v37 != 1)
  {
    v95 = *(v42 + 20);
    v65 = *(v91 + 72);
    v94 = (v87 + 8);
    v66 = v88 + v65 + v38;
    while (1)
    {
      sub_1D24F4EF4(v66, v61);
      v67 = *v61;
      if (*v61 < v41)
      {
        v41 = *v61;
      }

      v68 = v61 + v95;
      v69 = v61;
      v70 = v96;
      sub_1D24F4F58(v68, v96);
      if ((v99)(v70, 1, v45) == 1)
      {
        sub_1D24F4FC8(v69);
        result = sub_1D22BD238(v70, &qword_1EC6DCBE0);
        v71 = v67 + 0.0;
      }

      else
      {
        sub_1D2874DC8();
        v62 = v98;
        v73 = v72;
        sub_1D24F4FC8(v69);
        result = (*v94)(v70, v45);
        v67 = v67 + v73;
        v71 = v67;
      }

      if (v63 <= v67)
      {
        v63 = v71;
      }

      if (v41 > v63)
      {
        break;
      }

      v66 += v65;
      --v64;
      v61 = v97;
      if (!v64)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_37:
  result = sub_1D24F4FC8(v90);
  if (v37 <= *(v88 + 16))
  {
    v74 = *(v89 + 20);
    v75 = *(v89 + 32);
    v76 = (v87 + 8);
    v77 = 0.0;
    v78 = *(v91 + 72);
    do
    {
      sub_1D24F4EF4(v39, v18);
      sub_1D24F4F58(&v18[v74], v62);
      if ((v99)(v62, 1, v45) == 1)
      {
        sub_1D22BD238(v62, &qword_1EC6DCBE0);
        v79 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v62 = v98;
        v79 = v82;
        (*v76)(v98, v45);
      }

      v80 = v77 + v79;
      v81 = *&v18[v75];
      sub_1D24F4FC8(v18);
      v77 = v80 + v81;
      v39 += v78;
      --v37;
    }

    while (v37);
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D24F2F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v121 = a5;
  v120 = *&a4;
  v122 = a3;
  v123 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v119 - v13;
  v14 = sub_1D2874DE8();
  v126 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1D2874B38();
  v140 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8);
  v17 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v129 = (&v119 - v18);
  v144 = sub_1D2874638();
  v19 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v119 - v27;
  v139 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  v142 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v133 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v127 = (&v119 - v31);
  v137 = a1;
  v32 = *(a1 + 16);
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 16);
  }

  result = sub_1D24F5E10(0, v33 - 1, *(a1 + 16), 0, *(a1 + 16));
  if (v35)
  {
    v36 = v32;
  }

  else
  {
    v36 = result;
  }

  if (v36 < 0)
  {
    goto LABEL_68;
  }

  v125 = v17;
  v130 = v25;
  v143 = v32;
  v135 = v14;
  if (!v36)
  {
    v136 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v52 = v133;
    v133 = a9;
    v53 = v139;
    v54 = *(v126 + 56);
    v55 = v127;
    v56 = v127 + *(v139 + 20);
    v132 = (v126 + 56);
    v131 = v54;
    v54(v56, 1, 1, v14);
    v57 = sub_1D2875148();
    *v55 = 0;
    v55[1] = 0;
    v58 = v55 + v53[6];
    *v58 = v57;
    v58[8] = v59 & 1;
    *(v58 + 2) = v60;
    v58[24] = v61 & 1;
    *(v55 + v53[7]) = 0;
    *(v55 + v53[8]) = 0;
    sub_1D24F4EF4(v55, v52);
    result = sub_1D2583C80(v52, v32);
    v62 = result;
    v63 = 0;
    v128 = v140 + 16;
    v64 = (v125 + 56);
    v65 = (v125 + 48);
    v66 = (v140 + 32);
    v67 = (v140 + 8);
    v68 = v141;
    v69 = v130;
    while (1)
    {
      v149 = v62;
      if (v63 == v32)
      {
        v70 = 1;
        v144 = v32;
      }

      else
      {
        if (v63 >= v32)
        {
          goto LABEL_63;
        }

        v71 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_64;
        }

        v72 = v140;
        v68 = v141;
        v73 = v137 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63;
        v138 = v62;
        v74 = *(v141 + 48);
        v75 = v129;
        *v129 = v63;
        (*(v72 + 16))(v75 + v74, v73, v146);
        v76 = v75;
        v69 = v130;
        sub_1D22EC9BC(v76, v130, &qword_1EC6DC9E8);
        v70 = 0;
        v144 = v71;
        v62 = v138;
      }

      (*v64)(v69, v70, 1, v68);
      sub_1D22EC9BC(v69, v28, &qword_1EC6DC9F0);
      if ((*v65)(v28, 1, v68) == 1)
      {
        break;
      }

      v77 = *v28;
      (*v66)(v145, &v28[*(v68 + 48)], v146);
      sub_1D2875158();
      v148 = v78 & 1;
      v147 = v79 & 1;
      sub_1D2874B08();
      v81 = v80;
      sub_1D2875168();
      v148 = v82 & 1;
      v147 = v83 & 1;
      sub_1D2874B08();
      v85 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1D278BDBC(v62);
      }

      result = (*v67)(v145, v146);
      v68 = v141;
      if ((v77 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v77 >= v62[2])
      {
        goto LABEL_59;
      }

      *(v62 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v77 + *(v139 + 28)) = v85 - v81;
      v32 = v143;
      v63 = v144;
    }

    result = sub_1D24F2508(0, v32, &v149);
    v86 = result;
    v87 = v136;
    v88 = *(v136 + 16);
    if (v88)
    {
      v89 = v124;
      v90 = v139;
      if (v88 > 3)
      {
        v91 = v88 & 0x7FFFFFFFFFFFFFFCLL;
        v93 = (v136 + 48);
        v92 = 0.0;
        v94 = v88 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v92 = v92 + *(v93 - 2) + *(v93 - 1) + *v93 + v93[1];
          v93 += 4;
          v94 -= 4;
        }

        while (v94);
        if (v88 == v91)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v91 = 0;
        v92 = 0.0;
      }

      v95 = v88 - v91;
      v96 = (v136 + 8 * v91 + 32);
      do
      {
        v97 = *v96++;
        v92 = v92 + v97;
        --v95;
      }

      while (v95);
    }

    else
    {
      v92 = 0.0;
      v89 = v124;
      v90 = v139;
    }

LABEL_40:
    v98 = *(result + 16);
    if (v98)
    {
      v99 = v120;
      if (v121)
      {
        v99 = 10.0;
      }

      v100 = v99 - v92;
      v101 = 0x4024000000000000;
      if ((v122 & 1) == 0)
      {
        v101 = v123;
      }

      v146 = v101;
      v141 = v137 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v137 = v136 + 32;
      v102 = v149;
      v138 = (v126 + 8);
      v139 = v126 + 16;
      v103 = 32;
      v104 = v143;
      while (1)
      {
        v105 = *(v86 + v103);
        if (v105 >= v143)
        {
          break;
        }

        v144 = v103;
        v145 = v98;
        v148 = 0;
        v147 = 0;
        result = sub_1D2874AF8();
        v106 = 0;
        if (v105 < v88)
        {
          if (v105 >= *(v87 + 16))
          {
            goto LABEL_67;
          }

          v106 = *(v137 + 8 * v105);
        }

        v107 = MEMORY[0x1D389D880](v133);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D278BDBC(v102);
          v102 = result;
        }

        if (v105 >= v102[2])
        {
          goto LABEL_61;
        }

        v108 = v86;
        v109 = (v102 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105);
        *v109 = -v107;
        v110 = (v109 + *(v90 + 24));
        *v110 = v146;
        *(v110 + 8) = 0;
        v110[2] = v100 / v104;
        *(v110 + 24) = 0;
        v111 = v90;
        v112 = v102;
        v113 = v89;
        v114 = v134;
        v115 = v89;
        v116 = v135;
        (*v139)(v134, v115, v135);
        v131(v114, 0, 1, v116);
        result = sub_1D24F5E78(v114, v109 + *(v111 + 20));
        if (v105 >= v112[2])
        {
          goto LABEL_62;
        }

        v102 = v112;
        *(v109 + *(v111 + 32)) = v106;
        sub_1D2874DD8();
        v118 = v117;
        result = (*v138)(v113, v116);
        --v104;
        v100 = v100 - v118;
        v103 = v144 + 8;
        v98 = v145 - 1;
        v89 = v113;
        v90 = v111;
        v87 = v136;
        v86 = v108;
        if (v145 == 1)
        {

          goto LABEL_57;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v102 = v149;
LABEL_57:
    sub_1D24F4FC8(v127);
    return v102;
  }

  v149 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D87B4(0, v36, 0);
  v37 = 0;
  v38 = v149;
  v136 = v19 + 8;
  v39 = v132;
  while (1)
  {
    v40 = v37 + 1;
    v41 = a6;
    if ((a7 & 1) == 0)
    {
      goto LABEL_14;
    }

    v42 = v36;
    v43 = a7;
    v44 = v143;
    if (v37 >= v143)
    {
      break;
    }

    result = sub_1D2874B28();
    if (v40 >= v44)
    {
      goto LABEL_66;
    }

    v45 = v138;
    sub_1D2874B28();
    sub_1D2874628();
    v41 = v46;
    v47 = *v136;
    v48 = v45;
    v49 = v144;
    (*v136)(v48, v144);
    result = v47(v39, v49);
    a7 = v43;
    v36 = v42;
LABEL_14:
    v149 = v38;
    v51 = *(v38 + 16);
    v50 = *(v38 + 24);
    if (v51 >= v50 >> 1)
    {
      result = sub_1D23D87B4((v50 > 1), v51 + 1, 1);
      v39 = v132;
      v38 = v149;
    }

    *(v38 + 16) = v51 + 1;
    *(v38 + 8 * v51 + 32) = v41;
    v37 = v40;
    if (v36 == v40)
    {
      v136 = v38;
      v32 = v143;
      v14 = v135;
      goto LABEL_19;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1D24F3B98(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char *a14)
{
  v143 = a12;
  v144 = a11;
  v140 = a2;
  v142 = a1;
  v141 = a14;
  v146 = a13;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBD8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v136 - v21;
  v165 = sub_1D2874DE8();
  v149 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v137 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v150 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v159 = (&v136 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v136 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v136 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v136 = &v136 - v32;
  v161 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  v147 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v158 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v138 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v163 = &v136 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v154 = (&v136 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v145 = (&v136 - v41);
  v167 = sub_1D2874B38();
  v42 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v160 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v164 = &v136 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v136 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  v50 = v49 - 8;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v136 - v51;
  v53 = sub_1D2874C68();
  v54 = MEMORY[0x1EEE9AC00](v53);
  (*(v56 + 16))(&v136 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v53, v54);
  sub_1D24DB6A0(&qword_1ED89DEA8);
  sub_1D2878318();
  v57 = *(v50 + 44);
  sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878868();
  v58 = *&v52[v57];
  v162 = v42;
  if (v58 == v169)
  {
    v166 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v155 = (v42 + 16);
    if (a4)
    {
      v71 = 0.0;
    }

    else
    {
      v71 = *&a3;
    }

    v72 = (v42 + 32);
    v166 = MEMORY[0x1E69E7CC0];
    v148 = (v42 + 8);
    v157 = a3;
    LODWORD(v156) = a4;
    do
    {
      v77 = sub_1D28788B8();
      (*v155)(v48);
      v77(&v169, 0);
      sub_1D2878878();
      sub_1D24F4EA0();
      sub_1D2874B48();
      v78 = v166;
      if (v169 == 1 && ((v169 & 0x100) == 0 ? (v79 = 210.0) : (v79 = 300.0), v71 < v79))
      {
        sub_1D2875158();
        v74 = v73;
        v76 = v75;
        sub_1D2877A98();
        LOBYTE(v169) = v74 & 1;
        v168 = v76 & 1;
        sub_1D2874B18();
        (*v148)(v48, v167);
      }

      else
      {
        v80 = *v72;
        (*v72)(v164, v48, v167);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D87D4(0, *(v78 + 16) + 1, 1);
          v78 = v170;
        }

        v83 = *(v78 + 16);
        v82 = *(v78 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1D23D87D4(v82 > 1, v83 + 1, 1);
          v78 = v170;
        }

        *(v78 + 16) = v83 + 1;
        v84 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v166 = v78;
        v80((v78 + v84 + *(v162 + 72) * v83), v164, v167);
      }

      sub_1D2878868();
      a3 = v157;
      LOBYTE(a4) = v156;
    }

    while (*&v52[v57] != v169);
  }

  sub_1D22BD238(v52, &qword_1EC6DCA08);
  LOBYTE(v169) = v140 & 1;
  LOBYTE(v170) = a4 & 1;
  v59 = v146;
  v60 = sub_1D24F2F94(v166, v142, v140 & 1, a3, a4 & 1, v144, v143 & 1, v146, v141);
  v61 = v60;
  v62 = *(v60 + 16);
  v156 = v60;
  v157 = v62;
  if (v62)
  {
    v63 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v64 = v60 + v63;
    v65 = v145;
    sub_1D24F4EF4(v60 + v63, v145);
    v66 = *v65;
    v67 = v136;
    sub_1D24F4F58(v65 + v161[5], v136);
    v68 = v149;
    v69 = v165;
    v164 = *(v149 + 48);
    if ((v164)(v67, 1, v165) == 1)
    {
      sub_1D22BD238(v67, &qword_1EC6DCBE0);
      v70 = 0.0;
    }

    else
    {
      sub_1D2874DC8();
      v69 = v165;
      v70 = v87;
      (*(v68 + 8))(v67, v165);
    }

    v88 = v163;
    v89 = v154;
    v90 = v66 + v70;
    if (v66 > v66 + v70)
    {
      goto LABEL_66;
    }

    v91 = v157 - 1;
    if (v157 != 1)
    {
      v155 = v161[5];
      v92 = *(v147 + 72);
      v52 = (v149 + 8);
      v93 = v156 + v92 + v63;
      while (1)
      {
        sub_1D24F4EF4(v93, v89);
        v94 = *v89;
        if (*v89 < v66)
        {
          v66 = *v89;
        }

        v95 = v153;
        sub_1D24F4F58(v155 + v89, v153);
        if ((v164)(v95, 1, v69) == 1)
        {
          sub_1D24F4FC8(v89);
          sub_1D22BD238(v95, &qword_1EC6DCBE0);
          v96 = 0.0;
        }

        else
        {
          sub_1D2874DC8();
          v88 = v163;
          v69 = v165;
          v96 = v97;
          sub_1D24F4FC8(v89);
          (*v52)(v95, v69);
        }

        if (v90 <= v94 + v96)
        {
          v90 = v94 + v96;
        }

        if (v66 > v90)
        {
          break;
        }

        v93 += v92;
        --v91;
        v89 = v154;
        if (!v91)
        {
          goto LABEL_36;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_36:
    sub_1D24F4FC8(v145);
    v98 = v157;
    if (v157 > *(v156 + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v99 = v161[5];
    v100 = v161[8];
    v101 = (v149 + 8);
    v85 = 0.0;
    v102 = *(v147 + 72);
    do
    {
      sub_1D24F4EF4(v64, v88);
      v106 = v159;
      sub_1D24F4F58(v88 + v99, v159);
      if ((v164)(v106, 1, v69) == 1)
      {
        sub_1D22BD238(v106, &qword_1EC6DCBE0);
        v103 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v69 = v165;
        v103 = v107;
        (*v101)(v106, v165);
      }

      v104 = v85 + v103;
      v88 = v163;
      v105 = *(v163 + v100);
      sub_1D24F4FC8(v163);
      v85 = v104 + v105;
      v64 += v102;
      --v98;
    }

    while (v98);
    v86 = v162;
    v59 = v146;
    v52 = v139;
    v61 = v156;
  }

  else
  {
    v85 = 0.0;
    v69 = v165;
    v86 = v162;
    v52 = v139;
  }

  v108 = v149;
  v109 = v138;
  if ((v59 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v61 + 16) <= v59)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v110 = v61 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  v164 = *(v147 + 72);
  sub_1D24F4EF4(v110 + v164 * v59, v138);
  v111 = v161[5];
  sub_1D24F4F58(v109 + v111, v52);
  v112 = *(v108 + 48);
  v163 = v108 + 48;
  v159 = v112;
  if ((v112)(v52, 1, v69) != 1)
  {
    v113 = v137;
    (*(v108 + 32))(v137, v52, v69);
    sub_1D22BD238(v109 + v111, &qword_1EC6DCBE0);
    v114 = sub_1D28756A8();
    v115 = MEMORY[0x1D389D870](v114);
    v154 = *(v108 + 8);
    (v154)(v113, v165);
    v116 = a9 * 0.5 + a7 - v115;
    v149 = v108 + 8;
    if (v116 >= a7)
    {
      v171.origin.x = a6;
      v171.origin.y = a7;
      v171.size.width = a8;
      v171.size.height = a9;
      MaxY = CGRectGetMaxY(v171);
      v117 = v166;
      if (MaxY < v85 + v116)
      {
        v172.origin.x = a6;
        v172.origin.y = a7;
        v172.size.width = a8;
        v172.size.height = a9;
        CGRectGetMaxY(v172);
      }
    }

    else
    {
      v117 = v166;
    }

    v119 = *(v117 + 16);
    if (!v119)
    {
LABEL_60:
    }

    v120 = 0;
    v155 = (v86 + 16);
    v121 = (v86 + 32);
    v122 = (v86 + 8);
    v123 = 0.0;
    v124 = v167;
    while (v120 < *(v117 + 16))
    {
      (*(v86 + 16))(v160, v117 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v120, v167);
      if (v157 == v120)
      {
        (*v122)(v160, v167);
        goto LABEL_60;
      }

      if (v120 >= *(v61 + 16))
      {
        goto LABEL_63;
      }

      v127 = *(v152 + 48);
      v128 = v151;
      (*v121)(v151, v160, v124);
      sub_1D24F4EF4(v110, &v128[v127]);
      v129 = &v128[v127];
      v130 = v150;
      v52 = v158;
      sub_1D24F5024(v129, v158);
      sub_1D2877A98();
      v131 = v161;
      v132 = &v52[v161[6]];
      v133 = v132[8];
      LOBYTE(v132) = v132[24];
      LOBYTE(v169) = v133;
      LOBYTE(v170) = v132;
      sub_1D2874B18();
      (*v122)(v128, v124);
      sub_1D24F4F58(&v52[v131[5]], v130);
      if ((v159)(v130, 1, v165) == 1)
      {
        sub_1D22BD238(v130, &qword_1EC6DCBE0);
        v125 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v125 = v134;
        (v154)(v130, v165);
      }

      v86 = v162;
      v117 = v166;
      ++v120;
      v126 = *&v158[v161[8]];
      sub_1D24F4FC8(v158);
      v123 = v123 + v125 + v126;
      v110 += v164;
      v61 = v156;
      if (v119 == v120)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_68:
  result = sub_1D22BD238(v52, &qword_1EC6DCBE0);
  __break(1u);
  return result;
}

uint64_t sub_1D24F4BC4(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *a3;
  v5 = *(*a3 + 16);
  if (v3 >= v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *a2;
  v7 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  v8 = *(v7 - 8);
  result = v7 - 8;
  v9 = *(v8 + 80);
  v10 = *(v8 + 72);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= v5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = v4 + ((v9 + 32) & ~v9);
  v12 = *(result + 36);
  v13 = *(v11 + v10 * v3 + v12);
  v14 = *(v11 + v10 * v6 + v12);
  if (v13 < v14)
  {
    return 1;
  }

  if (v14 >= v13)
  {
    return v3 < v6;
  }

  return 0;
}

void (*sub_1D24F4D6C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

unint64_t sub_1D24F4DF8()
{
  result = qword_1ED89EC58[0];
  if (!qword_1ED89EC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EC58);
  }

  return result;
}

uint64_t type metadata accessor for VStackWithCenteredSubviewLayout.View()
{
  result = qword_1ED89ECB8;
  if (!qword_1ED89ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D24F4EA0()
{
  result = qword_1ED89E5C0;
  if (!qword_1ED89E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5C0);
  }

  return result;
}

uint64_t sub_1D24F4EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24F4F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24F4FC8(uint64_t a1)
{
  v2 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24F5024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24F5088(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D286FD28(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1D24F50FC(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1D24F50FC(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D28795B8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1D2878468();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D24F5358(v9, v10, a1, v6, a2);
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
    return sub_1D24F5200(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D24F5200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v24 = v9;
    v25 = v8;
    while ((v10 & 0x8000000000000000) == 0)
    {
      v11 = *a5;
      v12 = *(*a5 + 16);
      if (v10 >= v12)
      {
        goto LABEL_19;
      }

      v13 = *v8;
      v14 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
      v15 = *(v14 - 8);
      result = v14 - 8;
      v16 = *(v15 + 80);
      v17 = *(v15 + 72);
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

      v18 = v11 + ((v16 + 32) & ~v16);
      v19 = *(result + 36);
      v20 = *(v18 + v17 * v10 + v19);
      v21 = *(v18 + v17 * v13 + v19);
      if (v20 < v21 || (v21 >= v20 ? (v22 = v10 >= v13) : (v22 = 1), !v22))
      {
        if (!v7)
        {
          goto LABEL_21;
        }

        *v8 = v10;
        v8[1] = v13;
        --v8;
        v22 = __CFADD__(v9++, 1);
        if (!v22)
        {
          continue;
        }
      }

      ++v6;
      v8 = v25 + 1;
      v9 = v24 - 1;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D24F5358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v5 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v9 = v106;
      if ((result & 1) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_111;
    }

    goto LABEL_154;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_32;
    }

    v5 = *a3;
    v11 = *(*a3 + 8 * v10);
    v108 = *(*a3 + 8 * v7);
    v109 = v11;
    result = sub_1D24F4BC4(&v109, &v108, a5);
    if (v106)
    {
    }

    v12 = result;
    v7 += 2;
    if (v9 + 2 >= v6)
    {
      goto LABEL_22;
    }

    v98 = v9;
    v13 = v9 + 2;
    v14 = *a5;
    v15 = *(v5 + 8 * v10);
    while (1)
    {
      v16 = *(v5 + 8 * v13);
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_127;
      }

      v9 = *(v14 + 16);
      if (v16 >= v9)
      {
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        result = sub_1D269163C(v8);
        v8 = result;
LABEL_111:
        v110 = v8;
        v94 = *(v8 + 2);
        if (v94 < 2)
        {
        }

        while (*a3)
        {
          v95 = *&v8[16 * v94];
          v96 = *&v8[16 * v94 + 24];
          sub_1D24F5A94(*a3 + 8 * v95, (*a3 + 8 * *&v8[16 * v94 + 16]), (*a3 + 8 * v96), v5, a5);
          if (v9)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D269163C(v8);
          }

          if (v94 - 2 >= *(v8 + 2))
          {
            goto LABEL_141;
          }

          v97 = &v8[16 * v94];
          *v97 = v95;
          *(v97 + 1) = v96;
          v110 = v8;
          result = sub_1D26915B0(v94 - 1);
          v8 = v110;
          v94 = *(v110 + 2);
          if (v94 <= 1)
          {
          }
        }

LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        return result;
      }

      v7 = v13;
      v17 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
      v18 = *(v17 - 8);
      result = v17 - 8;
      v19 = *(v18 + 80);
      v20 = *(v18 + 72);
      if (v15 >= v9)
      {
        goto LABEL_129;
      }

      v21 = v14 + ((v19 + 32) & ~v19);
      v22 = *(result + 36);
      v23 = *(v21 + v20 * v16 + v22);
      v24 = *(v21 + v20 * v15 + v22);
      if (v23 < v24)
      {
        if ((v12 & 1) == 0)
        {
          v9 = v98;
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      if (v24 >= v23)
      {
        if (((v12 ^ (v16 >= v15)) & 1) == 0)
        {
          v10 = v7 - 1;
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      if (v12)
      {
        break;
      }

LABEL_9:
      v13 = v7 + 1;
      v15 = v16;
      if (v6 == v7 + 1)
      {
        v10 = v6 - 1;
        v7 = v6;
LABEL_21:
        v9 = v98;
LABEL_22:
        if ((v12 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v7 >= v9)
        {
          goto LABEL_24;
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }
    }

    v10 = v7 - 1;
    v9 = v98;
    if (v7 < v98)
    {
      goto LABEL_148;
    }

LABEL_24:
    if (v9 <= v10)
    {
      v25 = v7 - 1;
      v26 = v9;
      do
      {
        if (v26 != v25)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v29 = *(v28 + 8 * v26);
          *(v28 + 8 * v26) = *(v28 + 8 * v25);
          *(v28 + 8 * v25) = v29;
        }
      }

      while (++v26 < v25--);
    }

LABEL_32:
    v30 = a3[1];
    if (v7 >= v30)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_144;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_56;
    }

    v31 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_145;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v9)
    {
      goto LABEL_146;
    }

    if (v7 == v31)
    {
LABEL_56:
      if (v7 < v9)
      {
        goto LABEL_143;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D2691650(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v49 = *(v8 + 2);
      v48 = *(v8 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1D2691650((v48 > 1), v49 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v50;
      v51 = &v8[16 * v49];
      *(v51 + 4) = v9;
      *(v51 + 5) = v7;
      v52 = *v101;
      if (!*v101)
      {
        goto LABEL_153;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v8 + 4);
            v55 = *(v8 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_76:
            if (v57)
            {
              goto LABEL_132;
            }

            v70 = &v8[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_135;
            }

            v76 = &v8[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_139;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          v80 = &v8[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_90:
          if (v75)
          {
            goto LABEL_134;
          }

          v83 = &v8[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_137;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_97:
          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*a3)
          {
            goto LABEL_150;
          }

          v92 = *&v8[16 * v91 + 32];
          v5 = *&v8[16 * v53 + 40];
          sub_1D24F5A94(*a3 + 8 * v92, (*a3 + 8 * *&v8[16 * v53 + 32]), (*a3 + 8 * v5), v52, a5);
          v9 = v106;
          if (v106)
          {
          }

          if (v5 < v92)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D269163C(v8);
          }

          if (v91 >= *(v8 + 2))
          {
            goto LABEL_126;
          }

          v106 = 0;
          v93 = &v8[16 * v91];
          *(v93 + 4) = v92;
          *(v93 + 5) = v5;
          v110 = v8;
          result = sub_1D26915B0(v53);
          v8 = v110;
          v50 = *(v110 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v8[16 * v50 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_130;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_131;
        }

        v65 = &v8[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_133;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_136;
        }

        if (v69 >= v61)
        {
          v87 = &v8[16 * v53 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_142;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_76;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  v32 = *a3;
  v5 = *a3 + 8 * v7 - 8;
  v99 = v9;
  v33 = v9 - v7;
  v102 = v31;
LABEL_42:
  v103 = v5;
  v104 = v7;
  v34 = *(v32 + 8 * v7);
  v35 = v33;
  while ((v34 & 0x8000000000000000) == 0)
  {
    v36 = *a5;
    v37 = *(*a5 + 16);
    if (v34 >= v37)
    {
      goto LABEL_121;
    }

    v38 = *v5;
    v39 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
    v40 = *(v39 - 8);
    result = v39 - 8;
    v41 = *(v40 + 80);
    v42 = *(v40 + 72);
    if (v38 >= v37)
    {
      goto LABEL_122;
    }

    v43 = v36 + ((v41 + 32) & ~v41);
    v44 = *(result + 36);
    v45 = *(v43 + v42 * v34 + v44);
    v46 = *(v43 + v42 * v38 + v44);
    if (v45 < v46 || (v46 >= v45 ? (v47 = v34 >= v38) : (v47 = 1), !v47))
    {
      if (!v32)
      {
        goto LABEL_149;
      }

      *v5 = v34;
      *(v5 + 8) = v38;
      v5 -= 8;
      v47 = __CFADD__(v35++, 1);
      if (!v47)
      {
        continue;
      }
    }

    v7 = v104 + 1;
    v5 = v103 + 8;
    --v33;
    if (v104 + 1 != v102)
    {
      goto LABEL_42;
    }

    v7 = v102;
    v9 = v99;
    goto LABEL_56;
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
}

uint64_t sub_1D24F5A94(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t *a5)
{
  v51 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
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
    if (a4 != __dst || __dst + 8 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v10);
      a4 = v51;
    }

    v14 = &a4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      v17 = *a5;
      v18 = *(*a5 + 16);
      if (v16 >= v18)
      {
        goto LABEL_58;
      }

      v19 = a4;
      v20 = *a4;
      v21 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
      v22 = *(v21 - 8);
      __dst = v21 - 8;
      v23 = *(v22 + 80);
      v24 = *(v22 + 72);
      if (v20 >= v18)
      {
        goto LABEL_60;
      }

      v25 = v17 + ((v23 + 32) & ~v23);
      v26 = *(__dst + 36);
      v27 = *(v25 + v24 * v16 + v26);
      v28 = *(v25 + v24 * v20 + v26);
      if (v27 >= v28 && (v28 < v27 || v16 >= v20))
      {
        break;
      }

      v15 = v7 == v6;
      v6 += 8;
      a4 = v19;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (a4 >= v14)
      {
        goto LABEL_10;
      }
    }

    a4 = v19 + 8;
    v16 = v20;
    if (v7 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
    a4 = v51;
  }

  v14 = &a4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v50 = v7;
    v30 = v6;
    while (2)
    {
      v31 = v30 - 8;
      v5 -= 8;
      v32 = v14;
      v6 = v30;
      while (1)
      {
        v34 = *(v32 - 1);
        v32 -= 8;
        v33 = v34;
        if ((v34 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return __dst;
        }

        v35 = *a5;
        v36 = *(*a5 + 16);
        if (v33 >= v36)
        {
          goto LABEL_59;
        }

        v37 = v14;
        v38 = v31;
        v39 = *v31;
        v40 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
        v41 = *(v40 - 8);
        __dst = v40 - 8;
        v42 = *(v41 + 80);
        v43 = *(v41 + 72);
        if (v39 >= v36)
        {
          goto LABEL_61;
        }

        v44 = v35 + ((v42 + 32) & ~v42);
        v45 = *(__dst + 36);
        v46 = *(v44 + v43 * v33 + v45);
        v47 = *(v44 + v43 * v39 + v45);
        if (v46 < v47)
        {
          break;
        }

        if (v47 >= v46 && v33 < v39)
        {
          break;
        }

        a4 = v51;
        v31 = v38;
        if (v5 + 8 != v37)
        {
          *v5 = v33;
        }

        v5 -= 8;
        v14 = v32;
        if (v32 <= v51)
        {
          v14 = v32;
          goto LABEL_51;
        }
      }

      a4 = v51;
      if (v5 + 8 != v6)
      {
        *v5 = v39;
      }

      if (v37 <= v51)
      {
        v6 = v38;
        v14 = v37;
      }

      else
      {
        v6 = v38;
        v30 = v38;
        v49 = v38 > v50;
        v14 = v37;
        if (v49)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_51:
  if (v6 != a4 || v6 >= &a4[(v14 - a4 + (v14 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, a4, 8 * ((v14 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1D24F5E10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_9:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D24F5E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D24F5F10()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1D24F5FA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D24F5FA8()
{
  if (!qword_1ED89DE80)
  {
    sub_1D2874DE8();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DE80);
    }
  }
}

uint64_t getEnumTagSinglePayload for ComposingFeedbackButtonRemovalLayoutKey.Value(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for ComposingFeedbackButtonRemovalLayoutKey.Value(_WORD *result, unsigned int a2, unsigned int a3)
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

BOOL static GPMagicPaperState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 & v3;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    return CGRectEqualToRect(*a1, *a2);
  }

  return v4;
}

BOOL sub_1D24F61B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 & v3;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    return CGRectEqualToRect(*a1, *a2);
  }

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for GPMagicPaperState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_1D2870F78();
  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GPMagicPaperState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GPMagicPaperState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D24F6298(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D24F62B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D24F62E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (v11)
  {
    *a1 = *v1;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v9;
  }

  else
  {
    v12 = *v1;
    v13 = *(v1 + 8);
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    v33.origin.x = *v1;
    v33.origin.y = v13;
    v33.size.width = v14;
    v33.size.height = v15;
    Width = CGRectGetWidth(v33);
    v34.origin.x = v12;
    v34.origin.y = v13;
    v34.size.width = v14;
    v34.size.height = v15;
    Height = CGRectGetHeight(v34);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height <= 300.0)
    {
      Height = 300.0;
    }

    if (Height <= 512.0)
    {
      v18 = Height;
    }

    else
    {
      v18 = 512.0;
    }

    v35.origin.x = v12;
    v35.origin.y = v13;
    v35.size.width = v14;
    v35.size.height = v15;
    v19 = CGRectGetMidX(v35) - v18 * 0.5;
    v36.origin.x = v12;
    v36.origin.y = v13;
    v36.size.width = v14;
    v36.size.height = v15;
    v20 = CGRectGetMidY(v36) - v18 * 0.5;
    sub_1D28724E8();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A08();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 136315394;
      v24 = sub_1D2878CA8();
      v26 = sub_1D23D7C84(v24, v25, &v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_1D2878CA8();
      v29 = sub_1D23D7C84(v27, v28, &v32);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_1D226E000, v21, v22, "proposedFrame: %s - adjustedSquareFrame: %s", v23, 0x16u);
      v30 = v31;
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v30, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    result = (*(v4 + 8))(v7, v3);
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v18;
    *(a1 + 24) = v18;
  }

  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_1D24F65CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0;
  v8 = type metadata accessor for PagingContentView();
  v9 = v8[19];
  *(a7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  swift_storeEnumTagMultiPayload();
  v10 = v8[20];
  *(a7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC780);
  swift_storeEnumTagMultiPayload();
  v11 = v8[21];
  *(a7 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC778);
  return swift_storeEnumTagMultiPayload();
}

void sub_1D24F66FC(void *a1)
{
  v53 = sub_1D2875628();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2874EA8();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v5 = *--a1;
  v56 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = sub_1D28784C8();
  v10 = a1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = a1[3];
  sub_1D2874F68();
  v12 = sub_1D2874F68();
  WitnessTable = swift_getWitnessTable();
  v63 = v10;
  v64 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73[0] = v9;
  v73[1] = AssociatedTypeWitness;
  v73[2] = v12;
  v73[3] = WitnessTable;
  v73[4] = AssociatedConformanceWitness;
  sub_1D2877598();
  v61 = a1[5];
  v71 = v61;
  v72 = MEMORY[0x1E697E040];
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x1E697E070];
  v15 = swift_getWitnessTable();
  v68 = v15;
  swift_getWitnessTable();
  v16 = sub_1D2874318();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC10);
  v20 = sub_1D2874F68();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  v23 = v65;
  v24 = *(v65 + 24);
  if (v24)
  {
    v49 = v15;
    v50 = v17;
    v54 = v24;
    v25 = *(v65 + 32);
    v73[0] = *v65;
    sub_1D2870F78();
    swift_getWitnessTable();
    if (sub_1D2878898())
    {
      sub_1D22A576C(v54);
      return;
    }

    v48 = v25;
    v26 = swift_getWitnessTable();
    v46[0] = v26;
    v27 = sub_1D24F91D8();
    v66 = v26;
    v67 = v27;
    swift_getWitnessTable();
    v46[1] = sub_1D2874A58();
    v28 = v56;
    v29 = v55;
    v30 = v60;
    (*(v56 + 16))(v55, v23, v60);
    v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v32 = swift_allocObject();
    v33 = v64;
    *(v32 + 2) = v62;
    *(v32 + 3) = v33;
    v34 = v30[5];
    *(v32 + 4) = v61;
    *(v32 + 5) = v34;
    v47 = v34;
    *(v32 + 6) = v63;
    (*(v28 + 32))(&v32[v31], v29, v30);
    sub_1D24F7240();

    swift_getKeyPath();
    v35 = v57;
    sub_1D24CC6D4(v57);
    sub_1D28767F8();

    (*(v58 + 8))(v35, v59);
    (*(v50 + 8))(v19, v16);
    MEMORY[0x1D389D4B0](v22);
    v36 = *(v23 + 48);
    if (*(v23 + 56) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v37 = sub_1D28762E8();
      sub_1D2873BE8();

      v38 = v51;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v36, 0);
      (*(v52 + 8))(v38, v53);
    }

    v39 = sub_1D2874A18();
    v73[0] = 0;
    MEMORY[0x1EEE9AC00](v39);
    v40 = v64;
    v46[-8] = v62;
    v46[-7] = v40;
    v41 = v47;
    v46[-6] = v61;
    v46[-5] = v41;
    v46[-4] = v63;
    v46[-3] = v23;
    v46[-2] = v73;
    sub_1D2874A28();
    if (v73[0])
    {
      v42 = v73[0];
      Image = CGBitmapContextCreateImage(v42);
      if (Image)
      {
        v44 = Image;
        v45 = v54;
        v54();

        sub_1D22A576C(v45);

        return;
      }

      sub_1D22A576C(v54);
    }

    else
    {
      sub_1D22A576C(v54);
    }
  }
}

uint64_t sub_1D24F6F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v34 = a5;
  v35 = a8;
  v29 = a1;
  v32 = sub_1D2871DD8();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2874F68();
  v33 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(a2 + 8))(v29, v19);
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  v38 = a3;
  v39 = a4;
  v22 = v34;
  v40 = v34;
  v41 = v30;
  v42 = v31;
  type metadata accessor for PagingContentView();
  sub_1D24CC6FC(v13);
  sub_1D2871DA8();
  (*(v11 + 8))(v13, v32);
  sub_1D2877848();
  sub_1D2876E28();
  (*(v14 + 8))(v17, a3);
  sub_1D2877AE8();
  v24 = v23;
  v26 = v25;
  v36 = v22;
  v37 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D389F2D0](v18, WitnessTable, 1.0, -1.0, v24, v26);
  return (*(v33 + 8))(v21, v18);
}

uint64_t sub_1D24F7240()
{
  v0 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D28756A8();
  sub_1D28784C8();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  swift_getWitnessTable();
  sub_1D24F7C78();
  return sub_1D2874308();
}

void sub_1D24F740C(void (*a1)(CGContext *), uint64_t a2, uint64_t a3, void **a4, double a5, double a6)
{
  v34 = a4;
  v11 = sub_1D2878988();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D2875628();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 48);
  v17 = *(a3 + 56);
  if (v17 == 1)
  {
    v18 = *(a3 + 48);
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v16, 0);
    (*(v13 + 8))(v15, v12);
    v18 = v35;
  }

  v20 = v18 * a5;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17)
  {
    v21 = *&v16;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v22 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v16, 0);
    (*(v13 + 8))(v15, v12);
    v21 = v35;
  }

  type metadata accessor for CGContext(0);
  v23 = v21 * a6;
  if (COERCE__INT64(fabs(v21 * a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v33[1] = a2;
  v24 = a1;
  sub_1D2878978();
  v25 = sub_1D2871A48();
  if (v25)
  {
    v26 = v25;
    if (v17)
    {
      v27 = *&v16;
      v28 = *&v16;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v29 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v16, 0);
      v30 = *(v13 + 8);
      v30(v15, v12);
      v28 = v35;
      sub_1D2870F78();
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v16, 0);
      v30(v15, v12);
      v27 = v35;
    }

    CGContextScaleCTM(v26, v28, v27);
    v24(v26);
    v32 = *v34;
    *v34 = v26;
  }
}

uint64_t sub_1D24F78A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a4;
  v31 = a8;
  v33 = a7;
  v34 = a3;
  v32 = a2;
  v26 = a1;
  v35 = a9;
  v29 = sub_1D28784C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v36 = v29;
  v37 = AssociatedTypeWitness;
  v38 = a6;
  v39 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1D2877598();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v36 = *v26;
  v20 = swift_allocObject();
  v20[2] = v30;
  v20[3] = a5;
  v21 = v33;
  v20[4] = a6;
  v20[5] = v21;
  v22 = v32;
  v20[6] = v31;
  v20[7] = a10;
  v20[8] = a11;
  v20[9] = v22;
  v20[10] = v34;
  sub_1D2870F68();
  sub_1D2870F78();
  sub_1D2877588();
  swift_getWitnessTable();
  sub_1D245980C(v16);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1D245980C(v19);
  return (v23)(v19, v13);
}

uint64_t sub_1D24F7B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = (MEMORY[0x1EEE9AC00])();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  v14(v11);
  sub_1D245980C(v10);
  v15 = *(v7 + 8);
  v15(v10, a6);
  sub_1D245980C(v13);
  return (v15)(v13, a6);
}

uint64_t sub_1D24F7C78()
{
  sub_1D2875C68();
  sub_1D24F95CC(&qword_1ED89D4C0, MEMORY[0x1E697FCB0]);
  return sub_1D2879968();
}

uint64_t sub_1D24F7CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1D2874388();
  v75 = v3;
  v86 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(a1 - 1);
  v95 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = sub_1D28784C8();
  v94 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v90 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC08);
  sub_1D2875B08();
  v10 = sub_1D2877178();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = v8;
  v104 = AssociatedTypeWitness;
  v105 = v10;
  v106 = WitnessTable;
  v78 = v10;
  v107 = AssociatedConformanceWitness;
  sub_1D2877598();
  *&v89 = a1[4];
  v13 = v89;
  v14 = a1;
  v103 = MEMORY[0x1E69815C0];
  v104 = MEMORY[0x1E6981580];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = v13;
  v102 = OpaqueTypeConformance2;
  v100 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v99 = v77;
  swift_getWitnessTable();
  v16 = sub_1D2874318();
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v65 - v17;
  v19 = v18;
  v20 = swift_getWitnessTable();
  v66 = a1;
  v98 = a1[5];
  v21 = v98;
  v22 = swift_getWitnessTable();
  v103 = v19;
  v104 = v8;
  v23 = v19;
  v67 = v19;
  v24 = v8;
  v70 = v8;
  v105 = v20;
  v106 = v22;
  v69 = v20;
  v25 = v22;
  v68 = v22;
  v26 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v65 - v28;
  v103 = v23;
  v104 = v24;
  v105 = v20;
  v106 = v25;
  v79 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v73 = v29;
  v72 = sub_1D24F95CC(&qword_1ED89E0A8, MEMORY[0x1E697BE48]);
  v103 = OpaqueTypeMetadata2;
  v104 = v3;
  v105 = v29;
  v106 = v72;
  v80 = swift_getOpaqueTypeMetadata2();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v76 = &v65 - v33;
  v34 = v97;
  v35 = *(v97 + 16);
  v88 = v97 + 16;
  v91 = v35;
  v36 = v84;
  v37 = v96;
  (v35)(v84, v96, v14, v32);
  v38 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *&v40 = v90;
  *(&v40 + 1) = v7;
  *&v41 = v89;
  *(&v41 + 1) = v21;
  v89 = v41;
  v90 = v40;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  v42 = v94;
  *(v39 + 48) = v94;
  v43 = *(v34 + 32);
  v44 = v36;
  v45 = v36;
  v46 = v66;
  v43(v39 + v38, v44, v66);
  v97 = v34 + 32;
  sub_1D24F7240();

  v103 = *v37;
  v91(v45, v37, v46);
  v47 = swift_allocObject();
  v48 = v89;
  *(v47 + 16) = v90;
  *(v47 + 32) = v48;
  *(v47 + 48) = v42;
  v43(v47 + v38, v45, v46);
  sub_1D2870F68();
  v49 = v92;
  v50 = v67;
  sub_1D2876F48();

  (*(v82 + 8))(v49, v50);
  v51 = v96;
  v52 = v85;
  sub_1D24CC724(v85);
  v91(v45, v51, v46);
  v53 = swift_allocObject();
  v54 = v89;
  *(v53 + 16) = v90;
  *(v53 + 32) = v54;
  *(v53 + 48) = v94;
  v43(v53 + v38, v45, v46);
  v55 = v71;
  v56 = v74;
  v57 = v75;
  v58 = v73;
  v59 = v72;
  v60 = v93;
  sub_1D2876F48();

  (*(v86 + 8))(v52, v57);
  (*(v83 + 8))(v60, v56);
  v103 = v56;
  v104 = v57;
  v105 = v58;
  v106 = v59;
  swift_getOpaqueTypeConformance2();
  v61 = v76;
  v62 = v80;
  sub_1D245980C(v55);
  v63 = *(v81 + 8);
  v63(v55, v62);
  sub_1D245980C(v61);
  return (v63)(v61, v62);
}

uint64_t sub_1D24F865C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC08);
  sub_1D2875B08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return sub_1D2877168();
}

uint64_t sub_1D24F874C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1D2875B08();
  v31 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  if (*(a1 + 24))
  {
    v36 = sub_1D2877098();
    sub_1D28762F8();
    sub_1D2877848();
    v30 = v18;
    v22 = MEMORY[0x1E69815C0];
    v23 = MEMORY[0x1E6981580];
    sub_1D2876C78();

    v36 = v22;
    v37 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = v32;
    sub_1D24CB7CC(v10, a3, v7);
    v18 = v30;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(a1 + 8))(v30, v19);
    v24 = v32;
    sub_1D245980C(v14);
    v25 = *(v11 + 8);
    v25(v14, a3);
    sub_1D245980C(v17);
    v36 = MEMORY[0x1E69815C0];
    v26 = MEMORY[0x1E6981580];
    v37 = MEMORY[0x1E6981580];
    swift_getOpaqueTypeConformance2();
    sub_1D24CB6D4(v14, a3);
    v25(v14, a3);
    v27 = v17;
    v23 = v26;
    v25(v27, a3);
    v22 = MEMORY[0x1E69815C0];
  }

  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v24;
  v35 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_1D245980C(v21);
  return (*(v31 + 8))(v21, v18);
}

void sub_1D24F8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v21 = a5;
  v22 = a6;
  v10 = sub_1D2874388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 40) == 1)
  {
    v15 = *(v11 + 104);
    v15(v14, *MEMORY[0x1E697BE40], v10, v12);
    v16 = sub_1D2874378();
    v17 = *(v11 + 8);
    v17(v14, v10);
    if (v16)
    {
      (v15)(v14, *MEMORY[0x1E697BE38], v10);
      v18 = sub_1D2874378();
      v17(v14, v10);
      if (v18)
      {
        v25 = a4;
        v26 = v21;
        v27 = v22;
        v28 = v23;
        v29 = v24;
        v19 = type metadata accessor for PagingContentView();
        sub_1D24F66FC(v19);
      }
    }
  }
}

uint64_t sub_1D24F8D08(uint64_t a1)
{
  v2 = sub_1D2874388();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D28752B8();
}

void sub_1D24F8DD8()
{
  sub_1D28784C8();
  if (v0 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v1 <= 0x3F)
    {
      sub_1D24BA3D8();
      if (v2 <= 0x3F)
      {
        sub_1D24F8F5C();
        if (v3 <= 0x3F)
        {
          sub_1D24F8FAC(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0]);
          if (v4 <= 0x3F)
          {
            sub_1D24F8FAC(319, &qword_1ED89DFF0, MEMORY[0x1E697BE48]);
            if (v5 <= 0x3F)
            {
              sub_1D24F8FAC(319, &qword_1EC6DCC00, MEMORY[0x1E696E290]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D24F8F5C()
{
  if (!qword_1ED89E060)
  {
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E060);
    }
  }
}

void sub_1D24F8FAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D24F9068()
{
  type metadata accessor for PagingContentView();
  v0 = type metadata accessor for PagingContentView();
  sub_1D24F66FC(v0);
}

void sub_1D24F9110(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for PagingContentView() - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  sub_1D24F8B50(a1, a2, v11, v5, v6, v7, v8, v9);
}

unint64_t sub_1D24F91D8()
{
  result = qword_1ED89D308;
  if (!qword_1ED89D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D308);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for PagingContentView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  sub_1D2273818(*(v2 + 48), *(v2 + 56));
  v3 = v1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874EA8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2874388();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC778);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2871DD8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24F9490(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for PagingContentView() - 8);
  v10 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1D24F95CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24F966C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D24F96BC(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1D24F9738(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (a1[2] < 0)
  {
    if (v8 < 0)
    {
      return MEMORY[0x1EEDE0A20](v4, v5, a1[2] & 1, a1[3], v6, v7, a2[2] & 1, a2[3]);
    }

    return 0;
  }

  if (v8 < 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_1D2879618();
  }
}

uint64_t type metadata accessor for ContextualMenuItems()
{
  result = qword_1EC6DCC18;
  if (!qword_1EC6DCC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24F9810()
{
  type metadata accessor for MagicViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageGeneration.PreviewImage(319);
    if (v1 <= 0x3F)
    {
      sub_1D22BFAB4();
      if (v2 <= 0x3F)
      {
        sub_1D24F98C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D24F98C4()
{
  if (!qword_1ED89E028)
  {
    type metadata accessor for ObservableDebugSettings(255);
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E028);
    }
  }
}

uint64_t sub_1D24F9938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v102 = sub_1D2871CA8();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC28);
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v120 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v97 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC38);
  v121 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v98 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v97 - v20;
  v111 = type metadata accessor for ContextualMenuItems();
  v21 = *(v111 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v23 = (&v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v97 - v31;
  sub_1D24FB478(v2, v23);
  v33 = *(v21 + 80);
  v34 = (v33 + 16) & ~v33;
  v119 = v22;
  v35 = swift_allocObject();
  sub_1D24FB4DC(v23, v35 + v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v122 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();
  v123 = v2;
  v37 = *v2;
  swift_getKeyPath();
  v129 = v37;
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v38 = *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground);
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v110 = v24;
  v41 = *(v24 + 36);
  v125 = v32;
  v42 = &v32[v41];
  *v42 = KeyPath;
  v42[1] = sub_1D22C03D8;
  v42[2] = v40;
  v43 = v108;
  sub_1D280DAE0(v108);
  v44 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v45 = *(*(v44 - 8) + 48);
  LODWORD(KeyPath) = v45(v43, 1, v44);
  v46 = v43;
  v47 = v109;
  sub_1D22BD238(v46, &qword_1EC6D9490);
  v48 = 1;
  v49 = KeyPath == 1;
  v50 = v121;
  v107 = v36;
  v106 = v34;
  v105 = v33;
  if (!v49)
  {
    v51 = v123;
    sub_1D2870F78();
    v52 = v104;
    sub_1D280DAE0(v104);
    if (v45(v52, 1, v44) == 1)
    {

      sub_1D22BD238(v52, &qword_1EC6D9490);
      v48 = 1;
      v34 = v106;
      v50 = v121;
    }

    else
    {
      sub_1D22BD238(v52, &qword_1EC6D9490);
      v129 = &unk_1D288EE60;
      v130 = v37;
      swift_retain_n();
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v53 = qword_1ED8B0058;
      sub_1D2876668();
      v127 = &unk_1D288EE68;
      v128 = v37;
      sub_1D24FB8DC();
      sub_1D2870F78();
      sub_1D2874788();
      sub_1D24FB478(v51, v23);
      v34 = v106;
      v54 = swift_allocObject();
      sub_1D24FB4DC(v23, v54 + v34);
      v55 = v98;
      sub_1D2877A08();

      v50 = v121;
      v121[4](v126, v55, v47);
      v48 = 0;
    }
  }

  (*(v50 + 56))(v126, v48, 1, v47);
  v56 = v123;
  sub_1D24FB478(v123, v23);
  v57 = swift_allocObject();
  sub_1D24FB4DC(v23, v57 + v34);
  v58 = v124;
  sub_1D2877368();
  v59 = sub_1D24FB23C(v56 + *(v111 + 20));
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = (v59 & 1) == 0;
  v62 = (v58 + *(v110 + 36));
  *v62 = v60;
  v62[1] = sub_1D22C04E0;
  v62[2] = v61;
  v63 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v129 = v63;
  sub_1D24FBAE0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v64 = v63[2];
  sub_1D2870F68();

  v65 = *(v64 + 16);

  v66 = v120;
  v67 = v126;
  if (!v65)
  {
    v68 = sub_1D2805AB0();
    if (v70 != 0xFF)
    {
      sub_1D22FD918(v68, v69, v70);
      if ((sub_1D2811164() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v71 = 1;
    v72 = v116;
    goto LABEL_16;
  }

  if (sub_1D2811164())
  {
    goto LABEL_12;
  }

LABEL_13:
  v121 = v23;
  v110 = sub_1D2875798();
  v111 = v73;
  LODWORD(v109) = v74;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v75 = sub_1D23C7998()[4];
  v76 = v101;
  v77 = v100;
  v78 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E699C1D8], v102);
  v79 = v75;
  sub_1D2877C18();

  (*(v76 + 8))(v77, v78);
  v80 = v121;
  sub_1D24FB478(v123, v121);
  v81 = v106;
  v82 = swift_allocObject();
  v83 = sub_1D24FB4DC(v80, v82 + v81);
  MEMORY[0x1EEE9AC00](v83);
  sub_1D2870F78();
  v84 = v103;
  sub_1D2877368();

  v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1050) + 36));
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
  sub_1D2875968();
  v87 = sub_1D2875998();
  (*(*(v87 - 8) + 56))(v85 + v86, 0, 1, v87);
  *v85 = swift_getKeyPath();
  v88 = sub_1D2875D98();
  v72 = v116;
  *(v84 + *(v116 + 36)) = v88;
  v66 = v120;
  sub_1D24FB734(v84, v120);
  v71 = 0;
  v67 = v126;
LABEL_16:
  (*(v115 + 56))(v66, v71, 1, v72);
  v89 = v113;
  sub_1D22BD1D0(v125, v113, &qword_1EC6D99D8);
  v90 = v114;
  sub_1D22BD1D0(v67, v114, &qword_1EC6DCC40);
  v91 = v124;
  v92 = v112;
  sub_1D22BD1D0(v124, v112, &qword_1EC6D99D8);
  v93 = v117;
  sub_1D22BD1D0(v66, v117, &qword_1EC6E1040);
  v94 = v118;
  sub_1D22BD1D0(v89, v118, &qword_1EC6D99D8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC50);
  sub_1D22BD1D0(v90, v94 + v95[12], &qword_1EC6DCC40);
  sub_1D22BD1D0(v92, v94 + v95[16], &qword_1EC6D99D8);
  sub_1D22BD1D0(v93, v94 + v95[20], &qword_1EC6E1040);
  sub_1D22BD238(v66, &qword_1EC6E1040);
  sub_1D22BD238(v91, &qword_1EC6D99D8);
  sub_1D22BD238(v126, &qword_1EC6DCC40);
  sub_1D22BD238(v125, &qword_1EC6D99D8);
  sub_1D22BD238(v93, &qword_1EC6E1040);
  sub_1D22BD238(v92, &qword_1EC6D99D8);
  sub_1D22BD238(v90, &qword_1EC6DCC40);
  return sub_1D22BD238(v89, &qword_1EC6D99D8);
}

uint64_t sub_1D24FA9E4(uint64_t a1)
{
  v2 = sub_1D23C7CA8();
  v3 = sub_1D2878068();
  v4 = sub_1D2878068();
  v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 48))
  {
    sub_1D2870F68();
    v6 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v6, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v8 = sub_1D2878068();
  v9 = sub_1D2418030(v5);

  if (v9)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D24FBAE0(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v10 = sub_1D2877E78();
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() asyncSendSignal:v4 toChannel:v3 withNullableUniqueStringID:v8 withPayload:v10];

  v11 = type metadata accessor for ContextualMenuItems();
  return (*(a1 + *(v11 + 24)))();
}

uint64_t sub_1D24FABE0()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

void sub_1D24FAD50(char a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_isShareLinkVisible) = a1;
  if (a1)
  {
    v2 = sub_1D23C7CA8();
    v3 = sub_1D2878068();
    v10 = sub_1D2878068();
    v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 48))
    {
      sub_1D2870F68();
      v5 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v5, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v7 = sub_1D2878068();
    v8 = sub_1D2418030(v4);

    if (v8)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22ED23C();
      sub_1D24FBAE0(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v9 = sub_1D2877E78();
    }

    else
    {
      v9 = 0;
    }

    [objc_opt_self() asyncSendSignal:v10 toChannel:v3 withNullableUniqueStringID:v7 withPayload:v9];
  }
}

uint64_t sub_1D24FAF4C()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

uint64_t sub_1D24FB0C0()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

uint64_t sub_1D24FB23C(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  if (*(*(v3 + v4) + 16) && (sub_1D2870F68(), sub_1D25D064C(a1), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D24FB37C()
{
  v0 = sub_1D2871CA8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E699C1D8], v0, v2);
  sub_1D27FF854(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D24FB478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualMenuItems();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24FB4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualMenuItems();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24FB558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D2870F68();
}

uint64_t sub_1D24FB6C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextualMenuItems() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D24FB734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24FB7A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D280DE70(a1);
}

uint64_t sub_1D24FB840(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D280EBF8(a1, v1);
}

unint64_t sub_1D24FB8DC()
{
  result = qword_1EC6D8B00;
  if (!qword_1EC6D8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8B00);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ContextualMenuItems() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for ImageGeneration.PreviewImage(0);
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 24));

  return swift_deallocObject();
}

void sub_1D24FBA70(char a1)
{
  v3 = *(type metadata accessor for ContextualMenuItems() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1D24FAD50(a1, v4);
}

uint64_t sub_1D24FBAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24FBB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D23D81D8(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_1D2879098();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v32 = *(*(v3 + 48) + v6);
    v11 = (*(v3 + 56) + 32 * v6);
    v12 = v11[1];
    v30 = v11[2];
    v31 = *v11;
    v13 = v3;
    v14 = v11[3];
    v15 = *(v33 + 16);
    v16 = *(v33 + 24);
    sub_1D2870F68();
    result = sub_1D2870F68();
    if (v15 >= v16 >> 1)
    {
      result = sub_1D23D81D8((v16 > 1), v15 + 1, 1);
    }

    *(v33 + 16) = v15 + 1;
    v17 = v33 + 40 * v15;
    *(v17 + 32) = v32;
    *(v17 + 40) = v31;
    *(v17 + 48) = v12;
    *(v17 + 56) = v30;
    *(v17 + 64) = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1D2459248(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1D2459248(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
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

uint64_t sub_1D24FBD9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D2870F68();
  v18 = sub_1D24FBB28(v1);
  sub_1D2870F68();
  sub_1D24FD028(&v18);

  v4 = v18;
  v5 = v18[2];
  if (v5)
  {
    v17 = v2;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D23D81B8(0, v5, 0);
    v6 = v18;
    v7 = v4 + 8;
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v18 = v6;
      v11 = v6[2];
      v10 = v6[3];
      sub_1D2870F68();
      if (v11 >= v10 >> 1)
      {
        sub_1D23D81B8((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      v6[2] = v11 + 1;
      v12 = &v6[2 * v11];
      v12[4] = v9;
      v12[5] = v8;
      v7 += 5;
      --v5;
    }

    while (v5);

    v2 = v17;
    v18 = v6;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    if (v6[2])
    {
      goto LABEL_14;
    }

LABEL_16:

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  sub_1D274DC9C(inited);
  v6 = v18;
LABEL_13:
  if (!v6[2])
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  v15 = sub_1D2877F68();

  return v15;
}

uint64_t sub_1D24FBFBC@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for PersonAttributesPickerViewModel();
  v36 = result;
  v37 = v1;
  v4 = *(v1 + *(result + 32));
  v41 = *(v4 + 16);
  if (v41)
  {
    v5 = 0;
    v38 = MEMORY[0x1E69E7CC8];
    v39 = v4 + 32;
    v40 = *(v1 + *(result + 32));
    while (v5 < *(v4 + 16))
    {
      v6 = (v39 + 24 * v5);
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      if (*v6)
      {
        if (v7 == 1)
        {
          v10 = qword_1EC6D8D38;
          sub_1D2870F68();
          v11 = &qword_1EC6DF458;
          if (v10 != -1)
          {
            swift_once();
            v11 = &qword_1EC6DF458;
          }
        }

        else
        {
          v13 = qword_1EC6D8D40;
          sub_1D2870F68();
          v11 = &qword_1EC6DF460;
          if (v13 != -1)
          {
            swift_once();
            v11 = &qword_1EC6DF460;
          }
        }
      }

      else
      {
        v12 = qword_1EC6D8D30;
        sub_1D2870F68();
        v11 = &off_1EC6DF450;
        if (v12 != -1)
        {
          swift_once();
          v11 = &off_1EC6DF450;
        }
      }

      ++v5;
      v14 = *v11;
      v15 = (v14 + 56);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v18 = *(v15 - 1);
        v17 = *v15;
        if (*(v15 - 3) != v8 || *(v15 - 2) != v9)
        {
          v15 += 4;
          if ((sub_1D2879618() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      if (qword_1EC6D8D48 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC6E3F38;
      v17 = qword_1EC6E3F40;
LABEL_23:
      sub_1D2870F68();
      sub_1D2870F68();

      v20 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v35 = a1;
        if (v7)
        {
          if (v7 == 1)
          {
            v21 = &qword_1EC6DF458;
            if (qword_1EC6D8D38 != -1)
            {
              swift_once();
              v21 = &qword_1EC6DF458;
            }
          }

          else
          {
            v21 = &qword_1EC6DF460;
            if (qword_1EC6D8D40 != -1)
            {
              swift_once();
              v21 = &qword_1EC6DF460;
            }
          }
        }

        else
        {
          v21 = &off_1EC6DF450;
          if (qword_1EC6D8D30 != -1)
          {
            swift_once();
            v21 = &off_1EC6DF450;
          }
        }

        v22 = *v21;
        v23 = (v22 + 56);
        v24 = *(v22 + 16) + 1;
        while (--v24)
        {
          v26 = *(v23 - 3);
          v25 = *(v23 - 2);
          v28 = *(v23 - 1);
          v27 = *v23;
          if (v26 == v8 && v25 == v9)
          {
            v26 = v8;
            goto LABEL_48;
          }

          v23 += 4;
          if (sub_1D2879618())
          {
            goto LABEL_48;
          }
        }

        if (qword_1EC6D8D48 != -1)
        {
          swift_once();
        }

        v26 = qword_1EC6E3F28;
        v25 = qword_1EC6E3F30;
        v28 = qword_1EC6E3F38;
        v27 = qword_1EC6E3F40;
LABEL_48:
        sub_1D2870F68();
        sub_1D2870F68();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E7ECC(v26, v25, v28, v27, v7, isUniquelyReferenced_nonNull_native);

        a1 = v35;
        v4 = v40;
        if (v5 == v41)
        {
          goto LABEL_51;
        }
      }

      else
      {

        v4 = v40;
        if (v5 == v41)
        {
          goto LABEL_51;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
LABEL_51:
    v31 = (v37 + *(v36 + 36));
    v33 = *v31;
    v32 = v31[1];
    v34 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v34 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      result = sub_1D2870F68();
    }

    else
    {
      v33 = 0;
      result = 0;
    }

    *a1 = v38;
    a1[1] = v33;
    a1[2] = result;
  }

  return result;
}

uint64_t sub_1D24FC438@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!*(a2 + 16) || (v6 = sub_1D25DB1BC(*a1), (v7 & 1) == 0))
  {
    if (!v5)
    {
      if (qword_1EC6D8D30 != -1)
      {
        swift_once();
      }

      v10 = &off_1EC6DF450;
      goto LABEL_14;
    }

    if (v5 != 1)
    {
      if (qword_1EC6D8D40 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EC6DF460;
      goto LABEL_14;
    }

    if (qword_1EC6D8D38 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  v8 = (*(a2 + 56) + 32 * v6);
  for (i = v8 + 1; ; i = (v11 + 40))
  {
    v12 = *i;
    v13 = *v8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (!*(a2 + 16))
    {
      break;
    }

    v14 = sub_1D25DB1BC(v5);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = (*(a2 + 56) + 32 * v14);
    v17 = *v16 == 0xD000000000000014 && 0x80000001D28B9140 == v16[1];
    if (!v17 && (sub_1D2879618() & 1) == 0)
    {
      break;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (qword_1EC6D8D38 != -1)
        {
          swift_once();
        }

        v18 = &qword_1EC6DF458;
      }

      else
      {
        if (qword_1EC6D8D40 != -1)
        {
          swift_once();
        }

        v18 = &qword_1EC6DF460;
      }
    }

    else
    {
      if (qword_1EC6D8D30 != -1)
      {
        swift_once();
      }

      v18 = &off_1EC6DF450;
    }

    v19 = *v18;
    if (v19[2] >= 3uLL)
    {
      v13 = v19[12];
      v12 = v19[13];
      sub_1D2870F68();
      sub_1D2870F68();
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_39:
      swift_once();
LABEL_7:
      v10 = &qword_1EC6DF458;
LABEL_14:
      v11 = *v10;
      if (*(*v10 + 16))
      {
        break;
      }

      __break(1u);
    }

    v8 = (v11 + 32);
  }

  *a3 = v5;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1D24FC6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 36);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (!v10 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D23375FC(v12, v13);
}

unint64_t sub_1D24FC78C()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D24FC7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D28B9100 == a2 || (sub_1D2879618() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D28B9120 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D2879618();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D24FC8AC(uint64_t a1)
{
  v2 = sub_1D24FE498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D24FC8E8(uint64_t a1)
{
  v2 = sub_1D24FE498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonAttributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24FE498();
  sub_1D2870F68();
  sub_1D2879888();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC78);
  sub_1D24FE958(&qword_1EC6DCC80, sub_1D24FE4EC, sub_1D24FE540);
  sub_1D2879598();

  if (!v2)
  {
    v12 = 1;
    sub_1D2879558();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PersonAttributes.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1D24FE258(a1, *v1);
  if (!v2)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t PersonAttributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t PersonAttributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  sub_1D25DA23C(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24FE498();
  sub_1D2879868();
  if (!v2)
  {
    v8 = v5;
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC78);
    v17 = 0;
    sub_1D24FE958(&qword_1EC6DCCA0, sub_1D24FE9E8, sub_1D24FEA3C);
    sub_1D2879528();

    v10 = v18;
    v16 = 1;
    v12 = sub_1D28794C8();
    v14 = v13;
    (*(v8 + 8))(v7, v4);
    *v9 = v10;
    v9[1] = v12;
    v9[2] = v14;
    sub_1D2870F68();
    sub_1D2870F68();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D24FCEAC()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D24FCF2C(uint64_t a1)
{
  v2 = v1[2];
  sub_1D24FE258(a1, *v1);
  if (!v2)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D24FCFA8()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D24FD028(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D286FCEC(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_1D28795B8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = LOBYTE(v2[5 * i + 4]);
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 24))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = v13[5];
          result = v13[6];
          v17 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 3);
          *(v13 + 2) = v17;
          v13[6] = v13[1];
          *(v13 - 24) = v11;
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v16;
          v13[1] = result;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACF0);
      v7 = sub_1D2878468();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1D24FD198(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D24FD198(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D269163C(v9);
      v9 = result;
    }

    v93 = v9 + 16;
    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v9[16 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D24FD768((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v101);
        if (v5)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_114;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 40 * v8);
      v12 = (*a3 + 40 * v10);
      v15 = *v12;
      v14 = v12 + 80;
      v13 = v15;
      v16 = v10 + 2;
      v17 = v11;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 40;
        v19 = (v11 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v16 - 1;
          if (v11 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 40 * v8 - 16;
        v21 = 40 * v10 + 32;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v32 + v21);
            v25 = *(v32 + v21 - 32);
            v26 = (v32 + v20);
            v27 = *(v24 - 3);
            v28 = *(v24 - 1);
            v29 = *v24;
            v30 = v26[1];
            v31 = *(v26 - 1);
            *(v24 - 2) = *(v26 - 3);
            *(v24 - 1) = v31;
            *v24 = v30;
            *(v26 - 24) = v25;
            *(v26 - 1) = v27;
            *v26 = v28;
            v26[1] = v29;
          }

          ++v23;
          v20 -= 40;
          v21 += 40;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2691650(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v47 = *(v9 + 2);
    v46 = *(v9 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_1D2691650((v46 > 1), v47 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v48;
    v49 = &v9[16 * v47];
    *(v49 + 4) = v10;
    *(v49 + 5) = v8;
    v50 = *v101;
    if (!*v101)
    {
      goto LABEL_125;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v9 + 4);
          v53 = *(v9 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_57:
          if (v55)
          {
            goto LABEL_103;
          }

          v68 = &v9[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_106;
          }

          v74 = &v9[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_110;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v78 = &v9[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_71:
        if (v73)
        {
          goto LABEL_105;
        }

        v81 = &v9[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_78:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v9[16 * v89 + 32];
        v91 = *&v9[16 * v51 + 40];
        sub_1D24FD768((*a3 + 40 * v90), (*a3 + 40 * *&v9[16 * v51 + 32]), *a3 + 40 * v91, v50);
        if (v5)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D269163C(v9);
        }

        if (v89 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v92 = &v9[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        result = sub_1D26915B0(v51);
        v48 = *(v9 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v9[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_101;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_102;
      }

      v63 = &v9[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_104;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_107;
      }

      if (v67 >= v59)
      {
        v85 = &v9[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_111;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + 40 * v8 - 40;
  v35 = v10 - v8;
LABEL_30:
  v36 = *(v33 + 40 * v8);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = v38 + 40;
    if (v36 >= *v38)
    {
LABEL_29:
      ++v8;
      v34 += 40;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v40 = *(v38 + 3);
    v41 = *(v38 + 8);
    v42 = *(v38 + 9);
    v43 = *(v38 + 1);
    *v39 = *v38;
    *(v38 + 56) = v43;
    v44 = *(v38 + 4);
    *v38 = v36;
    *(v38 + 8) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38 -= 40;
    *(v39 + 4) = v44;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D24FD768(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 40;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 40, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[40 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

uint64_t sub_1D24FD9A4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1D2870F68();
  v8 = 0;
  v9 = 0;
  v20 = v6;
  v21 = v2;
LABEL_6:
  if (v5)
  {
    v23 = v8;
    v10 = v9;
LABEL_12:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v5 &= v5 - 1;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2877F38();

    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    result = sub_1D2870F68();
    v17 = 0;
    for (i = 0; v15; v17 = result ^ v24)
    {
      v24 = v17;
LABEL_21:
      v15 &= v15 - 1;
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2877F38();

      sub_1D2877F38();

      result = sub_1D2879828();
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        MEMORY[0x1D38A2260](v17);

        result = sub_1D2879828();
        v8 = result ^ v23;
        v9 = v10;
        v6 = v20;
        v2 = v21;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v19);
      ++i;
      if (v15)
      {
        v24 = v17;
        i = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x1D38A2260](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v23 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24FDC3C(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v52 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v5;
  v51 = type metadata accessor for GeneratedPreviewOptions(0);
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCCD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = *(a2 + 64);
  v54 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = (v17 + 63) >> 6;
  v50 = a2;
  result = sub_1D2870F68();
  v21 = 0;
  v22 = 0;
  v45 = v7;
  v44 = v12;
  v55 = v15;
  while (1)
  {
    v56 = v21;
    if (!v19)
    {
      break;
    }

    v23 = v22;
LABEL_16:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v50;
    v29 = v46;
    sub_1D249A0FC(*(v50 + 48) + *(v47 + 72) * v27, v46, type metadata accessor for GeneratedPreviewOptions);
    v30 = v48;
    sub_1D249A0FC(*(v28 + 56) + *(v49 + 72) * v27, v48, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
    v32 = *(v31 + 48);
    v33 = v29;
    v12 = v44;
    sub_1D24FEE4C(v33, v44, type metadata accessor for GeneratedPreviewOptions);
    sub_1D24FEE4C(v30, &v12[v32], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    v7 = v45;
    v15 = v55;
LABEL_17:
    sub_1D24FEEB4(v12, v15);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
    if ((*(*(v34 - 8) + 48))(v15, 1, v34) == 1)
    {

      return MEMORY[0x1D38A2260](v56);
    }

    v35 = *(v34 + 48);
    sub_1D24FEE4C(v15, v7, type metadata accessor for GeneratedPreviewOptions);
    sub_1D24FEE4C(&v15[v35], v57, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v36 = *(v53 + 48);
    v58[2] = *(v53 + 32);
    v58[3] = v36;
    v59 = *(v53 + 64);
    v37 = *(v53 + 16);
    v58[0] = *v53;
    v58[1] = v37;
    sub_1D2877F38();
    v38 = v51;
    sub_1D2871F98();
    sub_1D2877F38();

    if (*&v7[*(v38 + 24) + 8])
    {
      sub_1D28797F8();
      sub_1D2877F38();
    }

    else
    {
      sub_1D28797F8();
    }

    sub_1D24FEF7C(v7, type metadata accessor for GeneratedPreviewOptions);
    type metadata accessor for PlaygroundImage();
    sub_1D2871818();
    sub_1D24FEF24();
    v39 = v57;
    sub_1D2877F08();
    v40 = *(v39 + *(v52 + 20));
    sub_1D28797F8();
    if (v40)
    {
      sub_1D24FD9A4(v58, v40);
    }

    v15 = v55;
    sub_1D24FEF7C(v57, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    result = sub_1D2879828();
    v21 = result ^ v56;
  }

  if (v43 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v43;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v43)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
      (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
      v19 = 0;
      v22 = v25;
      goto LABEL_17;
    }

    v19 = *(v54 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24FE258(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1D2870F68();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + v11);
      v13 = *(*(a2 + 56) + 32 * v11 + 8);
      sub_1D2870F68();
      sub_1D2870F68();
      if (!v13)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x1D38A2260](v12);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2877F38();

      sub_1D2877F38();
      swift_bridgeObjectRelease_n();

      result = sub_1D2879828();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1D38A2260](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal16PersonAttributesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D25559F4(*a2, *a1) & 1) == 0)
  {
    return 0;
  }

  result = (v3 | v5) == 0;
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

unint64_t sub_1D24FE498()
{
  result = qword_1EC6DCC70;
  if (!qword_1EC6DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC70);
  }

  return result;
}

unint64_t sub_1D24FE4EC()
{
  result = qword_1EC6DCC88;
  if (!qword_1EC6DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC88);
  }

  return result;
}

unint64_t sub_1D24FE540()
{
  result = qword_1EC6DCC90;
  if (!qword_1EC6DCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC90);
  }

  return result;
}

uint64_t sub_1D24FE594()
{
  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D866C(0, 3, 0);
  v1 = 0;
  while (1)
  {
    v2 = byte_1F4DBD468[v1 + 32];
    if (byte_1F4DBD468[v1 + 32])
    {
      if (v2 == 1)
      {
        v3 = &qword_1EC6DF458;
        if (qword_1EC6D8D38 != -1)
        {
          result = swift_once();
          v3 = &qword_1EC6DF458;
        }
      }

      else
      {
        v3 = &qword_1EC6DF460;
        if (qword_1EC6D8D40 != -1)
        {
          result = swift_once();
          v3 = &qword_1EC6DF460;
        }
      }
    }

    else
    {
      v3 = &off_1EC6DF450;
      if (qword_1EC6D8D30 != -1)
      {
        result = swift_once();
        v3 = &off_1EC6DF450;
      }
    }

    v4 = *v3;
    if (!v4[2])
    {
      break;
    }

    v5 = v4[4];
    v6 = v4[5];
    v7 = *(v10 + 16);
    v8 = *(v10 + 24);
    result = sub_1D2870F68();
    if (v7 >= v8 >> 1)
    {
      result = sub_1D23D866C((v8 > 1), v7 + 1, 1);
    }

    *(v10 + 16) = v7 + 1;
    v9 = v10 + 24 * v7;
    *(v9 + 32) = v2;
    ++v1;
    *(v9 + 40) = v5;
    *(v9 + 48) = v6;
    if (v1 == 3)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24FE754(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D23D866C(0, 3, 0);
    v2 = v26;
    v22 = byte_1F4DBD4B0;
    sub_1D24FC438(&v22, v1, v23);
    v3 = v23[0];
    v4 = v24;
    v5 = v25;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1D23D866C((v6 > 1), v7 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v22 = byte_1F4DBD4B1;
    sub_1D24FC438(&v22, v1, v23);
    v9 = v23[0];
    v10 = v24;
    v11 = v25;
    v26 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D23D866C((v12 > 1), v13 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 24 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 48) = v11;
    v22 = byte_1F4DBD4B2;
    sub_1D24FC438(&v22, v1, v23);
    v15 = v23[0];
    v16 = v24;
    v17 = v25;
    v26 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D23D866C((v18 > 1), v19 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2 + 24 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
    *(v20 + 48) = v17;
    return v2;
  }

  else
  {

    return sub_1D24FE594();
  }
}

uint64_t sub_1D24FE958(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC78);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D24FE9E8()
{
  result = qword_1EC6DCCA8;
  if (!qword_1EC6DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCA8);
  }

  return result;
}

unint64_t sub_1D24FEA3C()
{
  result = qword_1EC6DCCB0;
  if (!qword_1EC6DCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCB0);
  }

  return result;
}

unint64_t sub_1D24FEA94()
{
  result = qword_1EC6DCCB8;
  if (!qword_1EC6DCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCB8);
  }

  return result;
}

uint64_t type metadata accessor for PersonAttributesPickerViewModel()
{
  result = qword_1EC6D80D0;
  if (!qword_1EC6D80D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24FEB6C()
{
  type metadata accessor for ServicesFetcher();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PersonAttributesManager();
    if (v1 <= 0x3F)
    {
      sub_1D24FEC8C();
      if (v2 <= 0x3F)
      {
        sub_1D24FECE4(319, &qword_1EC6D7598, &type metadata for PersonAttributeRow, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D24FECE4(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D24FEC8C()
{
  if (!qword_1ED8A6C80)
  {
    sub_1D2871818();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6C80);
    }
  }
}

void sub_1D24FECE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D24FED48()
{
  result = qword_1EC6DCCC0;
  if (!qword_1EC6DCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCC0);
  }

  return result;
}

unint64_t sub_1D24FEDA0()
{
  result = qword_1EC6DCCC8;
  if (!qword_1EC6DCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCC8);
  }

  return result;
}

unint64_t sub_1D24FEDF8()
{
  result = qword_1EC6DCCD0;
  if (!qword_1EC6DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCD0);
  }

  return result;
}

uint64_t sub_1D24FEE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24FEEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCCD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24FEF24()
{
  result = qword_1ED8A6CB0;
  if (!qword_1ED8A6CB0)
  {
    sub_1D2871818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CB0);
  }

  return result;
}

uint64_t sub_1D24FEF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D24FEFDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation);
  return result;
}

uint64_t sub_1D24FF0B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D24FF1AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2341198;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719D8();
  sub_1D22D7900(v4, v3);
}

id sub_1D24FF308(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_attributePickerConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_personAttributesHeight] = 0x4072200000000000;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_carouselTopOffset] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewPadding] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___carouselViewController] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___personAttributesView] = 1;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___appearanceButton] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceButton] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___customizeAppearanceAction] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceAction] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___doneButton] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelButton] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___sharingAlert] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___confirmAlertAction] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___resetAlertAction] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelAlertAction] = 0;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel] = a1;
  sub_1D2870F78();
  sub_1D2870F68();
  v5 = sub_1D2878068();

  sub_1D2486F44();
  v6 = sub_1D2878068();

  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v5, v6, 0, 4);

  return v7;
}

id sub_1D24FF4C4()
{
  ObjectType = swift_getObjectType();
  sub_1D24FF774();
  sub_1D24FFFDC();
  sub_1D28719C8();
  v2 = sub_1D25003C8();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D2503E14;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_19;
    v8 = _Block_copy(aBlock);

    [v6 transitionWithView:v5 duration:5242880 options:v8 animations:0 completion:0.25];

    _Block_release(v8);
LABEL_4:
    MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v9);
    v10 = sub_1D28719C8();
    MEMORY[0x1EEE9AC00](v10);
    MEMORY[0x1EEE9AC00](v11);
    sub_1D28719C8();
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_viewDidLoad);
  }

  __break(1u);
  return result;
}

void sub_1D24FF774()
{
  [v0 setShouldAdjustScrollViewInsetForKeyboard_];
  v1 = [v0 buttonTray];
  v2 = sub_1D250101C(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___appearanceButton, sub_1D2500994);
  [v1 addButton_];

  v3 = [v0 buttonTray];
  v4 = sub_1D250014C();
  [v3 addButton_];

  v5 = [v0 scrollView];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v5 setBackgroundColor_];

  v8 = sub_1D2500270();
  [v8 willMoveToParentViewController_];

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___carouselViewController;
  [v0 addChildViewController_];
  v10 = [*&v0[v9] view];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = [v6 clearColor];
    [v12 setBackgroundColor_];

    v14 = [v0 contentView];
    [v14 addSubview_];

    v61 = v11;
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D288F1A0;
    v17 = [v12 topAnchor];
    v18 = [v0 &selRef_completedUnitCount];
    v19 = [v18 topAnchor];

    v20 = [v17 constraintEqualToAnchor:v19 constant:0.0];
    *(v16 + 32) = v20;
    v21 = [v12 leadingAnchor];
    v22 = [v0 &selRef_completedUnitCount];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor_];
    *(v16 + 40) = v24;
    v25 = [v12 trailingAnchor];
    v26 = [v0 &selRef_completedUnitCount];
    v27 = [v26 trailingAnchor];

    v28 = [v25 constraintEqualToAnchor_];
    *(v16 + 48) = v28;
    sub_1D22BCFD0(0, &qword_1EC6DCD68);
    v29 = sub_1D28783C8();

    [v15 activateConstraints_];

    v30 = [v12 bottomAnchor];
    v31 = [v0 &selRef_completedUnitCount];
    v32 = [v31 bottomAnchor];

    v33 = [v30 constraintEqualToAnchor_];
    [v33 setActive_];

    v11 = v61;
    [*&v0[v9] didMoveToParentViewController_];

    v34 = sub_1D25003C8();
    if (v34)
    {
      v35 = v34;
      v36 = v12;
      [v35 setTranslatesAutoresizingMaskIntoConstraints_];
      v37 = [v6 clearColor];
      [v35 setBackgroundColor_];

      v38 = [v0 secondaryContentView];
      if (v38)
      {
        v39 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D2888240;
        v41 = [v39 topAnchor];
        v42 = [v0 &selRef_completedUnitCount];
        v43 = [v42 bottomAnchor];

        v44 = [v41 constraintEqualToAnchor:v43 constant:-5.0];
        *(v40 + 32) = v44;
        v45 = [v35 topAnchor];
        v46 = [v39 topAnchor];
        v47 = [v45 constraintEqualToAnchor_];

        *(v40 + 40) = v47;
        v48 = [v35 leadingAnchor];
        v49 = [v39 leadingAnchor];
        v50 = [v48 constraintEqualToAnchor_];

        *(v40 + 48) = v50;
        v51 = [v35 trailingAnchor];
        v52 = [v39 trailingAnchor];
        v53 = [v51 constraintEqualToAnchor_];

        *(v40 + 56) = v53;
        v54 = [v35 bottomAnchor];
        v55 = [v39 bottomAnchor];
        v56 = [v54 constraintEqualToAnchor_];

        *(v40 + 64) = v56;
        *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_attributePickerConstraints] = v40;
        v11 = v61;
      }

      else
      {
      }
    }
  }

  else
  {
    v57 = sub_1D25003C8();
    if (v57)
    {
    }
  }

  v58 = [v0 navigationItem];
  v59 = sub_1D2500438(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___doneButton);
  [v58 setRightBarButtonItem_];

  v60 = [v0 navigationItem];
  v62 = sub_1D2500438(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelButton);
  [v60 setLeftBarButtonItem_];
}