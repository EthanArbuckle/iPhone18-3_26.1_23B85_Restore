unint64_t sub_227C68EFC(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A28, &qword_227D5F0F8);
  v2 = *(*(v45 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v45);
  v44 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - v5;
  v46 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A30, &qword_227D5F100);
    v6 = sub_227D4D838();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = v46 + 64;
  v8 = 1 << *(v46 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v46 + 64);
  v11 = (v8 + 63) >> 6;
  v40 = v6 + 8;

  result = sub_227D4CE58();
  v13 = 0;
  v42 = v7;
  for (i = v11; v10; v11 = i)
  {
    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v46 + 56);
    v18 = (*(v46 + 48) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = type metadata accessor for GameLibraryMetadata(0);
    v22 = v17 + *(*(v21 - 8) + 72) * v16;
    v23 = v45;
    v24 = *(v45 + 48);
    v25 = v43;
    sub_227C6FBE4();
    *v25 = v20;
    v25[1] = v19;
    v26 = v44;
    sub_227C70534();
    v27 = *(v23 + 48);
    v28 = *v26;
    v29 = v26[1];
    v48 = v21;
    v49 = &off_283B3D8C0;
    __swift_allocate_boxed_opaque_existential_1(&v47);
    sub_227C70180();
    sub_227B132F0(&v47, v51);
    sub_227B132F0(v51, v52);
    sub_227B132F0(v52, &v50);
    sub_227D4CE58();
    result = sub_227B2664C(v28, v29);
    v30 = result;
    if (v31)
    {
      v32 = (v6[6] + 16 * result);
      v33 = v32[1];
      *v32 = v28;
      v32[1] = v29;

      v34 = (v6[7] + 40 * v30);
      __swift_destroy_boxed_opaque_existential_0(v34);
      result = sub_227B132F0(&v50, v34);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v40 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = (v6[6] + 16 * result);
      *v35 = v28;
      v35[1] = v29;
      result = sub_227B132F0(&v50, v6[7] + 40 * result);
      v36 = v6[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_21;
      }

      v6[2] = v38;
    }

    v13 = v14;
    v7 = v42;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227C69284(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  return OUTLINED_FUNCTION_22(sub_227C692A0);
}

uint64_t sub_227C692A0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[23];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 264);
  OUTLINED_FUNCTION_36_0();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_227C693BC;
  OUTLINED_FUNCTION_53(v0[22]);
  OUTLINED_FUNCTION_85_1();

  return v9();
}

uint64_t sub_227C693BC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 192);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[25] = v10;
  v4[26] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_76_5();

    return v11();
  }

  else
  {
    v4[27] = v0;

    return MEMORY[0x2822009F8](sub_227C694E8, 0, 0);
  }
}

uint64_t sub_227C694E8()
{
  *(v0 + 144) = *(v0 + 216);
  v1 = *(v0 + 208);
  *(v0 + 152) = *(v0 + 200);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  Optional.notNilOrThrow.getter(v2, v0 + 160);
  v3 = *(v0 + 200);
  if (v1)
  {

    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 248);

    v8 = *(v0 + 160);
    *(v0 + 224) = *(v0 + 168);
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    if (v7 == 1)
    {
      v10 = *(v9 + 216);
      OUTLINED_FUNCTION_36_0();
      v22 = v11 + *v11;
      v13 = *(v12 + 4);
      v14 = swift_task_alloc();
      *(v0 + 232) = v14;
      *v14 = v0;
      OUTLINED_FUNCTION_35(v14);
      v15 = OUTLINED_FUNCTION_68_7();
    }

    else
    {
      v17 = *(v9 + 200);
      OUTLINED_FUNCTION_36_0();
      v23 = v18 + *v18;
      v20 = *(v19 + 4);
      v21 = swift_task_alloc();
      *(v0 + 240) = v21;
      *v21 = v0;
      OUTLINED_FUNCTION_35(v21);
      v15 = OUTLINED_FUNCTION_68_7();
    }

    return v16(v15);
  }
}

uint64_t sub_227C69778()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  OUTLINED_FUNCTION_81_1();
  v11 = *(v10 + 224);

  if (v0)
  {
    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_227C69A68()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v3[15] = v1;
  v3[16] = v5;
  v3[17] = v0;
  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 240);
  v8 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  OUTLINED_FUNCTION_81_1();
  v11 = *(v10 + 224);

  if (v0)
  {
    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_227C69D58()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_35(v1);

  return GameListMetadataProvider.fetchListData(for:)();
}

uint64_t sub_227C69E44()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for GameLibraryMetadata(v0) + 28);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69EB8()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for GameLibraryMetadata(v0) + 36);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69EF4()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for GameLibraryMetadata(v0) + 40);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69F54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105_1();
  v11 = type metadata accessor for GameLibraryMetadata(0);
  v12 = v11[7];
  sub_227C6F0A8();
  v13 = type metadata accessor for PurchaseHistoryGame();
  OUTLINED_FUNCTION_318(v0, 1, v13);
  if (v14)
  {
    sub_227B1DE58(v0, &qword_27D7E9938, &unk_227D5EED0);
    sub_227C6F0A8();
    if (v42)
    {
      OUTLINED_FUNCTION_189(v41);
      v16 = *(v15 + 16);
      v17 = OUTLINED_FUNCTION_38_0();
      v19 = v18(v17);
    }

    else
    {
      sub_227B1DE58(v41, &qword_27D7E9950, &qword_227D5EE10);
      v24 = v11[9];
      sub_227C6F0A8();
      if (v42)
      {
        OUTLINED_FUNCTION_189(v41);
        v26 = *(v25 + 8);
        v27 = OUTLINED_FUNCTION_38_0();
        v29 = v28(v27);
        v30 = [v29 stringValue];

        v31 = sub_227D4CFA8();
        goto LABEL_8;
      }

      sub_227B1DE58(v41, &qword_27D7E9968, &qword_227D5EEF8);
      v36 = v11[8];
      sub_227C6F0A8();
      if (!v42)
      {
        sub_227B1DE58(v41, &qword_27D7E97F0, &qword_227D5EEF0);
        return 0;
      }

      OUTLINED_FUNCTION_189(v41);
      v38 = *(v37 + 16);
      v39 = OUTLINED_FUNCTION_38_0();
      v19 = v40(v39);
    }

    v31 = v19;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v41);
    return v31;
  }

  v20 = *(v3 + 16);
  v21 = OUTLINED_FUNCTION_341();
  v22(v21);
  OUTLINED_FUNCTION_15_11();
  sub_227C6EAB0(v0, v23);
  v31 = sub_227D4A678();
  v32 = *(v3 + 8);
  v33 = OUTLINED_FUNCTION_193();
  v34(v33);
  return v31;
}

uint64_t sub_227C6A290()
{
  v1 = *v0;
  v2 = v0[1];
  sub_227D4CE58();
  sub_227C69F54();
  OUTLINED_FUNCTION_30_11();

  return sub_227D4A688();
}

uint64_t sub_227C6A2F0()
{
  OUTLINED_FUNCTION_87_6();
  if (v18)
  {
    OUTLINED_FUNCTION_189(v17);
    v1 = *(v0 + 24);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
  }

  else
  {
    sub_227B1DE58(v17, &qword_27D7E9950, &qword_227D5EE10);
    v5 = type metadata accessor for GameLibraryMetadata(0);
    v6 = *(v5 + 36);
    sub_227C6F0A8();
    if (v18)
    {
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v8 = *(v7 + 24);
      v9 = OUTLINED_FUNCTION_280();
      v4 = v10(v9, v7);
    }

    else
    {
      sub_227B1DE58(v17, &qword_27D7E9968, &qword_227D5EEF8);
      v11 = *(v5 + 32);
      sub_227C6F0A8();
      if (!v18)
      {
        sub_227B1DE58(v17, &qword_27D7E97F0, &qword_227D5EEF0);
        return OUTLINED_FUNCTION_58();
      }

      OUTLINED_FUNCTION_189(v17);
      v13 = *(v12 + 24);
      v14 = OUTLINED_FUNCTION_38_0();
      v4 = v15(v14);
    }
  }

  OUTLINED_FUNCTION_84_3(v4);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C6A460()
{
  OUTLINED_FUNCTION_87_6();
  if (v6[3])
  {
    OUTLINED_FUNCTION_189(v6);
    v1 = *(v0 + 40);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    OUTLINED_FUNCTION_84_3(v4);
  }

  else
  {
    sub_227B1DE58(v6, &qword_27D7E9950, &qword_227D5EE10);
  }

  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C6A4F0()
{
  OUTLINED_FUNCTION_87_6();
  if (v6[3])
  {
    OUTLINED_FUNCTION_189(v6);
    v1 = *(v0 + 48);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    OUTLINED_FUNCTION_84_3(v4);
  }

  else
  {
    sub_227B1DE58(v6, &qword_27D7E9950, &qword_227D5EE10);
  }

  return OUTLINED_FUNCTION_58();
}

void sub_227C6A580()
{
  OUTLINED_FUNCTION_11();
  v3 = v1;
  v54 = v4;
  v5 = sub_227D4AA28();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_54_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_316();
  v21 = sub_227D4AA38();
  v22 = OUTLINED_FUNCTION_9(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_113_4();
  if (v56)
  {
    OUTLINED_FUNCTION_85_6();
    v30 = *(v0 + 128);
    v31 = OUTLINED_FUNCTION_71_6();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_318(v19, 1, v21);
    if (!v33)
    {
      (*(v24 + 32))(v2, v19, v21);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
      goto LABEL_10;
    }
  }

  else
  {
    sub_227B1DE58(v55, &qword_27D7E9950, &qword_227D5EE10);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v21);
  }

  v40 = *(type metadata accessor for GameLibraryMetadata(0) + 36);
  sub_227C6F0A8();
  if (v56)
  {
    OUTLINED_FUNCTION_85_6();
    v41 = *(v0 + 48);
    v42 = OUTLINED_FUNCTION_71_6();
    v43(v42);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    sub_227B1DE58(v55, &qword_27D7E9968, &qword_227D5EEF8);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v21);
  }

  OUTLINED_FUNCTION_318(v19, 1, v21);
  if (!v33)
  {
    sub_227B1DE58(v19, &qword_27D7E67F0, &unk_227D5BBE0);
  }

LABEL_10:
  OUTLINED_FUNCTION_318(v2, 1, v21);
  if (v33)
  {
    sub_227B1DE58(v2, &qword_27D7E67F0, &unk_227D5BBE0);
    v47 = *v1;
    v48 = v1[1];
    v49 = v3[1];
    sub_227D4CE58();
    OUTLINED_FUNCTION_58();
    sub_227D4A778();
    sub_227D4A9E8();
    OUTLINED_FUNCTION_30_11();
    sub_227D4A9C8();
  }

  else
  {
    v50 = *(v24 + 32);
    v50(v29, v2, v21);
    v50(v54, v29, v21);
  }

  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v21);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6A91C()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8ED0, &qword_227D5BC00);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v55[-1] - v11;
  OUTLINED_FUNCTION_113_4();
  v13 = v56;
  if (v56)
  {
    v14 = v57;
    v15 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v16 = *(v14 + 112);
    v0 = v15;
    v17 = OUTLINED_FUNCTION_173();
    v18(v17);
    sub_227D495F8();
    v19 = OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_27_10(v19);
    OUTLINED_FUNCTION_10_16(v12);
    if (!v20)
    {
      OUTLINED_FUNCTION_26_8();
      v22 = *(v21 + 32);
      v23 = OUTLINED_FUNCTION_193();
      v24(v23);
      goto LABEL_19;
    }
  }

  else
  {
    sub_227B1DE58(v55, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D495F8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_108_4();
  if (!v56)
  {
    sub_227B1DE58(v55, &qword_27D7E9968, &qword_227D5EEF8);
    sub_227D495F8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
LABEL_9:
    v39 = *(v13 + 32);
    OUTLINED_FUNCTION_108_4();
    if (v56)
    {
      OUTLINED_FUNCTION_110_4();
      v41 = *(v40 + 96);
      v42 = OUTLINED_FUNCTION_49_5();
      v43(v42);
      sub_227D495F8();
      v44 = OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_27_10(v44);
      OUTLINED_FUNCTION_10_16(v2);
      if (!v20)
      {
        OUTLINED_FUNCTION_26_8();
        v46 = *(v45 + 32);
        v47 = OUTLINED_FUNCTION_341();
        v48(v47);
LABEL_15:
        sub_227D495F8();
        OUTLINED_FUNCTION_10_16(v1);
        if (!v20)
        {
          sub_227B1DE58(v1, &qword_27D7E8ED0, &qword_227D5BC00);
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_227B1DE58(v55, &qword_27D7E97F0, &qword_227D5EEF0);
      sub_227D495F8();
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v0);
    }

    sub_227D495F8();
    v55[0] = MEMORY[0x277D84F90];
    sub_227C6F060(&qword_27D7E8EF0, MEMORY[0x277D0C9F8]);
    v52 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    sub_227C6EA5C(&qword_27D7E9978, &qword_27D7E9970, &qword_227D5EF00);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_10_16(v2);
    if (!v20)
    {
      sub_227B1DE58(v2, &qword_27D7E8ED0, &qword_227D5BC00);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_109_4();
  v30 = *(v29 + 56);
  v31 = OUTLINED_FUNCTION_70_5();
  v32(v31);
  sub_227D495F8();
  v33 = OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_27_10(v33);
  OUTLINED_FUNCTION_10_16(v1);
  if (v20)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_8();
  (*(v34 + 32))(v4, v1, v0);
LABEL_17:
  sub_227D495F8();
  OUTLINED_FUNCTION_10_16(v12);
  if (!v20)
  {
    sub_227B1DE58(v12, &qword_27D7E8ED0, &qword_227D5BC00);
  }

LABEL_19:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6ACFC()
{
  OUTLINED_FUNCTION_87_6();
  if (v10)
  {
    v0 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v1 = *(v0 + 136);
    v2 = OUTLINED_FUNCTION_24_8();
    v3(v2);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_227B1DE58(v9, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D4AA38();
    OUTLINED_FUNCTION_71_0();
    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_227C6ADB0()
{
  OUTLINED_FUNCTION_87_6();
  if (v13)
  {
    v0 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v1 = *(v0 + 32);
    v2 = OUTLINED_FUNCTION_24_8();
    v4 = v3(v2);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v6)
    {
      return v4;
    }
  }

  else
  {
    sub_227B1DE58(v12, &qword_27D7E9950, &qword_227D5EE10);
  }

  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (v13)
  {
    OUTLINED_FUNCTION_189(v12);
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_38_0();
    v4 = v10(v9);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_227B1DE58(v12, &qword_27D7E97F0, &qword_227D5EEF0);
    v4 = 0;
  }

  return v4;
}

void sub_227C6AEE0()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D49588();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_226();
  v35[0] = MEMORY[0x277D84F90];
  v8 = sub_227C6F060(&qword_27D7E9808, MEMORY[0x277D0C9D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9980, &qword_227D5EF08);
  sub_227C6EA5C(&qword_27D7E9988, &qword_27D7E9980, &qword_227D5EF08);
  sub_227D4D5B8();
  OUTLINED_FUNCTION_114_3();
  sub_227C6F0A8();
  if (v34)
  {
    sub_227B132F0(&v33, v35);
    OUTLINED_FUNCTION_109_4();
    v10 = *(v9 + 32);
    v11 = OUTLINED_FUNCTION_70_5();
    v12(v11);
    v13 = OUTLINED_FUNCTION_341();
    sub_227C6B21C(v13, v14);
    v15 = *(v4 + 8);
    v15(v0, v1);
    v16 = OUTLINED_FUNCTION_193();
    (v15)(v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    sub_227B1DE58(&v33, &qword_27D7E9968, &qword_227D5EEF8);
  }

  sub_227C6F0A8();
  if (v34)
  {
    sub_227B132F0(&v33, v35);
    v17 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v18 = *(v17 + 120);
    v19 = OUTLINED_FUNCTION_308();
    v20(v19, v17);
    sub_227C6B520();
    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_193();
    v23(v22);
  }

  else
  {
    sub_227B1DE58(&v33, &qword_27D7E9950, &qword_227D5EE10);
    v24 = *(v8 + 32);
    sub_227C6F0A8();
    if (!v34)
    {
      sub_227B1DE58(&v33, &qword_27D7E97F0, &qword_227D5EEF0);
      goto LABEL_9;
    }

    sub_227B132F0(&v33, v35);
    OUTLINED_FUNCTION_110_4();
    v26 = *(v25 + 80);
    v27 = OUTLINED_FUNCTION_49_5();
    v28(v27);
    v29 = OUTLINED_FUNCTION_341();
    sub_227C6B21C(v29, v30);
    v31 = *(v4 + 8);
    v31(v0, v1);
    v32 = OUTLINED_FUNCTION_193();
    (v31)(v32);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_9:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6B21C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A18, &qword_227D5F0F0);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_227D49588();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277D0C9D0];
  v27 = sub_227C6F060(&qword_27D7E9808, MEMORY[0x277D0C9D0]);
  sub_227D4D588();
  v19 = v18;
  v20 = v30;
  sub_227C6F060(&qword_27D7E9A20, v19);
  v28 = a2;
  v21 = sub_227D4CF38();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_227D4D598();
  }

  v24 = v31;
  sub_227C70534();
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_227C6B520()
{
  v1 = sub_227D49588();
  v2 = MEMORY[0x277D0C9D0];
  sub_227C6F060(&qword_27D7E9A08, MEMORY[0x277D0C9D0]);
  sub_227D4D148();
  (*(*(v1 - 8) + 8))(v0, v1);
  sub_227D4D148();
  sub_227C6F060(&qword_27D7E9A10, v2);
  return sub_227D4DC88();
}

void sub_227C6B640()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9990, &unk_227D5EF10);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v55[-1] - v11;
  OUTLINED_FUNCTION_113_4();
  v13 = v56;
  if (v56)
  {
    v14 = v57;
    v15 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v16 = *(v14 + 104);
    v0 = v15;
    v17 = OUTLINED_FUNCTION_173();
    v18(v17);
    sub_227D4AA88();
    v19 = OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_27_10(v19);
    OUTLINED_FUNCTION_10_16(v12);
    if (!v20)
    {
      OUTLINED_FUNCTION_26_8();
      v22 = *(v21 + 32);
      v23 = OUTLINED_FUNCTION_193();
      v24(v23);
      goto LABEL_19;
    }
  }

  else
  {
    sub_227B1DE58(v55, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D4AA88();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_108_4();
  if (!v56)
  {
    sub_227B1DE58(v55, &qword_27D7E9968, &qword_227D5EEF8);
    sub_227D4AA88();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
LABEL_9:
    v39 = *(v13 + 32);
    OUTLINED_FUNCTION_108_4();
    if (v56)
    {
      OUTLINED_FUNCTION_110_4();
      v41 = *(v40 + 88);
      v42 = OUTLINED_FUNCTION_49_5();
      v43(v42);
      sub_227D4AA88();
      v44 = OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_27_10(v44);
      OUTLINED_FUNCTION_10_16(v2);
      if (!v20)
      {
        OUTLINED_FUNCTION_26_8();
        v46 = *(v45 + 32);
        v47 = OUTLINED_FUNCTION_341();
        v48(v47);
LABEL_15:
        sub_227D4AA88();
        OUTLINED_FUNCTION_10_16(v1);
        if (!v20)
        {
          sub_227B1DE58(v1, &qword_27D7E9990, &unk_227D5EF10);
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_227B1DE58(v55, &qword_27D7E97F0, &qword_227D5EEF0);
      sub_227D4AA88();
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v0);
    }

    sub_227D4AA88();
    v55[0] = MEMORY[0x277D84F90];
    sub_227C6F060(&qword_27D7E6810, MEMORY[0x277D0D550]);
    v52 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    sub_227C6EA5C(&qword_27D7E6820, &qword_27D7E6818, &qword_227D4E598);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_10_16(v2);
    if (!v20)
    {
      sub_227B1DE58(v2, &qword_27D7E9990, &unk_227D5EF10);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_109_4();
  v30 = *(v29 + 40);
  v31 = OUTLINED_FUNCTION_70_5();
  v32(v31);
  sub_227D4AA88();
  v33 = OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_27_10(v33);
  OUTLINED_FUNCTION_10_16(v1);
  if (v20)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_8();
  (*(v34 + 32))(v4, v1, v0);
LABEL_17:
  sub_227D4AA88();
  OUTLINED_FUNCTION_10_16(v12);
  if (!v20)
  {
    sub_227B1DE58(v12, &qword_27D7E9990, &unk_227D5EF10);
  }

LABEL_19:
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6BA20()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = sub_227D492A8();
  v4 = OUTLINED_FUNCTION_9(v3);
  v76 = v5;
  v77 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  v79 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v10 = OUTLINED_FUNCTION_10_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_0();
  v75 = v15 - v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_113_4();
  v18 = v81;
  if (!v81)
  {
    goto LABEL_10;
  }

  v19 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v20 = *(v19 + 56);
  v21 = OUTLINED_FUNCTION_223();
  v23 = v22(v21, v19);
  __swift_destroy_boxed_opaque_existential_0(v80);
  if (!v23)
  {
    goto LABEL_13;
  }

  sub_227C6F0A8();
  if (!v81)
  {

LABEL_10:
    sub_227B1DE58(v80, &qword_27D7E9950, &qword_227D5EE10);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_85_6();
  v24 = *(v18 + 64);
  v25 = OUTLINED_FUNCTION_71_6();
  v27 = v26(v25);
  __swift_destroy_boxed_opaque_existential_0(v80);
  if (v27)
  {
    if ([v23 BOOLValue] & 1) == 0 && (objc_msgSend(v27, sel_BOOLValue))
    {
      sub_227C6F0A8();
      if (v81)
      {
        v28 = v82;
        __swift_project_boxed_opaque_existential_1(v80, v81);
        v29 = *(v28 + 16);
        v30 = OUTLINED_FUNCTION_193();
        v31(v30);

        v32 = OUTLINED_FUNCTION_37_4();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v77);
        __swift_destroy_boxed_opaque_existential_0(v80);
      }

      else
      {

        sub_227B1DE58(v80, &qword_27D7E9960, &unk_227D5EEE0);
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v71, v72, v73, v77);
      }

      goto LABEL_27;
    }
  }

LABEL_13:
  v74 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9998, &qword_227D5EF20);
  v35 = *(v12 + 72);
  v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_227D4F750;
  v38 = v37 + v36;
  sub_227C6F0A8();
  if (v81)
  {
    v39 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v40 = *(v39 + 16);
    v41 = OUTLINED_FUNCTION_223();
    v42(v41, v39);
    OUTLINED_FUNCTION_99();
    v43 = v77;
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v77);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    sub_227B1DE58(v80, &qword_27D7E9960, &unk_227D5EEE0);
    OUTLINED_FUNCTION_71_0();
    v43 = v77;
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v77);
  }

  v50 = v75;
  v51 = *(type metadata accessor for GameLibraryMetadata(0) + 40);
  v52 = &qword_27D7E6D08;
  sub_227C6F0A8();
  v53 = 0;
  v78 = (v76 + 32);
  v54 = MEMORY[0x277D84F90];
  do
  {
    v55 = v53;
    sub_227C6F0A8();
    sub_227C70534();
    OUTLINED_FUNCTION_318(v50, 1, v43);
    if (v56)
    {
      sub_227B1DE58(v50, v52, &qword_227D59460);
    }

    else
    {
      v57 = v52;
      v58 = v38;
      v59 = v0;
      v60 = v35;
      v61 = *v78;
      (*v78)(v79, v50, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = OUTLINED_FUNCTION_79_6();
        v54 = sub_227C6DB98(v67, v68, v69, v70);
      }

      v64 = *(v54 + 16);
      v63 = *(v54 + 24);
      if (v64 >= v63 >> 1)
      {
        v54 = sub_227C6DB98(v63 > 1, v64 + 1, 1, v54);
      }

      *(v54 + 16) = v64 + 1;
      v43 = v77;
      OUTLINED_FUNCTION_81_6();
      v61(v65 + v66 * v64, v79, v77);
      v35 = v60;
      v0 = v59;
      v50 = v75;
      v38 = v58;
      v52 = v57;
    }

    v53 = 1;
  }

  while ((v55 & 1) == 0);
  swift_setDeallocating();
  sub_227C6DB14();
  sub_227C6BF4C(v54, v74);

LABEL_27:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227D492A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_227C6F060(&qword_280E7B6F0, MEMORY[0x277CC9578]);
      v16 = sub_227D4CEE8();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL sub_227C6C1B8()
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v0, v1, v2);
  return v4 != 0;
}

uint64_t sub_227C6C228()
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (!v11)
  {
    sub_227B1DE58(&v10, &qword_27D7E97F0, &qword_227D5EEF0);
    return 0;
  }

  sub_227B132F0(&v10, v12);
  v0 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v1 = *(v0 + 48);
  v2 = OUTLINED_FUNCTION_24_8();
  if ((v3(v2) & 1) == 0)
  {
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v5 + 64);
    v7 = OUTLINED_FUNCTION_24_8();
    v8(v7);
    if (v10 != 2)
    {
      sub_227C6F0A8();
      v4 = v11 == 0;
      sub_227B1DE58(&v10, &qword_27D7E9960, &unk_227D5EEE0);
      __swift_destroy_boxed_opaque_existential_0(v12);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  return 1;
}

uint64_t sub_227C6C378()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v45[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-1] - v10;
  v12 = type metadata accessor for GameLibraryMetadata(0);
  v13 = *(v12 + 28);
  sub_227C6F0A8();
  v14 = type metadata accessor for PurchaseHistoryGame();
  OUTLINED_FUNCTION_318(v5, 1, v14);
  if (v15)
  {
    sub_227B1DE58(v5, &qword_27D7E9938, &unk_227D5EED0);
    v16 = sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = *(v12 + 32);
    sub_227C6F0A8();
    if (v46)
    {
      v21 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v22 = *(v21 + 40);
      v23 = OUTLINED_FUNCTION_308();
      v24(v23, v21);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      sub_227B1DE58(v45, &qword_27D7E97F0, &qword_227D5EEF0);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
    }

    result = OUTLINED_FUNCTION_318(v11, 1, v16);
    if (!v15)
    {
      return sub_227B1DE58(v11, &qword_27D7E6D08, &qword_227D59460);
    }
  }

  else
  {
    v25 = *(v14 + 20);
    v26 = sub_227D492A8();
    OUTLINED_FUNCTION_9(v26);
    v28 = v27;
    (*(v29 + 16))(v11, &v5[v25], v26);
    OUTLINED_FUNCTION_15_11();
    sub_227C6EAB0(v5, v30);
    v31 = OUTLINED_FUNCTION_37_4();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v26);
    v34 = *(v28 + 32);
    v35 = OUTLINED_FUNCTION_9_2();
    v36(v35);
    OUTLINED_FUNCTION_99();
    return __swift_storeEnumTagSinglePayload(v37, v38, v39, v26);
  }

  return result;
}

uint64_t sub_227C6C620()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105_1();
  v5 = *(type metadata accessor for GameLibraryMetadata(0) + 28);
  sub_227C6F0A8();
  v6 = type metadata accessor for PurchaseHistoryGame();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v6);
  sub_227B1DE58(v0, &qword_27D7E9938, &unk_227D5EED0);
  if (EnumTagSinglePayload == 1 && (sub_227C6F0A8(), v8 = v18, sub_227B1DE58(v17, &qword_27D7E9960, &unk_227D5EEE0), !v8))
  {
    v9 = MEMORY[0x277D0CDF8];
  }

  else
  {
    v9 = MEMORY[0x277D0CE00];
  }

  v10 = *v9;
  v11 = sub_227D49C78();
  OUTLINED_FUNCTION_6_15(v11);
  v13 = *(v12 + 104);
  v14 = OUTLINED_FUNCTION_58();
  return v15(v14);
}

void sub_227C6C770()
{
  OUTLINED_FUNCTION_11();
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v68 = v63 - v8;
  OUTLINED_FUNCTION_191_2();
  v9 = sub_227D49C78();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_3();
  v63[2] = v13;
  OUTLINED_FUNCTION_191_2();
  v14 = sub_227D49C98();
  v15 = OUTLINED_FUNCTION_9(v14);
  v66 = v16;
  v67 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  v65 = v19 - v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v64 = v63 - v22;
  OUTLINED_FUNCTION_191_2();
  v23 = sub_227D492A8();
  v24 = OUTLINED_FUNCTION_9(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_226();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v31 = OUTLINED_FUNCTION_5(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_54_0();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v63 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v63 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E99A0, &qword_227D5EF28);
  v41 = OUTLINED_FUNCTION_5(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_54_0();
  v63[1] = v44 - v45;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  v48 = v63 - v47;
  sub_227C6BA20();
  sub_227C6F0A8();
  v49 = 1;
  OUTLINED_FUNCTION_318(v37, 1, v23);
  if (!v50)
  {
    (*(v26 + 32))(v2, v37, v23);
    (*(v26 + 16))(v1, v2, v23);
    sub_227D49C58();
    v51 = *(v26 + 8);
    v52 = OUTLINED_FUNCTION_193();
    v53(v52);
    v49 = 0;
  }

  sub_227B1DE58(v39, &qword_27D7E6D08, &qword_227D59460);
  v54 = sub_227D49C68();
  __swift_storeEnumTagSinglePayload(v48, v49, 1, v54);
  sub_227C6C620();
  sub_227C6C378();
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v55, v56, v57);
  v58 = v64;
  sub_227D49C88();
  v59 = *v0;
  v60 = v0[1];
  sub_227D4CE58();
  sub_227C69F54();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_30_11();
  sub_227D4A688();
  sub_227C6F0A8();
  v61 = v66;
  v62 = v67;
  (*(v66 + 16))(v65, v58, v67);
  sub_227D49CA8();
  (*(v61 + 8))(v58, v62);
  sub_227B1DE58(v48, &qword_27D7E99A0, &qword_227D5EF28);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6CBF4()
{
  sub_227C6F0A8();
  if (v7)
  {
    sub_227B132F0(&v6, v8);
    OUTLINED_FUNCTION_189(v8);
    v1 = *(v0 + 88);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_227B1DE58(&v6, &qword_27D7E9950, &qword_227D5EE10);
    OUTLINED_FUNCTION_55_7();
    sub_227C6F0A8();
    v4 = v8[3] != 0;
    sub_227B1DE58(v8, &qword_27D7E97F0, &qword_227D5EEF0);
  }

  return v4 & 1;
}

uint64_t sub_227C6CCE0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (v30)
  {
    sub_227B132F0(&v29, v31);
    v2 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v3 = *(v2 + 56);
    v4 = OUTLINED_FUNCTION_24_8();
    v5(v4);
    v28 = *sub_227B6DCA4();
    sub_227B6E22C();
    if (sub_227D4D578())
    {
      v6 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v7 = *(v6 + 72);
      v8 = OUTLINED_FUNCTION_24_8();
      v10 = v9(v8);
      v11 = sub_227D49F28();
      OUTLINED_FUNCTION_6_15(v11);
      v13 = *(v12 + 104);
      if (v10)
      {
        v14 = MEMORY[0x277D0CEF0];
      }

      else
      {
        v14 = MEMORY[0x277D0CEE0];
      }

      v27 = *v14;
      v26 = a1;
    }

    else
    {
      v22 = *MEMORY[0x277D0CEE8];
      v23 = sub_227D49F28();
      OUTLINED_FUNCTION_6_15(v23);
      v25 = *(v24 + 104);
      v26 = OUTLINED_FUNCTION_58();
    }

    v13(v26, v27);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_227B1DE58(&v29, &qword_27D7E97F0, &qword_227D5EEF0);
    v15 = *MEMORY[0x277D0CEE8];
    v16 = sub_227D49F28();
    OUTLINED_FUNCTION_6_15(v16);
    v18 = *(v17 + 104);
    v19 = OUTLINED_FUNCTION_58();
    return v20(v19);
  }
}

uint64_t sub_227C6CEA0()
{
  OUTLINED_FUNCTION_87_6();
  if (v6[3])
  {
    OUTLINED_FUNCTION_189(v6);
    v1 = *(v0 + 152);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_227B1DE58(v6, &qword_27D7E9950, &qword_227D5EE10);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_227C6CF3C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_316();
  sub_227C6BA20();
  sub_227C6A2F0();
  v13 = v12;
  sub_227C6C378();
  v14 = OUTLINED_FUNCTION_173();
  static AnySortableKey.create(lastPlayed:name:purchaseDate:compared:)(v14, v15, v13, v10, v1, v16);

  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v17, v18, v19);
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v20, v21, v22);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6D028()
{
  OUTLINED_FUNCTION_11();
  v89 = v0;
  v2 = v1;
  v3 = type metadata accessor for GameLibraryMetadata(0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = sub_227D4CAB8();
  v11 = OUTLINED_FUNCTION_9(v10);
  v88 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = sub_227D49F28();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  v96 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  v24 = OUTLINED_FUNCTION_5(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_54_0();
  v95 = v27 - v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v94 = v86 - v30;
  OUTLINED_FUNCTION_191_2();
  v31 = sub_227D495F8();
  v32 = OUTLINED_FUNCTION_5(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_3();
  v93 = v35;
  OUTLINED_FUNCTION_191_2();
  v36 = sub_227D49588();
  v37 = OUTLINED_FUNCTION_5(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_3();
  v92 = v40;
  OUTLINED_FUNCTION_191_2();
  v41 = sub_227D4AA88();
  v42 = OUTLINED_FUNCTION_5(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_3();
  v91 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v47 = OUTLINED_FUNCTION_9(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_54_0();
  v90 = (v52 - v53);
  OUTLINED_FUNCTION_6_0();
  v55 = MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v57 = v86 - v56;
  v58 = sub_227C6A2F0();
  if (v59)
  {
    v86[5] = v59;
    v86[6] = v58;
    v87 = v2;
    v88 = v49;
    v60 = *(v49 + 16);
    v60(v57, v89, v46);
    sub_227D4A678();

    v89 = sub_227C6A460();
    v86[4] = v74;
    v75 = sub_227C6ADB0();
    v86[2] = v76;
    v86[3] = v75;
    v60(v90, v57, v46);
    sub_227C6B640();
    sub_227C6AEE0();
    sub_227C6A91C();
    v86[1] = sub_227C6A4F0();
    sub_227C6A580();
    sub_227C6ACFC();
    sub_227C6F0A8();
    v77 = v98;
    if (v98)
    {
      v78 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      (*(v78 + 72))(v77, v78);
      __swift_destroy_boxed_opaque_existential_0(v97);
    }

    else
    {
      sub_227B1DE58(v97, &qword_27D7E9950, &qword_227D5EE10);
    }

    v71 = v87;
    sub_227C6F0A8();
    v79 = v98;
    if (v98)
    {
      v80 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v81 = (*(v80 + 80))(v79, v80);
      if (v81)
      {
        v82 = v81;
        [v81 BOOLValue];
      }

      __swift_destroy_boxed_opaque_existential_0(v97);
    }

    else
    {
      sub_227B1DE58(v97, &qword_27D7E9950, &qword_227D5EE10);
    }

    sub_227C6CCE0(v96);
    sub_227C6F0A8();
    v83 = v98;
    if (v98)
    {
      v84 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      (*(v84 + 96))(v83, v84);
      __swift_destroy_boxed_opaque_existential_0(v97);
    }

    else
    {
      sub_227B1DE58(v97, &qword_27D7E9950, &qword_227D5EE10);
    }

    sub_227D49608();
    (*(v88 + 8))(v57, v46);
    v72 = 0;
  }

  else
  {
    v61 = v2;
    v96 = v10;
    v62 = v88;
    sub_227D4AA58();
    OUTLINED_FUNCTION_14_12();
    sub_227C6FBE4();
    v63 = sub_227D4CA98();
    v64 = sub_227D4D428();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v97[0] = v66;
      *v65 = 136315138;
      v67 = *v9;
      v68 = v9[1];
      sub_227D4CE58();
      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v9, v69);
      v70 = sub_227B1B1A4(v67, v68, v97);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_227B0D000, v63, v64, "No name available to describe %s, filtering it out.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v71 = v61;
      MEMORY[0x22AAA7130](v66, -1, -1);
      MEMORY[0x22AAA7130](v65, -1, -1);

      (*(v62 + 8))(v17, v96);
      v72 = 1;
    }

    else
    {

      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v9, v73);
      (*(v62 + 8))(v17, v96);
      v72 = 1;
      v71 = v61;
    }
  }

  v85 = sub_227D49618();
  __swift_storeEnumTagSinglePayload(v71, v72, 1, v85);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6D868()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_36_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  v11[1] = sub_227B3E2E8;

  return v14(v5, v3, v1);
}

uint64_t sub_227C6D9C0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_60_7();

  return sub_227C66CCC();
}

uint64_t objectdestroyTm_2()
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_227C6DA80()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;
  v3 = OUTLINED_FUNCTION_60_7();

  return sub_227C66D60(v3, v4);
}

uint64_t sub_227C6DB14()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

size_t sub_227C6DB98(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227C6DD08(v8, v7);
  v10 = *(sub_227D492A8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227C6DE04(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227C6DC84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A48, &qword_227D5F118);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

size_t sub_227C6DD08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A00, &qword_227D5F0E8);
  v4 = *(sub_227D492A8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227C6DE04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D492A8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D492A8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C6DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  (*(*(v7 - 8) + 16))(a1, a4, v7);
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227C6DF64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
  result = sub_227C6DED8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_227C6DFD4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  v46 = a2;
  result = sub_227D4D828();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v42 = v2;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = (v6 + 16);
  v44 = v9;
  v45 = v6;
  v47 = (v6 + 32);
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_35;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      sub_227B26E40(0, (v40 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v45 + 72);
    v29 = v24 + v28 * v23;
    if (v46)
    {
      (*v47)(v48, v29, v49);
    }

    else
    {
      (*v43)(v48, v29, v49);
      sub_227D4CE58();
    }

    v30 = *(v12 + 40);
    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v31 = -1 << *(v12 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v12 + 48) + 16 * v34);
    *v39 = v27;
    v39[1] = v26;
    result = (*v47)(*(v12 + 56) + v28 * v34, v48, v49);
    ++*(v12 + 16);
    v9 = v44;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v19 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t *sub_227C6E35C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), unint64_t *a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a3 = sub_227C6F350(v13, v8, v6, a2);
      MEMORY[0x22AAA7130](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_227B26E40(0, v8, v9);
  v10 = sub_227C6F0FC(v9, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_227C6E4E0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_93_4(v3);

  return sub_227C675E8(v5, v6, v1);
}

uint64_t sub_227C6E568()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6();
  v3 = v1[22];

  v4 = v1[23];

  v5 = v1[24];

  v6 = v1[25];

  v7 = v1[26];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_227C6E664()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 216);
  v2 = *(v0 + 217);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_93_4(v4);

  return sub_227C67954(v6, v7, v1, v2);
}

uint64_t sub_227C6E6FC()
{
  OUTLINED_FUNCTION_20();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_10_0(v1);
  v4 = (v0 + ((*(v3 + 64) + ((*(v2 + 80) + 176) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_227C6E808;

  return sub_227C67B74();
}

uint64_t sub_227C6E808()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_227C6E904()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

uint64_t sub_227C6E998()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_60_7();

  return sub_227C6D868();
}

uint64_t sub_227C6EA5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227C6EAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_227C6EC0C()
{
  sub_227C6EF98(319, &qword_27D7E99A8, &qword_27D7E67D0, &qword_227D63360, MEMORY[0x277D0D4F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_4_1();
  }
}

uint64_t dispatch thunk of GameListMetadataProviderProtocol.fetchListData(for:)()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 8);
  OUTLINED_FUNCTION_36_0();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_35(v11);

  return v13(v6, v4, v2);
}

void sub_227C6EE18(uint64_t a1)
{
  OUTLINED_FUNCTION_9_11(a1, &qword_27D7E99B0, &qword_27D7E99B8, &qword_227D5F088);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_11(v1, &qword_27D7E99C0, &qword_27D7E99C8, &qword_227D5F090);
    if (v3 <= 0x3F)
    {
      sub_227C6EFFC(319, &qword_27D7E99D0, type metadata accessor for PurchaseHistoryGame);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_9_11(v4, &qword_27D7E99D8, &qword_27D7E99E0, &qword_227D5F098);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_9_11(v6, &qword_27D7E99E8, &qword_27D7E99F0, &qword_227D5F0A0);
          if (v8 <= 0x3F)
          {
            sub_227C6EFFC(319, &qword_27D7E99F8, MEMORY[0x277CC9578]);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_4_1();
            }
          }
        }
      }
    }
  }
}

void sub_227C6EF98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_227C6EFFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227D4D4F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_227C6F060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227C6F0A8()
{
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t sub_227C6F0FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v36 = a4;
  v28 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(*(v35 - 8) + 64);
  result = MEMORY[0x28223BE20](v35);
  v33 = &v27 - v8;
  v34 = v7;
  v9 = 0;
  v37 = a3;
  v10 = *(a3 + 64);
  v29 = 0;
  v30 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v15 = v33;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v38 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = (v37[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = v34;
    v24 = v35;
    v25 = v19;
    (*(v34 + 16))(v15, v37[7] + *(v34 + 72) * v19, v35);
    sub_227D4CE58();
    LOBYTE(v21) = v36(v21, v22, v15);
    (*(v23 + 8))(v15, v24);

    v13 = v38;
    if (v21)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_227C6F3E0(v28, v27, v29, v37);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_227C6F3E0(v28, v27, v29, v37);
    }

    v18 = *(v30 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_227C6F350(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
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

    v8 = sub_227C6F0FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_227C6F3E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  result = sub_227D4D838();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_227D4DB58();
    sub_227D4CE58();
    v54 = v28;
    sub_227D4D048();
    result = sub_227D4DB98();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_25:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227C6F764(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v60 = a5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v53);
  v49 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A60, &unk_227D5F140);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (v48 - v17);
  sub_227B3D8D4(a1, a2, a3, v58);
  v54 = v58[0];
  v55 = v58[1];
  v56 = v58[2];
  v57 = v59;
  v19 = (v9 + 32);
  v48[6] = v9 + 16;
  v48[5] = v9 + 8;
  v52 = v9;
  v48[4] = v9 + 40;
  v48[2] = a1;
  sub_227D4CE58();
  v48[1] = a3;

  v50 = v18;
  v51 = v14;
  while (1)
  {
    sub_227C701D4(v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
    if (__swift_getEnumTagSinglePayload(v18, 1, v20) == 1)
    {
      sub_227B223D4();
    }

    v22 = *v18;
    v21 = v18[1];
    v23 = *v19;
    (*v19)(v14, v18 + *(v20 + 48), v53);
    v24 = *v60;
    v26 = sub_227B2664C(v22, v21);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E8, &qword_227D5E8C8);
        sub_227D4D7D8();
      }
    }

    else
    {
      v31 = v60;
      sub_227C6DFD4(v29, a4 & 1);
      v32 = *v31;
      v33 = sub_227B2664C(v22, v21);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_17;
      }

      v26 = v33;
    }

    v35 = *v60;
    if (v30)
    {
      v36 = v52;
      v37 = *(v52 + 72) * v26;
      v38 = v49;
      v39 = v19;
      v40 = v53;
      (*(v52 + 16))(v49, v35[7] + v37, v53);
      v14 = v51;
      (*(v36 + 8))(v51, v40);

      v41 = v40;
      v19 = v39;
      (*(v36 + 40))(v35[7] + v37, v38, v41);
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v42 = (v35[6] + 16 * v26);
      *v42 = v22;
      v42[1] = v21;
      v43 = v35[7] + *(v52 + 72) * v26;
      v14 = v51;
      v23(v43, v51, v53);
      v44 = v35[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_16;
      }

      v35[2] = v46;
    }

    a4 = 1;
    v18 = v50;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227C6FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C6FBE4()
{
  OUTLINED_FUNCTION_37();
  v2 = v1(0);
  OUTLINED_FUNCTION_6_15(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

uint64_t sub_227C6FC38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
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
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
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
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_227B11EE8(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_227B132F0(v17, v18);
      result = sub_227B132F0(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_227C6FD90(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
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
    v35 = a4 + 64;
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
      v25 = *(a4 + 56);
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

void sub_227C70034()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_8_1();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
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
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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
      sub_227D4CE58();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_227C70180()
{
  OUTLINED_FUNCTION_37();
  v2 = v1(0);
  OUTLINED_FUNCTION_6_15(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

uint64_t sub_227C701D4@<X0>(uint64_t a1@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v39 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A68, &unk_227D5F150);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v44 = v20;
  if (v22)
  {
    v41 = v14;
    v42 = a1;
    v23 = v5;
    v24 = v21;
LABEL_7:
    v40 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = (*(v18 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    (*(v6 + 16))(v9, *(v18 + 56) + *(v6 + 72) * v25, v23);
    v29 = v43;
    v30 = *(v43 + 48);
    *v17 = v27;
    *(v17 + 1) = v28;
    v31 = v9;
    v32 = v29;
    (*(v6 + 32))(&v17[v30], v31, v23);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v32);
    sub_227D4CE58();
    v33 = v40;
    v14 = v41;
    a1 = v42;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v33;
    v34 = v1[5];
    v35 = v1[6];
    sub_227C70534();
    v36 = 1;
    if (__swift_getEnumTagSinglePayload(v14, 1, v32) != 1)
    {
      v37 = v39;
      sub_227C70534();
      v34(v37);
      sub_227B1DE58(v37, &qword_27D7E9A38, &qword_227D5F108);
      v36 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
    return __swift_storeEnumTagSinglePayload(a1, v36, 1, v38);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = v43;
        __swift_storeEnumTagSinglePayload(&v39 - v16, 1, 1, v43);
        v33 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v24);
      ++v21;
      if (v22)
      {
        v41 = v14;
        v42 = a1;
        v23 = v5;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227C70534()
{
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  result = v0[589];
  v2 = v0[565];
  v3 = *(v0[571] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_7()
{
  result = type metadata accessor for GameLibraryMetadata(0);
  v1 = *(result + 32);
  return result;
}

void *OUTLINED_FUNCTION_85_6()
{
  v3 = *(v1 - 88);

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

unint64_t OUTLINED_FUNCTION_86_4(uint64_t *a1)
{
  v4 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 16) = v4;

  return sub_227C5FE28();
}

uint64_t OUTLINED_FUNCTION_87_6()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_95_3()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[8] + 8);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_108_4()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_112_3()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_113_4()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_114_3()
{
  result = type metadata accessor for GameLibraryMetadata(0);
  v1 = *(result + 36);
  return result;
}

unint64_t static AnySortableKey.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = sub_227D4CF68();
  v9 = OUTLINED_FUNCTION_9(v8);
  v51[1] = v10;
  v51[2] = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_29(v13, v51[0]);
  v14 = sub_227D492A8();
  v15 = OUTLINED_FUNCTION_9(v14);
  v55 = v16;
  v56 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_42_5();
  v21 = OUTLINED_FUNCTION_62_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_7();
  MEMORY[0x28223BE20](v26);
  v28 = (v51 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A70, &qword_227D5F170);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_1();
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_12(v33, v34, v51[0]);
  v54 = a2;
  sub_227C70C78(a2, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70C78(v3, v5);
      v36 = *(v5 + 8);
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_41_7();
        v37 = OUTLINED_FUNCTION_28_9();

        v38 = OUTLINED_FUNCTION_17_1();
        v39(v38);
        LOBYTE(v2) = v37 == -1;
LABEL_23:
        sub_227C70CDC(v3);
        return v2 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_227C70CDC(v3);
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_227C70C78(v3, v28);
    OUTLINED_FUNCTION_177();
    if (!swift_getEnumCaseMultiPayload())
    {
      v47 = OUTLINED_FUNCTION_21_5();
      v20(v47);
      v48 = OUTLINED_FUNCTION_57_0();
      v20(v48);
      sub_227D49218();
      v49 = OUTLINED_FUNCTION_40_4();
      v28(v49);
      (v28)(v4, v5);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_34_7();
    v40(v28);
  }

  sub_227C70C78(v53, v6);
  OUTLINED_FUNCTION_33_8();
  v41 = swift_getEnumCaseMultiPayload();
  if (v41)
  {
    v42 = v52;
    if (v41 == 1)
    {
      sub_227C70CDC(v6);
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v44 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    v43(v6);
    v2 = 2;
    v44 = v54;
    v42 = v52;
  }

  sub_227C70C78(v44, v42);
  v45 = swift_getEnumCaseMultiPayload();
  if (v45)
  {
    if (v45 == 1)
    {
      sub_227C70CDC(v42);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    (*(v55 + 8))(v42, v56);
    v46 = 2;
  }

  LOBYTE(v2) = v2 < v46;
  sub_227B1DE58(v3, &qword_27D7E9A70, &qword_227D5F170);
  return v2 & 1;
}

uint64_t sub_227C70B60()
{
  v0 = type metadata accessor for AnySortableKey();
  v1 = OUTLINED_FUNCTION_62_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_57_0();
  sub_227C70C78(v7, v8);
  OUTLINED_FUNCTION_9_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70CDC(v6);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v11 = sub_227D492A8();
    OUTLINED_FUNCTION_62_0(v11);
    (*(v12 + 8))(v6);
    return 2;
  }
}

uint64_t type metadata accessor for AnySortableKey()
{
  result = qword_27D7FE0F0;
  if (!qword_27D7FE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227C70C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySortableKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C70CDC(uint64_t a1)
{
  v2 = type metadata accessor for AnySortableKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AnySortableKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = sub_227D4CF68();
  v9 = OUTLINED_FUNCTION_9(v8);
  v51[1] = v10;
  v51[2] = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_29(v13, v51[0]);
  v14 = sub_227D492A8();
  v15 = OUTLINED_FUNCTION_9(v14);
  v55 = v16;
  v56 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_42_5();
  v21 = OUTLINED_FUNCTION_62_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_7();
  MEMORY[0x28223BE20](v26);
  v28 = (v51 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A70, &qword_227D5F170);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_1();
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_12(v33, v34, v51[0]);
  v54 = a2;
  sub_227C70C78(a2, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70C78(v3, v5);
      v36 = *(v5 + 8);
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_41_7();
        v37 = OUTLINED_FUNCTION_28_9();

        v38 = OUTLINED_FUNCTION_17_1();
        v39(v38);
        LOBYTE(v2) = v37 == 0;
LABEL_23:
        sub_227C70CDC(v3);
        return v2 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_227C70CDC(v3);
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_227C70C78(v3, v28);
    OUTLINED_FUNCTION_177();
    if (!swift_getEnumCaseMultiPayload())
    {
      v47 = OUTLINED_FUNCTION_21_5();
      v20(v47);
      v48 = OUTLINED_FUNCTION_57_0();
      v20(v48);
      sub_227D49268();
      v49 = OUTLINED_FUNCTION_40_4();
      v28(v49);
      (v28)(v4, v5);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_34_7();
    v40(v28);
  }

  sub_227C70C78(v53, v6);
  OUTLINED_FUNCTION_33_8();
  v41 = swift_getEnumCaseMultiPayload();
  if (v41)
  {
    v42 = v52;
    if (v41 == 1)
    {
      sub_227C70CDC(v6);
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v44 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    v43(v6);
    v2 = 2;
    v44 = v54;
    v42 = v52;
  }

  sub_227C70C78(v44, v42);
  v45 = swift_getEnumCaseMultiPayload();
  if (v45)
  {
    if (v45 == 1)
    {
      sub_227C70CDC(v42);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    (*(v55 + 8))(v42, v56);
    v46 = 2;
  }

  LOBYTE(v2) = v2 == v46;
  sub_227B1DE58(v3, &qword_27D7E9A70, &qword_227D5F170);
  return v2 & 1;
}

uint64_t sub_227C7111C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_227C71204(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x676E69727473;
  }

  return 1701736302;
}

uint64_t sub_227C71250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C7111C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C71280()
{
  sub_227C73354();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C712B8()
{
  sub_227C73354();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C712F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227D4DA78();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227C71368()
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](0);
  return sub_227D4DB98();
}

uint64_t sub_227C713C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C712F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227C713FC()
{
  sub_227C73450();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C71434()
{
  sub_227C73450();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C71478@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_227C714A8()
{
  sub_227C733A8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C714E0()
{
  sub_227C733A8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C71518()
{
  sub_227C733FC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C71550()
{
  sub_227C733FC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void AnySortableKey.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v72 = v1;
  v70 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A78, &qword_227D5F178);
  v5 = OUTLINED_FUNCTION_9(v4);
  v66 = v6;
  v67 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_0();
  v62 = v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A80, &qword_227D5F180);
  OUTLINED_FUNCTION_9(v65);
  v63 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_0();
  v61 = v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A88, &qword_227D5F188);
  OUTLINED_FUNCTION_9(v64);
  v60 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = sub_227D492A8();
  v23 = OUTLINED_FUNCTION_9(v22);
  v68 = v24;
  v69 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  v30 = type metadata accessor for AnySortableKey();
  v31 = OUTLINED_FUNCTION_62_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v36 = (v35 - v34);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A90, &qword_227D5F190);
  OUTLINED_FUNCTION_9(v71);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v59 - v42;
  v44 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227C73354();
  sub_227D4DC08();
  sub_227C70C78(v70, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v36;
      v47 = v36[1];
      sub_227C733FC();
      v48 = v61;
      v49 = v71;
      sub_227D4D968();
      OUTLINED_FUNCTION_177();
      v50 = v65;
      sub_227D4D9C8();

      (*(v63 + 8))(v48, v50);
      (*(v38 + 8))(v43, v49);
    }

    else
    {
      sub_227C733A8();
      v56 = v71;
      sub_227D4D968();
      v57 = OUTLINED_FUNCTION_17_1();
      v58(v57);
      (*(v38 + 8))(v43, v56);
    }
  }

  else
  {
    v51 = v60;
    (*(v68 + 32))(v29, v36, v69);
    sub_227C73450();
    v52 = v71;
    sub_227D4D968();
    OUTLINED_FUNCTION_12_12();
    sub_227C735E0(v53, v54);
    v55 = v64;
    sub_227D4DA08();
    (*(v51 + 8))(v21, v55);
    (*(v68 + 8))(v29, v69);
    (*(v38 + 8))(v43, v52);
  }

  OUTLINED_FUNCTION_352();
}

void AnySortableKey.init(from:)()
{
  OUTLINED_FUNCTION_351();
  v101 = v0;
  v2 = v1;
  v96 = v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A98, &qword_227D5F198);
  OUTLINED_FUNCTION_9(v97);
  v92 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v94 = v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AA0, &qword_227D5F1A0);
  OUTLINED_FUNCTION_9(v89);
  v93 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v95 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AA8, &qword_227D5F1A8);
  v15 = OUTLINED_FUNCTION_9(v14);
  v90 = v16;
  v91 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v99 = v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AB0, &qword_227D5F1B0);
  OUTLINED_FUNCTION_9(v100);
  v98 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  v27 = type metadata accessor for AnySortableKey();
  v28 = OUTLINED_FUNCTION_62_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_54_0();
  v33 = (v31 - v32);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v84 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v84 - v38;
  v40 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_227C73354();
  v41 = v101;
  sub_227D4DBF8();
  if (v41)
  {
    goto LABEL_9;
  }

  v85 = v33;
  v86 = v37;
  v87 = v39;
  v88 = v27;
  v101 = v2;
  v42 = v100;
  v43 = sub_227D4D948();
  v47 = sub_227BBA228(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_8:
    v55 = v88;
    v56 = sub_227D4D6B8();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80F8, &qword_227D57240) + 48);
    *v58 = v55;
    sub_227D4D898();
    sub_227D4D6A8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_8_13();
    v61(v60);
    v2 = v101;
LABEL_9:
    v62 = v2;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v62);
    OUTLINED_FUNCTION_352();
    return;
  }

  if (v45 < (v46 >> 1))
  {
    v48 = *(v44 + v45);
    sub_227BBA270(v45 + 1, v46 >> 1, v47, v44, v45, v46);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v97;
    if (v50 == v52 >> 1)
    {
      if (v48)
      {
        if (v48 != 1)
        {
          sub_227C733A8();
          v68 = v94;
          OUTLINED_FUNCTION_22_9();
          sub_227D4D888();
          v69 = v96;
          swift_unknownObjectRelease();
          (*(v92 + 8))(v68, v53);
          v70 = OUTLINED_FUNCTION_8_13();
          v71(v70);
          v72 = v87;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_227C734A4(v72, v69);
          v62 = v101;
          goto LABEL_10;
        }

        sub_227C733FC();
        OUTLINED_FUNCTION_22_9();
        sub_227D4D888();
        v54 = v89;
        v73 = sub_227D4D8F8();
        v75 = v74;
        swift_unknownObjectRelease();
        v76 = OUTLINED_FUNCTION_17_1();
        v77(v76, v54);
        v78 = OUTLINED_FUNCTION_8_13();
        v79(v78);
        v80 = v85;
        *v85 = v73;
        v80[1] = v75;
        swift_storeEnumTagMultiPayload();
        v81 = v80;
      }

      else
      {
        sub_227C73450();
        OUTLINED_FUNCTION_22_9();
        sub_227D4D888();
        sub_227D492A8();
        OUTLINED_FUNCTION_12_12();
        sub_227C735E0(v63, v64);
        v65 = v86;
        v66 = v91;
        sub_227D4D938();
        v67 = v98;
        swift_unknownObjectRelease();
        v82 = OUTLINED_FUNCTION_17_1();
        v83(v82, v66);
        (*(v67 + 8))(v26, v42);
        swift_storeEnumTagMultiPayload();
        v81 = v65;
      }

      v72 = v87;
      sub_227C734A4(v81, v87);
      v69 = v96;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static AnySortableKey.create(lastPlayed:name:purchaseDate:compared:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v62 = a4;
  v63 = a3;
  v61 = a2;
  v57 = a1;
  v65 = a6;
  v9 = sub_227D4CAB8();
  v10 = OUTLINED_FUNCTION_9(v9);
  v59 = v11;
  v60 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_29(v14, v56);
  v64 = type metadata accessor for AnySortableKey();
  v15 = OUTLINED_FUNCTION_62_0(v64);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_38_10();
  v25 = sub_227D492A8();
  v26 = OUTLINED_FUNCTION_9(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v33 = v32 - v31;
  v34 = sub_227D49678();
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v42 = v41 - v40;
  (*(v37 + 16))(v41 - v40, a5, v34);
  v43 = (*(v37 + 88))(v42, v34);
  if (v43 == *MEMORY[0x277D0CAD0])
  {
    v44 = v63;
    if (v63)
    {
      v45 = v65;
      *v65 = v61;
      v45[1] = v44;
      swift_storeEnumTagMultiPayload();
      return sub_227D4CE58();
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v43 == *MEMORY[0x277D0CAC0])
  {
    sub_227C73508(v62, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
    {
      sub_227B1DE58(v6, &qword_27D7E6D08, &qword_227D59460);
    }

    else
    {
      v50 = *(v28 + 32);
      v50(v33, v6, v25);
      v51 = OUTLINED_FUNCTION_9_2();
      (v50)(v51);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v43 == *MEMORY[0x277D0CAC8])
  {
    sub_227C72618(v57, v20);
    sub_227C72618(v62, v7);
    v47 = OUTLINED_FUNCTION_33_8();
    if (static AnySortableKey.< infix(_:_:)(v47, v48))
    {
      sub_227C70CDC(v7);
      v49 = v20;
    }

    else
    {
      sub_227C70CDC(v20);
      v49 = v7;
    }

    return sub_227C734A4(v49, v65);
  }

  else
  {
    v52 = v58;
    sub_227D4AA58();
    v53 = sub_227D4CA98();
    v54 = sub_227D4D438();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_227B0D000, v53, v54, "Handling unknown sort descriptor for game library", v55, 2u);
      MEMORY[0x22AAA7130](v55, -1, -1);
    }

    (*(v59 + 8))(v52, v60);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 8))(v42, v34);
  }
}

uint64_t sub_227C72618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_227D492A8();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  sub_227C73508(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_227B1DE58(v9, &qword_27D7E6D08, &qword_227D59460);
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v18, v9, v10);
    v19(a2, v18, v10);
  }

  type metadata accessor for AnySortableKey();
  OUTLINED_FUNCTION_10_6();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227C727CC()
{
  type metadata accessor for AnySortableKey();
  OUTLINED_FUNCTION_10_6();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227C7280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  sub_227C734A4(a1, a4);
  v8 = type metadata accessor for AnySortableKeyValuePair();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 44);

  return v9(v10, a2, a3);
}

uint64_t sub_227C728BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B74726F73 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_1();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227C72968(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79654B74726F73;
  }
}

uint64_t sub_227C7299C()
{
  sub_227D4DB58();
  sub_227B1F208(v2, *v0);
  return sub_227D4DB98();
}

uint64_t sub_227C729E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C728BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C72A14()
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C72A54()
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void AnySortableKeyValuePair.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v5 = v1[3];
  v22 = v1[4];
  v23 = v1[2];
  type metadata accessor for AnySortableKeyValuePair.CodingKeys();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v6 = sub_227D4DA18();
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_227D4DC08();
  type metadata accessor for AnySortableKey();
  OUTLINED_FUNCTION_5_18();
  sub_227C735E0(v16, v17);
  sub_227D4DA08();
  if (!v0)
  {
    v18 = *(v2 + 11);
    sub_227D4DA08();
  }

  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_33_8();
  v21(v20);
  OUTLINED_FUNCTION_352();
}

void AnySortableKeyValuePair.init(from:)()
{
  OUTLINED_FUNCTION_351();
  v51 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  v41 = *(v4 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_29(v10, v38);
  v47 = type metadata accessor for AnySortableKey();
  v11 = OUTLINED_FUNCTION_62_0(v47);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v49 = v15 - v14;
  type metadata accessor for AnySortableKeyValuePair.CodingKeys();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v50 = sub_227D4D958();
  OUTLINED_FUNCTION_9(v50);
  v43 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_38_10();
  v45 = v5;
  v46 = v3;
  v20 = type metadata accessor for AnySortableKeyValuePair();
  OUTLINED_FUNCTION_9(v20);
  v40 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v38 - v25;
  v27 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v48 = v0;
  v28 = v51;
  sub_227D4DBF8();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v51 = v7;
    v39 = v20;
    v29 = v44;
    v30 = v45;
    OUTLINED_FUNCTION_5_18();
    sub_227C735E0(v31, v32);
    v33 = v49;
    sub_227D4D938();
    sub_227C734A4(v33, v26);
    sub_227D4D938();
    v34 = OUTLINED_FUNCTION_24_9();
    v35(v34);
    v36 = v39;
    (*(v41 + 32))(&v26[*(v39 + 44)], v29, v30);
    v37 = v40;
    (*(v40 + 16))(v42, v26, v36);
    __swift_destroy_boxed_opaque_existential_0(v51);
    (*(v37 + 8))(v26, v36);
  }

  OUTLINED_FUNCTION_352();
}

void sub_227C72FBC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  AnySortableKeyValuePair.init(from:)();
}

GameServicesCore::GameLibraryDataFetchingRequirements sub_227C73040@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = GameLibraryDataFetchingRequirements.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227C73080@<X0>(uint64_t *a1@<X8>)
{
  result = GameLibraryDataFetchingRequirements.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_227C730A8()
{
  OUTLINED_FUNCTION_351();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_227D49678();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = 0;
  if ((v3[1] & 1) == 0)
  {
    v17 = *v3;
  }

  if ((sub_227D49BF8() & 1) != 0 || (sub_227D49C28()) && (v17 & 8) == 0)
  {
    v17 |= 8uLL;
  }

  (*(v11 + 16))(v16, v1, v8);
  v18 = (*(v11 + 88))(v16, v8);
  if (v18 == *MEMORY[0x277D0CAD0] || v18 == *MEMORY[0x277D0CAC0])
  {
    (*(v11 + 8))(v1, v8);
    v19 = sub_227D49C48();
    OUTLINED_FUNCTION_62_0(v19);
    (*(v20 + 8))(v5);
  }

  else
  {
    if (v18 != *MEMORY[0x277D0CAC8])
    {
      sub_227D49E08();
      sub_227C735E0(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
      OUTLINED_FUNCTION_10_6();
      swift_allocError();
      sub_227D49DC8();
      swift_willThrow();
      v23 = *(v11 + 8);
      v23(v1, v8);
      v24 = sub_227D49C48();
      OUTLINED_FUNCTION_62_0(v24);
      (*(v25 + 8))(v5);
      v23(v16, v8);
      goto LABEL_11;
    }

    (*(v11 + 8))(v1, v8);
    v21 = sub_227D49C48();
    OUTLINED_FUNCTION_62_0(v21);
    (*(v22 + 8))(v5);
    v17 |= 2uLL;
  }

  *v7 = v17;
LABEL_11:
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227C73354()
{
  result = qword_27D7FDB50;
  if (!qword_27D7FDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB50);
  }

  return result;
}

unint64_t sub_227C733A8()
{
  result = qword_27D7FDB58;
  if (!qword_27D7FDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB58);
  }

  return result;
}

unint64_t sub_227C733FC()
{
  result = qword_27D7FDB60;
  if (!qword_27D7FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB60);
  }

  return result;
}

unint64_t sub_227C73450()
{
  result = qword_27D7FDB68[0];
  if (!qword_27D7FDB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FDB68);
  }

  return result;
}

uint64_t sub_227C734A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySortableKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C73508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C735E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227C7362C()
{
  result = qword_27D7E9AD0;
  if (!qword_27D7E9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AD0);
  }

  return result;
}

unint64_t sub_227C73688()
{
  result = qword_27D7E9AD8;
  if (!qword_27D7E9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AD8);
  }

  return result;
}

unint64_t sub_227C736E0()
{
  result = qword_27D7E9AE0;
  if (!qword_27D7E9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AE0);
  }

  return result;
}

void sub_227C7373C()
{
  sub_227C737B0();
  if (v0 <= 0x3F)
  {
    sub_227C737F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_227C737B0()
{
  if (!qword_27D7E9AE8)
  {
    v0 = sub_227D492A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7E9AE8);
    }
  }
}

uint64_t sub_227C737F8()
{
  result = qword_27D7E9AF0;
  if (!qword_27D7E9AF0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7E9AF0);
  }

  return result;
}

uint64_t sub_227C73820(uint64_t a1)
{
  result = type metadata accessor for AnySortableKey();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227C738A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_227D492A8();
  OUTLINED_FUNCTION_5(v6);
  v8 = 16;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  if (*(v7 + 64) > 0x10uLL)
  {
    v8 = *(v7 + 64);
  }

  v11 = *(v10 + 84);
  if (v11 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v8 + v13 + 1;
  if (a2 <= v12)
  {
    goto LABEL_27;
  }

  v16 = (v15 & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_27:
      if (v11 > 0xFD)
      {

        return __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v11, v9);
      }

      else
      {
        v24 = *(a1 + v8);
        if (v24 >= 3)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_227C73A98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_227D492A8();
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v12 + 80);
  v16 = v10 + v15 + 1;
  v17 = (v16 & ~v15) + *(v12 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v24))
    {
      v19 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v13 > 0xFD)
          {

            __swift_storeEnumTagSinglePayload(&a1[v16] & ~v15, a2, v13, v11);
          }

          else if (a2 > 0xFD)
          {
            v29 = (v10 + 1);
            if (v29 <= 3)
            {
              v30 = ~(-1 << (8 * (v10 + 1)));
            }

            else
            {
              v30 = -1;
            }

            if (v10 != -1)
            {
              v31 = v30 & (a2 - 254);
              if (v29 <= 3)
              {
                v32 = v10 + 1;
              }

              else
              {
                v32 = 4;
              }

              bzero(a1, v29);
              switch(v32)
              {
                case 2:
                  *a1 = v31;
                  break;
                case 3:
                  *a1 = v31;
                  a1[2] = BYTE2(v31);
                  break;
                case 4:
                  *a1 = v31;
                  break;
                default:
                  *a1 = v31;
                  break;
              }
            }
          }

          else
          {
            a1[v10] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v23 = (v20 >> v18) + 1;
      if (v17)
      {
        v26 = v20 & ~(-1 << v18);
        v27 = OUTLINED_FUNCTION_9_2();
        bzero(v27, v28);
        if (v17 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v17 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_9_2();
      bzero(v21, v22);
      *a1 = v20;
      v23 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v23;
        break;
      case 2:
        *&a1[v17] = v23;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v17] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for GameLibraryDataFetchingRequirements(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_161(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_49_0();
  }
}

uint64_t dispatch thunk of GameSubLibraryServiceProtocol.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  v6 = (OUTLINED_FUNCTION_13_14() + 8);
  v7 = *v6 + **v6;
  v1 = (*v6)[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_19(v2);

  return v4(v3);
}

uint64_t sub_227C73ED0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of GameSubLibraryServiceProtocol.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  v6 = (OUTLINED_FUNCTION_13_14() + 16);
  v7 = *v6 + **v6;
  v1 = (*v6)[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_19(v2);

  return v4(v3);
}

_BYTE *sub_227C740E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnySortableKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s16GameServicesCore14AnySortableKeyO14DateCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_49_0();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_135(a1);
}

_BYTE *_s16GameServicesCore14AnySortableKeyO14DateCodingKeysOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_227C743A0()
{
  result = qword_27D7FE400[0];
  if (!qword_27D7FE400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE400);
  }

  return result;
}

unint64_t sub_227C743F8()
{
  result = qword_27D7FE610[0];
  if (!qword_27D7FE610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE610);
  }

  return result;
}

unint64_t sub_227C74450()
{
  result = qword_27D7FE820[0];
  if (!qword_27D7FE820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE820);
  }

  return result;
}

unint64_t sub_227C744FC()
{
  result = qword_27D7FEBB0;
  if (!qword_27D7FEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEBB0);
  }

  return result;
}

unint64_t sub_227C74554()
{
  result = qword_27D7FEBB8[0];
  if (!qword_27D7FEBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FEBB8);
  }

  return result;
}

unint64_t sub_227C745AC()
{
  result = qword_27D7FEC40;
  if (!qword_27D7FEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEC40);
  }

  return result;
}

unint64_t sub_227C74604()
{
  result = qword_27D7FEC48[0];
  if (!qword_27D7FEC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FEC48);
  }

  return result;
}

unint64_t sub_227C7465C()
{
  result = qword_27D7FECD0;
  if (!qword_27D7FECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FECD0);
  }

  return result;
}

unint64_t sub_227C746B4()
{
  result = qword_27D7FECD8[0];
  if (!qword_27D7FECD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FECD8);
  }

  return result;
}

unint64_t sub_227C7470C()
{
  result = qword_27D7FED60;
  if (!qword_27D7FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FED60);
  }

  return result;
}

unint64_t sub_227C74764()
{
  result = qword_27D7FED68[0];
  if (!qword_27D7FED68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FED68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_7()
{
  v4 = *v1;
  v6 = *v0;
  v5 = v0[1];
  v7 = *(v2 - 144);

  return MEMORY[0x28211E840]();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return type metadata accessor for AnySortableKey();
}

uint64_t sub_227C74874(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v4 = sub_227D49188();
  v3[73] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v3[74] = v5;
  v7 = *(v6 + 64);
  v3[75] = OUTLINED_FUNCTION_379();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v8 = sub_227D49AB8();
  v3[79] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v3[80] = v9;
  v11 = *(v10 + 64);
  v3[81] = OUTLINED_FUNCTION_379();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v12 = sub_227D49F28();
  v3[84] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v3[85] = v13;
  v15 = *(v14 + 64) + 15;
  v3[86] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  v3[87] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v3[88] = v17;
  v19 = *(v18 + 64) + 15;
  v3[89] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  v3[90] = OUTLINED_FUNCTION_379();
  v3[91] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v23);
  v25 = *(v24 + 64);
  v3[92] = OUTLINED_FUNCTION_379();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  v3[96] = OUTLINED_FUNCTION_379();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v29 = sub_227D49918();
  v3[99] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v3[100] = v30;
  v32 = *(v31 + 64);
  v3[101] = OUTLINED_FUNCTION_379();
  v3[102] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3[103] = v33;
  OUTLINED_FUNCTION_10_0(v33);
  v3[104] = v34;
  v36 = *(v35 + 64);
  v3[105] = OUTLINED_FUNCTION_379();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v37);
  v39 = *(v38 + 64);
  v3[108] = OUTLINED_FUNCTION_379();
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AF8, &qword_227D5FA48);
  OUTLINED_FUNCTION_5(v40);
  v42 = *(v41 + 64);
  v3[112] = OUTLINED_FUNCTION_379();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C74C90, v2, 0);
}

uint64_t sub_227C74C90()
{
  v1 = v0[103];
  v2 = v0[72];
  v3 = v0[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B00, &qword_227D5FA50);
  sub_227BDE464(&qword_27D7E8578);
  v4 = sub_227D4CE28();
  (*(*v2 + 400))(v4);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = *(v6 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[115] = v9;
  *v9 = v0;
  v9[1] = sub_227C74E5C;

  return (v11)(v0 + 47, v5, v6);
}

uint64_t sub_227C74E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  *(*v1 + 928) = v0;

  v5 = *(v2 + 576);
  if (v0)
  {
    v6 = sub_227C76CFC;
  }

  else
  {
    v6 = sub_227C74F88;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_227C74F88()
{
  v1 = v0[70];
  v2 = v1[8];
  v338 = *(v2 + 16);
  v3 = 0;
  if (!v338)
  {
    v432 = 0;
LABEL_112:
    v303 = v0[114];
    v304 = v0[113];
    v305 = v0[112];
    v306 = v0[111];
    v307 = v0[110];
    v308 = v0[109];
    v309 = v0[108];
    v310 = v0[107];
    v377 = v0[106];
    v379 = v0[105];
    v381 = v0[102];
    v383 = v0[101];
    v387 = v0[98];
    v391 = v0[97];
    v395 = v0[96];
    v399 = v0[95];
    v403 = v0[94];
    v407 = v0[93];
    v410 = v0[92];
    v413 = v0[91];
    v416 = v0[90];
    v420 = v0[89];
    v424 = v0[86];
    v427 = v0[83];
    v430 = v0[82];
    OUTLINED_FUNCTION_3_21();
    __swift_destroy_boxed_opaque_existential_0(v0 + 47);
    sub_227B1AC90(v3);
    sub_227B1AC90(v432);

    v311 = v0[1];
LABEL_118:

    v311();
    return;
  }

  v432 = 0;
  v4 = 0;
  v347 = v0 + 62;
  v426 = v0 + 66;
  v5 = v0[100];
  v6 = v0[74];
  v7 = v2 + 32;
  v349 = (v6 + 16);
  v341 = (v5 + 104);
  v8 = v0[104];
  v354 = (v8 + 16);
  v9 = v0[88];
  v371 = (v5 + 16);
  v370 = (v0[85] + 104);
  v10 = v0[80];
  v362 = (v10 + 32);
  v346 = (v8 + 8);
  v350 = (v6 + 32);
  v330 = v6;
  v351 = v8;
  v352 = (v6 + 8);
  v358 = (v10 + 16);
  v329 = *MEMORY[0x277D0CB48];
  v355 = v10;
  v356 = (v10 + 8);
  v337 = (v5 + 8);
  v339 = *MEMORY[0x277D0CB38];
  v331 = *MEMORY[0x277D0CB40];
  v369 = *MEMORY[0x277D0CEE8];
  v332 = v0[70];
  v333 = v0 + 97;
  v348 = v0 + 96;
  v11 = v1[9];
  v12 = v1[11];
  v13 = v1[12];
  v14 = v1[13];
  v342 = v14;
  v343 = v0[72];
  v15 = v0[116];
  v334 = v12;
  v335 = v11;
  v340 = v13;
  v336 = v7;
  while (1)
  {
    memcpy(v0 + 2, (v7 + 120 * v4), 0x78uLL);
    v16 = v0[16];
    v440 = v0[15];
    v382 = v0[13];
    v415 = v0[14];
    sub_227D4CE58();
    sub_227BA823C((v0 + 2), (v0 + 17));
    v376 = v16;
    sub_227D4CE58();
    v17 = sub_227BA8E60();
    v438 = v3;
    if (*(v11 + 16) && (v19 = sub_227B2664C(v17, v18), (v20 & 1) != 0))
    {
      v21 = *(*(v11 + 56) + 8 * v19);
      sub_227D4CE58();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = sub_227BA8E60();
    if (!*(v12 + 16))
    {
      v36 = v0[114];
LABEL_11:
      type metadata accessor for GameActivityImage();
      v32 = OUTLINED_FUNCTION_1_27();
      goto LABEL_12;
    }

    v24 = sub_227B2664C(v22, v23);
    v25 = v0[114];
    if ((v26 & 1) == 0)
    {
      goto LABEL_11;
    }

    v27 = v24;
    v28 = *(v12 + 56);
    v29 = type metadata accessor for GameActivityImage();
    OUTLINED_FUNCTION_62_0(v29);
    v31 = v28 + *(v30 + 72) * v27;
    v13 = v340;
    sub_227B9A198(v31, v25);
    OUTLINED_FUNCTION_99();
    v35 = v29;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);

    v37 = sub_227BA8E60();
    if (*(v13 + 16) && (v39 = sub_227B2664C(v37, v38), (v40 & 1) != 0))
    {
      (*(v330 + 16))(v0[111], *(v13 + 56) + *(v330 + 72) * v39, v0[73]);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0[111], v41, 1, v0[73]);

    if (*(v342 + 16))
    {
      v42 = sub_227C76F0C(0);
      if (v43)
      {
        v44 = *(*(v342 + 56) + 8 * v42);
        sub_227D4CE58();
        v45 = sub_227BA8E60();
        if (*(v44 + 16))
        {
          v47 = sub_227B2664C(v45, v46);
          if (v48)
          {
            v378 = *(*(v44 + 56) + 8 * v47);
            sub_227D4CE58();
          }
        }
      }

      if (*(v342 + 16))
      {
        v49 = sub_227C76F0C(7);
        if (v50)
        {
          v51 = *(*(v342 + 56) + 8 * v49);
          sub_227D4CE58();
          v52 = sub_227BA8E60();
          if (*(v51 + 16))
          {
            v54 = sub_227B2664C(v52, v53);
            if (v55)
            {
              v375 = *(*(v51 + 56) + 8 * v54);
              sub_227D4CE58();
            }
          }
        }
      }
    }

    v56 = v0[107];
    sub_227BA8E60();
    sub_227D4A668();
    if (v15)
    {
      v313 = v0[114];
      v314 = v0[111];

      sub_227BA8274((v0 + 2));

      sub_227B1DE58(v314, &qword_27D7E6CD8, &qword_227D5C1C0);
      sub_227B1DE58(v313, &qword_27D7E9AF8, &qword_227D5FA48);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      sub_227B1AC90(v438);
      sub_227B1AC90(v432);
      v315 = v0[114];
      v316 = v0[113];
      v317 = v0[112];
      v318 = v0[111];
      v319 = v0[110];
      v320 = v0[109];
      v321 = v0[108];
      v322 = v0[107];
      v323 = v0[106];
      v324 = v0[105];
      v384 = v0[102];
      v388 = v0[101];
      v392 = v0[98];
      v396 = v0[97];
      v400 = v0[96];
      v404 = v0[95];
      v408 = v0[94];
      v411 = v0[93];
      v414 = v0[92];
      v417 = v0[91];
      v421 = v0[90];
      v425 = v0[89];
      v428 = v0[86];
      v431 = v0[83];
      v433 = v0[82];
      OUTLINED_FUNCTION_3_21();

      v311 = v0[1];
      goto LABEL_118;
    }

    v57 = v0[8];
    if (!v57)
    {
      goto LABEL_40;
    }

    v58 = v0[7];
    v59 = v58 == 0x6E6F7268636E7973 && v57 == 0xEB0000000073756FLL;
    v60 = v339;
    if (!v59)
    {
      OUTLINED_FUNCTION_58();
      v61 = sub_227D4DA78();
      v60 = v339;
      if ((v61 & 1) == 0)
      {
        v62 = v58 == 0x6F7268636E797361 && v57 == 0xEC00000073756F6ELL;
        v60 = v329;
        if (!v62)
        {
          OUTLINED_FUNCTION_58();
          v63 = sub_227D4DA78();
          v60 = v329;
          if ((v63 & 1) == 0)
          {
LABEL_40:
            v60 = v331;
          }
        }
      }
    }

    v64 = v0[113];
    v65 = v0[107];
    v66 = v0[106];
    v67 = v0[103];
    v68 = v0[98];
    v69 = v0[87];
    (*v341)(v0[102], v60, v0[99]);
    type metadata accessor for GameActivityImage();
    v70 = OUTLINED_FUNCTION_1_27();
    v380 = v71;
    __swift_storeEnumTagSinglePayload(v70, v72, v73, v71);
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v69);
    v353 = *v354;
    (*v354)(v66, v65, v67);
    v74 = sub_227CB7D30();
    v75 = v74[1];
    v363 = *v74;
    v374 = v21;
    v344 = v4;
    if (v376)
    {
      sub_227D4CE58();
    }

    v76 = v0[111];
    v77 = v0[110];
    v78 = v0[98];
    v79 = v0[87];
    v80 = v0[11];
    v435 = v0[10];
    v81 = v0[9];
    sub_227B11EE8((v0 + 47), (v0 + 52));
    memcpy(v0 + 32, v0 + 2, 0x78uLL);
    v82 = sub_227BA9084();
    sub_227D4CE58();
    v429 = v80;
    sub_227D4CE58();
    v83 = sub_227BA2760(&unk_283B39988, v82);
    v418 = v84;
    v422 = v83;
    sub_227C773A8(v76, v77);
    v434 = v81;
    v385 = v75;
    if (__swift_getEnumTagSinglePayload(v78, 1, v79))
    {
      v85 = v0[91];
      sub_227D4AA38();
      v86 = OUTLINED_FUNCTION_1_27();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
      sub_227D4CE58();
    }

    else
    {
      v90 = v0[98];
      v91 = v0[91];
      v92 = v0[89];
      v93 = v0[87];
      v94 = OUTLINED_FUNCTION_375();
      v95(v94);
      sub_227D4CE58();
      sub_227D4A798();
      v96 = OUTLINED_FUNCTION_375();
      v97(v96, v93);
      sub_227D4AA38();
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    }

    v102 = v0[102];
    v103 = v0[101];
    v104 = v0[99];
    v397 = v0[95];
    v401 = v0[110];
    v393 = v0[91];
    v105 = v0[86];
    v106 = v0[84];
    v405 = v0[79];
    v409 = v0[72];
    v412 = v0[106];
    v107 = *(v0 + 96);
    v108 = v0[5];
    v109 = *(v0 + 48);
    v110 = v0[3];
    v111 = *(v0 + 32);
    v112 = *(v0 + 16);
    v367 = *v371;
    (*v371)();
    v366 = *v370;
    (*v370)(v105, v369, v106);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v372 = v109;
    LOBYTE(v328) = v109;
    v373 = v108;
    v327 = v108;
    v389 = v111;
    LOBYTE(v326) = v111;
    v368 = v107;
    LOBYTE(v325) = v107;
    sub_227D49928();
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v405);
    v365 = *(*v409 + 408);
    v116 = v365(v347);
    v118 = v117;
    sub_227B1AC90(v438);
    v119 = *v118;
    swift_isUniquelyReferenced_nonNull_native();
    v443 = *v118;
    *v118 = 0x8000000000000000;
    sub_227BDB31C(v412);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v122, v123))
    {
      goto LABEL_126;
    }

    v124 = v120;
    v125 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B08, &qword_227D5FA58);
    if (sub_227D4D7C8())
    {
      v126 = v442;
      v127 = sub_227BDB31C(v442[106]);
      if ((v125 & 1) != (v128 & 1))
      {
LABEL_113:
        v312 = v126[103];
LABEL_114:

        sub_227D4DAE8();
        return;
      }

      v124 = v127;
    }

    else
    {
      v126 = v442;
    }

    v129 = *v118;
    *v118 = v443;

    v130 = *v118;
    if ((v125 & 1) == 0)
    {
      v131 = v126[105];
      v353(v131, v126[106], v126[103]);
      sub_227C77028(v124, v131, MEMORY[0x277D84F98], v130);
    }

    v132 = v126[95];
    v133 = v126[79];
    v134 = (v130[7] + 8 * v124);
    if (__swift_getEnumTagSinglePayload(v132, 1, v133) == 1)
    {
      v135 = v126[94];
      sub_227B1DE58(v132, &qword_27D7E6AD8, &unk_227D4ED80);
      sub_227C770EC(v363, v385, v135);

      sub_227B1DE58(v135, &qword_27D7E6AD8, &unk_227D4ED80);
    }

    else
    {
      v136 = v126[83];
      (*v362)(v136, v132, v133);
      v137 = *v134;
      swift_isUniquelyReferenced_nonNull_native();
      v444 = *v134;
      sub_227C77234(v136, v363, v385);

      *v134 = v444;
    }

    v345 = *v346;
    (*v346)(v126[106], v126[103]);
    v116(v347, 0, v138, v139, v140, v141, v142, v143, v429, v422, v418, v434, v401, v393, v325, v110, v326, v327, v328);
    v364 = *(v21 + 16);
    if (v364)
    {
      break;
    }

LABEL_108:
    v292 = v126[114];
    v293 = v126[113];
    v294 = v126[111];
    v295 = v126[107];
    v296 = v126[103];
    v297 = v126[102];
    v298 = v126[99];
    v299 = v442[98];

    sub_227BA8274((v442 + 2));

    (*v337)(v297, v298);
    v345(v295, v296);
    sub_227B1DE58(v294, &qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227B1DE58(v292, &qword_27D7E9AF8, &qword_227D5FA48);
    v300 = v299;
    v4 = v344 + 1;
    v0 = v442;
    sub_227B1DE58(v300, &qword_27D7E6800, &qword_227D64440);
    v301 = OUTLINED_FUNCTION_57_0();
    sub_227B1DE58(v301, v302, &qword_227D5FA48);
    v15 = 0;
    v3 = sub_227C775A4;
    v11 = v335;
    v7 = v336;
    v12 = v334;
    v13 = v340;
    if (v344 + 1 == v338)
    {
      goto LABEL_112;
    }
  }

  v144 = 0;
  v145 = *(v332 + 80);
  v361 = v389 ^ 1 | v372;
  v146 = v373;
  if (!v389)
  {
    v146 = v110;
  }

  v360 = v146;
  v359 = v389 & v372;
  v147 = (v21 + 48);
  v357 = *(v332 + 80);
  while (v144 < *(v21 + 16))
  {
    v386 = v147;
    v390 = v144;
    v148 = *(v147 - 1);
    v436 = *v147;
    v149 = v147[1];
    v419 = v147[4];
    v423 = v147[2];
    v150 = v147[5];
    v439 = v150;
    v441 = v147[3];
    if (!*(v145 + 16))
    {
      sub_227D4CE58();
      sub_227D4CE58();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
LABEL_66:
      sub_227C77418(v126[114], v126[113]);
      goto LABEL_69;
    }

    v151 = *(v147 - 2);
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v152 = sub_227B2664C(v151, v148);
    v154 = v153;

    if ((v154 & 1) == 0)
    {
      goto LABEL_66;
    }

    v155 = *(*(v145 + 56) + 8 * v152);
    if (*(v155 + 16))
    {
      sub_227B9A198(v155 + ((*(*(v380 - 8) + 80) + 32) & ~*(*(v380 - 8) + 80)), v126[112]);
      v156 = 0;
    }

    else
    {
      v156 = 1;
    }

    v157 = v126[113];
    __swift_storeEnumTagSinglePayload(v126[112], v156, 1, v380);
    v158 = OUTLINED_FUNCTION_58();
    sub_227C77488(v158, v159, &qword_27D7E9AF8, &qword_227D5FA48);
LABEL_69:
    v160 = v126[113];
    v437 = v149;
    if (__swift_getEnumTagSinglePayload(v160, 1, v380))
    {
      goto LABEL_76;
    }

    v161 = v126[78];
    v162 = v126[77];
    v163 = v126[73];
    (*v349)(v162, v160 + *(v380 + 20), v163);
    v164 = *v350;
    (*v350)(v161, v162, v163);
    v165 = sub_227D49158();
    if (v166)
    {
    }

    else
    {
      v167 = v126[109];
      v168 = v126[78];
      v169 = v126[75];
      v170 = v126[73];
      v171 = v126[72];
      (*(*v171 + 224))(v165);
      (*(*v171 + 728))(v169, v168);
      v172 = *v352;
      (*v352)(v169, v170);
      if (__swift_getEnumTagSinglePayload(v167, 1, v170) != 1)
      {
        v289 = v126[97];
        v164(v126[76], v126[109], v126[73]);
        sub_227D490C8();
        sub_227D4A768();
        v290 = v126[78];
        v172(v126[76], v126[73]);
        v291 = OUTLINED_FUNCTION_57_0();
        (v172)(v291);
        v175 = v333;
        goto LABEL_75;
      }

      sub_227B1DE58(v126[109], &qword_27D7E6CD8, &qword_227D5C1C0);
    }

    v173 = v126[96];
    v174 = v126[78];
    sub_227D490C8();
    sub_227D4A768();
    (*v352)(v126[78], v126[73]);
    v175 = v348;
LABEL_75:
    v176 = *v175;
    v177 = v126[98];
    v178 = v126[87];
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
    v183 = OUTLINED_FUNCTION_57_0();
    sub_227C77488(v183, v184, &qword_27D7E6800, &qword_227D64440);
LABEL_76:
    if (v376)
    {
      sub_227D4CE58();
    }

    v185 = v126[111];
    v186 = v126[108];
    v187 = v126[98];
    v188 = v126[87];
    sub_227B11EE8((v126 + 47), (v126 + 57));
    v189 = OUTLINED_FUNCTION_57_0();
    sub_227C773A8(v189, v190);
    if (__swift_getEnumTagSinglePayload(v187, 1, v188))
    {
      v191 = v126[90];
      sub_227D4AA38();
      v192 = OUTLINED_FUNCTION_1_27();
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
      sub_227D4CE58();
    }

    else
    {
      v196 = v126[98];
      v197 = v126[90];
      v198 = v126[89];
      v199 = v126[87];
      v200 = OUTLINED_FUNCTION_375();
      v201(v200);
      sub_227D4CE58();
      sub_227D4A798();
      v202 = OUTLINED_FUNCTION_375();
      v203(v202, v199);
      sub_227D4AA38();
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
    }

    v208 = v360;
    v209 = v359;
    if ((v361 & 1) == 0)
    {
      v208 = sub_227D49988();
      v209 = 0;
    }

    v210 = v126[107];
    v211 = v126[102];
    v212 = v126[101];
    v213 = v126[99];
    v214 = v126[93];
    v394 = v126[90];
    v398 = v126[108];
    v215 = v126[86];
    v216 = v442[84];
    v217 = v442[82];
    v218 = v442[79];
    v402 = v442[72];
    v406 = v210;
    (v367)(v212, v211, v213);
    v219 = v216;
    v126 = v442;
    v366(v215, v369, v219);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    LOBYTE(v328) = v372;
    LOBYTE(v326) = v209;
    LOBYTE(v325) = v368;
    sub_227D49928();
    (*v358)(v214, v217, v218);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v218);
    v223 = v365(v426);
    v225 = v224;
    sub_227B1AC90(v432);
    v226 = *v225;
    swift_isUniquelyReferenced_nonNull_native();
    v445 = *v225;
    *v225 = 0x8000000000000000;
    sub_227BDB31C(v406);
    v228 = v227;
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v230, v231))
    {
      goto LABEL_122;
    }

    v232 = v229;
    if (sub_227D4D7C8())
    {
      v233 = sub_227BDB31C(v442[107]);
      if ((v228 & 1) != (v234 & 1))
      {
        goto LABEL_113;
      }

      v232 = v233;
    }

    v235 = *v225;
    *v225 = v445;

    v236 = *v225;
    if ((v228 & 1) == 0)
    {
      v237 = v442[107];
      v238 = v442[103];
      v236[(v232 >> 6) + 8] |= 1 << v232;
      v353(v236[6] + *(v351 + 72) * v232, v237, v238);
      *(v236[7] + 8 * v232) = MEMORY[0x277D84F98];
      v239 = v236[2];
      v240 = __OFADD__(v239, 1);
      v241 = v239 + 1;
      if (v240)
      {
        goto LABEL_123;
      }

      v236[2] = v241;
    }

    v242 = v442[93];
    v243 = v236[7];
    if (__swift_getEnumTagSinglePayload(v242, 1, v442[79]) == 1)
    {
      sub_227B1DE58(v242, &qword_27D7E6AD8, &unk_227D4ED80);
      v244 = *(v243 + 8 * v232);
      v245 = sub_227B2664C(v436, v437);
      if (v246)
      {
        v247 = v245;
        v248 = v442;
        v249 = v442[92];
        v250 = v442[79];
        v251 = *(v243 + 8 * v232);
        swift_isUniquelyReferenced_nonNull_native();
        v446 = *(v243 + 8 * v232);
        *(v243 + 8 * v232) = 0x8000000000000000;
        v252 = v446[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
        sub_227D4D7C8();
        v253 = *(v446[6] + 16 * v247 + 8);

        (*(v355 + 32))(v249, v446[7] + *(v355 + 72) * v247, v250);
        OUTLINED_FUNCTION_58();
        sub_227D4D7E8();
        v254 = 0;
        *(v243 + 8 * v232) = v446;
      }

      else
      {
        v254 = 1;
        v248 = v442;
      }

      v21 = v374;
      v276 = v386;
      v277 = v248[92];
      __swift_storeEnumTagSinglePayload(v277, v254, 1, v248[79]);
      sub_227B1DE58(v277, &qword_27D7E6AD8, &unk_227D4ED80);
      v126 = v248;
      v270 = v390;
    }

    else
    {
      v255 = v442[81];
      v256 = *v362;
      OUTLINED_FUNCTION_103_0();
      (v256)(v257, v258, v259, v260, v261, v262, v263, v264, v441, v419, v439, v434, v398, v394, v325, v208, v326, v373, v328);
      v265 = *(v243 + 8 * v232);
      swift_isUniquelyReferenced_nonNull_native();
      v447 = *(v243 + 8 * v232);
      *(v243 + 8 * v232) = 0x8000000000000000;
      sub_227B2664C(v436, v437);
      OUTLINED_FUNCTION_5_19();
      v270 = v390;
      if (__OFADD__(v268, v269))
      {
        goto LABEL_124;
      }

      v271 = v266;
      v272 = v267;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
      if (sub_227D4D7C8())
      {
        v273 = v437;
        v274 = sub_227B2664C(v436, v437);
        if ((v272 & 1) != (v275 & 1))
        {
          goto LABEL_114;
        }

        v271 = v274;
      }

      else
      {
        v273 = v437;
      }

      v278 = v442[81];
      v279 = v442[79];
      if (v272)
      {
        (*(v355 + 40))(v447[7] + *(v355 + 72) * v271, v278, v279);
      }

      else
      {
        v447[(v271 >> 6) + 8] |= 1 << v271;
        v280 = (v447[6] + 16 * v271);
        *v280 = v436;
        v280[1] = v273;
        v256(v447[7] + *(v355 + 72) * v271, v278, v279);
        v281 = v447[2];
        v240 = __OFADD__(v281, 1);
        v282 = v281 + 1;
        if (v240)
        {
          goto LABEL_125;
        }

        v447[2] = v282;
        sub_227D4CE58();
      }

      v283 = *(v243 + 8 * v232);
      *(v243 + 8 * v232) = v447;

      v126 = v442;
      v21 = v374;
      v276 = v386;
    }

    v144 = v270 + 1;
    v284 = v126[82];
    v285 = v126[79];
    v223();

    v286 = *v356;
    v287 = OUTLINED_FUNCTION_57_0();
    v288(v287);
    v147 = v276 + 8;
    v432 = sub_227C775A4;
    v145 = v357;
    if (v364 == v144)
    {
      goto LABEL_108;
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
}

uint64_t sub_227C76CFC()
{
  v33 = v0[116];
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v13 = v0[102];
  v14 = v0[101];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[93];
  v21 = v0[92];
  v22 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v25 = v0[86];
  v26 = v0[83];
  v27 = v0[82];
  v28 = v0[81];
  v29 = v0[78];
  v30 = v0[77];
  v31 = v0[76];
  v32 = v0[75];

  v11 = v0[1];

  return v11();
}

unint64_t sub_227C76F0C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_227BB48D8();
  v4 = sub_227D4CE98();
  return sub_227C774E4(a1, v4);
}

uint64_t sub_227C76F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_227D49AB8();
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

uint64_t sub_227C77028(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_227C770EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
    sub_227D4D7C8();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_227D49AB8();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_227D4D7E8();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_227D49AB8();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_227C77234(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
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
    v18 = sub_227D49AB8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227C76F78(v11, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227C773A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C77418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AF8, &qword_227D5FA48);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C77488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return a2;
}

unint64_t sub_227C774E4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = *(*(v2 + 48) + i);
    sub_227BBA398();
    if (sub_227D4CF38())
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_12_13()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t sub_227C775BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_57_0();

  return v4(v3);
}

uint64_t sub_227C77624()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for BulkChallengeData.Invitee(v0) + 20);
  v2 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93_5();

  return v6(v5);
}

uint64_t sub_227C776AC()
{
  v2 = OUTLINED_FUNCTION_419();
  v3 = *(type metadata accessor for BulkChallengeData.Invitee(v2) + 20);
  v4 = sub_227D492A8();
  OUTLINED_FUNCTION_6_15(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t sub_227C77718()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Invitee(v0) + 20);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C77780()
{
  v2 = OUTLINED_FUNCTION_419();
  v3 = *(type metadata accessor for BulkChallengeData.Invitee(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t sub_227C777F8()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Invitee(v0) + 24);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C77838()
{
  v0 = type metadata accessor for BulkChallengeData.Invitee(0);
  OUTLINED_FUNCTION_154_3(*(v0 + 28));
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C77868()
{
  OUTLINED_FUNCTION_104_0();
  v3 = (v1 + *(type metadata accessor for BulkChallengeData.Invitee(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_227C778AC()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Invitee(v0) + 28);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t BulkChallengeData.Invitee.init(ref:inviteTime:inviter:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_137_3();
  v9 = v8;
  v10 = type metadata accessor for BulkChallengeData.Invitee(0);
  v11 = (v9 + v10[7]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v12);
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_236();
  v14(v15);
  v16 = v10[5];
  v17 = sub_227D492A8();
  OUTLINED_FUNCTION_6_15(v17);
  (*(v18 + 32))(v9 + v16, v6);
  result = (v14)(v9 + v10[6], v5, v12);
  *v11 = a4;
  v11[1] = a5;
  return result;
}

uint64_t static BulkChallengeData.Invitee.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37();
  if (sub_227C77ABC(v2, v3, &qword_27D7E67C0, &unk_227D4FB20))
  {
    v4 = type metadata accessor for BulkChallengeData.Invitee(0);
    v5 = v4[5];
    if (sub_227D49268() & 1) != 0 && (sub_227C77ABC(v1 + v4[6], v0 + v4[6], &qword_27D7E67C0, &unk_227D4FB20))
    {
      OUTLINED_FUNCTION_133_1(v1 + v4[7]);
      if (v8)
      {
        if (v6)
        {
          OUTLINED_FUNCTION_132_4(v7);
          v11 = v11 && v9 == v10;
          if (v11 || (sub_227D4DA78() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_227C77ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_137_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = OUTLINED_FUNCTION_9_2();
  sub_227B15A74(v7, v8, a4);
  sub_227D4D148();
  sub_227D4D148();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_227D4DA78();
  }

  return v10 & 1;
}

uint64_t sub_227C77B9C()
{
  OUTLINED_FUNCTION_245();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_5_1() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = v4 == (OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x6954000000000000) && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v4 == (OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x72000000000000) && v0 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_238();
        if (v3 && v0 == 0xE600000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_265_1();
          if (v4)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_227C77C98(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 2:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 3:
      result = 0x737574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C77D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C77B9C();
  *a1 = result;
  return result;
}

uint64_t sub_227C77D5C()
{
  sub_227C77FCC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C77D94()
{
  sub_227C77FCC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void BulkChallengeData.Invitee.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B18, &qword_227D5FA68);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  OUTLINED_FUNCTION_192();
  sub_227C77FCC();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v10 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_197_3();
  sub_227B15A74(v12, v13, v14);
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v1)
  {
    v24 = type metadata accessor for BulkChallengeData.Invitee(0);
    v15 = *(v24 + 20);
    OUTLINED_FUNCTION_227_0();
    sub_227D492A8();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v16, v17);
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    v18 = v24;
    v19 = *(v24 + 24);
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    v20 = (v0 + *(v18 + 28));
    v21 = *v20;
    v22 = v20[1];
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_126_2();
    sub_227D4D978();
  }

  (*(v4 + 8))(v9, v2);
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227C77FCC()
{
  result = qword_27D7FEDF0;
  if (!qword_27D7FEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEDF0);
  }

  return result;
}

uint64_t BulkChallengeData.Invitee.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_116_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_31_6();
  sub_227B15A74(v4, &qword_27D7E67C0, &unk_227D4FB20);
  sub_227D4CEA8();
  v5 = type metadata accessor for BulkChallengeData.Invitee(0);
  v6 = v5[5];
  sub_227D492A8();
  OUTLINED_FUNCTION_7_19();
  sub_227C78164(v7, v8);
  sub_227D4CEA8();
  v9 = v1 + v5[6];
  sub_227D4CEA8();
  v10 = (v1 + v5[7]);
  if (!v10[1])
  {
    return OUTLINED_FUNCTION_174_4();
  }

  v11 = *v10;
  OUTLINED_FUNCTION_175_2();

  return sub_227D4D048();
}

uint64_t sub_227C78164(unint64_t *a1, void (*a2)(uint64_t))
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

void BulkChallengeData.Invitee.init(from:)()
{
  OUTLINED_FUNCTION_351();
  v64 = v0;
  v3 = v2;
  v55 = v4;
  v61 = sub_227D492A8();
  v5 = OUTLINED_FUNCTION_9(v61);
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v59 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v12 = OUTLINED_FUNCTION_9(v11);
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x28223BE20](v16);
  v60 = v52 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B28, &qword_227D5FA70);
  OUTLINED_FUNCTION_9(v63);
  v58 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  v23 = v52 - v22;
  v24 = type metadata accessor for BulkChallengeData.Invitee(0);
  v25 = OUTLINED_FUNCTION_62_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227C77FCC();
  v62 = v23;
  v32 = v64;
  sub_227D4DBF8();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    v33 = v59;
    v53 = v1;
    v54 = v24;
    v64 = v30;
    v34 = v61;
    OUTLINED_FUNCTION_14_4();
    v38 = sub_227B15A74(v35, v36, v37);
    v39 = v60;
    sub_227D4D938();
    v52[0] = v38;
    v40 = *(v57 + 32);
    v40(v64, v39, v11);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v41, v42);
    v43 = v33;
    sub_227D4D938();
    v52[1] = v11;
    v60 = v40;
    v44 = v64;
    (*(v56 + 32))(v64 + v54[5], v43, v34);
    v45 = v53;
    sub_227D4D938();
    (v60)(v44 + v54[6], v45, v11);
    OUTLINED_FUNCTION_236_1();
    v46 = sub_227D4D8A8();
    v48 = v47;
    v49 = (v44 + v54[7]);
    v50 = OUTLINED_FUNCTION_91_6();
    v51(v50);
    *v49 = v46;
    v49[1] = v48;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C78708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_58();

  return v4(v3);
}

uint64_t sub_227C787B4()
{
  v2 = OUTLINED_FUNCTION_419();
  result = type metadata accessor for BulkChallengeData.Participant(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_227C787E0()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Participant(v0) + 20);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C78820()
{
  v0 = type metadata accessor for BulkChallengeData.Participant(0);
  OUTLINED_FUNCTION_154_3(*(v0 + 24));
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C78850()
{
  OUTLINED_FUNCTION_104_0();
  v3 = (v1 + *(type metadata accessor for BulkChallengeData.Participant(0) + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_227C78894()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Participant(v0) + 24);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C78938()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Participant(v0) + 28);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C789DC()
{
  v0 = OUTLINED_FUNCTION_419();
  v1 = *(type metadata accessor for BulkChallengeData.Participant(v0) + 32);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t BulkChallengeData.Participant.init(ref:attemptCount:formattedScore:score:rank:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  OUTLINED_FUNCTION_121_2();
  v14 = v13;
  v15 = type metadata accessor for BulkChallengeData.Participant(0);
  v16 = (v14 + v15[6]);
  v17 = v14 + v15[7];
  v18 = v14 + v15[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v19);
  result = (*(v20 + 32))(v14, v11);
  *(v14 + v15[5]) = v10;
  *v16 = v9;
  v16[1] = v8;
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *v18 = a7;
  *(v18 + 8) = a8 & 1;
  return result;
}

uint64_t static BulkChallengeData.Participant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37();
  if ((sub_227C77ABC(v2, v3, &qword_27D7E67C0, &unk_227D4FB20) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BulkChallengeData.Participant(0);
  if (*(v1 + *(v4 + 20)) != *(v0 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  OUTLINED_FUNCTION_133_1(v1 + *(v4 + 24));
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_132_4(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_227D4DA78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_177_3(*(v5 + 28));
  if ((v13 & 1) == 0)
  {
    OUTLINED_FUNCTION_117_3();
    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_16:
  OUTLINED_FUNCTION_177_3(*(v5 + 32));
  if (v16)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_227C78BE8()
{
  OUTLINED_FUNCTION_245();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_5_1() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = v4 == (OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4374000000000000) && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v4 == OUTLINED_FUNCTION_202() && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = v4 == 0x65726F6373 && v0 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else if (v4 == 1802396018 && v0 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_265_1();
          if (v4)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_227C78D18(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4374000000000000;
      break;
    case 2:
      result = OUTLINED_FUNCTION_202();
      break;
    case 3:
      result = 0x65726F6373;
      break;
    case 4:
      result = 1802396018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C78DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C78BE8();
  *a1 = result;
  return result;
}

uint64_t sub_227C78DE4()
{
  sub_227C79048();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C78E1C()
{
  sub_227C79048();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t BulkChallengeData.Participant.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B30, &qword_227D5FA78);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  OUTLINED_FUNCTION_192();
  sub_227C79048();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v19[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_198_3();
  sub_227B15A74(v10, v11, v12);
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v1)
  {
    v13 = type metadata accessor for BulkChallengeData.Participant(0);
    v14 = *(v0 + v13[5]);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9F8();
    v15 = (v0 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    OUTLINED_FUNCTION_126_2();
    sub_227D4D978();
    OUTLINED_FUNCTION_165_4((v0 + v13[7]));
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_126_2();
    sub_227D4D9B8();
    OUTLINED_FUNCTION_165_4((v0 + v13[8]));
    v19[11] = 4;
    OUTLINED_FUNCTION_126_2();
    sub_227D4D998();
  }

  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_227C79048()
{
  result = qword_27D7FEDF8;
  if (!qword_27D7FEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEDF8);
  }

  return result;
}

uint64_t BulkChallengeData.Participant.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_31_6();
  sub_227B15A74(v1, &qword_27D7E67C0, &unk_227D4FB20);
  sub_227D4CEA8();
  v2 = type metadata accessor for BulkChallengeData.Participant(0);
  MEMORY[0x22AAA68B0](*(v0 + v2[5]));
  v3 = (v0 + v2[6]);
  if (v3[1])
  {
    v4 = *v3;
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_177();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_183_4(v2[7]);
  if (v6)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v7 = *v5;
    OUTLINED_FUNCTION_175_2();
    MEMORY[0x22AAA68D0](v7);
  }

  OUTLINED_FUNCTION_183_4(v2[8]);
  if (v6)
  {
    return OUTLINED_FUNCTION_174_4();
  }

  v9 = *v8;
  OUTLINED_FUNCTION_175_2();
  return MEMORY[0x22AAA68B0](v9);
}

void BulkChallengeData.Participant.init(from:)()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v45[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v4);
  v46 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B38, &unk_227D5FA80);
  v10 = OUTLINED_FUNCTION_9(v9);
  v47 = v11;
  v48 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v16 = v45 - v15;
  v17 = type metadata accessor for BulkChallengeData.Participant(0);
  v18 = OUTLINED_FUNCTION_62_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v25 = v2[3];
  v24 = v2[4];
  v49 = v2;
  v26 = OUTLINED_FUNCTION_116_0();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_227C79048();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    v28 = v46;
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v29, v30, v31);
    sub_227D4D938();
    v32 = *(v28 + 32);
    v33 = OUTLINED_FUNCTION_177();
    v34(v33);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_135_4();
    *(v23 + v17[5]) = sub_227D4D928();
    OUTLINED_FUNCTION_135_4();
    v35 = sub_227D4D8A8();
    v36 = v47;
    OUTLINED_FUNCTION_241_1(v35, v37, v17[6]);
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_135_4();
    v38 = sub_227D4D8E8();
    v39 = v23 + v17[7];
    *v39 = v38;
    *(v39 + 8) = v40 & 1;
    OUTLINED_FUNCTION_135_4();
    v41 = sub_227D4D8C8();
    v42 = v36;
    v43 = v23 + v17[8];
    LOBYTE(v28) = v44;
    (*(v42 + 8))(v16, v48);
    *v43 = v41;
    *(v43 + 8) = v28 & 1;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_58();
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C795C4()
{
  OUTLINED_FUNCTION_37();
  v2 = v1(0);
  OUTLINED_FUNCTION_6_15(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

uint64_t sub_227C79618()
{
  v1 = OUTLINED_FUNCTION_419();
  v3 = v2(v1);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_227C7966C()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for BulkChallengeData(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93_5();

  return v6(v5);
}

uint64_t sub_227C79728@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1(0) + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = OUTLINED_FUNCTION_62_0(v9);
  v12 = *(v11 + 16);

  return v12(a4, v4 + v8, v10);
}

uint64_t sub_227C797B8()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for BulkChallengeData(v0) + 28);
  v2 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93_5();

  return v6(v5);
}

uint64_t sub_227C79820()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for BulkChallengeData(v0) + 32);
  v2 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93_5();

  return v6(v5);
}

uint64_t sub_227C79888()
{
  v0 = type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3(*(v0 + 36));
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C798B8()
{
  v0 = type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3(*(v0 + 40));
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C798E8()
{
  v0 = OUTLINED_FUNCTION_40();
  v1 = *(type metadata accessor for BulkChallengeData(v0) + 44);
  return sub_227C6F0A8();
}

uint64_t sub_227C7992C()
{
  v0 = type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3(*(v0 + 48));
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C79984()
{
  v1 = *(v0 + *(type metadata accessor for BulkChallengeData(0) + 56));

  return sub_227D4CE58();
}

uint64_t sub_227C799B8()
{
  v1 = *(v0 + *(type metadata accessor for BulkChallengeData(0) + 60));

  return sub_227D4CE58();
}

uint64_t BulkChallengeData.init(id:creator:game:startTime:endTime:status:statusMessage:definition:iso8601Duration:attemptLimit:invitees:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v21 = type metadata accessor for BulkChallengeData(0);
  v22 = v21[5];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v23);
  (*(v24 + 32))(&a8[v22], a3);
  v25 = v21[6];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_6_15(v26);
  (*(v27 + 32))(&a8[v25], a4);
  v28 = v21[7];
  v29 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v29);
  v31 = *(v30 + 32);
  OUTLINED_FUNCTION_364();
  v31();
  (v31)(&a8[v21[8]], a5, v29);
  v32 = &a8[v21[9]];
  *v32 = a6;
  *(v32 + 1) = a7;
  v33 = &a8[v21[10]];
  *v33 = a9;
  *(v33 + 1) = a10;
  result = sub_227C79BD8(a11, &a8[v21[11]]);
  v35 = &a8[v21[12]];
  *v35 = a12;
  *(v35 + 1) = a13;
  v36 = &a8[v21[13]];
  *v36 = a14;
  v36[8] = a15 & 1;
  *&a8[v21[14]] = a16;
  *&a8[v21[15]] = a17;
  return result;
}

uint64_t sub_227C79BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static BulkChallengeData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_104_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B40, &qword_227D5FA90);
  OUTLINED_FUNCTION_62_0(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_104();
  v42 = *v21 == *v20 && v21[1] == v20[1];
  if (!v42 && (sub_227D4DA78() & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = type metadata accessor for BulkChallengeData(0);
  v44 = OUTLINED_FUNCTION_228_1(v43[5]);
  if ((sub_227C77ABC(v44, v45, v46, v47) & 1) == 0)
  {
    goto LABEL_33;
  }

  v48 = OUTLINED_FUNCTION_228_1(v43[6]);
  if ((sub_227C77ABC(v48, v49, v50, v51) & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_228_1(v43[7]);
  if ((sub_227D49268() & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_228_1(v43[8]);
  if ((sub_227D49268() & 1) == 0)
  {
    goto LABEL_33;
  }

  v52 = v43[9];
  v53 = *(v21 + v52);
  v54 = *(v21 + v52 + 8);
  v55 = (v20 + v52);
  v56 = v53 == *v55 && v54 == v55[1];
  if (!v56 && (sub_227D4DA78() & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_133_1(v21 + v43[10]);
  if (v59)
  {
    if (!v57)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_132_4(v58);
    v62 = v42 && v60 == v61;
    if (!v62 && (sub_227D4DA78() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v57)
  {
    goto LABEL_33;
  }

  v63 = v43[11];
  v64 = *(v38 + 48);
  sub_227C6F0A8();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_10_16(v23);
  if (!v42)
  {
    OUTLINED_FUNCTION_141();
    sub_227C6F0A8();
    OUTLINED_FUNCTION_10_16(v23 + v64);
    if (!v65)
    {
      (*(v28 + 32))(v22, v23 + v64, v26);
      sub_227B15A74(&qword_27D7E85F8, &qword_27D7E68E0, &unk_227D50DE0);
      v66 = sub_227D4CF38();
      v67 = *(v28 + 8);
      v67(v22, v26);
      v67(v37, v26);
      sub_227B1DE58(v23, &qword_27D7E8830, &unk_227D5B790);
      if ((v66 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    (*(v28 + 8))(v37, v26);
LABEL_32:
    sub_227B1DE58(v23, &qword_27D7E9B40, &qword_227D5FA90);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_10_16(v23 + v64);
  if (!v42)
  {
    goto LABEL_32;
  }

  sub_227B1DE58(v23, &qword_27D7E8830, &unk_227D5B790);
LABEL_35:
  OUTLINED_FUNCTION_133_1(v21 + v43[12]);
  if (v70)
  {
    if (!v68)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_132_4(v69);
    v73 = v42 && v71 == v72;
    if (!v73 && (sub_227D4DA78() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v68)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_177_3(v43[13]);
  if (v75)
  {
    if (!v74)
    {
      goto LABEL_33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    if (v76)
    {
      goto LABEL_33;
    }
  }

  v77 = v43[14];
  v78 = *(v21 + v77);
  v79 = *(v20 + v77);
  if (v78)
  {
    if (!v79)
    {
      goto LABEL_33;
    }

    v80 = *(v20 + v77);
    sub_227D4CE58();
    v81 = sub_227C86F4C(v78, v79);

    if ((v81 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v79)
  {
    goto LABEL_33;
  }

  v82 = v43[15];
  v83 = *(v20 + v82);
  if (*(v21 + v82) && v83)
  {
    sub_227D4CE58();
    v84 = OUTLINED_FUNCTION_57_0();
    sub_227C87340(v84, v85);
    OUTLINED_FUNCTION_265_1();
  }

LABEL_33:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7A0B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F7461657263 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667175 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
        if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
          if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_238();
            v10 = v3 && a2 == 0xE600000000000000;
            if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == OUTLINED_FUNCTION_201_2() && a2 == v11;
              if (v12 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
                if (v13 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == OUTLINED_FUNCTION_200_1() && a2 == v14;
                  if (v15 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = a1 == (OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000) && a2 == v16;
                    if (v17 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v18 = a1 == (OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x7365000000000000) && a2 == 0xE800000000000000;
                      if (v18 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == OUTLINED_FUNCTION_224_1() && a2 == v19)
                      {

                        return 11;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_5_1();
                        OUTLINED_FUNCTION_265_1();
                        if (a1)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227C7A35C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726F7461657263;
      break;
    case 2:
      result = 1701667175;
      break;
    case 3:
      result = 0x6D69547472617473;
      break;
    case 4:
      result = 0x656D6954646E65;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = OUTLINED_FUNCTION_201_2();
      break;
    case 7:
      result = 0x6974696E69666564;
      break;
    case 8:
      result = OUTLINED_FUNCTION_200_1();
      break;
    case 9:
      result = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    case 11:
      result = OUTLINED_FUNCTION_224_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C7A4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C7A0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C7A4DC()
{
  sub_227C876A4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C7A514()
{
  sub_227C876A4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void BulkChallengeData.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B48, &qword_227D5FA98);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_192();
  sub_227C876A4();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_104_4();
  sub_227D4D9C8();
  if (!v1)
  {
    v43 = type metadata accessor for BulkChallengeData(0);
    v12 = v43[5];
    v13 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v15, v16, v17);
    OUTLINED_FUNCTION_51_8();
    sub_227D4DA08();
    v18 = v43[6];
    v19 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v21, v22, v23);
    OUTLINED_FUNCTION_51_8();
    sub_227D4DA08();
    v24 = v43[7];
    sub_227D492A8();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v25, v26);
    OUTLINED_FUNCTION_104_4();
    sub_227D4DA08();
    v27 = v43[8];
    OUTLINED_FUNCTION_104_4();
    sub_227D4DA08();
    v28 = (v3 + v43[9]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_46_6(5);
    sub_227D4D9C8();
    v31 = (v3 + v43[10]);
    v32 = *v31;
    v33 = v31[1];
    OUTLINED_FUNCTION_46_6(6);
    sub_227D4D978();
    v34 = v43[11];
    v35 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v37, v38, v39);
    OUTLINED_FUNCTION_51_8();
    sub_227D4D9A8();
    v40 = (v3 + v43[12]);
    v41 = *v40;
    v42 = v40[1];
    OUTLINED_FUNCTION_46_6(8);
    sub_227D4D978();
    OUTLINED_FUNCTION_165_4((v3 + v43[13]));
    OUTLINED_FUNCTION_46_6(9);
    sub_227D4D998();
    v44 = *(v3 + v43[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B50, &qword_227D5FAA0);
    sub_227C876F8();
    OUTLINED_FUNCTION_104_4();
    sub_227D4D9A8();
    v45 = *(v3 + v43[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B68, &qword_227D5FAA8);
    sub_227C877AC();
    OUTLINED_FUNCTION_104_4();
    sub_227D4D9A8();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_352();
}

void BulkChallengeData.hash(into:)()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9(v4);
  v52 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v51 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = *v0;
  v17 = v0[1];
  sub_227D4D048();
  v18 = type metadata accessor for BulkChallengeData(0);
  v19 = v18[5];
  v20 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_261_1();
  v22 = v18[6];
  v23 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_197_3();
  sub_227B15A74(v25, v26, v27);
  OUTLINED_FUNCTION_261_1();
  v28 = v18[7];
  sub_227D492A8();
  OUTLINED_FUNCTION_7_19();
  sub_227C78164(v29, v30);
  sub_227D4CEA8();
  v31 = v1 + v18[8];
  sub_227D4CEA8();
  v32 = (v1 + v18[9]);
  v33 = *v32;
  v34 = v32[1];
  sub_227D4D048();
  v35 = (v1 + v18[10]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_175_2();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  v37 = v18[11];
  sub_227C6F0A8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v39 = v51;
    v38 = v52;
    (*(v52 + 32))(v51, v15, v4);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_31_6();
    sub_227B15A74(v40, v41, v42);
    sub_227D4CEA8();
    (*(v38 + 8))(v39, v4);
  }

  v43 = (v1 + v18[12]);
  if (v43[1])
  {
    v44 = *v43;
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_177();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_183_4(v18[13]);
  if (v46)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v47 = *v45;
    OUTLINED_FUNCTION_175_2();
    MEMORY[0x22AAA68B0](v47);
  }

  v48 = *(v1 + v18[14]);
  if (v48)
  {
    OUTLINED_FUNCTION_175_2();
    sub_227C87AC0(v3, v48);
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  if (*(v1 + v18[15]))
  {
    OUTLINED_FUNCTION_175_2();
    v49 = OUTLINED_FUNCTION_9_2();
    sub_227C87860(v49, v50);
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7ACC0(void (*a1)(_BYTE *))
{
  sub_227D4DB58();
  a1(v3);
  return sub_227D4DB98();
}

void BulkChallengeData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  v101 = v10;
  v15 = v14;
  v90[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  v99 = v90 - v21;
  v22 = sub_227D492A8();
  v23 = OUTLINED_FUNCTION_9(v22);
  v96 = v24;
  v97 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x28223BE20](v27);
  v29 = v90 - v28;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v94);
  v92 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105_1();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v95);
  v93 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  v39 = v90 - v38;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B88, &qword_227D5FAB0);
  OUTLINED_FUNCTION_9(v98);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_104();
  v103 = type metadata accessor for BulkChallengeData(0);
  v45 = OUTLINED_FUNCTION_62_0(v103);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v102 = (v49 - v48);
  v51 = v15[3];
  v50 = v15[4];
  v100 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v51);
  sub_227C876A4();
  v91 = v12;
  v52 = v101;
  sub_227D4DBF8();
  if (v52)
  {
    v101 = v52;
    LODWORD(v98) = 0;
    v56 = v102;
    __swift_destroy_boxed_opaque_existential_0(v100);
    LODWORD(v99) = 0;
    v57 = v103;
    if (v98)
    {
      v58 = *(v56 + v103[10] + 8);
    }

    if (v99)
    {
      v59 = *(v56 + v57[12] + 8);
    }
  }

  else
  {
    v53 = v29;
    v54 = v13;
    v90[0] = v41;
    v55 = sub_227D4D8F8();
    v60 = v102;
    *v102 = v55;
    v60[1] = v61;
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v62, v63, v64);
    v65 = v95;
    sub_227D4D938();
    v66 = v103;
    (*(v93 + 32))(v60 + v103[5], v39, v65);
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v67, v68, v69);
    v70 = v94;
    sub_227D4D938();
    (*(v92 + 32))(v60 + v66[6], v11, v70);
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v71, v72);
    v73 = v97;
    sub_227D4D938();
    v74 = *(v96 + 32);
    v74(v60 + v103[7], v53, v73);
    sub_227D4D938();
    v75 = v103;
    v74(v60 + v103[8], v54, v73);
    OUTLINED_FUNCTION_130_1(5);
    v76 = sub_227D4D8F8();
    OUTLINED_FUNCTION_241_1(v76, v77, v75[9]);
    OUTLINED_FUNCTION_130_1(6);
    v78 = sub_227D4D8A8();
    OUTLINED_FUNCTION_241_1(v78, v79, v75[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    LOBYTE(a10) = 7;
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v80, &qword_27D7E68E0, &unk_227D50DE0);
    v81 = v99;
    sub_227D4D8D8();
    v82 = v103;
    sub_227C79BD8(v81, v60 + v103[11]);
    OUTLINED_FUNCTION_130_1(8);
    v83 = sub_227D4D8A8();
    LODWORD(v99) = 1;
    OUTLINED_FUNCTION_241_1(v83, v84, v82[12]);
    OUTLINED_FUNCTION_130_1(9);
    v85 = sub_227D4D8C8();
    v101 = 0;
    v86 = v102 + v103[13];
    *v86 = v85;
    v86[8] = v87 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B50, &qword_227D5FAA0);
    v104 = 10;
    sub_227C87D14();
    OUTLINED_FUNCTION_158_2();
    v101 = 0;
    *(v102 + v103[14]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B68, &qword_227D5FAA8);
    v104 = 11;
    sub_227C87DC8();
    OUTLINED_FUNCTION_158_2();
    v101 = 0;
    v88 = OUTLINED_FUNCTION_118_2();
    v89(v88);
    *(v102 + v103[15]) = a10;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v100);
    OUTLINED_FUNCTION_58();
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C7B72C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_227D4DB58();
  a4(v6);
  return sub_227D4DB98();
}

uint64_t static $DistributedIntegrationTestsServiceProtocol.resolve(id:using:)()
{
  v3 = OUTLINED_FUNCTION_235_0();
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(v3);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v4, v5);
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v6, v7);
  v8 = v2;
  OUTLINED_FUNCTION_144_3();
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v8 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_6_15(v12);
    (*(v13 + 16))(v10 + v11, v1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem) = v0;
  }

  return v10;
}

uint64_t $DistributedIntegrationTestsServiceProtocol.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v3, v4);
  OUTLINED_FUNCTION_262_0();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedIntegrationTestsServiceProtocol.__allocating_init(actorSystem:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  $DistributedIntegrationTestsServiceProtocol.init(actorSystem:)();
  return v3;
}

void $DistributedIntegrationTestsServiceProtocol.init(actorSystem:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v16 = sub_227D49EF8();
  v3 = OUTLINED_FUNCTION_9(v16);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem;
  *(v0 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem) = v2;
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v12, v13);
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v14, v15);

  OUTLINED_FUNCTION_155();
  sub_227D493B8();
  (*(v5 + 32))(v0 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id, v10, v16);
  v17 = *(v0 + v11);

  OUTLINED_FUNCTION_155();
  sub_227D49398();

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7BC04@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227C7BC4C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(dword_227D60CD0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.describe(challenges:)()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 8);
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v2 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v1[13] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v14 = sub_227D49D58();
  v1[16] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227C7BD78()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(&unk_227D60CC8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t sub_227C7BE0C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227D49458();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_227D49D58();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C7BF90, 0, 0);
}

uint64_t sub_227C7BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_11(dword_227D60CD0);
    v25 = swift_task_alloc();
    v17[16] = v25;
    *v25 = v17;
    v25[1] = sub_227C7C2E8;
    v26 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_72();

    return v27();
  }

  v19 = v17[14];
  v20 = v17[5];
  v17[15] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_59_7();
  v21 = v17[14];
  if (v19)
  {
    v22 = v17[12];
    v23 = OUTLINED_FUNCTION_102_0(v17[13]);
    v24(v23);

    v38 = v17[14];
    v39 = v17[11];
    v40 = v17[8];

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_72();

    return v27();
  }

  v30 = v17[11];
  v17[2] = v17[4];
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_15_13();
  sub_227D49478();
  OUTLINED_FUNCTION_6_16();
  sub_227C8802C(v31, v32);
  OUTLINED_FUNCTION_5_20();
  sub_227C8802C(v33, v34);
  OUTLINED_FUNCTION_52_7();
  v35 = v17[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  OUTLINED_FUNCTION_263_1();
  v36 = v17[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
  sub_227B87DE0();
  sub_227B87F18();
  OUTLINED_FUNCTION_45_7();
  v37 = v17[14];
  sub_227D49D08();
  v42 = v17[8];
  OUTLINED_FUNCTION_57();
  sub_227D49468();
  v43 = *(MEMORY[0x277D0CE28] + 4);
  v44 = swift_task_alloc();
  v17[17] = v44;
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v45, v46);
  OUTLINED_FUNCTION_47();
  *v44 = v47;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_227C7C2E8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v3 = v2[16];
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_209();
  v7 = *(v6 + 112);
  v8 = v2[11];
  v9 = v2[8];

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227C7C42C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C7C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_221_1();
  v13 = OUTLINED_FUNCTION_86();
  v14(v13);
  v15 = OUTLINED_FUNCTION_85();
  v16(v15);
  v17 = OUTLINED_FUNCTION_22_2();
  v18(v17);
  v19 = *(v12 + 24);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C7C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_221_1();
  v13 = OUTLINED_FUNCTION_86();
  v14(v13);
  v15 = OUTLINED_FUNCTION_85();
  v16(v15);
  v17 = OUTLINED_FUNCTION_22_2();
  v18(v17);
  v19 = *(v12 + 144);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C7C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_253_1();
  OUTLINED_FUNCTION_28_1();
  v18 = v17[9];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[18];
    v20 = v17[9];
    v21 = v17[6];
    v22 = *(v17[7] + 8);
    OUTLINED_FUNCTION_236();
    sub_227D493E8();
    v17[19] = v17[2];
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D48();
    v23 = v17[18];
    if (v19)
    {
      v24 = v17[16];
      v25 = OUTLINED_FUNCTION_102_0(v17[17]);
      v26(v25);

      v46 = v17[18];
      v47 = v17[15];
      v48 = v17[12];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v49();
    }

    else
    {
      v38 = v17[15];
      v17[3] = v17[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_15_13();
      sub_227D49478();
      OUTLINED_FUNCTION_6_16();
      sub_227C8802C(v39, v40);
      OUTLINED_FUNCTION_5_20();
      sub_227C8802C(v41, v42);
      OUTLINED_FUNCTION_52_7();
      v43 = v17[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_263_1();
      v44 = v17[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
      sub_227B87DE0();
      sub_227B87F18();
      OUTLINED_FUNCTION_45_7();
      v45 = v17[18];
      sub_227D49D08();
      v51 = v17[12];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v52 = *(MEMORY[0x277D0CE28] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v17[20] = v53;
      *v53 = v54;
      v53[1] = sub_227C7CB68;
      v55 = v17[18];
      v56 = v17[12];
      v57 = v17[9];
      v58 = v17[6];
      OUTLINED_FUNCTION_65_5();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = *(v17[8] + 16);
    OUTLINED_FUNCTION_32();
    v68 = v28 + *v28;
    v30 = *(v29 + 4);
    v31 = swift_task_alloc();
    v17[22] = v31;
    *v31 = v17;
    v31[1] = sub_227C7CD10;
    v32 = v17[8];
    v33 = v17[9];
    v34 = v17[6];
    OUTLINED_FUNCTION_53(v17[5]);
    OUTLINED_FUNCTION_98_0();

    return v35();
  }
}

uint64_t sub_227C7CB68()
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

uint64_t sub_227C7CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_216_1();
  v13 = OUTLINED_FUNCTION_86();
  v14(v13);
  v15 = OUTLINED_FUNCTION_85();
  v16(v15);
  v17 = OUTLINED_FUNCTION_22_2();
  v18(v17);
  v19 = v12[4];
  v20 = v12[18];
  v21 = v12[15];
  v22 = v12[12];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227C7CD10()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v3 = v2[22];
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_209();
  v7 = *(v6 + 144);
  v8 = v2[15];
  v9 = v2[12];

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227C7CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_216_1();
  v13 = OUTLINED_FUNCTION_86();
  v14(v13);
  v15 = OUTLINED_FUNCTION_85();
  v16(v15);
  v17 = OUTLINED_FUNCTION_22_2();
  v18(v17);
  v19 = v12[21];
  v20 = v12[18];
  v21 = v12[15];
  v22 = v12[12];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227C7CF04()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_11(&unk_227D60CC0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 8);
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v2 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v9 = sub_227D49458();
  v1[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[15] = v13;
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[17] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v1[20] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[21] = v21;
  v23 = *(v22 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[23] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[24] = v25;
  v27 = *(v26 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[26] = v28;
  OUTLINED_FUNCTION_10_0(v28);
  v1[27] = v29;
  v31 = *(v30 + 64);
  v1[28] = OUTLINED_FUNCTION_30();
  v32 = sub_227D49D58();
  v1[29] = v32;
  OUTLINED_FUNCTION_10_0(v32);
  v1[30] = v33;
  v35 = *(v34 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v36 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_227C7D034()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_11(&unk_227D60CB8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227C7D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_227D49458();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v5[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v5[16] = v14;
  v15 = *(v14 - 8);
  v5[17] = v15;
  v16 = *(v15 + 64) + 15;
  v5[18] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5[19] = v17;
  v18 = *(v17 - 8);
  v5[20] = v18;
  v19 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v5[22] = v20;
  v21 = *(v20 - 8);
  v5[23] = v21;
  v22 = *(v21 + 64) + 15;
  v5[24] = swift_task_alloc();
  v23 = sub_227D49D58();
  v5[25] = v23;
  v24 = *(v23 - 8);
  v5[26] = v24;
  v25 = *(v24 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C7D3CC, 0, 0);
}

uint64_t sub_227C7D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17[7];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[27];
    v20 = v17[7];
    v17[28] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_59_7();
    v21 = v17[27];
    if (v19)
    {
      v22 = v17[25];
      v23 = OUTLINED_FUNCTION_102_0(v17[26]);
      v24(v23);

      OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_115_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v45();
    }

    else
    {
      v30 = v17[24];
      v31 = v17[21];
      v32 = v17[19];
      v33 = v17[4];
      v34 = OUTLINED_FUNCTION_129_2(v17[20]);
      v35(v34);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v36);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v37);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      v38 = v17[27];
      v39 = v17[18];
      OUTLINED_FUNCTION_266_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_128_2();
      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B88988();
      sub_227B88AC0();
      OUTLINED_FUNCTION_52_7();
      v40 = v17[15];
      v42 = v17[11];
      v41 = v17[12];
      v43 = v17[6];
      sub_227C6F0A8();
      OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_144_3();
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v44 = v17[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72B0, &qword_227D5FBB0);
      OUTLINED_FUNCTION_29_8();
      OUTLINED_FUNCTION_267_1(v47);
      OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_267_1(v48);
      OUTLINED_FUNCTION_45_7();
      v49 = v17[27];
      sub_227D49D08();
      v50 = v17[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v51 = *(MEMORY[0x277D0CE28] + 4);
      v52 = swift_task_alloc();
      v17[30] = v52;
      OUTLINED_FUNCTION_0_45();
      sub_227C78164(v53, v54);
      OUTLINED_FUNCTION_48_0();
      *v52 = v55;
      OUTLINED_FUNCTION_191_4();
      OUTLINED_FUNCTION_64_4();
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60CC0);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v17[29] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_107_0(v25);
    OUTLINED_FUNCTION_176_1();

    return v27();
  }
}

uint64_t sub_227C7DA08()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[29];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 216);
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[10];

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_227C7DBBC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C7E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17[11];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[31];
    v20 = v17[11];
    v21 = v17[8];
    v22 = *(v17[9] + 8);
    OUTLINED_FUNCTION_236();
    sub_227D493E8();
    v17[32] = v17[2];
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D48();
    v23 = v17[31];
    if (v19)
    {
      v24 = v17[29];
      v25 = OUTLINED_FUNCTION_102_0(v17[30]);
      v26(v25);

      v58 = v17[31];
      v59 = v17[28];
      v60 = v17[25];
      OUTLINED_FUNCTION_259_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v61();
    }

    else
    {
      v43 = v17[28];
      v44 = v17[25];
      v45 = v17[23];
      v46 = v17[5];
      v47 = OUTLINED_FUNCTION_129_2(v17[24]);
      v48(v47);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v49);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v50);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      v51 = v17[31];
      v52 = v17[22];
      v17[3] = v17[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_128_2();
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B88988();
      sub_227B88AC0();
      OUTLINED_FUNCTION_52_7();
      v53 = v17[19];
      v55 = v17[15];
      v54 = v17[16];
      v56 = v17[7];
      sub_227C6F0A8();
      OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_144_3();
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v57 = v17[31];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72B0, &qword_227D5FBB0);
      OUTLINED_FUNCTION_29_8();
      OUTLINED_FUNCTION_267_1(v63);
      OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_267_1(v64);
      OUTLINED_FUNCTION_45_7();
      v65 = v17[31];
      sub_227D49D08();
      v66 = v17[14];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v67 = *(MEMORY[0x277D0CE28] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v17[33] = v68;
      *v68 = v69;
      v68[1] = sub_227C7E7D8;
      v70 = v17[31];
      v71 = v17[14];
      v72 = v17[11];
      v73 = v17[8];
      v74 = v17[4];
      OUTLINED_FUNCTION_65_5();
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = *(v17[10] + 32);
    OUTLINED_FUNCTION_36_0();
    v84 = v28 + *v28;
    v30 = *(v29 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v17[35] = v31;
    *v31 = v32;
    v31[1] = sub_227C7E9CC;
    v33 = v17[10];
    v34 = v17[11];
    v35 = v17[7];
    v36 = v17[8];
    v37 = v17[5];
    v38 = v17[6];
    v39 = v17[4];
    OUTLINED_FUNCTION_176_1();

    return v40();
  }
}