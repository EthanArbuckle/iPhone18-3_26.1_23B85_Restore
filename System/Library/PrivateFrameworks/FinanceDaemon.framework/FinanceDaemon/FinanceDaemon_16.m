void *sub_226C38D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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
        sub_226AC4708(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_226B24A98(v25, (*(v4 + 56) + v22));
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

void *sub_226C38F70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA8, &qword_226D725E0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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
        sub_226AE4FD4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_226AC4708(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_226B24A98(v22, (*(v4 + 56) + v17));
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

id sub_226C39128(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226D6F0DC();
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

char *sub_226C392FC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_226D6F0DC();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        result = (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }

  return result;
}

void *sub_226C39658(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_226D6F0DC();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_226C398D4()
{
  v1 = v0;
  v30 = sub_226D6867C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A81A8, &unk_226D77E60);
  v4 = *v0;
  v5 = sub_226D6F0DC();
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

void *sub_226C39B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8278, &qword_226D77F20);
  v30 = v0;
  v1 = *v0;
  v34 = sub_226D6F0DC();
  v35 = v1;
  if (*(v1 + 16))
  {
    result = (v34 + 64);
    v3 = ((1 << *(v34 + 32)) + 63) >> 6;
    __src = (v1 + 64);
    if (v34 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, __src, 8 * v3);
    }

    v5 = 0;
    *(v34 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v1 + 64);
    v9 = (v6 + 63) >> 6;
    if (v8)
    {
      do
      {
        v10 = __clz(__rbit64(v8));
        v33 = (v8 - 1) & v8;
LABEL_17:
        v13 = v10 | (v5 << 6);
        v14 = 16 * v13;
        v15 = (*(v35 + 48) + 16 * v13);
        v17 = *v15;
        v16 = v15[1];
        v13 *= 80;
        v18 = (*(v35 + 56) + v13);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        v26 = v18[6];
        v25 = v18[7];
        v27 = v18[9];
        v32 = v18[8];
        v28 = (*(v34 + 48) + v14);
        *v28 = v17;
        v28[1] = v16;
        v29 = (*(v34 + 56) + v13);
        *v29 = v19;
        v29[1] = v20;
        v29[2] = v21;
        v29[3] = v22;
        v29[4] = v23;
        v29[5] = v24;
        v29[6] = v26;
        v29[7] = v25;
        v29[8] = v32;
        v29[9] = v27;

        sub_226ACD178(v21);
        sub_226ACD178(v23);
        sub_226ACD178(v26);
        result = sub_226ACD178(v32);
        v8 = v33;
      }

      while (v33);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_19;
      }

      v12 = *(__src + v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v34;
  }

  return result;
}

void *sub_226C39D60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226D6F0DC();
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

void *sub_226C39EB8()
{
  v1 = v0;
  v2 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
  v7 = *v0;
  v8 = sub_226D6F0DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v28 = v1;
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
        v23 = 40 * v22;
        sub_226AE4FD4(*(v7 + 48) + 40 * v22, v29);
        v24 = *(v3 + 72) * v22;
        sub_226C402B0(*(v7 + 56) + v24, v6, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
        v25 = *(v9 + 48) + v23;
        v26 = v29[0];
        v27 = v29[1];
        *(v25 + 32) = v30;
        *v25 = v26;
        *(v25 + 16) = v27;
        result = sub_226C40318(v6, *(v9 + 56) + v24, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
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

        v1 = v28;
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

id sub_226C3A110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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

uint64_t sub_226C3A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_226C3A3F0(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_226C3A770(v12, v7, a3, v5);
  result = MEMORY[0x22AA8BEE0](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226C3A3F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v39 = a4;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for Permission(0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PermissionIdentifier(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v34 = 0;
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v40 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v41 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v40;
    v25 = v35;
    sub_226C402B0(*(v40 + 48) + *(v36 + 72) * v23, v35, type metadata accessor for PermissionIdentifier);
    v26 = v23;
    v27 = *(v24 + 56) + *(v38 + 72) * v23;
    v28 = v37;
    sub_226C402B0(v27, v37, type metadata accessor for Permission);
    v29 = v42;
    v30 = v39(v25, v28);
    sub_226C4075C(v28, type metadata accessor for Permission);
    result = sub_226C4075C(v25, type metadata accessor for PermissionIdentifier);
    v42 = v29;
    if (v29)
    {
      return result;
    }

    v18 = v41;
    if (v30)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_226CBC15C(v33, v32, v34, v40);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_226CBC15C(v33, v32, v34, v40);
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v41 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_226C3A6D4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226C3BD60(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_226C3A770(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_226C3A3F0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void (*sub_226C3A800(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](a2, a3);
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
    return sub_226C3A880;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_226C3A888(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](a2, a3);
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
    return sub_226C40E68;
  }

  __break(1u);
  return result;
}

void *sub_226C3A908(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_226C3AA60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_226D6EDBC();
  sub_226D69D3C();
  sub_226C40248(&qword_27D7A6090, 255, MEMORY[0x277CC7A58]);
  result = sub_226D6E8DC();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      v7 = a3;
      if (!sub_226D6EE2C())
      {
        goto LABEL_30;
      }

      sub_226D69D3C();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v15 = v10;
    if (!v11)
    {
      break;
    }

    v16 = v10;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v14 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

uint64_t sub_226C3ACD0(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v7 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8148, &qword_226D77DE8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8150, &unk_226D77DF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v28 - v21;
  sub_226C40318(v4, v18, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v31 = v8;
  v23 = *(v8 + 56);
  v23(v18, 0, 1, v7);
  v30 = v23;
  v23(v22, 1, 1, v7);
  result = sub_226AFD680(v18, v22, &qword_27D7A8148, &qword_226D77DE8);
  if (!a2)
  {
LABEL_10:
    v25 = 0;
    goto LABEL_13;
  }

  v25 = v29;
  if (!v29)
  {
LABEL_13:
    sub_226AFD80C(v22, a1, &qword_27D7A8150, &unk_226D77DF0);
    return v25;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    a1 = (v31 + 48);
    v26 = 1;
    while (1)
    {
      sub_226AFD80C(v22, v16, &qword_27D7A8148, &qword_226D77DE8);
      v30(v22, 1, 1, v7);
      if ((*a1)(v16, 1, v7) == 1)
      {
        break;
      }

      sub_226C40318(v16, v11, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226C40318(v11, a2, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (v25 == v26)
      {
        goto LABEL_12;
      }

      a2 += *(v31 + 72);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_226AC47B0(v16, &qword_27D7A8148, &qword_226D77DE8);
    v25 = v26 - 1;
LABEL_12:
    a1 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C3B000(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v7 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8170, &qword_226D77E28);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8178, &qword_226D77E30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v28 - v21;
  sub_226C40318(v4, v18, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v31 = v8;
  v23 = *(v8 + 56);
  v23(v18, 0, 1, v7);
  v30 = v23;
  v23(v22, 1, 1, v7);
  result = sub_226AFD680(v18, v22, &qword_27D7A8170, &qword_226D77E28);
  if (!a2)
  {
LABEL_10:
    v25 = 0;
    goto LABEL_13;
  }

  v25 = v29;
  if (!v29)
  {
LABEL_13:
    sub_226AFD80C(v22, a1, &qword_27D7A8178, &qword_226D77E30);
    return v25;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    a1 = (v31 + 48);
    v26 = 1;
    while (1)
    {
      sub_226AFD80C(v22, v16, &qword_27D7A8170, &qword_226D77E28);
      v30(v22, 1, 1, v7);
      if ((*a1)(v16, 1, v7) == 1)
      {
        break;
      }

      sub_226C40318(v16, v11, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226C40318(v11, a2, _s8MetadataV9CloudItemV6ObjectVMa_2);
      if (v25 == v26)
      {
        goto LABEL_12;
      }

      a2 += *(v31 + 72);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_226AC47B0(v16, &qword_27D7A8170, &qword_226D77E28);
    v25 = v26 - 1;
LABEL_12:
    a1 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C3B330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Permission(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_226C402B0(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for Permission);
      v25 = v24;
      v26 = v32;
      sub_226C40318(v25, v32, type metadata accessor for Permission);
      sub_226C40318(v26, a2, type metadata accessor for Permission);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_226C3B594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_226D6867C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_226C3B850(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
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

uint64_t sub_226C3BAF8(uint64_t a1, uint64_t a2)
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v12 == v10 && v13 == v11)
  {
  }

  else
  {
    v5 = sub_226D6F21C();

    if ((v5 & 1) == 0)
    {
LABEL_11:
      v8 = 0;
      return v8 & 1;
    }
  }

  v6 = type metadata accessor for Permission(0);
  v7 = v6[5];
  if ((sub_226D6D4EC() & 1) == 0 || (MEMORY[0x22AA87A30](a1 + v6[6], a2 + v6[6]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = MEMORY[0x22AA83EE0](a1 + v6[7], a2 + v6[7]);
  return v8 & 1;
}

uint64_t sub_226C3BC44()
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v7 == v5 && v8 == v6)
  {
  }

  else
  {
    v1 = sub_226D6F21C();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  v3 = *(type metadata accessor for PermissionIdentifier(0) + 20);
  v2 = sub_226D6D4EC();
  return v2 & 1;
}

uint64_t sub_226C3BD60(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v38 - v8;
  v9 = sub_226D6D52C();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v49 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v44 = 0;
  v45 = v12 + 16;
  v46 = v12;
  v47 = (v12 + 8);
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_12:
    v28 = v25 | (v15 << 6);
    v29 = v9;
    (*(v46 + 16))(v14, v49[6] + *(v46 + 72) * v28, v9);
    if (*(a4 + 16) && (v30 = sub_226C3049C(v14), (v31 & 1) != 0))
    {
      v32 = v30;
      v41 = *(a4 + 56);
      v33 = sub_226D67C0C();
      v34 = *(v33 - 8);
      v39 = v33;
      v40 = v34;
      v35 = v41 + *(v34 + 72) * v32;
      v36 = v48;
      (*(v34 + 16))(v48, v35, v33);
      (*(v40 + 56))(v36, 0, 1, v39);
      sub_226AC47B0(v36, &qword_27D7A6D50, &unk_226D75230);
      v9 = v29;
      result = (*v47)(v14, v29);
      *(v43 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_226CBBCB8(v43, v42, v44, v49);
      }
    }

    else
    {
      v23 = sub_226D67C0C();
      v24 = v48;
      (*(*(v23 - 8) + 56))(v48, 1, 1, v23);
      sub_226AC47B0(v24, &qword_27D7A6D50, &unk_226D75230);
      v9 = v29;
      result = (*v47)(v14, v29);
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_226CBBCB8(v43, v42, v44, v49);
    }

    v27 = v17[v15];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v21 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226C3C108(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_226C3A6D4(v13, v7, a1, a2);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_226C3BD60((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_226C3C2C8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v360 = a4;
  v340 = a3;
  v388 = a2;
  v366 = a1;
  v386 = sub_226D67E5C();
  v7 = *(v386 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v386);
  v345 = &v338 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v342 = &v338 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v350 = &v338 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v364 = &v338 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v356 = &v338 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v363 = &v338 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v349 = &v338 - v23;
  MEMORY[0x28223BE20](v22);
  v346 = &v338 - v24;
  v367 = sub_226D67F1C();
  v344 = *(v367 - 8);
  isa = v344[8].isa;
  v26 = MEMORY[0x28223BE20](v367 - 8);
  v351 = &v338 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v355 = &v338 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v348 = &v338 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v354 = &v338 - v33;
  MEMORY[0x28223BE20](v32);
  v357 = &v338 - v34;
  v374 = sub_226D6B9BC();
  v371 = *(v374 - 8);
  v35 = v371[8].isa;
  v36 = MEMORY[0x28223BE20](v374);
  v339 = &v338 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v341 = &v338 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v338 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v359 = &v338 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v373 = &v338 - v46;
  MEMORY[0x28223BE20](v45);
  v370 = &v338 - v47;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8110, &qword_226D77B20);
  v48 = *(v385[-1].isa + 8);
  v49 = MEMORY[0x28223BE20](v385);
  v384 = (&v338 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x28223BE20](v49);
  v383 = &v338 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v382 = &v338 - v54;
  MEMORY[0x28223BE20](v53);
  v381 = &v338 - v55;
  v56 = sub_226D6D52C();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56);
  v362 = &v338 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v352 = &v338 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v353 = &v338 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v361 = &v338 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v347 = &v338 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v365 = &v338 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v368 = &v338 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v358 = &v338 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v375 = &v338 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v400 = &v338 - v78;
  v79 = *(a2 + 16);
  v390 = v77;
  v387 = v7;
  v372 = v42;
  v389 = v57;
  if (v79)
  {
    v343 = v4;
    v403 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v79, 0);
    v80 = v388;
    v401 = v403;
    v81 = v388 + 64;
    v82 = -1 << *(v388 + 32);
    v83 = sub_226D6ED6C();
    v84 = 0;
    v402 = *(v80 + 36);
    v399 = v57 + 16;
    v380 = v7 + 16;
    v379 = v57 + 32;
    v378 = v7 + 32;
    v369 = v80 + 72;
    v376 = v79;
    v377 = v81;
    while ((v83 & 0x8000000000000000) == 0 && v83 < 1 << *(v80 + 32))
    {
      if ((*(v81 + 8 * (v83 >> 6)) & (1 << v83)) == 0)
      {
        goto LABEL_160;
      }

      if (v402 != *(v80 + 36))
      {
        goto LABEL_161;
      }

      v391 = v84;
      *&v392 = 1 << v83;
      *&v393 = v83 >> 6;
      v86 = v385;
      isa_low = SLODWORD(v385[6].isa);
      v88 = *(v80 + 48);
      v89 = *(v57 + 72);
      v396 = isa_low;
      v397 = v89;
      v395 = *(v57 + 16);
      v90 = v381;
      v91 = v83;
      v92 = v390;
      (v395)(v381, v88 + v89 * v83, v390);
      v93 = *(v80 + 56);
      v94 = *(v7 + 72);
      v398 = v91;
      v95 = v93 + v94 * v91;
      v96 = *(v7 + 16);
      v97 = v57;
      v98 = v7;
      v7 = v386;
      v96(isa_low + v90, v95, v386);
      v99 = *(v97 + 32);
      v100 = v382;
      v99(v382, v90, v92);
      v101 = SLODWORD(v86[6].isa);
      v394 = *(v98 + 32);
      (v394)(v100 + v101, v396 + v90, v7);
      v102 = v383;
      sub_226AC40E8(v100, v383, &qword_27D7A8110, &qword_226D77B20);
      v103 = SLODWORD(v86[6].isa);
      v104 = v384;
      v396 = v99;
      v99(v384, v102, v92);
      (v394)(v104 + v103, &v102[v103], v7);
      (v395)(v400, v104, v92);
      sub_226AC47B0(v104, &qword_27D7A8110, &qword_226D77B20);
      sub_226AC47B0(v100, &qword_27D7A8110, &qword_226D77B20);
      v105 = v401;
      v403 = v401;
      v107 = v401[2].isa;
      v106 = v401[3].isa;
      if (v107 >= v106 >> 1)
      {
        sub_226AE20D4(v106 > 1, v107 + 1, 1);
        v105 = v403;
      }

      v105[2].isa = (v107 + 1);
      v57 = v389;
      v108 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v401 = v105;
      (v396)(v105 + v108 + v107 * v397, v400, v92);
      v80 = v388;
      v85 = 1 << *(v388 + 32);
      if (v398 >= v85)
      {
        goto LABEL_162;
      }

      v81 = v377;
      v109 = *(v377 + 8 * v393);
      if ((v109 & v392) == 0)
      {
        goto LABEL_163;
      }

      if (v402 != *(v388 + 36))
      {
        goto LABEL_164;
      }

      v110 = v109 & (-2 << (v398 & 0x3F));
      if (v110)
      {
        v85 = __clz(__rbit64(v110)) | v398 & 0x7FFFFFFFFFFFFFC0;
        v7 = v387;
      }

      else
      {
        v111 = v393 << 6;
        v112 = v393 + 1;
        v113 = (v369 + 8 * v393);
        v7 = v387;
        while (v112 < (v85 + 63) >> 6)
        {
          v115 = *v113++;
          v114 = v115;
          v111 += 64;
          ++v112;
          if (v115)
          {
            sub_226AE5444(v398, v402, 0);
            v85 = __clz(__rbit64(v114)) + v111;
            goto LABEL_4;
          }
        }

        sub_226AE5444(v398, v402, 0);
      }

LABEL_4:
      v84 = (&v391->isa + 1);
      v83 = v85;
      if ((&v391->isa + 1) == v376)
      {
        v7 = v372;
        v5 = v343;
        goto LABEL_22;
      }
    }

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
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v401 = MEMORY[0x277D84F90];
  v7 = v42;
LABEL_22:
  sub_226D69F0C();
  sub_226AE45DC(v401);

  v4 = v5;
  v116 = sub_226D69E3C();

  if (!v5)
  {
    v118 = v116;
    v396 = v116;
    if (!(v116 >> 62))
    {
      v119 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
      v382 = v4;
      if (v119)
      {
        v120 = 0;
        v399 = v118 & 0xFFFFFFFFFFFFFF8;
        v400 = v118 & 0xC000000000000001;
        v401 = v371 + 4;
        v395 = (v57 + 16);
        v398 = v57 + 8;
        v57 = MEMORY[0x277D84F98];
        v394 = v371 + 5;
        v397 = v119;
        while (1)
        {
          if (v400)
          {
            v122 = MEMORY[0x22AA8AFD0](v120, v118);
            v121 = v374;
            v123 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_167;
            }
          }

          else
          {
            v121 = v374;
            if (v120 >= *(v399 + 16))
            {
              goto LABEL_168;
            }

            v122 = *(v118 + 8 * v120 + 32);
            v123 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_167;
            }
          }

          v402 = v123;
          v7 = v375;
          sub_226D69EBC();
          v124 = v370;
          sub_226D69D5C();
          v125 = v401->isa;
          (v401->isa)(v373, v124, v121);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v403 = v57;
          v127 = sub_226C3049C(v7);
          v129 = *(v57 + 16);
          v130 = (v128 & 1) == 0;
          v131 = __OFADD__(v129, v130);
          v132 = v129 + v130;
          if (v131)
          {
            goto LABEL_169;
          }

          v133 = v128;
          if (*(v57 + 24) >= v132)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v141 = v127;
              sub_226C392FC(MEMORY[0x277CC8058], MEMORY[0x277CC95F0], &qword_27D7A82E0, &unk_226D77F78);
              v127 = v141;
            }
          }

          else
          {
            sub_226C33D10(v132, isUniquelyReferenced_nonNull_native, MEMORY[0x277CC8058], &qword_27D7A82E0, &unk_226D77F78);
            v127 = sub_226C3049C(v375);
            if ((v133 & 1) != (v134 & 1))
            {
              goto LABEL_178;
            }
          }

          v135 = v390;
          v7 = v372;
          v57 = v403;
          if (v133)
          {
            (v371[5].isa)(v403[7].isa + v371[9].isa * v127, v373, v374);

            (*v398)(v375, v135);
          }

          else
          {
            v136 = v372;
            v403[(v127 >> 6) + 8].isa = (v403[(v127 >> 6) + 8].isa | (1 << v127));
            v137 = v389;
            v138 = v127;
            v7 = v375;
            (*(v389 + 16))(*(v57 + 48) + *(v389 + 72) * v127, v375, v135);
            v125(*(v57 + 56) + v371[9].isa * v138, v373, v374);

            (*(v137 + 8))(v7, v135);
            v139 = *(v57 + 16);
            v131 = __OFADD__(v139, 1);
            v140 = v139 + 1;
            if (v131)
            {
              goto LABEL_171;
            }

            *(v57 + 16) = v140;
            v7 = v136;
            v118 = v396;
          }

          ++v120;
          if (v402 == v397)
          {
            goto LABEL_45;
          }
        }
      }

      v57 = MEMORY[0x277D84F98];
LABEL_45:

      v403 = MEMORY[0x277D84FA0];
      v142 = *(v57 + 64);
      v400 = v57 + 64;
      v143 = 1 << *(v57 + 32);
      v144 = -1;
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      v145 = v144 & v142;
      v146 = (v143 + 63) >> 6;
      v396 = (v389 + 16);
      v397 = v57;
      v402 = v389 + 8;
      swift_bridgeObjectRetain_n();
      v147 = 0;
      for (i = v389; v145; v7 = v372)
      {
        v149 = v147;
        v57 = v397;
LABEL_54:
        v151 = __clz(__rbit64(v145));
        v145 &= v145 - 1;
        v152 = *(v57 + 48) + i[9] * (v151 | (v149 << 6));
        v153 = i[2];
        v154 = v358;
        v155 = v390;
        v153(v358, v152, v390);
        v156 = v365;
        v153(v365, v154, v155);
        v157 = v368;
        sub_226C2514C(v368, v156);
        v158 = i[1];
        v158(v157, v155);
        v158(v154, v155);
      }

      v150 = v390;
      v57 = v397;
      while (1)
      {
        v149 = v147 + 1;
        if (__OFADD__(v147, 1))
        {
          goto LABEL_165;
        }

        if (v149 >= v146)
        {
          break;
        }

        v145 = *(v400 + 8 * v149);
        ++v147;
        if (v145)
        {
          v147 = v149;
          goto LABEL_54;
        }
      }

      v384 = v403;
      v159 = 1 << *(v57 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v57 + 64);
      v4 = (v159 + 63) >> 6;
      v394 = v371 + 2;
      v401 = v344 + 2;
      *&v392 = v371 + 4;
      v395 = v371 + 1;
      v398 = &v344[1];

      v162 = 0;
      *&v163 = 136315394;
      v393 = v163;
      v399 = v4;
      v164 = v367;
      while (1)
      {
        v165 = v359;
        if (!v161)
        {
          break;
        }

        v166 = v162;
LABEL_66:
        v167 = v150;
        v168 = *(v57 + 56) + v371[9].isa * (__clz(__rbit64(v161)) | (v166 << 6));
        v169 = v374;
        (v371[2].isa)(v359, v168, v374);
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v161 &= v161 - 1;
        v170 = sub_226D6E07C();
        __swift_project_value_buffer(v170, qword_27D7A7CF8);
        v171 = v357;
        (v401->isa)(v357, v366, v164);
        (*v392)(v7, v165, v169);
        v172 = sub_226D6E05C();
        v173 = sub_226D6E9EC();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v403 = v175;
          *v174 = v393;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
          v391 = v172;
          v176 = sub_226D6F1CC();
          LODWORD(v385) = v173;
          v178 = v177;
          (*v398)(v171, v164);
          v179 = sub_226AC4530(v176, v178, &v403);

          *(v174 + 4) = v179;
          *(v174 + 12) = 2080;
          sub_226C40248(&qword_27D7A6E40, 255, MEMORY[0x277CC8058]);
          v180 = sub_226D6F1CC();
          v182 = v181;
          (v395->isa)(v372, v169);
          v183 = sub_226AC4530(v180, v182, &v403);

          *(v174 + 14) = v183;
          v184 = v391;
          _os_log_impl(&dword_226AB4000, v391, v385, "Upserting association between app (%s) with account: %s", v174, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v175, -1, -1);
          v7 = v372;
          v150 = v390;
          MEMORY[0x22AA8BEE0](v174, -1, -1);

          v162 = v166;
        }

        else
        {

          (v395->isa)(v7, v169);
          (*v398)(v171, v164);
          v162 = v166;
          v150 = v167;
        }

        v4 = v399;
        v57 = v397;
      }

      while (1)
      {
        v166 = v162 + 1;
        if (__OFADD__(v162, 1))
        {
          goto LABEL_166;
        }

        if (v166 >= v4)
        {
          break;
        }

        v161 = *(v400 + 8 * v166);
        ++v162;
        if (v161)
        {
          goto LABEL_66;
        }
      }

      v185 = v150;

      v186 = sub_226D683BC();
      v4 = v382;
      v187 = sub_226D6836C();
      if (v4)
      {
      }

      v188 = v187;
      v382 = 0;
      v403 = MEMORY[0x277D84FA0];
      if (v187 >> 62)
      {
        v189 = sub_226D6EDFC();
      }

      else
      {
        v189 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v190 = v387;
      v7 = v362;
      v379 = v186;
      v399 = v189;
      v400 = v188;
      if (v189)
      {
        v191 = 0;
        v192 = v188 & 0xC000000000000001;
        v193 = v188 & 0xFFFFFFFFFFFFFF8;
        v194 = v368;
        do
        {
          if (v192)
          {
            v195 = MEMORY[0x22AA8AFD0](v191, v188);
          }

          else
          {
            if (v191 >= *(v193 + 16))
            {
              goto LABEL_173;
            }

            v195 = *(v188 + 8 * v191 + 32);
          }

          v196 = v195;
          v197 = v191 + 1;
          if (__OFADD__(v191, 1))
          {
            goto LABEL_172;
          }

          v198 = [v195 accountID];
          v7 = v365;
          sub_226D6D4FC();

          sub_226C2514C(v194, v7);
          v188 = v400;
          (*v402)(v194, v390);
          ++v191;
        }

        while (v197 != v399);
        v199 = v403;
        v200 = v390;
        v190 = v387;
        v7 = v362;
      }

      else
      {
        v199 = MEMORY[0x277D84FA0];
        v200 = v185;
      }

      if (*(v199 + 16) <= *(v384 + 2) >> 3)
      {
        v403 = v384;
        sub_226D53B1C(v199);

        v202 = v403;
      }

      else
      {
        v201 = sub_226D53F8C(v199, v384);

        v202 = v201;
      }

      v203 = 0;
      v204 = v202 + 56;
      v205 = 1 << *(v202 + 32);
      v206 = -1;
      if (v205 < 64)
      {
        v206 = ~(-1 << v205);
      }

      v207 = v206 & *(v202 + 56);
      v208 = (v205 + 63) >> 6;
      v209 = v388;
      v375 = v389 + 32;
      v381 = (v190 + 16);
      v380 = v190 + 8;
      v377 = v202 + 56;
      v376 = v208;
      v378 = v202;
      while (v207)
      {
        v211 = v203;
LABEL_97:
        v212 = v389;
        v213 = *(v389 + 16);
        v214 = v347;
        v213(v347, *(v202 + 48) + *(v389 + 72) * (__clz(__rbit64(v207)) | (v211 << 6)), v200);
        v215 = v361;
        (*(v212 + 32))(v361, v214, v200);
        *&v392 = v401->isa;
        (v392)(v354, v366, v367);
        v383 = v213;
        v213(v353, v215, v200);
        v57 = v397;
        if (!*(v397 + 16))
        {
          v391 = 0;
          v384 = 0;
          v385 = 0;
          if (!*(v209 + 16))
          {
            goto LABEL_111;
          }

          goto LABEL_108;
        }

        v216 = sub_226C3049C(v215);
        v217 = v374;
        if (v218)
        {
          v219 = v371;
          v220 = v341;
          (v371[2].isa)(v341, *(v57 + 56) + v371[9].isa * v216, v374);
          v385 = sub_226D6B97C();
          v391 = v221;
          (v219[1].isa)(v220, v217);
          if (!*(v57 + 16))
          {
            goto LABEL_106;
          }
        }

        else
        {
          v385 = 0;
          v391 = 0;
          if (!*(v57 + 16))
          {
            goto LABEL_106;
          }
        }

        v222 = sub_226C3049C(v215);
        if (v223)
        {
          v224 = v371;
          v225 = v339;
          (v371[2].isa)(v339, *(v57 + 56) + v371[9].isa * v222, v217);
          v384 = sub_226D6B9AC();
          (v224[1].isa)(v225, v217);
          goto LABEL_107;
        }

LABEL_106:
        v384 = 0;
LABEL_107:
        if (!*(v388 + 16))
        {
          goto LABEL_111;
        }

LABEL_108:
        v226 = sub_226C3049C(v361);
        if ((v227 & 1) == 0)
        {
LABEL_111:
          v232 = sub_226D6D4AC();
          v231 = v349;
          (*(*(v232 - 8) + 56))(v349, 1, 1, v232);
          goto LABEL_112;
        }

        v228 = v386;
        v229 = v387;
        v230 = v342;
        (*(v387 + 16))(v342, *(v388 + 56) + *(v387 + 72) * v226, v386);
        v231 = v349;
        sub_226D67E1C();
        (*(v229 + 8))(v230, v228);
        v232 = sub_226D6D4AC();
        v233 = *(v232 - 8);
        if ((*(v233 + 48))(v231, 1, v232) != 1)
        {
          v235 = v346;
          (*(v233 + 32))(v346, v231, v232);
          (*(v233 + 56))(v235, 0, 1, v232);
          goto LABEL_115;
        }

LABEL_112:
        sub_226D6D4AC();
        v234 = *(v232 - 8);
        (*(v234 + 56))(v346, 1, 1, v232);
        if ((*(v234 + 48))(v231, 1, v232) != 1)
        {
          sub_226AC47B0(v231, &qword_27D7A8BE0, &unk_226D718F0);
        }

LABEL_115:
        v236 = v360;

        v237 = v348;
        v238 = v352;
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v207 &= v207 - 1;
        v239 = sub_226D6E07C();
        __swift_project_value_buffer(v239, qword_27D7A7CF8);
        v240 = v367;
        (v392)(v237, v366, v367);
        v241 = v390;
        (v383)(v238, v361, v390);
        v242 = sub_226D6E05C();
        v243 = sub_226D6E9EC();
        if (os_log_type_enabled(v242, v243))
        {
          v244 = swift_slowAlloc();
          *&v392 = swift_slowAlloc();
          v403 = v392;
          *v244 = v393;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
          LODWORD(v391) = v243;
          v245 = v237;
          v246 = sub_226D6F1CC();
          v385 = v242;
          v247 = v246;
          v249 = v248;
          (*v398)(v245, v240);
          v250 = sub_226AC4530(v247, v249, &v403);

          *(v244 + 4) = v250;
          *(v244 + 12) = 2080;
          sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
          v251 = v352;
          v252 = sub_226D6F1CC();
          v254 = v253;
          v384 = *v402;
          v384(v251, v241);
          v255 = sub_226AC4530(v252, v254, &v403);

          *(v244 + 14) = v255;
          v256 = v385;
          _os_log_impl(&dword_226AB4000, v385, v391, "Adding association between app (%s) with account: %s", v244, 0x16u);
          v257 = v392;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v257, -1, -1);
          MEMORY[0x22AA8BEE0](v244, -1, -1);

          v384(v361, v241);
        }

        else
        {

          v210 = *v402;
          (*v402)(v238, v241);
          (*v398)(v237, v240);
          v210(v361, v241);
        }

        v203 = v211;
        v200 = v241;
        v209 = v388;
        v7 = v362;
        v202 = v378;
        v204 = v377;
        v208 = v376;
      }

      while (1)
      {
        v211 = v203 + 1;
        if (__OFADD__(v203, 1))
        {
          goto LABEL_170;
        }

        if (v211 >= v208)
        {
          break;
        }

        v207 = *(v204 + 8 * v211);
        ++v203;
        if (v207)
        {
          goto LABEL_97;
        }
      }

      if (v340)
      {
        v259 = v400;
        if (v399)
        {
          if (v399 >= 1)
          {
            v260 = 0;
            v395 = (v400 & 0xC000000000000001);
            v261 = &qword_27D7A8BE0;
            *&v258 = 136315650;
            v392 = v258;
            while (1)
            {
              if (v395)
              {
                v263 = MEMORY[0x22AA8AFD0](v260, v259);
              }

              else
              {
                v263 = *(v259 + 8 * v260 + 32);
              }

              v264 = v263;
              v265 = v261;
              v266 = [v263 accountID];
              sub_226D6D4FC();

              if (*(v388 + 16) && (v267 = sub_226C3049C(v7), (v268 & 1) != 0))
              {
                v269 = v386;
                v270 = v387;
                v271 = v345;
                (*(v387 + 16))(v345, *(v388 + 56) + *(v387 + 72) * v267, v386);
                v396 = *v402;
                v396(v7, v200);
                v272 = v356;
                sub_226D67E1C();
                (*(v270 + 8))(v271, v269);
                v273 = sub_226D6D4AC();
                v274 = *(v273 - 8);
                if ((*(v274 + 48))(v272, 1, v273) != 1)
                {
                  v277 = v363;
                  (*(v274 + 32))(v363, v272, v273);
                  (*(v274 + 56))(v277, 0, 1, v273);
                  v276 = v364;
                  goto LABEL_137;
                }
              }

              else
              {
                v396 = *v402;
                v396(v7, v200);
                v273 = sub_226D6D4AC();
                v272 = v356;
                (*(*(v273 - 8) + 56))(v356, 1, 1, v273);
              }

              sub_226D6D4AC();
              v275 = *(v273 - 8);
              (*(v275 + 56))(v363, 1, 1, v273);
              if ((*(v275 + 48))(v272, 1, v273) == 1)
              {
                v276 = v364;
                v277 = v363;
LABEL_137:
                v279 = v355;
                v261 = v265;
                goto LABEL_138;
              }

              v278 = v272;
              v261 = v265;
              sub_226AC47B0(v278, v265, &unk_226D718F0);
              v276 = v364;
              v277 = v363;
              v279 = v355;
LABEL_138:
              sub_226D6837C();
              if (qword_27D7A5F58 != -1)
              {
                swift_once();
              }

              v280 = sub_226D6E07C();
              __swift_project_value_buffer(v280, qword_27D7A7CF8);
              v281 = v367;
              (v401->isa)(v279, v366, v367);
              sub_226AC40E8(v277, v276, v261, &unk_226D718F0);
              v282 = v264;
              v283 = sub_226D6E05C();
              v284 = sub_226D6E9EC();

              LODWORD(v397) = v284;
              if (os_log_type_enabled(v283, v284))
              {
                v394 = v283;
                v285 = v261;
                v286 = swift_slowAlloc();
                *&v393 = swift_slowAlloc();
                v403 = v393;
                *v286 = v392;
                sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
                v287 = sub_226D6F1CC();
                v289 = v288;
                (*v398)(v279, v281);
                v290 = sub_226AC4530(v287, v289, &v403);

                *(v286 + 4) = v290;
                *(v286 + 12) = 2080;
                v291 = [v282 accountID];
                v292 = v368;
                sub_226D6D4FC();

                sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
                v293 = v390;
                v294 = sub_226D6F1CC();
                v296 = v295;
                v396(v292, v293);
                v297 = sub_226AC4530(v294, v296, &v403);

                *(v286 + 14) = v297;
                *(v286 + 22) = 2080;
                v298 = v350;
                sub_226AC40E8(v364, v350, v285, &unk_226D718F0);
                v299 = sub_226D6D4AC();
                v300 = *(v299 - 8);
                if ((*(v300 + 48))(v298, 1, v299) == 1)
                {
                  sub_226AC47B0(v298, v285, &unk_226D718F0);
                  v301 = 0xE300000000000000;
                  v302 = 7104878;
                  v303 = v285;
                  v262 = v399;
                  v259 = v400;
                }

                else
                {
                  v396 = v282;
                  v304 = v285;
                  v305 = v298;
                  v302 = sub_226D6D38C();
                  v301 = v306;
                  (*(v300 + 8))(v305, v299);
                  v262 = v399;
                  v259 = v400;
                  v303 = v304;
                  v282 = v396;
                }

                sub_226AC47B0(v364, v303, &unk_226D718F0);
                v307 = sub_226AC4530(v302, v301, &v403);
                v308 = v303;
                v309 = v307;

                *(v286 + 24) = v309;
                v310 = v394;
                _os_log_impl(&dword_226AB4000, v394, v397, "Updating association between app (%s) with account: %s to %s", v286, 0x20u);
                v311 = v393;
                swift_arrayDestroy();
                MEMORY[0x22AA8BEE0](v311, -1, -1);
                MEMORY[0x22AA8BEE0](v286, -1, -1);

                sub_226AC47B0(v363, v308, &unk_226D718F0);
                v261 = v308;
              }

              else
              {

                sub_226AC47B0(v364, v261, &unk_226D718F0);
                (*v398)(v279, v281);
                sub_226AC47B0(v277, v261, &unk_226D718F0);
                v262 = v399;
                v259 = v400;
              }

              ++v260;
              v200 = v390;
              v7 = v362;
              if (v262 == v260)
              {
              }
            }
          }

          __break(1u);
          goto LABEL_177;
        }
      }

      else
      {
        v312 = v351;
        v313 = v400;
        v314 = v366;
        if (v399)
        {
          if (v399 < 1)
          {
LABEL_177:
            __break(1u);
LABEL_178:
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v315 = 0;
          v397 = v400 & 0xC000000000000001;
          do
          {
            if (v397)
            {
              v330 = MEMORY[0x22AA8AFD0](v315, v313);
            }

            else
            {
              v330 = *(v313 + 8 * v315 + 32);
            }

            v331 = v330;
            if (qword_27D7A5F58 != -1)
            {
              swift_once();
            }

            v332 = sub_226D6E07C();
            __swift_project_value_buffer(v332, qword_27D7A7CF8);
            v333 = v367;
            (v401->isa)(v312, v314, v367);
            v334 = v331;
            v335 = sub_226D6E05C();
            v336 = sub_226D6E9EC();

            if (os_log_type_enabled(v335, v336))
            {
              v316 = swift_slowAlloc();
              v396 = swift_slowAlloc();
              v403 = v396;
              *v316 = v393;
              sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
              v317 = sub_226D6F1CC();
              v319 = v318;
              (*v398)(v312, v333);
              v320 = sub_226AC4530(v317, v319, &v403);

              *(v316 + 4) = v320;
              *(v316 + 12) = 2080;
              v321 = [v334 accountID];
              v322 = v368;
              sub_226D6D4FC();

              sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
              v323 = v390;
              v324 = sub_226D6F1CC();
              v326 = v325;
              v327 = v322;
              v312 = v351;
              (*v402)(v327, v323);
              v328 = sub_226AC4530(v324, v326, &v403);

              *(v316 + 14) = v328;
              _os_log_impl(&dword_226AB4000, v335, v336, "App (%s) can already access account: %s. Ignoring", v316, 0x16u);
              v329 = v396;
              swift_arrayDestroy();
              v314 = v366;
              MEMORY[0x22AA8BEE0](v329, -1, -1);
              MEMORY[0x22AA8BEE0](v316, -1, -1);
            }

            else
            {

              (*v398)(v312, v333);
            }

            ++v315;
            v313 = v400;
          }

          while (v399 != v315);
        }
      }
    }

LABEL_174:
    v337 = sub_226D6EDFC();
    v118 = v396;
    v119 = v337;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_226C3ECD8(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *a1;
  sub_226C1FE0C(v3, v2, v4);
  return sub_226C21460();
}

uint64_t sub_226C3ED28(uint64_t a1, void *a2, unint64_t a3)
{
  v77 = a3;
  v61 = sub_226D6D52C();
  v60 = *(v61 - 8);
  v4 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = sub_226D67F1C();
  v75 = *(v10 - 8);
  v11 = v75[8];
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6B9BC();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  sub_226D69F0C();
  v21 = v78;
  v22 = sub_226D69E3C();
  if (!v21)
  {
    v24 = v22;
    v25 = v75;
    v78 = v22;
    v79 = v20;
    v72 = v18;
    v73 = v10;
    v74 = v14;
    if (v22 >> 62)
    {
      goto LABEL_29;
    }

    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v27 = v13;
      v28 = v73;
      v29 = v74;
      v30 = v72;
      if (!result)
      {
        break;
      }

      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v59 = 0;
      v31 = 0;
      v77 = v24 & 0xC000000000000001;
      v69 = (v76 + 16);
      v70 = (v25 + 2);
      v67 = (v25 + 1);
      v68 = (v76 + 8);
      *&v23 = 136315394;
      v63 = v23;
      v76 = result;
      v64 = a2;
      v65 = v7;
      v71 = v9;
      v62 = v27;
      do
      {
        if (v77)
        {
          v34 = MEMORY[0x22AA8AFD0](v31, v24);
        }

        else
        {
          v34 = *(v24 + 8 * v31 + 32);
        }

        v35 = v79;
        v75 = v34;
        sub_226D69D5C();
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v36 = sub_226D6E07C();
        __swift_project_value_buffer(v36, qword_27D7A7CF8);
        (*v70)(v27, a2, v28);
        (*v69)(v30, v35, v29);
        v37 = sub_226D6E05C();
        v38 = v27;
        v39 = sub_226D6E9EC();
        if (os_log_type_enabled(v37, v39))
        {
          v40 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v80 = v66;
          *v40 = v63;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
          v41 = v38;
          v42 = sub_226D6F1CC();
          v44 = v43;
          (*v67)(v41, v28);
          v45 = sub_226AC4530(v42, v44, &v80);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2080;
          sub_226C40248(&qword_27D7A6E40, 255, MEMORY[0x277CC8058]);
          v46 = v74;
          v47 = sub_226D6F1CC();
          v49 = v48;
          v50 = v30;
          v51 = *v68;
          (*v68)(v50, v46);
          v52 = sub_226AC4530(v47, v49, &v80);
          a2 = v64;

          *(v40 + 14) = v52;
          _os_log_impl(&dword_226AB4000, v37, v39, "Trying to delete association between app (%s) with account: %s", v40, 0x16u);
          v25 = v66;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v25, -1, -1);
          v53 = v40;
          v7 = v65;
          MEMORY[0x22AA8BEE0](v53, -1, -1);

          v51(v79, v46);
          v27 = v62;
        }

        else
        {

          v32 = v38;
          v25 = v28;
          v33 = *v68;
          (*v68)(v30, v29);
          (*v67)(v32, v25);
          v33(v79, v29);
          v27 = v32;
        }

        ++v31;
        v9 = v71;
        v30 = v72;
        v24 = v78;
        v28 = v73;
        v29 = v74;
      }

      while (v76 != v31);
      v54 = 0;
      v80 = MEMORY[0x277D84FA0];
      v55 = v78 & 0xFFFFFFFFFFFFFF8;
      v56 = (v60 + 8);
      v13 = v61;
      while (1)
      {
        if (v77)
        {
          v57 = MEMORY[0x22AA8AFD0](v54, v24);
        }

        else
        {
          if (v54 >= *(v55 + 16))
          {
            goto LABEL_28;
          }

          v57 = *(v24 + 8 * v54 + 32);
        }

        a2 = v57;
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        sub_226D69EBC();
        v25 = &v80;
        sub_226C2514C(v9, v7);

        (*v56)(v9, v13);
        ++v54;
        v24 = v78;
        if (v58 == v76)
        {
          v20 = v80;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_226D6EDFC();
      v24 = v78;
    }

    v20 = MEMORY[0x277D84FA0];
LABEL_25:
  }

  return v20;
}

uint64_t sub_226C3F420(void *a1, uint64_t a2, char a3, int64_t a4)
{
  v5 = v4;
  v99 = sub_226D6D52C();
  v85 = *(v99 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v99);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v83 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v90 = &v78 - v16;
  v91 = sub_226D67F1C();
  v82 = *(v91 - 8);
  v17 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v91);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  if ((a3 & 1) == 0)
  {

    v80 = a2;
    v23 = a2;
    goto LABEL_5;
  }

  result = sub_226C3ED28(a2, a1, a4);
  if (!v4)
  {
    v23 = result;
    v80 = a2;
LABEL_5:
    sub_226D683BC();
    v24 = sub_226D6836C();
    if (v4)
    {
    }

    v26 = v24;
    v79 = v23;
    if (v24 >> 62)
    {
      goto LABEL_42;
    }

    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v89 = a1;
      v81 = v13;
      v78 = v5;
      if (result)
      {
        v27 = v91;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        v95 = (v82 + 16);
        v96 = v26 & 0xC000000000000001;
        v94 = (v82 + 8);
        v87 = (v85 + 8);
        *&v25 = 136315394;
        v86 = v25;
        v97 = result;
        v98 = v26;
        v88 = a4;
        do
        {
          if (v96)
          {
            v42 = MEMORY[0x22AA8AFD0](v5);
          }

          else
          {
            v42 = *(v26 + 8 * v5 + 32);
          }

          v43 = v42;
          [a4 deleteObject_];
          if (qword_27D7A5F58 != -1)
          {
            swift_once();
          }

          v44 = sub_226D6E07C();
          __swift_project_value_buffer(v44, qword_27D7A7CF8);
          (*v95)(v21, a1, v27);
          v45 = v43;
          v46 = sub_226D6E05C();
          v47 = sub_226D6E9EC();

          if (os_log_type_enabled(v46, v47))
          {
            v28 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v100 = v93;
            *v28 = v86;
            sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
            LODWORD(v92) = v47;
            v29 = sub_226D6F1CC();
            v31 = v30;
            (*v94)(v21, v27);
            v32 = sub_226AC4530(v29, v31, &v100);

            *(v28 + 4) = v32;
            *(v28 + 12) = 2080;
            v33 = [v45 accountID];
            v34 = v90;
            sub_226D6D4FC();

            sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
            v35 = v99;
            v36 = sub_226D6F1CC();
            v38 = v37;
            v39 = v35;
            v27 = v91;
            (v87->isa)(v34, v39);
            v40 = sub_226AC4530(v36, v38, &v100);
            a4 = v88;

            *(v28 + 14) = v40;
            _os_log_impl(&dword_226AB4000, v46, v92, "Removing association between app (%s) with account: %s", v28, 0x16u);
            v41 = v93;
            swift_arrayDestroy();
            a1 = v89;
            MEMORY[0x22AA8BEE0](v41, -1, -1);
            MEMORY[0x22AA8BEE0](v28, -1, -1);
          }

          else
          {

            (*v94)(v21, v27);
          }

          v26 = v98;
          ++v5;
        }

        while (v97 != v5);
      }

      v48 = v79;
      v49 = v80;
      if (*(v79 + 16) <= *(v80 + 16) >> 3)
      {
        v100 = v80;

        sub_226D53B1C(v48);

        v98 = v100;
      }

      else
      {

        v98 = sub_226D53F8C(v48, v49);
      }

      v51 = v99;
      v52 = 0;
      v13 = (v98 + 56);
      v53 = 1 << *(v98 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v21 = v54 & *(v98 + 56);
      v55 = (v53 + 63) >> 6;
      v96 = v85 + 16;
      v56 = v83;
      v94 = (v85 + 32);
      v95 = (v82 + 16);
      v93 = (v85 + 8);
      v92 = (v82 + 8);
      *&v50 = 136315394;
      v86 = v50;
      v97 = v55;
      while (v21)
      {
        a4 = v52;
        v58 = v84;
LABEL_35:
        (*(v85 + 16))(v56, *(v98 + 48) + *(v85 + 72) * (__clz(__rbit64(v21)) | (a4 << 6)), v51);
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v21 &= v21 - 1;
        v59 = sub_226D6E07C();
        __swift_project_value_buffer(v59, qword_27D7A7CF8);
        v5 = v91;
        (*v95)(v58, a1, v91);
        v60 = v81;
        (*v94)(v81, v56, v99);
        v61 = sub_226D6E05C();
        v62 = sub_226D6E9EC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v100 = v90;
          *v63 = v86;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098]);
          LODWORD(v88) = v62;
          v64 = v58;
          v65 = sub_226D6F1CC();
          v87 = v61;
          v66 = v65;
          v68 = v67;
          (*v92)(v64, v5);
          v69 = sub_226AC4530(v66, v68, &v100);

          *(v63 + 4) = v69;
          *(v63 + 12) = 2080;
          sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
          v5 = v99;
          v70 = sub_226D6F1CC();
          v72 = v71;
          (*v93)(v60, v5);
          v73 = sub_226AC4530(v70, v72, &v100);

          *(v63 + 14) = v73;
          v74 = v87;
          _os_log_impl(&dword_226AB4000, v87, v88, "App with bundleId %s cannot already access account: %s. Ignoring deletion", v63, 0x16u);
          v75 = v90;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v75, -1, -1);
          v76 = v63;
          a1 = v89;
          MEMORY[0x22AA8BEE0](v76, -1, -1);

          v52 = a4;
          v51 = v5;
        }

        else
        {

          v57 = v60;
          v51 = v99;
          (*v93)(v57, v99);
          (*v92)(v58, v5);
          v52 = a4;
        }

        v56 = v83;
        v55 = v97;
      }

      v58 = v84;
      while (1)
      {
        a4 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (a4 >= v55)
        {
        }

        v21 = *&v13[8 * a4];
        ++v52;
        if (v21)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_42:
      v77 = v26;
      result = sub_226D6EDFC();
      v26 = v77;
    }
  }

  return result;
}

uint64_t sub_226C3FE1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  return sub_226C20D5C(v3, a2);
}

void sub_226C3FE48(unint64_t a1, void *a2)
{
  v41 = sub_226D6D52C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_226D6EDFC();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v35 = (v4 + 8);
    *&v6 = 136315394;
    v34 = v6;
    v38 = a1;
    v39 = a2;
    v36 = a1 & 0xC000000000000001;
    v37 = v8;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x22AA8AFD0](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      [a2 deleteObject_];
      if (qword_27D7A5F58 != -1)
      {
        swift_once();
      }

      v13 = sub_226D6E07C();
      __swift_project_value_buffer(v13, qword_27D7A7CF8);
      v14 = v12;
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9EC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        *v17 = v34;
        v18 = [v14 bundleID];
        v19 = sub_226D6E39C();
        v21 = v20;

        v22 = sub_226AC4530(v19, v21, &v43);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        v23 = [v14 accountID];
        v24 = v40;
        sub_226D6D4FC();

        sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
        v25 = v41;
        v26 = sub_226D6F1CC();
        v28 = v27;
        v29 = v25;
        v10 = v36;
        (*v35)(v24, v29);
        v30 = sub_226AC4530(v26, v28, &v43);
        v8 = v37;

        *(v17 + 14) = v30;
        _os_log_impl(&dword_226AB4000, v15, v16, "Removing association between app (%s) with account: %s", v17, 0x16u);
        v31 = v42;
        swift_arrayDestroy();
        a1 = v38;
        MEMORY[0x22AA8BEE0](v31, -1, -1);
        v32 = v17;
        a2 = v39;
        MEMORY[0x22AA8BEE0](v32, -1, -1);
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

uint64_t sub_226C40248(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226C402B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C40318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C403AC()
{
  result = sub_226D6D1AC();
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

uint64_t sub_226C404C4()
{
  result = sub_226D67F1C();
  if (v1 <= 0x3F)
  {
    result = sub_226D6D52C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226C40570()
{
  result = sub_226D67F1C();
  if (v1 <= 0x3F)
  {
    result = sub_226D6D52C();
    if (v2 <= 0x3F)
    {
      result = sub_226D6B9BC();
      if (v3 <= 0x3F)
      {
        result = sub_226D67E5C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_226C40708()
{
  result = qword_281062550;
  if (!qword_281062550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062550);
  }

  return result;
}

uint64_t sub_226C4075C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C407BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Permission(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C40820(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8188, &unk_226D77E40);
    sub_226C40248(a2, 255, type metadata accessor for Permission);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226C408C0()
{
  result = qword_27D7A81C8;
  if (!qword_27D7A81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A81C8);
  }

  return result;
}

uint64_t sub_226C40914(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for Permission(0);
  return MEMORY[0x22AA87A30](a1 + *(v4 + 24), v3) & 1;
}

uint64_t getEnumTagSinglePayload for Permission.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Permission.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_226C40AD8()
{
  result = qword_27D7A8318;
  if (!qword_27D7A8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8318);
  }

  return result;
}

unint64_t sub_226C40B30()
{
  result = qword_27D7A8320;
  if (!qword_27D7A8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8320);
  }

  return result;
}

unint64_t sub_226C40B88()
{
  result = qword_27D7A8328;
  if (!qword_27D7A8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8328);
  }

  return result;
}

unint64_t sub_226C40BE0()
{
  result = qword_27D7A8330;
  if (!qword_27D7A8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8330);
  }

  return result;
}

unint64_t sub_226C40C38()
{
  result = qword_281062540;
  if (!qword_281062540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062540);
  }

  return result;
}

unint64_t sub_226C40C90()
{
  result = qword_281062548;
  if (!qword_281062548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062548);
  }

  return result;
}

uint64_t sub_226C40CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_226D6F21C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x634163696C627570 && a2 == 0xEF4449746E756F63 || (sub_226D6F21C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000226D83A90 == a2 || (sub_226D6F21C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000226D83AB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_226D6F21C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_226C40EA4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_226D6BE1C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_226AE200C(0, v10, 0);
  v11 = v23;
  v12 = *(sub_226D6CD7C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226AE200C(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_226C410A8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for OfflineLabAccountInfo();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v25 = MEMORY[0x277D84F90];
    sub_226AE21A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x22AA8AFD0](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      i = v14;
      v24 = v14;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226AE21A0(v15 > 1, v16 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v16 + 1;
      sub_226B51660(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16);
      ++v11;
      if (v13 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_226C412CC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v25 = MEMORY[0x277D84F90];
    sub_226AE22DC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x22AA8AFD0](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      i = v14;
      v24 = v14;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226AE22DC(v15 > 1, v16 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v16 + 1;
      sub_226AFD80C(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, &qword_27D7A6110, &qword_226D70B18);
      ++v11;
      if (v13 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_226C41508(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = MEMORY[0x277D84F90];
  sub_226AE26A0(0, v5, 0);
  v6 = v27;
  v8 = *(sub_226D6904C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v22(v24, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v27 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_226AE26A0((v11 > 1), v12 + 1, 1);
    }

    v13 = v25;
    v14 = v26;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_226C45924(v12, v18, &v27, v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v6 = v27;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_226C41750(void (*a1)(id *), void *a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v21 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v14 = a3;
    v31 = MEMORY[0x277D84F90];
    a3 = &v31;
    (a5)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v31;
    v17 = v14;
    v25 = v14;
    v26 = v14 & 0xC000000000000001;
    v21 = a5;
    v22 = v14 & 0xFFFFFFFFFFFFFF8;
    v23 = v9 + 32;
    v24 = i;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26)
      {
        v19 = MEMORY[0x22AA8AFD0](v15, v17);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * v15 + 32);
      }

      i = v19;
      v30 = v19;
      a3 = v29;
      v28(&v30);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v31 = v16;
      a5 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (a5 >= v20 >> 1)
      {
        a3 = &v31;
        v21(v20 > 1, a5 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = a5 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v12, v27);
      ++v15;
      v17 = v25;
      if (v18 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_226C419A8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v24 = a1;
  v25 = a2;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v30 = MEMORY[0x277D84F90];
    sub_226AE26A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v30;
    v22 = v6;
    v23 = v6 & 0xC000000000000001;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v23)
      {
        v11 = MEMORY[0x22AA8AFD0](v8, v6);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v4 = v11;
      v26 = v11;
      v24(v27, &v26);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v30 = v9;
      v4 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v4 >= v12 >> 1)
      {
        sub_226AE26A0((v12 > 1), v4 + 1, 1);
      }

      v13 = v28;
      v14 = v29;
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v16 = *(*(v13 - 8) + 64);
      MEMORY[0x28223BE20](v15);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_226C45924(v4, v18, &v30, v13, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v9 = v30;
      ++v8;
      v6 = v22;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_226C41BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_226AC40E8(a3, v24 - v10, &unk_27D7A8BA0, &qword_226D734E0);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226D6E6CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_226D6E40C() + 32;
      sub_226D68FEC();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
  sub_226D68FEC();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226C41EA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  if (*(v0 + 248))
  {
    v5 = *(v0 + 248);
  }

  else
  {
    v6 = sub_226D6E79C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    v5 = sub_226C41BF0(0, 0, v4, &unk_226D78328, v7);
    v8 = *(v0 + 248);
    *(v0 + 248) = v5;
  }

  return v5;
}

uint64_t sub_226C41FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_226C41FFC, 0, 0);
}

uint64_t sub_226C41FFC()
{
  v1 = *(v0 + 64);
  sub_226D68FEC();
  sub_226AE532C(v1 + 120, v0 + 16);
  v2 = *(MEMORY[0x277CC76D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_226B04A34;

  return MEMORY[0x2821185B0](v0 + 16);
}

uint64_t sub_226C420B0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_226C420D8, v3, 0);
}

uint64_t sub_226C420D8()
{
  v1 = *(*(v0 + 32) + 112);
  v2 = sub_226D676AC();
  *(v0 + 40) = v2;
  *(swift_task_alloc() + 16) = v2;
  sub_226D6EB8C();
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 72);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_226C42260;
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_226C42D18(v9, &unk_226D782D8, v6);
}

uint64_t sub_226C42260()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_226C423EC;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_226C42388;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226C42388()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C423EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226C42458(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 120) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x2822009F8](sub_226C4247C, a2, 0);
}

uint64_t sub_226C4247C()
{
  v1 = *(v0 + 32);
  v2 = sub_226C42A88(*(v0 + 24), *(v0 + 120), *(v0 + 40));
  *(v0 + 56) = v2;
  if (*(v2 + 16))
  {
    v4 = *(v0 + 32);
    v5 = sub_226C41EA8();
    *(v0 + 64) = v5;
    v6 = *(MEMORY[0x277D857C8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    v8 = sub_226D68FEC();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    *v7 = v0;
    v7[1] = sub_226C425D0;
    v10 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 16, v5, v8, v9, v10);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_226C425D0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {
    v6 = v2[7];
    v7 = v2[4];

    v8 = sub_226C42A00;
    v9 = v7;
  }

  else
  {
    v10 = v2[4];

    v8 = sub_226C42728;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_226C42728()
{
  v0[11] = v0[2];
  v1 = *(MEMORY[0x277CC76C8] + 4);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_226C427C8;
  v3 = v0[7];

  return MEMORY[0x2821185A8](v3);
}

uint64_t sub_226C427C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_226C42A18;
  }

  else
  {
    v8 = sub_226C428FC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226C428FC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 120);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v3;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = v2;
  *(v8 + 56) = v4;
  sub_226D6EB7C();
  v9 = *(v0 + 104);
  v10 = *(v0 + 88);
  v11 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226C42A18()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_226C42A88(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v3;
  v25 = a3;
  v24 = a2;
  v23 = a1;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8350, &qword_226D78330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = v3[29];
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  sub_226D6D46C();
  sub_226D6C00C();
  if (v4)
  {

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  (*(v7 + 8))(v10, v6);
  v17 = sub_226D6B40C();
  v18 = (*(*(v17 - 8) + 56))(v14, v16, 1, v17);
  MEMORY[0x28223BE20](v18);
  v19 = v23;
  *(&v22 - 6) = v5;
  *(&v22 - 5) = v19;
  *(&v22 - 32) = v24 & 1;
  *(&v22 - 3) = v25;
  *(&v22 - 2) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8358, &qword_226D78338);
  sub_226D6EB8C();
  v20 = v26;
  sub_226AC47B0(v14, &qword_27D7A8350, &qword_226D78330);
  return v20;
}

uint64_t sub_226C42D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](sub_226C42D3C, v3, 0);
}

uint64_t sub_226C42D3C()
{
  v1 = v0[17];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v1 + 240);
  v4 = *(v2 + 16);
  v5 = v0[14];
  if (*(v3 + 16) <= v4 >> 3)
  {
    v16 = v0[14];

    sub_226D53B1C(v3);

    v7 = v16;
  }

  else
  {
    v6 = *(v1 + 240);

    v7 = sub_226D53F8C(v3, v5);
  }

  v0[18] = v7;
  if (*(v7 + 16))
  {
    v8 = v0[15];
    swift_beginAccess();

    sub_226B04508(v9);
    swift_endAccess();
    v15 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_226C42F44;
    v12 = v0[16];

    return v15(v7);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_226C42F44()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_226C43100;
  }

  else
  {
    v6 = sub_226C43070;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226C43070()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C43100()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_226C43190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v28 = a6;
  v27 = a5;
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226B23E98(MEMORY[0x277D84F90]);
  v15 = *__swift_project_boxed_opaque_existential_1((a1 + 160), *(a1 + 184));
  sub_226D6D46C();
  v16 = a2;
  v17 = a4;
  v18 = v29;
  v19 = sub_226D47648(v16, 1, a3, v14, a4);
  if (v18)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v20 = v19;
    (*(v11 + 8))(v14, v10);
    v21 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
    v22 = MEMORY[0x28223BE20](v21);
    *(&v26 - 6) = &v30;
    *(&v26 - 5) = a1;
    *(&v26 - 4) = v22;
    *(&v26 - 3) = v17;
    *(&v26 - 2) = v27;
    sub_226C41750(sub_226C45AEC, &v26 - 8, v20, MEMORY[0x277CC7DD0], sub_226AE2878);
    v24 = v23;

    *v28 = v24;
  }
}

uint64_t sub_226C433BC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a6;
  v30 = a4;
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8350, &qword_226D78330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_226D6B9BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = [*a1 accountObject];
  sub_226D69D5C();

  v20 = *a2;
  if (*(*a2 + 16) && (v21 = sub_226C3064C(v17), (v22 & 1) != 0))
  {
    v23 = *(v20[7] + 8 * v21);
  }

  else
  {
    v24 = [v18 accountObject];
    v33 = a3;
    v25 = sub_226C45B14(v24, &v33);

    v26 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a2;
    *a2 = 0x8000000000000000;
    sub_226BE676C(v25, v17, isUniquelyReferenced_nonNull_native);
    *a2 = v33;
  }

  sub_226AC40E8(v31, v12, &qword_27D7A8350, &qword_226D78330);
  v28 = v18;
  sub_226D6AFDC();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_226C435E8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v144 = a6;
  v143 = a5;
  v146 = a4;
  v163 = *MEMORY[0x277D85DE8];
  v138 = sub_226D6B32C();
  v123 = *(v138 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = &v122 - v13;
  v136 = sub_226D69FAC();
  v122 = *(v136 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x28223BE20](v136 - 8);
  v134 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8338, &qword_226D782F8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v145 = &v122 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8340, &unk_226D78300);
  v19 = *(*(v141 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v141);
  v140 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v139 = &v122 - v22;
  v157 = sub_226D68E0C();
  v23 = *(v157 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_226D6AFEC();
  v26 = *(v155 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v155);
  *&v154 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_226D6D52C();
  v29 = *(v158 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v158);
  v147 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v122 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v125 = &v122 - v37;
  v128 = sub_226D680EC();
  v127 = *(v128 - 8);
  v38 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_226D6D4AC();
  v130 = *(v131 - 8);
  v40 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v42 = (&v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = a1;
  sub_226AE532C(a1 + 160, &v160);
  v129 = __swift_project_boxed_opaque_existential_1(&v160, v161);
  v43 = *(a2 + 16);
  v133 = v42;
  if (v43)
  {
    v124 = a3;
    v159 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v43, 0);
    v44 = v159;
    v46 = *(v26 + 16);
    v45 = v26 + 16;
    v152 = v46;
    v47 = v23;
    v48 = a2 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v151 = *(v45 + 56);
    v150 = (v47 + 8);
    v153 = v45;
    v149 = (v45 - 8);
    v148 = (v29 + 4);
    do
    {
      v49 = v29;
      v50 = v154;
      v51 = v155;
      (v152)(v154, v48, v155);
      v52 = v156;
      sub_226D6AFCC();
      sub_226D68DFC();
      (*v150)(v52, v157);
      (*v149)(v50, v51);
      v159 = v44;
      v54 = *(v44 + 16);
      v53 = *(v44 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_226AE20D4(v53 > 1, v54 + 1, 1);
        v44 = v159;
      }

      *(v44 + 16) = v54 + 1;
      v29 = v49;
      (v49[4])(v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v49[9] * v54, v34, v158);
      v48 += v151;
      --v43;
    }

    while (v43);
    v42 = v133;
    LOBYTE(a3) = v124;
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
  }

  v56 = sub_226AE45DC(v44);

  v57 = *v129;
  sub_226D6D46C();
  v159 = v55;
  v58 = 0x277CCA000;
  v156 = v56;
  if ((a3 & 1) == 0)
  {
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D72B90;
    *(inited + 32) = sub_226D47C8C();
    *(inited + 40) = sub_226D48234();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v157 = v57;
    v153 = "ClassificationDataLoader";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v60 = swift_allocObject();
    v154 = xmmword_226D70840;
    *(v60 + 16) = xmmword_226D70840;
    v61 = v127;
    v62 = v126;
    v63 = v128;
    (*(v127 + 104))(v126, *MEMORY[0x277CC7158], v128);
    v64 = sub_226D680DC();
    (*(v61 + 8))(v62, v63);
    v65 = MEMORY[0x277D849A0];
    *(v60 + 56) = MEMORY[0x277D84958];
    *(v60 + 64) = v65;
    *(v60 + 32) = v64;
    v42 = v133;
    v57 = v157;
    *(inited + 48) = sub_226D6E91C();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_226D71F40;
    *(v66 + 32) = sub_226D6E91C();
    v67 = swift_allocObject();
    *(v67 + 16) = v154;
    v68 = sub_226D6D3EC();
    *(v67 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v67 + 64) = sub_226C19454();
    *(v67 + 32) = v68;
    *(v66 + 40) = sub_226D6E91C();
    v58 = 0x277CCA000uLL;
    v69 = sub_226D6E5CC();

    v70 = [objc_opt_self() orPredicateWithSubpredicates_];

    *(inited + 56) = v70;
    sub_226CEE1A0(inited);
  }

  sub_226D6AC0C();
  sub_226D6ABAC();
  MEMORY[0x22AA8A610]();
  v71 = v145;
  if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    sub_226D6E65C();
    v72 = sub_226D6AAFC();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v73 = sub_226D6E5CC();

    v74 = *(v58 + 2336);
    v75 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v72 setPredicate_];
    v76 = *(v57 + 24);
    sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    v77 = sub_226D6E5CC();
    [v72 setSortDescriptors_];

    [v72 setReturnsObjectsAsFaults_];
    if (*(v57 + 48))
    {
      v78 = sub_226D6E5CC();
    }

    else
    {
      v78 = 0;
    }

    [v72 setRelationshipKeyPathsForPrefetching_];

    if ((*(v57 + 40) & 1) == 0)
    {
      [v72 setFetchLimit_];
    }

    v79 = v132;
    v80 = sub_226D6EBBC();
    v157 = v79;
    if (v79)
    {

      (*(v130 + 8))(v42, v131);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v160);
      goto LABEL_46;
    }

    v58 = v80;

    (*(v130 + 8))(v42, v131);
    __swift_destroy_boxed_opaque_existential_0Tm(&v160);
    v82 = sub_226D6974C();
    (*(*(v82 - 8) + 56))(v125, 1, 1, v82);
    v83 = sub_226D6973C();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    v86 = sub_226D6972C();
    v161 = v83;
    v162 = MEMORY[0x277CC78A8];
    v160 = v86;
    v87 = sub_226D6C49C();
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    v155 = sub_226D6C48C();
    v90 = v58 >> 62 ? sub_226D6EDFC() : *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v57 = v139;
    if (!v90)
    {
      break;
    }

    v91 = 0;
    *&v154 = v58 & 0xC000000000000001;
    v133 = v58 & 0xFFFFFFFFFFFFFF8;
    v149 = (v122 + 32);
    v151 = (v122 + 8);
    v153 = (v29 + 1);
    v148 = (v123 + 32);
    v150 = (v123 + 8);
    v42 = &qword_226D782F0;
    v152 = v90;
    while (1)
    {
      if (v154)
      {
        v92 = MEMORY[0x22AA8AFD0](v91, v58);
      }

      else
      {
        if (v91 >= *(v133 + 16))
        {
          goto LABEL_48;
        }

        v92 = *(v58 + 8 * v91 + 32);
      }

      v29 = v92;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      v156 = (v91 + 1);
      v93 = [v92 publicTransactionObject];
      v94 = [v93 id];

      v95 = v147;
      sub_226D6D4FC();

      v96 = v143;
      if (*(v143 + 16))
      {
        v97 = sub_226C3049C(v95);
        if (v98)
        {
          v99 = v97;
          v100 = *(v96 + 56);
          v101 = sub_226D6B33C();
          v102 = *(v101 - 8);
          v103 = v102;
          v104 = v100 + *(v102 + 72) * v99;
          v71 = v145;
          (*(v102 + 16))(v145, v104, v101);
          (*(v103 + 56))(v71, 0, 1, v101);
          v57 = v139;
        }

        else
        {
          v106 = sub_226D6B33C();
          (*(*(v106 - 8) + 56))(v71, 1, 1, v106);
        }

        v95 = v147;
      }

      else
      {
        v105 = sub_226D6B33C();
        (*(*(v105 - 8) + 56))(v71, 1, 1, v105);
      }

      sub_226C44964(v71, v95, v57);
      sub_226AC47B0(v71, &qword_27D7A8338, &qword_226D782F8);
      v107 = v140;
      sub_226AC40E8(v57, v140, &qword_27D7A8340, &unk_226D78300);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v108 = v137;
        v109 = v138;
        (*v148)(v137, v107, v138);
        v110 = v157;
        sub_226D6C45C();
        v157 = v110;
        if (v110)
        {

          (*v150)(v108, v109);
          v120 = v57;
LABEL_45:
          sub_226AC47B0(v120, &qword_27D7A8340, &unk_226D78300);
          result = (*v153)(v147, v158);
          goto LABEL_46;
        }

        (*v150)(v108, v109);
      }

      else
      {
        v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8348, &unk_226D78310) + 48);
        v112 = v134;
        v113 = v136;
        (*v149)(v134, v107, v136);
        v114 = v107 + v111;
        v115 = v135;
        sub_226AFD80C(v114, v135, &qword_27D7A6828, &qword_226D782F0);
        v116 = v157;
        sub_226D6C47C();
        v157 = v116;
        if (v116)
        {

          sub_226AC47B0(v115, &qword_27D7A6828, &qword_226D782F0);
          (*v151)(v112, v113);
          v120 = v139;
          goto LABEL_45;
        }

        sub_226AC47B0(v115, &qword_27D7A6828, &qword_226D782F0);
        (*v151)(v112, v113);
        v57 = v139;
        v71 = v145;
      }

      sub_226AC47B0(v57, &qword_27D7A8340, &unk_226D78300);
      (*v153)(v147, v158);
      ++v91;
      if (v156 == v152)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    sub_226D6E61C();
  }

LABEL_39:

  v160 = 0;
  if ([v146 save_])
  {
    v117 = v160;
  }

  else
  {
    v118 = v160;
    v119 = sub_226D6D04C();

    v157 = v119;
    swift_willThrow();
  }

LABEL_46:
  v121 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226C44964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v92 = a2;
  v95 = a3;
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v90 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v89 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v89 = &v89 - v13;
  MEMORY[0x28223BE20](v12);
  v91 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v89 - v17;
  v19 = sub_226D69FAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8338, &qword_226D782F8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v89 - v29;
  sub_226AC40E8(a1, &v89 - v29, &qword_27D7A8338, &qword_226D782F8);
  v31 = sub_226D6B33C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F710);
    v35 = v93;
    v34 = v94;
    (*(v94 + 16))(v11, v92, v93);
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9CC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v96 = v39;
      *v38 = 136315138;
      sub_226C459BC();
      v40 = sub_226D6F1CC();
      v42 = v41;
      (*(v34 + 8))(v11, v35);
      v43 = sub_226AC4530(v40, v42, &v96);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_226AB4000, v36, v37, "Classification for transaction %s missing.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v11, v35);
    }

    v50 = v95;
    v51 = MEMORY[0x277CC7E80];
LABEL_10:
    v52 = *v51;
    v53 = sub_226D6B32C();
    (*(*(v53 - 8) + 104))(v50, v52, v53);
    goto LABEL_11;
  }

  sub_226AC40E8(v30, v28, &qword_27D7A8338, &qword_226D782F8);
  v44 = (*(v32 + 88))(v28, v31);
  if (v44 != *MEMORY[0x277CC7EA0])
  {
    if (v44 == *MEMORY[0x277CC7EA8])
    {
      v56 = v93;
      v55 = v94;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v57 = sub_226D6E07C();
      __swift_project_value_buffer(v57, qword_28105F710);
      v58 = v91;
      (*(v55 + 16))(v91, v92, v56);
      v59 = sub_226D6E05C();
      v60 = sub_226D6E9CC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v96 = v62;
        *v61 = 136315138;
        sub_226C459BC();
        v63 = sub_226D6F1CC();
        v65 = v64;
        (*(v55 + 8))(v58, v56);
        v66 = sub_226AC4530(v63, v65, &v96);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_226AB4000, v59, v60, "Classification for transaction %s was throttled.", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x22AA8BEE0](v62, -1, -1);
        MEMORY[0x22AA8BEE0](v61, -1, -1);
      }

      else
      {

        (*(v55 + 8))(v58, v56);
      }

      v50 = v95;
      v51 = MEMORY[0x277CC7E90];
    }

    else
    {
      v68 = v93;
      v67 = v94;
      if (v44 == *MEMORY[0x277CC7E98])
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v69 = sub_226D6E07C();
        __swift_project_value_buffer(v69, qword_28105F710);
        v70 = v89;
        (*(v67 + 16))(v89, v92, v68);
        v71 = sub_226D6E05C();
        v72 = sub_226D6E9CC();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v96 = v74;
          *v73 = 136315138;
          sub_226C459BC();
          v75 = sub_226D6F1CC();
          v77 = v76;
          (*(v67 + 8))(v70, v68);
          v78 = sub_226AC4530(v75, v77, &v96);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_226AB4000, v71, v72, "Classification for transaction %s failed.", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x22AA8BEE0](v74, -1, -1);
          MEMORY[0x22AA8BEE0](v73, -1, -1);
        }

        else
        {

          (*(v67 + 8))(v70, v68);
        }

        v50 = v95;
        v51 = MEMORY[0x277CC7E78];
      }

      else
      {
        (*(v32 + 8))(v28, v31);
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v79 = sub_226D6E07C();
        __swift_project_value_buffer(v79, qword_28105F710);
        v80 = v90;
        (*(v67 + 16))(v90, v92, v68);
        v81 = sub_226D6E05C();
        v82 = sub_226D6E9CC();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v96 = v84;
          *v83 = 136315138;
          sub_226C459BC();
          v85 = sub_226D6F1CC();
          v87 = v86;
          (*(v67 + 8))(v80, v68);
          v88 = sub_226AC4530(v85, v87, &v96);

          *(v83 + 4) = v88;
          _os_log_impl(&dword_226AB4000, v81, v82, "Classification for transaction %s returned with unknown result.", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          MEMORY[0x22AA8BEE0](v84, -1, -1);
          MEMORY[0x22AA8BEE0](v83, -1, -1);
        }

        else
        {

          (*(v67 + 8))(v80, v68);
        }

        v50 = v95;
        v51 = MEMORY[0x277CC7E88];
      }
    }

    goto LABEL_10;
  }

  (*(v32 + 96))(v28, v31);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8348, &unk_226D78310);
  v46 = *(v45 + 48);
  v47 = *(v20 + 32);
  v47(v23, v28, v19);
  sub_226AFD80C(&v28[v46], v18, &qword_27D7A6828, &qword_226D782F0);
  v48 = *(v45 + 48);
  v49 = v95;
  v47(v95, v23, v19);
  sub_226AFD80C(v18, &v49[v48], &qword_27D7A6828, &qword_226D782F0);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8340, &unk_226D78300);
  swift_storeEnumTagMultiPayload();
  return sub_226AC47B0(v30, &qword_27D7A8338, &qword_226D782F8);
}

uint64_t sub_226C45444()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  v2 = v0[30];

  v3 = v0[31];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226C454C8(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  v4 = sub_226D6D4AC();
  *(v3 + 24) = v4;
  v5 = *(v4 - 8);
  *(v3 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;

  return MEMORY[0x2822009F8](sub_226C4558C, v8, 0);
}

uint64_t sub_226C4558C()
{
  v1 = *(v0 + 40);
  sub_226D6D46C();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_226C45630;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 16);

  return sub_226C420B0(v6, v5, v3);
}

uint64_t sub_226C45630()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[6];

    return MEMORY[0x2822009F8](sub_226C457D8, v7, 0);
  }

  else
  {
    v8 = v6[5];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_226C457D8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_226C4583C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226C42458(a1, v4, v5, v7, v6);
}

uint64_t sub_226C45924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226B6B030(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_226C459BC()
{
  result = qword_27D7A6648;
  if (!qword_27D7A6648)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6648);
  }

  return result;
}

uint64_t sub_226C45A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226C41FDC(a1, v4, v5, v6);
}

uint64_t sub_226C45B14(void *a1, void **a2)
{
  v3 = *a2;
  sub_226D6842C();
  v4 = [a1 institutionId];
  sub_226D6E39C();

  v5 = sub_226D683EC();

  v6 = v5;
  if (v5 && (v7 = v6, v8 = [v6 piiRedactionConfiguration], v7, v8))
  {
    v9 = [v8 countryCodes];

    v10 = sub_226D6E89C();
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  v21 = v10;
  v11 = [a1 externalAccountId];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v3 passWithFPANIdentifier_];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [v13 issuerCountryCode];
  if (!v14)
  {

LABEL_10:
    return v10;
  }

  v15 = v14;
  v16 = sub_226D6E39C();
  v18 = v17;

  sub_226C24D14(&v20, v16, v18);

  return v21;
}

uint64_t sub_226C45EE0(void *a1)
{
  v28 = a1;
  v2 = sub_226D6DF7C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D66DBC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277CC64F0];
  v11 = v6[13];
  v11(v9, v10, v5);
  v12 = sub_226D66D6C();
  v13 = v6[1];
  result = v13(v9, v5);
  if (v12)
  {
    v23 = v1;
    v15 = [v28 trackedOrderIdentifier];
    v22 = sub_226D6E39C();
    v17 = v16;

    v11(v9, v10, v5);
    LOBYTE(v15) = sub_226D66D6C();
    v13(v9, v5);
    if ((v15 & 1) != 0 && (v18 = __swift_project_boxed_opaque_existential_1(v27, v27[3]), MEMORY[0x28223BE20](v18), v19 = v23, *(&v22 - 2) = v22, *(&v22 - 1) = v17, sub_226C470C0(), v19))
    {
    }

    else
    {

      v20 = v28;
      v21 = v24;
      sub_226C461D4(v20, v24);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_226C47028();
      return (*(v25 + 8))(v21, v26);
    }
  }

  return result;
}

size_t sub_226C461D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = sub_226D6DD0C();
  v4 = *(v124 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v124);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D677FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8368, &unk_226D783C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = (&v101 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v110 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v109 = &v101 - v19;
  MEMORY[0x28223BE20](v18);
  v106 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8370, &qword_226D783D8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v102 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8378, &qword_226D783E0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v101 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8380, &qword_226D783E8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v122 = &v101 - v29;
  v121 = sub_226D6D24C();
  v119 = *(v121 - 8);
  v30 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v117 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_226D6D26C();
  v118 = *(v120 - 8);
  v32 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_226D6D61C();
  v114 = *(v34 - 8);
  v115 = v34;
  v35 = *(v114 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v113 = &v101 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v101 - v43;
  v105 = sub_226D6CEAC();
  v104 = *(v105 - 8);
  v45 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v47 = &v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DF6C();
  v48 = [a1 orderContent];
  v111 = a1;
  v112 = v48;
  v49 = [a1 trackedOrderIdentifier];
  sub_226D6E39C();

  sub_226D6DA3C();
  v50 = [v48 orderNumber];
  sub_226D6E39C();

  v123 = a2;
  sub_226D6DB3C();
  v51 = sub_226D6D6DC();
  v52 = *(*(v51 - 8) + 56);
  v52(v44, 1, 1, v51);
  v53 = sub_226D6D71C();
  (*(*(v53 - 8) + 56))(v113, 1, 1, v53);
  sub_226D6CE8C();
  v55 = v114;
  v54 = v115;
  (*(v114 + 104))(v37, *MEMORY[0x277CC9810], v115);
  sub_226D6D62C();
  (*(v55 + 8))(v37, v54);
  v52(v44, 0, 1, v51);
  v56 = v112;
  sub_226D6CE9C();
  v57 = [v56 orderDateYear];
  v58 = v57;
  if (v57)
  {
    [v57 integerValue];
  }

  sub_226D6CE3C();
  v59 = [v56 orderDateMonth];
  v60 = v59;
  if (v59)
  {
    [v59 integerValue];
  }

  sub_226D6CE5C();
  v61 = [v56 orderDateDay];
  v62 = v61;
  if (v61)
  {
    [v61 integerValue];
  }

  sub_226D6CDFC();
  v63 = [v56 orderTimeHours];
  v64 = v63;
  if (v63)
  {
    [v63 integerValue];
  }

  sub_226D6CE1C();
  v65 = [v56 orderTimeMinutes];
  v66 = v65;
  if (v65)
  {
    [v65 integerValue];
  }

  sub_226D6CE6C();
  v67 = [v56 orderTimeSeconds];
  v68 = v67;
  if (v67)
  {
    [v67 integerValue];
  }

  sub_226D6CE7C();
  (*(v119 + 104))(v117, *MEMORY[0x277CC85C8], v121);
  v69 = v116;
  sub_226D6D27C();
  sub_226D6D25C();
  (*(v118 + 8))(v69, v120);
  sub_226D6DF5C();
  v70 = v56;
  v71 = v122;
  sub_226C471C0(v70);
  v72 = sub_226D6DF2C();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  sub_226D6DF4C();
  v73 = sub_226D6B30C();
  v74 = v73;
  if (v73 >> 62)
  {
    v75 = sub_226D6EDFC();
  }

  else
  {
    v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v47;
  if (v75)
  {
    v125 = MEMORY[0x277D84F90];
    result = sub_226AE1F84(0, v75 & ~(v75 >> 63), 0);
    if (v75 < 0)
    {
      __break(1u);
      return result;
    }

    v122 = v70;
    v77 = 0;
    v78 = v125;
    do
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x22AA8AFD0](v77, v74);
      }

      else
      {
        v79 = *(v74 + 8 * v77 + 32);
      }

      sub_226C47374(v79, v7);
      v125 = v78;
      v81 = *(v78 + 16);
      v80 = *(v78 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_226AE1F84(v80 > 1, v81 + 1, 1);
        v78 = v125;
      }

      ++v77;
      *(v78 + 16) = v81 + 1;
      (*(v4 + 32))(v78 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v81, v7, v124);
    }

    while (v75 != v77);

    v70 = v122;
  }

  else
  {
  }

  sub_226D6DD1C();
  v82 = v70;
  sub_226C49208(v82, v101);
  sub_226D6DF3C();
  v83 = v82;
  sub_226C49590(v83, v102);
  sub_226D6DE3C();
  v84 = [v83 orderUpdateDate];
  v85 = v106;
  sub_226D6D45C();

  v86 = sub_226D6D4AC();
  v87 = *(*(v86 - 8) + 56);
  v88 = 1;
  v87(v85, 0, 1, v86);
  sub_226D6DB5C();
  v89 = v107;
  sub_226D6B2EC();
  v90 = v108;
  sub_226C49B64(v89, v108);
  v91 = sub_226D6DA4C();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  sub_226D6DB4C();
  v92 = [v83 orderStatusUpdateDate];
  v94 = v109;
  v93 = v110;
  if (v92)
  {
    v95 = v92;
    sub_226D6D45C();

    v88 = 0;
  }

  v96 = 1;
  v87(v94, v88, 1, v86);
  sub_226D6DD3C();
  v97 = [v83 earliestEmailDateSent];
  if (v97)
  {
    v98 = v97;
    sub_226D6D45C();

    v96 = 0;
  }

  v99 = v111;
  v100 = v105;
  v87(v93, v96, 1, v86);
  sub_226D6DD2C();

  return (*(v104 + 8))(v103, v100);
}

uint64_t sub_226C46FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_226D6DA2C();
  if (v7)
  {
    if (v6 == a3 && v7 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_226D6F21C();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_226C47028()
{
  sub_226D6D7FC();
  sub_226C47160();
  result = sub_226D6D81C();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226D6DF9C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  return result;
}

uint64_t sub_226C470C0()
{
  sub_226D6D7FC();
  sub_226C47160();
  result = sub_226D6D80C();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226D6DF8C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  return result;
}

unint64_t sub_226C47160()
{
  result = qword_27D7A8360;
  if (!qword_27D7A8360)
  {
    sub_226D6D7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8360);
  }

  return result;
}

void sub_226C471C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_226D6DF1C();
  v6 = [a1 merchantDisplayName];
  sub_226D6E39C();

  sub_226D6DEFC();
  v7 = [a1 merchantDisplayNameUpdateDate];
  if (v7)
  {
    v8 = v7;
    sub_226D6D45C();

    v9 = sub_226D6D4AC();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v10 = sub_226D6D4AC();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_226D6DF0C();
  v11 = [a1 merchantDomain];
  if (v11)
  {
    v12 = v11;
    sub_226D6E39C();
  }

  sub_226D6DC6C();
}

uint64_t sub_226C47374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v150 = &v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8398, &qword_226D78400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v145 - v9;
  v174 = sub_226D6D24C();
  v177 = *(v174 - 8);
  v10 = *(v177 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_226D6D26C();
  v176 = *(v173 - 8);
  v12 = *(v176 + 64);
  MEMORY[0x28223BE20](v173);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_226D6D61C();
  v175 = *(v171 - 8);
  v15 = *(v175 + 64);
  MEMORY[0x28223BE20](v171);
  v153 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v145 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v145 - v23;
  v148 = sub_226D6CEAC();
  v147 = *(v148 - 8);
  v25 = *(v147 + 64);
  v26 = MEMORY[0x28223BE20](v148);
  v146 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v160 = &v145 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v145 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v158 = &v145 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v157 = &v145 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v156 = &v145 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v155 = &v145 - v39;
  MEMORY[0x28223BE20](v38);
  v154 = &v145 - v40;
  v41 = sub_226D6C69C();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A0, &qword_226D78408);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = (&v145 - v47);
  sub_226D6DCFC();
  sub_226D6C6AC();
  sub_226C49DF0(v44, v48);
  v49 = sub_226D6DCDC();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v178 = a2;
  sub_226D6DCEC();
  v50 = [a1 trackingNumber];
  if (v50)
  {
    v51 = v50;
    sub_226D6E39C();
  }

  sub_226D6DC6C();
  v52 = [a1 carrierName];
  if (v52)
  {
    v53 = v52;
    sub_226D6E39C();
  }

  sub_226D6DC0C();
  v54 = [a1 shippingMethod];
  v145 = v14;
  if (v54)
  {
    v55 = v54;
    sub_226D6E39C();
  }

  sub_226D6DC5C();
  v56 = sub_226D6D6DC();
  v57 = *(v56 - 8);
  v58 = *(v57 + 56);
  v59 = v57 + 56;
  v58(v24, 1, 1, v56);
  v60 = sub_226D6D71C();
  v61 = *(v60 - 8);
  v168 = *(v61 + 56);
  v169 = v60;
  v167 = v61 + 56;
  v168(v20, 1, 1);
  v62 = v20;
  sub_226D6CE8C();
  v63 = v175;
  v64 = *(v175 + 104);
  v65 = v153;
  v165 = *MEMORY[0x277CC9810];
  v66 = v171;
  v166 = v175 + 104;
  v164 = v64;
  v64(v153);
  sub_226D6D62C();
  v67 = *(v63 + 8);
  v175 = v63 + 8;
  v163 = v67;
  v67(v65, v66);
  v68 = v56;
  v69 = v56;
  v70 = v58;
  v170 = v59;
  v58(v24, 0, 1, v69);
  sub_226D6CE9C();
  v71 = [a1 shippingDateYear];
  v72 = v71;
  if (v71)
  {
    [v71 integerValue];
  }

  sub_226D6CE3C();
  v73 = [a1 shippingDateMonth];
  v74 = v73;
  v75 = v62;
  if (v73)
  {
    [v73 &selRef_dealloc];
  }

  v76 = v68;
  v77 = v145;
  sub_226D6CE5C();
  v78 = [a1 shippingDateDay];
  v79 = v78;
  v80 = v153;
  if (v78)
  {
    [v78 integerValue];
  }

  sub_226D6CDFC();
  v81 = *(v177 + 104);
  v152 = *MEMORY[0x277CC85D0];
  v177 += 104;
  v162 = v81;
  v81(v172);
  sub_226D6D27C();
  sub_226D6D25C();
  v82 = *(v176 + 8);
  v176 += 8;
  v161 = v82;
  v82(v77, v173);
  sub_226D6DC3C();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v83 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v83);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v84 = [a1 shippingTimeHours];
  v85 = v84;
  if (v84)
  {
    [v84 integerValue];
  }

  sub_226D6CE1C();
  v86 = [a1 shippingTimeMinutes];
  v87 = v86;
  if (v86)
  {
    [v86 integerValue];
  }

  sub_226D6CE6C();
  v88 = [a1 shippingTimeSeconds];
  v89 = v88;
  if (v88)
  {
    [v88 integerValue];
  }

  sub_226D6CE7C();
  v151 = *MEMORY[0x277CC85D8];
  v162(v172);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DC4C();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v90 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v90);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v91 = [a1 estimatedDeliveryStartDateYear];
  v92 = v91;
  if (v91)
  {
    [v91 integerValue];
  }

  sub_226D6CE3C();
  v93 = [a1 estimatedDeliveryStartDateMonth];
  v94 = v93;
  if (v93)
  {
    [v93 integerValue];
  }

  sub_226D6CE5C();
  v95 = [a1 estimatedDeliveryStartDateDay];
  v96 = v95;
  if (v95)
  {
    [v95 integerValue];
  }

  sub_226D6CDFC();
  (v162)(v172, v152, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DCBC();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v97 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v97);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v98 = [a1 estimatedDeliveryStartTimeHours];
  v99 = v98;
  if (v98)
  {
    [v98 integerValue];
  }

  sub_226D6CE1C();
  v100 = [a1 estimatedDeliveryStartTimeMinutes];
  v101 = v100;
  if (v100)
  {
    [v100 integerValue];
  }

  sub_226D6CE6C();
  v102 = [a1 estimatedDeliveryStartTimeSeconds];
  v103 = v102;
  if (v102)
  {
    [v102 integerValue];
  }

  sub_226D6CE7C();
  (v162)(v172, v151, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DCCC();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v104 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v104);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v105 = [a1 estimatedDeliveryEndDateYear];
  v106 = v105;
  if (v105)
  {
    [v105 integerValue];
  }

  sub_226D6CE3C();
  v107 = [a1 estimatedDeliveryEndDateMonth];
  v108 = v107;
  if (v107)
  {
    [v107 integerValue];
  }

  sub_226D6CE5C();
  v109 = [a1 estimatedDeliveryEndDateDay];
  v110 = v109;
  if (v109)
  {
    [v109 integerValue];
  }

  sub_226D6CDFC();
  (v162)(v172, v152, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DC9C();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v111 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v111);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v112 = [a1 estimatedDeliveryEndTimeHours];
  v113 = v112;
  if (v112)
  {
    [v112 integerValue];
  }

  sub_226D6CE1C();
  v114 = [a1 estimatedDeliveryEndTimeMinutes];
  v115 = v114;
  if (v114)
  {
    [v114 integerValue];
  }

  sub_226D6CE6C();
  v116 = [a1 estimatedDeliveryEndTimeSeconds];
  v117 = v116;
  if (v116)
  {
    [v116 integerValue];
  }

  sub_226D6CE7C();
  (v162)(v172, v151, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DCAC();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  sub_226D6CE8C();
  v118 = v171;
  v164(v80, v165, v171);
  sub_226D6D62C();
  v163(v80, v118);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v119 = [a1 deliveryDateYear];
  v120 = v119;
  if (v119)
  {
    [v119 integerValue];
  }

  sub_226D6CE3C();
  v121 = [a1 deliveryDateMonth];
  v122 = v121;
  if (v121)
  {
    [v121 integerValue];
  }

  sub_226D6CE5C();
  v123 = [a1 deliveryDateDay];
  v124 = v123;
  if (v123)
  {
    [v123 integerValue];
  }

  sub_226D6CDFC();
  (v162)(v172, v152, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DC1C();
  v70(v24, 1, 1, v76);
  (v168)(v75, 1, 1, v169);
  v125 = v146;
  sub_226D6CE8C();
  v126 = v153;
  v127 = v171;
  v164(v153, v165, v171);
  sub_226D6D62C();
  v128 = v126;
  v129 = v125;
  v163(v128, v127);
  v70(v24, 0, 1, v76);
  sub_226D6CE9C();
  v130 = [a1 deliveryTimeHours];
  v131 = v130;
  if (v130)
  {
    [v130 integerValue];
  }

  sub_226D6CE1C();
  v132 = [a1 deliveryTimeMinutes];
  v133 = v132;
  if (v132)
  {
    [v132 integerValue];
  }

  sub_226D6CE6C();
  v134 = [a1 deliveryTimeSeconds];
  v135 = v134;
  if (v134)
  {
    [v134 integerValue];
  }

  sub_226D6CE7C();
  (v162)(v172, v151, v174);
  sub_226D6D27C();
  sub_226D6D25C();
  v161(v77, v173);
  sub_226D6DC2C();
  v136 = a1;
  sub_226C4A194(v136, v149);
  sub_226D6DC7C();
  v137 = [v136 fulfillmentUpdateDate];
  if (v137)
  {
    v138 = v150;
    v139 = v137;
    sub_226D6D45C();

    v140 = 0;
  }

  else
  {
    v140 = 1;
    v138 = v150;
  }

  v141 = sub_226D6D4AC();
  (*(*(v141 - 8) + 56))(v138, v140, 1, v141);
  sub_226D6DC8C();

  v142 = *(v147 + 8);
  v143 = v148;
  v142(v129, v148);
  v142(v160, v143);
  v142(v159, v143);
  v142(v158, v143);
  v142(v157, v143);
  v142(v156, v143);
  v142(v155, v143);
  return (v142)(v154, v143);
}

uint64_t sub_226C49208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_226D6DEDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AA89F70](v14);
  v17 = [a1 customerFullName];
  if (v17)
  {
    v18 = v17;
    sub_226D6E39C();
  }

  sub_226D6DBDC();
  v19 = [a1 customerEmailAddress];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D6DB9C();
  v21 = [a1 customerPhoneNumber];
  if (v21)
  {
    v22 = v21;
    sub_226D6E39C();
  }

  sub_226D6DB7C();
  v23 = [a1 customerBillingAddress];
  if (v23)
  {
    sub_226C4A51C(v23);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_226D6DDAC();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v10, v24, 1, v25);
  sub_226D6DBBC();
  sub_226D6DBCC();
  if (v27 || (sub_226D6DB8C(), v28) || (v29 = sub_226D6DB6C(), v30))
  {
  }

  else
  {
    MEMORY[0x22AA89F30](v29);

    if ((*(v26 + 48))(v8, 1, v25) == 1)
    {
      (*(v12 + 8))(v16, v11);
      sub_226C4A884(v8);
      v31 = 1;
      return (*(v12 + 56))(a2, v31, 1, v11);
    }

    sub_226C4A884(v8);
  }

  (*(v12 + 32))(a2, v16, v11);
  v31 = 0;
  return (*(v12 + 56))(a2, v31, 1, v11);
}

size_t sub_226C49590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8388, &qword_226D783F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v49 - v6;
  v55 = sub_226D6DB2C();
  v60 = *(v55 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v49 - v11;
  v12 = sub_226D6DE2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DE1C();
  v17 = [a1 paymentTotalAmount];
  if (v17)
  {
    v18 = v17;
    [v17 decimalValue];

    sub_226D6EC6C();
  }

  sub_226D6DDCC();
  v19 = [a1 paymentTotalCurrencyCode];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D6DE0C();
  v21 = sub_226D6B2FC();
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v13;
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_23:

    goto LABEL_24;
  }

  v23 = sub_226D6EDFC();
  v54 = v13;
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_7:
  v61 = MEMORY[0x277D84F90];
  result = sub_226AE1F40(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v57 = v23;
    v50 = v16;
    v51 = v12;
    v52 = a1;
    v53 = a2;
    v25 = 0;
    v56 = v22 & 0xC000000000000001;
    v26 = v61;
    v27 = (v60 + 32);
    v28 = v55;
    do
    {
      if (v56)
      {
        v29 = MEMORY[0x22AA8AFD0](v25, v22);
      }

      else
      {
        v29 = *(v22 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = v22;
      sub_226D6DB1C();
      v32 = [v30 amount];
      if (v32)
      {
        v33 = v32;
        [v32 decimalValue];

        v28 = v55;
        sub_226D6EC6C();
      }

      sub_226D6DB0C();
      v34 = [v30 currencyCode];
      if (v34)
      {
        v35 = v34;
        sub_226D6E39C();
      }

      sub_226D6DAEC();
      v36 = v30;
      sub_226C4A680(v36, v58);
      sub_226D6DADC();
      v37 = [v36 transactionIdentifier];
      if (v37)
      {
        v38 = v37;
        sub_226D6E39C();
      }

      sub_226D6DAFC();

      v39 = *v27;
      v40 = v59;
      (*v27)(v59, v10, v28);
      v61 = v26;
      v42 = *(v26 + 16);
      v41 = *(v26 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_226AE1F40(v41 > 1, v42 + 1, 1);
        v40 = v59;
        v26 = v61;
      }

      ++v25;
      *(v26 + 16) = v42 + 1;
      v39((v26 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v42), v40, v28);
      v22 = v31;
    }

    while (v57 != v25);

    a1 = v52;
    a2 = v53;
    v16 = v50;
    v12 = v51;
LABEL_24:
    sub_226D6DDEC();
    sub_226D6DDBC();
    if (v43)
    {
      v44 = v54;
    }

    else
    {
      sub_226D6DDFC();
      v44 = v54;
      if (!v45)
      {
        v47 = sub_226D6DDDC();

        v48 = *(v47 + 16);

        if (!v48)
        {
          (*(v44 + 8))(v16, v12);
          v46 = 1;
          return (*(v44 + 56))(a2, v46, 1, v12);
        }

LABEL_28:
        (*(v44 + 32))(a2, v16, v12);
        v46 = 0;
        return (*(v44 + 56))(a2, v46, 1, v12);
      }
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C49B64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226D677FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC6DF0])
  {
    (*(v5 + 8))(a1, v4);
    *a2 = -1;
    v10 = MEMORY[0x277D20910];
LABEL_11:
    v11 = *v10;
    v12 = sub_226D6DA4C();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v9 == *MEMORY[0x277CC6DE0])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20900];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DD8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D208F8];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DF8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20918];
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277CC6DE8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20908];
    goto LABEL_11;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C49DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226D6C69C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC8320])
  {
    (*(v5 + 8))(a1, v4);
    *a2 = -1;
    v10 = MEMORY[0x277D20950];
LABEL_21:
    v11 = *v10;
    v12 = sub_226D6DCDC();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v9 == *MEMORY[0x277CC8318])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20948];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8328])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20958];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8300])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20930];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8340])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20970];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8338])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20968];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8310])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20940];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8308])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20938];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC8330])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20960];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277CC82F8])
  {
    (*(v5 + 8))(a1, v4);
    v10 = MEMORY[0x277D20928];
    goto LABEL_21;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C4A194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_226D6DBFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AA89C90](v14);
  v17 = [a1 recipientFullName];
  if (v17)
  {
    v18 = v17;
    sub_226D6E39C();
  }

  sub_226D6DBDC();
  v19 = [a1 recipientEmailAddress];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D6DB9C();
  v21 = [a1 recipientPhoneNumber];
  if (v21)
  {
    v22 = v21;
    sub_226D6E39C();
  }

  sub_226D6DB7C();
  v23 = [a1 recipientAddress];
  if (v23)
  {
    sub_226C4A51C(v23);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_226D6DDAC();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v10, v24, 1, v25);
  sub_226D6DBBC();
  sub_226D6DBCC();
  if (v27 || (sub_226D6DB8C(), v28) || (v29 = sub_226D6DB6C(), v30))
  {
  }

  else
  {
    MEMORY[0x22AA89C50](v29);

    if ((*(v26 + 48))(v8, 1, v25) == 1)
    {
      (*(v12 + 8))(v16, v11);
      sub_226C4A884(v8);
      v31 = 1;
      return (*(v12 + 56))(a2, v31, 1, v11);
    }

    sub_226C4A884(v8);
  }

  (*(v12 + 32))(a2, v16, v11);
  v31 = 0;
  return (*(v12 + 56))(a2, v31, 1, v11);
}

void sub_226C4A51C(void *a1)
{
  sub_226D6DD9C();
  v1 = [a1 street];
  sub_226D6E39C();

  sub_226D6DD7C();
  v2 = [a1 city];
  sub_226D6E39C();

  sub_226D6DD5C();
  v3 = [a1 state];
  sub_226D6E39C();

  sub_226D6DD6C();
  v4 = [a1 postalCode];
  sub_226D6E39C();

  sub_226D6DD4C();
  v5 = [a1 country];
  sub_226D6E39C();

  sub_226D6DD8C();
}

uint64_t sub_226C4A680@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6DACC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DABC();
  v9 = [a1 paymentMethodDisplayName];
  if (v9)
  {
    v10 = v9;
    sub_226D6E39C();
  }

  sub_226D6DA8C();
  v11 = [a1 paymentMethodSuffix];
  if (v11)
  {
    v12 = v11;
    sub_226D6E39C();
  }

  sub_226D6DAAC();
  [a1 paymentMethodIsApplePay];
  sub_226D6DA6C();
  sub_226D6DA7C();
  if (v13 || (sub_226D6DA9C(), v14))
  {
  }

  else
  {
    v17 = sub_226D6DA5C();

    if (v17 != 2 && (v17 & 1) == 0)
    {
      (*(v5 + 8))(v8, v4);
      v15 = 1;
      return (*(v5 + 56))(a2, v15, 1, v4);
    }
  }

  (*(v5 + 32))(a2, v8, v4);
  v15 = 0;
  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_226C4A884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226C4A8FC(void *a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  sub_226D6AC0C();
  v3 = sub_226D6AAFC();
  [v3 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v5 = sub_226D6E5CC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v7 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    v30 = a1;
    v31 = v3;
    v29 = 0;
    if (v7 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v33 = v8;
      v34 = v8 & 0xFFFFFFFFFFFFFF8;
      v32 = i;
      while (1)
      {
        if (v11)
        {
          v15 = MEMORY[0x22AA8AFD0](v10, v8);
        }

        else
        {
          if (v10 >= *(v34 + 16))
          {
            goto LABEL_22;
          }

          v15 = *(v8 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v18 = MEMORY[0x22AA8B6A0]();
        v19 = [v16 insightsObject];
        if (v19)
        {
          v20 = v19;
          v14 = [v19 mapsInsightObject];

          if (v14)
          {
            v21 = [v14 brandObject];
            if (v21 && (v22 = v21, v23 = [v21 name], v22, v23) || (v24 = objc_msgSend(v14, sel_merchantObject, v29)) != 0 && (v25 = v24, v23 = objc_msgSend(v24, sel_name), v25, v23))
            {
              sub_226D6E39C();

              v12 = [v16 publicTransactionObject];
              v13 = sub_226D6E36C();

              [v12 setMerchantName_];

              v14 = v13;
              i = v32;
            }

            v8 = v33;
          }
        }

        objc_autoreleasePoolPop(v18);

        ++v10;
        if (v17 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v35[0] = 0;
    if ([v30 save_])
    {
      v26 = v35[0];
    }

    else
    {
      v27 = v35[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_226C4AD08(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t BankConnectServiceImplementation.disconnectAccount(with:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_226C4ADB4, 0, 0);
}

uint64_t sub_226C4ADB4()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_226D1F610(v0 + 2);
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_226C4AE74;
  v3 = v0[7];

  return sub_226D0C0D8(v3);
}

uint64_t sub_226C4AE74()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_226C4AF88;
  }

  else
  {
    v3 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C4AF88()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v3 = v1;
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277CC7AB0], v2);
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_226C4B068(uint64_t *a1)
{
  v2 = v1;
  v4 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6913C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(_s21NotificationFormatterV16FulfillmentInputVMa(0) + 36));
  v18 = sub_226D69B8C();
  v19 = *(*(v18 - 8) + 16);
  if (v17 == 1)
  {
    v19(v16, v2, v18);
    sub_226C54EC0(a1);
    if (!v20)
    {
      sub_226C554A8(v16, _s39NotificationMultiFulfillmentFormatStyleVMa);
      return 0;
    }

    (*(v9 + 104))(v12, *MEMORY[0x277CC77B0], v8);
    v21 = sub_226D6811C();
    (*(v9 + 8))(v12, v8);
    v22 = _s39NotificationMultiFulfillmentFormatStyleVMa;
    v23 = v16;
  }

  else
  {
    v19(v7, v2, v18);
    v21 = sub_226C4D154(a1);
    v22 = _s40NotificationSingleFulfillmentFormatStyleVMa;
    v23 = v7;
  }

  sub_226C554A8(v23, v22);
  return v21;
}

uint64_t sub_226C4B328(uint64_t a1)
{
  v77 = a1;
  v1 = sub_226D6D31C();
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v1);
  v84 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D35C();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v81 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D33C();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D08C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D5DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A8, &qword_226D78480);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83B0, &qword_226D78488);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v63 - v21;
  v73 = sub_226D6D37C();
  v70 = *(v73 - 8);
  v23 = *(v70 + 64);
  v24 = MEMORY[0x28223BE20](v73);
  v66 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v67 = &v63 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v69 = &v63 - v29;
  MEMORY[0x28223BE20](v28);
  v71 = &v63 - v30;
  v31 = sub_226D6D4AC();
  v74 = *(v31 - 8);
  v75 = v31;
  v32 = *(v74 + 64);
  MEMORY[0x28223BE20](v31);
  v65 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_226D6D71C();
  v35 = *(v34 - 8);
  v88 = v34;
  v89 = v35;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v63 - v40;
  v87 = sub_226D6D6DC();
  v64 = *(v87 - 8);
  v42 = v64;
  v43 = *(v64 + 64);
  v44 = MEMORY[0x28223BE20](v87);
  v46 = &v63 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v63 - v47;
  sub_226D69B6C();
  sub_226D69B7C();
  MEMORY[0x22AA836C0](v48, v41);
  sub_226D6D2AC();
  v49 = sub_226D6D2BC();
  (*(*(v49 - 8) + 56))(v22, 0, 1, v49);
  v50 = sub_226D6D29C();
  (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
  sub_226D69B4C();
  (*(v42 + 16))(v46, v48, v87);
  (*(v89 + 16))(v39, v41, v88);
  sub_226D6D07C();
  v51 = v66;
  sub_226D6D2DC();
  v52 = v78;
  sub_226D6D32C();
  v53 = v67;
  sub_226D6D2EC();
  (*(v79 + 8))(v52, v80);
  v54 = *(v70 + 8);
  v55 = v73;
  v54(v51, v73);
  v56 = v81;
  sub_226D6D34C();
  v57 = v69;
  sub_226D6D2FC();
  (*(v82 + 8))(v56, v83);
  v54(v53, v55);
  v58 = v84;
  sub_226D6D30C();
  v59 = v71;
  sub_226D6D2CC();
  (*(v85 + 8))(v58, v86);
  v54(v57, v55);
  v60 = v65;
  v61 = sub_226D6D36C();
  v54(v59, v55);
  (*(v74 + 8))(v60, v75);
  (*(v89 + 8))(v41, v88);
  (*(v64 + 8))(v48, v87);
  return v61;
}

uint64_t sub_226C4BB60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_226D69B8C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8530, &qword_226D78B28);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_226D6D71C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_226D6D6DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_226D6D5DC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = _s21ShippingDateFormatterVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5CF74();
  v22 = v29;
  sub_226D6F37C();
  if (!v22)
  {
    v23 = v27;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968]);
    sub_226D6F16C();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_226C5CFC8(v20, v26, _s21ShippingDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v20, _s21ShippingDateFormatterVMa);
}

uint64_t sub_226C4BF2C(uint64_t a1)
{
  v2 = sub_226C5CF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4BF68(uint64_t a1)
{
  v2 = sub_226C5CF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4BFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226C4B328(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_226C4C028(char *a1)
{
  v104 = a1;
  v1 = sub_226D6D31C();
  v98 = *(v1 - 8);
  v99 = v1;
  v2 = *(v98 + 64);
  MEMORY[0x28223BE20](v1);
  v97 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D35C();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D33C();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D08C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D5DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A8, &qword_226D78480);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v102 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83B0, &qword_226D78488);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v100 = &v83 - v21;
  v105 = sub_226D6D37C();
  v103 = *(v105 - 8);
  v22 = *(v103 + 64);
  v23 = MEMORY[0x28223BE20](v105);
  v87 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v86 = &v83 - v28;
  MEMORY[0x28223BE20](v27);
  v90 = &v83 - v29;
  v30 = sub_226D6760C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D6D4AC();
  v110 = *(v35 - 8);
  v111 = v35;
  v36 = *(v110 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_226D6D71C();
  v108 = *(v39 - 8);
  v109 = v39;
  v40 = *(v108 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v83 - v44;
  v46 = sub_226D6D6DC();
  v106 = *(v46 - 8);
  v107 = v46;
  v47 = *(v106 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v48);
  v50 = &v83 - v49;
  sub_226D69B6C();
  sub_226D69B7C();
  v51 = v104;
  MEMORY[0x22AA836A0](v50, v45);
  (*(v31 + 16))(v34, v51, v30);
  v52 = (*(v31 + 88))(v34, v30);
  if (v52 == *MEMORY[0x277CC6CA8])
  {
    v53 = v100;
    sub_226D6D2AC();
    v54 = sub_226D6D2BC();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    v55 = sub_226D6D29C();
    (*(*(v55 - 8) + 56))(v102, 1, 1, v55);
    sub_226D69B4C();
    sub_226D69B6C();
    sub_226D69B7C();
    sub_226D6D07C();
    v56 = v87;
    sub_226D6D2DC();
    v57 = v91;
    sub_226D6D32C();
    v58 = v101;
    sub_226D6D2EC();
    (*(v92 + 8))(v57, v93);
    v59 = *(v103 + 8);
    v60 = v56;
    v61 = v105;
    v59(v60, v105);
    v62 = v94;
    sub_226D6D34C();
    v63 = v86;
    sub_226D6D2FC();
    (*(v95 + 8))(v62, v96);
    v59(v58, v61);
    v64 = v97;
    sub_226D6D30C();
    v65 = v90;
    sub_226D6D2CC();
    (*(v98 + 8))(v64, v99);
    v59(v63, v61);
    v66 = sub_226D6D36C();
    v59(v65, v61);
    (*(v110 + 8))(v38, v111);
    (*(v108 + 8))(v45, v109);
    (*(v106 + 8))(v50, v107);
  }

  else
  {
    v83 = v43;
    v67 = v100;
    v68 = v102;
    v84 = v50;
    v69 = v101;
    v85 = v45;
    v104 = v38;
    v70 = v103;
    v71 = v105;
    if (v52 == *MEMORY[0x277CC6CA0])
    {
      sub_226D6D2AC();
      v72 = sub_226D6D2BC();
      (*(*(v72 - 8) + 56))(v67, 0, 1, v72);
      sub_226D6D28C();
      v73 = sub_226D6D29C();
      (*(*(v73 - 8) + 56))(v68, 0, 1, v73);
      sub_226D69B4C();
      sub_226D69B6C();
      sub_226D69B7C();
      sub_226D6D07C();
      v74 = v87;
      sub_226D6D2DC();
      v75 = v91;
      sub_226D6D32C();
      sub_226D6D2EC();
      (*(v92 + 8))(v75, v93);
      v76 = *(v70 + 8);
      v76(v74, v71);
      v77 = v94;
      sub_226D6D34C();
      v78 = v86;
      sub_226D6D2FC();
      (*(v95 + 8))(v77, v96);
      v76(v69, v71);
      v79 = v97;
      sub_226D6D30C();
      v80 = v90;
      sub_226D6D2CC();
      (*(v98 + 8))(v79, v99);
      v76(v78, v71);
      v81 = v104;
      v66 = sub_226D6D36C();
      v76(v80, v71);
      (*(v110 + 8))(v81, v111);
      (*(v108 + 8))(v85, v109);
      (*(v106 + 8))(v84, v107);
    }

    else
    {
      (*(v110 + 8))(v104, v111);
      (*(v108 + 8))(v85, v109);
      (*(v106 + 8))(v84, v107);
      (*(v31 + 8))(v34, v30);
      return 0;
    }
  }

  return v66;
}

uint64_t sub_226C4CC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_226D69B8C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8500, &qword_226D78B18);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_226D6D71C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_226D6D6DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_226D6D5DC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = _s21DeliveryDateFormatterVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5CF20();
  v22 = v29;
  sub_226D6F37C();
  if (!v22)
  {
    v23 = v27;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968]);
    sub_226D6F16C();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_226C5CFC8(v20, v26, _s21DeliveryDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v20, _s21DeliveryDateFormatterVMa);
}

uint64_t sub_226C4CFB4(uint64_t a1)
{
  v2 = sub_226C5CF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4CFF0(uint64_t a1)
{
  v2 = sub_226C5CF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4D02C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226C4C028(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_226C4D0B0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_226D6F21C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_226D6F21C();
    }
  }

  return result;
}

uint64_t sub_226C4D154(uint64_t *a1)
{
  v2 = sub_226D6913C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6C69C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  (*(v8 + 16))(v11, a1 + *(v14 + 20), v7);
  v15 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v15 != *MEMORY[0x277CC8320])
  {
    if (v15 == *MEMORY[0x277CC8318])
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CC77B0], v2, 0);
      v17 = sub_226D6811C();
      (*(v3 + 8))(v6, v2);
      sub_226C4E440(a1);
      return v17;
    }

    if (v15 == *MEMORY[0x277CC8328])
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CC77B0], v2, 0);
      v17 = sub_226D6811C();
      (*(v3 + 8))(v6, v2);
      sub_226C4E904(a1);
      return v17;
    }

    if (v15 == *MEMORY[0x277CC8300])
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CC77B0], v2, 0);
      v17 = sub_226D6811C();
      (*(v3 + 8))(v6, v2);
      sub_226C51968(a1);
      return v17;
    }

    if (v15 == *MEMORY[0x277CC8340])
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CC77B0], v2, 0);
      v17 = sub_226D6811C();
      (*(v3 + 8))(v6, v2);
      sub_226C54538(a1);
      return v17;
    }

    if (v15 == *MEMORY[0x277CC8338])
    {
      v18 = *MEMORY[0x277CC77B0];
      v19 = *(v3 + 104);
      (v19)(v6, v18, v2, 0);

      v20 = sub_226D6811C();
      v47 = v21;
      v48 = v20;
      v22 = *(v3 + 8);
      v22(v6, v2);
      v46 = "_SHIPPING_CANCELED";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_226D70840;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_226B16404();
      *(v23 + 32) = v13;
      *(v23 + 40) = v12;
      v19(v6, v18, v2);
    }

    else
    {
      if (v15 != *MEMORY[0x277CC8310])
      {
        if (v15 == *MEMORY[0x277CC8308])
        {
          v29 = *MEMORY[0x277CC77B0];
          v30 = *(v3 + 104);
          (v30)(v6, v29, v2, 0);

          v31 = sub_226D6811C();
          v47 = v32;
          v48 = v31;
          v33 = *(v3 + 8);
          v33(v6, v2);
          v46 = "_SHIPPING_READY_FOR_PICKUP";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_226D70840;
          *(v34 + 56) = MEMORY[0x277D837D0];
          *(v34 + 64) = sub_226B16404();
          *(v34 + 32) = v13;
          *(v34 + 40) = v12;
          v30(v6, v29, v2);
        }

        else
        {
          if (v15 == *MEMORY[0x277CC8330])
          {
            v35 = *MEMORY[0x277CC77B0];
            v36 = *(v3 + 104);
            (v36)(v6, v35, v2, 0);

            v37 = sub_226D6811C();
            v47 = v38;
            v48 = v37;
            v22 = *(v3 + 8);
            v22(v6, v2);
            v46 = "_SHIPPING_PICKED_UP";
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_226D70840;
            *(v39 + 56) = MEMORY[0x277D837D0];
            *(v39 + 64) = sub_226B16404();
            *(v39 + 32) = v13;
            *(v39 + 40) = v12;
            v36(v6, v35, v2);
            goto LABEL_16;
          }

          if (v15 != *MEMORY[0x277CC82F8])
          {
            result = sub_226D6F0AC();
            __break(1u);
            return result;
          }

          v40 = *MEMORY[0x277CC77B0];
          v41 = *(v3 + 104);
          (v41)(v6, v40, v2, 0);

          v42 = sub_226D6811C();
          v47 = v43;
          v48 = v42;
          v33 = *(v3 + 8);
          v33(v6, v2);
          v46 = "_SHIPPING_PROCESSING";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_226D70840;
          *(v44 + 56) = MEMORY[0x277D837D0];
          *(v44 + 64) = sub_226B16404();
          *(v44 + 32) = v13;
          *(v44 + 40) = v12;
          v41(v6, v40, v2);
        }

        sub_226D6812C();

        v33(v6, v2);
        return v48;
      }

      v24 = *MEMORY[0x277CC77B0];
      v25 = *(v3 + 104);
      (v25)(v6, v24, v2, 0);

      v26 = sub_226D6811C();
      v47 = v27;
      v48 = v26;
      v22 = *(v3 + 8);
      v22(v6, v2);
      v46 = "TIFICATION_TITLE_SHIPPING_ISSUE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_226D70840;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_226B16404();
      *(v28 + 32) = v13;
      *(v28 + 40) = v12;
      v25(v6, v24, v2);
    }

LABEL_16:
    sub_226D6812C();

    v22(v6, v2);
    return v48;
  }

  return result;
}

uint64_t sub_226C4DB20(char *a1)
{
  v2 = sub_226D6913C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D677FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = _s21NotificationFormatterV16OrderStatusInputVMa(0);
  (*(v8 + 16))(v11, &a1[*(v14 + 20)], v7);
  v15 = (*(v8 + 88))(v11, v7);
  v16 = 0;
  if (v15 == *MEMORY[0x277CC6DF0])
  {
    return v16;
  }

  v17 = *MEMORY[0x277CC6DE0];
  v28 = v12;
  if (v15 == v17)
  {
    v18 = v13;
    v26 = 0xD00000000000001CLL;
    v27 = "ORDER_NOTIFICATION_TITLE_OPEN";
LABEL_11:
    v20 = *MEMORY[0x277CC77B0];
    v21 = v3[13];
    v21(v6, v20, v2);

    v25 = sub_226D6811C();
    v22 = v3[1];
    v22(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_226D70840;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_226B16404();
    *(v23 + 32) = v28;
    *(v23 + 40) = v18;
    v21(v6, v20, v2);
    sub_226D6812C();

    v22(v6, v2);
    return v25;
  }

  if (v15 == *MEMORY[0x277CC6DD8])
  {
    v18 = v13;
    v27 = "_SHIPPING_PROCESSING";
    v19 = 0xD00000000000003ALL;
LABEL_10:
    v26 = v19;
    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x277CC6DF8])
  {
    v18 = v13;
    v27 = "_SHIPPING_CANCELED";
    v19 = 0xD000000000000038;
    goto LABEL_10;
  }

  if (v15 == *MEMORY[0x277CC6DE8])
  {
    v18 = v13;
    v27 = "TIFICATION_TITLE_SHIPPING_ISSUE";
    v19 = 0xD000000000000035;
    goto LABEL_10;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C4DFAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_226D69B8C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8578, &qword_226D78B58);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_226D6D71C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_226D6D6DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_226D6D5DC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = _s34NotificationOrderStatusFormatStyleVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C5D0D8();
  v22 = v29;
  sub_226D6F37C();
  if (!v22)
  {
    v23 = v27;
    sub_226C5BAF8(&qword_27D7A8510, MEMORY[0x277CC7968]);
    sub_226D6F16C();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_226C5CFC8(v20, v26, _s34NotificationOrderStatusFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C554A8(v20, _s34NotificationOrderStatusFormatStyleVMa);
}

uint64_t sub_226C4E354(uint64_t a1)
{
  v2 = sub_226C5D0D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C4E390(uint64_t a1)
{
  v2 = sub_226C5D0D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C4E440(uint64_t *a1)
{
  v3 = sub_226D6913C();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s21ShippingDateFormatterVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v40 - v13;
  v15 = sub_226D6762C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(a1 + *(v20 + 28), v14, &qword_27D7A6670, &qword_226D71888);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_226AC47B0(v14, &qword_27D7A6670, &qword_226D71888);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_226D70840;
    v36 = *a1;
    v35 = a1[1];
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_226B16404();
    *(v34 + 32) = v36;
    *(v34 + 40) = v35;
    v38 = v41;
    v37 = v42;
    (*(v41 + 104))(v6, *MEMORY[0x277CC77B0], v42);

    v33 = sub_226D6812C();

    (*(v38 + 8))(v6, v37);
    return v33;
  }

  (*(v16 + 32))(v19, v14, v15);
  v21 = sub_226D69B8C();
  (*(*(v21 - 8) + 16))(v10, v1, v21);
  v22 = sub_226C4B328(v19);
  if (!v23)
  {
    sub_226C554A8(v10, _s21ShippingDateFormatterVMa);
    (*(v16 + 8))(v19, v15);
    goto LABEL_6;
  }

  v24 = v23;
  v40[0] = v22;
  v40[1] = "SINGLE_SHIPPING_SHIPPED";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_226D71840;
  v27 = *a1;
  v26 = a1[1];
  v28 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v29 = sub_226B16404();
  *(v25 + 32) = v27;
  *(v25 + 40) = v26;
  *(v25 + 96) = v28;
  *(v25 + 104) = v29;
  v30 = v40[0];
  *(v25 + 64) = v29;
  *(v25 + 72) = v30;
  *(v25 + 80) = v24;
  v32 = v41;
  v31 = v42;
  (*(v41 + 104))(v6, *MEMORY[0x277CC77B0], v42);

  v33 = sub_226D6812C();

  (*(v32 + 8))(v6, v31);
  sub_226C554A8(v10, _s21ShippingDateFormatterVMa);
  (*(v16 + 8))(v19, v15);
  return v33;
}

uint64_t sub_226C4E904(void (**a1)(char *, uint64_t))
{
  v422 = a1;
  v404 = sub_226D6CA9C();
  v397 = *(v404 - 8);
  v1 = *(v397 + 64);
  v2 = MEMORY[0x28223BE20](v404);
  v373 = &v362 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v382 = &v362 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v400 = &v362 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v388 = &v362 - v9;
  MEMORY[0x28223BE20](v8);
  v396 = &v362 - v10;
  v11 = sub_226D6913C();
  v419 = *(v11 - 8);
  v420 = v11;
  v12 = *(v419 + 64);
  MEMORY[0x28223BE20](v11);
  v421 = &v362 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v368 = &v362 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v376 = &v362 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v393 = &v362 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v402 = &v362 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v379 = &v362 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v391 = &v362 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v370 = &v362 - v29;
  MEMORY[0x28223BE20](v28);
  v384 = &v362 - v30;
  v418 = sub_226D6D4AC();
  v416 = *(v418 - 8);
  v31 = *(v416 + 64);
  v32 = MEMORY[0x28223BE20](v418);
  v372 = &v362 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v381 = &v362 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v399 = &v362 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v398 = &v362 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v387 = &v362 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v395 = &v362 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v377 = &v362 - v45;
  MEMORY[0x28223BE20](v44);
  v385 = &v362 - v46;
  v47 = sub_226D6907C();
  v48 = *(v47 - 8);
  v409 = v47;
  v410 = v48;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v411 = &v362 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_226D69B8C();
  v52 = *(v51 - 8);
  v412 = v51;
  v413 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v414 = &v362 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_226D6814C();
  v406 = *(v55 - 8);
  v56 = *(v406 + 64);
  v57 = MEMORY[0x28223BE20](v55);
  v371 = &v362 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v380 = &v362 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v403 = &v362 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v417 = &v362 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v386 = &v362 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v394 = &v362 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v375 = &v362 - v70;
  MEMORY[0x28223BE20](v69);
  v390 = &v362 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v408 = &v362 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v407 = &v362 - v77;
  v78 = sub_226D6CEAC();
  v405 = *(v78 - 8);
  v79 = *(v405 + 64);
  v80 = MEMORY[0x28223BE20](v78);
  v369 = &v362 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v378 = &v362 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v401 = &v362 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v88 = &v362 - v87;
  v89 = MEMORY[0x28223BE20](v86);
  v383 = &v362 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v392 = &v362 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v374 = &v362 - v94;
  MEMORY[0x28223BE20](v93);
  v389 = &v362 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96 - 8);
  v99 = &v362 - v98;
  v100 = sub_226D6763C();
  v101 = *(v100 - 8);
  v102 = *(v101 + 64);
  v103 = MEMORY[0x28223BE20](v100);
  v105 = &v362 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v107 = &v362 - v106;
  v108 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  sub_226AC40E8(v422 + *(v108 + 32), v99, &qword_27D7A6680, &unk_226D74710);
  if ((*(v101 + 48))(v99, 1, v100) == 1)
  {
    sub_226AC47B0(v99, &qword_27D7A6680, &unk_226D74710);
    v109 = v420;
    v110 = v421;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_226D70840;
    v113 = *v422;
    v112 = v422[1];
    *(v111 + 56) = MEMORY[0x277D837D0];
    *(v111 + 64) = sub_226B16404();
    *(v111 + 32) = v113;
    *(v111 + 40) = v112;
    v114 = v419;
    (*(v419 + 104))(v110, *MEMORY[0x277CC77B0], v109);

    v115 = sub_226D6812C();

    (*(v114 + 8))(v110, v109);
    return v115;
  }

  (*(v101 + 32))(v107, v99, v100);
  (*(v101 + 16))(v105, v107, v100);
  v116 = (*(v101 + 88))(v105, v100);
  v117 = v116 == *MEMORY[0x277CC6CF0];
  v367 = v78;
  v366 = v100;
  v365 = v107;
  v364 = v101;
  if (v117)
  {
    v118 = v55;
    (*(v101 + 96))(v105, v100);
    v120 = *v105;
    v119 = *(v105 + 1);
    v121 = *(v105 + 2);
    v122 = v407;
    v123 = v415;
    sub_226D69B6C();
    v124 = sub_226D6D6DC();
    (*(*(v124 - 8) + 56))(v122, 0, 1, v124);
    v125 = v408;
    sub_226D69B7C();
    v126 = sub_226D6D71C();
    (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
    sub_226D6CE8C();
    (*(v413 + 16))(v414, v123, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v127 = v402;
    sub_226D6CE0C();
    v128 = v416;
    v129 = v418;
    result = (*(v416 + 48))(v127, 1, v418);
    if (result != 1)
    {
      v131 = v398;
      (*(v128 + 32))(v398, v127, v129);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v132 = v423;
      v133 = v424;
      v134 = v128;
      v415 = "TE_WITH_TIME_SINGULAR_HOURS";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_226D71840;
      v137 = *v422;
      v136 = v422[1];
      v138 = MEMORY[0x277D837D0];
      *(v135 + 56) = MEMORY[0x277D837D0];
      v139 = sub_226B16404();
      *(v135 + 32) = v137;
      *(v135 + 40) = v136;
      *(v135 + 96) = v138;
      *(v135 + 104) = v139;
      *(v135 + 64) = v139;
      *(v135 + 72) = v132;
      *(v135 + 80) = v133;
      v141 = v419;
      v140 = v420;
      v142 = v421;
      (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

      v115 = sub_226D6812C();

      (*(v141 + 8))(v142, v140);
      (*(v134 + 8))(v131, v418);
      (*(v406 + 8))(v417, v118);
      (*(v405 + 8))(v88, v367);
      v143 = *(v364 + 8);
LABEL_22:
      v143(v365, v366);
      return v115;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v117 = v116 == *MEMORY[0x277CC6D08];
  v363 = v55;
  if (v117)
  {
    (*(v101 + 96))(v105, v100);
    v144 = *v105;
    v417 = *(v105 + 1);
    v145 = *(v105 + 2);
    v146 = *(v105 + 3);
    v147 = *(v105 + 4);
    v148 = *(v105 + 5);
    v149 = v105[48];
    v150 = v407;
    v151 = v415;
    sub_226D69B6C();
    v152 = sub_226D6D6DC();
    (*(*(v152 - 8) + 56))(v150, 0, 1, v152);
    v153 = v408;
    sub_226D69B7C();
    v154 = sub_226D6D71C();
    (*(*(v154 - 8) + 56))(v153, 0, 1, v154);
    v155 = v151;
    sub_226D6CE8C();
    v156 = v414;
    v157 = *(v413 + 16);
    v158 = v412;
    v157(v414, v151, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v159 = v393;
    sub_226D6CE0C();
    v160 = v416;
    v161 = v418;
    result = (*(v416 + 48))(v159, 1, v418);
    if (result != 1)
    {
      (*(v160 + 32))(v399, v159, v161);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v162 = v423;
      v163 = v424;
      v157(v156, v155, v158);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450]);
      sub_226D6A28C();
      v164 = v423;
      v165 = v424;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_226D72130;
      v168 = *v422;
      v167 = v422[1];
      v169 = MEMORY[0x277D837D0];
      *(v166 + 56) = MEMORY[0x277D837D0];
      v170 = sub_226B16404();
      *(v166 + 32) = v168;
      *(v166 + 40) = v167;
      *(v166 + 96) = v169;
      *(v166 + 104) = v170;
      *(v166 + 64) = v170;
      *(v166 + 72) = v162;
      *(v166 + 80) = v163;
      *(v166 + 136) = v169;
      *(v166 + 144) = v170;
      *(v166 + 112) = v164;
      *(v166 + 120) = v165;
      v171 = v419 + 104;
      v172 = v421;
      v173 = v160 + 32;
      v174 = v420;
      (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

      v175 = (v171 - 96);
      v176 = (v397 + 8);
      v177 = (v406 + 8);
      v178 = (v405 + 8);
      v422 = (v364 + 8);
      v115 = sub_226D6812C();

      (*v175)(v172, v174);
      (*v176)(v400, v404);
      (*(v173 - 24))(v399, v418);
      (*v177)(v403, v363);
      (*v178)(v401, v367);
LABEL_21:
      v143 = *v422;
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v116 == *MEMORY[0x277CC6D00])
  {
    (*(v101 + 96))(v105, v100);
    v179 = *v105;
    v417 = *(v105 + 1);
    v180 = *(v105 + 2);
    v181 = *(v105 + 3);
    v182 = *(v105 + 4);
    v183 = *(v105 + 5);
    v184 = v105[48];
    v185 = v407;
    v186 = v415;
    sub_226D69B6C();
    v187 = sub_226D6D6DC();
    (*(*(v187 - 8) + 56))(v185, 0, 1, v187);
    v188 = v408;
    sub_226D69B7C();
    v189 = sub_226D6D71C();
    (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
    v190 = v186;
    sub_226D6CE8C();
    v191 = v414;
    v192 = *(v413 + 16);
    v193 = v412;
    v192(v414, v186, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v194 = v391;
    sub_226D6CE0C();
    v195 = v416;
    v196 = v418;
    result = (*(v416 + 48))(v194, 1, v418);
    if (result != 1)
    {
      (*(v195 + 32))(v395, v194, v196);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v197 = v423;
      v198 = v424;
      v192(v191, v190, v193);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450]);
      sub_226D6A28C();
      v199 = v423;
      v200 = v424;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_226D72130;
      v203 = *v422;
      v202 = v422[1];
      v204 = MEMORY[0x277D837D0];
      *(v201 + 56) = MEMORY[0x277D837D0];
      v205 = sub_226B16404();
      *(v201 + 32) = v203;
      *(v201 + 40) = v202;
      *(v201 + 96) = v204;
      *(v201 + 104) = v205;
      *(v201 + 64) = v205;
      *(v201 + 72) = v197;
      *(v201 + 80) = v198;
      *(v201 + 136) = v204;
      *(v201 + 144) = v205;
      *(v201 + 112) = v199;
      *(v201 + 120) = v200;
      v206 = v419 + 104;
      v207 = v421;
      v208 = v195 + 32;
      v209 = v420;
      (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

      v210 = (v206 - 96);
      v211 = (v397 + 8);
      v212 = (v406 + 8);
      v213 = (v405 + 8);
      v422 = (v364 + 8);
      v115 = sub_226D6812C();

      (*v210)(v207, v209);
      (*v211)(v396, v404);
      (*(v208 - 24))(v395, v418);
      (*v212)(v394, v363);
      (*v213)(v392, v367);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v116 == *MEMORY[0x277CC6CE0])
  {
    (*(v101 + 96))(v105, v100);
    v215 = *v105;
    v214 = *(v105 + 1);
    v216 = *(v105 + 2);
    v217 = v407;
    v218 = v415;
    sub_226D69B6C();
    v219 = sub_226D6D6DC();
    (*(*(v219 - 8) + 56))(v217, 0, 1, v219);
    v220 = v408;
    sub_226D69B7C();
    v221 = sub_226D6D71C();
    (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
    sub_226D6CE8C();
    (*(v413 + 16))(v414, v218, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v222 = v384;
    sub_226D6CE0C();
    v223 = v416;
    v224 = v418;
    result = (*(v416 + 48))(v222, 1, v418);
    v225 = v421;
    if (result != 1)
    {
      v226 = v385;
      (*(v223 + 32))(v385, v222, v224);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v227 = v223;
      v228 = v423;
      v229 = v424;
      v417 = "ON_THE_WAY_ON_DATE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v230 = swift_allocObject();
      *(v230 + 16) = xmmword_226D71840;
      v232 = *v422;
      v231 = v422[1];
      v233 = MEMORY[0x277D837D0];
      *(v230 + 56) = MEMORY[0x277D837D0];
      v234 = sub_226B16404();
      *(v230 + 32) = v232;
      *(v230 + 40) = v231;
      *(v230 + 96) = v233;
      *(v230 + 104) = v234;
      *(v230 + 64) = v234;
      *(v230 + 72) = v228;
      *(v230 + 80) = v229;
      v235 = v419;
      v236 = v420;
      (*(v419 + 104))(v225, *MEMORY[0x277CC77B0], v420);

      v115 = sub_226D6812C();

      (*(v235 + 8))(v225, v236);
      (*(v227 + 8))(v226, v418);
      (*(v406 + 8))(v390, v363);
      (*(v405 + 8))(v389, v367);
      (*(v101 + 8))(v365, v366);
      return v115;
    }

    goto LABEL_37;
  }

  v110 = v421;
  if (v116 == *MEMORY[0x277CC6CE8])
  {
    (*(v101 + 96))(v105, v100);
    v237 = *v105;
    v417 = *(v105 + 1);
    v238 = *(v105 + 2);
    v239 = *(v105 + 3);
    v240 = *(v105 + 4);
    v241 = *(v105 + 5);
    v242 = v105[48];
    v243 = v407;
    v244 = v415;
    sub_226D69B6C();
    v245 = sub_226D6D6DC();
    (*(*(v245 - 8) + 56))(v243, 0, 1, v245);
    v246 = v408;
    sub_226D69B7C();
    v247 = sub_226D6D71C();
    (*(*(v247 - 8) + 56))(v246, 0, 1, v247);
    v248 = v244;
    sub_226D6CE8C();
    v249 = v414;
    v250 = *(v413 + 16);
    v251 = v412;
    v250(v414, v244, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v252 = v379;
    sub_226D6CE0C();
    v253 = v416;
    v254 = v418;
    result = (*(v416 + 48))(v252, 1, v418);
    if (result != 1)
    {
      (*(v253 + 32))(v387, v252, v254);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v255 = v423;
      v256 = v424;
      v250(v249, v248, v251);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450]);
      sub_226D6A28C();
      v257 = v423;
      v258 = v424;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v259 = swift_allocObject();
      *(v259 + 16) = xmmword_226D72130;
      v261 = *v422;
      v260 = v422[1];
      v262 = MEMORY[0x277D837D0];
      *(v259 + 56) = MEMORY[0x277D837D0];
      v263 = sub_226B16404();
      *(v259 + 32) = v261;
      *(v259 + 40) = v260;
      *(v259 + 96) = v262;
      *(v259 + 104) = v263;
      *(v259 + 64) = v263;
      *(v259 + 72) = v255;
      *(v259 + 80) = v256;
      *(v259 + 136) = v262;
      *(v259 + 144) = v263;
      *(v259 + 112) = v257;
      *(v259 + 120) = v258;
      v264 = v419 + 104;
      v265 = v421;
      v266 = v253 + 32;
      v267 = v420;
      (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

      v268 = (v264 - 96);
      v269 = (v397 + 8);
      v270 = (v406 + 8);
      v271 = (v405 + 8);
      v422 = (v364 + 8);
      v115 = sub_226D6812C();

      (*v268)(v265, v267);
      (*v269)(v388, v404);
      (*(v266 - 24))(v387, v418);
      (*v270)(v386, v363);
      (*v271)(v383, v367);
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  if (v116 == *MEMORY[0x277CC6CF8])
  {
    (*(v101 + 96))(v105, v100);
    v272 = *v105;
    v417 = *(v105 + 1);
    v273 = *(v105 + 2);
    v274 = *(v105 + 7);
    v275 = *(v105 + 8);
    v276 = *(v105 + 9);
    v277 = v105[80];
    v278 = v407;
    v279 = v415;
    sub_226D69B6C();
    v280 = sub_226D6D6DC();
    (*(*(v280 - 8) + 56))(v278, 0, 1, v280);
    v281 = v408;
    sub_226D69B7C();
    v282 = sub_226D6D71C();
    (*(*(v282 - 8) + 56))(v281, 0, 1, v282);
    v283 = v279;
    sub_226D6CE8C();
    v284 = v414;
    v285 = *(v413 + 16);
    v286 = v412;
    v285(v414, v279, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v287 = v376;
    sub_226D6CE0C();
    v288 = v416;
    v289 = v418;
    result = (*(v416 + 48))(v287, 1, v418);
    if (result != 1)
    {
      (*(v288 + 32))(v381, v287, v289);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v290 = v423;
      v291 = v424;
      v285(v284, v283, v286);
      sub_226D6CA8C();
      sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450]);
      sub_226D6A28C();
      v292 = v423;
      v293 = v424;
      sub_226D69B2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v294 = swift_allocObject();
      *(v294 + 16) = xmmword_226D72130;
      v296 = *v422;
      v295 = v422[1];
      v297 = MEMORY[0x277D837D0];
      *(v294 + 56) = MEMORY[0x277D837D0];
      v298 = sub_226B16404();
      *(v294 + 32) = v296;
      *(v294 + 40) = v295;
      *(v294 + 96) = v297;
      *(v294 + 104) = v298;
      *(v294 + 64) = v298;
      *(v294 + 72) = v290;
      *(v294 + 80) = v291;
      *(v294 + 136) = v297;
      *(v294 + 144) = v298;
      *(v294 + 112) = v292;
      *(v294 + 120) = v293;
      v299 = v419 + 104;
      v300 = v421;
      v301 = v288 + 32;
      v302 = v420;
      (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

      v303 = (v299 - 96);
      v304 = (v397 + 8);
      v305 = (v406 + 8);
      v306 = (v405 + 8);
      v422 = (v364 + 8);
      v115 = sub_226D6812C();

      (*v303)(v300, v302);
      (*v304)(v382, v404);
      (*(v301 - 24))(v381, v418);
      (*v305)(v380, v363);
      (*v306)(v378, v367);
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v109 = v420;
  if (v116 == *MEMORY[0x277CC6D10])
  {
    (*(v101 + 96))(v105, v100);
    v307 = *(v105 + 3);
    v417 = *(v105 + 4);
    v308 = *(v105 + 5);
    v309 = v407;
    v310 = v415;
    sub_226D69B6C();
    v311 = sub_226D6D6DC();
    (*(*(v311 - 8) + 56))(v309, 0, 1, v311);
    v312 = v408;
    sub_226D69B7C();
    v313 = sub_226D6D71C();
    (*(*(v313 - 8) + 56))(v312, 0, 1, v313);
    sub_226D6CE8C();
    (*(v413 + 16))(v414, v310, v412);
    (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
    sub_226D6813C();
    v314 = v370;
    sub_226D6CE0C();
    v315 = v416;
    v316 = v418;
    result = (*(v416 + 48))(v314, 1, v418);
    if (result != 1)
    {
      (*(v315 + 32))(v377, v314, v316);
      sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
      sub_226D6A28C();
      v317 = v315;
      v318 = v423;
      v319 = v424;
      v417 = "ON_THE_WAY_ON_DATE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v320 = swift_allocObject();
      *(v320 + 16) = xmmword_226D71840;
      v322 = *v422;
      v321 = v422[1];
      v323 = MEMORY[0x277D837D0];
      *(v320 + 56) = MEMORY[0x277D837D0];
      v324 = sub_226B16404();
      *(v320 + 32) = v322;
      *(v320 + 40) = v321;
      *(v320 + 96) = v323;
      *(v320 + 104) = v324;
      *(v320 + 64) = v324;
      *(v320 + 72) = v318;
      *(v320 + 80) = v319;
      v325 = v419;
      (*(v419 + 104))(v110, *MEMORY[0x277CC77B0], v109);

      v115 = sub_226D6812C();

      (*(v325 + 8))(v110, v109);
      (*(v317 + 8))(v377, v418);
      (*(v406 + 8))(v375, v363);
      (*(v405 + 8))(v374, v367);
      (*(v364 + 8))(v107, v366);
      return v115;
    }

    goto LABEL_40;
  }

  if (v116 != *MEMORY[0x277CC6D18])
  {
    v361 = *(v101 + 8);
    v361(v365, v100);
    v361(v105, v100);
    goto LABEL_3;
  }

  (*(v101 + 96))(v105, v100);
  v326 = *(v105 + 7);
  v417 = *(v105 + 8);
  v327 = *(v105 + 9);
  v328 = *(v105 + 10);
  v329 = *(v105 + 11);
  v330 = *(v105 + 12);
  v331 = v105[104];
  v332 = v407;
  v333 = v415;
  sub_226D69B6C();
  v334 = sub_226D6D6DC();
  (*(*(v334 - 8) + 56))(v332, 0, 1, v334);
  v335 = v408;
  sub_226D69B7C();
  v336 = sub_226D6D71C();
  (*(*(v336 - 8) + 56))(v335, 0, 1, v336);
  v337 = v333;
  sub_226D6CE8C();
  v338 = v414;
  v339 = *(v413 + 16);
  v340 = v412;
  v339(v414, v333, v412);
  (*(v410 + 104))(v411, *MEMORY[0x277CC7750], v409);
  sub_226D6813C();
  v341 = v368;
  sub_226D6CE0C();
  v342 = v416;
  v343 = v418;
  result = (*(v416 + 48))(v341, 1, v418);
  if (result != 1)
  {
    (*(v342 + 32))(v372, v341, v343);
    sub_226C5BAF8(&qword_27D7A83B8, MEMORY[0x277CC71C0]);
    sub_226D6A28C();
    v344 = v423;
    v345 = v424;
    v339(v338, v337, v340);
    sub_226D6CA8C();
    sub_226C5BAF8(&qword_27D7A83C0, MEMORY[0x277CC8450]);
    sub_226D6A28C();
    v346 = v423;
    v347 = v424;
    sub_226D69B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v348 = swift_allocObject();
    *(v348 + 16) = xmmword_226D72130;
    v350 = *v422;
    v349 = v422[1];
    v351 = MEMORY[0x277D837D0];
    *(v348 + 56) = MEMORY[0x277D837D0];
    v352 = sub_226B16404();
    *(v348 + 32) = v350;
    *(v348 + 40) = v349;
    *(v348 + 96) = v351;
    *(v348 + 104) = v352;
    *(v348 + 64) = v352;
    *(v348 + 72) = v344;
    *(v348 + 80) = v345;
    *(v348 + 136) = v351;
    *(v348 + 144) = v352;
    *(v348 + 112) = v346;
    *(v348 + 120) = v347;
    v353 = v419 + 104;
    v354 = v421;
    v355 = v342 + 32;
    v356 = v420;
    (*(v419 + 104))(v421, *MEMORY[0x277CC77B0], v420);

    v357 = (v353 - 96);
    v358 = (v397 + 8);
    v359 = (v406 + 8);
    v360 = (v405 + 8);
    v422 = (v364 + 8);
    v115 = sub_226D6812C();

    (*v357)(v354, v356);
    (*v358)(v373, v404);
    (*(v355 - 24))(v372, v418);
    (*v359)(v371, v363);
    (*v360)(v369, v367);
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
  return result;
}