uint64_t sub_227C9A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17[9];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[32];
    v20 = v17[29];
    v21 = v17[5];
    OUTLINED_FUNCTION_36(v17[9]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22();
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
      OUTLINED_FUNCTION_19_7();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v39 = v17[32];
      v40 = v17[23];
      v41 = v17[20];
      v42 = v17[18];
      v43 = v17[7];
      v44 = OUTLINED_FUNCTION_56(v17[19]);
      v45(v44);
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_106_4();
      sub_227B0F800(v46);
      OUTLINED_FUNCTION_116_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v47 = v17[32];
      v48 = v17[17];
      v49 = v17[13];
      sub_227CA5D74(v17[8], v17[14], &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
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
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v59);
      OUTLINED_FUNCTION_48();
      *v58 = v60;
      v58[1] = sub_227C9A6F0;
      v61 = v17[32];
      v62 = v17[12];
      v63 = v17[9];
      OUTLINED_FUNCTION_1_2(v64);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17);
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

    return sub_227C9B124(v32, v33, v34, v35);
  }
}

uint64_t sub_227C9A6F0()
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

uint64_t sub_227C9A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v36 = v13;
  v14 = *v12;
  v15 = *(*v12 + 280);
  v16 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v17 = v16;

  OUTLINED_FUNCTION_209();
  v19 = *(v18 + 256);
  v20 = v14[29];
  v21 = v14[26];
  v22 = v14[23];
  v23 = v14[20];
  v24 = v14[17];
  v25 = v14[14];
  v26 = v14[12];

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_135_0();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_227C9AC24(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v19[1] = sub_227CAA918;

  return GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_227C9B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C9B148, v4);
}

uint64_t sub_227C9B148()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
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

uint64_t sub_227C9B1EC()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 56);
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

uint64_t GameDebuggerService.listLeaderboards(games:players:)()
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

uint64_t sub_227C9B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_51_1();
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
      OUTLINED_FUNCTION_19_7();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v35 = v17[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
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
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v53);
      OUTLINED_FUNCTION_48();
      *v52 = v54;
      v52[1] = sub_227C9B7BC;
      v55 = v17[19];
      v56 = v17[10];
      v57 = v17[7];
      OUTLINED_FUNCTION_1_2(v58);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v17[22] = v27;
    *v27 = v17;
    v27[1] = sub_227C9B96C;
    v28 = v17[6];
    v29 = v17[7];
    OUTLINED_FUNCTION_53(v17[5]);
    OUTLINED_FUNCTION_46();

    return sub_227C9BE34(v30, v31);
  }
}

uint64_t sub_227C9B7BC()
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

uint64_t sub_227C9B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
  v21 = *(v12 + 32);
  OUTLINED_FUNCTION_198_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_227C9B96C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v3 = v2[22];
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

uint64_t sub_227C9BACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
  v21 = *(v12 + 168);
  OUTLINED_FUNCTION_198_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_227C9BB84(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v15[1] = sub_227C9476C;

  return GameDebuggerService.listLeaderboards(games:players:)();
}

uint64_t sub_227C9BE34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C9BE54, v2);
}

uint64_t sub_227C9BE54()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  v3[1] = sub_227B6DC04;
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D20294(v6, v7);
}

uint64_t GameDebuggerService.submitLeaderboardEntries(_:)()
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
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v11);
  v12 = sub_227D49D58();
  v1[11] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v16 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227C9C034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_36(v15);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83B0, &unk_227D58E50);
    OUTLINED_FUNCTION_26_11();
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
      OUTLINED_FUNCTION_174_5(v39);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v40);
      OUTLINED_FUNCTION_44_0();
      *v17 = v41;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
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

    return sub_227C9C428(v35);
  }
}

uint64_t sub_227C9C28C(uint64_t a1, uint64_t *a2)
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

  return GameDebuggerService.submitLeaderboardEntries(_:)();
}

uint64_t sub_227C9C428(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9C440()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20610(v5);
}

uint64_t GameDebuggerService.resetLeaderboards(_:)()
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v11);
  v12 = sub_227D49D58();
  v1[11] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v16 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227C9C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_36(v15);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22();
    sub_227BC8E60();
    sub_227BC8F10();
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
      OUTLINED_FUNCTION_174_5(v39);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v40);
      OUTLINED_FUNCTION_44_0();
      *v17 = v41;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
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

    return sub_227C9CC30(v35);
  }
}

uint64_t sub_227C9C854()
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

uint64_t sub_227C9C94C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C9C9E8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_59_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[7];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227C9CA94(uint64_t a1, uint64_t *a2)
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

  return GameDebuggerService.resetLeaderboards(_:)();
}

uint64_t sub_227C9CC30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9CC48()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20720(v5);
}

uint64_t GameDebuggerService.describeLeaderboardSets(_:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227C9CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_7_22();
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
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
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
      OUTLINED_FUNCTION_98_4(v44);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v45);
      OUTLINED_FUNCTION_48();
      *v23 = v46;
      OUTLINED_FUNCTION_1_30(v47);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227C9D208(v40);
  }
}

uint64_t sub_227C9D068(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.describeLeaderboardSets(_:)();
}

uint64_t sub_227C9D208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9D220()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20844(v5);
}

uint64_t GameDebuggerService.listLeaderboardSets(games:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227C9D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_51_1();
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
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
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
      OUTLINED_FUNCTION_98_4(v44);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v45);
      OUTLINED_FUNCTION_48();
      *v23 = v46;
      OUTLINED_FUNCTION_1_30(v47);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227C9D7E0(v40);
  }
}

uint64_t sub_227C9D640(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.listLeaderboardSets(games:)();
}

uint64_t sub_227C9D7E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9D7F8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20968(v5);
}

uint64_t GameDebuggerService.listLeaderboards(leaderboardSets:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227C9D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_137_0();
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
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
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
      OUTLINED_FUNCTION_98_4(v44);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v45);
      OUTLINED_FUNCTION_48();
      *v23 = v46;
      OUTLINED_FUNCTION_1_30(v47);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227C9DDE8(v40);
  }
}

uint64_t sub_227C9DC48(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227C9DDE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9DE00()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20A8C(v5);
}

uint64_t GameDebuggerService.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D49D58();
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227C9DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    OUTLINED_FUNCTION_7_22();
    sub_227B47E34();
    sub_227B47EE4();
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
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9D68, &qword_227D62058);
      sub_227C9E46C();
      sub_227C9E5A4();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v44);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v45);
      OUTLINED_FUNCTION_48();
      *v23 = v46;
      OUTLINED_FUNCTION_1_30(v47);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227C9E3C0(v40);
  }
}

uint64_t sub_227C9E220(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.describePlayerProfiles(_:)();
}

uint64_t sub_227C9E3C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9E3D8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227D20BB0();
}

unint64_t sub_227C9E46C()
{
  result = qword_27D7E9D70;
  if (!qword_27D7E9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9D68, &qword_227D62058);
    sub_227C9E4F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D70);
  }

  return result;
}

unint64_t sub_227C9E4F0()
{
  result = qword_27D7E9D78;
  if (!qword_27D7E9D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67B0, &unk_227D62060);
    sub_227B0F800(&unk_27D7E9D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D78);
  }

  return result;
}

unint64_t sub_227C9E5A4()
{
  result = qword_27D7E9D88;
  if (!qword_27D7E9D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9D68, &qword_227D62058);
    sub_227C9E628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D88);
  }

  return result;
}

unint64_t sub_227C9E628()
{
  result = qword_27D7E9D90;
  if (!qword_27D7E9D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67B0, &unk_227D62060);
    sub_227B0F800(&unk_27D7E9D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D90);
  }

  return result;
}

uint64_t GameDebuggerService.describeGameLockups(_:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227C9E818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_7_22();
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
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DA0, &qword_227D620F8);
      sub_227C9ECC4();
      sub_227C9EDFC();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v44);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v45);
      OUTLINED_FUNCTION_48();
      *v23 = v46;
      OUTLINED_FUNCTION_1_30(v47);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    v38[1] = sub_227CAA920;
    v40 = v18[5];
    OUTLINED_FUNCTION_46();

    return sub_227C9EC10(v41);
  }
}

uint64_t sub_227C9EA70(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.describeGameLockups(_:)();
}

uint64_t sub_227C9EC24()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_6_17();
  sub_227B0F800(v0);
  OUTLINED_FUNCTION_5_5();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v1();
}

unint64_t sub_227C9ECC4()
{
  result = qword_27D7E9DA8;
  if (!qword_27D7E9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DA0, &qword_227D620F8);
    sub_227C9ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DA8);
  }

  return result;
}

unint64_t sub_227C9ED48()
{
  result = qword_27D7E9DB0;
  if (!qword_27D7E9DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DB8, &unk_227D62100);
    sub_227B0F800(&unk_27D7E9DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DB0);
  }

  return result;
}

unint64_t sub_227C9EDFC()
{
  result = qword_27D7E9DC8;
  if (!qword_27D7E9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DA0, &qword_227D620F8);
    sub_227C9EE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DC8);
  }

  return result;
}

unint64_t sub_227C9EE80()
{
  result = qword_27D7E9DD0;
  if (!qword_27D7E9DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DB8, &unk_227D62100);
    sub_227B0F800(&unk_27D7E9DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DD0);
  }

  return result;
}

uint64_t GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  v9 = sub_227D49458();
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 96) = v10;
  v12 = *(v11 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 112) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 120) = v14;
  v16 = *(v15 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 136) = v17;
  OUTLINED_FUNCTION_10_0(v17);
  *(v1 + 144) = v18;
  v20 = *(v19 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 160) = v21;
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 176) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 184) = v25;
  v27 = *(v26 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 200) = v28;
  OUTLINED_FUNCTION_10_0(v28);
  *(v1 + 208) = v29;
  v31 = *(v30 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 224) = v32;
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_30();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 240) = v35;
  OUTLINED_FUNCTION_10_0(v35);
  *(v1 + 248) = v36;
  v38 = *(v37 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 264) = v39;
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_30();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 280) = v42;
  OUTLINED_FUNCTION_10_0(v42);
  *(v1 + 288) = v43;
  v45 = *(v44 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_30();
  v46 = sub_227D49D58();
  *(v1 + 304) = v46;
  OUTLINED_FUNCTION_10_0(v46);
  *(v1 + 312) = v47;
  v49 = *(v48 + 64);
  *(v1 + 320) = OUTLINED_FUNCTION_30();
  v50 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_227C9F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_152();
  v18 = *(v17 + 80);
  if (swift_distributed_actor_is_remote())
  {
    v19 = *(v17 + 320);
    v20 = *(v17 + 296);
    v22 = *(v17 + 264);
    v21 = *(v17 + 272);
    v23 = *(v17 + 40);
    OUTLINED_FUNCTION_36(*(v17 + 80));
    sub_227CA5D74(v23, v21, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v24 = *(v17 + 320);
    if (v19)
    {
      v25 = *(v17 + 304);
      v26 = *(v17 + 312);
      (*(*(v17 + 288) + 8))(*(v17 + 296), *(v17 + 280));
      v36 = OUTLINED_FUNCTION_39_0();
      v37(v36);
      v38 = *(v17 + 320);
      v39 = *(v17 + 296);
      v40 = *(v17 + 272);
      OUTLINED_FUNCTION_147_2();
      v41 = *(v17 + 128);
      v76 = *(v17 + 104);

      OUTLINED_FUNCTION_18();

      return v42();
    }

    else
    {
      v30 = *(v17 + 256);
      v31 = *(v17 + 224);
      sub_227CA5D74(*(v17 + 48), *(v17 + 232), &qword_27D7E9840, &qword_227D5EB60);
      sub_227D49478();
      sub_227CA0D1C();
      sub_227CA0DD0();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v32 = *(v17 + 320);
      v33 = *(v17 + 216);
      v34 = *(v17 + 25);
      *(v17 + 16) = *(v17 + 56);
      *(v17 + 24) = v34 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
      sub_227D49478();
      sub_227CA0E84(&unk_27D7E9E40);
      sub_227CA0E84(&unk_27D7E9E48);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v35 = *(v17 + 320);
      v43 = *(v17 + 192);
      v44 = *(v17 + 160);
      sub_227CA5D74(*(v17 + 64), *(v17 + 168), &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v45 = *(v17 + 320);
      v46 = *(v17 + 152);
      v47 = *(v17 + 128);
      v48 = *(v17 + 112);
      v49 = *(v17 + 72);
      v50 = OUTLINED_FUNCTION_56(*(v17 + 120));
      v51(v50);
      sub_227D49478();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v52);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v53);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v54 = *(v17 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v55 = *(v17 + 320);
      v56 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
      OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
      OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
      OUTLINED_FUNCTION_17();
      v58 = *(v17 + 320);
      sub_227D49D08();
      v59 = *(v17 + 104);
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v60 = *(MEMORY[0x277D0CE28] + 4);
      v61 = swift_task_alloc();
      *(v17 + 328) = v61;
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v62);
      *v61 = v17;
      v61[1] = sub_227C9FC00;
      v63 = *(v17 + 320);
      v64 = *(v17 + 104);
      v65 = *(v17 + 80);
      v66 = *(v17 + 32);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_90();

      return MEMORY[0x282164B00](v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    *(v17 + 344) = v27;
    *v27 = v17;
    v27[1] = sub_227C9FE60;
    v28 = *(v17 + 80);

    return sub_227C96A08(v27);
  }
}

uint64_t sub_227C9FC00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v28 = OUTLINED_FUNCTION_81_7();
  v29(v28);
  v30 = *(v27 + 8);
  v31 = OUTLINED_FUNCTION_9_2();
  v32(v31);
  (*(v26 + 8))(a9, v20);
  (*(v25 + 8))(a11, a10);
  (*(v24 + 8))(a13, a12);
  (*(v23 + 8))(a15, a14);
  (*(v22 + 8))(a17, a16);
  v33 = v21[40];
  v34 = v21[37];
  v35 = v21[34];
  v36 = v21[32];
  v37 = v21[29];
  v38 = v21[27];
  v39 = v21[24];
  v40 = v21[21];
  v41 = v21[19];
  v42 = v21[16];
  v52 = v21[13];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_137();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, v52, a18, a19, a20);
}

uint64_t sub_227C9FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v43 = v14;
  OUTLINED_FUNCTION_77_0();
  v17 = v15[43];
  v18 = *v16;
  OUTLINED_FUNCTION_5_4();
  *v19 = v18;

  OUTLINED_FUNCTION_81_1();
  v21 = *(v20 + 320);
  v22 = v15[37];
  v23 = v15[34];
  v24 = v15[32];
  v25 = v15[29];
  v26 = v15[27];
  v27 = v15[24];
  v28 = v15[21];
  v41 = v15[19];
  OUTLINED_FUNCTION_81_1();
  v42 = *(v29 + 128);
  OUTLINED_FUNCTION_81_1();
  v31 = *(v30 + 104);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_16_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, a12, a13, a14);
}

uint64_t sub_227CA0080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v28 = OUTLINED_FUNCTION_81_7();
  v29(v28);
  v30 = *(v27 + 8);
  v31 = OUTLINED_FUNCTION_9_2();
  v32(v31);
  (*(v26 + 8))(a9, v20);
  (*(v25 + 8))(a11, a10);
  (*(v24 + 8))(a13, a12);
  (*(v23 + 8))(a15, a14);
  (*(v22 + 8))(a17, a16);
  v33 = v21[42];
  v34 = v21[40];
  v35 = v21[37];
  v36 = v21[34];
  OUTLINED_FUNCTION_147_2();
  v37 = v21[16];
  v48 = v21[13];
  v49 = v38;

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_137();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, v48, v49, a18, a19, a20);
}

uint64_t sub_227CA01DC(uint64_t a1, uint64_t *a2)
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
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
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
  v11 = a2[2];
  v2[8] = v11;
  v12 = *(v11 - 8);
  v2[9] = v12;
  v13 = *(v12 + 64) + 15;
  v23 = swift_task_alloc();
  v2[10] = v23;
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
    goto LABEL_20;
  }

  sub_227D49CF8();
  v14 = *v23;
  v22 = *(v23 + 8);
  v15 = a2[3];
  v2[11] = v15;
  v16 = *(v15 - 8);
  v2[12] = v16;
  v17 = *(v16 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v18 = a2[4];
  v2[14] = v18;
  v19 = *(v18 - 8);
  v2[15] = v19;
  v20 = *(v19 + 64) + 15;
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v21 = swift_task_alloc();
  v2[17] = v21;
  *v21 = v2;
  v21[1] = sub_227CA0850;

  return GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227CA0850()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 136);
  v33 = *(v0 + 128);
  OUTLINED_FUNCTION_69();
  v32 = *(v2 + 120);
  OUTLINED_FUNCTION_69();
  v29 = *(v3 + 112);
  OUTLINED_FUNCTION_69();
  v31 = *(v4 + 104);
  OUTLINED_FUNCTION_69();
  v30 = *(v5 + 96);
  OUTLINED_FUNCTION_69();
  v26 = *(v6 + 88);
  OUTLINED_FUNCTION_69();
  v28 = *(v7 + 80);
  OUTLINED_FUNCTION_69();
  v27 = *(v8 + 72);
  OUTLINED_FUNCTION_69();
  v10 = *(v9 + 64);
  v25 = *(v11 + 56);
  OUTLINED_FUNCTION_69();
  v24 = *(v12 + 48);
  OUTLINED_FUNCTION_69();
  v14 = *(v13 + 40);
  v16 = v15[4];
  v17 = v15[3];
  v18 = v15[2];
  OUTLINED_FUNCTION_80_0();
  v20 = v19;
  OUTLINED_FUNCTION_5_4();
  *v21 = v20;

  (*(v17 + 8))(v16, v18);
  (*(v24 + 8))(v25, v14);
  (*(v27 + 8))(v28, v10);
  (*(v30 + 8))(v31, v26);
  (*(v32 + 8))(v33, v29);

  v22 = *(v20 + 8);

  return v22();
}

unint64_t sub_227CA0BB4()
{
  result = qword_27D7E9DF8;
  if (!qword_27D7E9DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9848, &unk_227D5EB68);
    sub_227B0F800(&unk_27D7E9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DF8);
  }

  return result;
}

unint64_t sub_227CA0C68()
{
  result = qword_27D7E9E08;
  if (!qword_27D7E9E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9848, &unk_227D5EB68);
    sub_227B0F800(&unk_27D7E9E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E08);
  }

  return result;
}

unint64_t sub_227CA0D1C()
{
  result = qword_27D7E9E18;
  if (!qword_27D7E9E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9840, &qword_227D5EB60);
    sub_227B0F800(&unk_27D7E9E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E18);
  }

  return result;
}

unint64_t sub_227CA0DD0()
{
  result = qword_27D7E9E28;
  if (!qword_27D7E9E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9840, &qword_227D5EB60);
    sub_227B0F800(&unk_27D7E9E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E28);
  }

  return result;
}

unint64_t sub_227CA0E84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9E38, &unk_227D621C0);
    result = OUTLINED_FUNCTION_221();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t GameDebuggerService.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v0[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CA101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_119();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    v15 = v13[5];
    v16 = v13[4];
    OUTLINED_FUNCTION_36(v13[6]);
    v13[2] = v16;
    v13[3] = v15;
    sub_227D4CE58();
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v17 = v13[15];
    if (v12)
    {
      v19 = v13[13];
      v20 = v13[14];
      v21 = OUTLINED_FUNCTION_86_5();
      v22(v21);
      v23 = OUTLINED_FUNCTION_17_0();
      v24(v23);
      OUTLINED_FUNCTION_87_7();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v18 = v13[15];
    sub_227D49D08();
    v30 = v13[9];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v31 = *(MEMORY[0x277D0CE38] + 4);
    v32 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v32);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v33);
    OUTLINED_FUNCTION_44_0();
    *v18 = v34;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x282164B10](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }

  else
  {
    v27 = swift_task_alloc();
    v13[18] = v27;
    *v27 = v13;
    OUTLINED_FUNCTION_159_3(v27);
    OUTLINED_FUNCTION_128();

    return sub_227C9EC10(v28);
  }
}

uint64_t sub_227CA1270()
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

uint64_t sub_227CA1368()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v0 = OUTLINED_FUNCTION_43_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_87_7();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA140C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[18];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 120);
  v7 = v0[12];
  v8 = v0[9];

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_227CA1540()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v1 = OUTLINED_FUNCTION_43_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227CA15F0(uint64_t a1, uint64_t *a2)
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
  v9 = v6[1];
  v10 = swift_task_alloc();
  v2[5] = v10;
  *v10 = v2;
  v10[1] = sub_227B3FFF4;

  return GameDebuggerService.enableGameDebugging(bundleID:)();
}

uint64_t GameDebuggerService.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v0[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CA18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_119();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    v15 = v13[5];
    v16 = v13[4];
    OUTLINED_FUNCTION_36(v13[6]);
    v13[2] = v16;
    v13[3] = v15;
    sub_227D4CE58();
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v17 = v13[15];
    if (v12)
    {
      v19 = v13[13];
      v20 = v13[14];
      v21 = OUTLINED_FUNCTION_86_5();
      v22(v21);
      v23 = OUTLINED_FUNCTION_17_0();
      v24(v23);
      OUTLINED_FUNCTION_87_7();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v18 = v13[15];
    sub_227D49D08();
    v30 = v13[9];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v31 = *(MEMORY[0x277D0CE38] + 4);
    v32 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v32);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v33);
    OUTLINED_FUNCTION_44_0();
    *v18 = v34;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x282164B10](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }

  else
  {
    v27 = swift_task_alloc();
    v13[18] = v27;
    *v27 = v13;
    OUTLINED_FUNCTION_159_3(v27);
    OUTLINED_FUNCTION_128();

    return sub_227C96A08(v28);
  }
}

uint64_t sub_227CA1B24()
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

uint64_t sub_227CA1C1C(uint64_t a1, uint64_t *a2)
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
  v9 = v6[1];
  v10 = swift_task_alloc();
  v2[5] = v10;
  *v10 = v2;
  v10[1] = sub_227B4AF94;

  return GameDebuggerService.disableGameDebugging(bundleID:)();
}

uint64_t GameDebuggerService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = v10;
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
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
  v1[24] = OUTLINED_FUNCTION_30();
  v29 = sub_227D49D58();
  v1[25] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[26] = v30;
  v32 = *(v31 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227CA2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[7];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[27];
    v20 = v17[24];
    v22 = v17[20];
    v21 = v17[21];
    v23 = v17[19];
    v24 = v17[4];
    OUTLINED_FUNCTION_36(v17[7]);
    v25 = *(v22 + 16);
    v26 = OUTLINED_FUNCTION_173();
    v27(v26);
    sub_227D49478();
    OUTLINED_FUNCTION_14_4();
    sub_227B15ABC(v28);
    OUTLINED_FUNCTION_13_4();
    sub_227B15ABC(v29);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v30 = v17[27];
    if (v19)
    {
      v31 = v17[25];
      v32 = v17[26];
      (*(v17[23] + 8))(v17[24], v17[22]);
      v33 = OUTLINED_FUNCTION_17_0();
      v34(v33);
      v54 = v17[27];
      v55 = v17[24];
      v56 = v17[21];
      OUTLINED_FUNCTION_115_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v57();
    }

    else
    {
      v48 = v17[18];
      v17[2] = v17[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      sub_227D49478();
      sub_227B418A4();
      sub_227B419DC();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v49 = v17[27];
      v50 = v17[15];
      v51 = v17[11];
      sub_227CA5D74(v17[6], v17[12], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v52 = v17[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v53 = v17[27];
      v59 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
      OUTLINED_FUNCTION_53_1(&qword_27D7E6A78);
      OUTLINED_FUNCTION_52_0(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17();
      v61 = v17[27];
      sub_227D49D08();
      v62 = v17[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v63 = *(MEMORY[0x277D0CE28] + 4);
      v64 = swift_task_alloc();
      v17[28] = v64;
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v65);
      *v64 = v17;
      v64[1] = sub_227CA25C0;
      v66 = v17[27];
      v67 = v17[10];
      v68 = v17[7];
      v69 = v17[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v17[30] = v35;
    *v35 = v36;
    v35[1] = sub_227B40E2C;
    v37 = v17[6];
    v38 = v17[7];
    v39 = v17[4];
    v40 = v17[5];
    v41 = v17[3];
    OUTLINED_FUNCTION_72();

    return sub_227CA2F3C(v42, v43, v44, v45);
  }
}

uint64_t sub_227CA25C0()
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

uint64_t sub_227CA26B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v15 = v14[26];
  v43 = v14[25];
  v44 = v14[27];
  v42 = v14[24];
  v17 = v14[22];
  v16 = v14[23];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  v24 = OUTLINED_FUNCTION_91();
  v25(v24);
  (*(v22 + 8))(v21, v23);
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v42, v17);
  (*(v15 + 8))(v44, v43);
  v26 = v14[27];
  v27 = v14[24];
  v28 = v14[21];
  v29 = v14[18];
  v30 = v14[15];
  v31 = v14[12];
  v32 = v14[10];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14);
}

uint64_t sub_227CA27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v15 = v14[26];
  v40 = v14[25];
  v41 = v14[27];
  v39 = v14[24];
  v17 = v14[22];
  v16 = v14[23];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  v24 = OUTLINED_FUNCTION_91();
  v25(v24);
  (*(v22 + 8))(v21, v23);
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v39, v17);
  (*(v15 + 8))(v41, v40);
  v26 = v14[29];
  v27 = v14[27];
  v28 = v14[24];
  v29 = v14[21];
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_227CA291C(uint64_t a1, uint64_t *a2)
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
  v15[1] = sub_227CA2CDC;

  return GameDebuggerService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CA2CDC()
{
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

uint64_t sub_227CA2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CA2F60, v4);
}

uint64_t sub_227CA2F60()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_227B417C4;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_227B53F5C();
}

uint64_t GameDebuggerService.describeGameActivityDefinitions(_:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CA3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    OUTLINED_FUNCTION_26_11();
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
      OUTLINED_FUNCTION_72();

      return v28();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      sub_227B425C8();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v36 = v18[8];
      sub_227D49468();
      v37 = *(MEMORY[0x277D0CE28] + 4);
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v38);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v39);
      OUTLINED_FUNCTION_48();
      *v23 = v40;
      OUTLINED_FUNCTION_1_30(v41);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_72();

    return sub_227CA3880(v34);
  }
}

uint64_t sub_227CA33D0()
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

uint64_t sub_227CA34C8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[3];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227CA3574(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerService.describeGameActivityDefinitions(_:)();
}

uint64_t sub_227CA3714()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_80_0();
  *v6 = v7;
  OUTLINED_FUNCTION_197(v8, v9);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_9_2();
  v12(v11);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227CA3880(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227CA3898()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B55528();
}

uint64_t GameDebuggerService.invokeActivity(_:)()
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
  v7 = sub_227D498E8();
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
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

uint64_t sub_227CA3AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v14 = v13[3];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    v16 = v13[8];
    v15 = v13[9];
    v17 = v13[7];
    v18 = v13[2];
    OUTLINED_FUNCTION_36(v13[3]);
    v19 = *(v16 + 16);
    v20 = OUTLINED_FUNCTION_173();
    v21(v20);
    OUTLINED_FUNCTION_26_11();
    sub_227D49478();
    sub_227B0F800(&qword_27D7E6B68);
    sub_227B0F800(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v24 = v13[14];
      v25 = OUTLINED_FUNCTION_86_5();
      v26(v25);
      (*(v24 + 8))(v13[15], v13[13]);
      OUTLINED_FUNCTION_87_7();
      v27 = v13[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    v22 = v13[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v13[15];
    sub_227D49D08();
    v34 = v13[6];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v35 = *(MEMORY[0x277D0CE38] + 4);
    v36 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v36);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v37);
    OUTLINED_FUNCTION_44_0();
    *v23 = v38;
    v23[1] = sub_227CA3DB4;
    v39 = v13[15];
    v40 = v13[6];
    v41 = v13[3];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v30 = swift_task_alloc();
    v13[18] = v30;
    *v30 = v13;
    v30[1] = sub_227B3FC38;
    v31 = v13[3];
    OUTLINED_FUNCTION_53(v13[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CA41B4();
  }
}

uint64_t sub_227CA3DB4()
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

uint64_t sub_227CA3EAC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v1 = OUTLINED_FUNCTION_163_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  OUTLINED_FUNCTION_87_7();
  v7 = *(v0 + 48);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227CA3F5C()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = OUTLINED_FUNCTION_163_2();
  v5(v4);
  v6 = OUTLINED_FUNCTION_39_0();
  v7(v6);
  v8 = v0[17];
  v9 = OUTLINED_FUNCTION_156_4();
  v10(v9);
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  OUTLINED_FUNCTION_18();

  return v15();
}

uint64_t sub_227CA401C(uint64_t a1, uint64_t *a2)
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

  return GameDebuggerService.invokeActivity(_:)();
}

uint64_t sub_227CA41B4()
{
  OUTLINED_FUNCTION_6();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[32] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[35] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[36] = v11;
  v13 = *(v12 + 64);
  v1[37] = OUTLINED_FUNCTION_379();
  v1[38] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[39] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[40] = v15;
  v17 = *(v16 + 64);
  v1[41] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  v1[42] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[43] = v19;
  v21 = *(v20 + 64);
  v1[44] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v1[45] = OUTLINED_FUNCTION_30();
  v25 = sub_227D49AC8();
  v1[46] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[47] = v26;
  v28 = *(v27 + 64);
  v1[48] = OUTLINED_FUNCTION_379();
  v1[49] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E68, &qword_227D625C8);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  v1[50] = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  v1[51] = v32;
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  v1[52] = OUTLINED_FUNCTION_379();
  v1[53] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[54] = v35;
  OUTLINED_FUNCTION_10_0(v35);
  v1[55] = v36;
  v38 = *(v37 + 64);
  v1[56] = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  v1[57] = OUTLINED_FUNCTION_30();
  v42 = sub_227D49188();
  v1[58] = v42;
  OUTLINED_FUNCTION_10_0(v42);
  v1[59] = v43;
  v45 = *(v44 + 64);
  v1[60] = OUTLINED_FUNCTION_379();
  v1[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CA4568, v0, 0);
}

uint64_t sub_227CA4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v22 = v20[57];
  v21 = v20[58];
  v23 = v20[29];
  sub_227D498B8();
  OUTLINED_FUNCTION_113_5();
  if (v24)
  {
    sub_227B1DE58(v20[57], &qword_27D7E6CD8, &qword_227D5C1C0);
    v25 = sub_227D49E08();
    OUTLINED_FUNCTION_6_17();
    sub_227B0F800(v26);
    v27 = swift_allocError();
    OUTLINED_FUNCTION_130_2();
    *v28 = v30;
    v28[1] = v29;
    v31 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v25);
    (*(v32 + 104))();
    v64 = v27;
    swift_willThrow();
    v37 = v20[60];
    v36 = v20[61];
    v39 = v20[56];
    v38 = v20[57];
    v41 = v20[52];
    v40 = v20[53];
    v42 = v20[49];
    v43 = v20[50];
    v44 = v20[48];
    v45 = v20[44];
    v46 = v20[45];
    OUTLINED_FUNCTION_48_6();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_137();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, v64, a17, a18, a19, a20);
  }

  else
  {
    v33 = v20[56];
    v34 = v20[29];
    (*(v20[59] + 32))(v20[61], v20[57], v20[58]);
    sub_227D49878();
    v20[62] = sub_227D4A898();
    v20[63] = v35;
    v56 = v20[36];
    v57 = v20[29];
    v58 = v20[30];
    (*(v20[55] + 8))(v20[56], v20[54]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE0, &qword_227D4F910);
    v59 = *(v56 + 72);
    v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v61 = swift_allocObject();
    v20[64] = v61;
    *(v61 + 16) = xmmword_227D4E520;
    sub_227D497C8();
    v20[65] = *(v58 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
    v62 = swift_task_alloc();
    v20[66] = v62;
    *v62 = v20;
    OUTLINED_FUNCTION_26(v62);
    OUTLINED_FUNCTION_137();

    return sub_227B55528();
  }
}

uint64_t sub_227CA491C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 528);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  v5[67] = v0;

  if (v0)
  {
    v11 = v5[30];
    v12 = sub_227CA54A4;
  }

  else
  {
    v13 = v5[64];
    v14 = v5[30];

    v5[68] = v3;
    v12 = sub_227CA4A44;
    v11 = v14;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_227CA54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = v18[63];
  v19 = v18[64];
  v21 = v18[61];
  v22 = v18[58];
  v23 = v18[59];

  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_9_2();
  v26(v25);
  v36 = v18[67];
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, v36, a16, a17, a18);
}

uint64_t sub_227CA55B4()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[69];
  *v4 = *v1;
  v3[70] = v0;

  v6 = v2[30];
  if (v0)
  {
    memcpy(v3 + 11, v3 + 2, 0x48uLL);
    sub_227B6407C((v3 + 11));
    v7 = sub_227CA5A84;
  }

  else
  {
    memcpy(v3 + 20, v3 + 2, 0x48uLL);
    sub_227B6407C((v3 + 20));
    v7 = sub_227CA5708;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227CA5708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = OUTLINED_FUNCTION_148_2();
  v21(v20);
  sub_227B1DE58(v18, &qword_27D7E6AD8, &unk_227D4ED80);
  v22 = OUTLINED_FUNCTION_17_0();
  v23(v22);
  v25 = v19[60];
  v24 = v19[61];
  v27 = v19[56];
  v26 = v19[57];
  v29 = v19[52];
  v28 = v19[53];
  v31 = v19[49];
  v30 = v19[50];
  v32 = v19[48];
  v33 = v19[44];
  v34 = v19[45];
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_90();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CA582C()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = v2[71];
  *v4 = *v1;
  *(v3 + 576) = v0;

  v6 = v2[31];
  v7 = v2[30];
  sub_227B63FC4(v6);
  if (v0)
  {
    v8 = sub_227CA5BA0;
  }

  else
  {
    v8 = sub_227CA5968;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_227CA5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = v18[61];
  v20 = v18[58];
  v21 = v18[59];
  sub_227B1DE58(v18[53], &qword_27D7E6AD8, &unk_227D4ED80);
  v22 = OUTLINED_FUNCTION_39_0();
  v23(v22);
  v25 = v18[60];
  v24 = v18[61];
  v27 = v18[56];
  v26 = v18[57];
  v29 = v18[52];
  v28 = v18[53];
  v31 = v18[49];
  v30 = v18[50];
  v32 = v18[48];
  v33 = v18[44];
  v34 = v18[45];
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_90();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CA5A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = OUTLINED_FUNCTION_148_2();
  v21(v20);
  sub_227B1DE58(v18, &qword_27D7E6AD8, &unk_227D4ED80);
  v22 = OUTLINED_FUNCTION_17_0();
  v23(v22);
  v33 = *(v19 + 560);
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_227CA5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = v18[61];
  v20 = v18[58];
  v21 = v18[59];
  sub_227B1DE58(v18[53], &qword_27D7E6AD8, &unk_227D4ED80);
  v22 = OUTLINED_FUNCTION_39_0();
  v23(v22);
  v33 = v18[72];
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_227CA5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  v6 = v5;
  if (v4)
  {
    sub_227CA5D74(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27D7E6AD8, &unk_227D4ED80);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227CA5D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return a2;
}

uint64_t GameDebuggerService.getDefaultGameActivityEnvironment()()
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
  v7 = sub_227D49D58();
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CA5EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[9];
    OUTLINED_FUNCTION_36(v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v19)
    {
      v22 = OUTLINED_FUNCTION_43_0();
      v23(v22);
      v24 = v17[9];
      v25 = v17[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      v20 = v17[9];
      sub_227D49528();
      sub_227B0F800(&unk_27D7E9E70);
      sub_227B0F800(&unk_27D7E9E78);
      OUTLINED_FUNCTION_17();
      v21 = v17[9];
      sub_227D49D08();
      v40 = v17[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v41 = *(MEMORY[0x277D0CE28] + 4);
      v42 = swift_task_alloc();
      OUTLINED_FUNCTION_79_1(v42);
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v43);
      *v42 = v17;
      v42[1] = sub_227CA6150;
      v44 = v17[9];
      v45 = v17[6];
      v47 = v17[2];
      v46 = v17[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v17[12] = v35;
    *v35 = v36;
    v35[1] = sub_227CA62D4;
    v37 = v17[2];
    v38 = v17[3];
    OUTLINED_FUNCTION_46();

    return sub_227CA6514();
  }
}

uint64_t sub_227CA6150()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CA6248()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  OUTLINED_FUNCTION_15_0();

  return v7();
}

uint64_t sub_227CA62D4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v2 = *(v0 + 96);
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 72);
  v7 = *(v0 + 48);

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_227CA63EC()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_163_2();
  v2(v1);
  v3 = v0[11];
  v4 = OUTLINED_FUNCTION_43_0();
  v5(v4);
  v6 = v0[9];
  v7 = v0[6];

  OUTLINED_FUNCTION_18();

  return v8();
}

uint64_t sub_227CA6474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return GameDebuggerService.getDefaultGameActivityEnvironment()();
}

uint64_t sub_227CA6514()
{
  OUTLINED_FUNCTION_6();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E80, &qword_227D62650);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227CA65A0, v0, 0);
}

uint64_t sub_227CA65A0()
{
  OUTLINED_FUNCTION_51_0();
  sub_227C19454(*(v0[18] + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider) + 104, (v0 + 7));
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v2 + 24);
  v8 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[20] = v5;
  *v5 = v6;
  v5[1] = sub_227CA66E0;

  return (v8)(v0 + 2, v1, v2);
}

uint64_t sub_227CA66E0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v1 + 160);
  *v4 = *v2;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 144);
  if (v0)
  {
    v8 = sub_227CA6A0C;
  }

  else
  {
    v8 = sub_227CA67F8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_227CA67F8()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_227C19454((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E88, &qword_227D62658);
  v2 = sub_227D49528();
  v3 = swift_dynamicCast();
  v4 = v0[19];
  if (v3)
  {
    v5 = v0[17];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
    OUTLINED_FUNCTION_14_0(v2);
    v7 = *(v6 + 32);
    v8 = OUTLINED_FUNCTION_150();
    v9(v8);

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[19], 1, 1, v2);
    sub_227B1DE58(v4, &qword_27D7E9E80, &qword_227D62650);
    sub_227D4D668();

    OUTLINED_FUNCTION_130_2();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v11 = sub_227D4DC98();
    MEMORY[0x22AAA5DA0](v11);

    sub_227D49E08();
    OUTLINED_FUNCTION_6_17();
    sub_227B0F800(v12);
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = v0[19];

    OUTLINED_FUNCTION_18();
  }

  return v10();
}

uint64_t sub_227CA6A0C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[21];
  v2 = v0[19];

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t GameDebuggerService.getServiceVersion()()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v0;
  v2 = sub_227D49458();
  v1[5] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[6] = v3;
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49D58();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CA6B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[4];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[10];
    OUTLINED_FUNCTION_36(v17[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v19)
    {
      (*(v17[9] + 8))(v17[10], v17[8]);
      v21 = v17[10];
      v22 = v17[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    else
    {
      sub_227D49D38();
      v20 = v17[10];
      sub_227D49D08();
      v34 = v17[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = *(MEMORY[0x277D0CE28] + 4);
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_64_0(v36);
      type metadata accessor for GameDebuggerService();
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v36 = v38;
      v36[1] = sub_227CA6DA4;
      v39 = v17[10];
      v40 = v17[7];
      v41 = v17[4];
      OUTLINED_FUNCTION_1_2(v42);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v17[13] = v32;
    *v32 = v17;
    OUTLINED_FUNCTION_35(v32);
    OUTLINED_FUNCTION_46();

    return sub_227CA729C();
  }
}

uint64_t sub_227CA6DA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CA6E9C()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_180_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];
  v10 = OUTLINED_FUNCTION_57_0();

  return v11(v10);
}

uint64_t sub_227CA6F38()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = *(v2 + 80);
  v7 = *(v2 + 56);

  v8 = *(v4 + 8);
  if (!v0)
  {
    OUTLINED_FUNCTION_150();
  }

  OUTLINED_FUNCTION_164();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227CA7074()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_180_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[7];

  OUTLINED_FUNCTION_18();

  return v8();
}

uint64_t sub_227CA7104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227CA719C;

  return GameDebuggerService.getServiceVersion()();
}

uint64_t sub_227CA719C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v8 = *v0;
  *v3 = v4;
  v3[1] = v5;

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t static GameDebuggerService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameDebuggerService();
  sub_227D49D78();
  OUTLINED_FUNCTION_14_13();
  sub_227B0F800(v5);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
    v10 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v10);
    (*(v11 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem) = a2;
  }

  return v8;
}

uint64_t GameDebuggerService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_14_13();
  sub_227B0F800(v3);
  sub_227D493C8();
  v4 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + v2);

  v7 = *(v0 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameDebuggerService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    GameDebuggerService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CA7578()
{
  sub_227D4DB58();
  type metadata accessor for GameDebuggerService();
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameDebuggerService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameDebuggerService();
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CA766C@<X0>(uint64_t *a1@<X8>)
{
  result = GameDebuggerService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CA76CC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 336))();
}

uint64_t sub_227CA7714()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameDebuggerService();
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v0);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227CA7778()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for GameDebuggerService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CA7980()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeAchievements(_:)();
}

uint64_t sub_227CA7A04()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.listAchievements(games:after:)();
}

uint64_t sub_227CA7A90()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.getAchievementsProgresses(_:player:)();
}

uint64_t sub_227CA7B1C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.resetAchievementsProgress(_:players:)();
}

uint64_t sub_227CA7BA8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.revealAchievements(_:players:)();
}

uint64_t sub_227CA7C34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.submitAchievementsProgress(_:)();
}

uint64_t sub_227CA7CB8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.getImageData(_:)();
}

uint64_t sub_227CA7D3C()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return GameDebuggerService.listLocalPlayers()();
}

uint64_t sub_227CA7DC0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeLeaderboards(_:)();
}

uint64_t sub_227CA7E44()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_117_0();

  return GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_227CA7ED8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_121_3();
  OUTLINED_FUNCTION_164();

  return GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_227CA7F70()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.listLeaderboards(games:players:)();
}

uint64_t sub_227CA7FFC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.submitLeaderboardEntries(_:)();
}

uint64_t sub_227CA8080()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.resetLeaderboards(_:)();
}

uint64_t sub_227CA8104()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeLeaderboardSets(_:)();
}

uint64_t sub_227CA8188()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.listLeaderboardSets(games:)();
}

uint64_t sub_227CA820C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227CA8290()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describePlayerProfiles(_:)();
}

uint64_t sub_227CA8314()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeGameLockups(_:)();
}

uint64_t sub_227CA8398()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_150_1();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_36_1(v3);

  return GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227CA8440()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.enableGameDebugging(bundleID:)();
}

uint64_t sub_227CA84CC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.disableGameDebugging(bundleID:)();
}

uint64_t sub_227CA8558()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_121_3();
  OUTLINED_FUNCTION_164();

  return GameDebuggerService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CA85F8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeGameActivityDefinitions(_:)();
}

uint64_t sub_227CA867C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.invokeActivity(_:)();
}

uint64_t sub_227CA8700()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;

  return GameDebuggerService.getDefaultGameActivityEnvironment()();
}

uint64_t sub_227CA8790()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return GameDebuggerService.getServiceVersion()();
}

uint64_t sub_227CA8814()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_150();
  }

  return v7(v6);
}

uint64_t sub_227CA890C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for GameDebuggerService();
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v4);
  v5 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v5);
}

uint64_t sub_227CA8984()
{
  v1 = *v0;
  type metadata accessor for GameDebuggerService();
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v2);
  OUTLINED_FUNCTION_32_8();
  sub_227B0F800(v3);
  return sub_227D49428();
}

uint64_t sub_227CA8A2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameDebuggerService();
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v3);
  OUTLINED_FUNCTION_32_8();
  sub_227B0F800(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227CA8ADC()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of GameDebuggerService.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 128);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerService.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerService.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerService.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerService.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.getImageData(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 168);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 176);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7();
}

uint64_t dispatch thunk of GameDebuggerService.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

void dispatch thunk of GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 192);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X5, X16 }
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  OUTLINED_FUNCTION_121_3();

  return v7();
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 208);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerService.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 216);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 224);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 232);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 240);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 248);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerService.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 256) + **(v0 + 256);
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerService.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

void dispatch thunk of GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_45();
  v7 = *(v0 + 272) + **(v0 + 272);
  v1 = *(*(v0 + 272) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_36_1(v3);
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X7, X16 }
}

uint64_t dispatch thunk of GameDebuggerService.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 280) + **(v0 + 280));
  v1 = *(*(v0 + 280) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameDebuggerService.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 288) + **(v0 + 288));
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameDebuggerService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 296) + **(v0 + 296));
  v1 = *(*(v0 + 296) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_121_3();

  return v6();
}

uint64_t dispatch thunk of GameDebuggerService.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 304) + **(v0 + 304);
  v1 = *(*(v0 + 304) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerService.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 312) + **(v0 + 312);
  v1 = *(*(v0 + 312) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerService.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v7 = (*(v1 + 320) + **(v1 + 320));
  v2 = *(*(v1 + 320) + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v4[1] = sub_227B3E2E8;

  return v7(v0);
}

uint64_t dispatch thunk of GameDebuggerService.getServiceVersion()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 328) + **(v0 + 328));
  v1 = *(*(v0 + 328) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return v6();
}

uint64_t sub_227CAA7F8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_150();

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_48_6()
{
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[37];
  v2 = v0[34];
  v7 = v0[31];
}

uint64_t OUTLINED_FUNCTION_81_7()
{
  v1 = v0[39];
  v19 = v0[38];
  v20 = v0[40];
  v2 = v0[36];
  v17 = v0[35];
  v18 = v0[37];
  v3 = v0[31];
  v15 = v0[30];
  v16 = v0[32];
  v4 = v0[26];
  v5 = v0[25];
  v14 = v0[27];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  result = v0[13];
  v12 = v0[11];
  v13 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_86_5()
{
  result = v0[12];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_7()
{
  result = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_98_4(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for GameDebuggerService();
}

uint64_t OUTLINED_FUNCTION_101_5()
{
  v4 = v0[38];
  v5 = v0[37];
  v2 = v0[34];
  v6 = v0[31];
}

uint64_t OUTLINED_FUNCTION_102_4()
{

  return sub_227D49478();
}

unint64_t OUTLINED_FUNCTION_116_4(uint64_t a1)
{

  return sub_227B0F800(a1);
}

uint64_t OUTLINED_FUNCTION_131_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_133_2()
{

  return sub_227D49478();
}

void OUTLINED_FUNCTION_147_2()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[19];
}

uint64_t OUTLINED_FUNCTION_148_2()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[53];
  result = v0[49];
  v6 = v0[46];
  v7 = *(v0[47] + 8);
  return result;
}

void OUTLINED_FUNCTION_158_3()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_159_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_163_2()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

void OUTLINED_FUNCTION_178_4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_180_1()
{
  v2 = v0[9];
  v1 = v0[10];
  result = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = *(v0[6] + 8);
  return result;
}

void OUTLINED_FUNCTION_183_5()
{
  v5 = v0[30];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
}

uint64_t AuthenticationService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227CAAC44()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BD28);
  __swift_project_value_buffer(v0, qword_280E7BD28);
  return sub_227D49E68();
}

uint64_t sub_227CAAC90()
{
  if (_MergedGlobals_13 != -1)
  {
    OUTLINED_FUNCTION_5_22();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BD28);
}

uint64_t static AuthenticationService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_13 != -1)
  {
    OUTLINED_FUNCTION_5_22();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BD28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227CAAD7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_227CAADCC(a1, a2);
  return v7;
}

uint64_t sub_227CAADCC(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = sub_227D49EF8();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem) = a1;
  type metadata accessor for AuthenticationService();
  v17 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v9, v10);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v11, v12);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id, v7, v15);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_dataProvider) = v16;
  v17 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for AuthenticationService()
{
  result = qword_27D801220;
  if (!qword_27D801220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AuthenticationService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_227D49D58();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CAB108, 0, 0);
}

uint64_t sub_227CAB108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[9];
    v20 = *(v17[3] + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem);
    sub_227D49D68();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v22 = v17[9];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227CAB9D8(&qword_27D7E6BD0, &qword_27D7E6BD8);
    sub_227CAB9D8(&qword_27D7E6BE0, &qword_27D7E6BE8);
    sub_227D49D38();
    v24 = v17[9];
    sub_227D49D08();
    v28 = v17[6];
    sub_227D49468();
    v29 = *(MEMORY[0x277D0CE28] + 4);
    v30 = swift_task_alloc();
    v17[10] = v30;
    v31 = type metadata accessor for AuthenticationService();
    OUTLINED_FUNCTION_0_50();
    sub_227B0F844(v32, v33);
    *v30 = v17;
    v30[1] = sub_227CAB454;
    v34 = v17[9];
    v35 = v17[6];
    v36 = v17[3];

    return MEMORY[0x282164B00](v17 + 2, v36, v35, v34, v21, v23, v31, v21, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v25 = swift_task_alloc();
    v17[12] = v25;
    *v25 = v17;
    v25[1] = sub_227B48470;
    v26 = v17[3];

    return sub_227CAB830();
  }
}

uint64_t sub_227CAB454()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_227CAB5F8;
  }

  else
  {
    v7 = sub_227CAB558;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227CAB558()
{
  OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = v3[2];
  v7 = v3[9];
  v8 = v3[6];

  OUTLINED_FUNCTION_115();

  return v9(v6);
}

uint64_t sub_227CAB5F8()
{
  OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = v3[11];
  v7 = v3[9];
  v8 = v3[6];

  v9 = v3[1];

  return v9();
}

uint64_t sub_227CAB694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227CAB72C;

  return AuthenticationService.listLocalPlayers()();
}

uint64_t sub_227CAB72C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 24);
  v6 = *v0;
  **(v1 + 16) = v3;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_227CAB850()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_227CAB8EC;

  return sub_227D1FF70();
}

uint64_t sub_227CAB8EC()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();

  return v7(v2);
}

uint64_t sub_227CAB9D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227CABA60(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227CABA60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67C0, &unk_227D4FB20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AuthenticationService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AuthenticationService();
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v5, v6);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem) = a2;
  }

  return v10;
}

uint64_t AuthenticationService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AuthenticationService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    AuthenticationService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CABD5C()
{
  sub_227D4DB58();
  type metadata accessor for AuthenticationService();
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t AuthenticationService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for AuthenticationService();
    OUTLINED_FUNCTION_0_50();
    sub_227B0F844(v1, v2);
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CABE54@<X0>(uint64_t *a1@<X8>)
{
  result = AuthenticationService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CABEF8()
{
  v1 = *v0;
  type metadata accessor for AuthenticationService();
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v2, v3);
  return sub_227D49418();
}

uint64_t sub_227CABF64()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for AuthenticationService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CAC16C()
{
  OUTLINED_FUNCTION_6();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227B35D04;

  return AuthenticationService.listLocalPlayers()();
}

uint64_t sub_227CAC1F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for AuthenticationService();
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v4, v5);

  return MEMORY[0x2821FF4E0](v2);
}

uint64_t sub_227CAC274()
{
  v1 = *v0;
  type metadata accessor for AuthenticationService();
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v2, v3);
  OUTLINED_FUNCTION_2_34();
  sub_227B0F844(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227CAC31C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AuthenticationService();
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v3, v4);
  OUTLINED_FUNCTION_2_34();
  sub_227B0F844(v5, v6);
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227CAC3D4()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of AuthenticationService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_20();
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227B4AD00;

  return v6();
}

uint64_t sub_227CAC5C8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_227CAC638()
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11();
  }
}

uint64_t *sub_227CAC684()
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11();
  }

  return &qword_280E7D408;
}

uint64_t sub_227CAC6CC(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_227CAC6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11();
  }

  a5[12] = qword_280E7D408;
  *a5 = a1;
  a5[1] = a2;
  sub_227B132F0(a3, (a5 + 2));
  sub_227B132F0(a4, (a5 + 7));
}

uint64_t sub_227CAC794()
{
  type metadata accessor for GameKitDirectoryResources();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  result = sub_227D4CE28();
  *(v0 + 112) = result;
  qword_280E7D408 = v0;
  return result;
}

uint64_t sub_227CAC7FC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  *(v0 + 112) = sub_227D4CE28();
  return v0;
}

uint64_t sub_227CAC860()
{
  type metadata accessor for GameData(0);

  return sub_227D4CE28();
}

uint64_t sub_227CAC8A8()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  return sub_227D4CE58();
}

uint64_t sub_227CAC8E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_227CAC97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_45();
  v7 = *(v6 + 112);

  v8 = v7(v14);
  v10 = v9;
  v11 = *v9;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  sub_227CB6CF0(a3, a1, a2);
  *v10 = v13;
  return v8(v14, 0);
}

uint64_t sub_227CACA40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v5 = (*(v4 + 112))(v7);
  sub_227CB6C14(a1, a2);

  return v5(v7, 0);
}

uint64_t sub_227CACAD0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227CACAF8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CACB30()
{
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  *(v0 + 112) = sub_227D4CE28();
  return v0;
}

uint64_t sub_227CACB7C()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v10 = sub_227D492A8();
  v1[12] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9ED0, &unk_227D62E58);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v17 = sub_227D48EF8();
  v1[17] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[18] = v18;
  v20 = *(v19 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v24 = sub_227D49188();
  v1[21] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[22] = v25;
  v27 = *(v26 + 64);
  v1[23] = OUTLINED_FUNCTION_121();
  v1[24] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_227CACD84()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[9];
  v2 = v1[1];
  v9 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_227CACE78;
  v5 = v0[20];
  v6 = v0[7];
  v7 = v0[8];

  return v9(v5, v6, v7);
}

uint64_t sub_227CACE78()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 200);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CACF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = v14[20];
  v15 = v14[21];
  OUTLINED_FUNCTION_146_5(v16);
  if (v17)
  {
    v18 = &qword_27D7E6CD8;
    v19 = &qword_227D5C1C0;
    v20 = v16;
LABEL_8:
    sub_227B4DB00(v20, v18, v19);
    v50 = v14[7];
    v49 = v14[8];
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v70 = v51;
    MEMORY[0x22AAA5DA0](v50, v49);
    MEMORY[0x22AAA5DA0](46, 0xE100000000000000);
    sub_227D49E08();
    OUTLINED_FUNCTION_1_32();
    sub_227B12A10(v52, v53);
    OUTLINED_FUNCTION_5_5();
    sub_227D49D98();

    swift_willThrow();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, 0xD000000000000022, v70, a11, a12, a13, a14);
  }

  v21 = v14[26];
  v22 = v14[16];
  (*(v14[22] + 32))(v14[24], v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9ED8, &qword_227D62E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  v24 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v25 = v24;
  sub_227CB6E2C(inited);
  sub_227D490D8();
  if (v21)
  {
    v26 = v14[24];
    v27 = v14[21];
    v28 = v14[22];
    v30 = v14[16];
    v29 = v14[17];

    v31 = OUTLINED_FUNCTION_37_6();
    v32(v31);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
    v18 = &unk_27D7E9ED0;
    v19 = &unk_227D62E58;
    v20 = v30;
    goto LABEL_8;
  }

  v37 = v14[18];
  v36 = v14[19];
  v39 = v14[16];
  v38 = v14[17];
  v41 = v14[11];
  v40 = v14[12];

  __swift_storeEnumTagSinglePayload(v39, 0, 1, v38);
  (*(v37 + 32))(v36, v39, v38);
  sub_227D48EE8();
  if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
  {
    v42 = v14[24];
    v43 = v14[21];
    v44 = v14[22];
    v45 = v14[11];
    (*(v14[18] + 8))(v14[19], v14[17]);
    v46 = *(v44 + 8);
    v47 = OUTLINED_FUNCTION_57_0();
    v48(v47);
    v18 = &qword_27D7E6D08;
    v19 = &qword_227D59460;
    v20 = v45;
    goto LABEL_8;
  }

  v63 = v14[9];
  (*(v14[13] + 32))(v14[15], v14[11], v14[12]);
  v64 = *(v63 + 96);
  v14[27] = v64;
  v65 = (*v64 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v14[28] = *(*v64 + 96);
  v14[29] = v65;
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2822009F8](v66, v67, v68);
}

uint64_t sub_227CAD2FC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  *(v0 + 240) = (*(v0 + 224))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = sub_227BD8C70(v16[7], v16[8], v16[30]);

  if (v17)
  {
    v18 = v16[27];

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {
    v23 = v16[23];
    v24 = v16[21];
    v25 = v16[22];
    v26 = v16[14];
    v27 = v16[13];
    v45 = v16[24];
    v46 = v16[12];
    v28 = v16[10];
    v48 = v16[15];
    v50 = v16[9];
    v30 = v16[7];
    v29 = v16[8];
    type metadata accessor for GameData(0);
    sub_227D4CE58();
    sub_227D4A698();
    (*(v25 + 16))(v23, v45, v24);
    (*(v27 + 16))(v26, v48, v46);
    v31 = sub_227CB86B4(v28, v23, v26);
    v16[31] = v31;
    v47 = (*v31 + 656);
    v49 = *v47 + **v47;
    v32 = (*v47)[1];
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_117_4(v33);
    *v34 = v35;
    v34[1] = sub_227CAD580;
    OUTLINED_FUNCTION_23();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v47, v49, v50, a14, a15, a16);
  }
}

uint64_t sub_227CAD580()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[33] = v0;

  if (v0)
  {
    v9 = sub_227CAE028;
    v10 = 0;
  }

  else
  {
    v10 = v3[27];
    v11 = (*v10 + 120) & 0xFFFFFFFFFFFFLL | 0xCDDB000000000000;
    v3[34] = *(*v10 + 120);
    v3[35] = v11;
    v9 = sub_227CAD6A0;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_227CAD6A0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  (*(v0 + 272))(*(v0 + 56), *(v0 + 64), *(v0 + 248));
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = *(v16 + 248);

  v19 = OUTLINED_FUNCTION_8_14();
  v20(v19);
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_141();
  v23(v22);
  v24 = OUTLINED_FUNCTION_76_7();
  v25(v24);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CAD7E4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  *(v0 + 288) = (*(v0 + 224))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAD848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = sub_227BD8C70(v16[7], v16[8], v16[36]);
  v16[37] = v18;

  if (v18)
  {
    OUTLINED_FUNCTION_45();
    v19 += 78;
    v16[38] = *v19;
    v16[39] = v19 & 0xFFFFFFFFFFFFLL | 0x1470000000000000;
    OUTLINED_FUNCTION_85_7();
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_8_14();
    v25(v24);
    v26 = *(v17 + 8);
    v27 = OUTLINED_FUNCTION_141();
    v28(v27);
    v29 = OUTLINED_FUNCTION_76_7();
    v30(v29);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CAD998()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  *(v0 + 384) = (*(v0 + 304))(*(v0 + 192), *(v0 + 120)) & 1;
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CADA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  if (*(v16 + 384) == 1)
  {
    v18 = **(v16 + 296) + 616;
    *(v16 + 320) = *v18;
    *(v16 + 328) = v18 & 0xFFFFFFFFFFFFLL | 0xC4FC000000000000;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {
    v23 = *(v16 + 296);

    v24 = OUTLINED_FUNCTION_8_14();
    v25(v24);
    v26 = *(v17 + 8);
    v27 = OUTLINED_FUNCTION_141();
    v28(v27);
    v29 = OUTLINED_FUNCTION_76_7();
    v30(v29);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CADB50()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 216);
  (*(v0 + 320))(*(v0 + 192), *(v0 + 120));
  OUTLINED_FUNCTION_119_5();
  *(v0 + 336) = *(v4 + 128);
  *(v0 + 344) = (v4 + 128) & 0xFFFFFFFFFFFFLL | 0x8F59000000000000;
  OUTLINED_FUNCTION_89_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CADBD8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 344);
  v2 = *(v0 + 296);
  v3 = *(v0 + 216);
  v4 = *(v0 + 72);
  (*(v0 + 336))(*(v0 + 56), *(v0 + 64));
  v8 = (*v2 + 656);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  *(v0 + 352) = v6;
  *v6 = v0;
  v6[1] = sub_227CADD24;

  return v9(v4 + 56);
}

uint64_t sub_227CADD24()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[45] = v0;

  if (v0)
  {
    v9 = sub_227CAE10C;
    v10 = 0;
  }

  else
  {
    v10 = v3[27];
    v11 = (*v10 + 120) & 0xFFFFFFFFFFFFLL | 0xCDDB000000000000;
    v3[46] = *(*v10 + 120);
    v3[47] = v11;
    v9 = sub_227CADE44;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_227CADE44()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 376);
  v2 = *(v0 + 216);
  (*(v0 + 368))(*(v0 + 56), *(v0 + 64), *(v0 + 296));
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CADEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = *(v16 + 296);

  v19 = OUTLINED_FUNCTION_8_14();
  v20(v19);
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_141();
  v23(v22);
  v24 = OUTLINED_FUNCTION_76_7();
  v25(v24);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CADF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = *(v12 + 208);
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227CAE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v16 = *(v12 + 248);
  OUTLINED_FUNCTION_113_6();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_141();
  v19(v18);
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_91_0();
  v22(v21);
  v23 = *(v13 + 8);
  v24 = OUTLINED_FUNCTION_57_0();
  v25(v24);
  v26 = *(v12 + 264);
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_227CAE10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v16 = *(v12 + 296);
  OUTLINED_FUNCTION_113_6();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_141();
  v19(v18);
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_91_0();
  v22(v21);
  v23 = *(v13 + 8);
  v24 = OUTLINED_FUNCTION_57_0();
  v25(v24);
  v26 = *(v12 + 360);
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_227CAE1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_227CAE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_227CB67B8(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_227D4A298();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_227D4A298();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_227CAE398()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_227D4A4D8();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49328();
  v1[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v15 = type metadata accessor for GameServicesEnvironment(0);
  v1[16] = v15;
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[18] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[21] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v26 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_227CAE5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[22];
  v16 = *(v14[3] + 16);
  v17 = MEMORY[0x277D84F90];
  v14[25] = 0;
  v14[26] = v17;
  v14[24] = v16;
  if (v16)
  {
    v18 = v14[23];
    v20 = v14[20];
    v19 = v14[21];
    v21 = OUTLINED_FUNCTION_106_5(v15);
    v22(v21);
    sub_227D4A758();
    v23 = v14[20];
    v14[27] = sub_227D4A6A8();
    v14[28] = v24;
    v43 = swift_task_alloc();
    v14[29] = v43;
    *v43 = v14;
    OUTLINED_FUNCTION_22_11(v43);
    v44 = v14[4];
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227CACB7C();
  }

  else
  {
    v25 = v14[23];
    v26 = v14[20];
    v27 = v14[17];
    v28 = v14[15];
    v29 = v14[12];
    v31 = v14[8];
    v30 = v14[9];
    v33 = v14[6];
    v32 = v14[7];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CAE808()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 232);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CAE910()
{
  v0[31] = v0[30];
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAE954, v1);
}

uint64_t sub_227CAE954()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 280) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CAE9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[28];
  if (*(v14[35] + 16))
  {
    v16 = sub_227B2664C(v14[27], v14[28]);
    v18 = v17;

    if (v18)
    {
      v14[36] = *(*(v14[35] + 56) + 8 * v16);

      OUTLINED_FUNCTION_45();
      v19 += 296;
      v14[37] = *v19;
      v14[38] = v19 & 0xFFFFFFFFFFFFLL | 0x7BFE000000000000;
      OUTLINED_FUNCTION_85_7();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x2822009F8](v20, v21, v22);
    }
  }

  else
  {
    v24 = v14[28];
  }

  v25 = v14[35];
  v26 = v14[26];
  v27 = v14[10];
  v28 = v14[6];

  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v14[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v84 = *(v33 + 16);
    v85 = OUTLINED_FUNCTION_54();
    v33 = sub_227CB70A0(v85, v86, v87, v88, v89, v90, v91, v92);
  }

  v34 = *(v33 + 16);
  if (v34 >= *(v33 + 24) >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v33 = sub_227CB70A0(v93, v94, v95, v96, v97, v98, v99, v100);
  }

  v36 = v14[22];
  v35 = v14[23];
  v37 = v14[21];
  v39 = v14[5];
  v38 = v14[6];
  (*(v14[19] + 8))(v14[20], v14[18]);
  v40 = *(v36 + 8);
  v41 = OUTLINED_FUNCTION_91_0();
  v42(v41);
  *(v33 + 16) = v34 + 1;
  v43 = *(v39 + 80);
  OUTLINED_FUNCTION_19();
  sub_227CB7030(v38, v33 + v44 + *(v39 + 72) * v34);
  v45 = v14[31];
  v46 = v14[24];
  v47 = v14[25] + 1;
  v14[25] = v47;
  v14[26] = v33;
  v48 = v14[23];
  if (v47 == v46)
  {
    v49 = v14[20];
    OUTLINED_FUNCTION_131_3();
    v50 = v14[7];
    v103 = v14[6];

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, v103, a11, a12, a13, a14);
  }

  else
  {
    v59 = v14[21];
    v60 = v14[22];
    v61 = v14[20];
    v62 = v14[3];
    v63 = OUTLINED_FUNCTION_4_27(v47);
    v64(v63);
    sub_227D4A758();
    if (v45)
    {
      v67 = v14[20];
      v68 = v14[17];
      v69 = v14[15];
      v70 = v14[12];
      v72 = v14[8];
      v71 = v14[9];
      v102 = v14[7];
      v104 = v14[6];
      (*(v14[22] + 8))(v14[23], v14[21]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v74(v73, v74, v75, v76, v77, v78, v79, v80, v102, v104, a11, a12, a13, a14);
    }

    else
    {
      v65 = v14[20];
      v14[27] = sub_227D4A6A8();
      v14[28] = v66;
      v81 = swift_task_alloc();
      v14[29] = v81;
      *v81 = v14;
      OUTLINED_FUNCTION_22_11();
      v82 = v14[4];
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_16_0();

      return sub_227CACB7C();
    }
  }
}

uint64_t sub_227CAED94()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  *(v0 + 312) = (*(v0 + 296))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = v20;
  if (*(v20[39] + 16) && (v22 = sub_227CB6728(v20[23]), (v23 & 1) != 0))
  {
    v192 = *(*(v20[39] + 56) + 8 * v22);
    sub_227D4CE58();
  }

  else
  {
    v192 = 0;
  }

  v25 = v20[16];
  v24 = *(v21 + 136);
  v26 = *(v21 + 112);
  v27 = *(v21 + 120);
  v28 = *(v21 + 104);
  v29 = *(v21 + 32);

  v30 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v29[5]);
  v31 = *(v30 + 8);
  v32 = OUTLINED_FUNCTION_173();
  v33(v32);
  (*(v26 + 16))(v27, v24 + *(v25 + 28), v28);
  sub_227B17A4C(v24, type metadata accessor for GameServicesEnvironment);
  v34 = v192;
  if (v192)
  {
    v35 = *(v192 + 16);
    v36._rawValue = MEMORY[0x277D84F90];
    if (v35)
    {
      *(v21 + 16) = MEMORY[0x277D84F90];
      sub_227D4CE58();
      sub_227B3CA88(0, v35, 0);
      v37 = *(v21 + 16);
      v40 = sub_227BB78B0(v192);
      v41 = 0;
      v42 = v192 + 64;
      a9 = v192 + 72;
      a10 = v35;
      a11 = v21;
      a12 = v192 + 64;
      if ((v40 & 0x8000000000000000) == 0)
      {
        while (v40 < 1 << *(v34 + 32))
        {
          v43 = v40 >> 6;
          if ((*(v42 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
          {
            goto LABEL_60;
          }

          if (*(v34 + 36) != v38)
          {
            goto LABEL_61;
          }

          HIDWORD(a13) = v39;
          v193 = v38;
          a14 = v41;
          v44 = *(v34 + 48) + 16 * v40;
          v35 = *v44;
          v45 = *(v44 + 8);
          *(v21 + 16) = v37;
          v21 = v37[2];
          v46 = v37[3];
          sub_227D4CE58();
          if (v21 >= v46 >> 1)
          {
            sub_227B3CA88((v46 > 1), v21 + 1, 1);
            v37 = a11[2];
          }

          v37[2] = v21 + 1;
          a15 = v37;
          v47 = &v37[2 * v21];
          v47[4] = v35;
          v47[5] = v45;
          v48 = 1 << *(v34 + 32);
          if (v40 >= v48)
          {
            goto LABEL_62;
          }

          v42 = a12;
          v49 = *(a12 + 8 * v43);
          if ((v49 & (1 << v40)) == 0)
          {
            goto LABEL_63;
          }

          if (*(v34 + 36) != v193)
          {
            goto LABEL_64;
          }

          v50 = v49 & (-2 << (v40 & 0x3F));
          if (v50)
          {
            v48 = __clz(__rbit64(v50)) | v40 & 0x7FFFFFFFFFFFFFC0;
            v21 = a11;
          }

          else
          {
            v51 = v43 << 6;
            v52 = (a9 + 8 * v43);
            v53 = v43 + 1;
            v21 = a11;
            while (v53 < (v48 + 63) >> 6)
            {
              v55 = *v52++;
              v54 = v55;
              v51 += 64;
              ++v53;
              if (v55)
              {
                sub_227B3E218(v40, v193, BYTE4(a13) & 1);
                v48 = __clz(__rbit64(v54)) + v51;
                goto LABEL_23;
              }
            }

            sub_227B3E218(v40, v193, BYTE4(a13) & 1);
          }

LABEL_23:
          v41 = a14 + 1;
          v35 = a10;
          if ((a14 + 1) == a10)
          {

            v36._rawValue = v37;
            goto LABEL_28;
          }

          v39 = 0;
          v38 = *(v34 + 36);
          v40 = v48;
          if (v48 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
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
  }

  else
  {
    v36._rawValue = MEMORY[0x277D84F90];
  }

LABEL_28:
  v56 = *(v21 + 112);
  v57 = *(v21 + 120);
  v58 = *(v21 + 104);
  object = Locale.getClosestLocale(from:)(v36).value._object;

  (*(v56 + 8))(v57, v58);
  if (!object)
  {

    goto LABEL_43;
  }

  if (!v34)
  {
    v84 = *(v21 + 72);
    v85 = *(v21 + 80);

    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
LABEL_42:
    sub_227B4DB00(*(v21 + 72), &qword_27D7E6DA0, &unk_227D4F9C0);
LABEL_43:
    v35 = (v21 + 56);
    v89 = *(v21 + 56);
    v90 = *(v21 + 208);
    v91 = *(v21 + 80);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v21 + 208);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_44:
      v75 = *(v34 + 16);
      v97 = *(v34 + 24);
      v76 = v75 + 1;
      if (v75 >= v97 >> 1)
      {
        OUTLINED_FUNCTION_12(v97);
        OUTLINED_FUNCTION_59_0();
        v34 = sub_227CB70A0(v166, v167, v168, v169, v170, v171, v172, v173);
      }

      v98 = *(v21 + 288);

      goto LABEL_47;
    }

LABEL_65:
    v157 = *(v34 + 16);
    v158 = OUTLINED_FUNCTION_54();
    v34 = sub_227CB70A0(v158, v159, v160, v161, v162, v163, v164, v165);
    goto LABEL_44;
  }

  if (*(v34 + 16) && (v60 = OUTLINED_FUNCTION_147(), v62 = sub_227B2664C(v60, v61), (v63 & 1) != 0))
  {
    (*(*(v21 + 88) + 16))(*(v21 + 72), *(v34 + 56) + *(*(v21 + 88) + 72) * v62, *(v21 + 80));
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v66 = *(v21 + 72);
  v65 = *(v21 + 80);
  __swift_storeEnumTagSinglePayload(v66, v64, 1, v65);

  if (__swift_getEnumTagSinglePayload(v66, 1, v65) == 1)
  {
    goto LABEL_42;
  }

  v35 = (v21 + 64);
  v67 = *(v21 + 64);
  v68 = *(v21 + 208);
  v69 = *(v21 + 88);
  v70 = *(v21 + 80);
  (*(v69 + 32))(*(v21 + 96), *(v21 + 72), v70);
  v71 = *(v69 + 16);
  v72 = OUTLINED_FUNCTION_147();
  v73(v72);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v70);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v21 + 208);
  if ((v74 & 1) == 0)
  {
    v174 = *(v34 + 16);
    v175 = OUTLINED_FUNCTION_54();
    v34 = sub_227CB70A0(v175, v176, v177, v178, v179, v180, v181, v182);
  }

  v75 = *(v34 + 16);
  v76 = v75 + 1;
  if (v75 >= *(v34 + 24) >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v34 = sub_227CB70A0(v183, v184, v185, v186, v187, v188, v189, v190);
  }

  v77 = *(v21 + 288);
  v79 = *(v21 + 88);
  v78 = *(v21 + 96);
  v80 = *(v21 + 80);

  v81 = *(v79 + 8);
  v82 = OUTLINED_FUNCTION_91_0();
  v83(v82);
LABEL_47:
  v99 = *v35;
  v101 = *(v21 + 176);
  v100 = *(v21 + 184);
  v102 = *(v21 + 168);
  v103 = *(v21 + 40);
  (*(*(v21 + 152) + 8))(*(v21 + 160), *(v21 + 144));
  (*(v101 + 8))(v100, v102);
  *(v34 + 16) = v76;
  v104 = *(v103 + 80);
  OUTLINED_FUNCTION_19();
  sub_227CB7030(v99, v34 + v105 + *(v103 + 72) * v75);
  v106 = *(v21 + 248);
  v107 = *(v21 + 192);
  v108 = *(v21 + 200) + 1;
  *(v21 + 200) = v108;
  *(v21 + 208) = v34;
  v109 = *(v21 + 184);
  if (v108 == v107)
  {
    v110 = *(v21 + 160);
    v111 = *(v21 + 136);
    v112 = *(v21 + 120);
    v113 = *(v21 + 96);
    v115 = *(v21 + 64);
    v114 = *(v21 + 72);
    v116 = v21;
    v117 = *(v21 + 56);
    v194 = *(v116 + 48);

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_137();

    return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, v194, a17, a18, a19, a20);
  }

  else
  {
    v127 = *(v21 + 168);
    v128 = *(v21 + 176);
    v129 = *(v21 + 160);
    v130 = *(v21 + 24);
    v131 = OUTLINED_FUNCTION_4_27(v108);
    v132(v131);
    sub_227D4A758();
    if (v106)
    {
      v135 = *(v21 + 176);
      v136 = *(v21 + 184);
      v138 = *(v21 + 160);
      v137 = *(v21 + 168);
      v139 = *(v21 + 136);
      v140 = *(v21 + 120);
      v141 = *(v21 + 96);
      v142 = v21;
      v145 = (v21 + 64);
      v143 = *(v21 + 64);
      v144 = v145[1];
      v191 = *(v142 + 56);
      v195 = *(v142 + 48);
      (*(v135 + 8))(v136, v137);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_137();

      return v147(v146, v147, v148, v149, v150, v151, v152, v153, a9, a10, a11, a12, a13, a14, v191, v195, a17, a18, a19, a20);
    }

    else
    {
      v133 = *(v21 + 160);
      *(v21 + 216) = sub_227D4A6A8();
      *(v21 + 224) = v134;
      v154 = swift_task_alloc();
      *(v21 + 232) = v154;
      *v154 = v21;
      OUTLINED_FUNCTION_22_11();
      v155 = *(v21 + 32);
      OUTLINED_FUNCTION_137();

      return sub_227CACB7C();
    }
  }
}

uint64_t sub_227CAF640()
{
  v0[31] = 0;
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAE954, v1);
}

uint64_t sub_227CAF680()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E00, &unk_227D4FA70);
  v1[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227CAF7B4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[13] = 0;
  v0[14] = v2;
  v0[12] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    OUTLINED_FUNCTION_5(v3);
    v5 = *(v4 + 80);
    OUTLINED_FUNCTION_19();
    v0[15] = sub_227D4A6A8();
    v0[16] = v6;
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_65_6(v13);
    v14 = v0[4];
    OUTLINED_FUNCTION_30_0();

    return sub_227CACB7C();
  }

  else
  {
    v7 = v0[11];
    v8 = v0[7];
    v9 = v0[8];

    OUTLINED_FUNCTION_115();
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_227CAF964()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[16];
    v10 = v3[14];

    v11 = v3[11];
    v14 = v3 + 7;
    v12 = v3[7];
    v13 = v14[1];

    OUTLINED_FUNCTION_18();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

uint64_t sub_227CAFAB4()
{
  v1 = *(v0[4] + 96);
  v0[19] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[20] = *(*v1 + 96);
  v0[21] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAFAF0, v1);
}

uint64_t sub_227CAFAF0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  *(v0 + 176) = (*(v0 + 160))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAFB54()
{
  OUTLINED_FUNCTION_111();
  if (*(v0[22] + 16) && (v1 = sub_227B2664C(v0[15], v0[16]), v2 = v0[22], (v3 & 1) != 0))
  {
    v4 = v1;
    v5 = v0[16];

    v0[23] = *(*(v2 + 56) + 8 * v4);

    OUTLINED_FUNCTION_119_5();
    v6 += 272;
    v0[24] = *v6;
    v0[25] = v6 & 0xFFFFFFFFFFFFLL | 0xF3E0000000000000;
    OUTLINED_FUNCTION_89_5();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];

    v13 = sub_227D49E08();
    OUTLINED_FUNCTION_1_32();
    sub_227B12A10(v14, v15);
    OUTLINED_FUNCTION_10_3();
    v17 = v16;
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v27 = v18;
    v19 = OUTLINED_FUNCTION_236();
    MEMORY[0x22AAA5DA0](v19);

    MEMORY[0x22AAA5DA0](46, 0xE100000000000000);
    *v17 = 0xD000000000000022;
    v17[1] = v27;
    v20 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v13);
    (*(v21 + 104))(v17);
    swift_willThrow();
    v22 = v0[11];
    v24 = v0[7];
    v23 = v0[8];

    OUTLINED_FUNCTION_18();

    return v25();
  }
}

uint64_t sub_227CAFD7C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  *(v0 + 208) = (*(v0 + 192))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CAFDE0()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v0[2] = MEMORY[0x277D84F90];
    sub_227B7AF44(0, v3, 0);
    v4 = v0[2];
    v7 = sub_227BB78B0(v2);
    v8 = 0;
    v9 = v2 + 64;
    v86 = v3;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v10 = v7 >> 6;
        if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_39;
        }

        v87 = v6;
        v88 = v5;
        v11 = v1[6];
        v12 = *(v11 + 72);
        (*(v11 + 16))(v1[7], *(v2 + 56) + v12 * v7, v1[5]);
        v13 = v4;
        v1[2] = v4;
        v15 = *(v4 + 16);
        v14 = *(v4 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_227B7AF44(v14 > 1, v15 + 1, 1);
          v13 = v1[2];
        }

        v17 = v1[6];
        v16 = v1[7];
        v18 = v1;
        v19 = v1[5];
        *(v13 + 16) = v15 + 1;
        v4 = v13;
        (*(v17 + 32))(v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v15 * v12, v16, v19);
        v1 = (1 << *(v2 + 32));
        if (v7 >= v1)
        {
          goto LABEL_40;
        }

        v9 = v2 + 64;
        v20 = *(v2 + 64 + 8 * v10);
        if ((v20 & (1 << v7)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v2 + 36) != v88)
        {
          goto LABEL_42;
        }

        v21 = v20 & (-2 << (v7 & 0x3F));
        if (v21)
        {
          v1 = (__clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0);
          v22 = v86;
        }

        else
        {
          v23 = v10 << 6;
          v22 = v86;
          v24 = (v2 + 72 + 8 * v10);
          v25 = v10 + 1;
          while (v25 < (v1 + 63) >> 6)
          {
            v27 = *v24++;
            v26 = v27;
            v23 += 64;
            ++v25;
            if (v27)
            {
              sub_227B3E218(v7, v88, v87 & 1);
              v1 = (__clz(__rbit64(v26)) + v23);
              goto LABEL_18;
            }
          }

          sub_227B3E218(v7, v88, v87 & 1);
        }

LABEL_18:
        if (++v8 == v22)
        {
          v1 = v18;
          v28 = v18[26];

          goto LABEL_23;
        }

        v6 = 0;
        v5 = *(v2 + 36);
        v7 = v1;
        v1 = v18;
        if (v7 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = v0[26];

LABEL_23:
  v30 = v1[14];
  v31 = v1[11];
  v32 = v1[8];
  v33 = v1[5];
  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_227B7A4F8(&qword_27D7E6D68);
  sub_227B7A4F8(&qword_27D7E6D80);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v1[14];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_43:
    v69 = *(v2 + 16);
    v70 = OUTLINED_FUNCTION_54();
    v2 = sub_227CB70A0(v70, v71, v72, v73, v74, v75, v76, v77);
  }

  v39 = *(v2 + 16);
  if (v39 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v2 = sub_227CB70A0(v78, v79, v80, v81, v82, v83, v84, v85);
  }

  v40 = v1[23];
  v42 = v1[10];
  v41 = v1[11];
  v43 = v1[9];

  *(v2 + 16) = v39 + 1;
  (*(v42 + 32))(v2 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v41, v43);
  v44 = v1[18];
  v45 = v1[12];
  v46 = v1[13] + 1;
  v1[13] = v46;
  v1[14] = v2;
  if (v46 == v45)
  {
    v47 = v1[11];
    v49 = v1[7];
    v48 = v1[8];

    v50 = v1[1];
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X2, X16 }
  }

  v53 = v1[3];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_10_0(v54);
  v57 = v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v56 + 72) * v46;
  v1[15] = sub_227D4A6A8();
  v1[16] = v58;
  if (v44)
  {

    v59 = v1[11];
    v60 = v1[7];
    v61 = v1[8];

    v62 = v1[1];
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  v65 = swift_task_alloc();
  v1[17] = v65;
  *v65 = v1;
  OUTLINED_FUNCTION_65_6();
  v66 = v1[4];
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_90();

  return sub_227CACB7C();
}

uint64_t sub_227CB0368()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D4A298();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_121();
  v1[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_121();
  v1[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[15] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v22 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[19] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[20] = v26;
  v28 = *(v27 + 64);
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227CB05B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[20];
  v16 = v14[16];
  v17 = v14[2];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  v14[24] = 0;
  v14[25] = v19;
  v14[23] = v18;
  if (v18)
  {
    v20 = v14[21];
    v21 = v14[22];
    v22 = v14[19];
    v23 = v14[17];
    v24 = v14[15];
    v53 = v14[18];
    v54 = v14[14];
    v25 = v14[3];
    v26 = *(v15 + 16);
    v26(v21, v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v22);
    v26(v20, v21, v22);
    (*(v16 + 16))(v23, v25, v24);
    sub_227CC1DD0();
    sub_227D4A758();
    v46 = v14[14];
    v14[26] = sub_227D4A6A8();
    v14[27] = v47;
    v48 = v14[22];
    v14[28] = sub_227D4A748();
    v14[29] = v49;
    v50 = swift_task_alloc();
    v14[30] = v50;
    *v50 = v14;
    v50[1] = sub_227CB0904;
    v51 = v14[4];
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227CACB7C();
  }

  else
  {
    v28 = v14[21];
    v27 = v14[22];
    v30 = v14[17];
    v29 = v14[18];
    v31 = v14[14];
    v33 = v14[10];
    v32 = v14[11];
    v35 = v14[8];
    v34 = v14[9];
    v36 = v14[7];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB0904()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[29];
    v10 = v3[27];
    v11 = v3[25];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227CB0A1C()
{
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB0A58, v1);
}

uint64_t sub_227CB0A58()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 280) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB0D10()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  *(v0 + 312) = (*(v0 + 296))();

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB0FD4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 320) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB1034()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40];
  v2 = OUTLINED_FUNCTION_148_3();
  v0[41] = v2;

  if (v2)
  {
    v3 = *v2 + 320;
    v0[42] = *v3;
    v0[43] = v3 & 0xFFFFFFFFFFFFLL | 0x5AFB000000000000;
  }

  else
  {
    v4 = v0[10];
    v5 = v0[5];
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = v0[32];
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
  }

  OUTLINED_FUNCTION_85_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CB1108()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  *(v0 + 352) = (*(v0 + 336))();

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB1174()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[5];
  sub_227CAE2D0(v0[18], v0[44], v0[10]);

  if (OUTLINED_FUNCTION_129_3() == 1)
  {
    v2 = v0[32];
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
    v3 = sub_227CB1248;
    v4 = v2;
  }

  else
  {
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
    OUTLINED_FUNCTION_24_11();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_227CB1248()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 360) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB12A8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[45];
  v2 = OUTLINED_FUNCTION_148_3();
  v0[46] = v2;

  if (v2)
  {
    v3 = *v2 + 672;
    v0[47] = *v3;
    v0[48] = v3 & 0xFFFFFFFFFFFFLL | 0x723000000000000;
    v4 = sub_227CB1350;
    v5 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_24_11();
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_227CB1350()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  (*(v0 + 376))(*(v0 + 144));

  OUTLINED_FUNCTION_24_11();

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227CB13B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 392) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB1664()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  *(v0 + 424) = (*(v0 + 408))();

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB1CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = v12[22];
  v14 = v12[19];
  v15 = v12[20];
  v16 = v12[18];
  v17 = OUTLINED_FUNCTION_110_0();
  v18(v17);
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v16, v19);
  v20 = *(v15 + 8);
  v21 = OUTLINED_FUNCTION_57_0();
  v22(v21);
  v37 = v12[31];
  v24 = v12[21];
  v23 = v12[22];
  v26 = v12[17];
  v25 = v12[18];
  OUTLINED_FUNCTION_39_8();
  v27 = v12[7];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

uint64_t sub_227CB1DE4()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[10] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[15] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[18] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_121();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227CB1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v27 = v24[19];
  v28 = v24[9];
  v29 = v24[7];
  v30 = *(v29 + 16);
  v24[23] = v30;
  v24[24] = 0;
  if (v30)
  {
    v31 = v24[22];
    v32 = v24[18];
    v34 = *(v27 + 16);
    v33 = v27 + 16;
    v24[25] = *(v33 + 56);
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v24[26] = v34;
    v24[27] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v31, v29 + v35, v32);
    v36 = sub_227D4A748();
    OUTLINED_FUNCTION_139_2(v36, v37);
    OUTLINED_FUNCTION_128_3();
    v45 = v24[17];
    v24[30] = sub_227D4A6A8();
    v24[31] = v46;
    v56 = OUTLINED_FUNCTION_55_8();
    v57(v56);
    v58 = swift_task_alloc();
    v59 = OUTLINED_FUNCTION_117_4(v58);
    *v59 = v60;
    OUTLINED_FUNCTION_7_23(v59);
    OUTLINED_FUNCTION_236();
    OUTLINED_FUNCTION_23();

    return sub_227CACB7C();
  }

  else
  {
    sub_227C19454(v28 + 16, (v24 + 2));
    v38 = v24[5];
    v39 = v24[6];
    __swift_project_boxed_opaque_existential_1(v24 + 2, v38);
    HIBYTE(a12) = 0;
    v41 = v24[21];
    v40 = v24[22];
    v42 = v24[20];
    v43 = v24[17];
    v44 = v24[14];
    v62 = v24[13];
    v63 = v24[12];
    (*(v39 + 120))(&a12 + 7, MEMORY[0x277D84F90], v38, v39);

    __swift_destroy_boxed_opaque_existential_0(v24 + 2);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, v62, v63, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CB222C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[33] = v0;

  if (v0)
  {
    v9 = v3[31];
    v10 = v3[29];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CB2338()
{
  v1 = *(v0[9] + 96);
  v0[34] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[35] = *(*v1 + 96);
  v0[36] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB2374, v1);
}

uint64_t sub_227CB2374()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  *(v0 + 296) = (*(v0 + 280))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB23D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14[37] + 16) && (sub_227B2664C(v14[30], v14[31]), v15 = v14[37], (v16 & 1) != 0))
  {
    v17 = v14[34];
    v18 = v14[37];

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {
    v23 = v14[29];

    v25 = v14[30];
    v24 = v14[31];
    v26 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    sub_227B12A10(v27, v28);
    OUTLINED_FUNCTION_10_3();
    v30 = v29;
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_144_4();

    *v30 = a9;
    v30[1] = a10;
    v31 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v26);
    (*(v32 + 104))(v30);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_35_0();
    v34(v33);
    v36 = v14[21];
    v35 = v14[22];
    v37 = v14[20];
    OUTLINED_FUNCTION_69_6();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB258C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  *(v0 + 304) = (*(v0 + 280))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14[38] + 16) && (v15 = sub_227B2664C(v14[30], v14[31]), (v16 & 1) != 0))
  {
    v14[39] = *(*(v14[38] + 56) + 8 * v15);

    OUTLINED_FUNCTION_119_5();
    v17 += 34;
    v14[40] = *v17;
    v14[41] = v17 & 0xFFFFFFFFFFFFLL | 0xF3E0000000000000;
    OUTLINED_FUNCTION_89_5();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }

  else
  {
    v22 = v14[29];
    v23 = v14[18];
    v24 = v14[14];

    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
    sub_227B4DB00(v14[14], &qword_27D7E96A0, &unk_227D62E90);
    v29 = v14[30];
    v28 = v14[31];
    v30 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    sub_227B12A10(v31, v32);
    OUTLINED_FUNCTION_10_3();
    v34 = v33;
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_144_4();

    *v34 = a9;
    v34[1] = a10;
    v35 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v30);
    (*(v36 + 104))(v34);
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_35_0();
    v38(v37);
    v40 = v14[21];
    v39 = v14[22];
    v41 = v14[20];
    OUTLINED_FUNCTION_69_6();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB2808()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  *(v0 + 336) = (*(v0 + 320))();

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;
  if (*(*(v28 + 336) + 16) && (v31 = sub_227B2664C(*(v28 + 224), *(v28 + 232)), (v32 & 1) != 0))
  {
    v33 = *(v28 + 216);
    (*(v28 + 208))(*(v28 + 112), *(*(v28 + 336) + 56) + *(v28 + 200) * v31, *(v28 + 144));
    v34 = 0;
    v35 = *(v28 + 336);
  }

  else
  {
    v34 = 1;
  }

  v36 = *(v28 + 232);
  v37 = *(v28 + 144);
  v38 = *(v28 + 112);
  __swift_storeEnumTagSinglePayload(v38, v34, 1, v37);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v37);
  v40 = *(v28 + 112);
  if (EnumTagSinglePayload == 1)
  {
    sub_227B4DB00(v40, &qword_27D7E96A0, &unk_227D62E90);
    v42 = *(v28 + 240);
    v41 = *(v28 + 248);
    v43 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    sub_227B12A10(v44, v45);
    OUTLINED_FUNCTION_10_3();
    v47 = v46;
    OUTLINED_FUNCTION_6_18();
    a14 = v48;
    a15 = v49;
    MEMORY[0x22AAA5DA0](v42, v41);

    *v47 = a14;
    v47[1] = a15;
    v50 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v43);
    (*(v51 + 104))(v47);
    swift_willThrow();
    v52 = OUTLINED_FUNCTION_35_0();
    v53(v52);
  }

  else
  {
    v66 = *(v28 + 64);
    sub_227B4DB00(v40, &qword_27D7E96A0, &unk_227D62E90);
    v67 = *(v66 + 16);
    *(v28 + 344) = v67;
    if (v67)
    {
      v68 = *(v28 + 64);
      v69 = *(v28 + 80);
      v70 = *(v28 + 88);
      v71 = *(v70 + 80);
      *(v28 + 400) = v71;
      v72 = (v71 + 32) & ~v71;
      *(v28 + 352) = *(v70 + 72);
      *(v28 + 360) = 0;
      v73 = *(v28 + 272);
      v74 = *(v28 + 216);
      v76 = *(v28 + 96);
      v75 = *(v28 + 104);
      (*(v28 + 208))(*(v28 + 168), *(v28 + 176), *(v28 + 144));
      (*(v70 + 16))(v76, v68 + v72, v69);
      sub_227CC1DD0();
      OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_89_5();
      OUTLINED_FUNCTION_137();

      return MEMORY[0x2822009F8](v77, v78, v79);
    }

    OUTLINED_FUNCTION_125_2();
    v81 = OUTLINED_FUNCTION_39_0();
    v82(v81);
    OUTLINED_FUNCTION_56_5();
    if (v83)
    {
      OUTLINED_FUNCTION_127_2();
      a10 = *(v28 + 48);
      a11 = *(v28 + 40);
      a9 = __swift_project_boxed_opaque_existential_1((v28 + 16), a11);
      HIBYTE(a16) = 0;
      v84 = *(v28 + 152);
      v85 = *(v28 + 56);
      a14 = MEMORY[0x277D84F90];
      sub_227B3CA88(0, *(v28 + 184), 0);
      v86 = 0;
      v87 = a14;
      v88 = *(v84 + 80);
      OUTLINED_FUNCTION_19();
      v90 = v85 + v89;
      v91 = *(v84 + 72);
      a12 = v91;
      a13 = *(v84 + 16);
      while (1)
      {
        v92 = OUTLINED_FUNCTION_78_9();
        a13(v92, v90);
        v93 = sub_227D4A748();
        v95 = v94;
        v96 = OUTLINED_FUNCTION_58_1();
        v97(v96);
        if (v37)
        {
          break;
        }

        a14 = v87;
        v99 = *(v87 + 16);
        v98 = *(v87 + 24);
        if (v99 >= v98 >> 1)
        {
          v102 = OUTLINED_FUNCTION_12(v98);
          sub_227B3CA88(v102, v99 + 1, 1);
        }

        v37 = 0;
        ++v86;
        v100 = *(v28 + 184);
        *(v87 + 16) = v99 + 1;
        v101 = v87 + 16 * v99;
        *(v101 + 32) = v93;
        *(v101 + 40) = v95;
        v90 += a12;
        if (v86 == v100)
        {
          v109 = *(v28 + 168);
          v108 = *(v28 + 176);
          v110 = *(v28 + 160);
          v111 = *(v28 + 136);
          v112 = *(v28 + 104);
          v113 = *(v28 + 112);
          v114 = *(v28 + 96);
          (*(a10 + 120))(&a16 + 7, v87, a11);

          __swift_destroy_boxed_opaque_existential_0((v28 + 16));

          OUTLINED_FUNCTION_15_0();
          goto LABEL_8;
        }
      }

      __swift_destroy_boxed_opaque_existential_0((v28 + 16));
    }

    else
    {
      v103 = OUTLINED_FUNCTION_17_15();
      v104(v103);
      v105 = sub_227D4A748();
      OUTLINED_FUNCTION_139_2(v105, v106);
      if (!v37)
      {
        v115 = *(v28 + 136);
        sub_227D4A758();
        v116 = *(v28 + 136);
        *(v28 + 240) = sub_227D4A6A8();
        *(v28 + 248) = v117;
        (*(*(v28 + 128) + 8))(*(v28 + 136), *(v28 + 120));
        v118 = swift_task_alloc();
        v119 = OUTLINED_FUNCTION_117_4(v118);
        *v119 = v120;
        OUTLINED_FUNCTION_7_23();
        OUTLINED_FUNCTION_137();

        return sub_227CACB7C();
      }

      OUTLINED_FUNCTION_80_5();
      v107();
    }
  }

  v55 = *(v28 + 168);
  v54 = *(v28 + 176);
  v56 = *(v28 + 160);
  OUTLINED_FUNCTION_69_6();

  OUTLINED_FUNCTION_18();
LABEL_8:
  OUTLINED_FUNCTION_137();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CB2E1C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  *(v0 + 368) = (*(v0 + 280))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB3210()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  (*(v0 + 384))(*(v0 + 104));

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB3590()
{
  v1 = OUTLINED_FUNCTION_60_8();
  v2(v1);
  v3 = v0[33];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  OUTLINED_FUNCTION_69_6();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227CB364C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4A4D8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE8, qword_227D62EB0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  v1[13] = v10;
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[21] = v21;
  v23 = *(v22 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[23] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[24] = v25;
  v27 = *(v26 + 64);
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v28 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v28);
  v30 = *(v29 + 64);
  v1[29] = OUTLINED_FUNCTION_30();
  v31 = sub_227D4A298();
  v1[30] = v31;
  OUTLINED_FUNCTION_10_0(v31);
  v1[31] = v32;
  v34 = *(v33 + 64);
  v1[32] = OUTLINED_FUNCTION_121();
  v1[33] = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_227CB3928()
{
  v43 = v0;
  v2 = v0[31];
  v3 = v0[8];
  v4 = *(v0[7] + 16);
  v0[34] = v4;
  v0[35] = 0;
  if (v4)
  {
    v5 = v0[33];
    v7 = v0[29];
    v6 = v0[30];
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[22];
    v11 = v0[19];
    v12 = OUTLINED_FUNCTION_106_5(v2);
    v13(v12);
    sub_227D4A228();
    sub_227D4A288();
    sub_227CC1DD0();
    sub_227D4A228();
    sub_227D4A758();
    v22 = OUTLINED_FUNCTION_10_17();
    v1(v22);
    v23 = sub_227D4A6A8();
    OUTLINED_FUNCTION_124_2(v23, v24);
    v26 = OUTLINED_FUNCTION_15_15();
    v27(v26);
    sub_227D4A228();
    v0[40] = sub_227D4A748();
    v0[41] = v28;
    v29 = OUTLINED_FUNCTION_123_1();
    v1(v29);
    v30 = swift_task_alloc();
    v31 = OUTLINED_FUNCTION_118_3(v30);
    *v31 = v32;
    OUTLINED_FUNCTION_2_35(v31);

    return sub_227CACB7C();
  }

  else
  {
    sub_227C19454(v3 + 16, (v0 + 2));
    v14 = v0[5];
    v15 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
    v42[0] = 0;
    v17 = v0[32];
    v16 = v0[33];
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];
    v33 = v0[26];
    v34 = v0[25];
    v35 = v0[22];
    v36 = v0[19];
    v37 = v0[16];
    v38 = v0[15];
    v39 = v0[14];
    v40 = v0[12];
    v41 = v0[11];
    (*(v15 + 120))(v42, MEMORY[0x277D84F90], v14, v15);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_15_0();

    return v21();
  }
}

uint64_t sub_227CB3D00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[43] = v0;

  if (v0)
  {
    v9 = v3[41];
    v10 = v3[39];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CB3E0C()
{
  v1 = *(v0[8] + 96);
  v0[44] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[45] = *(*v1 + 96);
  v0[46] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB3E48, v1);
}

uint64_t sub_227CB3E48()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 376) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB408C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 384) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB4320()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  *(v0 + 416) = (*(v0 + 400))();

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CB45BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 424) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB461C()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227BD8C70(v0[38], v0[39], v0[53]);
  v0[54] = v1;

  if (v1)
  {
    v2 = *v1 + 664;
    v0[55] = *v2;
    v0[56] = v2 & 0xFFFFFFFFFFFFLL | 0x2DEA000000000000;
    v3 = sub_227CB46CC;
    v4 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_68_9();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_227CB46CC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  (*(v0 + 440))(*(v0 + 232), *(v0 + 264));

  OUTLINED_FUNCTION_68_9();

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227CB4738()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 456) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB4BAC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 224);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  *(v0 + 544) = (*(v0 + 472))(v5, v7) & 1;

  v10 = *(v9 + 8);
  *(v0 + 488) = v10;
  *(v0 + 496) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  v4(v5, v6);
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CB50C0()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v7 = *(v4 + 512);
  *v6 = *v1;
  *(v5 + 520) = v0;

  v8 = *(v4 + 504);
  if (!v0)
  {
    *(v5 + 528) = v3;
  }

  swift_setDeallocating();
  sub_227CB6B90();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CB5784()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v2 = v1[67];
  v3 = v1[62];
  v4 = v1[61];
  v5 = v1[22];
  v6 = v1[20];
  v7 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_57_0();
  v4(v9);
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CB5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[33];
  v18 = v16[30];
  v19 = v16[31];
  v20 = v16[29];
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v21, v22);
  v23 = OUTLINED_FUNCTION_39_0();
  v24(v23);
  v25 = v16[43];
  v27 = v16[32];
  v26 = v16[33];
  v29 = v16[28];
  v28 = v16[29];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_112_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CB5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[33];
  v18 = v16[30];
  v19 = v16[31];
  v20 = v16[29];
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v21, v22);
  v23 = OUTLINED_FUNCTION_39_0();
  v24(v23);
  v25 = v16[65];
  v27 = v16[32];
  v26 = v16[33];
  v29 = v16[28];
  v28 = v16[29];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_112_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CB5E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  v6 = v5;
  if (v4)
  {
    sub_227CB7678(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227CB5F3C()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_1_32();
  sub_227B12A10(v0, v1);
  OUTLINED_FUNCTION_5_5();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227CB5FF4()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49188();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB6098()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[2] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[8] = 0;
  v0[9] = v2;
  v0[7] = v1;
  v3 = v0[6];
  if (v1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_5(v4);
    v6 = *(v5 + 80);
    OUTLINED_FUNCTION_19();
    sub_227D4A788();
    OUTLINED_FUNCTION_142_5();
    v15 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v14 = OUTLINED_FUNCTION_50_7(v13);

    return v15(v14);
  }

  else
  {
    v7 = v0[6];

    OUTLINED_FUNCTION_115();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_227CB6274()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;
  v3[12] = v8;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[9];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CB6380()
{
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = v3[2];
    v25 = OUTLINED_FUNCTION_54();
    v3 = sub_227CB72A0(v25, v26, v27, v28);
  }

  v4 = v3[2];
  if (v4 >= v3[3] >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = sub_227CB72A0(v29, v30, v31, v32);
  }

  v33 = *(v0 + 88);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v3[2] = v4 + 1;
  *&v3[2 * v4 + 4] = v33;
  v5 = *(v0 + 104);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64) + 1;
  *(v0 + 64) = v7;
  *(v0 + 72) = v3;
  v8 = *(v0 + 48);
  if (v7 == v6)
  {
    v9 = *(v0 + 48);

    v10 = OUTLINED_FUNCTION_7();

    return v11(v10);
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_10_0(v14);
    v17 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v7;
    sub_227D4A788();
    if (v5)
    {

      v18 = *(v0 + 48);

      OUTLINED_FUNCTION_19_0();

      return v19();
    }

    else
    {
      OUTLINED_FUNCTION_142_5();
      v34 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 80) = v22;
      *v22 = v0;
      v23 = OUTLINED_FUNCTION_50_7();

      return v34(v23);
    }
  }
}

uint64_t sub_227CB65F8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[13];
  v2 = v0[6];

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CB666C(uint64_t a1)
{
  v2 = sub_227B12A10(&qword_27D7E9F10, type metadata accessor for URLResourceKey);
  v3 = sub_227B12A10(&qword_27D7E9F18, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_227CB6728(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  sub_227B7A4F8(&qword_27D7E9F40);
  v5 = sub_227D4CE98();

  return sub_227CB6850(a1, v5);
}

unint64_t sub_227CB67B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for AchievementPlayerKey(0);
  sub_227B12A10(&qword_27D7E9F30, type metadata accessor for AchievementPlayerKey);
  v5 = sub_227D4CE98();

  return sub_227CB6A00(a1, v5);
}

unint64_t sub_227CB6850(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B7A4F8(&qword_27D7E9F48);
    v10 = sub_227D4CF38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_227CB6A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_227CB78AC(*(v2 + 48) + *(v5 + 72) * i, v8);
    sub_227B12A10(&qword_27D7E9F38, type metadata accessor for AchievementPlayerKey);
    v11 = sub_227D4CF38();
    sub_227B17A4C(v8, type metadata accessor for AchievementPlayerKey);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227CB6B90()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_227CB6C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_227B2664C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F60, &unk_227D631B0);
  sub_227D4D7C8();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  type metadata accessor for GameData(0);
  sub_227D4D7E8();
  *v3 = v13;
  return v11;
}

uint64_t sub_227CB6CF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F60, &unk_227D631B0);
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
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_227B3D714(v11, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

void sub_227CB6E2C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F58, &qword_227D631A8), v2 = sub_227D4D648(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_227D4CFA8();
      sub_227D4DB58();
      v27 = v6;
      sub_227D4D048();
      v8 = sub_227D4DB98();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_227D4CFA8();
        v17 = v16;
        if (v15 == sub_227D4CFA8() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_227D4DA78();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_227CB7030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_227CB70A0(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227CB74CC(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_227CB71B4(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227CB73D0(v8, v7);
  v10 = *(sub_227D4A298() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CB75A4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227CB72A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F20, &unk_227D63178);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CF0, &unk_227D618D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227CB73D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F28, &qword_227D63188);
  v4 = *(sub_227D4A298() - 8);
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

void sub_227CB74CC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_14_0(v10), a1 + *(v11 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227CB75A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A298(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A298();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CB7678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227CB76E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_227CB7728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27D7E9EF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7E9EF0);
    }
  }
}

uint64_t sub_227CB78AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_27@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * a1;
  return v3;
}

void OUTLINED_FUNCTION_39_8()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_48_7()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
}

uint64_t OUTLINED_FUNCTION_51_9()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360) + 1;
  *(v0 + 360) = v2;
  v3 = *(v0 + 272);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 176);
  v7 = *(v0 + 144);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64) + ((*(v0 + 400) + 32) & ~*(v0 + 400)) + v1 * v2;
  return *(v0 + 168);
}

uint64_t OUTLINED_FUNCTION_55_8()
{
  result = v0[17];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  return result;
}

void OUTLINED_FUNCTION_56_5()
{
  v1 = v0[33];
  v2 = v0[23];
  ++v0[24];
}

uint64_t OUTLINED_FUNCTION_60_8()
{
  result = v0[22];
  v2 = v0[18];
  v3 = *(v0[19] + 8);
  return result;
}