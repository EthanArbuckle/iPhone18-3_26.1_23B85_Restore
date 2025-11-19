uint64_t sub_227BD8D84(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D10, &qword_227D4F958);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v52);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v39 - v13;
  v14 = sub_227D49AB8();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 64);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v43 = (v9 + 32);
  v25 = v16;
  v53 = a3;
  result = sub_227D4CE58();
  v27 = 0;
  v46 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v53 + 56) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v38 = v46;

      return v38;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if (__swift_getEnumTagSinglePayload(v8, 1, v52) == 1)
    {
      result = sub_227BDE618(v8);
    }

    else
    {
      v41 = v25;
      v29 = *v43;
      (*v43)(v44, v8, v52);
      v29(v45, v44, v52);
      v30 = v29;
      v31 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_227BDCF04(0, *(v31 + 16) + 1, 1, v31, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v46 = v31;
      v34 = v33 + 1;
      v25 = v41;
      if (v33 >= v32 >> 1)
      {
        v39 = v33;
        v40 = v33 + 1;
        v37 = sub_227BDCF04(v32 > 1, v33 + 1, 1, v46, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
        v33 = v39;
        v34 = v40;
        v46 = v37;
      }

      v35 = v45;
      v36 = v46;
      *(v46 + 16) = v34;
      result = (v30)(v36 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, v35, v52);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v46;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BD91F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_227BDE464(&qword_27D7E8578);
  v12 = MEMORY[0x22AAA60B0](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_227BDD23C(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t sub_227BD93A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_227BDD23C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BD95C4(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_227D4CE58();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_227D4CE58();
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

size_t sub_227BD9708(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227BDB490(*(a1 + 16), 0, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v5 = sub_227BDE1C0(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_227B223D4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227BD9804()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = sub_227D49AB8();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v11 = sub_227D49328();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = type metadata accessor for GameServicesEnvironment(0);
  v1[15] = v15;
  v16 = *(*(v15 - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[18] = v18;
  v20 = *(v19 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[20] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[21] = v22;
  v24 = *(v23 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

size_t sub_227BD9A48()
{
  v1 = v0[3];
  v2 = sub_227D4CE58();
  v3 = sub_227BD91F0(v2);
  result = sub_227BD9708(v3);
  v0[23] = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  v0[25] = 0;
  v0[26] = v6;
  v0[24] = v5;
  if (!v5)
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[16];
    OUTLINED_FUNCTION_12_6();

    v11 = v0[1];
    OUTLINED_FUNCTION_33();

    __asm { BRAA            X2, X16 }
  }

  if (*(result + 16))
  {
    v7 = v0[19];
    (*(v0[21] + 16))(v0[22], result + ((*(v0[21] + 80) + 32) & ~*(v0[21] + 80)), v0[20]);
    sub_227D4A718();
    v14 = v0[19];
    v0[27] = sub_227D4A6A8();
    v0[28] = v15;
    (*(v0[18] + 8))(v0[19], v0[17]);
    v16 = swift_task_alloc();
    v0[29] = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_0_37(v16);
    v17 = v0[4];
    OUTLINED_FUNCTION_33();

    return sub_227CACB7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227BD9D08()
{
  OUTLINED_FUNCTION_6();
  v2 = *(*v1 + 232);
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v5 + 240) = v0;

  if (v0)
  {

    v6 = sub_227BDABAC;
  }

  else
  {
    v6 = sub_227BD9E18;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227BD9E18()
{
  v0[31] = v0[30];
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD9E5C, v1);
}

uint64_t sub_227BD9E5C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  *(v0 + 280) = (*(v0 + 264))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BD9EC0()
{
  v1 = v0[28];
  if (*(v0[35] + 16))
  {
    v2 = sub_227B2664C(v0[27], v0[28]);
    v4 = v3;

    if (v4)
    {
      v5 = *(*(v0[35] + 56) + 8 * v2);
      v0[36] = v5;

      v6 = *v5 + 392;
      v0[37] = *v6;
      v0[38] = v6 & 0xFFFFFFFFFFFFLL | 0xDD5F000000000000;
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v12 = v0[35];
  }

  else
  {
    v11 = v0[35];
  }

  v13 = v0[26];
  OUTLINED_FUNCTION_57_1(v0[6], v14, v15, v0[8]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v0[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_15_5(0, *(v19 + 16) + 1, v17, v18, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  if (v21 >= v20 >> 1)
  {
    v19 = OUTLINED_FUNCTION_15_5(v20 > 1, v21 + 1, v17, v18, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  v23 = v0[5];
  v22 = v0[6];
  (*(v0[21] + 8))(v0[22], v0[20]);
  *(v19 + 16) = v21 + 1;
  sub_227BDD01C(v22, v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
  v24 = v0[31];
  v25 = v0[24];
  v26 = v0[25] + 1;
  v0[25] = v26;
  v0[26] = v19;
  v7 = v0[23];
  if (v26 == v25)
  {
    v27 = v0[22];
    v28 = v0[19];
    v29 = v0[16];
    v30 = v0[14];
    v32 = v0[10];
    v31 = v0[11];
    v34 = v0[6];
    v33 = v0[7];

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  if (v26 >= *(v7 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v37 = v0[21];
  v38 = v0[22];
  v40 = v0[19];
  v39 = v0[20];
  v41 = OUTLINED_FUNCTION_10_12(v7, v26);
  v42(v41);
  sub_227D4A718();
  if (v24)
  {
    v43 = v0[23];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v46 = v0[22];
    v47 = v0[19];
    v48 = v0[16];
    OUTLINED_FUNCTION_12_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X1, X16 }
  }

  v44 = v0[19];
  v0[27] = sub_227D4A6A8();
  v0[28] = v45;
  (*(v0[18] + 8))(v0[19], v0[17]);
  v51 = swift_task_alloc();
  v0[29] = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_0_37();
  v52 = v0[4];
  OUTLINED_FUNCTION_135_0();

  return sub_227CACB7C();
}

uint64_t sub_227BDA2F8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  *(v0 + 312) = (*(v0 + 296))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BDA35C()
{
  v1 = v0;
  if (!*(v0[39] + 16) || (v2 = sub_227BDB31C(v0[22]), v3 = v0[39], (v4 & 1) == 0))
  {
    v37 = v0[36];

    goto LABEL_24;
  }

  v6 = v0[15];
  v5 = *(v1 + 128);
  v7 = *(v1 + 104);
  v117 = *(v1 + 112);
  v8 = *(v1 + 96);
  v9 = *(v1 + 32);
  v10 = *(*(v3 + 56) + 8 * v2);
  sub_227D4CE58();

  v11 = v9[5];
  v12 = v9[6];
  v13 = v9 + 2;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  (*(v12 + 8))(v11, v12);
  (*(v7 + 16))(v117, v5 + *(v6 + 28), v8);
  sub_227B4EC38(v5);
  v15 = *(v10 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_40:
    v84 = *(v1 + 104);
    v85 = *(v1 + 112);
    v86 = *(v1 + 96);
    v87 = Locale.getClosestLocale(from:)(v16);

    (*(v84 + 8))(v85, v86);
    if (!v87.value._object)
    {
      v104 = *(v1 + 288);

LABEL_25:
      v14 = (v1 + 48);
      v40 = *(v1 + 208);
      OUTLINED_FUNCTION_57_1(*(v1 + 48), v38, v39, *(v1 + 64));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v1 + 208);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      goto LABEL_59;
    }

    if (v14[2])
    {
      v88 = sub_227B2664C(v87.value._countAndFlagsBits, v87.value._object);
      v90 = v89;

      if (v90)
      {
        v91 = v14;
        v14 = (v1 + 56);
        v92 = *(v1 + 56);
        v119 = *(v1 + 208);
        v93 = *(v1 + 80);
        v94 = *(v1 + 88);
        v96 = *(v1 + 64);
        v95 = *(v1 + 72);
        v97 = *(v95 + 16);
        v97(v93, v91[7] + *(v95 + 72) * v88, v96);

        (*(v95 + 32))(v94, v93, v96);
        v97(v92, v94, v96);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v96);
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v1 + 208);
        if (v98)
        {
          goto LABEL_44;
        }

        goto LABEL_61;
      }

      v110 = *(v1 + 288);
    }

    else
    {
      v105 = *(v1 + 288);
    }

LABEL_24:

    goto LABEL_25;
  }

  *(v1 + 16) = MEMORY[0x277D84F90];
  sub_227D4CE58();
  sub_227B3CA88(0, v15, 0);
  v17 = *(v1 + 16);
  v21 = sub_227BB78B0(v10);
  v22 = 0;
  v23 = v10 + 64;
  v111 = v10 + 72;
  v112 = v15;
  v113 = v1;
  v114 = v10 + 64;
  if ((v21 & 0x8000000000000000) == 0)
  {
    while (v21 < 1 << *(v14 + 32))
    {
      v24 = v21 >> 6;
      if ((*(v23 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_54;
      }

      if (*(v14 + 9) != v18)
      {
        goto LABEL_55;
      }

      v115 = v19;
      v118 = v18;
      v116 = v22;
      v25 = (v14[6] + 16 * v21);
      v26 = v14;
      v16 = *v25;
      v14 = v25[1];
      *(v1 + 16) = v17;
      v1 = *(v17 + 16);
      v27 = *(v17 + 24);
      sub_227D4CE58();
      if (v1 >= v27 >> 1)
      {
        sub_227B3CA88((v27 > 1), v1 + 1, 1);
        v17 = v113[2];
      }

      *(v17 + 16) = v1 + 1;
      v28 = v17 + 16 * v1;
      *(v28 + 32) = v16;
      *(v28 + 40) = v14;
      v29 = 1 << *(v26 + 32);
      if (v21 >= v29)
      {
        goto LABEL_56;
      }

      v23 = v114;
      v30 = *(v114 + 8 * v24);
      if ((v30 & (1 << v21)) == 0)
      {
        goto LABEL_57;
      }

      v14 = v26;
      if (*(v26 + 9) != v118)
      {
        goto LABEL_58;
      }

      v31 = v30 & (-2 << (v21 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v21 & 0x7FFFFFFFFFFFFFC0;
        v32 = v112;
        v1 = v113;
      }

      else
      {
        v33 = v24 << 6;
        v32 = v112;
        v34 = (v111 + 8 * v24);
        v35 = v24 + 1;
        v1 = v113;
        while (v35 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v16 = v36;
          v33 += 64;
          ++v35;
          if (v36)
          {
            sub_227B3E218(v21, v118, v115 & 1);
            v29 = __clz(__rbit64(v16)) + v33;
            goto LABEL_20;
          }
        }

        sub_227B3E218(v21, v118, v115 & 1);
      }

LABEL_20:
      v22 = v116 + 1;
      if (v116 + 1 == v32)
      {

        v16 = v17;
        goto LABEL_40;
      }

      v19 = 0;
      v18 = *(v14 + 9);
      v21 = v29;
      if (v29 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v16 = OUTLINED_FUNCTION_15_5(0, *(v16 + 16) + 1, v19, v20, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
LABEL_26:
  v43 = *(v16 + 16);
  v42 = *(v16 + 24);
  v44 = v43 + 1;
  if (v43 >= v42 >> 1)
  {
    v16 = OUTLINED_FUNCTION_15_5(v42 > 1, v43 + 1, v19, v20, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  while (1)
  {
    v45 = *v14;
    v46 = *(v1 + 40);
    (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));
    *(v16 + 16) = v44;
    sub_227BDD01C(v45, v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43);
    v49 = *(v1 + 248);
    v50 = *(v1 + 192);
    v51 = *(v1 + 200) + 1;
    *(v1 + 200) = v51;
    *(v1 + 208) = v16;
    v52 = *(v1 + 184);
    if (v51 == v50)
    {
      v53 = *(v1 + 176);
      v54 = *(v1 + 152);
      v55 = *(v1 + 128);
      v56 = *(v1 + 112);
      v58 = *(v1 + 80);
      v57 = *(v1 + 88);
      v61 = (v1 + 48);
      v59 = *(v1 + 48);
      v60 = v61[1];

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_137();

      __asm { BRAA            X2, X16 }
    }

    if (v51 < *(v52 + 16))
    {
      break;
    }

    __break(1u);
LABEL_61:
    v16 = OUTLINED_FUNCTION_15_5(0, *(v16 + 16) + 1, v47, v48, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
LABEL_44:
    v43 = *(v16 + 16);
    v99 = *(v16 + 24);
    v44 = v43 + 1;
    if (v43 >= v99 >> 1)
    {
      v16 = OUTLINED_FUNCTION_15_5(v99 > 1, v43 + 1, v47, v48, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
    }

    v100 = *(v1 + 288);
    v101 = *(v1 + 88);
    v103 = *(v1 + 64);
    v102 = *(v1 + 72);

    (*(v102 + 8))(v101, v103);
  }

  v64 = *(v1 + 168);
  v65 = *(v1 + 176);
  v67 = *(v1 + 152);
  v66 = *(v1 + 160);
  v68 = OUTLINED_FUNCTION_10_12(v52, v51);
  v69(v68);
  sub_227D4A718();
  if (v49)
  {
    v70 = *(v1 + 184);
    (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));

    v73 = *(v1 + 176);
    v74 = *(v1 + 152);
    v75 = *(v1 + 128);
    v76 = *(v1 + 112);
    v78 = *(v1 + 80);
    v77 = *(v1 + 88);
    v80 = *(v1 + 48);
    v79 = *(v1 + 56);

    v81 = *(v1 + 8);
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v71 = *(v1 + 152);
  *(v1 + 216) = sub_227D4A6A8();
  *(v1 + 224) = v72;
  (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
  v106 = swift_task_alloc();
  *(v1 + 232) = v106;
  *v106 = v1;
  OUTLINED_FUNCTION_0_37();
  v107 = *(v1 + 32);
  OUTLINED_FUNCTION_137();

  return sub_227CACB7C();
}

uint64_t sub_227BDABAC()
{
  v0[31] = 0;
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD9E5C, v1);
}

uint64_t sub_227BDABEC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_227D49F28();
  v4 = OUTLINED_FUNCTION_9(v3);
  v58 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = sub_227D49918();
  v14 = OUTLINED_FUNCTION_9(v13);
  v59 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = sub_227D49B58();
  v24 = OUTLINED_FUNCTION_9(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = (&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v30, a1, v23);
  v31 = (*(v26 + 88))(v30, v23);
  if (v31 == *MEMORY[0x277D0CD60])
  {
    v32 = OUTLINED_FUNCTION_4_16();
    v33(v32);
    v34 = sub_227D49AC8();
    (*(*(v34 - 8) + 8))(v30, v34);
    goto LABEL_3;
  }

  if (v31 == *MEMORY[0x277D0CD48])
  {
    v37 = OUTLINED_FUNCTION_4_16();
    v38(v37);
    v40 = *v30;
    v39 = v30[1];
    if (v40 != sub_227D49848() || v39 != v41)
    {
      v35 = sub_227D4DA78();

      return v35 & 1;
    }

LABEL_3:
    v35 = 1;
    return v35 & 1;
  }

  if (v31 == *MEMORY[0x277D0CD50])
  {
    v43 = OUTLINED_FUNCTION_4_16();
    v44(v43);
    v45 = *v30;
    v46 = sub_227D49A88();
LABEL_13:
    v35 = v45 ^ v46 ^ 1;
    return v35 & 1;
  }

  if (v31 == *MEMORY[0x277D0CD70])
  {
    v47 = OUTLINED_FUNCTION_4_16();
    v48(v47);
    v49 = v59;
    (*(v59 + 32))(v22, v30, v13);
    sub_227D49AA8();
    v35 = sub_227BDB178(v22, v20, MEMORY[0x277D0CB58]);
    v50 = *(v49 + 8);
    v50(v20, v13);
    v50(v22, v13);
    return v35 & 1;
  }

  if (v31 == *MEMORY[0x277D0CD58])
  {
    v51 = OUTLINED_FUNCTION_4_16();
    v52(v51);
    v53 = v58;
    (*(v58 + 32))(v12, v30, v3);
    sub_227D49968();
    v35 = sub_227BDB178(v12, v10, MEMORY[0x277D0CF00]);
    v54 = *(v53 + 8);
    v54(v10, v3);
    v54(v12, v3);
    return v35 & 1;
  }

  if (v31 == *MEMORY[0x277D0CD68])
  {
    v55 = OUTLINED_FUNCTION_4_16();
    v56(v55);
    v45 = *v30;
    v46 = sub_227D499A8();
    goto LABEL_13;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000002CLL, 0x8000000227D769B0);
  sub_227D4D7B8();
  result = sub_227D4D7F8();
  __break(1u);
  return result;
}

uint64_t sub_227BDB178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_11_13();
  sub_227BDE4B4(v3, v4);
  sub_227D4D148();
  sub_227D4D148();
  if (v10 == v8 && v11 == v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_227D4DA78();
  }

  return v6 & 1;
}

BOOL sub_227BDB248(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_227D49B58() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

unint64_t sub_227BDB31C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  sub_227BDE464(&qword_27D7E8578);
  v5 = sub_227D4CE98();

  return sub_227BDD08C(a1, v5);
}

uint64_t sub_227BDB3AC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227B65A68(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_227BDB588(v7);
  *a1 = v3;
  return result;
}

size_t sub_227BDB490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227BDB588(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_227BDBA70(v8, v9, a1, v4);
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
    return sub_227BDB6D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227BDB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v45 - v16;
  result = MEMORY[0x28223BE20](v15);
  v61 = &v45 - v18;
  v47 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v11 + 16);
    v20 = v11 + 16;
    v22 = *(v20 + 56);
    v57 = v21;
    v58 = (v20 - 8);
    v23 = (v19 + v22 * (a3 - 1));
    v52 = -v22;
    v53 = (v20 + 16);
    v24 = a1 - a3;
    v54 = v19;
    v55 = v20;
    v46 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v50 = v23;
      v51 = a3;
      v48 = v25;
      v49 = v24;
      v26 = v24;
      v27 = v59;
      while (1)
      {
        v28 = v57;
        v57(v61, v25, v10);
        v28(v27, v23, v10);
        v29 = sub_227D4A708();
        if (v5)
        {
          v44 = *v58;
          (*v58)(v59, v10);
          return (v44)(v61, v10);
        }

        v31 = v30;
        v5 = 0;
        if (v29 == sub_227D4A708() && v31 == v32)
        {

          v43 = *v58;
          (*v58)(v59, v10);
          result = (v43)(v61, v10);
          goto LABEL_16;
        }

        v34 = v26;
        v60 = 0;
        v35 = sub_227D4DA78();

        v27 = v59;
        v36 = *v58;
        (*v58)(v59, v10);
        v37 = v10;
        result = (v36)(v61, v10);
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          __break(1u);
          return result;
        }

        v38 = v34;
        v39 = *v53;
        v40 = v56;
        v41 = v37;
        (*v53)(v56, v25, v37);
        swift_arrayInitWithTakeFrontToBack();
        result = v39(v23, v40, v37);
        v23 += v52;
        v25 += v52;
        v42 = __CFADD__(v38, 1);
        v26 = v38 + 1;
        v5 = v60;
        v10 = v41;
        if (v42)
        {
          goto LABEL_16;
        }
      }

      v5 = v60;
LABEL_16:
      a3 = v51 + 1;
      v23 = &v50[v46];
      v24 = v49 - 1;
      v25 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227BDBA70(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v154 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v157 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v150 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v160 = &v150 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v171 = &v150 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v150 - v20;
  result = MEMORY[0x28223BE20](v19);
  v155 = &v150 - v26;
  v174 = a3;
  v27 = a3[1];
  v172 = v23;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_117:
    v4 = *v154;
    if (*v154)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_119;
    }

    goto LABEL_163;
  }

  v153 = v21;
  v170 = v25;
  v158 = v24;
  v150 = a4;
  v28 = 0;
  v165 = v23 + 16;
  v166 = (v23 + 8);
  v159 = (v23 + 32);
  v29 = MEMORY[0x277D84F90];
  v173 = v7;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v164 = v27;
      v31 = *v174;
      v32 = *(v23 + 72);
      v33 = *(v23 + 16);
      v33(v155, &(*v174)[v32 * v28], v7);
      v152 = v30;
      v167 = v32;
      v169 = v31;
      v163 = v33;
      v33(v153, &v31[v32 * v30], v7);
      v34 = v175;
      v35 = sub_227D4A708();
      v175 = v34;
      if (v34)
      {
        goto LABEL_132;
      }

      v37 = v35;
      v38 = v36;
      v39 = sub_227D4A708();
      v175 = 0;
      v41 = v37 == v39 && v38 == v40;
      LODWORD(v162) = v41 ? 0 : sub_227D4DA78();

      if (v175)
      {
LABEL_132:
        v149 = *v166;
        (*v166)(v153, v7);
        (v149)(v155, v7);
      }

      v151 = v29;
      v42 = *v166;
      (*v166)(v153, v7);
      v161 = v42;
      result = (v42)(v155, v7);
      v43 = v152 + 2;
      v44 = v167 * (v152 + 2);
      v45 = &v169[v44];
      v46 = v167 * v28;
      v47 = &v169[v167 * v28];
      do
      {
        v4 = v43;
        v48 = v28;
        v49 = v46;
        v50 = v44;
        if (v43 >= v164)
        {
          break;
        }

        v168 = v28;
        v169 = v46;
        v51 = v44;
        v52 = v173;
        v53 = v163;
        (v163)(v171, v45, v173);
        v53(v170, v47, v52);
        v54 = v175;
        v55 = sub_227D4A708();
        if (v54)
        {
          v175 = v54;
          v145 = v173;
          v146 = v161;
          (v161)(v170, v173);
          (v146)(v171, v145);
        }

        v57 = v55;
        v58 = v56;
        v59 = sub_227D4A708();
        v175 = 0;
        v61 = v57 == v59 && v58 == v60;
        v62 = v61 ? 0 : sub_227D4DA78();
        v50 = v51;

        v63 = v173;
        v64 = v161;
        (v161)(v170, v173);
        result = (v64)(v171, v63);
        v65 = v162 ^ v62;
        v43 = v4 + 1;
        v48 = v168;
        v45 += v167;
        v47 += v167;
        v28 = v168 + 1;
        v49 = v169;
        v46 = &v169[v167];
        v44 = v50 + v167;
      }

      while ((v65 & 1) == 0);
      if (v162)
      {
        v30 = v152;
        v23 = v172;
        if (v4 < v152)
        {
          goto LABEL_157;
        }

        if (v152 >= v4)
        {
          v28 = v4;
          v29 = v151;
          v7 = v173;
          goto LABEL_40;
        }

        v66 = v152 * v167;
        do
        {
          if (v30 != v48)
          {
            v67 = *v174;
            if (!*v174)
            {
              goto LABEL_161;
            }

            v68 = v173;
            v169 = *v159;
            (v169)(v157, &v67[v66], v173);
            v69 = v66 < v49 || &v67[v66] >= &v67[v50];
            if (v69)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v66 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v169)(&v49[v67], v157, v68);
          }

          ++v30;
          v49 -= v167;
          v50 -= v167;
          v66 += v167;
        }

        while (v30 < v48--);
      }

      v28 = v4;
      v23 = v172;
      v7 = v173;
      v29 = v151;
      v30 = v152;
    }

LABEL_40:
    v71 = v174[1];
    if (v28 >= v71)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v28, v30))
    {
      goto LABEL_153;
    }

    if (v28 - v30 >= v150)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v30, v150))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      return result;
    }

    if (v30 + v150 >= v71)
    {
      v72 = v174[1];
    }

    else
    {
      v72 = (v30 + v150);
    }

    if (v72 < v30)
    {
      goto LABEL_156;
    }

    if (v28 != v72)
    {
      v151 = v29;
      v116 = *v174;
      v117 = *(v23 + 72);
      v118 = *(v23 + 16);
      v119 = &(*v174)[v117 * (v28 - 1)];
      v4 = -v117;
      v152 = v30;
      v120 = v30 - v28;
      v169 = v116;
      v161 = v72;
      v162 = v117;
      v121 = &v116[v28 * v117];
      do
      {
        v167 = v119;
        v168 = v28;
        v163 = v121;
        v164 = v120;
        while (1)
        {
          v118(v160, v121, v7);
          v118(v158, v119, v7);
          v122 = v175;
          v123 = sub_227D4A708();
          v175 = v122;
          if (v122)
          {
            v147 = *v166;
            v148 = v173;
            (*v166)(v158, v173);
            (v147)(v160, v148);
          }

          v125 = v123;
          v126 = v124;
          v127 = sub_227D4A708();
          v175 = 0;
          if (v125 == v127 && v126 == v128)
          {

            v135 = *v166;
            v7 = v173;
            (*v166)(v158, v173);
            (v135)(v160, v7);
            goto LABEL_114;
          }

          v130 = sub_227D4DA78();

          v131 = *v166;
          v132 = v173;
          (*v166)(v158, v173);
          result = (v131)(v160, v132);
          if ((v130 & 1) == 0)
          {
            break;
          }

          if (!v169)
          {
            goto LABEL_160;
          }

          v133 = *v159;
          v134 = v156;
          v7 = v173;
          (*v159)(v156, v121, v173);
          swift_arrayInitWithTakeFrontToBack();
          v133(v119, v134, v7);
          v119 += v4;
          v121 += v4;
          v69 = __CFADD__(v120++, 1);
          if (v69)
          {
            goto LABEL_114;
          }
        }

        v7 = v173;
LABEL_114:
        v28 = v168 + 1;
        v119 = v167 + v162;
        v120 = v164 - 1;
        v121 = &v163[v162];
      }

      while ((v168 + 1) != v161);
      v28 = v161;
      v29 = v151;
      v30 = v152;
    }

LABEL_49:
    if (v28 < v30)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v74 = *(v29 + 16);
    v73 = *(v29 + 24);
    v75 = v74 + 1;
    v4 = v30;
    if (v74 >= v73 >> 1)
    {
      result = sub_227B63228((v73 > 1), v74 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v75;
    v76 = v29 + 32;
    v77 = (v29 + 32 + 16 * v74);
    *v77 = v4;
    v77[1] = v28;
    v169 = *v154;
    if (!v169)
    {
      goto LABEL_162;
    }

    if (v74)
    {
      break;
    }

LABEL_98:
    v7 = v173;
    v27 = v174[1];
    v23 = v172;
    if (v28 >= v27)
    {
      goto LABEL_117;
    }
  }

  while (1)
  {
    v78 = v75 - 1;
    v79 = (v76 + 16 * (v75 - 1));
    v80 = (v29 + 16 * v75);
    if (v75 >= 4)
    {
      v85 = v76 + 16 * v75;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_140;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_141;
      }

      v92 = v80[1];
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_143;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_146;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = v79[1];
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_151;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

    if (v75 == 3)
    {
      v81 = *(v29 + 32);
      v82 = *(v29 + 40);
      v91 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      v84 = v91;
LABEL_69:
      if (v84)
      {
        goto LABEL_142;
      }

      v96 = *v80;
      v95 = v80[1];
      v97 = __OFSUB__(v95, v96);
      v98 = v95 - v96;
      v99 = v97;
      if (v97)
      {
        goto LABEL_145;
      }

      v100 = v79[1];
      v101 = v100 - *v79;
      if (__OFSUB__(v100, *v79))
      {
        goto LABEL_148;
      }

      if (__OFADD__(v98, v101))
      {
        goto LABEL_150;
      }

      if (v98 + v101 >= v83)
      {
        if (v83 < v101)
        {
          v78 = v75 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_84;
    }

    if (v75 < 2)
    {
      goto LABEL_144;
    }

    v103 = *v80;
    v102 = v80[1];
    v91 = __OFSUB__(v102, v103);
    v98 = v102 - v103;
    v99 = v91;
LABEL_84:
    if (v99)
    {
      goto LABEL_147;
    }

    v105 = *v79;
    v104 = v79[1];
    v91 = __OFSUB__(v104, v105);
    v106 = v104 - v105;
    if (v91)
    {
      goto LABEL_149;
    }

    if (v106 < v98)
    {
      goto LABEL_98;
    }

LABEL_91:
    if (v78 - 1 >= v75)
    {
      break;
    }

    if (!*v174)
    {
      goto LABEL_159;
    }

    v4 = v28;
    v110 = v29;
    v29 = v76 + 16 * (v78 - 1);
    v111 = *v29;
    v112 = (v76 + 16 * v78);
    v113 = v112[1];
    v114 = v175;
    sub_227BDC700(&(*v174)[*(v172 + 72) * *v29], &(*v174)[*(v172 + 72) * *v112], &(*v174)[*(v172 + 72) * v113], v169);
    v175 = v114;
    if (v114)
    {
    }

    if (v113 < v111)
    {
      goto LABEL_137;
    }

    v115 = *(v110 + 16);
    if (v78 > v115)
    {
      goto LABEL_138;
    }

    *v29 = v111;
    *(v29 + 8) = v113;
    if (v78 >= v115)
    {
      goto LABEL_139;
    }

    v75 = v115 - 1;
    result = memmove((v76 + 16 * v78), v112 + 2, 16 * (v115 - 1 - v78));
    v29 = v110;
    *(v110 + 16) = v115 - 1;
    v28 = v4;
    if (v115 <= 2)
    {
      goto LABEL_98;
    }
  }

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
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  result = sub_227B65968(v29);
  v29 = result;
LABEL_119:
  v136 = v29;
  v137 = (v29 + 16);
  for (i = *(v29 + 16); ; *v137 = i)
  {
    v29 = i - 2;
    if (i < 2)
    {
      break;
    }

    if (!*v174)
    {
      goto LABEL_158;
    }

    v139 = (v136 + 16 * i);
    v140 = *v139;
    v141 = &v137[2 * i];
    v142 = v141[1];
    v143 = v175;
    sub_227BDC700(&(*v174)[*(v172 + 72) * *v139], &(*v174)[*(v172 + 72) * *v141], &(*v174)[*(v172 + 72) * v142], v4);
    v175 = v143;
    if (v143)
    {
      break;
    }

    if (v142 < v140)
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v29 >= *v137)
    {
      goto LABEL_134;
    }

    *v139 = v140;
    v139[1] = v142;
    v144 = *v137 - i;
    if (*v137 < i)
    {
      goto LABEL_135;
    }

    i = *v137 - 1;
    result = memmove(v141, v141 + 2, 16 * v144);
  }
}

uint64_t sub_227BDC700(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = *(*(v98 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v98);
  v89 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v87 - v14;
  result = MEMORY[0x28223BE20](v13);
  v95 = &v87 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_77;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_78;
  }

  v23 = (a2 - a1) / v19;
  v101 = a1;
  v100 = a4;
  v92 = (v16 + 16);
  v94 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    sub_227BDCE20(a1, (a2 - a1) / v19, a4, &qword_27D7E6AA8, &unk_227D4ED70);
    v93 = (a4 + v23 * v19);
    v99 = v93;
    v25 = v92;
    v90 = a3;
    while (1)
    {
      if (a4 >= v93 || a2 >= a3)
      {
        goto LABEL_75;
      }

      v27 = a1;
      v28 = *v25;
      v29 = a2;
      v30 = v98;
      (*v25)(v95, a2, v98);
      v31 = v91;
      v96 = a4;
      v28(v91, a4, v30);
      v32 = v97;
      v33 = sub_227D4A708();
      if (v32)
      {
        v97 = v32;
        v81 = *v94;
        v82 = v31;
        v83 = v98;
        (*v94)(v82, v98);
        v81(v95, v83);
        goto LABEL_75;
      }

      v35 = v33;
      v36 = v34;
      v37 = sub_227D4A708();
      v97 = 0;
      if (v35 == v37 && v36 == v38)
      {

        v46 = *v94;
        v47 = v31;
        v48 = v98;
        (*v94)(v47, v98);
        v46(v95, v48);
        v44 = v27;
      }

      else
      {
        v40 = sub_227D4DA78();

        v41 = *v94;
        v42 = v31;
        v43 = v98;
        (*v94)(v42, v98);
        v41(v95, v43);
        v44 = v27;
        if (v40)
        {
          a2 = v29 + v19;
          v45 = v27 < v29 || v27 >= a2;
          v25 = v92;
          if (v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v96;
          a3 = v90;
          goto LABEL_41;
        }
      }

      a4 = v96 + v19;
      v49 = v44 < v96 || v44 >= a4;
      a2 = v29;
      v25 = v92;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v90;
      }

      else
      {
        a3 = v90;
        if (v44 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v100 = a4;
LABEL_41:
      a1 = v44 + v19;
      v101 = a1;
    }
  }

  sub_227BDCE20(a2, v21 / v19, a4, &qword_27D7E6AA8, &unk_227D4ED70);
  v50 = a4 + v24 * v19;
  v51 = -v19;
  v52 = v50;
  v53 = v92;
  v88 = a1;
  v95 = v51;
  v96 = a4;
LABEL_43:
  v91 = a2;
  v54 = a2 + v51;
  v87 = v52;
  v55 = v52;
  v56 = v89;
  while (1)
  {
    if (v50 <= v96)
    {
      v101 = v91;
      v99 = v55;
      goto LABEL_75;
    }

    if (v91 <= a1)
    {
      v101 = v91;
      v84 = v87;
      goto LABEL_74;
    }

    v90 = v55;
    v92 = v50;
    v57 = v50 + v51;
    v58 = *v53;
    v59 = v98;
    (*v53)(v93, v50 + v51, v98);
    v60 = v54;
    v61 = v59;
    v62 = v53;
    v58(v56, v54, v61);
    v63 = v97;
    v64 = sub_227D4A708();
    if (v63)
    {
      break;
    }

    v66 = v64;
    v67 = v65;
    v68 = sub_227D4A708();
    v97 = 0;
    if (v66 == v68 && v67 == v69)
    {
      v71 = 0;
    }

    else
    {
      v71 = sub_227D4DA78();
    }

    v72 = &v95[a3];
    v73 = *v94;
    v74 = v56;
    v75 = v98;
    (*v94)(v74, v98);
    v73(v93, v75);
    if (v71)
    {
      v77 = a3 < v91 || v72 >= v91;
      v53 = v62;
      v78 = v72;
      v79 = v60;
      if (v77)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v60;
        v52 = v90;
        a1 = v88;
        v51 = v95;
        v50 = v92;
        a3 = v78;
      }

      else
      {
        v52 = v90;
        v20 = a3 == v91;
        a2 = v60;
        a1 = v88;
        v51 = v95;
        v50 = v92;
        a3 = v78;
        if (!v20)
        {
          v80 = v90;
          swift_arrayInitWithTakeBackToFront();
          v50 = v92;
          a2 = v79;
          v52 = v80;
        }
      }

      goto LABEL_43;
    }

    v76 = a3 < v92 || v72 >= v92;
    v53 = v62;
    v54 = v60;
    if (v76)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v72;
      v50 = v57;
      v55 = v57;
      a1 = v88;
      v56 = v89;
      v51 = v95;
    }

    else
    {
      v55 = v57;
      v20 = v92 == a3;
      a3 = v72;
      v50 = v57;
      a1 = v88;
      v56 = v89;
      v51 = v95;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        a3 = v72;
        v50 = v57;
        v55 = v57;
      }
    }
  }

  v97 = v63;
  v85 = *v94;
  v86 = v98;
  (*v94)(v56, v98);
  v85(v93, v86);
  v84 = v90;
  v101 = v91;
LABEL_74:
  v99 = v84;
LABEL_75:
  sub_227B6597C(&v101, &v100, &v99);
  return 1;
}

uint64_t sub_227BDCE20(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_11_13();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_11_13();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_227BDCF04(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_227BDB490(v14, v13, a5, a6, a7, a8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_227BDCE20(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_227BDD01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BDD08C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227BDE464(&qword_27D7E8580);
    v10 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

BOOL sub_227BDD23C(char *a1, char *a2)
{
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_227BDE464(&qword_27D7E8578);
  v30 = a2;
  v11 = sub_227D4CE98();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_227BDD830(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_227BDE464(&qword_27D7E8580);
    v17 = sub_227D4CF38();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_227BDD4E4(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  result = sub_227D4D638();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_227B26E40(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_227BDE464(&qword_27D7E8578);
    result = sub_227D4CE98();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227BDD830(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227BDD4E4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_227BDDCD8(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_227BDE464(&qword_27D7E8578);
      v15 = sub_227D4CE98();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_227BDE464(&qword_27D7E8580);
        v17 = sub_227D4CF38();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_227BDDA9C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_227BDDA9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  v7 = *v0;
  v8 = sub_227D4D628();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_227BDDCD8(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  v10 = sub_227D4D638();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_227BDE464(&qword_27D7E8578);
        result = sub_227D4CE98();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

size_t sub_227BDDFE4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE0, &qword_227D4F910);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227BDCE20(a4 + v16, v8, v13 + v16, &qword_27D7E6AA8, &unk_227D4ED70);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_227BDE1C0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227BDE464(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AA8, &unk_227D4ED70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227BDE4B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227BDE4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  if (v2[2])
  {
    v7 = v2[2];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v12[2] = a1;
  sub_227D4CE58();
  v8 = sub_227BDB248(sub_227BDE680, v12, v7);

  if (v8)
  {
    sub_227D49848();
    sub_227D4A668();
    if (v3)
    {

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  return __swift_storeEnumTagSinglePayload(a2, v9, 1, v10);
}

uint64_t sub_227BDE618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D10, &qword_227D4F958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_12_6()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
}

uint64_t sub_227BDE6C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227BDE6DC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  sub_227D4B128();
  OUTLINED_FUNCTION_133();
  *v5 = v6;
  v5[1] = sub_227BDE7BC;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return sub_227B4CC14();
}

uint64_t sub_227BDE7BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227BDE8DC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 224) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  v6 = sub_227D4B128();
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_10_0(v6);
  *(v0 + 64) = v7;
  v9 = *(v8 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_30();
  v10 = sub_227D4BC48();
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_30();
  v13 = sub_227D4BC68();
  *(v0 + 88) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v0 + 96) = v14;
  v16 = *(v15 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85C0, &qword_227D59C10);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  *(v0 + 112) = OUTLINED_FUNCTION_30();
  v20 = sub_227D4BC28();
  *(v0 + 120) = v20;
  OUTLINED_FUNCTION_10_0(v20);
  *(v0 + 128) = v21;
  v23 = *(v22 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v24 = sub_227D4BC88();
  OUTLINED_FUNCTION_5(v24);
  v26 = *(v25 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_30();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85C8, &qword_227D59C18);
  OUTLINED_FUNCTION_5(v27);
  v29 = *(v28 + 64);
  *(v0 + 152) = OUTLINED_FUNCTION_30();
  v30 = sub_227D4B0A8();
  *(v0 + 160) = v30;
  OUTLINED_FUNCTION_10_0(v30);
  *(v0 + 168) = v31;
  v33 = *(v32 + 64);
  *(v0 + 176) = OUTLINED_FUNCTION_30();
  v34 = sub_227D492A8();
  *(v0 + 184) = v34;
  OUTLINED_FUNCTION_10_0(v34);
  *(v0 + 192) = v35;
  v37 = *(v36 + 64);
  *(v0 + 200) = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_227BDEB54()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_227D49298();
  sub_227D49258();
  v5 = v4;
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v9 = v8(v7);
  v12 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282163ED8](v9, v10, v11);
  }

  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v15 = *(v0 + 152);
  v28 = *(v0 + 160);
  v27 = *(v0 + 136);
  v16 = *(v0 + 112);
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 224);
  *(v0 + 16) = v12;
  sub_227D4DA38();
  v20 = sub_227D4C928();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
  sub_227D4B098();
  sub_227BE0080();
  sub_227D4D1F8();
  sub_227D4CE58();
  sub_227D4BC18();
  (*(v14 + 16))(v16, v13, v28);
  v21 = sub_227D4BC08();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
  v22 = *(MEMORY[0x277D0C700] + 4);
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v23 = v24;
  v23[1] = sub_227BDEDAC;
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 112);
  v25 = *(v0 + 32);

  return MEMORY[0x282163ED8](v9, v10, v11);
}

uint64_t sub_227BDEDAC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[26];
  *v4 = *v1;
  v3[27] = v0;

  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];
  sub_227B1365C(v2[14], &qword_27D7E85C0, &qword_227D59C10);
  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BDEF44()
{
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[13];
  sub_227D4BC78();
  if (v1)
  {
    sub_227BE00D4(v0[18], MEMORY[0x277D0C4C0]);
    v18 = v0[25];
    v19 = v0[19];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[9];
    v25 = v0[10];
    (*(v0[21] + 8))(v0[22], v0[20]);
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_227D4BC58();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_57_0();
    v11(v10);
    sub_227D4BC38();
    v12 = v0[9];
    v13 = v0[7];
    v14 = v0[3];
    OUTLINED_FUNCTION_6_10(v0[10]);
    v15 = OUTLINED_FUNCTION_57_0();
    sub_227B4D5E8(v15, v16, v17);
    v28 = v0[25];
    v30 = v0[21];
    v29 = v0[22];
    v32 = v0[19];
    v31 = v0[20];
    v34 = v0[17];
    v33 = v0[18];
    v35 = v0[14];
    v36 = v0[13];
    v37 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_227BE00D4(v33, MEMORY[0x277D0C4C0]);
    (*(v30 + 8))(v29, v31);
  }

  OUTLINED_FUNCTION_18();

  return v26();
}

uint64_t sub_227BDF1B4()
{
  v11 = v0[27];
  v1 = v0[25];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227BDF2A8()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_28_0(v5);

  return sub_227BDE8DC();
}

uint64_t sub_227BDF360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227BDF378()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_227D4B318();
  OUTLINED_FUNCTION_133();
  *v3 = v4;
  v3[1] = sub_227BDF450;
  v5 = v0[4];
  v6 = v0[2];

  return sub_227B4CC14();
}

uint64_t sub_227BDF450()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227BDF570()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_227D4B318();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4C378();
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4C398();
  v0[9] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[10] = v12;
  v14 = *(v13 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4C358();
  v0[12] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[13] = v16;
  v18 = *(v17 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85A0, &qword_227D59C00);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4C3B8();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4B308();
  v0[17] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[18] = v26;
  v28 = *(v27 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227BDF76C()
{
  v1 = v0[19];
  v2 = v0[4];
  v3 = sub_227BDFE5C();
  v4 = MEMORY[0x22AAA3FF0](v3);
  if (v5 & 1) != 0 && (v6 = v0[19], v7 = MEMORY[0x22AAA4010](v4), (v8) && (v9 = v0[19], MEMORY[0x22AAA4030](v7), (v10) && (v11 = v0[19], sub_227D4B288(), (v12))
  {
    sub_227BDFFD8();
    swift_allocError();
    swift_willThrow();
    v13 = OUTLINED_FUNCTION_59();
    v14(v13);
    v15 = v0[19];
    v17 = v0[15];
    v16 = v0[16];
    OUTLINED_FUNCTION_13_11();

    OUTLINED_FUNCTION_18();

    return v18();
  }

  else
  {
    v20 = v0[15];
    (*(v0[18] + 16))(v20, v0[19], v0[17]);
    v21 = sub_227D4C338();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    sub_227BE002C();
    sub_227D4D1F8();
    OUTLINED_FUNCTION_15();
    sub_227D4BCB8();
    v22 = *(MEMORY[0x277D0C760] + 4);
    v23 = swift_task_alloc();
    v0[20] = v23;
    sub_227D4ACB8();
    OUTLINED_FUNCTION_133();
    *v23 = v24;
    v23[1] = sub_227BDF984;
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[14];
    v28 = v0[3];

    return MEMORY[0x282163F38](v25, v27, v26);
  }
}

uint64_t sub_227BDF984()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 168) = v0;

  (*(v8 + 8))(v7, v9);
  sub_227B1365C(v6, &qword_27D7E85A0, &qword_227D59C00);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227BDFB14()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[11];
  sub_227D4C3A8();
  if (v1)
  {
    v12 = v0[16];
    OUTLINED_FUNCTION_2_23();
    sub_227BE00D4(v13, v14);
    v15 = OUTLINED_FUNCTION_59();
    v16(v15);
    v17 = v0[19];
    v18 = v0[15];
    v19 = v0[16];
    OUTLINED_FUNCTION_13_11();

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_227D4C388();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_57_0();
    v11(v10);
    sub_227D4C368();
    sub_227BE00D4(v7, MEMORY[0x277D0C628]);
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[16];
    v24 = v0[17];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    sub_227B4D5E8(v26, v28, v0[2]);
    (*(v27 + 8))(v26, v28);
    OUTLINED_FUNCTION_2_23();
    sub_227BE00D4(v25, v29);
    v30 = *(v23 + 8);
    v31 = OUTLINED_FUNCTION_57_0();
    v32(v31);
    v33 = v0[19];
    v34 = v0[15];
    v35 = v0[16];
    v36 = v0[14];
    v37 = v0[11];
    v39 = v0[7];
    v38 = v0[8];

    OUTLINED_FUNCTION_18();
  }

  return v20();
}

uint64_t sub_227BDFCFC()
{
  v1 = v0[21];
  v2 = OUTLINED_FUNCTION_59();
  v3(v2);
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  OUTLINED_FUNCTION_13_11();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227BDFDB8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_227BDF570();
}

uint64_t sub_227BDFE5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85B8, &qword_227D59C08);
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = sub_227D4AEB8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  OUTLINED_FUNCTION_15();
  v7 = sub_227D4B278();
  MEMORY[0x22AAA2D50](v7);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4000]();
  }

  sub_227D4A018();
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4020]();
  }

  sub_227D4A028();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4040]();
  }

  result = sub_227D49FF8();
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    return sub_227D4B298();
  }

  return result;
}

uint64_t sub_227BDFF98()
{
  v0 = MEMORY[0x22AAA3FF0]();
  if (v1 & 1) != 0 && (v2 = MEMORY[0x22AAA4010](v0), (v3) && (MEMORY[0x22AAA4030](v2), (v4))
  {
    sub_227D4B288();
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t sub_227BDFFD8()
{
  result = qword_27D7E85A8;
  if (!qword_27D7E85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85A8);
  }

  return result;
}

unint64_t sub_227BE002C()
{
  result = qword_27D7E85B0;
  if (!qword_27D7E85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85B0);
  }

  return result;
}

unint64_t sub_227BE0080()
{
  result = qword_27D7E85D0;
  if (!qword_27D7E85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85D0);
  }

  return result;
}

uint64_t sub_227BE00D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227BE0128(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_227D4A3B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v12);
  v176 = sub_227D4A318();
  v13 = OUTLINED_FUNCTION_9(v176);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v175 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_4_17(&v130[-v21]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_4_17(&v130[-v24]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_17(&v130[-v28]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v30 = OUTLINED_FUNCTION_9(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v130[-v37];
  v171 = sub_227D4A3A8();
  v39 = *(*(v171 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v171);
  v166 = &v130[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  result = MEMORY[0x28223BE20](v42);
  v170 = &v130[-v46];
  v140 = a1;
  v47 = *(a1 + 24);
  v149 = *(v47 + 16);
  if (!v149)
  {
    return result;
  }

  v133 = v45;
  v148 = v47 + 32;
  v147 = (v44 + 104);
  v132 = v44 + 32;
  v157 = (v32 + 16);
  v145 = (v44 + 16);
  v174 = (v15 + 104);
  v48 = 0;
  v156 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v139 = (v9 + 32);
  v136 = v9;
  v134 = v9 + 40;
  v135 = v32;
  v158 = (v32 + 8);
  v146 = v44 + 8;
  v131 = *MEMORY[0x277D0D1B0];
  v142 = *MEMORY[0x277D0D1B8];
  v141 = *MEMORY[0x277D0D118];
  v173 = *MEMORY[0x277D0D140];
  v172 = *MEMORY[0x277D0D130];
  v144 = *MEMORY[0x277D0CEE8];
  v177 = xmmword_227D4E520;
  v153 = v29;
  v159 = v4;
  v138 = v6;
  v143 = v38;
  while (1)
  {
    v164 = v48;
    v49 = (v148 + 56 * v48);
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v184 = *(v49 + 6);
    v182 = v51;
    v183 = v52;
    v181 = v50;
    sub_227BE1018(&v181, v179);
    sub_227BA74A0();
    sub_227D4D148();
    sub_227D4D148();
    if (v180[0] == v179[0] && v180[1] == v179[1])
    {
    }

    else
    {
      v54 = sub_227D4DA78();

      if ((v54 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v55 = *(v140 + 56);
    v56 = sub_227BA66BC();
    if (!*(v55 + 16))
    {

LABEL_16:
      v69 = OUTLINED_FUNCTION_1_19(v179);
      v70(v69, v142, v171);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85D8, &qword_227D5BC20);
      v71 = sub_227D4A2D8();
      OUTLINED_FUNCTION_9(v71);
      v73 = v72;
      v75 = *(v74 + 72);
      v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = v177;
      v78 = *(v73 + 104);
      v165 = v77;
      v78(v77 + v76, v141, v71);
      goto LABEL_17;
    }

    v58 = sub_227B2664C(v56, v57);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      goto LABEL_16;
    }

    v61 = *(*(v55 + 56) + 8 * v58);
    if (!v61[2])
    {
      goto LABEL_16;
    }

    v63 = v61[5];
    v62 = v61[6];
    v64 = v61[7];
    sub_227D4CE58();
    sub_227D4CE58();
    v65 = v133;
    sub_227D4A608();
    if (v3)
    {
      sub_227BE1074(&v181);
    }

    v66 = v171;
    (*v147)(v65, v131, v171);
    v67 = OUTLINED_FUNCTION_1_19(&v165);
    v68(v67, v65, v66);
    v165 = MEMORY[0x277D84F90];
LABEL_17:
    sub_227BA66BC();
    sub_227D4A658();
    if (v3)
    {
      v128 = OUTLINED_FUNCTION_1_19(v178);
      v129(v128, v171);

      sub_227BE1074(&v181);
    }

    v160 = 0;
    v79 = v4;

    v80 = *(&v182 + 1);
    v163 = v182;
    v81 = v181;
    v82 = *v157;
    (*v157)(v169, v38, v29);
    v162 = sub_227BA66BC();
    v161 = v83;
    v154 = v82;
    v82(v167, v38, v29);
    v84 = sub_227D4AA38();
    __swift_storeEnumTagSinglePayload(v168, 1, 1, v84);
    (*v145)(v166, v170, v171);
    v85 = *(v81 + 16);
    if (v85)
    {
      v179[0] = MEMORY[0x277D84F90];
      v155 = v80;
      sub_227D4CE58();
      sub_227BE14B0(0, v85, 0);
      v86 = v179[0];
      v87 = (v81 + 32);
      v88 = *(sub_227D4A328() - 8);
      v185 = *(v88 + 72);
      v89 = *(v88 + 80);
      do
      {
        v91 = *v87++;
        v90 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
        v92 = swift_allocObject();
        *(v92 + 16) = v177;
        v93 = v173;
        if (v91 == 1)
        {
          v93 = v172;
        }

        if (v90)
        {
          v94 = v93;
        }

        else
        {
          v94 = v172;
        }

        v95 = v92;
        (*v174)(v175, v94, v176);
        sub_227D4A2E8();
        v179[0] = v86;
        v97 = *(v86 + 16);
        v96 = *(v86 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_227BE14B0((v96 > 1), v97 + 1, 1);
          v86 = v179[0];
        }

        *(v86 + 16) = v97 + 1;
        *(v86 + 8 * v97 + 32) = v95;
        --v85;
      }

      while (v85);
      v98 = v159;
      v6 = v138;
      v29 = v153;
    }

    else
    {
      sub_227D4CE58();
      v98 = v79;
    }

    v99 = sub_227D49F28();
    v100 = v152;
    (*(*(v99 - 8) + 104))(v152, v144, v99);
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v99);
    v101 = v151;
    sub_227D4A348();
    sub_227BE1074(&v181);
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v6);
    v102 = (*(*v98 + 384))(v179);
    v104 = v103;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v6);
    v106 = v158;
    v185 = v158 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (EnumTagSinglePayload == 1)
    {
      v107 = v102;
      sub_227BE14D0(v101);
      v108 = v137;
      v109 = v169;
      sub_227BE1158(v169, v137);
      sub_227BE14D0(v108);
      v110 = *v106;
      (*v106)(v109, v29);
      v38 = v143;
      v3 = v160;
      goto LABEL_42;
    }

    v165 = *v139;
    v165(v150, v101, v6);
    v111 = *v104;
    swift_isUniquelyReferenced_nonNull_native();
    v180[0] = *v104;
    v112 = v180[0];
    *v104 = 0x8000000000000000;
    v113 = sub_227BE10C8(v169);
    if (__OFADD__(*(v112 + 16), (v114 & 1) == 0))
    {
      break;
    }

    v115 = v113;
    v116 = v114;
    v107 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E8, qword_227D59C28);
    v117 = v180;
    if (sub_227D4D7C8())
    {
      v117 = v180[0];
      v118 = sub_227BE10C8(v169);
      v3 = v160;
      if ((v116 & 1) != (v119 & 1))
      {
        goto LABEL_50;
      }

      v115 = v118;
      OUTLINED_FUNCTION_3_18();
    }

    else
    {
      OUTLINED_FUNCTION_3_18();
      v3 = v160;
    }

    v121 = v180[0];
    if (v116)
    {
      (v117[5])(*(v180[0] + 56) + v117[9] * v115, v150, v6);
      v29 = v153;
    }

    else
    {
      *(v180[0] + 8 * (v115 >> 6) + 64) |= 1 << v115;
      v29 = v153;
      v154(v121[6] + *(v120 + 72) * v115, v169, v153);
      v165(v121[7] + v117[9] * v115, v150, v6);
      v122 = v121[2];
      v123 = __OFADD__(v122, 1);
      v124 = v122 + 1;
      if (v123)
      {
        goto LABEL_49;
      }

      v121[2] = v124;
    }

    v110 = *v158;
    (*v158)(v169, v29);
    v125 = *v104;
    *v104 = v121;

    v38 = v143;
LABEL_42:
    v48 = v164 + 1;
    v107(v179, 0);
    v110(v38, v29);
    v126 = OUTLINED_FUNCTION_1_19(v178);
    result = v127(v126, v171);
    v4 = v159;
    if (v48 == v149)
    {
      return result;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

unint64_t sub_227BE10C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  sub_227B3DB5C(&qword_27D7E85F0);
  v5 = sub_227D4CE98();

  return sub_227BE1300(a1, v5);
}

uint64_t sub_227BE1158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_227BE10C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E8, qword_227D59C28);
    sub_227D4D7C8();
    v11 = *(v19 + 48);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v19 + 56);
    v14 = sub_227D4A3B8();
    (*(*(v14 - 8) + 32))(a2, v13 + *(*(v14 - 8) + 72) * v8, v14);
    sub_227B3DB5C(&qword_27D7E85F0);
    sub_227D4D7E8();
    *v3 = v19;
    v15 = a2;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_227D4A3B8();
    v15 = a2;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

unint64_t sub_227BE1300(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B3DB5C(&qword_27D7E85F8);
    v10 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void *sub_227BE14B0(void *a1, int64_t a2, char a3)
{
  result = sub_227BE1538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_227BE14D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_227BE1538(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8600, &unk_227D5BC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E71E8, &unk_227D511A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_227BE1674()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  OUTLINED_FUNCTION_10_0(v3);
  v1[4] = v4;
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = sub_227D4A3B8();
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227BE1844()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v4;
  v0[17] = v3;
  if (v3)
  {
    v5 = v0[13];
    (*(v1 + 16))(v0[16], v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[14]);
    sub_227D4A838();
    v6 = v0[13];
    v0[20] = sub_227D4A6A8();
    v0[21] = v7;
    v17 = OUTLINED_FUNCTION_64();
    v18(v17);
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_0_38(v19);

    return sub_227CACB7C();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[5];
    v12 = v0[6];

    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_227BE1A88()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 184) = v0;

  if (v0)
  {

    v10 = sub_227BE2308;
  }

  else
  {
    v10 = sub_227BE1B98;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227BE1B98()
{
  v0[24] = v0[23];
  v1 = *(v0[3] + 96);
  v0[25] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[26] = *(*v1 + 96);
  v0[27] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE1BDC, v1);
}

uint64_t sub_227BE1BDC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  *(v0 + 224) = (*(v0 + 208))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BE1C40()
{
  v1 = v0[21];
  if (*(v0[28] + 16))
  {
    v2 = sub_227B2664C(v0[20], v0[21]);
    v4 = v3;

    if (v4)
    {
      v5 = *(*(v0[28] + 56) + 8 * v2);
      v0[29] = v5;

      v6 = *v5 + 368;
      v0[30] = *v6;
      v0[31] = v6 & 0xFFFFFFFFFFFFLL | 0x14E6000000000000;
      OUTLINED_FUNCTION_33();

      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v12 = v0[28];
  }

  else
  {
    v11 = v0[28];
  }

  v13 = v0[19];
  OUTLINED_FUNCTION_57_1(v0[5], v14, v15, v0[7]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_7_15();
  }

  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 >= v18 >> 1)
  {
    v17 = OUTLINED_FUNCTION_16_7(v18 > 1);
  }

  v21 = v0[4];
  v20 = v0[5];
  (*(v0[15] + 8))(v0[16], v0[14]);
  *(v17 + 16) = v19 + 1;
  v22 = *(v21 + 80);
  OUTLINED_FUNCTION_13_12();
  sub_227BE305C(v20, v23 + *(v21 + 72) * v19);
  OUTLINED_FUNCTION_12_7();
  if (v25)
  {
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_33();

    __asm { BRAA            X2, X16 }
  }

  v28 = OUTLINED_FUNCTION_5_14(v24);
  v29(v28);
  sub_227D4A838();
  if (v20)
  {
    v34 = OUTLINED_FUNCTION_11_14();
    v35(v34);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33();

    __asm { BRAA            X1, X16 }
  }

  v30 = v0[13];
  v0[20] = sub_227D4A6A8();
  v0[21] = v31;
  v32 = OUTLINED_FUNCTION_64();
  v33(v32);
  v38 = swift_task_alloc();
  v0[22] = v38;
  *v38 = v0;
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_33();

  return sub_227CACB7C();
}

uint64_t sub_227BE1F40()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  *(v0 + 256) = (*(v0 + 240))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BE1FA4()
{
  if (*(v0[32] + 16) && (v1 = sub_227BE10C8(v0[16]), (v2 & 1) != 0))
  {
    v4 = v0 + 6;
    v3 = v0[6];
    v47 = v0[19];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v7[2];
    v8(v0[9], *(v0[32] + 56) + v7[9] * v1, v6);

    v9 = v7[4];
    OUTLINED_FUNCTION_20_6();
    v10();
    v8(v3, v5, v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[19];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_7_15();
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v12 = OUTLINED_FUNCTION_16_7(v13 > 1);
    }

    v16 = v0[29];
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];

    (*(v19 + 8))(v17, v18);
  }

  else
  {
    v20 = v0[29];

    v4 = v0 + 5;
    v21 = v0[19];
    OUTLINED_FUNCTION_57_1(v0[5], v22, v23, v0[7]);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[19];
    if ((v24 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_7_15();
    }

    v14 = *(v12 + 16);
    v25 = *(v12 + 24);
    v15 = v14 + 1;
    if (v14 >= v25 >> 1)
    {
      v12 = OUTLINED_FUNCTION_16_7(v25 > 1);
    }
  }

  v26 = *v4;
  v27 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);
  *(v12 + 16) = v15;
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_13_12();
  sub_227BE305C(v26, v29 + *(v27 + 72) * v14);
  OUTLINED_FUNCTION_12_7();
  if (v31)
  {
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  v34 = OUTLINED_FUNCTION_5_14(v30);
  v35(v34);
  sub_227D4A838();
  if (v26)
  {
    v40 = OUTLINED_FUNCTION_11_14();
    v41(v40);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v0[13];
  v0[20] = sub_227D4A6A8();
  v0[21] = v37;
  v38 = OUTLINED_FUNCTION_64();
  v39(v38);
  v44 = swift_task_alloc();
  v0[22] = v44;
  *v44 = v0;
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_16_0();

  return sub_227CACB7C();
}

uint64_t sub_227BE2308()
{
  v0[24] = 0;
  v1 = *(v0[3] + 96);
  v0[25] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[26] = *(*v1 + 96);
  v0[27] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE1BDC, v1);
}

uint64_t sub_227BE2348()
{
  OUTLINED_FUNCTION_6();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[24] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[25] = v6;
  v8 = *(v7 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690) - 8) + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4A3B8();
  v1[28] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[29] = v11;
  v13 = *(v12 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227BE24A4()
{
  v1 = v0[21];
  v0[34] = sub_227D4A6A8();
  v0[35] = v2;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_227BE25C8;
  v4 = v0[23];
  OUTLINED_FUNCTION_128();

  return sub_227CACB7C();
}

uint64_t sub_227BE25C8()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 296) = v0;

  if (v0)
  {

    v10 = sub_227BE301C;
  }

  else
  {
    v10 = sub_227BE26D8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227BE26D8()
{
  v0[38] = v0[37];
  v1 = *(v0[23] + 96);
  v0[39] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[40] = *(*v1 + 96);
  v0[41] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE271C, v1);
}

uint64_t sub_227BE271C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  *(v0 + 336) = (*(v0 + 320))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BE2780()
{
  v1 = sub_227BD8C70(v0[34], v0[35], v0[42]);
  v0[43] = v1;

  if (!v1)
  {
    v4 = v0[35];
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[20];

    v8 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v5, v9, v10, v8);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    sub_227D4A948();
    v12 = v0[32];
    v11 = v0[33];
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[26];
    v15 = v0[27];

    v17 = v0[1];
LABEL_5:
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[38];
  sub_227B351A4(v0[34], v0[35], v0[22], v0 + 2);
  v0[44] = v2;
  v3 = v0[35];
  if (v2)
  {

    OUTLINED_FUNCTION_15_7();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_5;
  }

  v20 = v0[35];

  v21 = *v1 + 368;
  v0[45] = *v21;
  v0[46] = v21 & 0xFFFFFFFFFFFFLL | 0x14E6000000000000;
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227BE2978()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  *(v0 + 376) = (*(v0 + 360))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227BE29DC()
{
  v68 = v0;
  v1 = 0;
  v2 = *(v0 + 376);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v63 = *(v0 + 376);
  v64 = *(v0 + 232);
  v6 = -1;
  v7 = -1 << *(v63 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v66 = (*(v0 + 232) + 8);
  v10 = *(v0 + 352);
  v61 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v1;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 224);
    v62 = *(v64 + 72);
    (*(v64 + 16))(v12, *(v63 + 56) + v62 * (__clz(__rbit64(v8)) | (v1 << 6)), v14);
    v15 = *(v64 + 32);
    v15(v13, v12, v14);
    v16 = sub_227B39260();
    if (v10)
    {
      v53 = *(v0 + 376);
      v54 = *(v0 + 344);
      (*v66)(*(v0 + 264), *(v0 + 224));
      *(v0 + 80) = *(v0 + 16);
      sub_227B3DACC(v0 + 80);
      *(v0 + 128) = *(v0 + 32);
      OUTLINED_FUNCTION_20_6();
      sub_227B2746C(v55, v56, v57);
      *(v0 + 136) = *(v0 + 40);
      OUTLINED_FUNCTION_20_6();
      sub_227B2746C(v58, v59, v60);
      *(v0 + 144) = *(v0 + 48);
      sub_227B2746C(v0 + 144, &qword_27D7E6910, &qword_227D5BCC0);
      *(v0 + 152) = *(v0 + 56);
      sub_227B2746C(v0 + 152, &qword_27D7E6918, &qword_227D4E6A0);

      OUTLINED_FUNCTION_15_7();

      OUTLINED_FUNCTION_19_0();
LABEL_27:

      v52();
      return;
    }

    v8 &= v8 - 1;
    v17 = *(v0 + 264);
    if (v16)
    {
      v15(*(v0 + 248), *(v0 + 264), *(v0 + 224));
      v18 = v61;
      v67[0] = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_227BE49C4(0, *(v61 + 16) + 1, 1);
        v18 = v67[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_227BE49C4(v19 > 1, v20 + 1, 1);
        v18 = v67[0];
      }

      v21 = *(v0 + 248);
      v22 = *(v0 + 224);
      *(v18 + 16) = v20 + 1;
      v61 = v18;
      v15(v18 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + v20 * v62, v21, v22);
      v10 = 0;
    }

    else
    {
      (*v66)(*(v0 + 264), *(v0 + 224));
      v10 = 0;
    }
  }

  while (1)
  {
    v1 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v1 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v1);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v23 = *(v0 + 376);
  *(v0 + 64) = *(v0 + 16);
  sub_227B3DACC(v0 + 64);
  *(v0 + 96) = *(v0 + 32);
  sub_227B2746C(v0 + 96, &qword_27D7E68F0, &qword_227D5B840);
  *(v0 + 104) = *(v0 + 40);
  sub_227B2746C(v0 + 104, &qword_27D7E68F0, &qword_227D5B840);
  *(v0 + 112) = *(v0 + 48);
  sub_227B2746C(v0 + 112, &qword_27D7E6910, &qword_227D5BCC0);
  *(v0 + 120) = *(v0 + 56);
  sub_227B2746C(v0 + 120, &qword_27D7E6918, &qword_227D4E6A0);

  v67[0] = v61;

  sub_227BE31A0(v67);
  if (!v10)
  {

    v24 = v67[0];
    v25 = *(v67[0] + 16);
    if (v25)
    {
      v26 = *(v0 + 200);
      v67[0] = MEMORY[0x277D84F90];
      sub_227B3CAC8(0, v25, 0);
      v27 = v67[0];
      v28 = v24 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v65 = *(v64 + 72);
      v29 = *(v64 + 16);
      do
      {
        v30 = *(v0 + 240);
        v31 = *(v0 + 224);
        v32 = *(v0 + 208);
        OUTLINED_FUNCTION_20_6();
        v29();
        sub_227D4A368();
        (*v66)(v30, v31);
        v67[0] = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_227B3CAC8(v33 > 1, v34 + 1, 1);
          v27 = v67[0];
        }

        v35 = *(v0 + 208);
        v36 = *(v0 + 192);
        *(v27 + 16) = v34 + 1;
        v37 = *(v26 + 80);
        OUTLINED_FUNCTION_13_12();
        (*(v26 + 32))(v38 + *(v26 + 72) * v34);
        v28 += v65;
        --v25;
      }

      while (v25);
    }

    v39 = *(v0 + 344);
    v40 = *(v0 + 216);
    v41 = *(v0 + 192);
    v42 = *(v0 + 160);
    v43 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v40, v44, v45, v43);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    sub_227D4A948();

    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v51 = *(v0 + 208);
    v50 = *(v0 + 216);

    v52 = *(v0 + 8);
    goto LABEL_27;
  }
}

uint64_t sub_227BE301C()
{
  v0[38] = 0;
  v1 = *(v0[23] + 96);
  v0[39] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[40] = *(*v1 + 96);
  v0[41] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE271C, v1);
}

uint64_t sub_227BE305C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BE30CC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A3B8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A3B8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227BE31A0(size_t *a1)
{
  v2 = *(sub_227D4A3B8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227BE4B98(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_227BE3248(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_227BE3248(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
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
        sub_227D4A3B8();
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227D4A3B8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_227BE3698(v8, v9, a1, v4);
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
    return sub_227BE3378(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227BE3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227D4A3B8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_227D4A358();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_227D4A358() && v32 == v33)
        {
          break;
        }

        v35 = sub_227D4DA78();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227BE3698(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v8 = sub_227D4A3B8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v149 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v149 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v149 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v167 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v150 = &v149 - v24;
  result = MEMORY[0x28223BE20](v23);
  v155 = &v149 - v28;
  v165 = a3;
  v29 = a3[1];
  v163 = v26;
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_116:
    v176 = *v153;
    if (!v176)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

  v168 = result;
  v172 = v27;
  v149 = a4;
  v30 = 0;
  v176 = v26 + 16;
  v174 = (v26 + 32);
  v175 = (v26 + 8);
  v31 = MEMORY[0x277D84F90];
  v156 = v16;
  v166 = v20;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v30 + 1 < v29)
    {
      v160 = v29;
      v34 = v30;
      v35 = *v165;
      v36 = *(v26 + 72);
      v162 = v30 + 1;
      v37 = &v35[v36 * v33];
      v38 = *(v26 + 16);
      v39 = v168;
      (v38)(v155, v37, v168);
      v154 = v34;
      v164 = v36;
      v173 = v35;
      v40 = &v35[v36 * v34];
      v41 = v150;
      v159 = v38;
      (v38)(v150, v40, v39);
      v42 = sub_227D4A358();
      v44 = v43;
      if (v42 == sub_227D4A358() && v44 == v45)
      {
        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_227D4DA78();
      }

      if (v5)
      {
        v147 = *v175;
        v148 = v168;
        (*v175)(v41, v168);
        v147(v155, v148);
      }

      v151 = v31;
      v152 = 0;
      v47 = *v175;
      v48 = v168;
      (*v175)(v41, v168);
      v158 = v47;
      result = (v47)(v155, v48);
      v49 = (v154 + 2);
      v50 = v164 * (v154 + 2);
      v51 = v173 + v50;
      v52 = v164 * v162;
      v53 = v173 + v164 * v162;
      v54 = v162;
      do
      {
        v55 = v49;
        v5 = v54;
        v31 = v52;
        v56 = v50;
        if (v49 >= v160)
        {
          break;
        }

        v170 = v54;
        v173 = v50;
        v57 = v168;
        v58 = v159;
        (v159)(v167, v51, v168);
        (v58)(v166, v53, v57);
        v59 = sub_227D4A358();
        v61 = v60;
        v63 = v59 == sub_227D4A358() && v61 == v62;
        v169 = v31;
        v64 = v63 ? 0 : sub_227D4DA78();
        v56 = v173;
        v5 = v170;

        v65 = v168;
        v66 = v158;
        v158(v166, v168);
        result = v66(v167, v65);
        v49 = v55 + 1;
        v51 = &v164[v51];
        v53 = &v164[v53];
        v54 = v5 + 1;
        v31 = v169;
        v52 = &v164[v169];
        v50 = &v164[v56];
      }

      while (((v161 ^ v64) & 1) == 0);
      if (v161)
      {
        v67 = v154;
        v16 = v156;
        if (v55 < v154)
        {
          goto LABEL_152;
        }

        if (v154 >= v55)
        {
          v33 = v55;
          v5 = v152;
          v31 = v151;
          v32 = v154;
          goto LABEL_40;
        }

        v173 = v55;
        v68 = v154 * v164;
        do
        {
          if (v67 != v5)
          {
            v69 = *v165;
            if (!*v165)
            {
              goto LABEL_157;
            }

            v70 = *v174;
            v71 = v168;
            (*v174)(v157, &v69[v68], v168);
            v72 = v68 < v31 || &v69[v68] >= &v69[v56];
            if (v72)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v70)(&v69[v31], v157, v71);
            v16 = v156;
          }

          ++v67;
          v31 -= v164;
          v56 -= v164;
          v68 += v164;
          v73 = v67 < v5--;
        }

        while (v73);
        v33 = v173;
        v5 = v152;
        v31 = v151;
      }

      else
      {
        v33 = v55;
        v5 = v152;
        v31 = v151;
        v16 = v156;
      }

      v32 = v154;
    }

LABEL_40:
    v74 = v165[1];
    if (v33 < v74)
    {
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_149;
      }

      if (v33 - v32 < v149)
      {
        break;
      }
    }

LABEL_63:
    if (v33 < v32)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v162 = v33;
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v97 = *(v31 + 16);
    v96 = *(v31 + 24);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      result = sub_227B63228((v96 > 1), v97 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 16) = v98;
    v99 = v31 + 32;
    v100 = (v31 + 32 + 16 * v97);
    v101 = v162;
    *v100 = v32;
    v100[1] = v101;
    v173 = *v153;
    if (!v173)
    {
      goto LABEL_158;
    }

    if (v97)
    {
      while (1)
      {
        v102 = v98 - 1;
        v103 = (v99 + 16 * (v98 - 1));
        v104 = (v31 + 16 * v98);
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v105 = *(v31 + 32);
          v106 = *(v31 + 40);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_83:
          if (v108)
          {
            goto LABEL_135;
          }

          v120 = *v104;
          v119 = v104[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_138;
          }

          v124 = v103[1];
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_143;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v98 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v98 < 2)
        {
          goto LABEL_137;
        }

        v127 = *v104;
        v126 = v104[1];
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_98:
        if (v123)
        {
          goto LABEL_140;
        }

        v129 = *v103;
        v128 = v103[1];
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_142;
        }

        if (v130 < v122)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v102 - 1 >= v98)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v165)
        {
          goto LABEL_155;
        }

        v134 = v31;
        v135 = (v99 + 16 * (v102 - 1));
        v31 = *v135;
        v136 = v99;
        v137 = v102;
        v138 = (v99 + 16 * v102);
        v139 = v138[1];
        sub_227BE42DC(&(*v165)[*(v163 + 72) * *v135], &(*v165)[*(v163 + 72) * *v138], &(*v165)[*(v163 + 72) * v139], v173);
        if (v5)
        {
        }

        if (v139 < v31)
        {
          goto LABEL_130;
        }

        v5 = *(v134 + 16);
        if (v137 > v5)
        {
          goto LABEL_131;
        }

        *v135 = v31;
        v135[1] = v139;
        if (v137 >= v5)
        {
          goto LABEL_132;
        }

        v98 = v5 - 1;
        result = memmove(v138, v138 + 2, 16 * (v5 - 1 - v137));
        v31 = v134;
        *(v134 + 16) = v5 - 1;
        v73 = v5 > 2;
        v5 = 0;
        v99 = v136;
        if (!v73)
        {
          goto LABEL_112;
        }
      }

      v109 = v99 + 16 * v98;
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_133;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_134;
      }

      v116 = v104[1];
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_136;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_139;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = v103[1];
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_147;
        }

        if (v107 < v133)
        {
          v102 = v98 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v29 = v165[1];
    v30 = v162;
    v26 = v163;
    v16 = v156;
    if (v162 >= v29)
    {
      goto LABEL_116;
    }
  }

  v75 = (v32 + v149);
  if (__OFADD__(v32, v149))
  {
    goto LABEL_150;
  }

  if (v75 >= v74)
  {
    v75 = v165[1];
  }

  if (v75 < v32)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    result = sub_227B65968(v31);
    v31 = result;
LABEL_118:
    v140 = (v31 + 16);
    v141 = *(v31 + 16);
    while (v141 >= 2)
    {
      if (!*v165)
      {
        goto LABEL_156;
      }

      v142 = v31;
      v31 += 16 * v141;
      v143 = *v31;
      v144 = &v140[2 * v141];
      v145 = v144[1];
      sub_227BE42DC(&(*v165)[*(v163 + 72) * *v31], &(*v165)[*(v163 + 72) * *v144], &(*v165)[*(v163 + 72) * v145], v176);
      if (v5)
      {
        break;
      }

      if (v145 < v143)
      {
        goto LABEL_144;
      }

      if (v141 - 2 >= *v140)
      {
        goto LABEL_145;
      }

      *v31 = v143;
      *(v31 + 8) = v145;
      v146 = *v140 - v141;
      if (*v140 < v141)
      {
        goto LABEL_146;
      }

      v141 = *v140 - 1;
      result = memmove(v144, v144 + 2, 16 * v146);
      *v140 = v141;
      v31 = v142;
    }
  }

  if (v33 == v75)
  {
    goto LABEL_63;
  }

  v151 = v31;
  v152 = v5;
  v76 = *v165;
  v77 = *(v163 + 72);
  v173 = *(v163 + 16);
  v78 = &v76[v77 * (v33 - 1)];
  v169 = -v77;
  v154 = v32;
  v79 = v32 - v33;
  v170 = v76;
  v158 = v77;
  v159 = v75;
  v80 = &v76[v33 * v77];
  v81 = v172;
  v82 = v168;
LABEL_49:
  v161 = v79;
  v162 = v33;
  v160 = v80;
  v164 = v78;
  while (1)
  {
    v83 = v173;
    v173(v81, v80, v82);
    v83(v16, v78, v82);
    v84 = sub_227D4A358();
    v85 = v81;
    v86 = v16;
    v88 = v87;
    if (v84 == sub_227D4A358() && v88 == v89)
    {

      v95 = *v175;
      (*v175)(v86, v82);
      v95(v81, v82);
      v16 = v86;
      goto LABEL_61;
    }

    v91 = sub_227D4DA78();

    v92 = *v175;
    (*v175)(v86, v82);
    result = (v92)(v85, v82);
    v16 = v86;
    if ((v91 & 1) == 0)
    {
      v81 = v172;
LABEL_61:
      v33 = v162 + 1;
      v78 = v158 + v164;
      v79 = v161 - 1;
      v80 = v158 + v160;
      if ((v162 + 1) == v159)
      {
        v33 = v159;
        v5 = v152;
        v31 = v151;
        v32 = v154;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if (!v170)
    {
      break;
    }

    v93 = *v174;
    v94 = v171;
    (*v174)(v171, v80, v82);
    swift_arrayInitWithTakeFrontToBack();
    v93(v78, v94, v82);
    v78 += v169;
    v80 += v169;
    v72 = __CFADD__(v79++, 1);
    v81 = v172;
    if (v72)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_227BE42DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_227D4A3B8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_227BE30CC(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_227D4A358();
      v37 = v36;
      if (v35 == sub_227D4A358() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_227D4DA78();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_227BE30CC(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_227D4A358();
    v55 = v54;
    if (v53 == sub_227D4A358() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_227D4DA78();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_227BE48E4(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_227BE48E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D4A3B8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_227BE49C4(size_t a1, int64_t a2, char a3)
{
  result = sub_227BE49E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_227BE49E4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8608, &unk_227D5BBD0);
  v10 = *(sub_227D4A3B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D4A3B8() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227BE30CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void OUTLINED_FUNCTION_12_7()
{
  v2 = v1[24];
  v3 = v1[17];
  ++v1[18];
  v1[19] = v0;
  v4 = v1[16];
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
}

uint64_t sub_227BE4C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  OUTLINED_FUNCTION_378();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D4E520;
  v1 = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  OUTLINED_FUNCTION_1_20();
  v3 = sub_227C164D0(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t sub_227BE4CA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE4CF8();
  *a2 = result;
  return result;
}

void sub_227BE4CCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BE4DC8();
}

void sub_227BE4DC8()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_12_8();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE4E68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE4EAC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE4F68()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_12_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE5008@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE504C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE5108()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_12_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE51A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE51EC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE52A4()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_12_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE5344()
{
  v1 = OUTLINED_FUNCTION_407();
  type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB8, &qword_227D5BBA0);
  OUTLINED_FUNCTION_12_8();
  sub_227C164D0(&unk_280E7BC70);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v3 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v0 + 16) = 257;
  sub_227D494B8();
  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227BE52A4();
  return v0;
}

uint64_t sub_227BE54E8()
{
  OUTLINED_FUNCTION_104_0();
  v0 = sub_227BE4EAC();
  v2 = v1;
  if (v0 == sub_227BE4EAC() && v2 == v3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_201();
    v5 = sub_227D4DA78();

    v7 = 0;
    if ((v5 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v8 = sub_227BE504C(v6);
  v10 = v9;
  if (v8 == sub_227BE504C(v8) && v10 == v11)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_253();
    v7 = sub_227D4DA78();
  }

  return v7 & 1;
}

void sub_227BE55F8()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_81_3(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_308_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_443(v7, xmmword_227D59C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_431(0x6564u);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_578();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9170, &qword_227D5BD80);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_528(v8, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v9);
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_166_2(v12);
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_469(v14);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349();
  v15 = OUTLINED_FUNCTION_100_3();
  v19 = sub_227C10AC0(v15, v16, v17, v18);
  OUTLINED_FUNCTION_159_2(v19);
  if (v21)
  {
    v24 = OUTLINED_FUNCTION_55(v20);
    sub_227C10AC0(v24, v25, v26, v19);
  }

  v22 = OUTLINED_FUNCTION_120_1();
  v23(v22);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BE58D0()
{
  OUTLINED_FUNCTION_616();
  OUTLINED_FUNCTION_142_3();
  v1 = OUTLINED_FUNCTION_411();
  type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB8, &qword_227D5BBA0);
  OUTLINED_FUNCTION_12_8();
  sub_227C164D0(&unk_280E7BC70);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 257;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BE59A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227BE54E8();
}

uint64_t sub_227BE59B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE5A08();
  *a2 = result;
  return result;
}

void sub_227BE59DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BE5AD8();
}

void sub_227BE5AD8()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_9_8();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE5B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE5BBC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE5C78()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_9_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE5D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE5D5C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE5E18()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_9_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE5EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE5EFC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE5FB8()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_9_8();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE6058()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_397_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));
  v0(v2, v1 + 24);
  return swift_endAccess();
}

void sub_227BE60B4()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_81_3(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_308_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_443(v7, xmmword_227D59C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_431(0x6564u);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_566();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9158, &qword_227D5BD48);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_528(v8, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v9);
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_166_2(v12);
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_469(v14);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349();
  v15 = OUTLINED_FUNCTION_100_3();
  v19 = sub_227C10AC0(v15, v16, v17, v18);
  OUTLINED_FUNCTION_159_2(v19);
  if (v21)
  {
    v24 = OUTLINED_FUNCTION_55(v20);
    sub_227C10AC0(v24, v25, v26, v19);
  }

  v22 = OUTLINED_FUNCTION_120_1();
  v23(v22);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BE634C()
{
  OUTLINED_FUNCTION_616();
  OUTLINED_FUNCTION_142_3();
  v1 = OUTLINED_FUNCTION_411();
  type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.LeaderboardMetadata(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E38, &qword_227D5BAF0);
  OUTLINED_FUNCTION_9_8();
  sub_227C164D0(&unk_280E7BC50);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 1;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BE6420(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 3);
  v3 = *a1;
  v4 = sub_227D494C8();
  OUTLINED_FUNCTION_15_6(v4);
  (*(v5 + 8))(v1 + v3);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v6, v7);
}

uint64_t sub_227BE64B8(unsigned __int8 a1, char a2)
{
  v2 = 0x657669746361;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 7237495;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x657669746361;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      v2 = 7237495;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BE65A8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65636E6174736E69;
  }

  else
  {
    v3 = 0x6974696E69666564;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x65636E6174736E69;
  }

  else
  {
    v5 = 0x6974696E69666564;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BE6664()
{
  sub_227D4D048();
}

uint64_t sub_227BE66E8()
{
  sub_227D4D048();
}

uint64_t sub_227BE6758()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BE67DC()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BE6874()
{
  OUTLINED_FUNCTION_37();
  v3 = v1 == OUTLINED_FUNCTION_521() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6874646977 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x746867696568 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003172;
        if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003272;
          if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v9 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003372;
            if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v10 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003472;
              if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else if (v1 == OUTLINED_FUNCTION_503() && v0 == v11)
              {

                return 7;
              }

              else
              {
                v13 = OUTLINED_FUNCTION_5_1();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BE6A3C()
{
  result = OUTLINED_FUNCTION_521();
  switch(v1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_601();
      break;
    case 7:
      result = OUTLINED_FUNCTION_503();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BE6B30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227BE6874();
  *a1 = result;
  return result;
}

uint64_t sub_227BE6B64()
{
  sub_227C1CEF4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BE6B9C()
{
  sub_227C1CEF4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BE6BD4(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91A8, &qword_227D5BFC0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_103();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_256(v13, v14);
  sub_227C1CEF4();
  sub_227D4DC08();
  v15 = *v3;
  v16 = v3[1];
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v2)
  {
    v17 = v3[2];
    sub_227D4D9E8();
    v18 = v3[3];
    sub_227D4D9E8();
    v19 = v3[4];
    v20 = v3[5];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v21 = v3[6];
    v22 = v3[7];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v23 = v3[8];
    v24 = v3[9];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v25 = v3[10];
    v26 = v3[11];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v27 = v3[12];
    v28 = v3[13];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
  }

  v29 = *(v7 + 8);
  v30 = OUTLINED_FUNCTION_193();
  return v31(v30);
}

void *sub_227BE6DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B0, &qword_227D5BFC8);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_2();
  v12 = a1[3];
  v13 = a1[4];
  v14 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_256(v14, v15);
  sub_227C1CEF4();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v43[0]) = 0;
  v16 = sub_227D4D8F8();
  v18 = v17;
  OUTLINED_FUNCTION_66(1);
  sub_227D4D918();
  v20 = v19;
  OUTLINED_FUNCTION_66(2);
  sub_227D4D918();
  v22 = v21;
  OUTLINED_FUNCTION_66(3);
  v38 = sub_227D4D8A8();
  OUTLINED_FUNCTION_66(4);
  v37 = sub_227D4D8A8();
  v41 = v23;
  OUTLINED_FUNCTION_66(5);
  v36 = sub_227D4D8A8();
  v40 = v24;
  OUTLINED_FUNCTION_66(6);
  v35 = sub_227D4D8A8();
  v39 = v25;
  v44 = 7;
  v26 = sub_227D4D8A8();
  v34 = v27;
  (*(v8 + 8))(v3, v6);
  __src[0] = v16;
  __src[1] = v18;
  __src[2] = v20;
  __src[3] = v22;
  __src[4] = v38;
  OUTLINED_FUNCTION_458();
  __src[5] = v28;
  __src[6] = v37;
  __src[7] = v41;
  OUTLINED_FUNCTION_455(v36);
  __src[9] = v40;
  __src[10] = v35;
  __src[11] = v39;
  __src[12] = v26;
  __src[13] = v34;
  sub_227C1CF48(__src, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v43[0] = v16;
  v43[1] = v18;
  v43[2] = v20;
  v43[3] = v22;
  OUTLINED_FUNCTION_458();
  v43[4] = v30;
  v43[5] = v29;
  v43[6] = v37;
  v43[7] = v41;
  OUTLINED_FUNCTION_457();
  v43[8] = v32;
  v43[9] = v31;
  v43[10] = v35;
  v43[11] = v39;
  v43[12] = v26;
  v43[13] = v34;
  sub_227C1CF80(v43);
  return memcpy(a2, __src, 0x70uLL);
}

void *sub_227BE725C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BE6DD4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_227BE7378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE72C4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE73BC()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE750C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE7458();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE7550()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE76B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE75EC();
  *a2 = result;
  return result;
}

void sub_227BE76E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  sub_227BE818C();
}

void sub_227BE7848()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_20();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();

  v3 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v1);
  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE79C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE790C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE7A08()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE7B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE7AA4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE7B9C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE7CF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE7C38();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE7D34()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void *sub_227BE7DD0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_329(&unk_280E7BC58);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_329(&unk_280E7BC60);
  sub_227C17308(&unk_27D7E8670);
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  memcpy(__dst, v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x70uLL);
}

void *sub_227BE7F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227BE7DD0(v5);
  return memcpy(a2, v5, 0x70uLL);
}

void sub_227BE7F44(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  sub_227B17738();
  sub_227BE7FAC();
}

void sub_227BE7FAC()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_20();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();
  sub_227C1CB1C(v1, &qword_27D7E8660);

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE8118@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE805C();
  *a2 = result;
  return result;
}

void sub_227BE8144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  sub_227BE818C();
}

void sub_227BE818C()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE823C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE8230();
  *a2 = result & 1;
  return result;
}

void sub_227BE826C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227BE85B8();
}

uint64_t sub_227BE838C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE82B0();
  *a2 = result;
  return result;
}

void sub_227BE83B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BE83E4();
}

void sub_227BE83E4()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE8544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE8484();
  *a2 = result & 1;
  return result;
}

void sub_227BE8574(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227BE85B8();
}

void sub_227BE85B8()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE870C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE8658();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE8750()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_389();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_1_20();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BE87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  OUTLINED_FUNCTION_351();
  v31 = v30;
  v94 = v32;
  v90 = v33;
  v35 = v34;
  v37 = v36;
  v92 = v38;
  v39 = *v30;
  v95 = sub_227D492A8();
  v40 = OUTLINED_FUNCTION_9(v95);
  v97 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v44);
  v31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB0, &qword_227D5BB98);
  OUTLINED_FUNCTION_1_20();
  v96[0] = v39;
  v96[1] = v39;
  v96[2] = sub_227C164D0(&unk_280E7BC60);
  v96[3] = v96[2];
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v31 + 4) = 16843009;
  v47 = OBJC_IVAR____TtCV16GameServicesCoreP33_2D441778A4A5881EFABEBF590F5A619432ChallengeDefinitionStoreSchemaV110Definition___observationRegistrar;
  sub_227D494B8();
  if (sub_227B4BF3C(v37))
  {
    v91 = v35;
    v48 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_390();
    sub_227D4CAD8();

    v49 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v49, v50);
    swift_getKeyPath();
    v96[1] = v92;
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    v51 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v51, v52);
    swift_getKeyPath();
    v96[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8690, &qword_227D5B2A0);
    v53 = OUTLINED_FUNCTION_407();
    type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(v53);
    sub_227C17660();
    sub_227D4CAC8();

    (*(v97 + 16))(v89, v91, v95);
    v54 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v54, v55);
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_10();
    sub_227C1CC14(v56);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    v93 = *(v97 + 8);
    v57 = OUTLINED_FUNCTION_574();
    v58(v57);
    v59 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v96[0] = v90;
    v96[1] = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    sub_227C1740C();
    OUTLINED_FUNCTION_434();
    sub_227D4CAD8();

    *(v31 + 16) = 0;
    v60 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v96[0] = a21;
    v96[1] = a22;
    sub_227D4CAD8();

    v61 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_458();
    v96[0] = v62;
    v96[1] = a24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    OUTLINED_FUNCTION_434();
    sub_227D4CAD8();

    *(v31 + 17) = 0;
    v63 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v63, v64);
    swift_getKeyPath();
    memcpy(v96, a25, sizeof(v96));
    v65 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    OUTLINED_FUNCTION_260();
    sub_227C17308(v67);
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    OUTLINED_FUNCTION_364();
    sub_227C1CB1C(v68, v69);
    *(v31 + 18) = 0;
    v70 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v70, v71);
    swift_getKeyPath();
    v96[0] = a26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227C170F8();
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    v72 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    LOBYTE(v96[0]) = a27 & 1;
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    v73 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v74 = OUTLINED_FUNCTION_407();
    type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.LeaderboardMetadata(v74);
    OUTLINED_FUNCTION_9_8();
    sub_227C164D0(v75);

    OUTLINED_FUNCTION_358();
    sub_227D4CAE8();

    *(v31 + 19) = 0;
    v76 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    LOBYTE(v96[0]) = a29 & 1;
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    if (a30)
    {
      v77 = 0x646567617473;
    }

    else
    {
      v77 = 1702259052;
    }

    if (a30)
    {
      v78 = 0xE600000000000000;
    }

    else
    {
      v78 = 0xE400000000000000;
    }

    v79 = v31[7];
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v96[0] = v77;
    v96[1] = v78;
    sub_227D4CAD8();

    v93(v91, v95);
  }

  else
  {

    sub_227C1CB1C(a25, &qword_27D7E8660);

    v80 = sub_227D49E08();
    OUTLINED_FUNCTION_20_7();
    sub_227C1CC14(v81);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_207_0(v82, "platformMetas can't be empty");
    v83 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v80);
    (*(v84 + 104))();
    swift_willThrow();

    (*(v97 + 8))(v35, v95);
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 3);
    v85 = sub_227D494C8();
    OUTLINED_FUNCTION_15_6(v85);
    (*(v86 + 8))(v31 + v47);
    v87 = *(*v31 + 48);
    v88 = *(*v31 + 52);
    OUTLINED_FUNCTION_58();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_352();
}

void sub_227BE915C()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_450(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v44 = v4;
  OUTLINED_FUNCTION_191_2();
  v43 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  v13 = *(v0 + 72);
  OUTLINED_FUNCTION_531();
  *(swift_allocObject() + 16) = xmmword_227D59C60;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_566();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v14 = OUTLINED_FUNCTION_148_1();
  v42 = *MEMORY[0x277CDD5A0];
  v41 = *(v6 + 104);
  v41(v12, v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  v15 = sub_227D4CD58();
  OUTLINED_FUNCTION_166_2(v15);
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_257();
  v17 = sub_227C1CC14(v16);
  OUTLINED_FUNCTION_530(v17);
  OUTLINED_FUNCTION_578();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v18 = OUTLINED_FUNCTION_148_1();
  (v41)(v12, v42, v43, v18);
  swift_getKeyPath();
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  v21 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8640, &unk_227D5B270);
  OUTLINED_FUNCTION_378();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227D4F750;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_227D59C70;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  *(v23 + 48) = swift_getKeyPath();
  *(v22 + 32) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_227D59C70;
  *(v24 + 32) = swift_getKeyPath();
  *(v24 + 40) = swift_getKeyPath();
  *(v24 + 48) = swift_getKeyPath();
  *(v22 + 40) = v24;
  v25 = OUTLINED_FUNCTION_9_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_166_2(v27);
  swift_allocObject();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_85_1();
  v29 = sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_530(v29);
  OUTLINED_FUNCTION_146_2();
  OUTLINED_FUNCTION_349();
  v30 = OUTLINED_FUNCTION_100_3();
  v33 = sub_227C10AC0(v30, v31, v32, v21);
  OUTLINED_FUNCTION_159_2(v33);
  if (v35)
  {
    v38 = OUTLINED_FUNCTION_55(v34);
    sub_227C10AC0(v38, v39, v40, v33);
  }

  v36 = OUTLINED_FUNCTION_485();
  v37(v36, v44);
  OUTLINED_FUNCTION_611();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BE9808()
{
  OUTLINED_FUNCTION_616();
  v1 = OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_312(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB0, &qword_227D5BB98);
  OUTLINED_FUNCTION_1_20();
  sub_227C164D0(&unk_280E7BC60);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 16843009;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BE98F4()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BE72C0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_227BE9920()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B8, &qword_227D5BFD0);
  OUTLINED_FUNCTION_378();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227D4E520;
  v3 = v1();
  *(v2 + 32) = v0;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t sub_227BE99B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D50C20;
  v1 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Invitee(0);
  OUTLINED_FUNCTION_6_11();
  v2 = sub_227C164D0(&unk_280E7BC30);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Participant(0);
  OUTLINED_FUNCTION_5_15();
  v4 = OUTLINED_FUNCTION_138_0();
  v5 = sub_227C164D0(v4);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  v7 = sub_227C164D0(&unk_280E7BC20);
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  return v0;
}

uint64_t sub_227BE9B80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE9AC0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BE9BC4()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_6_11();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BE9D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BE9C64();
  *a2 = result;
  return result;
}

void sub_227BE9D64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BE9D90();
}

void sub_227BE9D90()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_6_11();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

void sub_227BE9F68()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_6_11();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();

  v3 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v1);
  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BEA0EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEA02C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEA130()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_6_11();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BEA28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEA1D0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEA2D0()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_6_11();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BEA370()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v30 = v2;
  v29 = v3;
  v4 = *v0;
  v5 = sub_227D492A8();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8818, &qword_227D5B780);
  OUTLINED_FUNCTION_6_11();
  sub_227C164D0(&unk_280E7BC30);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v1 + 8) = 257;
  sub_227D494B8();
  v16 = v1[6];
  v17 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  v18 = v1[6];
  v19 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  sub_227C164D0(&unk_280E7BC20);
  sub_227D4CAE8();

  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_588();
  v20(v13, v29, v5);
  v21 = v1[6];
  v22 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v23);
  OUTLINED_FUNCTION_149_0();
  sub_227D4CAD8();

  v24 = *(v8 + 8);
  v25 = OUTLINED_FUNCTION_233();
  v24(v25);
  v26 = v1[6];
  v27 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  switch(v30)
  {
    case 3:
    case 4:
    case 6:
      OUTLINED_FUNCTION_3_7();
      break;
    default:
      break;
  }

  sub_227BEA2D0();
  v28 = OUTLINED_FUNCTION_262();
  v24(v28);
  OUTLINED_FUNCTION_8_1();
}

void sub_227BEA7A0()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_81_3(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_308_0();
  *(swift_allocObject() + 16) = xmmword_227D59C80;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_475(v7);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8698, &qword_227D5B348);
  OUTLINED_FUNCTION_378();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227D4F750;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v9 = swift_allocObject();
  v9[2].n128_u64[0] = OUTLINED_FUNCTION_528(v9, xmmword_227D59C50);
  *(v8 + 32) = v9;
  OUTLINED_FUNCTION_198_2();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_227D59C50;
  *(v10 + 32) = swift_getKeyPath();
  *(v8 + 40) = v10;
  v11 = OUTLINED_FUNCTION_276();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_166_2(v13);
  swift_allocObject();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_416();
  v15 = sub_227B1A6E4(v14);
  OUTLINED_FUNCTION_469(v15);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  v16 = OUTLINED_FUNCTION_100_3();
  v20 = sub_227C10AC0(v16, v17, v18, v19);
  OUTLINED_FUNCTION_159_2(v20);
  if (v22)
  {
    v25 = OUTLINED_FUNCTION_55(v21);
    sub_227C10AC0(v25, v26, v27, v20);
  }

  v23 = OUTLINED_FUNCTION_120_1();
  v24(v23);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BEAAAC()
{
  OUTLINED_FUNCTION_616();
  v1 = OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_312(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8818, &qword_227D5B780);
  OUTLINED_FUNCTION_6_11();
  sub_227C164D0(&unk_280E7BC30);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 257;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BEAB98()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BE9AC0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_227BEAC84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEABC0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEACC8()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BEAE38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEAD68();
  *a2 = result;
  return result;
}

void sub_227BEAE64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BEAE90();
}

void sub_227BEAE90()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BEAFF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEAF30();
  *a2 = result;
  return result;
}

void sub_227BEB024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227BEB04C();
}

void sub_227BEB04C()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BEB1A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEB0E4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEB1E8()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BEB2A8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227BEB288();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_227BEB2DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_227BEB4B0();
}

void sub_227BEB34C()
{
  OUTLINED_FUNCTION_255();
  v1 = v0;
  swift_getKeyPath();
  sub_227C164D0(&unk_280E7BC08);
  OUTLINED_FUNCTION_510();

  swift_getKeyPath();
  OUTLINED_FUNCTION_34_4();
  v2 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v2);
  v1();
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  OUTLINED_FUNCTION_254();
}

void sub_227BEB42C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227BEB32C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_227BEB460(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_227BEB4B0();
}

uint64_t sub_227BEB4B0()
{
  OUTLINED_FUNCTION_579();
  swift_getKeyPath();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_410();
}

void *sub_227BEB540()
{
  v1 = v0;
  v2 = *v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8810, &qword_227D5B778);
  OUTLINED_FUNCTION_5_15();
  sub_227C164D0(&unk_280E7BC10);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v1 + 4) = 16843009;
  sub_227D494B8();
  v5 = OUTLINED_FUNCTION_153_2();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  swift_getKeyPath();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  v7 = v1[6];
  v8 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_525();
  sub_227D4CAE8();

  *(v1 + 16) = 0;
  v9 = v1[6];
  v10 = v1[7];
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227BEB1E8();
  sub_227BEB4B0();
  sub_227BEB4B0();
  return v1;
}

void sub_227BEB7C0()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_81_3(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_308_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_443(v7, xmmword_227D59C90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8730, &qword_227D5B6C0);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_528(v8, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v9);
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_166_2(v12);
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_469(v14);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349();
  v15 = OUTLINED_FUNCTION_100_3();
  v19 = sub_227C10AC0(v15, v16, v17, v18);
  OUTLINED_FUNCTION_159_2(v19);
  if (v21)
  {
    v24 = OUTLINED_FUNCTION_55(v20);
    sub_227C10AC0(v24, v25, v26, v19);
  }

  v22 = OUTLINED_FUNCTION_120_1();
  v23(v22);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BEBAD0()
{
  OUTLINED_FUNCTION_616();
  v1 = OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_312(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8810, &qword_227D5B778);
  OUTLINED_FUNCTION_5_15();
  sub_227C164D0(&unk_280E7BC10);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 16843009;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BEBBBC()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BEABC0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_227BEBBE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEBC3C();
  *a2 = result;
  return result;
}

void sub_227BEBC10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_227BEBD0C();
}

void sub_227BEBD0C()
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_18_10();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BEBDAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEBDF0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEBEB4()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_18_10();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BEBF54()
{
  sub_227BEBDF0();
  OUTLINED_FUNCTION_372();
  if (v1 == sub_227BEBDF0() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_121_1();
    v4 = sub_227D4DA78();
  }

  return v4 & 1;
}

uint64_t sub_227BEBFD0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  return sub_227C19454(v1 + 24, a1);
}

void sub_227BEC014()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_81_3(v1);
  v4 = v3;
  v5 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_414(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v8 = *(v7 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_227D4F750;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9140, &qword_227D5BD38);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_528(v10, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v11);
  v12 = OUTLINED_FUNCTION_173();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_166_2(v14);
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  v16 = sub_227B1A6E4(v15);
  OUTLINED_FUNCTION_469(v16);
  OUTLINED_FUNCTION_164_2();
  OUTLINED_FUNCTION_349();
  v17 = OUTLINED_FUNCTION_100_3();
  v21 = sub_227C10AC0(v17, v18, v19, v20);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v24 = OUTLINED_FUNCTION_55(v22);
    v21 = sub_227C10AC0(v24, v25, v26, v21);
  }

  *(v21 + 16) = v23 + 1;
  (*(v4 + 32))(v21 + v9 + v23 * v8);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

void sub_227BEC290()
{
  OUTLINED_FUNCTION_616();
  OUTLINED_FUNCTION_142_3();
  v1 = OUTLINED_FUNCTION_411();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8808, &qword_227D5B740);
  OUTLINED_FUNCTION_18_10();
  sub_227C164D0(&unk_280E7BC40);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 1;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BEC364()
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BEC3AC(char a1)
{
  if (!a1)
  {
    return 0x657669746361;
  }

  if (a1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  return 7237495;
}

uint64_t sub_227BEC3FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227BEBF54();
}

uint64_t sub_227BEC42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BEC364();
  *a2 = result;
  return result;
}

uint64_t sub_227BEC45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEC3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEC54C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEC488();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEC590()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BEC748()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();

  v3 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v1);
  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BEC8CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEC808();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BEC910()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BECA8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEC9AC();
  *a2 = result;
  return result;
}

void sub_227BECAB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  sub_227BECAE4();
}

void sub_227BECAE4()
{
  OUTLINED_FUNCTION_507();
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

void sub_227BECC9C()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();

  v3 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v1);
  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BECE78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_411();
  v7 = sub_227D492A8();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_253();
  v17(v16);
  v18 = *a2;
  return a5(v13);
}

void sub_227BECF30()
{
  OUTLINED_FUNCTION_507();
  v1 = v0;
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_42_3();

  v3 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v1);
  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BED0B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BECFF0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_227BED0F8(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_608(a1, a2);
  v3 = OUTLINED_FUNCTION_253();
  return v2(v3);
}

void sub_227BED12C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BED288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BED1C8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BED2CC()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BED39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BED368();
  *a2 = result;
  return result;
}

void sub_227BED3C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  sub_227BED3F4();
}

void sub_227BED3F4()
{
  OUTLINED_FUNCTION_507();
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BED5C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BED490();
  *a2 = result;
  return result;
}

void sub_227BED5F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  sub_227BED620();
}

void sub_227BED620()
{
  OUTLINED_FUNCTION_507();
  OUTLINED_FUNCTION_396();
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BED77C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BED6BC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BED7C0()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227BED91C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BED85C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_227BED960()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BEDA1C()
{
  OUTLINED_FUNCTION_255();
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_5();
  v2 = OUTLINED_FUNCTION_235();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_510();

  swift_getKeyPath();
  OUTLINED_FUNCTION_14_9();
  v3 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v3);
  v1();
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  OUTLINED_FUNCTION_254();
}

void sub_227BEDAEC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227BED9FC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_227BEDB20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_227BEDB70();
}

uint64_t sub_227BEDB70()
{
  OUTLINED_FUNCTION_579();
  swift_getKeyPath();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_410();
}

uint64_t sub_227BEDCC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227BEDC00();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_227BEDD04(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_608(a1, a2);
  v3 = OUTLINED_FUNCTION_253();
  return v2(v3);
}

void sub_227BEDD38()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_363();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v0);
  OUTLINED_FUNCTION_31_2();

  OUTLINED_FUNCTION_481();
}

void sub_227BEDDF4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227BEDDD4();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_227BEDE28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_227BEDB70();
}

void sub_227BEDE78()
{
  OUTLINED_FUNCTION_351();
  v1 = v0;
  v55 = v3;
  v56 = v2;
  v5 = v4;
  v57 = v6;
  v7 = *v0;
  v58 = sub_227D492A8();
  v8 = OUTLINED_FUNCTION_9(v58);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8800, &qword_227D5B738);
  OUTLINED_FUNCTION_0_39();
  sub_227C164D0(&unk_280E7BC20);
  OUTLINED_FUNCTION_13_1();
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v1 + 16) = 0x101010101010101;
  v16 = OBJC_IVAR____TtCV16GameServicesCoreP33_2D441778A4A5881EFABEBF590F5A619430ChallengeInstanceStoreSchemaV18Instance___observationRegistrar;
  sub_227D494B8();
  if (*(v5 + 16))
  {
    v17 = *(v1 + 56);
    OUTLINED_FUNCTION_256((v1 + 24), *(v1 + 48));
    swift_getKeyPath();
    sub_227D4CAD8();

    v52 = *(v10 + 16);
    (v52)(v15, v57, v58);
    v18 = *(v1 + 56);
    OUTLINED_FUNCTION_256((v1 + 24), *(v1 + 48));
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_10();
    sub_227C1CC14(v19);
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    v20 = *(v10 + 8);
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_455(v21);
    v22();
    v23 = *(v1 + 56);
    v54 = v1;
    OUTLINED_FUNCTION_256((v1 + 24), *(v1 + 48));
    swift_getKeyPath();
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    v10 = sub_227B30834(v5);
    v16 = *(v10 + 16);
    if (!v16)
    {
LABEL_15:

      v44 = v54;
      v45 = v54[7];
      OUTLINED_FUNCTION_256(v54 + 3, v54[6]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8728, &qword_227D5B618);
      type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);
      sub_227C18188();
      sub_227D4CAC8();

      OUTLINED_FUNCTION_548();
      v52();
      v46 = v54[7];
      OUTLINED_FUNCTION_256(v44 + 3, v44[6]);
      swift_getKeyPath();
      sub_227D4CAD8();

      v47 = OUTLINED_FUNCTION_278();
      v53(v47);
      OUTLINED_FUNCTION_548();
      v52();
      v48 = v54[7];
      OUTLINED_FUNCTION_256(v44 + 3, v44[6]);
      swift_getKeyPath();
      OUTLINED_FUNCTION_283();
      sub_227D4CAD8();

      v49 = OUTLINED_FUNCTION_278();
      v53(v49);
      v50 = v54[7];
      OUTLINED_FUNCTION_256(v54 + 3, v54[6]);
      swift_getKeyPath();
      sub_227D4CAD8();

      sub_227BED2CC();
      sub_227BED3F4();
      sub_227BED620();
      sub_227BED7C0();
      sub_227BED960();
      sub_227BEDB70();
      sub_227BEDD38();
      sub_227BEDB70();
      (v53)(v55, v58);
      (v53)(v56, v58);
      v51 = OUTLINED_FUNCTION_451();
      v53(v51);
      goto LABEL_16;
    }

    v63 = MEMORY[0x277D84F90];
    sub_227D4D728();
    v1 = sub_227B3E1D8(v10);
    v26 = v10 + 56;
    v27 = v16 - 1;
    if ((v1 & 0x8000000000000000) == 0)
    {
      while (v1 < 1 << *(v10 + 32))
      {
        if ((*(v26 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if (v24 != *(v10 + 36))
        {
          goto LABEL_18;
        }

        v60 = v24;
        v59 = v27;
        v28 = (*(v10 + 48) + 16 * v1);
        v29 = v28[1];
        v61 = *v28;
        v62 = v25;
        v30 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);
        OUTLINED_FUNCTION_166_2(v30);
        v16 = swift_allocObject();
        sub_227D4CE58();
        *(v16 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8808, &qword_227D5B740);
        OUTLINED_FUNCTION_18_10();
        sub_227C164D0(&unk_280E7BC40);
        OUTLINED_FUNCTION_13_1();
        *(v16 + 56) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v16 + 24));
        OUTLINED_FUNCTION_77_2();
        sub_227D4CC08();
        *(v16 + 16) = 1;
        sub_227D494B8();
        v31 = *(v16 + 56);
        OUTLINED_FUNCTION_256((v16 + 24), *(v16 + 48));
        swift_getKeyPath();
        sub_227D4CAD8();

        sub_227D4D6F8();
        v32 = *(v63 + 16);
        sub_227D4D738();
        OUTLINED_FUNCTION_177();
        sub_227D4D748();
        sub_227D4D708();
        if (v62)
        {
          goto LABEL_22;
        }

        if (v1 >= -(-1 << *(v10 + 32)))
        {
          goto LABEL_19;
        }

        v26 = v10 + 56;
        if ((*(v10 + 56 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
        {
          goto LABEL_20;
        }

        if (v60 != *(v10 + 36))
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_168_1();
        v33 = sub_227D4D5E8();
        if (!v59)
        {
          goto LABEL_15;
        }

        v1 = v33;
        v25 = 0;
        v24 = *(v10 + 36);
        v27 = v59 - 1;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

  v34 = sub_227D49E08();
  OUTLINED_FUNCTION_20_7();
  sub_227C1CC14(v35);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_207_0(v36, "gameBundleIDs can't be empty");
  v37 = *MEMORY[0x277D0CE68];
  OUTLINED_FUNCTION_14_0(v34);
  (*(v38 + 104))();
  swift_willThrow();
  v39 = *(v10 + 8);
  v39(v55, v58);
  v39(v56, v58);
  v39(v57, v58);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));
  v40 = sub_227D494C8();
  OUTLINED_FUNCTION_15_6(v40);
  (*(v41 + 8))(v1 + v16);
  v42 = *(*v1 + 48);
  v43 = *(*v1 + 52);
  OUTLINED_FUNCTION_168_1();
  swift_deallocPartialClassInstance();
LABEL_16:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BEE908(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_227D4A528();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_227D4D808())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v26 = MEMORY[0x277D84F90];
    sub_227C11564();
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v10 = v26;
    v19 = a3;
    v20 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    v18 = v6 + 32;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v13 = MEMORY[0x22AAA63D0](v11, a3);
      }

      else
      {
        if (v11 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v11 + 32);
      }

      v25 = v13;
      v22(&v25);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_227C11564();
        v10 = v26;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v24, v21);
      ++v11;
      a3 = v19;
      if (v12 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void sub_227BEEB58()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_450(v1);
  v3 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v46 = v4;
  OUTLINED_FUNCTION_191_2();
  v44 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  v13 = *(v0 + 72);
  OUTLINED_FUNCTION_531();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227D59CA0;
  v15 = v14 + v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_475(0x6F7461657263);
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  v16 = OUTLINED_FUNCTION_148_1();
  v17 = *MEMORY[0x277CDD5A0];
  v45 = *(v6 + 104);
  v45(v12, v17, v44, v16);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  v18 = sub_227D4CD58();
  OUTLINED_FUNCTION_166_2(v18);
  swift_allocObject();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_257();
  v43 = sub_227C1CC14(v19);
  OUTLINED_FUNCTION_530(v43);
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  OUTLINED_FUNCTION_455(v15 + 8 * v13);
  swift_getKeyPath();
  v20 = OUTLINED_FUNCTION_148_1();
  v45(v12, v17, v44, v20);
  swift_getKeyPath();
  OUTLINED_FUNCTION_513();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_146_2();
  OUTLINED_FUNCTION_539();
  sub_227D4CD88();
  swift_getKeyPath();
  v21 = OUTLINED_FUNCTION_148_1();
  v45(v12, v17, v44, v21);
  swift_getKeyPath();
  OUTLINED_FUNCTION_513();
  OUTLINED_FUNCTION_174_2();
  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_548();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E86B0, &qword_227D5B5D8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_227D50C20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_378();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_227D59CB0;
  *(v24 + 32) = swift_getKeyPath();
  *(v24 + 40) = swift_getKeyPath();
  *(v23 + 32) = v24;
  OUTLINED_FUNCTION_198_2();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_227D59C50;
  *(v25 + 32) = swift_getKeyPath();
  *(v23 + 40) = v25;
  OUTLINED_FUNCTION_198_2();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_227D59C50;
  *(v26 + 32) = swift_getKeyPath();
  *(v23 + 48) = v26;
  v27 = OUTLINED_FUNCTION_91_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_166_2(v29);
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_149();
  v31 = sub_227B1A6E4(v30);
  OUTLINED_FUNCTION_530(v31);
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  v32 = OUTLINED_FUNCTION_100_3();
  v35 = sub_227C10AC0(v32, v33, v34, v22);
  OUTLINED_FUNCTION_159_2(v35);
  if (v37)
  {
    v40 = OUTLINED_FUNCTION_55(v36);
    sub_227C10AC0(v40, v41, v42, v35);
  }

  v38 = OUTLINED_FUNCTION_485();
  v39(v38, v46);
  OUTLINED_FUNCTION_611();
  OUTLINED_FUNCTION_8_1();
}