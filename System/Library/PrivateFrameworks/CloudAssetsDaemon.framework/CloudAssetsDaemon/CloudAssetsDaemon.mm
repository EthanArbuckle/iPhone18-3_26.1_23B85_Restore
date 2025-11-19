double sub_2437FB290@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  v6 = OUTLINED_FUNCTION_38(v5);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v56 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D28, &qword_24381D6D8);
  v11 = OUTLINED_FUNCTION_38(v10);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = sub_24381C914();
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v23 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  sub_2437FF8F0(&qword_27ED92D30, MEMORY[0x277CFA8E8]);
  sub_24381CAB4();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v50 = a2;
  v49 = *(v19 + 32);
  v49(v25, v15, v16);
  v26 = sub_24381CAA4();
  v48 = v27;
  v44 = v26;
  v45 = HIDWORD(v26);
  v46 = v28;
  v47 = HIDWORD(v28);
  v51 = HIDWORD(v27);
  v52 = v29;
  v53 = HIDWORD(v29);
  v30 = sub_24381CCD4();
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v30);
  v31 = *(v19 + 16);
  v32 = OUTLINED_FUNCTION_29();
  v33(v32);
  v34 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v35 = (v21 + v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v36 = swift_allocObject();
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v54 = a3;
  v37 = v49;
  v38 = v50;
  *(v36 + 4) = v55;
  *(v36 + 5) = v38;
  v37(&v36[v34], v23, v16);
  v39 = &v36[v35];
  v40 = v45;
  *v39 = v44;
  *(v39 + 1) = v40;
  v41 = v47;
  *(v39 + 2) = v46;
  *(v39 + 3) = v41;
  *(v39 + 4) = v48;
  *(v39 + 5) = v51;
  *(v39 + 6) = v52;
  *(v39 + 7) = v53;

  v42 = v54;

  sub_2437FCB64(0, 0, v56, &unk_24381D6E8, v36);

  (*(v19 + 8))(v25, v16);
  *(v42 + 32) = 0;
  result = 0.0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  return result;
}

uint64_t sub_2437FB61C()
{
  OUTLINED_FUNCTION_37();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2437FB6F4;

  return sub_2437FB7D4();
}

uint64_t sub_2437FB6F4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_12();

  return v5();
}

uint64_t sub_2437FB7D4()
{
  OUTLINED_FUNCTION_13();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D38, &qword_24381D710);
  v0[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[10] = v9;
  v11 = *(v10 + 64);
  v0[11] = OUTLINED_FUNCTION_32();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D40, &qword_24381D718);
  OUTLINED_FUNCTION_38(v12);
  v14 = *(v13 + 64);
  v0[12] = OUTLINED_FUNCTION_32();
  v15 = sub_24381C8D4();
  v0[13] = v15;
  OUTLINED_FUNCTION_1(v15);
  v0[14] = v16;
  v18 = *(v17 + 64);
  v0[15] = OUTLINED_FUNCTION_32();
  v19 = sub_24381C724();
  v0[16] = v19;
  OUTLINED_FUNCTION_1(v19);
  v0[17] = v20;
  v22 = *(v21 + 64);
  v0[18] = OUTLINED_FUNCTION_48();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D48, &qword_24381D720);
  v0[21] = v23;
  OUTLINED_FUNCTION_1(v23);
  v0[22] = v24;
  v26 = *(v25 + 64);
  v0[23] = OUTLINED_FUNCTION_32();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D50, &qword_24381D728);
  OUTLINED_FUNCTION_38(v27);
  v29 = *(v28 + 64);
  v0[24] = OUTLINED_FUNCTION_32();
  v30 = sub_24381C8A4();
  v0[25] = v30;
  OUTLINED_FUNCTION_1(v30);
  v0[26] = v31;
  v33 = *(v32 + 64);
  v0[27] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v34);
}

uint64_t sub_2437FBA40()
{
  OUTLINED_FUNCTION_58();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[2];
  v4 = sub_24381C604();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[28] = sub_24381C5F4();
  sub_24381C904();
  sub_2437FF8F0(&qword_27ED92D58, MEMORY[0x277CFA848]);
  sub_24381C5E4();
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  OUTLINED_FUNCTION_49();
  v11 = OUTLINED_FUNCTION_16();
  v12(v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[29] = v13;
  *v13 = v14;
  v13[1] = sub_2437FBDD4;
  v15 = v0[27];
  v16 = v0[23];
  v17 = v0[8];
  OUTLINED_FUNCTION_30();

  return sub_2437FCE38();
}

uint64_t sub_2437FBDD4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FBECC()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[20];
  v2 = v0[2];
  sub_24381C8F4();
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_2437FBF70;
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[7];

  return sub_2437FD570();
}

uint64_t sub_2437FBF70()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = v4[31];
  v6 = v4[20];
  v7 = v4[17];
  v8 = v4[16];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 256) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_57();
  v14(v13);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2437FC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_58();
  v20 = v18[26];
  v19 = v18[27];
  v21 = v18[25];
  (*(v18[22] + 8))(v18[23], v18[21]);
  v22 = OUTLINED_FUNCTION_6();
  v23(v22);
  v24 = v18[32];
  v25 = v18[28];
  v27 = v18[12];
  v26 = v18[13];
  v28 = v18[2];
  sub_24381C904();
  OUTLINED_FUNCTION_22();
  sub_2437FF8F0(v29, v30);
  sub_24381C5E4();
  if (v24)
  {
    v32 = v18[12];
    v31 = v18[13];

    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_34();
    sub_2437FF890(v32, &qword_27ED92D40, &qword_24381D718);
    v33 = v18[28];
    sub_24381CA34();
    OUTLINED_FUNCTION_5();
    sub_2437FF8F0(v34, v35);
    v36 = OUTLINED_FUNCTION_33();
    v37 = *MEMORY[0x277CFA950];
    OUTLINED_FUNCTION_40();
    (*(v38 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_7();
    v39 = OUTLINED_FUNCTION_29();
    sub_2437FECB4(v39);

    v40 = OUTLINED_FUNCTION_10();
    v41(v40);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_30();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v52 = v18[14];
    v51 = v18[15];
    v54 = v18[12];
    v53 = v18[13];
    OUTLINED_FUNCTION_49();
    v55 = OUTLINED_FUNCTION_16();
    v56(v55);
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v18[33] = v57;
    *v57 = v58;
    OUTLINED_FUNCTION_15(v57);
    OUTLINED_FUNCTION_30();

    return sub_2437FE578();
  }
}

uint64_t sub_2437FC330()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FC428()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[19];
  v2 = v0[2];
  sub_24381C8F4();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_2437FC4CC;
  v4 = v0[19];
  v5 = v0[11];
  v6 = v0[7];

  return sub_2437FDDE4();
}

uint64_t sub_2437FC4CC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = v4[35];
  v6 = v4[19];
  v7 = v4[17];
  v8 = v4[16];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 288) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_57();
  v14(v13);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2437FC61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_58();
  v20 = v18[14];
  v19 = v18[15];
  v21 = v18[13];
  (*(v18[10] + 8))(v18[11], v18[9]);
  v22 = OUTLINED_FUNCTION_6();
  v23(v22);
  v24 = v18[28];
  sub_24381CA34();
  OUTLINED_FUNCTION_5();
  sub_2437FF8F0(v25, v26);
  v27 = OUTLINED_FUNCTION_33();
  v28 = *MEMORY[0x277CFA950];
  OUTLINED_FUNCTION_40();
  (*(v29 + 104))();
  swift_willThrow();

  OUTLINED_FUNCTION_7();
  v30 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v30);

  v31 = OUTLINED_FUNCTION_10();
  v32(v31);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2437FC794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v18 = v16[27];
  v17 = v16[28];
  v19 = v16[25];
  v20 = v16[26];

  v21 = OUTLINED_FUNCTION_6();
  v22(v21);
  v23 = v16[30];
  OUTLINED_FUNCTION_2();
  v24 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v24);

  v25 = OUTLINED_FUNCTION_10();
  v26(v25);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FC878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v18 = v16[27];
  v17 = v16[28];
  v19 = v16[25];
  v20 = v16[26];
  v22 = v16[22];
  v21 = v16[23];
  v23 = v16[21];

  v24 = OUTLINED_FUNCTION_26();
  v25(v24);
  v26 = *(v20 + 8);
  v27 = OUTLINED_FUNCTION_18();
  v28(v27);
  v29 = v16[32];
  OUTLINED_FUNCTION_2();
  v30 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v30);

  v31 = OUTLINED_FUNCTION_10();
  v32(v31);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FC978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = v16[28];
  v19 = v16[14];
  v18 = v16[15];
  v20 = v16[13];

  v21 = OUTLINED_FUNCTION_6();
  v22(v21);
  v23 = v16[34];
  OUTLINED_FUNCTION_2();
  v24 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v24);

  v25 = OUTLINED_FUNCTION_10();
  v26(v25);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FCA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = v16[28];
  v19 = v16[14];
  v18 = v16[15];
  v20 = v16[13];
  v22 = v16[10];
  v21 = v16[11];
  v23 = v16[9];

  v24 = OUTLINED_FUNCTION_26();
  v25(v24);
  v26 = *(v19 + 8);
  v27 = OUTLINED_FUNCTION_18();
  v28(v27);
  v29 = v16[36];
  OUTLINED_FUNCTION_2();
  v30 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v30);

  v31 = OUTLINED_FUNCTION_10();
  v32(v31);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v25 - v10;
  sub_2437FF45C(a3, v25 - v10);
  v12 = sub_24381CCD4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437FF890(v11, &qword_27ED92D20, &qword_24381D6D0);
  }

  else
  {
    sub_24381CCC4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24381CC74();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24381CBC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2437FF890(a3, &qword_27ED92D20, &qword_24381D6D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2437FF890(a3, &qword_27ED92D20, &qword_24381D6D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2437FCE38()
{
  OUTLINED_FUNCTION_13();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_24381C6E4();
  v1[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_32();
  v8 = sub_24381C804();
  v1[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C8A4();
  v1[12] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_2437FCF7C()
{
  OUTLINED_FUNCTION_54();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  v6 = *(v2 + 88);
  v7 = OUTLINED_FUNCTION_18();
  v9 = v8(v7);
  if (v9 != *MEMORY[0x277CFA838] && v9 != *MEMORY[0x277CFA840])
  {
    return OUTLINED_FUNCTION_35();
  }

  v11 = v0[14];
  v12 = (*(v0[13] + 96))(v11, v0[12]);
  if (*(*v11 + 16))
  {
    v13 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[5];
    v17 = OUTLINED_FUNCTION_36(v0[10]);
    v18(v17);

    v0[15] = sub_24381C7B4();
    v0[16] = v19;
    sub_24381C7D4();
    v20 = *(v16 + 16);
    v0[17] = v20;
    v21 = (*v20 + 136) & 0xFFFFFFFFFFFFLL | 0x1068000000000000;
    v0[18] = *(*v20 + 136);
    v0[19] = v21;
    v12 = sub_2437FD0FC;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2437FD0FC()
{
  OUTLINED_FUNCTION_37();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[8];
  type metadata accessor for Uploader();
  v7 = OUTLINED_FUNCTION_47();
  v2(v7);
  v0[20] = v5;
  v8 = v0[16];

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FD1B8()
{
  OUTLINED_FUNCTION_13();
  v0[21] = v0[2];
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[22] = v1;
  *v1 = v2;
  v1[1] = sub_2437FD250;
  v3 = v0[3];
  v4 = v0[4];

  return sub_243807A44();
}

uint64_t sub_2437FD250()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FD348()
{
  OUTLINED_FUNCTION_37();
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_39();
  v11(v10);
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_57();
  v14(v13);

  OUTLINED_FUNCTION_12();

  return v15();
}

uint64_t sub_2437FD40C()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = OUTLINED_FUNCTION_6();
  v5(v4);
  v6 = v0[20];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];

  OUTLINED_FUNCTION_12();

  return v10();
}

uint64_t sub_2437FD4B4()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[21];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];

  v8 = OUTLINED_FUNCTION_26();
  v9(v8);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_18();
  v12(v11);
  v13 = v0[23];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];

  OUTLINED_FUNCTION_12();

  return v17();
}

uint64_t sub_2437FD570()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_41(v1, v2, v3);
  v4 = sub_24381C934();
  v0[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_48();
  v0[9] = swift_task_alloc();
  v8 = sub_24381C724();
  v0[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_48();
  v0[13] = swift_task_alloc();
  v12 = sub_24381C944();
  v0[14] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[15] = v13;
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_48();
  v0[17] = swift_task_alloc();
  v16 = sub_24381C8C4();
  v0[18] = v16;
  OUTLINED_FUNCTION_1(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_32();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D70, &qword_24381D740);
  OUTLINED_FUNCTION_38(v20);
  v22 = *(v21 + 64);
  v0[21] = OUTLINED_FUNCTION_32();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D78, &qword_24381D748);
  v0[22] = v23;
  OUTLINED_FUNCTION_1(v23);
  v0[23] = v24;
  v26 = *(v25 + 64);
  v0[24] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v27);
}

uint64_t sub_2437FD7A0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 192);
  v2 = *(v0 + 24);
  v3 = sub_24381C634();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_24381C624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D48, &qword_24381D720);
  sub_24381CD34();
  *(v0 + 224) = *MEMORY[0x277CFA900];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_3(v8);

  return MEMORY[0x2822005A8](v10);
}

uint64_t sub_2437FD884()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FD97C()
{
  OUTLINED_FUNCTION_53();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_21();
    v9(v8);
    v10 = OUTLINED_FUNCTION_52();
    v11(v10);
    (*(v5 + 104))(v3, *MEMORY[0x277CFA908], v4);
    sub_24381C924();
    OUTLINED_FUNCTION_0();
    sub_2437FF8F0(v12, v13);
    sub_24381CA74();
    v14 = v2[25];
    if (!v1)
    {
      v25 = OUTLINED_FUNCTION_27();
      v26(v25);

      OUTLINED_FUNCTION_12();
      goto LABEL_10;
    }

    (*(v2[15] + 8))(v2[16], v2[14]);

LABEL_9:
    v34 = v2[24];
    v35 = v2[20];
    v36 = v2[21];
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_12();
LABEL_10:
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X1, X16 }
  }

  v15 = OUTLINED_FUNCTION_25();
  v16(v15);
  v17 = OUTLINED_FUNCTION_51();
  v18(v17);
  sub_2437FF8F0(&qword_27ED92D88, MEMORY[0x277CFA880]);
  v19 = sub_24381C614();
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v21 = v2[18];
    v22 = v2[13];
    v24 = v2[10];
    v23 = v2[11];

    (*(v23 + 8))(v22, v24);
    v31 = *(v6 + 8);
    v32 = OUTLINED_FUNCTION_39();
    v33(v32);
    (*(v5 + 8))(v50, v0);
    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_23(v19, v20);
  v28(v27);
  OUTLINED_FUNCTION_39();
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v29, v30);
  sub_24381CA74();
  v39 = OUTLINED_FUNCTION_56();
  v40(v39);
  v41 = OUTLINED_FUNCTION_6();
  v42(v41);
  v43 = *(MEMORY[0x277D858B8] + 4);
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_17(v44);
  *v45 = v46;
  OUTLINED_FUNCTION_3(v45);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822005A8](v47);
}

uint64_t sub_2437FDD04()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];

  v5 = OUTLINED_FUNCTION_6();
  v6(v5);
  v7 = v0[2];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_12();

  return v11();
}

uint64_t sub_2437FDDE4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_41(v1, v2, v3);
  v4 = sub_24381C934();
  v0[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_48();
  v0[9] = swift_task_alloc();
  v8 = sub_24381C724();
  v0[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_48();
  v0[13] = swift_task_alloc();
  v12 = sub_24381C944();
  v0[14] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[15] = v13;
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_48();
  v0[17] = swift_task_alloc();
  v16 = sub_24381C8E4();
  v0[18] = v16;
  OUTLINED_FUNCTION_1(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_32();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D90, &qword_24381D750);
  OUTLINED_FUNCTION_38(v20);
  v22 = *(v21 + 64);
  v0[21] = OUTLINED_FUNCTION_32();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D98, &qword_24381D758);
  v0[22] = v23;
  OUTLINED_FUNCTION_1(v23);
  v0[23] = v24;
  v26 = *(v25 + 64);
  v0[24] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v27);
}

uint64_t sub_2437FE014()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 192);
  v2 = *(v0 + 24);
  v3 = sub_24381C634();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_24381C624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D38, &qword_24381D710);
  sub_24381CD34();
  *(v0 + 224) = *MEMORY[0x277CFA900];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_3(v8);

  return MEMORY[0x2822005A8](v10);
}

uint64_t sub_2437FE0F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FE1F0()
{
  OUTLINED_FUNCTION_53();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_21();
    v9(v8);
    v10 = OUTLINED_FUNCTION_52();
    v11(v10);
    (*(v5 + 104))(v3, *MEMORY[0x277CFA908], v4);
    sub_24381C924();
    OUTLINED_FUNCTION_0();
    sub_2437FF8F0(v12, v13);
    sub_24381CA74();
    v14 = v2[25];
    if (!v1)
    {
      v25 = OUTLINED_FUNCTION_27();
      v26(v25);

      OUTLINED_FUNCTION_12();
      goto LABEL_10;
    }

    (*(v2[15] + 8))(v2[16], v2[14]);

LABEL_9:
    v34 = v2[24];
    v35 = v2[20];
    v36 = v2[21];
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_12();
LABEL_10:
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X1, X16 }
  }

  v15 = OUTLINED_FUNCTION_25();
  v16(v15);
  v17 = OUTLINED_FUNCTION_51();
  v18(v17);
  sub_2437FF8F0(&qword_27ED92DA0, MEMORY[0x277CFA8D0]);
  v19 = sub_24381C614();
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v21 = v2[18];
    v22 = v2[13];
    v24 = v2[10];
    v23 = v2[11];

    (*(v23 + 8))(v22, v24);
    v31 = *(v6 + 8);
    v32 = OUTLINED_FUNCTION_39();
    v33(v32);
    (*(v5 + 8))(v49, v0);
    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_23(v19, v20);
  v28(v27);
  OUTLINED_FUNCTION_39();
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v29, v30);
  sub_24381CA74();
  v39 = OUTLINED_FUNCTION_56();
  v40(v39);
  v41 = OUTLINED_FUNCTION_6();
  v42(v41);
  v43 = *(MEMORY[0x277D858B8] + 4);
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_17(v44);
  *v45 = v46;
  OUTLINED_FUNCTION_3(v45);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_2437FE578()
{
  OUTLINED_FUNCTION_13();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  OUTLINED_FUNCTION_41(v5, v6, v7);
  v8 = sub_24381C6E4();
  v1[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C894();
  v1[13] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_32();
  v16 = sub_24381C8D4();
  v1[16] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_2437FE6BC()
{
  OUTLINED_FUNCTION_54();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  v6 = *(v2 + 88);
  v7 = OUTLINED_FUNCTION_18();
  v9 = v8(v7);
  if (v9 != *MEMORY[0x277CFA898] && v9 != *MEMORY[0x277CFA8A0])
  {
    return OUTLINED_FUNCTION_35();
  }

  v11 = v0[18];
  v12 = (*(v0[17] + 96))(v11, v0[16]);
  if (*(*v11 + 16))
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    v17 = OUTLINED_FUNCTION_36(v0[14]);
    v18(v17);

    v0[19] = sub_24381C814();
    v0[20] = v19;
    sub_24381C844();
    v20 = *(v16 + 16);
    v0[21] = v20;
    v21 = (*v20 + 136) & 0xFFFFFFFFFFFFLL | 0x1068000000000000;
    v0[22] = *(*v20 + 136);
    v0[23] = v21;
    v12 = sub_2437FE83C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2437FE83C()
{
  OUTLINED_FUNCTION_37();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  type metadata accessor for Downloader();
  v7 = OUTLINED_FUNCTION_47();
  v2(v7);
  v0[24] = v5;
  v8 = v0[20];

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FE8F8()
{
  OUTLINED_FUNCTION_13();
  v0[25] = v0[2];
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2437FE994;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  return sub_2438152B0();
}

uint64_t sub_2437FE994()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2437FEA8C()
{
  OUTLINED_FUNCTION_37();
  v1 = v0[25];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];

  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_39();
  v11(v10);
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_57();
  v14(v13);

  OUTLINED_FUNCTION_12();

  return v15();
}

uint64_t sub_2437FEB50()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v4 = OUTLINED_FUNCTION_6();
  v5(v4);
  v6 = v0[24];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  OUTLINED_FUNCTION_12();

  return v10();
}

uint64_t sub_2437FEBF8()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  v8 = OUTLINED_FUNCTION_26();
  v9(v8);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_18();
  v12(v11);
  v13 = v0[27];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[12];

  OUTLINED_FUNCTION_12();

  return v17();
}

uint64_t sub_2437FECB4(uint64_t a1)
{
  v2 = sub_24381C934();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  v10 = v9 - v8;
  v11 = sub_24381C724();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v19 = v18 - v17;
  v20 = sub_24381C944();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_42();
  v28 = v27 - v26;
  (*(v14 + 16))(v19, a1, v11);
  (*(v5 + 104))(v10, *MEMORY[0x277CFA8F8], v2);
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v29, v30);
  sub_24381CA74();
  return (*(v23 + 8))(v28, v20);
}

uint64_t sub_2437FEF04()
{
  type metadata accessor for Dispatcher();
  v0 = swift_allocObject();
  type metadata accessor for ProcessorFactory();
  result = sub_24381AD88();
  *(v0 + 16) = result;
  qword_27ED93248 = v0;
  return result;
}

uint64_t sub_2437FEF50()
{
  v0 = swift_allocObject();
  type metadata accessor for ProcessorFactory();
  *(v0 + 16) = sub_24381AD88();
  return v0;
}

uint64_t static Dispatcher.shared.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_2437FF044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
}

unint64_t sub_2437FF074()
{
  result = qword_27ED931B0[0];
  if (!qword_27ED931B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED931B0);
  }

  return result;
}

uint64_t Dispatcher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Dispatcher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2437FF168(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2437FF1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2437FF264()
{
  v1 = sub_24381C914();
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 32, v4 | 7);
}

uint64_t sub_2437FF338()
{
  OUTLINED_FUNCTION_37();
  v2 = sub_24381C914();
  OUTLINED_FUNCTION_1(v2);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_2437FB6F4;

  return sub_2437FB61C();
}

uint64_t sub_2437FF45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437FF4F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2437FF5EC;

  return v7(a1);
}

uint64_t sub_2437FF5EC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_12();

  return v5();
}

uint64_t sub_2437FF6D0()
{
  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31(v4);

  return v7(v6);
}

uint64_t sub_2437FF768()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2437FF7A0()
{
  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31(v4);

  return v7(v6);
}

uint64_t sub_2437FF838(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2437FF890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2437FF8F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2437FF948(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437FF968(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_27ED92DA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED92DA8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2()
{
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v11 = v0[20];
  v12 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v13 = v0[12];
  v14 = v0[11];
  v8 = v0[7];
  v9 = v0[2];

  return sub_24381C8F4();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[24];
  result = v2[21];
  v5 = v2[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v11 = v0[20];
  v12 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v13 = v0[12];
  v14 = v0[11];
  v8 = v0[7];
  v9 = v0[2];

  return sub_24381C8F4();
}

uint64_t OUTLINED_FUNCTION_11()
{
  result = v0[25];
  v6 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  return result;
}

uint64_t OUTLINED_FUNCTION_12()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{
  *(a1 + 8) = sub_2437FC330;
  v2 = v1[15];
  result = v1[11];
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[3];
  v8 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_16()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  v4 = *(v3 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21()
{
  result = v0[24];
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v12 = v0[5];
  v13 = v0[14];
  v10 = v0[4];
  v11 = *(v0[23] + 8);
  return result;
}

void *OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 136);
  v6 = *(v2 + 104);
  v5 = *(v2 + 112);
  v7 = *(v2 + 72);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 40);
  *v7 = a1;
  v7[1] = a2;
  v11 = *(v9 + 104);
  return v7;
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[4];
  v6 = *(v0[19] + 32);
  return v0[20];
}

uint64_t OUTLINED_FUNCTION_27()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  v11 = v0[8];
  v9 = *(v0[15] + 8);
  return v0[16];
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_24381CEF4();
}

uint64_t OUTLINED_FUNCTION_36@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 80);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_46()
{
  v3 = *(v2 + 32);
  v4 = *(v1 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_2437FF838(v1, v0);
}

uint64_t OUTLINED_FUNCTION_50()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_53()
{
  result = __swift_getEnumTagSinglePayload(v0[21], 1, v0[18]);
  v2 = v0[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_56()
{
  v2 = v0[19];
  v1 = v0[20];
  result = v0[17];
  v4 = v0[18];
  v5 = v0[14];
  v6 = *(v0[15] + 8);
  return result;
}

uint64_t sub_2437FFFB4()
{
  v0 = swift_allocObject();
  sub_2437FFFEC();
  return v0;
}

void *sub_2437FFFEC()
{
  v0[2] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
  v0[4] = sub_24381CB24();
  return v0;
}

id sub_243800058(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = [v3 lock];
  v5 = *(v1 + 24);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v5 + 1;
    sub_2438000FC(a1, v6);
    swift_beginAccess();
    sub_243800160(v6, v5);
    swift_endAccess();
    [v3 unlock];
    return v5;
  }

  return result;
}

uint64_t sub_2438000FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243800160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_243800490(a1, v15);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_2438005CC(v15, a2);
    *v2 = v13;
  }

  else
  {
    sub_2438003D4(a1);
    v7 = *v2;
    v8 = sub_243800504(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v12 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
      sub_24381CEC4();
      sub_243800490((*(v14 + 56) + 40 * v10), v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
      sub_24381CEE4();
      *v3 = v14;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
    }

    return sub_2438003D4(v15);
  }

  return result;
}

id sub_24380029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  [v5 lock];
  OUTLINED_FUNCTION_0_0();
  sub_243800368(a1, *(v2 + 32), &v7);
  if (v8)
  {
    sub_243800490(&v7, a2);
    swift_endAccess();
  }

  else
  {
    sub_2438003D4(&v7);
    swift_endAccess();
    sub_24380043C();
    swift_allocError();
    swift_willThrow();
  }

  return [v5 unlock];
}

double sub_243800368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_243800504(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_2438000FC(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2438003D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB8, &qword_24381DE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24380043C()
{
  result = qword_27ED92DC0;
  if (!qword_27ED92DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92DC0);
  }

  return result;
}

uint64_t sub_243800490(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2438004A8()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_2438004D0()
{
  sub_2438004A8();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_243800504(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24381CFB4();

  return sub_243800548(a1, v4);
}

unint64_t sub_243800548(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_2438005CC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_243800504(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_243800504(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (v14[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_243800490(a1, v15);
  }

  else
  {

    return sub_243800700(v9, a2, a1, v14);
  }
}

uint64_t sub_243800700(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_243800490(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_beginAccess();
}

uint64_t sub_2438007D8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800) - 8);
  v7 = OUTLINED_FUNCTION_2_0(v6);
  v8(v7);
  sub_243819CF4(a1);
  v9 = OUTLINED_FUNCTION_1_0();
  v10(v9);
  return v5;
}

uint64_t sub_24380091C()
{
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon22DownloadRequestContext_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_0_1(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_243800988()
{
  v0 = sub_243819D40();
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon22DownloadRequestContext_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for DownloadRequestContext()
{
  result = qword_27ED93250;
  if (!qword_27ED93250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243800A84()
{
  sub_243800B14();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243800B14()
{
  if (!qword_27ED92DD8)
  {
    type metadata accessor for Downloader.AssetDownloadResult();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v0 = sub_24381CD24();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED92DD8);
    }
  }
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

void sub_243800C10()
{
  OUTLINED_FUNCTION_36_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v1 = OUTLINED_FUNCTION_0_1(v38);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_76();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - v6;
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_58_0();
    sub_24380A00C(v9, v10, v11);
    v12 = v43;
    v14 = sub_24380AF24(v7);
    v15 = v7 + 64;
    v16 = v8 - 1;
    v34 = v7 + 64;
    v35 = v7;
    v17 = v36;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(v7 + 32))
      {
        if ((*(v15 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_16;
        }

        if (v13 != *(v7 + 36))
        {
          goto LABEL_17;
        }

        v40 = v13;
        v41 = v14 >> 6;
        v39 = v16;
        v42 = v12;
        v18 = v38;
        v19 = *(v38 + 48);
        v20 = *(v7 + 56);
        v21 = *(*(v7 + 48) + 8 * v14);
        v22 = sub_24381CA14();
        OUTLINED_FUNCTION_9(v22);
        v24 = v23;
        (*(v23 + 16))(&v17[v19], v20 + *(v25 + 72) * v14, v22);
        v26 = v37;
        *v37 = v21;
        v27 = *(v18 + 48);
        v12 = v42;
        (*(v24 + 32))(v26 + v27, &v17[v19], v22);
        sub_243800EC8();
        v29 = v28;
        sub_24380B1F4(v26, &qword_27ED92EC0, &qword_24381D9E0);
        v43 = v12;
        v31 = *(v12 + 16);
        v30 = *(v12 + 24);
        if (v31 >= v30 >> 1)
        {
          v33 = OUTLINED_FUNCTION_28_0(v30);
          sub_24380A00C(v33, v31 + 1, 1);
          v12 = v43;
        }

        *(v12 + 16) = v31 + 1;
        *(v12 + 8 * v31 + 32) = v29;
        v7 = v35;
        if (v14 >= -(-1 << *(v35 + 32)))
        {
          goto LABEL_18;
        }

        v15 = v34;
        if ((*(v34 + 8 * v41) & (1 << v14)) == 0)
        {
          goto LABEL_19;
        }

        if (v40 != *(v35 + 36))
        {
          goto LABEL_20;
        }

        v32 = sub_24381CE14();
        if (!v39)
        {
          goto LABEL_14;
        }

        v14 = v32;
        v13 = *(v7 + 36);
        v16 = v39 - 1;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_243800EC8()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v71 = v2;
  v3 = sub_24381C9A4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v63 = v5;
  v64 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v62 = v9 - v8;
  OUTLINED_FUNCTION_60();
  v10 = sub_24381C9F4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v65 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  sub_24381CA04();
  v20 = sub_24381C9E4();
  v22 = v21;
  v23 = *(v13 + 8);
  v23(v19, v10);
  v69 = v1;
  sub_24381CA04();
  v72 = sub_24381C9D4();
  v25 = v24;
  v67 = v23;
  v68 = v10;
  v23(v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  v70 = xmmword_24381D830;
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v27;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v71;
  sub_24381CB24();
  v28 = sub_2438013D8(v20, v22);
  v29 = v22;
  v66 = v20;
  if (v28)
  {
LABEL_7:
    v48 = v72;
    if (sub_2438013D8(v72, v25))
    {
      sub_2437FF838(v48, v25);
      sub_2437FF838(v20, v29);
LABEL_11:
      OUTLINED_FUNCTION_33_0();
      return;
    }

    v49 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
    v50 = swift_initStackObject();
    *(v50 + 16) = v70;
    if (*MEMORY[0x277D25418])
    {
      *(v50 + 32) = sub_24381CB84();
      *(v50 + 40) = v51;
      sub_24381CA04();
      v52 = sub_24381C9D4();
      v54 = v53;
      v67(v19, v68);
      *(v50 + 48) = v52;
      *(v50 + 56) = v54;
      v55 = sub_24381CB24();
      v56 = sub_243801690(v55);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_0();
      sub_24380948C(v56, v57, 0, v58, v59);
      sub_2437FF838(v72, v49);
      sub_2437FF838(v66, v29);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v61 = v25;
  v71 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED8, &qword_24381D9F8);
  v30 = swift_initStackObject();
  *(v30 + 16) = v70;
  if (!*MEMORY[0x277D25678])
  {
    goto LABEL_13;
  }

  *(v30 + 32) = sub_24381CB84();
  *(v30 + 40) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v32 + 32) = sub_24381CB84();
  *(v32 + 40) = v33;
  v34 = v65;
  sub_24381CA04();
  v35 = sub_24381C9E4();
  v37 = v36;
  v67(v34, v68);
  *(v32 + 48) = v35;
  *(v32 + 56) = v37;
  if (*MEMORY[0x277D254F8])
  {
    *(v32 + 64) = sub_24381CB84();
    *(v32 + 72) = v38;
    v39 = v62;
    sub_24381C9C4();
    v40 = sub_24381C984();
    v42 = v41;
    (*(v63 + 8))(v39, v64);
    *(v32 + 80) = v40;
    *(v32 + 88) = v42;
    *(v30 + 48) = sub_24381CB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    v43 = sub_24381CB24();
    v44 = sub_24380143C(v43);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_0();
    sub_24380948C(v44, v45, 0, v46, v47);
    v29 = v71;
    v20 = v66;
    v25 = v61;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

BOOL sub_2438013D8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

unint64_t sub_24380143C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    swift_dynamicCast();
    sub_24380B0CC(&v25, v27);
    sub_24380B0CC(v27, v28);
    sub_24380B0CC(v28, &v26);
    result = sub_24380939C(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = sub_24380B0CC(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_24380B0CC(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_243801690(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + v11);

    sub_24380AF70(v24, *(&v24 + 1));
    swift_dynamicCast();
    sub_24380B0CC(&v25, v27);
    sub_24380B0CC(v27, v28);
    sub_24380B0CC(v28, &v26);
    result = sub_24380939C(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = sub_24380B0CC(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_24380B0CC(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2438018E0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a1;
  v53 = a2;
  v51 = sub_24381CA14();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24381C784();
  v10 = *(v50 - 8);
  v11 = *(v10 + 8);
  MEMORY[0x28223BE20](v50);
  v58 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v49 = v9;
    v59 = MEMORY[0x277D84F90];
    sub_24380A194();
    v15 = v59;
    v16 = sub_24380AF24(a3);
    v19 = 0;
    v20 = a3 + 64;
    v47 = v6 + 16;
    v48 = (v6 + 8);
    v45 = a3;
    v46 = v10 + 32;
    v41 = a3 + 72;
    v42 = v13;
    v21 = v6;
    v43 = v6;
    v44 = a3 + 64;
    if ((v16 & 0x8000000000000000) == 0)
    {
      while (v16 < 1 << *(a3 + 32))
      {
        v22 = v16 >> 6;
        v23 = 1 << v16;
        if ((*(v20 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a3 + 36) != v17)
        {
          goto LABEL_26;
        }

        v54 = v18;
        v57 = v17;
        v55 = v19;
        v24 = v10;
        v25 = v16;
        v26 = *(a3 + 56) + *(v21 + 72) * v16;
        v10 = v49;
        a3 = v51;
        (*(v21 + 16))(v49, v26, v51);
        v52(v10);
        v56 = v4;
        if (v4)
        {
          goto LABEL_30;
        }

        (*v48)(v10, a3);
        v27 = v15;
        v59 = v15;
        v28 = *(v15 + 16);
        if (v28 >= *(v15 + 24) >> 1)
        {
          sub_24380A194();
          v27 = v59;
        }

        *(v27 + 16) = v28 + 1;
        v10 = v24;
        v15 = v27;
        (*(v24 + 4))(v27 + ((v24[80] + 32) & ~v24[80]) + *(v24 + 9) * v28, v58, v50);
        a3 = v45;
        v29 = 1 << *(v45 + 32);
        if (v25 >= v29)
        {
          goto LABEL_27;
        }

        v30 = v25;
        v20 = v44;
        v31 = *(v44 + 8 * v22);
        if ((v31 & v23) == 0)
        {
          goto LABEL_28;
        }

        if (*(v45 + 36) != v57)
        {
          goto LABEL_29;
        }

        v32 = v31 & (-2 << (v30 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v30 & 0x7FFFFFFFFFFFFFC0;
          v4 = v56;
          v33 = v42;
          v21 = v43;
        }

        else
        {
          v34 = v22 << 6;
          v35 = v22 + 1;
          v33 = v42;
          v36 = (v41 + 8 * v22);
          v4 = v56;
          while (v35 < (v29 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              v39 = v43;
              sub_24380AF64(v30, v57, v54 & 1);
              v21 = v39;
              v29 = __clz(__rbit64(v37)) + v34;
              goto LABEL_19;
            }
          }

          v40 = v43;
          sub_24380AF64(v30, v57, v54 & 1);
          v21 = v40;
        }

LABEL_19:
        v19 = v55 + 1;
        if (v55 + 1 == v33)
        {
          return v15;
        }

        v18 = 0;
        v17 = *(a3 + 36);
        v16 = v29;
        if (v29 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
LABEL_30:
    (*v48)(v10, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_243801D00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_243801D38()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93268);
  __swift_project_value_buffer(v0, qword_27ED93268);
  sub_24381C794();
  type metadata accessor for Uploader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F60, &qword_24381DA78);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_243801DDC(uint64_t a1)
{
  OUTLINED_FUNCTION_50_0();
  v2 = swift_allocObject();
  sub_243801E14(a1);
  return v2;
}

uint64_t sub_243801E14(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for Registerer();

  *(v1 + 24) = sub_24380C808(v2);
  return v1;
}

uint64_t sub_243801E68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F38, &qword_24381DA48);
    v1 = sub_24381CF14();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2438096C0(v2, 1, &v4);

  return v4;
}

void sub_243801F1C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v66 = sub_24381C714();
  v2 = OUTLINED_FUNCTION_9(v66);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_42();
  v65 = v8 - v7;
  OUTLINED_FUNCTION_60();
  v73 = sub_24381C9A4();
  v9 = OUTLINED_FUNCTION_9(v73);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v72 = v15 - v14;
  OUTLINED_FUNCTION_60();
  v71 = sub_24381CA14();
  v16 = OUTLINED_FUNCTION_9(v71);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v23 = v22 - v21;
  v24 = *(v1 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v64 = v4;
    v75 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_74();
    sub_24380A05C(v26, v27, v28);
    v29 = v75;
    v31 = *(v18 + 16);
    v30 = v18 + 16;
    v32 = v1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v69 = *(v30 + 56);
    v70 = v31;
    v67 = (v30 - 8);
    v68 = (v11 + 8);
    do
    {
      v33 = v29;
      v34 = v30;
      v70(v23, v32, v71);
      sub_24381C9C4();
      v35 = sub_24381C994();
      v37 = v36;
      (*v68)(v72, v73);
      (*v67)(v23, v71);
      v29 = v33;
      v76 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_24380A05C((v38 > 1), v39 + 1, 1);
        v29 = v76;
      }

      *(v29 + 16) = v40;
      v41 = v29 + 16 * v39;
      *(v41 + 32) = v35;
      *(v41 + 40) = v37;
      v32 += v69;
      --v24;
      v30 = v34;
    }

    while (v24);
    v74 = v29;
    v25 = MEMORY[0x277D84F90];
    v4 = v64;
LABEL_9:
    v42 = OUTLINED_FUNCTION_59();
    sub_24380A02C(v42, v40, 0);
    v43 = v25;
    v44 = (v4 + 8);
    v45 = (v74 + 40);
    while (2)
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = *v45 >> 62;
      v45 += 2;
      v49 = v25;
      switch(v48)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(v46), v46))
          {
            goto LABEL_27;
          }

          v50 = HIDWORD(v46) - v46;
LABEL_16:
          v53 = OUTLINED_FUNCTION_37_0();
          sub_24380AF70(v53, v54);
          if (v50)
          {
LABEL_17:
            if (v50 < 1)
            {
              v49 = MEMORY[0x277D84F90];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
              v49 = swift_allocObject();
              v55 = _swift_stdlib_malloc_size(v49);
              v49[2] = v50;
              v49[3] = 2 * v55 - 64;
            }

            v56 = sub_24381C6F4();
            (*v44)(v65, v66);
            if (v56 != v50)
            {
              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              JUMPOUT(0x24380238CLL);
            }
          }

          else
          {
LABEL_12:
            v49 = MEMORY[0x277D84F90];
          }

LABEL_21:
          v57 = v49[2];
          v58 = swift_slowAlloc();
          memcpy(v58, v49 + 4, v57);
          v59 = OUTLINED_FUNCTION_37_0();
          sub_2437FF838(v59, v60);

          v62 = v43[2];
          v61 = v43[3];
          if (v62 >= v61 >> 1)
          {
            v63 = OUTLINED_FUNCTION_28_0(v61);
            sub_24380A02C(v63, v62 + 1, 1);
          }

          v43[2] = v62 + 1;
          v43[v62 + 4] = v58;
          --v40;
          v25 = MEMORY[0x277D84F90];
          if (!v40)
          {
            goto LABEL_24;
          }

          continue;
        case 2uLL:
          v52 = *(v46 + 16);
          v51 = *(v46 + 24);
          v50 = v51 - v52;
          if (!__OFSUB__(v51, v52))
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        case 3uLL:
          goto LABEL_21;
        default:
          v50 = BYTE6(v47);
          if (!BYTE6(v47))
          {
            goto LABEL_12;
          }

          goto LABEL_17;
      }
    }
  }

  v40 = *(MEMORY[0x277D84F90] + 16);
  if (v40)
  {
    v74 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_24:

  OUTLINED_FUNCTION_33_0();
}

void *sub_24380239C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24380877C(*(a1 + 16), 0);
  v4 = sub_24380ACC0(&v6, v3 + 4, v2, a1);
  sub_24380B0C4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_24380242C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v52 = sub_24381CBA4();
  v2 = OUTLINED_FUNCTION_9(v52);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_60();
  v7 = sub_24381C754();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v15 = v14 - v13;
  v16 = *(v1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v54 = v4;
    v57 = MEMORY[0x277D84F90];
    v18 = OUTLINED_FUNCTION_59();
    sub_24380A0AC(v18, v16, 0);
    v19 = v57;
    v20 = v1 + 32;
    v21 = (v10 + 8);
    do
    {
      sub_2438000FC(v20, v56);
      __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      sub_24381C764();
      v22 = sub_24381C734();
      v24 = v23;
      (*v21)(v15, v7);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v57 = v19;
      v26 = v19[2];
      v25 = v19[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_24380A0AC((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
        v19 = v57;
      }

      v19[2] = v27;
      v28 = &v19[2 * v26];
      v28[4] = v22;
      v28[5] = v24;
      v20 += 40;
      --v16;
    }

    while (v16);
    v4 = v54;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (!v27)
    {
LABEL_21:

      OUTLINED_FUNCTION_33_0();
      return;
    }

    v19 = MEMORY[0x277D84F90];
  }

  v55 = v27;
  v57 = v17;
  v29 = OUTLINED_FUNCTION_59();
  sub_24380A07C(v29, v30, 0);
  v31 = 0;
  v32 = v57;
  v53 = (v4 + 8);
  v33 = v19 + 5;
  while (v31 < v19[2])
  {
    v34 = *v33;
    v56[0] = *(v33 - 1);
    v56[1] = v34;
    sub_24381CB94();
    sub_24380B0DC();
    v35 = sub_24381CDE4();
    v36 = *v53;
    v37 = OUTLINED_FUNCTION_57_0();
    v38(v37);
    if (v35)
    {
      v39 = *(v35 + 16);
      v40 = swift_slowAlloc();
      memcpy(v40, (v35 + 32), v39);
    }

    else
    {
      if (_MergedGlobals_0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v41 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v41, qword_27ED93268);

      v42 = sub_24381CA44();
      v43 = sub_24381CD84();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_42_0();
        v56[0] = OUTLINED_FUNCTION_63();
        *v44 = 136315138;
        v45 = OUTLINED_FUNCTION_67();
        *(v44 + 4) = sub_243808908(v45, v46, v47);
        _os_log_impl(&dword_2437FA000, v42, v43, "unable to convert token %s to C string.", v44, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_35_0();
      }

      v40 = 0;
    }

    v57 = v32;
    v49 = v32[2];
    v48 = v32[3];
    v50 = v55;
    if (v49 >= v48 >> 1)
    {
      v51 = OUTLINED_FUNCTION_28_0(v48);
      sub_24380A07C(v51, v49 + 1, 1);
      v50 = v55;
      v32 = v57;
    }

    ++v31;
    v32[2] = v49 + 1;
    v32[v49 + 4] = v40;
    v33 += 2;
    if (v50 == v31)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_243802854()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_0();
  if (v5)
  {
    v10 = *v5;
    if (v1 && (objc_opt_self(), OUTLINED_FUNCTION_45_0(), swift_dynamicCastObjCClass()))
    {

      sub_24381CB04();
    }

    else
    {
    }

    sub_24380043C();
    v22 = OUTLINED_FUNCTION_49_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v11 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v11, qword_27ED93268);
    v12 = sub_24381CA44();
    v13 = sub_24381CD84();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_79(&dword_2437FA000, v14, v15, "mmcs engine returns nil results");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v16, qword_27ED93268);
    v21 = sub_24381CA44();
    v17 = sub_24381CD84();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = OUTLINED_FUNCTION_42_0();
      *v18 = 134349056;
      *(v18 + 4) = v3;
      _os_log_impl(&dword_2437FA000, v21, v17, "context for uploading asset with tracking number %{public}llu can not be loaded", v18, 0xCu);
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }
}

double sub_2438033D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_24380939C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_243808E78(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_243803434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  OUTLINED_FUNCTION_25_0();
  sub_243802854();
}

void sub_2438034A4()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F68, &qword_24381DA80);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_0();
  if (v5)
  {
    v10 = *v5;
    if (v1 && (objc_opt_self(), OUTLINED_FUNCTION_45_0(), swift_dynamicCastObjCClass()))
    {

      sub_24381CB04();
    }

    else
    {
    }

    sub_24380043C();
    v22 = OUTLINED_FUNCTION_49_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v11 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v11, qword_27ED93268);
    v12 = sub_24381CA44();
    v13 = sub_24381CD84();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_79(&dword_2437FA000, v14, v15, "mmcs engine returns nil results");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v16, qword_27ED93268);
    v21 = sub_24381CA44();
    v17 = sub_24381CD84();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = OUTLINED_FUNCTION_42_0();
      *v18 = 134349056;
      *(v18 + 4) = v3;
      _os_log_impl(&dword_2437FA000, v21, v17, "context for uploading asset with tracking number %{public}llu can not be loaded", v18, 0xCu);
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }
}

void sub_243803E44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  OUTLINED_FUNCTION_25_0();
  sub_2438034A4();
}

uint64_t sub_243803EA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_24380AF24(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_24380AC04(v7, result, v5, 0, a1);
    return sub_243800490(v7, a2 + 8);
  }

  return result;
}

uint64_t sub_243803F48()
{
  OUTLINED_FUNCTION_13();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[25] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  OUTLINED_FUNCTION_38(v5);
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = sub_24381CA14();
  v1[28] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[29] = v9;
  v11 = *(v10 + 64);
  v1[30] = OUTLINED_FUNCTION_32();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E68, &unk_24381DE20);
  OUTLINED_FUNCTION_38(v12);
  v14 = *(v13 + 64);
  v1[31] = OUTLINED_FUNCTION_32();
  v15 = sub_24381C754();
  v1[32] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[33] = v16;
  v18 = *(v17 + 64);
  v1[34] = OUTLINED_FUNCTION_32();
  v19 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2438040D0()
{
  v102 = v0;
  v1 = v0[22];
  v0[35] = *(*(*(v0[24] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

  v3 = sub_24380239C(v2);
  v4 = v3[2];
  if (v4)
  {
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_74();
    v8 = sub_24380A174(v5, v6, v7);
    v16 = 4;
    v17 = *&v101[0];
    v18 = v97;
    while (1)
    {
      v19 = v3[v16];
      if (v19 < 0)
      {
        break;
      }

      *&v101[0] = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v8 = sub_24380A174((v20 > 1), v21 + 1, 1);
        v18 = v97;
      }

      *(v17 + 16) = v21 + 1;
      *(v17 + 8 * v21 + 32) = v19;
      ++v16;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = MEMORY[0x277D84F90];
  v18 = v97;
LABEL_9:
  v95 = v18 + 136;
  *(v18 + 136) = v17;
  v22 = *(v17 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v100 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_74();
    v8 = sub_24380A154(v24, v25, v26);
    v27 = 0;
    v23 = v100;
    do
    {
      if (v27 >= *(v17 + 16))
      {
        goto LABEL_51;
      }

      v28 = v17 + 8 * v27;
      v8 = *(v28 + 32);
      if (v8 < 0)
      {
        goto LABEL_52;
      }

      *&v101[0] = *(v28 + 32);
      v8 = sub_24380029C(v8, v101 + 8);
      v30 = *(v100 + 16);
      v29 = *(v100 + 24);
      if (v30 >= v29 >> 1)
      {
        v8 = sub_24380A154((v29 > 1), v30 + 1, 1);
      }

      ++v27;
      *(v100 + 16) = v30 + 1;
      v31 = (v100 + 48 * v30);
      v32 = v101[0];
      v33 = v101[2];
      v31[3] = v101[1];
      v31[4] = v33;
      v31[2] = v32;
    }

    while (v22 != v27);

    v18 = v97;
  }

  v34 = sub_243801E68(v23);
  *(v18 + 288) = v34;
  sub_243803EA0(v34, (v18 + 16));
  v36 = *(v18 + 248);
  v35 = *(v18 + 256);
  if (!*(v18 + 48))
  {

    sub_24380B1F4(v18 + 16, &qword_27ED92E70, &qword_24381D990);
    v43 = OUTLINED_FUNCTION_72();
    __swift_storeEnumTagSinglePayload(v43, v44, 1, v35);
LABEL_21:
    sub_24380B1F4(*(v18 + 248), &qword_27ED92E68, &unk_24381DE20);
    sub_24380043C();
    OUTLINED_FUNCTION_49_0();
    swift_willThrow();

    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v18 + 56);
  __swift_project_boxed_opaque_existential_1((v18 + 24), *(v18 + 48));
  OUTLINED_FUNCTION_37_0();
  sub_24381C764();
  v18 = v97;
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  __swift_destroy_boxed_opaque_existential_1((v97 + 24));
  v41 = OUTLINED_FUNCTION_72();
  if (__swift_getEnumTagSinglePayload(v41, v42, v35) == 1)
  {

    goto LABEL_21;
  }

  (*(*(v97 + 264) + 32))(*(v97 + 272), *(v97 + 248), *(v97 + 256));
  v47 = *(v17 + 16);
  if (!v47)
  {
    sub_243801F1C();
    v71 = v70;

    *(v97 + 144) = v71;
    v66 = v97;
    v62 = v97 + 144;
LABEL_40:
    v72 = v34;
    v73 = (v66 + 152);
    v74 = v66 + 160;
    sub_24380242C();
    v76 = v75;

    *v73 = v76;
    v77 = MEMORY[0x277D84F90];
    if (v47)
    {
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_58_0();
      sub_24380A0CC(v78, v79, v80);
      v77 = *&v101[0];
      v81 = *(*&v101[0] + 16);
      v82 = v97;
      do
      {
        *&v101[0] = v77;
        v83 = *(v77 + 24);
        if (v81 >= v83 >> 1)
        {
          sub_24380A0CC((v83 > 1), v81 + 1, 1);
          v82 = v97;
          v77 = *&v101[0];
        }

        *(v77 + 16) = v81 + 1;
        *(v77 + 4 * v81++ + 32) = 1;
        --v47;
      }

      while (v47);
    }

    else
    {
      v82 = v97;
    }

    v84 = *(v82 + 272);
    v85 = *(v82 + 216);
    v86 = *(v82 + 176);
    *(v82 + 160) = v77;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
    *(v82 + 296) = v87;
    v99 = *(v82 + 184);
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v87);
    v88 = v82;
    v89 = swift_task_alloc();
    *(v88 + 304) = v89;
    v89[1].i64[0] = v85;
    v89[1].i64[1] = v72;
    v89[2].i64[0] = v62;
    v89[2].i64[1] = v73;
    v89[3] = vextq_s8(v99, v99, 8uLL);
    v89[4].i64[0] = v84;
    v89[4].i64[1] = v86;
    v89[5].i64[0] = v95;
    v89[5].i64[1] = v74;
    v90 = *(MEMORY[0x277D85A40] + 4);
    v91 = swift_task_alloc();
    *(v88 + 312) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E78, &qword_24381D998);
    *v91 = v88;
    v91[1] = sub_2438048C4;
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77();

    return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v94 = v34;
  v48 = *(v97 + 232);
  v49 = *(v97 + 176);
  OUTLINED_FUNCTION_21_0();
  v96 = v47;
  OUTLINED_FUNCTION_58_0();
  sub_24380A10C();
  v50 = v97;
  v51 = 0;
  v52 = *&v101[0];
  v98 = v17 + 32;
  while (1)
  {
    v8 = *(v98 + 8 * v51);
    if (v8 < 0)
    {
      break;
    }

    if (!*(v49 + 16))
    {
      goto LABEL_54;
    }

    v53 = v50[22];
    v8 = sub_243800504(v8);
    if ((v9 & 1) == 0)
    {
      goto LABEL_55;
    }

    v54 = v49;
    v55 = *(v48 + 72);
    (*(v48 + 16))(v50[30], *(v49 + 56) + v55 * v8, v50[28]);
    v57 = *(*&v101[0] + 16);
    v56 = *(*&v101[0] + 24);
    if (v57 >= v56 >> 1)
    {
      OUTLINED_FUNCTION_28_0(v56);
      sub_24380A10C();
      v50 = v97;
    }

    v58 = v50[30];
    v59 = v50[28];
    ++v51;
    *(*&v101[0] + 16) = v57 + 1;
    (*(v48 + 32))(*&v101[0] + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v57 * v55, v58, v59);
    v49 = v54;
    if (v96 == v51)
    {
      sub_243801F1C();
      v61 = v60;

      v62 = v97 + 144;
      *(v97 + 144) = v61;
      OUTLINED_FUNCTION_21_0();
      v47 = v96;
      OUTLINED_FUNCTION_58_0();
      v8 = sub_24380A0EC(v63, v64, v65);
      v66 = v97;
      v67 = 0;
      while (v67 < *(v17 + 16))
      {
        v8 = *(v98 + 8 * v67);
        if (v8 < 0)
        {
          goto LABEL_57;
        }

        sub_24380029C(v8, v66 + 64);
        *&v101[0] = v52;
        v69 = *(v52 + 16);
        v68 = *(v52 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_24380A0EC((v68 > 1), v69 + 1, 1);
        }

        ++v67;
        *(v52 + 16) = v69 + 1;
        v66 = v97;
        v8 = sub_243800490((v97 + 64), v52 + 40 * v69 + 32);
        if (v96 == v67)
        {
          v34 = v94;
          goto LABEL_40;
        }
      }

      goto LABEL_56;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2438048C4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    v9 = *(v3 + 304);
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2438049C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = v16[37];
  v48 = v16[14];
  v49 = v16[13];
  v46 = v16[16];
  v47 = v16[15];
  sub_24380B130(v16[27], v16[26], &qword_27ED92E60, &unk_24381D980);
  v18 = OUTLINED_FUNCTION_72();
  result = __swift_getEnumTagSinglePayload(v18, v19, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = v16[36];
    v22 = v16[37];
    v24 = v16[34];
    v23 = v16[35];
    v25 = v16[32];
    v26 = v16[33];
    v27 = v16[31];
    v45 = v16[30];
    v28 = v16[26];
    v29 = v16[27];
    v30 = v16[21];

    OUTLINED_FUNCTION_15_0(v22);
    (*(v31 + 32))(v30, v28, v22);
    sub_24380B1F4(v29, &qword_27ED92E60, &unk_24381D980);
    v32 = v16[20];

    v33 = v16[19];

    v34 = v16[18];

    (*(v26 + 8))(v24, v25);
    v35 = v16[17];

    v36 = v16[1];
    OUTLINED_FUNCTION_43();

    return v42(v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a14, a15, a16);
  }

  return result;
}

uint64_t sub_243804B48()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[27];

  sub_24380B1F4(v7, &qword_27ED92E60, &unk_24381D980);
  v8 = v0[20];

  v9 = v0[19];

  v10 = v0[18];

  (*(v5 + 8))(v4, v6);
  v11 = v0[40];
  OUTLINED_FUNCTION_78();

  OUTLINED_FUNCTION_12();

  return v12();
}

void sub_243804C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_0();
  v54 = v22;
  v55 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v56 = v32;
  v34 = v33;
  v53 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E80, &unk_24381D9A0);
  OUTLINED_FUNCTION_9(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v53 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  OUTLINED_FUNCTION_38(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v53 - v47;
  v57 = v31;
  v58 = v34;
  v59 = v29;
  v60 = v27;
  v61 = v25;
  v62 = v54;
  v63 = v55;
  v64 = v53;
  v65 = a22;
  (*(v37 + 104))(v42, *MEMORY[0x277D858A0], v35);
  sub_24381CD54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_24380B054(v48, v56);
  OUTLINED_FUNCTION_33_0();
}

void sub_243804DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, void *a23)
{
  OUTLINED_FUNCTION_36_0();
  v79 = v24;
  v78 = v25;
  v77 = v26;
  v76 = v27;
  v75 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_9(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v38);
  v40 = v74 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  OUTLINED_FUNCTION_38(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_52_0();
  type metadata accessor for UploadRequestContext();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  OUTLINED_FUNCTION_0_1(v45);
  (*(v46 + 16))(v23, v30, v45);
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v45);
  v50 = *(v35 + 16);
  v74[2] = v32;
  v74[1] = v33;
  v50(v40, v32, v33);

  v52 = sub_243819F10(v51, v23, v40);
  v77 = *(*(v77 + 16) + 32);
  v78 = sub_24381C6A4();
  sub_24381C744();
  v53 = sub_24381CB74();

  v79 = v52;
  v74[3] = *(v52 + 16);
  type metadata accessor for Uploader.OptionsBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = a21;
  *(inited + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_24381D840;
  if (*MEMORY[0x277D25598])
  {
    *(v55 + 32) = sub_24381CB84();
    *(v55 + 40) = v56;
    sub_243800C10();
    v58 = v57;
    *(v55 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
    *(v55 + 48) = v58;
    v59 = sub_24381A61C();
    v61 = *v59;
    v60 = v59[1];
    *(v55 + 80) = v61;
    *(v55 + 88) = v60;
    LOBYTE(v61) = *(inited + 24);
    *(v55 + 120) = MEMORY[0x277D839B0];
    *(v55 + 96) = v61;

    sub_24381CB24();
    swift_setDeallocating();
    v62 = *(inited + 16);

    v63 = sub_24381CAF4();

    v64 = *(a21 + 16);
    v65 = *a22;

    v66 = v75;
    sub_243808140(0, &qword_27ED92EA8, &qword_24381DE50);
    v67 = *v66;

    v68 = v76;
    sub_243808140(0, &qword_27ED92EA0, &unk_24381D9C0);
    v73 = *a23 + 32;
    v72 = *v68 + 32;
    v69 = v78;
    LODWORD(v64) = MMCSPutItems();

    if (!v64)
    {
      sub_24380043C();
      v80 = OUTLINED_FUNCTION_49_0();
      sub_24381CD14();
    }

    v70 = OUTLINED_FUNCTION_56_0();
    sub_243805244(v70, v71);

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243805244(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = *result;

    v6 = 32;
    do
    {
      if (*(v3 + v6))
      {
        OUTLINED_FUNCTION_35_0();
      }

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = *a2;
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = 32;
    do
    {
      if (*(v7 + v9))
      {
        OUTLINED_FUNCTION_35_0();
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2438052F8()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE8, &unk_24381D8E0);
  v1[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_32();
  v8 = sub_24381C754();
  v1[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C6E4();
  v1[12] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_32();
  v16 = sub_24381CCD4();
  v1[15] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_32();
  v20 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v20);
}

void sub_2438054B8()
{
  v34 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24381CA64();
  v0[18] = __swift_project_value_buffer(v2, qword_27ED93268);

  v3 = sub_24381CA44();
  v4 = sub_24381CD94();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_24381C804();
    v11 = MEMORY[0x245D40CE0](v8, v10);
    v13 = sub_243808908(v11, v12, &v33);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_24381CCE4();
    sub_24380B2B0(&qword_27ED92DF0, MEMORY[0x277D85720]);
    sub_24381CF24();
    (*(v6 + 8))(v5, v7);
    v14 = OUTLINED_FUNCTION_67();
    v17 = sub_243808908(v14, v15, v16);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2437FA000, v3, v4, "processing stream %s with priority %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_14_0();
  }

  if (*(v0[3] + 16))
  {
    v18 = v0[14];
    v19 = v0[11];
    v20 = *(sub_24381C804() - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    sub_24381C7C4();
    sub_24381C7A4();

    v22 = sub_24381CA44();
    v23 = sub_24381CD94();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[3];
      v25 = OUTLINED_FUNCTION_42_0();
      v33 = OUTLINED_FUNCTION_63();
      *v25 = 136315138;
      v26 = OUTLINED_FUNCTION_56_0();
      v27 = MEMORY[0x245D40CE0](v26);
      v29 = sub_243808908(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2437FA000, v22, v23, "start registering assets with requests %s", v25, 0xCu);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_27_0();
    }

    v30 = *(v0[4] + 24);
    v31 = swift_task_alloc();
    v0[19] = v31;
    *v31 = v0;
    v31[1] = sub_24380584C;
    v32 = v0[3];

    sub_24380DA54();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24380584C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243805950()
{
  v29 = v0;
  v1 = v0[20];
  v2 = v0[18];

  v3 = sub_24381CA44();
  v4 = sub_24381CD94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = OUTLINED_FUNCTION_42_0();
    v7 = OUTLINED_FUNCTION_63();
    v28 = v7;
    *v6 = 136315138;
    sub_24381CA14();
    v8 = sub_24381CB14();
    v10 = sub_243808908(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2437FA000, v3, v4, "start transfer assets %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35_0();
  }

  v11 = v0[20];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[11];
  v26 = v0[12];
  v27 = v0[17];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[5];
  v22 = v0[8];
  v23 = v0[6];
  v18 = v0[4];
  v24 = v0[2];
  v25 = v0[9];
  v19 = swift_task_alloc();
  v19[2] = v18;
  v19[3] = v11;
  v19[4] = v12;
  v19[5] = v14;
  v19[6] = v17;
  sub_24381C8C4();
  (*(v16 + 104))(v22, *MEMORY[0x277D858A0], v23);
  sub_24381CD54();

  (*(v15 + 8))(v14, v25);
  (*(v13 + 8))(v12, v26);

  OUTLINED_FUNCTION_12();

  return v20();
}

uint64_t sub_243805BA4()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_12();
  v7 = v0[21];

  return v6();
}

void sub_243805C68()
{
  OUTLINED_FUNCTION_36_0();
  v42 = v0;
  v43 = v1;
  v37 = v2;
  v38 = v3;
  v40 = v4;
  v41 = v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_9(v45);
  v7 = v6;
  v39 = *(v8 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v9);
  v44 = &v32 - v10;
  OUTLINED_FUNCTION_60();
  v11 = sub_24381C754();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24381C6E4();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  OUTLINED_FUNCTION_38(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v21);
  v36 = &v32 - v22;
  sub_24381CCD4();
  v23 = OUTLINED_FUNCTION_72();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  (*(v15 + 16))(v17, v37, v14);
  (*(v12 + 16))(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v11);
  v32 = v7;
  (*(v7 + 16))(v44, v40, v45);
  v26 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v27 = (v16 + *(v12 + 80) + v26) & ~*(v12 + 80);
  v28 = (v13 + *(v7 + 80) + v27) & ~*(v7 + 80);
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v42;
  *(v30 + 4) = v41;
  *(v30 + 5) = v31;
  (*(v15 + 32))(&v30[v26], v17, v33);
  (*(v12 + 32))(&v30[v27], v35, v34);
  (*(v32 + 32))(&v30[v28], v44, v45);
  *&v30[v29] = v43;

  sub_2437FCB64(0, 0, v36, &unk_24381D908, v30);

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_243805FD4()
{
  OUTLINED_FUNCTION_28();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = sub_24381C954();
  v0[16] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[17] = v5;
  v7 = *(v6 + 64);
  v0[18] = OUTLINED_FUNCTION_32();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E08, &qword_24381D918);
  OUTLINED_FUNCTION_38(v8);
  v10 = *(v9 + 64);
  v0[19] = OUTLINED_FUNCTION_32();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E10, &qword_24381D920);
  v0[20] = v11;
  OUTLINED_FUNCTION_38(v11);
  v13 = *(v12 + 64);
  v0[21] = OUTLINED_FUNCTION_32();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E18, &qword_24381D928);
  v0[22] = v14;
  OUTLINED_FUNCTION_1(v14);
  v0[23] = v15;
  v17 = *(v16 + 64);
  v0[24] = OUTLINED_FUNCTION_32();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E20, &qword_24381D930);
  v0[25] = v18;
  OUTLINED_FUNCTION_1(v18);
  v0[26] = v19;
  v21 = *(v20 + 64);
  v0[27] = OUTLINED_FUNCTION_32();
  v22 = sub_24381C8C4();
  v0[28] = v22;
  OUTLINED_FUNCTION_1(v22);
  v0[29] = v23;
  v25 = *(v24 + 64);
  v0[30] = OUTLINED_FUNCTION_32();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E28, &qword_24381D938);
  v0[31] = v26;
  OUTLINED_FUNCTION_1(v26);
  v0[32] = v27;
  v29 = *(v28 + 64);
  v0[33] = OUTLINED_FUNCTION_32();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
  v0[34] = v30;
  OUTLINED_FUNCTION_1(v30);
  v0[35] = v31;
  v33 = *(v32 + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[38] = v34;
  *v34 = v35;
  v34[1] = sub_2438062F8;

  return sub_243803F48();
}

uint64_t sub_2438062F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 304);
  *v3 = *v1;
  v2[39] = v6;
  v2[40] = v7;
  v2[41] = v8;
  v2[42] = v9;
  v2[43] = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_243806404()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v31 = *(v0 + 264);
  v32 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 112);
  v30 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = swift_task_alloc();
  v9 = *(v0 + 312);
  v10 = *(v0 + 328);
  *(v8 + 16) = v6;
  *(v8 + 40) = v10;
  *(v8 + 24) = v9;
  v11 = sub_2438018E0(sub_243809244, v8, v7);

  *v3 = v11;
  v12 = *MEMORY[0x277CFA860];
  v13 = *(v5 + 104);
  *(v0 + 352) = v13;
  *(v0 + 360) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v3, v12, v4);

  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  sub_24381CD04();
  v14 = *(v2 + 8);
  *(v0 + 376) = v14;
  *(v0 + 384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v31, v32);
  sub_24381CA24();
  v13(v3, *MEMORY[0x277CFA878], v4);
  sub_24381CD04();
  v14(v31, v32);
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v15 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v15, qword_27ED93268);

  v16 = sub_24381CA44();
  v17 = sub_24381CD94();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_42_0();
    v34 = OUTLINED_FUNCTION_63();
    *v18 = 136315138;
    v19 = sub_24381C784();
    MEMORY[0x245D40CE0](v11, v19);

    v20 = OUTLINED_FUNCTION_57_0();
    v23 = sub_243808908(v20, v21, v22);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2437FA000, v16, v17, "send back ephemeral assets %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 200);
  v33 = *(v0 + 192);
  v26 = *(v0 + 168);
  v27 = *(v0 + 104);
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  *(swift_allocObject() + 16) = v27;
  *(v0 + 392) = sub_24381CA14();
  sub_243809358(&qword_27ED92E40, &qword_27ED92E30, &qword_24381D940);

  sub_24381CEB4();
  MEMORY[0x245D40EE0](v25);
  sub_24381CCF4();
  sub_24381CE84();
  sub_24381CE94();
  *(v0 + 60) = *MEMORY[0x277CFA970];
  *(v0 + 440) = *MEMORY[0x277CFA868];
  v28 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v28);
}

uint64_t sub_243806824()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[24];
  v2 = v0[22];
  v0[50] = sub_24381CE74();
  sub_243809358(&qword_27ED92E48, &qword_27ED92E10, &qword_24381D920);
  v3 = *(MEMORY[0x277D856D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[51] = v4;
  *v4 = v5;
  v4[1] = sub_243806910;
  v6 = v0[20];
  OUTLINED_FUNCTION_14();

  return MEMORY[0x282200310]();
}

uint64_t sub_243806910()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (!v0)
  {
    (*(v3 + 400))();
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_243806A20()
{
  OUTLINED_FUNCTION_13();
  if (*(v0 + 56))
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 152), 1, 1, *(v0 + 392));
    v1 = OUTLINED_FUNCTION_7_0();

    return MEMORY[0x2822009F8](v1);
  }

  else
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 48);
    v4 = sub_24381CE84();
    *(v0 + 424) = v5;
    v11 = (v4 + *v4);
    v6 = v4[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    *(v0 + 432) = v7;
    *v7 = v8;
    v7[1] = sub_243807024;
    v9 = *(v0 + 152);

    return v11(v9, v0 + 88);
  }
}

uint64_t sub_243806B70()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[50];
  v0[52] = v0[12];
  v1();
  v2 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_243807024()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 432);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_243807124()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 392);
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243807188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = *(v16 + 392);
  v18 = *(v16 + 152);
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    v19 = *(v16 + 328);
    v20 = *(v16 + 336);
    v21 = *(v16 + 280);
    v63 = *(v16 + 272);
    v66 = *(v16 + 296);
    v22 = *(v16 + 208);
    v23 = *(v16 + 216);
    v25 = *(v16 + 192);
    v24 = *(v16 + 200);
    v27 = *(v16 + 176);
    v26 = *(v16 + 184);
    sub_2437FF838(*(v16 + 312), *(v16 + 320));
    sub_2437FF838(v19, v20);
    v28 = *(v26 + 8);
    v29 = OUTLINED_FUNCTION_37_0();
    v30(v29);
    (*(v22 + 8))(v23, v24);
    (*(v21 + 8))(v66, v63);
    v32 = *(v16 + 288);
    v31 = *(v16 + 296);
    v33 = *(v16 + 264);
    v34 = *(v16 + 240);
    v35 = *(v16 + 216);
    v36 = *(v16 + 192);
    v37 = *(v16 + 168);
    v64 = *(v16 + 152);
    v67 = *(v16 + 144);
    v38 = *(v16 + 120);
    *(v16 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
    sub_24381CD14();

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, v64, v67, a14, a15, a16);
  }

  else
  {
    v60 = *(v16 + 440);
    v48 = *(v16 + 60);
    v65 = *(v16 + 376);
    v68 = *(v16 + 384);
    v49 = *(v16 + 360);
    v50 = *(v16 + 352);
    v51 = *(v16 + 264);
    v52 = *(v16 + 240);
    v61 = *(v16 + 368);
    v62 = *(v16 + 248);
    v53 = *(v16 + 224);
    v54 = *(v16 + 120);
    OUTLINED_FUNCTION_15_0(v17);
    (*(v55 + 32))(v52, v18, v17);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E50, &qword_24381D970);
    OUTLINED_FUNCTION_0_1(v56);
    (*(v57 + 104))(v52, v48);
    v50(v52, v60, v53);
    sub_24381CD04();
    v65(v51, v62);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_43();

    return MEMORY[0x2822009F8](v58);
  }
}

void sub_2438077D8()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_24381C754();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v16 = v15 - v14;
  v17 = sub_24381CA14();
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  (*(v23 + 16))(v22 - v21, v7);
  (*(v11 + 16))(v16, v5, v8);
  sub_24380AF70(v3, v1);
  v24 = OUTLINED_FUNCTION_18();
  sub_24380AF70(v24, v25);
  sub_24381C774();
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_243807958(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  v4 = OUTLINED_FUNCTION_7_0();
  return MEMORY[0x2822009F8](v4);
}

void sub_243807988()
{
  OUTLINED_FUNCTION_28();
  if (!*(v0[3] + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_243800504(v0[4]);
  if ((v2 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v1;
  v4 = v0[2];
  v5 = *(v0[3] + 56);
  v6 = sub_24381CA14();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3);
  OUTLINED_FUNCTION_12();

  v8();
}

uint64_t sub_243807A44()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_24381C8A4();
  v1[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_32();
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_243807AEC()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[6];
  (*(v1 + 16))(v0[7], v0[3], v0[5]);
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277CFA838])
  {
    v6 = v0[7];
    (*(v0[6] + 96))(v6, v0[5]);
    v0[8] = *v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[9] = v7;
    *v7 = v8;
    v9 = sub_243807CF0;
LABEL_5:
    v7[1] = v9;
    v17 = v0[4];
    v18 = v0[2];

    return sub_2438052F8();
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v5 == *MEMORY[0x277CFA840])
  {
    v13 = *(v11 + 96);
    v14 = OUTLINED_FUNCTION_18();
    v15(v14);
    v0[11] = *v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[12] = v7;
    *v7 = v16;
    v9 = sub_243807E50;
    goto LABEL_5;
  }

  sub_24380043C();
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  v20 = *(v11 + 8);
  v21 = OUTLINED_FUNCTION_18();
  v22(v21);
  v23 = v0[7];

  OUTLINED_FUNCTION_12();

  return v24();
}

uint64_t sub_243807CF0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_243807DEC()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_243807E50()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_243807F4C()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_243807FB4()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t sub_243808018()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t sub_24380807C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2438080A4()
{
  sub_24380807C();
  v0 = OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2438080D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_243801DDC(a1);
  *a2 = result;
  return result;
}

void sub_243808140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v7 + 24) >> 1)
  {
    if (*(v7 + 16) <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    sub_2438086A4(isUniquelyReferenced_nonNull_native, v9, 0, v7, a2, a3);
    v7 = v10;
  }

  *v3 = v7;
}

uint64_t sub_2438081BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_24381CF34() & 1;
  }
}

uint64_t sub_243808200@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24381CC44();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_24380859C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_24380859C((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_24381CC34();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_24381CBF4();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_24381CC44();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_24380859C(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_24380859C((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_24381CBF4();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_24381CC44();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_24380859C(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

char *sub_24380859C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F88, &unk_24381DA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2438086A4(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_53_0();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_61(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

void *sub_24380877C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F58, &qword_24381DA70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

uint64_t sub_2438087F8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_0_1(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_25_0();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_25_0();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2438088F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_243805C68();
}

uint64_t sub_243808908(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2438089CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_243808E78(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2438089CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243808ACC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_24381CE44();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243808ACC(uint64_t a1, unint64_t a2)
{
  v4 = sub_243808B18(a1, a2);
  sub_243808C30(&unk_28568EF08);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243808B18(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_24381CC24())
  {
    result = sub_243808D14(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24381CE24();
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
          result = sub_24381CE44();
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

uint64_t sub_243808C30(uint64_t result)
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

    result = sub_243808D84(result, v8, 1, v3);
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

void *sub_243808D14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_243808D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
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

uint64_t sub_243808E78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243808ED8()
{
  v27 = sub_24381C6E4();
  OUTLINED_FUNCTION_9(v27);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  v26 = sub_24381C754();
  OUTLINED_FUNCTION_9(v26);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + 2);
  swift_unknownObjectRelease();
  v23 = *(v0 + 4);

  v24 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v27);
  (*(v8 + 8))(&v0[v10], v26);
  (*(v15 + 8))(&v0[v19], v13);

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v20 | 7);
}

uint64_t sub_2438090B0()
{
  OUTLINED_FUNCTION_54();
  v2 = sub_24381C6E4();
  OUTLINED_FUNCTION_1(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_24381C754();
  OUTLINED_FUNCTION_1(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_38(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = swift_task_alloc();
  *(v1 + 16) = v17;
  *v17 = v1;
  v17[1] = sub_2437FF9EC;

  return sub_243805FD4();
}

void sub_243809244()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_2438077D8();
}

uint64_t sub_243809278()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438092B0()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2437FB6F4;

  return sub_243807958(v5, v3, v6);
}

uint64_t sub_243809358(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24380939C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24381CFC4();
  sub_24381CBE4();
  v6 = sub_24381CFE4();

  return sub_243809EF4(a1, a2, v6);
}

uint64_t sub_243809414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243808E78(a4, a1);

  return a2;
}

uint64_t sub_243809454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_243809414((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24380948C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_24380AC84(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_24380ADA8(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_24380B0C4();
    }

    v8 = v29;
    sub_24380B0CC(v30, v28);
    v9 = *a5;
    v11 = sub_24380939C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
        sub_24381CED4();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2438099C4(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_24380939C(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_243808E78(*(*a5 + 56) + 32 * v11, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v20 = (*(v19 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_24380B0CC(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_24380B0CC(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

void sub_2438096C0(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    sub_24380B130(i, &v27, &qword_27ED92F40, &unk_24381DA50);
    v8 = v27;
    v29 = v27;
    sub_243800490(&v28, v26);
    v9 = *a3;
    v11 = sub_243800504(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
      sub_24381CED4();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v8;
    sub_243800490(v26, v19[7] + 40 * v11);
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v6;
    v19[2] = v22;
    a2 = 1;
    if (v25 == v6)
    {

      return;
    }
  }

  sub_243809C78(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_243800504(v8);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);

    return;
  }

LABEL_22:
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

uint64_t sub_2438099C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
  v36 = a2;
  result = sub_24381CF04();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_243809FA8(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_24380B0CC(v23, v37);
    }

    else
    {
      sub_243808E78(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_24381CFC4();
    sub_24381CBE4();
    result = sub_24381CFE4();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_24380B0CC(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
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
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_243809C78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F38, &qword_24381DA48);
  result = sub_24381CF04();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_35:
    *v3 = v8;
    return result;
  }

  v32 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_243809FA8(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = (*(v5 + 56) + 40 * v19);
    if (a2)
    {
      sub_243800490(v21, v33);
    }

    else
    {
      sub_2438000FC(v21, v33);
    }

    v22 = *(v8 + 40);
    result = sub_24381CFB4();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    result = sub_243800490(v33, *(v8 + 56) + 40 * v26);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_243809EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24381CF34() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_243809FA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_24381D850;
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

void *sub_24380A00C(void *a1, int64_t a2, char a3)
{
  result = sub_24380A1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A05C(char *a1, int64_t a2, char a3)
{
  result = sub_24380A30C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A0AC(char *a1, int64_t a2, char a3)
{
  result = sub_24380A4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A0CC(char *a1, int64_t a2, char a3)
{
  result = sub_24380A5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24380A0EC(void *a1, int64_t a2, char a3)
{
  result = sub_24380A6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24380A10C()
{
  v1 = *v0;
  sub_24380AA64();
  *v0 = v2;
}

void *sub_24380A154(void *a1, int64_t a2, char a3)
{
  result = sub_24380A82C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A174(char *a1, int64_t a2, char a3)
{
  result = sub_24380A964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24380A194()
{
  v1 = *v0;
  sub_24380AA64();
  *v0 = v2;
}

void *sub_24380A1DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC8, &qword_24381D9E8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED0, &qword_24381D9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24380A30C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F28, &qword_24381DA38);
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

void sub_24380A414(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_53_0();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_61(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

char *sub_24380A4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F18, &qword_24381DA30);
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

char *sub_24380A5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F08, &qword_24381DA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_24380A6F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F20, &qword_24381DE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24380A82C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F48, &qword_24381DA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F40, &unk_24381DA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24380A964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F50, &qword_24381DA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_24380AA64()
{
  OUTLINED_FUNCTION_36_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_53_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_2438087F8(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_24380AC04(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_2438000FC(*(a5 + 56) + 40 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24380AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_24380ACC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24380ADA8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_243808E78(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_24380B0CC(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_24380B1F4(v19, &qword_27ED92F00, &qword_24381DA20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24380AF24(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_24381CE04();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_24380AF64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24380AF70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24380B054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24380B0CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24380B0DC()
{
  result = qword_27ED92F10;
  if (!qword_27ED92F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92F10);
  }

  return result;
}

uint64_t sub_24380B130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24380B1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_24380B24C()
{
  result = qword_27ED92F78;
  if (!qword_27ED92F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED92F78);
  }

  return result;
}

uint64_t sub_24380B2B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_16_0()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[18];
  v8 = v0[15];
  v0[10] = 0;
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_22_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x245D41570);
}

__n128 OUTLINED_FUNCTION_30_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  result = *(v0 + 72);
  v9 = *(v0 + 88);
  return result;
}

void OUTLINED_FUNCTION_34_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v12[32];
  v16 = v12[30];
  v22 = v12[33];
  v23 = v12[31];
  v17 = v12[28];
  v18 = v12[17];
  v19 = v12[18];
  v20 = v12[16];
  v21 = v12[15];
}

void OUTLINED_FUNCTION_35_0()
{

  JUMPOUT(0x245D41570);
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return __swift_getEnumTagSinglePayload(v2 + v0, 1, v1);
}

void *OUTLINED_FUNCTION_44_0()
{
  *v0 = *v2;
  v3 = *(v1 + 104);
  return v0;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_24381CC84();
}

uint64_t OUTLINED_FUNCTION_71()
{
  v2 = v0[17];
  result = v0[18];
  v3 = v0[16];
  return result;
}

uint64_t OUTLINED_FUNCTION_78()
{
  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[17];
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_80()
{
  *(v1 + 64) = v0;
  v3 = v1 + 64;
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);

  return v0;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_24381CD04();
}

BOOL OUTLINED_FUNCTION_83()
{

  return os_log_type_enabled(v0, v1);
}

void sub_24380B8B0()
{
  v0 = sub_24381C9E4();
  v2 = sub_24380B938(v0, v1);
  v3 = OUTLINED_FUNCTION_17_0();
  sub_2437FF838(v3, v4);
  v5 = MMCSReferenceSignatureCreateWithReferenceObject();

  if (v5)
  {
    sub_24381C704();
  }

  else
  {
    __break(1u);
  }
}

CFDataRef sub_24380B938(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x24380B9C4);
      }

      a1 = a1;
      v4 = v6;
      return sub_24380E948(a1, v4);
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      return sub_24380E948(a1, v4);
    case 3uLL:
      a1 = 0;
      v2 = 0;
      return sub_24380E8D0(a1, v2);
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_24380E8D0(a1, v2);
  }
}

void sub_24380B9D4()
{
  OUTLINED_FUNCTION_36_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FF8, &unk_24381DB80);
  v1 = OUTLINED_FUNCTION_0_1(v48);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v47 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - v6;
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v54 = MEMORY[0x277D84F90];
    v9 = OUTLINED_FUNCTION_8_1();
    sub_24380A00C(v9, v10, v11);
    v12 = v54;
    v15 = sub_24380AF24(v7);
    v16 = 0;
    v17 = v7 + 64;
    v42 = v13;
    v43 = v8;
    v41 = v7 + 72;
    v44 = v7 + 64;
    v45 = v7;
    v18 = v48;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v7 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v13)
      {
        goto LABEL_23;
      }

      v51 = v13;
      v52 = 1 << v15;
      v49 = v14;
      v50 = v16;
      v20 = *(v18 + 48);
      v53 = v12;
      v21 = *(v7 + 56);
      v22 = *(*(v7 + 48) + 8 * v15);
      v23 = sub_24381C804();
      OUTLINED_FUNCTION_9(v23);
      v25 = v24;
      v27 = v46;
      (*(v24 + 16))(&v46[v20], v21 + *(v26 + 72) * v15, v23);
      v28 = v47;
      *v47 = v22;
      (*(v25 + 32))(v28 + *(v18 + 48), &v27[v20], v23);
      v12 = v53;
      sub_24380BD24();
      v30 = v29;
      sub_24380B1F4(v28, &qword_27ED92FF8, &unk_24381DB80);
      v54 = v12;
      v32 = *(v12 + 16);
      v31 = *(v12 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24380A00C((v31 > 1), v32 + 1, 1);
        v12 = v54;
      }

      *(v12 + 16) = v32 + 1;
      *(v12 + 8 * v32 + 32) = v30;
      v7 = v45;
      v33 = 1 << *(v45 + 32);
      if (v15 >= v33)
      {
        goto LABEL_24;
      }

      v17 = v44;
      v34 = *(v44 + 8 * v19);
      if ((v34 & v52) == 0)
      {
        goto LABEL_25;
      }

      if (*(v45 + 36) != v51)
      {
        goto LABEL_26;
      }

      v35 = v34 & (-2 << (v15 & 0x3F));
      if (v35)
      {
        v33 = __clz(__rbit64(v35)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v19 << 6;
        v37 = v19 + 1;
        v38 = (v41 + 8 * v19);
        while (v37 < (v33 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_24380AF64(v15, v51, v49 & 1);
            v33 = __clz(__rbit64(v39)) + v36;
            goto LABEL_19;
          }
        }

        sub_24380AF64(v15, v51, v49 & 1);
      }

LABEL_19:
      v14 = 0;
      v16 = v50 + 1;
      v15 = v33;
      v13 = v42;
      if (v50 + 1 == v43)
      {
        goto LABEL_20;
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
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_24380BD24()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v2 = sub_24381C9F4();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  v10 = v9 - v8;
  sub_24381C7F4();
  v11 = sub_24381C9E4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v2);
  sub_24381C7F4();
  v59 = sub_24381C9D4();
  v60 = v15;
  v14(v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v17;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v1;
  sub_24381CB24();
  v18 = v11;
  if (sub_2438013D8(v11, v13))
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_24381D830;
    if (*MEMORY[0x277D25508])
    {
      *(v19 + 32) = sub_24381CB84();
      *(v19 + 40) = v20;
      *(v19 + 72) = MEMORY[0x277D839B0];
      *(v19 + 48) = 1;
      v21 = sub_24381CB24();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_2_2();
      sub_24380948C(v21, v22, 0, v23, v24);
LABEL_10:
      v40 = OUTLINED_FUNCTION_29();
      if (sub_2438013D8(v40, v41))
      {
        sub_2437FF838(v18, v13);
        v42 = OUTLINED_FUNCTION_29();
        sub_2437FF838(v42, v43);
LABEL_14:
        OUTLINED_FUNCTION_33_0();
        return;
      }

      v44 = v18;
      v45 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_24381D830;
      if (*MEMORY[0x277D25418])
      {
        *(v46 + 32) = sub_24381CB84();
        *(v46 + 40) = v47;
        *(v46 + 48) = v59;
        *(v46 + 56) = v60;
        v48 = OUTLINED_FUNCTION_29();
        sub_24380AF70(v48, v49);
        v50 = sub_24381CB24();
        v51 = sub_243801690(v50);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_2();
        sub_24380948C(v51, v52, 0, v53, v54);
        v55 = OUTLINED_FUNCTION_29();
        sub_2437FF838(v55, v56);
        sub_2437FF838(v44, v45);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v57 = v11;
  v58 = v13;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D25678])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v25 + 32) = sub_24381CB84();
  *(v25 + 40) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v27 + 32) = sub_24381CB84();
  *(v27 + 40) = v28;
  *(v27 + 48) = v11;
  *(v27 + 56) = v58;
  if (!*MEMORY[0x277D254F8])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v27 + 64) = sub_24381CB84();
  *(v27 + 72) = v29;
  sub_24380AF70(v11, v58);
  sub_24381C7F4();
  sub_24380B8B0();
  v31 = v30;
  v33 = v32;
  v14(v10, v2);
  *(v27 + 80) = v31;
  *(v27 + 88) = v33;
  v34 = sub_24381CB24();
  *(v25 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
  *(v25 + 48) = v34;
  if (*MEMORY[0x277D25500])
  {
    *(v25 + 80) = sub_24381CB84();
    *(v25 + 88) = v35;
    *(v25 + 120) = MEMORY[0x277D839B0];
    *(v25 + 96) = 1;
    v36 = sub_24381CB24();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_2();
    sub_24380948C(v36, v37, 0, v38, v39);
    v18 = v57;
    v13 = v58;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_24380C200(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, unint64_t), uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v45 = v9;
    v54 = MEMORY[0x277D84F90];
    sub_24380FBA8();
    v53 = v54;
    result = sub_24380AF24(a1);
    v14 = result;
    v15 = 0;
    v16 = a1 + 64;
    v41 = v12;
    v42 = v10;
    v40 = a1 + 72;
    v43 = a1 + 64;
    v44 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_26;
      }

      v51 = v15;
      v52 = v12;
      v50 = v13;
      v18 = *(*(a1 + 48) + 8 * v14);
      v19 = (*(a1 + 56) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = v4;
      v23 = *(v47 + 48);
      sub_24380AF70(*v19, v21);
      v24 = v45;
      v25 = v48(v45 + v23, v18, v20, v21);
      v4 = v22;
      if (v22)
      {
        sub_2437FF838(v20, v21);
      }

      v26 = v25;
      sub_2437FF838(v20, v21);
      *v24 = v26;
      v27 = v53;
      v54 = v53;
      v28 = *(v53 + 16);
      if (v28 >= *(v53 + 24) >> 1)
      {
        sub_24380FBA8();
        v27 = v54;
      }

      *(v27 + 16) = v28 + 1;
      v29 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v53 = v27;
      v30 = *(v46 + 72);
      result = sub_2438101AC();
      a1 = v44;
      v31 = 1 << *(v44 + 32);
      if (v14 >= v31)
      {
        goto LABEL_27;
      }

      v16 = v43;
      v32 = *(v43 + 8 * v17);
      if ((v32 & (1 << v14)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v44 + 36) != v52)
      {
        goto LABEL_29;
      }

      v33 = v32 & (-2 << (v14 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v34 = v42;
      }

      else
      {
        v35 = v17 << 6;
        v36 = v17 + 1;
        v37 = (v40 + 8 * v17);
        v34 = v42;
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_24380AF64(v14, v52, v50 & 1);
            v31 = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        result = sub_24380AF64(v14, v52, v50 & 1);
      }

LABEL_20:
      v13 = 0;
      v15 = v51 + 1;
      v14 = v31;
      v12 = v41;
      if (v51 + 1 == v34)
      {
        return v53;
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
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_24380C570()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_24380C5A0()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93298);
  v1 = OUTLINED_FUNCTION_17_0();
  __swift_project_value_buffer(v1, v2);
  sub_24381C794();
  type metadata accessor for Registerer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93018, &qword_24381DBC0);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_24380C640(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24380C680(a1);
  return v5;
}

uint64_t sub_24380C680(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  v4 = OBJC_IVAR____TtCC17CloudAssetsDaemon10Registerer7Context_continutation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  v7 = *v3;
  *v3 = v1;

  (*(v6 + 8))(a1, v5);
  return v1;
}

uint64_t sub_24380C760()
{
  v1 = *(v0 + 2);
  OUTLINED_FUNCTION_35_0();
  v2 = OBJC_IVAR____TtCC17CloudAssetsDaemon10Registerer7Context_continutation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_24380C808(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_24380C848()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_24381C6E4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93020, &qword_24381DBC8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - v19;
  v21 = sub_24381C804();
  v22 = OUTLINED_FUNCTION_9(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  if (v7)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v76 = v1;
    v77 = v3;
    v78 = &v71 - v28;
    v79 = v29;
    v30 = *(*v7 + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

    sub_24380029C(v5, v80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v35 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v20, v35 ^ 1u, 1, v21);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
    if (EnumTagSinglePayload == 1)
    {
      sub_24380B1F4(v20, &qword_27ED93020, &qword_24381DBC8);
      if (_MergedGlobals_1 == -1)
      {
LABEL_11:
        v37 = sub_24381CA64();
        __swift_project_value_buffer(v37, qword_27ED93298);
        v38 = sub_24381CA44();
        v39 = sub_24381CD84();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 134349056;
          *(v40 + 4) = v5;
          _os_log_impl(&dword_2437FA000, v38, v39, "asset request with tracking number %{public}llu can not be found", v40, 0xCu);
          OUTLINED_FUNCTION_35_0();
        }

        goto LABEL_14;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_3();
      goto LABEL_11;
    }

    (*(v79 + 32))(v78, v20, v21);
    sub_24381C7E4();
    sub_24381C6C4();
    v41 = *(v11 + 8);
    v75 = v11 + 8;
    v41(v16, v8);
    sub_24381CBC4();

    v42 = sub_24381CAC4();
    v43 = v42;
    if ((v42 & 0x100000000) != 0)
    {
      v74 = v41;
      LODWORD(v80[0]) = v42;
      sub_243810264();
      swift_willThrowTypedImpl();
      v76 = swift_allocError();
      *v47 = v43;

      if (v77)
      {
        *v77 = -1;
      }

      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v48 = sub_24381CA64();
      __swift_project_value_buffer(v48, qword_27ED93298);
      v49 = v79;
      (*(v79 + 16))(v27, v78, v21);
      v50 = v76;
      v51 = v76;
      v52 = sub_24381CA44();
      v53 = sub_24381CD84();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v73 = v53;
        v55 = v54;
        v72 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v80[0] = v77;
        *v55 = 136315394;
        v71 = v52;
        sub_24381C7E4();
        v56 = sub_24381C6C4();
        v58 = v57;
        v74(v16, v8);
        v59 = *(v49 + 8);
        v59(v27, v21);
        v60 = sub_243808908(v56, v58, v80);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2112;
        v61 = v76;
        v62 = v76;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v63;
        v64 = v71;
        v65 = v72;
        *v72 = v63;
        _os_log_impl(&dword_2437FA000, v64, v73, "unable to open file at path %s due to error %@", v55, 0x16u);
        sub_24380B1F4(v65, &qword_27ED92E38, &unk_24381DBD0);
        OUTLINED_FUNCTION_35_0();
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_35_0();

        v66 = OUTLINED_FUNCTION_62();
        (v59)(v66);
      }

      else
      {

        v67 = *(v49 + 8);
        v67(v27, v21);
        v68 = OUTLINED_FUNCTION_62();
        (v67)(v68);
      }
    }

    else
    {

      if (v77)
      {
        *v77 = v43;
      }

      v44 = v76;
      if (v76)
      {
        *v44 = sub_24381CB74();

        v45 = OUTLINED_FUNCTION_15_1();
        v46(v45);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_15_1();
        v70(v69);
      }
    }
  }

  else
  {
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v31 = sub_24381CA64();
    __swift_project_value_buffer(v31, qword_27ED93298);
    v32 = sub_24381CA44();
    v33 = sub_24381CD84();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2437FA000, v32, v33, "context for registering assets can not be loaded", v34, 2u);
      OUTLINED_FUNCTION_35_0();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_24380CFBC(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_24380CFDC);
}

uint64_t sub_24380CFDC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FB0, &qword_24381DB28);
  *v3 = v0;
  v3[1] = sub_24380D0E8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000017, 0x800000024381E4C0, sub_243810204, v1, v4);
}

uint64_t sub_24380D0E8()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_24380D21C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24380D200;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_24380D21C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_24380D27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  (*(v10 + 16))(&v18 - v8, a1);
  v11 = type metadata accessor for Registerer.Context();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_24380C680(v9);
  v15 = *(*(a2 + 16) + 32);
  v16 = *(v14 + 16);
  v17 = sub_24381CAF4();
  MMCSRegisterItems();
}

void sub_24380D3BC(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    if (a2 && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      *&v12 = 0;

      sub_24381CB04();
    }

    else
    {
    }

    memset(v13, 0, 32);
    sub_24380B1F4(v13, &qword_27ED92F70, &qword_24381DA88);
    sub_24380043C();
    *&v13[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
    sub_24381CC84();
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v3 = sub_24381CA64();
    __swift_project_value_buffer(v3, qword_27ED93298);
    v4 = sub_24381CA44();
    v5 = sub_24381CD84();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2437FA000, v4, v5, "mmcs engine returns nil results", v6, 2u);
      OUTLINED_FUNCTION_35_0();
    }

    v7 = *(v2 + 16);
    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = sub_24381CA64();
    __swift_project_value_buffer(v8, qword_27ED93298);
    oslog = sub_24381CA44();
    v9 = sub_24381CD84();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2437FA000, oslog, v9, "context for registering assets can not be loaded", v10, 2u);
      OUTLINED_FUNCTION_35_0();
    }
  }
}

uint64_t sub_24380D950(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24381CF14();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void sub_24380DA04()
{
  OUTLINED_FUNCTION_14_1();
  v2 = v0;
  sub_24380D3BC(v1, v0);
}

uint64_t sub_24380DA54()
{
  OUTLINED_FUNCTION_13();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F98, &qword_24381DAC0);
  v1[34] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[35] = v4;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v7 = sub_24381CCD4();
  v1[37] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[38] = v8;
  v10 = *(v9 + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24380DB68);
}

uint64_t sub_24380DB68()
{
  v54 = v0;
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[32];
  v2 = sub_24381CA64();
  v0[40] = __swift_project_value_buffer(v2, qword_27ED93298);

  v3 = sub_24381CA44();
  v4 = sub_24381CD94();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[37];
    v8 = v0[32];
    v9 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_24381C804();
    v11 = MEMORY[0x245D40CE0](v8, v10);
    v13 = sub_243808908(v11, v12, &v53);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_24381CCE4();
    sub_24380FCD8(&qword_27ED92DF0, MEMORY[0x277D85720]);
    v14 = sub_24381CF24();
    v16 = v15;
    (*(v6 + 8))(v5, v7);
    v17 = sub_243808908(v14, v16, &v53);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2437FA000, v3, v4, "processing %s with priority %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_35_0();
  }

  v18 = v0[32];
  v19 = *(*(*(v0[33] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);
  v0[41] = v19;
  v20 = *(v18 + 16);
  if (v20)
  {
    v51 = v0[34];
    v52 = v0[35];
    v53 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_8_1();
    sub_24380FBE8();
    v21 = v53;
    v22 = sub_24381C804();
    OUTLINED_FUNCTION_0_1(v22);
    v50 = *(v23 + 16);
    v24 = v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v49 = *(v23 + 72);
    do
    {
      v25 = v0[36];
      v26 = *(v51 + 48);
      v50(&v25[v26], v24, v22);
      v0[27] = v22;
      v0[28] = sub_24380FCD8(&qword_27ED92FA0, MEMORY[0x277CFA820]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
      v50(boxed_opaque_existential_1, &v25[v26], v22);
      v28 = v19;
      v29 = sub_243800058((v0 + 24));
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
      *v25 = v29;
      v53 = v21;
      v30 = *(v21 + 16);
      if (v30 >= *(v21 + 24) >> 1)
      {
        sub_24380FBE8();
        v21 = v53;
      }

      v31 = v0[36];
      *(v21 + 16) = v30 + 1;
      v32 = v21 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v33 = *(v52 + 72);
      sub_2438101AC();
      v24 += v49;
      --v20;
      v19 = v28;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v34 = sub_24380D950(v21, &qword_27ED93000, &qword_24381DBA8, sub_24380F154);

  v0[42] = sub_24380239C(v35);
  type metadata accessor for Registerer.OptionsBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_24381DAA0;
  result = *MEMORY[0x277D255F0];
  if (!*MEMORY[0x277D255F0])
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v37 + 32) = sub_24381CB84();
  *(v37 + 40) = v39;
  v40 = MEMORY[0x277D839B0];
  *(v37 + 72) = MEMORY[0x277D839B0];
  *(v37 + 48) = 1;
  result = *MEMORY[0x277D25500];
  if (!*MEMORY[0x277D25500])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v37 + 80) = sub_24381CB84();
  *(v37 + 88) = v41;
  *(v37 + 120) = v40;
  *(v37 + 96) = 1;
  result = *MEMORY[0x277D25598];
  if (!*MEMORY[0x277D25598])
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *(v37 + 128) = sub_24381CB84();
  *(v37 + 136) = v42;
  sub_24380B9D4();
  v44 = v43;
  *(v37 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
  *(v37 + 144) = v44;
  v45 = sub_24381CB24();
  v0[43] = v45;
  swift_setDeallocating();
  v46 = *(inited + 16);

  v47 = swift_task_alloc();
  v0[44] = v47;
  *v47 = v0;
  v47[1] = sub_24380E0FC;
  v48 = v0[33];

  return sub_24380CFBC(v47, v45);
}

uint64_t sub_24380E0FC()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  v2[45] = v4;
  v2[46] = v0;

  if (v0)
  {
    v5 = sub_24380E45C;
  }

  else
  {
    v7 = v2[42];
    v6 = v2[43];

    v5 = sub_24380E21C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_24380E21C()
{
  v28 = v0;
  v1 = v0[40];
  v2 = v0[32];

  v3 = sub_24381CA44();
  v4 = sub_24381CD94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v8 = sub_24381C804();
    v9 = MEMORY[0x245D40CE0](v5, v8);
    v11 = sub_243808908(v9, v10, &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2437FA000, v3, v4, "finish processing %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_35_0();
  }

  v12 = v0[46];
  v13 = sub_24380C200(v0[45], sub_24380FCAC, v0[41]);
  v14 = v0[45];
  v15 = v0[41];
  if (v12)
  {
    v16 = v0[41];

    v17 = v0[39];
    v18 = v0[36];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v13;
    v22 = v0[39];
    v23 = v0[36];
    v24 = v0[45];

    v25 = sub_24380D950(v21, &qword_27ED92FB8, &qword_24381DB30, sub_24380ECB4);

    v26 = v0[1];

    return v26(v25);
  }
}

uint64_t sub_24380E45C()
{
  OUTLINED_FUNCTION_13();
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];

  v4 = v0[46];
  v5 = v0[39];
  v6 = v0[36];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24380E4E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a4;
  v6 = sub_24381C6E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_42();
  v8 = sub_24381C9A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_42();
  v10 = sub_24381C9F4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v18 = v17 - v16;
  v19 = sub_24381C804();
  v20 = OUTLINED_FUNCTION_9(v19);
  v35 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42();
  v26 = v25 - v24;
  sub_24380029C(a2, v37);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v33 = v19;
    swift_dynamicCast();
    type metadata accessor for Registerer.OptionsBuilder();
    sub_24381C7F4();
    sub_24380B8B0();
    v34 = a2;
    v28 = v27;
    v30 = v29;
    (*(v13 + 8))(v18, v10);
    sub_24381C7C4();
    sub_24380AF70(a3, v38);
    sub_24380AF70(v28, v30);
    sub_24381C974();
    sub_24381C7F4();
    sub_24381C9B4();
    v31 = v28;
    a2 = v34;
    sub_2437FF838(v31, v30);
    (*(v35 + 8))(v26, v33);
  }

  return a2;
}

uint64_t sub_24380E7A8()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_24380E7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24380C808(a1);
  *a2 = result;
  return result;
}

uint64_t sub_24380E800(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_14_1();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_62(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_0_1(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v14 = OUTLINED_FUNCTION_62();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    v16 = OUTLINED_FUNCTION_6_0();

    return MEMORY[0x2821FE828](v16);
  }

  else if (a3 != v4)
  {
    v13 = OUTLINED_FUNCTION_6_0();

    return MEMORY[0x2821FE820](v13);
  }

  return result;
}

CFDataRef sub_24380E8D0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *bytes = a1;
  v6 = WORD2(a2);
  v5 = a2;
  result = CFDataCreate(0, bytes, BYTE6(a2));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef sub_24380E948(uint64_t a1, uint64_t a2)
{
  result = sub_24381C644();
  v5 = result;
  if (result)
  {
    result = sub_24381C664();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_24381C654();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return CFDataCreate(0, v5, v10);
}

void sub_24380E9D4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_24381CF54();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    sub_24380AF70(v7, *i);
    if (v6 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_243800504(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FE0, &qword_24381DB60);
      sub_24381CED4();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v8;
    v20 = (v19[7] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_24380F5F4(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_243800504(v8);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2437FF838(v7, v6);

    return;
  }

LABEL_23:
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

void sub_24380ECB4(uint64_t a1, char a2, uint64_t *a3)
{
  v50 = a3;
  v6 = sub_24381CA14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = (v41 - v15);
  v47 = *(a1 + 16);
  if (!v47)
  {
LABEL_13:

    return;
  }

  v41[1] = v3;
  v42 = a1;
  v16 = 0;
  v46 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v44 = v7;
  v45 = v17;
  v49 = (v7 + 32);
  v43 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(v14 + 72);
    v20 = v48;
    sub_24381020C();
    v54 = *v20;
    v21 = v54;
    v22 = *v49;
    v23 = v10;
    (*v49)(v10, v20 + v45, v6);
    v24 = *v50;
    v26 = sub_243800504(v21);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_19;
    }

    v29 = v25;
    if (v24[3] < v27 + v28)
    {
      break;
    }

    if (a2)
    {
      if (v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC8, &unk_24381DB40);
      sub_24381CED4();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = *v50;
    *(*v50 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    *(v34[6] + 8 * v26) = v21;
    v6 = v43;
    v35 = v34[7] + *(v44 + 72) * v26;
    v10 = v23;
    v22(v35, v23, v43);
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v16;
    v34[2] = v38;
    a2 = 1;
    a1 = v42;
    v14 = v18;
    if (v47 == v16)
    {
      goto LABEL_13;
    }
  }

  v30 = v50;
  sub_24380F868();
  v31 = *v30;
  v32 = sub_243800504(v21);
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v26 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v39 = swift_allocError();
  swift_willThrow();
  v53 = v39;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 8))(v23, v43);

    return;
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

void sub_24380F154(uint64_t a1, char a2, uint64_t *a3)
{
  v50 = a3;
  v6 = sub_24381C804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F98, &qword_24381DAC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = (v41 - v15);
  v47 = *(a1 + 16);
  if (!v47)
  {
LABEL_13:

    return;
  }

  v41[1] = v3;
  v42 = a1;
  v16 = 0;
  v46 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v44 = v7;
  v45 = v17;
  v49 = (v7 + 32);
  v43 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(v14 + 72);
    v20 = v48;
    sub_24381020C();
    v54 = *v20;
    v21 = v54;
    v22 = *v49;
    v23 = v10;
    (*v49)(v10, v20 + v45, v6);
    v24 = *v50;
    v26 = sub_243800504(v21);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_19;
    }

    v29 = v25;
    if (v24[3] < v27 + v28)
    {
      break;
    }

    if (a2)
    {
      if (v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93008, &qword_24381DBB0);
      sub_24381CED4();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = *v50;
    *(*v50 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    *(v34[6] + 8 * v26) = v21;
    v6 = v43;
    v35 = v34[7] + *(v44 + 72) * v26;
    v10 = v23;
    v22(v35, v23, v43);
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v16;
    v34[2] = v38;
    a2 = 1;
    a1 = v42;
    v14 = v18;
    if (v47 == v16)
    {
      goto LABEL_13;
    }
  }

  v30 = v50;
  sub_24380F868();
  v31 = *v30;
  v32 = sub_243800504(v21);
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v26 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v39 = swift_allocError();
  swift_willThrow();
  v53 = v39;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 8))(v23, v43);

    return;
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

uint64_t sub_24380F5F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FD8, &qword_24381DB58);
  result = sub_24381CF04();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

  v31 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        sub_243809FA8(0, (v30 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v32 = *(*(v5 + 56) + 16 * v19);
    if ((a2 & 1) == 0)
    {
      sub_24380AF70(v32, *(&v32 + 1));
    }

    v21 = *(v8 + 40);
    result = sub_24381CFB4();
    v22 = -1 << *(v8 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v8 + 48) + 8 * v25) = v20;
    *(*(v8 + 56) + 16 * v25) = v32;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v15 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}