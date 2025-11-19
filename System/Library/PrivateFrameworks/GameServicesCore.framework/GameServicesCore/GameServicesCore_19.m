void sub_227CCB4AC()
{
  sub_227CCB6D8(319, &qword_280E7B6A0, &qword_27D7E8558);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_227D49188();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_227D492A8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_227CCB624()
{
  sub_227CCB6D8(319, &qword_27D7E9FA0, &unk_27D7E9FA8);
  if (v0 <= 0x3F)
  {
    sub_227CCB6D8(319, &qword_27D7E99A8, &qword_27D7E67D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227CCB6D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_397(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    v6 = sub_227D4A928();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardProperties(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 19))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LeaderboardProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_227CCB7DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227CCB830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_227CCB8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227CCB950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227CCB9A8()
{
  OUTLINED_FUNCTION_37();
  v2 = v1(0);
  OUTLINED_FUNCTION_6_15(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

uint64_t sub_227CCB9FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_356(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227CCBA3C()
{
  OUTLINED_FUNCTION_37();
  v4 = OUTLINED_FUNCTION_397(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6_15(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_58();
  v10(v9);
  return v0;
}

uint64_t sub_227CCBAFC()
{
  OUTLINED_FUNCTION_37();
  v4 = OUTLINED_FUNCTION_397(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6_15(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_58();
  v10(v9);
  return v0;
}

uint64_t sub_227CCBB4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_356(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_227CCBBA0()
{
  OUTLINED_FUNCTION_37();
  v2 = v1(0);
  OUTLINED_FUNCTION_6_15(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

void *OUTLINED_FUNCTION_60_9@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  result[4] = v3;
  result[12] = a2;
  result[13] = v2;
  result[9] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_67_2()
{
  v3 = v1[334];
  v4 = v1[333];
  v5 = v1[332];
  v6 = v1[331];
  v7 = v1[323];
  result = *v2;
  *v0 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_7()
{
  v2 = *(v0 + 8);
  result = *(v1 - 312);
  v4 = *(v1 - 576);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_8()
{
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;

  return sub_227CBAE28(v0, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_98_6(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = a2;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_6(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v2, 1, a1);

  return sub_227CCBB4C(v2, v1);
}

uint64_t OUTLINED_FUNCTION_116_5()
{
  v1 = **(v0 + 200);
  result = *(v0 + 520);
  v3 = *(v0 + 496);
  return result;
}

void OUTLINED_FUNCTION_128_4(uint64_t a1@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = *(v1 + 616);
  *(a1 + 16) = v2;
  v4 = *(v1 + 624);
}

uint64_t OUTLINED_FUNCTION_132_5()
{
  result = *(v0 - 176);
  v2 = *(v0 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_143_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_144_5()
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_146_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_227CCC030()
{
  v0 = sub_227D4CAB8();
  __swift_allocate_value_buffer(v0, qword_280E7D410);
  __swift_project_value_buffer(v0, qword_280E7D410);
  sub_227D4AA68();
  return sub_227D4CAA8();
}

uint64_t sub_227CCC094@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E7D0C0 != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  v2 = sub_227D4CAB8();
  v3 = __swift_project_value_buffer(v2, qword_280E7D410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivitiesMessageExtensionService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227CCC1AC()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BD48);
  __swift_project_value_buffer(v0, qword_280E7BD48);
  return sub_227D49E98();
}

uint64_t sub_227CCC1F8()
{
  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_23_9();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BD48);
}

uint64_t static ActivitiesMessageExtensionService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_23_9();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivitiesMessageExtensionService.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ActivitiesMessageExtensionService.init(actorSystem:dataProvider:)(a1, a2);
  return v7;
}

uint64_t ActivitiesMessageExtensionService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v13 = sub_227D49EF8();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem) = a1;
  type metadata accessor for ActivitiesMessageExtensionService();
  v15 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v9);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v10);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id, v7, v13);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider) = v14;
  v15 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for ActivitiesMessageExtensionService()
{
  result = qword_27D801BD0;
  if (!qword_27D801BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)()
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
  v1[19] = OUTLINED_FUNCTION_30();
  v24 = sub_227D49D58();
  v1[20] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[21] = v25;
  v27 = *(v26 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v28 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_227CCC7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v13 = v12[4];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[22];
    v15 = v12[19];
    v17 = v12[15];
    v16 = v12[16];
    v18 = v12[14];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[4]);
    v20 = OUTLINED_FUNCTION_9_1();
    v21(v20);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    if (v14)
    {
      v22 = v12[21];
      (*(v12[18] + 8))(v12[19], v12[17]);
      (*(v22 + 8))(v12[22], v12[20]);
      v34 = v12[22];
      v35 = v12[19];
      v36 = v12[16];
      v37 = v12[13];
      v38 = v12[10];
      v39 = v12[7];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    v30 = v12[22];
    v31 = v12[13];
    (*(v12[9] + 16))(v12[10], v12[3], v12[8]);
    sub_227D49478();
    sub_227B0F88C(&qword_27D7E6A10);
    sub_227B0F88C(&qword_27D7E6A18);
    sub_227D49D18();
    v32 = v12[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v33 = v12[22];
    sub_227D49D08();
    v42 = v12[7];
    sub_227D49468();
    v43 = *(MEMORY[0x277D0CE38] + 4);
    v44 = swift_task_alloc();
    v12[23] = v44;
    type metadata accessor for ActivitiesMessageExtensionService();
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v45);
    OUTLINED_FUNCTION_48_0();
    *v44 = v46;
    v44[1] = sub_227CCCB80;
    v47 = v12[22];
    v48 = v12[7];
    v49 = v12[4];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }

  else
  {
    v23 = swift_task_alloc();
    v12[25] = v23;
    *v23 = v12;
    v23[1] = sub_227BC686C;
    v24 = v12[3];
    v25 = v12[4];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CCD318(v26, v27);
  }
}

uint64_t sub_227CCCB80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CCCC7C()
{
  OUTLINED_FUNCTION_111();
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72();

  return v19();
}

uint64_t sub_227CCCD9C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v7 = OUTLINED_FUNCTION_42();
  v8(v7);
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  OUTLINED_FUNCTION_18();

  return v18();
}

uint64_t sub_227CCCEA4(uint64_t a1, uint64_t *a2)
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
  v11[1] = sub_227CCD144;

  return ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227CCD144()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[3];
  v6 = v0[5] - 8;
  v7 = v0[2] - 8;
  OUTLINED_FUNCTION_80_0();
  v9 = v8;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_148();
  v13(v12);
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_9_2();
  v16(v15);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72();

  return v17();
}

uint64_t sub_227CCD318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CCD338, v2);
}

uint64_t sub_227CCD338()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B45D74;
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B4EFC0();
}

uint64_t ActivitiesMessageExtensionService.refreshGameActivity(game:)()
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

uint64_t sub_227CCD578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
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
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    if (v14)
    {
      v24 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v24 + 8))(v12[15], v12[13]);
      v25 = v12[15];
      v26 = v12[12];
      v27 = v12[9];
      v28 = v12[6];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    v22 = v12[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v12[15];
    sub_227D49D08();
    v36 = v12[6];
    sub_227D49468();
    v37 = *(MEMORY[0x277D0CE38] + 4);
    v38 = swift_task_alloc();
    v12[16] = v38;
    type metadata accessor for ActivitiesMessageExtensionService();
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v39);
    OUTLINED_FUNCTION_48_0();
    *v38 = v40;
    v38[1] = sub_227CCD834;
    v41 = v12[15];
    v42 = v12[6];
    v43 = v12[3];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }

  else
  {
    v31 = swift_task_alloc();
    v12[18] = v31;
    *v31 = v12;
    v31[1] = sub_227BC46B4;
    v32 = v12[3];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CCDCF8(v33);
  }
}

uint64_t sub_227CCD834()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CCD930()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v7 = OUTLINED_FUNCTION_42();
  v8(v7);
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  OUTLINED_FUNCTION_18();

  return v15();
}

uint64_t sub_227CCDA04(uint64_t a1, uint64_t *a2)
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
  v7[1] = sub_227CCDB9C;

  return ActivitiesMessageExtensionService.refreshGameActivity(game:)();
}

uint64_t sub_227CCDB9C()
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

  return v11();
}

uint64_t sub_227CCDCF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CCDD14, v1);
}

uint64_t sub_227CCDD14()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[3] + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_227B2F79C;
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B4EC94();
}

uint64_t ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)()
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
  v11 = *(*(v10 - 8) + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v1[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[23] = v25;
  v27 = *(v26 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v28 = sub_227D49D58();
  v1[25] = v28;
  OUTLINED_FUNCTION_10_0(v28);
  v1[26] = v29;
  v31 = *(v30 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v32 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_227CCE040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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
    v25 = OUTLINED_FUNCTION_9_1();
    v26(v25);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    v27 = v17[27];
    if (v19)
    {
      v28 = v17[25];
      v29 = v17[26];
      (*(v17[23] + 8))(v17[24], v17[22]);
      v30 = *(v29 + 8);
      v31 = OUTLINED_FUNCTION_57_0();
      v32(v31);
      v51 = v17[27];
      v52 = v17[24];
      v53 = v17[21];
      OUTLINED_FUNCTION_115_0();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_72();

      return v54();
    }

    else
    {
      v45 = v17[18];
      v17[2] = v17[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      sub_227D49478();
      sub_227CCF26C(&qword_27D7E6A38);
      sub_227CCF26C(&qword_27D7E6A58);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v46 = v17[27];
      v47 = v17[15];
      v48 = v17[11];
      sub_227B41B14(v17[6], v17[12]);
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      sub_227D49D18();
      v49 = v17[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v50 = v17[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A70, &qword_227D623A0);
      sub_227B15ABC(&qword_27D7E6A78);
      sub_227B15ABC(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17();
      v56 = v17[27];
      sub_227D49D08();
      v57 = v17[10];
      sub_227D49468();
      v58 = *(MEMORY[0x277D0CE28] + 4);
      v59 = swift_task_alloc();
      v17[28] = v59;
      type metadata accessor for ActivitiesMessageExtensionService();
      OUTLINED_FUNCTION_0_54();
      sub_227B0F88C(v60);
      OUTLINED_FUNCTION_48_0();
      *v59 = v61;
      v59[1] = sub_227CCE65C;
      v62 = v17[27];
      v63 = v17[10];
      v64 = v17[7];
      v65 = v17[3];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_72();

      return MEMORY[0x282164B00](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v17[30] = v33;
    *v33 = v17;
    v33[1] = sub_227CCE88C;
    v34 = v17[6];
    v35 = v17[7];
    v36 = v17[4];
    v37 = v17[5];
    v38 = v17[3];
    OUTLINED_FUNCTION_72();

    return sub_227CCF1A0(v39, v40, v41, v42);
  }
}

uint64_t sub_227CCE65C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CCE758()
{
  v10 = OUTLINED_FUNCTION_53_0();
  v11(v10);
  (*(v2 + 8))(v7, v8);
  (*(v0 + 8))(v5, v6);
  (*(v1 + 8))(v21, v4);
  (*(v9 + 8))();
  v12 = v3[27];
  v13 = v3[24];
  v14 = v3[21];
  v15 = v3[18];
  v16 = v3[15];
  v17 = v3[12];
  v18 = v3[10];

  OUTLINED_FUNCTION_18();

  return v19();
}

uint64_t sub_227CCE88C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[27];
  v6 = v1[24];
  v7 = v1[21];
  v8 = v1[18];
  v9 = v1[15];
  v10 = v1[12];
  v11 = v1[10];

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_227CCEA4C()
{
  v10 = OUTLINED_FUNCTION_53_0();
  v11(v10);
  (*(v2 + 8))(v7, v8);
  (*(v0 + 8))(v5, v6);
  (*(v1 + 8))(v18, v4);
  (*(v9 + 8))();
  v12 = v3[29];
  v13 = v3[27];
  v14 = v3[24];
  v15 = v3[21];
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_18();

  return v16();
}

uint64_t sub_227CCEB70(uint64_t a1, uint64_t *a2)
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
  v15[1] = sub_227CCEF30;

  return ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CCEF30()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[11];
  v2 = v0[10];
  v15 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v14 = v0[6];
  v5 = v0[5];
  v6 = v0[4];
  v7 = v0[3];
  v8 = v0[2];
  OUTLINED_FUNCTION_80_0();
  v10 = v9;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;

  (*(v7 + 8))(v6, v8);
  (*(v14 + 8))(v4, v5);
  (*(v15 + 8))(v2, v3);

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227CCF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CCF1C4, v4);
}

uint64_t sub_227CCF1C4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_227B417C4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_227B53F5C();
}

unint64_t sub_227CCF26C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    v4();
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)()
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
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

uint64_t sub_227CCF420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[14];
    v20 = v17[11];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[5]);
    v17[2] = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227D49478();
    sub_227CCFFC0(&qword_27D7E6A98);
    sub_227CCFFC0(&qword_27D7E6AB0);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v22 = v17[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v17[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227CD004C(&qword_27D7E6AC8);
    sub_227CD004C(&qword_27D7E6AE8);
    OUTLINED_FUNCTION_17();
    v24 = v17[14];
    sub_227D49D08();
    v30 = v17[8];
    sub_227D49468();
    v31 = *(MEMORY[0x277D0CE28] + 4);
    v32 = swift_task_alloc();
    v17[15] = v32;
    type metadata accessor for ActivitiesMessageExtensionService();
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v33);
    OUTLINED_FUNCTION_48_0();
    *v32 = v34;
    v32[1] = sub_227CCF81C;
    v35 = v17[14];
    v36 = v17[8];
    v37 = v17[5];
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x282164B00](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v25 = swift_task_alloc();
    v17[17] = v25;
    *v25 = v17;
    v25[1] = sub_227CCF9D4;
    v26 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_72();

    return sub_227CCFF04(v27);
  }
}

uint64_t sub_227CCF81C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CCF918()
{
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

  OUTLINED_FUNCTION_115();

  return v11(v7);
}

uint64_t sub_227CCF9D4()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = v4[14];
  v9 = v4[11];
  v10 = v4[8];

  v12 = *(v6 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

uint64_t sub_227CCFB34()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227CCFBE8(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v10[1] = sub_227CCFD88;

  return ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227CCFD88()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_80_0();
  *v6 = v7;
  *v9 = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_9_2();
  v12(v11);

  OUTLINED_FUNCTION_18();

  return v13();
}

uint64_t sub_227CCFF04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CCFF20, v1);
}

uint64_t sub_227CCFF20()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[3] + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_227B44998;
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B55528();
}

unint64_t sub_227CCFFC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15ABC(v4);
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227CD004C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    v4();
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t static ActivitiesMessageExtensionService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivitiesMessageExtensionService();
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v5);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
    v10 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v10);
    (*(v11 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem) = a2;
  }

  return v8;
}

uint64_t ActivitiesMessageExtensionService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v3);
  sub_227D493C8();
  v4 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + v2);

  v7 = *(v0 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActivitiesMessageExtensionService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    ActivitiesMessageExtensionService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CD0364()
{
  sub_227D4DB58();
  type metadata accessor for ActivitiesMessageExtensionService();
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t ActivitiesMessageExtensionService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for ActivitiesMessageExtensionService();
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CD0458@<X0>(uint64_t *a1@<X8>)
{
  result = ActivitiesMessageExtensionService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CD04B8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 152))();
}

uint64_t sub_227CD04F8()
{
  v1 = *v0;
  type metadata accessor for ActivitiesMessageExtensionService();
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v2);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227CD0560()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for ActivitiesMessageExtensionService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CD0768()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_16_1(v3);

  return ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227CD07FC()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26(v3);

  return ActivitiesMessageExtensionService.refreshGameActivity(game:)();
}

uint64_t sub_227CD0884()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76(v3);

  return ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CD0920()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26(v3);

  return ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227CD09A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for ActivitiesMessageExtensionService();
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v4);
  v5 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v5);
}

uint64_t sub_227CD0A20()
{
  v1 = *v0;
  type metadata accessor for ActivitiesMessageExtensionService();
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v2);
  OUTLINED_FUNCTION_5_25();
  sub_227B0F88C(v3);
  return sub_227D49428();
}

uint64_t sub_227CD0AC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitiesMessageExtensionService();
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v3);
  OUTLINED_FUNCTION_5_25();
  sub_227B0F88C(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227CD0B78()
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

uint64_t dispatch thunk of ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 128);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_76(v4);

  return v8(v6);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return swift_once();
}

uint64_t sub_227CD10D8()
{
  OUTLINED_FUNCTION_20();
  *(v1 + 184) = v33;
  *(v1 + 192) = v0;
  *(v1 + 441) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v32;
  *(v1 + 440) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;
  *(v1 + 136) = v7;
  *(v1 + 144) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  *(v1 + 200) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 208) = v10;
  v12 = *(v11 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_30();
  v13 = sub_227D4CAB8();
  *(v1 + 224) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 232) = v14;
  v16 = *(v15 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7118, &qword_227D51020);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  *(v1 + 256) = v20;
  OUTLINED_FUNCTION_10_0(v20);
  *(v1 + 264) = v21;
  v23 = *(v22 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_30();
  v24 = sub_227D4B758();
  *(v1 + 280) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 288) = v25;
  v27 = *(v26 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_298_1();
  *(v1 + 304) = swift_task_alloc();
  v28 = swift_task_alloc();
  *(v1 + 312) = v28;
  *v28 = v1;
  v29 = OUTLINED_FUNCTION_19_15(v28);

  return sub_227B24B80(v29);
}

uint64_t sub_227CD130C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  *v4 = *v1;
  v3[40] = v7;
  v3[41] = v8;
  v3[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_373_1();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_117_0();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_117_0();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_227CD1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_111();
  if (*(v13 + 176))
  {
    v14 = *(v13 + 192);
    v15 = swift_task_alloc();
    *(v13 + 344) = v15;
    *v15 = v13;
    OUTLINED_FUNCTION_19_15(v15);
    OUTLINED_FUNCTION_54_4();

    return sub_227B24FC4();
  }

  else
  {
    v18 = *(v13 + 336);
    *(v13 + 368) = 0;
    v19 = *(v13 + 272);
    v20 = *(v13 + 144);
    OUTLINED_FUNCTION_324_0(*(v13 + 192));
    sub_227D4A7E8();
    if (v18)
    {
      OUTLINED_FUNCTION_387_1();

      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v23();
    }

    else
    {
      v21 = *(v13 + 272);
      sub_227D4A6A8();
      *(v13 + 376) = v22;
      v25 = OUTLINED_FUNCTION_340_0();
      v26(v25);
      sub_227D4A7D8();
      *(v13 + 384) = v27;
      v28 = *(v13 + 248);
      v29 = *(v13 + 200);
      v30 = *(v13 + 184);
      sub_227CF3F60();
      v31 = OUTLINED_FUNCTION_215_2();
      if (__swift_getEnumTagSinglePayload(v31, v32, v29) == 1)
      {
        sub_227B1DE58(*(v13 + 248), &qword_27D7E7118, &qword_227D51020);
        v33 = 0;
      }

      else
      {
        v34 = *(v13 + 248);
        sub_227D4A8F8();
        v33 = v35;
        (*(*(v13 + 208) + 8))(*(v13 + 248), *(v13 + 200));
      }

      *(v13 + 392) = v33;
      v36 = *(v13 + 441);
      v37 = *(v13 + 440);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v13 + 400) = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_138_2(v38);
      OUTLINED_FUNCTION_54_4();

      return sub_227B729D0(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13);
    }
  }
}

uint64_t sub_227CD17A0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 344);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[44] = v0;

  if (v0)
  {
    v10 = v4[41];

    OUTLINED_FUNCTION_373_1();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_117_0();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v4[45] = v1;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_117_0();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_227CD18F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_111();
  v14 = *(v13 + 352);
  *(v13 + 368) = *(v13 + 360);
  v15 = *(v13 + 272);
  v16 = *(v13 + 144);
  OUTLINED_FUNCTION_324_0(*(v13 + 192));
  sub_227D4A7E8();
  if (v14)
  {
    OUTLINED_FUNCTION_387_1();

    OUTLINED_FUNCTION_231_0();

    OUTLINED_FUNCTION_19_0();

    return v19();
  }

  else
  {
    v17 = *(v13 + 272);
    sub_227D4A6A8();
    *(v13 + 376) = v18;
    OUTLINED_FUNCTION_335_1();
    v21 = OUTLINED_FUNCTION_340_0();
    v22(v21);
    sub_227D4A7D8();
    *(v13 + 384) = v23;
    v24 = *(v13 + 248);
    v25 = *(v13 + 200);
    v26 = *(v13 + 184);
    sub_227CF3F60();
    v27 = OUTLINED_FUNCTION_215_2();
    if (__swift_getEnumTagSinglePayload(v27, v28, v25) == 1)
    {
      sub_227B1DE58(*(v13 + 248), &qword_27D7E7118, &qword_227D51020);
      v29 = 0;
    }

    else
    {
      v30 = *(v13 + 248);
      sub_227D4A8F8();
      v29 = v31;
      (*(*(v13 + 208) + 8))(*(v13 + 248), *(v13 + 200));
    }

    *(v13 + 392) = v29;
    v32 = *(v13 + 441);
    v33 = *(v13 + 440);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v13 + 400) = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_138_2(v34);
    OUTLINED_FUNCTION_336_1();
    OUTLINED_FUNCTION_135_0();

    return sub_227B729D0(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_227CD1BB4()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[50];
  *v4 = *v1;
  v3[51] = v0;

  v6 = v2[49];
  v7 = v2[48];
  v8 = v2[47];
  v9 = v2[46];
  if (v0)
  {
    v10 = v3[41];
    sub_227B26090((v3 + 2));
  }

  else
  {
    sub_227B26090((v3 + 2));
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CD1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_152();
  a24 = v26;
  v31 = v26[40];
  v30 = v26[41];
  v32 = v26[38];
  v33 = sub_227D4B708();
  v35 = v26[41];
  if (v33 == v31 && v34 == v30)
  {

    goto LABEL_8;
  }

  v37 = v26[40];
  v38 = OUTLINED_FUNCTION_385_1();

  v39 = v26[41];
  if (v38)
  {
    v40 = v26[41];
LABEL_8:

    goto LABEL_9;
  }

  v56 = v26[37];
  v57 = v26[38];
  v58 = v26[35];
  v59 = v26[36];
  v60 = v26[30];
  sub_227D4AA58();
  v61 = *(v59 + 16);
  v62 = OUTLINED_FUNCTION_65_7();
  v63(v62);
  sub_227D4CE58();
  v64 = sub_227D4CA98();
  LOBYTE(v60) = sub_227D4D448();

  v65 = os_log_type_enabled(v64, v60);
  v66 = v26[41];
  if (v65)
  {
    v68 = v26[36];
    v67 = v26[37];
    a10 = v26[35];
    a11 = v26[40];
    a12 = v26[29];
    v96 = v26[28];
    v98 = v26[30];
    v69 = OUTLINED_FUNCTION_12_1();
    a15 = OUTLINED_FUNCTION_420();
    *v69 = 136315394;
    sub_227D4B708();
    v70 = OUTLINED_FUNCTION_289_0();
    v71(v70);
    sub_227B1B1A4(v58, v27, &a15);

    v78 = OUTLINED_FUNCTION_274(v72, v73, v74, v75, v76, v77);

    *(v69 + 14) = v78;
    OUTLINED_FUNCTION_133_5();
    _os_log_impl(v79, v80, v81, v82, v83, 0x16u);
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_41_1();

    (*(a12 + 8))(v98, v96);
  }

  else
  {
    v85 = v26[36];
    v84 = v26[37];
    v86 = v26[35];
    v88 = v26[29];
    v87 = v26[30];
    v89 = v26[28];

    v90 = *(v85 + 8);
    v91 = OUTLINED_FUNCTION_147();
    v92(v91);
    v93 = OUTLINED_FUNCTION_93_6();
    v94(v93);
  }

LABEL_9:
  v41 = v26[24];
  v95 = OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_36_0();
  v97 = v42 + *v42;
  v44 = *(v43 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v26[52] = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_251_1(v45);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_90();

  return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v95, v97, a15, a16, a17, a18);
}

uint64_t sub_227CD2038()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CD211C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[15];
  v2 = v0[16];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 12) + 72);
  OUTLINED_FUNCTION_32();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_227CD2220;
  v8 = OUTLINED_FUNCTION_18_11(v0[38]);

  return v9(v8);
}

uint64_t sub_227CD2220()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 432) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CD2318()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[54];
  v2 = v0[38];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_227D4B678();
  sub_227D4A8E8();
  OUTLINED_FUNCTION_347_0();
  sub_227CD25A0();
  v8 = OUTLINED_FUNCTION_93_6();
  v9(v8);
  sub_227CD267C();
  v10 = v0[38];
  if (v1)
  {
    OUTLINED_FUNCTION_222_1();
    v11(v10);
    OUTLINED_FUNCTION_231_0();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = v0[37];
    v13 = v0[34];
    v15 = v0[30];
    v14 = v0[31];
    v16 = v0[27];
    (*(v0[36] + 8))(v0[38], v0[35]);

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_54_4();

  return v17();
}

uint64_t sub_227CD2474()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_362_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_227CD24FC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[38];
  OUTLINED_FUNCTION_222_1();
  v2();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v3 = v0[54];
  OUTLINED_FUNCTION_362_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227CD25A0()
{
  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v6 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  *(v3 + 32) = sub_227D4A5E8();
  *(v3 + 40) = v4;
  (*(v2 + 120))(&v6, v3, v1, v2);
}

void sub_227CD267C()
{
  OUTLINED_FUNCTION_351();
  v2 = OUTLINED_FUNCTION_360_1(v1);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v61 = v6;
  v7 = OUTLINED_FUNCTION_382_0();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v12 = OUTLINED_FUNCTION_9(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_5(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_103();
  v29 = sub_227D4A318();
  v30 = OUTLINED_FUNCTION_9(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v37 = v36 - v35;
  MEMORY[0x22AAA4460]();
  if ((v38 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
    v39 = sub_227D4A328();
    OUTLINED_FUNCTION_10_0(v39);
    v41 = *(v40 + 72);
    *(OUTLINED_FUNCTION_215_4() + 16) = xmmword_227D4E520;
    (*(v32 + 104))(v37, *MEMORY[0x277D0D160], v29);
    v42 = sub_227C1897C();
    sub_227B2819C(MEMORY[0x277D84A28], v42);
    sub_227D4DC18();
    OUTLINED_FUNCTION_275();
  }

  sub_227D4B678();
  sub_227D4B678();
  sub_227D4A8E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v43, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8(v44);
  v46 = *(v45 + 72);
  OUTLINED_FUNCTION_232_1();
  *(OUTLINED_FUNCTION_377_1() + 16) = xmmword_227D4E520;
  v47 = sub_227D4B708();
  OUTLINED_FUNCTION_376_0(v47, v48);
  sub_227D4A8B8();
  if (v64)
  {
    v49 = OUTLINED_FUNCTION_199_2();
    v50(v49);

LABEL_10:
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_352();
    return;
  }

  OUTLINED_FUNCTION_21_7();
  sub_227CEE1E4();
  if (*(v51 + 16))
  {
    OUTLINED_FUNCTION_55_10(v62);
    v54(v0, v52 + v53, v63);

    sub_227D4B6D8();
    OUTLINED_FUNCTION_374_1();
    v55 = OUTLINED_FUNCTION_350_1();
    v56(v55);

    OUTLINED_FUNCTION_21_7();
    sub_227CEE1E4();
    MEMORY[0x22AAA4440]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    OUTLINED_FUNCTION_349_1();
    v57 = sub_227D4B698();
    if ((v57 & 0x100000000) != 0)
    {
      v58 = MEMORY[0x277D0D0F0];
    }

    else
    {
      *v61 = v57;
      v58 = MEMORY[0x277D0D0E8];
    }

    v59 = OUTLINED_FUNCTION_295_0(v58);
    v60(v59);
    OUTLINED_FUNCTION_201_3();
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_227CD2C50()
{
  OUTLINED_FUNCTION_20();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v1[38] = v5;
  v1[39] = v6;
  v1[37] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[44] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[45] = v9;
  v11 = *(v10 + 64);
  v1[46] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4CAB8();
  v1[47] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[48] = v13;
  v15 = *(v14 + 64);
  v1[49] = OUTLINED_FUNCTION_298_1();
  v1[50] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7118, &qword_227D51020);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  v1[51] = OUTLINED_FUNCTION_30();
  v19 = sub_227D4B758();
  v1[52] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[53] = v20;
  v22 = *(v21 + 64);
  v1[54] = OUTLINED_FUNCTION_298_1();
  v1[55] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[56] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[57] = v24;
  v26 = *(v25 + 64);
  v1[58] = OUTLINED_FUNCTION_30();
  v27 = swift_task_alloc();
  v1[59] = v27;
  *v27 = v1;
  v28 = OUTLINED_FUNCTION_19_15(v27);

  return sub_227B24B80(v28);
}

uint64_t sub_227CD2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v16 = *(v15 + 472);
  *v14 = *v11;
  v13[60] = v17;
  v13[61] = v18;
  v13[62] = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_316_0();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v28, v29, v30);
  }
}

uint64_t sub_227CD2FE0()
{
  OUTLINED_FUNCTION_111();
  if (!v0[41])
  {
    v5 = v0[62];
    v0[66] = 0;
    v6 = v0[58];
    v7 = v0[38];
    sub_227D4A838();
    if (v5)
    {
      v8 = v0[61];

      OUTLINED_FUNCTION_80_6();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_183_1();

      __asm { BRAA            X1, X16 }
    }

    v10 = v0[57];
    v9 = v0[58];
    v0[67] = sub_227D4A6A8();
    v0[68] = v11;
    v14 = v0[43];
    (*(v10 + 8))(v0[58], v0[56]);
    v15 = v14[19];
    __swift_project_boxed_opaque_existential_1(v14 + 15, v14[18]);
    v16 = *(OUTLINED_FUNCTION_286_1() + 56);
    OUTLINED_FUNCTION_28_2();
    v24 = v17 + *v17;
    v19 = *(v18 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[69] = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_119_7(v20);
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X5, X16 }
  }

  v1 = v0[43];
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_19_15(v2);
  OUTLINED_FUNCTION_183_1();

  return sub_227B24FC4();
}

uint64_t sub_227CD3234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_58_8();
  v14 = v13;
  OUTLINED_FUNCTION_0();
  *v15 = v14;
  v17 = *(v16 + 504);
  v18 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v19 = v18;
  v14[64] = v10;

  if (v10)
  {
    v20 = v14[61];

    OUTLINED_FUNCTION_316_0();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    v14[65] = v11;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v30, v31, v32);
  }
}

void sub_227CD3390()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[64];
  v0[66] = v0[65];
  v2 = v0[58];
  v3 = v0[38];
  sub_227D4A838();
  if (v1)
  {
    v4 = v0[61];

    OUTLINED_FUNCTION_80_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[57];
  v5 = v0[58];
  v0[67] = sub_227D4A6A8();
  v0[68] = v7;
  v8 = (v6 + 8);
  v11 = v0[43];
  (*v8)(v0[58], v0[56]);
  v12 = v11[19];
  __swift_project_boxed_opaque_existential_1(v11 + 15, v11[18]);
  v13 = *(OUTLINED_FUNCTION_286_1() + 56);
  OUTLINED_FUNCTION_28_2();
  v21 = v14 + *v14;
  v16 = *(v15 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[69] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_119_7(v17);
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_227CD356C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 560) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CD3664()
{
  OUTLINED_FUNCTION_152();
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  v2 = v0[70];
  OUTLINED_FUNCTION_370_0();
  sub_227D4A848();
  v0[71] = v3;
  if (v2)
  {
    OUTLINED_FUNCTION_338_0();
    v4 = v0[61];
    sub_227B26090((v0 + 22));

    sub_227B1DE58((v0 + 2), &qword_27D7E9700, &unk_227D5E2D0);
    OUTLINED_FUNCTION_80_6();

    OUTLINED_FUNCTION_19_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_335_1();
    Array<A>.iso8601Duration.getter(v0[39]);
    v0[72] = v5;
    v8 = v0[40];
    sub_227CD4AB0();
    OUTLINED_FUNCTION_285_0();
    sub_227CF3F60();
    v9 = OUTLINED_FUNCTION_215_2();
    if (__swift_getEnumTagSinglePayload(v9, v10, v1) == 1)
    {
      sub_227B1DE58(v0[51], &qword_27D7E7118, &qword_227D51020);
      v11 = 0;
    }

    else
    {
      v12 = v0[51];
      sub_227D4A8F8();
      v11 = v13;
      (*(v0[45] + 8))(v0[51], v0[44]);
    }

    v0[73] = v11;
    if (v0[3])
    {
      v14 = v0[7];
      v15 = v0[9];
      v21 = v0[8];
      v22 = v0[6];
      v16 = v0[11];
      v20 = v0[10];
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227B1DE58((v0 + 2), &qword_27D7E9700, &unk_227D5E2D0);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }

    v0[76] = v14;
    v0[75] = v15;
    v0[74] = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[77] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_129_5(v17);
    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_90();

    return sub_227B73750();
  }
}

uint64_t sub_227CD39CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  OUTLINED_FUNCTION_5_4();
  *v4 = v2;
  v5 = v2[77];
  *v4 = *v1;
  v2[78] = v0;

  OUTLINED_FUNCTION_209();
  v7 = *(v6 + 608);
  v8 = v2[75];
  v9 = v2[74];
  v10 = v2[73];
  v21 = v2[72];
  OUTLINED_FUNCTION_209();
  v12 = *(v11 + 568);
  v13 = v2[68];
  v14 = v2[66];
  if (v0)
  {
    v15 = v3[61];
    sub_227B26090((v3 + 22));
  }

  else
  {
    sub_227B26090((v3 + 22));
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227CD3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_152();
  a24 = v26;
  v31 = v26[60];
  v30 = v26[61];
  v32 = v26[55];
  v33 = sub_227D4B708();
  v35 = v26[61];
  if (v33 == v31 && v34 == v30)
  {

    goto LABEL_8;
  }

  v37 = v26[60];
  v38 = OUTLINED_FUNCTION_385_1();

  v39 = v26[61];
  if (v38)
  {
    v40 = v26[61];
LABEL_8:

    goto LABEL_9;
  }

  v56 = v26[54];
  v57 = v26[55];
  v58 = v26[52];
  v59 = v26[53];
  v60 = v26[50];
  sub_227D4AA58();
  v61 = *(v59 + 16);
  v62 = OUTLINED_FUNCTION_65_7();
  v63(v62);
  sub_227D4CE58();
  v64 = sub_227D4CA98();
  LOBYTE(v60) = sub_227D4D438();

  v65 = os_log_type_enabled(v64, v60);
  v66 = v26[61];
  if (v65)
  {
    v68 = v26[53];
    v67 = v26[54];
    a10 = v26[52];
    a11 = v26[60];
    a12 = v26[48];
    v96 = v26[47];
    v98 = v26[50];
    v69 = OUTLINED_FUNCTION_12_1();
    a15 = OUTLINED_FUNCTION_420();
    *v69 = 136315394;
    sub_227D4B708();
    v70 = OUTLINED_FUNCTION_289_0();
    v71(v70);
    sub_227B1B1A4(v58, v27, &a15);

    v78 = OUTLINED_FUNCTION_274(v72, v73, v74, v75, v76, v77);

    *(v69 + 14) = v78;
    OUTLINED_FUNCTION_133_5();
    _os_log_impl(v79, v80, v81, v82, v83, 0x16u);
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_41_1();

    (*(a12 + 8))(v98, v96);
  }

  else
  {
    v85 = v26[53];
    v84 = v26[54];
    v86 = v26[52];
    v87 = v26[50];
    v88 = v26[47];
    v89 = v26[48];

    v90 = *(v85 + 8);
    v91 = OUTLINED_FUNCTION_147();
    v92(v91);
    v93 = OUTLINED_FUNCTION_93_6();
    v94(v93);
  }

LABEL_9:
  v41 = v26[43];
  v95 = OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_36_0();
  v97 = v42 + *v42;
  v44 = *(v43 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v26[79] = v45;
  *v45 = v46;
  v45[1] = sub_227CD3EE0;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_90();

  return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v95, v97, a15, a16, a17, a18);
}

uint64_t sub_227CD3EE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 632);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CD3FC4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[35];
  v2 = v0[36];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 32) + 72);
  OUTLINED_FUNCTION_32();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[80] = v7;
  *v7 = v0;
  v7[1] = sub_227CD40C8;
  v8 = OUTLINED_FUNCTION_18_11(v0[55]);

  return v9(v8);
}

uint64_t sub_227CD40C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 648) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CD4330()
{
  OUTLINED_FUNCTION_152();
  v50 = v0;
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 392);
  sub_227D4AA58();
  sub_227D4CE58();
  v5 = v2;
  v6 = sub_227D4CA98();
  v7 = sub_227D4D438();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 560);
  if (v8)
  {
    v1 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 384);
    v46 = *(v0 + 376);
    v48 = *(v0 + 392);
    v12 = OUTLINED_FUNCTION_12_1();
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_14_5();
    v49 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_227B1B1A4(v10, v1, &v49);
    *(v12 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    sub_227B1DE58(v13, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_44_3();
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(v11 + 8))(v48, v46);
  }

  else
  {
    v23 = *(v0 + 384);
    v22 = *(v0 + 392);
    v24 = *(v0 + 376);

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_91_0();
    v27(v26);
  }

  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_370_0();
  sub_227D4A848();
  *(v0 + 568) = v28;
  OUTLINED_FUNCTION_335_1();
  Array<A>.iso8601Duration.getter(*(v0 + 312));
  *(v0 + 576) = v29;
  v30 = *(v0 + 320);
  sub_227CD4AB0();
  OUTLINED_FUNCTION_285_0();
  sub_227CF3F60();
  v31 = OUTLINED_FUNCTION_215_2();
  if (__swift_getEnumTagSinglePayload(v31, v32, v1) == 1)
  {
    sub_227B1DE58(*(v0 + 408), &qword_27D7E7118, &qword_227D51020);
    v33 = 0;
  }

  else
  {
    v34 = *(v0 + 408);
    sub_227D4A8F8();
    v33 = v35;
    (*(*(v0 + 360) + 8))(*(v0 + 408), *(v0 + 352));
  }

  v47 = v33;
  *(v0 + 584) = v33;
  if (*(v0 + 24))
  {
    v36 = *(v0 + 56);
    v37 = *(v0 + 72);
    v44 = *(v0 + 64);
    v45 = *(v0 + 48);
    v38 = *(v0 + 88);
    v43 = *(v0 + 80);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227B1DE58(v0 + 16, &qword_27D7E9700, &unk_227D5E2D0);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v38 = 0;
    v37 = 0;
    v45 = 0;
    v36 = 0;
  }

  *(v0 + 608) = v36;
  *(v0 + 600) = v37;
  *(v0 + 592) = v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 616) = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_129_5(v39);
  v55 = v37;
  v56 = v43;
  v53 = v36;
  v54 = v44;
  v52 = v45;
  v51 = v47;
  OUTLINED_FUNCTION_205_3();
  OUTLINED_FUNCTION_90();

  return sub_227B73750();
}

uint64_t sub_227CD47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = *(v10 + 624);
  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_227CD488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[53] + 8))(v10[55], v10[52]);
  __swift_destroy_boxed_opaque_existential_0(v10 + 32);
  v11 = v10[81];
  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t Array<A>.iso8601Duration.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    Array<A>.timeUnitToValue.getter();
    if (_MergedGlobals_15 != -1)
    {
      OUTLINED_FUNCTION_166_5();
      swift_once();
    }

    sub_227CEFD20();
    if (v1)
    {
      goto LABEL_10;
    }

    MEMORY[0x22AAA5DA0]();

    if (qword_280E7BD78 != -1)
    {
      OUTLINED_FUNCTION_165_5();
      swift_once();
    }

    sub_227CEFD20();
    v3 = v2;
    v5 = v4;

    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
LABEL_10:
    }

    else
    {
      MEMORY[0x22AAA5DA0](84, 0xE100000000000000);
      MEMORY[0x22AAA5DA0](v3, v5);
    }
  }

  return OUTLINED_FUNCTION_127_1();
}

uint64_t sub_227CD4AB0()
{
  v1 = sub_227D4A2B8();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_327();
  v10(v9, v0, v1);
  v11 = (*(v4 + 88))(v9, v1);
  if (v11 == *MEMORY[0x277D0D0E8])
  {
    (*(v4 + 96))(v9, v1);
    return *v9;
  }

  else if (v11 == *MEMORY[0x277D0D0F0])
  {
    return 0;
  }

  else
  {
    sub_227D4D668();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x22AAA5DA0](0xD00000000000002FLL);
    sub_227D4D7B8();
    sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v13, v14);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_174();
    sub_227D49D98();

    swift_willThrow();
    return (*(v4 + 8))(v9, v1);
  }
}

void sub_227CD4CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  v11 = OUTLINED_FUNCTION_361_1();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  v73 = v17;
  v18 = OUTLINED_FUNCTION_382_0();
  v19 = OUTLINED_FUNCTION_9(v18);
  v76 = v20;
  v77 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  v78 = v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v82);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26_0();
  v81 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v29 = OUTLINED_FUNCTION_9(v28);
  v74 = v30;
  v75 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_0();
  v83 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v36 = OUTLINED_FUNCTION_9(v35);
  v79 = v37;
  v80 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  v42 = v72 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v44 = OUTLINED_FUNCTION_9(v43);
  v84 = v45;
  v85 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_75_2();
  v49 = sub_227D4B688();
  if (!v50)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_301_0(v60);
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v61, v62);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    sub_227D49DD8();
    sub_227B1DE58(&v86, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_233_0(v49);
  v72[2] = sub_227D4B678();
  v52 = v51;
  sub_227D4B678();
  sub_227D4A8E8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v53, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8(v54);
  v56 = *(v55 + 72);
  OUTLINED_FUNCTION_232_1();
  v57 = OUTLINED_FUNCTION_359_0();
  *(v57 + 16) = xmmword_227D4E520;
  v58 = (v57 + v14);
  *v58 = sub_227D4B708();
  v58[1] = v59;
  OUTLINED_FUNCTION_114();
  swift_storeEnumTagMultiPayload();
  sub_227D4A8B8();
  if (a10)
  {
    (*(v84 + 8))(v10, v85);

LABEL_7:
    OUTLINED_FUNCTION_352();
    return;
  }

  v72[1] = v52;
  OUTLINED_FUNCTION_21_7();
  sub_227CEE1E4();
  if (*(v63 + 16))
  {
    OUTLINED_FUNCTION_55_10(v72[7]);
    v64 = OUTLINED_FUNCTION_351_1();
    v65(v64);

    OUTLINED_FUNCTION_300_1();
    v72[6] = v42;
    v66 = OUTLINED_FUNCTION_175_4();
    v67(v66, v10);

    OUTLINED_FUNCTION_21_7();
    sub_227CEE1E4();
    v86 = MEMORY[0x22AAA4440]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    sub_227D4B6A8();
    static Array<A>.fromISO8601Duration(iso8601Duration:)();

    v68 = sub_227D4B698();
    if ((v68 & 0x100000000) != 0)
    {
      v69 = MEMORY[0x277D0D0F0];
    }

    else
    {
      *v73 = v68;
      v69 = MEMORY[0x277D0D0E8];
    }

    v70 = OUTLINED_FUNCTION_179_3(v69);
    v71(v70);
    OUTLINED_FUNCTION_220_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_227CD52D8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CD52EC()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_178_5(v5);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CD53E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227CD54C8()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_13_0(v0 + 2);
  sub_227CD57E4();
  v0[10] = v4;
  v5 = *(OUTLINED_FUNCTION_286_1() + 16);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_354(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_104_6(v10);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CD5614()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[12] = v0;

  if (!v0)
  {
    v10 = v4[10];

    v4[13] = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CD5720()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_227CD5780()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[10];

  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_18();

  return v3();
}

void sub_227CD57E4()
{
  OUTLINED_FUNCTION_351();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_0();
  v11 = *(v3 + 16);
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    v32 = v10;
    sub_227B3CA88(0, v11, 0);
    v12 = v32;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = *(v13 + 64);
    OUTLINED_FUNCTION_19();
    v17 = v3 + v16;
    v34 = (v13 - 8);
    v35 = v18;
    v33 = *(v13 + 56);
    while (1)
    {
      v35(v12, v17, v4);
      v19 = sub_227D4A8F8();
      if (v1)
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      v23 = OUTLINED_FUNCTION_375();
      v24(v23, v4);
      v26 = *(v36 + 16);
      v25 = *(v36 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = OUTLINED_FUNCTION_12(v25);
        sub_227B3CA88(v28, v26 + 1, 1);
        v12 = v32;
      }

      *(v36 + 16) = v26 + 1;
      v27 = v36 + 16 * v26;
      *(v27 + 32) = v21;
      *(v27 + 40) = v22;
      v17 += v33;
      --v11;
      v1 = 0;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v29 = *v34;
    v30 = OUTLINED_FUNCTION_269();
    v31(v30);
  }

LABEL_9:
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CD59B4()
{
  OUTLINED_FUNCTION_20();
  v1[43] = v2;
  v1[44] = v0;
  v3 = sub_227D4CAB8();
  v1[45] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[46] = v4;
  v6 = *(v5 + 64);
  v1[47] = OUTLINED_FUNCTION_298_1();
  v1[48] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_353_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_19_15(v8);

  return sub_227B24B80(v10);
}

uint64_t sub_227CD5AA0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v9 = *(v8 + 392);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;

  if (v1)
  {
    v13 = v6[47];
    v12 = v6[48];

    v14 = *(v10 + 8);
    OUTLINED_FUNCTION_164();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v6[50] = v4;
    v6[51] = v0;
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v24, v25, v26);
  }
}

uint64_t sub_227CD5BE0()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 352);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 416) = v5;
  *v5 = v6;
  v5[1] = sub_227CD5CDC;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CD5CDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;
  v3 = v1[52];
  v4 = *v0;
  *v2 = *v0;

  v1[42] = MEMORY[0x277D84FA0];
  v5 = swift_task_alloc();
  v1[53] = v5;
  *v5 = v4;
  v5[1] = sub_227CD5E54;
  v6 = v1[50];
  v7 = v1[44];
  v8 = v1[43];
  v9 = OUTLINED_FUNCTION_53(v1[51]);

  return sub_227CD6974(v9, v10, v11);
}

uint64_t sub_227CD5E54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *(v4 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v10 + 432) = v9;
  *(v10 + 440) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CD5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[54];
  v16 = *(v15 + 16);
  v14[56] = v16;
  if (v16)
  {
    v14[57] = 0;
    v17 = v14[48];
    sub_227B11EE8(v15 + 32, (v14 + 27));
    sub_227D4AA58();
    sub_227B11EE8((v14 + 27), (v14 + 32));
    v18 = sub_227D4CA98();
    v19 = sub_227D4D428();
    v20 = OUTLINED_FUNCTION_307_1(v19);
    v21 = v14[48];
    v22 = v14[45];
    v23 = v14[46];
    if (v20)
    {
      v24 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v25 = OUTLINED_FUNCTION_587();
      v28 = sub_227B1B1A4(v25, v26, v27);

      *(v24 + 4) = v28;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v34 = OUTLINED_FUNCTION_97_5();
      v28(v34);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_97_5();
      v17(v44);
      __swift_destroy_boxed_opaque_existential_0(v14 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v45);
    OUTLINED_FUNCTION_9_12();
    v60 = v46 + *v46;
    v48 = *(v47 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v14[60] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_45_9(v49);
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_16_0();

    return v58(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, a11, a12, a13, a14);
  }

  else
  {

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CD61B8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 480);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[61] = v0;

  if (!v0)
  {
    v10 = v4[59];

    v4[62] = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CD62C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  sub_227CD7894(v14[62]);
  v15 = v14[56];
  v16 = v14[57] + 1;
  __swift_destroy_boxed_opaque_existential_0(v14 + 27);
  if (v16 == v15)
  {
    v17 = v14[54];

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_218_3();
    sub_227D4AA58();
    sub_227B11EE8((v14 + 27), (v14 + 32));
    v27 = sub_227D4CA98();
    v28 = sub_227D4D428();
    v29 = OUTLINED_FUNCTION_307_1(v28);
    v30 = v14[48];
    v31 = v14[45];
    v32 = v14[46];
    if (v29)
    {
      v33 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v34 = OUTLINED_FUNCTION_587();
      v37 = sub_227B1B1A4(v34, v35, v36);

      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v43 = OUTLINED_FUNCTION_97_5();
      v37(v43);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_97_5();
      v15(v44);
      __swift_destroy_boxed_opaque_existential_0(v14 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v45);
    OUTLINED_FUNCTION_9_12();
    v60 = v46 + *v46;
    v48 = *(v47 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v14[60] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_16_0();

    return v58(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, a11, a12, a13, a14);
  }
}

uint64_t sub_227CD6518()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[55];
  v3 = v0[47];
  v2 = v0[48];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CD6584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[61];
  v18 = v16[59];
  v19 = v16[47];

  sub_227D4AA58();
  sub_227B11EE8((v16 + 27), (v16 + 37));
  v20 = v17;
  v21 = sub_227D4CA98();
  v22 = sub_227D4D438();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v16[61];
  v25 = v16[58];
  v26 = v16[47];
  v27 = v16[45];
  if (v23)
  {
    a12 = v16[46] + 8;
    OUTLINED_FUNCTION_12_1();
    v28 = OUTLINED_FUNCTION_229_0();
    a13 = OUTLINED_FUNCTION_14_5();
    *v26 = 136315394;
    a10 = v25;
    v29 = v16[41];
    __swift_project_boxed_opaque_existential_1(v16 + 37, v16[40]);
    v30 = *(v29 + 8);
    OUTLINED_FUNCTION_280();
    v31 = sub_227D4DA88();
    __swift_destroy_boxed_opaque_existential_0(v16 + 37);
    v32 = OUTLINED_FUNCTION_147();
    sub_227B1B1A4(v32, v33, v34);
    OUTLINED_FUNCTION_280();

    *(v26 + 4) = v31;
    *(v26 + 12) = 2112;
    v35 = v24;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v36;
    *v28 = v36;
    _os_log_impl(&dword_227B0D000, v21, v22, "Failed to run: %s: %@", v26, 0x16u);
    sub_227B1DE58(v28, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_79_2();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_41_1();

    v25(a11, v27);
  }

  else
  {

    v25(v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v16 + 37);
  }

  v37 = v16[56];
  v38 = v16[57] + 1;
  __swift_destroy_boxed_opaque_existential_0(v16 + 27);
  if (v38 == v37)
  {
    v39 = v16[54];

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_218_3();
    sub_227D4AA58();
    sub_227B11EE8((v16 + 27), (v16 + 32));
    v49 = sub_227D4CA98();
    v50 = sub_227D4D428();
    v51 = OUTLINED_FUNCTION_307_1(v50);
    v52 = v16[48];
    v53 = v16[45];
    v54 = v16[46];
    if (v51)
    {
      v55 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v56 = OUTLINED_FUNCTION_587();
      v59 = sub_227B1B1A4(v56, v57, v58);

      *(v55 + 4) = v59;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v65 = OUTLINED_FUNCTION_97_5();
      v59(v65);
    }

    else
    {

      v66 = OUTLINED_FUNCTION_97_5();
      v37(v66);
      __swift_destroy_boxed_opaque_existential_0(v16 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v67 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v67);
    v68 = *(v52 + 16);
    OUTLINED_FUNCTION_36_0();
    v83 = v69 + *v69;
    v71 = *(v70 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v16[60] = v72;
    *v72 = v73;
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_23();

    return v81(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, v52 + 16, v83, a13, a14, a15, a16);
  }
}

uint64_t sub_227CD6974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CD6994()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_324_0(v0[92]);
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[93] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[94] = v2;
  *v2 = v3;
  v2[1] = sub_227CD6A6C;
  v4 = v0[91];

  return sub_227CD83B8();
}

uint64_t sub_227CD6A6C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 752);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 760) = v0;

  if (!v0)
  {
    v9 = *(v3 + 744);
    v10 = *(v3 + 176);
    *(v3 + 768) = *(v3 + 160);
    *(v3 + 784) = v10;
    v11 = *(v3 + 208);
    *(v3 + 800) = *(v3 + 192);
    *(v3 + 816) = v11;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227CD6B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = v20;
  v22 = v20 + 160;
  v23 = *(v20 + 160);
  if (!v23)
  {
    v30 = sub_227CEDA08;
    a13 = 0;
    v31 = 0;
    v25 = 0;
LABEL_5:
    v32 = &unk_283B3E2D0;
    goto LABEL_11;
  }

  v24 = *(v20 + 776);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 72) = *(v20 + 216);
  *(v25 + 56) = *(v20 + 200);
  *(v25 + 40) = *(v20 + 184);
  *(v25 + 24) = *(v20 + 168);
  if (*(v24 + 16))
  {
    v26 = *(v20 + 720);
    v27 = *(v20 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2C8, &qword_227D640A0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_227D4E520;
    *(v28 + 56) = &type metadata for IDDrivenChallengeSyncOperation;
    *(v28 + 64) = sub_227CF374C();
    v29 = swift_allocObject();
    *(v28 + 32) = v29;
    v29[2] = v24;
    v29[3] = sub_227CF37A0;
    v29[4] = v25;
    v29[5] = v27;
    v29[6] = v26;
    sub_227D4CE58();
    sub_227D4CE58();
LABEL_34:
    v70 = v21[1];
    OUTLINED_FUNCTION_137();

    return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  if (*(*(v20 + 768) + 16) == 1)
  {
    sub_227CF3F60();
    v33 = sub_227D4CE58();
    a13 = sub_227BF11E0(v33);
    v31 = v34;
  }

  else
  {
    sub_227CF3F60();
    a13 = 0;
    v31 = 0;
  }

  v35 = v21[103];
  v36 = v21[102];
  v37 = *(v21 + 49);
  *(v21 + 22) = *(v21 + 48);
  *(v21 + 23) = v37;
  *(v21 + 24) = *(v21 + 50);
  v21[50] = v36;
  v21[51] = v35;
  sub_227CF3F60();
  sub_227D4CE58();
  sub_227CF371C(v22 + 192);
  if (!*(v35 + 16))
  {
    v68 = v21[103];

    v30 = sub_227CF37A0;
    goto LABEL_5;
  }

  v32 = v21[103];
  v30 = sub_227CF37A0;
LABEL_11:
  v21[104] = v25;
  v38 = *(v32 + 2);
  if (v38)
  {
    v104 = MEMORY[0x277D84F90];
    sub_227D4CE58();
    sub_227CF198C(0, v38, 0);
    v39 = 32;
    v40 = v104;
    a11 = v32;
    a12 = v22;
    a10 = v30;
    do
    {
      v41 = v21[90];
      v42 = v32[v39];
      v43 = *(v40 + 16);
      v44 = *(v40 + 24);
      a14 = (v43 + 1);
      a15 = v40;
      sub_227D4CE58();

      sub_227D4CE58();
      if (v43 >= v44 >> 1)
      {
        sub_227CF198C((v44 > 1), a14, 1);
        v41 = v21[90];
      }

      v45 = v21[89];
      v21[71] = &type metadata for StatusDrivenChallengeSyncOperation;
      v21[72] = sub_227CF36C8();
      v46 = swift_allocObject();
      v21[68] = v46;
      *(v46 + 16) = v42;
      *(v46 + 24) = a10;
      *(v46 + 32) = v25;
      *(v46 + 40) = v45;
      *(v46 + 48) = v41;
      *(v46 + 56) = a13;
      *(v46 + 64) = v31;
      v47 = v40 + 40 * v43;
      *(v40 + 16) = a14;
      v22 = a12;
      sub_227B132F0((a12 + 384), v47 + 32);
      ++v39;
      --v38;
      v32 = a11;
    }

    while (v38);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v21[105] = v40;
  if (*(v40 + 16))
  {
    a14 = v21;
    v48 = v22;
    v49 = *(v32 + 2);
    v50 = (v32 + 32);
    while (1)
    {
      if (!v49)
      {

        sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);

LABEL_33:
        v21 = a14;
        goto LABEL_34;
      }

      v51 = *v50;
      if (v51 != 1 && v51 != 2)
      {
        break;
      }

      v52 = sub_227D4DA78();

      ++v50;
      --v49;
      if (v52)
      {
        goto LABEL_31;
      }
    }

LABEL_31:
    v69 = sub_227CF0500(v32, &unk_283B3E2D0);

    if (v69)
    {

      sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);
      goto LABEL_33;
    }

    v79 = *v48;
    v80 = MEMORY[0x277D84FA0];
    if (*v48)
    {
      v81 = *v48;
      sub_227D4CE58();
      sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);
    }

    else
    {
      v79 = MEMORY[0x277D84FA0];
    }

    v82 = a14[92];
    a14[28] = v79;
    a14[29] = v80;
    a14[30] = v80;
    a14[31] = v80;
    a14[32] = v80;
    a14[33] = v80;
    a14[34] = v80;
    a14[35] = &unk_283B3E2F8;
    v83 = *(v82 + 24);
    v84 = *(v82 + 32);
    v85 = OUTLINED_FUNCTION_9_2();
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v87 = OUTLINED_FUNCTION_308();
    v88 = *(v87 + 16);
    v102 = v87 + 16;
    OUTLINED_FUNCTION_36_0();
    v103 = v89 + *v89;
    v91 = *(v90 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    a14[106] = v92;
    *v92 = v93;
    v92[1] = sub_227CD72C0;
    OUTLINED_FUNCTION_137();

    return v98(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, v102, v103, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v53 = v21[91];

    sub_227B1DE58(v22, &qword_27D7EA198, &qword_227D63B80);
    OUTLINED_FUNCTION_183_6();
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v105 = v54;
    v21[88] = v53;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
    v55 = sub_227D4CFF8();
    MEMORY[0x22AAA5DA0](v55);

    sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v56, v57);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_147();
    sub_227D49D98();

    swift_willThrow();

    v58 = v21[1];
    OUTLINED_FUNCTION_137();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, 0xD000000000000027, v105, a17, a18, a19, a20);
  }
}

uint64_t sub_227CD72C0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 848);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CD73A4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  v2 = *(v0 + 272);
  *(v0 + 128) = *(v0 + 256);
  *(v0 + 144) = v2;
  v3 = *(v0 + 240);
  *(v0 + 96) = *(v0 + 224);
  *(v0 + 112) = v3;
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_32();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 856) = v8;
  *v8 = v9;
  v8[1] = sub_227CD74D4;
  OUTLINED_FUNCTION_116_6();

  return v11();
}

uint64_t sub_227CD74D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 856);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 864) = v0;

  if (v0)
  {
    v9 = *(v3 + 840);
  }

  sub_227CF371C(v3 + 224);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CD75E4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 648);
  v2 = *(v0 + 656);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 624), v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_30();
  (*(v4 + 16))(v6, v3, v1);
  v7 = *(v2 + 8);
  sub_227D4D388();
  OUTLINED_FUNCTION_280();

  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  if (*(v1 + 16))
  {
    v8 = *(v0 + 840);
    v9 = *(v0 + 720);
    sub_227D4CE58();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 840);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_8_15();
      v11 = sub_227CF0984(v29, v30, v31, v32);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      OUTLINED_FUNCTION_12(v12);
      OUTLINED_FUNCTION_117();
      v11 = sub_227CF0984(v33, v34, v35, v36);
    }

    v14 = *(v0 + 832);
    v15 = *(v0 + 720);
    v16 = *(v0 + 712);

    *(v0 + 688) = &type metadata for IDDrivenChallengeSyncOperation;
    *(v0 + 696) = sub_227CF374C();
    v17 = swift_allocObject();
    *(v0 + 664) = v17;
    v17[2] = v1;
    v17[3] = OUTLINED_FUNCTION_51;
    v17[4] = 0;
    v17[5] = v16;
    v17[6] = v15;
    v11[2] = v13 + 1;
    sub_227B132F0((v0 + 664), &v11[5 * v13 + 4]);
  }

  else
  {
    v18 = *(v0 + 832);

    v19 = *(v0 + 840);
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_117_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_227CD77D4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 744);

  v2 = *(v0 + 760);
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CD7830()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[104];

  __swift_destroy_boxed_opaque_existential_0(v0 + 73);
  v2 = v0[108];
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CD7894(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_227D4CE58();
      sub_227B274CC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_227CD7998()
{
  OUTLINED_FUNCTION_6();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[33] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD7A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_324_0(v0[32]);
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[34] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[35] = v2;
  *v2 = v3;
  v2[1] = sub_227CD7AF8;
  v4 = v0[31];

  return sub_227CD83B8();
}

uint64_t sub_227CD7AF8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = *(v3 + 272);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CD7BF8()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 296) = v5;
  *v5 = v6;
  v5[1] = sub_227CD7CF4;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CD7CF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CD7DD8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[23];
  v2 = v0[24];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 20) + 24);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[38] = v7;
  *v7 = v8;
  v7[1] = sub_227CD7EE8;
  OUTLINED_FUNCTION_116_6();

  return v10();
}

uint64_t sub_227CD7EE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 312) = v0;

  sub_227B1DE58(v3 + 96, &qword_27D7EA198, &qword_227D63B80);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CD7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = v12[39];
  v14 = v12[33];
  v16 = v12[29];
  v15 = v12[30];
  v17 = v12[28];
  __swift_project_boxed_opaque_existential_1(v12 + 25, v17);
  v18 = OUTLINED_FUNCTION_173();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  sub_227CDA6DC(sub_227CDA158, 0, v17, v20, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v21);
  __swift_destroy_boxed_opaque_existential_0(v12 + 25);
  __swift_destroy_boxed_opaque_existential_0(v12 + 20);
  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_227B69F68(&qword_27D7E71A8, &qword_27D7E6978, &qword_227D4EA70);
  sub_227B69F68(&qword_27D7E71B8, &qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_57_0();
  sub_227D4A948();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_227CD8168()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[33];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CD81CC()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v1 = v0[39];
  v2 = v0[33];

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CD8230()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CD82C0;
  v3 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v3);
}

uint64_t sub_227CD82C0()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_58_8();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  OUTLINED_FUNCTION_50_0();
  if (!v0)
  {
    v9 = v1;
    v10 = v4;
  }

  return v11(v9, v10);
}

uint64_t sub_227CD83B8()
{
  OUTLINED_FUNCTION_6();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[23] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[24] = v6;
  v8 = *(v7 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v0[26] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[27] = v10;
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[29] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[30] = v14;
  v16 = *(v15 + 64);
  v0[31] = OUTLINED_FUNCTION_121();
  v0[32] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v0[33] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[34] = v18;
  v20 = *(v19 + 64);
  v0[35] = OUTLINED_FUNCTION_30();
  v21 = sub_227D49F58();
  v0[36] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[37] = v22;
  v24 = *(v23 + 64);
  v0[38] = OUTLINED_FUNCTION_121();
  v0[39] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227CD85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v22 = *(v18 + 160);
  if (!v22 || (v23 = *(v22 + 16), (*(v18 + 320) = v23) == 0))
  {
    v120 = 0;
    a12 = 0;
    v121 = 0;
    a9 = 0u;
    a10 = 0u;
LABEL_65:
    v123 = *(v18 + 304);
    v122 = *(v18 + 312);
    OUTLINED_FUNCTION_61_9();
    v124 = *(v18 + 152);

    *v124 = a10;
    *(v124 + 16) = a9;
    *(v124 + 32) = v120;
    *(v124 + 40) = v120;
    *(v124 + 48) = a12;
    *(v124 + 56) = v121;
    OUTLINED_FUNCTION_15_0();
LABEL_66:
    OUTLINED_FUNCTION_137();

    return v126(v125, v126, v127, v128, v129, v130, v131, v132, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v24 = 0;
  v25 = MEMORY[0x277D84FA0];
  v26 = *(v18 + 296);
  *(v18 + 112) = MEMORY[0x277D84FA0];
  *(v18 + 120) = v25;
  *(v18 + 128) = v25;
  *(v18 + 136) = v25;
  *(v18 + 144) = v25;
  *(v18 + 424) = *MEMORY[0x277D0CFA0];
  *(v18 + 428) = *MEMORY[0x277D0CF68];
  *(v18 + 432) = *MEMORY[0x277D0CF80];
  *(v18 + 436) = *MEMORY[0x277D0CF90];
  *(v18 + 440) = *MEMORY[0x277D0CF70];
  *(v18 + 444) = *MEMORY[0x277D0CF88];
  *(v18 + 448) = *MEMORY[0x277D0CF98];
  *(v18 + 452) = *MEMORY[0x277D0CF78];
  *(v18 + 456) = *(v26 + 80);
  *(v18 + 328) = *(v26 + 72);
  *(v18 + 336) = *(v26 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v18 + 344) = v24;
    *(v18 + 352) = v27;
    if (v24 == v23)
    {
      a9 = *(v18 + 128);
      a10 = *(v18 + 112);
      a12 = *(v18 + 144);
      v120 = MEMORY[0x277D84FA0];
      v121 = v27;
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_273_0();
    v29 = *(v18 + 304);
    v28 = *(v18 + 312);
    v30 = *(v18 + 288);
    v31 = *(v18 + 296);
    v32 = *(v18 + 160);
    OUTLINED_FUNCTION_105_7();
    v33 = OUTLINED_FUNCTION_250_0();
    v20(v33);
    v34 = OUTLINED_FUNCTION_87_1();
    v20(v34);
    v35 = (*(v31 + 88))(v29, v30);
    if (v35 == v21)
    {
      v36 = *(v18 + 304);
      v38 = *(v18 + 280);
      v37 = *(v18 + 288);
      v19 = *(v18 + 264);
      v39 = *(v18 + 272);
      v40 = OUTLINED_FUNCTION_106_7(*(v18 + 296));
      v41(v40);
      v42 = *(v39 + 32);
      v20 = (v39 + 32);
      OUTLINED_FUNCTION_141_4();
      v43();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A8F8();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_198_5();
      if (v19)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v44, v45, v46);
      v47 = *(v18 + 104);
LABEL_14:

      v70 = OUTLINED_FUNCTION_101_7();
      v71(v70);
      v72 = OUTLINED_FUNCTION_99_5();
      v73(v72);
      goto LABEL_15;
    }

    if (v35 == *(v18 + 428))
    {
      OUTLINED_FUNCTION_162_2();
      v49 = *(v18 + 216);
      v48 = *(v18 + 224);
      v19 = *(v18 + 208);
      v51 = OUTLINED_FUNCTION_106_7(v50);
      v52(v51);
      v53 = *(v49 + 32);
      v20 = (v49 + 32);
      OUTLINED_FUNCTION_141_4();
      v54();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A848();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_196_5();
      if (v19)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v55, v56, v57);
      v58 = *(v18 + 72);
      goto LABEL_14;
    }

    if (v35 == *(v18 + 432))
    {
      OUTLINED_FUNCTION_162_2();
      v60 = *(v18 + 192);
      v59 = *(v18 + 200);
      v19 = *(v18 + 184);
      v62 = OUTLINED_FUNCTION_106_7(v61);
      v63(v62);
      v64 = *(v60 + 32);
      v20 = (v60 + 32);
      OUTLINED_FUNCTION_141_4();
      v65();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A6A8();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_195_2();
      if (v19)
      {
LABEL_69:
        v134 = OUTLINED_FUNCTION_101_7();
        v135(v134);
        v136 = OUTLINED_FUNCTION_99_5();
        v137(v136);
        v138 = *(v18 + 144);

        v139 = *(v18 + 136);

        v140 = *(v18 + 128);

        v141 = *(v18 + 120);

        v142 = *(v18 + 112);

LABEL_70:
        OUTLINED_FUNCTION_189_5();

        OUTLINED_FUNCTION_18();
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_345_1();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v66, v67, v68);
      v69 = *(v18 + 56);
      goto LABEL_14;
    }

    if (v35 == *(v18 + 436))
    {
      v143 = OUTLINED_FUNCTION_77_7();
      v144(v143);
      v145 = OUTLINED_FUNCTION_26_12();
      v146(v145);
      OUTLINED_FUNCTION_0_55();
      a12 = v147;
      v148 = *(v19 + 4);
      v149 = swift_task_alloc();
      *(v18 + 360) = v149;
      *v149 = v18;
      OUTLINED_FUNCTION_42_8(v149);
      goto LABEL_73;
    }

    if (v35 == *(v18 + 440))
    {
      break;
    }

    if (v35 == *(v18 + 444))
    {
      v74 = *(v27 + 2);
      v75 = (v27 + 32);
      while (v74)
      {
        v76 = *v75;
        OUTLINED_FUNCTION_20_10();
        if (v77 != 1)
        {
          if (v77 != 2)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_98_7();
        }

        v29 = OUTLINED_FUNCTION_156_5();

        ++v75;
        --v74;
        if (v29)
        {
          goto LABEL_62;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = OUTLINED_FUNCTION_8_15();
        v27 = sub_227CF0890(v96, v97, v98, v99);
      }

      OUTLINED_FUNCTION_268_0();
      if (v83)
      {
        v100 = OUTLINED_FUNCTION_11_22(v82);
        v27 = sub_227CF0890(v100, v101, v102, v103);
      }

      v84 = OUTLINED_FUNCTION_47_10();
      v85(v84);
      *(v27 + 2) = v28;
      v27[v29 + 32] = 0;
    }

    else
    {
      if (v35 == *(v18 + 448))
      {
        v78 = *(v27 + 2);
        v79 = v27 + 32;
        while (v78)
        {
          if (*v79)
          {
            if (*v79 != 2)
            {
              goto LABEL_61;
            }

            OUTLINED_FUNCTION_98_7();
          }

          else
          {
            OUTLINED_FUNCTION_54_9();
          }

          v29 = OUTLINED_FUNCTION_96_7();

          ++v79;
          --v78;
          if (v29)
          {
            goto LABEL_62;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = OUTLINED_FUNCTION_8_15();
          v27 = sub_227CF0890(v104, v105, v106, v107);
        }

        OUTLINED_FUNCTION_268_0();
        if (v83)
        {
          v108 = OUTLINED_FUNCTION_11_22(v86);
          v27 = sub_227CF0890(v108, v109, v110, v111);
        }

        v87 = OUTLINED_FUNCTION_47_10();
        v88(v87);
        *(v27 + 2) = v28;
        v89 = &v27[v29];
        v90 = 1;
      }

      else
      {
        if (v35 != *(v18 + 452))
        {
          OUTLINED_FUNCTION_310_1();
          v161 = *(v18 + 136);

          v162 = *(v18 + 128);

          v163 = *(v18 + 120);

          v164 = *(v18 + 112);

          OUTLINED_FUNCTION_183_6();
          sub_227D4D668();
          *(v18 + 16) = a13;
          *(v18 + 24) = a14;
          OUTLINED_FUNCTION_90_5();
          MEMORY[0x22AAA5DA0](0xD00000000000001DLL);
          OUTLINED_FUNCTION_315_0();
          v166 = *(v18 + 16);
          v165 = *(v18 + 24);
          sub_227D49E08();
          OUTLINED_FUNCTION_1_34();
          sub_227B12A58(v167, v168);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_57_0();
          sub_227D49D98();

          swift_willThrow();
          v169 = OUTLINED_FUNCTION_266_1();
          v166(v169);
          v170 = OUTLINED_FUNCTION_141();
          v166(v170);
          goto LABEL_70;
        }

        v80 = *(v27 + 2);
        v81 = v27 + 32;
        while (v80)
        {
          if (*v81)
          {
            if (*v81 != 1)
            {
LABEL_61:

LABEL_62:
              v94 = OUTLINED_FUNCTION_47_10();
              v95(v94);
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_20_10();
          }

          else
          {
            OUTLINED_FUNCTION_54_9();
          }

          v29 = OUTLINED_FUNCTION_187_3();

          ++v81;
          --v80;
          if (v29)
          {
            goto LABEL_62;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = OUTLINED_FUNCTION_8_15();
          v27 = sub_227CF0890(v112, v113, v114, v115);
        }

        OUTLINED_FUNCTION_268_0();
        if (v83)
        {
          v116 = OUTLINED_FUNCTION_11_22(v91);
          v27 = sub_227CF0890(v116, v117, v118, v119);
        }

        v92 = OUTLINED_FUNCTION_47_10();
        v93(v92);
        *(v27 + 2) = v28;
        v89 = &v27[v29];
        v90 = 2;
      }

      v89[32] = v90;
    }

LABEL_15:
    v24 = *(v18 + 344) + 1;
    v23 = *(v18 + 320);
  }

  v151 = OUTLINED_FUNCTION_78_10();
  v152(v151);
  v153 = OUTLINED_FUNCTION_26_12();
  v154(v153);
  OUTLINED_FUNCTION_0_55();
  a12 = v155;
  v156 = *(v19 + 4);
  v157 = swift_task_alloc();
  v158 = OUTLINED_FUNCTION_353_1(v157);
  *v158 = v159;
  OUTLINED_FUNCTION_49_7(v158);
  v150 = *(v18 + 248);
LABEL_73:
  v160 = *(v18 + 176);
  OUTLINED_FUNCTION_53(v150);
  OUTLINED_FUNCTION_137();

  return v126(v125, v126, v127, v128, v129, v130, v131, v132, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CD8E38()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v9 = *(v8 + 360);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[46] = v1;

  if (v1)
  {
    v12 = v6[44];
    v13 = v6[18];

    v14 = v6[17];

    v15 = v6[16];

    v16 = v6[15];

    v17 = v6[14];
  }

  else
  {
    v6[47] = v4;
    v6[48] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227CD96FC()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v9 = *(v8 + 392);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[50] = v1;

  if (v1)
  {
    v12 = v6[44];
    v13 = v6[18];

    v14 = v6[17];

    v15 = v6[16];

    v16 = v6[15];

    v17 = v6[14];
  }

  else
  {
    v6[51] = v4;
    v6[52] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227CD9FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[39];
  v12 = v10[36];
  v13 = v10[37];
  (*(v10[30] + 8))(v10[32], v10[29]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);
  v17 = v10[46];
  v19 = v10[38];
  v18 = v10[39];
  OUTLINED_FUNCTION_61_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_227CDA08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[39];
  v12 = v10[36];
  v13 = v10[37];
  (*(v10[30] + 8))(v10[31], v10[29]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);
  v17 = v10[50];
  v19 = v10[38];
  v18 = v10[39];
  OUTLINED_FUNCTION_61_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_227CDA158(uint64_t *a1)
{
  OUTLINED_FUNCTION_375_1(a1);
  OUTLINED_FUNCTION_269();
  return sub_227D4A8E8();
}

uint64_t sub_227CDA190(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v42 = &v33 - v7;
  v8 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v44 = v3;
    v46 = MEMORY[0x277D84F90];
    sub_227C11484();
    v43 = v46;
    v11 = sub_227B3E1D8(a3);
    v13 = v12;
    v14 = 0;
    v41 = a3 + 56;
    v34 = v8;
    v35 = v5 + 32;
    v33 = a3 + 64;
    v15 = a3;
    v39 = a3;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v15 + 32))
      {
        v16 = v11 >> 6;
        if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v15 + 36) != v10)
        {
          goto LABEL_28;
        }

        v40 = v14;
        v17 = v10;
        v18 = v5;
        v19 = (*(v15 + 48) + 16 * v11);
        v20 = v19[1];
        v45[0] = *v19;
        v45[1] = v20;
        sub_227D4CE58();
        v21 = v44;
        v37(v45);
        v44 = v21;
        if (v21)
        {
          goto LABEL_32;
        }

        v22 = v43;
        v46 = v43;
        v23 = *(v43 + 16);
        if (v23 >= *(v43 + 24) >> 1)
        {
          sub_227C11484();
          v22 = v46;
        }

        *(v22 + 16) = v23 + 1;
        v5 = v18;
        v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v43 = v22;
        result = (*(v18 + 32))(v22 + v24 + *(v18 + 72) * v23, v42, v36);
        if (v13)
        {
          goto LABEL_33;
        }

        v15 = v39;
        v25 = 1 << *(v39 + 32);
        if (v11 >= v25)
        {
          goto LABEL_29;
        }

        v26 = *(v41 + 8 * v16);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v39 + 36) != v17)
        {
          goto LABEL_31;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v16 << 6;
          v29 = v16 + 1;
          v30 = (v33 + 8 * v16);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_227B3E218(v11, v17, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_20;
            }
          }

          sub_227B3E218(v11, v17, 0);
LABEL_20:
          v15 = v39;
        }

        v14 = v40 + 1;
        if (v40 + 1 == v34)
        {
          return v43;
        }

        v13 = 0;
        v10 = *(v15 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
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

void sub_227CDA4F4()
{
  OUTLINED_FUNCTION_351();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v29 = v9;
  v28 = v10(0);
  OUTLINED_FUNCTION_9(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_68_3();
  v16 = *(v8 + 16);
  if (v16)
  {
    v31 = MEMORY[0x277D84F90];
    v5(0, v16, 0);
    v17 = v3(0);
    OUTLINED_FUNCTION_10_0(v17);
    v19 = *(v18 + 80);
    OUTLINED_FUNCTION_136_0();
    v21 = v8 + v20;
    OUTLINED_FUNCTION_36_0();
    v27 = *(v22 + 72);
    while (1)
    {
      v29(v21, &v30);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        v5(v23 > 1, v24 + 1, 1);
      }

      *(v31 + 16) = v24 + 1;
      v25 = *(v12 + 80);
      OUTLINED_FUNCTION_19();
      (*(v12 + 32))(v31 + v26 + *(v12 + 72) * v24, v1, v28);
      v21 += v27;
      if (!--v16)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CDA6DC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_227D4D3A8();
  if (!v26)
  {
    return sub_227D4D208();
  }

  v48 = v26;
  v52 = sub_227D4D768();
  v39 = sub_227D4D778();
  sub_227D4D718();
  result = sub_227D4D398();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_227D4D3F8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_227D4D758();
      result = sub_227D4D3D8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227CDAAF8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CDAB0C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_178_5(v5);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CDAC04()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227CDACE8()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_13_0(v0 + 2);
  sub_227CD57E4();
  v0[10] = v4;
  v5 = *(OUTLINED_FUNCTION_286_1() + 32);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_354(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_104_6(v10);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CDAE34()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[12] = v0;

  if (!v0)
  {
    v10 = v4[10];

    v4[13] = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CDAF40()
{
  OUTLINED_FUNCTION_20();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D4B078();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49F48();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_298_1();
  v1[11] = swift_task_alloc();
  v11 = sub_227D4B198();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1A0, &qword_227D63B98);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v18 = sub_227D4B1D8();
  v1[16] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_298_1();
  v1[19] = swift_task_alloc();
  v22 = sub_227D4B8E8();
  v1[20] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[21] = v23;
  v25 = *(v24 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v26 = swift_task_alloc();
  v1[23] = v26;
  *v26 = v1;
  v27 = OUTLINED_FUNCTION_19_15(v26);

  return sub_227B24B80(v27);
}

uint64_t sub_227CDB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_58_8();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v16 = *(v15 + 184);
  v17 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;
  v13[24] = v19;

  if (v10)
  {
    v20 = v13[22];
    v22 = v13[18];
    v21 = v13[19];
    v24 = v13[14];
    v23 = v13[15];
    v26 = v13[10];
    v25 = v13[11];
    v27 = v13[7];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_319_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
    v37 = v13[4];
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v13[25] = v38;
    *v38 = v39;
    v38[1] = sub_227CDB354;
    v40 = v13[22];
    OUTLINED_FUNCTION_267_2();
    OUTLINED_FUNCTION_319_0();

    return sub_227B750FC(v41, v42, v43, v44, v45);
  }
}

uint64_t sub_227CDB354()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  v6 = *(v2 + 192);

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227CDB474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = 0;
  v14[2] = MEMORY[0x277D84F98];
  v17 = *(v14[3] + 16);
  v14[27] = v17;
  v107 = v14 + 2;
  v18 = v14[26];
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v14[28] = v19;
    if (v16 == v17)
    {
      break;
    }

    if (v16 >= v17)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70) - 8);
    v14[29] = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_35;
    }

    v21 = v14[3] + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16;
    v22 = sub_227D4A8F8();
    v14[30] = v23;
    v24 = v14[22];
    if (v18)
    {
      v86 = v14[20];
      v87 = v14[21];
      v88 = v14[2];

      v89 = *(v87 + 8);
      v90 = OUTLINED_FUNCTION_116_0();
      v91(v90);

      v92 = v14[22];
      v93 = v14[18];
      v94 = v14[19];
      OUTLINED_FUNCTION_234_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, v107, a11, a12, a13, a14);
      return;
    }

    v25 = v22;
    v26 = v23;
    ++v16;
    v27 = v14[13];
    v28 = v14[14];
    v29 = v14[12];
    v30 = sub_227D4B8C8();
    v31 = MEMORY[0x22AAA3ED0](v30);
    v32 = *(v27 + 8);
    v33 = OUTLINED_FUNCTION_281_1();
    v34(v33);
    v15 = 0;
    v35 = *(v31 + 16);
    while (1)
    {
      if (v35 == v15)
      {

        goto LABEL_18;
      }

      if (v15 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v36 = v14[18];
      v37 = v14[16];
      OUTLINED_FUNCTION_55_10(v14[17]);
      v39 = OUTLINED_FUNCTION_328_1(v38);
      v40(v39);
      v42 = sub_227D4B1A8() == v25 && v41 == v26;
      if (v42)
      {
        break;
      }

      v43 = sub_227D4DA78();

      if (v43)
      {
        goto LABEL_17;
      }

      (*(v14[17] + 8))(v14[18], v14[16]);
      ++v15;
    }

LABEL_17:

    (*(v14[17] + 32))(v14[15], v14[18], v14[16]);
LABEL_18:
    v45 = v14[15];
    v44 = v14[16];
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    OUTLINED_FUNCTION_10_16(v45);
    if (v42)
    {
      v103 = v14[4];
      sub_227B1DE58(v14[15], &qword_27D7EA1A0, &qword_227D63B98);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[31] = v104;
      *v104 = v105;
      OUTLINED_FUNCTION_151_2(v104);
      OUTLINED_FUNCTION_16_0();

      sub_227CDC040();
      return;
    }

    v50 = v14[19];
    v51 = v14[16];
    v52 = v14[17];
    v53 = v14[15];
    v54 = v14[11];

    v55 = *(v52 + 32);
    v56 = OUTLINED_FUNCTION_116_0();
    v57(v56);
    sub_227CDC8E8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = OUTLINED_FUNCTION_8_15();
      v19 = sub_227CF0BE0(v67, v68, v69, v70);
    }

    v59 = *(v19 + 16);
    v58 = *(v19 + 24);
    if (v59 >= v58 >> 1)
    {
      v71 = OUTLINED_FUNCTION_11_22(v58);
      v19 = sub_227CF0BE0(v71, v72, v73, v74);
    }

    v60 = v14[11];
    v61 = v14[8];
    v62 = v14[9];
    (*(v14[17] + 8))(v14[19], v14[16]);
    *(v19 + 16) = v59 + 1;
    v63 = *(v62 + 32);
    v62 += 32;
    v64 = *(v62 + 48);
    OUTLINED_FUNCTION_136_0();
    v66(v19 + v65 + *(v62 + 40) * v59, v60, v61);
    v18 = 0;
    v17 = v14[27];
  }

  OUTLINED_FUNCTION_227_1();
  v75 = *(v15 + 8);
  v76 = OUTLINED_FUNCTION_147();
  v77(v76);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, v107, a11, a12, a13, a14);
}

uint64_t sub_227CDB8E8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[32] = v0;

  if (v0)
  {
    v9 = v3[30];
    v10 = v3[28];
    v11 = v3[2];
  }

  else
  {
    v12 = v3[30];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CDBA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = v14[28];
  v17 = v14[10];
  v18 = v14[7];
  sub_227CDC4C4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v14[28];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_39:
    v118 = OUTLINED_FUNCTION_8_15();
    v20 = sub_227CF0BE0(v118, v119, v120, v121);
  }

  OUTLINED_FUNCTION_72_6();
  if (v21)
  {
    OUTLINED_FUNCTION_59_0();
    v20 = sub_227CF0BE0(v122, v123, v124, v125);
  }

  v23 = v14[9];
  v22 = v14[10];
  v24 = v14[8];
  (*(v14[6] + 8))(v14[7], v14[5]);
  *(v20 + 16) = v18;
  v25 = *(v23 + 32);
  v26 = *(v23 + 80);
  OUTLINED_FUNCTION_136_0();
  v27 = OUTLINED_FUNCTION_181_2();
  v28(v27);
  v29 = v14[32];
  v30 = v14[29];
  while (1)
  {
    v14[28] = v20;
    v31 = v14[27];
    if (v30 == v31)
    {
      break;
    }

    if (v30 >= v31)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70) - 8);
    v14[29] = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_38;
    }

    v33 = v14[3] + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30;
    v34 = sub_227D4A8F8();
    v14[30] = v35;
    v36 = v14[22];
    if (v29)
    {
      v97 = v14[20];
      v98 = v14[21];
      v99 = v14[2];

      v100 = *(v98 + 8);
      v101 = OUTLINED_FUNCTION_116_0();
      v102(v101);

      v103 = v14[22];
      v104 = v14[18];
      v105 = v14[19];
      OUTLINED_FUNCTION_234_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14);
    }

    v37 = v34;
    v38 = v35;
    ++v30;
    v39 = v14[13];
    v40 = v14[14];
    v41 = v14[12];
    v42 = sub_227D4B8C8();
    v18 = v40;
    v43 = MEMORY[0x22AAA3ED0](v42);
    v44 = *(v39 + 8);
    v45 = OUTLINED_FUNCTION_113();
    v46(v45);
    v15 = 0;
    v47 = *(v43 + 16);
    while (1)
    {
      if (v47 == v15)
      {

        goto LABEL_21;
      }

      if (v15 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v48 = v14[18];
      v49 = v14[16];
      OUTLINED_FUNCTION_55_10(v14[17]);
      v51 = OUTLINED_FUNCTION_328_1(v50);
      v52(v51);
      v53 = sub_227D4B1A8();
      v18 = v54;
      v55 = v53 == v37 && v54 == v38;
      if (v55)
      {
        break;
      }

      v56 = sub_227D4DA78();

      if (v56)
      {
        goto LABEL_20;
      }

      (*(v14[17] + 8))(v14[18], v14[16]);
      ++v15;
    }

LABEL_20:

    (*(v14[17] + 32))(v14[15], v14[18], v14[16]);
LABEL_21:
    v58 = v14[15];
    v57 = v14[16];
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    OUTLINED_FUNCTION_10_16(v58);
    if (v55)
    {
      v114 = v14[4];
      sub_227B1DE58(v14[15], &qword_27D7EA1A0, &qword_227D63B98);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[31] = v115;
      *v115 = v116;
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_16_0();

      return sub_227CDC040();
    }

    v18 = v14[19];
    v63 = v14[16];
    v64 = v14[17];
    v65 = v14[15];
    v66 = v14[11];

    v68 = *(v64 + 32);
    v67 = v64 + 32;
    v68(v18, v65, v63);
    sub_227CDC8E8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = OUTLINED_FUNCTION_8_15();
      v20 = sub_227CF0BE0(v77, v78, v79, v80);
    }

    OUTLINED_FUNCTION_72_6();
    if (v21)
    {
      v81 = OUTLINED_FUNCTION_11_22(v69);
      v20 = sub_227CF0BE0(v81, v82, v83, v84);
    }

    v70 = v14[11];
    v71 = v14[8];
    v72 = v14[9];
    (*(v14[17] + 8))(v14[19], v14[16]);
    *(v20 + 16) = v18;
    v73 = *(v72 + 32);
    v72 += 32;
    v74 = *(v72 + 48);
    OUTLINED_FUNCTION_136_0();
    v76(v20 + v75 + *(v72 + 40) * v67, v70, v71);
    v29 = 0;
  }

  OUTLINED_FUNCTION_227_1();
  v85 = *(v15 + 8);
  v86 = OUTLINED_FUNCTION_147();
  v87(v86);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  return v90(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227CDBEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  v11 = v10[26];
  v12 = v10[22];
  v14 = v10[18];
  v13 = v10[19];
  OUTLINED_FUNCTION_234_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_319_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_227CDBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  (*(v10[21] + 8))(v10[22], v10[20]);
  v11 = v10[32];
  v12 = v10[22];
  v14 = v10[18];
  v13 = v10[19];
  OUTLINED_FUNCTION_234_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_319_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_227CDC040()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2B0, &qword_227D64070);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4B078();
  v1[8] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_121();
  v1[11] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CDC124()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = **(v0 + 48);
  if (*(v1 + 16) && (v2 = sub_227B2664C(*(v0 + 24), *(v0 + 32)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    (*(v4 + 16))(*(v0 + 88), *(v1 + 56) + *(v4 + 72) * v2, *(v0 + 64));
    v6 = *(v4 + 32);
    v7 = OUTLINED_FUNCTION_173_0();
    v8(v7);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 56);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_164();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 96) = v21;
    *v21 = v22;
    v21[1] = sub_227CDC278;
    v23 = *(v0 + 80);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v26 = *(v0 + 24);
    OUTLINED_FUNCTION_164();

    return sub_227B74EF8(v27, v28, v29);
  }
}

uint64_t sub_227CDC278()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CDC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[9];
  v12 = v10[7];
  v13 = v10[8];
  v14 = v10[6];
  v16 = v10[3];
  v15 = v10[4];
  v17 = v10[2];
  (*(v11 + 32))(v17, v10[10], v13);
  (*(v11 + 16))(v12, v17, v13);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  sub_227D4CE58();
  OUTLINED_FUNCTION_336_1();
  sub_227CEFB54(v21, v22, v23);
  v25 = v10[10];
  v24 = v10[11];
  v26 = v10[7];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_163();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_227CDC454()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  OUTLINED_FUNCTION_18();
  v5 = v0[13];

  return v4();
}

void sub_227CDC4C4()
{
  OUTLINED_FUNCTION_11();
  v60 = v0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v58);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_0();
  v61 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_54_0();
  v57 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = sub_227D492A8();
  v22 = OUTLINED_FUNCTION_9(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_54_0();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v57 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v57 - v35;
  v37 = MEMORY[0x22AAA3D70](v34);
  if (v38)
  {
    v62 = MEMORY[0x22AAA3D00](v37);
  }

  else
  {
    v39 = v37;
    v40 = MEMORY[0x22AAA3D40]();
    if (__OFADD__(v40, v39))
    {
      goto LABEL_16;
    }

    v62 = v40 + v39;
  }

  sub_227C1897C();
  sub_227B27F4C(MEMORY[0x277D84A28]);
  (*(v24 + 32))(v36, v33, v21);
  sub_227D4B038();
  v41 = sub_227D4AF88();
  v43 = v42;
  if (v41 == sub_227D4AF88() && v43 == v44)
  {

    goto LABEL_12;
  }

  v46 = sub_227D4DA78();

  if (v46)
  {
LABEL_12:
    v62 = MEMORY[0x22AAA3D00](v47);
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    v48 = v20;
    v49 = 0;
    goto LABEL_13;
  }

  v48 = v20;
  v49 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v48, v49, 1, v21);
  sub_227D4AF68();
  sub_227D4A8E8();
  OUTLINED_FUNCTION_12_15();
  sub_227CEE1E4();
  if (*(v50 + 16))
  {
    v51 = *(v2 + 16);
    v52 = *(v2 + 80);
    OUTLINED_FUNCTION_136_0();
    v55(v59, v53 + v54, v58);

    OUTLINED_FUNCTION_327();
    v56(v29, v36, v21);
    sub_227CF3F60();
    sub_227D49F38();
    sub_227B1DE58(v20, &qword_27D7E6D08, &qword_227D59460);
    (*(v24 + 8))(v36, v21);
    OUTLINED_FUNCTION_8_1();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_227CDC8E8()
{
  OUTLINED_FUNCTION_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_246_0();
  v31 = sub_227D492A8();
  v5 = OUTLINED_FUNCTION_62_0(v31);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_68_3();
  sub_227D4B1A8();
  sub_227D4A8E8();
  v18 = OUTLINED_FUNCTION_170_2();
  v19 = sub_227CE9B9C(v18, MEMORY[0x277D0C390]);
  v20 = OUTLINED_FUNCTION_160_3();
  v22 = sub_227CDA190(v20, v21, v19);

  if (*(v22 + 16))
  {
    v23 = *(v10 + 16);
    v24 = *(v10 + 80);
    OUTLINED_FUNCTION_136_0();
    v26(v0, v22 + v25, v8);

    MEMORY[0x22AAA3F00](v27);
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    sub_227D4B1C8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    OUTLINED_FUNCTION_114();
    sub_227D49F38();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227CDCB28()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_227D4B078();
  v1[14] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[17] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v11 = swift_task_alloc();
  v1[20] = v11;
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_19_15(v11);

  return sub_227B24B80(v12);
}

uint64_t sub_227CDCC5C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = v3[16];

    OUTLINED_FUNCTION_18();

    return v11();
  }

  else
  {

    v13 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_227CDCD98()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[18];
  v2 = *(v0[12] + 16);
  v3 = v0[21];
  v4 = MEMORY[0x277D84F90];
  v0[23] = 0;
  v0[24] = v4;
  v0[22] = v2;
  if (v2)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[13];
    v8 = OUTLINED_FUNCTION_106_5(v1);
    v9(v8);
    sub_227B23878(v7 + 40, (v0 + 2));
    sub_227D4A8F8();
    v0[25] = v10;
    if (v3)
    {
      v12 = v0[18];
      v11 = v0[19];
      v13 = v0[17];
      sub_227B26090((v0 + 2));

      v14 = *(v12 + 8);
      v15 = OUTLINED_FUNCTION_57_0();
      v16(v15);
      v17 = v0[19];
      v18 = v0[16];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33_0();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    else
    {
      OUTLINED_FUNCTION_332();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[26] = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_137_5(v38);
      OUTLINED_FUNCTION_33_0();

      return sub_227B74EF8(v40, v41, v42);
    }
  }

  else
  {
    v28 = v0[19];
    v29 = v0[16];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_33_0();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37);
  }
}

uint64_t sub_227CDCF38()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;
  *(v3 + 216) = v0;

  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = *(v3 + 192);
    sub_227B26090(v3 + 16);
  }

  else
  {
    sub_227B26090(v3 + 16);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CDD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[27];
  v16 = v14[19];
  v17 = v14[16];
  MEMORY[0x22AAA3D10]();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  sub_227CDA4F4();
  v19 = v14[24];
  if (v15)
  {
    v20 = v14[18];
    v81 = v14[19];
    v22 = v14[16];
    v21 = v14[17];
    v24 = v14[14];
    v23 = v14[15];

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_93_0();
    v27(v26);
    (*(v20 + 8))(v81, v21);
    v28 = v14[19];
    v29 = v14[16];

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_16_0();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v81, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_308();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v14[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = *(v40 + 16);
      OUTLINED_FUNCTION_54();
      sub_227CF0F18();
      v40 = v79;
    }

    v42 = *(v40 + 16);
    v41 = *(v40 + 24);
    if (v42 >= v41 >> 1)
    {
      OUTLINED_FUNCTION_12(v41);
      OUTLINED_FUNCTION_117();
      sub_227CF0F18();
      v40 = v80;
    }

    v44 = v14[18];
    v43 = v14[19];
    v45 = v14[16];
    v46 = v14[17];
    v47 = v14[14];
    v48 = v14[15];
    *(v40 + 16) = v42 + 1;
    *(v40 + 8 * v42 + 32) = v17;
    (*(v48 + 8))(v45, v47);
    v49 = *(v44 + 8);
    v50 = OUTLINED_FUNCTION_148();
    v51(v50);
    v52 = v14[22];
    v53 = v14[23] + 1;
    v14[23] = v53;
    v14[24] = v40;
    v54 = v14[19];
    if (v53 == v52)
    {
      v55 = v14[16];
      v56 = v14[19];

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16_0();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v65 = v14[17];
      v66 = v14[18];
      v67 = v14[12];
      v68 = v14[13];
      v69 = OUTLINED_FUNCTION_4_27(v53);
      v70(v69);
      sub_227B23878(v68 + 40, (v14 + 2));
      sub_227D4A8F8();
      v14[25] = v71;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[26] = v72;
      *v72 = v73;
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_16_0();

      return sub_227B74EF8(v74, v75, v76);
    }
  }
}

uint64_t sub_227CDD3C8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[16];

  OUTLINED_FUNCTION_18();

  return v4();
}

void sub_227CDD448()
{
  OUTLINED_FUNCTION_351();
  v18 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_61_4();
  v9 = OUTLINED_FUNCTION_168_4();
  v10 = sub_227CE9B9C(v9, MEMORY[0x277D0C360]);
  v11 = OUTLINED_FUNCTION_160_3();
  v13 = sub_227CDA190(v11, v12, v10);

  if (*(v13 + 16))
  {
    v14 = *(v5 + 80);
    OUTLINED_FUNCTION_19();
    (*(v5 + 16))(v1, v13 + v15, v3);

    v16 = OUTLINED_FUNCTION_149_0();
    sub_227CDD5B8(v16, v17);
    (*(v5 + 8))(v1, v3);
    if (v0)
    {
      *v18 = v0;
    }

    OUTLINED_FUNCTION_352();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227CDD5B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_246_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_67_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_75_2();
  sub_227D4B978();
  sub_227D4A888();
  v19 = *(v11 + 16);
  v20 = OUTLINED_FUNCTION_173();
  v21(v20);
  (*(v5 + 16))(v2, a2, v3);
  sub_227D4B948();
  sub_227D4B958();
  MEMORY[0x22AAA4680]();
  sub_227D4B968();
  return sub_227D4A518();
}

uint64_t sub_227CDD7BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CDD7D0()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_178_5(v5);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CDD8C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227CDD9AC()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_13_0(v0 + 2);
  sub_227CD57E4();
  v0[10] = v4;
  v5 = *(OUTLINED_FUNCTION_286_1() + 48);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_354(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_104_6(v10);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CDDAF8()
{
  OUTLINED_FUNCTION_6();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_227D49F78();
  v1[15] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v11 = swift_task_alloc();
  v1[19] = v11;
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_19_15(v11);

  return sub_227B24B80(v12);
}

uint64_t sub_227CDDC04()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v0;

  if (v0)
  {
    v10 = v3[17];
    v9 = v3[18];

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_227CDDD40()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[22];
  v2 = v0[13];
  OUTLINED_FUNCTION_324_0(v0[14]);
  sub_227D4A8F8();
  v0[23] = v3;
  if (v1)
  {
    v4 = v0[21];
    sub_227B26090((v0 + 2));

    v6 = v0[17];
    v5 = v0[18];

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33_0();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_163_0(v16);
    *v17 = v18;
    v17[1] = sub_227CDDE50;
    v19 = v0[21];
    OUTLINED_FUNCTION_53(v0[20]);
    OUTLINED_FUNCTION_33_0();

    return sub_227B745B4(v20, v21, v22, v23);
  }
}

uint64_t sub_227CDDE50()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[24];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[25] = v8;
  v3[26] = v9;
  v3[27] = v0;

  v10 = v2[23];
  v11 = v2[21];
  sub_227B26090((v3 + 2));

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227CDDF9C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v0[13];
  sub_227D4A908();
  v6 = v0[26];
  if (v2)
  {

    v8 = v0[17];
    v7 = v0[18];

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[12];
    *v10 = v0[25];
    v10[1] = v6;
    (*(v13 + 104))(v10, *MEMORY[0x277D0CFC0], v12);
    OUTLINED_FUNCTION_57_0();
    sub_227D49F68();

    OUTLINED_FUNCTION_15_0();
  }

  return v9();
}

uint64_t sub_227CDE07C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CDE0E0()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for InternalChallengeInvite(0);
  OUTLINED_FUNCTION_10_0(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_121();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49F78();
  v1[16] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73F8, &unk_227D51880);
  OUTLINED_FUNCTION_10_0(v15);
  v1[19] = v16;
  v18 = *(v17 + 64);
  v1[20] = OUTLINED_FUNCTION_121();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1A8, &unk_227D63BE0);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  v1[27] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[28] = v23;
  v25 = *(v24 + 64);
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_227CDE35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = *(v20 + 56);
  v22 = *(v21 + 16);
  *(v20 + 248) = v22;
  if (!v22)
  {
LABEL_17:
    v75 = *(v20 + 232);
    v74 = *(v20 + 240);
    v77 = *(v20 + 200);
    v76 = *(v20 + 208);
    OUTLINED_FUNCTION_69_7();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_137();

    return v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v23 = 0;
  v24 = *(v20 + 224);
  v25 = *(v24 + 80);
  *(v20 + 368) = v25;
  v26 = MEMORY[0x277D0D4E0];
  *(v20 + 372) = *MEMORY[0x277D0D4D8];
  *(v20 + 376) = *v26;
  *(v20 + 380) = *MEMORY[0x277D0CFC0];
  v27 = *(v24 + 72);
  *(v20 + 256) = v27;
  a16 = v20 + 168;
  a9 = v20 + 160;
  a10 = v20 + 192;
  v28 = MEMORY[0x277D84F90];
  v29 = *(v24 + 16);
  *(v20 + 264) = v29;
  while (1)
  {
    *(v20 + 272) = v23;
    *(v20 + 280) = v28;
    v30 = *(v20 + 240);
    v31 = *(v20 + 208);
    v29(v30, v21 + ((v25 + 32) & ~v25) + v27 * v23, *(v20 + 216));
    sub_227D4A818();
    *(v20 + 288) = 0;
    v32 = *(v20 + 372);
    v34 = *(v20 + 200);
    v33 = *(v20 + 208);
    v35 = OUTLINED_FUNCTION_5_26();
    sub_227CF1940(v35, &qword_27D7EA1B0, v36);
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_227CF3EB4();
    v41 = *(v30 - 8);
    if ((*(v41 + 88))(v34, v30) == v32)
    {
      LODWORD(a15) = *(v20 + 380);
      v42 = *(v20 + 232);
      v43 = *(v20 + 216);
      v44 = *(v20 + 200);
      a13 = *(v20 + 264);
      a14 = *(v20 + 192);
      v46 = *(v20 + 136);
      v45 = *(v20 + 144);
      a11 = *(v20 + 240);
      a12 = *(v20 + 128);
      (*(v41 + 96))(v44, v30);
      v47 = *v44;
      v48 = v44[1];
      a13(v42, a11, v43);
      *v45 = v47;
      v45[1] = v48;
      (*(v46 + 104))(v45, a15, a12);
      v30 = a14;
      OUTLINED_FUNCTION_276();
      sub_227D49F68();
      sub_227D49F88();
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_99();
      if ((OUTLINED_FUNCTION_379_1(v49, v50, v51, v52) & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0D04();
        v28 = v70;
      }

      OUTLINED_FUNCTION_259_1();
      if (v54)
      {
        OUTLINED_FUNCTION_11_22(v53);
        sub_227CF0D04();
        v28 = v71;
      }

      v55 = (v20 + 192);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_330_0();
    if (v56)
    {
      break;
    }

    v57 = *(v20 + 160);
    (*(v41 + 8))(*(v20 + 200), v30);
    sub_227D49F88();
    OUTLINED_FUNCTION_71_0();
    if ((OUTLINED_FUNCTION_379_1(v58, v59, v60, v61) & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      sub_227CF0D04();
      v28 = v72;
    }

    OUTLINED_FUNCTION_259_1();
    if (v54)
    {
      OUTLINED_FUNCTION_11_22(v62);
      sub_227CF0D04();
      v28 = v73;
    }

    v55 = (v20 + 160);
LABEL_15:
    v63 = *v55;
    v64 = *(v20 + 248);
    v65 = *(v20 + 152);
    v66 = *(v20 + 272) + 1;
    (*(*(v20 + 224) + 8))(*(v20 + 240), *(v20 + 216));
    *(v28 + 16) = v30;
    v67 = *(v65 + 80);
    OUTLINED_FUNCTION_19();
    v68 = *(v65 + 72);
    sub_227CF3EB4();
    if (v66 == v64)
    {
      goto LABEL_17;
    }

    v29 = *(v20 + 264);
    v23 = *(v20 + 272) + 1;
    v27 = *(v20 + 256);
    LOBYTE(v25) = *(v20 + 368);
    v69 = *(v20 + 224);
    v21 = *(v20 + 56);
  }

  v87 = *(v20 + 200);
  v88 = *(v20 + 64);
  v89 = *(v41 + 96);
  v90 = OUTLINED_FUNCTION_87_1();
  v91(v90);
  *(v20 + 296) = *v87;
  *(v20 + 304) = v87[1];
  *(v20 + 312) = v87[2];
  *(v20 + 320) = v87[3];
  v92 = *(v88 + 24);
  v93 = *(v88 + 32);
  v94 = OUTLINED_FUNCTION_9_2();
  __swift_project_boxed_opaque_existential_1(v94, v95);
  v96 = OUTLINED_FUNCTION_308();
  v97 = *(v96 + 16);
  v111 = v96 + 16;
  OUTLINED_FUNCTION_36_0();
  v112 = v98 + *v98;
  v100 = *(v99 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v20 + 328) = v101;
  *v101 = v102;
  OUTLINED_FUNCTION_126_4(v101);
  OUTLINED_FUNCTION_137();

  return v107(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14, v111, v112, a17, a18, a19, a20);
}

uint64_t sub_227CDE9A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CDEA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = v18[36];
  v20 = v18[30];
  v21 = v18[15];
  v22 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v23 = swift_allocObject();
  v18[42] = v23;
  *(v23 + 16) = xmmword_227D4E520;
  sub_227D4A828();
  if (v19)
  {
    v67 = v19;
    v24 = v18[40];
    v25 = v18[38];
    v26 = v18[35];
    (*(v18[28] + 8))(v18[30], v18[27]);

    *(v23 + 16) = 0;

    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    v29 = v18[29];
    v28 = v18[30];
    v31 = v18[25];
    v30 = v18[26];
    v33 = v18[23];
    v32 = v18[24];
    v35 = v18[21];
    v34 = v18[22];
    v36 = v18[20];
    v37 = v18[18];
    v63 = v18[15];
    v64 = v18[12];
    v65 = v18[11];
    v66 = v18[10];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v63, v64, v65, v66, v67, a15, a16, a17, a18);
  }

  else
  {
    v27 = v18[15];
    v47 = sub_227D4A8F8();
    v49 = v48;
    (*(v18[14] + 8))(v18[15], v18[13]);
    *(v23 + 32) = v47;
    *(v23 + 40) = v49;
    v50 = *(v22 + 40);
    OUTLINED_FUNCTION_36_0();
    v68 = v51 + *v51;
    v53 = *(v52 + 4);
    v54 = swift_task_alloc();
    v18[43] = v54;
    *v54 = v18;
    v54[1] = sub_227CDED94;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_90();

    return v58(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, v22 + 40, v68, a15, a16, a17, a18);
  }
}

uint64_t sub_227CDED94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v2[43];
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v2[44] = v7;
  v2[45] = v0;

  OUTLINED_FUNCTION_209();
  v9 = *(v8 + 336);
  if (v0)
  {
    v10 = v2[40];
    v11 = v2[38];
    v12 = v2[35];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CDEED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v22 = *(v20 + 352);
  if (!v22[2])
  {
    v39 = *(v20 + 320);
    v40 = *(v20 + 304);

    __swift_destroy_boxed_opaque_existential_0((v20 + 16));
LABEL_21:
    v21 = (v20 + 176);
    v23 = *(v20 + 176);
    v43 = *(v20 + 280);
    sub_227D49F88();
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_71_0();
    v48 = OUTLINED_FUNCTION_379_1(v44, v45, v46, v47);
    v22 = *(v20 + 280);
    if ((v48 & 1) == 0)
    {
LABEL_62:
      v183 = v22[2];
      OUTLINED_FUNCTION_54();
      sub_227CF0D04();
      v22 = v184;
    }

    OUTLINED_FUNCTION_72_6();
    if (v49)
    {
      OUTLINED_FUNCTION_59_0();
      sub_227CF0D04();
      v22 = v185;
    }

    v50 = *(v20 + 360);
    goto LABEL_25;
  }

  v23 = v22[4];
  sub_227D4CE58();

  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  if (!v23)
  {
    v41 = *(v20 + 320);
    v42 = *(v20 + 304);
    goto LABEL_20;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_17:
    v37 = *(v20 + 320);
    v38 = *(v20 + 304);

LABEL_20:

    goto LABEL_21;
  }

  v25 = 0;
  v26 = *(*(v20 + 72) + 80);
  OUTLINED_FUNCTION_19();
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    v28 = *(v20 + 296);
    v27 = *(v20 + 304);
    v22 = *(v20 + 80);
    v29 = *(*(v20 + 72) + 72);
    OUTLINED_FUNCTION_10_18();
    sub_227CF3E08(v30, v22);
    v31 = v22[3] == v28 && v22[4] == v27;
    if (v31 || (v32 = *(v20 + 296), v33 = *(v20 + 304), (sub_227D4DA78() & 1) != 0))
    {
      v22 = *(v20 + 320);
      v34 = *(v20 + 80);
      if (*(v34 + 40) == *(v20 + 312) && *(v34 + 48) == v22)
      {
        goto LABEL_52;
      }

      if (OUTLINED_FUNCTION_385_1())
      {
        break;
      }
    }

    ++v25;
    v36 = *(v20 + 80);
    OUTLINED_FUNCTION_4_28();
    sub_227CF3E60();
    if (v24 == v25)
    {
      goto LABEL_17;
    }
  }

  v148 = *(v20 + 320);
  v34 = *(v20 + 80);
LABEL_52:
  v21 = (v20 + 184);
  v149 = *(v20 + 184);
  v150 = *(v20 + 360);
  v151 = *(v20 + 304);
  v153 = *(v20 + 88);
  v152 = *(v20 + 96);

  sub_227CF3DB0(v34, v153);
  v154 = OUTLINED_FUNCTION_114();
  sub_227CF3DB0(v154, v155);
  sub_227CDF994();
  v23 = *(v20 + 280);
  if (v150)
  {
    v156 = *(v20 + 240);
    v157 = *(v20 + 216);
    v158 = *(v20 + 224);
    v159 = *(v20 + 96);
    OUTLINED_FUNCTION_4_28();
    sub_227CF3E60();
    v160 = *(v158 + 8);
    v161 = OUTLINED_FUNCTION_132_0();
    v162(v161);

    v164 = *(v20 + 232);
    v163 = *(v20 + 240);
    v166 = *(v20 + 200);
    v165 = *(v20 + 208);
    OUTLINED_FUNCTION_69_7();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_137();

    return v168(v167, v168, v169, v170, v171, v172, v173, v174, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v175 = *(v20 + 184);
  sub_227D49F88();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v179);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v20 + 280);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v186 = v22[2];
    OUTLINED_FUNCTION_54();
    sub_227CF0D04();
    v22 = v187;
  }

  OUTLINED_FUNCTION_72_6();
  if (v49)
  {
    OUTLINED_FUNCTION_12(v181);
    OUTLINED_FUNCTION_59_0();
    sub_227CF0D04();
    v22 = v188;
  }

  v182 = *(v20 + 96);
  OUTLINED_FUNCTION_4_28();
  sub_227CF3E60();
  v50 = 0;
LABEL_25:
  v190 = (v20 + 160);
  v189 = v20 + 192;
  while (1)
  {
    v51 = *v21;
    v52 = *(v20 + 248);
    v53 = *(v20 + 152);
    v54 = *(v20 + 272) + 1;
    (*(*(v20 + 224) + 8))(*(v20 + 240), *(v20 + 216));
    v22[2] = v23;
    v55 = *(v53 + 80);
    OUTLINED_FUNCTION_19();
    v56 = *(v53 + 72);
    sub_227CF3EB4();
    if (v54 == v52)
    {
      break;
    }

    v57 = *(v20 + 264);
    v58 = *(v20 + 272) + 1;
    *(v20 + 272) = v58;
    *(v20 + 280) = v22;
    v23 = *(v20 + 240);
    v59 = *(v20 + 208);
    v60 = *(v20 + 224) + 16;
    v57(v23, *(v20 + 56) + ((*(v20 + 368) + 32) & ~*(v20 + 368)) + *(v20 + 256) * v58, *(v20 + 216));
    sub_227D4A818();
    *(v20 + 288) = v50;
    if (v50)
    {
      v23 = *(v20 + 208);
      v61 = *(v20 + 168);

      v62 = OUTLINED_FUNCTION_5_26();
      sub_227CF1940(v62, &qword_27D7EA1B0, v63);
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      sub_227B1DE58(v23, &qword_27D7EA1A8, &unk_227D63BE0);
      sub_227D49F88();
      OUTLINED_FUNCTION_71_0();
      if ((OUTLINED_FUNCTION_379_1(v68, v69, v70, v71) & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0D04();
        v22 = v109;
      }

      v50 = 0;
      OUTLINED_FUNCTION_72_6();
      v21 = (v20 + 168);
      if (v49)
      {
        OUTLINED_FUNCTION_11_22(v72);
        sub_227CF0D04();
        v22 = v73;
        v50 = 0;
        v21 = (v20 + 168);
      }
    }

    else
    {
      v74 = *(v20 + 372);
      v76 = *(v20 + 200);
      v75 = *(v20 + 208);
      v77 = OUTLINED_FUNCTION_5_26();
      sub_227CF1940(v77, &qword_27D7EA1B0, v78);
      OUTLINED_FUNCTION_280();
      OUTLINED_FUNCTION_51_10();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
      sub_227CF3EB4();
      v83 = *(v23 - 8);
      v84 = (*(v83 + 88))(v76, v23);
      if (v84 == v74)
      {
        LODWORD(a14) = *(v20 + 380);
        v85 = *(v20 + 232);
        v86 = *(v20 + 216);
        v87 = *(v20 + 200);
        a12 = *(v20 + 264);
        a13 = *(v20 + 192);
        v89 = *(v20 + 136);
        v88 = *(v20 + 144);
        a10 = *(v20 + 240);
        a11 = *(v20 + 128);
        (*(v83 + 96))(v87, v23);
        v90 = *v87;
        v91 = v87[1];
        a12(v85, a10, v86);
        *v88 = v90;
        v88[1] = v91;
        (*(v89 + 104))(v88, a14, a11);
        v23 = a13;
        sub_227D49F68();
        sub_227D49F88();
        OUTLINED_FUNCTION_202_0();
        OUTLINED_FUNCTION_99();
        if ((OUTLINED_FUNCTION_379_1(v92, v93, v94, v95) & 1) == 0)
        {
          OUTLINED_FUNCTION_8_15();
          sub_227CF0D04();
          v22 = v110;
        }

        v50 = 0;
        OUTLINED_FUNCTION_72_6();
        v21 = (v20 + 192);
        if (v49)
        {
          OUTLINED_FUNCTION_11_22(v96);
          sub_227CF0D04();
          v22 = v97;
          v50 = 0;
          v21 = (v20 + 192);
        }
      }

      else
      {
        v98 = *(v20 + 200);
        if (v84 == *(v20 + 376))
        {
          v125 = *(v20 + 64);
          v126 = *(v83 + 96);
          v127 = OUTLINED_FUNCTION_87_1();
          v128(v127);
          *(v20 + 296) = *v98;
          *(v20 + 304) = v98[1];
          *(v20 + 312) = v98[2];
          *(v20 + 320) = v98[3];
          v129 = *(v125 + 24);
          v130 = *(v125 + 32);
          v131 = OUTLINED_FUNCTION_9_2();
          __swift_project_boxed_opaque_existential_1(v131, v132);
          v133 = OUTLINED_FUNCTION_308();
          v134 = *(v133 + 16);
          v191 = v133 + 16;
          OUTLINED_FUNCTION_36_0();
          v192 = v135 + *v135;
          v137 = *(v136 + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_47();
          *(v20 + 328) = v138;
          *v138 = v139;
          OUTLINED_FUNCTION_126_4();
          OUTLINED_FUNCTION_137();

          return v144(v140, v141, v142, v143, v144, v145, v146, v147, v189, a10, a11, a12, a13, a14, v191, v192, a17, a18, a19, a20);
        }

        v99 = *v190;
        v100 = *(v83 + 8);
        v101 = OUTLINED_FUNCTION_87_1();
        v102(v101);
        sub_227D49F88();
        OUTLINED_FUNCTION_71_0();
        if ((OUTLINED_FUNCTION_379_1(v103, v104, v105, v106) & 1) == 0)
        {
          OUTLINED_FUNCTION_8_15();
          sub_227CF0D04();
          v22 = v111;
        }

        v50 = 0;
        OUTLINED_FUNCTION_72_6();
        v21 = (v20 + 160);
        if (v49)
        {
          OUTLINED_FUNCTION_11_22(v107);
          sub_227CF0D04();
          v22 = v108;
          v50 = 0;
          v21 = (v20 + 160);
        }
      }
    }
  }

  v113 = *(v20 + 232);
  v112 = *(v20 + 240);
  v115 = *(v20 + 200);
  v114 = *(v20 + 208);
  OUTLINED_FUNCTION_69_7();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_137();

  return v118(v116, v117, v118, v119, v120, v121, v122, v123, v189, a10, a11, a12, a13, a14, v190, v20 + 168, a17, a18, a19, a20);
}

uint64_t sub_227CDF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  (*(v16[28] + 8))(v16[30], v16[27]);
  __swift_destroy_boxed_opaque_existential_0(v16 + 2);
  v18 = v16[29];
  v17 = v16[30];
  v20 = v16[25];
  v19 = v16[26];
  v22 = v16[23];
  v21 = v16[24];
  v24 = v16[21];
  v23 = v16[22];
  v25 = v16[20];
  v26 = v16[18];
  v36 = v16[15];
  v37 = v16[12];
  v38 = v16[11];
  v39 = v16[10];
  v40 = v16[45];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, a14, a15, a16);
}

void sub_227CDF994()
{
  OUTLINED_FUNCTION_351();
  v70 = v1;
  v62 = v2;
  v3 = sub_227D49F78();
  v4 = OUTLINED_FUNCTION_9(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  v59 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v63 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v15 = OUTLINED_FUNCTION_9(v14);
  v68 = v16;
  v69 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  v67 = (v19 - v20);
  MEMORY[0x28223BE20](v21);
  v72 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v58 - v29;
  v31 = *v0;
  v32 = v0[1];
  sub_227D4CE58();
  v71 = v30;
  sub_227D4A8E8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v33, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8(v34);
  v36 = *(v35 + 72);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v65 = v33;
  v39 = swift_allocObject();
  v64 = xmmword_227D4E520;
  *(v39 + 16) = xmmword_227D4E520;
  v40 = (v39 + v38);
  v41 = v0[3];
  v42 = v0[4];
  v66 = v0;
  *v40 = v41;
  v40[1] = v42;
  swift_storeEnumTagMultiPayload();
  sub_227D4CE58();
  v43 = v70;
  sub_227D4A8B8();
  if (v43)
  {
    (*(v25 + 8))(v71, v23);
  }

  else
  {
    v58 = v25;
    v70 = v23;
    v44 = swift_allocObject();
    *(v44 + 16) = v64;
    v45 = (v44 + v38);
    v46 = v66;
    v47 = v66[6];
    *v45 = v66[5];
    v45[1] = v47;
    swift_storeEnumTagMultiPayload();
    sub_227D4CE58();
    v48 = v67;
    sub_227D4A8B8();
    OUTLINED_FUNCTION_173();
    sub_227D4A918();
    v49 = v68;
    v50 = v69;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1B8, &qword_227D63BF0);
    v52 = *(v51 + 48);
    v65 = *(v51 + 64);
    v53 = v48;
    v54 = *(v49 + 16);
    v55 = v59;
    v54(v59, v72, v50);
    v54(v55 + v52, v53, v50);
    v56 = v46 + *(type metadata accessor for InternalChallengeInvite(0) + 36);
    sub_227CF3F60();
    (*(v60 + 104))(v55, *MEMORY[0x277D0CFC8], v61);
    sub_227D49F68();
    v57 = *(v49 + 8);
    v57(v53, v50);
    v57(v72, v50);
    (*(v58 + 8))(v71, v70);
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CDFE64()
{
  OUTLINED_FUNCTION_6();
  v1[58] = v2;
  v1[59] = v0;
  v1[57] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[60] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49F88();
  v1[61] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[62] = v8;
  v10 = *(v9 + 64);
  v1[63] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1C0, &qword_227D63C00);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[64] = OUTLINED_FUNCTION_121();
  v1[65] = swift_task_alloc();
  v14 = type metadata accessor for InternalChallengeInvite(0);
  v1[66] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[67] = v15;
  v17 = *(v16 + 64);
  v1[68] = OUTLINED_FUNCTION_121();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227CDFFD4()
{
  OUTLINED_FUNCTION_6();
  sub_227B23878(v0[59] + 40, (v0 + 16));
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[71] = v1;
  memcpy((v1 + 16), v0 + 16, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[72] = v2;
  *v2 = v3;
  v2[1] = sub_227CE00B4;
  v4 = v0[58];

  return sub_227CE1520();
}

uint64_t sub_227CE00B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 584) = v0;

  if (!v0)
  {
    v9 = *(v3 + 568);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CE01B4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 472);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 592) = v5;
  *v5 = v6;
  v5[1] = sub_227CE02B0;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CE02B0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 592);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CE0394()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[42];
  v2 = v0[43];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 39) + 24);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[75] = v7;
  *v7 = v8;
  v7[1] = sub_227CE04A4;
  OUTLINED_FUNCTION_116_6();

  return v10();
}

uint64_t sub_227CE04A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 600);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 608) = v0;

  sub_227B1DE58(v3 + 208, &qword_27D7EA198, &qword_227D63B80);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CE05B4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  v1 = swift_task_alloc();
  v0[77] = v1;
  *v1 = v0;
  v1[1] = sub_227CE0648;
  v2 = v0[59];
  OUTLINED_FUNCTION_53(v0[58]);

  return sub_227CE29E0();
}

uint64_t sub_227CE0648()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 616);
  *v3 = *v1;
  v2[78] = v6;
  v2[79] = v7;
  v2[80] = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CE0750()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 472);
  OUTLINED_FUNCTION_2_36();
  v16 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 648) = v5;
  *v5 = v6;
  v5[1] = sub_227CE084C;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227CE084C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 648);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CE0930()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v0[47]);
  v2 = v0[37];
  v3 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_30();
  v6 = *(v4 + 16);
  OUTLINED_FUNCTION_336_1();
  v7();
  v8 = *(v3 + 8);
  v0[82] = sub_227D4D258();

  v9 = *(v1 + 40);
  OUTLINED_FUNCTION_28_2();
  v17 = v10 + *v10;
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[83] = v13;
  *v13 = v0;
  v13[1] = sub_227CE0AF4;
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_54_4();

  return v14();
}

uint64_t sub_227CE0AF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 664);
  *v4 = *v1;
  v3[84] = v7;
  v3[85] = v0;

  if (!v0)
  {
    v8 = v3[82];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CE0C00()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v104 = *(v0 + 536);
  v4 = *(v0 + 496);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  *(v0 + 424) = v1;
  *(v0 + 432) = j__OUTLINED_FUNCTION_193_4;
  *(v0 + 440) = 0;

  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1C8, &qword_227D63C28);
  sub_227D4D788();
  *(v0 + 16) = *(v0 + 392);
  v5 = *(v0 + 408);
  *(v0 + 24) = *(v0 + 400);
  *(v0 + 32) = v5;
  *(v0 + 48) = sub_227CF2B84;
  *(v0 + 56) = 0;
  *(v0 + 64) = sub_227CF2B8C;
  *(v0 + 72) = 0;
  *(v0 + 80) = j__OUTLINED_FUNCTION_193_4;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v102 = *(v0 + 680);

  v106 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v0 + 96);
    if (!v7)
    {
      goto LABEL_4;
    }

    v8 = *(v0 + 104);
LABEL_8:
    v12 = *(v7 + 16);
    if (v8 == v12)
    {
      v13 = *(v0 + 528);
      v14 = *(v0 + 512);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      sub_227B1DE58(v14, &qword_27D7EA1C0, &qword_227D63C00);
LABEL_4:
      while (1)
      {
        v9 = OUTLINED_FUNCTION_141();
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        sub_227D4D798();
        v7 = *(v0 + 448);
        if (v7 == 1)
        {
          break;
        }

        if (v7)
        {
          v11 = *(v0 + 96);

          v8 = 0;
          *(v0 + 96) = v7;
          *(v0 + 104) = 0;
          goto LABEL_8;
        }

        sub_227CF2C80(0);
      }

      v57 = *(v0 + 528);
      v58 = *(v0 + 520);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
LABEL_21:
      v63 = *(v0 + 672);
      v64 = *(v0 + 632);
      v99 = *(v0 + 560);
      v100 = *(v0 + 552);
      v101 = *(v0 + 544);
      v103 = *(v0 + 512);
      v105 = *(v0 + 504);
      v65 = *(v0 + 480);
      v98 = *(v0 + 488);
      v97 = *(v0 + 456);
      sub_227B1DE58(*(v0 + 520), &qword_27D7EA1C0, &qword_227D63C00);

      v66 = *(v0 + 16);
      v67 = *(v0 + 40);
      v68 = *(v0 + 56);
      v69 = *(v0 + 72);
      v70 = *(v0 + 88);
      v71 = *(v0 + 96);
      v72 = *(v0 + 120);

      sub_227D4A958();
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
      v77 = MEMORY[0x277D0CFD0];
      sub_227B12A58(&qword_27D7E7398, MEMORY[0x277D0CFD0]);
      sub_227B12A58(&qword_27D7E73A0, v77);
      sub_227D4A948();

      __swift_destroy_boxed_opaque_existential_0((v0 + 272));

      OUTLINED_FUNCTION_15_0();
LABEL_22:
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X1, X16 }
    }

    if (v8 >= v12)
    {
      break;
    }

    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v21 = *(v0 + 512);
    v22 = *(v104 + 80);
    OUTLINED_FUNCTION_19();
    v24 = *(v23 + 72);
    OUTLINED_FUNCTION_10_18();
    sub_227CF3E08(v25, v21);
    *(v0 + 104) = v8 + 1;
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_227CF3EB4();
    OUTLINED_FUNCTION_10_16(v20);
    if (v30)
    {
      goto LABEL_21;
    }

    v31 = *(v0 + 632);
    v32 = *(v0 + 624);
    v33 = *(v0 + 552);
    v34 = *(v0 + 520);
    OUTLINED_FUNCTION_10_18();
    sub_227CF3DB0(v35, v33);
    if (v32(v33))
    {
      v37 = *(v0 + 544);
      v38 = *(v0 + 504);
      sub_227CF3DB0(*(v0 + 552), *(v0 + 560));
      v39 = OUTLINED_FUNCTION_147();
      sub_227CF3DB0(v39, v40);
      sub_227CDF994();
      v41 = v106;
      if (v102)
      {
        v80 = *(v0 + 672);
        v81 = *(v0 + 632);
        v82 = *(v0 + 544);

        OUTLINED_FUNCTION_4_28();
        sub_227CF3E60();
        v83 = *(v0 + 16);
        v84 = *(v0 + 40);
        v85 = *(v0 + 56);
        v86 = *(v0 + 72);
        v87 = *(v0 + 88);
        v88 = *(v0 + 96);
        v89 = *(v0 + 120);

        __swift_destroy_boxed_opaque_existential_0((v0 + 272));
        v90 = *(v0 + 560);
        v91 = *(v0 + 552);
        v92 = *(v0 + 544);
        v93 = *(v0 + 520);
        v95 = *(v0 + 504);
        v94 = *(v0 + 512);
        v96 = *(v0 + 480);

        OUTLINED_FUNCTION_19_0();
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v106 + 16);
        v51 = OUTLINED_FUNCTION_21();
        v41 = sub_227CF0DF4(v51, v52, v53, v106);
      }

      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      if (v43 >= v42 >> 1)
      {
        v54 = OUTLINED_FUNCTION_55(v42);
        v41 = sub_227CF0DF4(v54, v55, v56, v41);
      }

      v44 = *(v0 + 544);
      v45 = *(v0 + 504);
      v46 = *(v0 + 488);
      OUTLINED_FUNCTION_4_28();
      sub_227CF3E60();
      *(v41 + 16) = v43 + 1;
      v47 = *(v4 + 80);
      OUTLINED_FUNCTION_19();
      v106 = v41;
      result = (*(v49 + 32))(v41 + v48 + *(v49 + 72) * v43, v45, v46);
      v102 = 0;
    }

    else
    {
      v36 = *(v0 + 552);
      OUTLINED_FUNCTION_4_28();
      result = sub_227CF3E60();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CE1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = *(v10 + 568);

  v12 = *(v10 + 584);
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227CE12AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0((v10 + 312));
  v11 = *(v10 + 608);
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_227CE1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0((v10 + 272));
  v11 = *(v10 + 640);
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_227CE13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[82];
  v12 = v10[79];

  __swift_destroy_boxed_opaque_existential_0(v10 + 44);
  __swift_destroy_boxed_opaque_existential_0(v10 + 34);
  v13 = v10[85];
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227CE1490()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CF4150;
  v3 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v3);
}

uint64_t sub_227CE1520()
{
  OUTLINED_FUNCTION_6();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[21] = v6;
  v8 = *(v7 + 64);
  v0[22] = OUTLINED_FUNCTION_121();
  v0[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[24] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[25] = v10;
  v12 = *(v11 + 64);
  v0[26] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v0[27] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[28] = v14;
  v16 = *(v15 + 64);
  v0[29] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4A488();
  v0[30] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[31] = v18;
  v20 = *(v19 + 64);
  v0[32] = OUTLINED_FUNCTION_121();
  v0[33] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227CE16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 136);
  if (!v17 || (v18 = *(v17 + 16), (*(v16 + 272) = v18) == 0))
  {
    a10 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
LABEL_14:
    OUTLINED_FUNCTION_184_3();
    v74 = *(v16 + 128);

    *v74 = a10;
    v74[1] = v69;
    v74[2] = v70;
    v74[3] = v70;
    v74[4] = v70;
    v74[5] = v70;
    v74[6] = v70;
    v74[7] = v71;
    OUTLINED_FUNCTION_15_0();
LABEL_15:
    OUTLINED_FUNCTION_23();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v19 = 0;
  v20 = *(v16 + 248);
  v21 = MEMORY[0x277D84FA0];
  *(v16 + 96) = MEMORY[0x277D84FA0];
  *(v16 + 104) = v21;
  *(v16 + 112) = v21;
  *(v16 + 120) = v21;
  *(v16 + 368) = *MEMORY[0x277D0D2D8];
  *(v16 + 372) = *MEMORY[0x277D0D2D0];
  *(v16 + 376) = *MEMORY[0x277D0D2C8];
  *(v16 + 380) = *MEMORY[0x277D0D2C0];
  *(v16 + 384) = *(v20 + 80);
  *(v16 + 280) = *(v20 + 72);
  *(v16 + 288) = *(v20 + 16);
  while (1)
  {
    *(v16 + 296) = v19;
    if (v19 == v18)
    {
      v72 = *(v16 + 120);

      v73 = *(v16 + 112);

      v69 = *(v16 + 104);
      a10 = *(v16 + 96);
      v71 = &unk_283B3E320;
      v70 = MEMORY[0x277D84FA0];
      goto LABEL_14;
    }

    v22 = *(v16 + 280);
    v23 = *(v16 + 288);
    v24 = *(v16 + 384);
    v25 = *(v16 + 368);
    v26 = *(v16 + 256);
    v27 = *(v16 + 264);
    v28 = *(v16 + 240);
    v29 = *(v16 + 248);
    v30 = *(v16 + 136);
    OUTLINED_FUNCTION_105_7();
    v31 = v29 + 16;
    v32 = OUTLINED_FUNCTION_250_0();
    (v23)(v32);
    v33 = OUTLINED_FUNCTION_41_9();
    (v23)(v33);
    v34 = *(v29 + 88);
    v35 = OUTLINED_FUNCTION_9_2();
    v37 = v36(v35);
    if (v37 == v25)
    {
      v38 = *(v16 + 256);
      v40 = *(v16 + 232);
      v39 = *(v16 + 240);
      v41 = *(v16 + 216);
      v42 = *(v16 + 224);
      v43 = OUTLINED_FUNCTION_106_7(*(v16 + 248));
      v44(v43);
      v45 = *(v42 + 32);
      v46 = OUTLINED_FUNCTION_41_9();
      v47(v46);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v40)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v48, v49, v50);
      v51 = *(v16 + 88);
      goto LABEL_11;
    }

    if (v37 != *(v16 + 372))
    {
      break;
    }

    OUTLINED_FUNCTION_223_1();
    v53 = *(v16 + 200);
    v52 = *(v16 + 208);
    v54 = *(v16 + 192);
    v56 = OUTLINED_FUNCTION_106_7(v55);
    v57(v56);
    v58 = *(v53 + 32);
    v59 = OUTLINED_FUNCTION_41_9();
    v60(v59);
    sub_227D4A6A8();
    OUTLINED_FUNCTION_74_7();
    if (v52)
    {
LABEL_18:
      v83 = OUTLINED_FUNCTION_92_4();
      v84(v83);
      v85 = OUTLINED_FUNCTION_100_6();
      v86(v85);
      v87 = *(v16 + 120);

      v88 = *(v16 + 112);

      v89 = *(v16 + 104);

      v90 = *(v16 + 96);

LABEL_19:
      OUTLINED_FUNCTION_134_4();

      OUTLINED_FUNCTION_18();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_103_5();
    OUTLINED_FUNCTION_183_0();
    sub_227B274CC(v61, v62, v63);
    v64 = *(v16 + 72);
LABEL_11:

    v65 = OUTLINED_FUNCTION_92_4();
    v66(v65);
    v67 = OUTLINED_FUNCTION_100_6();
    v68(v67);
    v19 = *(v16 + 296) + 1;
    v18 = *(v16 + 272);
  }

  OUTLINED_FUNCTION_330_0();
  if (v101)
  {
    v91 = OUTLINED_FUNCTION_73_4();
    v92(v91);
    v93 = OUTLINED_FUNCTION_26_12();
    v94(v93);
    OUTLINED_FUNCTION_0_55();
    a10 = v95;
    v96 = *(v23 + 4);
    v97 = swift_task_alloc();
    v98 = OUTLINED_FUNCTION_208_2(v97);
    *v98 = v99;
    OUTLINED_FUNCTION_43_8(v98);
  }

  else
  {
    OUTLINED_FUNCTION_331();
    if (!v101)
    {
      v119 = *(v16 + 264);
      v120 = *(v16 + 120);

      v121 = *(v16 + 112);

      v122 = *(v16 + 104);

      v123 = *(v16 + 96);

      a11 = 0;
      a12 = 0xE000000000000000;
      sub_227D4D668();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0xE000000000000000;
      OUTLINED_FUNCTION_90_5();
      MEMORY[0x22AAA5DA0](0xD000000000000024);
      OUTLINED_FUNCTION_314_0();
      v124 = *(v16 + 16);
      v125 = *(v16 + 24);
      sub_227D49E08();
      OUTLINED_FUNCTION_1_34();
      sub_227B12A58(v126, v127);
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_230_1();

      swift_willThrow();
      v128 = *(v31 + 8);
      v129 = OUTLINED_FUNCTION_236();
      v128(v129);
      v130 = OUTLINED_FUNCTION_132_0();
      v128(v130);
      goto LABEL_19;
    }

    v103 = *(v16 + 168);
    v102 = *(v16 + 176);
    v104 = *(v16 + 160);
    v105 = *(v16 + 144);
    v106 = *(v31 + 96);
    v107 = OUTLINED_FUNCTION_132_0();
    v108(v107);
    v109 = *(v103 + 32);
    v110 = OUTLINED_FUNCTION_57_0();
    v111(v110);
    OUTLINED_FUNCTION_115_5();
    a10 = v112;
    v113 = *(v105 + 4);
    v114 = swift_task_alloc();
    v115 = OUTLINED_FUNCTION_118_3(v114);
    *v115 = v116;
    OUTLINED_FUNCTION_48_9(v115);
    v100 = *(v16 + 176);
  }

  v117 = *(v16 + 152);
  OUTLINED_FUNCTION_53(v100);
  OUTLINED_FUNCTION_23();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CE1C3C()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v9 = *(v8 + 304);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[39] = v1;

  if (v1)
  {
    v12 = v6[15];

    v13 = v6[14];

    v14 = v6[13];

    v15 = v6[12];
  }

  else
  {
    v6[40] = v4;
    v6[41] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_227CE1D64()
{
  OUTLINED_FUNCTION_28_1();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = OUTLINED_FUNCTION_345_1();
  sub_227B274CC(v9, v10, v11);
  v12 = *(v0 + 56);

  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_148();
  v15(v14);
  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_9_2();
  v18(v17);
  v19 = *(v0 + 312);
  while (1)
  {
    OUTLINED_FUNCTION_282_1();
    if (v90)
    {
      break;
    }

    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);
    v24 = *(v0 + 256);
    v25 = *(v0 + 264);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 136);
    OUTLINED_FUNCTION_105_7();
    v29 = OUTLINED_FUNCTION_250_0();
    v21(v29);
    v30 = OUTLINED_FUNCTION_65_7();
    v21(v30);
    v32 = *(v27 + 88);
    v31 = v27 + 88;
    v33 = OUTLINED_FUNCTION_132_0();
    v35 = v34(v33);
    if (v35 == v23)
    {
      v36 = *(v0 + 256);
      v38 = *(v0 + 232);
      v37 = *(v0 + 240);
      v39 = *(v0 + 216);
      v40 = *(v0 + 224);
      v41 = OUTLINED_FUNCTION_106_7(*(v0 + 248));
      v42(v41);
      v43 = OUTLINED_FUNCTION_39_10();
      v44(v43);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v38)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v45, v46, v47);
      v48 = *(v0 + 88);
    }

    else
    {
      if (v35 != *(v0 + 372))
      {
        OUTLINED_FUNCTION_330_0();
        if (v90)
        {
          v81 = OUTLINED_FUNCTION_73_4();
          v82(v81);
          v83 = OUTLINED_FUNCTION_26_12();
          v84(v83);
          OUTLINED_FUNCTION_0_55();
          v85 = *(v26 + 4);
          v86 = swift_task_alloc();
          v87 = OUTLINED_FUNCTION_208_2(v86);
          *v87 = v88;
          OUTLINED_FUNCTION_43_8();
        }

        else
        {
          OUTLINED_FUNCTION_331();
          if (!v90)
          {
            v108 = *(v0 + 264);
            v109 = *(v0 + 120);

            v110 = *(v0 + 112);

            v111 = *(v0 + 104);

            v112 = *(v0 + 96);

            OUTLINED_FUNCTION_364_1();
            *(v0 + 16) = v120;
            *(v0 + 24) = v121;
            OUTLINED_FUNCTION_90_5();
            MEMORY[0x22AAA5DA0](0xD000000000000024);
            OUTLINED_FUNCTION_314_0();
            v113 = *(v0 + 16);
            v114 = *(v0 + 24);
            sub_227D49E08();
            OUTLINED_FUNCTION_1_34();
            sub_227B12A58(v115, v116);
            OUTLINED_FUNCTION_78_0();
            OUTLINED_FUNCTION_208();
            swift_allocError();
            OUTLINED_FUNCTION_230_1();

            swift_willThrow();
            v117 = *(v31 + 8);
            v118 = OUTLINED_FUNCTION_236();
            v117(v118);
            v119 = OUTLINED_FUNCTION_132_0();
            v117(v119);
LABEL_12:
            OUTLINED_FUNCTION_134_4();

            OUTLINED_FUNCTION_18();
LABEL_13:
            OUTLINED_FUNCTION_149_1();

            __asm { BRAA            X1, X16 }
          }

          v92 = *(v0 + 168);
          v91 = *(v0 + 176);
          v93 = *(v0 + 160);
          v94 = *(v0 + 144);
          v95 = *(v31 + 96);
          v96 = OUTLINED_FUNCTION_132_0();
          v97(v96);
          v98 = *(v92 + 32);
          v99 = OUTLINED_FUNCTION_57_0();
          v100(v99);
          OUTLINED_FUNCTION_115_5();
          v101 = *(v94 + 4);
          v102 = swift_task_alloc();
          v103 = OUTLINED_FUNCTION_118_3(v102);
          *v103 = v104;
          OUTLINED_FUNCTION_48_9(v103);
          v89 = *(v0 + 176);
        }

        v105 = *(v0 + 152);
        OUTLINED_FUNCTION_53(v89);
        OUTLINED_FUNCTION_149_1();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_223_1();
      v50 = *(v0 + 200);
      v49 = *(v0 + 208);
      v51 = *(v0 + 192);
      v53 = OUTLINED_FUNCTION_106_7(v52);
      v54(v53);
      v55 = OUTLINED_FUNCTION_39_10();
      v56(v55);
      sub_227D4A6A8();
      OUTLINED_FUNCTION_74_7();
      if (v49)
      {
LABEL_11:
        v71 = OUTLINED_FUNCTION_92_4();
        v72(v71);
        v73 = OUTLINED_FUNCTION_100_6();
        v74(v73);
        v75 = *(v0 + 120);

        v76 = *(v0 + 112);

        v77 = *(v0 + 104);

        v78 = *(v0 + 96);

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v57, v58, v59);
      v60 = *(v0 + 72);
    }

    v61 = OUTLINED_FUNCTION_92_4();
    v62(v61);
    v63 = OUTLINED_FUNCTION_100_6();
    v64(v63);
  }

  v65 = *(v0 + 120);

  v66 = *(v0 + 112);

  v67 = *(v0 + 96);
  v68 = *(v0 + 104);
  OUTLINED_FUNCTION_184_3();
  v69 = *(v0 + 128);

  v70 = MEMORY[0x277D84FA0];
  *v69 = v67;
  v69[1] = v68;
  v69[2] = v70;
  v69[3] = v70;
  v69[4] = v70;
  v69[5] = v70;
  v69[6] = v70;
  v69[7] = &unk_283B3E320;
  OUTLINED_FUNCTION_15_0();
  goto LABEL_13;
}

uint64_t sub_227CE2250()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v9 = *(v8 + 336);
  v10 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  v6[43] = v1;

  if (v1)
  {
    v12 = v6[15];

    v13 = v6[14];

    v14 = v6[13];

    v15 = v6[12];
  }

  else
  {
    v6[44] = v4;
    v6[45] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_227CE2378()
{
  OUTLINED_FUNCTION_28_1();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  sub_227B274CC((v0 + 32), *(v0 + 360), *(v0 + 352));
  v7 = *(v0 + 40);

  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_148();
  v10(v9);
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_9_2();
  v13(v12);
  v14 = *(v0 + 344);
  while (1)
  {
    OUTLINED_FUNCTION_282_1();
    if (v15)
    {
      break;
    }

    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v18 = *(v0 + 384);
    v19 = *(v0 + 368);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    v24 = *(v0 + 136);
    OUTLINED_FUNCTION_105_7();
    v25 = OUTLINED_FUNCTION_250_0();
    v17(v25);
    v26 = OUTLINED_FUNCTION_65_7();
    v17(v26);
    v27 = *(v23 + 88);
    v28 = OUTLINED_FUNCTION_132_0();
    v30 = v29(v28);
    if (v30 == v19)
    {
      v31 = *(v0 + 256);
      v33 = *(v0 + 232);
      v32 = *(v0 + 240);
      v34 = *(v0 + 216);
      v35 = *(v0 + 224);
      v36 = OUTLINED_FUNCTION_106_7(*(v0 + 248));
      v37(v36);
      v38 = OUTLINED_FUNCTION_39_10();
      v39(v38);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v33)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v40, v41, v42);
      v43 = *(v0 + 88);
    }

    else
    {
      if (v30 != *(v0 + 372))
      {
        OUTLINED_FUNCTION_330_0();
        if (v15)
        {
          v77 = OUTLINED_FUNCTION_73_4();
          v78(v77);
          v79 = OUTLINED_FUNCTION_26_12();
          v80(v79);
          OUTLINED_FUNCTION_0_55();
          v81 = *(v22 + 4);
          v82 = swift_task_alloc();
          v83 = OUTLINED_FUNCTION_208_2(v82);
          *v83 = v84;
          OUTLINED_FUNCTION_43_8();
          goto LABEL_21;
        }

        if (v76 == *(v0 + 380))
        {
          OUTLINED_FUNCTION_223_1();
          v87 = *(v0 + 168);
          v86 = *(v0 + 176);
          v88 = *(v0 + 160);
          v89 = *(v0 + 144);
          v91 = OUTLINED_FUNCTION_106_7(v90);
          v92(v91);
          v93 = OUTLINED_FUNCTION_26_12();
          v94(v93);
          OUTLINED_FUNCTION_0_55();
          v95 = *(v89 + 4);
          v96 = swift_task_alloc();
          v97 = OUTLINED_FUNCTION_118_3(v96);
          *v97 = v98;
          OUTLINED_FUNCTION_48_9();
          v85 = *(v0 + 176);
LABEL_21:
          v99 = *(v0 + 152);
          OUTLINED_FUNCTION_53(v85);
          OUTLINED_FUNCTION_149_1();

          __asm { BRAA            X1, X16 }
        }

        v102 = *(v0 + 256);
        v103 = *(v0 + 264);
        v104 = *(v0 + 240);
        v105 = *(v0 + 248);
        v106 = *(v0 + 120);

        v107 = *(v0 + 112);

        v108 = *(v0 + 104);

        v109 = *(v0 + 96);

        OUTLINED_FUNCTION_364_1();
        *(v0 + 16) = v117;
        *(v0 + 24) = v118;
        OUTLINED_FUNCTION_90_5();
        MEMORY[0x22AAA5DA0](0xD000000000000024);
        OUTLINED_FUNCTION_314_0();
        v110 = *(v0 + 16);
        v111 = *(v0 + 24);
        sub_227D49E08();
        OUTLINED_FUNCTION_1_34();
        sub_227B12A58(v112, v113);
        OUTLINED_FUNCTION_78_0();
        OUTLINED_FUNCTION_208();
        swift_allocError();
        OUTLINED_FUNCTION_230_1();

        swift_willThrow();
        v114 = *(v105 + 8);
        v115 = OUTLINED_FUNCTION_236();
        v114(v115);
        v116 = OUTLINED_FUNCTION_132_0();
        v114(v116);
LABEL_12:
        OUTLINED_FUNCTION_134_4();

        OUTLINED_FUNCTION_18();
LABEL_13:
        OUTLINED_FUNCTION_149_1();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_223_1();
      v45 = *(v0 + 200);
      v44 = *(v0 + 208);
      v46 = *(v0 + 192);
      v48 = OUTLINED_FUNCTION_106_7(v47);
      v49(v48);
      v50 = OUTLINED_FUNCTION_39_10();
      v51(v50);
      sub_227D4A6A8();
      OUTLINED_FUNCTION_74_7();
      if (v44)
      {
LABEL_11:
        v66 = OUTLINED_FUNCTION_92_4();
        v67(v66);
        v68 = OUTLINED_FUNCTION_100_6();
        v69(v68);
        v70 = *(v0 + 120);

        v71 = *(v0 + 112);

        v72 = *(v0 + 104);

        v73 = *(v0 + 96);

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v52, v53, v54);
      v55 = *(v0 + 72);
    }

    v56 = OUTLINED_FUNCTION_92_4();
    v57(v56);
    v58 = OUTLINED_FUNCTION_100_6();
    v59(v58);
  }

  v60 = *(v0 + 120);

  v61 = *(v0 + 112);

  v62 = *(v0 + 96);
  v63 = *(v0 + 104);
  OUTLINED_FUNCTION_184_3();
  v64 = *(v0 + 128);

  v65 = MEMORY[0x277D84FA0];
  *v64 = v62;
  v64[1] = v63;
  v64[2] = v65;
  v64[3] = v65;
  v64[4] = v65;
  v64[5] = v65;
  v64[6] = v65;
  v64[7] = &unk_283B3E320;
  OUTLINED_FUNCTION_15_0();
  goto LABEL_13;
}

uint64_t sub_227CE2868()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[21] + 8))(v0[23], v0[20]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[39];
  OUTLINED_FUNCTION_134_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227CE2924()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[43];
  OUTLINED_FUNCTION_134_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227CE29E0()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4A488();
  v1[15] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CE2BAC()
{
  v1 = *(v0 + 16);
  if (!v1 || (v2 = *(v1 + 16), (*(v0 + 184) = v2) == 0))
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 112);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 72);
    v134 = *(v0 + 64);
    v137 = *(v0 + 56);
    v140 = *(v0 + 48);

    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_52();

    __asm { BRAA            X3, X16 }
  }

  sub_227CE9FEC();
  *(v0 + 192) = v3;
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);
  v30 = *(v28 + 16);
  *(v0 + 336) = *(v28 + 80);
  OUTLINED_FUNCTION_136_0();
  v32 = v1 + v31;
  v132 = *(v33 + 56);
  *(v0 + 200) = v132;
  *(v0 + 208) = v34;
  v138 = v34;
  v124 = *MEMORY[0x277D0D2D0];
  v130 = (v33 - 8);
  v119 = (v33 + 80);
  v116 = (v35 + 32);
  v117 = (v35 + 8);
  v122 = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36 = MEMORY[0x277D84F90];
  v135 = (v33 + 72);
  v120 = (v33 + 72) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v126 = v1 + v31;
  v128 = v2;
  do
  {
    v37 = *(v0 + 176);
    v38 = *(v0 + 160);
    v39 = *(v0 + 120);
    *(v0 + 216) = v122;
    v138(v37, v32, v39);
    v40 = OUTLINED_FUNCTION_127_1();
    (v138)(v40);
    *(v0 + 224) = *v135;
    *(v0 + 232) = v120;
    v41 = OUTLINED_FUNCTION_148();
    v131 = v42;
    if (v42(v41) == v124)
    {
      v43 = v36;
      v44 = *(v0 + 160);
      v46 = *(v0 + 112);
      v45 = *(v0 + 120);
      v47 = *(v0 + 96);
      v48 = OUTLINED_FUNCTION_375();
      v49(v48);
      v50 = *v116;
      OUTLINED_FUNCTION_141_4();
      v51();
      OUTLINED_FUNCTION_49_1();
      v52 = sub_227D4A6A8();
      v54 = *(v0 + 176);
      v55 = *(v0 + 112);
      v56 = *(v0 + 120);
      v57 = *(v0 + 96);
      if (v46)
      {

        v110 = *v117;
        v111 = OUTLINED_FUNCTION_148();
        v112(v111);
        v113 = *v130;
        v114 = OUTLINED_FUNCTION_113();
        v115(v114);

        v5 = *(v0 + 168);
        v4 = *(v0 + 176);
        v7 = *(v0 + 152);
        v6 = *(v0 + 160);
        v9 = *(v0 + 136);
        v8 = *(v0 + 144);
        v10 = *(v0 + 112);
        v12 = *(v0 + 80);
        v11 = *(v0 + 88);
        v133 = *(v0 + 72);
        v13 = *(v0 + 48);
        v136 = *(v0 + 64);
        v139 = *(v0 + 56);

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_52();

        __asm { BRAA            X1, X16 }
      }

      v58 = v52;
      v59 = v53;
      v60 = *v117;
      v61 = OUTLINED_FUNCTION_148();
      v62(v61);
      v63 = *v130;
      v64 = OUTLINED_FUNCTION_113();
      v63(v64);
      v36 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = *(v43 + 2);
        v71 = OUTLINED_FUNCTION_21();
        v36 = sub_227B25F88(v71, v72, v73, v43);
      }

      v66 = *(v36 + 2);
      v65 = *(v36 + 3);
      if (v66 >= v65 >> 1)
      {
        v74 = OUTLINED_FUNCTION_12(v65);
        v36 = sub_227B25F88(v74, v66 + 1, 1, v36);
      }

      *(v36 + 2) = v66 + 1;
      v67 = &v36[16 * v66];
      *(v67 + 4) = v58;
      *(v67 + 5) = v59;
    }

    else
    {
      v68 = *(v0 + 160);
      v63 = *v130;
      (*v130)(*(v0 + 176), *(v0 + 120));
      v69 = OUTLINED_FUNCTION_116_0();
      v63(v69);
    }

    *(v0 + 240) = v63;
    *(v0 + 248) = v36;
    v32 += v132;
    --v2;
  }

  while (v2);
  v75 = *(v0 + 128) + 32;
  v76 = MEMORY[0x277D84F90];
  v121 = *(v0 + 40);
  v77 = (v121 + 32);
  v125 = v75 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v123 = *MEMORY[0x277D0D2C8];
  v78 = v126;
  v79 = v128;
  v118 = v75;
  do
  {
    v80 = *(v0 + 168);
    v81 = *(v0 + 152);
    v82 = *(v0 + 120);
    v83 = OUTLINED_FUNCTION_359();
    (v138)(v83);
    *(v0 + 280) = *v75;
    *(v0 + 288) = v125;
    v84 = OUTLINED_FUNCTION_114();
    v85(v84);
    v86 = OUTLINED_FUNCTION_113();
    v87 = v131(v86);
    v88 = *(v0 + 152);
    v89 = *(v0 + 120);
    if (v87 == v123)
    {
      v127 = v78;
      v129 = v79;
      v91 = *(v0 + 80);
      v90 = *(v0 + 88);
      v92 = *(v0 + 72);
      v93 = *(v0 + 32);
      (*v119)(v88, v89);
      v94 = *v77;
      (*v77)(v92, v88, v93);
      OUTLINED_FUNCTION_141_4();
      v94();
      v95 = OUTLINED_FUNCTION_113();
      (v94)(v95);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = *(v76 + 16);
        OUTLINED_FUNCTION_21();
        sub_227CF0D04();
        v76 = v104;
      }

      v97 = *(v76 + 16);
      v96 = *(v76 + 24);
      v79 = v129;
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_12(v96);
        sub_227CF0D04();
        v76 = v105;
      }

      v98 = *(v0 + 88);
      v99 = *(v0 + 32);
      *(v76 + 16) = v97 + 1;
      v100 = *(v121 + 80);
      OUTLINED_FUNCTION_19();
      (v94)(v76 + v101 + *(v102 + 72) * v97);
      v78 = v127;
      v75 = v118;
    }

    else
    {
      (v63)(*(v0 + 152), v89);
    }

    *(v0 + 296) = v76;
    v78 += v132;
    --v79;
  }

  while (v79);
  v106 = *(v0 + 24);
  v107 = swift_task_alloc();
  *(v0 + 256) = v107;
  *v107 = v0;
  v107[1] = sub_227CE32B4;
  OUTLINED_FUNCTION_52();

  return sub_227B24FC4();
}

uint64_t sub_227CE32B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  v3[33] = v7;
  v3[34] = v0;

  if (!v0)
  {
    v8 = v3[37];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CE33BC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v37 = *MEMORY[0x277D0D2C0];
  do
  {
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    (*(v0 + 208))(v8, *(v0 + 16) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 200) * v1, v10);
    v4(v9, v8, v10);
    v11 = OUTLINED_FUNCTION_93_0();
    if (v6(v11) == v37)
    {
      v12 = *(v0 + 136);
      v14 = *(v0 + 56);
      v13 = *(v0 + 64);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      v17 = *(v0 + 32);
      (*(*(v0 + 128) + 96))(v12, *(v0 + 120));
      v18 = *(v15 + 32);
      v18(v16, v12, v17);
      v19 = OUTLINED_FUNCTION_113();
      (v18)(v19);
      v20 = OUTLINED_FUNCTION_93_0();
      (v18)(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0D04();
        v2 = v29;
      }

      v21 = *(v2 + 16);
      if (v21 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_117();
        sub_227CF0D04();
        v2 = v30;
      }

      v22 = *(v0 + 64);
      v23 = *(v0 + 32);
      v24 = *(v0 + 40);
      *(v2 + 16) = v21 + 1;
      v25 = *(v24 + 80);
      OUTLINED_FUNCTION_136_0();
      (v18)(v2 + v26 + *(v27 + 72) * v21);
    }

    else
    {
      v28 = *(v0 + 128) + 8;
      (*(v0 + 240))(*(v0 + 136), *(v0 + 120));
    }

    *(v0 + 320) = v2;
    ++v1;
  }

  while (v1 != *(v0 + 184));
  v31 = *(v0 + 24);
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_208_2(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_19_15(v33);
  OUTLINED_FUNCTION_135_0();

  return sub_227B24FC4();
}