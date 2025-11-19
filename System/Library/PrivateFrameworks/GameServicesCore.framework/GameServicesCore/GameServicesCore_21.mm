uint64_t sub_227CF626C()
{
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];

  (*(v5 + 8))(v3, v4);

  v6 = v0[49];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  OUTLINED_FUNCTION_30_13();

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227CF6364@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_227D4A4A8();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v19 = sub_227D49FA8();
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA038, &qword_227D63450);
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = v53 - v30;
  v32 = sub_227D4B438();
  v60 = v33;
  sub_227D4B4C8();
  v59 = v34;
  sub_227D479F0(v31);
  if (v1)
  {
  }

  else
  {
    v56 = v32;
    v57 = v8;
    v35 = sub_227D4B4B8();
    v37 = v36;
    sub_227D47C80(v25);
    v54 = v35;
    v53[1] = sub_227D4B498();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v43 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v44 = MEMORY[0x22AAA4190](v43);
    v55 = v37;
    if (v44 == 2)
    {
      sub_227D49F28();
      OUTLINED_FUNCTION_71_0();
    }

    else
    {
      v49 = v44;
      v50 = sub_227D49F28();
      OUTLINED_FUNCTION_14_0(v50);
      v52 = MEMORY[0x277D0CEF0];
      if ((v49 & 1) == 0)
      {
        v52 = MEMORY[0x277D0CEE8];
      }

      (*(v51 + 104))(v14, *v52, v50);
      v45 = v14;
      v46 = 0;
      v47 = 1;
      v48 = v50;
    }

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    sub_227D4B458();
    sub_227D4A498();

    sub_227D4B468();
    return sub_227D4A4E8();
  }
}

uint64_t sub_227CF669C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA350, &qword_227D64438);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v44 - v10;
  v12 = sub_227D4B4F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v44 - v18;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v56 = v12;
    v51 = v11;
    v57 = MEMORY[0x277D84F90];
    sub_227CFBDD4();
    v21 = v57;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
    v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v52 += 8;
    v44[1] = v13 + 16;
    v46 = (v13 + 32);
    v47 = (v13 + 8);
    v24 = *(v22 + 72);
    v49 = v7;
    v50 = v24;
    v45 = v13;
    do
    {
      sub_227D4A7E8();
      if (v3)
      {

        return v21;
      }

      v25 = *v55;
      if (*(*v55 + 16) && (v26 = sub_227CFB4D4(v7), (v27 & 1) != 0))
      {
        v28 = v19;
        v29 = *(*(v25 + 56) + 8 * v26);
        v30 = *v52;
        sub_227D4CE58();
        v30(v7, v54);
        v31 = sub_227D4A7D8();
        if (*(v29 + 16) && (v33 = sub_227B2664C(v31, v32), (v34 & 1) != 0))
        {
          v35 = v51;
          (*(v45 + 16))(v51, *(v29 + 56) + *(v45 + 72) * v33, v56);
          v36 = 0;
        }

        else
        {
          v36 = 1;
          v35 = v51;
        }

        v41 = v56;
        __swift_storeEnumTagSinglePayload(v35, v36, 1, v56);

        if (__swift_getEnumTagSinglePayload(v35, 1, v41) != 1)
        {
          v42 = v48;
          (*v46)(v48, v35, v41);
          v19 = v28;
          sub_227CF6364(v28);
          (*v47)(v42, v41);
          v37 = 0;
          v7 = v49;
          goto LABEL_11;
        }

        v7 = v49;
        v19 = v28;
      }

      else
      {
        (*v52)(v7, v54);
        v35 = v51;
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v56);
      }

      sub_227B4DB00(v35, &qword_27D7EA350, &qword_227D64438);
      v37 = 1;
LABEL_11:
      v38 = sub_227D4A4F8();
      __swift_storeEnumTagSinglePayload(v19, v37, 1, v38);
      v57 = v21;
      v39 = v19;
      v40 = *(v21 + 16);
      if (v40 >= *(v21 + 24) >> 1)
      {
        sub_227CFBDD4();
        v21 = v57;
      }

      *(v21 + 16) = v40 + 1;
      sub_227CFC1B8(v39, v21 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40);
      v23 += v50;
      --v20;
      v19 = v39;
    }

    while (v20);
  }

  return v21;
}

uint64_t sub_227CF6C10(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_227CFBE14();
    v11 = v22;
    v16[1] = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v13 = *i;
      v21[0] = *(i - 1);
      v21[1] = v13;
      sub_227D4CE58();
      v18(v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v22 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_227CFBE14();
        v11 = v22;
      }

      *(v11 + 16) = v14 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_227CF6DE8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_227D4A0E8();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_227CC565C();
    v11 = v21;
    v12 = *(sub_227D4B428() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_227CC565C();
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
      v13 += v16[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_227CF6FF0()
{
  OUTLINED_FUNCTION_6();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[18] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4B1F8();
  v1[21] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4AE88();
  v1[24] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[27] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[28] = v20;
  v22 = *(v21 + 64);
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA328, &qword_227D64340);
  OUTLINED_FUNCTION_5(v23);
  v25 = *(v24 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v26 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_227CF71F8()
{
  v1 = v0[15];
  v2 = *(v0[14] + 16);
  v0[32] = v2;
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    v4 = v0[16];
    v5 = swift_task_alloc();
    v0[33] = v5;
    *v5 = v0;
    v5[1] = sub_227CF748C;
    v6 = v0[15];

    return sub_227B24FC4();
  }

  else
  {
    v8 = sub_227D49E08();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v9, v10);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v12 = v11;
    sub_227D4D668();
    MEMORY[0x22AAA5DA0](0xD00000000000002FLL, 0x8000000227D78CC0);
    v0[12] = v2;
    OUTLINED_FUNCTION_141();
    v13 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v13);

    MEMORY[0x22AAA5DA0](0x20646E6120, 0xE500000000000000);
    v0[13] = v3;
    OUTLINED_FUNCTION_141();
    v14 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v14);

    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v15 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v8);
    (*(v16 + 104))(v12);
    swift_willThrow();
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[29];
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();

    return v20();
  }
}

uint64_t sub_227CF748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v16 = *(v15 + 264);
  *v14 = *v11;
  v13[34] = v17;
  v13[35] = v10;

  if (v10)
  {
    v19 = v13[30];
    v18 = v13[31];
    v20 = v13[29];
    v21 = v13[26];
    v22 = v13[23];
    v23 = v13[20];
    v24 = v13[17];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v34, v35, v36);
  }
}

uint64_t sub_227CF7600()
{
  v1 = v0[28];
  v2 = v0[14];
  v3 = v0[34];
  v4 = v0[35];
  v5 = MEMORY[0x277D84F90];
  v0[36] = 0;
  v0[37] = v5;
  v6 = v0[32];
  v7 = sub_227D4CE58();
  if (!v6)
  {
LABEL_8:

    v31 = v0[30];
    v32 = v0[31];
    v33 = v0[29];
    OUTLINED_FUNCTION_5_27();
    v34 = v0[14];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  (*(v1 + 16))(v0[30], v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[27]);
  v8 = *(v3 + 16);
  v9 = v0[34];
  if (!v8)
  {
    (*(v0[28] + 8))(v0[30], v0[27]);
    goto LABEL_8;
  }

  v10 = v0[30];
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[16];
  v43 = *(v9 + 32);
  v0[38] = *(v9 + 40);
  v17 = *(v13 + 32);
  v17(v11, v10, v14);
  v17(v12, v11, v14);
  OUTLINED_FUNCTION_70_7();
  sub_227D4CE58();
  sub_227BD2890();
  if (v4)
  {
    v18 = v0[34];
    v20 = v0[28];
    v19 = v0[29];
    v21 = v0[27];
    v22 = v0[14];

    sub_227B26090((v0 + 2));

    v23 = *(v20 + 8);
    v24 = OUTLINED_FUNCTION_148();
    v25(v24);
    v27 = v0[30];
    v26 = v0[31];
    v28 = v0[29];
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  v37 = swift_task_alloc();
  v0[39] = v37;
  *v37 = v0;
  v37[1] = sub_227CF78E0;
  OUTLINED_FUNCTION_2_37(v0[26]);
  OUTLINED_FUNCTION_16_0();

  return sub_227B7BC58(v38, v39, v40);
}

uint64_t sub_227CF78E0()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[39];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[40] = v8;
  v3[41] = v0;

  v9 = v2[38];
  if (v0)
  {
    v10 = v3[37];
    v11 = v3[34];
    v13 = v3[25];
    v12 = v3[26];
    v14 = v3[24];
    v15 = v3[14];

    v16 = *(v13 + 8);
    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
    sub_227B26090((v3 + 2));
  }

  else
  {
    v20 = v3[25];
    v19 = v3[26];
    v21 = v3[24];

    v22 = *(v20 + 8);
    v23 = OUTLINED_FUNCTION_269();
    v24(v23);
    sub_227B26090((v3 + 2));
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227CF7A74()
{
  v1 = v0[40];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = *(v3 + 16);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v101[22];
      v6(v101[23], v4, v101[21]);
      v9 = sub_227D4B1E8();
      v11 = v10;
      v12 = *(v8 + 8);
      v13 = OUTLINED_FUNCTION_141();
      v14(v13);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v7 + 2);
          v18 = OUTLINED_FUNCTION_54();
          v7 = sub_227B25F88(v18, v19, v20, v21);
        }

        v15 = *(v7 + 2);
        if (v15 >= *(v7 + 3) >> 1)
        {
          OUTLINED_FUNCTION_117();
          v7 = sub_227B25F88(v22, v23, v24, v25);
        }

        *(v7 + 2) = v15 + 1;
        v16 = &v7[16 * v15];
        *(v16 + 4) = v9;
        *(v16 + 5) = v11;
      }

      v4 += v5;
      --v2;
    }

    while (v2);
    v0 = v101;
    v26 = v101[40];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v27 = v0[41];
  v28 = v0[29];
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  sub_227CF6C10(sub_227CFBD34, v29, v7);
  v30 = v0[37];
  if (v27)
  {
    v31 = v0[34];
    v33 = v0[28];
    v32 = v0[29];
    v34 = v0[27];
    v35 = v0[14];

    (*(v33 + 8))(v32, v34);
    v37 = v0[30];
    v36 = v0[31];
    v38 = v0[29];
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  v41 = v0[20];
  v42 = v0[17];

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  sub_227B69F68(&qword_27D7E7148, &qword_27D7E6938, &qword_227D4E760);
  sub_227B69F68(&qword_27D7E7150, &qword_27D7E6938, &qword_227D4E760);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v0[37];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v97 = *(v48 + 16);
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v48 = v98;
  }

  OUTLINED_FUNCTION_72_6();
  if (v49)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v48 = v99;
  }

  v51 = v0[28];
  v50 = v0[29];
  v52 = v0[27];
  v53 = v0[20];
  v54 = v0[18];
  v55 = OUTLINED_FUNCTION_3_26(v0[19]);
  v56(v55);
  v57 = OUTLINED_FUNCTION_42();
  v58(v57);
  v59 = v0[36] + 1;
  v0[36] = v59;
  v0[37] = v48;
  v60 = v0[34];
  if (v59 == v0[32])
  {
LABEL_23:

    v73 = v0[30];
    v72 = v0[31];
    v74 = v0[29];
    v75 = v0[26];
    v76 = v0[23];
    v77 = v0[20];
    v78 = v0[17];
    v79 = v0[14];

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  v61 = v0[30];
  v62 = v0[27];
  v63 = v0[14];
  OUTLINED_FUNCTION_17_16(v0[28]);
  v67 = v64 + v65 + *(v66 + 56) * v59;
  result = v68();
  v70 = *(v60 + 16);
  if (v59 == v70)
  {
    v71 = v0[34];
    (*(v0[28] + 8))(v0[30], v0[27]);
    goto LABEL_23;
  }

  if (v59 >= v70)
  {
    __break(1u);
  }

  else
  {
    v82 = v0[30];
    v83 = v0[31];
    v85 = v0[28];
    v84 = v0[29];
    v87 = v0[26];
    v86 = v0[27];
    v88 = v101[16];
    v89 = v0[34] + 16 * v59;
    v100 = *(v89 + 32);
    v101[38] = *(v89 + 40);
    v90 = *(v85 + 32);
    v90(v83, v82, v86);
    v91 = OUTLINED_FUNCTION_87_1();
    (v90)(v91);
    sub_227B23878(v88 + 40, (v101 + 2));
    sub_227D4CE58();
    sub_227BD2890();
    v92 = swift_task_alloc();
    v101[39] = v92;
    *v92 = v101;
    v92[1] = sub_227CF78E0;
    OUTLINED_FUNCTION_2_37(v101[26]);
    OUTLINED_FUNCTION_16_0();

    return sub_227B7BC58(v93, v94, v95);
  }

  return result;
}

uint64_t sub_227CF807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[28] + 8))(v10[29], v10[27]);
  v11 = v10[41];
  v13 = v10[30];
  v12 = v10[31];
  v14 = v10[29];
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_227CF8130()
{
  OUTLINED_FUNCTION_6();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[19] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4A478();
  v1[23] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[24] = v18;
  v20 = *(v19 + 64);
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v21 = sub_227D4AE88();
  v1[27] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[28] = v22;
  v24 = *(v23 + 64);
  v1[29] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[30] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[31] = v26;
  v28 = *(v27 + 64);
  v1[32] = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[33] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[34] = v30;
  v32 = *(v31 + 64);
  v1[35] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227CF8394()
{
  v1 = *(v0 + 272);
  v2 = *(*(v0 + 96) + 16);
  *(v0 + 352) = *MEMORY[0x277D0D290];
  v3 = *(v0 + 136);
  *(v0 + 356) = *MEMORY[0x277D0D298];
  *(v0 + 360) = *MEMORY[0x277D0D2A0];
  v4 = MEMORY[0x277D84F90];
  *(v0 + 296) = 0;
  *(v0 + 304) = v4;
  *(v0 + 288) = v2;
  if (!v2)
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 144);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_23();

    __asm { BRAA            X2, X16 }
  }

  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  OUTLINED_FUNCTION_17_16(v1);
  v10(v5, v8 + v9);
  sub_227B23878(v3 + 40, v0 + 16);
  sub_227D4A7E8();
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  sub_227BD2890();
  v23 = *(v0 + 280);
  v24 = OUTLINED_FUNCTION_58_9();
  (*(v25 + 8))(v24);
  result = sub_227D4A7D8();
  *(v0 + 312) = v27;
  if (__OFSUB__(*(v0 + 112), *(v0 + 104)))
  {
    __break(1u);
  }

  else
  {
    v32 = *(v0 + 176);
    sub_227BCBB80(*(v0 + 128), v32);
    OUTLINED_FUNCTION_10_16(v32);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_34_10();
      v35(v34);
      OUTLINED_FUNCTION_10_16(v32);
      if (!v33)
      {
        sub_227B4DB00(*(v0 + 176), &qword_27D7E82E0, &unk_227D61A90);
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_54_10();
      v37(v36);
    }

    v38 = *(v0 + 356);
    v40 = *(v0 + 200);
    v39 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 192);
    v43 = OUTLINED_FUNCTION_52_9(v42);
    v44(v43);
    if ((*(v42 + 88))(v40, v41) == v38)
    {
      v45 = 0xE500000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_50_9();
      if (v33)
      {
        v45 = 0xE90000000000006BLL;
      }

      else
      {
        if (v46 != *(v0 + 352))
        {
          v60 = *(v0 + 224);
          v61 = *(v0 + 208);
          v69 = *(v0 + 216);
          v70 = *(v0 + 232);
          v62 = *(v0 + 192);
          v63 = *(v0 + 200);
          v64 = *(v0 + 184);
          sub_227D4D668();

          OUTLINED_FUNCTION_8_16();
          v65 = sub_227D4A468();
          MEMORY[0x22AAA5DA0](v65);

          sub_227D49E08();
          OUTLINED_FUNCTION_0_56();
          sub_227B12A9C(v66, v67);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_147();
          sub_227D49D98();

          swift_willThrow();
          v68 = *(v62 + 8);
          v68(v63, v64);

          v68(v61, v64);
          (*(v60 + 8))(v70, v69);
          sub_227B26090(v0 + 16);

          v28 = OUTLINED_FUNCTION_24_12();
          v29(v28);

          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_23();

          __asm { BRAA            X1, X16 }
        }

        v45 = 0xE800000000000000;
      }
    }

    *(v0 + 320) = v45;
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    v47 = swift_task_alloc();
    *(v0 + 328) = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_56_7(v47);
    v48 = *(v0 + 120);
    v49 = *(v0 + 104);
    OUTLINED_FUNCTION_2_37(v50);
    OUTLINED_FUNCTION_23();

    return sub_227B7C728(v51, v52, v53, v54, v55, v56, v57, v58);
  }

  return result;
}

uint64_t sub_227CF88B4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[41];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[42] = v8;
  v3[43] = v0;

  v9 = v2[40];
  v10 = v2[39];
  if (v0)
  {
    v11 = v3[38];
    v13 = v3[28];
    v12 = v3[29];
    v14 = v3[27];

    (*(v13 + 8))(v12, v14);
    sub_227B26090((v3 + 2));
  }

  else
  {
    v16 = v3[28];
    v15 = v3[29];
    v17 = v3[27];

    v18 = *(v16 + 8);
    v19 = OUTLINED_FUNCTION_269();
    v20(v19);
    sub_227B26090((v3 + 2));
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227CF8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 336);
  v20 = *(v18 + 344);
  v21 = *(v18 + 280);
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  sub_227CF6DE8(sub_227CFBD70, v22, v19);
  v23 = *(v18 + 336);
  v24 = *(v18 + 304);
  if (v20)
  {

LABEL_12:
    v69 = OUTLINED_FUNCTION_24_12();
    v70(v69);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v25 = *(v18 + 168);
  v26 = *(v18 + 144);

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_227D4A0E8();
  v31 = MEMORY[0x277D0D080];
  sub_227B12A9C(&qword_27D7E83C0, MEMORY[0x277D0D080]);
  OUTLINED_FUNCTION_14_16();
  sub_227B12A9C(v32, v31);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v18 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v117 = *(v34 + 16);
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v34 = v118;
  }

  OUTLINED_FUNCTION_72_6();
  if (v35)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v34 = v119;
  }

  v37 = *(v18 + 272);
  v36 = *(v18 + 280);
  v38 = *(v18 + 264);
  v39 = *(v18 + 168);
  v40 = *(v18 + 152);
  v41 = OUTLINED_FUNCTION_3_26(*(v18 + 160));
  v42(v41);
  v43 = OUTLINED_FUNCTION_42();
  v44(v43);
  v45 = *(v18 + 288);
  v46 = *(v18 + 296) + 1;
  *(v18 + 296) = v46;
  *(v18 + 304) = v34;
  v47 = *(v18 + 280);
  if (v46 == v45)
  {
    v48 = *(v18 + 256);
    OUTLINED_FUNCTION_64_7();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_90();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v58 = *(v18 + 264);
    v59 = *(v18 + 272);
    v60 = *(v18 + 256);
    v61 = *(v18 + 136);
    OUTLINED_FUNCTION_23_10(v46);
    v62(v47);
    OUTLINED_FUNCTION_70_7();
    sub_227D4A7E8();
    v63 = *(v18 + 256);
    v64 = *(v18 + 232);
    sub_227BD2890();
    v65 = *(v18 + 280);
    v66 = OUTLINED_FUNCTION_58_9();
    (*(v67 + 8))(v66);
    result = sub_227D4A7D8();
    *(v18 + 312) = v68;
    if (__OFSUB__(*(v18 + 112), *(v18 + 104)))
    {
      __break(1u);
      return result;
    }

    v79 = *(v18 + 176);
    sub_227BCBB80(*(v18 + 128), v79);
    OUTLINED_FUNCTION_10_16(v79);
    if (v80)
    {
      v81 = OUTLINED_FUNCTION_34_10();
      v82(v81);
      OUTLINED_FUNCTION_10_16(v79);
      if (!v80)
      {
        sub_227B4DB00(*(v18 + 176), &qword_27D7E82E0, &unk_227D61A90);
      }
    }

    else
    {
      v83 = OUTLINED_FUNCTION_54_10();
      v84(v83);
    }

    v85 = *(v18 + 356);
    v87 = *(v18 + 200);
    v86 = *(v18 + 208);
    v88 = *(v18 + 184);
    v89 = *(v18 + 192);
    v90 = OUTLINED_FUNCTION_52_9(v89);
    v91(v90);
    if ((*(v89 + 88))(v87, v88) == v85)
    {
      v92 = 0xE500000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_50_9();
      if (v80)
      {
        v92 = 0xE90000000000006BLL;
      }

      else
      {
        if (v93 != *(v18 + 352))
        {
          v107 = *(v18 + 224);
          v108 = *(v18 + 208);
          a11 = *(v18 + 216);
          a12 = *(v18 + 232);
          v109 = *(v18 + 192);
          a10 = *(v18 + 200);
          v110 = *(v18 + 184);
          sub_227D4D668();

          OUTLINED_FUNCTION_8_16();
          a13 = v112;
          a14 = v111;
          v113 = sub_227D4A468();
          MEMORY[0x22AAA5DA0](v113);

          sub_227D49E08();
          OUTLINED_FUNCTION_0_56();
          sub_227B12A9C(v114, v115);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_147();
          sub_227D49D98();

          swift_willThrow();
          v116 = *(v109 + 8);
          v116(a10, v110);

          v116(v108, v110);
          (*(v107 + 8))(a12, a11);
          sub_227B26090(v18 + 16);

          goto LABEL_12;
        }

        v92 = 0xE800000000000000;
      }
    }

    *(v18 + 320) = v92;
    (*(*(v18 + 192) + 8))(*(v18 + 208), *(v18 + 184));
    v94 = swift_task_alloc();
    *(v18 + 328) = v94;
    *v94 = v18;
    OUTLINED_FUNCTION_56_7(v94);
    v95 = *(v18 + 120);
    v96 = *(v18 + 104);
    OUTLINED_FUNCTION_2_37(v97);
    OUTLINED_FUNCTION_90();

    return sub_227B7C728(v98, v99, v100, v101, v102, v103, v104, v105);
  }
}

uint64_t sub_227CF90DC()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  OUTLINED_FUNCTION_64_7();
  (*(v6 + 8))(v3);

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227CF91B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  v51[5] = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_227D492A8();
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA338, &unk_227D64408);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = sub_227D4B3C8();
  if (!v24)
  {
    goto LABEL_11;
  }

  v47 = v23;
  v48 = a2;
  sub_227D4B3E8();
  v25 = sub_227D4B338();
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {

    sub_227B4DB00(v22, &qword_27D7EA338, &unk_227D64408);
LABEL_11:
    v35 = sub_227D4B428();
    v51[3] = v35;
    __swift_allocate_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_14_0(v35);
    (*(v36 + 16))();
    sub_227D49E08();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v37, v38);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    sub_227D49DD8();
    sub_227B4DB00(v51, &qword_27D7E6C80, &unk_227D4F780);
    return swift_willThrow();
  }

  sub_227D4B328();
  OUTLINED_FUNCTION_14_0(v25);
  v27 = v22;
  v29 = v28;
  (*(v26 + 8))(v27, v25);
  if (!v29)
  {
LABEL_10:

    goto LABEL_11;
  }

  result = sub_227D4B3F8();
  if ((result & 0x100000000) != 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v46 = result;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x22AAA4120]();
    if (v32)
    {
      goto LABEL_9;
    }

    v45 = v31;
    v33 = MEMORY[0x22AAA4160]();
    if (v34)
    {
      goto LABEL_9;
    }

    v39 = v33;
    v40 = MEMORY[0x22AAA4150]();
    v44 = v41 & 1;
    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = v40;
    }

    v43 = v42;
    v51[0] = v39;
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    (*(v49 + 16))(v12, v50, v8);
    OUTLINED_FUNCTION_141();
    sub_227D4A888();
    return sub_227D4A0D8();
  }

  return result;
}

uint64_t sub_227CF9594()
{
  OUTLINED_FUNCTION_20();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[17] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[18] = v9;
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4A478();
  v1[21] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[22] = v16;
  v18 = *(v17 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v19 = sub_227D4AE88();
  v1[25] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[26] = v20;
  v22 = *(v21 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[28] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[29] = v24;
  v26 = *(v25 + 64);
  v1[30] = OUTLINED_FUNCTION_30();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[31] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v1[32] = v28;
  v30 = *(v29 + 64);
  v1[33] = OUTLINED_FUNCTION_30();
  v31 = swift_task_alloc();
  v1[34] = v31;
  *v31 = v1;
  v31[1] = sub_227CF9848;

  return sub_227B24FC4();
}

uint64_t sub_227CF9848()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  v3[35] = v7;
  v3[36] = v0;

  if (v0)
  {
    v8 = v3[33];
    v9 = v3[30];
    v10 = v3[27];
    v12 = v3[23];
    v11 = v3[24];
    v14 = v3[19];
    v13 = v3[20];
    v15 = v3[16];

    OUTLINED_FUNCTION_18();

    return v16();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_227CF99DC()
{
  v1 = *(v0 + 256);
  v2 = *(*(v0 + 96) + 16);
  *(v0 + 360) = *MEMORY[0x277D0D290];
  *(v0 + 364) = *MEMORY[0x277D0D298];
  *(v0 + 368) = *MEMORY[0x277D0D2A0];
  v3 = *(v0 + 288);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 304) = 0;
  *(v0 + 312) = v4;
  *(v0 + 296) = v2;
  if (!v2)
  {
    v16 = *(v0 + 280);
    v17 = *(v0 + 264);
    OUTLINED_FUNCTION_47_11();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X2, X16 }
  }

  v5 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 120);
  OUTLINED_FUNCTION_17_16(v1);
  v11(v5, v9 + v10);
  OUTLINED_FUNCTION_70_7();
  sub_227D4A7E8();
  if (v3)
  {
    v12 = *(v0 + 280);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    sub_227B26090(v0 + 16);

    (*(v14 + 8))(v13, v15);
    goto LABEL_8;
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 216);
  sub_227BD2890();
  v22 = OUTLINED_FUNCTION_60_11();
  v23(v22);
  sub_227D4A7D8();
  *(v0 + 320) = v24;
  v35 = *(v0 + 160);
  sub_227BCBB80(*(v0 + 112), v35);
  OUTLINED_FUNCTION_10_16(v35);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_37_9();
    v38(v37);
    OUTLINED_FUNCTION_10_16(v35);
    if (!v36)
    {
      sub_227B4DB00(*(v0 + 160), &qword_27D7E82E0, &unk_227D61A90);
    }
  }

  else
  {
    v39 = OUTLINED_FUNCTION_61_10();
    v40(v39);
  }

  v41 = *(v0 + 364);
  v43 = *(v0 + 184);
  v42 = *(v0 + 192);
  v44 = *(v0 + 176);
  v45 = OUTLINED_FUNCTION_52_9(v44);
  v46(v45);
  v47 = *(v44 + 88);
  v48 = OUTLINED_FUNCTION_147();
  v50 = v49(v48);
  if (v50 == v41)
  {
    v51 = 0xE500000000000000;
  }

  else if (v50 == *(v0 + 368))
  {
    v51 = 0xE90000000000006BLL;
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    if (!v36)
    {
      v64 = *(v0 + 256);
      v78 = *(v0 + 248);
      v79 = *(v0 + 264);
      v65 = *(v0 + 208);
      v77 = *(v0 + 216);
      v66 = *(v0 + 192);
      v75 = *(v0 + 280);
      v76 = *(v0 + 200);
      v67 = *(v0 + 176);
      v74 = *(v0 + 184);
      v68 = *(v0 + 168);
      sub_227D4D668();

      OUTLINED_FUNCTION_8_16();
      v69 = sub_227D4A468();
      MEMORY[0x22AAA5DA0](v69);

      sub_227D49E08();
      OUTLINED_FUNCTION_0_56();
      sub_227B12A9C(v70, v71);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_147();
      sub_227D49D98();

      swift_willThrow();
      v72 = *(v67 + 8);
      v72(v74, v68);

      v73 = OUTLINED_FUNCTION_141();
      (v72)(v73);
      (*(v65 + 8))(v77, v76);
      sub_227B26090(v0 + 16);

      (*(v64 + 8))(v79, v78);
LABEL_8:
      v25 = *(v0 + 264);
      v26 = *(v0 + 240);
      v27 = *(v0 + 216);
      v29 = *(v0 + 184);
      v28 = *(v0 + 192);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = *(v0 + 128);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_137();

      __asm { BRAA            X1, X16 }
    }

    v51 = 0xE800000000000000;
  }

  *(v0 + 328) = v51;
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  v52 = swift_task_alloc();
  *(v0 + 336) = v52;
  *v52 = v0;
  v52[1] = sub_227CF9F9C;
  v53 = *(v0 + 280);
  v54 = *(v0 + 104);
  OUTLINED_FUNCTION_2_37(*(v0 + 216));
  OUTLINED_FUNCTION_137();

  return sub_227B7D33C(v55, v56, v57, v58, v59, v60, v61);
}

uint64_t sub_227CF9F9C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[42];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[43] = v8;
  v3[44] = v0;

  v9 = v2[41];
  v10 = v2[40];
  if (v0)
  {
    v11 = v3[39];
    v12 = v3[35];
    v14 = v3[26];
    v13 = v3[27];
    v15 = v3[25];

    v16 = *(v14 + 8);
    v17 = OUTLINED_FUNCTION_141();
    v18(v17);
    sub_227B26090((v3 + 2));
  }

  else
  {
    v20 = v3[26];
    v19 = v3[27];
    v21 = v3[25];

    v22 = *(v20 + 8);
    v23 = OUTLINED_FUNCTION_269();
    v24(v23);
    sub_227B26090((v3 + 2));
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227CFA148()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 264);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_227CF6DE8(sub_227CFC228, v4, v1);
  v5 = v2;
  v6 = *(v0 + 344);
  v7 = *(v0 + 312);
  if (v5)
  {
    v8 = *(v0 + 280);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);

    (*(v10 + 8))(v9, v11);
    goto LABEL_3;
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 128);
  v24 = *(v0 + 344);

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_227D4A0E8();
  v29 = MEMORY[0x277D0D080];
  sub_227B12A9C(&qword_27D7E83C0, MEMORY[0x277D0D080]);
  OUTLINED_FUNCTION_14_16();
  sub_227B12A9C(v30, v29);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v104 = *(v32 + 16);
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v32 = v105;
  }

  OUTLINED_FUNCTION_72_6();
  if (v33)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v32 = v106;
  }

  v35 = *(v0 + 256);
  v34 = *(v0 + 264);
  v36 = *(v0 + 248);
  v37 = *(v0 + 152);
  v38 = *(v0 + 136);
  v39 = OUTLINED_FUNCTION_3_26(*(v0 + 144));
  v40(v39);
  v41 = OUTLINED_FUNCTION_42();
  v42(v41);
  v43 = *(v0 + 296);
  v44 = *(v0 + 304) + 1;
  *(v0 + 304) = v44;
  *(v0 + 312) = v32;
  v45 = *(v0 + 240);
  if (v44 == v43)
  {
    v46 = *(v0 + 280);
    v47 = *(v0 + 264);
    v48 = *(v0 + 216);
    v50 = *(v0 + 184);
    v49 = *(v0 + 192);
    v52 = *(v0 + 152);
    v51 = *(v0 + 160);
    v53 = *(v0 + 128);

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X2, X16 }
  }

  v56 = *(v0 + 256);
  v57 = *(v0 + 264);
  v58 = *(v0 + 248);
  v59 = *(v0 + 120);
  OUTLINED_FUNCTION_23_10(v44);
  v60(v57);
  OUTLINED_FUNCTION_70_7();
  sub_227D4A7E8();
  v61 = *(v0 + 240);
  v62 = *(v0 + 216);
  sub_227BD2890();
  v63 = OUTLINED_FUNCTION_60_11();
  v64(v63);
  sub_227D4A7D8();
  *(v0 + 320) = v65;
  v66 = *(v0 + 160);
  sub_227BCBB80(*(v0 + 112), v66);
  OUTLINED_FUNCTION_10_16(v66);
  if (v67)
  {
    v68 = OUTLINED_FUNCTION_37_9();
    v69(v68);
    OUTLINED_FUNCTION_10_16(v66);
    if (!v67)
    {
      sub_227B4DB00(*(v0 + 160), &qword_27D7E82E0, &unk_227D61A90);
    }
  }

  else
  {
    v70 = OUTLINED_FUNCTION_61_10();
    v71(v70);
  }

  v72 = *(v0 + 364);
  v74 = *(v0 + 184);
  v73 = *(v0 + 192);
  v75 = *(v0 + 176);
  v76 = OUTLINED_FUNCTION_52_9(v75);
  v77(v76);
  v78 = *(v75 + 88);
  v79 = OUTLINED_FUNCTION_147();
  v81 = v80(v79);
  if (v81 == v72)
  {
    v82 = 0xE500000000000000;
  }

  else if (v81 == *(v0 + 368))
  {
    v82 = 0xE90000000000006BLL;
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    if (!v67)
    {
      v95 = *(v0 + 256);
      v110 = *(v0 + 248);
      v111 = *(v0 + 264);
      v96 = *(v0 + 208);
      v109 = *(v0 + 216);
      v97 = *(v0 + 192);
      v108 = *(v0 + 200);
      v98 = *(v0 + 176);
      v107 = *(v0 + 184);
      v99 = *(v0 + 168);
      sub_227D4D668();

      OUTLINED_FUNCTION_8_16();
      v100 = sub_227D4A468();
      MEMORY[0x22AAA5DA0](v100);

      sub_227D49E08();
      OUTLINED_FUNCTION_0_56();
      sub_227B12A9C(v101, v102);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_147();
      sub_227D49D98();

      swift_willThrow();
      v103 = *(v98 + 8);
      v103(v107, v99);

      v103(v97, v99);
      (*(v96 + 8))(v109, v108);
      sub_227B26090(v0 + 16);

      (*(v95 + 8))(v111);
LABEL_3:
      v12 = *(v0 + 264);
      v13 = *(v0 + 240);
      v14 = *(v0 + 216);
      v16 = *(v0 + 184);
      v15 = *(v0 + 192);
      v18 = *(v0 + 152);
      v17 = *(v0 + 160);
      v19 = *(v0 + 128);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X1, X16 }
    }

    v82 = 0xE800000000000000;
  }

  *(v0 + 328) = v82;
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  v83 = swift_task_alloc();
  *(v0 + 336) = v83;
  *v83 = v0;
  v83[1] = sub_227CF9F9C;
  v84 = *(v0 + 280);
  v85 = *(v0 + 104);
  OUTLINED_FUNCTION_2_37(*(v0 + 216));
  OUTLINED_FUNCTION_65();

  return sub_227B7D33C(v86, v87, v88, v89, v90, v91, v92);
}

uint64_t sub_227CFA898()
{
  OUTLINED_FUNCTION_119();
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[44];
  v2 = v0[33];
  OUTLINED_FUNCTION_47_11();

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CFA960()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B35D04;

  return sub_227CF5000();
}

uint64_t sub_227CFAA04()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_0_56();
  sub_227B12A9C(v0, v1);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227CFAAAC()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227CFAB50;

  return sub_227CFAEA0();
}

uint64_t sub_227CFAB50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 16);
  v11 = *v1;
  *(v3 + 24) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

void sub_227CFAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = 0;
  v20 = *(v18 + 24);
  v54 = *(v20 + 16);
  v21 = MEMORY[0x277D84F98];
  v53 = v20;
  v22 = (v20 + 40);
  while (v54 != v19)
  {
    if (v19 >= *(v53 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v23 = *v22;
    a13 = v19;
    a14 = *(v22 - 1);
    v25 = v22[1];
    v24 = v22[2];
    v26 = v22[4];
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    sub_227D4CE58();
    swift_isUniquelyReferenced_nonNull_native();
    a15 = v21;
    sub_227B2664C(v25, v24);
    v27 = v21[2];
    OUTLINED_FUNCTION_62_8();
    if (__OFADD__(v30, v31))
    {
      goto LABEL_20;
    }

    v32 = v28;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
    if (sub_227D4D7C8())
    {
      v34 = sub_227B2664C(v25, v24);
      if ((v33 & 1) != (v35 & 1))
      {
        OUTLINED_FUNCTION_90();

        sub_227D4DAE8();
        return;
      }

      v32 = v34;
    }

    if (v33)
    {
      v36 = (v21[7] + 16 * v32);
      v37 = v36[1];
      *v36 = a14;
      v36[1] = v23;
    }

    else
    {
      OUTLINED_FUNCTION_13_18(&v21[v32 >> 6]);
      v38 = (v21[6] + 16 * v32);
      *v38 = v25;
      v38[1] = v24;
      v39 = (v21[7] + 16 * v32);
      *v39 = a14;
      v39[1] = v23;

      v40 = v21[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_21;
      }

      v21[2] = v42;
    }

    v22 += 6;
    v19 = a13 + 1;
  }

  v43 = *(v18 + 24);

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_90();

  v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, v18, v53, v54, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CFAEA0()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 185) = v2;
  *(v1 + 184) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  v5 = sub_227D4B4F8();
  *(v1 + 112) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v1 + 120) = v6;
  v8 = *(v7 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_30();
  v9 = sub_227D4AE88();
  *(v1 + 136) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 144) = v10;
  v12 = *(v11 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CFAF98()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  sub_227B23878(*(v0 + 104) + 40, v0 + 16);
  sub_227BD2890();
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_227CFB0AC;
  v4 = *(v0 + 184);
  v5 = OUTLINED_FUNCTION_2_37(*(v0 + 152));

  return sub_227B7B150(v5, 0, v6);
}

uint64_t sub_227CFB0AC()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[20];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[21] = v8;
  v3[22] = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);
  sub_227B26090((v3 + 2));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(uint64_t, uint64_t), uint64_t a14, void (*a15)(void, uint64_t, void), uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 168);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v18 + 120);
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    a14 = *(v21 + 56);
    a15 = v22;
    a13 = (v21 - 8);
    v24 = MEMORY[0x277D84F90];
    a10 = v21;
    while (1)
    {
      a15(*(v18 + 128), v23, *(v18 + 112));
      v25 = sub_227D4B478();
      if (v26)
      {
        v27 = v25;
        v28 = v26;
        v29 = sub_227D4B458();
        if (!v30)
        {
          goto LABEL_10;
        }

        v31 = *(v18 + 185);
        if (v29 == 0x524F465F45444948 && v30 == 0xEC0000004C4C415FLL)
        {

          if (v31)
          {
LABEL_10:
            v34 = *(v18 + 128);
            v35 = *(v18 + 112);
            v36 = sub_227D4B438();
            a11 = v37;
            a12 = v36;
            v38 = sub_227D4B4A8();
            v40 = v39;
            (*a13)(v34, v35);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = *(v24 + 2);
              v44 = OUTLINED_FUNCTION_54();
              v24 = sub_227CFB96C(v44, v45, v46, v47);
            }

            v41 = *(v24 + 2);
            if (v41 >= *(v24 + 3) >> 1)
            {
              OUTLINED_FUNCTION_117();
              v24 = sub_227CFB96C(v48, v49, v50, v51);
            }

            *(v24 + 2) = v41 + 1;
            v42 = &v24[48 * v41];
            *(v42 + 4) = a12;
            *(v42 + 5) = a11;
            *(v42 + 6) = v27;
            *(v42 + 7) = v28;
            *(v42 + 8) = v38;
            *(v42 + 9) = v40;
            goto LABEL_18;
          }
        }

        else
        {
          v33 = sub_227D4DA78();

          if (v31 & 1 | ((v33 & 1) == 0))
          {
            goto LABEL_10;
          }
        }

        (*a13)(*(v18 + 128), *(v18 + 112));
      }

      else
      {
        (*a13)(*(v18 + 128), *(v18 + 112));
      }

LABEL_18:
      v23 += a14;
      if (!--v20)
      {
        v52 = *(v18 + 168);

        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v53 = *(v18 + 152);
  v54 = *(v18 + 128);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_90();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CFB46C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];

  OUTLINED_FUNCTION_18();

  return v4();
}

unint64_t sub_227CFB4D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  sub_227B69F68(&qword_27D7E9B80, &qword_27D7E6888, &unk_227D4E630);
  v5 = sub_227D4CE98();

  return sub_227CFB57C(a1, v5);
}

unint64_t sub_227CFB57C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B69F68(&qword_27D7EA360, &qword_27D7E6888, &unk_227D4E630);
    v10 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

int64_t sub_227CFB73C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_227CFB7FC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_227CFB7FC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_227B25F88(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_227CFB864()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_227CFBA84(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_227CFBB78(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_227CFB96C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA330, &unk_227D643F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227CFBA84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_87_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_10_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227CFBB78(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_14_0(v10), a1 + *(v11 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227CFBC60(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A0E8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A0E8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CFBD34(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v7 = *a1;
  v6 = a1[1];
  result = sub_227D4A608();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_227CFBD88@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_227CF91B4(*(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

void sub_227CFBDD4()
{
  v1 = *v0;
  sub_227CFBE54();
  *v0 = v2;
}

void sub_227CFBE14()
{
  v1 = *v0;
  sub_227CFBE54();
  *v0 = v2;
}

void sub_227CFBE54()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_10_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_87_1();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_227CFBB78(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_227CFC004(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FC8, &qword_227D633E0);
  v10 = *(sub_227D4A0E8() - 8);
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
  v15 = *(sub_227D4A0E8() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227CFBC60(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_227CFC1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_34_10()
{
  v1 = *(v0 + 352);
  result = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(*(v0 + 192) + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_8()
{
  result = v0[33];
  v2 = v0[30];
  v3 = *(v0[31] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_11()
{
  v1 = v0[33];
  result = v0[30];
  v3 = v0[28];
  v4 = *(v0[29] + 8);
  return result;
}

uint64_t sub_227CFC2DC()
{
  v1 = [v0 iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  if (v2)
  {
    return sub_227D4DA38();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CFC35C()
{
  v1 = v0;
  v2 = sub_227D4CAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 platform];
  v8 = 0x736F63616DLL;
  switch(v7)
  {
    case 1u:
    case 6u:
      return v8;
    case 2u:
    case 7u:
      v8 = 7565161;
      break;
    case 3u:
    case 8u:
      v8 = 0x6F7674656C707061;
      break;
    case 4u:
    case 9u:
      v8 = 0x736F6863746177;
      break;
    case 0xBu:
    case 0xCu:
      v8 = 1936683640;
      break;
    default:
      sub_227D4AA58();
      v9 = sub_227D4CA98();
      v10 = sub_227D4D438();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = v7;
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v11;
        _os_log_impl(&dword_227B0D000, v9, v10, "Unrecognized platform %ld, defaulting to ios", v12, 0xCu);
        MEMORY[0x22AAA7130](v12, -1, -1);
      }

      v8 = 7565161;

      (*(v3 + 8))(v6, v2);
      break;
  }

  return v8;
}

void sub_227CFC560(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_227D4A6A8();
  if (v2)
  {

LABEL_4:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    (*(*(v11 - 8) + 16))(a1, v3, v11);
    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v10 = sub_227CFC6BC(v7, v8, 0);
  v12 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  sub_227D4A6A8();
  sub_227CFC2DC();
  sub_227CFC35C();
  sub_227CFC798(v12);
  sub_227D4A688();
}

id sub_227CFC6BC(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_227D4CF78();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_227D49098();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_227CFC798(void *a1)
{
  v1 = [a1 shortVersionString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227D4CFA8();

  return v3;
}

uint64_t sub_227CFC7FC()
{
  v0 = sub_227D4D868();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227CFC854(char a1)
{
  result = 7565161;
  switch(a1)
  {
    case 1:
      result = 7893871;
      break;
    case 2:
      result = 0x6F7674656C707061;
      break;
    case 3:
      result = 1936683640;
      break;
    case 4:
      result = 0x736F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_227CFC8E8()
{
  result = qword_27D7EA368;
  if (!qword_27D7EA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA368);
  }

  return result;
}

uint64_t sub_227CFC93C(unsigned __int8 a1, char a2)
{
  v2 = 7565161;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7565161;
  switch(v4)
  {
    case 1:
      v5 = 7893871;
      break;
    case 2:
      v5 = 0x6F7674656C707061;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1936683640;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x736F6863746177;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 7893871;
      break;
    case 2:
      v2 = 0x6F7674656C707061;
      v6 = 0xE900000000000073;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1936683640;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x736F6863746177;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227CFCA9C(char a1)
{
  sub_227D4DB58();
  sub_227CFC854(a1);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227CFCB08()
{
  sub_227D4D048();
}

uint64_t sub_227CFCBC8(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227CFC854(a2);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227CFCC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227CFC7FC();
  *a2 = result;
  return result;
}

uint64_t sub_227CFCC58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227CFC854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227CFCC88()
{
  result = qword_27D7EA370;
  if (!qword_27D7EA370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA378, qword_227D644F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA370);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMSPlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227CFCDE8()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BDA8);
  __swift_project_value_buffer(v0, qword_280E7BDA8);
  return sub_227D49EC8();
}

uint64_t sub_227CFCE34()
{
  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BDA8);
}

uint64_t GameKitService.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GameKitService.init(actorSystem:dataProvider:)(a1, a2);
  return v7;
}

uint64_t GameKitService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = sub_227D49EF8();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem) = a1;
  type metadata accessor for GameKitService();
  v17 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v9, v10);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v11, v12);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_id, v7, v15);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider) = v16;
  v17 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t GameKitService.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CFD1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D88, &qword_227D4F9B8);
      sub_227C93D30();
      sub_227C93DB4();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227CFD6D0(v40);
  }
}

uint64_t sub_227CFD438()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFD530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeAchievements(achievements:)();
}

uint64_t sub_227CFD6D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CFD6EC, v1);
}

uint64_t sub_227CFD6EC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D1F88C(v5);
}

uint64_t GameKitService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[10] = v7;
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  OUTLINED_FUNCTION_12_16(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[15] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[16] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v18);
  v19 = sub_227D49D58();
  v0[18] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227CFD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[6];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[20];
    v20 = v17[17];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[6]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B67D40();
    sub_227B67DF0();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[20];
    if (v19)
    {
      v23 = v17[18];
      v24 = v17[19];
      v25 = OUTLINED_FUNCTION_60();
      v26(v25);
      v27 = OUTLINED_FUNCTION_17_0();
      v28(v27);
      OUTLINED_FUNCTION_71_8();
      v43 = v17[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    else
    {
      v38 = v17[14];
      v39 = v17[10];
      sub_227B15F50(v17[5], v17[11], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v40 = v17[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v41 = v17[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DE8, &unk_227D61550);
      sub_227B67EA0();
      sub_227B67F50();
      OUTLINED_FUNCTION_17();
      v42 = v17[20];
      sub_227D49D08();
      v52 = v17[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v53 = *(MEMORY[0x277D0CE28] + 4);
      v54 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v54);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v55, v56);
      OUTLINED_FUNCTION_48();
      *v42 = v57;
      v42[1] = sub_227CFDC70;
      v58 = v17[20];
      v59 = v17[9];
      v60 = v17[6];
      OUTLINED_FUNCTION_4(v61);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_199_3(v29);
    *v30 = v31;
    v30[1] = sub_227CFDE34;
    v32 = v17[5];
    v33 = v17[6];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return sub_227CFE504(v34, v35);
  }
}

uint64_t sub_227CFDC70()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = *(v12 + 24);
  OUTLINED_FUNCTION_108_6();
  v22 = *(v12 + 72);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227CFDE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_123();
  v12 = *v11;
  v13 = *(*v11 + 184);
  v14 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;

  OUTLINED_FUNCTION_209();
  v17 = *(v16 + 160);
  v18 = v12[17];
  v19 = v12[14];
  v20 = v12[11];
  v21 = v12[9];

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_227CFDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = *(v12 + 176);
  OUTLINED_FUNCTION_108_6();
  v22 = *(v12 + 72);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227CFE080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v14 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_227CFE32C;

  return GameKitService.listAchievements(games:after:)();
}

uint64_t sub_227CFE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[9];
  v14 = v12[8];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[5];
  v18 = v12[4];
  v19 = v12[3];
  v20 = v12[2];
  OUTLINED_FUNCTION_108_1();
  *v21 = v22;
  OUTLINED_FUNCTION_197(v23, v24);
  OUTLINED_FUNCTION_186();
  (*(v25 + 8))(v17, v19);
  OUTLINED_FUNCTION_185_1();
  (*(v26 + 8))(v14, v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_227CFE504(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFE51C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_58_0(v3);

  return sub_227D1F9B0(v5, v6);
}

uint64_t GameKitService.getAchievementsProgresses(achievements:player:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[16] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[17] = v16;
  v18 = *(v17 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49D58();
  v0[19] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[20] = v20;
  v22 = *(v21 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227CFE7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[6];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[21];
    v20 = v17[18];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[6]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[21];
    if (v19)
    {
      v23 = v17[19];
      v24 = v17[20];
      (*(v17[17] + 8))(v17[18], v17[16]);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v45 = v17[21];
      v46 = v17[18];
      v47 = v17[15];
      v48 = v17[12];
      v49 = v17[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
    }

    else
    {
      v34 = v17[15];
      v35 = v17[12];
      v36 = v17[10];
      v37 = v17[5];
      v38 = OUTLINED_FUNCTION_56(v17[11]);
      v39(v38);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_14_4();
      sub_227B15A74(v40, &qword_27D7E67C0, &unk_227D4FB20);
      OUTLINED_FUNCTION_13_4();
      sub_227B15A74(v41, &qword_27D7E67C0, &unk_227D4FB20);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v42 = v17[21];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v43 = v17[21];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
      sub_227B69008();
      sub_227B690BC();
      OUTLINED_FUNCTION_17();
      v44 = v17[21];
      sub_227D49D08();
      v58 = v17[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v59 = *(MEMORY[0x277D0CE28] + 4);
      v60 = swift_task_alloc();
      v17[22] = v60;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v61, v62);
      OUTLINED_FUNCTION_48();
      *v60 = v63;
      v60[1] = sub_227B685A0;
      v64 = v17[21];
      v65 = v17[9];
      v66 = v17[6];
      OUTLINED_FUNCTION_4(v67);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v17[24] = v27;
    *v27 = v17;
    v27[1] = sub_227CFEB20;
    v28 = v17[5];
    v29 = v17[6];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return sub_227CFEF4C(v30, v31);
  }
}

uint64_t sub_227CFEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_123();
  v12 = *v11;
  v13 = *(*v11 + 192);
  v14 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;

  OUTLINED_FUNCTION_209();
  v17 = *(v16 + 168);
  v18 = v12[18];
  v19 = v12[15];
  v20 = v12[12];
  v21 = v12[9];

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_227CFECA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v14 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_227D12B28;

  return GameKitService.getAchievementsProgresses(achievements:player:)();
}

uint64_t sub_227CFEF4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFEF64()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_58_0(v3);

  return sub_227D1FAC8(v5, v6);
}

uint64_t GameKitService.resetAchievementsProgress(achievements:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[16] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[17] = v16;
  v18 = *(v17 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227CFF190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36(v15);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[18];
    if (v12)
    {
      v17 = v13[16];
      v18 = v13[17];
      v19 = OUTLINED_FUNCTION_156_4();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_60_1();
      v33 = v13[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
    }

    else
    {
      v30 = v13[12];
      v13[3] = v13[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v31 = v13[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v32 = v13[18];
      sub_227D49D08();
      v42 = v13[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE38] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_195_3(v44);
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_44_0();
      *v44 = v47;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v13[21] = v23;
    *v23 = v13;
    v23[1] = sub_227CAA930;
    v24 = v13[5];
    v25 = v13[6];
    OUTLINED_FUNCTION_53(v13[4]);
    OUTLINED_FUNCTION_163();

    return sub_227CFF81C(v26, v27);
  }
}

uint64_t sub_227CFF478()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFF570(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v15 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v13 = *v12;
  v14 = swift_task_alloc();
  v2[8] = v14;
  *v14 = v2;
  v14[1] = sub_227B96FA0;

  return GameKitService.resetAchievementsProgress(achievements:players:)();
}

uint64_t sub_227CFF81C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFF834()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_58_0(v3);

  return sub_227D1FBF4(v5, v6);
}

uint64_t GameKitService.revealAchievements(achievements:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[16] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[17] = v16;
  v18 = *(v17 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227CFFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36(v15);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[18];
    if (v12)
    {
      v17 = v13[16];
      v18 = v13[17];
      v19 = OUTLINED_FUNCTION_156_4();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_60_1();
      v30 = v13[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
    }

    else
    {
      v27 = v13[12];
      v13[3] = v13[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v28 = v13[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v29 = v13[18];
      sub_227D49D08();
      v39 = v13[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE38] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_195_3(v41);
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v42, v43);
      OUTLINED_FUNCTION_44_0();
      *v41 = v44;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v13[21] = v23;
    *v23 = v13;
    v23[1] = sub_227C9660C;
    v24 = v13[6];
    OUTLINED_FUNCTION_163();

    return sub_227CFFFF0();
  }
}

uint64_t sub_227CFFD44(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v15 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v13 = *v12;
  v14 = swift_task_alloc();
  v2[8] = v14;
  *v14 = v2;
  v14[1] = sub_227B80254;

  return GameKitService.revealAchievements(achievements:players:)();
}

uint64_t sub_227D00008()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  sub_227B0F8D0(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t GameKitService.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E78, &qword_227D4FDE0);
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D00210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    v15 = v13[3];
    OUTLINED_FUNCTION_36(v13[4]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B69008();
    sub_227B690BC();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[13];
    if (v12)
    {
      v18 = v13[11];
      v19 = v13[12];
      v20 = OUTLINED_FUNCTION_91();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v17 = v13[13];
      sub_227D49D08();
      v37 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = *(MEMORY[0x277D0CE38] + 4);
      v39 = swift_task_alloc();
      v13[14] = v39;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v40, v41);
      OUTLINED_FUNCTION_44_0();
      *v39 = v42;
      v39[1] = sub_227D0047C;
      v43 = v13[13];
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v13[16] = v33;
    *v33 = v13;
    v33[1] = sub_227CAA928;
    v34 = v13[4];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227D00710(v35);
  }
}

uint64_t sub_227D0047C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D00574(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_227B4AF94;

  return GameKitService.submitAchievementsProgress(progress:)();
}

uint64_t sub_227D00710(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0072C, v1);
}

uint64_t sub_227D0072C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D1FD20(v5);
}

uint64_t GameKitService.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D008F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8270, &unk_227D619F0);
      sub_227BC8FC0();
      sub_227BC90F8();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D00CF0(v40);
  }
}

uint64_t sub_227D00B50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeLeaderboards(leaderboards:)();
}

uint64_t sub_227D00CF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D00D0C, v1);
}

uint64_t sub_227D00D0C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20184(v5);
}

uint64_t GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = sub_227D49458();
  OUTLINED_FUNCTION_12_16(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[15] = v11;
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[17] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v18);
  v19 = sub_227D49328();
  v1[20] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[21] = v20;
  v22 = *(v21 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[23] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[24] = v24;
  v26 = *(v25 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F8, &qword_227D58B90);
  v1[26] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v1[27] = v28;
  v30 = *(v29 + 64);
  v1[28] = OUTLINED_FUNCTION_30();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[29] = v31;
  OUTLINED_FUNCTION_10_0(v31);
  v1[30] = v32;
  v34 = *(v33 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v35 = sub_227D49D58();
  v1[32] = v35;
  OUTLINED_FUNCTION_10_0(v35);
  v1[33] = v36;
  v38 = *(v37 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v39 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_227D0106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_166();
  v18 = *(v17 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v19 = *(v17 + 272);
    v20 = *(v17 + 248);
    v21 = *(v17 + 48);
    OUTLINED_FUNCTION_36(*(v17 + 88));
    *(v17 + 32) = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v22 = *(v17 + 272);
    if (v19)
    {
      v23 = *(v17 + 256);
      v24 = *(v17 + 264);
      (*(*(v17 + 240) + 8))(*(v17 + 248), *(v17 + 232));
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v52 = *(v17 + 272);
      v53 = *(v17 + 248);
      v54 = *(v17 + 224);
      OUTLINED_FUNCTION_52_4();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v55();
    }

    else
    {
      v40 = *(v17 + 224);
      *(v17 + 16) = *(v17 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8300, &unk_227D58BA0);
      OUTLINED_FUNCTION_58_4();
      sub_227D49478();
      sub_227BCBB14(&qword_27D7E8308);
      sub_227BCBB14(&qword_27D7E8310);
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v41 = *(v17 + 272);
      v42 = *(v17 + 200);
      v43 = *(v17 + 176);
      v44 = *(v17 + 160);
      v45 = *(v17 + 72);
      v46 = OUTLINED_FUNCTION_56(*(v17 + 168));
      v47(v46);
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_130_4();
      sub_227B0F8D0(v48, v43);
      OUTLINED_FUNCTION_136_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v49 = *(v17 + 272);
      v50 = *(v17 + 152);
      v51 = *(v17 + 120);
      sub_227B15F50(*(v17 + 80), *(v17 + 128), &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      sub_227BCBE08();
      OUTLINED_FUNCTION_17();
      v57 = *(v17 + 272);
      sub_227D49D08();
      v58 = *(v17 + 112);
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v59 = *(MEMORY[0x277D0CE28] + 4);
      v60 = swift_task_alloc();
      *(v17 + 280) = v60;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v61, v62);
      OUTLINED_FUNCTION_48();
      *v60 = v63;
      v60[1] = sub_227D0176C;
      v64 = *(v17 + 272);
      v65 = *(v17 + 112);
      v66 = *(v17 + 88);
      OUTLINED_FUNCTION_1_2(v67);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    *(v17 + 296) = v27;
    *v27 = v17;
    v27[1] = sub_227C991B4;
    v28 = *(v17 + 80);
    v29 = *(v17 + 88);
    v30 = *(v17 + 64);
    v31 = *(v17 + 72);
    v32 = *(v17 + 56);
    OUTLINED_FUNCTION_53(*(v17 + 48));
    OUTLINED_FUNCTION_176_1();

    return sub_227D02260(v33, v34, v35, v36, v37);
  }
}

uint64_t sub_227D0176C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D01A74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v23 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v22 = *v13;
  v21 = v13[1];
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v17 = a2[3];
  v3[12] = v17;
  v18 = *(v17 - 8);
  v3[13] = v18;
  v19 = *(v18 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v20 = swift_task_alloc();
  v3[15] = v20;
  *v20 = v3;
  v20[1] = sub_227D01F74;

  return GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227D01F74()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 120);
  v30 = *(v0 + 112);
  OUTLINED_FUNCTION_69();
  v29 = *(v2 + 104);
  OUTLINED_FUNCTION_69();
  v26 = *(v3 + 96);
  OUTLINED_FUNCTION_69();
  v28 = *(v4 + 88);
  OUTLINED_FUNCTION_69();
  v27 = *(v5 + 80);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 72);
  v25 = *(v8 + 64);
  OUTLINED_FUNCTION_69();
  v24 = *(v9 + 56);
  OUTLINED_FUNCTION_69();
  v11 = *(v10 + 48);
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  v16 = v12[2];
  OUTLINED_FUNCTION_80_0();
  v18 = v17;
  OUTLINED_FUNCTION_13();
  *v19 = v18;
  OUTLINED_FUNCTION_197(v20, v21);
  (*(v14 + 8))(v13, v15);
  (*(v24 + 8))(v25, v11);
  (*(v27 + 8))(v28, v7);
  (*(v29 + 8))(v30, v26);

  OUTLINED_FUNCTION_220_1();

  return v22();
}

uint64_t sub_227D02260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0227C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[7] + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_227C99C38;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = OUTLINED_FUNCTION_40_0();

  return sub_227D203AC(v7, v8, v9, v10, v11);
}

uint64_t GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_227D49458();
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[13] = v10;
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[15] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v17);
  v18 = sub_227D49328();
  v1[18] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[21] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[24] = v26;
  OUTLINED_FUNCTION_10_0(v26);
  v1[25] = v27;
  v29 = *(v28 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[27] = v30;
  OUTLINED_FUNCTION_10_0(v30);
  v1[28] = v31;
  v33 = *(v32 + 64);
  v1[29] = OUTLINED_FUNCTION_30();
  v34 = sub_227D49D58();
  v1[30] = v34;
  OUTLINED_FUNCTION_10_0(v34);
  v1[31] = v35;
  v37 = *(v36 + 64);
  v1[32] = OUTLINED_FUNCTION_30();
  v38 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_227D025F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_166();
  v18 = v17[9];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[32];
    v20 = v17[29];
    v21 = v17[5];
    OUTLINED_FUNCTION_36(v17[9]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[32];
    if (v19)
    {
      v23 = v17[30];
      v24 = v17[31];
      (*(v17[28] + 8))(v17[29], v17[27]);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v50 = v17[32];
      v51 = v17[29];
      v52 = v17[26];
      OUTLINED_FUNCTION_57_3();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v53();
    }

    else
    {
      v38 = v17[26];
      v17[3] = v17[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v39 = v17[32];
      v40 = v17[23];
      v41 = v17[20];
      v42 = v17[18];
      v43 = v17[7];
      v44 = OUTLINED_FUNCTION_56(v17[19]);
      v45(v44);
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_130_4();
      sub_227B0F8D0(v46, v41);
      OUTLINED_FUNCTION_136_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v47 = v17[32];
      v48 = v17[17];
      v49 = v17[13];
      sub_227B15F50(v17[8], v17[14], &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      sub_227BCBE08();
      OUTLINED_FUNCTION_17();
      v55 = v17[32];
      sub_227D49D08();
      v56 = v17[12];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v57 = *(MEMORY[0x277D0CE28] + 4);
      v58 = swift_task_alloc();
      v17[33] = v58;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v59, v60);
      OUTLINED_FUNCTION_48();
      *v58 = v61;
      v58[1] = sub_227D02C9C;
      v62 = v17[32];
      v63 = v17[12];
      v64 = v17[9];
      OUTLINED_FUNCTION_1_2(v65);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v17[35] = v27;
    *v27 = v17;
    v27[1] = sub_227C9A918;
    v28 = v17[8];
    v29 = v17[9];
    v30 = v17[6];
    v31 = v17[7];
    OUTLINED_FUNCTION_53(v17[5]);
    OUTLINED_FUNCTION_176_1();

    return sub_227D034FC(v32, v33, v34, v35);
  }
}

uint64_t sub_227D02C9C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D02FFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v21 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v22 = swift_task_alloc();
  v3[8] = v22;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v20 = *v22;
  v13 = a2[2];
  v3[9] = v13;
  v14 = *(v13 - 8);
  v3[10] = v14;
  v15 = *(v14 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v16 = a2[3];
  v3[12] = v16;
  v17 = *(v16 - 8);
  v3[13] = v17;
  v18 = *(v17 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v19 = swift_task_alloc();
  v3[15] = v19;
  *v19 = v3;
  v19[1] = sub_227D12AFC;

  return GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227D034FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D03518()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_227C9B1EC;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D204E0(v6, v7, v8, v9);
}

uint64_t GameKitService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D49458();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[14] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49D58();
  v1[17] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227D03760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[7];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[19];
    v20 = v17[16];
    v21 = v17[5];
    OUTLINED_FUNCTION_36(v17[7]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B67D40();
    sub_227B67DF0();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[19];
    if (v19)
    {
      v23 = v17[17];
      v24 = v17[18];
      (*(v17[15] + 8))(v17[16], v17[14]);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v38 = v17[19];
      v39 = v17[16];
      v40 = v17[13];
      v41 = v17[10];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    else
    {
      v34 = v17[13];
      v17[3] = v17[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v35 = v17[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v36 = v17[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      sub_227BCA200();
      OUTLINED_FUNCTION_17();
      v37 = v17[19];
      sub_227D49D08();
      v50 = v17[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v51 = *(MEMORY[0x277D0CE28] + 4);
      v52 = swift_task_alloc();
      v17[20] = v52;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v53, v54);
      OUTLINED_FUNCTION_48();
      *v52 = v55;
      v52[1] = sub_227D03AC4;
      v56 = v17[19];
      OUTLINED_FUNCTION_203_0();
      OUTLINED_FUNCTION_1_2(v57);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v17[22] = v27;
    *v27 = v17;
    v27[1] = sub_227D03C80;
    v28 = v17[6];
    v29 = v17[7];
    OUTLINED_FUNCTION_53(v17[5]);
    OUTLINED_FUNCTION_46();

    return sub_227D04158(v30, v31);
  }
}

uint64_t sub_227D03AC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D03BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_70_3();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = v12[4];
  v22 = v12[19];
  v23 = v12[16];
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_227D03C80()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_209();
  v7 = *(v6 + 152);
  v8 = v2[16];
  v9 = v2[13];
  v10 = v2[10];

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_117_0();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227D03DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_70_3();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = v12[21];
  v22 = v12[19];
  v23 = v12[16];
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_227D03EA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v16 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v14 = *v13;
  v15 = swift_task_alloc();
  v3[9] = v15;
  *v15 = v3;
  v15[1] = sub_227CFE32C;

  return GameKitService.listLeaderboards(games:players:)();
}

uint64_t sub_227D04158(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D04170()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_58_0(v3);

  return sub_227D20294(v5, v6);
}

uint64_t GameKitService.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83A8, &qword_227D58E40);
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    v15 = v13[3];
    OUTLINED_FUNCTION_36(v13[4]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83B0, &unk_227D58E50);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_137_0();
    sub_227BCE64C();
    sub_227BCE700();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[13];
    if (v12)
    {
      v18 = v13[11];
      v19 = v13[12];
      v20 = OUTLINED_FUNCTION_91();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v17 = v13[13];
      sub_227D49D08();
      v37 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = *(MEMORY[0x277D0CE38] + 4);
      v39 = swift_task_alloc();
      v13[14] = v39;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v40, v41);
      OUTLINED_FUNCTION_44_0();
      *v39 = v42;
      v39[1] = sub_227D045B8;
      v43 = v13[13];
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v13[16] = v33;
    *v33 = v13;
    v33[1] = sub_227C852D0;
    v34 = v13[4];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227D049AC(v35);
  }
}

uint64_t sub_227D045B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D046B0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227D04758()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  v13 = v0[15];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[7];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_227D04810(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_227B3FFF4;

  return GameKitService.submitLeaderboardEntries(entries:)();
}

uint64_t sub_227D049AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D049C8, v1);
}

uint64_t sub_227D049C8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20610(v5);
}

uint64_t GameKitService.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D04B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8();
    sub_227BCF728();
    sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8410, &unk_227D58F60);
      sub_227BCF888();
      sub_227BCF9C0();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D04F94(v40);
  }
}

uint64_t sub_227D04DF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeLeaderboardSets(leaderboardSets:)();
}

uint64_t sub_227D04F94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D04FB0, v1);
}

uint64_t sub_227D04FB0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20844(v5);
}

uint64_t GameKitService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B67D40();
    sub_227B67DF0();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8450, &unk_227D64DE0);
      sub_227BD058C();
      sub_227BD063C();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D05580(v40);
  }
}

uint64_t sub_227D053E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.listLeaderboardSets(games:)();
}

uint64_t sub_227D05580(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0559C, v1);
}

uint64_t sub_227D0559C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20968(v5);
}

uint64_t GameKitService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D05768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8();
    sub_227BCF728();
    sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      sub_227BCA200();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D05B68(v40);
  }
}

uint64_t sub_227D059C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227D05B68(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D05B84, v1);
}

uint64_t sub_227D05B84()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20A8C(v5);
}

uint64_t GameKitService.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D49458();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4A058();
  v1[10] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v1[13] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v1[16] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[20] = v22;
  v24 = *(v23 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[23] = v26;
  v28 = *(v27 + 64);
  v29 = OUTLINED_FUNCTION_30();
  v30 = OUTLINED_FUNCTION_229_1(v29);
  v1[25] = v30;
  OUTLINED_FUNCTION_10_0(v30);
  v1[26] = v31;
  v33 = *(v32 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v34 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_227D05EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[6];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[27];
    v17 = v14[24];
    v19 = v14[20];
    v18 = v14[21];
    v20 = v14[19];
    v21 = v14[3];
    OUTLINED_FUNCTION_36(v14[6]);
    v22 = OUTLINED_FUNCTION_9_1();
    v23(v22);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v24);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v25);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    v26 = v14[27];
    if (v16)
    {
      v27 = OUTLINED_FUNCTION_94_2();
      v28(v27);
      v29 = OUTLINED_FUNCTION_17_0();
      v30(v29);
      OUTLINED_FUNCTION_44();
      v51 = v14[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v40 = v14[18];
      v14[2] = v14[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7070, &unk_227D64F40);
      OUTLINED_FUNCTION_11_6();
      sub_227B7F5C4();
      sub_227B7F6FC();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v41 = v14[27];
      v42 = v14[15];
      v43 = v14[12];
      v44 = v14[10];
      v45 = v14[5];
      v46 = OUTLINED_FUNCTION_56(v14[11]);
      v47(v46);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v48, v43);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v49 = v14[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v50 = v14[27];
      sub_227D49D08();
      v60 = v14[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v61 = *(MEMORY[0x277D0CE38] + 4);
      v62 = swift_task_alloc();
      OUTLINED_FUNCTION_183_7(v62);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v63, v64);
      OUTLINED_FUNCTION_44_0();
      *v50 = v65;
      v50[1] = sub_227D062FC;
      v66 = v14[27];
      v67 = v14[9];
      v68 = v14[6];
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B10](v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v14[30] = v31;
    *v31 = v14;
    v31[1] = sub_227B7EDE0;
    v32 = v14[5];
    v33 = v14[6];
    v34 = v14[4];
    OUTLINED_FUNCTION_53(v14[3]);
    OUTLINED_FUNCTION_16_0();

    return sub_227D06984(v35, v36, v37);
  }
}

uint64_t sub_227D062FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D065D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_227D12B1C;

  return GameKitService.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_227D06984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0699C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[5] + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_227B7F4E4;
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_40_0();

  return sub_227B2A510();
}

uint64_t GameKitService.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v0[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v19);
  v20 = sub_227D49D58();
  v0[18] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[19] = v21;
  v23 = *(v22 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227D06C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36(v15);
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v18);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v19);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    v20 = v13[20];
    if (v12)
    {
      v21 = v13[18];
      v22 = v13[19];
      v23 = OUTLINED_FUNCTION_60();
      v24(v23);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      OUTLINED_FUNCTION_71_8();
      v39 = v13[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    else
    {
      v36 = v13[11];
      v13[2] = v13[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7070, &unk_227D64F40);
      OUTLINED_FUNCTION_11_6();
      sub_227B7F5C4();
      sub_227B7F6FC();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v37 = v13[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v38 = v13[20];
      sub_227D49D08();
      v48 = v13[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE38] + 4);
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v50);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v51, v52);
      OUTLINED_FUNCTION_44_0();
      *v38 = v53;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_199_3(v27);
    *v28 = v29;
    v28[1] = sub_227D12B0C;
    v30 = v13[4];
    v31 = v13[5];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D072B8(v32, v33);
  }
}

uint64_t sub_227D06F1C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D07014(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_227B96FA0;

  return GameKitService.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_227D072B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D072D0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B2A1DC();
}

uint64_t GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A058();
  v0[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v19);
  v20 = sub_227D49D58();
  v0[18] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[19] = v21;
  v23 = *(v22 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227D07540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v13 = v12[5];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[20];
    v15 = v12[17];
    v16 = v12[3];
    OUTLINED_FUNCTION_36(v12[5]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B8, &qword_227D50DD8);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B813C0();
    sub_227B81470();
    OUTLINED_FUNCTION_8_3();
    v17 = v12[20];
    if (v14)
    {
      v18 = v12[18];
      v19 = v12[19];
      v20 = OUTLINED_FUNCTION_60();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_71_8();
      v42 = v12[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
    }

    else
    {
      v33 = v12[14];
      v34 = v12[11];
      v35 = v12[9];
      v36 = v12[4];
      v37 = OUTLINED_FUNCTION_56(v12[10]);
      v38(v37);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v39, v34);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v40 = v12[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v41 = v12[20];
      sub_227D49D08();
      v51 = v12[8];
      sub_227D49468();
      v52 = *(MEMORY[0x277D0CE38] + 4);
      v53 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v53);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v54, v55);
      OUTLINED_FUNCTION_44_0();
      *v41 = v56;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
    }
  }

  else
  {
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_199_3(v24);
    *v25 = v26;
    v25[1] = sub_227D12B0C;
    v27 = v12[4];
    v28 = v12[5];
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D07DB8(v29, v30);
  }
}

uint64_t sub_227D0788C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D07984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v12 = OUTLINED_FUNCTION_47_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_206_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D07A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v13 = OUTLINED_FUNCTION_47_2();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = *(v12 + 176);
  OUTLINED_FUNCTION_108_6();
  v22 = *(v12 + 64);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227D07B10(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v13 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v12 = swift_task_alloc();
  v2[8] = v12;
  *v12 = v2;
  v12[1] = sub_227B80254;

  return GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_227D07DB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D07DD0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B32250();
}

uint64_t GameKitService.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v9;
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v0[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[17] = v17;
  v19 = *(v18 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[20] = v21;
  v23 = *(v22 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[22] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v0[23] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_229_1(v28);
  v0[25] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227D0852C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D08624(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_227D12B1C;

  return GameKitService.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_227D089E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D08A00()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_127_0(v2);

  return sub_227B348AC();
}

uint64_t GameKitService.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D08BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B8, &qword_227D50DD8);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B813C0();
    sub_227B81470();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70D0, &unk_227D50EA0);
      sub_227B81E10();
      sub_227B81F48();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_112_1();

    return sub_227D08FEC(v40);
  }
}

uint64_t sub_227D08E4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_227D08FEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D09008, v1);
}

uint64_t sub_227D09008()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B33A8C();
}

uint64_t GameKitService.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v0[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v19);
  v20 = sub_227D49D58();
  v0[18] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[19] = v21;
  v23 = *(v22 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227D09284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36(v15);
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_79_8();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_184_4();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v18);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v19);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    v20 = v13[20];
    if (v12)
    {
      v21 = v13[18];
      v22 = v13[19];
      v23 = OUTLINED_FUNCTION_60();
      v24(v23);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      OUTLINED_FUNCTION_71_8();
      v39 = v13[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    else
    {
      v36 = v13[11];
      v13[2] = v13[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_11_6();
      sub_227B88988();
      sub_227B88AC0();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v37 = v13[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v38 = v13[20];
      sub_227D49D08();
      v48 = v13[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE38] + 4);
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v50);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v51, v52);
      OUTLINED_FUNCTION_44_0();
      *v38 = v53;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_199_3(v27);
    *v28 = v29;
    v28[1] = sub_227D12B0C;
    v30 = v13[4];
    v31 = v13[5];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D09828(v32, v33);
  }
}

uint64_t sub_227D09584(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_227B96FA0;

  return GameKitService.refreshChallenges(player:filters:)();
}

uint64_t sub_227D09828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D09840()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B354A8();
}

uint64_t GameKitService.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v9;
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v0[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[17] = v17;
  v19 = *(v18 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[20] = v21;
  v23 = *(v22 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[22] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v0[23] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_229_1(v28);
  v0[25] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227D09FA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_227D12B1C;

  return GameKitService.listChallenges(player:filters:after:)();
}

uint64_t sub_227D0A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0A380()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_127_0(v2);

  return sub_227B35538();
}

uint64_t GameKitService.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
    OUTLINED_FUNCTION_137_0();
    sub_227B87C80();
    sub_227B87D30();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
      sub_227B87DE0();
      sub_227B87F18();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D0A96C(v40);
  }
}

uint64_t sub_227D0A7CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeChallenges(challenges:)();
}

uint64_t sub_227D0A96C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0A988, v1);
}

uint64_t sub_227D0A988()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B3541C();
}

uint64_t GameKitService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D49458();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4A058();
  v1[8] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v1[11] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[17] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[18] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v24);
  v25 = sub_227D49D58();
  v1[20] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[21] = v26;
  v28 = *(v27 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227D0AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36(v15);
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v18);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v19);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    if (v12)
    {
      v20 = v13[21];
      v21 = OUTLINED_FUNCTION_59();
      v22(v21);
      (*(v20 + 8))(v13[22], v13[20]);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    else
    {
      v30 = v13[22];
      v31 = v13[13];
      v32 = v13[10];
      v33 = v13[8];
      v34 = v13[3];
      v35 = OUTLINED_FUNCTION_56(v13[9]);
      v36(v35);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0();
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v37, v32);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v38 = v13[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v39 = v13[22];
      sub_227D49D08();
      v48 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE38] + 4);
      v50 = swift_task_alloc();
      v13[23] = v50;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v51, v52);
      OUTLINED_FUNCTION_44_0();
      *v50 = v53;
      v50[1] = sub_227D0AF98;
      v54 = v13[22];
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v13[25] = v23;
    *v23 = v13;
    v23[1] = sub_227D12B2C;
    v24 = v13[3];
    v25 = v13[4];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227D0B330(v26, v27);
  }
}

uint64_t sub_227D0AF98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0B090(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227B96FA0;

  return GameKitService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227D0B330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0B348()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B4EFC0();
}

uint64_t GameKitService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v1[13] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D0B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v13 = v12[3];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[15];
    v15 = v12[12];
    v17 = v12[8];
    v16 = v12[9];
    v18 = v12[7];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[3]);
    v20 = OUTLINED_FUNCTION_9_1();
    v21(v20);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v22);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v23);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    if (v14)
    {
      v26 = v12[14];
      v27 = OUTLINED_FUNCTION_86_5();
      v28(v27);
      (*(v26 + 8))(v12[15], v12[13]);
      v29 = v12[15];
      v30 = v12[12];
      v31 = v12[9];
      v32 = v12[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    else
    {
      v24 = v12[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v25 = v12[15];
      sub_227D49D08();
      v46 = v12[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v47 = *(MEMORY[0x277D0CE38] + 4);
      v48 = swift_task_alloc();
      v12[16] = v48;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v49, v50);
      OUTLINED_FUNCTION_44_0();
      *v48 = v51;
      v48[1] = sub_227D0B820;
      v52 = v12[15];
      v53 = v12[6];
      v54 = v12[3];
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }
  }

  else
  {
    v42 = swift_task_alloc();
    v12[18] = v42;
    *v42 = v12;
    v42[1] = sub_227B3FC38;
    v43 = v12[3];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227D0BB80(v44);
  }
}

uint64_t sub_227D0B820()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0B918()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = OUTLINED_FUNCTION_156_4();
  v6(v5);
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[6];

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227D0B9E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227B3FFF4;

  return GameKitService.refreshGameActivity(game:)();
}

uint64_t sub_227D0BB80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0BB9C, v1);
}

uint64_t sub_227D0BB9C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B4EC94();
}

uint64_t GameKitService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v9;
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v0[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[17] = v17;
  v19 = *(v18 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[20] = v21;
  v23 = *(v22 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[22] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v0[23] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_229_1(v28);
  v0[25] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227D0C2F8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0C5D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_227D0C990;

  return GameKitService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227D0C990()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_14();
  v1 = v0[11];
  v2 = v0[10];
  v20 = v0[9];
  OUTLINED_FUNCTION_69();
  v4 = *(v3 + 64);
  v6 = *(v5 + 56);
  v19 = *(v5 + 48);
  OUTLINED_FUNCTION_69();
  v8 = *(v7 + 40);
  v10 = v9[4];
  v11 = v9[3];
  v12 = v9[2];
  OUTLINED_FUNCTION_80_0();
  v14 = v13;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;

  (*(v11 + 8))(v10, v12);
  (*(v19 + 8))(v6, v8);
  (*(v20 + 8))(v2, v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v16();
}

uint64_t sub_227D0CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0CBFC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_127_0(v2);

  return sub_227B53F5C();
}

uint64_t GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0();
    sub_227B42330();
    sub_227B423E0();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      sub_227B425C8();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_112_1();

    return sub_227D0D1E8(v40);
  }
}

uint64_t sub_227D0D048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA938;

  return GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227D0D1E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0D204, v1);
}

uint64_t sub_227D0D204()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B55528();
}

uint64_t sub_227D0D298()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v1 = v0[29];
  v50 = v0[28];
  v51 = v0[30];
  v2 = v0[26];
  v46 = v0[25];
  v48 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v10 = OUTLINED_FUNCTION_86_5();
  v11(v10);
  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_113();
  v14(v13);
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_173();
  v15(v16);
  v17 = (v15)(v3, v6);
  v25 = OUTLINED_FUNCTION_219_3(v17, v18, v19, v20, v21, v22, v23, v24, v44, v46, v48);
  v27 = v26(v25);
  v35 = OUTLINED_FUNCTION_221_2(v27, v28, v29, v30, v31, v32, v33, v34, v45, v47, v49, v50, v51);
  v36(v35);
  v37 = v0[32];
  v38 = v0[30];
  v39 = v0[27];
  v40 = v0[24];
  OUTLINED_FUNCTION_114_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v41();
}

uint64_t sub_227D0D3D0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[7] + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[8] = v2;
  *v2 = v3;
  v2[1] = sub_227B43BF4;
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_227B56840();
}

uint64_t GameKitService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B20, &qword_227D65880);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B28, &unk_227D65890);
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_137_0();
    sub_227B44A84();
    sub_227B44B34();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B48, &unk_227D658A0);
      sub_227B44BE4();
      sub_227B44D1C();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v44);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      OUTLINED_FUNCTION_1_30(v48);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227D0DD74(v40);
  }
}

uint64_t sub_227D0D824()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0D91C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = OUTLINED_FUNCTION_47_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  v13 = v0[3];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_227D0D9D4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_209();
  v7 = *(v6 + 112);
  v8 = *(v2 + 88);
  v9 = *(v2 + 64);

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227D0DB1C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = OUTLINED_FUNCTION_47_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_227D0DBD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227CA3714;

  return GameKitService.describeGameActivities(activities:)();
}

uint64_t sub_227D0DD74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0DD90, v1);
}

uint64_t sub_227D0DD90()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B56ECC();
}

uint64_t GameKitService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D49458();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = sub_227D49B08();
  v1[8] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B88, &unk_227D65950);
  v1[11] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v16 = sub_227D498E8();
  v1[14] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v1[17] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[18] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v24);
  v25 = sub_227D49D58();
  v1[20] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[21] = v26;
  v28 = *(v27 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227D0E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36(v15);
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_184_4();
    OUTLINED_FUNCTION_131_5();
    sub_227B0F8D0(v18, v12);
    OUTLINED_FUNCTION_137_6(&off_27D7E6B80);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v26 = v13[22];
    v27 = v13[13];
    v28 = v13[10];
    v29 = v13[8];
    v30 = v13[3];
    v31 = OUTLINED_FUNCTION_56(v13[9]);
    v32(v31);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_161_0();
    v33 = MEMORY[0x277D0CC68];
    sub_227B0F8D0(&qword_27D7E6B98, MEMORY[0x277D0CC68]);
    sub_227B0F8D0(&qword_27D7E6BA0, v33);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v34 = v13[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v35 = v13[22];
    sub_227D49D08();
    v36 = v13[7];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v37 = *(MEMORY[0x277D0CE38] + 4);
    v38 = swift_task_alloc();
    v13[23] = v38;
    type metadata accessor for GameKitService();
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v39, v40);
    OUTLINED_FUNCTION_44_0();
    *v38 = v41;
    v38[1] = sub_227D0E3D8;
    v42 = v13[22];
    OUTLINED_FUNCTION_214_3();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }

  else
  {
    v19 = swift_task_alloc();
    v13[25] = v19;
    *v19 = v13;
    v19[1] = sub_227D0E5B4;
    v20 = v13[3];
    v21 = v13[4];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227D0E9DC(v22, v23);
  }
}

uint64_t sub_227D0E3D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = v12[21];
  v13 = v12[22];
  v16 = v12[19];
  v15 = v12[20];
  v17 = v12[17];
  v18 = v12[18];
  v20 = v12[12];
  v19 = v12[13];
  v21 = v12[11];
  v22 = OUTLINED_FUNCTION_62();
  v23(v22);
  v24 = OUTLINED_FUNCTION_86();
  v25(v24);
  v26 = OUTLINED_FUNCTION_85();
  v27(v26);
  v28 = OUTLINED_FUNCTION_22_2();
  v29(v28);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_91_4();
  v30 = v12[7];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227D0E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v12 = v10[25];
  v13 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  OUTLINED_FUNCTION_81_1();
  v16 = *(v15 + 176);
  v17 = v10[19];
  v18 = v10[16];
  v19 = v10[13];
  v20 = v10[10];
  v21 = v10[7];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_163();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_227D0E73C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227B80254;

  return GameKitService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227D0E9DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0E9F4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B57834();
}

uint64_t GameKitService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v11);
  v12 = sub_227D498E8();
  OUTLINED_FUNCTION_12_16(v12);
  v0[13] = v13;
  v15 = *(v14 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v0[15] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[16] = v17;
  v19 = *(v18 + 64);
  v20 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v20);
  v21 = sub_227D49D58();
  v0[18] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[19] = v22;
  v24 = *(v23 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227D0EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v14 = v13[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36(v15);
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_184_4();
    OUTLINED_FUNCTION_131_5();
    sub_227B0F8D0(v18, v12);
    OUTLINED_FUNCTION_137_6(&off_27D7E6B80);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v19 = v13[20];
    v25 = v13[11];
    v13[2] = v13[4];
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    OUTLINED_FUNCTION_148_4();
    sub_227D49478();
    sub_227B47E34();
    sub_227B47EE4();
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v26 = v13[20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v27 = v13[20];
    sub_227D49D08();
    v28 = v13[8];
    sub_227D49468();
    v29 = *(MEMORY[0x277D0CE38] + 4);
    v30 = swift_task_alloc();
    OUTLINED_FUNCTION_156_6(v30);
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v31, v32);
    OUTLINED_FUNCTION_44_0();
    *v27 = v33;
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  else
  {
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_199_3(v20);
    *v21 = v22;
    OUTLINED_FUNCTION_35(v21);
    OUTLINED_FUNCTION_33();

    return sub_227D0F4B8();
  }
}

uint64_t sub_227D0EF98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_73_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_206_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D0F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_73_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = *(v12 + 176);
  OUTLINED_FUNCTION_108_6();
  v22 = *(v12 + 64);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227D0F214(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_227B80254;

  return GameKitService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t GameKitService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameKitService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    GameKitService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227D0F644()
{
  sub_227D4DB58();
  type metadata accessor for GameKitService();
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameKitService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameKitService();
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v1, v2);
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D0F73C@<X0>(uint64_t *a1@<X8>)
{
  result = GameKitService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D0F784()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 360))();
}

uint64_t sub_227D0F7CC()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameKitService();
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v0, v1);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227D0F830()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for GameKitService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227D0F96C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeAchievements(achievements:)();
}

uint64_t sub_227D0F9F0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.listAchievements(games:after:)();
}

uint64_t sub_227D0FA7C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.getAchievementsProgresses(achievements:player:)();
}

uint64_t sub_227D0FB08()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.resetAchievementsProgress(achievements:players:)();
}

uint64_t sub_227D0FB94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.revealAchievements(achievements:players:)();
}

uint64_t sub_227D0FC20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.submitAchievementsProgress(progress:)();
}

uint64_t sub_227D0FCA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeLeaderboards(leaderboards:)();
}

uint64_t sub_227D0FD28()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_117_0();

  return GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227D0FDC0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_164();

  return GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227D0FE54()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.listLeaderboards(games:players:)();
}

uint64_t sub_227D0FEE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.submitLeaderboardEntries(entries:)();
}

uint64_t sub_227D0FF64()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeLeaderboardSets(leaderboardSets:)();
}

uint64_t sub_227D0FFE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.listLeaderboardSets(games:)();
}

uint64_t sub_227D1006C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227D100F0()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return GameKitService.refreshChallengeDefinitions(game:filters:scope:)();
}