uint64_t sub_227B68C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
  OUTLINED_FUNCTION_80_0();
  *v21 = v22;
  *v24 = v23;

  (*(v18 + 8))(v17, v19);
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_91_0();
  v27(v26);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227B68E5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227B68E7C, v2);
}

uint64_t sub_227B68E7C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore18AchievementService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B68F1C;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D1FAC8(v4, v5);
}

uint64_t sub_227B68F1C()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);
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

unint64_t sub_227B69008()
{
  result = qword_27D7E6E28;
  if (!qword_27D7E6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227B0F6A8(&qword_27D7E6E30, MEMORY[0x277D0D0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E28);
  }

  return result;
}

unint64_t sub_227B690BC()
{
  result = qword_27D7E6E38;
  if (!qword_27D7E6E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227B0F6A8(&qword_27D7E6E40, MEMORY[0x277D0D0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E38);
  }

  return result;
}

uint64_t AchievementService.listFriends(having:after:)()
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
  v8 = *(*(v7 - 8) + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[13] = v10;
  v12 = *(v11 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[15] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[16] = v14;
  v16 = *(v15 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49D58();
  v0[18] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[19] = v18;
  v20 = *(v19 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227B6933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[6];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[20];
    v20 = v17[17];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36(v21);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    sub_227D49478();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[20];
    if (v19)
    {
      v23 = OUTLINED_FUNCTION_74_2();
      v24(v23);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      OUTLINED_FUNCTION_72_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v31 = v17[20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0();
    v32 = v17[20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69E08();
    sub_227B69EB8();
    OUTLINED_FUNCTION_17();
    v33 = v17[20];
    sub_227D49D08();
    v36 = v17[9];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v37 = *(MEMORY[0x277D0CE28] + 4);
    v38 = swift_task_alloc();
    v17[21] = v38;
    type metadata accessor for AchievementService();
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v39, v40);
    OUTLINED_FUNCTION_48();
    *v38 = v41;
    v38[1] = sub_227B69670;
    v42 = v17[20];
    v43 = v17[9];
    v44 = v17[6];
    OUTLINED_FUNCTION_4(v45);
    OUTLINED_FUNCTION_54_4();

    return MEMORY[0x282164B00](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v27 = swift_task_alloc();
    v17[23] = v27;
    *v27 = v17;
    v27[1] = sub_227B6983C;
    v28 = v17[6];
    OUTLINED_FUNCTION_46();

    return sub_227B69D44();
  }
}

uint64_t sub_227B69670()
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

uint64_t sub_227B69768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = v12[19];
  v13 = v12[20];
  v16 = v12[17];
  v15 = v12[18];
  v17 = v12[15];
  v18 = v12[16];
  v20 = v12[13];
  v19 = v12[14];
  v21 = v12[12];
  v22 = OUTLINED_FUNCTION_43_0();
  v23(v22);
  v24 = OUTLINED_FUNCTION_86();
  v25(v24);
  v26 = OUTLINED_FUNCTION_85();
  v27(v26);
  v28 = OUTLINED_FUNCTION_22_2();
  v29(v28);
  v30 = v12[3];
  OUTLINED_FUNCTION_71_1();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227B6983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v12 = v11[23];
  v13 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  v15 = v11[20];
  v16 = v11[17];
  v17 = v11[14];
  v18 = v11[11];
  v19 = v11[9];

  v20 = *(v13 + 8);
  OUTLINED_FUNCTION_163();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_227B699C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v14 = v12[19];
  v13 = v12[20];
  v16 = v12[17];
  v15 = v12[18];
  v17 = v12[15];
  v18 = v12[16];
  v20 = v12[13];
  v19 = v12[14];
  v21 = v12[12];
  v22 = OUTLINED_FUNCTION_43_0();
  v23(v22);
  v24 = OUTLINED_FUNCTION_86();
  v25(v24);
  v26 = OUTLINED_FUNCTION_85();
  v27(v26);
  v28 = OUTLINED_FUNCTION_22_2();
  v29(v28);
  v30 = v12[22];
  OUTLINED_FUNCTION_71_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227B69A98(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v13[1] = sub_227B6DBFC;

  return AchievementService.listFriends(having:after:)();
}

uint64_t sub_227B69D5C()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_37_0();
  sub_227B0F6A8(v0, v1);
  OUTLINED_FUNCTION_78_0();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

unint64_t sub_227B69E08()
{
  result = qword_27D7E6E50;
  if (!qword_27D7E6E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69F68(&qword_27D7E6E58, &qword_27D7E6E60, &unk_227D4FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E50);
  }

  return result;
}

unint64_t sub_227B69EB8()
{
  result = qword_27D7E6E68;
  if (!qword_27D7E6E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69F68(&qword_27D7E6E70, &qword_27D7E6E60, &unk_227D4FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E68);
  }

  return result;
}

uint64_t sub_227B69F68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AchievementService.resetProgress(achievements:belongingTo:)()
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

uint64_t sub_227B6A144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v13 = v12[6];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[18];
    v15 = v12[15];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36(v16);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v17 = v12[18];
    if (v14)
    {
      v18 = OUTLINED_FUNCTION_77_1();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_60_1();
      v30 = v12[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
    }

    else
    {
      v27 = v12[12];
      v12[3] = v12[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_70_2();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v28 = v12[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v29 = v12[18];
      sub_227D49D08();
      v39 = v12[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE38] + 4);
      v41 = swift_task_alloc();
      v12[19] = v41;
      type metadata accessor for AchievementService();
      OUTLINED_FUNCTION_0_4();
      sub_227B0F6A8(v42, v43);
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
    v22 = swift_task_alloc();
    v12[21] = v22;
    *v22 = v12;
    OUTLINED_FUNCTION_30_3(v22);
    OUTLINED_FUNCTION_163();

    return sub_227B6AAAC(v23, v24);
  }
}

uint64_t sub_227B6A424()
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

uint64_t sub_227B6A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_56_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  OUTLINED_FUNCTION_60_1();
  v21 = *(v12 + 72);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

void sub_227B6A5DC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[12];
  v8 = v1[9];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B6A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_56_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = v12[20];
  v22 = v12[18];
  v23 = v12[15];
  v24 = v12[12];
  v25 = v12[9];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_227B6A800(uint64_t a1, uint64_t *a2)
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
  v14[1] = sub_227B45AF8;

  return AchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6AAAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227B6AACC, v2);
}

uint64_t sub_227B6AACC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore18AchievementService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B45D74;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D1FBF4(v4, v5);
}

uint64_t AchievementService.reveal(achievements:belongingTo:)()
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

uint64_t sub_227B6AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v13 = v12[6];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[18];
    v15 = v12[15];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36(v16);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3();
    sub_227B670B8();
    sub_227B67168();
    OUTLINED_FUNCTION_8_3();
    v17 = v12[18];
    if (v14)
    {
      v18 = OUTLINED_FUNCTION_77_1();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_60_1();
      v29 = v12[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
    }

    else
    {
      v26 = v12[12];
      v12[3] = v12[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_70_2();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v27 = v12[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v28 = v12[18];
      sub_227D49D08();
      v38 = v12[9];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v39 = *(MEMORY[0x277D0CE38] + 4);
      v40 = swift_task_alloc();
      v12[19] = v40;
      type metadata accessor for AchievementService();
      OUTLINED_FUNCTION_0_4();
      sub_227B0F6A8(v41, v42);
      OUTLINED_FUNCTION_44_0();
      *v40 = v43;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }
  }

  else
  {
    v22 = swift_task_alloc();
    v12[21] = v22;
    *v22 = v12;
    v22[1] = sub_227B6DBF8;
    v23 = v12[6];
    OUTLINED_FUNCTION_163();

    return sub_227B6B390();
  }
}

uint64_t sub_227B6AFEC()
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

uint64_t sub_227B6B0E4(uint64_t a1, uint64_t *a2)
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
  v14[1] = sub_227B4AFB4;

  return AchievementService.reveal(achievements:belongingTo:)();
}

uint64_t AchievementService.submit(progress:)()
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

uint64_t sub_227B6B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v13 = v12[4];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[13];
    v15 = v12[10];
    v16 = v12[3];
    OUTLINED_FUNCTION_36(v12[4]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227D49478();
    sub_227B69008();
    sub_227B690BC();
    OUTLINED_FUNCTION_8_3();
    v17 = v12[13];
    if (v14)
    {
      v19 = v12[11];
      v20 = v12[12];
      (*(v12[9] + 8))(v12[10], v12[8]);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      v23 = v12[13];
      v24 = v12[10];
      v25 = v12[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v18 = v12[13];
    sub_227D49D08();
    v33 = v12[7];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v34 = *(MEMORY[0x277D0CE38] + 4);
    v35 = swift_task_alloc();
    v12[14] = v35;
    type metadata accessor for AchievementService();
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v36, v37);
    OUTLINED_FUNCTION_44_0();
    *v35 = v38;
    v35[1] = sub_227B6B790;
    v39 = v12[13];
    v40 = v12[7];
    v41 = v12[4];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282164B10](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v28 = swift_task_alloc();
    v12[16] = v28;
    *v28 = v12;
    v28[1] = sub_227B6B944;
    v29 = v12[4];
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_164();

    return sub_227B6BE30(v30);
  }
}

uint64_t sub_227B6B790()
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

uint64_t sub_227B6B888()
{
  OUTLINED_FUNCTION_51_0();
  v3 = OUTLINED_FUNCTION_59_1();
  v4(v3);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_91_0();
  v7(v6);
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_57_0();
  v10(v9);
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];

  OUTLINED_FUNCTION_18();

  return v14();
}

uint64_t sub_227B6B944()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[7];

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_227B6BA80()
{
  OUTLINED_FUNCTION_51_0();
  v3 = OUTLINED_FUNCTION_59_1();
  v4(v3);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_91_0();
  v7(v6);
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_57_0();
  v10(v9);
  v11 = v0[15];
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[7];

  OUTLINED_FUNCTION_18();

  return v15();
}

uint64_t sub_227B6BB3C(uint64_t a1, uint64_t *a2)
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
  v9[1] = sub_227B6BCD8;

  return AchievementService.submit(progress:)();
}

void sub_227B6BCD8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2] - 8;
  OUTLINED_FUNCTION_80_0();
  v6 = v5;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B6BE30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B6BE4C, v1);
}

uint64_t sub_227B6BE4C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[3] + OBJC_IVAR____TtC16GameServicesCore18AchievementService_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_227B2F79C;
  v3 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D1FD20(v3);
}

uint64_t AchievementService.clearCache()()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = sub_227D49458();
  v1[3] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49D58();
  v1[6] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B6BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v13 = v12[2];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[8];
    OUTLINED_FUNCTION_36(v12[2]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v15 = v12[8];
    sub_227D49D08();
    v19 = v12[5];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v20 = *(MEMORY[0x277D0CE38] + 4);
    v21 = swift_task_alloc();
    v12[9] = v21;
    type metadata accessor for AchievementService();
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v22, v23);
    OUTLINED_FUNCTION_44_0();
    *v21 = v24;
    v21[1] = sub_227B6C200;
    v25 = v12[8];
    v26 = v12[5];
    v27 = v12[2];
    OUTLINED_FUNCTION_19_1();

    return MEMORY[0x282164B10](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    v16 = swift_task_alloc();
    v12[11] = v16;
    *v16 = v12;
    v16[1] = sub_227B6C398;
    v17 = v12[2];

    return sub_227B69D44();
  }
}

uint64_t sub_227B6C200()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B6C2F8()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[8];
  v8 = v0[5];

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227B6C398()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = *(v1 + 64);
  v6 = *(v1 + 40);

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_227B6C4B8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[10];
  v2 = OUTLINED_FUNCTION_47_2();
  v3(v2);
  v4 = v0[8];
  v5 = v0[5];

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227B6C548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return AchievementService.clearCache()();
}

uint64_t static AchievementService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AchievementService();
  sub_227D49D78();
  OUTLINED_FUNCTION_2_8();
  sub_227B0F6A8(v5, v6);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem) = a2;
  }

  return v10;
}

uint64_t AchievementService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_2_8();
  sub_227B0F6A8(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AchievementService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    AchievementService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227B6C888()
{
  sub_227D4DB58();
  type metadata accessor for AchievementService();
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t AchievementService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for AchievementService();
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v1, v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227B6C97C@<X0>(uint64_t *a1@<X8>)
{
  result = AchievementService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B6C9DC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 184))();
}

uint64_t sub_227B6CA1C()
{
  v1 = *v0;
  type metadata accessor for AchievementService();
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v2, v3);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227B6CA84()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for AchievementService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B6CC8C()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return AchievementService.describe(achievements:)();
}

uint64_t sub_227B6CD18()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.listAchievements(games:after:)();
}

uint64_t sub_227B6CDA4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.getProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6CE30()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.listFriends(having:after:)();
}

uint64_t sub_227B6CEBC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6CF48()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.reveal(achievements:belongingTo:)();
}

uint64_t sub_227B6CFD4()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return AchievementService.submit(progress:)();
}

uint64_t sub_227B6D060()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return AchievementService.clearCache()();
}

uint64_t sub_227B6D0E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for AchievementService();
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v4, v5);
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v6);
}

uint64_t sub_227B6D15C()
{
  v1 = *v0;
  type metadata accessor for AchievementService();
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v2, v3);
  OUTLINED_FUNCTION_9_5();
  sub_227B0F6A8(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227B6D204@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AchievementService();
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v3, v4);
  OUTLINED_FUNCTION_9_5();
  sub_227B0F6A8(v5, v6);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B6D2B4()
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

uint64_t dispatch thunk of AchievementService.describe(achievements:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 120);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v1);
}

uint64_t dispatch thunk of AchievementService.listAchievements(games:after:)()
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

uint64_t dispatch thunk of AchievementService.getProgress(achievements:belongingTo:)()
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

uint64_t dispatch thunk of AchievementService.listFriends(having:after:)()
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

uint64_t dispatch thunk of AchievementService.resetProgress(achievements:belongingTo:)()
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

uint64_t dispatch thunk of AchievementService.reveal(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of AchievementService.submit(progress:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 168);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v1);
}

uint64_t dispatch thunk of AchievementService.clearCache()()
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

uint64_t OUTLINED_FUNCTION_56_1()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  result = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  v12 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_74_2()
{
  v1 = v0[18];
  v2 = v0[19];
  result = v0[17];
  v4 = v0[15];
  v5 = *(v0[16] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  *(v1 + 8) = v0;
  v3 = v2[18];
  v4 = v2[9];
  return v2[6];
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[5];
  v5 = v0[11];

  return sub_227B41B14(v4, v5);
}

BOOL sub_227B6DD30(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_227B6DD64@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_227B6DD94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

GameServicesCore::MetadataEligibility sub_227B6DE94@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MetadataEligibility.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227B6DED4@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataEligibility.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B6DF28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

GameServicesCore::ApplicationType_optional __swiftcall ApplicationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_227B6DFB0(unsigned __int8 a1)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a1);
  return sub_227D4DB98();
}

uint64_t sub_227B6DFF8(char a1)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a1 & 1);
  return sub_227D4DB98();
}

uint64_t sub_227B6E078(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a2);
  return sub_227D4DB98();
}

uint64_t sub_227B6E0BC(uint64_t a1, char a2)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a2 & 1);
  return sub_227D4DB98();
}

uint64_t sub_227B6E108@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationType.rawValue.getter();
  *a1 = result;
  return result;
}

GameServicesCore::AppMetadataTTL_optional __swiftcall AppMetadataTTL.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_227B6E1A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppMetadataTTL.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_227B6E1D4()
{
  result = qword_27D7E6EA0;
  if (!qword_27D7E6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EA0);
  }

  return result;
}

unint64_t sub_227B6E22C()
{
  result = qword_27D7E6EA8;
  if (!qword_27D7E6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EA8);
  }

  return result;
}

unint64_t sub_227B6E284()
{
  result = qword_27D7E6EB0;
  if (!qword_27D7E6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EB0);
  }

  return result;
}

unint64_t sub_227B6E2DC()
{
  result = qword_27D7E6EB8;
  if (!qword_27D7E6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EB8);
  }

  return result;
}

unint64_t sub_227B6E334()
{
  result = qword_27D7E6EC0;
  if (!qword_27D7E6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EC0);
  }

  return result;
}

unint64_t sub_227B6E38C()
{
  result = qword_27D7E6EC8;
  if (!qword_27D7E6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EC8);
  }

  return result;
}

unint64_t sub_227B6E3E4()
{
  result = qword_27D7E6ED0;
  if (!qword_27D7E6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataEligibility(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_161(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetadataEligibility(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *storeEnumTagSinglePayload for ApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultChallengeStoreRegistry.ChallengeStoreType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *_s16GameServicesCore14AppMetadataTTLOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227B6EB28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_227B6EB4C, 0, 0);
}

uint64_t sub_227B6EB4C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6ED8, &qword_227D50670);
  *v4 = v0;
  v4[1] = sub_227B6EC38;
  v5 = v0[5];

  return sub_227B4CC14();
}

uint64_t sub_227B6EC38()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_227B4EF64;
  }

  else
  {
    v6 = *(v2 + 48);

    v5 = sub_227B6ED48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227B6ED64()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_227D4AD08();
  v0[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v9 = *(*(sub_227D4C198() - 8) + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C1B8();
  v0[10] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4C178();
  v0[13] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[14] = v15;
  v17 = *(v16 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EE0, &qword_227D50678) - 8) + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = *(*(sub_227D4C1D8() - 8) + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v20 = sub_227D4ACD8();
  v0[18] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[19] = v21;
  v23 = *(v22 + 64);
  v0[20] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227B6EF70, 0, 0);
}

uint64_t sub_227B6EF70()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[4];
  v6 = v0[5];
  sub_227D4CE58();
  MEMORY[0x22AAA3A10](v7, v6, 0, 0);
  (*(v2 + 16))(v4, v1, v3);
  v8 = sub_227D4C158();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  sub_227B6F70C();
  v9 = sub_227D4D1F8();
  MEMORY[0x22AAA4EB0](0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v9);
  v10 = *(MEMORY[0x277D0C748] + 4);
  v11 = swift_task_alloc();
  v0[21] = v11;
  v12 = sub_227D4ACB8();
  *v11 = v0;
  v11[1] = sub_227B6F0F4;
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[3];
  v17 = MEMORY[0x277D0C320];

  return MEMORY[0x282163F20](v13, v15, v14, v12, v17);
}

uint64_t sub_227B6F0F4()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 176) = v0;

  (*(v5 + 8))(v4, v6);
  sub_227B6F760(v3);
  if (v0)
  {
    v10 = sub_227B6F4A4;
  }

  else
  {
    v10 = sub_227B6F280;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227B6F280()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[12];
  sub_227D4C1C8();
  if (v1)
  {
    v9 = v0[17];
    OUTLINED_FUNCTION_0_5();
    sub_227B6F7C8(v10, v11);
    (*(v0[19] + 8))(v0[20], v0[18]);
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[15];
    v16 = v0[12];
    v18 = v0[8];
    v17 = v0[9];

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    sub_227D4C1A8();
    (*(v5 + 8))(v4, v6);
    sub_227D4C188();
    sub_227B6F7C8(v7, MEMORY[0x277D0C5C8]);
    v21 = v0[19];
    v37 = v0[20];
    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[7];
    v25 = v0[8];
    v26 = v0[6];
    v27 = v0[2];
    KeyPath = swift_getKeyPath();
    sub_227B4DB6C(v25, KeyPath, v27);

    (*(v24 + 8))(v25, v26);
    OUTLINED_FUNCTION_0_5();
    sub_227B6F7C8(v23, v29);
    (*(v21 + 8))(v37, v22);
    v30 = v0[20];
    v31 = v0[16];
    v32 = v0[17];
    v33 = v0[15];
    v34 = v0[12];
    v36 = v0[8];
    v35 = v0[9];

    OUTLINED_FUNCTION_18();
  }

  return v19();
}

uint64_t sub_227B6F4A4()
{
  v1 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227B6F574()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227B6F628;

  return sub_227B6ED64();
}

uint64_t sub_227B6F628()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_18();

  return v4();
}

unint64_t sub_227B6F70C()
{
  result = qword_27D7E6EE8;
  if (!qword_27D7E6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EE8);
  }

  return result;
}

uint64_t sub_227B6F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EE0, &qword_227D50678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B6F7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227B6F828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227B6F854(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

uint64_t sub_227B6F880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F08, &qword_227D507E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D506B0;
  *(inited + 32) = sub_227D4BBF8();
  *(inited + 40) = v1;
  *(inited + 48) = 0x692D7070612D6B67;
  *(inited + 56) = 0xEB0000000074696ELL;
  *(inited + 64) = sub_227D4BEC8();
  *(inited + 72) = v2;
  OUTLINED_FUNCTION_3_7();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = v3;
  *(inited + 96) = sub_227D4BF68();
  *(inited + 104) = v4;
  OUTLINED_FUNCTION_3_7();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = v5;
  *(inited + 128) = sub_227D4C648();
  *(inited + 136) = v6;
  OUTLINED_FUNCTION_3_7();
  *(inited + 144) = 0xD00000000000001FLL;
  *(inited + 152) = v7;
  *(inited + 160) = sub_227D4C008();
  *(inited + 168) = v8;
  OUTLINED_FUNCTION_3_7();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = v9;
  *(inited + 192) = sub_227D4C3C8();
  *(inited + 200) = v10;
  OUTLINED_FUNCTION_3_7();
  *(inited + 208) = 0xD00000000000001ALL;
  *(inited + 216) = v11;
  *(inited + 224) = sub_227D4C0A8();
  *(inited + 232) = v12;
  OUTLINED_FUNCTION_3_7();
  *(inited + 240) = 0xD000000000000013;
  *(inited + 248) = v13;
  *(inited + 256) = sub_227D4BDD8();
  *(inited + 264) = v14;
  OUTLINED_FUNCTION_3_7();
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = v15;
  *(inited + 288) = sub_227D4C288();
  *(inited + 296) = v16;
  OUTLINED_FUNCTION_3_7();
  *(inited + 304) = 0xD000000000000014;
  *(inited + 312) = v17;
  *(inited + 320) = sub_227D4C148();
  *(inited + 328) = v18;
  OUTLINED_FUNCTION_3_7();
  *(inited + 336) = 0xD000000000000018;
  *(inited + 344) = v19;
  *(inited + 352) = sub_227D4BB58();
  *(inited + 360) = v20;
  OUTLINED_FUNCTION_3_7();
  *(inited + 368) = 0xD000000000000018;
  *(inited + 376) = v21;
  *(inited + 384) = sub_227D4C1E8();
  *(inited + 392) = v22;
  OUTLINED_FUNCTION_3_7();
  *(inited + 400) = 0xD000000000000013;
  *(inited + 408) = v23;
  *(inited + 416) = sub_227D4C508();
  *(inited + 424) = v24;
  OUTLINED_FUNCTION_3_7();
  *(inited + 432) = 0xD00000000000001DLL;
  *(inited + 440) = v25;
  *(inited + 448) = sub_227D4C468();
  *(inited + 456) = v26;
  OUTLINED_FUNCTION_3_7();
  *(inited + 464) = 0xD00000000000001ALL;
  *(inited + 472) = v27;
  *(inited + 480) = sub_227D4C6E8();
  *(inited + 488) = v28;
  OUTLINED_FUNCTION_3_7();
  *(inited + 496) = 0xD000000000000026;
  *(inited + 504) = v29;
  *(inited + 512) = sub_227D4BD38();
  *(inited + 520) = v30;
  OUTLINED_FUNCTION_3_7();
  *(inited + 528) = 0xD000000000000013;
  *(inited + 536) = v31;
  *(inited + 544) = sub_227D4BC98();
  *(inited + 552) = v32;
  OUTLINED_FUNCTION_3_7();
  *(inited + 560) = 0xD000000000000011;
  *(inited + 568) = v33;
  *(inited + 576) = sub_227D4C5A8();
  *(inited + 584) = v34;
  OUTLINED_FUNCTION_3_7();
  *(inited + 592) = 0xD000000000000020;
  *(inited + 600) = v35;
  *(inited + 608) = sub_227D4C328();
  *(inited + 616) = v36;
  OUTLINED_FUNCTION_3_7();
  *(inited + 624) = 0xD000000000000017;
  *(inited + 632) = v37;
  *(inited + 640) = sub_227D4BE78();
  *(inited + 648) = v38;
  OUTLINED_FUNCTION_3_7();
  *(inited + 656) = 0xD00000000000001CLL;
  *(inited + 664) = v39;
  result = sub_227D4CE28();
  qword_280E7BAB8 = result;
  return result;
}

uint64_t sub_227B6FB50()
{
  OUTLINED_FUNCTION_6();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_227D4AB98();
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4ABE8();
  v1[14] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4AC38();
  v1[17] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F10, &qword_227D507F8);
  v1[20] = v18;
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v21 = sub_227D4AB48();
  v1[22] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[23] = v22;
  v24 = *(v23 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227B6FCFC()
{
  if (!v0[9])
  {
    v68 = sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v69, v70);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_3_7();
    *v71 = 0xD000000000000010;
    v71[1] = v72;
    v73 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v68);
    (*(v74 + 104))();
    swift_willThrow();
    goto LABEL_21;
  }

  v1 = _MergedGlobals_3;
  v106 = v0[9];

  if (v1 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0[26] = sub_227B708D8(v0[10], v0[11], qword_280E7BAB8);
    v0[27] = v2;
    if (!v2)
    {
      v82 = v0[10];
      v81 = v0[11];
      v83 = sub_227D49E08();
      OUTLINED_FUNCTION_0_6();
      sub_227B12980(v84, v85);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_10_3();
      v87 = v86;
      OUTLINED_FUNCTION_58();
      v88 = OUTLINED_FUNCTION_10_3();
      v90 = v89;
      sub_227D4D668();

      OUTLINED_FUNCTION_3_7();
      v117 = v91;
      MEMORY[0x22AAA5DA0](v82, v81);
      *v90 = 0xD00000000000001FLL;
      v90[1] = v117;
      v92 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_14_0(v83);
      v94 = *(v93 + 104);
      v94(v90);
      *v87 = v88;
      (v94)(v87, *MEMORY[0x277D0CE60], v83);
      swift_willThrow();

LABEL_21:
      v96 = v0[24];
      v95 = v0[25];
      v97 = v0[21];
      v98 = v0[19];
      v99 = v0[16];
      v100 = v0[13];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_1();

      __asm { BRAA            X1, X16 }
    }

    v114 = v0 + 2;
    v3 = v0[24];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[15];
    v10 = v0[8];
    v11 = v0[25];
    MEMORY[0x22AAA38B0]();
    v12 = *(v5 + 16);
    v13 = OUTLINED_FUNCTION_150();
    v14(v13);
    v15 = MEMORY[0x277D0F9A8];
    sub_227B12980(&qword_27D7E6F18, MEMORY[0x277D0F9A8]);
    sub_227D4D118();
    v16 = *(v6 + 36);
    v112 = (v9 + 8);
    v113 = (v8 + 16);
    v110 = (v8 + 8);
    v17 = sub_227B12980(&qword_27D7E6CB8, v15);
    v18 = MEMORY[0x277D84F98];
    v108 = v16;
    v109 = v7;
    v111 = v0;
    v107 = v17;
LABEL_5:
    v0[28] = v18;
    v20 = v0[21];
    v19 = v0[22];
    sub_227D4D3C8();
    if (*(v7 + v16) == v0[6])
    {
      break;
    }

    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[19];
    v24 = v0[16];
    v115 = v0[17];
    v116 = v0[14];
    v0 = v7;
    v25 = sub_227D4D3F8();
    (*v113)(v23);
    v25(v114, 0);
    v26 = sub_227D4D3D8();
    v27 = MEMORY[0x22AAA3960](v26);
    v28 = MEMORY[0x22AAA3900](v27);
    v30 = v29;
    v31 = (*v112)(v24, v116);
    v32 = MEMORY[0x22AAA3970](v31);
    v34 = v33;
    swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_227B2664C(v28, v30);
    if (!__OFADD__(v18[2], (v36 & 1) == 0))
    {
      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
      v39 = sub_227D4D7C8();
      if (v39)
      {
        v39 = sub_227B2664C(v28, v30);
        v0 = v111;
        if ((v38 & 1) != (v40 & 1))
        {
          OUTLINED_FUNCTION_93_1();

          return sub_227D4DAE8();
        }

        v37 = v39;
      }

      else
      {
        v0 = v111;
      }

      v47 = v0[19];
      v48 = v0[17];
      if (v38)
      {

        v49 = (v18[7] + 16 * v37);
        v50 = v49[1];
        *v49 = v32;
        v49[1] = v34;

        v59 = OUTLINED_FUNCTION_18_4(v51, v52, v53, v54, v55, v56, v57, v58, v105, v106, v107, v108, v109, v110);
        v60(v59);
      }

      else
      {
        v18[(v37 >> 6) + 8] |= 1 << v37;
        v61 = (v18[6] + 16 * v37);
        *v61 = v28;
        v61[1] = v30;
        v62 = (v18[7] + 16 * v37);
        *v62 = v32;
        v62[1] = v34;
        v63 = OUTLINED_FUNCTION_18_4(v39, v40, v41, v42, v43, v44, v45, v46, v105, v106, v107, v108, v109, v110);
        v64(v63);
        v65 = v18[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_28;
        }

        v18[2] = v67;
      }

      v16 = v108;
      v7 = v109;
      goto LABEL_5;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v75 = v0[25];
  v76 = v0[22];
  v77 = v0[23];
  sub_227B4DB00(v0[21], &qword_27D7E6F10, &qword_227D507F8);
  (*(v77 + 8))(v75, v76);
  v78 = *(MEMORY[0x277D37950] + 4);

  v79 = swift_task_alloc();
  v0[29] = v79;
  *v79 = v0;
  v79[1] = sub_227B70390;
  OUTLINED_FUNCTION_93_1();

  return MEMORY[0x282197EB8]();
}

uint64_t sub_227B70390()
{
  OUTLINED_FUNCTION_51_0();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v9 = *(v8 + 232);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[30] = v0;
  v6[31] = v12;
  v6[32] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v16 = v6[27];
    v17 = swift_task_alloc();
    v6[33] = v17;
    *v17 = v10;
    v17[1] = sub_227B70520;
    v18 = v6[28];
    v19 = v6[26];
    v20 = v6[12];

    return sub_227B70930(v0, v4, v18, v19, v16);
  }
}

uint64_t sub_227B70520()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v9 = *(v8 + 264);
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[34] = v0;

  if (!v0)
  {
    v13 = v6[27];
    v12 = v6[28];

    v6[35] = v3;
    v6[36] = v5;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_227B70650()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v15 = v0[19];
  v16 = v0[16];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[13];
  MEMORY[0x22AAA38D0]();
  sub_227D4AB38();
  sub_227D4ABA8();
  sub_227D4C998();
  sub_227D4C9A8();
  v11 = OUTLINED_FUNCTION_82();
  sub_227B728BC(v11, v12);

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227B70774()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[9];

  v4 = v0[32];
  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227B70820()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[9];
  sub_227B728BC(v0[30], v0[31]);

  v4 = v0[34];
  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227B708D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  sub_227D4CE58();
  return v7;
}

uint64_t sub_227B70930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B70964()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 80);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_227B70A94;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v2, v3);
}

uint64_t sub_227B70A94()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v11 + 72) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = *(v9 + 8);

    return v15(v0, v4);
  }
}

uint64_t sub_227B70BC8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 72);
  v2 = sub_227D49088();
  v3 = [v2 domain];
  v4 = sub_227D4CFA8();
  v6 = v5;

  v7 = *MEMORY[0x277CCA738];
  if (v4 == sub_227D4CFA8() && v6 == v8)
  {
  }

  else
  {
    v10 = sub_227D4DA78();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v2 code] == -1009)
  {
    v11 = *(v0 + 72);
    v12 = sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v13, v14);
    v15 = OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_17_5(v15, v16);
    v17 = *MEMORY[0x277D0CE78];
    OUTLINED_FUNCTION_14_0(v12);
    (*(v18 + 104))();
    swift_willThrow();

    goto LABEL_11;
  }

LABEL_10:
  v19 = *(v0 + 72);
  swift_willThrow();

  v20 = *(v0 + 72);
LABEL_11:
  OUTLINED_FUNCTION_18();

  return v21();
}

uint64_t sub_227B70D78()
{
  OUTLINED_FUNCTION_6();
  v18 = *MEMORY[0x277D85DE8];
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v5 = sub_227D4ABE8();
  v1[44] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[45] = v6;
  v8 = *(v7 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v9 = sub_227D4C9D8();
  v1[48] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[49] = v10;
  v12 = *(v11 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227B70EC4()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  sub_227D4C9C8();
  v4 = sub_227D4C9B8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v6)
  {
    v8 = *(v0 + 320);
    v9 = objc_opt_self();
    *(v0 + 416) = v9;
    v10 = sub_227D4CE08();
    *(v0 + 288) = 0;
    v11 = [v9 dataWithJSONObject:v10 options:0 error:v0 + 288];

    v12 = *(v0 + 288);
    if (v11)
    {
      v13 = *(v0 + 368);
      v14 = *(v0 + 376);
      v15 = *(v0 + 360);
      v49 = *(v0 + 352);
      v16 = sub_227D491C8();
      v18 = v17;

      v48 = v16;
      *(v0 + 424) = v16;
      *(v0 + 432) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F08, &qword_227D507E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227D4F750;
      v20 = MEMORY[0x22AAA3920]();
      v21 = MEMORY[0x22AAA3900](v20);
      v23 = v22;
      v24 = *(v15 + 8);
      v24(v14, v49);
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      *(inited + 48) = v4;
      *(inited + 56) = v6;
      v25 = sub_227D4CE58();
      v26 = MEMORY[0x22AAA3910](v25);
      v27 = MEMORY[0x22AAA3900](v26);
      v29 = v28;
      v24(v13, v49);
      *(inited + 64) = v27;
      *(inited + 72) = v29;
      *(inited + 80) = v4;
      *(inited + 88) = v6;
      v30 = sub_227D4CE28();
      *(v0 + 440) = v30;
      v31 = swift_task_alloc();
      *(v0 + 448) = v31;
      *v31 = v0;
      v31[1] = sub_227B712FC;
      v32 = *(v0 + 336);
      v33 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *MEMORY[0x277D85DE8];

      return sub_227B70930(v48, v18, v30, v34, v32);
    }

    v41 = v12;

    sub_227D49098();
  }

  else
  {
    v37 = *(v0 + 400);
    v38 = *(v0 + 384);
    sub_227D4D668();
    sub_227D4C9C8();
    sub_227B12980(&qword_27D7E6F00, MEMORY[0x277D85578]);
    sub_227D4DA38();

    v7(v37, v38);
    MEMORY[0x22AAA5DA0](0xD00000000000001ALL, 0x8000000227D75590);
    sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v39, v40);
    OUTLINED_FUNCTION_5_5();
    sub_227D49D98();
  }

  swift_willThrow();
  v43 = *(v0 + 400);
  v42 = *(v0 + 408);
  v45 = *(v0 + 368);
  v44 = *(v0 + 376);

  OUTLINED_FUNCTION_18();
  v47 = *MEMORY[0x277D85DE8];

  return v46();
}

uint64_t sub_227B712FC()
{
  OUTLINED_FUNCTION_20();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 448);
  *v3 = *v1;
  v2[57] = v6;
  v2[58] = v7;
  v2[59] = v0;

  if (!v0)
  {
    v8 = v2[55];
  }

  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227B71444()
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 416);
  v4 = sub_227D491A8();
  *(v0 + 296) = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v0 + 296];

  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = v6;
    sub_227D4D568();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C88, &qword_227D4F810);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 304);
      sub_227B4E76C(0x737574617473, 0xE600000000000000, v8, (v0 + 176));
      sub_227B7296C(v0 + 176, v0 + 208, &qword_27D7E6C80, &unk_227D4F780);
      if (*(v0 + 232))
      {
        if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 312))
        {
          v10 = *(v0 + 456);
          v9 = *(v0 + 464);
          v12 = *(v0 + 424);
          v11 = *(v0 + 432);
          v14 = *(v0 + 400);
          v13 = *(v0 + 408);
          v16 = *(v0 + 368);
          v15 = *(v0 + 376);
          sub_227B4DB00(v0 + 176, &qword_27D7E6C80, &unk_227D4F780);
          v17 = OUTLINED_FUNCTION_150();
          sub_227B728BC(v17, v18);
          sub_227B728BC(v12, v11);

          OUTLINED_FUNCTION_115();
          v19 = *MEMORY[0x277D85DE8];
          OUTLINED_FUNCTION_16_0();

          __asm { BRAA            X2, X16 }
        }
      }

      else
      {
        sub_227B4DB00(v0 + 208, &qword_27D7E6C80, &unk_227D4F780);
      }

      sub_227B4E76C(0x6567617373656DLL, 0xE700000000000000, v8, (v0 + 240));

      if (*(v0 + 264))
      {
        v39 = swift_dynamicCast();
        v40 = *(v0 + 272);
        if (v39)
        {
          v41 = *(v0 + 272);
          v42 = *(v0 + 280);
        }
      }

      else
      {
        sub_227B4DB00(v0 + 240, &qword_27D7E6C80, &unk_227D4F780);
      }

      v44 = *(v0 + 456);
      v43 = *(v0 + 464);
      v46 = *(v0 + 424);
      v45 = *(v0 + 432);
      sub_227D49E08();
      OUTLINED_FUNCTION_0_6();
      sub_227B12980(v47, v48);
      OUTLINED_FUNCTION_5_5();
      sub_227D49DE8();

      swift_willThrow();
      sub_227B728BC(v46, v45);
      sub_227B728BC(v44, v43);
      sub_227B4DB00(v0 + 176, &qword_27D7E6C80, &unk_227D4F780);
LABEL_19:
      v50 = *(v0 + 400);
      v49 = *(v0 + 408);
      v52 = *(v0 + 368);
      v51 = *(v0 + 376);

      OUTLINED_FUNCTION_18();
      v53 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_16_0();

      __asm { BRAA            X1, X16 }
    }

    v30 = *(v0 + 456);
    v29 = *(v0 + 464);
    v32 = *(v0 + 424);
    v31 = *(v0 + 432);
    *(v0 + 168) = MEMORY[0x277CC9318];
    *(v0 + 144) = v30;
    *(v0 + 152) = v29;
    sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v33, v34);
    OUTLINED_FUNCTION_5_5();
    v35 = OUTLINED_FUNCTION_82();
    sub_227B72914(v35, v36);
    OUTLINED_FUNCTION_15();
    sub_227D49DF8();
    sub_227B4DB00(v0 + 144, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_82();
    sub_227B728BC(v37, v38);
    v27 = v32;
    v28 = v31;
  }

  else
  {
    v23 = *(v0 + 456);
    v22 = *(v0 + 464);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v26 = v6;
    sub_227D49098();

    swift_willThrow();
    sub_227B728BC(v23, v22);
    v27 = v25;
    v28 = v24;
  }

  sub_227B728BC(v27, v28);
  goto LABEL_19;
}

uint64_t sub_227B718BC()
{
  OUTLINED_FUNCTION_51_0();
  v14 = *MEMORY[0x277D85DE8];
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];

  v4 = OUTLINED_FUNCTION_58();
  sub_227B728BC(v4, v5);
  v6 = v0[59];
  v8 = v0[50];
  v7 = v0[51];
  v10 = v0[46];
  v9 = v0[47];

  OUTLINED_FUNCTION_18();
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_227B71984()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B729CC;

  return sub_227B70D78();
}

uint64_t sub_227B71A2C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B71AF0;

  return sub_227B6FB50();
}

uint64_t sub_227B71AF0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_227B71BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EF0, &qword_227D506C0);
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_227D4CE58();
  OUTLINED_FUNCTION_150();
  sub_227D4ABF8();
  v8 = sub_227D4ABE8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_227B4DB00(v7, &qword_27D7E6EF0, &qword_227D506C0);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v13 = 0xD000000000000027;
    v14 = v11;
    v12 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v12);
    result = sub_227D4D7F8();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_0(v8);
    return (*(v9 + 32))(a1, v7, v8);
  }

  return result;
}

uint64_t sub_227B71D5C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_227D4DBC8();
  v3[35] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v3[36] = v7;
  v9 = *(v8 + 64);
  v3[37] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EF8, &unk_227D506D0);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v13 = sub_227D49E08();
  v3[40] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v3[41] = v14;
  v16 = *(v15 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = (v2 + *v2);
  v17 = v2[1];
  v18 = swift_task_alloc();
  v3[44] = v18;
  *v18 = v3;
  v18[1] = sub_227B71F4C;

  return v20(v5);
}

uint64_t sub_227B71F4C()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v2[45] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v12 = v2[42];
    v11 = v2[43];
    v14 = v2[38];
    v13 = v2[39];
    v15 = v2[37];

    OUTLINED_FUNCTION_18();

    return v16();
  }
}

uint64_t sub_227B720A8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  *(v0 + 264) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    __swift_storeEnumTagSinglePayload(*(v0 + 312), 0, 1, v7);
    v9 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_58();
    v11(v10);
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v12, v13);
    v14 = OUTLINED_FUNCTION_10_3();
    v16 = OUTLINED_FUNCTION_17_5(v14, v15);
    (*(v8 + 16))(v16, v6, v7);
    swift_willThrow();

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v17 = *(v0 + 360);
    v18 = *(v0 + 312);
    v19 = *(v0 + 296);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, *(v0 + 320));
    sub_227B4DB00(v18, &qword_27D7E6EF8, &unk_227D506D0);
    swift_getErrorValue();
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    *(v0 + 232) = v21;
    __swift_allocate_boxed_opaque_existential_1((v0 + 208));
    OUTLINED_FUNCTION_14_0(v21);
    (*(v22 + 16))();
    sub_227D4DBA8();
    sub_227D4DBB8();
    sub_227D4D7A8();
    while (1)
    {
      sub_227D4D848();
      if (!*(v0 + 104))
      {

        goto LABEL_16;
      }

      v23 = *(v0 + 80);
      *(v0 + 112) = *(v0 + 64);
      *(v0 + 128) = v23;
      *(v0 + 144) = *(v0 + 96);
      v24 = *(v0 + 120);
      if (v24)
      {
        v25 = *(v0 + 112) == 0x69796C7265646E75 && v24 == 0xEF726F727245676ELL;
        if (v25 || (sub_227D4DA78() & 1) != 0)
        {
          break;
        }
      }

      sub_227B4DB00(v0 + 112, &qword_27D7E6C78, qword_227D506E0);
    }

    v26 = *(v0 + 320);
    v27 = *(v0 + 304);

    v28 = *(v0 + 128);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 32) = v28;
    *(v0 + 48) = *(v0 + 144);
    sub_227B7296C(v0 + 16, v0 + 160, &qword_27D7E6C78, qword_227D506E0);
    v29 = *(v0 + 168);

    if (swift_dynamicCast())
    {
      v30 = *(v0 + 360);
      v32 = *(v0 + 328);
      v31 = *(v0 + 336);
      v33 = *(v0 + 320);
      v34 = *(v0 + 296);
      v35 = *(v0 + 304);
      v36 = *(v0 + 280);
      v37 = *(v0 + 288);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v33);
      (*(v32 + 32))(v31, v35, v33);
      OUTLINED_FUNCTION_0_6();
      sub_227B12980(v38, v39);
      v40 = OUTLINED_FUNCTION_10_3();
      v42 = OUTLINED_FUNCTION_17_5(v40, v41);
      (*(v32 + 16))(v42, v31, v33);
      swift_willThrow();

      (*(v32 + 8))(v31, v33);
      sub_227B4DB00(v0 + 16, &qword_27D7E6C78, qword_227D506E0);
      (*(v37 + 8))(v34, v36);
      goto LABEL_17;
    }

    v43 = *(v0 + 320);
    v44 = *(v0 + 304);
    sub_227B4DB00(v0 + 16, &qword_27D7E6C78, qword_227D506E0);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v43);
    sub_227B4DB00(v44, &qword_27D7E6EF8, &unk_227D506D0);
LABEL_16:
    v45 = *(v0 + 360);
    v46 = *(v0 + 320);
    v47 = *(v0 + 328);
    v49 = *(v0 + 288);
    v48 = *(v0 + 296);
    v50 = *(v0 + 280);
    OUTLINED_FUNCTION_0_6();
    sub_227B12980(v51, v52);
    v53 = OUTLINED_FUNCTION_10_3();
    v55 = OUTLINED_FUNCTION_17_5(v53, v54);
    *v56 = v45;
    (*(v47 + 104))(v55, *MEMORY[0x277D0CE60], v46);
    swift_willThrow();
    (*(v49 + 8))(v48, v50);
  }

LABEL_17:
  v58 = *(v0 + 336);
  v57 = *(v0 + 344);
  v60 = *(v0 + 304);
  v59 = *(v0 + 312);
  v61 = *(v0 + 296);

  OUTLINED_FUNCTION_18();

  return v62();
}

uint64_t sub_227B725C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_227B72704;
  v9 = OUTLINED_FUNCTION_82();

  return v11(v9);
}

uint64_t sub_227B72704()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();

  return v6(v0);
}

uint64_t sub_227B727E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_227B72840(uint64_t a1)
{
  result = sub_227B72868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B72868()
{
  result = qword_280E7CA40[0];
  if (!qword_280E7CA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E7CA40);
  }

  return result;
}

uint64_t sub_227B728BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227B72914(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227B7296C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return a2;
}

uint64_t sub_227B729D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 96) = a13;
  *(v14 + 104) = v13;
  *(v14 + 80) = a11;
  *(v14 + 88) = a12;
  *(v14 + 137) = a10;
  *(v14 + 136) = a8;
  *(v14 + 64) = a7;
  *(v14 + 72) = a9;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v15, v16, v17);
}

uint64_t sub_227B72A24()
{
  OUTLINED_FUNCTION_166();
  v1 = *(v0 + 96);
  v2 = *(v0 + 137);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 136);
  v6 = *(v0 + 56);
  v14 = *(v0 + 40);
  v15 = *(v0 + 80);
  v13 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v13;
  *(v7 + 32) = v14;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2 & 1;
  *(v7 + 64) = v6;
  *(v7 + 72) = v4;
  *(v7 + 80) = v5 & 1;
  *(v7 + 88) = v15;
  *(v7 + 104) = v1;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  sub_227D4B758();
  OUTLINED_FUNCTION_133();
  *v8 = v9;
  v8[1] = sub_227B72B4C;
  v10 = *(v0 + 104);
  v11 = *(v0 + 16);
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B72B4C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227B72C68()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_227B72CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  *(v12 + 104) = a12;
  *(v12 + 88) = a11;
  *(v12 + 265) = a10;
  *(v12 + 72) = a9;
  *(v12 + 264) = v13;
  *(v12 + 56) = v14;
  *(v12 + 64) = v15;
  *(v12 + 40) = v16;
  *(v12 + 48) = v17;
  OUTLINED_FUNCTION_41_2(v18, v19, v20);
  v21 = sub_227D4B868();
  *(v12 + 112) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v12 + 120) = v22;
  v24 = *(v23 + 64);
  *(v12 + 128) = OUTLINED_FUNCTION_30();
  v25 = sub_227D4BFB8();
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  *(v12 + 136) = OUTLINED_FUNCTION_30();
  v28 = sub_227D4BFD8();
  *(v12 + 144) = v28;
  OUTLINED_FUNCTION_10_0(v28);
  *(v12 + 152) = v29;
  v31 = *(v30 + 64);
  v32 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_85_3(v32);
  v33 = sub_227D4BF98();
  *(v12 + 168) = v33;
  OUTLINED_FUNCTION_10_0(v33);
  *(v12 + 176) = v34;
  v36 = *(v35 + 64);
  *(v12 + 184) = OUTLINED_FUNCTION_30();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_5(v37);
  v39 = *(v38 + 64);
  *(v12 + 192) = OUTLINED_FUNCTION_30();
  v40 = sub_227D4BFF8();
  OUTLINED_FUNCTION_5(v40);
  v42 = *(v41 + 64);
  *(v12 + 200) = OUTLINED_FUNCTION_30();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD8, &qword_227D50A60);
  OUTLINED_FUNCTION_5(v43);
  v45 = *(v44 + 64);
  *(v12 + 208) = OUTLINED_FUNCTION_30();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v46);
  v48 = *(v47 + 64);
  *(v12 + 216) = OUTLINED_FUNCTION_30();
  v49 = sub_227D4B668();
  *(v12 + 224) = v49;
  OUTLINED_FUNCTION_10_0(v49);
  *(v12 + 232) = v50;
  v52 = *(v51 + 64);
  *(v12 + 240) = OUTLINED_FUNCTION_30();
  v53 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v53, v54, v55);
}

uint64_t sub_227B72F28()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 264);
  v3 = sub_227D4AEA8();
  v6 = OUTLINED_FUNCTION_57_1(v1, v4, v5, v3);
  if (v2)
  {
    goto LABEL_4;
  }

  v9 = *(v0 + 64);
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x282163F08](v6, v7, v8);
  }

LABEL_4:
  if ((*(v0 + 265) & 1) == 0)
  {
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    sub_227D4DC28();
    v12 = *(v0 + 265);
  }

  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v36 = *(v0 + 224);
  v15 = *(v0 + 208);
  v34 = *(v0 + 216);
  v35 = *(v0 + 192);
  v37 = *(v0 + 184);
  v16 = *(v0 + 104);
  v17 = *(v0 + 88);
  v18 = *(v0 + 264);
  v19 = *(v0 + 56);
  v33 = *(v0 + 48);
  v20 = *(v0 + 40);
  v31 = *(v0 + 96);
  v32 = *(v0 + 32);
  v21 = sub_227D4B928();
  OUTLINED_FUNCTION_57_1(v15, v22, v23, v21);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B658();
  (*(v14 + 16))(v35, v13, v36);
  v24 = sub_227D4BF78();
  OUTLINED_FUNCTION_46_1(v24);
  sub_227B79688();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v25 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4CD0](v25);
  v26 = *(MEMORY[0x277D0C730] + 4);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v27 = v28;
  v27[1] = sub_227B73174;
  v8 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v29 = *(v0 + 24);

  return MEMORY[0x282163F08](v6, v7, v8);
}

uint64_t sub_227B73174()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[31];
  v6 = v4[24];
  v7 = v4[23];
  v8 = v4[22];
  v9 = v4[21];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 256) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B734C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = v12[32];
  (*(v12[29] + 8))(v12[30], v12[28]);
  v14 = v12[30];
  v16 = v12[26];
  v15 = v12[27];
  OUTLINED_FUNCTION_88_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_227B73588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_166();
  v14 = v13;
  v38 = *(v12 + 16);
  v39 = v15;
  v37 = *(v12 + 24);
  v16 = *(v12 + 32);
  v17 = *(v12 + 40);
  v18 = *(v12 + 48);
  v19 = *(v12 + 56);
  v20 = *(v12 + 64);
  v21 = *(v12 + 72);
  v22 = *(v12 + 80);
  v36 = *(v12 + 88);
  v23 = *(v12 + 104);
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_20_0(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_87_3(v25, v27, v28, v29, v30, v31, v32, v33, v34);

  return sub_227B72CC4(v14, v39, v38, v37, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_227B736A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FE8, &qword_227D50A98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_227B15F50(a1, &v6 - v4, &qword_27D7E6FE8, &qword_227D50A98);
  return sub_227D4B858();
}

uint64_t sub_227B73750()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 144) = v23;
  *(v1 + 152) = v0;
  *(v1 + 112) = v21;
  *(v1 + 128) = v22;
  *(v1 + 80) = v19;
  *(v1 + 96) = v20;
  *(v1 + 192) = v18;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B7380C()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_10:
    v3 = 1;
    goto LABEL_11;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + 136) & 0xFFFFFFFFFFFFLL;
  }

  v3 = 1;
  if (v2)
  {
    v4 = *(v0 + 128);
    if (v4)
    {
      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        v6 = *(v0 + 160);
        v8 = *(v0 + 104);
        v7 = *(v0 + 112);
        v10 = *(v0 + 24);
        v9 = *(v0 + 32);
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4AE98();
        v3 = 0;
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v11 = *(v0 + 160);
  v12 = *(v0 + 96);
  v13 = *(v0 + 192);
  v14 = *(v0 + 72);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v24 = *(v0 + 80);
  v25 = *(v0 + 40);
  v23 = *(v0 + 56);
  v17 = sub_227D4AEA8();
  __swift_storeEnumTagSinglePayload(v11, v3, 1, v17);
  v18 = swift_task_alloc();
  *(v0 + 168) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v11;
  *(v18 + 40) = v25;
  *(v18 + 56) = v14;
  *(v18 + 64) = v13 & 1;
  *(v18 + 72) = v23;
  *(v18 + 88) = v24;
  *(v18 + 104) = v12;
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  sub_227D4B758();
  *v19 = v0;
  v19[1] = sub_227B73A20;
  v20 = *(v0 + 152);
  v21 = *(v0 + 16);

  return sub_227B4CC14();
}

uint64_t sub_227B73A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B73B20()
{
  OUTLINED_FUNCTION_6();
  sub_227B1DE58(*(v0 + 160), &qword_27D7E6F20, &qword_227D50828);

  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_227B73B94()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[20];
  v1 = v0[21];

  sub_227B1DE58(v2, &qword_27D7E6F20, &qword_227D50828);

  OUTLINED_FUNCTION_18();
  v4 = v0[23];

  return v3();
}

uint64_t sub_227B73C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  *(v12 + 112) = a12;
  *(v12 + 80) = a10;
  *(v12 + 96) = a11;
  *(v12 + 272) = a9;
  *(v12 + 64) = v13;
  *(v12 + 72) = v14;
  OUTLINED_FUNCTION_12_2(v15, v16, v17, v18, v19, v20);
  v21 = sub_227D4B868();
  *(v12 + 120) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v12 + 128) = v22;
  v24 = *(v23 + 64);
  *(v12 + 136) = OUTLINED_FUNCTION_30();
  v25 = sub_227D4BFB8();
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v28);
  v29 = sub_227D4BFD8();
  *(v12 + 152) = v29;
  OUTLINED_FUNCTION_10_0(v29);
  *(v12 + 160) = v30;
  v32 = *(v31 + 64);
  *(v12 + 168) = OUTLINED_FUNCTION_30();
  v33 = sub_227D4BF98();
  *(v12 + 176) = v33;
  OUTLINED_FUNCTION_10_0(v33);
  *(v12 + 184) = v34;
  v36 = *(v35 + 64);
  *(v12 + 192) = OUTLINED_FUNCTION_30();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_5(v37);
  v39 = *(v38 + 64);
  *(v12 + 200) = OUTLINED_FUNCTION_30();
  v40 = sub_227D4BFF8();
  OUTLINED_FUNCTION_5(v40);
  v42 = *(v41 + 64);
  *(v12 + 208) = OUTLINED_FUNCTION_30();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD8, &qword_227D50A60);
  OUTLINED_FUNCTION_5(v43);
  v45 = *(v44 + 64);
  *(v12 + 216) = OUTLINED_FUNCTION_30();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v46);
  v48 = *(v47 + 64);
  *(v12 + 224) = OUTLINED_FUNCTION_30();
  v49 = sub_227D4B668();
  *(v12 + 232) = v49;
  OUTLINED_FUNCTION_10_0(v49);
  *(v12 + 240) = v50;
  v52 = *(v51 + 64);
  *(v12 + 248) = OUTLINED_FUNCTION_30();
  v53 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v53, v54, v55);
}

uint64_t sub_227B73E68()
{
  v1 = *(v0 + 272);
  v2 = sub_227B15F50(*(v0 + 48), *(v0 + 224), &qword_27D7E6F20, &qword_227D50828);
  if ((v1 & 1) == 0)
  {
    v5 = *(v0 + 72);
    if (v5 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v5 <= 0x7FFFFFFF)
    {
      goto LABEL_4;
    }

    __break(1u);
    return MEMORY[0x282163F08](v2, v3, v4);
  }

LABEL_4:
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v29 = *(v0 + 224);
  v8 = *(v0 + 216);
  v30 = *(v0 + 200);
  v31 = *(v0 + 232);
  v32 = *(v0 + 192);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v26 = *(v0 + 80);
  v27 = *(v0 + 104);
  v12 = *(v0 + 272);
  v13 = *(v0 + 64);
  v28 = *(v0 + 56);
  v14 = *(v0 + 40);
  v25 = *(v0 + 32);
  v15 = sub_227D4B928();
  OUTLINED_FUNCTION_57_1(v8, v16, v17, v15);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B658();
  (*(v7 + 16))(v30, v6, v31);
  v18 = sub_227D4BF78();
  OUTLINED_FUNCTION_46_1(v18);
  sub_227B79688();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v19 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4CD0](v19);
  v20 = *(MEMORY[0x277D0C730] + 4);
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v21 = v22;
  v21[1] = sub_227B740A4;
  v4 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v23 = *(v0 + 24);

  return MEMORY[0x282163F08](v2, v3, v4);
}

uint64_t sub_227B740A4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[32];
  v6 = v4[25];
  v7 = v4[24];
  v8 = v4[23];
  v9 = v4[22];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 264) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B743F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = v12[33];
  (*(v12[30] + 8))(v12[31], v12[29]);
  v14 = v12[31];
  v16 = v12[27];
  v15 = v12[28];
  OUTLINED_FUNCTION_89_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_227B744B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_166();
  v38 = v13;
  v15 = v14;
  v16 = *(v12 + 16);
  v17 = *(v12 + 24);
  v18 = *(v12 + 32);
  v19 = *(v12 + 40);
  v20 = *(v12 + 48);
  v21 = *(v12 + 56);
  v22 = *(v12 + 64);
  v36 = *(v12 + 88);
  v37 = *(v12 + 72);
  v23 = *(v12 + 104);
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_20_0(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_87_3(v25, v27, v28, v29, v30, v31, v32, v33, v34);

  return sub_227B73C10(v15, v38, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227B745B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B745D0()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v16 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  OUTLINED_FUNCTION_58_3(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 80) = v12;
  *v12 = v13;
  v12[1] = sub_227B746A8;
  v14 = *(v0 + 64);
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B746A8()
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

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B747C4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_227B74820()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4BA78();
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v11);
  v12 = sub_227D4C698();
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v15);
  v16 = sub_227D4C6B8();
  v0[12] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[13] = v17;
  v19 = *(v18 + 64);
  v20 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_2(v20);
  v21 = sub_227D4C678();
  v0[15] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[16] = v22;
  v24 = *(v23 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FC0, &qword_227D50A20);
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v28);
  v29 = sub_227D4C6D8();
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v32 = sub_227D4BA48();
  v0[20] = v32;
  OUTLINED_FUNCTION_10_0(v32);
  v0[21] = v33;
  v35 = *(v34 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v36 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_227B74A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61_2();
  sub_227D4CE58();
  v23 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x22AAA4780](v23);
  v24 = OUTLINED_FUNCTION_25_2();
  v25(v24);
  v26 = sub_227D4C658();
  OUTLINED_FUNCTION_34_2(v26);
  sub_227B79634();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v27 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA53B0](v27);
  v28 = *(MEMORY[0x277D0C788] + 4);
  v29 = swift_task_alloc();
  OUTLINED_FUNCTION_71_2(v29);
  OUTLINED_FUNCTION_133();
  *v22 = v30;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F60](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B74AF0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 192) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6FC0, &qword_227D50A20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B74DFC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_8(v1);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_117_0();

  return sub_227B74820();
}

uint64_t sub_227B74E8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4BA58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227B74EB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_227D4CE58();
  return sub_227D4BA68();
}

uint64_t sub_227B74EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B74F10()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = 0;
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_227D4B078();
  OUTLINED_FUNCTION_133();
  *v4 = v5;
  v4[1] = sub_227B74FE0;
  v6 = v0[5];
  v7 = v0[2];
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B74FE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
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

uint64_t sub_227B750FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B75118()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v17 = *(v0 + 24);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_67_0(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  sub_227D4B8E8();
  OUTLINED_FUNCTION_133();
  *v12 = v13;
  v12[1] = sub_227B751E4;
  v14 = *(v0 + 56);
  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B751E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227B75300()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_227B7535C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4C2D8();
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C2F8();
  v0[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v14);
  v15 = sub_227D4C2B8();
  v0[12] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[13] = v16;
  v18 = *(v17 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FA0, &qword_227D50A10);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4C318();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4B8B8();
  v0[17] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[18] = v26;
  v28 = *(v27 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227B754FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_60_2();
  sub_227D4CE58();
  OUTLINED_FUNCTION_17_6();
  sub_227D4B8A8();
  v22 = OUTLINED_FUNCTION_25_2();
  v23(v22);
  v24 = sub_227D4C298();
  OUTLINED_FUNCTION_34_2(v24);
  sub_227B7958C();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v25 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4FF0](v25);
  v26 = *(MEMORY[0x277D0C758] + 4);
  v27 = swift_task_alloc();
  OUTLINED_FUNCTION_85_3(v27);
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v27 = v28;
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F30](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B755F8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
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

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6FA0, &qword_227D50A10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B75770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v19 = v13[21];
  v20 = v13[16];
  v21 = v13[11];
  sub_227D4C308();
  sub_227B796DC(v20, MEMORY[0x277D0C610]);
  if (v19)
  {
    v22 = OUTLINED_FUNCTION_59();
    v23(v22);
    v24 = v13[19];
    v25 = v13[15];
    v26 = v13[16];
    OUTLINED_FUNCTION_72_2();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_5();
    sub_227D4C2E8();
    (*(v18 + 8))(v20, v15);
    sub_227D4C2C8();
    sub_227B796DC(v16, MEMORY[0x277D0C608]);
    (*(v17 + 8))(v12, v14);
    OUTLINED_FUNCTION_74_3();

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_135_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_227B758D8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[21];
  v2 = OUTLINED_FUNCTION_59();
  v3(v2);
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  OUTLINED_FUNCTION_72_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227B75978(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B75998()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 88);
  v18 = *(v0 + 24);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_67_0(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  *(v13 + 48) = v3 & 1;
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F28, &qword_227D508A0);
  OUTLINED_FUNCTION_133();
  *v14 = v15;
  v14[1] = sub_227B75A80;
  v16 = *(v0 + 56);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B75A80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B75B80()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 208) = v1;
  OUTLINED_FUNCTION_12_2(v2, v3, v4, v5, v6, v7);
  v8 = sub_227D4B9F8();
  *(v0 + 64) = v8;
  OUTLINED_FUNCTION_10_0(v8);
  *(v0 + 72) = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v12);
  v13 = sub_227D4C418();
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v16);
  v17 = sub_227D4C438();
  *(v0 + 96) = v17;
  OUTLINED_FUNCTION_10_0(v17);
  *(v0 + 104) = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_2(v21);
  v22 = sub_227D4C3F8();
  *(v0 + 120) = v22;
  OUTLINED_FUNCTION_10_0(v22);
  *(v0 + 128) = v23;
  v25 = *(v24 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F88, &qword_227D509B0);
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  v29 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v29);
  v30 = sub_227D4C458();
  OUTLINED_FUNCTION_5(v30);
  v32 = *(v31 + 64);
  *(v0 + 152) = OUTLINED_FUNCTION_30();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F90, &qword_227D509B8);
  OUTLINED_FUNCTION_5(v33);
  v35 = *(v34 + 64);
  v36 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_85_3(v36);
  v37 = sub_227D4B9C8();
  *(v0 + 168) = v37;
  OUTLINED_FUNCTION_10_0(v37);
  *(v0 + 176) = v38;
  v40 = *(v39 + 64);
  *(v0 + 184) = OUTLINED_FUNCTION_30();
  v41 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_227B75D8C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v20 = *(v0 + 168);
  v4 = *(v0 + 144);
  v21 = *(v0 + 136);
  v5 = *(v0 + 208);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = sub_227D4BAB8();
  OUTLINED_FUNCTION_35_2(v10);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B9B8();
  (*(v2 + 16))(v4, v1, v20);
  v11 = sub_227D4C3D8();
  OUTLINED_FUNCTION_55_4(v4, v12, v13, v11);
  sub_227B79538();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v14 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA5130](v14);
  v15 = *(MEMORY[0x277D0C768] + 4);
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_37_1();

  return MEMORY[0x282163F40](v18);
}

uint64_t sub_227B75EFC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[24];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 200) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6F88, &qword_227D509B0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B7624C()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227B76344(uint64_t a1)
{
  v2 = sub_227D4B158();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_227D4B9E8();
}

uint64_t sub_227B7640C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x22AAA3E80]();
  *a1 = result;
  return result;
}

uint64_t sub_227B76438(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4B148();
}

uint64_t sub_227B76464()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_41_2(v3, v4, v5);
  v6 = sub_227D4B078();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B76508()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_91_3();
  v0[10] = v1;
  OUTLINED_FUNCTION_58_3(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[11] = v10;
  *v10 = v11;
  v10[1] = sub_227B765C8;
  v12 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B765C8()
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

uint64_t sub_227B766C8()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_227D4B018();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_227B7675C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_18();
  v4 = v0[12];

  return v3();
}

uint64_t sub_227B767C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B767D8()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F30, &qword_227D508D0);
  OUTLINED_FUNCTION_133();
  *v4 = v5;
  v4[1] = sub_227B768B4;
  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B768B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B769B4()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  OUTLINED_FUNCTION_41_2(v3, v4, v5);
  v6 = sub_227D4B898();
  v0[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C0F8();
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v13);
  v14 = sub_227D4C118();
  v0[11] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v18 = sub_227D4C0D8();
  v0[14] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v0[15] = v19;
  v21 = *(v20 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F70, &qword_227D50970);
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4C138();
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F78, &qword_227D50978);
  OUTLINED_FUNCTION_5(v28);
  v30 = *(v29 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v31 = sub_227D4B7F8();
  v0[20] = v31;
  OUTLINED_FUNCTION_10_0(v31);
  v0[21] = v32;
  v34 = *(v33 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v35 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_227B76BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v24 = v22[21];
  v23 = v22[22];
  v26 = v22[19];
  v25 = v22[20];
  v27 = v22[16];
  v28 = v22[17];
  v30 = v22[5];
  v29 = v22[6];
  v31 = v22[4];
  v32 = sub_227D4BA88();
  OUTLINED_FUNCTION_35_2(v32);
  sub_227D4CE58();
  sub_227D4CE58();
  OUTLINED_FUNCTION_17_6();
  sub_227D4B7E8();
  (*(v24 + 16))(v28, v23, v25);
  v33 = sub_227D4C0B8();
  OUTLINED_FUNCTION_55_4(v28, v34, v35, v33);
  sub_227B794E4();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v36 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4E10](v36);
  v37 = *(MEMORY[0x277D0C740] + 4);
  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_71_2(v38);
  OUTLINED_FUNCTION_133();
  *v23 = v39;
  v23[1] = sub_227B76D04;
  v41 = v22[17];
  v40 = v22[18];
  v42 = v22[16];
  v43 = v22[3];
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F18](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B76D04()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[14];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 192) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6F70, &qword_227D50970);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B77050()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[24];
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227B7711C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227B77148(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

uint64_t sub_227B77174()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F38, &qword_227D508E0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F40, &qword_227D508E8);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F48, &qword_227D508F0);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4B648();
  v1[8] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[9] = v14;
  v16 = *(v15 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227B772A0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_78_4();
  sub_227D4CE58();
  sub_227D4AF48();
  v3 = sub_227D4AF58();
  OUTLINED_FUNCTION_55_4(v0, v4, v5, v3);
  v6 = sub_227D4B908();
  OUTLINED_FUNCTION_57_1(v1, v7, v8, v6);
  v9 = sub_227D4B918();
  OUTLINED_FUNCTION_35_2(v9);
  OUTLINED_FUNCTION_90_4();
  v10 = swift_task_alloc();
  *(v2 + 88) = v10;
  *v10 = v2;
  OUTLINED_FUNCTION_69_2(v10);
  OUTLINED_FUNCTION_117_0();

  return sub_227B77598();
}

uint64_t sub_227B77380()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v3[12] = v0;

  v12 = OUTLINED_FUNCTION_10_4();
  v13(v12);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v3[10];
    v20 = v3[6];
    v19 = v3[7];
    v21 = v3[5];

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_164();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_227B77514()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  OUTLINED_FUNCTION_18();
  v6 = v0[12];

  return v5();
}

uint64_t sub_227B77598()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4B838();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B7763C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_227B776FC;
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B776FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[9] = v0;

  if (!v0)
  {
    v9 = v3[7];
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B77814()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_227B7786C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_18();
  v4 = v0[9];

  return v3();
}

uint64_t sub_227B778D0()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F38, &qword_227D508E0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F40, &qword_227D508E8);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F48, &qword_227D508F0);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4B648();
  v1[8] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[9] = v14;
  v16 = *(v15 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227B779FC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_78_4();
  v3 = sub_227D4AF58();
  OUTLINED_FUNCTION_57_1(v0, v4, v5, v3);
  sub_227D4CE58();
  sub_227D4AF48();
  v6 = sub_227D4B908();
  OUTLINED_FUNCTION_55_4(v1, v7, v8, v6);
  v9 = sub_227D4B918();
  OUTLINED_FUNCTION_35_2(v9);
  OUTLINED_FUNCTION_90_4();
  v10 = swift_task_alloc();
  *(v2 + 88) = v10;
  *v10 = v2;
  OUTLINED_FUNCTION_69_2(v10);
  OUTLINED_FUNCTION_117_0();

  return sub_227B77598();
}

uint64_t sub_227B77ADC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v3[12] = v0;

  v12 = OUTLINED_FUNCTION_10_4();
  v13(v12);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v3[10];
    v20 = v3[6];
    v19 = v3[7];
    v21 = v3[5];

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_164();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_227B77C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B77C8C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_91_3();
  v0[7] = v1;
  OUTLINED_FUNCTION_58_3(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[8] = v10;
  *v10 = v11;
  v10[1] = sub_227B77D54;
  v12 = v0[6];
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B77D54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B77E70()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4B828();
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v11);
  v12 = sub_227D4BE28();
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v15);
  v16 = sub_227D4BE48();
  v0[12] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[13] = v17;
  v19 = *(v18 + 64);
  v20 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_2(v20);
  v21 = sub_227D4BE08();
  v0[15] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[16] = v22;
  v24 = *(v23 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F50, &qword_227D50920);
  OUTLINED_FUNCTION_5(v25);
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v28);
  v29 = sub_227D4BE68();
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v32 = sub_227D4B628();
  v0[20] = v32;
  OUTLINED_FUNCTION_10_0(v32);
  v0[21] = v33;
  v35 = *(v34 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v36 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_227B78050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61_2();
  sub_227D4CE58();
  v23 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x22AAA4360](v23);
  v24 = OUTLINED_FUNCTION_25_2();
  v25(v24);
  v26 = sub_227D4BDE8();
  OUTLINED_FUNCTION_34_2(v26);
  sub_227B78DD4();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v27 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4B40](v27);
  v28 = *(MEMORY[0x277D0C718] + 4);
  v29 = swift_task_alloc();
  OUTLINED_FUNCTION_71_2(v29);
  OUTLINED_FUNCTION_133();
  *v22 = v30;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163EF0](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B78140()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 192) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6F50, &qword_227D50920);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B7844C()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[24];
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  OUTLINED_FUNCTION_73_1();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227B78504@<X0>(_BYTE *a1@<X8>)
{
  result = MEMORY[0x22AAA4550]();
  *a1 = result;
  return result;
}

uint64_t sub_227B78558()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4C058();
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C078();
  v0[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v14);
  v15 = sub_227D4C038();
  v0[12] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[13] = v16;
  v18 = *(v17 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FB0, &qword_227D50A18);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4C098();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4B7D8();
  v0[17] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[18] = v26;
  v28 = *(v27 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v29 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227B786F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_60_2();
  sub_227D4CE58();
  v22 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x22AAA4510](v22);
  v23 = OUTLINED_FUNCTION_25_2();
  v24(v23);
  v25 = sub_227D4C018();
  OUTLINED_FUNCTION_34_2(v25);
  sub_227B795E0();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v26 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4D70](v26);
  v27 = *(MEMORY[0x277D0C738] + 4);
  v28 = swift_task_alloc();
  OUTLINED_FUNCTION_85_3(v28);
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v28 = v29;
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F10](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B787F0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
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

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6FB0, &qword_227D50A18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B78968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v19 = v13[21];
  v20 = v13[16];
  v21 = v13[11];
  sub_227D4C088();
  sub_227B796DC(v20, MEMORY[0x277D0C590]);
  if (v19)
  {
    v22 = OUTLINED_FUNCTION_59();
    v23(v22);
    v24 = v13[19];
    v25 = v13[15];
    v26 = v13[16];
    OUTLINED_FUNCTION_72_2();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_5();
    sub_227D4C068();
    (*(v18 + 8))(v20, v15);
    sub_227D4C048();
    sub_227B796DC(v16, MEMORY[0x277D0C588]);
    (*(v17 + 8))(v12, v14);
    OUTLINED_FUNCTION_74_3();

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_135_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_227B78AD0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_8(v1);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_117_0();

  return sub_227B78558();
}

uint64_t sub_227B78B60()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_8(v1);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_117_0();

  return sub_227B7535C();
}

uint64_t sub_227B78BF0()
{
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_3_8(v7);

  return sub_227B75B80();
}

uint64_t sub_227B78CA8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_3_8(v5);
  OUTLINED_FUNCTION_164();

  return sub_227B769B4();
}

uint64_t sub_227B78D44()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_8(v1);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_117_0();

  return sub_227B77E70();
}

unint64_t sub_227B78DD4()
{
  result = qword_27D7E6F58;
  if (!qword_27D7E6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6F58);
  }

  return result;
}

uint64_t sub_227B78E28()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_41_2(v1, v2, v3);
  v4 = sub_227D4BF18();
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v0[5] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4BF38();
  v0[6] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[7] = v8;
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4BEF8();
  v0[9] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[10] = v12;
  v14 = *(v13 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F60, &qword_227D50968);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v18 = sub_227D4BF58();
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227B78F80()
{
  OUTLINED_FUNCTION_166();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[4];
  v4 = sub_227D4B648();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 16))(v2, v3);
  v6 = sub_227D4BED8();
  OUTLINED_FUNCTION_46_1(v6);
  sub_227B79490();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v7 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4C30](v7);
  v8 = *(MEMORY[0x277D0C728] + 4);
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_82_2(v9);
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v9 = v10;
  v9[1] = sub_227B79098;
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v14 = v0[3];

  return MEMORY[0x282163F00](v11, v13, v12);
}

uint64_t sub_227B79098()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 120) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1DE58(v6, &qword_27D7E6F60, &qword_227D50968);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B79210()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  sub_227D4BF48();
  sub_227B796DC(v2, MEMORY[0x277D0C550]);
  if (v1)
  {
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[5];

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[2];
    sub_227D4BF28();
    v9 = OUTLINED_FUNCTION_18_5();
    v10(v9);
    OUTLINED_FUNCTION_45_2();
    sub_227D4BF08();
    OUTLINED_FUNCTION_50_2();
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[5];

    OUTLINED_FUNCTION_15_0();
  }

  return v16();
}

uint64_t sub_227B7935C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227B793EC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;

  return sub_227B78E28();
}

unint64_t sub_227B79490()
{
  result = qword_27D7E6F68;
  if (!qword_27D7E6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6F68);
  }

  return result;
}

unint64_t sub_227B794E4()
{
  result = qword_27D7E6F80;
  if (!qword_27D7E6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6F80);
  }

  return result;
}

unint64_t sub_227B79538()
{
  result = qword_27D7E6F98;
  if (!qword_27D7E6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6F98);
  }

  return result;
}

unint64_t sub_227B7958C()
{
  result = qword_27D7E6FA8;
  if (!qword_27D7E6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6FA8);
  }

  return result;
}

unint64_t sub_227B795E0()
{
  result = qword_27D7E6FB8;
  if (!qword_27D7E6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6FB8);
  }

  return result;
}

unint64_t sub_227B79634()
{
  result = qword_27D7E6FC8;
  if (!qword_27D7E6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6FC8);
  }

  return result;
}

unint64_t sub_227B79688()
{
  result = qword_27D7E6FE0;
  if (!qword_27D7E6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6FE0);
  }

  return result;
}

uint64_t sub_227B796DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_227B796DC(v1, v0);
}

void OUTLINED_FUNCTION_51_3()
{
  v1 = v0[21];
  v8 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[2];
}

uint64_t OUTLINED_FUNCTION_52_3()
{
  result = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

uint64_t OUTLINED_FUNCTION_60_2()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  return sub_227D4CE58();
}

__n128 OUTLINED_FUNCTION_67_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v11 + 64) = a1;
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v9;
  a1[2].n128_u64[1] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_3()
{
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
}

__n128 OUTLINED_FUNCTION_87_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(a1 + 8) = v9;
  *(v11 + 56) = v10;
  result = a9;
  *(v11 + 40) = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_4()
{

  return MEMORY[0x282163628](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_91_3()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);

  return swift_task_alloc();
}

uint64_t sub_227B79914()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690) - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v4 = sub_227D4AE88();
  v1[15] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E00, &unk_227D4FA70);
  v1[18] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[21] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227B79A9C()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  v0[25] = 0;
  v0[26] = v5;
  v0[24] = v4;
  if (v4)
  {
    v6 = v0[17];
    (*(v1 + 16))(v0[23], v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[21]);
    sub_227B23878(v3 + 40, (v0 + 2));
    sub_227BD2890();
    v7 = v0[13];
    sub_227D41410(v0[23]);
    v15 = swift_task_alloc();
    v0[27] = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_0_8(v15);

    return sub_227BBB020(v16, v17);
  }

  else
  {
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[14];

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_227B79CA0()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  v2[28] = v4;
  v2[29] = v0;

  if (v0)
  {
    v5 = v2[26];
    (*(v2[16] + 8))(v2[17], v2[15]);
    sub_227B26090((v2 + 2));
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    sub_227B26090((v2 + 2));
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B79DF8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_227B7A2E8(sub_227B7A26C, v4, v1);
  v5 = v0[28];
  v6 = v0[26];
  if (v2)
  {

    v32 = OUTLINED_FUNCTION_2_10();
    v33(v32);

    OUTLINED_FUNCTION_19_0();

    return v34();
  }

  else
  {
    v7 = v0[20];
    v8 = v0[14];

    v9 = sub_227D4A958();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    sub_227B7A4F8(&qword_27D7E6D68);
    sub_227B7A4F8(&qword_27D7E6D80);
    sub_227D4A948();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[26];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_227B7AC58(0, *(v11 + 16) + 1, 1, v0[26]);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_227B7AC58(v12 > 1, v13 + 1, 1, v11);
    }

    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[18];
    v19 = v0[19];
    *(v11 + 16) = v13 + 1;
    (*(v19 + 32))(v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13, v16, v18);
    (*(v15 + 8))(v14, v17);
    v20 = v0[24];
    v21 = v0[25] + 1;
    v0[25] = v21;
    v0[26] = v11;
    v22 = v0[23];
    if (v21 == v20)
    {
      v23 = v0[20];
      v24 = v0[17];
      v25 = v0[14];
      v26 = v0[23];

      v27 = v0[1];

      return v27(v11);
    }

    else
    {
      v29 = v0[17];
      v30 = v0[13];
      (*(v0[22] + 16))(v0[23], v0[12] + ((*(v0[22] + 80) + 32) & ~*(v0[22] + 80)) + *(v0[22] + 72) * v21, v0[21]);
      sub_227B23878(v30 + 40, (v0 + 2));
      sub_227BD2890();
      v31 = v0[13];
      sub_227D41410(v0[23]);
      v35 = swift_task_alloc();
      v0[27] = v35;
      *v35 = v0;
      v36 = OUTLINED_FUNCTION_0_8();

      return sub_227BBB020(v36, v37);
    }
  }
}

uint64_t sub_227B7A1BC()
{
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227B7A26C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  sub_227D4AF18();
  sub_227D4A5F8();

  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_227B7A2E8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_227B7AF44(0, v10, 0);
    v11 = v22;
    v12 = *(sub_227D4AF38() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17[1] = v6 + 32;
    v17[0] = *(v12 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_227B7AF44(v14 > 1, v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
      v13 += v17[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_227B7A4F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D70, &unk_227D5E210);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B7A548()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_227D4AF38();
  v1[14] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4AE88();
  v1[17] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B7A63C()
{
  v1 = v0[19];
  v2 = v0[12];
  sub_227B23878(v0[13] + 40, (v0 + 2));
  sub_227BD2890();
  v3 = v0[13];
  v4 = sub_227D41410(v0[12]);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_227B7A77C;
  v6 = v0[19];

  return sub_227BBB020(v6, v4 & 1);
}

uint64_t sub_227B7A77C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  (*(v3[18] + 8))(v3[19], v3[17]);
  sub_227B26090((v4 + 2));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227B7A8F0()
{
  v1 = v0[21];
  v64 = *(v1 + 16);
  if (v64)
  {
    v2 = 0;
    v3 = v0[15];
    v62 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4 = MEMORY[0x277D84F98];
    v63 = v3;
    v60 = v0[21];
    v61 = (v3 + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      (*(v63 + 16))(v0[16], v62 + *(v63 + 72) * v2, v0[14]);
      v5 = sub_227D4AF28();
      v13 = v0[16];
      if (v6)
      {
        v14 = v5;
        v15 = v6;
        v16 = sub_227D4AF18();
        v18 = v17;
        swift_isUniquelyReferenced_nonNull_native();
        v19 = v14;
        v20 = sub_227B2664C(v14, v15);
        if (__OFADD__(v4[2], (v21 & 1) == 0))
        {
          goto LABEL_25;
        }

        v22 = v20;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
        v24 = sub_227D4D7C8();
        if (v24)
        {
          v24 = sub_227B2664C(v19, v15);
          if ((v23 & 1) != (v25 & 1))
          {

            sub_227D4DAE8();
            return;
          }

          v22 = v24;
        }

        v32 = v65[16];
        v33 = v65[14];
        if (v23)
        {

          v34 = (v4[7] + 16 * v22);
          v35 = v34[1];
          *v34 = v16;
          v34[1] = v18;

          v44 = OUTLINED_FUNCTION_4_8(v36, v37, v38, v39, v40, v41, v42, v43, v59, v60, v61);
          v45(v44, v33);
        }

        else
        {
          v4[(v22 >> 6) + 8] |= 1 << v22;
          v48 = (v4[6] + 16 * v22);
          *v48 = v19;
          v48[1] = v15;
          v49 = (v4[7] + 16 * v22);
          *v49 = v16;
          v49[1] = v18;
          v50 = OUTLINED_FUNCTION_4_8(v24, v25, v26, v27, v28, v29, v30, v31, v59, v60, v61);
          v51(v50, v33);
          v52 = v4[2];
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (v53)
          {
            goto LABEL_26;
          }

          v4[2] = v54;
        }

        v0 = v65;
        v1 = v60;
      }

      else
      {
        v46 = OUTLINED_FUNCTION_4_8(v5, v0[14], v7, v8, v9, v10, v11, v12, v59, v60, v61);
        v47(v46);
      }

      if (v64 == ++v2)
      {
        v55 = v0[21];
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x277D84F98];
LABEL_18:
  v56 = v0[19];
  v57 = v0[16];

  v58 = v0[1];

  v58(v4);
}

uint64_t sub_227B7ABEC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

size_t sub_227B7AC58(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227B7AD60(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E00, &unk_227D4FA70) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227B7AE68(a4 + v11, v8, v9 + v11, &qword_27D7E6E00, &unk_227D4FA70);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_227B7AD60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FF0, &unk_227D63190);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E00, &unk_227D4FA70) - 8);
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

uint64_t sub_227B7AE68(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_49();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_49();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_227B7AF44(size_t a1, int64_t a2, char a3)
{
  result = sub_227B7AF64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_227B7AF64(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FF8, &qword_227D50AB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B7AE68(a4 + v16, v8, v13 + v16, &qword_27D7E6D70, &unk_227D5E210);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_227B7B150(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 72) = a3;
  *(v4 + 24) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B7B16C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7000, &qword_227D50AD0);
  OUTLINED_FUNCTION_133();
  *v5 = v6;
  v5[1] = sub_227B7B24C;
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B7B24C()
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

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B7B350()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 216) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  v6 = sub_227D4B548();
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_10_0(v6);
  *(v0 + 56) = v7;
  v9 = *(v8 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C238();
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_30();
  v13 = sub_227D4C258();
  *(v0 + 80) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v0 + 88) = v14;
  v16 = *(v15 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7050, &qword_227D50BE0);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_30();
  v20 = sub_227D4C8E8();
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  *(v0 + 112) = OUTLINED_FUNCTION_30();
  v23 = sub_227D4C218();
  *(v0 + 120) = v23;
  OUTLINED_FUNCTION_10_0(v23);
  *(v0 + 128) = v24;
  v26 = *(v25 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v27 = sub_227D4C278();
  OUTLINED_FUNCTION_5(v27);
  v29 = *(v28 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_30();
  v30 = sub_227D4AE88();
  *(v0 + 152) = v30;
  OUTLINED_FUNCTION_10_0(v30);
  *(v0 + 160) = v31;
  v33 = *(v32 + 64);
  *(v0 + 168) = OUTLINED_FUNCTION_30();
  v34 = sub_227D4B598();
  *(v0 + 176) = v34;
  OUTLINED_FUNCTION_10_0(v34);
  *(v0 + 184) = v35;
  v37 = *(v36 + 64);
  *(v0 + 192) = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_227B7B5BC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 216);
  v8 = *(v0 + 40);
  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 32), *(v0 + 152));
  sub_227D4CE58();
  sub_227D4B588();
  sub_227B4E8B0(v7);
  sub_227B7E014();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7();
  sub_227D4C208();
  (*(v2 + 16))(v5, v1, v3);
  v9 = sub_227D4C1F8();
  OUTLINED_FUNCTION_46_1(v9);
  v10 = *(MEMORY[0x277D0C750] + 4);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v11 = v12;
  v11[1] = sub_227B7B734;
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 104);
  v16 = *(v0 + 24);

  return MEMORY[0x282163F28](v13, v14, v15);
}

uint64_t sub_227B7B734()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[13];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 208) = v0;

  sub_227B1DE58(v9, &qword_27D7E7050, &qword_227D50BE0);
  v13 = OUTLINED_FUNCTION_29_2();
  v14(v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_227B7BA94()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[26];
  v2 = OUTLINED_FUNCTION_19_3();
  v3(v2);
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B7BB68()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_28_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B355D0;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_164();

  return sub_227B7B350();
}

uint64_t sub_227B7BC00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227B7BC2C(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

uint64_t sub_227B7BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B7BC70()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7008, &qword_227D50AF0);
  OUTLINED_FUNCTION_133();
  *v3 = v4;
  v3[1] = sub_227B7BD54;
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B7BD54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B7BE58()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_38_3(v1, v2, v3, v4, v5);
  v6 = sub_227D4B248();
  v0[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4C558();
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4C578();
  v0[11] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[12] = v14;
  v16 = *(v15 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4C538();
  v0[14] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[15] = v18;
  v20 = *(v19 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7040, &qword_227D50BA8);
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v24 = sub_227D4C598();
  OUTLINED_FUNCTION_5(v24);
  v26 = *(v25 + 64);
  v0[18] = OUTLINED_FUNCTION_30();
  v27 = sub_227D4AE88();
  v0[19] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v0[20] = v28;
  v30 = *(v29 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v31 = sub_227D4B218();
  v0[22] = v31;
  OUTLINED_FUNCTION_10_0(v31);
  v0[23] = v32;
  v34 = *(v33 + 64);
  v0[24] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_227B7C098()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[5];
  v6 = v0[6];
  (*(v0[20] + 16))(v0[21], v0[4], v0[19]);
  sub_227D4CE58();
  sub_227D4B208();
  (*(v2 + 16))(v5, v1, v3);
  v8 = sub_227D4C518();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  sub_227B7DFC0();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_6_3();
  v9 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA5270](v9);
  v10 = *(MEMORY[0x277D0C778] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v11 = v12;
  v11[1] = sub_227B7C20C;
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v0[3];

  return MEMORY[0x282163F50](v13, v15, v14);
}

uint64_t sub_227B7C20C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[14];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 208) = v0;

  (*(v8 + 8))(v7, v9);
  sub_227B1DE58(v6, &qword_27D7E7040, &qword_227D50BA8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B7C564()
{
  v1 = v0[26];
  v2 = OUTLINED_FUNCTION_19_3();
  v3(v2);
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227B7C638()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_28_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_164();

  return sub_227B7BE58();
}

uint64_t sub_227B7C6D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4B228();
  *a1 = result;
  return result;
}

uint64_t sub_227B7C6FC(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4B238();
}

uint64_t sub_227B7C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B7C74C()
{
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v10;
  *(v5 + 32) = v4;
  *(v5 + 40) = v11;
  *(v5 + 56) = v1;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7010, &qword_227D50B10);
  OUTLINED_FUNCTION_133();
  *v6 = v7;
  v6[1] = sub_227B7C84C;
  v8 = *(v0 + 88);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B7C84C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B7C950()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_227B7C9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_6();
  v10[10] = a9;
  v10[11] = a10;
  v10[8] = v11;
  v10[9] = v12;
  v10[6] = v13;
  v10[7] = v14;
  v10[4] = v15;
  v10[5] = v16;
  v10[2] = v17;
  v10[3] = v18;
  v19 = sub_227D4B3B8();
  v10[12] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v10[13] = v20;
  v22 = *(v21 + 64);
  v10[14] = OUTLINED_FUNCTION_30();
  v23 = sub_227D4C4B8();
  OUTLINED_FUNCTION_5(v23);
  v25 = *(v24 + 64);
  v10[15] = OUTLINED_FUNCTION_30();
  v26 = sub_227D4C4D8();
  v10[16] = v26;
  OUTLINED_FUNCTION_10_0(v26);
  v10[17] = v27;
  v29 = *(v28 + 64);
  v10[18] = OUTLINED_FUNCTION_30();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7030, &qword_227D50B70);
  OUTLINED_FUNCTION_5(v30);
  v32 = *(v31 + 64);
  v10[19] = OUTLINED_FUNCTION_30();
  v33 = sub_227D4C498();
  v10[20] = v33;
  OUTLINED_FUNCTION_10_0(v33);
  v10[21] = v34;
  v36 = *(v35 + 64);
  v10[22] = OUTLINED_FUNCTION_30();
  v37 = sub_227D4C4F8();
  OUTLINED_FUNCTION_5(v37);
  v39 = *(v38 + 64);
  v10[23] = OUTLINED_FUNCTION_30();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7020, &qword_227D50B38);
  OUTLINED_FUNCTION_5(v40);
  v42 = *(v41 + 64);
  v10[24] = OUTLINED_FUNCTION_30();
  v43 = sub_227D4B518();
  v10[25] = v43;
  OUTLINED_FUNCTION_10_0(v43);
  v10[26] = v44;
  v46 = *(v45 + 64);
  v10[27] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_41_0(v47, v48, v49);
}

uint64_t sub_227B7CBD8()
{
  v1 = v0[27];
  v2 = v0[24];
  v24 = v0[26];
  v25 = v0[25];
  v22 = v0[22];
  v23 = v0[19];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v21 = v0[7];
  v8 = v0[4];
  v20 = v0[5];
  v9 = sub_227D4AE88();
  OUTLINED_FUNCTION_62_0(v9);
  (*(v10 + 16))(v2, v8, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B508();
  sub_227D492B8();
  sub_227D492B8();
  sub_227B7DF6C();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7();
  sub_227D4C488();
  (*(v24 + 16))(v23, v1, v25);
  v11 = sub_227D4C478();
  OUTLINED_FUNCTION_46_1(v11);
  v12 = *(MEMORY[0x277D0C770] + 4);
  v13 = swift_task_alloc();
  v0[28] = v13;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v13 = v14;
  v13[1] = sub_227B7CDDC;
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[19];
  v18 = v0[3];

  return MEMORY[0x282163F48](v15, v16, v17);
}

uint64_t sub_227B7CDDC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[28];
  v6 = v4[22];
  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 232) = v0;

  sub_227B1DE58(v9, &qword_27D7E7030, &qword_227D50B70);
  v13 = OUTLINED_FUNCTION_29_2();
  v14(v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B7D140()
{
  v1 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227B7D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_111();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  v16 = v10[7];
  v17 = v10[8];
  v18 = v10[9];
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_20_0(v19);
  *v20 = v21;
  v20[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_135_0();

  return sub_227B7C9AC(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_227B7D2E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4B398();
  *a1 = result;
  return result;
}

uint64_t sub_227B7D310(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4B3A8();
}

uint64_t sub_227B7D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B7D35C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v10 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7010, &qword_227D50B10);
  OUTLINED_FUNCTION_133();
  *v6 = v7;
  v6[1] = sub_227B7D458;
  v8 = *(v0 + 80);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B7D458()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227B7D55C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_227B7D5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_6();
  v9[9] = v10;
  v9[10] = a9;
  v9[7] = v11;
  v9[8] = v12;
  OUTLINED_FUNCTION_38_3(v13, v14, v15, v16, v17);
  v18 = sub_227D4B578();
  v9[11] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v9[12] = v19;
  v21 = *(v20 + 64);
  v9[13] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4C738();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v9[14] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4C758();
  v9[15] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v9[16] = v26;
  v28 = *(v27 + 64);
  v9[17] = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7018, &qword_227D50B30);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  v9[18] = OUTLINED_FUNCTION_30();
  v32 = sub_227D4C718();
  v9[19] = v32;
  OUTLINED_FUNCTION_10_0(v32);
  v9[20] = v33;
  v35 = *(v34 + 64);
  v9[21] = OUTLINED_FUNCTION_30();
  v36 = sub_227D4C778();
  OUTLINED_FUNCTION_5(v36);
  v38 = *(v37 + 64);
  v9[22] = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7020, &qword_227D50B38);
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  v9[23] = OUTLINED_FUNCTION_30();
  v42 = sub_227D4B608();
  v9[24] = v42;
  OUTLINED_FUNCTION_10_0(v42);
  v9[25] = v43;
  v45 = *(v44 + 64);
  v9[26] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_41_0(v46, v47, v48);
}

uint64_t sub_227B7D7D8()
{
  v1 = v0[26];
  v2 = v0[23];
  v23 = v0[25];
  v24 = v0[24];
  v21 = v0[21];
  v22 = v0[18];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v20 = v0[7];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  v9 = sub_227D4AE88();
  OUTLINED_FUNCTION_62_0(v9);
  (*(v10 + 16))(v2, v8, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B5F8();
  sub_227D492B8();
  sub_227D492B8();
  sub_227B7DEC0();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7();
  sub_227D4C708();
  (*(v23 + 16))(v22, v1, v24);
  v11 = sub_227D4C6F8();
  OUTLINED_FUNCTION_46_1(v11);
  v12 = *(MEMORY[0x277D0C790] + 4);
  v13 = swift_task_alloc();
  v0[27] = v13;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v13 = v14;
  v13[1] = sub_227B7D9D0;
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[18];
  v18 = v0[3];

  return MEMORY[0x282163F68](v15, v16, v17);
}

uint64_t sub_227B7D9D0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[21];
  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 224) = v0;

  sub_227B1DE58(v9, &qword_27D7E7018, &qword_227D50B30);
  v13 = OUTLINED_FUNCTION_29_2();
  v14(v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B7DD34()
{
  v1 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227B7DE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_28_4();
  v10 = v9[4];
  v11 = v9[5];
  v12 = v9[6];
  v13 = v9[7];
  v14 = v9[8];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20_0(v15);
  *v16 = v17;
  v16[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_135_0();

  return sub_227B7D5B8(v18, v19, v20, v21, v22, v23, v24, v25, a9);
}

unint64_t sub_227B7DEC0()
{
  result = qword_27D7E7028;
  if (!qword_27D7E7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7028);
  }

  return result;
}

uint64_t sub_227B7DF14@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x22AAA42A0]();
  *a1 = result;
  return result;
}

uint64_t sub_227B7DF40(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4B568();
}

unint64_t sub_227B7DF6C()
{
  result = qword_27D7E7038;
  if (!qword_27D7E7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7038);
  }

  return result;
}

unint64_t sub_227B7DFC0()
{
  result = qword_27D7E7048;
  if (!qword_27D7E7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7048);
  }

  return result;
}

unint64_t sub_227B7E014()
{
  result = qword_27D7E7058;
  if (!qword_27D7E7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7058);
  }

  return result;
}

uint64_t sub_227B7E068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  result = *(v0 + 192);
  v2 = *(v0 + 168);
  return result;
}

void OUTLINED_FUNCTION_39_2()
{
  v1 = v0[23];
  v4 = v0[24];
  v2 = v0[22];
  v3 = v0[18];
}

uint64_t ChallengeService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore16ChallengeService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227B7E18C()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BB08);
  __swift_project_value_buffer(v0, qword_280E7BB08);
  return sub_227D49E18();
}

uint64_t sub_227B7E1D8()
{
  if (_MergedGlobals_4 != -1)
  {
    OUTLINED_FUNCTION_141_1();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BB08);
}

uint64_t static ChallengeService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_4 != -1)
  {
    OUTLINED_FUNCTION_141_1();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BB08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B7E2C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_227B7E314(a1, a2);
  return v7;
}

uint64_t sub_227B7E314(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = sub_227D49EF8();
  v4 = OUTLINED_FUNCTION_9(v16);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC16GameServicesCore16ChallengeService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_actorSystem) = a1;
  type metadata accessor for ChallengeService();
  v18 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_18_6();
  sub_227B0F6EC(v12);
  OUTLINED_FUNCTION_0_9();
  sub_227B0F6EC(v13);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_id, v10, v16);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_dataProvider) = v17;
  v18 = *(v2 + v11);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for ChallengeService()
{
  result = qword_27D7EC0B0;
  if (!qword_27D7EC0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChallengeService.refreshChallengeDefinitions(game:filters:scope:)()
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
  OUTLINED_FUNCTION_187_1(v29);
  v30 = sub_227D49D58();
  v1[25] = v30;
  OUTLINED_FUNCTION_10_0(v30);
  v1[26] = v31;
  v33 = *(v32 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v34 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_227B7E7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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
    OUTLINED_FUNCTION_145_1(v24);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_145_1(v25);
    OUTLINED_FUNCTION_13_7();
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
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_120_0();
      sub_227B0F6EC(v48);
      OUTLINED_FUNCTION_125_0(&qword_27D7E6A18);
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
      OUTLINED_FUNCTION_169_1(v62);
      OUTLINED_FUNCTION_0_9();
      sub_227B0F6EC(v63);
      OUTLINED_FUNCTION_48_0();
      *v50 = v64;
      v50[1] = sub_227B7EC00;
      v65 = v14[27];
      v66 = v14[9];
      v67 = v14[6];
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B10](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
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

    return sub_227B7F42C(v35, v36, v37);
  }
}

uint64_t sub_227B7EC00()
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

uint64_t sub_227B7EDE0()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[30];
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
  v12 = v0[9];

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_227B7F07C(uint64_t a1, uint64_t *a2)
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
  v15[1] = sub_227B96F80;

  return ChallengeService.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_227B7F42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B7F444()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[5] + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_dataProvider);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_227B7F4E4;
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_40_0();

  return sub_227B2A510();
}

uint64_t sub_227B7F4E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

unint64_t sub_227B7F5C4()
{
  result = qword_27D7E7078;
  if (!qword_27D7E7078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7070, &unk_227D64F40);
    sub_227B7F648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7078);
  }

  return result;
}

unint64_t sub_227B7F648()
{
  result = qword_27D7E7080;
  if (!qword_27D7E7080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7088, &unk_227D50C60);
    sub_227B0F6EC(&unk_27D7E7090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7080);
  }

  return result;
}

unint64_t sub_227B7F6FC()
{
  result = qword_27D7E7098;
  if (!qword_27D7E7098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7070, &unk_227D64F40);
    sub_227B7F780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7098);
  }

  return result;
}

unint64_t sub_227B7F780()
{
  result = qword_27D7E70A0;
  if (!qword_27D7E70A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7088, &unk_227D50C60);
    sub_227B0F6EC(&unk_27D7E70A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70A0);
  }

  return result;
}

uint64_t ChallengeService.refreshChallengeDefinitions(game:filters:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49D58();
  v0[18] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227B7FA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
    OUTLINED_FUNCTION_145_1(v18);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_145_1(v19);
    OUTLINED_FUNCTION_13_7();
    v20 = v13[20];
    if (v12)
    {
      v21 = OUTLINED_FUNCTION_74_2();
      v22(v21);
      v23 = OUTLINED_FUNCTION_17_0();
      v24(v23);
      OUTLINED_FUNCTION_109_2();
      v33 = v13[11];
      v34 = v13[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    else
    {
      v30 = v13[11];
      v13[2] = v13[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7070, &unk_227D64F40);
      OUTLINED_FUNCTION_11_6();
      sub_227B7F5C4();
      sub_227B7F6FC();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v31 = v13[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v32 = v13[20];
      sub_227D49D08();
      v43 = v13[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v44 = *(MEMORY[0x277D0CE38] + 4);
      v45 = swift_task_alloc();
      OUTLINED_FUNCTION_195_1(v45);
      OUTLINED_FUNCTION_0_9();
      sub_227B0F6EC(v46);
      OUTLINED_FUNCTION_48_0();
      *v32 = v47;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }
  }

  else
  {
    v25 = swift_task_alloc();
    v13[23] = v25;
    *v25 = v13;
    v25[1] = sub_227B96F74;
    v26 = v13[4];
    v27 = v13[5];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227B8040C();
  }
}

uint64_t sub_227B7FD24()
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

uint64_t sub_227B7FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_129_1();
  v13 = OUTLINED_FUNCTION_199();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  OUTLINED_FUNCTION_109_2();
  v21 = *(v12 + 88);
  v22 = *(v12 + 64);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227B7FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_129_1();
  v13 = OUTLINED_FUNCTION_199();
  v14(v13);
  v15 = OUTLINED_FUNCTION_86();
  v16(v15);
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = OUTLINED_FUNCTION_22_2();
  v20(v19);
  v21 = *(v12 + 176);
  v22 = *(v12 + 160);
  OUTLINED_FUNCTION_156_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227B7FFB0(uint64_t a1, uint64_t *a2)
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

  return ChallengeService.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_227B80254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[8];
  v14 = v12[7];
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[3];
  v18 = v12[2];
  v19 = v12[5] - 8;
  OUTLINED_FUNCTION_108_1();
  v21 = v20;
  OUTLINED_FUNCTION_5_4();
  *v22 = v21;

  OUTLINED_FUNCTION_186();
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_148();
  v26(v25);
  OUTLINED_FUNCTION_185_1();
  v28 = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_9_2();
  v30(v29);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227B8040C()
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

  return MEMORY[0x2822009F8](sub_227B804BC, v0, 0);
}

uint64_t sub_227B804BC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D0D040], v0[5]);
  v2 = *(v1 + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_dataProvider);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_227B80580;
  v4 = v0[7];
  v5 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B2A510();
}

uint64_t sub_227B80580()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[8];
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[4];

    return MEMORY[0x2822009F8](sub_227B806C4, v7, 0);
  }

  else
  {
    (*(v3[6] + 8))(v3[7], v3[5]);

    OUTLINED_FUNCTION_15_0();

    return v8();
  }
}

uint64_t sub_227B806C4()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_18();
  v2 = v0[9];

  return v1();
}

uint64_t ChallengeService.refreshChallengeDefinitions(challengeDefinitions:scope:)()
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
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49D58();
  v0[18] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227B80920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
    OUTLINED_FUNCTION_144_1();
    sub_227B813C0();
    sub_227B81470();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v17 = v12[20];
    if (v14)
    {
      v18 = OUTLINED_FUNCTION_74_2();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_109_2();
      v38 = v12[11];
      v39 = v12[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    else
    {
      v29 = v12[14];
      v30 = v12[11];
      v31 = v12[9];
      v32 = v12[4];
      v33 = OUTLINED_FUNCTION_56(v12[10]);
      v34(v33);
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_120_0();
      sub_227B0F6EC(v35);
      OUTLINED_FUNCTION_125_0(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v36 = v12[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v37 = v12[20];
      sub_227D49D08();
      v48 = v12[8];
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE38] + 4);
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_195_1(v50);
      OUTLINED_FUNCTION_0_9();
      sub_227B0F6EC(v51);
      OUTLINED_FUNCTION_48_0();
      *v37 = v52;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
    }
  }

  else
  {
    v22 = swift_task_alloc();
    v12[23] = v22;
    *v22 = v12;
    v22[1] = sub_227B80E28;
    v23 = v12[4];
    v24 = v12[5];
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_33();

    return sub_227B81314(v25, v26);
  }
}

uint64_t sub_227B80C5C()
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

uint64_t sub_227B80D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_129_1();
  v14 = v12[13];
  v13 = v12[14];
  v15 = v12[12];
  v16 = OUTLINED_FUNCTION_47_2();
  v17(v16);
  v18 = OUTLINED_FUNCTION_86();
  v19(v18);
  v20 = OUTLINED_FUNCTION_85();
  v21(v20);
  v22 = OUTLINED_FUNCTION_22_2();
  v23(v22);
  OUTLINED_FUNCTION_109_2();
  v24 = v12[11];
  v25 = v12[8];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_227B80E28()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[23];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 160);
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_227B80F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_129_1();
  v14 = v12[13];
  v13 = v12[14];
  v15 = v12[12];
  v16 = OUTLINED_FUNCTION_47_2();
  v17(v16);
  v18 = OUTLINED_FUNCTION_86();
  v19(v18);
  v20 = OUTLINED_FUNCTION_85();
  v21(v20);
  v22 = OUTLINED_FUNCTION_22_2();
  v23(v22);
  v24 = v12[22];
  v25 = v12[20];
  OUTLINED_FUNCTION_156_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_227B8106C(uint64_t a1, uint64_t *a2)
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

  return ChallengeService.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_227B81314(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B8132C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_0(v3);

  return sub_227B32250();
}

unint64_t sub_227B813C0()
{
  result = qword_27D7E70C0;
  if (!qword_27D7E70C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E70B8, &qword_227D50DD8);
    sub_227B15ABC(&unk_27D7E6920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70C0);
  }

  return result;
}

unint64_t sub_227B81470()
{
  result = qword_27D7E70C8;
  if (!qword_27D7E70C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E70B8, &qword_227D50DD8);
    sub_227B15ABC(&unk_27D7E6928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70C8);
  }

  return result;
}

uint64_t ChallengeService.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B81668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    OUTLINED_FUNCTION_144_1();
    sub_227B813C0();
    sub_227B81470();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v21 = v18[14];
    if (v17)
    {
      v24 = v18[12];
      v25 = v18[13];
      v26 = OUTLINED_FUNCTION_90_3();
      v27(v26);
      v28 = OUTLINED_FUNCTION_17_0();
      v29(v28);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70D0, &unk_227D50EA0);
      sub_227B81E10();
      sub_227B81F48();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v43 = v18[8];
      sub_227D49468();
      v44 = *(MEMORY[0x277D0CE28] + 4);
      v45 = swift_task_alloc();
      OUTLINED_FUNCTION_196_1(v45);
      OUTLINED_FUNCTION_0_9();
      sub_227B0F6EC(v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      v23[1] = sub_227B66908;
      v48 = v18[14];
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_4(v49);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v39 = swift_task_alloc();
    v18[17] = v39;
    *v39 = v18;
    v39[1] = sub_227B818F8;
    v40 = v18[5];
    OUTLINED_FUNCTION_53(v18[4]);
    OUTLINED_FUNCTION_112_1();

    return sub_227B81D60(v41);
  }
}

uint64_t sub_227B818F8()
{
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
    v10 = OUTLINED_FUNCTION_208_0();
  }

  return v11(v10);
}

uint64_t sub_227B81A48(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v10[1] = sub_227B81BE8;

  return ChallengeService.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_227B81BE8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = *(v1 + 24);
  v12 = *v0;
  OUTLINED_FUNCTION_197(v6, *(v1 + 16));
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_9_2();
  v9(v8);

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227B81D60(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B81D7C, v1);
}

uint64_t sub_227B81D7C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore16ChallengeService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41(v3);

  return sub_227B33A8C();
}

unint64_t sub_227B81E10()
{
  result = qword_27D7E70D8;
  if (!qword_27D7E70D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E70D0, &unk_227D50EA0);
    sub_227B81E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70D8);
  }

  return result;
}

unint64_t sub_227B81E94()
{
  result = qword_27D7E70E0;
  if (!qword_27D7E70E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6900, &qword_227D4E680);
    sub_227B0F6EC(&unk_27D7E70E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70E0);
  }

  return result;
}

unint64_t sub_227B81F48()
{
  result = qword_27D7E70F0;
  if (!qword_27D7E70F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E70D0, &unk_227D50EA0);
    sub_227B81FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70F0);
  }

  return result;
}

unint64_t sub_227B81FCC()
{
  result = qword_27D7E70F8;
  if (!qword_27D7E70F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6900, &qword_227D4E680);
    sub_227B0F6EC(&unk_27D7E7100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E70F8);
  }

  return result;
}

uint64_t ChallengeService.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_175_0(v9);
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
  OUTLINED_FUNCTION_187_1(v28);
  v29 = sub_227D49D58();
  v0[25] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227B82748()
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

uint64_t sub_227B82A20(uint64_t a1, uint64_t *a2)
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
  v15[1] = sub_227B82DE0;

  return ChallengeService.listChallengeDefinitions(game:filters:after:)();
}