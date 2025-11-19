void *sub_25B069B20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314E0, &unk_25B0E6C20);
  v2 = *v0;
  v3 = sub_25B0E3D20();
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

char *sub_25B069C7C()
{
  v1 = v0;
  v34 = sub_25B0E2750();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C8, &qword_25B0E6C10);
  v4 = *v0;
  v5 = sub_25B0E3D20();
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

char *sub_25B069EFC()
{
  v1 = v0;
  v32 = sub_25B0E23C0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31408, &qword_25B0E6B28);
  v4 = *v0;
  v5 = sub_25B0E3D20();
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
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
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

id sub_25B06A170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314D8, &qword_25B0E6C18);
  v2 = *v0;
  v3 = sub_25B0E3D20();
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

char *sub_25B06A2DC()
{
  v1 = v0;
  v42 = sub_25B0E26B0();
  v44 = *(v42 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B8, &qword_25B0E6C00);
  v4 = *v0;
  v5 = sub_25B0E3D20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v43 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v48 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 48 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 48 * v19);
        v23 = v22[1];
        v47 = *v22;
        v24 = v22[3];
        v46 = v22[2];
        v25 = v22[5];
        v45 = v22[4];
        v26 = v44;
        v27 = *(v44 + 72) * v19;
        v29 = v41;
        v28 = v42;
        (*(v44 + 16))(v41, v21 + v27, v42);
        v30 = v43;
        v31 = (*(v43 + 48) + v20);
        v32 = v46;
        *v31 = v47;
        v31[1] = v23;
        v31[2] = v32;
        v31[3] = v24;
        v31[4] = v45;
        v31[5] = v25;
        v33 = *(v30 + 56);
        v34 = *(v26 + 32);
        v4 = v40;
        v34(v33 + v27, v29, v28);

        v14 = v48;
      }

      while (v48);
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

        v1 = v36;
        v6 = v43;
        goto LABEL_18;
      }

      v18 = *(v37 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v48 = (v18 - 1) & v18;
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

void *sub_25B06A5EC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_25B0E3D20();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v40 = v6;
    v41 = (v11 + 64);
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, v41, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v47 + 32;
    v43 = v47 + 16;
    v44 = v11;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = v46;
        v28 = v47;
        v29 = *(v47 + 72) * v26;
        v30 = v45;
        (*(v47 + 16))(v45, *(v11 + 48) + v29, v46);
        v31 = *(v11 + 56);
        v32 = 32 * v26;
        v33 = (v31 + 32 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[3];
        v49 = v33[2];
        v50 = v34;
        v37 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v30, v27);
        v38 = (*(v37 + 56) + v32);
        v11 = v44;
        v39 = v49;
        *v38 = v50;
        v38[1] = v35;
        v38[2] = v39;
        v38[3] = v36;

        v21 = v51;
      }

      while (v51);
    }

    v24 = v17;
    v13 = v48;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v40;
        goto LABEL_21;
      }

      v25 = *(v41 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v51 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_25B06A8A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25B0E3D20();
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

unint64_t sub_25B06A9F0()
{
  result = qword_27FA31428;
  if (!qword_27FA31428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31428);
  }

  return result;
}

unint64_t sub_25B06AA44()
{
  result = qword_27FA31430;
  if (!qword_27FA31430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31430);
  }

  return result;
}

id sub_25B06AA98()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25B0E23E0();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25B0E22D0();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25B06AB58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25B06ABAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25B06AC00()
{
  result = qword_27FA31448;
  if (!qword_27FA31448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31448);
  }

  return result;
}

unint64_t sub_25B06AC54()
{
  result = qword_27FA31450;
  if (!qword_27FA31450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31450);
  }

  return result;
}

unint64_t sub_25B06ACA8()
{
  result = qword_27FA31460;
  if (!qword_27FA31460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31460);
  }

  return result;
}

unint64_t sub_25B06ACFC()
{
  result = qword_27FA31468;
  if (!qword_27FA31468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31468);
  }

  return result;
}

uint64_t sub_25B06AD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B062FE8(a1, v4, v5, v6);
}

uint64_t sub_25B06AE14(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25B05859C;

  return sub_25B063638(a1, v7, v8, v9, (v1 + 5), v10, v11, v1 + v6);
}

uint64_t sub_25B06AF70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25B05859C;

  return sub_25B063C20(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25B06B070(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v7 = (v5 + *(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + v5);
  v11 = *(v1 + v5);
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_25B05859C;

  return sub_25B064F80(a1, v8, v9, v1 + v4, v11, v12, v13, v14);
}

uint64_t sub_25B06B218(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v9 = (v7 + *(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v10 = v1 + v6;
  v11 = *(v1 + v6);
  v12 = *(v10 + 8);
  v13 = (v1 + v7);
  v14 = *(v1 + v7);
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_25B05859C;

  return sub_25B0643DC(a1, v21, v20, v1 + v5, v11, v12, v14, v15);
}

uint64_t sub_25B06B3D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B065840(a1, v5);
}

uint64_t sub_25B06B48C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25B06B508()
{
  result = qword_27FA314E8;
  if (!qword_27FA314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314E8);
  }

  return result;
}

unint64_t sub_25B06B560()
{
  result = qword_27FA314F0;
  if (!qword_27FA314F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314F0);
  }

  return result;
}

unint64_t sub_25B06B5B8()
{
  result = qword_27FA314F8;
  if (!qword_27FA314F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314F8);
  }

  return result;
}

unint64_t sub_25B06B610()
{
  result = qword_27FA31500;
  if (!qword_27FA31500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31500);
  }

  return result;
}

unint64_t sub_25B06B668()
{
  result = qword_27FA31508;
  if (!qword_27FA31508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31508);
  }

  return result;
}

uint64_t sub_25B06B6E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v78 = sub_25B0E2310();
  v3 = *(v78 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E23C0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v66[1] = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66[2] = v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v68 = v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v79 = v66 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v75 = v66 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v66 - v21;
  v23 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v71 = a1[2];
  v67 = v28;
  v29 = (v7 + 2);
  v73 = v7[2];
  v73(v22, v76 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL, v6);
  v80 = v26;
  v81 = v27;
  v30 = v6;
  v32 = v77;
  v31 = v78;
  (*(v3 + 104))(v77, *MEMORY[0x277CC91D8], v78);
  sub_25B04C9BC();

  v33 = v75;
  sub_25B0E23B0();
  v34 = *(v3 + 8);
  v35 = v73;
  v34(v32, v31);

  v36 = v74;
  sub_25B0E2380();
  v38 = (v7 + 1);
  v37 = v7[1];
  v37(v33, v30);
  v76 = v37;
  v77 = v38;
  v37(v22, v30);
  v78 = v30;
  v75 = v29;
  v35(v79, v36, v30);
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v39 = sub_25B0E2970();
  v40 = __swift_project_value_buffer(v39, qword_27FA31510);
  v41 = v68;
  v35(v68, v79, v78);

  v42 = v67;

  v72 = v40;
  v43 = sub_25B0E2950();
  v44 = sub_25B0E3A50();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v80 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_25B04BE04(v71, v42, &v80);
    *(v45 + 12) = 2080;
    v47 = sub_25B0E2320();
    v48 = v41;
    v50 = v49;
    v76(v48, v78);
    v51 = sub_25B04BE04(v47, v50, &v80);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_25B03D000, v43, v44, "Looking for %s at %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v46, -1, -1);
    MEMORY[0x25F8613E0](v45, -1, -1);
  }

  else
  {

    v76(v41, v78);
  }

  v52 = sub_25B0E23D0();
  v54 = v53;
  v55 = sub_25B0E2270();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  sub_25B0E2260();
  sub_25B06DE5C();
  sub_25B0E2250();

  sub_25B06ABAC(v52, v54);
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v63 = v85;
  v76(v79, v78);
  result = sub_25B06DD48(v74);
  v65 = v70;
  *v70 = v58;
  v65[1] = v59;
  v65[2] = v60;
  v65[3] = v61;
  v65[4] = v62;
  v65[5] = v63;
  return result;
}

void sub_25B06C2CC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v113 = a2;
  v133 = *MEMORY[0x277D85DE8];
  v118 = sub_25B0E2310();
  v5 = *(v118 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v118);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_25B0E23C0();
  v9 = *(v117 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v117);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v110 - v14;
  v16 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v114 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v121 = a1;
  v122 = &v110 - v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 8))(&v127, v21, v22);
  v23 = v127;
  v24 = v128;
  v116 = v130;
  v25 = v9[2];
  v119 = OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v120 = v3;
  v26 = v3 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v27 = v117;
  v25(v15, v26, v117);
  v123[0] = v23;
  v123[1] = v24;
  v28 = v118;
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v118);
  sub_25B04C9BC();

  sub_25B0E23B0();

  v29 = v8;
  v30 = v122;
  (*(v5 + 8))(v29, v28);

  sub_25B0E2380();
  v31 = v9[1];
  v31(v13, v27);
  v31(v15, v27);
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v32 = sub_25B0E2970();
  v33 = __swift_project_value_buffer(v32, qword_27FA31510);
  v34 = v121;
  sub_25B049F48(v121, &v127);

  v118 = v33;
  v35 = sub_25B0E2950();
  v36 = sub_25B0E3A50();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v126 = v38;
    *v37 = 136315394;
    v39 = v130;
    v40 = v131;
    __swift_project_boxed_opaque_existential_1(&v127, v130);
    v40[1](v123, v39, v40);
    v41 = v124;
    v42 = v125;

    __swift_destroy_boxed_opaque_existential_1(&v127);
    v43 = sub_25B04BE04(v41, v42, &v126);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v44 = sub_25B0E2320();
    v46 = sub_25B04BE04(v44, v45, &v126);

    *(v37 + 14) = v46;
    _os_log_impl(&dword_25B03D000, v35, v36, "Storing %s inside %s", v37, 0x16u);
    swift_arrayDestroy();
    v47 = v38;
    v34 = v121;
    MEMORY[0x25F8613E0](v47, -1, -1);
    MEMORY[0x25F8613E0](v37, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  v48 = [objc_opt_self() defaultManager];
  v49 = sub_25B0E2360();
  v127 = 0;
  v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v127];

  v51 = v127;
  if (v50)
  {
    sub_25B049F48(v34, &v127);
    v52 = v114;
    sub_25B06DDA4(v30, v114);
    v53 = v51;
    v54 = sub_25B0E2950();
    v55 = sub_25B0E3A50();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v34;
      v58 = swift_slowAlloc();
      v126 = v58;
      *v56 = 136315394;
      v59 = v130;
      v60 = v131;
      __swift_project_boxed_opaque_existential_1(&v127, v130);
      v60[1](v123, v59, v60);
      v61 = v124;
      v62 = v125;

      __swift_destroy_boxed_opaque_existential_1(&v127);
      v63 = sub_25B04BE04(v61, v62, &v126);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      v64 = sub_25B0E2320();
      v66 = v65;
      sub_25B06DD48(v52);
      v67 = sub_25B04BE04(v64, v66, &v126);

      *(v56 + 14) = v67;
      _os_log_impl(&dword_25B03D000, v54, v55, "Writing snapshot %s to %s", v56, 0x16u);
      swift_arrayDestroy();
      v68 = v58;
      v34 = v57;
      MEMORY[0x25F8613E0](v68, -1, -1);
      MEMORY[0x25F8613E0](v56, -1, -1);
    }

    else
    {

      sub_25B06DD48(v52);
      __swift_destroy_boxed_opaque_existential_1(&v127);
    }

    v70 = v34[3];
    v71 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v70);
    (*(v71 + 8))(&v127, v70, v71);
    v72 = v127;
    v121 = v128;
    v74 = v129;
    v73 = v130;
    v75 = v34[3];
    v76 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v75);
    v77 = (*(v76 + 16))(v75, v76);
    v78 = v34[3];
    v79 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v78);
    v80 = (*(v79 + 24))(v78, v79);
    v81 = sub_25B0E22A0();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    v84 = sub_25B0E2290();
    v127 = v72;
    v85 = v84;
    v128 = v121;
    v129 = v74;
    v130 = v73;
    v131 = v77;
    v132 = v80;
    sub_25B06DE08();
    v86 = v115;
    v87 = sub_25B0E2280();
    if (v86)
    {
      sub_25B06DD48(v122);
    }

    else
    {
      v116 = v72;
      v117 = v85;
      v119 = v80;
      v115 = v74;
      v89 = v87;
      v90 = v88;
      sub_25B0E2400();
      v114 = v89;
      v112 = v90;
      v111 = v73;
      sub_25B049F48(v34, &v127);
      v91 = sub_25B0E2950();
      v92 = sub_25B0E3A50();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v126 = v94;
        *v93 = 136315138;
        v95 = v130;
        v96 = v131;
        __swift_project_boxed_opaque_existential_1(&v127, v130);
        v97 = v96[1];
        v98 = v96;
        v99 = v120;
        v97(v123, v95, v98);
        v100 = v124;
        v101 = v125;

        __swift_destroy_boxed_opaque_existential_1(&v127);
        v102 = sub_25B04BE04(v100, v101, &v126);

        *(v93 + 4) = v102;
        _os_log_impl(&dword_25B03D000, v91, v92, "Notifying clients storage of %s…", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x25F8613E0](v94, -1, -1);
        MEMORY[0x25F8613E0](v93, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v127);
        v99 = v120;
      }

      v104 = v115;
      v103 = v116;
      os_unfair_lock_lock((v99 + 112));
      sub_25B06D548((v99 + 120));
      v105 = v111;
      v106 = v119;
      os_unfair_lock_unlock((v99 + 112));
      sub_25B06ABAC(v114, v112);

      sub_25B06DD48(v122);
      v107 = v113;
      v108 = v121;
      *v113 = v103;
      v107[1] = v108;
      v107[2] = v104;
      v107[3] = v105;
      v107[4] = v77;
      v107[5] = v106;
    }
  }

  else
  {
    v69 = v127;
    sub_25B0E22D0();

    swift_willThrow();
    sub_25B06DD48(v30);
  }

  v109 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25B06CD8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  *v7 = 1;
  (*(v4 + 104))(v7, *MEMORY[0x277D85768], v3);
  sub_25B0E3950();
  (*(v4 + 8))(v7, v3);
  os_unfair_lock_lock((v1 + 112));
  (*(v9 + 16))(v13, v15, v8);
  v16 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_25B089A40(0, v16[2] + 1, 1, v16);
    *(v1 + 120) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_25B089A40(v18 > 1, v19 + 1, 1, v16);
    *(v1 + 120) = v16;
  }

  v16[2] = v19 + 1;
  (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v13, v8);
  os_unfair_lock_unlock((v1 + 112));
  (*(v9 + 8))(v15, v8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
}

uint64_t sub_25B06D094()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31510);
  __swift_project_value_buffer(v0, qword_27FA31510);
  return sub_25B0E2960();
}

uint64_t sub_25B06D114()
{
  sub_25B0E3F10();
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B06D19C()
{
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260]);

  return sub_25B0E36D0();
}

uint64_t sub_25B06D220()
{
  sub_25B0E3F10();
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B06D2A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  os_unfair_lock_lock((v1 + 112));
  v7 = *(v1 + 120);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      sub_25B0E3990();
      (*(v9 - 8))(v6, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock((v1 + 112));
  sub_25B058448(v1 + 120, &qword_27FA31840, &qword_25B0E6FC0);
  v14 = OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v15 = sub_25B0E23C0();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_25B06D450()
{
  sub_25B06D2A8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25B06D4A4()
{
  result = sub_25B0E23C0();
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

uint64_t sub_25B06D548(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v43 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v29 = a1;
  result = *a1;
  v41 = *(*a1 + 16);
  if (v41)
  {
    v15 = 0;
    v37 = (v2 + 32);
    v38 = v11 + 16;
    v36 = (v2 + 88);
    v35 = *MEMORY[0x277D85758];
    v34 = *MEMORY[0x277D85750];
    v32 = *MEMORY[0x277D85748];
    v30 = (v11 + 8);
    v31 = (v2 + 8);
    v45 = (v11 + 32);
    v16 = MEMORY[0x277D84F90];
    v33 = v7;
    v39 = result;
    v40 = v11;
    while (1)
    {
      if (v15 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v18 = *(v11 + 72);
      (*(v11 + 16))(v13, result + v17 + v18 * v15, v7);
      v19 = v42;
      sub_25B0E3970();
      v21 = v43;
      v20 = v44;
      (*v37)(v43, v19, v44);
      v22 = (*v36)(v21, v20);
      if (v22 == v35 || v22 == v34)
      {
        goto LABEL_12;
      }

      if (v22 != v32)
      {
        break;
      }

      (*v30)(v13, v7);
LABEL_4:
      ++v15;
      v11 = v40;
      result = v39;
      if (v41 == v15)
      {
        goto LABEL_18;
      }
    }

    (*v31)(v43, v44);
LABEL_12:
    v24 = *v45;
    (*v45)(v46, v13, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v16 + 16) + 1, 1);
      v16 = v47;
    }

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_25B08C168(v26 > 1, v27 + 1, 1);
      v16 = v47;
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + v17 + v27 * v18;
    v7 = v33;
    v24(v28, v46, v33);
    goto LABEL_4;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  *v29 = v16;
  return result;
}

uint64_t sub_25B06D918(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25B0E23C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = MEMORY[0x277D84F90];
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v9 = sub_25B0E2970();
  __swift_project_value_buffer(v9, qword_27FA31510);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    sub_25B06DF8C(&qword_27FA31400, MEMORY[0x277CC9260]);
    v15 = sub_25B0E3E20();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_25B04BE04(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_25B03D000, v10, v11, "Creating storage at %s…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25F8613E0](v14, -1, -1);
    v19 = v13;
    a1 = v21;
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 32))(v2 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL, a1, v4);
  return v2;
}

uint64_t sub_25B06DBD8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25B06DBFC, v4, 0);
}

uint64_t sub_25B06DBFC()
{
  v1 = *(v0 + 32);
  sub_25B06B6E4(*(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B06DC60(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25B06DC84, v4, 0);
}

uint64_t sub_25B06DC84()
{
  v1 = *(v0 + 32);
  sub_25B06C2CC(*(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B06DD48(uint64_t a1)
{
  v2 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B06DDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B06DE08()
{
  result = qword_27FA31538;
  if (!qword_27FA31538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31538);
  }

  return result;
}

unint64_t sub_25B06DE5C()
{
  result = qword_27FA31540;
  if (!qword_27FA31540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31540);
  }

  return result;
}

uint64_t sub_25B06DED8()
{
  result = sub_25B0E23C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B06DF8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B06DFD4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31560);
  __swift_project_value_buffer(v0, qword_27FA31560);
  return sub_25B0E2960();
}

uint64_t sub_25B06E058()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B06E0DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25B0E3780();
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t sub_25B06E148()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B06E1CC()
{
  v0 = type metadata accessor for DaemonListener();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_25B0E2490();
  v5 = v3 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  *v5 = 0;
  v6 = MEMORY[0x277D84F98];
  *(v5 + 8) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = v6;
  *(v5 + 32) = v6;
  *(v5 + 40) = MEMORY[0x277D84F90];
  qword_27FA39978 = v3;
  return result;
}

uint64_t sub_25B06E244()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v45 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v29 = v0;
  result = *(v0 + 32);
  v40 = *(result + 16);
  if (v40)
  {
    v14 = 0;
    v37 = (v1 + 32);
    v38 = v7 + 16;
    v36 = (v1 + 88);
    v35 = *MEMORY[0x277D85758];
    v34 = *MEMORY[0x277D85750];
    v32 = *MEMORY[0x277D85748];
    v30 = (v7 + 8);
    v31 = (v1 + 8);
    v44 = (v7 + 32);
    v15 = MEMORY[0x277D84F90];
    v33 = v6;
    v39 = result;
    while (1)
    {
      if (v14 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = *(v7 + 72);
      (*(v7 + 16))(v12, result + v16 + v17 * v14, v6);
      v18 = v41;
      sub_25B0E3970();
      v20 = v42;
      v19 = v43;
      (*v37)(v42, v18, v43);
      v21 = (*v36)(v20, v19);
      if (v21 == v35 || v21 == v34)
      {
        goto LABEL_12;
      }

      if (v21 != v32)
      {
        break;
      }

      (*v30)(v12, v6);
LABEL_4:
      ++v14;
      result = v39;
      if (v40 == v14)
      {
        goto LABEL_18;
      }
    }

    (*v31)(v42, v43);
LABEL_12:
    v23 = *v44;
    (*v44)(v45, v12, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v15 + 16) + 1, 1);
      v15 = v46;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_25B08C168(v25 > 1, v26 + 1, 1);
      v15 = v46;
    }

    *(v15 + 16) = v26 + 1;
    v27 = v15 + v16 + v26 * v17;
    v6 = v33;
    v23(v27, v45, v33);
    goto LABEL_4;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_18:

  *(v29 + 32) = v15;
  return result;
}

uint64_t sub_25B06E608()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_instanceIdentifier;
  v2 = v0 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
  sub_25B070518((v2 + 8), (v0 + v1), &v7);
  os_unfair_lock_unlock(v2);
  v3 = sub_25B0E24A0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  sub_25B070914(v2 + 8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for DaemonListener()
{
  result = qword_27FA31588;
  if (!qword_27FA31588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B06E740()
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B06E7D8(uint64_t a1, int a2)
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

uint64_t sub_25B06E820(uint64_t result, int a2, int a3)
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

uint64_t sub_25B06E878@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v56 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v71);
  v8 = (&v56 - v7);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v70 = *(v73 - 8);
  v9 = *(v70 + 64);
  v10 = MEMORY[0x28223BE20](v73);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = sub_25B0E24A0();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_instanceIdentifier;
  v20 = v1 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
  if (!*(v20 + 8))
  {
    v59 = v18;
    v60 = v13;
    v65 = v8;
    v66 = v19;
    v62 = v20;
    v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v1;
    v61 = v5;
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v21 = sub_25B0E2970();
    __swift_project_value_buffer(v21, qword_27FA31560);
    v22 = v68;
    v23 = v64;
    v24 = v59;
    v25 = v14;
    v57 = *(v68 + 16);
    v58 = v68 + 16;
    v57(v59, v64 + v66, v14);
    v26 = sub_25B0E2950();
    v27 = sub_25B0E3A50();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v63;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v56 = v15;
      v31 = v29;
      v32 = v30;
      v33 = swift_slowAlloc();
      v74 = v33;
      *v32 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v34 = sub_25B0E3E20();
      v36 = v35;
      (*(v68 + 8))(v24, v25);
      v37 = sub_25B04BE04(v34, v36, &v74);
      v22 = v68;

      v38 = v32;
      v29 = v31;
      *(v38 + 1) = v37;
      v39 = v38;
      _os_log_impl(&dword_25B03D000, v26, v27, "Starting daemon listener %s…", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x25F8613E0](v33, -1, -1);
      MEMORY[0x25F8613E0](v39, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v24, v25);
    }

    v40 = v67;
    v41 = sub_25B0E3940();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    v42 = swift_allocObject();
    swift_weakInit();
    v57(v29, v23 + v66, v25);
    v43 = v22;
    v44 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    *(v45 + 4) = v42;
    (*(v43 + 32))(&v45[v44], v29, v25);
    v46 = sub_25B052F48(0, 0, v40, &unk_25B0E70E8, v45);
    v5 = v61;
    v20 = v62;
    *(v62 + 8) = v46;
    v13 = v60;
    v8 = v65;
  }

  os_unfair_lock_unlock(v20);
  *v8 = 1;
  v47 = v71;
  (*(v5 + 104))(v8, *MEMORY[0x277D85768], v71);
  sub_25B0E3950();
  (*(v5 + 8))(v8, v47);
  os_unfair_lock_lock(v20);
  v48 = v69;
  v49 = v70;
  v50 = v73;
  (*(v70 + 16))(v69, v13, v73);
  v51 = *(v20 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 40) = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = sub_25B089A40(0, v51[2] + 1, 1, v51);
    *(v20 + 40) = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_25B089A40(v53 > 1, v54 + 1, 1, v51);
    *(v20 + 40) = v51;
  }

  v51[2] = v54 + 1;
  (*(v49 + 32))(v51 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, v48, v50);
  os_unfair_lock_unlock(v20);
  return (*(v49 + 8))(v13, v50);
}

uint64_t sub_25B06EF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25B0E28B0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-v15];
  v17 = *(a1 + 16);
  v18 = qword_27FA30CB8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_25B0E2970();
  __swift_project_value_buffer(v19, qword_27FA31560);
  v20 = v11[2];
  v20(v16, a2, v10);
  v51 = a2;
  v20(v52, a2, v10);

  v21 = sub_25B0E2950();
  v22 = sub_25B0E3A50();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v23 = 136315650;
    v47 = v17;
    v24 = v9;
    v45 = v22;
    sub_25B0E28A0();
    sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
    v25 = v48;
    v26 = sub_25B0E3E20();
    v28 = v27;
    (v49[1].isa)(v24, v25);
    v29 = v11[1];
    v29(v16, v10);
    v30 = sub_25B04BE04(v26, v28, &v53);
    v49 = v21;
    v31 = v30;

    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v32 = v52;
    v33 = sub_25B0E2890();
    v35 = v34;
    v29(v32, v10);
    v17 = v47;
    v36 = sub_25B04BE04(v33, v35, &v53);

    *(v23 + 14) = v36;
    *(v23 + 22) = 2080;
    sub_25B0739F8(&qword_27FA31490, MEMORY[0x277D2BE48]);
    v37 = sub_25B0E36B0();
    v39 = sub_25B04BE04(v37, v38, &v53);

    *(v23 + 24) = v39;
    v40 = v49;
    _os_log_impl(&dword_25B03D000, v49, v45, "Looking for library %s on device %s in %s…", v23, 0x20u);
    v41 = v46;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v41, -1, -1);
    MEMORY[0x25F8613E0](v23, -1, -1);
  }

  else
  {

    v42 = v11[1];
    v42(v52, v10);
    v42(v16, v10);
  }

  sub_25B0D478C(v17, v50);
}

uint64_t sub_25B06F3F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_25B0E23C0();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B0E25B0();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_25B0E25D0();
  v72 = *(v79 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v79);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v62 - v18;
  v19 = sub_25B0E26B0();
  v20 = *(v19 - 8);
  v80 = v19;
  v81 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v78 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A0, &qword_25B0E70D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v65 = a2;
  v83[0] = a2;
  v83[1] = a3;
  v70 = v30;
  v83[2] = v30;
  v83[3] = v31;
  v76 = v32;
  v83[4] = v32;
  v83[5] = v33;
  v34 = v4 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;

  os_unfair_lock_lock(v34);
  v35 = *(v34 + 16);
  v64 = *(v35 + 16);
  if (qword_27FA30CB8 != -1)
  {
    swift_once();
  }

  v36 = sub_25B0E2970();
  __swift_project_value_buffer(v36, qword_27FA31560);

  v37 = sub_25B0E2950();
  v38 = sub_25B0E3A50();

  v39 = os_log_type_enabled(v37, v38);
  v77 = v29;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v63 = a4;
    v41 = v40;
    v42 = swift_slowAlloc();
    v82 = v42;
    *v41 = 136315650;
    *(v41 + 4) = sub_25B04BE04(v76, v33, &v82);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_25B04BE04(v65, a3, &v82);
    *(v41 + 22) = 2048;
    *(v41 + 24) = v64;
    _os_log_impl(&dword_25B03D000, v37, v38, "Looking for %s on %s in %ld snapshots…", v41, 0x20u);
    swift_arrayDestroy();
    v43 = v42;
    v29 = v77;
    MEMORY[0x25F8613E0](v43, -1, -1);
    v44 = v41;
    a4 = v63;
    MEMORY[0x25F8613E0](v44, -1, -1);
  }

  v45 = v80;
  if (*(v35 + 16) && (v46 = sub_25B065F78(v83), (v47 & 1) != 0))
  {
    v48 = *(v35 + 56);
    v49 = v81;
    (*(v81 + 16))(v29, v48 + *(v81 + 72) * v46, v45);
    (*(v49 + 56))(v29, 0, 1, v45);
  }

  else
  {
    v49 = v81;
    (*(v81 + 56))(v29, 1, 1, v45);
  }

  sub_25B073A40(v83);
  os_unfair_lock_unlock(v34);
  sub_25B073A70(v29, v27);
  if ((*(v49 + 48))(v27, 1, v45) == 1)
  {
    sub_25B058448(v29, &qword_27FA315A0, &qword_25B0E70D8);
    result = sub_25B058448(v27, &qword_27FA315A0, &qword_25B0E70D8);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    return result;
  }

  (*(v49 + 32))(v78, v27, v45);
  v51 = v66;
  sub_25B0E25E0();
  v52 = v67;
  sub_25B0E25C0();
  v53 = *(v72 + 8);
  v53(v51, v79);
  v54 = (*(v68 + 88))(v52, v69);
  if (v54 == *MEMORY[0x277D2BDF0])
  {
    v55 = 1;
LABEL_15:
    v72 = v55;
    v56 = v78;
    v80 = sub_25B06FF54();

    v57 = v71;
    sub_25B0E25E0();
    v58 = v73;
    sub_25B0E25A0();
    v53(v57, v79);
    v59 = objc_allocWithZone(MEMORY[0x277D2C040]);
    v60 = sub_25B0E2360();
    v61 = [v59 initWithFileURL:v60 format:v72];

    (*(v74 + 8))(v58, v75);
    (*(v81 + 8))(v56, v45);
    result = sub_25B058448(v77, &qword_27FA315A0, &qword_25B0E70D8);
    *a4 = v70;
    *(a4 + 8) = v31;
    *(a4 + 16) = v76;
    *(a4 + 24) = v33;
    *(a4 + 32) = v80;
    *(a4 + 40) = v61;
    return result;
  }

  if (v54 == *MEMORY[0x277D2BDF8])
  {
    v55 = 2;
    goto LABEL_15;
  }

  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

uint64_t sub_25B06FBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a3;
  v5 = sub_25B0E2870();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = *(a1 + 24);
  v14 = qword_27FA30CB8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_25B0E2970();
  __swift_project_value_buffer(v15, qword_27FA31560);
  v16 = v6[2];
  v16(v12, a2, v5);
  v40 = a2;
  v16(v10, a2, v5);

  v17 = sub_25B0E2950();
  v18 = sub_25B0E3A50();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v19 = 136315650;
    v37 = v18;
    v20 = sub_25B0E2840();
    v22 = v21;
    v36 = v17;
    v23 = v6[1];
    v23(v12, v5);
    v24 = sub_25B04BE04(v20, v22, &v41);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_25B0E2860();
    v27 = v26;
    v23(v10, v5);
    v28 = sub_25B04BE04(v25, v27, &v41);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    sub_25B0739F8(&qword_27FA314A0, MEMORY[0x277D2BE30]);
    v29 = sub_25B0E36B0();
    v31 = sub_25B04BE04(v29, v30, &v41);

    *(v19 + 24) = v31;
    v32 = v36;
    _os_log_impl(&dword_25B03D000, v36, v37, "Looking for gallery %s on device %s in %s…", v19, 0x20u);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v33, -1, -1);
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  else
  {

    v34 = v6[1];
    v34(v10, v5);
    v34(v12, v5);
  }

  sub_25B0D47A4(v13, v39);
}

id sub_25B06FF54()
{
  v0 = sub_25B0E2440();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25B0E24F0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E2690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  result = [objc_opt_self() currentContext];
  if (result)
  {
    v17 = result;
    sub_25B0E26A0();
    sub_25B0E2610();
    v18 = *(v8 + 8);
    v18(v15, v7);
    v19 = sub_25B0E3730();

    [v17 setBuildVersion_];

    sub_25B0E26A0();
    sub_25B0E2660();
    v18(v15, v7);
    v20 = sub_25B0E24D0();
    (*(v3 + 8))(v6, v35);
    [v17 setCalendar_];

    sub_25B0E26A0();
    v21 = v36;
    sub_25B0E2640();
    v18(v15, v7);
    v22 = sub_25B0E2410();
    (*(v37 + 8))(v21, v38);
    [v17 setDate_];

    sub_25B073AE0();
    sub_25B0E26A0();
    sub_25B0E2630();
    v18(v15, v7);
    v23 = sub_25B0E3AD0();
    [v17 setEnhanceTextLegibilityEnabled_];

    sub_25B0E26A0();
    sub_25B0E2650();
    v18(v15, v7);
    v24 = sub_25B0E3730();

    [v17 setLocale_];

    v25 = v39;
    sub_25B0E26A0();
    sub_25B0E2620();
    v27 = v26;
    v18(v25, v7);
    if (v27)
    {
      v28 = sub_25B0E3730();
    }

    else
    {
      v28 = 0;
    }

    [v17 setLunarCalendarLocaleID_];

    v29 = v40;
    sub_25B0E26A0();
    sub_25B0E2670();
    v31 = v30;
    v18(v29, v7);
    if (v31)
    {
      v32 = sub_25B0E3730();
    }

    else
    {
      v32 = 0;
    }

    [v17 setMonogram_];

    sub_25B0E26A0();
    sub_25B0E2680();
    v18(v15, v7);
    v33 = sub_25B0E3730();

    [v17 setTzVersion_];

    sub_25B0E26A0();
    sub_25B0E2600();
    v18(v15, v7);
    v34 = sub_25B0E3AD0();
    [v17 setUses24hTime_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B070518@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36[-v9];
  v11 = sub_25B0E24A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = a1;
  v17 = *a1;
  if (*a1)
  {
    v39 = *a1;
    v41 = v3;
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v40 = a3;
    v18 = sub_25B0E2970();
    __swift_project_value_buffer(v18, qword_27FA31560);
    (*(v12 + 16))(v16, v42, v11);
    v19 = sub_25B0E2950();
    v20 = sub_25B0E3A50();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = v21;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v21 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v37 = v20;
      v22 = sub_25B0E3E20();
      v24 = v23;
      (*(v12 + 8))(v16, v11);
      v25 = sub_25B04BE04(v22, v24, &v44);

      v26 = v38;
      *(v38 + 1) = v25;
      v27 = v26;
      _os_log_impl(&dword_25B03D000, v19, v37, "Stopping daemon listener %s…", v26, 0xCu);
      v28 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x25F8613E0](v28, -1, -1);
      MEMORY[0x25F8613E0](v27, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    sub_25B0E39E0();

    v29 = v43;
    *v43 = 0;
    v42 = v29[4];
    v30 = v42[2];
    if (v30)
    {
      v33 = *(v7 + 16);
      v31 = v7 + 16;
      v32 = v33;
      v34 = v42 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v35 = *(v31 + 56);
      do
      {
        v32(v10, v34, v6);
        sub_25B0E3990();
        (*(v31 - 8))(v10, v6);
        v34 += v35;
        --v30;
      }

      while (v30);
    }

    v43[4] = MEMORY[0x277D84F90];
    LOBYTE(v17) = 1;
    a3 = v40;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_25B070944(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E26B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v145 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v119[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v134 = &v119[-v12];
  MEMORY[0x28223BE20](v11);
  v133 = &v119[-v13];
  v151 = sub_25B0E26D0();
  v14 = *(v151 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v151);
  v152 = &v119[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v124 = &v119[-v18];
  v154 = sub_25B0E2870();
  v19 = *(v154 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v154);
  v150 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v153 = &v119[-v24];
  MEMORY[0x28223BE20](v23);
  v139 = &v119[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315B8, &qword_25B0E7130);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v136 = &v119[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v135 = &v119[-v30];
  v31 = *(a2 + 64);
  v121 = a2 + 64;
  v32 = 1 << *(a2 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v120 = (v32 + 63) >> 6;
  v149 = (v19 + 16);
  v123 = v14 + 16;
  v140 = (v14 + 32);
  v141 = (v19 + 32);
  v132 = (v5 + 8);
  v137 = v19;
  v131 = (v19 + 8);
  v138 = (v5 + 32);
  v125 = v14;
  v128 = (v14 + 8);
  v129 = v5;
  v122 = v5 + 40;
  v126 = a2;

  v35 = 0;
  v148 = a1;
  v146 = v4;
  v147 = MEMORY[0x277D84F98];
  if (!v34)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v98 = v35;
LABEL_36:
    v101 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v102 = v101 | (v98 << 6);
    v103 = v126;
    v104 = v137;
    v105 = v154;
    (*(v137 + 16))(v139, *(v126 + 48) + *(v137 + 72) * v102, v154);
    v106 = v125;
    v107 = v124;
    v108 = v151;
    (*(v125 + 16))(v124, *(v103 + 56) + *(v125 + 72) * v102, v151);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
    v110 = *(v109 + 48);
    v111 = *(v104 + 32);
    v91 = v136;
    v111(v136, v139, v105);
    (*(v106 + 32))(v91 + v110, v107, v108);
    (*(*(v109 - 8) + 56))(v91, 0, 1, v109);
    v100 = v98;
LABEL_37:
    v112 = v135;
    sub_25B0745E4(v91, v135, &qword_27FA315B8, &qword_25B0E7130);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
    if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
    {

      v114 = v147;

      v115 = v148;
      v116 = *(v148 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = *(v115 + 8);
      sub_25B07464C(v114, sub_25B073B2C, 0, isUniquelyReferenced_nonNull_native, &v158);
      swift_bridgeObjectRelease_n();
      *(v115 + 8) = v158;
      return sub_25B06E244();
    }

    v142 = v100;
    v36 = *(v113 + 48);
    (*v141)(v153, v112, v154);
    (*v140)(v152, &v112[v36], v151);
    v37 = v133;
    sub_25B0E26C0();
    v38 = sub_25B0E25F0();
    v144 = v39;
    v40 = *v132;
    v41 = v146;
    (*v132)(v37, v146);
    v42 = v134;
    sub_25B0E26C0();
    v43 = sub_25B0E2590();
    v45 = v44;
    v40(v42, v41);
    v46 = v144;
    v47 = v153;
    *&v155 = sub_25B0E2860();
    *(&v155 + 1) = v48;
    v143 = v38;
    *&v156 = v38;
    *(&v156 + 1) = v46;
    *&v157 = v43;
    *(&v157 + 1) = v45;
    v49 = v150;
    v50 = *v149;
    (*v149)(v150, v47, v154);

    v51 = v148;
    v52 = *(v148 + 24);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v51 + 24);
    v158 = v54;
    v56 = sub_25B066014(v49);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if (v53)
      {
        v63 = v158;
        if (v55)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_25B06A59C();
        v63 = v158;
        if (v60)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_25B067660(v59, v53);
      v61 = sub_25B066014(v150);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_45;
      }

      v56 = v61;
      v63 = v158;
      if (v60)
      {
LABEL_13:
        v73 = (v63[7] + 32 * v56);
        v74 = v73[1];
        v75 = v73[3];
        *v73 = v143;
        v73[1] = v46;
        v73[2] = v43;
        v73[3] = v45;

        v69 = *v131;
        (*v131)(v150, v154);
        goto LABEL_14;
      }
    }

    v63[(v56 >> 6) + 8] |= 1 << v56;
    v64 = v137;
    v65 = v63[6] + *(v137 + 72) * v56;
    v127 = v43;
    v66 = v150;
    v67 = v154;
    v50(v65, v150, v154);
    v68 = (v63[7] + 32 * v56);
    *v68 = v143;
    v68[1] = v46;
    v68[2] = v127;
    v68[3] = v45;
    v69 = *(v64 + 8);
    v69(v66, v67);
    v70 = v63[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_42;
    }

    v63[2] = v72;
LABEL_14:
    *(v148 + 24) = v63;
    v76 = v130;
    sub_25B0E26C0();
    v77 = *v138;
    v78 = v146;
    (*v138)(v145, v76, v146);
    v79 = v147;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v79;
    v81 = sub_25B065F78(&v155);
    v83 = v79[2];
    v84 = (v82 & 1) == 0;
    v71 = __OFADD__(v83, v84);
    v85 = v83 + v84;
    if (v71)
    {
      goto LABEL_41;
    }

    v86 = v82;
    if (v79[3] < v85)
    {
      sub_25B067274(v85, v80);
      v81 = sub_25B065F78(&v155);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_44;
      }

LABEL_19:
      if ((v86 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (v80)
    {
      goto LABEL_19;
    }

    v92 = v81;
    sub_25B06A2DC();
    v81 = v92;
    if ((v86 & 1) == 0)
    {
LABEL_25:
      v89 = v158;
      v158[(v81 >> 6) + 8] |= 1 << v81;
      v93 = (v89[6] + 48 * v81);
      v94 = v157;
      v95 = v156;
      *v93 = v155;
      v93[1] = v95;
      v93[2] = v94;
      v77(v89[7] + *(v129 + 72) * v81, v145, v78);
      (*v128)(v152, v151);
      v69(v153, v154);
      v96 = v89[2];
      v71 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v71)
      {
        goto LABEL_43;
      }

      v89[2] = v97;
      goto LABEL_27;
    }

LABEL_20:
    v88 = v81;
    sub_25B073A40(&v155);
    v89 = v158;
    (*(v129 + 40))(v158[7] + *(v129 + 72) * v88, v145, v78);
    (*v128)(v152, v151);
    v69(v153, v154);
LABEL_27:
    v35 = v142;
    v147 = v89;
    if (!v34)
    {
LABEL_29:
      if (v120 <= v35 + 1)
      {
        v99 = v35 + 1;
      }

      else
      {
        v99 = v120;
      }

      v100 = v99 - 1;
      while (1)
      {
        v98 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v98 >= v120)
        {
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
          v91 = v136;
          (*(*(v90 - 8) + 56))(v136, 1, 1, v90);
          v34 = 0;
          goto LABEL_37;
        }

        v34 = *(v121 + 8 * v98);
        ++v35;
        if (v34)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_25B0E3E80();
  __break(1u);
LABEL_45:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0714F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E26B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v145 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v119[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v134 = &v119[-v12];
  MEMORY[0x28223BE20](v11);
  v133 = &v119[-v13];
  v151 = sub_25B0E26F0();
  v14 = *(v151 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v151);
  v152 = &v119[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v124 = &v119[-v18];
  v154 = sub_25B0E28B0();
  v19 = *(v154 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v154);
  v150 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v153 = &v119[-v24];
  MEMORY[0x28223BE20](v23);
  v139 = &v119[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315F8, &qword_25B0E7178);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v136 = &v119[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v135 = &v119[-v30];
  v31 = *(a2 + 64);
  v121 = a2 + 64;
  v32 = 1 << *(a2 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v120 = (v32 + 63) >> 6;
  v149 = (v19 + 16);
  v123 = v14 + 16;
  v140 = (v14 + 32);
  v141 = (v19 + 32);
  v132 = (v5 + 8);
  v137 = v19;
  v131 = (v19 + 8);
  v138 = (v5 + 32);
  v125 = v14;
  v128 = (v14 + 8);
  v129 = v5;
  v122 = v5 + 40;
  v126 = a2;

  v35 = 0;
  v148 = a1;
  v146 = v4;
  v147 = MEMORY[0x277D84F98];
  if (!v34)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v98 = v35;
LABEL_36:
    v101 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v102 = v101 | (v98 << 6);
    v103 = v126;
    v104 = v137;
    v105 = v154;
    (*(v137 + 16))(v139, *(v126 + 48) + *(v137 + 72) * v102, v154);
    v106 = v125;
    v107 = v124;
    v108 = v151;
    (*(v125 + 16))(v124, *(v103 + 56) + *(v125 + 72) * v102, v151);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
    v110 = *(v109 + 48);
    v111 = *(v104 + 32);
    v91 = v136;
    v111(v136, v139, v105);
    (*(v106 + 32))(v91 + v110, v107, v108);
    (*(*(v109 - 8) + 56))(v91, 0, 1, v109);
    v100 = v98;
LABEL_37:
    v112 = v135;
    sub_25B0745E4(v91, v135, &qword_27FA315F8, &qword_25B0E7178);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
    if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
    {

      v114 = v147;

      v115 = v148;
      v116 = *(v148 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = *(v115 + 8);
      sub_25B07464C(v114, sub_25B073B2C, 0, isUniquelyReferenced_nonNull_native, &v158);
      swift_bridgeObjectRelease_n();
      *(v115 + 8) = v158;
      return sub_25B06E244();
    }

    v142 = v100;
    v36 = *(v113 + 48);
    (*v141)(v153, v112, v154);
    (*v140)(v152, &v112[v36], v151);
    v37 = v133;
    sub_25B0E26E0();
    v38 = sub_25B0E25F0();
    v144 = v39;
    v40 = *v132;
    v41 = v146;
    (*v132)(v37, v146);
    v42 = v134;
    sub_25B0E26E0();
    v43 = sub_25B0E2590();
    v45 = v44;
    v40(v42, v41);
    v46 = v144;
    v47 = v153;
    *&v155 = sub_25B0E2890();
    *(&v155 + 1) = v48;
    v143 = v38;
    *&v156 = v38;
    *(&v156 + 1) = v46;
    *&v157 = v43;
    *(&v157 + 1) = v45;
    v49 = v150;
    v50 = *v149;
    (*v149)(v150, v47, v154);

    v51 = v148;
    v52 = *(v148 + 16);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v51 + 16);
    v158 = v54;
    v56 = sub_25B065EA4(v49);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if (v53)
      {
        v63 = v158;
        if (v55)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_25B06A5C4();
        v63 = v158;
        if (v60)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_25B067A68(v59, v53);
      v61 = sub_25B065EA4(v150);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_45;
      }

      v56 = v61;
      v63 = v158;
      if (v60)
      {
LABEL_13:
        v73 = (v63[7] + 32 * v56);
        v74 = v73[1];
        v75 = v73[3];
        *v73 = v143;
        v73[1] = v46;
        v73[2] = v43;
        v73[3] = v45;

        v69 = *v131;
        (*v131)(v150, v154);
        goto LABEL_14;
      }
    }

    v63[(v56 >> 6) + 8] |= 1 << v56;
    v64 = v137;
    v65 = v63[6] + *(v137 + 72) * v56;
    v127 = v43;
    v66 = v150;
    v67 = v154;
    v50(v65, v150, v154);
    v68 = (v63[7] + 32 * v56);
    *v68 = v143;
    v68[1] = v46;
    v68[2] = v127;
    v68[3] = v45;
    v69 = *(v64 + 8);
    v69(v66, v67);
    v70 = v63[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_42;
    }

    v63[2] = v72;
LABEL_14:
    *(v148 + 16) = v63;
    v76 = v130;
    sub_25B0E26E0();
    v77 = *v138;
    v78 = v146;
    (*v138)(v145, v76, v146);
    v79 = v147;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v79;
    v81 = sub_25B065F78(&v155);
    v83 = v79[2];
    v84 = (v82 & 1) == 0;
    v71 = __OFADD__(v83, v84);
    v85 = v83 + v84;
    if (v71)
    {
      goto LABEL_41;
    }

    v86 = v82;
    if (v79[3] < v85)
    {
      sub_25B067274(v85, v80);
      v81 = sub_25B065F78(&v155);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_44;
      }

LABEL_19:
      if ((v86 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (v80)
    {
      goto LABEL_19;
    }

    v92 = v81;
    sub_25B06A2DC();
    v81 = v92;
    if ((v86 & 1) == 0)
    {
LABEL_25:
      v89 = v158;
      v158[(v81 >> 6) + 8] |= 1 << v81;
      v93 = (v89[6] + 48 * v81);
      v94 = v157;
      v95 = v156;
      *v93 = v155;
      v93[1] = v95;
      v93[2] = v94;
      v77(v89[7] + *(v129 + 72) * v81, v145, v78);
      (*v128)(v152, v151);
      v69(v153, v154);
      v96 = v89[2];
      v71 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v71)
      {
        goto LABEL_43;
      }

      v89[2] = v97;
      goto LABEL_27;
    }

LABEL_20:
    v88 = v81;
    sub_25B073A40(&v155);
    v89 = v158;
    (*(v129 + 40))(v158[7] + *(v129 + 72) * v88, v145, v78);
    (*v128)(v152, v151);
    v69(v153, v154);
LABEL_27:
    v35 = v142;
    v147 = v89;
    if (!v34)
    {
LABEL_29:
      if (v120 <= v35 + 1)
      {
        v99 = v35 + 1;
      }

      else
      {
        v99 = v120;
      }

      v100 = v99 - 1;
      while (1)
      {
        v98 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v98 >= v120)
        {
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
          v91 = v136;
          (*(*(v90 - 8) + 56))(v136, 1, 1, v90);
          v34 = 0;
          goto LABEL_37;
        }

        v34 = *(v121 + 8 * v98);
        ++v35;
        if (v34)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_25B0E3E80();
  __break(1u);
LABEL_45:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0720AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25B0720D0, 0, 0);
}

uint64_t sub_25B0720D0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_25B0721BC;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_25B0E70F8, v1, v7);
}

uint64_t sub_25B0721BC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25B0722CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  v5 = sub_25B0E24A0();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0723D0, 0, 0);
}

uint64_t sub_25B0723D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v17 = v1;
  v18 = v0[9];
  v22 = v0[8];
  v21 = sub_25B0E3940();
  v20 = *(*(v21 - 8) + 56);
  v20(v1, 1, 1, v21);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v19 = *(v4 + 16);
  v14 = v6;
  v19(v2, v5, v6);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v15 = *(v4 + 32);
  v15(v9 + v16, v2, v6);
  *(v9 + v8) = v7;
  sub_25B064B60(v17, &unk_25B0E7108, v9);
  sub_25B058448(v17, &qword_27FA31990, &qword_25B0E6920);
  v20(v17, 1, 1, v21);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v19(v2, v5, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v15(v11 + v16, v2, v14);
  *(v11 + v8) = v10;
  sub_25B064B60(v17, &unk_25B0E7118, v11);
  sub_25B058448(v17, &qword_27FA31990, &qword_25B0E6920);

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B0726D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_25B0E24A0();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315E8, &qword_25B0E7168);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315F0, &qword_25B0E7170);
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B072874, 0, 0);
}

uint64_t sub_25B072874()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  sub_25B0E27C0();
  sub_25B0E27A0();
  sub_25B0E27B0();

  sub_25B0E39A0();
  swift_beginAccess();
  v0[18] = 0;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_25B072984;
  v7 = v0[14];
  v8 = v0[12];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v8);
}

uint64_t sub_25B072984()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B072A80, 0, 0);
}

void sub_25B072A80()
{
  v65 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31560);
    v60 = *(v5 + 16);
    v60(v3, v6, v4);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    if (v10)
    {
      v58 = v2;
      v14 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v14 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v15 = sub_25B0E3E20();
      v17 = v16;
      v63 = *(v12 + 8);
      v63(v11, v13);
      v18 = sub_25B04BE04(v15, v17, v64);
      v1 = v0 + 5;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v8, v9, "Library update for %s…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x25F8613E0](v55, -1, -1);
      v19 = v14;
      v2 = v58;
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    else
    {

      v63 = *(v12 + 8);
      v63(v11, v13);
    }

    v23 = v0[7];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = v0[18];
      v26 = (Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
      sub_25B0714F8(&v26[2], v2);
      if (v25)
      {

        os_unfair_lock_unlock(v26);
      }

      else
      {

        os_unfair_lock_unlock(v26);

        v0[18] = 0;
        v46 = *(MEMORY[0x277D85798] + 4);
        v47 = swift_task_alloc();
        v0[19] = v47;
        *v47 = v0;
        v47[1] = sub_25B072984;
        v48 = v0[14];
        v49 = v0[12];

        MEMORY[0x2822003E8](v1, 0, 0, v49);
      }

      return;
    }

    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[6];

    v60(v27, v29, v28);
    v30 = sub_25B0E2950();
    v61 = sub_25B0E3A30();
    v31 = os_log_type_enabled(v30, v61);
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[13];
    v62 = v0[12];
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[8];
    if (v31)
    {
      v59 = v0[15];
      v40 = swift_slowAlloc();
      v57 = v35;
      v41 = swift_slowAlloc();
      v64[0] = v41;
      *v40 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v42 = sub_25B0E3E20();
      v56 = v32;
      v44 = v43;
      v63(v37, v39);
      v45 = sub_25B04BE04(v42, v44, v64);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_25B03D000, v30, v61, "Library - self vanished %s…", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x25F8613E0](v41, -1, -1);
      MEMORY[0x25F8613E0](v40, -1, -1);

      (*(v36 + 8))(v57, v62);
      (*(v33 + 8))(v56, v59);
    }

    else
    {

      v63(v37, v39);
      (*(v36 + 8))(v35, v62);
      (*(v33 + 8))(v32, v34);
    }
  }

  else
  {
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v21 + 8))(v20, v22);
  }

  v50 = v0[17];
  v51 = v0[14];
  v53 = v0[10];
  v52 = v0[11];

  v54 = v0[1];

  v54();
}

uint64_t sub_25B073068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_25B0E24A0();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A8, &qword_25B0E7120);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315B0, &qword_25B0E7128);
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B073204, 0, 0);
}

uint64_t sub_25B073204()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  sub_25B0E2790();
  sub_25B0E2770();
  sub_25B0E2780();

  sub_25B0E39A0();
  swift_beginAccess();
  v0[18] = 0;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_25B073314;
  v7 = v0[14];
  v8 = v0[12];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v8);
}

uint64_t sub_25B073314()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B073410, 0, 0);
}

void sub_25B073410()
{
  v65 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31560);
    v60 = *(v5 + 16);
    v60(v3, v6, v4);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    if (v10)
    {
      v58 = v2;
      v14 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v14 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v15 = sub_25B0E3E20();
      v17 = v16;
      v63 = *(v12 + 8);
      v63(v11, v13);
      v18 = sub_25B04BE04(v15, v17, v64);
      v1 = v0 + 5;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v8, v9, "Gallery update for %s…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x25F8613E0](v55, -1, -1);
      v19 = v14;
      v2 = v58;
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    else
    {

      v63 = *(v12 + 8);
      v63(v11, v13);
    }

    v23 = v0[7];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = v0[18];
      v26 = (Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
      sub_25B070944(&v26[2], v2);
      if (v25)
      {

        os_unfair_lock_unlock(v26);
      }

      else
      {

        os_unfair_lock_unlock(v26);

        v0[18] = 0;
        v46 = *(MEMORY[0x277D85798] + 4);
        v47 = swift_task_alloc();
        v0[19] = v47;
        *v47 = v0;
        v47[1] = sub_25B073314;
        v48 = v0[14];
        v49 = v0[12];

        MEMORY[0x2822003E8](v1, 0, 0, v49);
      }

      return;
    }

    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[6];

    v60(v27, v29, v28);
    v30 = sub_25B0E2950();
    v61 = sub_25B0E3A30();
    v31 = os_log_type_enabled(v30, v61);
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[13];
    v62 = v0[12];
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[8];
    if (v31)
    {
      v59 = v0[15];
      v40 = swift_slowAlloc();
      v57 = v35;
      v41 = swift_slowAlloc();
      v64[0] = v41;
      *v40 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0]);
      v42 = sub_25B0E3E20();
      v56 = v32;
      v44 = v43;
      v63(v37, v39);
      v45 = sub_25B04BE04(v42, v44, v64);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_25B03D000, v30, v61, "Gallery - self vanished %s…", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x25F8613E0](v41, -1, -1);
      MEMORY[0x25F8613E0](v40, -1, -1);

      (*(v36 + 8))(v57, v62);
      (*(v33 + 8))(v56, v59);
    }

    else
    {

      v63(v37, v39);
      (*(v36 + 8))(v35, v62);
      (*(v33 + 8))(v32, v34);
    }
  }

  else
  {
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v21 + 8))(v20, v22);
  }

  v50 = v0[17];
  v51 = v0[14];
  v53 = v0[10];
  v52 = v0[11];

  v54 = v0[1];

  v54();
}

uint64_t sub_25B0739F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B073A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A0, &qword_25B0E70D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B073AE0()
{
  result = qword_27FA312B0;
  if (!qword_27FA312B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA312B0);
  }

  return result;
}

uint64_t sub_25B073B2C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D8, &qword_25B0E7158) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150) + 48);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  *a2 = *a1;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 3) = v8;
  *(a2 + 4) = v9;
  *(a2 + 5) = v10;
  v11 = sub_25B0E26B0();
  (*(*(v11 - 8) + 16))(&a2[v5], &a1[v4], v11);
}

uint64_t sub_25B073C10@<X0>(uint64_t a1@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D8, &qword_25B0E7158);
  v61 = *(v63 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v5 = &v48 - v4;
  v6 = sub_25B0E26B0();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315E0, &qword_25B0E7160);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  v17 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v49 = v5;
  v62 = v20;
  if (v21)
  {
    v22 = v6;
    v57 = v13;
    v58 = a1;
    v23 = v19;
LABEL_11:
    v55 = v17;
    v56 = (v21 - 1) & v21;
    v27 = __clz(__rbit64(v21)) | (v23 << 6);
    v28 = *(v17 + 48);
    v29 = *(v17 + 56);
    v30 = (v28 + 48 * v27);
    v31 = v30[1];
    v52 = *v30;
    v53 = v31;
    v32 = v30[3];
    v51 = v30[2];
    v54 = v32;
    v33 = v30[5];
    v50 = v30[4];
    v34 = v59;
    v35 = v60;
    (*(v60 + 16))(v59, v29 + *(v60 + 72) * v27, v22);
    v36 = v63;
    v37 = *(v63 + 48);
    v38 = v51;
    *v16 = v52;
    *(v16 + 1) = v31;
    *(v16 + 2) = v38;
    *(v16 + 3) = v32;
    v39 = v36;
    *(v16 + 4) = v50;
    *(v16 + 5) = v33;
    (*(v35 + 32))(&v16[v37], v34, v22);
    v40 = v61;
    (*(v61 + 56))(v16, 0, 1, v39);

    v26 = v23;
    v42 = v55;
    v41 = v56;
    v13 = v57;
    a1 = v58;
LABEL_12:
    *v1 = v42;
    v1[1] = v18;
    v1[2] = v62;
    v1[3] = v26;
    v1[4] = v41;
    v44 = v1[5];
    v43 = v1[6];
    sub_25B0745E4(v16, v13, &qword_27FA315E0, &qword_25B0E7160);
    v45 = 1;
    if ((*(v40 + 48))(v13, 1, v63) != 1)
    {
      v46 = v49;
      sub_25B0745E4(v13, v49, &qword_27FA315D8, &qword_25B0E7158);
      v44(v46);
      sub_25B058448(v46, &qword_27FA315D8, &qword_25B0E7158);
      v45 = 0;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150);
    return (*(*(v47 - 8) + 56))(a1, v45, 1, v47);
  }

  else
  {
    v24 = (v20 + 64) >> 6;
    if (v24 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = (v20 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v40 = v61;
        v42 = v17;
        (*(v61 + 56))(v16, 1, 1, v63);
        v41 = 0;
        goto LABEL_12;
      }

      v21 = *(v18 + 8 * v23);
      ++v19;
      if (v21)
      {
        v22 = v6;
        v57 = v13;
        v58 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_25B074040(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (v2 == v6 && v4 == v7 || (sub_25B0E3E30() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_25B0E3E30() & 1) != 0);
  }

  v10 = sub_25B0E3E30();
  result = 0;
  if (v10)
  {
    return (v2 == v6 && v4 == v7 || (sub_25B0E3E30() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_25B0E3E30() & 1) != 0);
  }

  return result;
}

uint64_t sub_25B074120(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B0498DC;

  return sub_25B0720AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25B074218(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25B05859C;

  return sub_25B0722CC(a1, a2, v7, v6);
}

uint64_t sub_25B0742CC(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B0726D8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B0744C4(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B073068(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_25B0745E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B07464C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v58 = sub_25B0E26B0();
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v58);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C8, &qword_25B0E7148);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v46 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v48 = a1;
  v49 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v50 = v19;
  v51 = 0;
  v52 = v22 & v20;
  v53 = a2;
  v54 = a3;
  v23 = (v10 + 32);
  v46[3] = v10 + 40;
  v47 = v10;

  v46[1] = a3;

  while (1)
  {
    sub_25B073C10(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_25B043EC8();
    }

    v25 = *(v24 + 48);
    v26 = *(v17 + 1);
    v55 = *v17;
    v56 = v26;
    v57 = *(v17 + 2);
    v27 = *v23;
    (*v23)(v13, &v17[v25], v58);
    v28 = *a5;
    v30 = sub_25B065F78(&v55);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v29 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25B06A2DC();
        v38 = *a5;
        if ((v34 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_25B073A40(&v55);
      (*(v47 + 40))(v38[7] + *(v47 + 72) * v30, v13, v58);
      a4 = 1;
    }

    else
    {
      sub_25B067274(v33, a4 & 1);
      v35 = *a5;
      v36 = sub_25B065F78(&v55);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v30 = v36;
      v38 = *a5;
      if (v34)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v38[6] + 48 * v30);
      v40 = v55;
      v41 = v57;
      v39[1] = v56;
      v39[2] = v41;
      *v39 = v40;
      v27((v38[7] + *(v47 + 72) * v30), v13, v58);
      v42 = v38[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_20;
      }

      v38[2] = v44;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

unint64_t sub_25B0749DC()
{
  result = qword_27FA31608;
  if (!qword_27FA31608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31608);
  }

  return result;
}

uint64_t sub_25B074A30()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31610);
  __swift_project_value_buffer(v0, qword_27FA31610);
  return sub_25B0E2960();
}

BOOL sub_25B074AB0()
{
  result = sub_25B074AD4();
  byte_27FA39980 = result;
  return result;
}

BOOL sub_25B074AD4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B0E3730();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 1;
  }

  v3 = sub_25B0E3730();
  v4 = [v2 integerForKey_];

  return v4 != 1;
}

uint64_t sub_25B074B9C()
{
  v1[2] = v0;
  v2 = type metadata accessor for ReplicatedSnapshotProvider();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_25B0E3900();
  v1[6] = sub_25B0E38F0();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_25B074C7C;

  return sub_25B074FA0();
}

uint64_t sub_25B074C7C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 64) = a1;

  v6 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B074DC0, v6, v5);
}

uint64_t sub_25B074DC0()
{
  v23 = v0;
  v1 = v0[8];
  v2 = v0[6];

  if (v1)
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_25B0E2970();
    __swift_project_value_buffer(v5, qword_27FA31610);
    sub_25B079F7C(v4, v3);
    v6 = sub_25B0E2950();
    v7 = sub_25B0E3A50();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = v9 + *(v10 + 24);
      v14 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v16 = v15;
      sub_25B079F20(v9);
      v17 = sub_25B04BE04(v14, v16, &v22);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_25B03D000, v6, v7, "Has preloaded snapshot for %s…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    else
    {

      sub_25B079F20(v9);
    }
  }

  v18 = v0[4];

  v19 = v0[1];
  v20 = v0[8];

  return v19(v20);
}

void sub_25B074FC0()
{
  v1 = v0[14];
  v2 = v1 + *(type metadata accessor for ReplicatedSnapshotProvider() + 24);
  v3 = sub_25B0E2730();
  v4 = [v3 device];

  if (v4)
  {
    v5 = sub_25B0E2760();
    v7 = v6;

    v0[15] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[16] = v8;
      *v8 = v0;
      v8[1] = sub_25B0750FC;
      v9 = v0[14];

      sub_25B077594((v0 + 2), v9, v5, v7);
    }

    else
    {
      v10 = v0[1];

      v10(0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0750FC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25B075214, 0, 0);
}

uint64_t sub_25B075214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 168) = v6;
  *(v0 + 176) = v5;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v6;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_25B075364;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_25B075364(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_25B0754FC;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_25B07548C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B07548C()
{
  v1 = *(v0 + 200);
  sub_25B04C538(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25B0754FC()
{
  v1 = *(v0 + 192);
  sub_25B04C538(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_25B075574@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - v6;
  v7 = type metadata accessor for ReplicatedSnapshotProvider();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *(v1 + v7[8]);
  sub_25B084E20();
  v19 = *__swift_project_boxed_opaque_existential_1((v2 + v7[7]), *(v2 + v7[7] + 24));
  sub_25B06E878(v15);
  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v20 = sub_25B0E2970();
  __swift_project_value_buffer(v20, qword_27FA31610);
  v44 = v2;
  sub_25B079F7C(v2, v10);
  v21 = sub_25B0E2950();
  v22 = sub_25B0E3A50();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v41 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v40 = v4;
    v26 = v25;
    v46 = v25;
    *v24 = 136315138;
    v27 = &v10[v7[6]];
    v28 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v30 = v29;
    sub_25B079F20(v10);
    v31 = sub_25B04BE04(v28, v30, &v46);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_25B03D000, v21, v22, "Starting updates for %s…", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v32 = v26;
    v4 = v40;
    MEMORY[0x25F8613E0](v32, -1, -1);
    v33 = v24;
    a1 = v41;
    MEMORY[0x25F8613E0](v33, -1, -1);
  }

  else
  {

    v34 = sub_25B079F20(v10);
  }

  MEMORY[0x28223BE20](v34);
  v35 = v43;
  *(&v39 - 4) = v44;
  *(&v39 - 3) = v17;
  *(&v39 - 2) = v15;
  (*(v35 + 104))(v45, *MEMORY[0x277D85778], v4);
  sub_25B0E39C0();
  v36 = v42;
  (*(v11 + 56))(a1, 0, 1, v42);
  v37 = *(v11 + 8);
  v37(v15, v36);
  return (v37)(v17, v36);
}

uint64_t sub_25B075998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v46 = a2;
  v42 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v51 = *(v6 - 8);
  v52 = v6;
  v53 = *(v51 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v59 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v41 = v13;
  v14 = *(v13 - 8);
  v45 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for ReplicatedSnapshotProvider();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v20;
  sub_25B079F7C(a2, v20);
  v44 = *(v14 + 16);
  v44(v16, a1, v13);
  v21 = *(v18 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = *(v14 + 80);
  v47 = v19 + v23;
  v24 = (v19 + v23 + v22) & ~v23;
  v48 = v21 | v23 | 7;
  v25 = swift_allocObject();
  sub_25B049E94(v20, v25 + v22);
  v26 = *(v14 + 32);
  v49 = v14 + 32;
  v50 = v26;
  v43 = v16;
  v27 = v41;
  v26(v25 + v24, v16, v41);
  v28 = v42;
  sub_25B0E3960();
  v29 = sub_25B0E3940();
  (*(*(v29 - 8) + 56))(v57, 1, 1, v29);
  v31 = v51;
  v30 = v52;
  v32 = *(v51 + 16);
  v32(v58, v54, v52);
  sub_25B079F7C(v46, v56);
  v44(v16, v28, v27);
  v32(v59, v55, v30);
  v33 = *(v31 + 80);
  v34 = (v33 + 32) & ~v33;
  v35 = (v53 + v21 + v34) & ~v21;
  v36 = (v47 + v35) & ~v23;
  v37 = (v45 + v33 + v36) & ~v33;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v39 = *(v31 + 32);
  v39(v38 + v34, v58, v30);
  sub_25B049E94(v56, v38 + v35);
  v50(v38 + v36, v43, v27);
  v39(v38 + v37, v59, v30);
  sub_25B052F48(0, 0, v57, &unk_25B0E7300, v38);
}

uint64_t sub_25B075E44(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReplicatedSnapshotProvider();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31610);
  sub_25B079F7C(a2, v6);
  v8 = sub_25B0E2950();
  v9 = sub_25B0E3A50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = &v6[*(v3 + 24)];
    v13 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v15 = v14;
    sub_25B079F20(v6);
    v16 = sub_25B04BE04(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_25B03D000, v8, v9, "Terminating updates for %s…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {

    sub_25B079F20(v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  return sub_25B0E3990();
}

uint64_t sub_25B076034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25B07605C, 0, 0);
}

uint64_t sub_25B07605C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_25B07614C;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v5, v6, v7, 0, 0, &unk_25B0E7310, v1, v8);
}

uint64_t sub_25B07614C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25B07625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = *(type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v6[11] = v9;
  v6[12] = *(v9 + 64);
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v6[16] = *(v11 + 64);
  v6[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076440, 0, 0);
}

uint64_t sub_25B076440()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v23 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v16 = v4;
  v6 = v0[12];
  v21 = v0[11];
  v30 = v0[10];
  v31 = v0[9];
  v7 = v0[7];
  v17 = v0[8];
  v8 = v0[5];
  v29 = v0[6];
  v9 = v0[4];
  v24 = v0[3];
  v32 = v0[2];
  v28 = sub_25B0E3940();
  v27 = *(*(v28 - 8) + 56);
  v27(v1, 1, 1, v28);
  v26 = *(v3 + 16);
  v26(v2, v24, v4);
  v10 = v5;
  sub_25B079F7C(v9, v5);
  v25 = *(v17 + 16);
  v25(v30, v8, v7);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = (v23 + *(v21 + 80) + v19) & ~*(v21 + 80);
  v11 = (v6 + *(v17 + 80) + v20) & ~*(v17 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v22 = *(v3 + 32);
  v22(v12 + v19, v2, v16);
  sub_25B049E94(v10, v12 + v20);
  v18 = *(v17 + 32);
  v18(v12 + v11, v30, v7);
  sub_25B064B60(v1, &unk_25B0E7320, v12);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);
  v27(v1, 1, 1, v28);
  v26(v2, v29, v16);
  sub_25B079F7C(v9, v10);
  v25(v30, v8, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v22(v13 + v19, v2, v16);
  sub_25B049E94(v10, v13 + v20);
  v18(v13 + v11, v30, v7);
  sub_25B064B60(v1, &unk_25B0E7330, v13);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25B07680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for ReplicatedSnapshotProvider();
  v6[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076974, 0, 0);
}

uint64_t sub_25B076974()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25B076A40;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x2822003E8](v0 + 14, 0, 0, v6);
}

uint64_t sub_25B076A40()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B076B3C, 0, 0);
}

uint64_t sub_25B076B3C()
{
  v29 = v0;
  if (*(v0 + 112) & 1) != 0 || (sub_25B0E39F0())
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 24);
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31610);
    sub_25B079F7C(v6, v5);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    if (v10)
    {
      v12 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = v11 + *(v12 + 24);
      v16 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v18 = v17;
      sub_25B079F20(v11);
      v19 = sub_25B04BE04(v16, v18, &v28);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_25B03D000, v8, v9, "Face updates for %s…", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25F8613E0](v14, -1, -1);
      MEMORY[0x25F8613E0](v13, -1, -1);
    }

    else
    {

      sub_25B079F20(v11);
    }

    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);
    sub_25B0E3970();
    (*(v21 + 8))(v20, v23);
    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    *(v0 + 104) = v25;
    *v25 = v0;
    v25[1] = sub_25B076A40;
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 112, 0, 0, v27);
  }
}

uint64_t sub_25B076DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for ReplicatedSnapshotProvider();
  v6[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076F64, 0, 0);
}

uint64_t sub_25B076F64()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25B077030;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x2822003E8](v0 + 14, 0, 0, v6);
}

uint64_t sub_25B077030()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B07712C, 0, 0);
}

uint64_t sub_25B07712C()
{
  v29 = v0;
  if (*(v0 + 112) & 1) != 0 || (sub_25B0E39F0())
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 24);
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31610);
    sub_25B079F7C(v6, v5);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    if (v10)
    {
      v12 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = v11 + *(v12 + 24);
      v16 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v18 = v17;
      sub_25B079F20(v11);
      v19 = sub_25B04BE04(v16, v18, &v28);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_25B03D000, v8, v9, "Listener update for %s…", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25F8613E0](v14, -1, -1);
      MEMORY[0x25F8613E0](v13, -1, -1);
    }

    else
    {

      sub_25B079F20(v11);
    }

    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);
    sub_25B0E3970();
    (*(v21 + 8))(v20, v23);
    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    *(v0 + 104) = v25;
    *v25 = v0;
    v25[1] = sub_25B077030;
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 112, 0, 0, v27);
  }
}

uint64_t sub_25B0773EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25B07747C;

  return sub_25B074B9C();
}

uint64_t sub_25B07747C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_25B077594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ReplicatedSnapshotProvider();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v7 = sub_25B0E2870();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_25B0E28B0();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_25B0E24A0();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B077790, 0, 0);
}

uint64_t sub_25B077790()
{
  v111 = v0;
  v1 = *(*(v0 + 48) + 24);
  if (**(v0 + 24))
  {
    *(v0 + 160) = sub_25B0E2730();
    sub_25B0E3900();
    *(v0 + 168) = sub_25B0E38F0();
    v2 = sub_25B0E3850();
    v4 = v3;
    v5 = sub_25B078038;
    v6 = v2;
    v7 = v4;

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v104 = *(v0 + 48);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 120);
  _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  sub_25B0E2450();

  v11 = &qword_27FA31000;
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_25B058448(*(v0 + 120), &qword_27FA31B50, &qword_25B0E72F0);
    goto LABEL_7;
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 152);
  v39 = *(v0 + 128);
  v40 = *(v0 + 136);
  v41 = *(v0 + 112);
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  v44 = *(v0 + 24);
  v100 = *(v0 + 32);
  (*(v40 + 32))(v38, *(v0 + 120), v39);
  v45 = __swift_project_boxed_opaque_existential_1((v44 + *(v43 + 28)), *(v44 + *(v43 + 28) + 24));
  (*(v40 + 16))(v37, v38, v39);

  sub_25B0E2880();
  v46 = (*v45 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
  os_unfair_lock_lock(v46);
  sub_25B06EF64(&v46[2], v41, &v109);
  os_unfair_lock_unlock(v46);
  v47 = v110;
  v48 = *(v0 + 152);
  v49 = *(v0 + 136);
  v101 = *(v0 + 128);
  v51 = *(v0 + 104);
  v50 = *(v0 + 112);
  v52 = *(v0 + 96);
  if (!v110)
  {
    (*(v51 + 8))(*(v0 + 112), *(v0 + 96));
    (*(v49 + 8))(v48, v101);
    goto LABEL_18;
  }

  v97 = v109;
  v53 = sub_25B0E2890();
  sub_25B06F3F4(&v109, v53, v54, &v105);

  (*(v51 + 8))(v50, v52);
  (*(v49 + 8))(v48, v101);
  sub_25B079FE0(v97, v47);
  v23 = v106;
  if (!v106)
  {
LABEL_18:
    v11 = &qword_27FA31000;
LABEL_7:
    v12 = *(v0 + 88);
    v13 = *(v0 + 40);
    v14 = *(v0 + 32);
    v15 = (*(v0 + 24) + *(*(v0 + 48) + 28));
    v16 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    sub_25B0E2850();
    v17 = (*v16 + v11[176]);
    os_unfair_lock_lock(v17);
    sub_25B06FBB8(&v17[2], v12, &v109);
    os_unfair_lock_unlock(v17);
    v18 = v110;
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    if (v110)
    {
      v102 = v109;
      v98 = *(v0 + 72);
      v21 = sub_25B0E2860();
      sub_25B06F3F4(&v109, v21, v22, &v105);

      (*(v20 + 8))(v19, v98);
      sub_25B079FE0(v102, v18);
      v18 = v105;
      v23 = v106;
      v24 = v107;
      v25 = v108;
      if (v106)
      {
        v26 = *(&v107 + 1);
        v99 = v108;
        v103 = v107;

        sub_25B04C4D8(v18, v23, v103, v26, v99, *(&v99 + 1));
        v27 = sub_25B0E2730();
        v28 = [v27 unsafeDailySnapshotKey];

        if (v28)
        {
          v29 = sub_25B0E3740();
          v31 = v30;

          if (v103 == v29 && v26 == v31)
          {

            v32 = v18;
            v33 = v23;
            v34 = v103;
            v35 = v26;
            v36 = v99;
LABEL_22:
            sub_25B04C538(v32, v33, v34, v35, v36, *(&v99 + 1));
LABEL_29:
            v25 = v99;
            v24 = v103;
            goto LABEL_30;
          }

          v57 = sub_25B0E3E30();

          v56 = v99;
          if (v57)
          {
            v32 = v18;
            v33 = v23;
            v34 = v103;
            v35 = v26;
            v36 = v99;
            goto LABEL_22;
          }
        }

        else
        {

          v56 = v99;
        }

        if (qword_27FA30CC8 != -1)
        {
          swift_once();
        }

        v59 = *(v0 + 56);
        v58 = *(v0 + 64);
        v60 = *(v0 + 24);
        v61 = sub_25B0E2970();
        __swift_project_value_buffer(v61, qword_27FA31610);
        sub_25B079F7C(v60, v58);
        sub_25B079F7C(v60, v59);

        v62 = v56;
        v63 = *(&v99 + 1);
        v64 = sub_25B0E2950();
        v65 = sub_25B0E3A50();
        sub_25B04C538(v18, v23, v103, v26, v56, *(&v99 + 1));
        v66 = os_log_type_enabled(v64, v65);
        v67 = *(v0 + 64);
        if (v66)
        {
          v95 = v65;
          log = v64;
          v68 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v105 = v94;
          *v68 = 136315650;

          v69 = sub_25B04BE04(v103, v26, &v105);

          *(v68 + 4) = v69;
          *(v68 + 12) = 2080;
          v70 = v67 + *(v104 + 24);
          v71 = sub_25B0E2730();
          v72 = [v71 unsafeDailySnapshotKey];

          if (!v72)
          {
            __break(1u);
            return MEMORY[0x2822009F8](v5, v6, v7);
          }

          v74 = *(v0 + 56);
          v73 = *(v0 + 64);
          v75 = sub_25B0E3740();
          v77 = v76;

          sub_25B079F20(v73);
          v78 = sub_25B04BE04(v75, v77, &v105);

          *(v68 + 14) = v78;
          *(v68 + 22) = 2080;
          v79 = v74 + *(v104 + 24);
          v80 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v82 = v81;
          sub_25B079F20(v74);
          v83 = sub_25B04BE04(v80, v82, &v105);

          *(v68 + 24) = v83;
          _os_log_impl(&dword_25B03D000, log, v95, "%s Key does not match %s for %s…", v68, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F8613E0](v94, -1, -1);
          MEMORY[0x25F8613E0](v68, -1, -1);

          sub_25B04C538(v18, v23, v103, v26, v99, *(&v99 + 1));
        }

        else
        {
          v84 = *(v0 + 56);

          sub_25B04C538(v18, v23, v103, v26, v56, *(&v99 + 1));
          sub_25B079F20(v84);
          sub_25B079F20(v67);
        }

        goto LABEL_29;
      }
    }

    else
    {
      (*(v20 + 8))(*(v0 + 88), *(v0 + 72));
      v23 = 0;
      v24 = 0uLL;
      v25 = 0uLL;
    }

LABEL_30:
    v55 = *(v0 + 16);
    *v55 = v18;
    goto LABEL_31;
  }

  v55 = *(v0 + 16);
  v24 = v107;
  v25 = v108;
  *v55 = v105;
LABEL_31:
  *(v55 + 8) = v23;
  *(v55 + 16) = v24;
  *(v55 + 32) = v25;
  v86 = *(v0 + 144);
  v85 = *(v0 + 152);
  v88 = *(v0 + 112);
  v87 = *(v0 + 120);
  v89 = *(v0 + 88);
  v91 = *(v0 + 56);
  v90 = *(v0 + 64);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_25B078038()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  v7 = v0[20];
  v8 = sub_25B0E3740();
  v10 = v9;

  v3 = [v7 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v11 = v3;
  v12 = v0[20];
  v0[22] = v10;
  v0[23] = v8;
  v13 = sub_25B0E3740();
  v15 = v14;

  v0[24] = v13;
  v0[25] = v15;
  v3 = sub_25B078124;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B078124()
{
  v21 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[5];
  v6 = v0[4];
  v7 = v0[2];
  v8 = (v0[3] + *(v0[6] + 28));
  v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v20[0] = v4;
  v20[1] = v3;
  v20[2] = v2;
  v20[3] = v1;
  v10 = *v9;
  sub_25B06F3F4(v20, v6, v5, v7);

  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[11];
  v17 = v0[7];
  v16 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t IdentifiableFace.replicatedKeyStream.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31628, "vs");
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31630, &qword_25B0EA100);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return sub_25B0E39C0();
}

uint64_t sub_25B078350(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v26 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs");
  v2 = *(v24 - 8);
  v27 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - v3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_25B0E3900();
  v23[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_25B0E3940();
  v14 = *(*(v13 - 8) + 56);
  v23[0] = v12;
  v14(v12, 1, 1, v13);
  (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v5);
  v15 = v2;
  v16 = *(v2 + 16);
  v17 = v24;
  v16(v4, v26, v24);
  v18 = sub_25B0E38F0();
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = (v7 + *(v15 + 80) + v19) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = MEMORY[0x277D85700];
  (*(v6 + 32))(v21 + v19, v8, v5);
  (*(v15 + 32))(v21 + v20, v4, v17);
  sub_25B052F48(0, 0, v23[0], &unk_25B0E7290, v21);
}

uint64_t sub_25B0786A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[26] = v10;
  v11 = *(v10 - 8);
  v5[27] = v11;
  v12 = *(v11 + 64) + 15;
  v5[28] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31640, &qword_25B0E72B0);
  v5[29] = v13;
  v14 = *(v13 - 8);
  v5[30] = v14;
  v15 = *(v14 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v16 = sub_25B0E24A0();
  v5[33] = v16;
  v17 = *(v16 - 8);
  v5[34] = v17;
  v18 = *(v17 + 64) + 15;
  v5[35] = swift_task_alloc();
  v19 = sub_25B0E2750();
  v5[36] = v19;
  v20 = *(v19 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v22 = type metadata accessor for ReplicatedSnapshotProvider();
  v5[39] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = sub_25B0E3900();
  v5[43] = sub_25B0E38F0();
  v25 = sub_25B0E3850();
  v5[44] = v25;
  v5[45] = v24;

  return MEMORY[0x2822009F8](sub_25B0789B4, v25, v24);
}

uint64_t sub_25B0789B4()
{
  v1 = *(*(v0 + 296) + 16);
  v1(*(v0 + 304), *(v0 + 160), *(v0 + 288));
  if (qword_27FA30CC0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v23 = *(v0 + 296);
  v24 = *(v0 + 280);
  v21 = *(v0 + 264);
  v7 = qword_27FA39978;
  v8 = &v2[v3[7]];
  v8[3] = type metadata accessor for DaemonListener();
  v8[4] = &off_286C5A660;
  *v8 = v7;
  v9 = v3[5];

  sub_25B0E2490();
  v22 = v4;
  v10 = sub_25B0E2730();
  *v2 = 0;
  v11 = v3[6];
  *(v0 + 520) = v11;
  v1(&v2[v11], v4, v5);
  v12 = *(v6 + 16);
  v12(v24, &v2[v9], v21);
  v13 = type metadata accessor for FaceObserver(0);
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v10;
  v12(&v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v24, v21);
  *(v0 + 112) = v14;
  *(v0 + 120) = v13;
  v16 = v10;
  v17 = objc_msgSendSuper2((v0 + 112), sel_init);
  [v16 addObserver_];
  (*(v6 + 8))(v24, v21);

  (*(v23 + 8))(v22, v5);
  *&v2[v3[8]] = v17;
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  v18[1] = sub_25B078C48;
  v19 = *(v0 + 328);

  return sub_25B074B9C();
}

uint64_t sub_25B078C48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = a1;

  v4 = *(v2 + 360);
  v5 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_25B078D70, v5, v4);
}

uint64_t sub_25B078D70()
{
  v1 = v0[47];
  if (v1)
  {
    v3 = *(v1 + 40);
    v2 = *(v1 + 48);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = v0[41];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[21];
  v0[16] = v3;
  v0[17] = v4;
  v0[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs");
  sub_25B0E3980();
  v13 = *(v8 + 8);
  v0[49] = v13;
  v0[50] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v7);
  sub_25B075574(v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v14 = v0[47];
    v15 = v0[43];
    v16 = v0[25];
    v17 = v0[21];

    sub_25B058448(v16, &qword_27FA313B8, &unk_25B0E72A0);
    sub_25B0E3990();

    v18 = v0[40];
    v19 = v0[38];
    v20 = v0[35];
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[28];
    v25 = v0[24];
    v24 = v0[25];
    sub_25B079F20(v0[41]);

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[24];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    sub_25B0E39A0();
    v29 = v0[42];
    v30 = sub_25B0E38F0();
    v0[51] = v30;
    v31 = *(MEMORY[0x277D85798] + 4);
    v32 = swift_task_alloc();
    v0[52] = v32;
    *v32 = v0;
    v32[1] = sub_25B079018;
    v33 = v0[24];
    v34 = v0[22];
    v35 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 524, v30, v35, v34);
  }
}

uint64_t sub_25B079018()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v7 = *v0;

  v4 = *(v1 + 360);
  v5 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_25B07915C, v5, v4);
}

uint64_t sub_25B07915C()
{
  if (*(v0 + 524) == 1)
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 384);
    v3 = *(v0 + 344);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 208);
    v7 = *(v0 + 168);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    sub_25B0E3990();

    (*(v5 + 8))(v4, v6);
    v8 = *(v0 + 320);
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 224);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    sub_25B079F20(*(v0 + 328));

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 336);
    *(v0 + 424) = sub_25B0E38F0();

    return MEMORY[0x2822009F8](sub_25B0792F4, 0, 0);
  }
}

uint64_t sub_25B0792F4()
{
  v1 = *(v0 + 328) + *(v0 + 520);
  v2 = sub_25B0E2730();
  v3 = [v2 device];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v7 = sub_25B0E2760();
  v9 = v8;

  *(v0 + 432) = v9;
  if (!v9)
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 336);
    v15 = sub_25B0E3850();
    v17 = v16;
    v4 = sub_25B07AB8C;
    v5 = v15;
    v6 = v17;

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  *v10 = v0;
  v10[1] = sub_25B079448;
  v11 = *(v0 + 328);

  return sub_25B077594(v0 + 16, v11, v7, v9);
}

uint64_t sub_25B079448()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25B079560, 0, 0);
}

uint64_t sub_25B079560()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 448) = v1;
  *(v0 + 456) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 464) = v3;
  *(v0 + 472) = v4;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 480) = v6;
  *(v0 + 488) = v5;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v6;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 496) = v9;
    *v9 = v0;
    v9[1] = sub_25B0796D0;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v11 = *(v0 + 424);
    v12 = *(v0 + 336);
    v14 = sub_25B0E3850();

    return MEMORY[0x2822009F8](sub_25B07AB8C, v14, v13);
  }
}

uint64_t sub_25B0796D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 496);
  v7 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {
    v5 = sub_25B0797E4;
  }

  else
  {
    v5 = sub_25B0798EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B0797E4()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);
  v3 = *(v0 + 336);
  sub_25B04C538(*(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

  v5 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B079888, v5, v4);
}

uint64_t sub_25B079888()
{
  v1 = v0[53];

  v2 = v0[44];
  v3 = v0[45];

  return MEMORY[0x2822009F8](sub_25B079B48, v2, v3);
}

uint64_t sub_25B0798EC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  sub_25B04C538(*(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
  v4 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B07997C, v4, v3);
}

uint64_t sub_25B07997C()
{
  v21 = v0;
  v1 = v0[53];

  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = v0[41];
  v4 = sub_25B0E2970();
  __swift_project_value_buffer(v4, qword_27FA31610);
  sub_25B079F7C(v3, v2);
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[40];
  if (v7)
  {
    v9 = v0[39];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = v8 + *(v9 + 24);
    v13 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v15 = v14;
    sub_25B079F20(v8);
    v16 = sub_25B04BE04(v13, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_25B03D000, v5, v6, "Has preloaded snapshot for %s…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {

    sub_25B079F20(v8);
  }

  v17 = v0[44];
  v18 = v0[45];

  return MEMORY[0x2822009F8](sub_25B079C48, v17, v18);
}

uint64_t sub_25B079B48()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[21];
  v0[19] = 0;
  v0[18] = 0;
  sub_25B0E3980();
  v2(v4, v5);
  v7 = v0[42];
  v8 = sub_25B0E38F0();
  v0[51] = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_25B079018;
  v11 = v0[24];
  v12 = v0[22];
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 524, v8, v13, v12);
}

uint64_t sub_25B079C48()
{
  v1 = v0[63];
  if (v1)
  {
    v3 = *(v1 + 40);
    v2 = *(v1 + 48);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
  v8 = v0[31];
  v9 = v0[29];
  v10 = v0[21];
  v0[18] = v3;
  v0[19] = v4;
  sub_25B0E3980();

  v6(v8, v9);
  v11 = v0[42];
  v12 = sub_25B0E38F0();
  v0[51] = v12;
  v13 = *(MEMORY[0x277D85798] + 4);
  v14 = swift_task_alloc();
  v0[52] = v14;
  *v14 = v0;
  v14[1] = sub_25B079018;
  v15 = v0[24];
  v16 = v0[22];
  v17 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 524, v12, v17, v16);
}

uint64_t sub_25B079D78(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E2750() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs") - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25B0498DC;

  return sub_25B0786A8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t type metadata accessor for ReplicatedSnapshotProvider()
{
  result = qword_27FA31648;
  if (!qword_27FA31648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B079F20(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatedSnapshotProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B079F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatedSnapshotProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B079FE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25B07A030(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8) + 80);

  return sub_25B075E44(a1, v1 + v4);
}

uint64_t sub_25B07A110(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v6 + v13) & ~v6;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_25B05859C;

  return sub_25B076034(a1, v15, v16, v1 + v7, v1 + v10, v1 + v13, v1 + v14);
}

uint64_t sub_25B07A308(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25B05859C;

  return sub_25B07625C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_25B07A3D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B07680C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v10 = *(v22 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v21 = *(v10 + 64);
  v13 = v3 | v7 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v15 = v0 + v8;
  v16 = v6[7];
  v17 = sub_25B0E24A0();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  v18 = v6[8];
  v19 = sub_25B0E2750();
  (*(*(v19 - 8) + 8))(v15 + v18, v19);
  __swift_destroy_boxed_opaque_existential_1((v15 + v6[9]));

  (*(v10 + 8))(v0 + v12, v22);

  return MEMORY[0x2821FE8E8](v0, v12 + v21, v13 | 7);
}

uint64_t sub_25B07A808(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReplicatedSnapshotProvider() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B076DFC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_25B07A9FC()
{
  result = sub_25B0E24A0();
  if (v1 <= 0x3F)
  {
    result = sub_25B0E2750();
    if (v2 <= 0x3F)
    {
      result = sub_25B07AAC0();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FaceObserver(319);
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

unint64_t sub_25B07AAC0()
{
  result = qword_27FA31658;
  if (!qword_27FA31658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FA31658);
  }

  return result;
}

unint64_t sub_25B07AB38()
{
  result = qword_27FA31660;
  if (!qword_27FA31660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31660);
  }

  return result;
}

uint64_t sub_25B07AB90(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25B07AC70()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31668);
  __swift_project_value_buffer(v0, qword_27FA31668);
  return sub_25B0E2960();
}

uint64_t sub_25B07ACF0(uint64_t a1, uint64_t *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v4 = *v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v3[14] = v6;
  v3[15] = v7;
  v3[16] = v8;
  v9 = v4[15];
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v10 = v4[12];
  v11 = *(v10 + 8);
  v12 = v4[10];
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  v3[17] = v14;
  *v14 = v3;
  v14[1] = sub_25B07AE7C;

  return (v16)(v3 + 2, v3 + 8, v12, v10);
}

uint64_t sub_25B07AE7C()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B07AF78, 0, 0);
}

uint64_t sub_25B07AF78()
{
  v29 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v27 = v0[7];
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = sub_25B0E2970();
  __swift_project_value_buffer(v9, qword_27FA31668);
  sub_25B04C4D8(v2, v1, v3, v4, v5, v27);

  v10 = sub_25B0E2950();
  v26 = v5;
  v11 = sub_25B0E3A50();

  log = v10;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[16];
    v24 = v0[15];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_25B04BE04(*(v13 + 16), *(v13 + 24), &v28);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_25B04BE04(v24, v12, &v28);
    *(v14 + 22) = 1024;
    *(v14 + 24) = v1 != 0;
    v16 = v1;
    v17 = v1;
    v18 = v26;
    v19 = v27;
    sub_25B04C538(v2, v16, v3, v4, v26, v27);
    _os_log_impl(&dword_25B03D000, log, v11, "Fetching snapshot with ID: %s for %s: %{BOOL}d…", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v15, -1, -1);
    MEMORY[0x25F8613E0](v14, -1, -1);
  }

  else
  {
    v20 = v1;
    v17 = v1;
    v18 = v26;
    v19 = v27;
    sub_25B04C538(v2, v20, v3, v4, v26, v27);
  }

  v21 = v0[12];
  *v21 = v2;
  v21[1] = v17;
  v21[2] = v3;
  v21[3] = v4;
  v21[4] = v18;
  v21[5] = v19;
  v22 = v0[1];

  return v22();
}

uint64_t sub_25B07B208(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v3[33] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07B2D0, 0, 0);
}

uint64_t sub_25B07B2D0()
{
  v25 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31668);
  sub_25B049F48(v1, (v0 + 20));

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25B04BE04(*(v6 + 16), *(v6 + 24), &v23);
    *(v7 + 12) = 2080;
    v9 = v0[23];
    v10 = v0[24];
    __swift_project_boxed_opaque_existential_1(v0 + 20, v9);
    (*(v10 + 8))(v24, v9, v10);
    v11 = v24[2];
    v12 = v24[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
    v13 = sub_25B04BE04(v11, v12, &v23);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_25B03D000, v4, v5, "Storing snapshot for ID: %s using %s…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  }

  v14 = v0[33];
  v15 = *(*v0[32] + 120);
  v16 = *(v14 + 96);
  v17 = *(v14 + 80);
  v22 = (*(v16 + 16) + **(v16 + 16));
  v18 = *(*(v16 + 16) + 4);
  v19 = swift_task_alloc();
  v0[35] = v19;
  *v19 = v0;
  v19[1] = sub_25B07B5D0;
  v20 = v0[31];

  return v22(v0 + 8, v20, v17, v16);
}

uint64_t sub_25B07B5D0()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_25B07B848;
  }

  else
  {
    v3 = sub_25B07B6E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B07B6E4()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 96);
  v6 = sub_25B0E3940();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_25B049F48(v3, v0 + 200);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v2;
  v8 = *(v0 + 32);
  *(v7 + 40) = *(v0 + 16);
  *(v7 + 56) = v8;
  *(v7 + 72) = *(v0 + 48);
  sub_25B04A114((v0 + 200), v7 + 88);

  sub_25B065BE8(v0 + 16, v0 + 112);
  sub_25B052F48(0, 0, v1, &unk_25B0E74A8, v7);

  v9 = *(v0 + 16);
  v10 = *(v0 + 48);
  v4[1] = *(v0 + 32);
  v4[2] = v10;
  *v4 = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25B07B848()
{
  v1 = v0[34];

  v2 = v0[1];
  v3 = v0[36];

  return v2();
}

uint64_t sub_25B07B8AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v6[21] = *a4;
  return MEMORY[0x2822009F8](sub_25B07B8F8, 0, 0);
}

uint64_t sub_25B07B8F8()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(*v3 + 128);
  v6 = v2[1];
  v5 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v1 + 104);
  v10 = *(v9 + 8);
  v11 = *(v1 + 88);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_25B07BA64;

  return v15(v0 + 16, v7, v8, v11, v9);
}

uint64_t sub_25B07BA64()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_25B07BD5C;
  }

  else
  {
    v3 = sub_25B07BB78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B07BB78()
{
  v16 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31668);
  sub_25B049F48(v1, (v0 + 13));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v0[16];
    v8 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v7);
    (*(v8 + 8))(v15, v7, v8);
    v9 = v15[2];
    v10 = v15[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
    v11 = sub_25B04BE04(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Replicated snapshot %s…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B07BD5C()
{
  v23 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31668);
  sub_25B049F48(v2, (v0 + 8));
  v4 = v1;
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = v0[11];
    v13 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v12);
    (*(v13 + 8))(v22, v12, v13);
    v14 = v22[2];
    v15 = v22[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
    v16 = sub_25B04BE04(v14, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_25B03D000, v5, v6, "Failed to replicate snapshot %s - %@…", v9, 0x16u);
    sub_25B04C3AC(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25B07BFB8()
{
  v1 = *(*(*v0 + 96) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 120);
  return v1(v2);
}

char *sub_25B07C02C()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)]);
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 128)]);
  return v0;
}

uint64_t sub_25B07C100()
{
  sub_25B07C02C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25B07C170(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B0498DC;

  return sub_25B07ACF0(a1, a2);
}

uint64_t sub_25B07C21C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B0498DC;

  return sub_25B07B208(a1, a2);
}

uint64_t sub_25B07C2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B07B8AC(a1, v4, v5, v6, (v1 + 5), (v1 + 11));
}

uint64_t sub_25B07C3B0()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31700);
  __swift_project_value_buffer(v0, qword_27FA31700);
  return sub_25B0E2960();
}

id sub_25B07C430(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id sub_25B07C4A0(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_25B07C510()
{
  result = sub_25B07C530();
  qword_27FA39988 = result;
  return result;
}

uint64_t sub_25B07C530()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B0E3730();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    if ([v2 snapshotKeyIdentity])
    {
      if (qword_27FA30CE0 != -1)
      {
        swift_once();
      }

      v3 = sub_25B0E2970();
      __swift_project_value_buffer(v3, qword_27FA31700);
      v4 = sub_25B0E2950();
      v5 = sub_25B0E3A50();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_25B03D000, v4, v5, "Using snapshot key identity", v6, 2u);
        MEMORY[0x25F8613E0](v6, -1, -1);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if ([v2 ignoreReplicatedContent])
    {
      if (qword_27FA30CE0 != -1)
      {
        swift_once();
      }

      v12 = sub_25B0E2970();
      __swift_project_value_buffer(v12, qword_27FA31700);
      v13 = sub_25B0E2950();
      v14 = sub_25B0E3A50();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25B03D000, v13, v14, "Ignoring replicated content", v15, 2u);
        MEMORY[0x25F8613E0](v15, -1, -1);
      }

      return v7 | 2;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FA30CE0 != -1)
    {
      swift_once();
    }

    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31700);
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25B03D000, v9, v10, "Cannot read overrides for 'com.apple.NanoTimeKit.face'", v11, 2u);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_25B07C814()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31718);
  __swift_project_value_buffer(v0, qword_27FA31718);
  return sub_25B0E2960();
}

uint64_t sub_25B07C894@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_25B07C8E8(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = sub_25B0E3900();
  v2[22] = sub_25B0E38F0();
  v4 = sub_25B0E3850();
  v2[23] = v4;
  v2[24] = v3;

  return MEMORY[0x2822009F8](sub_25B07C984, v4, v3);
}

uint64_t sub_25B07C984()
{
  v2 = v0[20];
  v1 = v0[21];
  sub_25B049F48(v2 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary, (v0 + 9));
  sub_25B049F48(v2 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback, (v0 + 14));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  v4 = sub_25B0E38F0();
  v0[25] = v4;
  v5 = swift_task_alloc();
  v0[26] = v5;
  v5[2] = v2;
  v5[3] = v0 + 9;
  v5[4] = v0 + 14;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_25B07CAD4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v3, v3, v4, v8, &unk_25B0E7580, v5, v3);
}

uint64_t sub_25B07CAD4()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v8 = *v0;

  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25B07CC34, v6, v5);
}

uint64_t sub_25B07CC34()
{
  v20 = v0;
  v1 = *(v0 + 176);

  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  v16 = *(v0 + 48);
  v2 = *(v0 + 64);
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 160);
  v4 = sub_25B0E2970();
  __swift_project_value_buffer(v4, qword_27FA31718);

  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v10 = sub_25B0E3E20();
    v12 = sub_25B04BE04(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v5, v6, "FBSP %s: Returning a snapshot…", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  v13 = *(v0 + 152);
  *v13 = v18;
  *(v13 + 16) = v17;
  *(v13 + 32) = v16;
  *(v13 + 48) = v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25B07CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = sub_25B0E3900();
  v5[36] = sub_25B0E38F0();
  v8 = sub_25B0E3850();
  v5[37] = v8;
  v5[38] = v7;

  return MEMORY[0x2822009F8](sub_25B07CF10, v8, v7);
}

uint64_t sub_25B07CF10()
{
  v24 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = sub_25B0E2970();
  v0[39] = __swift_project_value_buffer(v2, qword_27FA31718);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v8 = sub_25B0E3E20();
    v10 = sub_25B04BE04(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B03D000, v3, v4, "Fallback provider %s fetching snapshot…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v11 = v0[32];
  v12 = v11[3];
  v0[40] = v12;
  v13 = v11[4];
  v0[41] = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v13 + 24);
  v0[42] = swift_getAssociatedTypeWitness();
  v15 = sub_25B0E3B10();
  v0[43] = v15;
  v16 = *(v15 - 8);
  v0[44] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v0[45] = v18;
  v22 = (v14 + *v14);
  v19 = v14[1];
  v20 = swift_task_alloc();
  v0[46] = v20;
  *v20 = v0;
  v20[1] = sub_25B07D22C;

  return v22(v18, v12, v13);
}

uint64_t sub_25B07D22C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 296);
    v6 = *(v2 + 304);
    v7 = sub_25B07E09C;
  }

  else
  {
    v5 = *(v2 + 296);
    v6 = *(v2 + 304);
    v7 = sub_25B07D350;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25B07D350()
{
  v66 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v27 = *(v0 + 320);
    v26 = *(v0 + 328);
    v28 = *(v0 + 312);
    v29 = *(v0 + 288);
    v30 = *(v0 + 248);

    *(v0 + 136) = v2;
    *(v0 + 144) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 112), v0 + 72);

    v32 = sub_25B0E2950();
    v33 = sub_25B0E3A50();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 248);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v63 = v36;
      *v35 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v37 = sub_25B0E3E20();
      v39 = sub_25B04BE04(v37, v38, &v63);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_25B03D000, v32, v33, "Fallback provider %s found primary snapshot quickly…", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x25F8613E0](v36, -1, -1);
      MEMORY[0x25F8613E0](v35, -1, -1);
    }

    v40 = *(v0 + 232);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v41);
    v43 = (*(v42 + 16))(v41, v42);
    v44 = *(v0 + 96);
    v45 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v44);
    (*(v45 + 8))(&v63, v44, v45);
    v62 = v63;
    v46 = v64;
    v47 = v65;
    v48 = *(v0 + 96);
    v49 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v48);
    v50 = (*(v49 + 24))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    *v40 = 0;
    *(v40 + 8) = v43;
    *(v40 + 16) = v62;
    *(v40 + 32) = v46;
    *(v40 + 40) = v47;
    *(v40 + 48) = v50;
    goto LABEL_9;
  }

  (*(*(v0 + 352) + 8))(v1, *(v0 + 344));
  v4 = *(v0 + 360);
  v5 = *(v0 + 272);
  v61 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);

  v9 = sub_25B0E3940();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  sub_25B049F48(v7, v0 + 152);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  sub_25B03F164((v0 + 152), (v11 + 4));
  v11[9] = v6;
  v11[10] = sub_25B07E4AC;
  v11[11] = 0;

  sub_25B064D68(v5, &unk_25B0E7590, v11);
  sub_25B058448(v5, &qword_27FA31990, &qword_25B0E6920);
  v10(v5, 1, 1, v9);
  sub_25B049F48(v61, v0 + 192);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v6;
  sub_25B03F164((v0 + 192), (v12 + 5));
  v12[10] = sub_25B07E4AC;
  v12[11] = 0;

  sub_25B064D68(v5, &unk_25B0E75A0, v12);
  sub_25B058448(v5, &qword_27FA31990, &qword_25B0E6920);
  v13 = *v8;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  if (sub_25B0E38B0())
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 248);

    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 248);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v63 = v21;
      *v20 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v22 = sub_25B0E3E20();
      v24 = sub_25B04BE04(v22, v23, &v63);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_25B03D000, v17, v18, "FBSP %s: Did not find a snapshot…", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x25F8613E0](v21, -1, -1);
      MEMORY[0x25F8613E0](v20, -1, -1);
    }

    v25 = *(v0 + 232);
    *(v25 + 48) = 0;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *v25 = 0u;
LABEL_9:
    v51 = *(v0 + 272);

    v52 = *(v0 + 8);

    return v52();
  }

  *(v0 + 384) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v54 = *(v0 + 280);
  v55 = sub_25B0E38F0();
  *(v0 + 392) = v55;
  v56 = *(MEMORY[0x277D856A0] + 4);
  v57 = swift_task_alloc();
  *(v0 + 400) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
  *v57 = v0;
  v57[1] = sub_25B07DA1C;
  v59 = *(v0 + 240);
  v60 = MEMORY[0x277D85700];

  return MEMORY[0x2822002D0](v0 + 16, v55, v60, v58);
}

uint64_t sub_25B07DA1C()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 304);
  v5 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_25B07DB60, v5, v4);
}

uint64_t sub_25B07DB60()
{
  v67 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = *(v0 + 24);
  v63 = *(v0 + 32);
  v64 = *(v0 + 16);
  v4 = *(v0 + 40);
  v62 = *(v0 + 48);
  v5 = *(v0 + 56);
  v65 = *(v0 + 64);

  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();

  if (os_log_type_enabled(v6, v7))
  {
    v59 = *(v0 + 384);
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v66 = v10;
    *v9 = 136315138;
    sub_25B0E24A0();
    v60 = v5;
    v11 = v3;
    v12 = v4;
    sub_25B08405C();
    v13 = sub_25B0E3E20();
    v15 = sub_25B04BE04(v13, v14, &v66);

    *(v9 + 4) = v15;
    v4 = v12;
    v3 = v11;
    v5 = v60;
    _os_log_impl(&dword_25B03D000, v6, v7, "FBSP %s: Group returned a value…", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  if (v3 > 1)
  {
    v30 = *(v0 + 312);
    v31 = *(v0 + 288);
    v32 = *(v0 + 248);
    v33 = v3;

    v34 = v65;

    v35 = sub_25B0E2950();
    v36 = sub_25B0E3A50();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 384);
      v61 = v5;
      v38 = *(v0 + 248);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66 = v40;
      *v39 = 136315138;
      sub_25B0E24A0();
      v41 = v3;
      v42 = v4;
      sub_25B08405C();
      v5 = v61;
      v43 = sub_25B0E3E20();
      v45 = sub_25B04BE04(v43, v44, &v66);

      *(v39 + 4) = v45;
      v4 = v42;
      v3 = v41;
      _os_log_impl(&dword_25B03D000, v35, v36, "FBSP %s: Group has a snapshot…", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x25F8613E0](v40, -1, -1);
      MEMORY[0x25F8613E0](v39, -1, -1);
    }

    v46 = *(v0 + 376);
    v47 = *(v0 + 232);
    v48 = **(v0 + 240);
    sub_25B0E38D0();
    sub_25B084D38(v64, v3, v63, v4, v62, v5, v65);
    *v47 = v64 & 1;
    v47[1] = v3;
    v47[2] = v63;
    v47[3] = v4;
    v47[4] = v62;
    v47[5] = v5;
    v47[6] = v65;
    goto LABEL_11;
  }

  v16 = *(v0 + 376);
  v17 = **(v0 + 240);
  if (sub_25B0E38B0())
  {
    v18 = *(v0 + 312);
    v19 = *(v0 + 288);
    v20 = *(v0 + 248);

    v21 = sub_25B0E2950();
    v22 = sub_25B0E3A50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 248);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66 = v25;
      *v24 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v26 = sub_25B0E3E20();
      v28 = sub_25B04BE04(v26, v27, &v66);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_25B03D000, v21, v22, "FBSP %s: Did not find a snapshot…", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x25F8613E0](v25, -1, -1);
      MEMORY[0x25F8613E0](v24, -1, -1);
    }

    v29 = *(v0 + 232);
    *(v29 + 48) = 0;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *v29 = 0u;
LABEL_11:
    v49 = *(v0 + 272);

    v50 = *(v0 + 8);

    return v50();
  }

  v52 = *(v0 + 280);
  v53 = sub_25B0E38F0();
  *(v0 + 392) = v53;
  v54 = *(MEMORY[0x277D856A0] + 4);
  v55 = swift_task_alloc();
  *(v0 + 400) = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
  *v55 = v0;
  v55[1] = sub_25B07DA1C;
  v57 = *(v0 + 240);
  v58 = MEMORY[0x277D85700];

  return MEMORY[0x2822002D0](v0 + 16, v53, v58, v56);
}

uint64_t sub_25B07E09C()
{
  v35 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);
  v33 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);

  v6 = sub_25B0E3940();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  sub_25B049F48(v4, v0 + 152);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  sub_25B03F164((v0 + 152), (v8 + 4));
  v8[9] = v3;
  v8[10] = sub_25B07E4AC;
  v8[11] = 0;

  sub_25B064D68(v2, &unk_25B0E7590, v8);
  sub_25B058448(v2, &qword_27FA31990, &qword_25B0E6920);
  v7(v2, 1, 1, v6);
  sub_25B049F48(v33, v0 + 192);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  sub_25B03F164((v0 + 192), (v9 + 5));
  v9[10] = sub_25B07E4AC;
  v9[11] = 0;

  sub_25B064D68(v2, &unk_25B0E75A0, v9);
  sub_25B058448(v2, &qword_27FA31990, &qword_25B0E6920);
  v10 = *v5;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  if (sub_25B0E38B0())
  {
    v11 = *(v0 + 312);
    v12 = *(v0 + 288);
    v13 = *(v0 + 248);

    v14 = sub_25B0E2950();
    v15 = sub_25B0E3A50();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 248);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v19 = sub_25B0E3E20();
      v21 = sub_25B04BE04(v19, v20, &v34);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_25B03D000, v14, v15, "FBSP %s: Did not find a snapshot…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x25F8613E0](v18, -1, -1);
      MEMORY[0x25F8613E0](v17, -1, -1);
    }

    v22 = *(v0 + 232);
    *(v22 + 48) = 0;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v23 = *(v0 + 272);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    *(v0 + 384) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v26 = *(v0 + 280);
    v27 = sub_25B0E38F0();
    *(v0 + 392) = v27;
    v28 = *(MEMORY[0x277D856A0] + 4);
    v29 = swift_task_alloc();
    *(v0 + 400) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
    *v29 = v0;
    v29[1] = sub_25B07DA1C;
    v31 = *(v0 + 240);
    v32 = MEMORY[0x277D85700];

    return MEMORY[0x2822002D0](v0 + 16, v27, v32, v30);
  }
}

__n128 sub_25B07E4AC@<Q0>(char a1@<W0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(&v18, v9, v10);
  v17 = v18;
  v11 = v19;
  v12 = v20;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  a3->n128_u8[0] = a1 & 1;
  a3->n128_u64[1] = v8;
  result = v17;
  a3[1] = v17;
  a3[2].n128_u64[0] = v11;
  a3[2].n128_u64[1] = v12;
  a3[3].n128_u64[0] = v15;
  return result;
}

uint64_t sub_25B07E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[12] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v7[21] = v12;
  v13 = *(v12 - 8);
  v7[22] = v13;
  v14 = *(v13 + 64) + 15;
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07E730, 0, 0);
}

uint64_t sub_25B07E730()
{
  v41 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[20], &qword_27FA313B8, &unk_25B0E72A0);
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v7 = v0[14];
    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31718);

    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A50();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[14];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v14 = sub_25B0E3E20();
      v16 = sub_25B04BE04(v14, v15, &v40);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v9, v10, "FBSP %s: No primary snapshot updates to look for…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    v17 = v0[12];
    *(v17 + 48) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *v17 = 0u;
    v18 = v0[23];
    v19 = v0[19];
    v20 = v0[20];

    v21 = v0[1];

    return v21();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v23 = v0[14];
    v24 = sub_25B0E2970();
    v0[24] = __swift_project_value_buffer(v24, qword_27FA31718);

    v25 = sub_25B0E2950();
    v26 = sub_25B0E3A50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[14];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v30 = sub_25B0E3E20();
      v32 = sub_25B04BE04(v30, v31, &v40);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_25B03D000, v25, v26, "FBSP %s: Snapshot staring primary snapshot updates…", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x25F8613E0](v29, -1, -1);
      MEMORY[0x25F8613E0](v28, -1, -1);
    }

    v33 = v0[23];
    v34 = v0[21];
    v35 = v0[19];
    sub_25B0E39A0();
    v0[25] = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v36 = *(MEMORY[0x277D85798] + 4);
    v37 = swift_task_alloc();
    v0[26] = v37;
    *v37 = v0;
    v37[1] = sub_25B07EB9C;
    v38 = v0[19];
    v39 = v0[17];

    return MEMORY[0x2822003E8](v0 + 34, 0, 0, v39);
  }
}

uint64_t sub_25B07EB9C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B07EC98, 0, 0);
}

uint64_t sub_25B07EC98()
{
  v46 = v0;
  v1 = *(v0 + 192);
  if (*(v0 + 272) == 1)
  {
    v2 = *(v0 + 112);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v3 = sub_25B0E2950();
    v4 = sub_25B0E3A50();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 200);
      v6 = *(v0 + 176);
      v44 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = *(v0 + 112);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45 = v10;
      *v9 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v11 = sub_25B0E3E20();
      v13 = sub_25B04BE04(v11, v12, &v45);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v3, v4, "FBSP %s: Primary update stream finished…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);

      (*(v6 + 8))(v44, v7);
    }

    else
    {
      v36 = *(v0 + 176);
      v35 = *(v0 + 184);
      v37 = *(v0 + 168);

      (*(v36 + 8))(v35, v37);
    }

    v38 = *(v0 + 96);
    *(v38 + 48) = 0;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    *v38 = 0u;
    v39 = *(v0 + 184);
    v40 = *(v0 + 152);
    v41 = *(v0 + 160);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v14 = *(v0 + 112);

    v15 = sub_25B0E2950();
    v16 = sub_25B0E3A50();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 200);
      v18 = *(v0 + 112);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v21 = sub_25B0E3E20();
      v23 = sub_25B04BE04(v21, v22, &v45);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25B03D000, v15, v16, "FBSP %s: Primary snapshot update…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x25F8613E0](v20, -1, -1);
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    v24 = *(v0 + 104);
    v25 = v24[3];
    *(v0 + 216) = v25;
    v26 = v24[4];
    *(v0 + 224) = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 24);
    *(v0 + 232) = swift_getAssociatedTypeWitness();
    v28 = sub_25B0E3B10();
    *(v0 + 240) = v28;
    v29 = *(v28 - 8);
    *(v0 + 248) = v29;
    v30 = *(v29 + 64) + 15;
    v31 = swift_task_alloc();
    *(v0 + 256) = v31;
    v43 = (v27 + *v27);
    v32 = v27[1];
    v33 = swift_task_alloc();
    *(v0 + 264) = v33;
    *v33 = v0;
    v33[1] = sub_25B07F148;

    return v43(v31, v25, v26);
  }
}

uint64_t sub_25B07F148()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_25B07F614;
  }

  else
  {
    v3 = sub_25B07F260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B07F260()
{
  v44 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 248) + 8))(v1, *(v0 + 240));
    v4 = *(v0 + 256);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_25B058448(v0 + 56, &qword_27FA31748, &qword_25B0E75B0);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_25B07EB9C;
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);

    return MEMORY[0x2822003E8](v0 + 272, 0, 0, v8);
  }

  else
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 192);
    v12 = *(v0 + 112);
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 56), v0 + 16);

    v14 = sub_25B0E2950();
    v15 = sub_25B0E3A50();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 200);
      v17 = *(v0 + 112);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v20 = sub_25B0E3E20();
      v22 = sub_25B04BE04(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25B03D000, v14, v15, "FBSP %s: Returning primary snapshot…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x25F8613E0](v19, -1, -1);
      MEMORY[0x25F8613E0](v18, -1, -1);
    }

    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 168);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = *(v0 + 96);
    (*(v0 + 120))(&v39, 0, v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v27 + 8))(v26, v29);
    (*(v24 + 8))(v23, v25);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    *v30 = v39;
    *(v30 + 8) = v31;
    *(v30 + 24) = v32;
    *(v30 + 32) = v33;
    *(v30 + 40) = v43;
    v34 = *(v0 + 184);
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_25B07F614()
{
  v1 = *(v0 + 256);

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_25B058448(v0 + 56, &qword_27FA31748, &qword_25B0E75B0);
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_25B07EB9C;
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 272, 0, 0, v5);
}

uint64_t sub_25B07F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[22] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v10 = *(v9 + 64) + 15;
  v7[29] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v7[31] = v12;
  v13 = *(v12 - 8);
  v7[32] = v13;
  v14 = *(v13 + 64) + 15;
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07F860, 0, 0);
}

uint64_t sub_25B07F860()
{
  v24 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_25B0E2970();
  v0[34] = __swift_project_value_buffer(v2, qword_27FA31718);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v8 = sub_25B0E3E20();
    v10 = sub_25B04BE04(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B03D000, v3, v4, "FBSP %s: Snapshot starting secondary snapshot updates…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v11 = v0[24];
  v12 = v11[3];
  v0[35] = v12;
  v13 = v11[4];
  v0[36] = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v13 + 24);
  v0[37] = swift_getAssociatedTypeWitness();
  v15 = sub_25B0E3B10();
  v0[38] = v15;
  v16 = *(v15 - 8);
  v0[39] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v0[40] = v18;
  v22 = (v14 + *v14);
  v19 = v14[1];
  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_25B07FB7C;

  return v22(v18, v12, v13);
}

uint64_t sub_25B07FB7C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_25B080D14;
  }

  else
  {
    v3 = sub_25B07FC94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B07FC94()
{
  v67 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 272);
    v26 = *(v0 + 184);
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 56), v0 + 16);

    v28 = sub_25B0E2950();
    v29 = sub_25B0E3A50();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 184);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = v32;
      *v31 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v33 = sub_25B0E3E20();
      v35 = sub_25B04BE04(v33, v34, &v62);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25B03D000, v28, v29, "FBSP %s: Secondary snapshot update…", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x25F8613E0](v32, -1, -1);
      MEMORY[0x25F8613E0](v31, -1, -1);
    }

    v36 = *(v0 + 208);
    v37 = *(v0 + 176);
    (*(v0 + 200))(&v62, 1, v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v38 = v63;
    v39 = v64;
    v40 = v65;
    *v37 = v62;
    *(v37 + 8) = v38;
    *(v37 + 24) = v39;
    *(v37 + 32) = v40;
    *(v37 + 40) = v66;
    goto LABEL_9;
  }

  (*(*(v0 + 312) + 8))(v1, *(v0 + 304));
  v4 = *(v0 + 320);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 192);

  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v10 + 32))(v9, v10);
  v11 = (*(v6 + 48))(v7, 1, v5);
  v12 = *(v0 + 272);
  if (v11 == 1)
  {
    v13 = *(v0 + 184);
    sub_25B058448(*(v0 + 240), &qword_27FA313B8, &unk_25B0E72A0);

    v14 = sub_25B0E2950();
    v15 = sub_25B0E3A50();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v62 = v18;
      *v17 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v19 = sub_25B0E3E20();
      v21 = sub_25B04BE04(v19, v20, &v62);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_25B03D000, v14, v15, "FBSP %s: No secondary snapshot updates to look for…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x25F8613E0](v18, -1, -1);
      MEMORY[0x25F8613E0](v17, -1, -1);
    }

    v22 = *(v0 + 176);
    *(v22 + 48) = 0;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
LABEL_9:
    v41 = *(v0 + 264);
    v42 = *(v0 + 232);
    v43 = *(v0 + 240);

    v44 = *(v0 + 8);

    return v44();
  }

  v46 = *(v0 + 184);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));

  v47 = sub_25B0E2950();
  v48 = sub_25B0E3A50();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 184);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v62 = v51;
    *v50 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v52 = sub_25B0E3E20();
    v54 = sub_25B04BE04(v52, v53, &v62);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_25B03D000, v47, v48, "FBSP %s: Snapshot staring secondary snapshot updates…", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x25F8613E0](v51, -1, -1);
    MEMORY[0x25F8613E0](v50, -1, -1);
  }

  v55 = *(v0 + 264);
  v56 = *(v0 + 248);
  v57 = *(v0 + 232);
  sub_25B0E39A0();
  *(v0 + 336) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v58 = *(MEMORY[0x277D85798] + 4);
  v59 = swift_task_alloc();
  *(v0 + 344) = v59;
  *v59 = v0;
  v59[1] = sub_25B08029C;
  v60 = *(v0 + 232);
  v61 = *(v0 + 216);

  return MEMORY[0x2822003E8](v0 + 408, 0, 0, v61);
}

uint64_t sub_25B08029C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B080398, 0, 0);
}

uint64_t sub_25B080398()
{
  v46 = v0;
  v1 = *(v0 + 272);
  if (*(v0 + 408) == 1)
  {
    v2 = *(v0 + 184);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v3 = sub_25B0E2950();
    v4 = sub_25B0E3A50();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 336);
      v6 = *(v0 + 256);
      v44 = *(v0 + 264);
      v7 = *(v0 + 248);
      v8 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45 = v10;
      *v9 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v11 = sub_25B0E3E20();
      v13 = sub_25B04BE04(v11, v12, &v45);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v3, v4, "FBSP %s: Secondary update stream finished…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);

      (*(v6 + 8))(v44, v7);
    }

    else
    {
      v36 = *(v0 + 256);
      v35 = *(v0 + 264);
      v37 = *(v0 + 248);

      (*(v36 + 8))(v35, v37);
    }

    v38 = *(v0 + 176);
    *(v38 + 48) = 0;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    *v38 = 0u;
    v39 = *(v0 + 264);
    v40 = *(v0 + 232);
    v41 = *(v0 + 240);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v14 = *(v0 + 184);

    v15 = sub_25B0E2950();
    v16 = sub_25B0E3A50();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 336);
      v18 = *(v0 + 184);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v21 = sub_25B0E3E20();
      v23 = sub_25B04BE04(v21, v22, &v45);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25B03D000, v15, v16, "FBSP %s: Secondary snapshot update…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x25F8613E0](v20, -1, -1);
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    v24 = *(v0 + 192);
    v25 = v24[3];
    *(v0 + 352) = v25;
    v26 = v24[4];
    *(v0 + 360) = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 24);
    *(v0 + 368) = swift_getAssociatedTypeWitness();
    v28 = sub_25B0E3B10();
    *(v0 + 376) = v28;
    v29 = *(v28 - 8);
    *(v0 + 384) = v29;
    v30 = *(v29 + 64) + 15;
    v31 = swift_task_alloc();
    *(v0 + 392) = v31;
    v43 = (v27 + *v27);
    v32 = v27[1];
    v33 = swift_task_alloc();
    *(v0 + 400) = v33;
    *v33 = v0;
    v33[1] = sub_25B080848;

    return v43(v31, v25, v26);
  }
}

uint64_t sub_25B080848()
{
  v2 = *(*v1 + 400);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_25B0810FC;
  }

  else
  {
    v3 = sub_25B080960;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B080960()
{
  v44 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 384) + 8))(v1, *(v0 + 376));
    v4 = *(v0 + 392);

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_25B058448(v0 + 136, &qword_27FA31748, &qword_25B0E75B0);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    *(v0 + 344) = v6;
    *v6 = v0;
    v6[1] = sub_25B08029C;
    v7 = *(v0 + 232);
    v8 = *(v0 + 216);

    return MEMORY[0x2822003E8](v0 + 408, 0, 0, v8);
  }

  else
  {
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 272);
    v12 = *(v0 + 184);
    *(v0 + 160) = v2;
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 136), v0 + 96);

    v14 = sub_25B0E2950();
    v15 = sub_25B0E3A50();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 336);
      v17 = *(v0 + 184);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v20 = sub_25B0E3E20();
      v22 = sub_25B04BE04(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25B03D000, v14, v15, "FBSP %s: Returning secondary snapshot…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x25F8613E0](v19, -1, -1);
      MEMORY[0x25F8613E0](v18, -1, -1);
    }

    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 176);
    (*(v0 + 200))(&v39, 1, v0 + 96);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    (*(v27 + 8))(v26, v29);
    (*(v24 + 8))(v23, v25);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    *v30 = v39;
    *(v30 + 8) = v31;
    *(v30 + 24) = v32;
    *(v30 + 32) = v33;
    *(v30 + 40) = v43;
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v36 = *(v0 + 240);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_25B080D14()
{
  v42 = v0;
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[24];

  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 32))(v6, v7);
  v8 = (*(v3 + 48))(v4, 1, v2);
  v9 = v0[34];
  if (v8 == 1)
  {
    v10 = v0[23];
    sub_25B058448(v0[30], &qword_27FA313B8, &unk_25B0E72A0);

    v11 = sub_25B0E2950();
    v12 = sub_25B0E3A50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[23];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v16 = sub_25B0E3E20();
      v18 = sub_25B04BE04(v16, v17, &v41);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v11, v12, "FBSP %s: No secondary snapshot updates to look for…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    v19 = v0[22];
    *(v19 + 48) = 0;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *v19 = 0u;
    v20 = v0[33];
    v21 = v0[29];
    v22 = v0[30];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[23];
    (*(v0[32] + 32))(v0[33], v0[30], v0[31]);

    v26 = sub_25B0E2950();
    v27 = sub_25B0E3A50();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[23];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v31 = sub_25B0E3E20();
      v33 = sub_25B04BE04(v31, v32, &v41);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_25B03D000, v26, v27, "FBSP %s: Snapshot staring secondary snapshot updates…", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x25F8613E0](v30, -1, -1);
      MEMORY[0x25F8613E0](v29, -1, -1);
    }

    v34 = v0[33];
    v35 = v0[31];
    v36 = v0[29];
    sub_25B0E39A0();
    v0[42] = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v37 = *(MEMORY[0x277D85798] + 4);
    v38 = swift_task_alloc();
    v0[43] = v38;
    *v38 = v0;
    v38[1] = sub_25B08029C;
    v39 = v0[29];
    v40 = v0[27];

    return MEMORY[0x2822003E8](v0 + 51, 0, 0, v40);
  }
}

uint64_t sub_25B0810FC()
{
  v1 = *(v0 + 392);

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  sub_25B058448(v0 + 136, &qword_27FA31748, &qword_25B0E75B0);
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_25B08029C;
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);

  return MEMORY[0x2822003E8](v0 + 408, 0, 0, v5);
}

uint64_t sub_25B0811D4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v51 = *(v2 - 1);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v48 - v4);
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary + 24);
  v21 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary), v20);
  (*(v21 + 32))(v20, v21);
  v22 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback + 24);
  v23 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback), v22);
  (*(v23 + 32))(v22, v23);
  v53 = v7;
  v54 = v6;
  v24 = *(v7 + 16);
  v56 = v12;
  v24(v12, v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v19, 1, v25) == 1 && v27(v17, 1, v25) == 1)
  {
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v28 = sub_25B0E2970();
    __swift_project_value_buffer(v28, qword_27FA31718);
    v29 = v50;
    v30 = v54;
    v24(v50, v56, v54);
    v31 = sub_25B0E2950();
    v32 = sub_25B0E3A30();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = v33;
      v52 = swift_slowAlloc();
      v57 = v52;
      *v33 = 136315138;
      sub_25B08405C();
      LODWORD(v51) = v32;
      v34 = sub_25B0E3E20();
      v36 = v35;
      v37 = v29;
      v38 = *(v53 + 8);
      v38(v37, v30);
      v39 = sub_25B04BE04(v34, v36, &v57);

      v40 = v49;
      *(v49 + 1) = v39;
      v41 = v40;
      _os_log_impl(&dword_25B03D000, v31, v51, "Fallback provider %s has no updates to listen for…", v40, 0xCu);
      v42 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x25F8613E0](v42, -1, -1);
      MEMORY[0x25F8613E0](v41, -1, -1);
    }

    else
    {

      v46 = v29;
      v38 = *(v53 + 8);
      v38(v46, v30);
    }

    (*(v26 + 56))(v55, 1, 1, v25);
    v38(v56, v30);
  }

  else
  {
    *v5 = 1;
    v43 = (*(v51 + 104))(v5, *MEMORY[0x277D85768], v52);
    MEMORY[0x28223BE20](v43);
    v44 = v55;
    v45 = v56;
    *(&v48 - 4) = v56;
    *(&v48 - 3) = v19;
    *(&v48 - 2) = v17;
    sub_25B0E39C0();
    (*(v26 + 56))(v44, 0, 1, v25);
    (*(v53 + 8))(v45, v54);
  }

  sub_25B058448(v17, &qword_27FA313B8, &unk_25B0E72A0);
  return sub_25B058448(v19, &qword_27FA313B8, &unk_25B0E72A0);
}

uint64_t sub_25B0817A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a3;
  v45 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v56 = *(v4 - 8);
  v54 = *(v56 + 64);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v12 = *(v11 - 8);
  v43 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v59 = &v42 - v13;
  v15 = sub_25B0E24A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v58 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v16 + 16);
  v44();
  v62 = v12;
  v42 = *(v12 + 16);
  v18 = v14;
  v19 = v11;
  v42(v18, v60, v11);
  v20 = *(v16 + 80);
  v21 = (v20 + 16) & ~v20;
  v46 = *(v12 + 80);
  v47 = v17 + v46;
  v22 = (v17 + v46 + v21) & ~v46;
  v48 = v20 | v46 | 7;
  v23 = swift_allocObject();
  v24 = *(v16 + 32);
  v50 = v16 + 32;
  v51 = v24;
  v25 = v58;
  v24(v23 + v21, v58, v15);
  v26 = *(v62 + 32);
  v62 += 32;
  v49 = v26;
  v27 = v23 + v22;
  v28 = v59;
  v26(v27, v59, v19);
  v29 = v19;
  v30 = v60;
  sub_25B0E3960();
  v31 = sub_25B0E3940();
  (*(*(v31 - 8) + 56))(v61, 1, 1, v31);
  v32 = v52;
  sub_25B0841A0(v55, v52);
  (v44)(v25, v45, v15);
  v33 = v29;
  v42(v28, v30, v29);
  v34 = v53;
  sub_25B0841A0(v57, v53);
  v35 = *(v56 + 80);
  v36 = (v35 + 32) & ~v35;
  v37 = (v54 + v20 + v36) & ~v20;
  v38 = (v47 + v37) & ~v46;
  v39 = (v43 + v35 + v38) & ~v35;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  sub_25B084210(v32, v40 + v36);
  v51(v40 + v37, v58, v15);
  v49(v40 + v38, v59, v33);
  sub_25B084210(v34, v40 + v39);
  sub_25B052F48(0, 0, v61, &unk_25B0E7530, v40);
}

uint64_t sub_25B081C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B0E24A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA31718);
  (*(v4 + 16))(v7, a2, v3);
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_25B08405C();
    v13 = sub_25B0E3E20();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    v16 = sub_25B04BE04(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25B03D000, v9, v10, "Fallback provider %s terminated…", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25F8613E0](v12, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  return sub_25B0E3990();
}

uint64_t sub_25B081ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25B0E24A0();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B081F94, 0, 0);
}

uint64_t sub_25B081F94()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_25B082078;
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_25B0E7540, v1, v7);
}

uint64_t sub_25B082078()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25B082190, 0, 0);
}

uint64_t sub_25B082190()
{
  v22 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_25B0E2970();
  __swift_project_value_buffer(v5, qword_27FA31718);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_25B04BE04(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25B03D000, v6, v7, "Fallback provider %s group finished…", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_25B08239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_25B0E24A0();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v6[20] = *(v14 + 64);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0825E0, 0, 0);
}

uint64_t sub_25B0825E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_25B0841A0(v0[3], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[17], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v5 = v0[23];
    v69 = v0[22];
    v60 = v0[20];
    v63 = v0[19];
    v46 = v0[18];
    v6 = v0[15];
    v53 = v6;
    v65 = v0[14];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v71 = v0[10];
    v10 = v0[8];
    v67 = v0[7];
    v11 = v0[4];
    v47 = v0[5];
    v49 = v0[9];
    v55 = *(v63 + 32);
    v58 = v0[2];
    v51 = v5;
    (v55)(v5, v0[17]);
    v12 = sub_25B0E3940();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    (*(v8 + 16))(v65, v11, v9);
    (*(v63 + 16))(v69, v5, v46);
    (*(v10 + 16))(v71, v47, v67);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = (v7 + *(v63 + 80) + v13) & ~*(v63 + 80);
    v15 = *(v10 + 80);
    v16 = v60 + v15 + v14;
    v61 = v4;
    v17 = v16 & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    (*(v8 + 32))(v18 + v13, v65, v9);
    v55(v18 + v14, v69, v46);
    v19 = v18 + v17;
    v4 = v61;
    (*(v10 + 32))(v19, v71, v67);
    sub_25B064B60(v53, &unk_25B0E7560, v18);
    sub_25B058448(v53, &qword_27FA31990, &qword_25B0E6920);
    (*(v63 + 8))(v51, v46);
  }

  v20 = v0[18];
  v21 = v0[16];
  sub_25B0841A0(v0[6], v21);
  if (v4(v21, 1, v20) == 1)
  {
    sub_25B058448(v0[16], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v22 = v0[21];
    v72 = v0[22];
    v23 = v0[19];
    v59 = v0[20];
    v24 = v0[18];
    v25 = v0[15];
    v64 = v25;
    v26 = v0[14];
    v56 = v0[13];
    v28 = v0[11];
    v27 = v0[12];
    v50 = v28;
    v52 = v26;
    v70 = v0[10];
    v57 = v0[9];
    v29 = v0[8];
    v54 = v0[7];
    v48 = v0[5];
    v45 = v0[4];
    v66 = *(v23 + 32);
    v68 = v0[2];
    v62 = v22;
    v66(v22, v0[16], v24);
    v30 = sub_25B0E3940();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    (*(v27 + 16))(v26, v45, v28);
    (*(v23 + 16))(v72, v22, v24);
    (*(v29 + 16))(v70, v48, v54);
    v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v32 = (v56 + *(v23 + 80) + v31) & ~*(v23 + 80);
    v33 = (v59 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v27 + 32))(v34 + v31, v52, v50);
    v66(v34 + v32, v72, v24);
    (*(v29 + 32))(v34 + v33, v70, v54);
    sub_25B064B60(v64, &unk_25B0E7550, v34);
    sub_25B058448(v64, &qword_27FA31990, &qword_25B0E6920);
    (*(v23 + 8))(v62, v24);
  }

  v36 = v0[22];
  v35 = v0[23];
  v37 = v0[21];
  v39 = v0[16];
  v38 = v0[17];
  v41 = v0[14];
  v40 = v0[15];
  v42 = v0[10];

  v43 = v0[1];

  return v43();
}

uint64_t sub_25B082B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_25B0E24A0();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B082D40, 0, 0);
}

uint64_t sub_25B082D40()
{
  v31 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[2];
  v5 = sub_25B0E2970();
  v0[16] = __swift_project_value_buffer(v5, qword_27FA31718);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    v19 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v19;
    v19(v10, v11);
    v20 = sub_25B04BE04(v14, v16, &v30);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_25B03D000, v7, v8, "Fallback provider %s listening for primary updates…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x25F8613E0](v29, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    v21 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v21;
    v21(v10, v11);
  }

  v0[19] = v18;
  v0[20] = v17;
  v22 = v0[10];
  v23 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v24 = *(MEMORY[0x277D85798] + 4);
  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_25B082FCC;
  v26 = v0[10];
  v27 = v0[8];

  return MEMORY[0x2822003E8](v0 + 22, 0, 0, v27);
}

uint64_t sub_25B082FCC()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B0830C8, 0, 0);
}

uint64_t sub_25B0830C8()
{
  v51 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  if (*(v0 + 176) == 1)
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 16);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v2(v5, v6, v4);
    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    if (v9)
    {
      v48 = v8;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50 = v15;
      *v14 = 136315138;
      sub_25B08405C();
      v16 = sub_25B0E3E20();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_25B04BE04(v16, v18, &v50);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_25B03D000, v7, v48, "Fallback provider %s primary updates stopped…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    else
    {

      v11(v12, v13);
    }

    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 104);
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v2(*(v0 + 104), *(v0 + 16), *(v0 + 88));
    v20 = sub_25B0E2950();
    v21 = sub_25B0E3A50();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
    if (v22)
    {
      v49 = v21;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136315138;
      sub_25B08405C();
      v29 = sub_25B0E3E20();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_25B04BE04(v29, v31, &v50);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_25B03D000, v20, v49, "Fallback provider %s primary update found…", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x25F8613E0](v28, -1, -1);
      MEMORY[0x25F8613E0](v27, -1, -1);
    }

    else
    {

      v24(v25, v26);
    }

    v41 = *(v0 + 48);
    v40 = *(v0 + 56);
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);
    sub_25B0E3970();
    (*(v41 + 8))(v40, v43);
    v44 = *(MEMORY[0x277D85798] + 4);
    v45 = swift_task_alloc();
    *(v0 + 168) = v45;
    *v45 = v0;
    v45[1] = sub_25B082FCC;
    v46 = *(v0 + 80);
    v47 = *(v0 + 64);

    return MEMORY[0x2822003E8](v0 + 176, 0, 0, v47);
  }
}

uint64_t sub_25B0834BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_25B0E24A0();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B083668, 0, 0);
}

uint64_t sub_25B083668()
{
  v31 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[2];
  v5 = sub_25B0E2970();
  v0[16] = __swift_project_value_buffer(v5, qword_27FA31718);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    v19 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v19;
    v19(v10, v11);
    v20 = sub_25B04BE04(v14, v16, &v30);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_25B03D000, v7, v8, "Fallback provider %s listening for secondary updates…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x25F8613E0](v29, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    v21 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v21;
    v21(v10, v11);
  }

  v0[19] = v18;
  v0[20] = v17;
  v22 = v0[10];
  v23 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v24 = *(MEMORY[0x277D85798] + 4);
  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_25B0838F4;
  v26 = v0[10];
  v27 = v0[8];

  return MEMORY[0x2822003E8](v0 + 22, 0, 0, v27);
}

uint64_t sub_25B0838F4()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B0839F0, 0, 0);
}

uint64_t sub_25B0839F0()
{
  v51 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  if (*(v0 + 176) == 1)
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 16);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v2(v5, v6, v4);
    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    if (v9)
    {
      v48 = v8;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50 = v15;
      *v14 = 136315138;
      sub_25B08405C();
      v16 = sub_25B0E3E20();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_25B04BE04(v16, v18, &v50);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_25B03D000, v7, v48, "Fallback provider %s fallback updates stopped…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    else
    {

      v11(v12, v13);
    }

    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 104);
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v2(*(v0 + 104), *(v0 + 16), *(v0 + 88));
    v20 = sub_25B0E2950();
    v21 = sub_25B0E3A50();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
    if (v22)
    {
      v49 = v21;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136315138;
      sub_25B08405C();
      v29 = sub_25B0E3E20();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_25B04BE04(v29, v31, &v50);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_25B03D000, v20, v49, "Fallback provider %s fallback update found…", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x25F8613E0](v28, -1, -1);
      MEMORY[0x25F8613E0](v27, -1, -1);
    }

    else
    {

      v24(v25, v26);
    }

    v41 = *(v0 + 48);
    v40 = *(v0 + 56);
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);
    sub_25B0E3970();
    (*(v41 + 8))(v40, v43);
    v44 = *(MEMORY[0x277D85798] + 4);
    v45 = swift_task_alloc();
    *(v0 + 168) = v45;
    *v45 = v0;
    v45[1] = sub_25B0838F4;
    v46 = *(v0 + 80);
    v47 = *(v0 + 64);

    return MEMORY[0x2822003E8](v0 + 176, 0, 0, v47);
  }
}

uint64_t sub_25B083DE4()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FallbackSnapshotProvider()
{
  result = qword_27FA31730;
  if (!qword_27FA31730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B083EF4()
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B083F9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B065A30;

  return sub_25B07C8E8(a1);
}

unint64_t sub_25B08405C()
{
  result = qword_27FA31830;
  if (!qword_27FA31830)
  {
    sub_25B0E24A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31830);
  }

  return result;
}

uint64_t sub_25B0840C0(uint64_t a1)
{
  v3 = *(sub_25B0E24A0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8) + 80);

  return sub_25B081C70(a1, v1 + v4);
}

uint64_t sub_25B0841A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B084210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B084280(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_25B0E24A0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v6 + v13) & ~v6;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_25B0498DC;

  return sub_25B081ED0(a1, v15, v16, v1 + v7, v1 + v10, v1 + v13, v1 + v14);
}

uint64_t sub_25B084478(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25B05859C;

  return sub_25B08239C(a1, a2, v6, v7, v9, v8);
}