uint64_t sub_227B23234()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v1 = *(v0[13] + 16);
  if (v1)
  {
    v2 = v0[9];
    v4 = *(v2 + 16);
    v3 = v2 + 16;
    v5 = *(v3 + 64);
    OUTLINED_FUNCTION_19();
    v8 = v6 + v7;
    v32 = *(v3 + 56);
    v33 = v9;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v0[10];
      v12 = v0[8];
      v33(v11, v8, v12);
      v13 = sub_227D4AD18();
      v15 = v14;
      (*(v3 - 8))(v11, v12);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v10 + 2);
          v20 = OUTLINED_FUNCTION_21();
          v10 = sub_227B25F88(v20, v21, v22, v10);
        }

        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v10 = sub_227B25F88((v16 > 1), v17 + 1, 1, v10);
        }

        *(v10 + 2) = v17 + 1;
        v18 = &v10[16 * v17];
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
      }

      v8 += v32;
      --v1;
    }

    while (v1);
    v23 = v0[13];
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v0[14] = v10;
  v24 = v0[11];
  v25 = sub_227D4CE58();
  v0[15] = sub_227B25EF8(v25);
  v26 = swift_task_alloc();
  v0[16] = v26;
  *v26 = v0;
  v26[1] = sub_227B233FC;
  v27 = v0[7];
  OUTLINED_FUNCTION_16_0();

  return sub_227D465B0(v28, v29);
}

uint64_t sub_227B233FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[16];
  *v6 = *v2;
  v5[17] = v1;

  v8 = v4[15];
  v9 = v4[14];
  if (v1)
  {
  }

  else
  {

    v5[18] = a1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227B23570()
{
  v1 = v0[17];
  sub_227B25854(v0[18], v0 + 4, v0 + 3, v0 + 5);

  v2 = v0[6];
  if (*(v2 + 16))
  {
    v28 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_1_3();
    sub_227B26EA4(v3, v4, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_5(v6);
    v8 = v7;
    v9 = *(v7 + 80);
    OUTLINED_FUNCTION_19();
    v26 = v0;
    v27 = v2 + v10;
    v11 = v0[3];
    do
    {
      if (*(v11 + 16))
      {
        v12 = *(v8 + 72);
        v13 = sub_227B266C4(v27);
        if (v14)
        {
          OUTLINED_FUNCTION_17_2(v13);
        }
      }

      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_12(v15);
        sub_227B26EA4(v18, v16 + 1, 1);
      }

      OUTLINED_FUNCTION_25_0();
    }

    while (!v17);
    v0 = v26;
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[5];

  v22 = v0[4];

  v23 = v0[3];

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227B2370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[6];
  if (*(v15 + 16))
  {
    v47 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_3();
    sub_227B26EA4(v16, v17, v18);
    v19 = v47;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_5(v20);
    v22 = v21;
    v23 = *(v21 + 80);
    OUTLINED_FUNCTION_19();
    a9 = v14;
    a10 = v15 + v24;
    v25 = v14[3];
    do
    {
      if (*(v25 + 16))
      {
        v26 = *(v22 + 72);
        v27 = sub_227B266C4(a10);
        if (v28)
        {
          OUTLINED_FUNCTION_17_2(v27);
        }
      }

      a11 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = OUTLINED_FUNCTION_12(v29);
        sub_227B26EA4(v32, v30 + 1, 1);
      }

      OUTLINED_FUNCTION_25_0();
    }

    while (!v31);
    v14 = a9;
  }

  v34 = v14[10];
  v33 = v14[11];
  v35 = v14[5];

  v36 = v14[4];

  v37 = v14[3];

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B238D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67E0, &qword_227D4E578);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v99 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67E8, &qword_227D4E580);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  v14 = v94 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_0();
  v104 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F8, &qword_227D4E588);
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26_0();
  v102 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = v94 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6808, &qword_227D4E590);
  OUTLINED_FUNCTION_5(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v36 = v94 - v35;
  v105 = sub_227D4AA88();
  v37 = OUTLINED_FUNCTION_9(v105);
  v103 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = (v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v44 = OUTLINED_FUNCTION_9(v43);
  v100 = v45;
  v101 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  v50 = v94 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_5(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_26_0();
  v98 = v55;
  result = sub_227D4AE08();
  if (v57)
  {
    v58 = result;
    v59 = v57;
    v106 = v42;
    v94[1] = a1;
    sub_227D4CE58();
    v96 = v59;
    v97 = v50;
    v94[0] = v58;
    sub_227D4A888();
    v60 = sub_227D4ADB8();
    if (v60 == 2 || (v60 & 1) == 0)
    {
      v107 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_3_3();
      v95 = sub_227B128A8(v67, v68);
      v66 = &qword_227D4E598;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6818, &qword_227D4E598);
      OUTLINED_FUNCTION_4_2(&qword_27D7E6820);
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6838, &qword_227D4E5A8);
      v61 = *(v103 + 72);
      v62 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_227D4E520;
      sub_227D4AA78();
      v107 = v63;
      OUTLINED_FUNCTION_3_3();
      v95 = sub_227B128A8(v64, v65);
      v66 = &qword_227D4E598;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6818, &qword_227D4E598);
      OUTLINED_FUNCTION_4_2(&qword_27D7E6820);
      OUTLINED_FUNCTION_27_0();
    }

    v69 = v105;
    sub_227D4D5B8();
    sub_227D4ADC8();
    if (v70)
    {
      sub_227D4A8D8();
      if (v2)
      {

LABEL_17:
        (*(v103 + 8))(v66, v69);
        return (*(v100 + 8))(v97, v101);
      }

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6828, &qword_227D4E5A0);
    __swift_storeEnumTagSinglePayload(v36, v71, 1, v72);
    v95 = sub_227D4ADE8();
    v105 = v73;
    v74 = v102;
    sub_227D4AE18();
    sub_227D4AD48();
    v75 = OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_29(v75);
    if (v89)
    {
      sub_227B2746C(v74, &qword_27D7E67F8, &qword_227D4E588);
    }

    else
    {
      sub_227D4AD38();
      v77 = v76;
      OUTLINED_FUNCTION_22_4();
      (*(v78 + 8))(v79, &qword_227D4E598);
      if (v77)
      {
        sub_227D4CE58();
        sub_227D4A768();
        if (v2)
        {

          sub_227B2746C(v36, &qword_27D7E6808, &qword_227D4E590);
          v66 = v106;
          goto LABEL_17;
        }

        v80 = 0;
LABEL_19:
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
        __swift_storeEnumTagSinglePayload(v30, v80, 1, v81);
        v82 = v99;
        sub_227D4ADF8();
        sub_227D4B268();
        v83 = OUTLINED_FUNCTION_13_2();
        OUTLINED_FUNCTION_29(v83);
        if (v89)
        {
          v84 = &qword_27D7E67E0;
          v85 = &qword_227D4E578;
          v86 = v82;
        }

        else
        {
          sub_227D4B258();
          OUTLINED_FUNCTION_22_4();
          (*(v87 + 8))(v82, &qword_227D4E598);
          v88 = sub_227D4BB48();
          OUTLINED_FUNCTION_29(v14);
          if (!v89)
          {
            sub_227BD2BBC(v104);
            OUTLINED_FUNCTION_22_4();
            (*(v91 + 8))(v14, v88);
LABEL_26:
            sub_227D4ADA8();
            sub_227D4ADD8();
            v92 = v98;
            sub_227D4AAD8();
            v93 = sub_227D4AB28();
            __swift_storeEnumTagSinglePayload(v92, 0, 1, v93);
            return sub_227B240A8(v92, v94[0], v96);
          }

          v84 = &qword_27D7E67E8;
          v85 = &qword_227D4E580;
          v86 = v14;
        }

        sub_227B2746C(v86, v84, v85);
        v90 = sub_227D4AA38();
        __swift_storeEnumTagSinglePayload(v104, 1, 1, v90);
        goto LABEL_26;
      }
    }

    v80 = 1;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_227B240A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_227D4AB28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_227B2746C(a1, &qword_27D7E67B0, &unk_227D62060);
    sub_227B263A4(a2, a3, v11);

    return sub_227B2746C(v11, &qword_27D7E67B0, &unk_227D62060);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_227B2676C(v16, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_227B24274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_227B2746C(a1, &qword_27D7E6858, &qword_227D61390);
    sub_227B264EC(a2, a3, v11);

    return sub_227B2746C(v11, &qword_27D7E6858, &qword_227D61390);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_227B268E0(v16, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_227B24448()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A218();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = swift_task_alloc();
  v1[7] = v7;
  *v7 = v1;
  v7[1] = sub_227B24528;
  v8 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v8);
}

uint64_t sub_227B24528()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[8] = v11;

  if (v0)
  {
    v12 = v5[6];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v5[9] = v3;
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_227B24668()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_227B24728;
  v4 = v0[8];
  v5 = v0[9];

  return sub_227BC0AB4();
}

uint64_t sub_227B24728()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[8];
    v13 = v3[3];

    v14 = swift_task_alloc();
    v3[12] = v14;
    *v14 = v7;
    v14[1] = sub_227B24894;
    v15 = v3[2];

    return sub_227D46F2C(v15);
  }
}

uint64_t sub_227B24894()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 104) = v8;

  if (v0)
  {
    v9 = *(v3 + 48);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227B249D0()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[5];
      v22 = MEMORY[0x277D84F90];
      v4 = OUTLINED_FUNCTION_1_3();
      sub_227B26F54(v4, v5, v6);
      v7 = (v1 + 40);
      do
      {
        v8 = v0[6];
        v9 = *(v7 - 1);
        v10 = *v7;
        sub_227D4CE58();
        sub_227D4A208();
        v12 = *(v22 + 16);
        v11 = *(v22 + 24);
        if (v12 >= v11 >> 1)
        {
          v17 = OUTLINED_FUNCTION_12(v11);
          sub_227B26F54(v17, v12 + 1, 1);
        }

        v13 = v0[6];
        v14 = v0[4];
        *(v22 + 16) = v12 + 1;
        v15 = *(v3 + 80);
        OUTLINED_FUNCTION_19();
        (*(v3 + 32))(v22 + v16 + *(v3 + 72) * v12);
        v7 += 2;
        --v2;
      }

      while (v2);
    }
  }

  v18 = v0[6];

  v19 = OUTLINED_FUNCTION_8_0();

  return v20(v19);
}

uint64_t sub_227B24B1C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[6];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227B24B80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B24BAC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B8, &qword_227D4E560);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[4] = v8;
  *(v8 + 16) = xmmword_227D4E520;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_227B24D04;
  v10 = v0[3];
  OUTLINED_FUNCTION_13_2();

  return sub_227B24FC4();
}

uint64_t sub_227B24D04()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  *v4 = *v1;
  v3[6] = v7;
  v3[7] = v0;

  if (!v0)
  {
    v8 = v3[4];
    swift_setDeallocating();
    sub_227B26320();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B24E14()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[6];
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
    sub_227D4CE58();

    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    v6 = v0[2];
    v7 = v0[6];

    sub_227D49E08();
    sub_227B128A8(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67D0, &qword_227D63360);
    sub_227D49DB8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t sub_227B24F60()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  swift_setDeallocating();
  sub_227B26320();
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B24FC4()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_227B25054;
  OUTLINED_FUNCTION_13_2();

  return sub_227B22DC4();
}

uint64_t sub_227B25054()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;
  *(v2 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_227B25174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = 0;
  v16 = v14[4];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = (v16 + 40 + 16 * v15);
  while (v17 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    v20 = v19 + 2;
    ++v15;
    v21 = *v19;
    v19 += 2;
    if (v21)
    {
      v22 = *(v20 - 3);
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v18 + 2);
        v27 = OUTLINED_FUNCTION_21();
        v18 = sub_227B25F88(v27, v28, v29, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_227B25F88((v23 > 1), v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v21;
      goto LABEL_2;
    }
  }

  v30 = v14[4];
  v31 = v14[5];
  v32 = v14[2];

  v33 = *(v18 + 2);
  v34 = *(v32 + 16);
  sub_227D49DA8();
  if (v31)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_16_0();

    v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B252DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v62[1] = a3;
  v62[2] = a5;
  v69 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = v62 - v18;
  sub_227B27EC4();
  v72 = v19;
  v20 = *(*(v19 - 8) + 64);
  result = MEMORY[0x28223BE20](v19);
  v73 = (v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v74 = *(a1 + 16);
  v75 = v12;
  v70 = (v13 + 32);
  v71 = (v13 + 8);
  v63 = a1;
  v64 = a4;
  v66 = v17;
  while (v74 != v23)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v25 = *(v24 - 8);
    v26 = *(v25 + 80);
    v27 = *(v25 + 72);
    v79 = v23;
    v28 = a1 + ((v26 + 32) & ~v26) + v27 * v23;
    v29 = v73;
    result = sub_227D4A8C8();
    if (v6)
    {
      break;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v29[1];
    v76 = *v29;
    v77 = v31;
    if (!EnumCaseMultiPayload)
    {
      v44 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8) + 48);
      v45 = v65;
      (*v70)(v65, v44, v75);
      v46 = sub_227D4A6A8();
      sub_227B274CC(&v78, v46, v47);

      v48 = v68;
      (*(v25 + 16))(v68, v28, v24);
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v24);
      v49 = v48;
      v51 = v75;
      v50 = v76;
      v52 = v77;
LABEL_14:
      sub_227B24274(v49, v50, v52);
      result = (*v71)(v45, v51);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v53 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8) + 48);
      v45 = v66;
      (*v70)(v66, v53, v75);
      v54 = sub_227D4A6A8();
      sub_227B274CC(&v78, v54, v55);

      v56 = v68;
      (*(v25 + 16))(v68, v28, v24);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v24);
      v49 = v56;
      v51 = v75;
      v50 = v76;
      v52 = v77;
      goto LABEL_14;
    }

    v67 = 0;
    v32 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v78 = *a4;
    v33 = v78;
    v34 = sub_227B266C4(v28);
    if (__OFADD__(*(v33 + 16), (v35 & 1) == 0))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_227D4DAE8();
      __break(1u);
      return result;
    }

    v36 = v34;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
    if (sub_227D4D7C8())
    {
      v38 = sub_227B266C4(v28);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_22;
      }

      v36 = v38;
    }

    v40 = v78;
    if (v37)
    {
      v41 = (v78[7] + 16 * v36);
      v42 = v41[1];
      v43 = v77;
      *v41 = v76;
      v41[1] = v43;
    }

    else
    {
      v78[(v36 >> 6) + 8] |= 1 << v36;
      result = (*(v25 + 16))(v40[6] + v36 * v27, v28, v24);
      v57 = (v40[7] + 16 * v36);
      v58 = v77;
      *v57 = v76;
      v57[1] = v58;
      v59 = v40[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_21;
      }

      v40[2] = v61;
    }

    a1 = v63;
    a4 = v64;
    *v64 = v40;
    v6 = v67;
LABEL_18:
    v23 = v79 + 1;
  }

  return result;
}

uint64_t sub_227B25854(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v82 = a4;
  v85 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v89 = &v77 - v17;
  v18 = 0;
  v91 = *(a1 + 16);
  v92 = result;
  v86 = v19 + 16;
  v87 = v19;
  v83 = (v19 + 32);
  v79 = (v19 + 8);
  v80 = a3;
  v81 = v10;
  v78 = a1;
  while (v91 != v18)
  {
    v20 = *(sub_227D4AE68() - 8);
    v21 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18;
    result = sub_227D4AE58();
    if (v22)
    {
      v23 = v22;
      v90 = result;
      v24 = sub_227D4AE38();
      if (v25)
      {
        v26 = *v85;
        if (*(*v85 + 16) && (v27 = sub_227B2664C(v24, v25), (v28 & 1) != 0))
        {
          v29 = *(v26 + 56) + *(v87 + 72) * v27;
          v30 = v84;
          (*(v87 + 16))(v84, v29, v92);
          v31 = 0;
        }

        else
        {
          v31 = 1;
          v30 = v84;
        }

        v32 = v92;
        __swift_storeEnumTagSinglePayload(v30, v31, 1, v92);

        if (__swift_getEnumTagSinglePayload(v30, 1, v32) == 1)
        {
          sub_227B2746C(v30, &qword_27D7E6858, &qword_227D61390);
        }

        else
        {
          v33 = v89;
          (*v83)(v89, v30, v32);
          sub_227D4CE58();
          v34 = *a3;
          swift_isUniquelyReferenced_nonNull_native();
          v93 = *a3;
          v35 = v93;
          v36 = sub_227B266C4(v33);
          if (__OFADD__(v35[2], (v37 & 1) == 0))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            result = sub_227D4DAE8();
            __break(1u);
            return result;
          }

          v38 = v36;
          v39 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
          if (sub_227D4D7C8())
          {
            v40 = sub_227B266C4(v89);
            if ((v39 & 1) != (v41 & 1))
            {
              goto LABEL_44;
            }

            v38 = v40;
          }

          v42 = v93;
          a1 = v78;
          if (v39)
          {
            v43 = (v93[7] + 16 * v38);
            v44 = v43[1];
            *v43 = v90;
            v43[1] = v23;

            v45 = v92;
          }

          else
          {
            v93[(v38 >> 6) + 8] |= 1 << v38;
            v45 = v92;
            (*(v87 + 16))(v42[6] + *(v87 + 72) * v38, v89, v92);
            v46 = (v42[7] + 16 * v38);
            *v46 = v90;
            v46[1] = v23;
            v47 = v42[2];
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            if (v48)
            {
              goto LABEL_42;
            }

            v42[2] = v49;
          }

          v51 = v79;
          v50 = v80;
          *v80 = v42;
          a3 = v50;
          (*v51)(v89, v45);
          v10 = v81;
        }
      }

      v52 = sub_227D4AE48();
      if (v53)
      {
        v54 = *v82;
        if (*(*v82 + 16) && (v55 = sub_227B2664C(v52, v53), (v56 & 1) != 0))
        {
          (*(v87 + 16))(v10, *(v54 + 56) + *(v87 + 72) * v55, v92);
          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v58 = v92;
        __swift_storeEnumTagSinglePayload(v10, v57, 1, v92);

        if (__swift_getEnumTagSinglePayload(v10, 1, v58) == 1)
        {

          result = sub_227B2746C(v10, &qword_27D7E6858, &qword_227D61390);
        }

        else
        {
          v59 = v88;
          (*v83)(v88, v10, v58);
          v60 = *a3;
          swift_isUniquelyReferenced_nonNull_native();
          v93 = *a3;
          v61 = v93;
          v62 = sub_227B266C4(v59);
          if (__OFADD__(v61[2], (v63 & 1) == 0))
          {
            goto LABEL_41;
          }

          v64 = v62;
          v65 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
          if (sub_227D4D7C8())
          {
            v66 = sub_227B266C4(v88);
            v10 = v81;
            if ((v65 & 1) != (v67 & 1))
            {
              goto LABEL_44;
            }

            v64 = v66;
          }

          else
          {
            v10 = v81;
          }

          v68 = v93;
          if (v65)
          {
            v69 = (v93[7] + 16 * v64);
            v70 = v69[1];
            *v69 = v90;
            v69[1] = v23;

            v71 = v92;
          }

          else
          {
            v93[(v64 >> 6) + 8] |= 1 << v64;
            v71 = v92;
            (*(v87 + 16))(v68[6] + *(v87 + 72) * v64, v88, v92);
            v72 = (v68[7] + 16 * v64);
            *v72 = v90;
            v72[1] = v23;
            v73 = v68[2];
            v48 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v48)
            {
              goto LABEL_43;
            }

            v68[2] = v74;
          }

          v76 = v79;
          v75 = v80;
          *v80 = v68;
          a3 = v75;
          result = (*v76)(v88, v71);
        }
      }

      else
      {
      }
    }

    ++v18;
  }

  return result;
}

void *sub_227B25EF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227B260E4(*(a1 + 16), 0);
  v4 = sub_227B27D68(&v6, v3 + 4, v2, a1);
  sub_227B223D4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_227B25F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B260E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_227B26160(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227B2624C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A218(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A218();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227B26320()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_227B263A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_227B2664C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6840, &qword_227D4E5B0);
    sub_227D4D7C8();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_227D4AB28();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_227D4D7E8();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_227D4AB28();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_227B264EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_227B2664C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A0, &qword_227D4E5D0);
    sub_227D4D7C8();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_227D4D7E8();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

unint64_t sub_227B2664C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_227D4DB58();
  sub_227D4D048();
  v6 = sub_227D4DB98();

  return sub_227B26BCC(a1, a2, v6);
}

unint64_t sub_227B266C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20);
  v5 = sub_227D4CE98();

  return sub_227B26C80(a1, v5);
}

uint64_t sub_227B2676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_227B2664C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6840, &qword_227D4E5B0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_227B2664C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = sub_227D4AB28();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227B26A60(v11, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227B268E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_227B2664C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A0, &qword_227D4E5D0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_227B2664C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227B26B10(v11, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227B26A60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_227D4AB28();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_227B26B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_227B26BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_227D4DA78() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_227B26C80(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B15A74(&qword_27D7E6870, &qword_27D7E67C0, &unk_227D4FB20);
    v10 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227B26E40(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227D4E530;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_227B26EA4(void *a1, int64_t a2, char a3)
{
  result = sub_227B26F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_227B26EC4(size_t a1, int64_t a2, char a3)
{
  result = sub_227B270A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_227B26EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_227B26F54(size_t a1, int64_t a2, char a3)
{
  result = sub_227B27270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B26F74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6878, &unk_227D571F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227B270A4(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6848, &qword_227D4E5B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B26160(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_227B27270(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67D8, &qword_227D4E570);
  v10 = *(sub_227D4A218() - 8);
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
  v15 = *(sub_227D4A218() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B2624C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B2746C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_227B274CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_227D4DB58();
  sub_227D4D048();
  v9 = sub_227D4DB98();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_227D4DA78() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;
      sub_227D4CE58();
      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  sub_227D4CE58();
  sub_227B27874(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_227B27618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D638();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_227B26E40(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227B27874(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_227B27618(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_227B27B34(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_227D4DB58();
      sub_227D4D048();
      result = sub_227D4DB98();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_227D4DA78() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_227B279DC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_227B279DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  v2 = *v0;
  v3 = sub_227D4D628();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_227D4CE58();
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

uint64_t sub_227B27B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D638();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        result = sub_227D4DB98();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_227B27D68(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_227D4CE58();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_227D4CE58();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227B27EC4()
{
  if (!qword_27D7E6890)
  {
    v0 = sub_227D4A878();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7E6890);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_2(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t sub_227B27F4C(uint64_t a1)
{
  v1.n128_f64[0] = sub_227B27F84(a1);

  return MEMORY[0x28211DA50](v1);
}

double sub_227B27F84(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_9(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, a1);
  OUTLINED_FUNCTION_9_2();
  if (sub_227D4D538() < 65)
  {
    OUTLINED_FUNCTION_9_2();
    v12 = sub_227D4D548();
    OUTLINED_FUNCTION_9_2();
    v13 = sub_227D4D528();
    (*(v5 + 8))(v10, a1);
    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    sub_227B280F4();
    sub_227B28148();
    sub_227D4CDF8();
    (*(v5 + 8))(v10, a1);
    v11 = v15;
  }

  return v11 / 1000.0;
}

unint64_t sub_227B280F4()
{
  result = qword_27D7E68B0;
  if (!qword_27D7E68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E68B0);
  }

  return result;
}

unint64_t sub_227B28148()
{
  result = qword_27D7E68B8;
  if (!qword_27D7E68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E68B8);
  }

  return result;
}

void sub_227B281D4()
{
  OUTLINED_FUNCTION_11();
  v83 = v1;
  v84 = v0;
  v3 = v2;
  v5 = v4;
  v88[1] = *MEMORY[0x277D85DE8];
  v6 = sub_227D49188();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v76 = v12;
  OUTLINED_FUNCTION_6_0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v75 - v17);
  v19 = sub_227D4CAB8();
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v78 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  sub_227D4AA58();
  v27 = *(v9 + 16);
  v82 = v5;
  v85 = v27;
  v86 = (v9 + 16);
  v27(v18, v5, v6);
  sub_227D4CE58();
  v28 = sub_227D4CA98();
  v29 = sub_227D4D418();
  v81 = v3;

  v77 = v29;
  v30 = v28;
  v31 = os_log_type_enabled(v28, v29);
  v80 = v9;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_12_1();
    v79 = v22;
    v33 = v32;
    v88[0] = swift_slowAlloc();
    *v33 = 136315394;
    OUTLINED_FUNCTION_1_4();
    sub_227B2A160(v34, v35);
    v36 = sub_227D4DA38();
    v37 = v9;
    v39 = v38;
    v87 = *(v37 + 8);
    v87(v18, v6);
    v40 = sub_227B1B1A4(v36, v39, v88);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    v41 = v81;
    *(v33 + 14) = sub_227B1B1A4(v83, v81, v88);
    _os_log_impl(&dword_227B0D000, v30, v77, "Removing contents of directory: %s, matching: %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v22 = v79;
    OUTLINED_FUNCTION_5_2();

    v42 = OUTLINED_FUNCTION_10_1();
    v18(v42);
    v43 = v41;
  }

  else
  {

    v87 = *(v9 + 8);
    v87(v18, v6);
    v44 = OUTLINED_FUNCTION_10_1();
    v18(v44);
    v43 = v81;
  }

  v45 = v82;
  v46 = sub_227D490F8();
  v88[0] = 0;
  v47 = [v84 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:0 options:0 error:v88];

  v48 = v88[0];
  if (v47)
  {
    v49 = sub_227D4D1C8();
    v50 = v48;

    v51 = *(v49 + 16);
    if (v51)
    {
      v52 = *(v80 + 80);
      v82 = v49;
      v53 = v49 + ((v52 + 32) & ~v52);
      v54 = *(v80 + 72);
      do
      {
        v85(v16, v53, v6);
        if (sub_227D490A8())
        {
          sub_227D490E8();
          v55 = sub_227B2889C();

          if (v55)
          {
            sub_227B289E0();
          }
        }

        v87(v16, v6);
        v53 += v54;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    v79 = v22;
    v84 = v19;
    v56 = v88[0];
    v57 = sub_227D49098();

    swift_willThrow();
    sub_227D4AA58();
    v58 = v76;
    v85(v76, v45, v6);
    sub_227D4CE58();
    v59 = v57;
    v60 = sub_227D4CA98();
    v61 = v43;
    v62 = sub_227D4D438();

    if (os_log_type_enabled(v60, v62))
    {
      v63 = OUTLINED_FUNCTION_14_5();
      v64 = OUTLINED_FUNCTION_13_3();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v63 = 136315650;
      OUTLINED_FUNCTION_1_4();
      sub_227B2A160(v65, v66);
      v67 = sub_227D4DA38();
      v68 = v58;
      v70 = v69;
      v87(v68, v6);
      v71 = sub_227B1B1A4(v67, v70, v88);

      *(v63 + 4) = v71;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_227B1B1A4(v83, v61, v88);
      *(v63 + 22) = 2112;
      v72 = v57;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 24) = v73;
      *v64 = v73;
      _os_log_impl(&dword_227B0D000, v60, v62, "Unable to retrieve contents of directory: %s, matching: %s, error: %@", v63, 0x20u);
      sub_227B2A0F8(v64);
      OUTLINED_FUNCTION_5_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_2();
    }

    else
    {

      v87(v58, v6);
    }

    (v18)(v78, v84);
  }

  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227B2889C()
{
  sub_227D4CE58();
  sub_227D4CE58();
  do
  {
    while (1)
    {
      v0 = sub_227D4D068();
      if (!v1)
      {

        sub_227D4D068();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_227D4D068();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_227D4DA78();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_227B289E0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = sub_227D49188();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = sub_227D4CAB8();
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = sub_227D490F8();
  v46[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v22 error:v46];

  if (v1)
  {
    v23 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_8_1();

    v26 = v24;
  }

  else
  {
    v27 = v46[0];
    v28 = sub_227D49098();

    swift_willThrow();
    sub_227D4AA58();
    (*(v7 + 16))(v12, v3, v4);
    v29 = v28;
    v30 = sub_227D4CA98();
    v31 = sub_227D4D438();

    if (os_log_type_enabled(v30, v31))
    {
      v45 = v13;
      v32 = OUTLINED_FUNCTION_12_1();
      v42 = OUTLINED_FUNCTION_13_3();
      v44 = OUTLINED_FUNCTION_14_5();
      v46[0] = v44;
      *v32 = 136315394;
      OUTLINED_FUNCTION_1_4();
      sub_227B2A160(v33, v34);
      v35 = sub_227D4DA38();
      v43 = v16;
      v37 = v36;
      (*(v7 + 8))(v12, v4);
      v38 = sub_227B1B1A4(v35, v37, v46);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = v28;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v42 = v40;
      _os_log_impl(&dword_227B0D000, v30, v31, "Failed to remove item at: %s, error: %@", v32, 0x16u);
      sub_227B2A0F8(v42);
      OUTLINED_FUNCTION_5_2();
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_2();

      (*(v43 + 8))(v21, v45);
    }

    else
    {

      (*(v7 + 8))(v12, v4);
      (*(v16 + 8))(v21, v13);
    }

    v41 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_8_1();
  }
}

void sub_227B28D88()
{
  OUTLINED_FUNCTION_11();
  v38 = v0;
  v37[11] = v1;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_227D49188();
  v10 = OUTLINED_FUNCTION_9(v9);
  v37[7] = v11;
  v37[8] = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v37[4] = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v37[5] = v37 - v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v37[6] = v37 - v18;
  v19 = sub_227D4CCF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_3();
  v37[1] = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  v37[0] = v37 - v24;
  v25 = sub_227D4CAB8();
  v26 = OUTLINED_FUNCTION_9(v25);
  v39 = v27;
  v40 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v37[3] = v30;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  v37[2] = v37 - v32;
  sub_227D4CBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D0, &qword_227D4E600);
  v33 = *(v20 + 72);
  v34 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_227D4E520;
  v36 = *(v20 + 16);
  v41 = v3;
  v36(v35 + v34, v3, v19);

  v37[9] = v8;
  v37[10] = v6;
  sub_227D4CBA8();
  OUTLINED_FUNCTION_8_1();
}

uint64_t Optional.notNilOrThrow.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_9(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  (*(v6 + 16))(v10 - v9);
  v12 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  (*(v6 + 8))(v11, a1);
  sub_227D49E08();
  sub_227B2A160(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
  swift_allocError();
  sub_227D49D98();
  return swift_willThrow();
}

uint64_t OSSignposter.perform<A>(intervalName:task:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 128) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_227D4CA08();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227B296AC, 0, 0);
}

uint64_t sub_227B296AC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  sub_227D4C9F8();
  v3 = sub_227D4CA28();
  v4 = sub_227D4D478();
  result = sub_227D4D4E8();
  if (result)
  {
    v6 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 96);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_227D4C9E8();
        _os_signpost_emit_with_name_impl(&dword_227B0D000, v3, v4, v9, v6, "", v8, 2u);
        OUTLINED_FUNCTION_5_2();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 80);
  v11 = *(v0 + 48);
  (*(v10 + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  v12 = sub_227D4CA78();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_227D4CA68();
  v15 = *(v10 + 8);
  v16 = OUTLINED_FUNCTION_9_2();
  v17(v16);
  v22 = (v11 + *v11);
  v18 = v11[1];
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *v19 = v0;
  v19[1] = sub_227B298DC;
  v20 = *(v0 + 56);
  v21 = *(v0 + 24);

  return v22(v21);
}

uint64_t sub_227B298DC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_227B29A70;
  }

  else
  {
    v3 = sub_227B299F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227B299F0()
{
  OUTLINED_FUNCTION_7_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227B29A70()
{
  OUTLINED_FUNCTION_7_4();

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

void sub_227B29AF0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v27 = v2;
  v3 = sub_227D4CA48();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = sub_227D4CA08();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = sub_227D4CA28();
  sub_227D4CA58();
  v26 = sub_227D4D468();
  if ((sub_227D4D4E8() & 1) == 0)
  {
LABEL_13:

    (*(v15 + 8))(v20, v12);
    OUTLINED_FUNCTION_8_1();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v22 = v27;
    if (v27)
    {
LABEL_9:

      sub_227D4CA88();

      if ((*(v6 + 88))(v11, v3) == *MEMORY[0x277D85B00])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v3);
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_227D4C9E8();
      _os_signpost_emit_with_name_impl(&dword_227B0D000, v21, v26, v25, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_5_2();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v22 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_227B29D4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_227B29D98(a1, a2);
  sub_227B29EB0(&unk_283B37878);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_227B29D98(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_227D4D078())
  {
    result = sub_227B29F94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_227D4D658();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_227D4D6C8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_227B29EB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_227B2A004(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_227B29F94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D8, &qword_227D5BD90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_227B2A004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D8, &qword_227D5BD90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_227B2A0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68C8, &qword_227D4F740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B2A160(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_4_3()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_slowAlloc();
}

uint64_t sub_227B2A1DC()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D4A058();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B2A284()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D0D040], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_227B2A33C;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B2A510();
}

uint64_t sub_227B2A33C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v3 + 72) = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_91_0();
  v14(v13);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = *(v3 + 56);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_227B2A4B4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_227B2A510()
{
  OUTLINED_FUNCTION_6();
  v1[104] = v0;
  v1[103] = v2;
  v1[102] = v3;
  v1[101] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[105] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[106] = v6;
  v8 = *(v7 + 64);
  v1[107] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[108] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[109] = v10;
  v12 = *(v11 + 64);
  v1[110] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4A508();
  v1[111] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[112] = v14;
  v16 = *(v15 + 64);
  v1[113] = OUTLINED_FUNCTION_121();
  v1[114] = swift_task_alloc();
  v17 = sub_227D4A058();
  v1[115] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[116] = v18;
  v20 = *(v19 + 64);
  v1[117] = OUTLINED_FUNCTION_121();
  v1[118] = swift_task_alloc();
  v21 = sub_227D4CAB8();
  v1[119] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[120] = v22;
  v24 = *(v23 + 64);
  v1[121] = OUTLINED_FUNCTION_121();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

void sub_227B2A7B0()
{
  v186 = v0;
  v1 = *(v0 + 808);
  v2 = sub_227D4A6A8();
  *(v0 + 1072) = v2;
  v182 = v0;
  *(v0 + 1080) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 1064);
  v176 = *(v0 + 944);
  v7 = *(v0 + 928);
  v8 = *(v0 + 920);
  v9 = *(v0 + 832);
  v10 = *(v0 + 824);
  v11 = v9[79];
  v12 = v9[80];
  __swift_project_boxed_opaque_existential_1(v9 + 76, v11);
  v13 = (*(v12 + 64))(v4, v5, v11, v12);
  *(v0 + 1360) = v13 & 1;
  sub_227D4AA58();
  v162 = *(v7 + 16);
  v162(v176, v10, v8);
  sub_227D4CE58();
  v14 = sub_227D4CA98();
  v15 = sub_227D4D428();

  log = v14;
  v16 = os_log_type_enabled(v14, v15);
  v177 = *(v0 + 1064);
  v17 = *(v0 + 960);
  v172 = *(v0 + 952);
  v18 = *(v0 + 944);
  v19 = v4;
  v20 = *(v0 + 928);
  v21 = *(v0 + 920);
  v161 = v5;
  v159 = v19;
  if (v16)
  {
    v168 = v13;
    v22 = OUTLINED_FUNCTION_12_1();
    v184 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_227B1B1A4(v19, v5, &v184);
    *(v22 + 12) = 2080;
    sub_227D4A048();
    v23 = OUTLINED_FUNCTION_81_0();
    v24(v23);
    v25 = OUTLINED_FUNCTION_174_0();
    v28 = sub_227B1B1A4(v25, v26, v27);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_227B0D000, log, v15, "Refreshing challenge definitions for %s with preference: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v13 = v168;
    OUTLINED_FUNCTION_5_2();
  }

  else
  {

    v29 = OUTLINED_FUNCTION_81_0();
    v30(v29);
  }

  v31 = *(v17 + 8);
  v31(v177, v172);
  v160 = v31;
  *(v0 + 1088) = v31;
  v32 = *(v0 + 816);
  type metadata accessor for ChallengeService();
  v33 = sub_227B94B24(v32, v13 & 1);
  *(v0 + 1096) = v33;
  v34 = MEMORY[0x277D84FA0];
  v183 = MEMORY[0x277D84FA0];
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = v33;
    v37 = 0;
    v38 = *(v182 + 896);
    v39 = *(v182 + 872);
    v178 = v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v170 = *MEMORY[0x277D0D408];
    v40 = (v38 + 8);
    v164 = (v39 + 32);
    v165 = (v38 + 96);
    v166 = (v39 + 8);
    v167 = v33;
    v169 = (v38 + 8);
    v163 = v38;
    while (v37 < *(v36 + 16))
    {
      v41 = *(v182 + 912);
      v42 = *(v182 + 904);
      v43 = *(v182 + 888);
      v44 = *(v38 + 16);
      v44(v41, v178 + *(v38 + 72) * v37, v43);
      v44(v42, v41, v43);
      v45 = *(v38 + 88);
      v46 = OUTLINED_FUNCTION_91_0();
      if (v47(v46) == v170)
      {
        v48 = *(v182 + 904);
        v49 = *(v182 + 880);
        v50 = *(v182 + 864);
        (*v165)(v48, *(v182 + 888));
        (*v164)(v49, v48, v50);
        v51 = sub_227D4A848();
        v52 = *(v182 + 912);
        v53 = *(v182 + 888);
        v54 = *(v182 + 880);
        v55 = *(v182 + 864);
        sub_227B274CC(&v184, v51, v56);

        v57 = *v166;
        v58 = OUTLINED_FUNCTION_113();
        v59(v58);
        v40 = v169;
        v60 = *v169;
        v61 = OUTLINED_FUNCTION_173();
        v62(v61);
        v36 = v167;
        v38 = v163;
      }

      else
      {
        v63 = *(v182 + 904);
        v64 = *v40;
        (*v40)(*(v182 + 912), *(v182 + 888));
        v65 = OUTLINED_FUNCTION_147();
        v64(v65);
      }

      if (v35 == ++v37)
      {
        v34 = v183;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *(v182 + 1104) = v34;
    v66 = *(v182 + 928);
    v162(*(v182 + 936), *(v182 + 824), *(v182 + 920));
    v67 = *(v66 + 88);
    v68 = OUTLINED_FUNCTION_147();
    v70 = v69(v68);
    if (v70 == *MEMORY[0x277D0D038])
    {
      v71 = *(v182 + 1056);
      sub_227D4AA58();
      sub_227D4CE58();
      v72 = sub_227D4CA98();
      v73 = sub_227D4D428();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v182 + 1056);
      v76 = *(v182 + 960);
      v77 = *(v182 + 952);
      if (v74)
      {
        v78 = OUTLINED_FUNCTION_129();
        v79 = OUTLINED_FUNCTION_14_5();
        v184 = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_227B1B1A4(v159, v161, &v184);
        _os_log_impl(&dword_227B0D000, v72, v73, "Always refresh preference - bypassing cache for challenge definitions: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_5_2();
      }

      v80 = OUTLINED_FUNCTION_179();
      v160(v80);
      v81 = *(v182 + 1104);
      v82 = *(v182 + 1080);
      v83 = *(v182 + 1000);
      sub_227D4AA58();
      sub_227D4CE58();
      sub_227D4CE58();
      v84 = sub_227D4CA98();
      sub_227D4D458();
      OUTLINED_FUNCTION_127();

      if (OUTLINED_FUNCTION_107())
      {
        v85 = *(v182 + 1104);
        v86 = *(v182 + 1088);
        v87 = *(v182 + 1080);
        v88 = *(v182 + 1072);
        v179 = *(v182 + 1000);
        v89 = *(v182 + 960);
        v90 = *(v182 + 952);
        OUTLINED_FUNCTION_12_1();
        v184 = OUTLINED_FUNCTION_95_0();
        *v77 = 136315394;
        v91 = sub_227B1B1A4(v88, v87, &v184);
        OUTLINED_FUNCTION_125(v91);
        v92 = sub_227D4D348();
        sub_227B1B1A4(v92, v93, &v184);
        OUTLINED_FUNCTION_191();
        *(v77 + 14) = v87;
        OUTLINED_FUNCTION_24_0();
        _os_log_impl(v94, v95, v96, v97, v98, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_56_0();

        v86(v179, v90);
      }

      else
      {
        v77 = *(v182 + 1088);
        v103 = *(v182 + 1000);
        v104 = *(v182 + 960);
        v105 = *(v182 + 952);

        v106 = OUTLINED_FUNCTION_30_1();
        (v77)(v106);
      }

      v107 = *(v182 + 808);
      sub_227CFC560(*(v182 + 856));
      OUTLINED_FUNCTION_60_0();
      sub_227D4CE58();
      sub_227D4CE58();
      v112 = sub_227D4CA98();
      sub_227D4D428();
      OUTLINED_FUNCTION_127();

      OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_140();
      if (v113)
      {
        v114 = *(v182 + 1360);
        v115 = *(v182 + 1080);
        v116 = *(v182 + 1072);
        v117 = *(v182 + 992);
        loga = *(v182 + 960);
        v180 = *(v182 + 952);
        v171 = *(v182 + 888);
        v173 = v77;
        v118 = OUTLINED_FUNCTION_14_5();
        v184 = swift_slowAlloc();
        *v118 = 136315650;
        v119 = sub_227B1B1A4(v116, v115, &v184);
        OUTLINED_FUNCTION_22_5(v119);
        v122 = v121 & 0xFFFF00000000FFFFLL | 0x297665640000;
        if (v120)
        {
          v123 = 0;
        }

        else
        {
          v123 = v122;
        }

        if (v120)
        {
          v124 = 0xE000000000000000;
        }

        else
        {
          v124 = 0xE600000000000000;
        }

        sub_227B1B1A4(v123, v124, &v184);
        OUTLINED_FUNCTION_165_0();
        v125 = OUTLINED_FUNCTION_59_2();
        MEMORY[0x22AAA5F20](v125, v171);
        OUTLINED_FUNCTION_99_0();
        v126 = OUTLINED_FUNCTION_94();
        sub_227B1B1A4(v126, v127, v128);
        OUTLINED_FUNCTION_159();
        *(v118 + 24) = v124;
        OUTLINED_FUNCTION_24_0();
        _os_log_impl(v129, v130, v131, v132, v133, 0x20u);
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_56_0();

        v173(v117, v180);
      }

      else
      {
        v139 = *(v182 + 992);
        v140 = *(v182 + 960);
        v141 = *(v182 + 952);

        v142 = OUTLINED_FUNCTION_30_1();
        (v77)(v142);
      }

      v143 = *(v182 + 832);
      v144 = v143[16];
      v145 = v143[17];
      v146 = *(OUTLINED_FUNCTION_13_0(v143 + 13) + 32);
      OUTLINED_FUNCTION_36_0();
      v181 = v147 + *v147;
      v149 = *(v148 + 4);
      v150 = swift_task_alloc();
      v151 = OUTLINED_FUNCTION_151(v150);
      *v151 = v152;
      OUTLINED_FUNCTION_1_5(v151);
      OUTLINED_FUNCTION_136();

      __asm { BRAA            X5, X16 }
    }

    if (v70 == *MEMORY[0x277D0D040])
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_124();
      *(v100 + 1112) = v99;
      *v99 = v101;
      v99[1] = sub_227B2B4D4;
      v102 = *(v100 + 832);
    }

    else
    {
      if (v70 != *MEMORY[0x277D0D048])
      {
        v134 = *(v182 + 920);
        v135 = *(v182 + 824);
        v184 = 0;
        v185 = 0xE000000000000000;
        sub_227D4D668();
        v136 = v185;
        *(v182 + 784) = v184;
        *(v182 + 792) = v136;
        MEMORY[0x22AAA5DA0](0xD000000000000014, 0x8000000227D752D0);
        sub_227D4D7B8();
        MEMORY[0x22AAA5DA0](0xD000000000000026, 0x8000000227D752F0);
        v137 = *(v182 + 784);
        v138 = *(v182 + 792);
        sub_227D4D7F8();
        OUTLINED_FUNCTION_136();
        return;
      }

      if (*(v34 + 16))
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_124();
        v108[148] = v109;
        *v109 = v110;
        v109[1] = sub_227B2D148;
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_124();
        v108[145] = v155;
        *v155 = v156;
        v155[1] = sub_227B2C8D4;
      }

      v111 = v108[104];
    }

    OUTLINED_FUNCTION_136();

    sub_227B2F654(v157);
  }
}

uint64_t sub_227B2B4D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1112);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B2B5B8()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[104];
  v2 = v0[92];
  __swift_project_boxed_opaque_existential_1(v0 + 88, v0[91]);
  v3 = *(v1 + 96);
  v4 = *(v2 + 56);
  OUTLINED_FUNCTION_32();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[140] = v8;
  *v8 = v0;
  v8[1] = sub_227B2B6F0;
  v9 = OUTLINED_FUNCTION_6_1();
  v10.n128_u64[0] = v3;

  return v12(v9, v10);
}

uint64_t sub_227B2B6F0()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 1120);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 1128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1361) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2BE94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1136);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B2BF78()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[96];
  v2 = v0[97];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 93) + 72);
  OUTLINED_FUNCTION_32();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[143] = v7;
  *v7 = v0;
  v7[1] = sub_227B2C084;
  v8 = v0[138];
  v9 = OUTLINED_FUNCTION_4_4();

  return v11(v9);
}

uint64_t sub_227B2C084()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 1144);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 1152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1362) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2C8D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1160);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B2C9B8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[86];
  v2 = v0[87];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 83) + 64);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_227B2CAC8;
  v8 = OUTLINED_FUNCTION_6_1();

  return v10(v8);
}

uint64_t sub_227B2CAC8()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 1168);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 1176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1363) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2D148()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1184);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B2D22C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[61];
  v2 = v0[62];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 58) + 72);
  OUTLINED_FUNCTION_32();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[149] = v7;
  *v7 = v0;
  v7[1] = sub_227B2D334;
  v8 = v0[138];
  v9 = OUTLINED_FUNCTION_4_4();

  return v11(v9);
}

uint64_t sub_227B2D334()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 1192);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 1200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1364) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2D9B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 1208);
  *v4 = *v1;
  v3[152] = v7;
  v3[153] = v8;
  v3[154] = v9;
  v3[155] = v10;
  v3[156] = v0;

  if (v0)
  {
    v11 = v3[138];
    v12 = v3[135];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B2DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_108();
  a31 = v34;
  a32 = v35;
  OUTLINED_FUNCTION_150_0();
  a30 = v32;
  v167 = *(v32 + 1224);
  if (v167)
  {
    v36 = *(v32 + 1240);
    v37 = *(v32 + 1232);
    v38 = *(v36 + 16);
    if (v38)
    {
      v159 = *(v32 + 1080);
      a19 = MEMORY[0x277D84F90];
      result = sub_227B3CA0C(0, v38, 0);
      v40 = 0;
      v41 = a19;
      v161 = *(v32 + 1248);
      v163 = v38 - 1;
      v42 = 32;
      while (1)
      {
        if (v40 >= *(v36 + 16))
        {
          __break(1u);
          return result;
        }

        v171 = v42;
        v175 = v40;
        memcpy((v32 + 16), (v36 + v42), 0xE0uLL);
        sub_227B3CA2C(v32 + 16, v32 + 240);
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_171();
        if (v44)
        {
          goto LABEL_9;
        }

        v45 = sub_227CFC854(v43);
        v47 = v46;
        v48 = *(v37 + 16);
        sub_227D4CE58();
        if (v48)
        {
          v49 = OUTLINED_FUNCTION_114();
          sub_227B2664C(v49, v50);
          if (v51)
          {
            break;
          }
        }

        v53 = *(v32 + 1080);
        v54 = *(v32 + 1072);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_227D4E520;
        *(v55 + 32) = v45;
        *(v55 + 40) = v47;
        sub_227D4CE58();
        OUTLINED_FUNCTION_120();
        *(v55 + 48) = nullsub_1(v56, v57);
        *(v55 + 56) = v58;
        *(v55 + 64) = v59;
        *(v55 + 72) = v60;
        v61 = sub_227D4CE28();
        swift_isUniquelyReferenced_nonNull_native();
        a20 = v37;
        OUTLINED_FUNCTION_25_1();
        sub_227B3D114(v61, v62, 0, v63, &a20);
        if (v161)
        {

          OUTLINED_FUNCTION_55_0();
        }

        v161 = 0;
        v52 = a20;
LABEL_12:
        v64 = *(v32 + 1216);
        *(v32 + 528) = &unk_283B37A80;
        *(v32 + 536) = &off_283B37918;
        v65 = swift_allocObject();
        *(v32 + 504) = v65;
        v65[2] = v52;
        v65[3] = v64;
        v65[4] = v167;
        v65[5] = v37;
        v65[6] = v36;
        memcpy(v65 + 7, (v32 + 16), 0xE0uLL);
        a19 = v41;
        v67 = *(v41 + 16);
        v66 = *(v41 + 24);
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v33 = v36;
        if (v67 >= v66 >> 1)
        {
          sub_227B3CA0C((v66 > 1), v67 + 1, 1);
          v69 = *(v32 + 528);
          v68 = *(v32 + 536);
        }

        else
        {
          v68 = &off_283B37918;
          v69 = &unk_283B37A80;
        }

        v70 = __swift_mutable_project_boxed_opaque_existential_1(v32 + 504, v69);
        v71 = *(v69 - 1);
        v72 = *(v71 + 64);
        v73 = OUTLINED_FUNCTION_30();
        (*(v71 + 16))(v73, v70, v69);
        sub_227B3D75C(v67, v73, &a19, v69, v68);
        __swift_destroy_boxed_opaque_existential_0((v32 + 504));

        v41 = a19;
        if (v163 == v175)
        {

          goto LABEL_21;
        }

        v42 = v171 + 224;
        v40 = v175 + 1;
        v36 = v33;
      }

LABEL_9:
      sub_227D4CE58();
      v52 = v37;
      goto LABEL_12;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_21:
    *(v32 + 1256) = v41;
    *(v32 + 800) = v41;
    v88 = *(v41 + 16);
    v89 = MEMORY[0x277D84F90];
    if (v88)
    {
      a20 = MEMORY[0x277D84F90];
      sub_227D4CE58();
      v90 = OUTLINED_FUNCTION_130();
      sub_227B3CA88(v90, v91, v92);
      v89 = a20;
      v93 = v41 + 32;
      do
      {
        sub_227B11EE8(v93, v32 + 544);
        v94 = *(v32 + 576);
        __swift_project_boxed_opaque_existential_1((v32 + 544), *(v32 + 568));
        v95 = *(v94 + 48);
        v96 = OUTLINED_FUNCTION_173();
        v33 = v97(v96);
        v99 = v98;
        __swift_destroy_boxed_opaque_existential_0((v32 + 544));
        a20 = v89;
        v101 = *(v89 + 16);
        v100 = *(v89 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_227B3CA88((v100 > 1), v101 + 1, 1);
          v89 = a20;
        }

        *(v89 + 16) = v101 + 1;
        v102 = v89 + 16 * v101;
        *(v102 + 32) = v33;
        *(v102 + 40) = v99;
        v93 += 40;
        --v88;
      }

      while (v88);
    }

    v103 = *(v32 + 1104);
    v104 = sub_227B30834(v89);
    v105 = sub_227B308F4(v104, v103);
    *(v32 + 1264) = v105;

    if (*(v105 + 16))
    {
      v106 = *(v32 + 1080);
      v107 = *(v32 + 976);
      sub_227D4AA58();
      sub_227D4CE58();
      sub_227D4CE58();
      v108 = sub_227D4CA98();
      sub_227D4D428();

      v109 = OUTLINED_FUNCTION_153_0();
      v110 = *(v32 + 1088);
      if (v109)
      {
        v111 = *(v32 + 1072);
        v165 = *(v32 + 1080);
        v169 = *(v32 + 960);
        v173 = *(v32 + 952);
        v177 = *(v32 + 976);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_144();
        *v33 = 136315394;
        v112 = sub_227D4D348();
        v114 = sub_227B1B1A4(v112, v113, &a20);

        *(v33 + 4) = v114;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_227B1B1A4(v111, v165, &a20);
        OUTLINED_FUNCTION_31();
        _os_log_impl(v115, v116, v117, v118, v119, 0x16u);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_41_1();

        v120 = v173;
        v121 = v177;
      }

      else
      {
        v146 = *(v32 + 976);
        v147 = *(v32 + 960);
        v148 = *(v32 + 952);

        v121 = OUTLINED_FUNCTION_91_0();
      }

      v110(v121, v120);
      v149 = swift_task_alloc();
      *(v32 + 1272) = v149;
      *v149 = v32;
      v149[1] = sub_227B2E438;
      v150 = *(v32 + 1360);
      v151 = *(v32 + 1080);
      v152 = *(v32 + 1072);
      v153 = *(v32 + 832);
      OUTLINED_FUNCTION_55_0();

      return sub_227B2FF58();
    }

    else
    {

      *(v32 + 1296) = *(v32 + 800);
      v122 = swift_task_alloc();
      *(v32 + 1304) = v122;
      *v122 = v32;
      v122[1] = sub_227B2E630;
      v123 = *(v32 + 1360);
      v124 = *(v32 + 832);
      OUTLINED_FUNCTION_53(*(v32 + 856));
      OUTLINED_FUNCTION_55_0();

      return sub_227B30948();
    }
  }

  else
  {
    v74 = *(v32 + 1104);
    v75 = *(v32 + 1080);
    v76 = *(v32 + 984);

    sub_227D4AA58();
    sub_227D4CE58();
    v77 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    v78 = os_log_type_enabled(v77, v33);
    v79 = *(v32 + 1088);
    v80 = *(v32 + 1080);
    if (v78)
    {
      v81 = *(v32 + 1072);
      v82 = *(v32 + 960);
      v164 = *(v32 + 952);
      v168 = *(v32 + 984);
      v83 = *(v32 + 848);
      v172 = *(v32 + 840);
      v176 = *(v32 + 856);
      OUTLINED_FUNCTION_129();
      v84 = OUTLINED_FUNCTION_98();
      a20 = v84;
      *v79 = 136315138;
      v85 = OUTLINED_FUNCTION_114();
      sub_227B1B1A4(v85, v86, v87);
      OUTLINED_FUNCTION_191();
      *(v79 + 4) = v81;
      _os_log_impl(&dword_227B0D000, v77, v33, "No challenge definitions found in MAPI for bundleID: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (v79)(v168, v164);
      (*(v83 + 8))(v176, v172);
    }

    else
    {
      v126 = *(v32 + 984);
      v127 = *(v32 + 960);
      v128 = *(v32 + 952);
      v129 = *(v32 + 856);
      v130 = *(v32 + 848);
      v131 = *(v32 + 840);

      v132 = OUTLINED_FUNCTION_9_2();
      (v79)(v132);
      v133 = *(v130 + 8);
      v134 = OUTLINED_FUNCTION_148();
      v135(v134);
    }

    OUTLINED_FUNCTION_2_6();
    v156 = v137;
    v157 = v136;
    v158 = *(v32 + 968);
    v160 = *(v32 + 944);
    v162 = *(v32 + 936);
    v166 = *(v32 + 912);
    v170 = *(v32 + 904);
    v174 = *(v32 + 880);
    v178 = *(v32 + 856);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_55_0();

    return v139(v138, v139, v140, v141, v142, v143, v144, v145, v156, v157, v158, a12, v160, v162, v166, v170, v174, v178, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_227B2E438()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v7 = v4[159];
  *v6 = *v1;
  v5[160] = v0;

  v8 = v4[158];
  if (v0)
  {
    v9 = v5[157];
    v10 = v5[135];
  }

  else
  {

    v5[161] = v3;
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2E584()
{
  OUTLINED_FUNCTION_6();
  sub_227B3AF90(*(v0 + 1288));
  *(v0 + 1296) = *(v0 + 800);
  v1 = swift_task_alloc();
  *(v0 + 1304) = v1;
  *v1 = v0;
  v1[1] = sub_227B2E630;
  v2 = *(v0 + 1360);
  v3 = *(v0 + 832);
  OUTLINED_FUNCTION_53(*(v0 + 856));

  return sub_227B30948();
}

uint64_t sub_227B2E630()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 1304);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[164] = v0;

  if (v0)
  {
    v9 = v3[162];
    v10 = v3[135];

    v11 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v3[165] = v14;
    *v14 = v15;
    v14[1] = sub_227B2E794;
    v16 = v3[104];

    return sub_227B2F654((v3 + 73));
  }
}

uint64_t sub_227B2E794()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1320);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B2E878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[162];
  v16 = v14[77];
  __swift_project_boxed_opaque_existential_1(v14 + 73, v14[76]);
  v17 = *(v15 + 16);
  v18 = v14[162];
  if (v17)
  {
    v46 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v17, 0);
    v19 = v46;
    v20 = v18 + 32;
    do
    {
      sub_227B11EE8(v20, (v14 + 78));
      v21 = v14[81];
      v22 = v14[82];
      __swift_project_boxed_opaque_existential_1(v14 + 78, v21);
      v23 = (*(v22 + 8))(v21, v22);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v14 + 78);
      a11 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_227B3CA88((v26 > 1), v27 + 1, 1);
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 40;
      --v17;
    }

    while (v17);
    v29 = v14[162];
  }

  else
  {
    v30 = v14[162];

    v19 = MEMORY[0x277D84F90];
  }

  v14[166] = v19;
  v31 = *(v16 + 48);
  OUTLINED_FUNCTION_36_0();
  v45 = v32 + *v32;
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  v14[167] = v35;
  *v35 = v14;
  v35[1] = sub_227B2EAA0;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_0();

  return v41(v36, v37, v38, v39, v40, v41, v42, v43, v16 + 48, v45, a11, a12, a13, a14);
}

uint64_t sub_227B2EAA0()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[167];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[168] = v8;
  v3[169] = v0;

  v9 = v2[166];
  if (v0)
  {
    v10 = v3[135];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v25 = v22[135];
  v26 = v22[121];
  __swift_destroy_boxed_opaque_existential_0(v22 + 73);
  sub_227D4AA58();
  sub_227D4CE58();
  v27 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_193_0();
  if (os_log_type_enabled(v27, v23))
  {
    v28 = v22[168];
    v29 = v22[135];
    v30 = v22[134];
    v31 = v22[120];
    v63 = v22[119];
    v65 = v22[121];
    v69 = v22[107];
    v71 = v22[136];
    v32 = v22[106];
    v67 = v22[105];
    OUTLINED_FUNCTION_12_1();
    a19 = OUTLINED_FUNCTION_98();
    *v24 = 134218242;
    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v33 = OUTLINED_FUNCTION_114();
    sub_227B1B1A4(v33, v34, v35);
    OUTLINED_FUNCTION_191();
    *(v24 + 14) = v30;
    _os_log_impl(&dword_227B0D000, v27, v23, "Archived %ld challenge definitions for bundleID: %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(a19);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    v71(v65, v63);
    (*(v32 + 8))(v69, v67);
  }

  else
  {
    v36 = v22[136];
    v37 = v22[135];
    v38 = v22[121];
    v39 = v22[120];
    v40 = v22[119];
    v41 = v22[107];
    v42 = v22[106];
    v43 = v22[105];

    v44 = OUTLINED_FUNCTION_91_0();
    v36(v44);
    v45 = *(v42 + 8);
    v46 = OUTLINED_FUNCTION_141();
    v47(v46);
  }

  OUTLINED_FUNCTION_2_6();
  v59 = v49;
  v60 = v48;
  v61 = v22[121];
  v62 = v22[118];
  v64 = v22[117];
  v66 = v22[114];
  v68 = v22[113];
  v70 = v22[110];
  v72 = v22[107];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_65();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v59, v60, v61, v62, v64, v66, v68, v70, v72, a19, a20, a21, a22);
}

uint64_t sub_227B2EE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 704));
  v23 = *(v22 + 1128);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 744));
  v23 = *(v22 + 1152);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 664));
  v23 = *(v22 + 1176);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 464));
  v23 = *(v22 + 1200);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v23 = OUTLINED_FUNCTION_43_1();
  v24(v23);
  v25 = *(v22 + 1248);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v23 = OUTLINED_FUNCTION_43_1();
  v24(v23);
  v25 = *(v22 + 1280);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v23 = OUTLINED_FUNCTION_43_1();
  v24(v23);
  v25 = *(v22 + 1312);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v23 = OUTLINED_FUNCTION_43_1();
  v24(v23);
  __swift_destroy_boxed_opaque_existential_0((v22 + 584));
  v25 = *(v22 + 1352);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F654(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_16();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2F67C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[3];
  v2 = v1[21];
  v3 = v1[22];
  v4 = *(OUTLINED_FUNCTION_13_0(v1 + 18) + 8);
  OUTLINED_FUNCTION_36_0();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[4] = v8;
  *v8 = v9;
  v8[1] = sub_227B2F79C;
  v10 = v0[2];
  OUTLINED_FUNCTION_181();

  return v12();
}

uint64_t sub_227B2F79C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

void *sub_227B2F87C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, const void *a5@<X6>, uint64_t *a6@<X8>)
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_171();
  if (v13)
  {
    goto LABEL_7;
  }

  v33 = a1;
  v34 = a2;
  v14 = sub_227CFC854(v12);
  v16 = v15;
  sub_227D4CE58();
  OUTLINED_FUNCTION_149();
  v20 = sub_227B39AC4(v17, v18, v19);
  if (v21 != 1)
  {
    v30 = v20;
    v31 = v21;

    sub_227B3D88C(v30, v31);
    a1 = v33;
    a2 = v34;
LABEL_7:

    sub_227D4CE58();
    v29 = a3;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  sub_227D4CE58();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_120();
  *(inited + 48) = nullsub_1(v23, v24);
  *(inited + 56) = v25;
  *(inited + 64) = v26;
  *(inited + 72) = v27;
  v28 = sub_227D4CE28();
  v29 = sub_227B39B40(v28, a3);

  a1 = v33;
LABEL_8:
  *a6 = v29;
  a6[1] = a1;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  return memcpy(a6 + 5, a5, 0xE0uLL);
}

uint64_t sub_227B2FA20(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v38 = sub_227D4A508();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v46 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = v3;
    v49 = MEMORY[0x277D84F90];
    sub_227B3CAA8(0, v8, 0);
    v44 = v49;
    result = sub_227B3E1D8(a3);
    v11 = result;
    v13 = v12;
    v14 = 0;
    v43 = a3 + 56;
    v36 = v8;
    v37 = v5 + 32;
    v35 = a3 + 64;
    v15 = a3;
    v41 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v15 + 32))
      {
        v16 = v11 >> 6;
        if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v15 + 36) != v10)
        {
          goto LABEL_29;
        }

        v42 = v14;
        v17 = v10;
        v18 = v5;
        v19 = (*(v15 + 48) + 16 * v11);
        v20 = v19[1];
        v48[0] = *v19;
        v48[1] = v20;
        sub_227D4CE58();
        v21 = v45;
        v39(v48, &v47);
        if (v21)
        {
        }

        v22 = v44;
        v49 = v44;
        v24 = *(v44 + 16);
        v23 = *(v44 + 24);
        v45 = 0;
        if (v24 >= v23 >> 1)
        {
          sub_227B3CAA8(v23 > 1, v24 + 1, 1);
          v22 = v49;
        }

        *(v22 + 16) = v24 + 1;
        v5 = v18;
        v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v44 = v22;
        result = (*(v18 + 32))(v22 + v25 + *(v18 + 72) * v24, v46, v38);
        if (v13)
        {
          goto LABEL_33;
        }

        v15 = v41;
        v26 = 1 << *(v41 + 32);
        if (v11 >= v26)
        {
          goto LABEL_30;
        }

        v27 = *(v43 + 8 * v16);
        if ((v27 & (1 << v11)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v41 + 36) != v17)
        {
          goto LABEL_32;
        }

        v28 = v27 & (-2 << (v11 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v16 << 6;
          v30 = v16 + 1;
          v31 = (v35 + 8 * v16);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              result = sub_227B3E218(v11, v17, 0);
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_20;
            }
          }

          result = sub_227B3E218(v11, v17, 0);
LABEL_20:
          v15 = v41;
        }

        v14 = v42 + 1;
        if (v42 + 1 == v36)
        {
          return v44;
        }

        v13 = 0;
        v10 = *(v15 + 36);
        v11 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_227B2FD80(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_227B3CAC8(0, v10, 0);
    v11 = v23;
    v17[1] = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v13 = *i;
      v22[0] = *(i - 1);
      v22[1] = v13;
      sub_227D4CE58();
      v19(v22, &v21);
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
        sub_227B3CAC8(v14 > 1, v15 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_227B2FF58()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 1400) = v0;
  *(v1 + 1488) = v2;
  *(v1 + 1392) = v3;
  *(v1 + 1384) = v4;
  *(v1 + 1376) = v5;
  v6 = sub_227D4CAB8();
  *(v1 + 1408) = v6;
  OUTLINED_FUNCTION_10_0(v6);
  *(v1 + 1416) = v7;
  v9 = *(v8 + 64);
  *(v1 + 1424) = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B3000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = *(v14 + 1400);
  v17 = *(v14 + 1376);
  v18 = *(v17 + 32);
  *(v14 + 1489) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 56);
  v22 = MEMORY[0x277D84F90];
  *(v14 + 1432) = MEMORY[0x277D84F90];
  v23 = sub_227D4CE58();
  if (v21)
  {
    v24 = 0;
LABEL_8:
    *(v14 + 1448) = v24;
    *(v14 + 1440) = v21;
    v26 = *(v23 + 48);
    OUTLINED_FUNCTION_102(v24);
    v27 = v16[17];
    __swift_project_boxed_opaque_existential_1(v16 + 13, v16[16]);
    OUTLINED_FUNCTION_156_0();
    v64 = v15 + *v15;
    v28 = v15[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v14 + 1472) = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_45_0(v29);
    OUTLINED_FUNCTION_16_0();

    return v39(v31, v32, v33, v34, v35, v36, v37, v38, v64, a10, a11, a12, a13, a14);
  }

  else
  {
    v25 = 0;
    while (((63 - v20) >> 6) - 1 != v25)
    {
      v24 = v25 + 1;
      v21 = *(v23 + 8 * v25++ + 64);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v42 = *(v14 + 1432);
    if (*(v22 + 16))
    {
      a11 = v22;
      v43 = OUTLINED_FUNCTION_130();
      sub_227B3CA0C(v43, v44, v45);
      do
      {
        OUTLINED_FUNCTION_158_0();
        sub_227D4CE58();
        sub_227B3E28C(v14 + 256, v14 + 1120);
        v46 = OUTLINED_FUNCTION_82();
        sub_227B31CD4(v46, v47, v48, v49);
        OUTLINED_FUNCTION_172_1();
        if (v51)
        {
          OUTLINED_FUNCTION_154_0(v50);
        }

        v52 = OUTLINED_FUNCTION_157_0();
        OUTLINED_FUNCTION_188(v52);
        OUTLINED_FUNCTION_198();
      }

      while (!v53);
    }

    v54 = *(v14 + 1432);

    v55 = *(v14 + 1424);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B30280()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 1472);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[185] = v0;

  if (v0)
  {
    v9 = v3[183];
    v10 = v3[179];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B3038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  memcpy((v22 + 688), (v22 + 904), 0xD8uLL);
  v27 = sub_227B3E274(v22 + 688);
  v28 = *(v22 + 1464);
  if (v27 != 1)
  {
    v44 = *(v22 + 1432);
    memcpy((v22 + 472), (v22 + 688), 0xD8uLL);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v22 + 1432);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v29 = *(v22 + 1424);
  v30 = *(v22 + 1392);
  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v31 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_127();

  v32 = OUTLINED_FUNCTION_107();
  v24 = *(v22 + 1464);
  if (v32)
  {
    v33 = *(v22 + 1456);
    v34 = *(v22 + 1416);
    a9 = *(v22 + 1408);
    a10 = *(v22 + 1424);
    v35 = *(v22 + 1392);
    v36 = *(v22 + 1384);
    OUTLINED_FUNCTION_12_1();
    a11 = OUTLINED_FUNCTION_95_0();
    *v23 = 136315394;
    v37 = sub_227B1B1A4(v36, v35, &a11);
    OUTLINED_FUNCTION_125(v37);
    v38 = sub_227B1B1A4(v33, v24, &a11);

    *(v23 + 14) = v38;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_56_0();

    (*(v34 + 8))(a10, a9);
  }

  else
  {
    v51 = *(v22 + 1424);
    v52 = *(v22 + 1416);
    v53 = *(v22 + 1408);
    v54 = *(v22 + 1464);

    v55 = *(v52 + 8);
    v56 = OUTLINED_FUNCTION_9_2();
    v57(v56);
  }

  OUTLINED_FUNCTION_170();
  if (v49)
  {
LABEL_8:
    v50 = *(v22 + 1376);
LABEL_15:
    *(v22 + 1448) = v48;
    *(v22 + 1440) = v49;
    v59 = *(v22 + 1400);
    v60 = *(v50 + 48);
    OUTLINED_FUNCTION_102(v48);
    v62 = v61[17];
    __swift_project_boxed_opaque_existential_1(v61 + 13, v61[16]);
    OUTLINED_FUNCTION_156_0();
    v105 = v24 + *v24;
    v63 = v24[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v22 + 1472) = v64;
    *v64 = v65;
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_16_0();

    return v74(v66, v67, v68, v69, v70, v71, v72, v73, v105, a10, a11, a12, a13, a14);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v58 = v48 + 1;
        if (!__OFADD__(v48, 1))
        {
          break;
        }

        __break(1u);
LABEL_28:
        v101 = v31[2];
        v102 = OUTLINED_FUNCTION_21();
        v31 = sub_227B39FD4(v102, v103, v104, v31);
LABEL_5:
        v47 = v31[2];
        v46 = v31[3];
        if (v47 >= v46 >> 1)
        {
          v31 = sub_227B39FD4((v46 > 1), v47 + 1, 1, v31);
        }

        v31[2] = v47 + 1;
        memcpy(&v31[27 * v47 + 4], (v22 + 472), 0xD8uLL);
        OUTLINED_FUNCTION_170();
        *(v22 + 1432) = v31;
        if (v49)
        {
          goto LABEL_8;
        }
      }

      if (v58 >= (((1 << *(v22 + 1489)) + 63) >> 6))
      {
        break;
      }

      v50 = *(v22 + 1376);
      v49 = *(v50 + 8 * v58 + 56);
      ++v48;
      if (v49)
      {
        v48 = v58;
        goto LABEL_15;
      }
    }

    v77 = *(v22 + 1432);
    v78 = *(v22 + 1376);

    v79 = *(v22 + 1432);
    if (*(v77 + 16))
    {
      a11 = MEMORY[0x277D84F90];
      v80 = OUTLINED_FUNCTION_130();
      sub_227B3CA0C(v80, v81, v82);
      do
      {
        OUTLINED_FUNCTION_158_0();
        sub_227D4CE58();
        sub_227B3E28C(v22 + 256, v22 + 1120);
        v83 = OUTLINED_FUNCTION_82();
        sub_227B31CD4(v83, v84, v85, v86);
        OUTLINED_FUNCTION_172_1();
        if (v88)
        {
          OUTLINED_FUNCTION_154_0(v87);
        }

        v89 = OUTLINED_FUNCTION_157_0();
        OUTLINED_FUNCTION_188(v89);
        OUTLINED_FUNCTION_198();
      }

      while (!v90);
    }

    v91 = *(v22 + 1432);

    v92 = *(v22 + 1424);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B307CC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[178];
  v2 = v0[172];

  OUTLINED_FUNCTION_18();
  v4 = v0[185];

  return v3();
}

uint64_t sub_227B30834(uint64_t a1)
{
  result = MEMORY[0x22AAA60B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_227D4CE58();
    sub_227B274CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_227B308F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_227B3A98C(a1);
    return a2;
  }

  else
  {

    return sub_227B3AAB8(a1, a2);
  }
}

uint64_t sub_227B30948()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 648) = v0;
  *(v1 + 640) = v2;
  *(v1 + 865) = v3;
  *(v1 + 632) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  *(v1 + 656) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v1 + 664) = v6;
  v8 = *(v7 + 64);
  *(v1 + 672) = OUTLINED_FUNCTION_121();
  *(v1 + 680) = swift_task_alloc();
  v9 = sub_227D4CAB8();
  *(v1 + 688) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 696) = v10;
  v12 = *(v11 + 64);
  *(v1 + 704) = OUTLINED_FUNCTION_121();
  *(v1 + 712) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  *(v1 + 720) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 728) = v14;
  v16 = *(v15 + 64);
  *(v1 + 736) = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227B30AC0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(*(v0 + 640) + 16);
  *(v0 + 744) = v1;
  if (v1)
  {
    v2 = *(v0 + 648);
    v3 = swift_task_alloc();
    *(v0 + 752) = v3;
    *v3 = v0;
    v3[1] = sub_227B30BCC;
    v4 = *(v0 + 865);
    OUTLINED_FUNCTION_53(*(v0 + 632));

    return sub_227CFAEA0();
  }

  else
  {
    OUTLINED_FUNCTION_155_0();

    OUTLINED_FUNCTION_15_0();

    return v6();
  }
}

uint64_t sub_227B30BCC()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 752);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 760) = v0;

  if (!v0)
  {
    *(v5 + 768) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_227B30CD8()
{
  v0[97] = v0[96];
  v2 = v0[80];
  v0[98] = 0;
  if (v0[93])
  {
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_111();
    sub_227B11EE8(v3 + 32, (v0 + 54));
    v4 = v0[57];
    v5 = v0[58];
    OUTLINED_FUNCTION_189(v0 + 54);
    v7 = *(v6 + 40);
    v8 = OUTLINED_FUNCTION_38_0();
    v10 = v9(v8);
    if (v10)
    {
      OUTLINED_FUNCTION_27_1();
      v11 = (v10 + 56);
      v13 = v12 + 1;
      while (--v13)
      {
        v15 = *(v11 - 3);
        v14 = *(v11 - 2);
        if (*(v11 - 1) != v1 || *v11 != v5)
        {
          v11 += 4;
          OUTLINED_FUNCTION_145();
          if ((sub_227D4DA78() & 1) == 0)
          {
            continue;
          }
        }

        v17 = v0[97];
        sub_227D4CE58();

        if (!v17)
        {

          v23 = 0;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_122();
        while (--v13)
        {
          v18 = v0[97];
          v19 = v18[5];
          v28 = v18[4];
          v20 = v18[8];
          v21 = v18[9];
          v22 = v18[6] == v15 && v18[7] == v14;
          if (v22 || (OUTLINED_FUNCTION_66_0() & 1) != 0)
          {
            sub_227D4CE58();
            sub_227D4CE58();
            sub_227D4CE58();

            v23 = v28;
            goto LABEL_23;
          }
        }

        break;
      }

      OUTLINED_FUNCTION_80();
    }

    else
    {
      OUTLINED_FUNCTION_80();
    }

LABEL_23:
    OUTLINED_FUNCTION_75_0(v23);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[105] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_17_3(v24);
    OUTLINED_FUNCTION_135_0();

    sub_227B2F654(v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227B30EA0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 840);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B30F84()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[62];
  v2 = v0[63];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 59) + 40);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[106] = v7;
  *v7 = v8;
  v7[1] = sub_227B31094;
  OUTLINED_FUNCTION_181();

  return v10();
}

uint64_t sub_227B31094()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[106];
  *v4 = *v1;
  v3[107] = v0;

  v6 = v2[104];
  v7 = v2[103];
  v8 = v2[102];
  v9 = v2[101];
  v10 = v2[100];
  v11 = v2[99];
  if (v0)
  {
    v12 = v3[97];
  }

  else
  {
    v15 = v2[99];
  }

  OUTLINED_FUNCTION_132();
  sub_227B3E224(v13, v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227B31248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 856);
  v20 = *(v18 + 736);
  v21 = *(v18 + 648);
  v22 = *(v18 + 632);
  __swift_destroy_boxed_opaque_existential_0((v18 + 472));
  sub_227B11EE8(v21 + 608, v18 + 512);
  v23 = *(v18 + 536);
  v24 = *(v18 + 544);
  v124 = __swift_project_boxed_opaque_existential_1((v18 + 512), v23);
  *(v18 + 864) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_227D4E520;
  v27 = *(v18 + 456);
  v26 = *(v18 + 464);
  __swift_project_boxed_opaque_existential_1((v18 + 432), v27);
  (*(v26 + 16))(v27, v26);
  v28 = *(v18 + 200);
  v29 = *(v18 + 208);
  sub_227D4CE58();
  sub_227B3DC34(v18 + 200);
  sub_227D4A658();
  if (v19)
  {

    *(v25 + 16) = 0;
  }

  else
  {
    v30 = *(v18 + 736);
    v31 = *(v18 + 728);
    v32 = *(v18 + 720);

    v33 = sub_227D4A5E8();
    v35 = v34;
    v36 = *(v31 + 8);
    v37 = OUTLINED_FUNCTION_147();
    v38(v37);
    *(v25 + 32) = v33;
    *(v25 + 40) = v35;
    (*(v24 + 120))(v18 + 864, v25, v23, v24);
  }

  v39 = *(v18 + 712);
  v40 = *(v18 + 680);
  v41 = *(v18 + 664);
  v42 = *(v18 + 656);
  v43 = *(v18 + 632);
  __swift_destroy_boxed_opaque_existential_0((v18 + 512));
  sub_227D4AA58();
  sub_227B11EE8(v18 + 432, v18 + 552);
  (*(v41 + 16))(v40, v43, v42);
  sub_227B11EE8(v18 + 432, v18 + 592);
  v44 = sub_227D4CA98();
  v45 = sub_227D4D428();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v18 + 712);
  v48 = *(v18 + 696);
  v49 = *(v18 + 688);
  v50 = *(v18 + 680);
  v51 = *(v18 + 664);
  v52 = *(v18 + 656);
  if (v46)
  {
    v53 = OUTLINED_FUNCTION_14_5();
    a11 = swift_slowAlloc();
    *v53 = 136315650;
    v124 = v49;
    a14 = a11;
    v54 = *(v18 + 576);
    HIDWORD(a10) = v45;
    v55 = *(v18 + 584);
    OUTLINED_FUNCTION_189((v18 + 552));
    v57 = *(v56 + 8);
    a12 = v47;
    v58 = OUTLINED_FUNCTION_38_0();
    v59(v58);
    OUTLINED_FUNCTION_175();
    __swift_destroy_boxed_opaque_existential_0((v18 + 552));
    v60 = OUTLINED_FUNCTION_57_0();
    v63 = sub_227B1B1A4(v60, v61, v62);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_227D4A5E8();
    OUTLINED_FUNCTION_175();
    v64 = *(v51 + 8);
    v65 = OUTLINED_FUNCTION_113();
    v66(v65);
    v67 = OUTLINED_FUNCTION_57_0();
    v70 = sub_227B1B1A4(v67, v68, v69);

    *(v53 + 14) = v70;
    *(v53 + 22) = 2080;
    v71 = *(v18 + 624);
    __swift_project_boxed_opaque_existential_1((v18 + 592), *(v18 + 616));
    v72 = *(v71 + 16);
    v73 = OUTLINED_FUNCTION_38_0();
    v74(v73);
    v76 = *(v18 + 16);
    v75 = *(v18 + 24);
    sub_227D4CE58();
    sub_227B3DC34(v18 + 16);
    __swift_destroy_boxed_opaque_existential_0((v18 + 592));
    v77 = OUTLINED_FUNCTION_57_0();
    v80 = sub_227B1B1A4(v77, v78, v79);

    *(v53 + 24) = v80;
    _os_log_impl(&dword_227B0D000, v44, BYTE4(a10), "Updated challenge definition ID: %s for game: %s, vendorID: %s", v53, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_41_1();

    (*(v48 + 8))(a12, v124);
  }

  else
  {

    v81 = *(v51 + 8);
    v82 = OUTLINED_FUNCTION_113();
    v83(v82);
    v84 = *(v48 + 8);
    v85 = OUTLINED_FUNCTION_57_0();
    v86(v85);
    __swift_destroy_boxed_opaque_existential_0((v18 + 552));
    __swift_destroy_boxed_opaque_existential_0((v18 + 592));
  }

  v87 = *(v18 + 744);
  v88 = *(v18 + 784) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v18 + 432));
  if (v88 == v87)
  {
    v90 = *(v18 + 776);

    OUTLINED_FUNCTION_155_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_90();

    return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, v124, a14, a15, a16, a17, a18);
  }

  else
  {
    v99 = *(v18 + 784) + 1;
    *(v18 + 784) = v99;
    if (v99 == *(v18 + 744))
    {
      __break(1u);
    }

    else
    {
      sub_227B11EE8(*(v18 + 640) + 40 * v99 + 32, v18 + 432);
      v100 = *(v18 + 456);
      v101 = *(v18 + 464);
      OUTLINED_FUNCTION_189((v18 + 432));
      v103 = *(v102 + 40);
      v104 = OUTLINED_FUNCTION_38_0();
      v106 = v105(v104);
      if (v106)
      {
        OUTLINED_FUNCTION_27_1();
        v107 = (v106 + 56);
        v109 = v108 + 1;
        while (--v109)
        {
          v111 = *(v107 - 3);
          v110 = *(v107 - 2);
          if (*(v107 - 1) != v44 || *v107 != v101)
          {
            v107 += 4;
            OUTLINED_FUNCTION_145();
            if ((sub_227D4DA78() & 1) == 0)
            {
              continue;
            }
          }

          v113 = *(v18 + 776);
          sub_227D4CE58();

          if (!v113)
          {

            v119 = 0;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_122();
          while (--v109)
          {
            v114 = *(v18 + 776);
            v115 = v114[5];
            v125 = v114[4];
            v116 = v114[8];
            v117 = v114[9];
            v118 = v114[6] == v111 && v114[7] == v110;
            if (v118 || (OUTLINED_FUNCTION_66_0() & 1) != 0)
            {
              sub_227D4CE58();
              sub_227D4CE58();
              sub_227D4CE58();

              v119 = v125;
              goto LABEL_33;
            }
          }

          break;
        }

        OUTLINED_FUNCTION_80();
      }

      else
      {
        OUTLINED_FUNCTION_80();
      }

LABEL_33:
      OUTLINED_FUNCTION_75_0(v119);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v18 + 840) = v120;
      *v120 = v121;
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_90();

      return sub_227B2F654(v122);
    }
  }

  return result;
}

uint64_t sub_227B3185C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v28 = *(v27 + 760);
  v29 = *(v27 + 704);
  v30 = *(v27 + 672);
  v31 = *(v27 + 664);
  v32 = *(v27 + 656);
  v33 = *(v27 + 632);
  sub_227D4AA58();
  v34 = *(v31 + 16);
  v35 = OUTLINED_FUNCTION_179();
  v36(v35);
  v37 = v28;
  v38 = sub_227D4CA98();
  v39 = sub_227D4D438();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v27 + 760);
  v42 = *(v27 + 704);
  v43 = *(v27 + 696);
  v44 = *(v27 + 688);
  v45 = *(v27 + 672);
  v46 = *(v27 + 664);
  v47 = *(v27 + 656);
  if (v40)
  {
    v89 = *(v27 + 760);
    v48 = OUTLINED_FUNCTION_12_1();
    swift_slowAlloc();
    v91 = OUTLINED_FUNCTION_98();
    *v48 = 136315394;
    sub_227D4A5E8();
    v49 = *(v46 + 8);
    v50 = OUTLINED_FUNCTION_57_0();
    v51(v50);
    v52 = OUTLINED_FUNCTION_179();
    v55 = sub_227B1B1A4(v52, v53, v54);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2112;
    v56 = v89;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v57;
    *v39 = v57;
    _os_log_impl(&dword_227B0D000, v38, v39, "Failed to retrieve leaderboards for game: %s, error: %@", v48, 0x16u);
    sub_227B1DE58(v39, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    __swift_destroy_boxed_opaque_existential_0(v91);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    v59 = *(v43 + 8);
    v58 = v43 + 8;
    result = v59(v42, v44);
  }

  else
  {

    v61 = *(v46 + 8);
    v62 = OUTLINED_FUNCTION_57_0();
    v63(v62);
    v64 = *(v43 + 8);
    v58 = v43 + 8;
    v65 = OUTLINED_FUNCTION_179();
    result = v67(v65, v66);
  }

  *(v27 + 776) = 0u;
  if (!*(v27 + 744))
  {
    __break(1u);
    return result;
  }

  sub_227B11EE8(*(v27 + 640) + 32, v27 + 432);
  v68 = *(v27 + 456);
  v69 = *(v27 + 464);
  OUTLINED_FUNCTION_189((v27 + 432));
  v71 = *(v70 + 40);
  v72 = OUTLINED_FUNCTION_38_0();
  v74 = v73(v72);
  if (v74)
  {
    OUTLINED_FUNCTION_27_1();
    v75 = (v74 + 56);
    v77 = v76 + 1;
    do
    {
      if (!--v77)
      {

        OUTLINED_FUNCTION_146();
        goto LABEL_30;
      }

      v79 = *(v75 - 3);
      v78 = *(v75 - 2);
      if (*(v75 - 1) == v38 && *v75 == v69)
      {
        break;
      }

      v75 += 4;
      OUTLINED_FUNCTION_145();
    }

    while ((sub_227D4DA78() & 1) == 0);
    v69 = *(v27 + 776);
    sub_227D4CE58();

    if (v69)
    {
      v90 = v27;
      OUTLINED_FUNCTION_122();
      while (1)
      {
        v75 = (v75 - 1);
        if (!v75)
        {

          OUTLINED_FUNCTION_146();
          v77 = 0;
          goto LABEL_29;
        }

        v81 = *(v90 + 776);
        v82 = v81[4];
        v74 = v81[5];
        v69 = v81[6];
        v38 = v81[7];
        v58 = v81[8];
        v77 = v81[9];
        if (v69 == v79 && v38 == v78)
        {
          break;
        }

        if (OUTLINED_FUNCTION_66_0())
        {
          goto LABEL_28;
        }
      }

      v69 = v79;
LABEL_28:
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();

      v84 = v82;
LABEL_29:
      v27 = v90;
      goto LABEL_30;
    }

    v84 = 0;
    v74 = 0;
  }

  else
  {
    v84 = 0;
    v69 = 0;
  }

  v38 = 0;
  v58 = 0;
  v77 = 0;
LABEL_30:
  *(v27 + 832) = v77;
  *(v27 + 824) = v58;
  *(v27 + 816) = v38;
  *(v27 + 808) = v69;
  *(v27 + 800) = v74;
  *(v27 + 792) = v84;
  *(v27 + 384) = v84;
  *(v27 + 392) = v74;
  *(v27 + 400) = v69;
  *(v27 + 408) = v38;
  *(v27 + 416) = v58;
  *(v27 + 424) = v77;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v27 + 840) = v85;
  *v85 = v86;
  OUTLINED_FUNCTION_17_3(v85);
  OUTLINED_FUNCTION_90();

  return sub_227B2F654(v87);
}

uint64_t sub_227B31C2C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[85];
  v5 = v0[84];
  __swift_destroy_boxed_opaque_existential_0(v0 + 59);
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);

  OUTLINED_FUNCTION_18();
  v6 = v0[107];
  OUTLINED_FUNCTION_164();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void *sub_227B31CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a3[25];
  v87[0] = v5;
  v6 = v5[2];
  v81 = v5;
  if (!v6)
  {
LABEL_19:
    v23 = sub_227D4CE28();
    v83 = v5[2];
    if (!v83)
    {
LABEL_36:

      if (v5[2])
      {
        v12 = v5[7];
        v13 = v5[8];
        v53 = OUTLINED_FUNCTION_58();
        sub_227B3D9FC(v53, v54);
      }

      else
      {
        v12 = 0;
        v13 = 1;
      }

      goto LABEL_45;
    }

    sub_227D4CE58();
    v24 = 0;
    v6 = 0;
    v25 = v5 + 8;
    while (1)
    {
      if (v24 >= v5[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      v85 = v23;
      v27 = *(v25 - 3);
      v26 = *(v25 - 2);
      v29 = *(v25 - 1);
      v28 = *v25;
      v30 = -1 << *(v26 + 32);
      swift_bridgeObjectRetain_n();
      sub_227D4CE58();
      v84 = v28;
      sub_227B3D9FC(v29, v28);
      v31 = sub_227D4D5C8();
      if (v31 == 1 << *(v26 + 32))
      {
        break;
      }

      sub_227B3D910(v31, *(v26 + 36), 0, v26);
      v33 = v32;

      if (!v33)
      {
        goto LABEL_25;
      }

LABEL_26:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_171();
      if (v22)
      {

        sub_227B3DA10(v29, v28);
      }

      else
      {
        v35 = sub_227CFC854(v34);
        v37 = v36;
        v38 = *(v26 + 16);
        sub_227D4CE58();
        if (v38 && (v39 = OUTLINED_FUNCTION_82(), sub_227B2664C(v39, v40), (v41 & 1) != 0))
        {

          sub_227B3DA10(v29, v84);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_227D4E520;
          *(inited + 32) = v35;
          *(inited + 40) = v37;
          sub_227D4CE58();
          OUTLINED_FUNCTION_120();
          *(inited + 48) = nullsub_1(v43, v44);
          *(inited + 56) = v45;
          *(inited + 64) = v46;
          *(inited + 72) = v47;
          v48 = sub_227D4CE28();
          swift_isUniquelyReferenced_nonNull_native();
          v86 = v26;
          OUTLINED_FUNCTION_25_1();
          sub_227B3D114(v48, v49, 0, v50, &v86);

          sub_227B3DA10(v29, v84);
          v26 = v86;
        }

        v5 = v81;
      }

      ++v24;
      swift_isUniquelyReferenced_nonNull_native();
      v86 = v85;
      OUTLINED_FUNCTION_25_1();
      sub_227B3D114(v26, v51, 0, v52, &v86);
      v23 = v86;
      v25 += 5;
      if (v83 == v24)
      {
        sub_227B3D9A8(v87);
        goto LABEL_36;
      }
    }

LABEL_25:
    sub_227D4CE58();
    goto LABEL_26;
  }

  sub_227D4CE58();
  v7 = 0;
  while (1)
  {
    v8 = 0;
    v9 = &v5[5 * v7 + 4];
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v7 = v7 + 1;
    v14 = 1 << *(v11 + 32);
    v15 = (v14 + 63) >> 6;
    v16 = 64;
    if (v15)
    {
      while (1)
      {
        v17 = *(v11 + v16);
        if (v17)
        {
          break;
        }

        v16 += 8;
        v8 -= 64;
        if (!--v15)
        {
          goto LABEL_17;
        }
      }

      v18 = __clz(__rbit64(v17));
      if (v18 - v14 != v8)
      {
        if (-v8 < 0 || (v19 = v18 - v8, v19 >= v14))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);

          __break(1u);
          return result;
        }

        if (((*(v11 + v16) >> v18) & 1) == 0)
        {
          goto LABEL_48;
        }

        v20 = (*(v11 + 56) + 32 * v19);
        v21 = v20[1];
        if (v21)
        {
          v22 = *v20 == a1 && v21 == a2;
          if (v22 || (sub_227D4DA78() & 1) != 0)
          {
            break;
          }
        }
      }
    }

LABEL_17:
    if (v7 == v6)
    {
      sub_227B3D9A8(v87);
      goto LABEL_19;
    }
  }

  sub_227D4CE58();
  sub_227D4CE58();
  v55 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v55, v56);
  sub_227B3D9A8(v87);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_171();
  if (!v22)
  {
    v58 = sub_227CFC854(v57);
    v60 = v59;
    sub_227D4CE58();
    v61 = OUTLINED_FUNCTION_174_0();
    v63 = sub_227B39AC4(v61, v62, v11);
    if (v64 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_227D4E520;
      *(v65 + 32) = v58;
      *(v65 + 40) = v60;
      sub_227D4CE58();
      OUTLINED_FUNCTION_120();
      *(v65 + 48) = nullsub_1(v66, v67);
      *(v65 + 56) = v68;
      *(v65 + 64) = v69;
      *(v65 + 72) = v70;
      v71 = sub_227D4CE28();
      v23 = sub_227B39B40(v71, v11);
      goto LABEL_44;
    }

    v72 = v63;
    v73 = v64;

    sub_227B3D88C(v72, v73);
  }

  sub_227D4CE58();
  v23 = v11;
LABEL_44:

  v74 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v74, v75);

  v76 = OUTLINED_FUNCTION_58();
  sub_227B3DA10(v76, v77);
LABEL_45:
  *a4 = v23;
  a4[1] = v12;
  a4[2] = v13;
  return memcpy(a4 + 3, a3, 0xD8uLL);
}

uint64_t sub_227B32250()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[8] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227B3235C()
{
  OUTLINED_FUNCTION_74();
  v43 = v0;
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
  v38 = v2;
  *(v2 + 16) = sub_227D4CE28();
  v3 = *(v1 + 16);
  if (v3)
  {
    v36 = 0;
    v4 = *(v0 + 72);
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = *(v0 + 16) + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = (v4 - 8);
    v40 = v6;
    v41 = (*(v0 + 48) + 8);
    v39 = *(v4 + 56);
    while (1)
    {
      v9 = *(v0 + 56);
      v5(*(v0 + 80), v7, *(v0 + 64));
      sub_227D4A838();
      v10 = *(v0 + 56);
      v11 = sub_227D4A6A8();
      v12 = *(v0 + 80);
      v13 = v11;
      v15 = v14;
      (*v41)(*(v0 + 56), *(v0 + 40));
      v16 = sub_227D4A848();
      v34 = v17;
      v35 = v16;
      sub_227B1AC90(v36);
      v18 = *(v38 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v42 = v18;
      v19 = sub_227B2664C(v13, v15);
      v37 = v19;
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        __break(1u);
        return MEMORY[0x282200740]();
      }

      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F8, &qword_227D4E670);
      v22 = sub_227D4D7C8();
      v23 = v42;
      if (v22)
      {
        v37 = sub_227B2664C(v13, v15);
        if ((v21 & 1) != (v24 & 1))
        {
          break;
        }
      }

      *(v38 + 16) = v23;
      if (v21)
      {
      }

      else
      {
        sub_227B3D714(v37, v13, v15, MEMORY[0x277D84FA0], v23);
      }

      v5 = v40;
      v25 = *(v0 + 80);
      v26 = *(v0 + 64);
      v27 = v23[7] + 8 * v37;
      sub_227B274CC(&v42, v35, v34);

      (*v8)(v25, v26);
      v36 = sub_227B32990;
      v7 += v39;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    return sub_227D4DAE8();
  }

  else
  {
    v36 = 0;
LABEL_14:
    *(v0 + 96) = v36;
    v28 = swift_task_alloc();
    *(v0 + 104) = v28;
    v29 = *(v0 + 24);
    *(v28 + 16) = v38;
    *(v28 + 24) = vextq_s8(v29, v29, 8uLL);
    v30 = *(MEMORY[0x277D859B8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 112) = v31;
    *v31 = v0;
    v31[1] = sub_227B3277C;
    v45 = MEMORY[0x277D84F78] + 8;
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_227B3277C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B3287C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  sub_227B1AC90(v2);

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_227B32900()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  sub_227B1AC90(v1);

  OUTLINED_FUNCTION_18();
  v7 = v0[15];

  return v6();
}

uint64_t sub_227B329A0()
{
  OUTLINED_FUNCTION_6();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v5 = sub_227D4CAB8();
  v0[19] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[20] = v6;
  v8 = *(v7 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4A058();
  v0[22] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[23] = v10;
  v0[24] = *(v11 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v0[26] = OUTLINED_FUNCTION_121();
  v0[27] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B32AD4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v40 = v1;
  v41 = v3;
  result = sub_227D4CE58();
  v10 = 0;
  v38 = v8;
  v39 = v4;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v45 = *(v0 + 216);
        v47 = *(v0 + 208);
        v42 = *(v0 + 200);
        v48 = *(v0 + 192);
        v43 = *(v0 + 176);
        v12 = *(v0 + 144);
        v46 = *(v0 + 136);
        v13 = __clz(__rbit64(v7)) | (v10 << 6);
        v14 = (*(v41 + 48) + 16 * v13);
        v15 = v14[1];
        v44 = *v14;
        v16 = *(*(v41 + 56) + 8 * v13);
        v17 = sub_227D4D2D8();
        v18 = OUTLINED_FUNCTION_131();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
        v21 = *(v40 + 16);
        v22 = OUTLINED_FUNCTION_141();
        v23(v22);
        v24 = (*(v40 + 80) + 64) & ~*(v40 + 80);
        v25 = swift_allocObject();
        v25[2] = 0;
        v49 = v25 + 2;
        v25[3] = 0;
        v25[4] = v44;
        v25[5] = v15;
        v25[6] = v16;
        v25[7] = v46;
        (*(v40 + 32))(v25 + v24, v42, v43);
        sub_227B3E0F8(v45, v47, &qword_27D7E69B8, &qword_227D4EAB0);
        v26 = v17;
        LODWORD(v17) = __swift_getEnumTagSinglePayload(v47, 1, v17);
        sub_227D4CE58();
        sub_227D4CE58();

        v27 = *(v0 + 208);
        if (v17 == 1)
        {
          sub_227B1DE58(*(v0 + 208), &qword_27D7E69B8, &qword_227D4EAB0);
        }

        else
        {
          sub_227D4D2C8();
          (*(*(v26 - 8) + 8))(v27, v26);
        }

        if (*v49)
        {
          v28 = v25[3];
          v29 = *v49;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v30 = sub_227D4D278();
          v32 = v31;
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v33 = **(v0 + 120);

        if (v32 | v30)
        {
          v34 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v30;
          *(v0 + 40) = v32;
        }

        else
        {
          v34 = 0;
        }

        v8 = v38;
        v35 = *(v0 + 216);
        v7 &= v7 - 1;
        *(v0 + 72) = 1;
        *(v0 + 80) = v34;
        *(v0 + 88) = v33;
        swift_task_create();

        result = sub_227B1DE58(v35, &qword_27D7E69B8, &qword_227D4EAB0);
        v4 = v39;
      }

      while (v7);
    }
  }

  v36 = swift_task_alloc();
  *(v0 + 224) = v36;
  *v36 = v0;
  v36[1] = sub_227B32EFC;
  v37 = *(v0 + 120);

  return sub_227B335FC(0, 0);
}

uint64_t sub_227B32EFC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[26];
    v9 = v3[27];
    v11 = v3[25];
    v12 = v3[21];

    OUTLINED_FUNCTION_18();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_227B33040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[21];
  v16 = v14[16];
  sub_227D4AA58();

  v17 = sub_227D4CA98();
  sub_227D4D458();
  OUTLINED_FUNCTION_143();

  if (OUTLINED_FUNCTION_107())
  {
    v18 = v14[20];
    a10 = v14[21];
    v19 = v14[19];
    v20 = v14[16];
    v21 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_14_5();
    *v21 = 136315138;
    OUTLINED_FUNCTION_120();
    swift_beginAccess();
    v22 = *(v20 + 16);
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
    sub_227D4CE38();

    v23 = OUTLINED_FUNCTION_113();
    v26 = sub_227B1B1A4(v23, v24, v25);

    *(v21 + 4) = v26;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_56_0();

    (*(v18 + 8))(a10, v19);
  }

  else
  {
    v33 = v14[20];
    v32 = v14[21];
    v34 = v14[19];

    v35 = *(v33 + 8);
    v36 = OUTLINED_FUNCTION_9_2();
    v37(v36);
  }

  v39 = v14[26];
  v38 = v14[27];
  v40 = v14[25];
  v41 = v14[21];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B33208()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B332C0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_227D4CE58();
  OUTLINED_FUNCTION_174_0();
  sub_227D4A698();
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_227B2FA20(sub_227B3E144, v5, v2);
  OUTLINED_FUNCTION_177_0(v6);

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_227B33414;
  v9 = v0[5];
  v8 = v0[6];
  OUTLINED_FUNCTION_53(v0[9]);

  return sub_227B2A510();
}

uint64_t sub_227B33414()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B33514()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_180();
  v1(v0);

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_227B3357C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[10];

  v2 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B335FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_227D4D278();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_227B3369C, v4, v6);
}

uint64_t sub_227B3369C()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 56) = **(v1 + 32);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if (sub_227D4D308())
  {
    OUTLINED_FUNCTION_15_0();

    return v2();
  }

  else
  {
    *(v1 + 72) = 0;
    v4 = *(MEMORY[0x277D85818] + 4);
    v5 = swift_task_alloc();
    OUTLINED_FUNCTION_177_0(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
    OUTLINED_FUNCTION_133();
    *v0 = v6;
    v7 = OUTLINED_FUNCTION_14_6();

    return MEMORY[0x2822004D0](v7);
  }
}

uint64_t sub_227B33794()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_227B3398C;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_227B33898;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227B33898()
{
  OUTLINED_FUNCTION_20();
  if (*(v1 + 97))
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    v4 = *(v1 + 56);
    if (sub_227D4D308())
    {
      if (v3)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_18();

      return v5();
    }

    *(v1 + 72) = v3;
  }

  v7 = *(MEMORY[0x277D85818] + 4);
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_177_0(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
  OUTLINED_FUNCTION_133();
  *v0 = v9;
  v10 = OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822004D0](v10);
}

uint64_t sub_227B3398C()
{
  OUTLINED_FUNCTION_20();
  v2 = v1[11];
  if (v1[9])
  {

    v2 = v1[9];
  }

  v3 = v1[7];
  v4 = v1[8];
  if (sub_227D4D308())
  {
    if (v2)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_18();

    return v5();
  }

  else
  {
    v1[9] = v2;
    v7 = *(MEMORY[0x277D85818] + 4);
    v8 = swift_task_alloc();
    OUTLINED_FUNCTION_177_0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
    OUTLINED_FUNCTION_133();
    *v0 = v9;
    v10 = OUTLINED_FUNCTION_14_6();

    return MEMORY[0x2822004D0](v10);
  }
}

uint64_t sub_227B33A8C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4A3B8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_121();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[18] = v12;
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[20] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[21] = v16;
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B33C58()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[21];
  v3 = v0[7];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v0[24] = 0;
  v0[25] = v5;
  v0[23] = v4;
  if (!v4)
  {
    v7 = v0[22];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[11];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X2, X16 }
  }

  v6 = v0[19];
  (*(v2 + 16))(v0[22], v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[20]);
  sub_227D4A838();
  v16 = v0[19];
  v17 = sub_227D4A6A8();
  v0[26] = 0;
  v0[27] = v17;
  v0[28] = v18;
  OUTLINED_FUNCTION_175();
  v19 = OUTLINED_FUNCTION_176_0();
  v20(v19);
  type metadata accessor for ChallengeService();
  v21 = v1[80];
  __swift_project_boxed_opaque_existential_1(v1 + 76, v1[79]);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_57_0();
  v25 = v24(v23);
  v0[29] = sub_227B94A90(v25 & 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[30] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_61(v26);
  OUTLINED_FUNCTION_163();

  return sub_227B2F654(v28);
}

uint64_t sub_227B33EE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227B33FCC()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_227D4A848();
  v0[31] = v4;
  if (v1)
  {
    v5 = v0[28];
    v6 = v0[29];
    v7 = v0[25];
    v8 = OUTLINED_FUNCTION_89();
    v9(v8);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_88_0();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v3 + 8);
  OUTLINED_FUNCTION_36_0();
  v24 = v13 + *v13;
  v15 = *(v14 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[32] = v16;
  *v16 = v17;
  v16[1] = sub_227B341C0;
  v18 = v0[28];
  v19 = v0[29];
  v20 = v0[27];
  v21 = v0[16];
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_227B341C0()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[32];
  *v4 = *v1;
  v3[33] = v0;

  v6 = v2[31];
  v7 = v2[29];
  v8 = v2[28];
  if (v0)
  {
    v9 = v3[25];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B34344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[15];
  v16 = v14[16];
  v17 = v14[9];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v18 = OUTLINED_FUNCTION_57_0();
  sub_227B3E0F8(v18, v19, v20, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v23 = v14[25];
  v24 = v14[15];
  if (EnumTagSinglePayload == 1)
  {
    v26 = v14 + 13;
    v25 = v14[13];
    v27 = v14[9];
    sub_227B1DE58(v14[15], &qword_27D7E6900, &qword_227D4E680);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v14[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = *(v29 + 16);
      v94 = OUTLINED_FUNCTION_21();
      v29 = sub_227B3A224(v94, v95, v96, v29);
    }

    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    v101 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v29 = sub_227B3A224(v30 > 1, v31 + 1, 1, v29);
    }
  }

  else
  {
    v26 = v14 + 14;
    v32 = v14[14];
    v33 = v14[10];
    v34 = v14[9];
    (*(v33 + 32))(v14[11], v14[15], v34);
    v35 = *(v33 + 16);
    v36 = OUTLINED_FUNCTION_9_2();
    v37(v36);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v14[25];
    if ((v38 & 1) == 0)
    {
      v97 = *(v29 + 16);
      v98 = OUTLINED_FUNCTION_21();
      v29 = sub_227B3A224(v98, v99, v100, v29);
    }

    v31 = *(v29 + 16);
    v39 = *(v29 + 24);
    v101 = v31 + 1;
    if (v31 >= v39 >> 1)
    {
      v29 = sub_227B3A224(v39 > 1, v31 + 1, 1, v29);
    }

    (*(v14[10] + 8))(v14[11], v14[9]);
  }

  v40 = *v26;
  v42 = v14[21];
  v41 = v14[22];
  v43 = v14[20];
  v44 = v14[12];
  sub_227B1DE58(v14[16], &qword_27D7E6900, &qword_227D4E680);
  v45 = *(v42 + 8);
  v46 = OUTLINED_FUNCTION_148();
  v47(v46);
  *(v29 + 16) = v101;
  sub_227B3DFC8(v40, v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31, &qword_27D7E6900, &qword_227D4E680);
  v48 = v14[33];
  v49 = v14[23];
  v50 = v14[24] + 1;
  v14[24] = v50;
  v14[25] = v29;
  v51 = v14[22];
  if (v50 == v49)
  {
    v52 = v14[19];
    v54 = v14[15];
    v53 = v14[16];
    v56 = v14[13];
    v55 = v14[14];
    v57 = v14[11];
    v58 = v14[22];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, v101, a11, a12, a13, a14);
  }

  else
  {
    v68 = v14[19];
    (*(v14[21] + 16))(v14[22], v14[7] + ((*(v14[21] + 80) + 32) & ~*(v14[21] + 80)) + *(v14[21] + 72) * v50, v14[20]);
    sub_227D4A838();
    if (v48)
    {
      v69 = OUTLINED_FUNCTION_89();
      v70(v69);

      OUTLINED_FUNCTION_88_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, v101, a11, a12, a13, a14);
    }

    else
    {
      v71 = v14[19];
      v72 = sub_227D4A6A8();
      v14[26] = 0;
      v14[27] = v72;
      v14[28] = v73;
      v82 = v72;
      v83 = v73;
      v84 = OUTLINED_FUNCTION_176_0();
      v85(v84);
      type metadata accessor for ChallengeService();
      v86 = qword_27D7E6B78;
      v87 = off_27D7E6B80;
      __swift_project_boxed_opaque_existential_1(&qword_27D7E6B60, qword_27D7E6B78);
      v88 = v87[8](v82, v83, v86, v87);
      v14[29] = sub_227B94A90(v88 & 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[30] = v89;
      *v89 = v90;
      OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_16_0();

      return sub_227B2F654(v91);
    }
  }
}

void sub_227B347E8()
{
  OUTLINED_FUNCTION_119();
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[33];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B348AC()
{
  OUTLINED_FUNCTION_6();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B34934()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[31];
  sub_227D4A6A8();
  v0[35] = 0;
  v0[36] = v2;
  OUTLINED_FUNCTION_175();
  v4 = v0[32];
  v3 = v0[33];
  v0[37] = v5;
  v6 = v3[80];
  __swift_project_boxed_opaque_existential_1(v3 + 76, v3[79]);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_57_0();
  LOBYTE(v1) = v9(v8);
  type metadata accessor for ChallengeService();
  v0[38] = sub_227B94B24(v4, v1 & 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[39] = v10;
  *v10 = v11;
  v10[1] = sub_227B34A84;
  v12 = v0[33];
  OUTLINED_FUNCTION_164();

  return sub_227B2F654(v13);
}

uint64_t sub_227B34A84()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 312);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227B34B68()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
  v6 = OUTLINED_FUNCTION_141();
  sub_227B351A4(v6, v7, v2, v8);
  if (v3)
  {
    v9 = v0[38];
    v10 = v0[36];

    __swift_destroy_boxed_opaque_existential_0(v0 + 13);
    v11 = v0[34];

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  v14 = v0[38];
  v15 = v0[36];

  v16 = *(v5 + 24);
  OUTLINED_FUNCTION_36_0();
  v24 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[40] = v20;
  *v20 = v21;
  v20[1] = sub_227B34D14;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_227B34D14()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    *(v3 + 160) = *(v3 + 16);
    sub_227B3DACC(v3 + 160);
    *(v3 + 208) = *(v3 + 32);
    sub_227B1DE58(v3 + 208, &qword_27D7E68F0, &qword_227D5B840);
    *(v3 + 216) = *(v3 + 40);
    sub_227B1DE58(v3 + 216, &qword_27D7E68F0, &qword_227D5B840);
    *(v3 + 224) = *(v3 + 48);
    sub_227B1DE58(v3 + 224, &qword_27D7E6910, &qword_227D5BCC0);
    *(v3 + 232) = *(v3 + 56);
    sub_227B1DE58(v3 + 232, &qword_27D7E6918, &qword_227D4E6A0);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B34EA4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  OUTLINED_FUNCTION_38_0();
  if (sub_227D4D3B8())
  {
    v2 = v0[34];
    v3 = v0[30];
    sub_227D4A958();
    v4 = OUTLINED_FUNCTION_131();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
  }

  else
  {
    v8 = v0[41];
    v9 = v0[31];
    v10 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    v11 = *(v10 + 8);
    v12 = sub_227D4D128();
    v13 = swift_task_alloc();
    *(v13 + 16) = v9;
    sub_227B2FD80(sub_227B3DB20, v13, v12);
    if (v8)
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);
      v14 = v0[34];

      OUTLINED_FUNCTION_19_0();
      goto LABEL_7;
    }

    v15 = v0[34];
    v16 = v0[30];

    v17 = sub_227D4A958();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    OUTLINED_FUNCTION_147();
  }

  sub_227D4A948();
  v18 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  OUTLINED_FUNCTION_15_0();
LABEL_7:
  OUTLINED_FUNCTION_164();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_227B350B8()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 144) = *(v0 + 16);
  sub_227B3DACC(v0 + 144);
  *(v0 + 176) = *(v0 + 32);
  OUTLINED_FUNCTION_103_0();
  sub_227B1DE58(v1, v2, v3);
  *(v0 + 184) = *(v0 + 40);
  OUTLINED_FUNCTION_103_0();
  sub_227B1DE58(v4, v5, v6);
  *(v0 + 192) = *(v0 + 48);
  sub_227B1DE58(v0 + 192, &qword_27D7E6910, &qword_227D5BCC0);
  *(v0 + 200) = *(v0 + 56);
  sub_227B1DE58(v0 + 200, &qword_27D7E6918, &qword_227D4E6A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v7 = *(v0 + 328);
  v8 = *(v0 + 272);

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227B351A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  if (a3)
  {
    sub_227B389BC(a3, &v16, &v14, &v13, &v15);
    if (v4)
    {
    }

    v11 = v15;
    v12 = v16;
    v8 = v13;
    v10 = v14;
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
    v11 = MEMORY[0x277D84FA0];
    v12 = MEMORY[0x277D84FA0];
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v12;
  a4[3] = v11;
  a4[4] = v10;
  a4[5] = v8;
  return sub_227D4CE58();
}

uint64_t sub_227B35270()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_16_0();

  return sub_227CD10D8();
}

uint64_t sub_227B35340()
{
  OUTLINED_FUNCTION_119();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);

  return sub_227CD2C50();
}

uint64_t sub_227B3541C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CD52D8(v1);
}

uint64_t sub_227B354A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CD59B4();
}

uint64_t sub_227B35538()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_164();

  return sub_227CD7998();
}

uint64_t sub_227B355D0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227B356B0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CDAF40();
}

uint64_t sub_227B35740()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CDAAF8(v1);
}

uint64_t sub_227B357CC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CDCB28();
}

uint64_t sub_227B3585C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CDD7BC(v1);
}

uint64_t sub_227B358E8()
{
  OUTLINED_FUNCTION_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);

  return sub_227CDDAF8();
}

uint64_t sub_227B35994()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);

  return sub_227CDE0E0();
}

uint64_t sub_227B35A20()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_164();

  return sub_227CDFE64();
}

uint64_t sub_227B35AB8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);

  return sub_227CE3A24();
}

uint64_t sub_227B35B44()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);
  OUTLINED_FUNCTION_174_0();

  return sub_227CE5D4C();
}

uint64_t sub_227B35BE4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE7294();
}

uint64_t sub_227B35C74()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE7D7C();
}

uint64_t sub_227B35D04()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_227B35DF0()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_227B35E7C;

  return sub_227B2F654(v0 + 16);
}

uint64_t sub_227B35E7C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B35F60()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 2) + 32);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_227B36068;
  v8 = OUTLINED_FUNCTION_9_2();

  return v10(v8);
}

uint64_t sub_227B36068()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B36174()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_227B361D4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_227B36230()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4CAB8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_121();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B362EC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 64);
  v2 = v1[79];
  v3 = v1[80];
  v4 = *(OUTLINED_FUNCTION_13_0(v1 + 76) + 24);
  OUTLINED_FUNCTION_32();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_227B363FC;
  v9 = OUTLINED_FUNCTION_9_2();

  return v11(v9);
}

uint64_t sub_227B363FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B364E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_152();
  a24 = v26;
  sub_227BBF9E0(v26[7], &a12);
  v31 = a12;
  v30 = a13;
  v26[17] = a12;
  v26[18] = v30;
  v32 = a15;
  v26[19] = a14;
  v26[20] = v32;
  if (v30)
  {
    if (v26[16])
    {
      v33 = swift_task_alloc();
      v26[21] = v33;
      *v33 = v26;
      v33[1] = sub_227B36784;
      v34 = v26[8];
      OUTLINED_FUNCTION_53(v26[15]);
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_90();

      return sub_227B36CEC();
    }

    sub_227B3DBAC(v31, v30);
  }

  v37 = v26[16];
  v38 = v26[12];
  v39 = v26[7];
  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v40 = sub_227D4CA98();
  sub_227D4D438();

  if (OUTLINED_FUNCTION_153_0())
  {
    v41 = v26[16];
    a11 = v26[12];
    v42 = v26[10];
    a9 = v26[15];
    a10 = v26[9];
    v43 = v26[7];
    OUTLINED_FUNCTION_12_1();
    a12 = OUTLINED_FUNCTION_76_0();
    *v27 = 136315394;
    v26[6] = v43;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6930, &qword_227D4E738);
    v44 = sub_227D4CFF8();
    v46 = sub_227B1B1A4(v44, v45, &a12);

    *(v27 + 4) = v46;
    *(v27 + 12) = 2080;
    if (v41)
    {
      v47 = a9;
    }

    else
    {
      v47 = 7104878;
    }

    if (!v41)
    {
      v37 = 0xE300000000000000;
    }

    v48 = sub_227B1B1A4(v47, v37, &a12);

    *(v27 + 14) = v48;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(v42 + 8))(a11, a10);
  }

  else
  {
    v54 = v26[12];
    v55 = v26[9];
    v56 = v26[10];

    v57 = *(v56 + 8);
    v58 = OUTLINED_FUNCTION_9_2();
    v59(v58);
  }

  v61 = v26[12];
  v60 = v26[13];
  v62 = v26[11];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227B36784()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B36880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v28 = v24[19];
  v27 = v24[20];
  v30 = v24[17];
  v29 = v24[18];
  v31 = v24[16];
  v32 = v24[13];
  sub_227D4AA58();
  v33 = OUTLINED_FUNCTION_82();
  sub_227B3DBF0(v33, v34);
  sub_227D4CE58();
  v35 = sub_227D4CA98();
  sub_227D4D428();
  v36 = OUTLINED_FUNCTION_82();
  sub_227B3DBAC(v36, v37);

  v38 = OUTLINED_FUNCTION_107();
  v39 = v24[19];
  v40 = v24[20];
  v41 = v24[17];
  v42 = v24[18];
  v43 = v24[16];
  if (v38)
  {
    a9 = v24[15];
    a10 = v24[10];
    a11 = v24[9];
    a12 = v24[13];
    OUTLINED_FUNCTION_12_1();
    a13 = OUTLINED_FUNCTION_95_0();
    *v29 = 136315394;
    sub_227D4CE58();
    v44 = OUTLINED_FUNCTION_94();
    sub_227B3DBAC(v44, v45);
    v46 = OUTLINED_FUNCTION_94();
    sub_227B1B1A4(v46, v47, v48);
    OUTLINED_FUNCTION_159();
    *(v29 + 4) = v41;
    *(v29 + 12) = 2080;
    v49 = sub_227B1B1A4(a9, v43, &a13);

    *(v29 + 14) = v49;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_56_0();

    (*(a10 + 8))(a12, a11);
  }

  else
  {
    v55 = v24[13];
    v56 = v24[9];
    v57 = v24[10];
    v58 = v24[16];

    v59 = OUTLINED_FUNCTION_94();
    sub_227B3DBAC(v59, v60);

    v61 = *(v57 + 8);
    v62 = OUTLINED_FUNCTION_148();
    v63(v62);
  }

  v65 = v24[12];
  v64 = v24[13];
  v66 = v24[11];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B36A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_109_1();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_152();
  a23 = v25;
  v28 = *(v25 + 176);
  v30 = *(v25 + 152);
  v29 = *(v25 + 160);
  v32 = *(v25 + 136);
  v31 = *(v25 + 144);
  v33 = *(v25 + 128);
  v34 = *(v25 + 88);
  sub_227D4AA58();
  OUTLINED_FUNCTION_145();
  sub_227B3DBF0(v35, v36);
  sub_227D4CE58();
  v37 = v28;
  v38 = sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_145();
  sub_227B3DBAC(v39, v40);

  if (OUTLINED_FUNCTION_153_0())
  {
    v41 = *(v25 + 176);
    v43 = *(v25 + 152);
    v42 = *(v25 + 160);
    a9 = *(v25 + 136);
    v44 = *(v25 + 128);
    a10 = *(v25 + 120);
    a11 = *(v25 + 80);
    a12 = *(v25 + 72);
    a13 = *(v25 + 88);
    v45 = OUTLINED_FUNCTION_14_5();
    v46 = swift_slowAlloc();
    a14 = swift_slowAlloc();
    *v45 = 136315650;
    *(v25 + 16) = a9;
    *(v25 + 32) = v43;
    *(v25 + 40) = v42;
    v47 = sub_227D4CFF8();
    v49 = sub_227B1B1A4(v47, v48, &a14);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = sub_227B1B1A4(a10, v44, &a14);

    *(v45 + 14) = v50;
    *(v45 + 22) = 2112;
    v51 = v41;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v52;
    *v46 = v52;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v53, v54, v55, v56, v57, 0x20u);
    sub_227B1DE58(v46, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(a11 + 8))(a13, a12);
  }

  else
  {
    v58 = *(v25 + 176);
    v59 = *(v25 + 152);
    v60 = *(v25 + 160);
    v61 = *(v25 + 128);
    v63 = *(v25 + 80);
    v62 = *(v25 + 88);
    v64 = *(v25 + 72);
    sub_227B3DBAC(*(v25 + 136), *(v25 + 144));

    v65 = *(v63 + 8);
    v66 = OUTLINED_FUNCTION_148();
    v67(v66);
  }

  v69 = *(v25 + 96);
  v68 = *(v25 + 104);
  v70 = *(v25 + 88);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_227B36CEC()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_227D4CAB8();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4A058();
  v1[10] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_121();
  v1[17] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6960, &qword_227D4EA50);
  v1[18] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[19] = v22;
  v24 = *(v23 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[21] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[22] = v26;
  v28 = *(v27 + 64);
  v1[23] = OUTLINED_FUNCTION_121();
  v1[24] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6968, &qword_227D4EA58);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6970, &qword_227D4EA60);
  v1[26] = v32;
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  v1[27] = OUTLINED_FUNCTION_121();
  v1[28] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[29] = v35;
  OUTLINED_FUNCTION_10_0(v35);
  v1[30] = v36;
  v38 = *(v37 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[32] = v39;
  OUTLINED_FUNCTION_10_0(v39);
  v1[33] = v40;
  v42 = *(v41 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v43 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_227B37048()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  sub_227D4CE58();
  sub_227D4A8E8();
  sub_227D4CE58();
  sub_227D4A888();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6980, &qword_227D4EA78);
  v10 = sub_227D49F58();
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v0[35] = v16;
  *(v16 + 16) = xmmword_227D4E520;
  v0[36] = *(v2 + 16);
  v0[37] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_103_0();
  v17();
  (*(v12 + 104))(v16 + v15, *MEMORY[0x277D0CFA0], v10);
  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_227B37200;
  OUTLINED_FUNCTION_53(v0[31]);
  OUTLINED_FUNCTION_135_0();

  return sub_227CD59B4();
}

uint64_t sub_227B37200()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[38];
  v6 = v4[35];
  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 312) = v0;

  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_91_0();
  v15(v14);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227B37370()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6988, &unk_227D4EA80);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[40] = v9;
  *(v9 + 16) = xmmword_227D4E520;
  OUTLINED_FUNCTION_103_0();
  v2();
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_227B37474;
  OUTLINED_FUNCTION_163();

  return sub_227CD52D8(v11);
}

uint64_t sub_227B37474()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *(v7 + 320);
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v5 + 336) = v0;

  if (!v0)
  {
    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227B3759C()
{
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  sub_227B38794(*(v0 + 344), v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    v9 = *(v0 + 200);
    v10 = &unk_27D7E6968;
    v11 = &unk_227D4EA58;
LABEL_5:
    sub_227B1DE58(v9, v10, v11);
    v22 = *(v0 + 72);
    v23 = *(v0 + 40);
    sub_227D4AA58();
    sub_227D4CE58();
    v24 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    os_log_type_enabled(v24, v3);
    OUTLINED_FUNCTION_178_0();
    if (v25)
    {
      v83 = v5;
      v84 = v4;
      v27 = *(v0 + 32);
      v26 = *(v0 + 40);
      OUTLINED_FUNCTION_129();
      v86 = OUTLINED_FUNCTION_98();
      *v6 = 136315138;
      v28 = OUTLINED_FUNCTION_114();
      *(v6 + 4) = sub_227B1B1A4(v28, v29, v30);
      OUTLINED_FUNCTION_185_0(&dword_227B0D000, v31, v32, "Challenge ID: %s has a known definition, skipping refresh.");
      __swift_destroy_boxed_opaque_existential_0(v86);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (v1[1])(v83, v2);
      (*(v23 + 8))(v22, v84);
    }

    else
    {

      (v1[1])(v5, v2);
      v33 = OUTLINED_FUNCTION_81_0();
      v35(v33, v34);
    }

    OUTLINED_FUNCTION_28_3();
    v85 = *(v0 + 72);

    OUTLINED_FUNCTION_15_0();
LABEL_9:
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v1 = &qword_227D4EA60;
  OUTLINED_FUNCTION_103_0();
  sub_227B3DFC8(v15, v16, v17, &qword_227D4EA60);
  v18 = OUTLINED_FUNCTION_147();
  sub_227B3E0F8(v18, v19, &qword_27D7E6970, &qword_227D4EA60);
  v20 = sub_227D4A3F8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
  {
    v21 = *(v0 + 216);
    sub_227B1DE58(*(v0 + 224), &qword_27D7E6970, &qword_227D4EA60);
    v9 = OUTLINED_FUNCTION_57_0();
    v11 = &qword_227D4EA60;
    goto LABEL_5;
  }

  v38 = *(v0 + 336);
  v39 = *(v0 + 216);
  v41 = *(v0 + 184);
  v40 = *(v0 + 192);
  v42 = *(v0 + 168);
  v43 = *(v0 + 176);
  v44 = *(v0 + 136);
  sub_227D4A3C8();
  v45 = *(*(v20 - 8) + 8);
  v46 = OUTLINED_FUNCTION_57_0();
  v47(v46);
  v48 = *(v43 + 32);
  v49 = OUTLINED_FUNCTION_148();
  v50(v49);
  sub_227D4A838();
  if (v38)
  {
    v51 = *(v0 + 264);
    v52 = OUTLINED_FUNCTION_44_2();
    v53(v52);
    sub_227B1DE58(v40, &qword_27D7E6970, &qword_227D4EA60);
    v54 = *(v0 + 272);
    v56 = *(v0 + 248);
    v55 = *(v0 + 256);
    OUTLINED_FUNCTION_39_1();
    v57 = OUTLINED_FUNCTION_87_2();
    v58(v57);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_9;
  }

  v59 = *(v0 + 192);
  v60 = *(v0 + 168);
  v61 = *(v0 + 176);
  v62 = *(v0 + 104);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6990, &qword_227D52170);
  v63 = sub_227D4A508();
  *(v0 + 360) = v63;
  OUTLINED_FUNCTION_9(v63);
  v65 = v64;
  *(v0 + 368) = *(v66 + 72);
  v67 = *(v64 + 80);
  *(v0 + 472) = v67;
  v68 = (v67 + 32) & ~v67;
  v69 = swift_allocObject();
  *(v0 + 376) = v69;
  *(v69 + 16) = xmmword_227D4E520;
  *(v0 + 384) = *(v61 + 16);
  *(v0 + 392) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_149();
  v70();
  *(v0 + 476) = *MEMORY[0x277D0D408];
  v71 = *(v65 + 104);
  *(v0 + 400) = v71;
  *(v0 + 408) = (v65 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v71(v69 + v68);
  sub_227D4A958();
  v72 = OUTLINED_FUNCTION_131();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 416) = v76;
  *v76 = v77;
  v76[1] = sub_227B37AF4;
  v78 = *(v0 + 160);
  v79 = *(v0 + 136);
  v80 = *(v0 + 48);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_137();

  return sub_227B348AC();
}

uint64_t sub_227B37AF4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[52];
  v7 = v5[47];
  v8 = v5[17];
  v9 = v5[15];
  v10 = v5[14];
  v11 = v5[13];
  v12 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v13 = v12;
  v3[53] = v0;

  sub_227B1DE58(v11, &qword_27D7E6908, &unk_227D4E690);
  v3[54] = *(v9 + 8);
  v3[55] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14 = OUTLINED_FUNCTION_141();
  v15(v14);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227B37CAC()
{
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = sub_227D4A938();
  v11 = *(v7 + 8);
  v10 = v7 + 8;
  v12 = OUTLINED_FUNCTION_57_0();
  v13(v12);
  v14 = *(v9 + 16);

  if (v14)
  {
    v15 = *(v0 + 224);
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    sub_227B1DE58(v15, &qword_27D7E6970, &qword_227D4EA60);
    v16 = *(v0 + 72);
    v17 = *(v0 + 40);
    sub_227D4AA58();
    sub_227D4CE58();
    v18 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    os_log_type_enabled(v18, v2);
    OUTLINED_FUNCTION_178_0();
    if (v19)
    {
      v61 = v4;
      v63 = v3;
      v21 = *(v0 + 32);
      v20 = *(v0 + 40);
      OUTLINED_FUNCTION_129();
      v66 = OUTLINED_FUNCTION_98();
      *v5 = 136315138;
      v22 = OUTLINED_FUNCTION_114();
      *(v5 + 4) = sub_227B1B1A4(v22, v23, v24);
      OUTLINED_FUNCTION_185_0(&dword_227B0D000, v25, v26, "Challenge ID: %s has a known definition, skipping refresh.");
      __swift_destroy_boxed_opaque_existential_0(v66);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (*(v10 + 8))(v61, v1);
      (*(v17 + 8))(v16, v63);
    }

    else
    {

      (*(v10 + 8))(v4, v1);
      v38 = OUTLINED_FUNCTION_81_0();
      v40(v38, v39);
    }

    OUTLINED_FUNCTION_28_3();
    v64 = *(v0 + 72);

    OUTLINED_FUNCTION_15_0();
LABEL_8:
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v27 = *(v0 + 424);
  v28 = *(v0 + 128);
  v29 = *(v0 + 192);
  sub_227D4A838();
  if (v27)
  {
    v30 = *(v0 + 264);
    v31 = OUTLINED_FUNCTION_44_2();
    v32(v31);
    sub_227B1DE58(v29, &qword_27D7E6970, &qword_227D4EA60);
    v33 = *(v0 + 272);
    v35 = *(v0 + 248);
    v34 = *(v0 + 256);
    OUTLINED_FUNCTION_39_1();
    v36 = OUTLINED_FUNCTION_87_2();
    v37(v36);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_8;
  }

  v62 = *(v0 + 400);
  v65 = *(v0 + 408);
  v60 = *(v0 + 476);
  v44 = *(v0 + 384);
  v43 = *(v0 + 392);
  v46 = *(v0 + 360);
  v45 = *(v0 + 368);
  v47 = *(v0 + 352);
  v48 = *(v0 + 192);
  v49 = *(v0 + 168);
  v50 = *(v0 + 88);
  v59 = *(v0 + 96);
  v51 = (*(v0 + 472) + 32) & ~*(v0 + 472);
  v52 = *(v0 + 80);
  v53 = swift_allocObject();
  *(v0 + 448) = v53;
  *(v53 + 16) = xmmword_227D4E520;
  OUTLINED_FUNCTION_149();
  v44();
  v62(v53 + v51, v60, v46);
  (*(v50 + 104))(v59, *MEMORY[0x277D0D040], v52);
  v54 = swift_task_alloc();
  *(v0 + 456) = v54;
  *v54 = v0;
  v54[1] = sub_227B380D0;
  v55 = *(v0 + 96);
  v56 = *(v0 + 48);
  OUTLINED_FUNCTION_53(*(v0 + 128));
  OUTLINED_FUNCTION_137();

  return sub_227B2A510();
}

uint64_t sub_227B380D0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[57];
  v6 = v4[56];
  v7 = v4[55];
  v8 = v4[54];
  v9 = v4[16];
  v10 = v4[14];
  v11 = v4[12];
  v12 = v4[11];
  v13 = v4[10];
  v14 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;
  *(v16 + 464) = v0;

  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_141();
  v19(v18);
  v20 = OUTLINED_FUNCTION_91_0();
  v8(v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227B38298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = v14[33];
  v15 = v14[34];
  v17 = v14[32];
  v18 = v14[28];
  (*(v14[22] + 8))(v14[24], v14[21]);
  sub_227B1DE58(v18, &qword_27D7E6970, &qword_227D4EA60);
  v19 = *(v16 + 8);
  v20 = OUTLINED_FUNCTION_57_0();
  v21(v20);
  OUTLINED_FUNCTION_28_3();
  v33 = v23;
  v34 = v22;
  v35 = v14[9];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, a12, a13, a14);
}

uint64_t sub_227B383B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 312);
  v18 = OUTLINED_FUNCTION_18_0();
  v19(v18);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B3848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 336);
  v18 = OUTLINED_FUNCTION_18_0();
  v19(v18);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B38564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = v19[33];
  v21 = OUTLINED_FUNCTION_44_2();
  v22(v21);
  sub_227B1DE58(v18, &qword_27D7E6970, &qword_227D4EA60);
  v23 = v19[53];
  v24 = v19[34];
  v26 = v19[31];
  v25 = v19[32];
  OUTLINED_FUNCTION_39_1();
  v27 = v19[20];
  v38 = v19[17];
  v39 = v19[16];
  v40 = v19[13];
  v41 = v19[12];
  v42 = v19[9];
  v43 = v28;
  (*(v20 + 8))(v24);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_227B38694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = OUTLINED_FUNCTION_44_2();
  v19(v18);
  sub_227B1DE58(v16, &qword_27D7E6970, &qword_227D4EA60);
  v20 = *(v17 + 464);
  v21 = OUTLINED_FUNCTION_18_0();
  v22(v21);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B38794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6970, &qword_227D4EA60);
  v6 = v5;
  if (v4)
  {
    sub_227B3E0F8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27D7E6970, &qword_227D4EA60);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227B38854()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CE8980(v1);
}

uint64_t sub_227B388E0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE8E20(v3, v4);
}

uint64_t sub_227B38970()
{
  v1 = *v0;
  v2 = v0[1];
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B389BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v68 = a4;
  v82 = a3;
  v83 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v85 = *(v67 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v67);
  v56 = &v55 - v9;
  v79 = sub_227D4A3A8();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v79);
  v81 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v55 - v14;
  v66 = sub_227D49F28();
  v15 = *(v66 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v75 = &v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v77 = *(v22 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x28223BE20](v22);
  v87 = &v55 - v24;
  v25 = sub_227D4A508();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  result = MEMORY[0x28223BE20](v25);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v93 = *(a1 + 16);
  v90 = v26 + 16;
  v91 = a1;
  v89 = v26 + 88;
  v88 = *MEMORY[0x277D0D408];
  v86 = *MEMORY[0x277D0D410];
  v80 = *MEMORY[0x277D0D420];
  v74 = *MEMORY[0x277D0D418];
  v63 = (v26 + 8);
  v32 = (v26 + 96);
  v62 = (v15 + 32);
  v61 = (v15 + 16);
  v60 = (v15 + 8);
  v73 = (v10 + 32);
  v72 = (v10 + 16);
  v71 = (v10 + 88);
  v76 = (v10 + 8);
  v58 = (v10 + 96);
  v70 = *MEMORY[0x277D0D1B0];
  v57 = (v85 + 32);
  v59 = (v85 + 8);
  v84 = (v77 + 32);
  v85 = v77 + 8;
  v77 = v22;
  while (v93 != v31)
  {
    (*(v26 + 16))(v30, v91 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v25);
    v33 = (*(v26 + 88))(v30, v25);
    if (v33 == v88)
    {
      (*v32)(v30, v25);
      v34 = v87;
      (*v84)(v87, v30, v22);
      v35 = sub_227D4A848();
      if (v6)
      {
        return (*v85)(v34, v22);
      }

      sub_227B274CC(&v92, v35, v36);

      result = (*v85)(v34, v22);
    }

    else if (v33 == v86)
    {
      (*v32)(v30, v25);
      result = sub_227B3A88C(&v92, *v30);
    }

    else if (v33 == v80)
    {
      (*v32)(v30, v25);
      v38 = v78;
      v37 = v79;
      (*v73)(v78, v30, v79);
      v39 = v81;
      (*v72)(v81, v38, v37);
      v40 = (*v71)(v39, v37);
      if (v40 == v70)
      {
        v41 = v81;
        (*v58)(v81, v37);
        v42 = v56;
        v43 = v41;
        v44 = v67;
        (*v57)(v56, v43, v67);
        v45 = sub_227D4A7D8();
        if (v6)
        {
          (*v59)(v42, v44);
          return (*v76)(v78, v79);
        }

        sub_227B274CC(&v92, v45, v46);

        (*v59)(v42, v44);
        result = (*v76)(v78, v79);
      }

      else
      {
        v53 = v38;
        v54 = *v76;
        (*v76)(v53, v37);
        result = v54(v81, v37);
      }

      v22 = v77;
    }

    else if (v33 == v74)
    {
      (*v32)(v30, v25);
      v47 = v75;
      v48 = v66;
      (*v62)(v75, v30, v66);
      v49 = v65;
      (*v61)(v65, v47, v48);
      v50 = v64;
      sub_227B3A5EC(v64, v49);
      v69 = v6;
      v51 = *v60;
      (*v60)(v50, v48);
      v52 = v48;
      v22 = v77;
      result = v51(v75, v52);
      v6 = v69;
    }

    else
    {
      result = (*v63)(v30, v25);
    }

    ++v31;
  }

  return result;
}

uint64_t sub_227B39250@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_227B39260()
{
  v2 = v0;
  v3 = sub_227D4A3A8();
  v4 = OUTLINED_FUNCTION_9(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v10 = OUTLINED_FUNCTION_9(v9);
  v65 = v11;
  v66 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  v16 = OUTLINED_FUNCTION_5(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v71 = sub_227D49F28();
  v21 = OUTLINED_FUNCTION_9(v71);
  v67 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v28 = OUTLINED_FUNCTION_9(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v62 - v33;
  v35 = v0[2];
  if (!*(v35 + 16))
  {
    v72 = v1;
    goto LABEL_7;
  }

  v63 = v0;
  sub_227D4A368();
  sub_227D4A848();
  v72 = v1;
  if (!v1)
  {
    (*(v30 + 8))(v34, v27);
    v37 = OUTLINED_FUNCTION_58();
    v39 = sub_227B39740(v37, v38, v35);

    if (!v39)
    {
      goto LABEL_20;
    }

    v2 = v63;
LABEL_7:
    v40 = v2[4];
    if (*(v40 + 16))
    {
      v41 = sub_227D4A2A8();
      if (!sub_227B3982C(v41 & 1, v40))
      {
        goto LABEL_20;
      }
    }

    v42 = v2[5];
    if (*(v42 + 16))
    {
      sub_227D4A2C8();
      v43 = v71;
      if (__swift_getEnumTagSinglePayload(v20, 1, v71) == 1)
      {
        sub_227B1DE58(v20, &qword_27D7E6940, &qword_227D4E768);
      }

      else
      {
        v44 = v67;
        (*(v67 + 32))(v26, v20, v43);
        v45 = sub_227B398E8(v26, v42);
        (*(v44 + 8))(v26, v43);
        if (!v45)
        {
          goto LABEL_20;
        }
      }
    }

    v46 = v2[3];
    if (!*(v46 + 16))
    {
      goto LABEL_19;
    }

    v47 = v68;
    sub_227D4A398();
    v49 = v69;
    v48 = v70;
    v50 = (*(v69 + 88))(v47, v70);
    v51 = v72;
    if (v50 != *MEMORY[0x277D0D1B0])
    {
      (*(v49 + 8))(v47, v48);
      goto LABEL_19;
    }

    (*(v49 + 96))(v47, v48);
    v53 = v64;
    v52 = v65;
    v54 = *(v65 + 32);
    v55 = OUTLINED_FUNCTION_173();
    v56 = v66;
    v57(v55);
    v58 = sub_227D4A7D8();
    v72 = v51;
    if (v51)
    {
      (*(v52 + 8))(v53, v56);
      return v36 & 1;
    }

    v60 = sub_227B39740(v58, v59, v46);

    (*(v52 + 8))(v53, v56);
    if (v60)
    {
LABEL_19:
      v36 = 1;
      return v36 & 1;
    }

LABEL_20:
    v36 = 0;
    return v36 & 1;
  }

  (*(v30 + 8))(v34, v27);
  return v36 & 1;
}

BOOL sub_227B39740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_227D4DB58();
  sub_227D4D048();
  v7 = sub_227D4DB98();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_227D4DA78();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}