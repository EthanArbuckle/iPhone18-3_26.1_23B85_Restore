char *sub_2527E1F00()
{
  v1 = v0;
  v2 = type metadata accessor for RequiredCharacteristicValue();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2528BFDE0();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
  v7 = *v0;
  v8 = sub_2528C0F00();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_2527E3F70(v28 + v30, v39, type metadata accessor for RequiredCharacteristicValue);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_2527E3FD8(v31, *(v20 + 56) + v30, type metadata accessor for RequiredCharacteristicValue);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

char *sub_2527E2224()
{
  v1 = v0;
  v34 = sub_2528BECF0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD228, &unk_2528CE000);
  v4 = *v0;
  v5 = sub_2528C0F00();
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
        result = v24;
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

char *sub_2527E24A4()
{
  v1 = v0;
  v32 = sub_2528BECF0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E0, &qword_2528C7DD8);
  v4 = *v0;
  v5 = sub_2528C0F00();
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

void *sub_2527E2718()
{
  v1 = v0;
  v30 = sub_2528C0260();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
  v4 = *v0;
  v5 = sub_2528C0F00();
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

void *sub_2527E2980()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
  v2 = *v0;
  v3 = sub_2528C0F00();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

id sub_2527E2AE8()
{
  v1 = v0;
  v30 = sub_2528BF350();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
  v4 = *v0;
  v5 = sub_2528C0F00();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
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
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
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

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t sub_2527E2D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) + 48);
  v6 = sub_2528BFDE0();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_2527E3F70(a1 + v4, a2 + v5, type metadata accessor for RequiredCharacteristicValue);
}

uint64_t sub_2527E2E0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE70, &qword_2528C6260);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v46 = sub_2528BF9D0();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8E0, &qword_2528CE028);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_25274AA0C(v17, v36, &qword_27F4FE8E0, &qword_2528CE028);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_25274AA0C(v40, v43, &qword_27F4FCE70, &qword_2528C6260);
      v37(v41);
      sub_2527213D8(v41, &qword_27F4FCE70, &qword_2528C6260);
      v39 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2527E31F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - v5;
  v6 = type metadata accessor for RequiredCharacteristicValue();
  v49 = *(v6 - 8);
  v7 = *(v49 + 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BFDE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D0, &qword_2528CDFB8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = *v1;
  v23 = v1[1];
  v25 = v1[2];
  v24 = v1[3];
  v26 = v1[4];
  v52 = v25;
  if (v26)
  {
    v48 = a1;
    v27 = v24;
LABEL_11:
    v46 = v22;
    v47 = (v26 - 1) & v26;
    v31 = __clz(__rbit64(v26)) | (v27 << 6);
    v32 = v22;
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v31, v10);
    sub_2527E3F70(*(v32 + 56) + *(v49 + 9) * v31, v9, type metadata accessor for RequiredCharacteristicValue);
    v49 = v9;
    v33 = v51;
    v34 = *(v51 + 48);
    (*(v11 + 32))(v21, v14, v10);
    sub_2527E3FD8(v49, &v21[v34], type metadata accessor for RequiredCharacteristicValue);
    v35 = v50;
    (*(v50 + 56))(v21, 0, 1, v33);
    v30 = v27;
    v37 = v46;
    v36 = v47;
    a1 = v48;
LABEL_12:
    *v1 = v37;
    v1[1] = v23;
    v38 = v53;
    v1[2] = v52;
    v1[3] = v30;
    v1[4] = v36;
    v39 = v1[5];
    v40 = v1[6];
    sub_25274AA0C(v21, v38, &qword_27F4FE8D0, &qword_2528CDFB8);
    v41 = 1;
    if ((*(v35 + 48))(v38, 1, v33) != 1)
    {
      v42 = v45;
      sub_25274AA0C(v38, v45, &qword_27F4FE8B8, &qword_2528CDF90);
      v39(v42);
      sub_2527213D8(v42, &qword_27F4FE8B8, &qword_2528CDF90);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
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
        v35 = v50;
        v33 = v51;
        v37 = v22;
        (*(v50 + 56))(v21, 1, 1, v51);
        v36 = 0;
        goto LABEL_12;
      }

      v26 = *(v23 + 8 * v27);
      ++v24;
      if (v26)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2527E367C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for DeviceEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v42 = v6;
  v46 = v22;
  if (v23)
  {
    v43 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    sub_2527E3F70(*(v19 + 48) + *(v8 + 72) * v29, v11, type metadata accessor for DeviceEntity);
    v30 = *(*(v19 + 56) + 8 * v29);
    v31 = *(v45 + 48);
    v32 = v11;
    v33 = v45;
    sub_2527E3FD8(v32, v18, type metadata accessor for DeviceEntity);
    *&v18[v31] = v30;
    v34 = v44;
    (*(v44 + 56))(v18, 0, 1, v33);

    v27 = v24;
    a1 = v43;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v35 = v47;
    v1[2] = v46;
    v1[3] = v27;
    v1[4] = v28;
    v36 = v1[5];
    v37 = v1[6];
    sub_25274AA0C(v18, v35, &qword_27F4FCE40, &qword_2528C61C0);
    v38 = 1;
    if ((*(v34 + 48))(v35, 1, v33) != 1)
    {
      v39 = v35;
      v40 = v42;
      sub_25274AA0C(v39, v42, &qword_27F4FCE48, &unk_2528C61E0);
      v36(v40);
      sub_2527213D8(v40, &qword_27F4FCE48, &unk_2528C61E0);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v34 = v44;
        v33 = v45;
        (*(v44 + 56))(&v42 - v17, 1, 1, v45);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v43 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RequiredCharacteristicValue()
{
  result = qword_27F4FE8E8;
  if (!qword_27F4FE8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527E3A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for RequiredCharacteristicValue();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2528BFDE0();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C8, &qword_2528CDFA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E31F0(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_25271A648();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_2527E3FD8(&v20[v28], v57, type metadata accessor for RequiredCharacteristicValue);
    v30 = *a5;
    v32 = sub_252785EBC(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_2527E1F00();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_2527E3E9C(v57, v40[7] + *(v48 + 72) * v32);
      a4 = 1;
    }

    else
    {
      sub_2527DF2C0(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_252785EBC(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_2527E3FD8(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for RequiredCharacteristicValue);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_2527E3E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequiredCharacteristicValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E3F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E3F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527E3FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527E4068()
{
  result = sub_2528BFDD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2527E412C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527E4178()
{
  result = qword_27F4FE908;
  if (!qword_27F4FE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE908);
  }

  return result;
}

unint64_t sub_2527E41D0()
{
  result = qword_27F4FE910;
  if (!qword_27F4FE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE910);
  }

  return result;
}

unint64_t sub_2527E4290()
{
  result = qword_27F4FE918;
  if (!qword_27F4FE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE918);
  }

  return result;
}

uint64_t sub_2527E42E4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5029F8);
  __swift_project_value_buffer(v0, qword_27F5029F8);
  return sub_2528BEC20();
}

uint64_t sub_2527E4350(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for HomeAppIntentError();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527E444C, 0, 0);
}

uint64_t sub_2527E444C()
{
  if (qword_27F4FB838 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v0[3], qword_27F502A10);
  sub_2527E484C(v4, v3);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[4];
  v7 = v0[7];
  if (v5 == 1)
  {
    v8 = v0[2];
    sub_2527E48BC(v0[4]);
    sub_2528BE670();
  }

  else
  {
    v10 = v0[5];
    sub_2527E4924(v0[4], v0[7]);
    sub_2527E4988();
    swift_allocError();
    sub_2527E49E0(v7, v11);
    swift_willThrow();
    sub_2527E4A44(v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2527E45BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  __swift_allocate_value_buffer(v0, qword_27F502A10);
  v1 = __swift_project_value_buffer(v0, qword_27F502A10);
  v2 = type metadata accessor for HomeAppIntentError();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2527E465C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB830 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5029F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527E4704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return sub_2527E4350(a1);
}

uint64_t sub_2527E479C(uint64_t a1)
{
  v2 = sub_2527E4290();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2527E47E8()
{
  result = qword_27F4FE828;
  if (!qword_27F4FE828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FE830, &qword_2528D3230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE828);
  }

  return result;
}

uint64_t sub_2527E484C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E48BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527E4924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppIntentError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2527E4988()
{
  result = qword_27F4FC2B0;
  if (!qword_27F4FC2B0)
  {
    type metadata accessor for HomeAppIntentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2B0);
  }

  return result;
}

uint64_t sub_2527E49E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppIntentError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E4A44(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppIntentError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527E4AA0(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for DeviceEntity() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_2527E4B84(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v8 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - v9;
  v29 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v27 = a4;

  v17 = 0;
  while (v14)
  {
    v28 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v27;
    v22 = *(v27 + 48);
    v23 = type metadata accessor for DeviceEntity();
    sub_25272E7DC(v22 + *(*(v23 - 8) + 72) * v20, v10);
    *&v10[*(v25 + 48)] = *(*(v21 + 56) + 8 * v20);

    v24 = v28;
    v26(&v29, v10);
    v5 = v24;
    result = sub_2527213D8(v10, &qword_27F4FCE48, &unk_2528C61E0);
    if (v24)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v29;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v28 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527E4D64(uint64_t (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 7) | (2 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2527E4E5C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v6 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v27 = v4;
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v26;
    v20 = *(v26 + 48);
    v21 = type metadata accessor for DeviceEntity();
    sub_25272E7DC(v20 + *(*(v21 - 8) + 72) * v18, v8);
    *&v8[*(v24 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v27;
    v25(v8);
    v4 = v22;
    result = sub_2527213D8(v8, &qword_27F4FCE48, &unk_2528C61E0);
    if (v22)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v27 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527E5018(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v12 = *v7;
      v13 = *(v7 - 4);
      v14 = v11;
      v15 = v9;
      v16 = v10;
      v17 = v12;
      sub_252760C18(v13, v11, v9, v10, v12);
      v5(&v13);
      result = sub_25272C15C(v13, v14, v15, v16, v17);
      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 40;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2527E50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v9 = sub_2528BECF0();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceEntity();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  result = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v56 = a1;
  if (!v17)
  {
LABEL_28:
    v62 = v56;

    sub_252735F14(v18);
    v53 = v62;
    v34 = *(v57 + 16);
    if (v34)
    {
      v35 = v57 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v36 = *(v52 + 72);
      v37 = v59;
      v38 = (v58 + 48);
      *&v60 = v58 + 32;
      v39 = MEMORY[0x277D84F90];
      do
      {
        sub_25272E7DC(v35, v16);
        v40 = *(v16 + 1);
        sub_2528BE6B0();
        sub_2528BECA0();

        sub_25272E840(v16);
        if ((*v38)(v8, 1, v37) == 1)
        {
          sub_2527213D8(v8, &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v41 = v16;
          v42 = v36;
          v43 = *v60;
          (*v60)(v61, v8, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_252737E4C(0, v39[2] + 1, 1, v39);
          }

          v45 = v39[2];
          v44 = v39[3];
          if (v45 >= v44 >> 1)
          {
            v39 = sub_252737E4C(v44 > 1, v45 + 1, 1, v39);
          }

          v39[2] = v45 + 1;
          v46 = v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45;
          v37 = v59;
          v43(v46, v61, v59);
          v36 = v42;
          v16 = v41;
        }

        v35 += v36;
        --v34;
      }

      while (v34);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v47 = sub_25278D51C(MEMORY[0x277D84F90]);
    v48 = MEMORY[0x28223BE20](v47);
    v49 = v54;
    *(&v52 - 6) = v53;
    *(&v52 - 5) = v49;
    v50 = v55;
    *(&v52 - 4) = v56;
    *(&v52 - 3) = v39;
    *(&v52 - 2) = v50;
    v51 = sub_2527E4AA0(v48, sub_2527F2714, (&v52 - 8), v57);

    return v51;
  }

  v19 = (a1 + 64);
  v60 = xmmword_2528C3910;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = *(v19 - 4);
    v22 = *v19 >> 1;
    if (v22 != 4)
    {
      if (v22 == 47)
      {
        v25 = *(v19 - 4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
        result = swift_allocObject();
        v23 = result;
        *(result + 16) = v60;
        v24 = v21 <= 0.0;
        goto LABEL_10;
      }

      if (v22 != 59)
      {
        v23 = v20;
        v27 = *(v20 + 16);
        goto LABEL_15;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
    result = swift_allocObject();
    v23 = result;
    *(result + 16) = v60;
    v24 = *&v21 <= 0;
LABEL_10:
    v26 = !v24;
    *(result + 32) = v26;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 88;
    v27 = 1;
LABEL_15:
    v28 = *(v18 + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v29 <= *(v18 + 24) >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v30 = v28 + v27;
      }

      else
      {
        v30 = v28;
      }

      result = sub_252737E74(result, v30, 1, v18);
      v18 = result;
      if (*(v23 + 16))
      {
LABEL_24:
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v27)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v31 = *(v18 + 16);
          v32 = __OFADD__(v31, v27);
          v33 = v31 + v27;
          if (v32)
          {
            goto LABEL_43;
          }

          *(v18 + 16) = v33;
        }

        goto LABEL_4;
      }
    }

    if (v27)
    {
      goto LABEL_41;
    }

LABEL_4:
    v19 += 5;
    if (!--v17)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void *sub_2527E5624(unsigned __int16 *a1)
{
  v3 = sub_2528BFDE0();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](&v119 - v6);
  v9 = &v119 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v119 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v119 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v119 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v119 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v119 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v33 = &v119 - v32;
  v34 = *a1;
  v35 = *v1;
  v36 = *(v1 + 32);
  v120 = MEMORY[0x277D84F90];
  v37 = (v34 >> 8) & 0x3F;
  if (v34 >> 14 != 1)
  {
    LOBYTE(v37) = v34;
  }

  if (v34 >> 14)
  {
    LOBYTE(v34) = v37;
  }

  v38 = v36 >> 1;
  if (v38 > 61)
  {
    switch(v38)
    {
      case '@':
        if (v34 != 11)
        {
          if (v34 != 29)
          {
            return v120;
          }

          if (v35 <= 1u)
          {
            if (!v35)
            {
              v57 = v29;
              v49 = v30;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
              v58 = *(v57 + 72);
              v99 = (*(v57 + 80) + 32) & ~*(v57 + 80);
              v52 = 2 * v58;
              v53 = swift_allocObject();
              *(v53 + 16) = xmmword_2528C17D0;
              v54 = v53 + v99;
              v60 = MEMORY[0x277D16298];
              goto LABEL_56;
            }
          }

          else if (v35 - 2 < 3)
          {
            return v120;
          }

          goto LABEL_85;
        }

        LODWORD(v35) = v35;
        if (v35 > 2u)
        {
          if (v35 - 3 < 2)
          {
            return v120;
          }

          goto LABEL_85;
        }

        break;
      case '?':
        if (v34 != 11)
        {
          if (v34 != 29)
          {
            return v120;
          }

          if (v35 > 2u)
          {
            if (v35 - 3 >= 2)
            {
              return v120;
            }

            v84 = v29;
            v85 = v30;
            (*(v29 + 104))(v15, *MEMORY[0x277D161B0], v30);
            v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v87 = v42[2];
            v86 = v42[3];
            if (v87 >= v86 >> 1)
            {
              v42 = sub_252737FE8(v86 > 1, v87 + 1, 1, v42);
            }

            v42[2] = v87 + 1;
            (*(v84 + 32))(v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v87, v15, v85);
            return v42;
          }

          if (v35)
          {
            if (v35 != 1)
            {
              return v120;
            }

            v57 = v29;
            v49 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
            v58 = *(v57 + 72);
            v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v52 = 2 * v58;
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_2528C17D0;
            v54 = v53 + v59;
            v60 = MEMORY[0x277D161B0];
LABEL_56:
            v55 = *(v57 + 104);
            v55(v54, *v60, v49);
            v55(v54 + v58, *MEMORY[0x277D16180], v49);
            v56 = MEMORY[0x277D16170];
            goto LABEL_57;
          }

          v107 = v29;
          v49 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
          v102 = *(v107 + 72);
          v108 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_2528C35E0;
          v104 = v53 + v108;
          v105 = *(v107 + 104);
          v105(v104, *MEMORY[0x277D16298], v49);
          v106 = MEMORY[0x277D161B0];
          goto LABEL_89;
        }

        LODWORD(v35) = v35;
        if (v35 > 2u)
        {
          if (v35 == 3)
          {
            v115 = v29;
            v116 = v30;
            (*(v29 + 104))(v21, *MEMORY[0x277D16180], v30);
            v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v118 = v42[2];
            v117 = v42[3];
            if (v118 >= v117 >> 1)
            {
              v42 = sub_252737FE8(v117 > 1, v118 + 1, 1, v42);
            }

            v42[2] = v118 + 1;
            (*(v115 + 32))(v42 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v118, v21, v116);
          }

          else
          {
            if (v35 != 4)
            {
              return v120;
            }

            v95 = v29;
            v96 = v30;
            (*(v29 + 104))(v18, *MEMORY[0x277D16170], v30);
            v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v98 = v42[2];
            v97 = v42[3];
            if (v98 >= v97 >> 1)
            {
              v42 = sub_252737FE8(v97 > 1, v98 + 1, 1, v42);
            }

            v42[2] = v98 + 1;
            (*(v95 + 32))(v42 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v98, v18, v96);
          }

          return v42;
        }

        break;
      case '>':
        if (v34 != 11)
        {
          if (v34 != 29)
          {
            return v120;
          }

          v39 = 1 << v35;
          if ((v39 & 5) != 0)
          {
            return v120;
          }

          if ((v39 & 0x18) != 0)
          {
            v40 = v29;
            v41 = v30;
            (*(v29 + 104))(v24, *MEMORY[0x277D161B0], v30);
            v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v44 = v42[2];
            v43 = v42[3];
            if (v44 >= v43 >> 1)
            {
              v42 = sub_252737FE8(v43 > 1, v44 + 1, 1, v42);
            }

            v42[2] = v44 + 1;
            (*(v40 + 32))(v42 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v44, v24, v41);
            return v42;
          }

          goto LABEL_85;
        }

        if (v35 <= 2u)
        {
          if (v35 - 1 >= 2)
          {
            return v120;
          }

          v57 = v29;
          v49 = v30;
          goto LABEL_55;
        }

        if (v35 == 3)
        {
          v110 = v29;
          v111 = v30;
          (*(v29 + 104))(v33, *MEMORY[0x277D16180], v30);
          v112 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
          v114 = v112[2];
          v113 = v112[3];
          if (v114 >= v113 >> 1)
          {
            v112 = sub_252737FE8(v113 > 1, v114 + 1, 1, v112);
          }

          v112[2] = v114 + 1;
          (*(v110 + 32))(v112 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v114, v33, v111);
          return v112;
        }

        if (v35 == 4)
        {
          v88 = v29;
          v89 = v30;
          (*(v29 + 104))(v27, *MEMORY[0x277D16170], v30);
          v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
          v91 = v42[2];
          v90 = v42[3];
          if (v91 >= v90 >> 1)
          {
            v42 = sub_252737FE8(v90 > 1, v91 + 1, 1, v42);
          }

          v42[2] = v91 + 1;
          (*(v88 + 32))(v42 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v91, v27, v89);
          return v42;
        }

LABEL_85:
        v100 = v29;
        v62 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v63 = *(v100 + 72);
        v101 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_2528C17E0;
        v65 = v53 + v101;
        v66 = *(v100 + 104);
        v66(v65, *MEMORY[0x277D16180], v62);
        v67 = MEMORY[0x277D16170];
        goto LABEL_86;
      default:
        return v120;
    }

    v49 = v30;
    v57 = v29;
    if ((v35 - 1) < 2)
    {
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v58 = *(v57 + 72);
      v74 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v52 = 2 * v58;
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2528C17D0;
      v54 = v53 + v74;
      v60 = MEMORY[0x277D16288];
      goto LABEL_56;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
    v102 = *(v57 + 72);
    v103 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_2528C35E0;
    v104 = v53 + v103;
    v105 = *(v57 + 104);
    v105(v104, *MEMORY[0x277D16330], v49);
    v106 = MEMORY[0x277D16288];
LABEL_89:
    v105(v104 + v102, *v106, v49);
    v105(v104 + 2 * v102, *MEMORY[0x277D16180], v49);
    v105(v104 + 3 * v102, *MEMORY[0x277D16170], v49);
    goto LABEL_91;
  }

  if (v38 == 28)
  {
    if (v35 <= 2u)
    {
      if (v35 < 2u)
      {
LABEL_32:
        v48 = v29;
        v49 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v50 = *(v48 + 72);
        v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = 2 * v50;
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_2528C17D0;
        v54 = v53 + v51;
        v55 = *(v48 + 104);
        v55(v54, *MEMORY[0x277D162C8], v49);
        v55(v54 + v50, *MEMORY[0x277D161E8], v49);
        v56 = MEMORY[0x277D16228];
LABEL_57:
        v55(v54 + v52, *v56, v49);
        goto LABEL_91;
      }

      v45 = *MEMORY[0x277D161E8];
      v46 = v29;
      v47 = *(v29 + 104);
      v28 = v12;
      goto LABEL_73;
    }

    if (v35 == 3)
    {
      v79 = v29;
      v80 = v30;
      (*(v29 + 104))(v9, *MEMORY[0x277D16228], v30);
      v81 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
      v83 = v81[2];
      v82 = v81[3];
      if (v83 >= v82 >> 1)
      {
        v81 = sub_252737FE8(v82 > 1, v83 + 1, 1, v81);
      }

      v81[2] = v83 + 1;
      (*(v79 + 32))(v81 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v83, v9, v80);
      return v81;
    }

    if (v35 != 4)
    {
      return v120;
    }

    v61 = v29;
    v62 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
    v63 = *(v61 + 72);
    v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_2528C17E0;
    v65 = v53 + v64;
    v66 = *(v61 + 104);
    v66(v65, *MEMORY[0x277D161E8], v62);
    v67 = MEMORY[0x277D16228];
LABEL_86:
    v66(v65 + v63, *v67, v62);
    goto LABEL_91;
  }

  if (v38 != 29)
  {
    if (v38 == 30)
    {
      if (v35 <= 3u)
      {
        if (v35 >= 2u)
        {
          return v120;
        }

        goto LABEL_32;
      }

      v69 = v30;
      v68 = v29;
      if (v35 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v70 = *(v68 + 72);
        v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_2528C17E0;
        v72 = v53 + v71;
        v73 = *(v68 + 104);
        v73(v72, *MEMORY[0x277D161E8], v69);
        v73(v72 + v70, *MEMORY[0x277D16228], v69);
LABEL_91:
        sub_252735F30(v53);
        return v120;
      }

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v75 = *(v68 + 72);
      v76 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2528C35E0;
      v77 = v53 + v76;
      v78 = *(v68 + 104);
      v78(v77, *MEMORY[0x277D16330], v69);
      v78(v77 + v75, *MEMORY[0x277D162C8], v69);
      v78(v77 + 2 * v75, *MEMORY[0x277D161E8], v69);
      v78(v77 + 3 * v75, *MEMORY[0x277D16228], v69);
      goto LABEL_91;
    }

    return v120;
  }

  if (v35 <= 2u)
  {
    if (v35 < 2u)
    {
      goto LABEL_32;
    }

    v45 = *MEMORY[0x277D161E8];
    v46 = v29;
    v47 = *(v29 + 104);
    v12 = v28;
    goto LABEL_73;
  }

  if (v35 == 3)
  {
    v45 = *MEMORY[0x277D16228];
    v46 = v29;
    v47 = *(v29 + 104);
    v12 = v31;
    v28 = v31;
LABEL_73:
    v92 = v30;
    v47(v28, v45, v30);
    v42 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
    v94 = v42[2];
    v93 = v42[3];
    if (v94 >= v93 >> 1)
    {
      v42 = sub_252737FE8(v93 > 1, v94 + 1, 1, v42);
    }

    v42[2] = v94 + 1;
    (*(v46 + 32))(v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v94, v12, v92);
    return v42;
  }

  if (v35 != 4)
  {
    v68 = v29;
    v69 = v30;
    goto LABEL_58;
  }

  return v120;
}

uint64_t sub_2527E6564(__int16 *a1, void (*a2)(char *, char *, uint64_t), char *a3)
{
  v124 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v110 - v7;
  v9 = sub_2528BF240();
  v125 = *(v9 - 8);
  v10 = v125[8];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v110 - v14;
  v16 = sub_2528BF9D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v127 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v110 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v126 = &v110 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v110 - v27;
  MEMORY[0x28223BE20](v26);
  v129 = &v110 - v28;
  v29 = *a1;
  LOWORD(v131[0]) = *a1;
  LOWORD(v130[0]) = 9;
  v30 = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130);
  v128 = v16;
  if (v30 & 1) != 0 || (LOWORD(v131[0]) = v29, LOWORD(v130[0]) = 23, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130)) || (LOWORD(v131[0]) = v29, LOWORD(v130[0]) = 25, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130)))
  {
    v31 = sub_2528BF740();
    v127 = sub_25278D334(MEMORY[0x277D84F90]);
    v32 = *(v31 + 16);
    if (v32)
    {
      v123 = v9;
      v124 = v15;
      v34 = *(v17 + 16);
      v33 = v17 + 16;
      v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
      v113 = v31;
      v36 = v31 + v35;
      v126 = *(v33 + 56);
      LODWORD(v121) = *MEMORY[0x277D15850];
      v119 = (v125 + 1);
      v120 = (v125 + 13);
      *&v117 = v33 - 8;
      LODWORD(v115) = *MEMORY[0x277D16330];
      v114 = xmmword_2528C3910;
      v125 = v33;
      v118 = v13;
      v122 = v34;
      v34(v129, v31 + v35, v16);
      while (1)
      {
        v41 = v124;
        sub_2528BF460();
        v42 = v123;
        (*v120)(v13, v121, v123);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v131[0] == v130[0] && v131[1] == v130[1])
        {
          v47 = *v119;
          (*v119)(v13, v42);
          v47(v41, v42);
        }

        else
        {
          v44 = sub_2528C1060();
          v45 = *v119;
          (*v119)(v13, v42);
          v45(v41, v42);

          if ((v44 & 1) == 0)
          {
            v40 = v128;
            (*v117)(v129, v128);
            v13 = v118;
            v46 = v122;
            goto LABEL_8;
          }
        }

        v48 = v116;
        v46 = v122;
        v122(v116, v129, v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v49 = sub_2528BFDE0();
        v50 = *(v49 - 8);
        v51 = *(v50 + 72);
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = v114;
        (*(v50 + 104))(v53 + v52, v115, v49);
        v54 = sub_252749788(v53);
        swift_setDeallocating();
        (*(v50 + 8))(v53 + v52, v49);
        swift_deallocClassInstance();
        v55 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v55;
        v58 = sub_252785D14(v48);
        v59 = *(v55 + 16);
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v62 = v57;
        if (*(v55 + 24) >= v61)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2527E1078();
          }
        }

        else
        {
          sub_2527DDCC4(v61, isUniquelyReferenced_nonNull_native);
          v63 = sub_252785D14(v48);
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_60;
          }

          v58 = v63;
        }

        v65 = v131[0];
        v127 = v131[0];
        if (v62)
        {
          v37 = *(v131[0] + 56);
          v38 = *(v37 + 8 * v58);
          *(v37 + 8 * v58) = v54;
        }

        else
        {
          *(v131[0] + 8 * (v58 >> 6) + 64) |= 1 << v58;
          v46(v65[6] + v58 * v126, v48, v128);
          *(v65[7] + 8 * v58) = v54;
          v66 = v65[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_56;
          }

          v65[2] = v68;
        }

        v39 = *v117;
        v40 = v128;
        (*v117)(v48, v128);
        v39(v129, v40);
        v13 = v118;
LABEL_8:
        v36 += v126;
        if (!--v32)
        {
          break;
        }

        v46(v129, v36, v40);
      }
    }

    return v127;
  }

  LOWORD(v131[0]) = v29;
  LOWORD(v130[0]) = 24073;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130) & 1) == 0)
  {
    LOWORD(v131[0]) = v29;
    LOWORD(v130[0]) = 24087;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130) & 1) == 0)
    {
      LOWORD(v131[0]) = v29;
      LOWORD(v130[0]) = 24089;
      if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v131, v130) & 1) == 0)
      {
        v109 = MEMORY[0x277D84F90];

        return sub_25278D334(v109);
      }
    }
  }

  LOWORD(v131[0]) = v29;
  sub_2527F005C(a2, v131, v124, v8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_2527213D8(v8, &qword_27F4FD670, &qword_2528D3570);
    return sub_25278D334(MEMORY[0x277D84F90]);
  }

  (*(v17 + 32))(v126, v8, v16);
  v71 = sub_25278D334(MEMORY[0x277D84F90]);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
  v73 = sub_2528BFDE0();
  v74 = *(v73 - 8);
  v75 = *(v74 + 72);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v119 = *(v74 + 80);
  v120 = v75;
  v123 = v72;
  v77 = swift_allocObject();
  v117 = xmmword_2528C3910;
  *(v77 + 16) = xmmword_2528C3910;
  v78 = *(v74 + 104);
  LODWORD(v116) = *MEMORY[0x277D16330];
  v115 = v74 + 104;
  *&v114 = v78;
  v78(v77 + v76);
  v79 = sub_252749788(v77);
  swift_setDeallocating();
  v80 = *(v74 + 8);
  v118 = v76;
  v121 = v74 + 8;
  v122 = v73;
  v113 = v80;
  v80(v77 + v76, v73);
  swift_deallocClassInstance();
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v131[0] = v71;
  sub_25278BA60(v79, v126, v81);
  v69 = v131[0];
  v82 = sub_2528BF740();
  v112 = *(v82 + 16);
  if (!v112)
  {

    v86 = *(v17 + 8);
LABEL_51:
    v86(v126, v16);
    return v69;
  }

  v83 = 0;
  v111 = v82 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v129 = (v17 + 16);
  v124 = (v17 + 8);
  v125 = v17;
  v110 = v82;
  while (1)
  {
    if (v83 >= *(v82 + 16))
    {
      goto LABEL_57;
    }

    v87 = v16;
    v88 = v125[9];
    v89 = v125[2];
    v89(v23, v111 + v88 * v83, v87);
    v90 = v127;
    v91 = v23;
    v89(v127, v23, v87);
    v92 = v118;
    v93 = swift_allocObject();
    *(v93 + 16) = v117;
    v94 = v122;
    (v114)(&v92[v93], v116, v122);
    v95 = sub_252749788(v93);
    swift_setDeallocating();
    v113(&v92[v93], v94);
    swift_deallocClassInstance();
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = v69;
    v98 = sub_252785D14(v90);
    v99 = v69[2];
    v100 = (v97 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      break;
    }

    v102 = v97;
    if (v69[3] >= v101)
    {
      if (v96)
      {
        v69 = v131[0];
        if (v97)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_2527E1078();
        v69 = v131[0];
        if (v102)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_2527DDCC4(v101, v96);
      v103 = sub_252785D14(v127);
      if ((v102 & 1) != (v104 & 1))
      {
        goto LABEL_60;
      }

      v98 = v103;
      v69 = v131[0];
      if (v102)
      {
LABEL_35:
        v84 = v69[7];
        v85 = *(v84 + 8 * v98);
        *(v84 + 8 * v98) = v95;

        v86 = *v124;
        v16 = v128;
        (*v124)(v127, v128);
        v23 = v91;
        v86(v91, v16);
        goto LABEL_36;
      }
    }

    v69[(v98 >> 6) + 8] |= 1 << v98;
    v105 = v69[6] + v98 * v88;
    v106 = v127;
    v16 = v128;
    v89(v105, v127, v128);
    *(v69[7] + 8 * v98) = v95;
    v86 = *v124;
    (*v124)(v106, v16);
    v23 = v91;
    v86(v91, v16);
    v107 = v69[2];
    v67 = __OFADD__(v107, 1);
    v108 = v107 + 1;
    if (v67)
    {
      goto LABEL_59;
    }

    v69[2] = v108;
LABEL_36:
    ++v83;
    v82 = v110;
    if (v112 == v83)
    {

      goto LABEL_51;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

unint64_t sub_2527E7218(unsigned __int16 *a1, uint64_t a2)
{
  v6 = sub_2528BF240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v149[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v149[-v13];
  v15 = *a1;
  v16 = *(v2 + 16);
  v157 = *v2;
  v158 = v16;
  v159 = *(v2 + 32);
  v17 = (v15 >> 8) & 0x3F;
  if (v15 >> 14 != 1)
  {
    LOBYTE(v17) = v15;
  }

  if (v15 >> 14)
  {
    LOBYTE(v15) = v17;
  }

  v18 = v157;
  v19 = *(&v157 + 1) | ((*(&v157 + 5) | (BYTE7(v157) << 16)) << 32);
  v21 = *(&v157 + 1);
  v20 = v158;
  switch(v159 >> 1)
  {
    case 0:
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1F:
    case 0x20:
    case 0x23:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2D:
    case 0x33:
    case 0x34:
    case 0x41:
    case 0x42:
      goto LABEL_6;
    case 4:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v42 = *(*v41 + 72);
      v43 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v43;
      v32 = v31 + v41[14];
      v33 = MEMORY[0x277D160A8];
      goto LABEL_48;
    case 0xC:
      v34 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v72 = *(*v35 + 72);
      v73 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v73;
      v40 = MEMORY[0x277D161F8];
      goto LABEL_42;
    case 0xD:
      v160 = v157 | (v19 << 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v78 = *(v77 - 8);
      v153 = *(v78 + 72);
      v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_2528C17E0;
      v81 = v80 + v79;
      v82 = *(v77 + 48);
      v152 = v77;
      v83 = (v81 + v82);
      LODWORD(v151) = *MEMORY[0x277D162D8];
      v84 = sub_2528BFDE0();
      v85 = *(*(v84 - 8) + 104);
      (v85)(v81, v151, v84);
      v83[3] = MEMORY[0x277D839F8];
      *v83 = v160;
      v86 = (v81 + v153 + *(v77 + 48));
      v87 = *MEMORY[0x277D160B8];
      v85();
      v86[3] = MEMORY[0x277D839F8];
      *v86 = v21;
      v2 = sub_25278E178(v80);
      swift_setDeallocating();
      goto LABEL_44;
    case 0x1C:
      LOBYTE(v155[0]) = v157;
      v25 = sub_2527EC834(v155, &v157);
      goto LABEL_61;
    case 0x1D:
      LOBYTE(v155[0]) = v157;
      v25 = sub_2527ECC68(v155, *(&v157 + 1), a2, &v157);
      goto LABEL_61;
    case 0x1E:
      LOBYTE(v155[0]) = v157;
      v25 = sub_2527EE7E8(v155, a2, &v157, *(&v157 + 1), *&v158);
      goto LABEL_61;
    case 0x2C:
      if (v15 > 0x1Eu)
      {
        goto LABEL_73;
      }

      if (((1 << v15) & 0x4A800201) != 0)
      {
        v64 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v66 = *(*v65 + 72);
        v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_2528C3910;
        v39 = v38 + v67;
        v68 = v39 + v65[14];
        v69 = MEMORY[0x277D16330];
LABEL_40:
        v70 = *v69;
        v71 = sub_2528BFDE0();
        (*(*(v71 - 8) + 104))(v39, v70, v71);
        *(v68 + 24) = MEMORY[0x277D839B0];
        *v68 = v64;
        goto LABEL_67;
      }

      if (v15 != 8)
      {
LABEL_73:
        v64 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v110 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v111 = *(*v110 + 72);
        v112 = (*(*v110 + 80) + 32) & ~*(*v110 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_2528C3910;
        v39 = v38 + v112;
        v68 = v39 + v110[14];
        v69 = MEMORY[0x277D160B0];
        goto LABEL_40;
      }

      v160 = v157;
      v108 = v12;
      sub_2528BF460();
      (*(v7 + 104))(v11, *MEMORY[0x277D15810], v108);
      sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v155[0] == v154)
      {
        v109 = *(v7 + 8);
        v109(v11, v108);
        v109(v14, v108);

LABEL_78:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v125 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v126 = *(*v125 + 72);
        v127 = (*(*v125 + 80) + 32) & ~*(*v125 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_2528C3910;
        v39 = v38 + v127;
        v128 = v39 + v125[14];
        v129 = MEMORY[0x277D160B0];
        goto LABEL_84;
      }

      v123 = sub_2528C1060();
      v124 = *(v7 + 8);
      v124(v11, v108);
      v124(v14, v108);

      if (v123)
      {
        goto LABEL_78;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v144 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v145 = *(*v144 + 72);
      v146 = (*(*v144 + 80) + 32) & ~*(*v144 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v146;
      v128 = v39 + v144[14];
      v129 = MEMORY[0x277D16330];
LABEL_84:
      v147 = *v129;
      v148 = sub_2528BFDE0();
      (*(*(v148 - 8) + 104))(v39, v147, v148);
      *(v128 + 24) = MEMORY[0x277D839B0];
      *v128 = v160;
LABEL_67:
      v2 = sub_25278E178(v38);
      swift_setDeallocating();
      sub_2527213D8(v39, &qword_27F4FD210, &qword_2528C7D48);
      goto LABEL_68;
    case 0x2E:
      v34 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v36 = *(*v35 + 72);
      v37 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v37;
      v40 = MEMORY[0x277D161A8];
      goto LABEL_42;
    case 0x2F:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v45 = *(*v44 + 72);
      v46 = (*(*v44 + 80) + 32) & ~*(*v44 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v46;
      v32 = v31 + v44[14];
      v47 = MEMORY[0x277D16128];
      goto LABEL_46;
    case 0x32:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v51 = *(*v50 + 72);
      v52 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v52;
      v32 = v31 + v50[14];
      v33 = MEMORY[0x277D160E0];
      goto LABEL_48;
    case 0x35:
      v34 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v62 = *(*v35 + 72);
      v63 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v63;
      v40 = MEMORY[0x277D16338];
      goto LABEL_42;
    case 0x36:
      v34 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v48 = *(*v35 + 72);
      v49 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v49;
      v40 = MEMORY[0x277D16260];
LABEL_42:
      v74 = *v40;
      v75 = sub_2528BFDE0();
      (*(*(v75 - 8) + 104))(v39, v74, v75);
      v76 = (v39 + v35[14]);
      v76[3] = MEMORY[0x277D83B88];
      *v76 = v34 & 1;
      goto LABEL_67;
    case 0x37:
      if (v157 - 2 < 3)
      {
        goto LABEL_6;
      }

      if (v157)
      {
        v18 = 1;
      }

      v53 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v99 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v100 = *(*v99 + 72);
      v101 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v101;
      v60 = (v39 + v99[14]);
      v61 = MEMORY[0x277D16158];
      goto LABEL_66;
    case 0x38:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v94 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v95 = *(*v94 + 72);
      v96 = (*(*v94 + 80) + 32) & ~*(*v94 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v96;
      v32 = v31 + v94[14];
      v33 = MEMORY[0x277D16200];
      goto LABEL_48;
    case 0x39:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v88 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v89 = *(*v88 + 72);
      v90 = (*(*v88 + 80) + 32) & ~*(*v88 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v90;
      v32 = v31 + v88[14];
      v47 = MEMORY[0x277D16268];
LABEL_46:
      v91 = *v47;
      v92 = sub_2528BFDE0();
      (*(*(v92 - 8) + 104))(v31, v91, v92);
      v93 = MEMORY[0x277D839F8];
      goto LABEL_49;
    case 0x3A:
      if (v157 - 2 < 2)
      {
        goto LABEL_6;
      }

      if (v157)
      {
        v18 = 1;
      }

      v53 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v58 = *(*v57 + 72);
      v59 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v59;
      v60 = (v39 + v57[14]);
      v61 = MEMORY[0x277D162A0];
      goto LABEL_66;
    case 0x3B:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v28 = *(*v27 + 72);
      v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v29;
      v32 = v31 + v27[14];
      v33 = MEMORY[0x277D16140];
      goto LABEL_48;
    case 0x3C:
      if (v157 <= 1u)
      {
        if (v157)
        {
          v53 = 0;
        }

        else
        {
          v53 = 3;
        }
      }

      else if (v157 == 2)
      {
        v53 = 1;
      }

      else
      {
        if (v157 != 3)
        {
          goto LABEL_6;
        }

        v53 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v102 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v103 = *(*v102 + 72);
      v104 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2528C3910;
      v39 = v38 + v104;
      v60 = (v39 + v102[14]);
      v61 = MEMORY[0x277D162B0];
LABEL_66:
      v105 = *v61;
      v106 = sub_2528BFDE0();
      (*(*(v106 - 8) + 104))(v39, v105, v106);
      v60[3] = MEMORY[0x277D83B88];
      *v60 = v53;
      goto LABEL_67;
    case 0x3D:
      v26 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v55 = *(*v54 + 72);
      v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v56;
      v32 = v31 + v54[14];
      v33 = MEMORY[0x277D161D0];
LABEL_48:
      v97 = *v33;
      v98 = sub_2528BFDE0();
      (*(*(v98 - 8) + 104))(v31, v97, v98);
      v93 = MEMORY[0x277D83B88];
LABEL_49:
      *(v32 + 24) = v93;
      *v32 = v26;
      *(v32 + 7) = BYTE6(v19);
      *(v32 + 5) = WORD2(v19);
      *(v32 + 1) = v19;
      v2 = sub_25278E178(v30);
      swift_setDeallocating();
      sub_2527213D8(v31, &qword_27F4FD210, &qword_2528C7D48);
      goto LABEL_68;
    case 0x3E:
      if (v15 == 29)
      {
        LOBYTE(v155[0]) = v157;
        v25 = sub_2527EB3B8(v155, &v157);
      }

      else
      {
        if (v15 != 11)
        {
          return sub_25278E178(MEMORY[0x277D84F90]);
        }

        LOBYTE(v155[0]) = v157;
        v25 = sub_2527E8C90(v155, &v157);
      }

      goto LABEL_61;
    case 0x3F:
      if (v15 == 29)
      {
        LOBYTE(v155[0]) = v157;
        v25 = sub_2527EB624(v155, a2, &v157, *(&v157 + 1));
      }

      else
      {
        if (v15 != 11)
        {
          return sub_25278E178(MEMORY[0x277D84F90]);
        }

        LOBYTE(v155[0]) = v157;
        v25 = sub_2527E9190(v155, *(&v157 + 1), a2, &v157);
      }

      goto LABEL_61;
    case 0x40:
      if (v15 == 29)
      {
        if (v157 <= 1u)
        {
          if (!v157)
          {
            sub_2527EBF4C(a2, &v157, *(&v157 + 1), *&v158);
            if (v3)
            {
              return v2;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
            v153 = v113;
            v114 = *(v113 - 8);
            v160 = *(v114 + 72);
            v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
            v116 = swift_allocObject();
            *(v116 + 16) = xmmword_2528C17E0;
            v117 = v116 + v115;
            v118 = (v117 + *(v113 + 48));
            LODWORD(v152) = *MEMORY[0x277D16180];
            v119 = sub_2528BFDE0();
            v120 = *(*(v119 - 8) + 104);
            (v120)(v117, v152, v119);
            v118[3] = MEMORY[0x277D839F8];
            *v118 = v21;
            v121 = (v117 + v160 + *(v153 + 48));
            v122 = *MEMORY[0x277D16170];
            v120();
            v121[3] = MEMORY[0x277D839F8];
            *v121 = v20;
            v2 = sub_25278E178(v116);
            swift_setDeallocating();
LABEL_44:
            swift_arrayDestroy();
LABEL_68:
            swift_deallocClassInstance();
            return v2;
          }

          v2 = 0;
        }

        else
        {
          if (v157 - 2 < 3)
          {
LABEL_6:
            type metadata accessor for HomeAppIntentError();
            sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
            swift_allocError();
            v23 = v22;
            v24 = *(v2 + 16);
            v155[0] = *v2;
            v155[1] = v24;
            v156 = *(v2 + 32);
            v2 = v155;
            sub_252870158(&v154);
            *v23 = v154;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            return v2;
          }

          v2 = 3;
        }

        sub_2527EBF4C(a2, &v157, *(&v157 + 1), *&v158);
        if (v3)
        {
          return v2;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v160 = v2;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
        v151 = v130;
        v131 = *(*(v130 - 8) + 72);
        v132 = (*(*(v130 - 8) + 80) + 32) & ~*(*(v130 - 8) + 80);
        v152 = 2 * v131;
        v133 = swift_allocObject();
        v153 = v133;
        *(v133 + 16) = xmmword_2528C17D0;
        v134 = v133 + v132;
        v135 = (v134 + *(v130 + 48));
        v150 = *MEMORY[0x277D16298];
        v136 = sub_2528BFDE0();
        v137 = *(*(v136 - 8) + 104);
        (v137)(v134, v150, v136);
        v135[3] = MEMORY[0x277D83B88];
        *v135 = v160;
        v138 = v134 + v131;
        v139 = v151;
        v140 = (v138 + *(v151 + 48));
        v141 = *MEMORY[0x277D16180];
        v137();
        v140[3] = MEMORY[0x277D839F8];
        *v140 = v21;
        v142 = (v134 + v152 + *(v139 + 48));
        v143 = *MEMORY[0x277D16170];
        v137();
        v142[3] = MEMORY[0x277D839F8];
        *v142 = v20;
        v2 = sub_25278E178(v153);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_68;
      }

      if (v15 != 11)
      {
        return sub_25278E178(MEMORY[0x277D84F90]);
      }

      LOBYTE(v155[0]) = v157;
      v25 = sub_2527EAD0C(v155, a2, &v157, *(&v157 + 1), *&v158);
LABEL_61:
      if (!v3)
      {
        return v25;
      }

      return v2;
    default:
      return sub_25278E178(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2527E8C90(_BYTE *a1, __int128 *a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v34 = 1;
    }

    else if (v2 == 4)
    {
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v23 = *(*(v22 - 8) + 72);
    v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2528C17E0;
    v26 = v25 + v24;
    v27 = v26 + *(v22 + 48);
    v28 = *MEMORY[0x277D16330];
    v29 = sub_2528BFDE0();
    v30 = *(*(v29 - 8) + 104);
    (v30)(v26, v28, v29);
    *(v27 + 24) = MEMORY[0x277D839B0];
    *v27 = 1;
    v31 = (v26 + v23 + *(v22 + 48));
    v32 = *MEMORY[0x277D16288];
    v30();
    v31[3] = MEMORY[0x277D83B88];
    *v31 = v34;
    v33 = sub_25278E178(v25);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v33;
  }

  else if (*a1)
  {
    if (v2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v4 = *(*v3 + 72);
      v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2528C3910;
      v7 = v6 + v5;
      v8 = v7 + v3[14];
      v9 = *MEMORY[0x277D16330];
      v10 = sub_2528BFDE0();
      (*(*(v10 - 8) + 104))(v7, v9, v10);
      *(v8 + 24) = MEMORY[0x277D839B0];
      *v8 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v16 = *(*v15 + 72);
      v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2528C3910;
      v7 = v6 + v17;
      v18 = v7 + v15[14];
      v19 = *MEMORY[0x277D16330];
      v20 = sub_2528BFDE0();
      (*(*(v20 - 8) + 104))(v7, v19, v20);
      *(v18 + 24) = MEMORY[0x277D839B0];
      *v18 = 1;
    }

    v21 = sub_25278E178(v6);
    swift_setDeallocating();
    sub_2527213D8(v7, &qword_27F4FD210, &qword_2528C7D48);
    swift_deallocClassInstance();
    return v21;
  }

  else
  {
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v13 = v12;
    v35 = *a2;
    v36 = a2[1];
    v37 = *(a2 + 32);
    sub_252870158(&v38);
    *v13 = v38;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_2527E9190(unsigned __int8 *a1, double a2, uint64_t a3, uint64_t a4)
{
  v206 = a4;
  v6 = sub_2528BFDE0();
  v204 = *(v6 - 8);
  v205 = v6;
  v7 = *(v204 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v195 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v200 = &v195 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v195 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v195 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v195 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v203 = &v195 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v195 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v202 = &v195 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v201 = &v195 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v199 = &v195 - v40;
  MEMORY[0x28223BE20](v39);
  v198 = &v195 - v41;
  v42 = sub_2528C0700();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v195 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v58 = *a1;
  if (v58 > 2)
  {
    if (v58 == 3)
    {
      v203 = v52;
      v196 = v51;
      v197 = v55;
      v88 = v204;
      v87 = v205;
      v89 = *(v204 + 104);
      (v89)(v9, *MEMORY[0x277D16180], v205);
      sub_2528BF760();
      (*(v88 + 8))(v9, v87);
      v90 = sub_2528C01F0();
      v91 = *(v90 - 8);
      if ((*(v91 + 48))(v17, 1, v90) == 1)
      {
        sub_2527213D8(v17, &qword_27F4FE8A8, &qword_2528CDF80);
        v92 = sub_2528C0720();
        (*(*(v92 - 8) + 56))(v34, 1, 1, v92);
        goto LABEL_35;
      }

      sub_2528C01E0();
      (*(v91 + 8))(v17, v90);
      v93 = sub_2528C0720();
      v94 = *(v93 - 8);
      if ((*(v94 + 48))(v34, 1, v93) == 1)
      {
        goto LABEL_35;
      }

      if ((*(v94 + 88))(v34, v93) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_58;
      }

      (*(v94 + 96))(v34, v93);
      v96 = v196;
      v95 = v197;
      v97 = v203;
      (*(v197 + 32))(v203, v34, v196);
      sub_2528C06E0();
      if (v98 < a2)
      {
LABEL_57:
        (*(v95 + 8))(v97, v96);
        goto LABEL_37;
      }

      sub_2528C06F0();
      if (v99 > a2)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v204 = v100;
      v101 = *(*(v100 - 8) + 72);
      v102 = (*(*(v100 - 8) + 80) + 32) & ~*(*(v100 - 8) + 80);
      v206 = 2 * v101;
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_2528C17D0;
      v104 = v103 + v102;
      v105 = v104 + *(v100 + 48);
      (v89)(v104, *MEMORY[0x277D16330], v205);
      *(v105 + 24) = MEMORY[0x277D839B0];
      *v105 = 1;
      v106 = v204;
      v107 = (v104 + v101 + *(v204 + 48));
      v108 = *MEMORY[0x277D16288];
      v89();
      v107[3] = MEMORY[0x277D83B88];
      *v107 = 1;
      v109 = v104 + v206 + *(v106 + 48);
      v89();
      *(v109 + 24) = MEMORY[0x277D839F8];
      *v109 = a2;
      v110 = sub_25278E178(v103);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      if (v58 != 4)
      {
        goto LABEL_37;
      }

      v196 = v51;
      v197 = v55;
      v70 = v204;
      v69 = v205;
      v71 = *(v204 + 104);
      (v71)(v9, *MEMORY[0x277D16170], v205);
      sub_2528BF760();
      (*(v70 + 8))(v9, v69);
      v72 = sub_2528C01F0();
      v73 = *(v72 - 8);
      if ((*(v73 + 48))(v14, 1, v72) == 1)
      {
        sub_2527213D8(v14, &qword_27F4FE8A8, &qword_2528CDF80);
        v74 = sub_2528C0720();
        v75 = v203;
        (*(*(v74 - 8) + 56))(v203, 1, 1, v74);
LABEL_33:
        v130 = v75;
LABEL_36:
        sub_2527213D8(v130, &qword_27F4FE8A0, &qword_2528CDF78);
        goto LABEL_37;
      }

      v75 = v203;
      sub_2528C01E0();
      (*(v73 + 8))(v14, v72);
      v111 = sub_2528C0720();
      v112 = *(v111 - 8);
      if ((*(v112 + 48))(v75, 1, v111) == 1)
      {
        goto LABEL_33;
      }

      if ((*(v112 + 88))(v75, v111) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_50;
      }

      (*(v112 + 96))(v75, v111);
      v114 = v196;
      v113 = v197;
      v97 = v46;
      (*(v197 + 32))(v46, v75, v196);
      sub_2528C06E0();
      if (v115 < a2)
      {
        goto LABEL_28;
      }

      sub_2528C06F0();
      if (v161 > a2)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v204 = v162;
      v163 = *(*(v162 - 8) + 72);
      v164 = (*(*(v162 - 8) + 80) + 32) & ~*(*(v162 - 8) + 80);
      v206 = 2 * v163;
      v165 = swift_allocObject();
      *(v165 + 16) = xmmword_2528C17D0;
      v166 = v165 + v164;
      v167 = v166 + *(v162 + 48);
      (v71)(v166, *MEMORY[0x277D16330], v205);
      *(v167 + 24) = MEMORY[0x277D839B0];
      *v167 = 1;
      v168 = v166 + v163;
      v169 = v204;
      v170 = (v168 + *(v204 + 48));
      v171 = *MEMORY[0x277D16288];
      v71();
      v170[3] = MEMORY[0x277D83B88];
      *v170 = 2;
      v172 = v166 + v206 + *(v169 + 48);
      v71();
      *(v172 + 24) = MEMORY[0x277D839F8];
      *v172 = a2;
      v110 = sub_25278E178(v165);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

LABEL_62:
    swift_deallocClassInstance();
    v173 = v97;
    goto LABEL_63;
  }

  v196 = v51;
  v197 = v55;
  if ((v58 - 1) >= 2)
  {
    v76 = &v195 - v54;
    v77 = v53;
    v78 = sub_2528BF870();
    if (v79)
    {
      goto LABEL_37;
    }

    if (v78 == 2)
    {
      v123 = *MEMORY[0x277D16170];
      v125 = v204;
      v124 = v205;
      v126 = *(v204 + 104);
      v126(v9, v123, v205);
      sub_2528BF760();
      (*(v125 + 8))(v9, v124);
      v127 = sub_2528C01F0();
      v128 = *(v127 - 8);
      if ((*(v128 + 48))(v25, 1, v127) == 1)
      {
        sub_2527213D8(v25, &qword_27F4FE8A8, &qword_2528CDF80);
        v129 = sub_2528C0720();
        v75 = v199;
        (*(*(v129 - 8) + 56))(v199, 1, 1, v129);
        goto LABEL_33;
      }

      v75 = v199;
      sub_2528C01E0();
      (*(v128 + 8))(v25, v127);
      v135 = sub_2528C0720();
      v136 = *(v135 - 8);
      if ((*(v136 + 48))(v75, 1, v135) == 1)
      {
        goto LABEL_33;
      }

      if ((*(v136 + 88))(v75, v135) == *MEMORY[0x277D16CD0])
      {
        (*(v136 + 96))(v75, v135);
        v158 = v196;
        v157 = v197;
        (*(v197 + 32))(v77, v75, v196);
        sub_2528C06E0();
        if (v159 < a2)
        {
          (*(v157 + 8))(v77, v158);
          goto LABEL_37;
        }

        sub_2528C06F0();
        if (v175 > a2)
        {
          (*(v197 + 8))(v77, v196);
          goto LABEL_37;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v187 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v188 = *(*v187 + 72);
        v189 = (*(*v187 + 80) + 32) & ~*(*v187 + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_2528C3910;
        v191 = v190 + v189;
        v192 = v191 + v187[14];
        v126(v191, v123, v205);
        *(v192 + 24) = MEMORY[0x277D839F8];
        *v192 = a2;
        v110 = sub_25278E178(v190);
        swift_setDeallocating();
        sub_2527213D8(v191, &qword_27F4FD210, &qword_2528C7D48);
        swift_deallocClassInstance();
        v173 = v77;
        goto LABEL_63;
      }

      goto LABEL_59;
    }

    if (v78 != 1)
    {
      goto LABEL_37;
    }

    v80 = *MEMORY[0x277D16180];
    v82 = v204;
    v81 = v205;
    v83 = *(v204 + 104);
    v83(v9, v80, v205);
    sub_2528BF760();
    (*(v82 + 8))(v9, v81);
    v84 = sub_2528C01F0();
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v27, 1, v84) == 1)
    {
      sub_2527213D8(v27, &qword_27F4FE8A8, &qword_2528CDF80);
      v86 = sub_2528C0720();
      v75 = v198;
      (*(*(v86 - 8) + 56))(v198, 1, 1, v86);
      goto LABEL_33;
    }

    v75 = v198;
    sub_2528C01E0();
    (*(v85 + 8))(v27, v84);
    v111 = sub_2528C0720();
    v112 = *(v111 - 8);
    if ((*(v112 + 48))(v75, 1, v111) == 1)
    {
      goto LABEL_33;
    }

    if ((*(v112 + 88))(v75, v111) == *MEMORY[0x277D16CD0])
    {
      (*(v112 + 96))(v75, v111);
      v114 = v196;
      v113 = v197;
      v97 = v76;
      (*(v197 + 32))(v76, v75, v196);
      sub_2528C06E0();
      if (v149 >= a2)
      {
        sub_2528C06F0();
        if (v150 > a2)
        {
          goto LABEL_65;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v151 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v152 = *(*v151 + 72);
        v153 = (*(*v151 + 80) + 32) & ~*(*v151 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_2528C3910;
        v155 = v154 + v153;
        v156 = v155 + v151[14];
        v83(v155, v80, v205);
        *(v156 + 24) = MEMORY[0x277D839F8];
        *v156 = a2;
        v110 = sub_25278E178(v154);
        swift_setDeallocating();
        sub_2527213D8(v155, &qword_27F4FD210, &qword_2528C7D48);
        goto LABEL_62;
      }

LABEL_28:
      (*(v113 + 8))(v97, v114);
      goto LABEL_37;
    }

LABEL_50:
    (*(v112 + 8))(v75, v111);
    goto LABEL_37;
  }

  v59 = v57;
  v60 = v56;
  v61 = sub_2528BF870();
  if (v62)
  {
    goto LABEL_37;
  }

  if (v61 == 2)
  {
    v116 = *MEMORY[0x277D16170];
    v118 = v204;
    v117 = v205;
    v203 = *(v204 + 104);
    (v203)(v9, v116, v205);
    v119 = v200;
    sub_2528BF760();
    (*(v118 + 8))(v9, v117);
    v120 = sub_2528C01F0();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v119, 1, v120) == 1)
    {
      sub_2527213D8(v119, &qword_27F4FE8A8, &qword_2528CDF80);
      v122 = sub_2528C0720();
      v75 = v202;
      (*(*(v122 - 8) + 56))(v202, 1, 1, v122);
      goto LABEL_33;
    }

    v75 = v202;
    sub_2528C01E0();
    (*(v121 + 8))(v119, v120);
    v135 = sub_2528C0720();
    v136 = *(v135 - 8);
    if ((*(v136 + 48))(v75, 1, v135) == 1)
    {
      goto LABEL_33;
    }

    if ((*(v136 + 88))(v75, v135) == *MEMORY[0x277D16CD0])
    {
      (*(v136 + 96))(v75, v135);
      v96 = v196;
      v95 = v197;
      v97 = v59;
      (*(v197 + 32))(v59, v75, v196);
      sub_2528C06E0();
      if (v137 >= a2)
      {
        sub_2528C06F0();
        if (v138 > a2)
        {
          goto LABEL_65;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
        v140 = *(*(v139 - 8) + 72);
        v141 = (*(*(v139 - 8) + 80) + 32) & ~*(*(v139 - 8) + 80);
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_2528C17E0;
        v204 = v142;
        v143 = v142 + v141;
        v206 = v139;
        v144 = v143 + *(v139 + 48);
        v145 = v205;
        v146 = v203;
        (v203)(v143, v116, v205);
        *(v144 + 24) = MEMORY[0x277D839F8];
        *v144 = a2;
        v147 = v143 + v140;
        (v146)(v143 + v140, *MEMORY[0x277D16330], v145);
        if (v58 == 2)
        {
          v148 = 1;
        }

        else
        {
          v148 = sub_2528C1060();
        }

        v194 = v147 + *(v206 + 48);
        *(v194 + 24) = MEMORY[0x277D839B0];
        *v194 = v148 & 1;
        v110 = sub_25278E178(v204);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v173 = v59;
        goto LABEL_63;
      }

      goto LABEL_57;
    }

LABEL_59:
    (*(v136 + 8))(v75, v135);
    goto LABEL_37;
  }

  if (v61 == 1)
  {
    v63 = *MEMORY[0x277D16180];
    v65 = v204;
    v64 = v205;
    v203 = *(v204 + 104);
    (v203)(v9, v63, v205);
    sub_2528BF760();
    (*(v65 + 8))(v9, v64);
    v66 = sub_2528C01F0();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v22, 1, v66) == 1)
    {
      sub_2527213D8(v22, &qword_27F4FE8A8, &qword_2528CDF80);
      v68 = sub_2528C0720();
      v34 = v201;
      (*(*(v68 - 8) + 56))(v201, 1, 1, v68);
LABEL_35:
      v130 = v34;
      goto LABEL_36;
    }

    v34 = v201;
    sub_2528C01E0();
    (*(v67 + 8))(v22, v66);
    v93 = sub_2528C0720();
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v34, 1, v93) == 1)
    {
      goto LABEL_35;
    }

    if ((*(v94 + 88))(v34, v93) == *MEMORY[0x277D16CD0])
    {
      (*(v94 + 96))(v34, v93);
      v96 = v196;
      v95 = v197;
      v97 = v60;
      (*(v197 + 32))(v60, v34, v196);
      sub_2528C06E0();
      if (v160 < a2)
      {
        goto LABEL_57;
      }

      sub_2528C06F0();
      if (v174 > a2)
      {
LABEL_65:
        (*(v197 + 8))(v97, v196);
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v177 = *(*(v176 - 8) + 72);
      v178 = (*(*(v176 - 8) + 80) + 32) & ~*(*(v176 - 8) + 80);
      v179 = swift_allocObject();
      *(v179 + 16) = xmmword_2528C17E0;
      v180 = v179 + v178;
      v206 = v176;
      v181 = v180 + *(v176 + 48);
      v182 = v63;
      v183 = v205;
      v184 = v203;
      (v203)(v180, v182, v205);
      *(v181 + 24) = MEMORY[0x277D839F8];
      *v181 = a2;
      v185 = v180 + v177;
      (v184)(v180 + v177, *MEMORY[0x277D16330], v183);
      if (v58 == 2)
      {
        v186 = 1;
      }

      else
      {
        v186 = sub_2528C1060();
      }

      v193 = v185 + *(v206 + 48);
      *(v193 + 24) = MEMORY[0x277D839B0];
      *v193 = v186 & 1;
      v110 = sub_25278E178(v179);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v173 = v60;
LABEL_63:
      (*(v197 + 8))(v173, v196);
      return v110;
    }

LABEL_58:
    (*(v94 + 8))(v34, v93);
  }

LABEL_37:
  v110 = type metadata accessor for HomeAppIntentError();
  sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
  swift_allocError();
  v132 = v131;
  v133 = *(v206 + 16);
  v208 = *v206;
  v209 = v133;
  v210 = *(v206 + 32);
  sub_252870158(&v207);
  *v132 = v207;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v110;
}

uint64_t sub_2527EAD0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *a1;
  if (v8 > 2)
  {
    if (v8 - 3 < 2)
    {
      type metadata accessor for HomeAppIntentError();
      sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v26 = v25;
      v57 = *a3;
      v58 = *(a3 + 16);
      v59 = *(a3 + 32);
      sub_252870158(&v60);
      *v26 = v60;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    result = sub_2527EBF4C(a2, a3, a4, a5);
    if (v5)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v41 = *(*(v40 - 8) + 72);
    v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2528C35E0;
    v44 = v43 + v42;
    v45 = v44 + *(v40 + 48);
    v46 = *MEMORY[0x277D16330];
    v47 = sub_2528BFDE0();
    v48 = *(*(v47 - 8) + 104);
    (v48)(v44, v46, v47);
    *(v45 + 24) = MEMORY[0x277D839B0];
    *v45 = 1;
    v49 = (v44 + v41 + *(v40 + 48));
    v50 = *MEMORY[0x277D16288];
    v48();
    v49[3] = MEMORY[0x277D83B88];
    *v49 = 0;
    v51 = v44 + 2 * v41 + *(v40 + 48);
    v52 = *MEMORY[0x277D16180];
    v48();
    *(v51 + 24) = MEMORY[0x277D839F8];
    *v51 = a4;
    v53 = v44 + 3 * v41 + *(v40 + 48);
    v54 = *MEMORY[0x277D16170];
    v48();
    *(v53 + 24) = MEMORY[0x277D839F8];
    *v53 = a5;
    v39 = sub_25278E178(v43);
    swift_setDeallocating();
LABEL_13:
    swift_arrayDestroy();
LABEL_16:
    swift_deallocClassInstance();
    return v39;
  }

  if (v8 - 1 >= 2)
  {
    result = sub_2527EBF4C(a2, a3, a4, a5);
    if (v5)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v28 = *(*(v27 - 8) + 72);
    v29 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2528C17E0;
    v31 = v30 + v29;
    v32 = v31 + *(v27 + 48);
    v33 = *MEMORY[0x277D16180];
    v34 = sub_2528BFDE0();
    v35 = *(*(v34 - 8) + 104);
    (v35)(v31, v33, v34);
    v36 = MEMORY[0x277D839F8];
    *(v32 + 24) = MEMORY[0x277D839F8];
    *v32 = a4;
    v37 = v31 + v28 + *(v27 + 48);
    v38 = *MEMORY[0x277D16170];
    v35();
    *(v37 + 24) = v36;
    *v37 = a5;
    v39 = sub_25278E178(v30);
    swift_setDeallocating();
    goto LABEL_13;
  }

  result = sub_2527EBF4C(a2, a3, a4, a5);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2528C17D0;
    v56 = v13;
    v14 = v13 + v12;
    v15 = v14 + *(v10 + 48);
    v16 = *MEMORY[0x277D16180];
    v17 = sub_2528BFDE0();
    v18 = *(*(v17 - 8) + 104);
    (v18)(v14, v16, v17);
    v19 = MEMORY[0x277D839F8];
    *(v15 + 24) = MEMORY[0x277D839F8];
    *v15 = a4;
    v20 = v14 + v11 + *(v10 + 48);
    v21 = *MEMORY[0x277D16170];
    v18();
    *(v20 + 24) = v19;
    *v20 = a5;
    v22 = v14 + 2 * v11;
    (v18)(v22, *MEMORY[0x277D16330], v17);
    if (v8 == 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_2528C1060();
    }

    v55 = v22 + *(v10 + 48);
    *(v55 + 24) = MEMORY[0x277D839B0];
    *v55 = v23 & 1;
    v39 = sub_25278E178(v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2527EB3B8(_BYTE *a1, __int128 *a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v9 = 1;
    }

    else if (v2 == 4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    if (*a1)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      type metadata accessor for HomeAppIntentError();
      sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v6 = v5;
      v7 = a2[1];
      v20 = *a2;
      v21 = v7;
      v22 = *(a2 + 32);
      sub_252870158(&v19);
      *v6 = v19;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2528C3910;
  v14 = v13 + v12;
  v15 = (v14 + v10[14]);
  v16 = *MEMORY[0x277D16298];
  v17 = sub_2528BFDE0();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  v15[3] = MEMORY[0x277D83B88];
  *v15 = v9;
  v18 = sub_25278E178(v13);
  swift_setDeallocating();
  sub_2527213D8(v14, &qword_27F4FD210, &qword_2528C7D48);
  swift_deallocClassInstance();
  return v18;
}

uint64_t sub_2527EB624(_BYTE *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = 1;
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

LABEL_12:
    result = sub_2527EBA54(a4, a2, a3);
    if (!v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v33 = *(*(v22 - 8) + 72);
      v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2528C17E0;
      v25 = v24 + v23;
      v26 = (v25 + *(v22 + 48));
      v27 = *MEMORY[0x277D16298];
      v28 = sub_2528BFDE0();
      v29 = *(*(v28 - 8) + 104);
      (v29)(v25, v27, v28);
      v26[3] = MEMORY[0x277D83B88];
      *v26 = v7;
      v30 = v25 + v33 + *(v22 + 48);
      v31 = *MEMORY[0x277D161B0];
      v29();
      *(v30 + 24) = MEMORY[0x277D839F8];
      *v30 = a4;
      v32 = sub_25278E178(v24);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v32;
    }

    return result;
  }

  if (*a1)
  {
    if (v6 == 1)
    {
      v7 = 0;
      goto LABEL_12;
    }

LABEL_8:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v10 = v9;
    v11 = *(a3 + 16);
    v35 = *a3;
    v36 = v11;
    v37 = *(a3 + 32);
    sub_252870158(&v34);
    *v10 = v34;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  result = sub_2527EBA54(a4, a2, a3);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
    v14 = *(*v13 + 72);
    v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2528C3910;
    v17 = v16 + v15;
    v18 = v17 + v13[14];
    v19 = *MEMORY[0x277D161B0];
    v20 = sub_2528BFDE0();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    *(v18 + 24) = MEMORY[0x277D839F8];
    *v18 = a4;
    v21 = sub_25278E178(v16);
    swift_setDeallocating();
    sub_2527213D8(v17, &qword_27F4FD210, &qword_2528C7D48);
    swift_deallocClassInstance();
    return v21;
  }

  return result;
}

uint64_t sub_2527EBA54(double a1, uint64_t a2, __int128 *a3)
{
  v35 = a3;
  v4 = sub_2528BFDE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = sub_2528C0700();
  v34 = *(v17 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D161B0], v4);
  sub_2528BF760();
  (*(v5 + 8))(v8, v4);
  v21 = sub_2528C01F0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_2527213D8(v12, &qword_27F4FE8A8, &qword_2528CDF80);
    v23 = sub_2528C0720();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
LABEL_4:
    sub_2527213D8(v16, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v27 = v26;
    v28 = v35[1];
    v36 = *v35;
    v37 = v28;
    v38 = *(v35 + 32);
    sub_252870158(&v39);
    *v27 = v39;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  sub_2528C01E0();
  (*(v22 + 8))(v12, v21);
  v24 = sub_2528C0720();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    goto LABEL_4;
  }

  if ((*(v25 + 88))(v16, v24) != *MEMORY[0x277D16CD0])
  {
    (*(v25 + 8))(v16, v24);
    goto LABEL_5;
  }

  (*(v25 + 96))(v16, v24);
  v30 = v34;
  (*(v34 + 32))(v20, v16, v17);
  sub_2528C06E0();
  if (v31 < a1)
  {
    (*(v30 + 8))(v20, v17);
    goto LABEL_5;
  }

  sub_2528C06F0();
  v33 = v32;
  result = (*(v30 + 8))(v20, v17);
  if (v33 > a1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2527EBF4C(uint64_t a1, __int128 *a2, double a3, double a4)
{
  v91 = a2;
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v87 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v24 = sub_2528C0700();
  v25 = *(v24 - 8);
  v89 = v24;
  v90 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v81 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v69 - v29;
  v30 = *MEMORY[0x277D16180];
  v83 = v8[13];
  v83(v11, v30, v7);
  v86 = a1;
  sub_2528BF760();
  v31 = v8[1];
  v85 = v7;
  v31(v11, v7);
  v32 = sub_2528C01F0();
  v33 = *(v32 - 8);
  v82 = *(v33 + 48);
  if (v82(v17, 1, v32) == 1)
  {
    sub_2527213D8(v17, &qword_27F4FE8A8, &qword_2528CDF80);
    v34 = sub_2528C0720();
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
LABEL_4:
    sub_2527213D8(v23, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v39 = v38;
    v40 = v91[1];
    v92 = *v91;
    v93 = v40;
    v94 = *(v91 + 32);
    sub_252870158(&v96);
    *v39 = v96;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v80 = v31;
  sub_2528C01E0();
  v79 = *(v33 + 8);
  v79(v17, v32);
  v35 = sub_2528C0720();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v78 = v36 + 48;
  v77 = v37;
  if (v37(v23, 1, v35) == 1)
  {
    goto LABEL_4;
  }

  v42 = *(v36 + 88);
  v76 = v36 + 88;
  v75 = v42;
  v43 = v42(v23, v35);
  if (v43 != *MEMORY[0x277D16CD0])
  {
    (*(v36 + 8))(v23, v35);
    goto LABEL_5;
  }

  v95 = v43;
  v73 = v36;
  v44 = *(v36 + 96);
  v74 = v35;
  v72 = v44;
  v44(v23, v35);
  v45 = *(v90 + 32);
  v46 = v88;
  v47 = v23;
  v48 = v89;
  v71 = v90 + 32;
  v70 = v45;
  v45(v88, v47, v89);
  sub_2528C06E0();
  if (v49 < a3 || (sub_2528C06F0(), v50 > a3))
  {
    (*(v90 + 8))(v46, v48);
    goto LABEL_5;
  }

  v51 = v85;
  v83(v11, *MEMORY[0x277D16170], v85);
  v52 = v84;
  sub_2528BF760();
  v80(v11, v51);
  if (v82(v52, 1, v32) == 1)
  {
    sub_2527213D8(v52, &qword_27F4FE8A8, &qword_2528CDF80);
    v53 = v87;
    (*(v73 + 56))(v87, 1, 1, v74);
    v54 = v90;
    v55 = v88;
LABEL_14:
    sub_2527213D8(v53, &qword_27F4FE8A0, &qword_2528CDF78);
    v59 = v89;
LABEL_15:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v61 = v60;
    v62 = v91[1];
    v92 = *v91;
    v93 = v62;
    v94 = *(v91 + 32);
    sub_252870158(&v96);
    *v61 = v96;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v54 + 8))(v55, v59);
  }

  v53 = v87;
  sub_2528C01E0();
  v79(v52, v32);
  v56 = v74;
  v57 = v77(v53, 1, v74);
  v54 = v90;
  v55 = v88;
  v58 = v73;
  if (v57 == 1)
  {
    goto LABEL_14;
  }

  v63 = v75(v53, v56);
  v59 = v89;
  if (v63 != v95)
  {
    (*(v58 + 8))(v53, v56);
    goto LABEL_15;
  }

  v72(v53, v56);
  v64 = v81;
  v70(v81, v53, v59);
  sub_2528C06E0();
  if (v65 < a4)
  {
    (*(v54 + 8))(v64, v59);
    goto LABEL_15;
  }

  sub_2528C06F0();
  v67 = v66;
  v68 = *(v54 + 8);
  v68(v64, v59);
  if (v67 > a4)
  {
    goto LABEL_15;
  }

  return (v68)(v55, v59);
}

uint64_t sub_2527EC834(unsigned __int8 *a1, __int128 *a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        type metadata accessor for HomeAppIntentError();
        sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        v27 = v26;
        v31 = *a2;
        v32 = a2[1];
        v33 = *(a2 + 32);
        sub_252870158(&v34);
        *v27 = v34;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v30 = 0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v13 = *(*(v12 - 8) + 72);
      v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2528C17E0;
      v16 = v15 + v14;
      v17 = v16 + *(v12 + 48);
      v18 = *MEMORY[0x277D16330];
      v19 = sub_2528BFDE0();
      v20 = *(*(v19 - 8) + 104);
      (v20)(v16, v18, v19);
      *(v17 + 24) = MEMORY[0x277D839B0];
      *v17 = 1;
      v21 = (v16 + v13 + *(v12 + 48));
      v22 = *MEMORY[0x277D162C8];
      v20();
      v21[3] = MEMORY[0x277D83B88];
      *v21 = v30;
      v23 = sub_25278E178(v15);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v23;
    }

    v11 = 2;
LABEL_10:
    v30 = v11;
    goto LABEL_11;
  }

  if (v2 >= 2)
  {
    v11 = 1;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528C3910;
  v7 = v6 + v5;
  v8 = *MEMORY[0x277D16330];
  v9 = sub_2528BFDE0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  if (v2)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v10 = sub_2528C1060();
  }

  v28 = v7 + *(v3 + 48);
  *(v28 + 24) = MEMORY[0x277D839B0];
  *v28 = v10 & 1;
  v29 = sub_25278E178(v6);
  swift_setDeallocating();
  sub_2527213D8(v7, &qword_27F4FD210, &qword_2528C7D48);
  swift_deallocClassInstance();
  return v29;
}

unint64_t sub_2527ECC68(unsigned __int8 *a1, double a2, uint64_t a3, uint64_t a4)
{
  v203 = a4;
  v6 = sub_2528BFDE0();
  v201 = *(v6 - 8);
  v202 = v6;
  v7 = *(v201 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v192 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v192 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v192 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v197 = &v192 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v192 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v200 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v192 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v199 = &v192 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v198 = &v192 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v196 = &v192 - v40;
  MEMORY[0x28223BE20](v39);
  v195 = &v192 - v41;
  v42 = sub_2528C0700();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v192 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v58 = *a1;
  if (v58 > 2)
  {
    if (v58 != 3)
    {
      if (v58 == 4)
      {
        goto LABEL_30;
      }

      v81 = &v192 - v54;
      v59 = v53;
      v193 = v51;
      v194 = v55;
      v82 = sub_2528BF920();
      if (v83)
      {
        goto LABEL_30;
      }

      if (v82 == 2)
      {
        v134 = *MEMORY[0x277D16228];
        v136 = v201;
        v135 = v202;
        v137 = *(v201 + 104);
        v137(v9, v134, v202);
        v138 = v197;
        sub_2528BF760();
        (*(v136 + 8))(v9, v135);
        v139 = sub_2528C01F0();
        v140 = *(v139 - 8);
        if ((*(v140 + 48))(v138, 1, v139) == 1)
        {
          sub_2527213D8(v138, &qword_27F4FE8A8, &qword_2528CDF80);
          v141 = sub_2528C0720();
          v142 = v196;
          (*(*(v141 - 8) + 56))(v196, 1, 1, v141);
        }

        else
        {
          v147 = v138;
          v142 = v196;
          sub_2528C01E0();
          (*(v140 + 8))(v147, v139);
          v148 = sub_2528C0720();
          v149 = *(v148 - 8);
          if ((*(v149 + 48))(v142, 1, v148) != 1)
          {
            if ((*(v149 + 88))(v142, v148) != *MEMORY[0x277D16CD0])
            {
              (*(v149 + 8))(v142, v148);
              goto LABEL_30;
            }

            (*(v149 + 96))(v142, v148);
            v164 = v193;
            v163 = v194;
            (*(v194 + 32))(v59, v142, v193);
            sub_2528C06E0();
            if (v165 < a2)
            {
              (*(v163 + 8))(v59, v164);
              goto LABEL_30;
            }

            sub_2528C06F0();
            if (v168 > a2)
            {
              (*(v194 + 8))(v59, v193);
              goto LABEL_30;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
            v180 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
            v181 = *(*v180 + 72);
            v182 = (*(*v180 + 80) + 32) & ~*(*v180 + 80);
            v183 = swift_allocObject();
            *(v183 + 16) = xmmword_2528C3910;
            v184 = v183 + v182;
            v185 = v184 + v180[14];
            v137(v184, v134, v202);
            *(v185 + 24) = MEMORY[0x277D839F8];
            *v185 = a2;
            v106 = sub_25278E178(v183);
            swift_setDeallocating();
            sub_2527213D8(v184, &qword_27F4FD210, &qword_2528C7D48);
LABEL_79:
            swift_deallocClassInstance();
            v162 = v59;
            goto LABEL_60;
          }
        }

        v93 = v142;
        goto LABEL_29;
      }

      if (v82 != 1)
      {
        goto LABEL_30;
      }

      v84 = *MEMORY[0x277D161E8];
      v86 = v201;
      v85 = v202;
      v87 = *(v201 + 104);
      v87(v9, v84, v202);
      sub_2528BF760();
      (*(v86 + 8))(v9, v85);
      v88 = sub_2528C01F0();
      v89 = *(v88 - 8);
      if ((*(v89 + 48))(v27, 1, v88) == 1)
      {
        sub_2527213D8(v27, &qword_27F4FE8A8, &qword_2528CDF80);
        v90 = sub_2528C0720();
        v68 = v195;
        (*(*(v90 - 8) + 56))(v195, 1, 1, v90);
        goto LABEL_28;
      }

      v68 = v195;
      sub_2528C01E0();
      (*(v89 + 8))(v27, v88);
      v125 = sub_2528C0720();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v68, 1, v125) == 1)
      {
        goto LABEL_28;
      }

      if ((*(v126 + 88))(v68, v125) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_54;
      }

      (*(v126 + 96))(v68, v125);
      v145 = v193;
      v144 = v194;
      (*(v194 + 32))(v81, v68, v193);
      sub_2528C06E0();
      if (v146 < a2)
      {
        (*(v144 + 8))(v81, v145);
        goto LABEL_30;
      }

      sub_2528C06F0();
      if (v167 > a2)
      {
        (*(v194 + 8))(v81, v193);
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v174 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v175 = *(*v174 + 72);
      v176 = (*(*v174 + 80) + 32) & ~*(*v174 + 80);
      v177 = swift_allocObject();
      *(v177 + 16) = xmmword_2528C3910;
      v178 = v177 + v176;
      v179 = v178 + v174[14];
      v87(v178, v84, v202);
      *(v179 + 24) = MEMORY[0x277D839F8];
      *v179 = a2;
      v106 = sub_25278E178(v177);
      swift_setDeallocating();
      sub_2527213D8(v178, &qword_27F4FD210, &qword_2528C7D48);
      swift_deallocClassInstance();
      v162 = v81;
LABEL_60:
      (*(v194 + 8))(v162, v193);
      return v106;
    }

    v193 = v51;
    v194 = v55;
    v76 = v201;
    v75 = v202;
    v77 = *(v201 + 104);
    (v77)(v9, *MEMORY[0x277D16228], v202);
    sub_2528BF760();
    (*(v76 + 8))(v9, v75);
    v78 = sub_2528C01F0();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v14, 1, v78) == 1)
    {
      sub_2527213D8(v14, &qword_27F4FE8A8, &qword_2528CDF80);
      v80 = sub_2528C0720();
      v68 = v200;
      (*(*(v80 - 8) + 56))(v200, 1, 1, v80);
      goto LABEL_28;
    }

    v68 = v200;
    sub_2528C01E0();
    (*(v79 + 8))(v14, v78);
    v94 = sub_2528C0720();
    v95 = *(v94 - 8);
    if ((*(v95 + 48))(v68, 1, v94) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v95 + 88))(v68, v94) != *MEMORY[0x277D16CD0])
    {
      (*(v95 + 8))(v68, v94);
      goto LABEL_30;
    }

    (*(v95 + 96))(v68, v94);
    v97 = v193;
    v96 = v194;
    v98 = v46;
    (*(v194 + 32))(v46, v68, v193);
    sub_2528C06E0();
    if (v99 < a2)
    {
      (*(v96 + 8))(v46, v97);
      goto LABEL_30;
    }

    sub_2528C06F0();
    if (v150 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v201 = v151;
    v152 = *(*(v151 - 8) + 72);
    v153 = (*(*(v151 - 8) + 80) + 32) & ~*(*(v151 - 8) + 80);
    v203 = 2 * v152;
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_2528C17D0;
    v155 = v154 + v153;
    v156 = v155 + *(v151 + 48);
    (v77)(v155, *MEMORY[0x277D16330], v202);
    *(v156 + 24) = MEMORY[0x277D839B0];
    *v156 = 1;
    v157 = v155 + v152;
    v158 = v201;
    v159 = (v157 + *(v201 + 48));
    v160 = *MEMORY[0x277D162C8];
    v77();
    v159[3] = MEMORY[0x277D83B88];
    *v159 = 2;
    v161 = v155 + v203 + *(v158 + 48);
    v77();
    *(v161 + 24) = MEMORY[0x277D839F8];
    *v161 = a2;
    v106 = sub_25278E178(v154);
    swift_setDeallocating();
LABEL_59:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v162 = v98;
    goto LABEL_60;
  }

  v193 = v51;
  v194 = v55;
  if (v58 >= 2)
  {
    v200 = v52;
    v70 = v201;
    v69 = v202;
    v71 = *(v201 + 104);
    (v71)(v9, *MEMORY[0x277D161E8], v202);
    sub_2528BF760();
    (*(v70 + 8))(v9, v69);
    v72 = sub_2528C01F0();
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v17, 1, v72) == 1)
    {
      sub_2527213D8(v17, &qword_27F4FE8A8, &qword_2528CDF80);
      v74 = sub_2528C0720();
      (*(*(v74 - 8) + 56))(v34, 1, 1, v74);
LABEL_21:
      v93 = v34;
LABEL_29:
      sub_2527213D8(v93, &qword_27F4FE8A0, &qword_2528CDF78);
      goto LABEL_30;
    }

    sub_2528C01E0();
    (*(v73 + 8))(v17, v72);
    v91 = sub_2528C0720();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v34, 1, v91) == 1)
    {
      goto LABEL_21;
    }

    if ((*(v92 + 88))(v34, v91) != *MEMORY[0x277D16CD0])
    {
      (*(v92 + 8))(v34, v91);
      goto LABEL_30;
    }

    (*(v92 + 96))(v34, v91);
    v112 = v193;
    v111 = v194;
    v98 = v200;
    (*(v194 + 32))(v200, v34, v193);
    sub_2528C06E0();
    if (v113 < a2)
    {
      goto LABEL_47;
    }

    sub_2528C06F0();
    if (v114 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v201 = v115;
    v116 = *(*(v115 - 8) + 72);
    v117 = (*(*(v115 - 8) + 80) + 32) & ~*(*(v115 - 8) + 80);
    v203 = 2 * v116;
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_2528C17D0;
    v119 = v118 + v117;
    v120 = v119 + *(v115 + 48);
    (v71)(v119, *MEMORY[0x277D16330], v202);
    *(v120 + 24) = MEMORY[0x277D839B0];
    *v120 = 1;
    v121 = v201;
    v122 = (v119 + v116 + *(v201 + 48));
    v123 = *MEMORY[0x277D162C8];
    v71();
    v122[3] = MEMORY[0x277D83B88];
    *v122 = 1;
    v124 = v119 + v203 + *(v121 + 48);
    v71();
    *(v124 + 24) = MEMORY[0x277D839F8];
    *v124 = a2;
    v106 = sub_25278E178(v118);
    swift_setDeallocating();
    goto LABEL_59;
  }

  v59 = v57;
  v200 = v56;
  v60 = sub_2528BF920();
  if (v61)
  {
    goto LABEL_30;
  }

  if (v60 == 2)
  {
    v101 = v201;
    v100 = v202;
    v102 = *(v201 + 104);
    LODWORD(v200) = *MEMORY[0x277D16228];
    v102(v9);
    sub_2528BF760();
    (*(v101 + 8))(v9, v100);
    v103 = sub_2528C01F0();
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v20, 1, v103) == 1)
    {
      sub_2527213D8(v20, &qword_27F4FE8A8, &qword_2528CDF80);
      v105 = sub_2528C0720();
      v68 = v199;
      (*(*(v105 - 8) + 56))(v199, 1, 1, v105);
      goto LABEL_28;
    }

    v68 = v199;
    sub_2528C01E0();
    (*(v104 + 8))(v20, v103);
    v125 = sub_2528C0720();
    v126 = *(v125 - 8);
    if ((*(v126 + 48))(v68, 1, v125) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v126 + 88))(v68, v125) != *MEMORY[0x277D16CD0])
    {
      goto LABEL_54;
    }

    (*(v126 + 96))(v68, v125);
    v112 = v193;
    v111 = v194;
    v98 = v59;
    (*(v194 + 32))(v59, v68, v193);
    sub_2528C06E0();
    if (v143 < a2)
    {
      goto LABEL_47;
    }

    sub_2528C06F0();
    if (v166 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v169 = *(*(v203 - 8) + 72);
    v170 = (*(*(v203 - 8) + 80) + 32) & ~*(*(v203 - 8) + 80);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_2528C17E0;
    v172 = v171 + v170;
    (v102)(v172, *MEMORY[0x277D16330], v202);
    if (v58)
    {
      v173 = 1;
    }

    else
    {
      v173 = sub_2528C1060();
    }

    v189 = *(v203 + 48);
    v190 = v172 + v189;
    *(v190 + 24) = MEMORY[0x277D839B0];
    *v190 = v173 & 1;
    v191 = v172 + v169 + v189;
    (v102)();
    *(v191 + 24) = MEMORY[0x277D839F8];
    *v191 = a2;
    v106 = sub_25278E178(v171);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_79;
  }

  if (v60 == 1)
  {
    v63 = v201;
    v62 = v202;
    v64 = *(v201 + 104);
    (v64)(v9, *MEMORY[0x277D161E8], v202);
    sub_2528BF760();
    (*(v63 + 8))(v9, v62);
    v65 = sub_2528C01F0();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v23, 1, v65) == 1)
    {
      sub_2527213D8(v23, &qword_27F4FE8A8, &qword_2528CDF80);
      v67 = sub_2528C0720();
      v68 = v198;
      (*(*(v67 - 8) + 56))(v198, 1, 1, v67);
LABEL_28:
      v93 = v68;
      goto LABEL_29;
    }

    v68 = v198;
    sub_2528C01E0();
    (*(v66 + 8))(v23, v65);
    v125 = sub_2528C0720();
    v126 = *(v125 - 8);
    if ((*(v126 + 48))(v68, 1, v125) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v126 + 88))(v68, v125) == *MEMORY[0x277D16CD0])
    {
      (*(v126 + 96))(v68, v125);
      v112 = v193;
      v111 = v194;
      v98 = v200;
      (*(v194 + 32))(v200, v68, v193);
      sub_2528C06E0();
      if (v127 >= a2)
      {
        sub_2528C06F0();
        if (v128 <= a2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
          v129 = *(*(v203 - 8) + 72);
          v130 = (*(*(v203 - 8) + 80) + 32) & ~*(*(v203 - 8) + 80);
          v131 = swift_allocObject();
          *(v131 + 16) = xmmword_2528C17E0;
          v132 = v131 + v130;
          (v64)(v132, *MEMORY[0x277D16330], v202);
          if (v58)
          {
            v133 = 1;
          }

          else
          {
            v133 = sub_2528C1060();
          }

          v186 = *(v203 + 48);
          v187 = v132 + v186;
          *(v187 + 24) = MEMORY[0x277D839B0];
          *v187 = v133 & 1;
          v188 = v132 + v129 + v186;
          v64();
          *(v188 + 24) = MEMORY[0x277D839F8];
          *v188 = a2;
          v106 = sub_25278E178(v131);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v162 = v200;
          goto LABEL_60;
        }

LABEL_65:
        (*(v194 + 8))(v98, v193);
        goto LABEL_30;
      }

LABEL_47:
      (*(v111 + 8))(v98, v112);
      goto LABEL_30;
    }

LABEL_54:
    (*(v126 + 8))(v68, v125);
  }

LABEL_30:
  v106 = type metadata accessor for HomeAppIntentError();
  sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
  swift_allocError();
  v108 = v107;
  v109 = *(v203 + 16);
  v205 = *v203;
  v206 = v109;
  v207 = *(v203 + 32);
  sub_252870158(&v204);
  *v108 = v204;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v106;
}

uint64_t sub_2527EE7E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *a1;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      result = sub_2527EEE64(a2, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v20 = *(*(v19 - 8) + 72);
      v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2528C35E0;
      v23 = v22 + v21;
      v24 = v23 + *(v19 + 48);
      v25 = *MEMORY[0x277D16330];
      v26 = sub_2528BFDE0();
      v27 = *(*(v26 - 8) + 104);
      (v27)(v23, v25, v26);
      *(v24 + 24) = MEMORY[0x277D839B0];
      *v24 = 1;
      v28 = (v23 + v20 + *(v19 + 48));
      v29 = *MEMORY[0x277D162C8];
      v27();
      v28[3] = MEMORY[0x277D83B88];
      *v28 = 0;
      v30 = v23 + 2 * v20 + *(v19 + 48);
      v31 = *MEMORY[0x277D161E8];
      v27();
      *(v30 + 24) = MEMORY[0x277D839F8];
      *v30 = a4;
      v32 = v23 + 3 * v20 + *(v19 + 48);
      v33 = *MEMORY[0x277D16228];
      v27();
      *(v32 + 24) = MEMORY[0x277D839F8];
      *v32 = a5;
      v34 = sub_25278E178(v22);
      swift_setDeallocating();
    }

    else
    {
      result = sub_2527EEE64(a2, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v39 = *(*(v38 - 8) + 72);
      v40 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_2528C17E0;
      v42 = v41 + v40;
      v43 = v42 + *(v38 + 48);
      v44 = *MEMORY[0x277D161E8];
      v45 = sub_2528BFDE0();
      v46 = *(*(v45 - 8) + 104);
      (v46)(v42, v44, v45);
      v47 = MEMORY[0x277D839F8];
      *(v43 + 24) = MEMORY[0x277D839F8];
      *v43 = a4;
      v48 = v42 + v39 + *(v38 + 48);
      v49 = *MEMORY[0x277D16228];
      v46();
      *(v48 + 24) = v47;
      *v48 = a5;
      v34 = sub_25278E178(v41);
      swift_setDeallocating();
    }

LABEL_15:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v34;
  }

  if (v8 >= 2)
  {
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v37 = v36;
    v57 = *a3;
    v58 = *(a3 + 16);
    v59 = *(a3 + 32);
    sub_252870158(&v60);
    *v37 = v60;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  result = sub_2527EEE64(a2, a3, a4, a5);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2528C17D0;
    v14 = v13 + v12;
    v15 = *MEMORY[0x277D16330];
    v16 = sub_2528BFDE0();
    v17 = *(*(v16 - 8) + 104);
    (v17)(v13 + v12, v15, v16);
    if (v8)
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v18 = sub_2528C1060();
    }

    v50 = *(v10 + 48);
    v51 = v14 + v50;
    *(v51 + 24) = MEMORY[0x277D839B0];
    *v51 = v18 & 1;
    v52 = v14 + v11 + v50;
    v53 = *MEMORY[0x277D161E8];
    v17();
    v54 = MEMORY[0x277D839F8];
    *(v52 + 24) = MEMORY[0x277D839F8];
    *v52 = a4;
    v55 = v14 + 2 * v11 + *(v10 + 48);
    v56 = *MEMORY[0x277D16228];
    v17();
    *(v55 + 24) = v54;
    *v55 = a5;
    v34 = sub_25278E178(v13);
    swift_setDeallocating();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_2527EEE64(uint64_t a1, __int128 *a2, double a3, double a4)
{
  v94 = a2;
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v90 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = sub_2528C0700();
  v25 = *(v24 - 8);
  v92 = v24;
  v93 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v91 = &v72 - v29;
  v30 = *MEMORY[0x277D161E8];
  v86 = v8[13];
  v86(v11, v30, v7);
  v89 = a1;
  sub_2528BF760();
  v31 = v8[1];
  v88 = v7;
  v31(v11, v7);
  v32 = sub_2528C01F0();
  v33 = *(v32 - 8);
  v85 = *(v33 + 48);
  if (v85(v17, 1, v32) == 1)
  {
    sub_2527213D8(v17, &qword_27F4FE8A8, &qword_2528CDF80);
    v34 = sub_2528C0720();
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
LABEL_4:
    sub_2527213D8(v23, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v39 = v38;
    v40 = v94[1];
    v95 = *v94;
    v96 = v40;
    v97 = *(v94 + 32);
    sub_252870158(&v99);
    *v39 = v99;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v83 = v31;
  sub_2528C01E0();
  v82 = *(v33 + 8);
  v82(v17, v32);
  v35 = sub_2528C0720();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v81 = v36 + 48;
  v80 = v37;
  if (v37(v23, 1, v35) == 1)
  {
    goto LABEL_4;
  }

  v42 = *(v36 + 88);
  v79 = v36 + 88;
  v78 = v42;
  v43 = v42(v23, v35);
  if (v43 != *MEMORY[0x277D16CD0])
  {
    (*(v36 + 8))(v23, v35);
    goto LABEL_5;
  }

  v98 = v43;
  v76 = v36;
  v44 = *(v36 + 96);
  v77 = v35;
  v75 = v44;
  v44(v23, v35);
  v45 = *(v93 + 32);
  v46 = v91;
  v47 = v23;
  v48 = v92;
  v74 = v93 + 32;
  v73 = v45;
  v45(v91, v47, v92);
  sub_2528C06E0();
  if (v49 < a3 || (sub_2528C06F0(), v50 > a3))
  {
    (*(v93 + 8))(v46, v48);
    goto LABEL_5;
  }

  v51 = v88;
  v86(v11, *MEMORY[0x277D16228], v88);
  v52 = v87;
  sub_2528BF760();
  v83(v11, v51);
  if (v85(v52, 1, v32) == 1)
  {
    sub_2527213D8(v52, &qword_27F4FE8A8, &qword_2528CDF80);
    v53 = v90;
    (*(v76 + 56))(v90, 1, 1, v77);
    v54 = v93;
    v55 = v91;
LABEL_14:
    sub_2527213D8(v53, &qword_27F4FE8A0, &qword_2528CDF78);
    v59 = v92;
LABEL_15:
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v61 = v60;
    v62 = v94[1];
    v95 = *v94;
    v96 = v62;
    v97 = *(v94 + 32);
    sub_252870158(&v99);
    *v61 = v99;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v54 + 8))(v55, v59);
  }

  v53 = v90;
  sub_2528C01E0();
  v82(v52, v32);
  v56 = v77;
  v57 = v80(v53, 1, v77);
  v54 = v93;
  v55 = v91;
  v58 = v76;
  if (v57 == 1)
  {
    goto LABEL_14;
  }

  v63 = v78(v53, v56);
  v59 = v92;
  if (v63 != v98)
  {
    (*(v58 + 8))(v53, v56);
    goto LABEL_15;
  }

  v75(v53, v56);
  v64 = v84;
  v73(v84, v53, v59);
  sub_2528C06E0();
  if (v65 < a4 || (sub_2528C06F0(), v66 > a4))
  {
    (*(v54 + 8))(v64, v59);
    goto LABEL_15;
  }

  if (a3 <= a4)
  {
    v71 = *(v54 + 8);
    v71(v64, v59);
    return (v71)(v55, v59);
  }

  else
  {
    type metadata accessor for HomeAppIntentError();
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v68 = v67;
    v69 = v94[1];
    v95 = *v94;
    v96 = v69;
    v97 = *(v94 + 32);
    sub_252870158(&v99);
    *v68 = v99;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v70 = *(v54 + 8);
    v70(v64, v59);
    return (v70)(v55, v59);
  }
}

uint64_t sub_2527EF818(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v78 = a6;
  v79 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v86 = &v72 - v16;
  v17 = sub_2528BFB20();
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v72 - v22;
  v23 = sub_2528BECF0();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = *(v90 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - v27;
  v77 = sub_2528BF9D0();
  v29 = *(v77 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v77);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = (&v72 - v34);

  v36 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *a1;
  v74 = a3;
  sub_25278BC2C(a3, a2, isUniquelyReferenced_nonNull_native);
  v38 = v93;
  v83 = a1;
  *a1 = v93;
  v75 = a4;
  v39 = sub_2528BF370();
  sub_252819FA8(v28);
  if (*(v39 + 16) && (v40 = sub_252785C40(v28), (v41 & 1) != 0))
  {
    v42 = v77;
    (*(v29 + 16))(v33, *(v39 + 56) + *(v29 + 72) * v40, v77);
    v81 = *(v90 + 8);
    v81(v28, v91);

    v43 = v42;
    (*(v29 + 32))(v35, v33, v42);
    v80 = a2;
    v44 = a2[2];
    sub_2528BE6B0();
    v45 = v92;
    LOWORD(v93) = v92;
    v46 = v75;
    v47 = v76;
    sub_2527F005C(v35, &v93, v75, v76);
    v93 = sub_25278D51C(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v93);
    *(&v72 - 6) = v47;
    *(&v72 - 5) = v46;
    v49 = v78;
    v48 = v79;
    *(&v72 - 4) = &v93;
    *(&v72 - 3) = v49;
    *(&v72 - 8) = v45;
    *(&v72 - 1) = v35;
    v50 = v89;
    sub_2527E5018(sub_2527F2754, (&v72 - 8), v48);
    v51 = v93;
    sub_2527213D8(v47, &qword_27F4FD670, &qword_2528D3570);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v38;
    sub_2527F277C(v51, sub_2527F2690, 0, v52, &v93);
    if (v50)
    {

      __break(1u);
      return result;
    }

    v53 = v93;
    (*(v29 + 8))(v35, v43);
    v54 = v84;
    *v83 = v53;
    v55 = v88;
    v56 = v80;
  }

  else
  {

    v81 = *(v90 + 8);
    v81(v28, v91);
    v56 = a2;
    v55 = v88;
    v54 = v84;
  }

  sub_25272006C(v85, v54, &qword_27F4FCDB8, &unk_2528C5CC0);
  v57 = sub_2528C00D0();
  v58 = *(v57 - 8);
  v59 = (*(v58 + 48))(v54, 1, v57);
  v60 = v87;
  if (v59 == 1)
  {
    sub_2527213D8(v54, &qword_27F4FCDB8, &unk_2528C5CC0);
    v61 = v86;
    (*(v60 + 56))(v86, 1, 1, v55);
    return sub_2527213D8(v61, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  v62 = v82;
  v80 = v56;
  sub_252819FA8(v82);
  v63 = v86;
  sub_2528C0080();
  v81(v62, v91);
  v64 = v57;
  v61 = v63;
  (*(v58 + 8))(v54, v64);
  if ((*(v60 + 48))(v63, 1, v55) == 1)
  {
    return sub_2527213D8(v61, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  v66 = v73;
  v67 = (*(v60 + 32))(v73, v61, v55);
  MEMORY[0x28223BE20](v67);
  *(&v72 - 2) = v66;
  v68 = sub_252853334(sub_2527F2738, (&v72 - 4), v74);
  v69 = v83;
  v70 = *v83;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v69;
  sub_25278BC2C(v68, v80, v71);
  *v69 = v93;
  return (*(v60 + 8))(v66, v55);
}

void *sub_2527EFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = sub_25284D314(a2);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2528C3910;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
    *(v10 + 48) = v6;
    *(v10 + 56) = v7;
    *(v10 + 64) = v8;
    sub_252760C18(v4, v5, v6, v7, v8);
    result = v10;
  }

  *a3 = result;
  return result;
}

uint64_t sub_2527F005C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v120 = a3;
  v121 = a1;
  v122 = a4;
  v110 = sub_2528BFC70();
  v109 = *(v110 - 8);
  v5 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v106 - v10;
  v11 = sub_2528BF240();
  v118 = *(v11 - 8);
  v119 = v11;
  v12 = *(v118 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v106 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v106 - v24;
  v126 = sub_2528BF9D0();
  v124 = *(v126 - 8);
  v26 = *(v124 + 64);
  v27 = MEMORY[0x28223BE20](v126);
  v107 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v113 = &v106 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v111 = &v106 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v106 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v106 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v117 = &v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v106 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v106 - v45;
  v123 = sub_2528BECF0();
  v125 = *(v123 - 8);
  v47 = *(v125 + 64);
  v48 = MEMORY[0x28223BE20](v123);
  v116 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v106 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v106 - v53;
  v55 = *a2;
  LOWORD(v129) = v55;
  LOWORD(v127) = 24073;
  if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v129, &v127) & 1) != 0 || (LOWORD(v129) = v55, LOWORD(v127) = 24087, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v129, &v127)))
  {
    sub_2528BF440();
    v56 = v125;
    v57 = v123;
    if ((*(v125 + 48))(v46, 1, v123) == 1)
    {
      sub_2527213D8(v46, &qword_27F4FC628, &qword_2528C4750);
LABEL_15:
      v64 = 1;
      v65 = v122;
      v66 = v126;
LABEL_16:
      v59 = v124;
      return (*(v59 + 56))(v65, v64, 1, v66);
    }

    (*(v56 + 32))(v54, v46, v57);
    v58 = sub_2528BF370();
    v59 = v124;
    if (*(v58 + 16))
    {
      v60 = sub_252785C40(v54);
      if (v61)
      {
        v62 = v126;
        (*(v59 + 16))(v35, *(v58 + 56) + *(v59 + 72) * v60, v126);

        v121 = *(v59 + 32);
        v121(v37, v35, v62);
        sub_2528BF460();
        (*(v118 + 104))(v23, *MEMORY[0x277D15868], v119);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v129 == v127 && v130 == v128)
        {
          v63 = 1;
        }

        else
        {
          v63 = sub_2528C1060();
        }

        v79 = *(v118 + 8);
        v80 = v23;
        v81 = v119;
        v79(v80, v119);
        v79(v25, v81);
        (*(v125 + 8))(v54, v123);

        if (v63)
        {
          v82 = v122;
          v83 = v126;
          v121(v122, v37, v126);
LABEL_25:
          v66 = v83;
          v65 = v82;
          v64 = 0;
          goto LABEL_16;
        }

        v59 = v124;
        v84 = v126;
        (*(v124 + 8))(v37, v126);
        v66 = v84;
LABEL_27:
        v64 = 1;
        v65 = v122;
        return (*(v59 + 56))(v65, v64, 1, v66);
      }
    }

    (*(v56 + 8))(v54, v57);
    goto LABEL_11;
  }

  LOWORD(v129) = v55;
  LOWORD(v127) = 24089;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v129, &v127) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2528BF660();
  v67 = v125;
  v68 = *(v125 + 48);
  v69 = v123;
  if (v68(v44, 1, v123) == 1)
  {
    sub_2527213D8(v44, &qword_27F4FC628, &qword_2528C4750);
    v59 = v124;
    v70 = v69;
    v71 = v67;
    goto LABEL_30;
  }

  (*(v67 + 32))(v52, v44, v69);
  v73 = sub_2528BF390();
  v70 = v69;
  if (!*(v73 + 16) || (v74 = sub_252785C40(v52), (v75 & 1) == 0))
  {

    (*(v125 + 8))(v52, v69);
    v59 = v124;
    v78 = v115;
    (*(v124 + 56))(v115, 1, 1, v126);
    goto LABEL_29;
  }

  v76 = v109;
  v77 = v110;
  (*(v109 + 16))(v7, *(v73 + 56) + *(v109 + 72) * v74, v110);

  v78 = v115;
  sub_2528BFBE0();
  (*(v76 + 8))(v7, v77);
  v59 = v124;
  if ((*(v124 + 48))(v78, 1, v126) == 1)
  {
    (*(v125 + 8))(v52, v70);
LABEL_29:
    sub_2527213D8(v78, &qword_27F4FD670, &qword_2528D3570);
    v71 = v125;
    goto LABEL_30;
  }

  v115 = *(v59 + 32);
  (v115)(v111, v78, v126);
  sub_2528BF460();
  v95 = v106;
  (*(v118 + 104))(v106, *MEMORY[0x277D15770], v119);
  sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
  sub_2528C0AD0();
  sub_2528C0AD0();
  if (v129 == v127 && v130 == v128)
  {
    v96 = 1;
  }

  else
  {
    v96 = sub_2528C1060();
  }

  v103 = *(v118 + 8);
  v104 = v95;
  v105 = v119;
  v103(v104, v119);
  v103(v112, v105);
  v70 = v123;
  (*(v125 + 8))(v52, v123);

  if (v96)
  {
    v82 = v122;
    v83 = v126;
    (v115)(v122, v111, v126);
    goto LABEL_25;
  }

  v59 = v124;
  (*(v124 + 8))(v111, v126);
  v71 = v125;
LABEL_30:
  v85 = v117;
  sub_2528BF440();
  if (v68(v85, 1, v70) == 1)
  {
    sub_2527213D8(v85, &qword_27F4FC628, &qword_2528C4750);
  }

  else
  {
    v86 = v116;
    (*(v71 + 32))(v116, v85, v70);
    v87 = sub_2528BF370();
    if (*(v87 + 16))
    {
      v88 = sub_252785C40(v86);
      if (v89)
      {
        v90 = v107;
        v91 = v126;
        (*(v59 + 16))(v107, *(v87 + 56) + *(v59 + 72) * v88, v126);

        v92 = *(v59 + 32);
        v92(v113, v90, v91);
        sub_2528BF460();
        v93 = v108;
        (*(v118 + 104))(v108, *MEMORY[0x277D15770], v119);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v129 == v127 && v130 == v128)
        {
          v94 = 1;
        }

        else
        {
          v94 = sub_2528C1060();
        }

        v97 = *(v118 + 8);
        v98 = v93;
        v99 = v119;
        v97(v98, v119);
        v97(v114, v99);
        (*(v125 + 8))(v116, v123);

        if (v94)
        {
          v100 = v122;
          v101 = v126;
          v92(v122, v113, v126);
          v66 = v101;
          v65 = v100;
          v64 = 0;
          return (*(v59 + 56))(v65, v64, 1, v66);
        }

        v102 = v126;
        (*(v59 + 8))(v113, v126);
        v66 = v102;
        goto LABEL_27;
      }
    }

    (*(v71 + 8))(v86, v70);
  }

LABEL_11:
  v64 = 1;
  v65 = v122;
  v66 = v126;
  return (*(v59 + 56))(v65, v64, 1, v66);
}

uint64_t sub_2527F0E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v50 = a4;
  v47 = a3;
  v48 = a2;
  v49 = sub_2528BF400();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF9D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for DeviceEntity();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v45 = *(a1 + 8);
  v46 = v23;
  v24 = *(a1 + 16);
  v43 = *(a1 + 24);
  v44 = v24;
  v25 = *(a1 + 32);
  (*(v10 + 16))(v13, v48, v9);
  (*(v5 + 16))(v8, v50, v49);
  DeviceEntity.init(staticService:snapshot:)(v13, v8, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_2527213D8(v17, &qword_27F4FD668, &qword_2528C8900);
  }

  sub_25279F090(v17, v22);
  v27 = v47;
  v28 = *v47;
  v29 = v22;
  if (*(*v47 + 16))
  {
    v30 = sub_252785BD4(v22);
    v32 = v45;
    v31 = v46;
    v34 = v43;
    v33 = v44;
    if (v35)
    {
      v36 = *(*(v28 + 56) + 8 * v30);
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
    v32 = v45;
    v31 = v46;
    v34 = v43;
    v33 = v44;
  }

  sub_252760C18(v31, v32, v33, v34, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_252737E74(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_252737E74((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[40 * v38];
  *(v39 + 4) = v31;
  *(v39 + 5) = v32;
  *(v39 + 6) = v33;
  *(v39 + 7) = v34;
  v39[64] = v25;
  v40 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v27;
  sub_25278BC2C(v36, v29, isUniquelyReferenced_nonNull_native);
  *v27 = v51;
  return sub_25272E840(v29);
}

uint64_t sub_2527F1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7)
{
  v162 = a7;
  v164 = a6;
  v190 = a5;
  v182 = a4;
  v183 = a3;
  v163 = a2;
  v169 = a1;
  v181 = sub_2528BF400();
  v161 = *(v181 - 1);
  v7 = *(v161 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v171 = &v159 - v14;
  v179 = type metadata accessor for DeviceEntity();
  v160 = *(v179 - 1);
  v15 = *(v160 + 64);
  v16 = MEMORY[0x28223BE20](v179);
  v18 = (&v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v170 = (&v159 - v19);
  v177 = sub_2528BF240();
  v159 = *(v177 - 8);
  v20 = *(v159 + 64);
  v21 = MEMORY[0x28223BE20](v177);
  v174 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v159 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v176 = &v159 - v26;
  MEMORY[0x28223BE20](v25);
  v175 = &v159 - v27;
  v28 = sub_2528BECF0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v166 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v159 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v159 - v40;
  v42 = sub_2528BF9D0();
  v184 = *(v42 - 8);
  v185 = v42;
  v43 = *(v184 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v167 = &v159 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v50 = MEMORY[0x28223BE20](v49);
  v178 = &v159 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v165 = &v159 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v159 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v168 = &v159 - v58;
  result = MEMORY[0x28223BE20](v57);
  v173 = *v169;
  v62 = *(v169 + 32) >> 1;
  if (v62 == 50)
  {
    v177 = v18;
    v190 = v13;
    LOWORD(v186) = v164;
    LOWORD(v189) = 25;
    result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v186, &v189);
    if ((result & 1) == 0)
    {
      return result;
    }

    v69 = sub_2528BF740();
    v70 = *(v69 + 16);
    if (!v70)
    {
    }

    v71 = v185;
    v72 = *(v184 + 16);
    v73 = *(v184 + 80);
    v172 = v69;
    v74 = v69 + ((v73 + 32) & ~v73);
    v175 = *(v184 + 72);
    v176 = v72;
    v174 = (v161 + 16);
    v75 = (v160 + 48);
    v76 = (v184 + 8);
    v184 += 16;
    do
    {
      v77 = v176;
      (v176)(v46, v74, v71);
      v78 = v178;
      (v77)(v178, v46, v71);
      v79 = v180;
      (*v174)(v180, v183, v181);
      v80 = v79;
      v81 = v190;
      DeviceEntity.init(staticService:snapshot:)(v78, v80, v190);
      if ((*v75)(v81, 1, v179) == 1)
      {
        (*v76)(v46, v71);
        sub_2527213D8(v81, &qword_27F4FD668, &qword_2528C8900);
      }

      else
      {
        v82 = v177;
        sub_25279F090(v81, v177);
        v83 = *v182;
        if (*(*v182 + 16) && (v84 = sub_252785BD4(v82), (v85 & 1) != 0))
        {
          v86 = *(*(v83 + 56) + 8 * v84);
        }

        else
        {
          v86 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_252737E74(0, *(v86 + 2) + 1, 1, v86);
        }

        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        if (v88 >= v87 >> 1)
        {
          v86 = sub_252737E74((v87 > 1), v88 + 1, 1, v86);
        }

        *(v86 + 2) = v88 + 1;
        v89 = &v86[40 * v88];
        *(v89 + 4) = v173;
        *(v89 + 5) = 0;
        *(v89 + 6) = 0;
        *(v89 + 7) = 0;
        v89[64] = 100;
        v90 = v182;
        v91 = *v182;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v186 = *v90;
        *v90 = 0x8000000000000000;
        v93 = v86;
        v94 = v177;
        sub_25278BC2C(v93, v177, isUniquelyReferenced_nonNull_native);
        *v90 = v186;
        sub_25272E840(v94);
        v71 = v185;
        (*v76)(v46, v185);
      }

      v74 += v175;
      --v70;
    }

    while (v70);
  }

  if (v62 != 44)
  {
    return result;
  }

  v63 = (v184 + 48);
  if ((v173 & 1) == 0)
  {
    v173 = v61;
    sub_25272006C(v163, v39, &qword_27F4FD670, &qword_2528D3570);
    v101 = v185;
    if ((*v63)(v39, 1, v185) == 1)
    {
      return sub_2527213D8(v39, &qword_27F4FD670, &qword_2528D3570);
    }

    (*(v184 + 32))(v173, v39, v101);
    result = sub_2528BF740();
    v105 = result;
    v106 = v167;
    v176 = *(result + 16);
    if (!v176)
    {
LABEL_66:

      v186 = 0u;
      v187 = 0u;
      v188 = 88;
      v144 = v173;
      sub_2527F0E44(&v186, v173, v182, v183);
      return (*(v184 + 8))(v144, v101);
    }

    v107 = 0;
    v180 = (v184 + 16);
    LODWORD(v179) = *MEMORY[0x277D15850];
    v178 = (v159 + 104);
    v108 = (v159 + 8);
    v175 = v29 + 8;
    v181 = (v184 + 8);
    v171 = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      if (v107 >= *(v105 + 16))
      {
        goto LABEL_86;
      }

      (*(v184 + 16))(v106, v105 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v107, v101);
      sub_2528BF460();
      (*v178)(v174, v179, v177);
      sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v186 == v189)
      {
        v109 = *v108;
        v110 = v177;
        (*v108)(v174, v177);
        v109(v172, v110);
      }

      else
      {
        v111 = sub_2528C1060();
        v112 = *v108;
        v113 = v177;
        (*v108)(v174, v177);
        v112(v172, v113);

        if ((v111 & 1) == 0)
        {

          v117 = *v181;
          v158 = v185;
          (*v181)(v167, v185);
          v118 = v158;
          return (v117)(v173, v118);
        }
      }

      v114 = v166;
      v106 = v167;
      sub_2528BF900();
      v115 = sub_25277B310(v114, v190);
      (*v175)(v114, v28);
      if (v115)
      {
        result = (*v181)(v106, v185);
      }

      else
      {
        v116 = sub_2528BF970();
        v117 = *v181;
        result = (*v181)(v106, v185);
        if (v116 == 2 || (v116 & 1) != 0)
        {

          v118 = v185;
          return (v117)(v173, v118);
        }
      }

      ++v107;
      v101 = v185;
      if (v176 == v107)
      {
        goto LABEL_66;
      }
    }
  }

  v174 = &v159 - v60;
  sub_25272006C(v163, v41, &qword_27F4FD670, &qword_2528D3570);
  v64 = v185;
  if ((*v63)(v41, 1, v185) != 1)
  {
    v102 = v184;
    v103 = v174;
    (*(v184 + 32))(v174, v41, v64);
    v186 = 1uLL;
    v187 = 0uLL;
    v188 = 88;
    sub_2527F0E44(&v186, v103, v182, v183);
    v104 = sub_2528BF970();
    if (v104 == 2)
    {
      return (*(v102 + 8))(v103, v64);
    }

    if (v104)
    {
      return (*(v184 + 8))(v174, v64);
    }

    v145 = sub_2528BF740();
    v180 = *(v145 + 16);
    if (v180)
    {
      v146 = 0;
      v147 = *(v184 + 16);
      v178 = (v145 + ((*(v184 + 80) + 32) & ~*(v184 + 80)));
      v179 = v147;
      v148 = *(v190 + 2);
      v149 = *(v184 + 72);
      v176 = v145;
      v177 = v149;
      v150 = (v29 + 8);
      v184 += 16;
      v181 = (v184 - 8);
      (v147)(v168, v178, v185);
      while (1)
      {
        sub_2528BF900();
        v153 = 0;
        do
        {
          if (v148 == v153)
          {
            (*v150)(v34, v28);
            v186 = 0u;
            v187 = 0u;
            v188 = 88;
            v151 = v168;
            sub_2527F0E44(&v186, v168, v182, v183);
            v152 = *v181;
            (*v181)(v151, v185);
            goto LABEL_74;
          }

          v154 = v153 + 1;
          v155 = &v190[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v153];
          sub_2527F2A94(&qword_27F4FC680, MEMORY[0x277CC95F0]);
          v156 = sub_2528C0930();
          v153 = v154;
        }

        while ((v156 & 1) == 0);
        (*v150)(v34, v28);
        v152 = *v181;
        (*v181)(v168, v185);
LABEL_74:
        if (++v146 == v180)
        {
          break;
        }

        v179(v168, &v178[v177 * v146], v185);
      }

      v157 = v185;
    }

    else
    {

      v152 = *(v184 + 8);
      v157 = v64;
    }

    return (v152)(v174, v157);
  }

  sub_2527213D8(v41, &qword_27F4FD670, &qword_2528D3570);
  LOWORD(v186) = v164;
  LOWORD(v189) = 9;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v186, &v189) & 1) == 0)
  {
    LOWORD(v186) = v164;
    LOWORD(v189) = 23;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v186, &v189) & 1) == 0)
    {
      LOWORD(v186) = v164;
      LOWORD(v189) = 25;
      result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v186, &v189);
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  result = sub_2528BF740();
  v190 = result;
  v65 = v185;
  v174 = *(result + 16);
  if (!v174)
  {
LABEL_52:

    v119 = sub_2528BF740();
    v120 = *(v119 + 16);
    if (v120)
    {
      v190 = *(v184 + 16);
      v121 = *(v184 + 80);
      v175 = v119;
      v122 = v119 + ((v121 + 32) & ~v121);
      v177 = *(v184 + 72);
      v176 = (v161 + 16);
      v123 = (v160 + 48);
      v184 += 16;
      v124 = (v184 - 8);
      v125 = v165;
      do
      {
        v126 = v190;
        (v190)(v125, v122, v65);
        v127 = v178;
        v126(v178, v125, v65);
        v128 = v180;
        (*v176)(v180, v183, v181);
        v129 = v127;
        v130 = v171;
        DeviceEntity.init(staticService:snapshot:)(v129, v128, v171);
        if ((*v123)(v130, 1, v179) == 1)
        {
          (*v124)(v125, v65);
          sub_2527213D8(v130, &qword_27F4FD668, &qword_2528C8900);
        }

        else
        {
          v131 = v170;
          sub_25279F090(v130, v170);
          v132 = *v182;
          if (*(*v182 + 16) && (v133 = sub_252785BD4(v131), (v134 & 1) != 0))
          {
            v135 = *(*(v132 + 56) + 8 * v133);
          }

          else
          {
            v135 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_252737E74(0, *(v135 + 2) + 1, 1, v135);
          }

          v137 = *(v135 + 2);
          v136 = *(v135 + 3);
          if (v137 >= v136 >> 1)
          {
            v135 = sub_252737E74((v136 > 1), v137 + 1, 1, v135);
          }

          *(v135 + 2) = v137 + 1;
          v138 = &v135[40 * v137];
          *(v138 + 4) = 1;
          *(v138 + 5) = 0;
          *(v138 + 6) = 0;
          *(v138 + 7) = 0;
          v138[64] = 88;
          v139 = v182;
          v140 = *v182;
          v141 = swift_isUniquelyReferenced_nonNull_native();
          *&v186 = *v139;
          *v139 = 0x8000000000000000;
          v142 = v135;
          v143 = v170;
          sub_25278BC2C(v142, v170, v141);
          *v139 = v186;
          sub_25272E840(v143);
          v125 = v165;
          v65 = v185;
          (*v124)(v165, v185);
        }

        v122 += v177;
        --v120;
      }

      while (v120);
    }
  }

  v66 = 0;
  v173 = &v190[(*(v184 + 80) + 32) & ~*(v184 + 80)];
  v172 = (v184 + 16);
  LODWORD(v169) = *MEMORY[0x277D15850];
  v168 = (v159 + 104);
  v67 = (v159 + 8);
  v68 = (v184 + 8);
  while (v66 < *(v190 + 2))
  {
    (*(v184 + 16))(v56, v173 + *(v184 + 72) * v66, v65);
    sub_2528BF460();
    (*v168)(v176, v169, v177);
    sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0]);
    sub_2528C0AD0();
    sub_2528C0AD0();
    if (v186 == v189)
    {
      v95 = *v67;
      v96 = v177;
      (*v67)(v176, v177);
      v95(v175, v96);
    }

    else
    {
      v97 = sub_2528C1060();
      v98 = *v67;
      v99 = v177;
      (*v67)(v176, v177);
      v98(v175, v99);

      if ((v97 & 1) == 0)
      {
        v65 = v185;
        result = (*v68)(v56, v185);
        goto LABEL_26;
      }
    }

    v100 = sub_2528BF970();
    v65 = v185;
    result = (*v68)(v56, v185);
    if (v100 != 2 && (v100 & 1) != 0)
    {
    }

LABEL_26:
    if (v174 == ++v66)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_2527F2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10) + 48);
  v6 = *(a1 + v4);
  sub_25272E7DC(a1, a2);
  *(a2 + v5) = v6;
}

uint64_t sub_2527F277C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42[0] = type metadata accessor for DeviceEntity();
  v43 = *(v42[0] - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v42[0]);
  v12 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE928, &qword_2528CE208);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v42 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v42[3] = a1;
  v42[4] = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v42[5] = v18;
  v42[6] = 0;
  v42[7] = v21 & v19;
  v42[8] = a2;
  v42[9] = a3;

  v42[1] = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E367C(v16);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10);
    if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
    {
      sub_25279F400();
    }

    v25 = *(v24 + 48);
    sub_25279F090(v16, v12);
    v26 = *&v16[v25];
    v27 = *a5;
    v29 = sub_252785BD4(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v37 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_2527E12F8();
        v37 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_25272E840(v12);
      v22 = v37[7];
      v23 = *(v22 + 8 * v29);
      *(v22 + 8 * v29) = v26;

      a4 = 1;
    }

    else
    {
      sub_2527DE0A0(v32, a4 & 1);
      v34 = *a5;
      v35 = sub_252785BD4(v12);
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_21;
      }

      v29 = v35;
      v37 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v37[(v29 >> 6) + 8] |= 1 << v29;
      sub_25279F090(v12, v37[6] + *(v43 + 72) * v29);
      *(v37[7] + 8 * v29) = v26;
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v37[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_2527F2A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527F2AF4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = sub_2527F2CE4(a1, a2);
  if (!v4)
  {
    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
      v11 = sub_2528C07B0();
      v12 = *(v11 - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C3910;
      sub_2528C0790();
      (*(v12 + 104))(v2 + v14, *MEMORY[0x277D16EB8], v11);
    }

    else
    {

      v2 = type metadata accessor for HomeAppIntentError();
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v17 = v16;
      sub_252870158(&v18);
      *v17 = v18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_2527F2CE4(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_2528C04F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[2];
  v49 = v2[3];
  LODWORD(v13) = *(v2 + 32);
  result = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v50 = v13;
  if ((v13 & 0xFE) == 0x62)
  {
    v47 = v15;
    v48 = v14;
    sub_2528BFB20();
    sub_2528BFA40();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_2527213D8(v9, &qword_27F4FC208, &qword_2528C6B40);
      type metadata accessor for HomeAppIntentError();
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      *v19 = 45;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v51 = a1;
    (*(v11 + 32))(v48, v9, v10);
    LOBYTE(v52) = v47;
    if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v20 == 0xE700000000000000)
    {
    }

    else
    {
      v21 = sub_2528C1060();

      if ((v21 & 1) == 0)
      {
        v22 = v51;
        goto LABEL_35;
      }
    }

    v22 = v51;
    v23 = sub_2527F5234(v16, v51, a2);
    if (v3)
    {
      return (*(v11 + 8))(v48, v10);
    }

    sub_252736884(v23);
    if (v17)
    {
      v24 = *(v17 + 16);
      v25 = MEMORY[0x277D84F90];
      if (v24)
      {
        v44 = a2;
        v45 = v11;
        v52 = MEMORY[0x277D84F90];
        sub_25282EEDC(0, v24, 0);
        v25 = v52;
        v26 = (v17 + 32);
        *&v27 = 134217984;
        v46 = v27;
        do
        {
          v29 = *v26++;
          v28 = v29;
          if (v29 < 0x100000000)
          {
            if (v28 < 0)
            {
              if (qword_27F4FBB40 != -1)
              {
                swift_once();
              }

              v34 = sub_2528C08B0();
              __swift_project_value_buffer(v34, qword_27F5025C8);
              v35 = sub_2528C0890();
              v36 = sub_2528C0D00();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = v46;
                *(v37 + 4) = v28;
                _os_log_impl(&dword_252711000, v35, v36, "Tried to convert a Int lower than 0 to UInt32: %ld", v37, 0xCu);
                MEMORY[0x2530A8D80](v37, -1, -1);
              }

              LODWORD(v28) = 0;
            }
          }

          else
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v30 = sub_2528C08B0();
            __swift_project_value_buffer(v30, qword_27F5025C8);
            v31 = sub_2528C0890();
            v32 = sub_2528C0D00();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = v46;
              *(v33 + 4) = v28;
              _os_log_impl(&dword_252711000, v31, v32, "Tried to convert a Int larger than max to UInt32: %ld", v33, 0xCu);
              MEMORY[0x2530A8D80](v33, -1, -1);
            }

            LODWORD(v28) = -1;
          }

          v52 = v25;
          v39 = *(v25 + 16);
          v38 = *(v25 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_25282EEDC((v38 > 1), v39 + 1, 1);
            v25 = v52;
          }

          *(v25 + 16) = v39 + 1;
          *(v25 + 4 * v39 + 32) = v28;
          --v24;
          v22 = v51;
        }

        while (v24);
        a2 = v44;
        v11 = v45;
      }

      v40 = v50;
      if (v50)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = 0;
      v40 = v50;
      if (v50)
      {
LABEL_31:
        v41 = 0;
LABEL_34:
        LOBYTE(v52) = v40 & 1;
        v42 = sub_2527F32F4(v25, v41 | ((v40 & 1) << 32), a2);

        sub_252736884(v42);
LABEL_35:
        LOBYTE(v52) = v47;
        v43 = sub_2527F3EB0(v22, a2);
        if (v3)
        {
          (*(v11 + 8))(v48, v10);
        }

        else
        {
          sub_252736884(v43);
          (*(v11 + 8))(v48, v10);
          return v53;
        }
      }
    }

    v41 = Int.uint32.getter(v49);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_2527F32F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v6 = sub_2528BF130();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v91 - v12;
  v102 = sub_2528BF1E0();
  v14 = *(v102 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v102);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v91 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v91 - v21;
  MEMORY[0x28223BE20](v20);
  v103 = &v91 - v24;
  v25 = MEMORY[0x277D84F90];
  if (a1 || (a2 & 0x100000000) == 0)
  {
    v96 = v23;
    v98 = v3;
    sub_2528C02A0();
    v26 = v102;
    if ((*(v14 + 48))(v13, 1, v102) != 1)
    {
      v97 = v14;
      (*(v14 + 32))(v103, v13, v26);
      v28 = v26;
      if (a1)
      {
        v29 = v104;
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v30 = sub_2528C08B0();
        __swift_project_value_buffer(v30, qword_27F5025C8);
        v31 = v97;
        (*(v97 + 16))(v22, v103, v26);

        v32 = sub_2528C0890();
        v33 = sub_2528C0D10();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v107 = v105;
          *v34 = 136446466;
          v35 = MEMORY[0x2530A81A0](a1, MEMORY[0x277D84CC0]);
          LODWORD(v100) = v33;
          v37 = sub_2527389AC(v35, v36, &v107);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2080;
          sub_2528BF190();
          v38 = v29;
          v39 = MEMORY[0x2530A81A0]();
          v41 = v40;

          v42 = *(v31 + 8);
          v42(v22, v102);
          v43 = v39;
          v29 = v38;
          v28 = v102;
          v44 = sub_2527389AC(v43, v41, &v107);
          v45 = v42;

          *(v34 + 14) = v44;
          _os_log_impl(&dword_252711000, v32, v100, "Selecting areaIDs %{public}s from avaliable areas: %s", v34, 0x16u);
          v46 = v105;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v46, -1, -1);
          MEMORY[0x2530A8D80](v34, -1, -1);
        }

        else
        {

          v45 = *(v31 + 8);
          v45(v22, v28);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v47 = *(sub_2528BF2E0() - 8);
        v48 = *(v47 + 72);
        v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2528C3910;
        sub_2527F46F4(a1, v101, v25 + v49);
        if (!v29)
        {
          v45(v103, v28);
          return v25;
        }

        v45(v103, v28);
      }

      else
      {
        if ((a2 & 0x100000000) != 0)
        {
          (*(v97 + 8))(v103, v26);
          return v25;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v50 = sub_2528C08B0();
        v51 = __swift_project_value_buffer(v50, qword_27F5025C8);
        v52 = v97;
        v92 = *(v97 + 16);
        v93 = v97 + 16;
        v92(v19, v103, v28);
        v94 = v51;
        v53 = sub_2528C0890();
        v54 = sub_2528C0D10();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v107 = v100;
          *v55 = 67240450;
          *(v55 + 4) = a2;
          *(v55 + 8) = 2080;
          LODWORD(v99) = v54;
          v56 = sub_2528BF170();
          if (v56)
          {
            v57 = v56;
          }

          else
          {
            v57 = v25;
          }

          v58 = sub_2528BF1D0();
          v91 = MEMORY[0x2530A81A0](v57, v58);
          v60 = v59;

          v95 = *(v52 + 8);
          v95(v19, v102);
          v61 = sub_2527389AC(v91, v60, &v107);
          v28 = v102;

          *(v55 + 10) = v61;
          _os_log_impl(&dword_252711000, v53, v99, "Selecting mapID %{public}u from avaliable maps: %s", v55, 0x12u);
          v62 = v100;
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x2530A8D80](v62, -1, -1);
          MEMORY[0x2530A8D80](v55, -1, -1);
        }

        else
        {

          v95 = *(v52 + 8);
          v95(v19, v28);
        }

        v63 = sub_2528BF180();
        v64 = *(v63 + 16);
        v65 = v104;
        if (v64)
        {
          v107 = v25;
          sub_25282EEDC(0, v64, 0);
          v66 = v107;
          v67 = *(v105 + 16);
          v68 = *(v105 + 80);
          v91 = v63;
          v69 = v63 + ((v68 + 32) & ~v68);
          v99 = *(v105 + 72);
          v100 = v67;
          v105 += 16;
          v70 = (v105 - 8);
          do
          {
            v71 = v106;
            (v100)(v9, v69, v106);
            v72 = sub_2528BF110();
            (*v70)(v9, v71);
            v107 = v66;
            v74 = *(v66 + 16);
            v73 = *(v66 + 24);
            if (v74 >= v73 >> 1)
            {
              sub_25282EEDC((v73 > 1), v74 + 1, 1);
              v66 = v107;
            }

            *(v66 + 16) = v74 + 1;
            *(v66 + 4 * v74 + 32) = v72;
            v69 += v99;
            --v64;
          }

          while (v64);

          v65 = v104;
          v28 = v102;
        }

        else
        {

          v66 = MEMORY[0x277D84F90];
        }

        v75 = v96;
        v92(v96, v103, v28);

        v76 = sub_2528C0890();
        v77 = sub_2528C0D10();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v107 = v105;
          *v78 = 136446466;
          v79 = MEMORY[0x2530A81A0](v66, MEMORY[0x277D84CC0]);
          LODWORD(v104) = v77;
          v81 = sub_2527389AC(v79, v80, &v107);

          *(v78 + 4) = v81;
          *(v78 + 12) = 2080;
          sub_2528BF190();
          v82 = MEMORY[0x2530A81A0]();
          v84 = v83;

          v95(v75, v102);
          v85 = sub_2527389AC(v82, v84, &v107);
          v28 = v102;

          *(v78 + 14) = v85;
          _os_log_impl(&dword_252711000, v76, v104, "Using areaIDs %{public}s from avaliable areas: %s", v78, 0x16u);
          v86 = v105;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v86, -1, -1);
          MEMORY[0x2530A8D80](v78, -1, -1);
        }

        else
        {

          v95(v75, v28);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v87 = *(sub_2528BF2E0() - 8);
        v88 = *(v87 + 72);
        v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2528C3910;
        sub_2527F46F4(v66, v101, v25 + v89);
        if (!v65)
        {

          v95(v103, v28);
          return v25;
        }

        v95(v103, v28);
      }

      *(v25 + 16) = 0;

      return v25;
    }

    sub_2527213D8(v13, &qword_27F4FC2A8, &qword_2528C3958);
    type metadata accessor for HomeAppIntentError();
    sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v27 = 45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v25;
}

char *sub_2527F3EB0(void (**a1)(void, void), uint64_t a2)
{
  v79 = a2;
  v83 = a1;
  v3 = sub_2528BF2E0();
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE938, &qword_2528CE220);
  v85 = *(v6 - 8);
  v7 = *(v85 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = sub_2528BECF0();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2528BFB20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2528C0450();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v27 = *v2;
  if ((v27 - 7) < 0x14)
  {
    goto LABEL_2;
  }

  v77 = v13;
  v78 = v17;
  v73 = v21;
  v74 = v16;
  v34 = v84;
  v80 = v12;
  v81 = v3;
  v35 = v18;
  v36 = v85;
  if (((1 << v27) & 0x65) != 0)
  {
    v37 = v83;
    v51 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v24;
    v38 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE940, &qword_2528CE228);
    v39 = *(v36 + 72);
    v72 = *(v36 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_2528C17E0;
    v40 = *MEMORY[0x277D16910];
    v41 = *(v38 + 104);
    v70 = v38 + 104;
    v71 = v41;
    v41(v51, v40, v75);
    v68 = *(v35 + 16);
    v69 = v35 + 16;
    v42 = v73;
    v68(v73, v37, v78);
    v67 = *(v34 + 16);
    v84 = v34 + 16;
    v43 = v74;
    v44 = v79;
    v67(v74, v79, v77);
    sub_2528BF2D0();
    v85 = v39;
    v45 = *MEMORY[0x277D168E8];
    v46 = sub_2528C0440();
    v47 = v45;
    v48 = v76;
    (*(*(v46 - 8) + 104))(v51, v47, v46);
    v71(v51, *MEMORY[0x277D16940], v75);
    v68(v42, v83, v78);
    v49 = v44;
    v50 = v81;
    v67(v43, v49, v77);
    LODWORD(v51) = v72;
  }

  else
  {
    v59 = v18;
    v60 = v84;
    v62 = v73;
    v61 = v74;
    if (((1 << v27) & 0x18) != 0)
    {
LABEL_2:
      v28 = type metadata accessor for HomeAppIntentError();
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v30 = v29;
      v87 = v27;
      v31 = RobotVacuumCleanerRunState.rawValue.getter();
      *v30 = 45;
      *(v30 + 8) = v31;
      *(v30 + 16) = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v28;
    }

    v63 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v24;
    v64 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE940, &qword_2528CE228);
    v51 = *(v36 + 80);
    v85 = *(v36 + 72);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_2528C3910;
    v76 = v65 + ((v51 + 32) & ~v51);
    v48 = v65;
    LODWORD(v72) = *MEMORY[0x277D168F8];
    v66 = sub_2528C0440();
    (*(*(v66 - 8) + 104))(v63, v72, v66);
    (*(v64 + 104))(v63, *MEMORY[0x277D16940], v75);
    (*(v59 + 16))(v62, v83, v78);
    (*(v60 + 16))(v61, v79, v77);
    v50 = v81;
  }

  sub_2528BF2D0();
  v52 = *(v48 + 16);
  v53 = v80;
  if (v52)
  {
    v76 = v48;
    v54 = v48 + ((v51 + 32) & ~v51);
    v83 = (v82 + 32);
    v84 = v82 + 48;
    v28 = MEMORY[0x277D84F90];
    v55 = v50;
    do
    {
      sub_25272006C(v54, v53, &qword_27F4FE938, &qword_2528CE220);
      sub_2527F5BB4(v53, v10);
      if ((*v84)(v10, 1, v55) == 1)
      {
        sub_2527213D8(v10, &qword_27F4FE938, &qword_2528CE220);
      }

      else
      {
        v56 = *v83;
        (*v83)(v86, v10, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_252738498(0, *(v28 + 2) + 1, 1, v28);
        }

        v58 = *(v28 + 2);
        v57 = *(v28 + 3);
        if (v58 >= v57 >> 1)
        {
          v28 = sub_252738498(v57 > 1, v58 + 1, 1, v28);
        }

        *(v28 + 2) = v58 + 1;
        v55 = v81;
        v56(&v28[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v58], v86);
        v53 = v80;
      }

      v54 += v85;
      --v52;
    }

    while (v52);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v28;
}

uint64_t sub_2527F46F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v93 = a1;
  v82 = a3;
  v4 = sub_2528BF290();
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v69 - v8;
  v76 = sub_2528BECF0();
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v91 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2528C0460();
  v90 = *(v94 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v94);
  v79 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528C04F0();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2528C0450();
  v83 = *(v85 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v86 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v69 - v22;
  v99 = sub_2528BF130();
  v23 = *(v99 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v99);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v69 - v29;
  v31 = sub_2528BF1E0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  sub_2528C02A0();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_2527213D8(v30, &qword_27F4FC2A8, &qword_2528C3958);
    type metadata accessor for HomeAppIntentError();
    sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v37 = 45;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v71 = v4;
    v72 = v32;
    v39 = *(v32 + 32);
    v73 = v31;
    v39(v35, v30, v31);
    v40 = sub_2528BF190();
    v41 = *(v40 + 16);
    v74 = v35;
    if (v41)
    {
      v70 = v3;
      v98[0] = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v41, 0);
      v42 = v98[0];
      v43 = v23 + 16;
      v96 = *(v23 + 16);
      v44 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v69 = v40;
      v45 = v40 + v44;
      v95 = *(v43 + 56);
      v97 = v43;
      v46 = (v43 - 8);
      do
      {
        v47 = v99;
        v96(v26, v45, v99);
        v48 = sub_2528BF110();
        (*v46)(v26, v47);
        v98[0] = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_25282EEDC((v49 > 1), v50 + 1, 1);
          v42 = v98[0];
        }

        *(v42 + 16) = v50 + 1;
        *(v42 + 4 * v50 + 32) = v48;
        v45 += v95;
        --v41;
      }

      while (v41);

      v36 = v70;
      v51 = v94;
      v35 = v74;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
      v51 = v94;
    }

    v52 = sub_2527442AC(v42);

    v53 = v93;
    v54 = sub_2527F5A94(v93, v52);

    if (v54)
    {
      v55 = v84;
      *v84 = v53;
      v56 = *MEMORY[0x277D168C8];
      v57 = sub_2528C0420();
      (*(*(v57 - 8) + 104))(v55, v56, v57);
      (*(v83 + 104))(v55, *MEMORY[0x277D16918], v85);
      (*(v88 + 16))(v87, v36, v89);

      v58 = v92;
      sub_2528C0430();
      v59 = v86;
      sub_25272006C(v58, v86, &qword_27F4FC288, &qword_2528C3950);
      v60 = v90;
      if ((*(v90 + 48))(v59, 1, v51) == 1)
      {
        sub_2527213D8(v59, &qword_27F4FC288, &qword_2528C3950);
        type metadata accessor for HomeAppIntentError();
        sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        *v61 = 45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_2527213D8(v58, &qword_27F4FC288, &qword_2528C3950);
      }

      else
      {
        v63 = v79;
        (*(v60 + 32))(v79, v59, v51);
        (*(v75 + 16))(v91, v78, v76);
        v64 = v77;
        sub_2528C02D0();
        v99 = sub_2528BF0E0();
        v65 = *(v81 + 8);
        v66 = v71;
        v65(v64, v71);
        v67 = v80;
        sub_2528C02D0();
        sub_2528BF250();
        v65(v67, v66);
        v98[3] = v51;
        v98[4] = sub_2527F5B6C(&qword_27F4FC298, MEMORY[0x277D169E8]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v98);
        (*(v60 + 16))(boxed_opaque_existential_0Tm, v63, v51);
        sub_2528BF2C0();
        (*(v60 + 8))(v63, v51);
        sub_2527213D8(v92, &qword_27F4FC288, &qword_2528C3950);
      }

      return (*(v72 + 8))(v74, v73);
    }

    else
    {
      type metadata accessor for HomeAppIntentError();
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      *v62 = 45;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v72 + 8))(v35, v73);
    }
  }
}

char *sub_2527F5234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v77 = a1;
  v4 = sub_2528BFB20();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2528BF290();
  v70 = *(v72 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v72);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v62 - v10;
  v11 = sub_2528BECF0();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - v16;
  v18 = sub_2528C0460();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v62 - v24;
  v26 = sub_2528C04F0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  sub_2528BFA40();
  v31 = v26;
  v32 = v27;
  if ((*(v27 + 48))(v25, 1, v31) == 1)
  {
    sub_2527213D8(v25, &qword_27F4FC208, &qword_2528C6B40);
  }

  else
  {
    (*(v27 + 32))(v30, v25, v31);
    if (sub_2528C0320())
    {
      v63 = v31;

      sub_25272972C(v77, v17);
      v33 = v19;
      v34 = (*(v19 + 48))(v17, 1, v18);
      v64 = v30;
      if (v34 != 1)
      {
        v50 = *(v19 + 32);
        v51 = v67;
        v50(v67, v17, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v77 = v33;
        v52 = *(sub_2528BF2E0() - 8);
        v53 = *(v52 + 72);
        v74 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v73 = swift_allocObject();
        *(v73 + 1) = xmmword_2528C3910;
        (*(v65 + 16))(v75, v71, v66);
        v54 = v68;
        sub_2528BFAB0();
        v71 = sub_2528BF0E0();
        v55 = *(v70 + 8);
        v56 = v72;
        v55(v54, v72);
        v57 = v69;
        sub_2528BFAB0();
        sub_2528BF250();
        v55(v57, v56);
        v78[3] = v18;
        v78[4] = sub_2527F5B6C(&qword_27F4FC298, MEMORY[0x277D169E8]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v78);
        v59 = v77;
        (*(v77 + 16))(boxed_opaque_existential_0Tm, v51, v18);
        v60 = v73;
        sub_2528BF2C0();
        (*(v59 + 8))(v51, v18);
        (*(v32 + 8))(v64, v63);
        return v60;
      }

      sub_2527213D8(v17, &qword_27F4FC288, &qword_2528C3950);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v35 = sub_2528C08B0();
      __swift_project_value_buffer(v35, qword_27F5025C8);
      v37 = v73;
      v36 = v74;
      (*(v74 + 16))(v73, v76, v4);

      v38 = sub_2528C0890();
      v39 = sub_2528C0CF0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v78[0] = v41;
        *v40 = 136315394;
        v42 = sub_2528BFAE0();
        v43 = v37;
        v45 = v44;
        (*(v36 + 8))(v43, v4);
        v46 = sub_2527389AC(v42, v45, v78);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v47 = MEMORY[0x2530A81A0](v77, &type metadata for RobotVacuumCleanerCleanMode);
        v49 = sub_2527389AC(v47, v48, v78);

        *(v40 + 14) = v49;
        _os_log_impl(&dword_252711000, v38, v39, "Failed to find clean mode on %s to match clean modes: %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v41, -1, -1);
        MEMORY[0x2530A8D80](v40, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v37, v4);
      }

      (*(v32 + 8))(v64, v63);
    }

    else
    {
      (*(v27 + 8))(v30, v31);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2527F5A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (*(a2 + 16))
  {
    v7 = *(v5 + 4 * v4);
    v8 = MEMORY[0x2530A8770](*(a2 + 40), v7, 4);
    v9 = -1 << *(a2 + 32);
    v10 = v8 & ~v9;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    ++v4;
    v11 = ~v9;
    while (*(*(a2 + 48) + 4 * v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2527F5B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527F5BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE938, &qword_2528CE220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527F5C60(uint64_t a1)
{
  v2 = sub_2528BE560();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2528BE690();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2528BEA10();
    v8 = a1 + 32;
    do
    {
      sub_25276E828(v8, v16);
      v9 = v17;
      v10 = __swift_project_boxed_opaque_existential_0(v16, v17);
      v11 = *(*(v9 - 8) + 64);
      MEMORY[0x28223BE20](v10);
      (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2528BE680();
      sub_2527F5EE0();
      sub_2528BEA00();
      v14 = __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2530A8180](v14);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2528C0B50();
      }

      sub_2528C0B90();
      v8 += 40;
      --v7;
    }

    while (v7);
    return v18;
  }

  return result;
}

uint64_t sub_2527F5EE0()
{
  sub_2528BE560();
  sub_2527F5FB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE950, &unk_2528CE2B0);
  sub_2527F600C();
  return sub_2528C0DF0();
}

unint64_t sub_2527F5FB4()
{
  result = qword_27F4FE948;
  if (!qword_27F4FE948)
  {
    sub_2528BE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE948);
  }

  return result;
}

unint64_t sub_2527F600C()
{
  result = qword_27F4FE958;
  if (!qword_27F4FE958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FE950, &unk_2528CE2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE958);
  }

  return result;
}

uint64_t sub_2527F6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for DeviceEntity() - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent();
  v4[8] = DeviceInfoEvent;
  v8 = *(DeviceInfoEvent - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527F618C, 0, 0);
}

unint64_t sub_2527F618C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  *v1 = 0xD000000000000022;
  v1[1] = 0x80000002528E6150;
  sub_2527F8AAC(v3, v1 + v2[5]);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  result = sub_2528C0CB0();
  *(v1 + v2[6]) = result;
  v60 = v5;
  v8 = *(v5 + 16);
  *(v1 + v2[7]) = v8;
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 48);
    v59 = *(v0 + 56);
    v11 = *(v0 + 24) + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v9 >= *(v60 + 16))
      {
        goto LABEL_47;
      }

      sub_25272E7DC(v11 + *(v10 + 72) * v9, *(v0 + 56));
      v13 = *(v59 + 16);
      sub_2528BE6B0();
      v14 = *(v0 + 88);
      if ((v14 & 0xC000) == 0x4000)
      {
        LOBYTE(v14) = HIBYTE(v14) & 0x3F;
      }

      v15 = v14 + 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v12;
      result = sub_252791C7C(v15);
      v18 = *(v12 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = v17;
      if (*(v12 + 24) < v21)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v30 = result;
      sub_2527E18F4();
      result = v30;
      v12 = v61;
      if ((v22 & 1) == 0)
      {
LABEL_12:
        *(v12 + 8 * (result >> 6) + 64) |= 1 << result;
        *(*(v12 + 48) + 8 * result) = v15;
        *(*(v12 + 56) + 8 * result) = 0;
        v24 = *(v12 + 16);
        v20 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v20)
        {
          goto LABEL_50;
        }

        *(v12 + 16) = v25;
      }

LABEL_14:
      v26 = *(v12 + 56);
      v27 = *(v26 + 8 * result);
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_49;
      }

      ++v9;
      v29 = *(v0 + 56);
      *(v26 + 8 * result) = v28;
      result = sub_2527AADA0(v29, type metadata accessor for DeviceEntity);
      if (v8 == v9)
      {
        goto LABEL_20;
      }
    }

    sub_2527DE918(v21, isUniquelyReferenced_nonNull_native);
    result = sub_252791C7C(v15);
    if ((v22 & 1) != (v23 & 1))
    {

      return sub_2528C10A0();
    }

LABEL_11:
    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v12 = MEMORY[0x277D84F98];
LABEL_20:
  v31 = *(v0 + 24);

  v32 = -1;
  v33 = -1 << *(v12 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v12 + 64);
  if (v34)
  {
    v35 = 0;
    v36 = __clz(__rbit64(v34));
    v37 = (v34 - 1) & v34;
    v38 = (63 - v33) >> 6;
LABEL_28:
    v41 = *(v12 + 48);
    v42 = *(v12 + 56);
    v43 = *(v41 + 8 * v36);
    v44 = *(v42 + 8 * v36);
    if (!v37)
    {
      goto LABEL_30;
    }

    do
    {
      v45 = v35;
LABEL_34:
      v46 = (v45 << 9) | (8 * __clz(__rbit64(v37)));
      v47 = *(v41 + v46);
      v37 &= v37 - 1;
      v48 = *(v42 + v46);
      if (v48 < v44)
      {
        v43 = v47;
        v44 = v48;
      }
    }

    while (v37);
LABEL_30:
    while (1)
    {
      v45 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v45 >= v38)
      {
        v49 = *(v0 + 40);

        sub_2527213D8(v49, &qword_27F4FCE00, &qword_2528C5D20);

        v50 = 0;
        goto LABEL_39;
      }

      v37 = *(v12 + 64 + 8 * v45);
      ++v35;
      if (v37)
      {
        v35 = v45;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
    v39 = 0;
    v38 = (63 - v33) >> 6;
    while (v38 - 1 != v34)
    {
      v35 = v34 + 1;
      v40 = *(v12 + 8 * v34 + 72);
      v39 -= 64;
      ++v34;
      if (v40)
      {
        v37 = (v40 - 1) & v40;
        v36 = __clz(__rbit64(v40)) - v39;
        goto LABEL_28;
      }
    }

    sub_2527213D8(*(v0 + 40), &qword_27F4FCE00, &qword_2528C5D20);

    v43 = 0;
    v50 = 1;
LABEL_39:
    v52 = *(v0 + 72);
    v51 = *(v0 + 80);
    v54 = *(v0 + 56);
    v53 = *(v0 + 64);
    v55 = *(v0 + 32);
    v56 = *(v0 + 16);
    v57 = v51 + *(v53 + 32);
    *v57 = v43;
    *(v57 + 8) = v50;
    sub_2527F8BA0(v51, v56);
    (*(v52 + 56))(v56, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);

    v58 = *(v0 + 8);

    return v58();
  }

  return result;
}

unint64_t sub_2527F662C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6D614E746E657665;
    v4 = 0x6D617473656D6974;
    v5 = 0x65536E6F69746361;
    if (a1 != 3)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v3 = 0x746E65696C63;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      return 0xD000000000000035;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    v1 = 0xD000000000000026;
    if (a1 != 6)
    {
      v1 = 0xD000000000000030;
    }

    if (a1 == 5)
    {
      return 0xD000000000000030;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2527F67B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2527F9A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2527F67F4(uint64_t a1)
{
  v2 = sub_2527F924C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6830(uint64_t a1)
{
  v2 = sub_2527F924C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F686C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE9F8, &qword_2528CE6A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2527F924C();
  sub_2528C11A0();
  v11 = *v3;
  v12 = v3[1];
  v26[15] = 0;
  sub_2528C0FE0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    v26[14] = 1;
    sub_2528C0FC0();
    v15 = v3[4];
    v26[13] = 2;
    sub_2528C1000();
    v16 = v3[5];
    v17 = *(v3 + 48);
    v26[12] = 3;
    sub_2528C0FC0();
    v18 = *(v3 + 49);
    v26[11] = 4;
    sub_2528C0FF0();
    v19 = *(v3 + 50);
    v26[10] = 5;
    sub_2528C0FF0();
    v20 = *(v3 + 51);
    v26[9] = 6;
    sub_2528C0FF0();
    v21 = *(v3 + 52);
    v26[8] = 7;
    sub_2528C0FF0();
    v22 = *(v3 + 53);
    v26[7] = 8;
    sub_2528C0FF0();
    v23 = *(v3 + 54);
    v26[6] = 9;
    sub_2528C0FF0();
    v24 = *(v3 + 55);
    v26[5] = 10;
    sub_2528C0FF0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2527F6B34(uint64_t a1)
{
  v2 = sub_2527F90B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6B70(uint64_t a1)
{
  v2 = sub_2527F90B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F6BF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE9D0, &qword_2528CE698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2527F915C();
  sub_2528C11A0();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_2528C0FE0();
  if (!v2)
  {
    DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent();
    v14 = DeviceInfoEvent[5];
    v21[14] = 1;
    sub_2528BE890();
    sub_2527F91B0(&qword_27F4FE9E0, MEMORY[0x277CBA178]);
    sub_2528C0FD0();
    v15 = *(v3 + DeviceInfoEvent[6]);
    v21[13] = 2;
    sub_2528C1010();
    v16 = *(v3 + DeviceInfoEvent[7]);
    v21[12] = 3;
    sub_2528C1010();
    v17 = v3 + DeviceInfoEvent[8];
    v18 = *v17;
    v19 = v17[8];
    v21[11] = 4;
    sub_2528C0FC0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2527F6E38()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0x61655373656D6F68;
  v4 = 0x6F43656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2527F6EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2527F9E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2527F6F20(uint64_t a1)
{
  v2 = sub_2527F915C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6F5C(uint64_t a1)
{
  v2 = sub_2527F915C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F70C0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_2528C11A0();
  v14 = *v6;
  v15 = v6[1];
  v33 = 0;
  v16 = v26[1];
  sub_2528C0FE0();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = *(v6 + 24);
  v32 = 1;
  sub_2528C0FC0();
  v19 = v6[4];
  v31 = 2;
  sub_2528C1000();
  v20 = *(v6 + 40);
  v30 = 3;
  sub_2528C0FF0();
  v21 = v6[6];
  v29 = 4;
  sub_2528C1010();
  v22 = v6[7];
  v28 = 5;
  sub_2528C1010();
  v24 = v6[8];
  v25 = *(v6 + 72);
  v27 = 6;
  sub_2528C0FB0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2527F72F0(uint64_t a1)
{
  v2 = sub_2527F9108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F732C(uint64_t a1)
{
  v2 = sub_2527F9108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F73AC()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_2527F73F4()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_2527F7438()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0x7475626972747461;
  if (v1 != 5)
  {
    v3 = 0x74756F656D6974;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x7954656369766564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_2527F7528(uint64_t a1)
{
  v2 = sub_2527F91F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F7564(uint64_t a1)
{
  v2 = sub_2527F91F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F75E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = sub_2528BFD70();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = sub_2528C0CD0();
  v3[31] = v7;
  v8 = *(v7 - 8);
  v3[32] = v8;
  v9 = *(v8 + 64) + 15;
  v3[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v11 = sub_2528BEC90();
  v3[35] = v11;
  v12 = *(v11 - 8);
  v3[36] = v12;
  v13 = *(v12 + 64) + 15;
  v3[37] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v15 = sub_2528BFCE0();
  v3[39] = v15;
  v16 = *(v15 - 8);
  v3[40] = v16;
  v17 = *(v16 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v18 = sub_2528BEE30();
  v3[43] = v18;
  v19 = *(v18 - 8);
  v3[44] = v19;
  v20 = *(v19 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  v3[47] = v21;
  v22 = *(v21 - 8);
  v3[48] = v22;
  v23 = *(v22 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD080, &qword_2528C74B0) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v26 = sub_2528BF400();
  v3[53] = v26;
  v27 = *(v26 - 8);
  v3[54] = v27;
  v28 = *(v27 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  sub_2528BEFC0();
  v29 = *(MEMORY[0x277D15430] + 4);
  v30 = swift_task_alloc();
  v3[57] = v30;
  *v30 = v3;
  v30[1] = sub_2527F7A28;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527F7A28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 456);
  v7 = *v1;
  *(v3 + 464) = a1;

  v5 = swift_task_alloc();
  *(v3 + 472) = v5;
  *v5 = v7;
  v5[1] = sub_2527F7B74;

  return sub_25279D1DC(a1);
}

uint64_t sub_2527F7B74(uint64_t a1)
{
  v2 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_2527F7C74, 0, 0);
}

uint64_t sub_2527F7C74()
{
  v121 = (v0 + 489);
  v2 = v0[60];
  v3 = v0[54];
  v133 = v0[47];
  v4 = v0[44];

  v5 = v2 + 64;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v129 = (v4 + 8);
  v131 = (v3 + 8);
  v126 = v2;

  v11 = 0;
  v123 = v2 + 64;
  v141 = v0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = v0[55];
      v136 = v0[53];
      v15 = v0[49];
      v14 = v0[50];
      v16 = v0[46];
      v138 = v0[43];
      v140 = v0[26];
      v17 = __clz(__rbit64(v8)) | (v12 << 6);
      v18 = *(v126 + 48);
      v19 = sub_2528BECF0();
      (*(*(v19 - 8) + 16))(v14, v18 + *(*(v19 - 8) + 72) * v17, v19);
      v20 = *(v126 + 56);
      v21 = sub_2528BEEC0();
      (*(*(v21 - 8) + 16))(v14 + *(v133 + 48), v20 + *(*(v21 - 8) + 72) * v17, v21);
      sub_2527F8A3C(v14, v15);
      v22 = v15 + *(v133 + 48);
      sub_2528BEE70();
      sub_2528BF2F0();
      (*v131)(v13, v136);
      v23 = sub_2528BEE20();
      v25 = v24;
      (*v129)(v16, v138);
      v26 = *(v140 + *(type metadata accessor for SceneEntity() + 24));
      sub_2528BE6B0();
      v0 = v141;
      v3 = v141[24];
      if (v23 == v141[23] && v25 == v3)
      {
        break;
      }

      v27 = v141[24];
      v28 = sub_2528C1060();

      if (v28)
      {
        goto LABEL_15;
      }

      v8 &= v8 - 1;
      v10 = sub_2527213D8(v141[49], &qword_27F4FD050, &qword_2528CE320);
      v11 = v12;
      v5 = v123;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v33 = v141[24];

LABEL_15:
    v34 = v141[60];
    v35 = v141[51];
    v37 = v141[48];
    v36 = v141[49];
    v38 = v141[47];

    sub_2527F8A3C(v36, v35);
    (*(v37 + 56))(v35, 0, 1, v38);
LABEL_16:

    v39 = v0[51];
    v40 = (*(v0[48] + 48))(v39, 1, v0[47]);
    v41 = v0[53];
    v42 = v0[54];
    v43 = v0[52];
    if (v40 == 1)
    {
      sub_2527213D8(v0[27], &qword_27F4FCE00, &qword_2528C5D20);
      sub_2527213D8(v39, &qword_27F4FD080, &qword_2528C74B0);
      (*(v42 + 56))(v43, 1, 1, v41);
LABEL_20:
      sub_2527213D8(v0[52], &qword_27F4FCD98, &qword_2528C6200);
LABEL_21:
      sub_2527AADA0(v0[26], type metadata accessor for SceneEntity);
      v134 = 0;
      v137 = 0;
      v140 = 0;
      v132 = 0;
      v139 = 0;
      v130 = 0;
      v1 = 0;
LABEL_22:
      v49 = v0[55];
      v48 = v0[56];
      v51 = v0[51];
      v50 = v0[52];
      v53 = v0[49];
      v52 = v0[50];
      v55 = v0[45];
      v54 = v0[46];
      v56 = v0[42];
      v115 = v0[41];
      v117 = v0[38];
      v119 = v0[37];
      v122 = v0[34];
      v124 = v0[33];
      v127 = v0[30];
      v57 = v0[25];

      *v57 = v134;
      v57[1] = v137;
      v57[2] = v140;
      v57[3] = v132;
      v57[4] = v1;
      v57[5] = v139;
      v57[6] = v130;
      v58 = v0[1];

      return v58();
    }

    v44 = *(v133 + 48);
    v45 = v0[52];
    sub_2528BEE70();
    v46 = sub_2528BEEC0();
    (*(*(v46 - 8) + 8))(v39 + v44, v46);
    (*(v42 + 56))(v43, 0, 1, v41);
    v47 = sub_2528BECF0();
    (*(*(v47 - 8) + 8))(v39, v47);
    if ((*(v42 + 48))(v43, 1, v41) == 1)
    {
      sub_2527213D8(v0[27], &qword_27F4FCE00, &qword_2528C5D20);
      goto LABEL_20;
    }

    (*(v0[54] + 32))(v0[56], v0[52], v0[53]);
    v60 = sub_2528BF380();
    if (!*(v60 + 16) || (v61 = v0[26], v62 = type metadata accessor for SceneEntity(), v63 = sub_252785C40(v61 + *(v62 + 20)), (v64 & 1) == 0))
    {
      v76 = v0[56];
      v77 = v0[53];
      v78 = v0[27];

      sub_2527213D8(v78, &qword_27F4FCE00, &qword_2528C5D20);
      (*v131)(v76, v77);
      goto LABEL_21;
    }

    v66 = v0[41];
    v65 = v0[42];
    v67 = v0[39];
    v68 = v0[40];
    v69 = v0[38];
    v70 = v0[27];
    (*(v68 + 16))(v66, *(v60 + 56) + *(v68 + 72) * v63, v67);

    (*(v68 + 32))(v65, v66, v67);
    sub_2527F8AAC(v70, v69);
    v71 = sub_2528BE890();
    v72 = *(v71 - 8);
    v73 = (*(v72 + 48))(v69, 1, v71);
    v74 = v0[38];
    if (v73 == 1)
    {
      sub_2527213D8(v0[38], &qword_27F4FCE00, &qword_2528C5D20);
      v75 = 0;
    }

    else
    {
      v75 = sub_2528BE880();
      (*(v72 + 8))(v74, v71);
    }

    v79 = v73 == 1;
    v80 = v0[42];
    v81 = v0[36];
    v3 = v0[37];
    v83 = v0[34];
    v82 = v0[35];
    v85 = v0[31];
    v84 = v0[32];
    *(v0 + 488) = v79;
    sub_2528BEC80();
    sub_2528BEC60();
    v1 = v86;
    (*(v81 + 8))(v3, v82);
    sub_2528BFC80();
    LODWORD(v3) = (*(v84 + 48))(v83, 1, v85);
    v87 = v0[34];
    v140 = v75;
    if (v3 == 1)
    {
      sub_2527213D8(v87, &qword_27F4FBBC0, &qword_2528C1800);
      v139 = 0;
LABEL_49:
      v92 = v0[45];
      v93 = v0[42];
      v94 = v0[43];
      v114 = v0[40];
      v116 = v0[39];
      v118 = v0[53];
      v95 = v0[29];
      v96 = v0[30];
      v97 = v0[28];
      v111 = v0[27];
      v112 = v0[56];
      v135 = v0[26];
      v137 = 0x80000002528E6120;
      *(v0 + 496) = v3 == 1;
      sub_2528BF2F0();
      v98 = sub_2528BEDD0();
      (*v129)(v92, v94);
      v113 = v98 & 1;
      v99 = sub_2528BFC90();
      v100 = *(v95 + 104);
      v100(v96, *MEMORY[0x277D15FC0], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v99);

      v101 = *(v95 + 8);
      v101(v96, v97);
      v110 = v92 & 1;
      v102 = sub_2528BFC90();
      v100(v96, *MEMORY[0x277D16020], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v102);

      v101(v96, v97);
      v109 = v92 & 1;
      v103 = sub_2528BFC90();
      v100(v96, *MEMORY[0x277D15FD8], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v103);

      v101(v96, v97);
      v128 = v92 & 1;
      v104 = sub_2528BFC90();
      v100(v96, *MEMORY[0x277D15FE0], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v104);

      v101(v96, v97);
      v125 = v92 & 1;
      v105 = sub_2528BFC90();
      v100(v96, *MEMORY[0x277D16000], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v105);

      v101(v96, v97);
      v120 = v92 & 1;
      v106 = sub_2528BFC90();
      v100(v96, *MEMORY[0x277D15FF0], v97);
      LOBYTE(v92) = sub_2528195D4(v96, v106);

      sub_2527213D8(v111, &qword_27F4FCE00, &qword_2528C5D20);
      v101(v96, v97);
      (*(v114 + 8))(v93, v116);
      (*v131)(v112, v118);
      v0[9] = 0xD000000000000022;
      v0[10] = 0x80000002528E6120;
      v0[11] = v140;
      LOBYTE(v95) = *(v0 + 488);
      *(v0 + 96) = v95;
      *(v0 + 97) = *v121;
      *(v0 + 25) = *(v121 + 3);
      v0[13] = v1;
      v0[14] = v139;
      v107 = *(v0 + 496);
      *(v0 + 120) = v107;
      *(v0 + 121) = v113;
      *(v0 + 122) = v110;
      *(v0 + 123) = v109;
      *(v0 + 124) = v128;
      *(v0 + 125) = v125;
      *(v0 + 126) = v120;
      *(v0 + 127) = v92 & 1;
      v130 = v0[15];
      v132 = v0[12];
      sub_2527F8B1C((v0 + 9), (v0 + 16));
      sub_2527AADA0(v135, type metadata accessor for SceneEntity);
      v134 = 0xD000000000000022;
      v0[2] = 0xD000000000000022;
      v0[3] = 0x80000002528E6120;
      v0[4] = v140;
      *(v0 + 40) = v95;
      *(v0 + 41) = *v121;
      *(v0 + 11) = *(v121 + 3);
      v0[6] = v1;
      v0[7] = v139;
      *(v0 + 64) = v107;
      *(v0 + 65) = v113;
      *(v0 + 66) = v110;
      *(v0 + 67) = v109;
      *(v0 + 68) = v128;
      *(v0 + 69) = v125;
      *(v0 + 70) = v120;
      *(v0 + 71) = v92 & 1;
      sub_2527B5DB0((v0 + 2));
      goto LABEL_22;
    }

    v88 = v0[32];
    v89 = v0[33];
    v90 = v0[31];
    (*(v88 + 16))(v89, v87, v90);
    v10 = (*(v88 + 88))(v89, v90);
    if (v10 == *MEMORY[0x277D16EF0])
    {
      v91 = 0;
LABEL_48:
      v139 = v91;
      (*(v0[32] + 8))(v0[34], v0[31]);
      goto LABEL_49;
    }

    if (v10 == *MEMORY[0x277D16F10])
    {
      v91 = 1;
      goto LABEL_48;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v29 = v0[60];
        v30 = v0[51];
        v31 = v0[47];
        v32 = v0[48];

        (*(v32 + 56))(v30, 1, 1, v31);
        goto LABEL_16;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  if (v10 == *MEMORY[0x277D16F38])
  {
    v91 = 2;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F28])
  {
    v91 = 3;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16EF8])
  {
    v91 = 4;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F00])
  {
    v91 = 5;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F18])
  {
    v91 = 6;
    goto LABEL_48;
  }

  v108 = v0[31];

  return sub_2528C1050();
}

uint64_t sub_2527F8A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527F8AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GetDeviceInfoEvent()
{
  result = qword_27F4FE968;
  if (!qword_27F4FE968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527F8BA0(uint64_t a1, uint64_t a2)
{
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent();
  (*(*(DeviceInfoEvent - 8) + 32))(a2, a1, DeviceInfoEvent);
  return a2;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

void sub_2527F8C70()
{
  sub_2527F8D14();
  if (v0 <= 0x3F)
  {
    sub_2527F8D6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2527F8D14()
{
  if (!qword_27F4FE978)
  {
    sub_2528BE890();
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FE978);
    }
  }
}

void sub_2527F8D6C()
{
  if (!qword_27F4FE980)
  {
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FE980);
    }
  }
}

uint64_t sub_2527F8DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2527F8E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527F8E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2527F8EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2527F8F10()
{
  result = qword_27F4FE988;
  if (!qword_27F4FE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE988);
  }

  return result;
}

unint64_t sub_2527F8F68()
{
  result = qword_27F4FE990;
  if (!qword_27F4FE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE990);
  }

  return result;
}

unint64_t sub_2527F8FC0()
{
  result = qword_27F4FE998;
  if (!qword_27F4FE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE998);
  }

  return result;
}

unint64_t sub_2527F9060()
{
  result = qword_27F4FE9A8;
  if (!qword_27F4FE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9A8);
  }

  return result;
}

unint64_t sub_2527F90B4()
{
  result = qword_27F4FE9B8;
  if (!qword_27F4FE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9B8);
  }

  return result;
}

unint64_t sub_2527F9108()
{
  result = qword_27F4FE9C8;
  if (!qword_27F4FE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9C8);
  }

  return result;
}

unint64_t sub_2527F915C()
{
  result = qword_27F4FE9D8;
  if (!qword_27F4FE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9D8);
  }

  return result;
}

uint64_t sub_2527F91B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527F91F8()
{
  result = qword_27F4FE9F0;
  if (!qword_27F4FE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9F0);
  }

  return result;
}

unint64_t sub_2527F924C()
{
  result = qword_27F4FEA00;
  if (!qword_27F4FEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivateSceneEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivateSceneEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}